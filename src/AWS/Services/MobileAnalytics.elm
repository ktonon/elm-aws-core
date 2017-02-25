module AWS.Services.MobileAnalytics
    exposing
        ( config
        , putEvents
        , PutEventsOptions
        , BadRequestException
        , Event
        , Session
        )

{-| <p>Amazon Mobile Analytics is a service for collecting, visualizing, and understanding app usage data at scale.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Records](#records)
* [Exceptions](#exceptions)

## Operations

* [putEvents](#putEvents)
* [PutEventsOptions](#PutEventsOptions)


@docs putEvents,PutEventsOptions

## Records

* [Event](#Event)
* [Session](#Session)


@docs Event,Session

## Exceptions

* [BadRequestException](#BadRequestException)


@docs BadRequestException

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "mobileanalytics"
        "2014-06-05"
        "undefined"
        "AWSMOBILEANALYTICS_20140605."
        "mobileanalytics.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>The PutEvents operation records one or more events. You can have up to 1,500 unique custom events per app, any combination of up to 40 attributes and metrics per custom event, and any number of attribute or metric values.</p>

__Required Parameters__

* `events` __:__ `(List Event)`
* `clientContext` __:__ `String`


-}
putEvents :
    (List Event)
    -> String
    -> (PutEventsOptions -> PutEventsOptions)
    -> AWS.Request ()
putEvents events clientContext setOptions =
  let
    options = setOptions (PutEventsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutEvents"
        "POST"
        "/2014-06-05/events"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putEvents request
-}
type alias PutEventsOptions =
    { clientContextEncoding : Maybe String
    }




{-| <p>An exception object returned when a request fails.</p>
-}
type alias BadRequestException =
    { message : Maybe String
    }



badRequestExceptionDecoder : JD.Decoder BadRequestException
badRequestExceptionDecoder =
    JDP.decode BadRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A JSON object representing a batch of unique event occurrences in your app.</p>
-}
type alias Event =
    { eventType : String
    , timestamp : String
    , session : Maybe Session
    , version : Maybe String
    , attributes : Maybe (Dict String String)
    , metrics : Maybe (Dict String Float)
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JDP.decode Event
        |> JDP.required "eventType" JD.string
        |> JDP.required "timestamp" JD.string
        |> JDP.optional "session" (JD.nullable sessionDecoder) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "metrics" (JD.nullable (JD.dict JD.float)) Nothing




{-| <p>Describes the session. Session information is required on ALL events.</p>
-}
type alias Session =
    { id : Maybe String
    , duration : Maybe Int
    , startTimestamp : Maybe String
    , stopTimestamp : Maybe String
    }



sessionDecoder : JD.Decoder Session
sessionDecoder =
    JDP.decode Session
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "startTimestamp" (JD.nullable JD.string) Nothing
        |> JDP.optional "stopTimestamp" (JD.nullable JD.string) Nothing




