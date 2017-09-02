module DecodeTests exposing (dictTests, optionalTests, requiredTests)

import AWS.Core.Decode exposing (Metadata, Response, ResponseWrapper)
import Dict exposing (Dict)
import Json.Decode as JD
import Test exposing (Test, describe, test)
import Test.Extra exposing (DecoderExpectation(..), describeDecoder)


requiredTests : Test
requiredTests =
    let
        missingKeyMsg =
            "I ran into a `fail` decoder: Missing required fields with key of either: [\"FooBar\",\"fooBar\"]"
    in
    describeDecoder """required [ "FooBar", "fooBar" ] string"""
        (AWS.Core.Decode.required [ "FooBar", "fooBar" ] JD.string)
        [ ( """{ "fooBar": "car" }""", DecodesTo "car" )
        , ( """{ "FooBar": "car" }""", DecodesTo "car" )
        , ( """{ "fooBar": 4 }""", FailsToDecode )
        , ( """{ "FOOBAR": "car" }""", FailsToDecodeWith missingKeyMsg )
        , ( """{}""", FailsToDecodeWith missingKeyMsg )
        ]


optionalTests : Test
optionalTests =
    describeDecoder """optional [ "FooBar", "fooBar" ] int"""
        (AWS.Core.Decode.optional [ "FooBar", "fooBar" ] JD.int)
        [ ( """{ "fooBar": 4 }""", DecodesTo (Just 4) )
        , ( """{ "FooBar": 5 }""", DecodesTo (Just 5) )
        , ( """{ "fooBar": "car" }""", FailsToDecode )
        , ( """{ "FOOBAR": 4 }""", DecodesTo Nothing )
        , ( """{}""", DecodesTo Nothing )
        ]


dictTests : Test
dictTests =
    describeDecoder "dict string"
        (AWS.Core.Decode.dict JD.string)
        [ ( """{}""", DecodesTo Dict.empty )
        , ( """{ "foo": "bar", "baz": "car" }"""
          , DecodesTo (Dict.fromList [ ( "foo", "bar" ), ( "baz", "car" ) ])
          )
        , ( """[]""", DecodesTo Dict.empty )
        , ( """[
{ "Name": "foo", "Value": "bar" },
{ "Name": "baz", "Value": "car" }
]"""
          , DecodesTo (Dict.fromList [ ( "foo", "bar" ), ( "baz", "car" ) ])
          )
        ]
