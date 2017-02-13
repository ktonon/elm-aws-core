module AWS.Util.Request exposing (..)

import AWS exposing (Credentials, ServiceConfig)
import Json.Encode as JE
import Json.Decode as JD
import Http
import QueryString exposing (QueryString)


type RequestParams
    = QueryParams (List ( String, String ))
    | JsonBody JE.Value


type alias Request a =
    { method : String
    , headers : List ( String, String )
    , path : String
    , params : RequestParams
    , decoder : JD.Decoder a
    , config : ServiceConfig
    }


headers : Request a -> List Http.Header
headers req =
    req.headers
        |> List.map (\( key, val ) -> Http.header key val)


url : Request a -> String
url req =
    "https://" ++ req.config.host ++ req.path ++ (queryString req)


queryString : Request a -> String
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


body : Request a -> Http.Body
body req =
    case req.params of
        JsonBody value ->
            Http.jsonBody value

        _ ->
            Http.emptyBody
