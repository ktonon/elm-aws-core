module AWS.Signers.V4 exposing (sign)

{-| Version V4 AWS Request Signer

@docs sign
-}

import AWS exposing (ServiceConfig)
import AWS.Signers.Canonical exposing (canonical, signedHeaders)
import AWS.Http exposing (UnsignedRequest, RequestParams)
import Date exposing (Date)
import Date.Format exposing (formatISO8601)
import Http
import Regex exposing (HowMany(All), regex)


-- http://docs.aws.amazon.com/waf/latest/developerguide/authenticating-requests.html


{-| Sign an unsigned request, given the current time
-}
sign :
    UnsignedRequest a
    -> Date
    -> ServiceConfig
    -> Http.Request a
sign req date config =
    Http.request
        { method = req.method
        , headers = headers date config
        , url = AWS.Http.url config.host req.path req.params
        , body = AWS.Http.body req.params
        , expect = Http.expectJson req.decoder
        , timeout = Nothing
        , withCredentials = False
        }


headers : Date -> ServiceConfig -> List Http.Header
headers date config =
    []
        |> addAuthorization date config
        |> addSessionToken config
        |> List.map (\( key, val ) -> Http.header key val)


formatDate : Date -> String
formatDate date =
    date
        |> formatISO8601
        |> Regex.replace All
            (regex "([-:\\]|\\.\\d{3})")
            (\_ -> "")


addSessionToken : ServiceConfig -> List ( String, String ) -> List ( String, String )
addSessionToken config headers =
    config.credentials
        |> Maybe.andThen .sessionToken
        |> Maybe.map
            (\token ->
                ( "x-amz-security-token", token ) :: headers
            )
        |> Maybe.withDefault headers


addAuthorization : Date -> ServiceConfig -> List ( String, String ) -> List ( String, String )
addAuthorization date config headers =
    config.credentials
        |> Maybe.map
            (\creds ->
                [ ( "X-Amz-Date", formatDate date )
                , ( "Authorization", authorization creds date config headers )
                ]
                    |> List.append headers
            )
        |> Maybe.withDefault headers


authorization : AWS.Credentials -> Date -> ServiceConfig -> List ( String, String ) -> String
authorization creds date config headers =
    [ "AWS4-HMAC-SHA256 Credentials="
        ++ creds.accessKeyId
        ++ "/"
        ++ credentialsString date config
    , "SignedHeaders="
        ++ signedHeaders headers
    , "Signature="
        ++ signature creds
    ]
        |> String.join ", "


credentialsString : Date -> ServiceConfig -> String
credentialsString date config =
    [ date |> formatDate |> String.slice 0 8
    , config.region
    , config.serviceName
    , "aws4_request"
    ]
        |> String.join "/"


signature : AWS.Credentials -> String
signature creds =
    ""


jsonContentType : ServiceConfig -> String
jsonContentType config =
    "application/x-amz-json-" ++ config.xAmzJsonVersion ++ "; charset=utf-8"
