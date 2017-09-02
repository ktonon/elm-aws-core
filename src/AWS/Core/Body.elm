module AWS.Core.Body exposing (..)

import Http
import Json.Encode


type Body
    = EmptyBody
    | JsonBody Json.Encode.Value


toHttp : Body -> Http.Body
toHttp body =
    case body of
        JsonBody value ->
            Http.jsonBody value

        EmptyBody ->
            Http.emptyBody


toString : Body -> String
toString body =
    case body of
        JsonBody value ->
            Json.Encode.encode 0 value

        EmptyBody ->
            ""


empty : Body
empty =
    EmptyBody


json : Json.Encode.Value -> Body
json =
    JsonBody
