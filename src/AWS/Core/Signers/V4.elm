module AWS.Core.Signers.V4 exposing (..)

import AWS.Core.Body exposing (Body, explicitMimetype)
import AWS.Core.Credentials as Credentials exposing (Credentials)
import AWS.Core.Request exposing (Unsigned)
import AWS.Core.Service as Service exposing (Service)
import AWS.Core.Signers.Canonical exposing (canonical, canonicalPayload, signedHeaders)
import Crypto.HMAC exposing (sha256)
import Date exposing (Date)
import Date.Extra exposing (toUtcIsoString)
import Http
import Regex exposing (HowMany(All), regex)
import Word.Bytes as Bytes
import Word.Hex as Hex


-- http://docs.aws.amazon.com/waf/latest/developerguide/authenticating-requests.html


sign :
    Service
    -> Credentials
    -> Date
    -> Unsigned a
    -> Http.Request a
sign service creds date req =
    Http.request
        { method = req.method
        , headers =
            headers service date req.body req.headers
                |> addAuthorization service creds date req
                |> addSessionToken creds
                |> List.map (\( key, val ) -> Http.header key val)
        , url = AWS.Core.Request.url service req
        , body = AWS.Core.Body.toHttp req.body
        , expect =
            case req.responseParser of
                Just parser ->
                    Http.expectStringResponse parser

                Nothing ->
                    Http.expectJson req.decoder
        , timeout = Nothing
        , withCredentials = False
        }


algorithm : String
algorithm =
    "AWS4-HMAC-SHA256"


headers : Service -> Date -> Body -> List ( String, String ) -> List ( String, String )
headers service date body extraHeaders =
    let
        extraNames =
            List.map Tuple.first extraHeaders
                |> List.map String.toLower
    in
    List.concat
        [ extraHeaders
        , [ ( "x-amz-date", formatDate date )
          , ( "x-amz-content-sha256", canonicalPayload body )
          ]
        , if List.member "accept" extraNames then
            []
          else
            [ ( "Accept", Service.acceptType service ) ]
        , if List.member "content-type" extraNames || explicitMimetype body /= Nothing then
            []
          else
            [ ( "Content-Type", Service.jsonContentType service ) ]
        ]


formatDate : Date -> String
formatDate date =
    date
        |> toUtcIsoString
        |> Regex.replace All
            (regex "([-:]|\\.\\d{3})")
            (\_ -> "")


addSessionToken :
    Credentials
    -> List ( String, String )
    -> List ( String, String )
addSessionToken creds headers =
    creds
        |> Credentials.sessionToken
        |> Maybe.map
            (\token ->
                ( "x-amz-security-token", token ) :: headers
            )
        |> Maybe.withDefault headers


addAuthorization :
    Service
    -> Credentials
    -> Date
    -> Unsigned a
    -> List ( String, String )
    -> List ( String, String )
addAuthorization service creds date req headers =
    [ ( "Authorization"
      , authorization creds
            date
            service
            req
            (headers |> (::) ( "Host", Service.host service ))
      )
    ]
        |> List.append headers



-- Expects headersToRemove to be all lower-case


filterHeaders : List String -> List ( String, String ) -> List ( String, String )
filterHeaders headersToRemove headers =
    let
        matches =
            \( head, _ ) ->
                not <| List.member (String.toLower head) headersToRemove
    in
    List.filter matches headers


authorization :
    Credentials
    -> Date
    -> Service
    -> Unsigned a
    -> List ( String, String )
    -> String
authorization creds date service req rawHeaders =
    let
        -- Content-Type & Accept tend to be amended by Http.request
        headers =
            filterHeaders [ "content-type", "accept" ] rawHeaders

        canon =
            canonical (Service.signer service) req.method req.path headers req.query req.body

        scope =
            credentialScope date creds service
    in
    [ "AWS4-HMAC-SHA256 Credential="
        ++ Credentials.accessKeyId creds
        ++ "/"
        ++ scope
    , "SignedHeaders="
        ++ signedHeaders headers
    , "Signature="
        ++ signature creds service date (stringToSign algorithm date scope canon)
    ]
        |> String.join ", "


credentialScope : Date -> Credentials -> Service -> String
credentialScope date creds service =
    [ date |> formatDate |> String.slice 0 8
    , Service.region service
    , Service.endpointPrefix service
    , "aws4_request"
    ]
        |> String.join "/"


signature : Credentials -> Service -> Date -> String -> String
signature creds service date toSign =
    let
        digest =
            \message key ->
                Crypto.HMAC.digestBytes sha256
                    key
                    (Bytes.fromUTF8 message)
    in
    creds
        |> Credentials.secretAccessKey
        |> (++) "AWS4"
        |> Bytes.fromUTF8
        |> digest (formatDate date |> String.slice 0 8)
        |> digest (Service.region service)
        |> digest (Service.endpointPrefix service)
        |> digest "aws4_request"
        |> digest toSign
        |> Hex.fromByteList


stringToSign : String -> Date -> String -> String -> String
stringToSign algorithm date scope canon =
    [ algorithm
    , date |> formatDate
    , scope
    , canon
    ]
        |> String.join "\n"
