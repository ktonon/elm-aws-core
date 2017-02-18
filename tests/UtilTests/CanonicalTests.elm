module UtilTests.CanonicalTests exposing (all)

import AWS.Http exposing (..)
import AWS.Signers.Canonical exposing (..)
import Expect
import Json.Encode as JE
import Test exposing (describe, test, Test)
import TestHelpers exposing (expectMatches)


all : Test
all =
    describe "Canonical"
        [ canonicalQueryStringTests
        , canonicalUriTests
        , canonicalHeadersTests
        , signedHeadersTests
        , canonicalPayloadTests
        ]


canonicalUriTests : Test
canonicalUriTests =
    describe "canonicalUri"
        [ test "converts an empty path to /" <|
            \_ ->
                ""
                    |> canonicalUri
                    |> Expect.equal "/"
        , test "removes redundant separators (i.e. slash /)" <|
            \_ ->
                "//foo//bar/car"
                    |> canonicalUri
                    |> Expect.equal "/foo/bar/car"
        , test "uri encodes path components" <|
            \_ ->
                "/foo-bar/biz baz/one=two"
                    |> canonicalUri
                    |> Expect.equal "/foo-bar/biz%20baz/one%3Dtwo"
        ]


canonicalQueryStringTests : Test
canonicalQueryStringTests =
    describe "canonicalQueryString"
        [ test "empty string when no query params are available" <|
            \_ ->
                JsonBody (JE.string "hello")
                    |> canonicalQueryString
                    |> Expect.equal ""
        , test "empty string when query params is an empty list" <|
            \_ ->
                QueryParams []
                    |> canonicalQueryString
                    |> Expect.equal ""
        , test "sorts by query keys" <|
            \_ ->
                QueryParams [ ( "bar", "car" ), ( "Foo", "baz" ), ( "alpha", "beta" ) ]
                    |> canonicalQueryString
                    |> Expect.equal "Foo=baz&alpha=beta&bar=car"
        , test "encodes a key without a value as key=" <|
            \_ ->
                QueryParams [ ( "foo", "baz" ), ( "bar", "" ) ]
                    |> canonicalQueryString
                    |> Expect.equal "bar=&foo=baz"
        , test "uri encodes keys and values" <|
            \_ ->
                QueryParams [ ( "one & two", "three=four" ) ]
                    |> canonicalQueryString
                    |> Expect.equal "one%20%26%20two=three%3Dfour"
        , test "does not uri encode 0-9, -, _, ., or ~" <|
            \_ ->
                QueryParams [ ( "keep-these", "_.~0123456789" ) ]
                    |> canonicalQueryString
                    |> Expect.equal "keep-these=_.~0123456789"
        , test "uri encodes all other non-letter characters" <|
            \_ ->
                QueryParams
                    [ ( "encode-these"
                      , " !\"#$%&'()*+,/:;<=>?@[\\]^`{|}"
                      )
                    ]
                    |> canonicalQueryString
                    |> Expect.equal "encode-these=%20%21%22%23%24%25%26%27%28%29%2A%2B%2C%2F%3A%3B%3C%3D%3E%3F%40%5B%5C%5D%5E%60%7B%7C%7D"
        ]


canonicalHeadersTests : Test
canonicalHeadersTests =
    describe "canonicalHeaders"
        [ test "sorts the headers and converts names to lowercase" <|
            \_ ->
                [ ( "one-1", "a" ), ( "two-2", "b" ), ( "Three-3", "c" ), ( "four-4", "d" ) ]
                    |> canonicalHeaders
                    |> Expect.equal
                        ([ "four-4:d"
                         , "one-1:a"
                         , "three-3:c"
                         , "two-2:b"
                         ]
                            |> String.join ("\n")
                        )
        , test "removes extra spaces from the values" <|
            \_ ->
                [ ( "my-header-1", "  a   b      c " )
                , ( "My-header-2", "  \"a b  c\" " )
                , ( "content-type", "application/json;  charset=utf-8" )
                ]
                    |> canonicalHeaders
                    |> Expect.equal
                        ([ "content-type:application/json; charset=utf-8"
                         , "my-header-1:a b c"
                         , "my-header-2:\"a b c\""
                         ]
                            |> String.join "\n"
                        )
        ]


signedHeadersTests : Test
signedHeadersTests =
    describe "signedHeaders"
        [ test "sorts the header names and converts to lowercase" <|
            \_ ->
                [ ( "one-1", "a" ), ( "two-2", "b" ), ( "Three-3", "c" ), ( "four-4", "d" ) ]
                    |> signedHeaders
                    |> Expect.equal "four-4;one-1;three-3;two-2"
        ]


canonicalPayloadTests : Test
canonicalPayloadTests =
    let
        hexPattern =
            "^[0-9a-f]+$"
    in
        describe "canonicalPayload"
            [ test "hex encodes a JSON body" <|
                \_ ->
                    JsonBody
                        (JE.object
                            [ ( "name", JE.string "george" )
                            , ( "age", JE.int 6 )
                            ]
                        )
                        |> canonicalPayload
                        |> expectMatches hexPattern
            , test "hex encodes an empty body" <|
                \_ ->
                    QueryParams []
                        |> canonicalPayload
                        |> expectMatches hexPattern
            ]
