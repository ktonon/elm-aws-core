module SignersTests.V4Tests exposing (all)

import AWS.Config exposing (..)
import AWS.Http exposing (RequestParams(..), UnsignedRequest, unsignedRequest)
import AWS.Signers.Canonical exposing (canonical, canonicalRaw)
import AWS.Signers.V4 as V4 exposing (..)
import Date exposing (Date, fromString, fromTime)
import Expect
import Json.Decode as JD
import Test exposing (Test, describe, test)


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
    Date.fromString "2015-08-30T12:36:00Z"
        |> Result.withDefault (Date.fromTime 0)


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
    , V4TestData
        "get-vanilla-query"
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
        "get-vanilla-query-ordered"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            (QueryParams [ ( "Param2", "value2" ), ( "Param1", "value1" ) ])
        )
        """GET
/
Param1=value1&Param2=value2
host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
816cd5b414d056048ba4f7c5386d6e0533120fb1fcfa93762cf0fc39e2cf19e0"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=b97d918cfa904a5beff61c982a1b6f458b799221646efd99d3219ec94cdf2500"
    , V4TestData
        "get-vanilla-query-unreserved"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            (QueryParams
                [ ( "-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                  , "-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                  )
                ]
            )
        )
        """GET
/
-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz=-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
c30d4703d9f799439be92736156d47ccfb2d879ddf56f5befa6d1d6aab979177"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=9c3e54bfcdf0b19771a7f523ee5669cdf59bc7cc0884027167c21bb143a40197"
    , V4TestData
        "get-vanilla-utf8-query"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            (QueryParams [ ( "ሴ", "bar" ) ])
        )
        """GET
/
%E1%88%B4=bar
host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
eb30c5bed55734080471a834cc727ae56beb50e5f39d1bff6d0d38cb192a7073"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=2cdec8eed098649ff3a119c94853b13c643bcf08f8b0a1d91e12c9027818dd04"
    , V4TestData
        "get-utf8"
        (Req "GET"
            "/ሴ"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            NoParams
        )
        """GET
/%E1%88%B4

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
2a0a97d02205e45ce2e994789806b19270cfbbb0921b278ccf58f5249ac42102"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=8318018e0b0f223aa2bbf98705b62bb787dc9c0e678f255a891fd03141be5d85"
    ]
