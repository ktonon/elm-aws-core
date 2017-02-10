port module Main exposing (..)

import Json.Encode exposing (Value)
import Test exposing (describe)
import Test.Runner.Node exposing (run, TestProgram)
import UtilTests


main : TestProgram
main =
    run emit
        (describe "AWS"
            [ UtilTests.all ]
        )


port emit : ( String, Value ) -> Cmd msg
