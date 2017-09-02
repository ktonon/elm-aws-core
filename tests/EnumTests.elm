module EnumTests exposing (toFloatTests, toStringTests)

import AWS.Core.Enum as Enum
import Test exposing (Test, describe)
import TestHelpers exposing (..)


toStringTests : Test
toStringTests =
    describe "toString"
        [ testResult Enum.toString 3 <|
            ExpectAnyErr
        , testResult Enum.toString "FooBar_Car" <|
            ExpectAnyErr
        ]


toFloatTests : Test
toFloatTests =
    describe "toFloat"
        [ testResult Enum.toFloat 5.5 <|
            ExpectAnyErr
        ]
