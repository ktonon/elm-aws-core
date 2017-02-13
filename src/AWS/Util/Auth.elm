module AWS.Util.Auth exposing (..)

import AWS exposing (ServiceConfig)
import AWS.Util.Request exposing (Request, RequestParams)
import Http
import Json.Decode as JD


request :
    String
    -> String
    -> String
    -> RequestParams
    -> JD.Decoder a
    -> ServiceConfig
    -> Http.Request a
request target method uri params decoder config =
    let
        req =
            Request
                method
                [ ( "Host", config.host ++ ":443" )
                , ( "X-Amz-Target", config.xAmzTargetPrefix ++ target )
                , ( "Content-Type", jsonContentType config )
                ]
                uri
                params
                decoder
                config
    in
        Http.request
            { method = method
            , headers = AWS.Util.Request.headers req
            , url = AWS.Util.Request.url req
            , body = AWS.Util.Request.body req
            , expect = Http.expectJson decoder
            , timeout = Nothing
            , withCredentials = False
            }


jsonContentType : ServiceConfig -> String
jsonContentType config =
    "application/x-amz-json-" ++ config.xAmzJsonVersion ++ "; charset=utf-8"
