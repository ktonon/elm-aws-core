module AWS.Signers.Canonical exposing (..)

import AWS.Http exposing (UnsignedRequest, RequestParams(..))
import Char
import Hex
import Json.Encode as JE
import Regex exposing (regex, HowMany(All))
import SHA exposing (sha256sum)


-- http://docs.aws.amazon.com/general/latest/gr/sigv4-create-canonical-request.html


canonical : String -> String -> List ( String, String ) -> RequestParams -> String
canonical method path headers params =
    canonicalRaw method path headers params
        |> sha256sum


canonicalRaw : String -> String -> List ( String, String ) -> RequestParams -> String
canonicalRaw method path headers params =
    [ String.toUpper method
    , canonicalUri path
    , canonicalQueryString params
    , canonicalHeaders headers
    , ""
    , signedHeaders headers
    , canonicalPayload params
    ]
        |> String.join "\n"


canonicalUri : String -> String
canonicalUri path =
    if String.isEmpty path then
        "/"
    else
        path
            |> Regex.replace All (regex "/{2,}") (\_ -> "/")
            |> String.split "/"
            |> List.map encodeUri
            |> String.join "/"


canonicalQueryString : RequestParams -> String
canonicalQueryString params =
    case params of
        QueryParams query ->
            query
                |> List.sort
                |> List.map (encode2Tuple "=")
                |> String.join "&"

        _ ->
            ""


canonicalHeaders : List ( String, String ) -> String
canonicalHeaders headers =
    headers
        |> List.map
            (\( a, b ) ->
                [ String.toLower a
                , removeExtraSpaces b
                ]
                    |> String.join ":"
            )
        |> List.sort
        |> String.join "\n"


signedHeaders : List ( String, String ) -> String
signedHeaders headers =
    headers
        |> List.map (\( a, _ ) -> String.toLower a)
        |> List.sort
        |> String.join ";"


canonicalPayload : RequestParams -> String
canonicalPayload params =
    (case params of
        JsonBody value ->
            JE.encode 0 value

        _ ->
            ""
    )
        |> sha256sum



-- HELPERS


removeExtraSpaces : String -> String
removeExtraSpaces x =
    x
        |> Regex.replace All (regex "(^\\s*|\\s*$)") (\_ -> "")
        |> Regex.replace All (regex "\\s{2,}") (\_ -> " ")


encode2Tuple : String -> ( String, String ) -> String
encode2Tuple separator ( a, b ) =
    [ encodeUri a, encodeUri b ] |> String.join separator


{-| We don't use Http.encodeUri because it misses some characters.

For example, ! ' ( ) etc.

Only "Unreserved Characters" are allowed.
See http://tools.ietf.org/html/rfc3986
Section 2.3
-}
encodeUri : String -> String
encodeUri x =
    x
        |> Regex.replace All
            (regex "[^-A-Za-z0-9_.~]")
            (\match ->
                match.match
                    |> String.toList
                    |> List.head
                    |> Maybe.map
                        (\char ->
                            char
                                |> Char.toCode
                                |> Hex.toString
                                |> String.toUpper
                                |> (++) "%"
                        )
                    |> Maybe.withDefault ""
            )
