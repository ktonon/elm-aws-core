module EnumTests exposing (toFloatTests, toStringTests)

import AWS.Enum as Enum
import AWS.Services.APIGateway exposing (CacheClusterSize(..), IntegrationType(..))
import Test exposing (Test, describe)
import TestHelpers exposing (..)


toStringTests : Test
toStringTests =
    describe "toString"
        [ testResult Enum.toString IntegrationType_HTTP_PROXY <|
            ExpectOk "HTTP_PROXY"
        , testResult Enum.toString 3 <|
            ExpectAnyErr
        , testResult Enum.toString "FooBar_Car" <|
            ExpectAnyErr
        ]


toFloatTests : Test
toFloatTests =
    describe "toFloat"
        [ testResult Enum.toFloat IntegrationType_HTTP_PROXY <|
            ExpectAnyErr
        , testResult Enum.toFloat CacheClusterSize_0_5 <|
            ExpectOk 0.5
        , testResult Enum.toFloat 5.5 <|
            ExpectAnyErr
        ]
