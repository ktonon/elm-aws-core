module AWS.Http exposing (..)

import Json.Encode as JE
import Json.Decode as JD
import Http
import QueryString exposing (QueryString)


type RequestParams
    = QueryParams (List ( String, String ))
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


url : String -> String -> RequestParams -> String
url host path params =
    "https://" ++ host ++ path ++ (queryString params)


queryString : RequestParams -> String
queryString params =
    case params of
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


body : RequestParams -> Http.Body
body params =
    case params of
        JsonBody value ->
            Http.jsonBody value

        _ ->
            Http.emptyBody
