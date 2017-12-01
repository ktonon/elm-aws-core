module AWS.Core.Request
    exposing
        ( Unsigned
        , queryString
        , unsigned
        , url
        )

import AWS.Core.Body as Body exposing (Body)
import AWS.Core.Encode
import AWS.Core.Service as Service exposing (Service)
import Json.Decode exposing (Decoder)
import QueryString


type alias Unsigned a =
    { method : String
    , path : String
    , body : Body
    , decoder : Decoder a
    , headers : List ( String, String )
    , query : List ( String, String )
    }


unsigned :
    String
    -> String
    -> Body
    -> Decoder a
    -> Unsigned a
unsigned method uri body decoder =
    Unsigned
        method
        uri
        body
        decoder
        []
        []


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
