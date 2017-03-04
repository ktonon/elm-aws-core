module AWS.Http exposing (..)

import AWS.Config exposing (..)
import AWS.Encode
import Json.Encode as JE
import Json.Decode as JD
import Http
import QueryString exposing (QueryString)


type RequestParams
    = NoParams
    | QueryParams (List ( String, String ))
    | JsonBody JE.Value


type alias UnsignedRequest a =
    { method : String
    , path : String
    , params : RequestParams
    , decoder : JD.Decoder a
    }


unsignedRequest :
    String
    -> String
    -> String
    -> RequestParams
    -> JD.Decoder a
    -> UnsignedRequest a
unsignedRequest target method uri params decoder =
    UnsignedRequest
        method
        uri
        params
        decoder


url : Endpoint -> String -> RequestParams -> String
url endpoint path params =
    "https://"
        ++ (host endpoint)
        ++ path
        ++ (queryString params)


host : Endpoint -> String
host endpoint =
    case endpoint of
        RegionalEndpoint prefix region ->
            prefix ++ "." ++ region ++ ".amazonaws.com"

        GlobalEndpoint host ->
            host


queryString : RequestParams -> String
queryString params =
    case params of
        QueryParams [] ->
            ""

        QueryParams params ->
            params
                |> List.foldl
                    (\( key, val ) qs ->
                        qs |> QueryString.add (AWS.Encode.uri key) val
                    )
                    QueryString.empty
                |> QueryString.render

        _ ->
            ""


body : RequestParams -> Http.Body
body params =
    case params of
        JsonBody value ->
            Http.jsonBody value

        _ ->
            Http.emptyBody
