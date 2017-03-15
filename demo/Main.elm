module Main exposing (..)

import Array exposing (Array)
import AWS
import AWS.Services.SQS as SQS
import Config
import Dict exposing (Dict)
import Html exposing (..)
import Http
import Task


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { queueUrls : List String
    , attributes : Array (Dict String String)
    }


init : ( Model, Cmd Msg )
init =
    ( Model [] Array.empty
    , listQueues
    )


creds : AWS.Credentials
creds =
    AWS.credentials Config.accessKeyId Config.secretAccessKey Nothing



-- UPDATE


type Msg
    = Queues (Result Http.Error (AWS.Response SQS.ListQueuesResult))
    | QueueAttributes Int (Result Http.Error (AWS.Response SQS.GetQueueAttributesResult))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Queues result ->
            let
                queueUrls =
                    result
                        |> logError
                        |> Result.toMaybe
                        |> Maybe.andThen (AWS.responseData >> .queueUrls)
                        |> Maybe.withDefault []
            in
                ( { model | queueUrls = queueUrls }
                , queueUrls
                    |> List.indexedMap getQueueAttributes
                    |> Cmd.batch
                )

        QueueAttributes index result ->
            let
                attrs =
                    result
                        |> logError
                        |> Result.toMaybe
                        |> Maybe.andThen (AWS.responseData >> .attributes)
                        |> Maybe.withDefault Dict.empty
            in
                ( { model
                    | attributes = Array.set index attrs model.attributes
                  }
                , Cmd.none
                )


logError : Result a b -> Result a b
logError result =
    case result of
        Err err ->
            Debug.log "Error" err |> Err

        Ok val ->
            Ok val



-- REQUESTS


listQueues : Cmd Msg
listQueues =
    SQS.listQueues AWS.defaultOptions
        |> AWS.toTask (SQS.config Config.region) creds
        |> Task.attempt Queues


getQueueAttributes : Int -> String -> Cmd Msg
getQueueAttributes index url =
    SQS.getQueueAttributes url
        (\opt ->
            { opt
                | attributeNames = Just [ SQS.QueueAttributeName_All ]
            }
        )
        |> AWS.toTask (SQS.config Config.region) creds
        |> Task.attempt (QueueAttributes index)



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h2 [] [ text "Queues" ]
        , model.queueUrls
            |> List.map (\url -> li [] [ text url ])
            |> ul []
        , h2 [] [ text "Attributes of first queue" ]
        , model.attributes
            |> Array.toList
            |> List.map attributesView
            |> div []
        ]


attributesView : Dict String String -> Html Msg
attributesView attrs =
    attrs
        |> Dict.toList
        |> List.map (\( key, val ) -> li [] [ text (key ++ " = " ++ val) ])
        |> ul []
