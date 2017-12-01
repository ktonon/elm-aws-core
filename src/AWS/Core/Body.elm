module AWS.Core.Body
    exposing
        ( Body
        , empty
        , json
        , string
        , toHttp
        , toString
        )

import Http
import Json.Encode


type Body
    = Empty
    | Json Json.Encode.Value
    | String String String


toHttp : Body -> Http.Body
toHttp body =
    case body of
        Empty ->
            Http.emptyBody

        Json value ->
            Http.jsonBody value

        String mimetype string ->
            Http.stringBody mimetype string


toString : Body -> String
toString body =
    case body of
        Json value ->
            Json.Encode.encode 0 value

        Empty ->
            ""

        String _ string ->
            string


empty : Body
empty =
    Empty


json : Json.Encode.Value -> Body
json =
    Json


string : String -> String -> Body
string =
    String
