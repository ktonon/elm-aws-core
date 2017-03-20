module Main exposing (..)

import Array exposing (Array)
import Array.Extra
import AWS
import AWS.Services.SQS as SQS
import AWS.Services.CloudFormation as CF
import Config
import Dict exposing (Dict)
import Html exposing (..)
import Html.Attributes exposing (href)
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


type alias Queue =
    { attrs : Dict String String
    , url : String
    }


type alias Model =
    { queues : Array Queue
    , costEstimateUrl : String
    }


init : ( Model, Cmd Msg )
init =
    ( Model Array.empty ""
    , Cmd.batch [ estimateCosts, listQueues ]
    )


creds : AWS.Credentials
creds =
    AWS.credentials Config.accessKeyId Config.secretAccessKey Nothing



-- UPDATE


type Msg
    = CostUrl (Result Http.Error (AWS.Response CF.EstimateTemplateCostOutput))
    | Queues (Result Http.Error (AWS.Response SQS.ListQueuesResult))
    | QueueAttributes Int (Result Http.Error (AWS.Response SQS.GetQueueAttributesResult))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        CostUrl result ->
            ( { model
                | costEstimateUrl =
                    result
                        |> logError
                        |> Result.toMaybe
                        |> Maybe.andThen (AWS.responseData >> .url)
                        |> Maybe.withDefault ""
              }
            , Cmd.none
            )

        Queues result ->
            let
                queueUrls =
                    result
                        |> logError
                        |> Result.toMaybe
                        |> Maybe.andThen (AWS.responseData >> .queueUrls)
                        |> Maybe.withDefault []
            in
                ( { model
                    | queues =
                        queueUrls
                            |> List.map (Queue Dict.empty)
                            |> Array.fromList
                  }
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
                    | queues =
                        model.queues
                            |> Array.Extra.update index
                                (\queue -> { queue | attrs = attrs })
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


estimateCosts : Cmd Msg
estimateCosts =
    CF.estimateTemplateCost
        (\opt ->
            { opt
                | templateURL =
                    Just "https://s3.amazonaws.com/aws-sdk-elm/DynamoDB_Table.template"
                , parameters =
                    Just
                        [ CF.Parameter
                            (Just "HashKeyElementName")
                            (Just "key")
                            (Just False)
                        ]
            }
        )
        |> AWS.toTask (CF.config Config.region) creds
        |> Task.attempt CostUrl


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
                | attributeNames =
                    Just
                        [ SQS.QueueAttributeName_ApproximateNumberOfMessages
                        , SQS.QueueAttributeName_ApproximateNumberOfMessagesDelayed
                        , SQS.QueueAttributeName_ApproximateNumberOfMessagesNotVisible
                        ]
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
        [ h1 [] [ text "Testing SQS" ]
        , div []
            (model.queues
                |> Array.toList
                |> List.map queueView
            )
        , h1 [] [ text "Testing CloudFormation" ]
        , div [] [ estimateCostsLink model.costEstimateUrl ]
        ]


queueView : Queue -> Html Msg
queueView queue =
    div []
        [ h3 [] [ text queue.url ]
        , attributesView queue.attrs
        ]


attributesView : Dict String String -> Html Msg
attributesView attrs =
    attrs
        |> Dict.toList
        |> List.map
            (\( key, val ) ->
                tr []
                    [ td [] [ text key ]
                    , td [] [ text val ]
                    ]
            )
        |> table []


estimateCostsLink : String -> Html Msg
estimateCostsLink url =
    if String.isEmpty url then
        span [] []
    else
        a [ href url ] [ text "Estimate costs" ]
