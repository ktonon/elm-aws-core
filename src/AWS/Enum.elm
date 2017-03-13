module AWS.Enum exposing (toString, toFloat)

{-| Convert AWS enums values to basic values

@docs toString,toFloat
-}

import Regex exposing (contains, regex)


crop : a -> Maybe (List String)
crop =
    Basics.toString >> String.split ("_") >> List.tail


{-| Convert an AWS enum value to a string

    Enum.toString IntegrationType_HTTP_PROXY -- Ok "HTTP_PROXY"
-}
toString : a -> Result String String
toString value =
    case crop value of
        Just tail ->
            case tail of
                [] ->
                    "Not an enum value: " ++ (Basics.toString value) |> Err

                t ->
                    let
                        w =
                            t |> String.join ("_")
                    in
                        if contains (regex "[^_A-Za-z0-9]") w then
                            "Not an enum value, contains invalid characters: " ++ (Basics.toString value) |> Err
                        else
                            Ok w

        Nothing ->
            "Not an enum value: " ++ (Basics.toString value) |> Err


{-| Convert an AWS enum value to a float

    Enum.toFloat CacheClusterSize_0_5 -- Ok 0.5
-}
toFloat : a -> Result String Float
toFloat value =
    case crop value of
        Just tail ->
            tail
                |> String.join (".")
                |> String.toFloat
                |> Result.andThen Ok

        Nothing ->
            "Not an enum value: " ++ (Basics.toString value) |> Err
