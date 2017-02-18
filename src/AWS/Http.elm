module AWS.Http exposing (..)

import AWS exposing (Credentials, ServiceConfig)
import Json.Encode as JE
import Json.Decode as JD
import Http
import QueryString exposing (QueryString)


type RequestParams
    = QueryParams (List ( String, String ))
    | JsonBody JE.Value


type alias UnsignedRequest a =
    { method : String
    , headers : List ( String, String )
    , path : String
    , params : RequestParams
    , decoder : JD.Decoder a
    , config : ServiceConfig
    }


unsignedRequest :
    String
    -> String
    -> String
    -> RequestParams
    -> JD.Decoder a
    -> ServiceConfig
    -> UnsignedRequest a
unsignedRequest target method uri params decoder config =
    UnsignedRequest
        method
        [ ( "Host", config.host ++ ":443" )
        , ( "X-Amz-Target", config.xAmzTargetPrefix ++ target )
        , ( "Content-Type", jsonContentType config )
        ]
        uri
        params
        decoder
        config


url : UnsignedRequest a -> String
url req =
    "https://" ++ req.config.host ++ req.path ++ (queryString req)


queryString : UnsignedRequest a -> String
queryString req =
    case req.params of
        QueryParams params ->
            params
                |> List.foldl
                    (\( key, val ) qs ->
                        qs |> QueryString.add key val
                    )
                    QueryString.empty
                |> QueryString.render

        _ ->
            ""


body : UnsignedRequest a -> Http.Body
body req =
    case req.params of
        JsonBody value ->
            Http.jsonBody value

        _ ->
            Http.emptyBody


jsonContentType : ServiceConfig -> String
jsonContentType config =
    "application/x-amz-json-" ++ config.xAmzJsonVersion ++ "; charset=utf-8"
