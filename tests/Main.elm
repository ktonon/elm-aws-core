port module Main exposing (..)

import EncodeTests
import EnumTests
import HttpTests
import Json.Encode exposing (Value)
import SignersTests
import Test exposing (describe)
import Test.Runner.Node exposing (TestProgram, run)


main : TestProgram
main =
    run emit
        (describe "AWS"
            [ EncodeTests.all
            , EnumTests.all
            , HttpTests.all
            , SignersTests.all
            ]
        )


port emit : ( String, Value ) -> Cmd msg
