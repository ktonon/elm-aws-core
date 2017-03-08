module AWS.Http exposing (..)

import AWS.Config exposing (..)
import AWS.Encode
import Json.Encode as JE
import Json.Decode as JD
import Http
import QueryString exposing (QueryString)


type alias QueryParams =
    List ( String, String )


type RequestBody
    = NoBody
    | JsonBody JE.Value


type alias UnsignedRequest a =
    { method : String
    , path : String
    , query : QueryParams
    , body : RequestBody
    , decoder : JD.Decoder a
    }


unsignedRequest :
    String
    -> String
    -> String
    -> QueryParams
    -> RequestBody
    -> JD.Decoder a
    -> UnsignedRequest a
unsignedRequest target method uri query body decoder =
    UnsignedRequest
        method
        uri
        query
        body
        decoder


url : Endpoint -> String -> QueryParams -> String
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


queryString : QueryParams -> String
queryString params =
    case params of
        [] ->
            ""

        _ ->
            params
                |> List.foldl
                    (\( key, val ) qs ->
                        qs |> QueryString.add (AWS.Encode.uri key) val
                    )
                    QueryString.empty
                |> QueryString.render


body : RequestBody -> Http.Body
body body =
    case body of
        JsonBody value ->
            Http.jsonBody value

        NoBody ->
            Http.emptyBody
