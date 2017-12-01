module SignersTests.V4Tests
    exposing
        ( authorizationTests
        , awsOfficialSuite
        )

import AWS.Core.Body exposing (Body)
import AWS.Core.Credentials as Credentials exposing (Credentials)
import AWS.Core.Http exposing (Method(..))
import AWS.Core.InternalTypes exposing (Signer(SignV4))
import AWS.Core.Request exposing (Unsigned)
import AWS.Core.Service as Service exposing (Service)
import AWS.Core.Signers.Canonical exposing (canonical, canonicalRaw)
import AWS.Core.Signers.V4 as V4 exposing (..)
import Date exposing (Date, fromString, fromTime)
import Expect
import Json.Decode as JD
import Test exposing (Test, describe, test)


authorizationTests : Test
authorizationTests =
    describe "authorization"
        {- http://docs.aws.amazon.com/general/latest/gr/signature-v4-test-suite.html#signature-v4-test-suite-example -}
        [ test "returns a signed header equal to the online example" <|
            \_ ->
                let
                    creds =
                        Credentials.fromAccessKeys
                            "AKIDEXAMPLE"
                            "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY"

                    config =
                        Service.defineRegional
                            "service"
                            "2015-12-08"
                            Service.query
                            Service.signV4
                            (Service.setJsonVersion "1.1")
                            "us-east-1"

                    req =
                        AWS.Core.Http.request
                            GET
                            "/"
                            AWS.Core.Body.empty
                            (JD.succeed ())
                            |> AWS.Core.Http.addQuery
                                [ ( "Param1", "value1" )
                                , ( "Param2", "value2" )
                                ]

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
                    SignV4
                    data.req.method
                    data.req.path
                    data.req.headers
                    data.req.query
                    data.req.body
                    |> Expect.equal data.creq
        , test "string to sign" <|
            \_ ->
                canonical
                    SignV4
                    data.req.method
                    data.req.path
                    data.req.headers
                    data.req.query
                    data.req.body
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
    , query : List ( String, String )
    , body : Body
    }



-- HELPERS


creds : Credentials
creds =
    Credentials.fromAccessKeys
        "AKIDEXAMPLE"
        "wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY"


date : Date
date =
    Date.fromString "2015-08-30T12:36:00Z"
        |> Result.withDefault (Date.fromTime 0)


conf : Service
conf =
    Service.defineRegional "service"
        ""
        Service.query
        Service.signV4
        identity
        "us-east-1"


req : Req -> AWS.Core.Request.Unsigned ()
req data =
    AWS.Core.Request.Unsigned
        data.method
        data.path
        data.body
        (JD.succeed ())
        []
        data.query



-- TEST DATA
-- http://docs.aws.amazon.com/general/latest/gr/signature-v4-test-suite.html#signature-v4-test-suite-example


allData : List V4TestData
allData =
    [ V4TestData
        "get-header-key-duplicate"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "My-Header1", "value2" )
            , ( "My-Header1", "value2" )
            , ( "My-Header1", "value1" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/

host:example.amazonaws.com
my-header1:value2,value2,value1
x-amz-date:20150830T123600Z

host;my-header1;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
dc7f04a3abfde8d472b0ab1a418b741b7c67174dad1551b4117b15527fbe966c"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;my-header1;x-amz-date, Signature=c9d5ea9f3f72853aea855b47ea873832890dbdd183b4468f858259531a5138ea"
    , V4TestData
        "get-header-value-multiline"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "My-Header1", """value1
  value2
     value3""" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/

host:example.amazonaws.com
my-header1:value1,value2,value3
x-amz-date:20150830T123600Z

host;my-header1;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
b7b6cbfd8a0430b78891e986784da2630c8a135a8595cec25b26ea94f926ee55"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;my-header1;x-amz-date, Signature=ba17b383a53190154eb5fa66a1b836cc297cc0a3d70a5d00705980573d8ff790"
    , V4TestData
        "get-header-value-order"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "My-Header1", "value4" )
            , ( "My-Header1", "value1" )
            , ( "My-Header1", "value3" )
            , ( "My-Header1", "value2" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/

host:example.amazonaws.com
my-header1:value4,value1,value3,value2
x-amz-date:20150830T123600Z

host;my-header1;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
31ce73cd3f3d9f66977ad3dd957dc47af14df92fcd8509f59b349e9137c58b86"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;my-header1;x-amz-date, Signature=08c7e5a9acfcfeb3ab6b2185e75ce8b1deb5e634ec47601a50643f830c755c01"
    , V4TestData
        "get-header-value-trim"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "My-Header1", "value1" )
            , ( "My-Header2", "\"a   b   c\"" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/

host:example.amazonaws.com
my-header1:value1
my-header2:"a b c"
x-amz-date:20150830T123600Z

host;my-header1;my-header2;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
a726db9b0df21c14f559d0a978e563112acb1b9e05476f0a6a1c7d68f28605c7"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;my-header1;my-header2;x-amz-date, Signature=acc3ed3afb60bb290fc8d2dd0098b9911fcaa05412b367055dee359757a9c736"
    , V4TestData
        "get-unreserved"
        (Req "GET"
            "/-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
6a968768eefaa713e2a6b16b589a8ea192661f098f37349f4e2c0082757446f9"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=07ef7494c76fa4850883e2b006601f940f8a34d404d0cfa977f52a65bbf5f24f"
    , V4TestData
        "get-vanilla"
        (Req "GET"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
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
            [ ( "Param1", "value1" ) ]
            AWS.Core.Body.empty
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
            []
            AWS.Core.Body.empty
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
            [ ( "Param2", "value2" ), ( "Param1", "value1" ) ]
            AWS.Core.Body.empty
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
            [ ( "-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
              , "-._~0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
              )
            ]
            AWS.Core.Body.empty
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
            [ ( "ሴ", "bar" ) ]
            AWS.Core.Body.empty
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
            []
            AWS.Core.Body.empty
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
    , V4TestData
        "get-relative"
        (Req "GET"
            "/example/.."
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
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
        "get-relative-relative"
        (Req "GET"
            "/example1/example2/../.."
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
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
        "get-slash"
        (Req "GET"
            "//"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
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
        "get-slash-dot-slash"
        (Req "GET"
            "/./"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
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
        "get-slash-pointless-dot"
        (Req "GET"
            "/./example"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/example

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
214d50c111a8edc4819da6a636336472c916b5240f51e9a51b5c3305180cf702"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=ef75d96142cf21edca26f06005da7988e4f8dc83a165a80865db7089db637ec5"
    , V4TestData
        "get-slashes"
        (Req "GET"
            "//example//"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/example/

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
cb96b4ac96d501f7c5c15bc6d67b3035061cfced4af6585ad927f7e6c985c015"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=9a624bd73a37c9a373b5312afbebe7a714a789de108f0bdfe846570885f57e84"
    , V4TestData
        "get-space"
        (Req "GET"
            "/example space/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """GET
/example%20space/

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
63ee75631ed7234ae61b5f736dfc7754cdccfedbff4b5128a915706ee9390d86"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=652487583200325589f1fba4c7e578f72c47cb61beeca81406b39ddec1366741"
    , V4TestData
        "post-header-key-case"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """POST
/

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
553f88c9e4d10fc9e109e2aeb65f030801b70c2f6468faca261d401ae622fc87"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=5da7c1a2acd57cee7505fc6676e4e544621c30862966e37dddb68e92efbe5d6b"
    , V4TestData
        "post-"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "My-Header1", "value1" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """POST
/

host:example.amazonaws.com
my-header1:value1
x-amz-date:20150830T123600Z

host;my-header1;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
9368318c2967cf6de74404b30c65a91e8f6253e0a8659d6d5319f1a812f87d65"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;my-header1;x-amz-date, Signature=c5410059b04c1ee005303aed430f6e6645f61f4dc9e1461ec8f8916fdf18852c"
    , V4TestData
        "post-header-value-case"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "My-Header1", "VALUE1" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """POST
/

host:example.amazonaws.com
my-header1:VALUE1
x-amz-date:20150830T123600Z

host;my-header1;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
d51ced243e649e3de6ef63afbbdcbca03131a21a7103a1583706a64618606a93"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;my-header1;x-amz-date, Signature=cdbc9802e29d2942e5e10b5bccfdd67c5f22c7c4e8ae67b53629efa58b974b7d"
    , V4TestData
        "post-sts-header-after"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """POST
/

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
553f88c9e4d10fc9e109e2aeb65f030801b70c2f6468faca261d401ae622fc87"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=5da7c1a2acd57cee7505fc6676e4e544621c30862966e37dddb68e92efbe5d6b"
    , V4TestData
        "post-sts-header-before"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            , ( "X-Amz-Security-Token", "AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==" )
            ]
            []
            AWS.Core.Body.empty
        )
        """POST
/

host:example.amazonaws.com
x-amz-date:20150830T123600Z
x-amz-security-token:AQoDYXdzEPT//////////wEXAMPLEtc764bNrC9SAPBSM22wDOk4x4HIZ8j4FZTwdQWLWsKWHGBuFqwAeMicRXmxfpSPfIeoIYRqTflfKD8YUuwthAx7mSEI/qkPpKPi/kMcGdQrmGdeehM4IC1NtBmUpp2wUE8phUZampKsburEDy0KPkyQDYwT7WZ0wq5VSXDvp75YU9HFvlRd8Tx6q6fE8YQcHNVXAkiY9q6d+xo0rKwT38xVqr7ZD0u0iPPkUL64lIZbqBAz+scqKmlzm8FDrypNC9Yjc8fPOLn9FX9KSYvKTr4rvx3iSIlTJabIQwj2ICCR/oLxBA==

host;x-amz-date;x-amz-security-token
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
c237e1b440d4c63c32ca95b5b99481081cb7b13c7e40434868e71567c1a882f6"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date;x-amz-security-token, Signature=85d96828115b5dc0cfc3bd16ad9e210dd772bbebba041836c64533a82be05ead"
    , V4TestData
        "post-vanilla"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            []
            AWS.Core.Body.empty
        )
        """POST
/

host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
553f88c9e4d10fc9e109e2aeb65f030801b70c2f6468faca261d401ae622fc87"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=5da7c1a2acd57cee7505fc6676e4e544621c30862966e37dddb68e92efbe5d6b"
    , V4TestData
        "post-vanilla-empty-query-value"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            [ ( "Param1", "value1" ) ]
            AWS.Core.Body.empty
        )
        """POST
/
Param1=value1
host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
9d659678c1756bb3113e2ce898845a0a79dbbc57b740555917687f1b3340fbbd"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=28038455d6de14eafc1f9222cf5aa6f1a96197d7deb8263271d420d138af7f11"
    , V4TestData
        "post-vanilla-query"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            [ ( "Param1", "value1" ) ]
            AWS.Core.Body.empty
        )
        """POST
/
Param1=value1
host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
9d659678c1756bb3113e2ce898845a0a79dbbc57b740555917687f1b3340fbbd"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=28038455d6de14eafc1f9222cf5aa6f1a96197d7deb8263271d420d138af7f11"
    , V4TestData
        "post-vanilla-query-nonunreserved"
        (Req "POST"
            "/"
            [ ( "Host", "example.amazonaws.com" )
            , ( "X-Amz-Date", "20150830T123600Z" )
            ]
            [ ( "@#$%^&+", "/,?><`\";:\\|][{}" ) ]
            AWS.Core.Body.empty
        )
        """POST
/
%40%23%24%25%5E%26%2B=%2F%2C%3F%3E%3C%60%22%3B%3A%5C%7C%5D%5B%7B%7D
host:example.amazonaws.com
x-amz-date:20150830T123600Z

host;x-amz-date
e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
        """AWS4-HMAC-SHA256
20150830T123600Z
20150830/us-east-1/service/aws4_request
eefcefefb33f2f62b17696313b6d0dcb93231d17f4bdf722a1278a1931fa8365"""
        "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=88d3e39e4fa54b971f51c0a09140368e1a51aafb76c4652d9998f93cf3038074"

    --     , V4TestData
    --         "post-vanilla-query-space"
    --         (Req "POST"
    --             "/"
    --             [ ( "Host", "example.amazonaws.com" )
    --             , ( "X-Amz-Date", "20150830T123600Z" )
    --             ]
    --             [ ( "p aram1", "val ue1" ) ]
    --         )
    --         """POST
    -- /
    -- p=
    -- host:example.amazonaws.com
    -- x-amz-date:20150830T123600Z
    --
    -- host;x-amz-date
    -- e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"""
    --         """AWS4-HMAC-SHA256
    -- 20150830T123600Z
    -- 20150830/us-east-1/service/aws4_request
    -- 64d815da3176ec9c192c391374e9d4084588659309187ce60e0fcffcbc8c81c5"""
    --         "AWS4-HMAC-SHA256 Credential=AKIDEXAMPLE/20150830/us-east-1/service/aws4_request, SignedHeaders=host;x-amz-date, Signature=e71688addb58a26418614085fb730ba3faa623b461c17f48f2fbdb9361b94a9b"
    -- , V4TestData
    --     "post-x-www-form-urlencoded"
    --     (Req "POST"
    --         "/"
    --         [ ( "Host", "example.amazonaws.com" )
    --         , ( "X-Amz-Date", "20150830T123600Z" )
    --         ]
    --         [] AWS.Core.Body.empty
    --     )
    --     """"""
    --     """"""
    --     ""
    -- , V4TestData
    --     "post-x-www-form-urlencoded-parameters"
    --     (Req "POST"
    --         "/"
    --         [ ( "Host", "example.amazonaws.com" )
    --         , ( "X-Amz-Date", "20150830T123600Z" )
    --         ]
    --         [] AWS.Core.Body.empty
    --     )
    --     """"""
    --     """"""
    --     ""
    ]
