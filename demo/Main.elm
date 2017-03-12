module Main exposing (..)

import AWS
import AWS.Services.SQS as Service
import Config
import Date exposing (Date)
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


type alias Data =
    Service.ListQueuesResult


type alias Model =
    { response : Maybe (AWS.Response Data)
    , err : Maybe Http.Error
    }


init : ( Model, Cmd Msg )
init =
    ( Model Nothing Nothing
    , Task.perform GotDate Date.now
    )


creds : AWS.Credentials
creds =
    AWS.credentials Config.accessKeyId Config.secretAccessKey Nothing



-- UPDATE


type Msg
    = GotDate Date
    | GotResult (Result Http.Error (AWS.Response Data))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotDate date ->
            ( model
            , Service.listQueues (\x -> x)
                |> AWS.sign (Service.config Config.region) creds date
                |> Http.send GotResult
            )

        GotResult result ->
            case result of
                Ok response ->
                    ( { model | response = Just response }, Cmd.none )

                Err err ->
                    ( { model | err = Just err }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    ul []
        (case model.response of
            Just resp ->
                resp
                    |> AWS.responseData
                    |> .queueUrls
                    |> Maybe.withDefault []
                    |> List.map
                        (\url ->
                            li [] [ text url ]
                        )

            Nothing ->
                []
        )
