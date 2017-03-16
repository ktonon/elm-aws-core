module DecodeTests exposing (all)

import AWS.Decode exposing (Response, ResponseWrapper, Metadata)
import AWS.Services.SQS exposing (GetQueueAttributesResult)
import Dict exposing (Dict)
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Test exposing (Test, describe, test)
import Test.Extra exposing (DecoderExpectation(..), describeDecoder)


all : Test
all =
    describe "Decode"
        [ dictTests
        , optionalTests
        , requiredTests
        , compositionTests
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


dictTests : Test
dictTests =
    describeDecoder "dict string"
        (AWS.Decode.dict JD.string)
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


compositionTests : Test
compositionTests =
    describe "more complex decoders"
        [ describeDecoder "response wrapped getQueueAttributes decoder"
            (JDP.decode GetQueueAttributesResult
                |> JDP.custom
                    (AWS.Decode.optional
                        [ "Attributes", "attributes" ]
                        (AWS.Decode.dict JD.string)
                    )
                |> AWS.Decode.responseWrapperDecoder
                    "GetQueueAttributes"
                    "GetQueueAttributesResult"
            )
            [ ( """{
  "GetQueueAttributesResponse": {
    "GetQueueAttributesResult": {
      "Attributes": [
        {
          "Name": "QueueArn",
          "Value": "arn:aws:sqs:us-east-1:1234567890:elm-test-queue"
        },
        {
          "Name": "ApproximateNumberOfMessages",
          "Value": "0"
        },
        {
          "Name": "ApproximateNumberOfMessagesNotVisible",
          "Value": "0"
        }
      ]
    },
    "ResponseMetadata": {
      "RequestId": "some-id"
    }
  }
}"""
              , DecodesTo
                    ((ResponseWrapper
                        (Response
                            (GetQueueAttributesResult
                                (Just
                                    (Dict.fromList
                                        [ ( "QueueArn", "arn:aws:sqs:us-east-1:1234567890:elm-test-queue" )
                                        , ( "ApproximateNumberOfMessages", "0" )
                                        , ( "ApproximateNumberOfMessagesNotVisible", "0" )
                                        ]
                                    )
                                )
                            )
                            (Metadata "some-id")
                        )
                     )
                    )
              )
            ]
        ]
