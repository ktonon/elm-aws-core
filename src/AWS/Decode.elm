module AWS.Decode exposing (..)

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
