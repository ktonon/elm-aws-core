module AWS.Services.IoTDataPlane
    exposing
        ( config
        , deleteThingShadow
        , getThingShadow
        , publish
        , PublishOptions
        , updateThingShadow
        , ConflictException
        , DeleteThingShadowResponse
        , GetThingShadowResponse
        , InternalFailureException
        , InvalidRequestException
        , MethodNotAllowedException
        , RequestEntityTooLargeException
        , ResourceNotFoundException
        , ServiceUnavailableException
        , ThrottlingException
        , UnauthorizedException
        , UnsupportedDocumentEncodingException
        , UpdateThingShadowResponse
        )

{-| <fullname>AWS IoT</fullname> <p>AWS IoT-Data enables secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. It implements a broker for applications and things to publish messages over HTTP (Publish) and retrieve, update, and delete thing shadows. A thing shadow is a persistent representation of your things and their state in the AWS cloud.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Exceptions](#exceptions)

## Operations

* [deleteThingShadow](#deleteThingShadow)
* [getThingShadow](#getThingShadow)
* [publish](#publish)
* [PublishOptions](#PublishOptions)
* [updateThingShadow](#updateThingShadow)


@docs deleteThingShadow,getThingShadow,publish,PublishOptions,updateThingShadow

## Responses

* [DeleteThingShadowResponse](#DeleteThingShadowResponse)
* [GetThingShadowResponse](#GetThingShadowResponse)
* [UpdateThingShadowResponse](#UpdateThingShadowResponse)


@docs DeleteThingShadowResponse,GetThingShadowResponse,UpdateThingShadowResponse

## Exceptions

* [ConflictException](#ConflictException)
* [InternalFailureException](#InternalFailureException)
* [InvalidRequestException](#InvalidRequestException)
* [MethodNotAllowedException](#MethodNotAllowedException)
* [RequestEntityTooLargeException](#RequestEntityTooLargeException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ServiceUnavailableException](#ServiceUnavailableException)
* [ThrottlingException](#ThrottlingException)
* [UnauthorizedException](#UnauthorizedException)
* [UnsupportedDocumentEncodingException](#UnsupportedDocumentEncodingException)


@docs ConflictException,InternalFailureException,InvalidRequestException,MethodNotAllowedException,RequestEntityTooLargeException,ResourceNotFoundException,ServiceUnavailableException,ThrottlingException,UnauthorizedException,UnsupportedDocumentEncodingException

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "data.iot"
        "2015-05-28"
        "undefined"
        "AWSDATA.IOT_20150528."
        "data.iot.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Deletes the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>

__Required Parameters__

* `thingName` __:__ `String`


-}
deleteThingShadow :
    String
    -> AWS.Http.UnsignedRequest DeleteThingShadowResponse
deleteThingShadow thingName =
    AWS.Http.unsignedRequest
        "DeleteThingShadow"
        "DELETE"
        "/things/{thingName}/shadow"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteThingShadowResponseDecoder



{-| <p>Gets the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>

__Required Parameters__

* `thingName` __:__ `String`


-}
getThingShadow :
    String
    -> AWS.Http.UnsignedRequest GetThingShadowResponse
getThingShadow thingName =
    AWS.Http.unsignedRequest
        "GetThingShadow"
        "GET"
        "/things/{thingName}/shadow"
        (AWS.Http.QueryParams
            [
            ]
        )
        getThingShadowResponseDecoder



{-| <p>Publishes state information.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/protocols.html#http">HTTP Protocol</a> in the <i>AWS IoT Developer Guide</i>.</p>

__Required Parameters__

* `topic` __:__ `String`


-}
publish :
    String
    -> (PublishOptions -> PublishOptions)
    -> AWS.Http.UnsignedRequest ()
publish topic setOptions =
  let
    options = setOptions (PublishOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "Publish"
        "POST"
        "/topics/{topic}"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a publish request
-}
type alias PublishOptions =
    { qos : Maybe Int
    , payload : Maybe String
    }



{-| <p>Updates the thing shadow for the specified thing.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow</a> in the <i>AWS IoT Developer Guide</i>.</p>

__Required Parameters__

* `thingName` __:__ `String`
* `payload` __:__ `String`


-}
updateThingShadow :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateThingShadowResponse
updateThingShadow thingName payload =
    AWS.Http.unsignedRequest
        "UpdateThingShadow"
        "POST"
        "/things/{thingName}/shadow"
        (AWS.Http.JsonBody
            JE.null
        )
        updateThingShadowResponseDecoder




{-| <p>The specified version does not match the version of the document.</p>
-}
type alias ConflictException =
    { message : Maybe String
    }



conflictExceptionDecoder : JD.Decoder ConflictException
conflictExceptionDecoder =
    JDP.decode ConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteThingShadow
-}
type alias DeleteThingShadowResponse =
    { payload : String
    }



deleteThingShadowResponseDecoder : JD.Decoder DeleteThingShadowResponse
deleteThingShadowResponseDecoder =
    JDP.decode DeleteThingShadowResponse
        |> JDP.required "payload" JD.string




{-| Type of HTTP response from getThingShadow
-}
type alias GetThingShadowResponse =
    { payload : Maybe String
    }



getThingShadowResponseDecoder : JD.Decoder GetThingShadowResponse
getThingShadowResponseDecoder =
    JDP.decode GetThingShadowResponse
        |> JDP.optional "payload" (JD.nullable JD.string) Nothing




{-| <p>An unexpected error has occurred.</p>
-}
type alias InternalFailureException =
    { message : Maybe String
    }



internalFailureExceptionDecoder : JD.Decoder InternalFailureException
internalFailureExceptionDecoder =
    JDP.decode InternalFailureException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request is not valid.</p>
-}
type alias InvalidRequestException =
    { message : Maybe String
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JDP.decode InvalidRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified combination of HTTP verb and URI is not supported.</p>
-}
type alias MethodNotAllowedException =
    { message : Maybe String
    }



methodNotAllowedExceptionDecoder : JD.Decoder MethodNotAllowedException
methodNotAllowedExceptionDecoder =
    JDP.decode MethodNotAllowedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The payload exceeds the maximum size allowed.</p>
-}
type alias RequestEntityTooLargeException =
    { message : Maybe String
    }



requestEntityTooLargeExceptionDecoder : JD.Decoder RequestEntityTooLargeException
requestEntityTooLargeExceptionDecoder =
    JDP.decode RequestEntityTooLargeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified resource does not exist.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The service is temporarily unavailable.</p>
-}
type alias ServiceUnavailableException =
    { message : Maybe String
    }



serviceUnavailableExceptionDecoder : JD.Decoder ServiceUnavailableException
serviceUnavailableExceptionDecoder =
    JDP.decode ServiceUnavailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The rate exceeds the limit.</p>
-}
type alias ThrottlingException =
    { message : Maybe String
    }



throttlingExceptionDecoder : JD.Decoder ThrottlingException
throttlingExceptionDecoder =
    JDP.decode ThrottlingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You are not authorized to perform this operation.</p>
-}
type alias UnauthorizedException =
    { message : Maybe String
    }



unauthorizedExceptionDecoder : JD.Decoder UnauthorizedException
unauthorizedExceptionDecoder =
    JDP.decode UnauthorizedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The document encoding is not supported.</p>
-}
type alias UnsupportedDocumentEncodingException =
    { message : Maybe String
    }



unsupportedDocumentEncodingExceptionDecoder : JD.Decoder UnsupportedDocumentEncodingException
unsupportedDocumentEncodingExceptionDecoder =
    JDP.decode UnsupportedDocumentEncodingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateThingShadow
-}
type alias UpdateThingShadowResponse =
    { payload : Maybe String
    }



updateThingShadowResponseDecoder : JD.Decoder UpdateThingShadowResponse
updateThingShadowResponseDecoder =
    JDP.decode UpdateThingShadowResponse
        |> JDP.optional "payload" (JD.nullable JD.string) Nothing




