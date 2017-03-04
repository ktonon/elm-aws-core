module AWS.Encode exposing (..)

import Char
import Hex
import Regex exposing (regex, HowMany(All))


{-| We don't use Http.encodeUri because it misses some characters.

For example, ! ' ( ) etc.

Only "Unreserved Characters" are allowed.
See http://tools.ietf.org/html/rfc3986
Section 2.3
-}
uri : String -> String
uri x =
    x
        |> Regex.replace All
            (regex "[^-A-Za-z0-9_.~]")
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
