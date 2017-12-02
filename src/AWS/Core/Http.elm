module AWS.Core.Http
    exposing
        ( Body
        , Method(..)
        , MimeType
        , Path
        , Request
        , addHeaders
        , addQuery
        , emptyBody
        , jsonBody
        , request
        , send
        , setResponseParser
        , stringBody
        )

{-| AWS requests and responses.


# Table of Contents

  - [Requests](#requests)
  - [Body](#body)

Examples assume the following imports:

    import Json.Decode


# Requests

@docs Request, request, addHeaders, addQuery, setResponseParser, send, Method, Path


# Body

@docs Body, MimeType, emptyBody, stringBody, jsonBody

-}

import AWS.Core.Body
import AWS.Core.Credentials exposing (Credentials)
import AWS.Core.Request
import AWS.Core.Service as Service exposing (Service)
import AWS.Core.Signers.V4 as V4
import Date exposing (Date)
import Http
import Json.Decode
import Json.Encode
import Task


{-| Holds an unsigned AWS HTTP request.
-}
type alias Request a =
    AWS.Core.Request.Unsigned a


{-| HTTP request methods.
-}
type Method
    = DELETE
    | GET
    | HEAD
    | OPTIONS
    | POST
    | PUT


{-| Request path.
-}
type alias Path =
    String


{-| Holds a request body.
-}
type alias Body =
    AWS.Core.Body.Body


{-| MIME type.

See <https://en.wikipedia.org/wiki/Media_type>

-}
type alias MimeType =
    String


{-| Create an empty body.
-}
emptyBody : Body
emptyBody =
    AWS.Core.Body.empty


{-| Create a body containing a JSON value.

This will automatically add the `Content-Type: application/json` header.

-}
jsonBody : Json.Encode.Value -> Body
jsonBody =
    AWS.Core.Body.json


{-| Create a body with a custom MIME type and the given string as content.

    stringBody "text/html" "<html><body><h1>Hello</h1></body></html>"

-}
stringBody : MimeType -> String -> Body
stringBody =
    AWS.Core.Body.string


{-| Create an AWS HTTP unsigned request.

    request GET "/" emptyBody Json.Decode.value
        |> toString
    --> "{ method = \"GET\", path = \"/\", body = Empty, decoder = <decoder>, headers = [], query = [], responseParser = Nothing }"

-}
request :
    Method
    -> Path
    -> Body
    -> Json.Decode.Decoder a
    -> Request a
request method =
    AWS.Core.Request.unsigned (toString method)


{-| Appends headers to an AWS HTTP unsigned request.

    request GET "/" emptyBody Json.Decode.value
        |> addHeaders
            [ ( "x-custom-1", "value 1" )
            , ( "x-Custom-2", "value 2" )
            ]
        |> addHeaders
            [ ( "x-custom-3", "value 3" )
            ]
        |> toString
    --> "{ method = \"GET\", path = \"/\", body = Empty, decoder = <decoder>, headers = [(\"x-custom-1\",\"value 1\"),(\"x-Custom-2\",\"value 2\"),(\"x-custom-3\",\"value 3\")], query = [], responseParser = Nothing }"

-}
addHeaders : List ( String, String ) -> Request a -> Request a
addHeaders headers req =
    { req | headers = List.append req.headers headers }


{-| Appends query arguments to an AWS HTTP unsigned request.

    request GET "/" emptyBody Json.Decode.value
        |> addQuery
            [ ( "key1", "value 1" )
            , ( "Key2", "value 2" )
            ]
        |> addQuery
            [ ( "key3", "value 3" )
            ]
        |> toString
    --> "{ method = \"GET\", path = \"/\", body = Empty, decoder = <decoder>, headers = [], query = [(\"key1\",\"value 1\"),(\"Key2\",\"value 2\"),(\"key3\",\"value 3\")], responseParser = Nothing }"

-}
addQuery : List ( String, String ) -> Request a -> Request a
addQuery query req =
    { req | query = List.append req.query query }


{-| Set a parser for the entire Http.Response. Overrides the request decoder.
-}
setResponseParser : Maybe (Http.Response String -> Result String a) -> Request a -> Request a
setResponseParser parser req =
    { req | responseParser = parser }


{-| Signs and sends an AWS Request.
-}
send :
    Service
    -> Credentials
    -> Request a
    -> Task.Task Http.Error a
send serviceConfig credentials req =
    Date.now
        |> Task.andThen
            (\date ->
                V4.sign serviceConfig credentials date req
                    |> Http.toTask
            )
