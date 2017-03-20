module AWS.Encode
    exposing
        ( uri
        , bool
        , unchangedQueryArgs
        , addOneToQueryArgs
        , addListToQueryArgs
        , addRecordToQueryArgs
        , optionalMember
        )

import Char
import Hex
import Http
import Regex exposing (regex, HowMany(All))


{-| We don't use Http.encodeUri because it misses some characters. It uses the
native `encodeURIComponent` under the hood:

    encodeURIComponent escapes all characters except the following:
    alphabetic, decimal digits, - _ . ! ~ * ' ( )

    - from https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Global_Objects/encodeURIComponent

For AWS only "Unreserved Characters" are allowed.
See http://tools.ietf.org/html/rfc3986
Section 2.3

So basically we need to also cover: ! * ' ( )
-}
uri : String -> String
uri x =
    x
        |> Http.encodeUri
        |> Regex.replace All
            (regex "[!*'()]")
            (\match ->
                match.match
                    |> String.toList
                    |> List.head
                    |> Maybe.map
                        (\char ->
                            char
                                |> Char.toCode
                                |> Hex.toString
                                |> String.toUpper
                                |> (++) "%"
                        )
                    |> Maybe.withDefault ""
            )



-- QUERY ENCODE SIMPLE TYPES


bool : Bool -> String
bool val =
    if val then
        "true"
    else
        "false"



-- QUERY ENCODE IN A PIPELINE


unchangedQueryArgs : List ( String, String ) -> List ( String, String )
unchangedQueryArgs args =
    args


addOneToQueryArgs : (a -> String) -> String -> a -> List ( String, String ) -> List ( String, String )
addOneToQueryArgs transform key value =
    (::) ( key, transform value )


addListToQueryArgs :
    Bool
    -> (a -> List ( String, String ) -> List ( String, String ))
    -> String
    -> List a
    -> List ( String, String )
    -> List ( String, String )
addListToQueryArgs flattened transform base values =
    values
        |> List.indexedMap
            (\index rawValue ->
                transform rawValue []
                    |> List.map
                        (\( key, value ) ->
                            ( listItemKey flattened index base key
                            , value
                            )
                        )
            )
        |> List.concat
        |> List.append


listItemKey : Bool -> Int -> String -> String -> String
listItemKey flattened index base key =
    base
        ++ (if flattened then
                "."
            else
                ".member."
           )
        ++ (toString (index + 1))
        ++ (if String.isEmpty key then
                ""
            else
                "." ++ key
           )


addRecordToQueryArgs :
    (record -> List ( String, String ))
    -> String
    -> record
    -> List ( String, String )
    -> List ( String, String )
addRecordToQueryArgs transform base record =
    let
        prefix =
            if String.isEmpty base then
                ""
            else
                base ++ "."
    in
        record
            |> transform
            |> List.map
                (\( key, value ) ->
                    ( prefix ++ key
                    , value
                    )
                )
            |> List.append


optionalMember :
    (a -> b)
    -> ( String, Maybe a )
    -> List ( String, b )
    -> List ( String, b )
optionalMember encode ( key, maybeValue ) members =
    case maybeValue of
        Nothing ->
            members

        Just value ->
            ( key, encode value ) :: members
