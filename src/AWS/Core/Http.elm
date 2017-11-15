module AWS.Core.Http
    exposing
        ( Body
        , Method(..)
        , Path
        , Query
        , Request
        , Response
        , emptyBody
        , jsonBody
        , request
        , responseData
        , send
        )

{-| AWS requests and responses.


# Table of Contents

  - [Requests](#requests)
  - [Responses](#responses)
  - [Body](#body)


# Requests

@docs Request, request, send, Method, Path, Query


# Responses

@docs Response, responseData


# Body

@docs Body, emptyBody, jsonBody

-}

import AWS.Core.Body
import AWS.Core.Credentials exposing (Credentials)
import AWS.Core.Decode
import AWS.Core.InternalTypes exposing (Signer(..))
import AWS.Core.Request
import AWS.Core.Service as Service exposing (Service)
import AWS.Core.Signers.V4 as V4
import Date exposing (Date)
import Http
import Json.Decode
import Json.Encode
import Task


{-| Holds an unsigned AWS HTTP request.
-}
type alias Request a =
    AWS.Core.Request.Unsigned a


{-| HTTP request methods.
-}
type Method
    = DELETE
    | GET
    | HEAD
    | OPTIONS
    | POST
    | PUT


{-| Request path.
-}
type alias Path =
    String


{-| Request query arguments.
-}
type alias Query =
    List ( String, String )


{-| Holds a request body.
-}
type alias Body =
    AWS.Core.Body.Body


{-| Create an empty body.
-}
emptyBody : Body
emptyBody =
    AWS.Core.Body.empty


{-| Create a body containing a JSON value.
-}
jsonBody : Json.Encode.Value -> Body
jsonBody =
    AWS.Core.Body.json


{-| Create an AWS HTTP unsigned request.
-}
request :
    Method
    -> Path
    -> Query
    -> Body
    -> Json.Decode.Decoder a
    -> Request a
request method =
    AWS.Core.Request.unsigned (toString method)


sign :
    Service
    -> Credentials
    -> Date
    -> Request a
    -> Http.Request a
sign service creds date req =
    case Service.signer service of
        SignV4 ->
            Debug.log "signed req" <| V4.sign service creds date req

        SignV2 ->
            Debug.crash "Unsupported signature"

        SignS3 ->
            Debug.crash "Unsupported signature"


{-| Signs and sends an AWS Request.
-}
send :
    Service
    -> Credentials
    -> Request a
    -> Task.Task Http.Error a
send serviceConfig credentials req =
    Date.now
        |> Task.andThen
            (\date ->
                sign serviceConfig credentials date req
                    |> Http.toTask
            )



-- RESPONSE


{-| Response from an AWS service.
-}
type alias Response a =
    AWS.Core.Decode.ResponseWrapper a


{-| Extract the data from the AWS response.
-}
responseData : Response a -> a
responseData { response } =
    response.data
