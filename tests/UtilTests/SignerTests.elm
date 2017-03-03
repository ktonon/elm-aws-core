module UtilTests.SignerTests exposing (all)

import AWS.Config
import AWS.Http exposing (RequestParams(..), unsignedRequest)
import AWS.Signers.V4 exposing (..)
import Date exposing (fromString, fromTime)
import Expect
import Json.Decode as JD
import Test exposing (describe, test, Test)
import Time


all : Test
all =
    describe "Signer"
        [ authorizationTests
        ]


authorizationTests : Test
authorizationTests =
    describe "authorization"
        {- http://docs.aws.amazon.com/general/latest/gr/signature-v4-test-suite.html#signature-v4-test-suite-example -}
        [ test "returns a signed header equal to the online example" <|
            \_ ->
                let
                    creds =
                        AWS.Config.Credentials "AKIDEXAMPLE" "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY" Nothing

                    date =
                        case (fromString "Sun, 30 Aug 2015 12:36:00") of
                            Ok date ->
                                date

                            Err _ ->
                                fromTime Time.hour

                    config =
                        AWS.Config.Service
                            "service"
                            (AWS.Config.RegionalEndpoint "service" "us-east-1")
                            "2015-12-08"
                            (Just "1.1")
                            "AWSACM_20151208."

                    req =
                        unsignedRequest
                            "SomeTarget"
                            "GET"
                            "/"
                            (QueryParams
                                [ ( "Param1", "value1" )
                                , ( "Param2", "value2" )
                                ]
                            )
                            (JD.succeed ())

                    headers =
                        [ ( "Host", "example.amazonaws.com" )
                        , ( "X-Amz-Date", "20150830T123600Z" )
                        ]
                in
                    Expect.equal (authorization creds date config req headers)
                        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=b97d918cfa904a5beff61c982a1b6f458b799221646efd99d3219ec94cdf2500"
        ]
