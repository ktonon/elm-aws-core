module TestHelpers exposing (..)

import Expect exposing (..)
import Regex exposing (regex, Regex)
import Test exposing (..)


type ExpectResult a
    = ExpectOk a
    | ExpectAnyErr


describeResulter :
    String
    -> (c -> Result a b)
    -> List ( c, ExpectResult b )
    -> Test
describeResulter label func testCases =
    testCases
        |> List.map
            (\( input, er ) -> testResult func input er)
        |> describe label


testResult : (c -> Result a b) -> c -> ExpectResult b -> Test
testResult func input er =
    test (toString input) <|
        \_ ->
            resultExpectation (func input) er


resultExpectation : Result a b -> ExpectResult b -> Expectation
resultExpectation r er =
    case ( r, er ) of
        ( Ok actual, ExpectOk expected ) ->
            Expect.equal actual expected

        ( Err _, ExpectAnyErr ) ->
            Expect.pass

        ( Ok _, ExpectAnyErr ) ->
            "Expected a failure result but got: " ++ (toString r) |> Expect.fail

        ( Err err, ExpectOk expected ) ->
            "Expected (Ok "
                ++ (toString expected)
                ++ ") but got: "
                ++ (toString err)
                |> Expect.fail


expectMatches : String -> String -> Expectation
expectMatches pattern string =
    string
        |> Regex.contains (regex pattern)
        |> Expect.true
            ("Expected string '"
                ++ string
                ++ "' to match Regex /"
                ++ pattern
                ++ "/"
            )
