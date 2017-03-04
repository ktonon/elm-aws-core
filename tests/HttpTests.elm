module HttpTests exposing (all)

import AWS.Http exposing (..)
import Expect
import Json.Encode
import Test exposing (Test, describe, test)


all : Test
all =
    describe "Http"
        [ queryStringTests
        ]


queryStringTests : Test
queryStringTests =
    describe "queryString"
        [ test "NoParams is ignored" <|
            \_ ->
                NoParams
                    |> queryString
                    |> Expect.equal ""
        , test "JsonBody is ignored" <|
            \_ ->
                JsonBody Json.Encode.null
                    |> queryString
                    |> Expect.equal ""
        , test "An empty list produces an empty string" <|
            \_ ->
                QueryParams []
                    |> queryString
                    |> Expect.equal ""
        , test "When query params are present they are prefixed with ?" <|
            \_ ->
                QueryParams [ ( "key", "value" ) ]
                    |> queryString
                    |> Expect.equal "?key=value"
        , test "Multiple args are separated with &" <|
            \_ ->
                QueryParams [ ( "key0", "value0" ), ( "key1", "value1" ) ]
                    |> queryString
                    |> Expect.equal "?key0=value0&key1=value1"
        , test "Keys and values are uri encoded" <|
            \_ ->
                QueryParams [ ( "key with spaces", "=&" ) ]
                    |> queryString
                    |> Expect.equal "?key%20with%20spaces=%3D%26"
        ]
