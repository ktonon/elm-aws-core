module AWS.Core.Body exposing (..)

import Http
import Json.Encode


type Body
    = EmptyBody
    | JsonBody Json.Encode.Value
    | HtmlBody String
    | StringBody String String

toHttp : Body -> Http.Body
toHttp body =
    case body of
        StringBody mimetype string ->
            Http.stringBody mimetype string

        HtmlBody string ->
            Http.stringBody "text/html" string

        JsonBody value ->
            Http.jsonBody value

        EmptyBody ->
            Http.emptyBody


toString : Body -> String
toString body =
    case body of
        StringBody _ string ->
            string

        HtmlBody string ->
            string

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


html : String -> Body
html =
    HtmlBody


string : String -> String -> Body
string =
    StringBody
