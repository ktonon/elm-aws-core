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


type alias Response =
    Service.ListQueuesResult


type alias Model =
    { val : Maybe Response
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
    | GotResult (Result Http.Error Response)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotDate date ->
            ( model
            , Service.listQueues (\x -> x)
                |> AWS.signV4 (Service.config Config.region) creds date
                |> Result.map (Http.send GotResult)
                |> Result.withDefault Cmd.none
            )

        GotResult result ->
            case result of
                Ok val ->
                    ( { model | val = Just val }, Cmd.none )

                Err err ->
                    ( { model | err = Just err }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        []
