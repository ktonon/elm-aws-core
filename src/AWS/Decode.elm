module AWS.Decode
    exposing
        ( Metadata
        , Response
        , ResponseWrapper
        , dict
        , optional
        , required
        , responseWrapperDecoder
        )

import Dict exposing (Dict)
import Json.Decode as JD
import Json.Decode.Pipeline as JDP


type alias ResponseWrapper a =
    { response : Response a }


type alias Response a =
    { data : a
    , metadata : Metadata
    }


type alias Metadata =
    { requestId : String }


responseWrapperDecoder : String -> String -> JD.Decoder a -> JD.Decoder (ResponseWrapper a)
responseWrapperDecoder actionName dataName dataDecoder =
    JDP.decode ResponseWrapper
        |> JDP.required (actionName ++ "Response")
            (JDP.decode Response
                |> JDP.required dataName dataDecoder
                |> JDP.required "ResponseMetadata"
                    (JDP.decode Metadata
                        |> JDP.required "RequestId" JD.string
                    )
            )



-- required and optional member decoders


required : List String -> JD.Decoder a -> JD.Decoder a
required fields decoder =
    tryFields fields decoder
        |> JD.andThen
            (\maybeValue ->
                case maybeValue of
                    Nothing ->
                        JD.fail ("Missing required fields with key of either: " ++ (toString fields))

                    Just value ->
                        case JD.decodeValue decoder value of
                            Ok x ->
                                JD.succeed x

                            Err err ->
                                JD.fail (toString err)
            )


optional : List String -> JD.Decoder a -> JD.Decoder (Maybe a)
optional fields decoder =
    tryFields fields decoder
        |> JD.andThen
            (\maybeValue ->
                case maybeValue of
                    Nothing ->
                        JD.succeed Nothing

                    Just value ->
                        case JD.decodeValue decoder value of
                            Ok x ->
                                JD.succeed (Just x)

                            Err err ->
                                JD.fail (toString err)
            )


tryFields : List String -> JD.Decoder a -> JD.Decoder (Maybe JD.Value)
tryFields fields decoder =
    fields
        |> List.map (\field -> JD.field field JD.value)
        |> JD.oneOf
        |> JD.maybe



-- dict and helpers


dict : JD.Decoder a -> JD.Decoder (Dict String a)
dict valueDecoder =
    [ JD.dict valueDecoder
    , dictAsList valueDecoder
    ]
        |> JD.oneOf


dictAsList : JD.Decoder a -> JD.Decoder (Dict String a)
dictAsList valueDecoder =
    JD.list (nameValueDecoder valueDecoder)
        |> JD.map
            (List.map (\pair -> ( pair.name, pair.value ))
                >> Dict.fromList
            )


type alias NameValuePair a =
    { name : String
    , value : a
    }


nameValueDecoder : JD.Decoder a -> JD.Decoder (NameValuePair a)
nameValueDecoder valueDecoder =
    JDP.decode NameValuePair
        |> JDP.required "Name" JD.string
        |> JDP.required "Value" valueDecoder
