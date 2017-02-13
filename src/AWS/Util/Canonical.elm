module AWS.Util.Canonical exposing (..)

import AWS.Util.Request exposing (Request, RequestParams(..))
import Char
import Hex
import Http exposing (encodeUri)
import Json.Encode as JE
import Sha256 exposing (sha256)


-- http://docs.aws.amazon.com/general/latest/gr/sigv4-create-canonical-request.html


canonical : Request a -> String
canonical req =
    [ req.method
    , req |> canonicalUri
    , req |> canonicalQueryString
    , req |> canonicalHeaders
    , req |> signedHeaders
    , req |> canonicalPayload
    ]
        |> String.join "\n"


canonicalUri : Request a -> String
canonicalUri req =
    if String.isEmpty req.path then
        "/"
    else
        -- TODO: handle S3
        encodeUri req.path


canonicalQueryString : Request a -> String
canonicalQueryString req =
    case req.params of
        QueryParams query ->
            query
                |> List.sort
                |> List.map (encode2Tuple "=")
                |> String.join "&"

        _ ->
            ""


canonicalHeaders : Request a -> String
canonicalHeaders req =
    req.headers
        |> List.sort
        |> List.map (\( a, b ) -> ( String.toLower a, b ))
        |> List.map (encode2Tuple ":")
        |> String.join "\n"


signedHeaders : Request a -> String
signedHeaders req =
    req.headers
        |> List.map (\( a, _ ) -> String.toLower a)
        |> List.sort
        |> String.join ";"


canonicalPayload : Request a -> String
canonicalPayload req =
    (case req.params of
        JsonBody value ->
            JE.encode 0 value

        _ ->
            ""
    )
        |> sha256
        |> hexEncode
        |> String.toLower



-- HELPERS


encode2Tuple : String -> ( String, String ) -> String
encode2Tuple separator ( a, b ) =
    [ encodeUri a, encodeUri b ] |> String.join separator


hexEncode : String -> String
hexEncode =
    String.toList
        >> List.map (Char.toCode >> Hex.toString)
        >> String.join ""
