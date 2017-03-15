module DecodeTests exposing (all)

import AWS.Decode
import Json.Decode as JD
import Test exposing (Test, describe, test)
import Test.Extra exposing (DecoderExpectation(..), describeDecoder)


all : Test
all =
    describe "Decode"
        [ optionalTests
        , requiredTests
        ]


requiredTests : Test
requiredTests =
    let
        missingKeyMsg =
            "I ran into a `fail` decoder: Missing required fields with key of either: [\"FooBar\",\"fooBar\"]"
    in
        describeDecoder """required [ "FooBar", "fooBar" ] string"""
            (AWS.Decode.required [ "FooBar", "fooBar" ] JD.string)
            [ ( """{ "fooBar": "car" }""", DecodesTo "car" )
            , ( """{ "FooBar": "car" }""", DecodesTo "car" )
            , ( """{ "fooBar": 4 }""", FailsToDecode )
            , ( """{ "FOOBAR": "car" }""", FailsToDecodeWith missingKeyMsg )
            , ( """{}""", FailsToDecodeWith missingKeyMsg )
            ]


optionalTests : Test
optionalTests =
    describeDecoder """optional [ "FooBar", "fooBar" ] int"""
        (AWS.Decode.optional [ "FooBar", "fooBar" ] JD.int)
        [ ( """{ "fooBar": 4 }""", DecodesTo (Just 4) )
        , ( """{ "FooBar": 5 }""", DecodesTo (Just 5) )
        , ( """{ "fooBar": "car" }""", FailsToDecode )
        , ( """{ "FOOBAR": 4 }""", DecodesTo (Nothing) )
        , ( """{}""", DecodesTo (Nothing) )
        ]
