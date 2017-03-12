module Main exposing (..)

import AWS
import AWS.Services.SQS as SQS
import Config
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
    , err : Maybe Http.Error
    }


init : ( Model, Cmd Msg )
init =
    ( Model [] Nothing
    , SQS.listQueues AWS.defaultOptions
        |> AWS.toTask (SQS.config Config.region) creds
        |> Task.attempt ListQueues
    )


creds : AWS.Credentials
creds =
    AWS.credentials Config.accessKeyId Config.secretAccessKey Nothing



-- UPDATE


type Msg
    = ListQueues (Result Http.Error (AWS.Response SQS.ListQueuesResult))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ListQueues result ->
            case result of
                Ok response ->
                    ( { model
                        | queueUrls =
                            response
                                |> AWS.responseData
                                |> .queueUrls
                                |> Maybe.withDefault []
                      }
                    , Cmd.none
                    )

                Err err ->
                    ( { model | err = Just err }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    model.queueUrls
        |> List.map (\url -> li [] [ text url ])
        |> ul []
