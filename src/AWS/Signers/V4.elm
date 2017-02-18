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
    -> Http.Request a
sign req date =
    Http.request
        { method = req.method
        , headers = headers req date
        , url = AWS.Http.url req
        , body = AWS.Http.body req
        , expect = Http.expectJson req.decoder
        , timeout = Nothing
        , withCredentials = False
        }



-- UnsignedRequest SIGNER V4


headers : UnsignedRequest a -> Date -> List Http.Header
headers req date =
    req
        |> addAuthorization date
        |> addSessionToken
        |> .headers
        |> List.map (\( key, val ) -> Http.header key val)


formatDate : Date -> String
formatDate date =
    date
        |> formatISO8601
        |> Regex.replace All
            (regex "([-:\\]|\\.\\d{3})")
            (\_ -> "")


addSessionToken : UnsignedRequest a -> UnsignedRequest a
addSessionToken req =
    req.config.credentials
        |> Maybe.andThen .sessionToken
        |> Maybe.map
            (\token ->
                { req | headers = ( "x-amz-security-token", token ) :: req.headers }
            )
        |> Maybe.withDefault req


addAuthorization : Date -> UnsignedRequest a -> UnsignedRequest a
addAuthorization date req =
    req.config.credentials
        |> Maybe.map
            (\creds ->
                { req
                    | headers =
                        [ ( "X-Amz-Date", formatDate date )
                        , ( "Authorization", authorization creds date req )
                        ]
                            |> List.append req.headers
                }
            )
        |> Maybe.withDefault req



-- Missing headers
-- ( "X-Amz-Algorithm", "AWS4-HMAC-SHA256")


authorization : AWS.Credentials -> Date -> UnsignedRequest a -> String
authorization creds date req =
    [ "AWS4-HMAC-SHA256 Credentials="
        ++ creds.accessKeyId
        ++ "/"
        ++ credentialsString date req
    , "SignedHeaders="
        ++ signedHeaders req.headers
    , "Signature="
        ++ signature creds req
    ]
        |> String.join ", "


credentialsString : Date -> UnsignedRequest a -> String
credentialsString date req =
    [ date |> formatDate |> String.slice 0 8
    , req.config.region
    , req.config.serviceName
    , "aws4_request"
    ]
        |> String.join "/"


signature : AWS.Credentials -> UnsignedRequest a -> String
signature creds req =
    ""
