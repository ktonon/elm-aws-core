module SignersTests.V4Tests exposing (all)

import AWS.Config exposing (..)
import AWS.Http exposing (unsignedRequest, UnsignedRequest, RequestParams(..))
import AWS.Signers.Canonical exposing (canonical, canonicalRaw)
import AWS.Signers.V4 as V4 exposing (..)
import Date exposing (fromString, fromTime, Date)
import Expect
import Json.Decode as JD
import Test exposing (describe, test, Test)
import Time


all : Test
all =
    describe "Signer"
        [ authorizationTests
        , awsOfficialSuite
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


awsOfficialSuite : Test
awsOfficialSuite =
    describe "Official AWS V4 Test Suite" <|
        List.map awsOfficialTest allData


awsOfficialTest : V4TestData -> Test
awsOfficialTest data =
    describe data.label
        [ test "canonical" <|
            \_ ->
                canonicalRaw
                    data.req.method
                    data.req.path
                    data.req.headers
                    data.req.params
                    |> Expect.equal data.creq
        , test "string to sign" <|
            \_ ->
                canonical
                    data.req.method
                    data.req.path
                    data.req.headers
                    data.req.params
                    |> V4.stringToSign
                        V4.algorithm
                        date
                        (V4.credentialScope date creds conf)
                    |> Expect.equal data.sts
        , test "authz" <|
            \_ ->
                V4.authorization
                    creds
                    date
                    conf
                    (req data.req)
                    data.req.headers
                    |> Expect.equal data.authz
        ]


type alias V4TestData =
    { label : String
    , req : Req
    , creq : String
    , sts : String
    , authz : String
    }


type alias Req =
    { method : String
    , path : String
    , headers : List ( String, String )
    , params : RequestParams
    }



-- HELPERS


creds : Credentials
creds =
    Credentials
        "AKIDEXAMPLE"
        "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY"
        Nothing


date : Date
date =
    Date.fromTime 1440952560000


conf : Service
conf =
    Service
        "service"
        (RegionalEndpoint "service" "us-east-1")
        ""
        Nothing
        ""


req : Req -> UnsignedRequest ()
req data =
    unsignedRequest ""
        data.method
        data.path
        data.params
        (JD.succeed ())



-- TEST DATA
-- http://docs.aws.amazon.com/general/latest/gr/signature-v4-test-suite.html#signature-v4-test-suite-example


allData : List V4TestData
allData =
    [ V4TestData
        "get-vanilla"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            NoParams
        )
        """GET
/

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
bb579772317eb040ac9ed261061d46c1f17a8133879d6129b6e1c25292927e63"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=5fa00fa31553b73ebf1942676e86291e8372ff2a2260956d9b8aae1d763fbf31"
    , V4TestData
        "get-vanilla-empty-query-key"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            (QueryParams
                [ ( "Param1", "value1" ) ]
            )
        )
        """GET
/
Param1=value1
host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
1e24db194ed7d0eec2de28d7369675a243488e08526e8c1c73571282f7c517ab"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=a67d582fa61cc504c4bae71f336f98b97f1ea3c7a6bfe1b6e45aec72011b9aeb"
    ]
