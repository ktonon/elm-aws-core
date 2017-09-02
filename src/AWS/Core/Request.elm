module AWS.Core.Request exposing (..)

import AWS.Core.Body exposing (Body)
import AWS.Core.Encode
import AWS.Core.Service as Service exposing (Service)
import Json.Decode exposing (Decoder)
import QueryString


type alias Unsigned a =
    { method : String
    , path : String
    , query : List ( String, String )
    , body : Body
    , decoder : Decoder a
    }


unsigned :
    String
    -> String
    -> List ( String, String )
    -> Body
    -> Json.Decode.Decoder a
    -> Unsigned a
unsigned method uri query body decoder =
    Unsigned
        method
        uri
        query
        body
        decoder


url : Service -> Unsigned a -> String
url service { path, query } =
    "https://"
        ++ Service.host service
        ++ path
        ++ queryString query


queryString : List ( String, String ) -> String
queryString params =
    case params of
        [] ->
            ""

        _ ->
            params
                |> List.foldl
                    (\( key, val ) qs ->
                        qs |> QueryString.add (AWS.Core.Encode.uri key) val
                    )
                    QueryString.empty
                |> QueryString.render
