module UtilTests.CanonicalTests exposing (all)

import AWS.Util.Canonical exposing (..)
import Expect
import Test exposing (describe, test, Test)
import TestHelpers exposing (..)


all : Test
all =
    describe "Canonical"
        [ hexEncodeTests
        ]


hexEncodeTests : Test
hexEncodeTests =
    describe "hexEncode"
        ([ ( "", "" )
         , ( " ", "20" )
         , ( "abcABC", "616263414243" )
         , ( "~~", "7e7e" )
         ]
            |> List.map toHexTest
        )


toHexTest : ( String, String ) -> Test
toHexTest ( input, expectedOutput ) =
    test (input ++ " -> " ++ expectedOutput) <|
        \_ ->
            Expect.equal (hexEncode input) expectedOutput
