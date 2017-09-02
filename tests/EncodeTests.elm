module EncodeTests exposing (all)

import AWS.Core.Encode
import Expect
import Test exposing (Test, describe, test)


all : Test
all =
    describe "Encode.uri"
        [ test "handles utf8" <|
            \_ ->
                "ሴ"
                    |> AWS.Core.Encode.uri
                    |> Expect.equal "%E1%88%B4"
        ]
