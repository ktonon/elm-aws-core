module AWS.Services.AppStream
    exposing
        ( config
        , associateFleet
        , createFleet
        , CreateFleetOptions
        , createStack
        , CreateStackOptions
        , createStreamingURL
        , CreateStreamingURLOptions
        , deleteFleet
        , deleteStack
        , describeFleets
        , DescribeFleetsOptions
        , describeImages
        , DescribeImagesOptions
        , describeSessions
        , DescribeSessionsOptions
        , describeStacks
        , DescribeStacksOptions
        , disassociateFleet
        , expireSession
        , listAssociatedFleets
        , ListAssociatedFleetsOptions
        , listAssociatedStacks
        , ListAssociatedStacksOptions
        , startFleet
        , stopFleet
        , updateFleet
        , UpdateFleetOptions
        , updateStack
        , UpdateStackOptions
        , Application
        , AssociateFleetResult
        , ComputeCapacity
        , ComputeCapacityStatus
        , CreateFleetResult
        , CreateStackResult
        , CreateStreamingURLResult
        , DeleteFleetResult
        , DeleteStackResult
        , DescribeFleetsResult
        , DescribeImagesResult
        , DescribeSessionsResult
        , DescribeStacksResult
        , DisassociateFleetResult
        , ExpireSessionResult
        , Fleet
        , FleetError
        , FleetErrorCode(..)
        , FleetState(..)
        , Image
        , ImageState(..)
        , ImageStateChangeReason
        , ImageStateChangeReasonCode(..)
        , InvalidRoleException
        , LimitExceededException
        , ListAssociatedFleetsResult
        , ListAssociatedStacksResult
        , OperationNotPermittedException
        , PlatformType(..)
        , ResourceAlreadyExistsException
        , ResourceInUseException
        , ResourceNotAvailableException
        , ResourceNotFoundException
        , Session
        , SessionState(..)
        , Stack
        , StartFleetResult
        , StopFleetResult
        , UpdateFleetResult
        , UpdateStackResult
        , VisibilityType(..)
        , VpcConfig
        )

{-| <fullname>Amazon AppStream 2.0</fullname> <p>API documentation for Amazon AppStream 2.0.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [associateFleet](#associateFleet)
* [createFleet](#createFleet)
* [CreateFleetOptions](#CreateFleetOptions)
* [createStack](#createStack)
* [CreateStackOptions](#CreateStackOptions)
* [createStreamingURL](#createStreamingURL)
* [CreateStreamingURLOptions](#CreateStreamingURLOptions)
* [deleteFleet](#deleteFleet)
* [deleteStack](#deleteStack)
* [describeFleets](#describeFleets)
* [DescribeFleetsOptions](#DescribeFleetsOptions)
* [describeImages](#describeImages)
* [DescribeImagesOptions](#DescribeImagesOptions)
* [describeSessions](#describeSessions)
* [DescribeSessionsOptions](#DescribeSessionsOptions)
* [describeStacks](#describeStacks)
* [DescribeStacksOptions](#DescribeStacksOptions)
* [disassociateFleet](#disassociateFleet)
* [expireSession](#expireSession)
* [listAssociatedFleets](#listAssociatedFleets)
* [ListAssociatedFleetsOptions](#ListAssociatedFleetsOptions)
* [listAssociatedStacks](#listAssociatedStacks)
* [ListAssociatedStacksOptions](#ListAssociatedStacksOptions)
* [startFleet](#startFleet)
* [stopFleet](#stopFleet)
* [updateFleet](#updateFleet)
* [UpdateFleetOptions](#UpdateFleetOptions)
* [updateStack](#updateStack)
* [UpdateStackOptions](#UpdateStackOptions)


@docs associateFleet,createFleet,CreateFleetOptions,createStack,CreateStackOptions,createStreamingURL,CreateStreamingURLOptions,deleteFleet,deleteStack,describeFleets,DescribeFleetsOptions,describeImages,DescribeImagesOptions,describeSessions,DescribeSessionsOptions,describeStacks,DescribeStacksOptions,disassociateFleet,expireSession,listAssociatedFleets,ListAssociatedFleetsOptions,listAssociatedStacks,ListAssociatedStacksOptions,startFleet,stopFleet,updateFleet,UpdateFleetOptions,updateStack,UpdateStackOptions

## Responses

* [AssociateFleetResult](#AssociateFleetResult)
* [CreateFleetResult](#CreateFleetResult)
* [CreateStackResult](#CreateStackResult)
* [CreateStreamingURLResult](#CreateStreamingURLResult)
* [DeleteFleetResult](#DeleteFleetResult)
* [DeleteStackResult](#DeleteStackResult)
* [DescribeFleetsResult](#DescribeFleetsResult)
* [DescribeImagesResult](#DescribeImagesResult)
* [DescribeSessionsResult](#DescribeSessionsResult)
* [DescribeStacksResult](#DescribeStacksResult)
* [DisassociateFleetResult](#DisassociateFleetResult)
* [ExpireSessionResult](#ExpireSessionResult)
* [ListAssociatedFleetsResult](#ListAssociatedFleetsResult)
* [ListAssociatedStacksResult](#ListAssociatedStacksResult)
* [StartFleetResult](#StartFleetResult)
* [StopFleetResult](#StopFleetResult)
* [UpdateFleetResult](#UpdateFleetResult)
* [UpdateStackResult](#UpdateStackResult)


@docs AssociateFleetResult,CreateFleetResult,CreateStackResult,CreateStreamingURLResult,DeleteFleetResult,DeleteStackResult,DescribeFleetsResult,DescribeImagesResult,DescribeSessionsResult,DescribeStacksResult,DisassociateFleetResult,ExpireSessionResult,ListAssociatedFleetsResult,ListAssociatedStacksResult,StartFleetResult,StopFleetResult,UpdateFleetResult,UpdateStackResult

## Records

* [Application](#Application)
* [ComputeCapacity](#ComputeCapacity)
* [ComputeCapacityStatus](#ComputeCapacityStatus)
* [Fleet](#Fleet)
* [FleetError](#FleetError)
* [Image](#Image)
* [ImageStateChangeReason](#ImageStateChangeReason)
* [Session](#Session)
* [Stack](#Stack)
* [VpcConfig](#VpcConfig)


@docs Application,ComputeCapacity,ComputeCapacityStatus,Fleet,FleetError,Image,ImageStateChangeReason,Session,Stack,VpcConfig

## Unions

* [FleetErrorCode](#FleetErrorCode)
* [FleetState](#FleetState)
* [ImageState](#ImageState)
* [ImageStateChangeReasonCode](#ImageStateChangeReasonCode)
* [PlatformType](#PlatformType)
* [SessionState](#SessionState)
* [VisibilityType](#VisibilityType)


@docs FleetErrorCode,FleetState,ImageState,ImageStateChangeReasonCode,PlatformType,SessionState,VisibilityType

## Exceptions

* [InvalidRoleException](#InvalidRoleException)
* [LimitExceededException](#LimitExceededException)
* [OperationNotPermittedException](#OperationNotPermittedException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotAvailableException](#ResourceNotAvailableException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs InvalidRoleException,LimitExceededException,OperationNotPermittedException,ResourceAlreadyExistsException,ResourceInUseException,ResourceNotAvailableException,ResourceNotFoundException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "appstream2"
        "2016-12-01"
        "1.1"
        "AWSAPPSTREAM2_20161201."
        "appstream2.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Associate a fleet to a stack.</p>

__Required Parameters__

* `fleetName` __:__ `String`
* `stackName` __:__ `String`


-}
associateFleet :
    String
    -> String
    -> AWS.Request AssociateFleetResult
associateFleet fleetName stackName =
    AWS.Http.unsignedRequest
        "AssociateFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateFleetResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new fleet.</p>

__Required Parameters__

* `name` __:__ `String`
* `imageName` __:__ `String`
* `instanceType` __:__ `String`
* `computeCapacity` __:__ `ComputeCapacity`


-}
createFleet :
    String
    -> String
    -> String
    -> ComputeCapacity
    -> (CreateFleetOptions -> CreateFleetOptions)
    -> AWS.Request CreateFleetResult
createFleet name imageName instanceType computeCapacity setOptions =
  let
    options = setOptions (CreateFleetOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createFleetResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createFleet request
-}
type alias CreateFleetOptions =
    { vpcConfig : Maybe VpcConfig
    , maxUserDurationInSeconds : Maybe Int
    , disconnectTimeoutInSeconds : Maybe Int
    , description : Maybe String
    , displayName : Maybe String
    }



{-| <p>Create a new stack.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createStack :
    String
    -> (CreateStackOptions -> CreateStackOptions)
    -> AWS.Request CreateStackResult
createStack name setOptions =
  let
    options = setOptions (CreateStackOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createStackResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createStack request
-}
type alias CreateStackOptions =
    { description : Maybe String
    , displayName : Maybe String
    }



{-| <p>Creates a URL to start an AppStream 2.0 streaming session for a user. By default, the URL is valid only for 1 minute from the time that it is generated.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `fleetName` __:__ `String`
* `userId` __:__ `String`


-}
createStreamingURL :
    String
    -> String
    -> String
    -> (CreateStreamingURLOptions -> CreateStreamingURLOptions)
    -> AWS.Request CreateStreamingURLResult
createStreamingURL stackName fleetName userId setOptions =
  let
    options = setOptions (CreateStreamingURLOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateStreamingURL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createStreamingURLResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createStreamingURL request
-}
type alias CreateStreamingURLOptions =
    { applicationId : Maybe String
    , validity : Maybe Int
    , sessionContext : Maybe String
    }



{-| <p>Deletes a fleet.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteFleet :
    String
    -> AWS.Request DeleteFleetResult
deleteFleet name =
    AWS.Http.unsignedRequest
        "DeleteFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteFleetResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the stack. After this operation completes, the environment can no longer be activated, and any reservations made for the stack are released.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteStack :
    String
    -> AWS.Request DeleteStackResult
deleteStack name =
    AWS.Http.unsignedRequest
        "DeleteStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteStackResultDecoder
        |> AWS.UnsignedRequest



{-| <p>If fleet names are provided, this operation describes the specified fleets; otherwise, all the fleets in the account are described.</p>

__Required Parameters__



-}
describeFleets :
    (DescribeFleetsOptions -> DescribeFleetsOptions)
    -> AWS.Request DescribeFleetsResult
describeFleets setOptions =
  let
    options = setOptions (DescribeFleetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFleets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFleetsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeFleets request
-}
type alias DescribeFleetsOptions =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }



{-| <p>Describes the images. If a list of names is not provided, all images in your account are returned. This operation does not return a paginated result.</p>

__Required Parameters__



-}
describeImages :
    (DescribeImagesOptions -> DescribeImagesOptions)
    -> AWS.Request DescribeImagesResult
describeImages setOptions =
  let
    options = setOptions (DescribeImagesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeImages"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeImagesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeImages request
-}
type alias DescribeImagesOptions =
    { names : Maybe (List String)
    }



{-| <p>Describes the streaming sessions for a stack and a fleet. If a user ID is provided, this operation returns streaming sessions for only that user. Pass this value for the <code>nextToken</code> parameter in a subsequent call to this operation to retrieve the next set of items.</p>

__Required Parameters__

* `stackName` __:__ `String`
* `fleetName` __:__ `String`


-}
describeSessions :
    String
    -> String
    -> (DescribeSessionsOptions -> DescribeSessionsOptions)
    -> AWS.Request DescribeSessionsResult
describeSessions stackName fleetName setOptions =
  let
    options = setOptions (DescribeSessionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSessions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSessionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSessions request
-}
type alias DescribeSessionsOptions =
    { userId : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>If stack names are not provided, this operation describes the specified stacks; otherwise, all stacks in the account are described. Pass the <code>nextToken</code> value in a subsequent call to this operation to retrieve the next set of items.</p>

__Required Parameters__



-}
describeStacks :
    (DescribeStacksOptions -> DescribeStacksOptions)
    -> AWS.Request DescribeStacksResult
describeStacks setOptions =
  let
    options = setOptions (DescribeStacksOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeStacks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStacksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeStacks request
-}
type alias DescribeStacksOptions =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }



{-| <p>Disassociates a fleet from a stack.</p>

__Required Parameters__

* `fleetName` __:__ `String`
* `stackName` __:__ `String`


-}
disassociateFleet :
    String
    -> String
    -> AWS.Request DisassociateFleetResult
disassociateFleet fleetName stackName =
    AWS.Http.unsignedRequest
        "DisassociateFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateFleetResultDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation immediately stops a streaming session.</p>

__Required Parameters__

* `sessionId` __:__ `String`


-}
expireSession :
    String
    -> AWS.Request ExpireSessionResult
expireSession sessionId =
    AWS.Http.unsignedRequest
        "ExpireSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        expireSessionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists all fleets associated with the stack.</p>

__Required Parameters__

* `stackName` __:__ `String`


-}
listAssociatedFleets :
    String
    -> (ListAssociatedFleetsOptions -> ListAssociatedFleetsOptions)
    -> AWS.Request ListAssociatedFleetsResult
listAssociatedFleets stackName setOptions =
  let
    options = setOptions (ListAssociatedFleetsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAssociatedFleets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAssociatedFleetsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAssociatedFleets request
-}
type alias ListAssociatedFleetsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists all stacks to which the specified fleet is associated.</p>

__Required Parameters__

* `fleetName` __:__ `String`


-}
listAssociatedStacks :
    String
    -> (ListAssociatedStacksOptions -> ListAssociatedStacksOptions)
    -> AWS.Request ListAssociatedStacksResult
listAssociatedStacks fleetName setOptions =
  let
    options = setOptions (ListAssociatedStacksOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAssociatedStacks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAssociatedStacksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAssociatedStacks request
-}
type alias ListAssociatedStacksOptions =
    { nextToken : Maybe String
    }



{-| <p>Starts a fleet.</p>

__Required Parameters__

* `name` __:__ `String`


-}
startFleet :
    String
    -> AWS.Request StartFleetResult
startFleet name =
    AWS.Http.unsignedRequest
        "StartFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startFleetResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Stops a fleet.</p>

__Required Parameters__

* `name` __:__ `String`


-}
stopFleet :
    String
    -> AWS.Request StopFleetResult
stopFleet name =
    AWS.Http.unsignedRequest
        "StopFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopFleetResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates an existing fleet. All the attributes except the fleet name can be updated in the <b>STOPPED</b> state. Only <b>ComputeCapacity</b> and <b>ImageName</b> can be updated in any other state. </p>

__Required Parameters__

* `name` __:__ `String`


-}
updateFleet :
    String
    -> (UpdateFleetOptions -> UpdateFleetOptions)
    -> AWS.Request UpdateFleetResult
updateFleet name setOptions =
  let
    options = setOptions (UpdateFleetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateFleetResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateFleet request
-}
type alias UpdateFleetOptions =
    { imageName : Maybe String
    , instanceType : Maybe String
    , computeCapacity : Maybe ComputeCapacity
    , vpcConfig : Maybe VpcConfig
    , maxUserDurationInSeconds : Maybe Int
    , disconnectTimeoutInSeconds : Maybe Int
    , deleteVpcConfig : Maybe Bool
    , description : Maybe String
    , displayName : Maybe String
    }



{-| <p>Updates the specified fields in the stack with the specified name.</p>

__Required Parameters__

* `name` __:__ `String`


-}
updateStack :
    String
    -> (UpdateStackOptions -> UpdateStackOptions)
    -> AWS.Request UpdateStackResult
updateStack name setOptions =
  let
    options = setOptions (UpdateStackOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateStackResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateStack request
-}
type alias UpdateStackOptions =
    { displayName : Maybe String
    , description : Maybe String
    }




{-| <p>An entry for a single application in the application catalog.</p>
-}
type alias Application =
    { name : Maybe String
    , displayName : Maybe String
    , iconURL : Maybe String
    , launchPath : Maybe String
    , launchParameters : Maybe String
    , enabled : Maybe Bool
    , metadata : Maybe (Dict String String)
    }



applicationDecoder : JD.Decoder Application
applicationDecoder =
    JDP.decode Application
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "iconURL" (JD.nullable JD.string) Nothing
        |> JDP.optional "launchPath" (JD.nullable JD.string) Nothing
        |> JDP.optional "launchParameters" (JD.nullable JD.string) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "metadata" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from associateFle
-}
type alias AssociateFleetResult =
    { 
    }



associateFleetResultDecoder : JD.Decoder AssociateFleetResult
associateFleetResultDecoder =
    JDP.decode AssociateFleetResult



{-| <p>The capacity configuration for the fleet.</p>
-}
type alias ComputeCapacity =
    { desiredInstances : Int
    }



computeCapacityDecoder : JD.Decoder ComputeCapacity
computeCapacityDecoder =
    JDP.decode ComputeCapacity
        |> JDP.required "desiredInstances" JD.int




{-| <p>The capacity information for the fleet.</p>
-}
type alias ComputeCapacityStatus =
    { desired : Int
    , running : Maybe Int
    , inUse : Maybe Int
    , available : Maybe Int
    }



computeCapacityStatusDecoder : JD.Decoder ComputeCapacityStatus
computeCapacityStatusDecoder =
    JDP.decode ComputeCapacityStatus
        |> JDP.required "desired" JD.int
        |> JDP.optional "running" (JD.nullable JD.int) Nothing
        |> JDP.optional "inUse" (JD.nullable JD.int) Nothing
        |> JDP.optional "available" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from createFle
-}
type alias CreateFleetResult =
    { fleet : Maybe Fleet
    }



createFleetResultDecoder : JD.Decoder CreateFleetResult
createFleetResultDecoder =
    JDP.decode CreateFleetResult
        |> JDP.optional "fleet" (JD.nullable fleetDecoder) Nothing




{-| Type of HTTP response from createSta
-}
type alias CreateStackResult =
    { stack : Maybe Stack
    }



createStackResultDecoder : JD.Decoder CreateStackResult
createStackResultDecoder =
    JDP.decode CreateStackResult
        |> JDP.optional "stack" (JD.nullable stackDecoder) Nothing




{-| Type of HTTP response from createStreamingU
-}
type alias CreateStreamingURLResult =
    { streamingURL : Maybe String
    , expires : Maybe Date
    }



createStreamingURLResultDecoder : JD.Decoder CreateStreamingURLResult
createStreamingURLResultDecoder =
    JDP.decode CreateStreamingURLResult
        |> JDP.optional "streamingURL" (JD.nullable JD.string) Nothing
        |> JDP.optional "expires" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from deleteFle
-}
type alias DeleteFleetResult =
    { 
    }



deleteFleetResultDecoder : JD.Decoder DeleteFleetResult
deleteFleetResultDecoder =
    JDP.decode DeleteFleetResult



{-| Type of HTTP response from deleteSta
-}
type alias DeleteStackResult =
    { 
    }



deleteStackResultDecoder : JD.Decoder DeleteStackResult
deleteStackResultDecoder =
    JDP.decode DeleteStackResult



{-| Type of HTTP response from describeFlee
-}
type alias DescribeFleetsResult =
    { fleets : Maybe (List Fleet)
    , nextToken : Maybe String
    }



describeFleetsResultDecoder : JD.Decoder DescribeFleetsResult
describeFleetsResultDecoder =
    JDP.decode DescribeFleetsResult
        |> JDP.optional "fleets" (JD.nullable (JD.list fleetDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeImag
-}
type alias DescribeImagesResult =
    { images : Maybe (List Image)
    }



describeImagesResultDecoder : JD.Decoder DescribeImagesResult
describeImagesResultDecoder =
    JDP.decode DescribeImagesResult
        |> JDP.optional "images" (JD.nullable (JD.list imageDecoder)) Nothing




{-| Type of HTTP response from describeSessio
-}
type alias DescribeSessionsResult =
    { sessions : Maybe (List Session)
    , nextToken : Maybe String
    }



describeSessionsResultDecoder : JD.Decoder DescribeSessionsResult
describeSessionsResultDecoder =
    JDP.decode DescribeSessionsResult
        |> JDP.optional "sessions" (JD.nullable (JD.list sessionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeStac
-}
type alias DescribeStacksResult =
    { stacks : Maybe (List Stack)
    , nextToken : Maybe String
    }



describeStacksResultDecoder : JD.Decoder DescribeStacksResult
describeStacksResultDecoder =
    JDP.decode DescribeStacksResult
        |> JDP.optional "stacks" (JD.nullable (JD.list stackDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from disassociateFle
-}
type alias DisassociateFleetResult =
    { 
    }



disassociateFleetResultDecoder : JD.Decoder DisassociateFleetResult
disassociateFleetResultDecoder =
    JDP.decode DisassociateFleetResult



{-| Type of HTTP response from expireSessi
-}
type alias ExpireSessionResult =
    { 
    }



expireSessionResultDecoder : JD.Decoder ExpireSessionResult
expireSessionResultDecoder =
    JDP.decode ExpireSessionResult



{-| <p>Contains the parameters for a fleet.</p>
-}
type alias Fleet =
    { arn : String
    , name : String
    , displayName : Maybe String
    , description : Maybe String
    , imageName : String
    , instanceType : String
    , computeCapacityStatus : ComputeCapacityStatus
    , maxUserDurationInSeconds : Maybe Int
    , disconnectTimeoutInSeconds : Maybe Int
    , state : FleetState
    , vpcConfig : Maybe VpcConfig
    , createdTime : Maybe Date
    , fleetErrors : Maybe (List FleetError)
    }



fleetDecoder : JD.Decoder Fleet
fleetDecoder =
    JDP.decode Fleet
        |> JDP.required "arn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.required "imageName" JD.string
        |> JDP.required "instanceType" JD.string
        |> JDP.required "computeCapacityStatus" computeCapacityStatusDecoder
        |> JDP.optional "maxUserDurationInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "disconnectTimeoutInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.required "state" fleetStateDecoder
        |> JDP.optional "vpcConfig" (JD.nullable vpcConfigDecoder) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "fleetErrors" (JD.nullable (JD.list fleetErrorDecoder)) Nothing




{-| <p>The details of the fleet error.</p>
-}
type alias FleetError =
    { errorCode : Maybe FleetErrorCode
    , errorMessage : Maybe String
    }



fleetErrorDecoder : JD.Decoder FleetError
fleetErrorDecoder =
    JDP.decode FleetError
        |> JDP.optional "errorCode" (JD.nullable fleetErrorCodeDecoder) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| One of

* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION`
* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION`
* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION`
* `FleetErrorCode_NETWORK_INTERFACE_LIMIT_EXCEEDED`
* `FleetErrorCode_INTERNAL_SERVICE_ERROR`
* `FleetErrorCode_IAM_SERVICE_ROLE_IS_MISSING`
* `FleetErrorCode_SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES`
* `FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION`
* `FleetErrorCode_SUBNET_NOT_FOUND`
* `FleetErrorCode_IMAGE_NOT_FOUND`
* `FleetErrorCode_INVALID_SUBNET_CONFIGURATION`

-}
type FleetErrorCode
    = FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION
    | FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION
    | FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION
    | FleetErrorCode_NETWORK_INTERFACE_LIMIT_EXCEEDED
    | FleetErrorCode_INTERNAL_SERVICE_ERROR
    | FleetErrorCode_IAM_SERVICE_ROLE_IS_MISSING
    | FleetErrorCode_SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES
    | FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION
    | FleetErrorCode_SUBNET_NOT_FOUND
    | FleetErrorCode_IMAGE_NOT_FOUND
    | FleetErrorCode_INVALID_SUBNET_CONFIGURATION



fleetErrorCodeDecoder : JD.Decoder FleetErrorCode
fleetErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION

                    "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION

                    "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION

                    "NETWORK_INTERFACE_LIMIT_EXCEEDED" ->
                        JD.succeed FleetErrorCode_NETWORK_INTERFACE_LIMIT_EXCEEDED

                    "INTERNAL_SERVICE_ERROR" ->
                        JD.succeed FleetErrorCode_INTERNAL_SERVICE_ERROR

                    "IAM_SERVICE_ROLE_IS_MISSING" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_IS_MISSING

                    "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES" ->
                        JD.succeed FleetErrorCode_SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES

                    "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION" ->
                        JD.succeed FleetErrorCode_IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION

                    "SUBNET_NOT_FOUND" ->
                        JD.succeed FleetErrorCode_SUBNET_NOT_FOUND

                    "IMAGE_NOT_FOUND" ->
                        JD.succeed FleetErrorCode_IMAGE_NOT_FOUND

                    "INVALID_SUBNET_CONFIGURATION" ->
                        JD.succeed FleetErrorCode_INVALID_SUBNET_CONFIGURATION


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `FleetState_STARTING`
* `FleetState_RUNNING`
* `FleetState_STOPPING`
* `FleetState_STOPPED`

-}
type FleetState
    = FleetState_STARTING
    | FleetState_RUNNING
    | FleetState_STOPPING
    | FleetState_STOPPED



fleetStateDecoder : JD.Decoder FleetState
fleetStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STARTING" ->
                        JD.succeed FleetState_STARTING

                    "RUNNING" ->
                        JD.succeed FleetState_RUNNING

                    "STOPPING" ->
                        JD.succeed FleetState_STOPPING

                    "STOPPED" ->
                        JD.succeed FleetState_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>New streaming instances are booted from images. The image stores the application catalog and is connected to fleets.</p>
-}
type alias Image =
    { name : String
    , arn : Maybe String
    , baseImageArn : Maybe String
    , displayName : Maybe String
    , state : Maybe ImageState
    , visibility : Maybe VisibilityType
    , platform : Maybe PlatformType
    , description : Maybe String
    , stateChangeReason : Maybe ImageStateChangeReason
    , applications : Maybe (List Application)
    , createdTime : Maybe Date
    }



imageDecoder : JD.Decoder Image
imageDecoder =
    JDP.decode Image
        |> JDP.required "name" JD.string
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "baseImageArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable imageStateDecoder) Nothing
        |> JDP.optional "visibility" (JD.nullable visibilityTypeDecoder) Nothing
        |> JDP.optional "platform" (JD.nullable platformTypeDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "stateChangeReason" (JD.nullable imageStateChangeReasonDecoder) Nothing
        |> JDP.optional "applications" (JD.nullable (JD.list applicationDecoder)) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing




{-| One of

* `ImageState_PENDING`
* `ImageState_AVAILABLE`
* `ImageState_FAILED`
* `ImageState_DELETING`

-}
type ImageState
    = ImageState_PENDING
    | ImageState_AVAILABLE
    | ImageState_FAILED
    | ImageState_DELETING



imageStateDecoder : JD.Decoder ImageState
imageStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ImageState_PENDING

                    "AVAILABLE" ->
                        JD.succeed ImageState_AVAILABLE

                    "FAILED" ->
                        JD.succeed ImageState_FAILED

                    "DELETING" ->
                        JD.succeed ImageState_DELETING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The reason why the last state change occurred.</p>
-}
type alias ImageStateChangeReason =
    { code : Maybe ImageStateChangeReasonCode
    , message : Maybe String
    }



imageStateChangeReasonDecoder : JD.Decoder ImageStateChangeReason
imageStateChangeReasonDecoder =
    JDP.decode ImageStateChangeReason
        |> JDP.optional "code" (JD.nullable imageStateChangeReasonCodeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ImageStateChangeReasonCode_INTERNAL_ERROR`
* `ImageStateChangeReasonCode_IMAGE_BUILDER_NOT_AVAILABLE`

-}
type ImageStateChangeReasonCode
    = ImageStateChangeReasonCode_INTERNAL_ERROR
    | ImageStateChangeReasonCode_IMAGE_BUILDER_NOT_AVAILABLE



imageStateChangeReasonCodeDecoder : JD.Decoder ImageStateChangeReasonCode
imageStateChangeReasonCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INTERNAL_ERROR" ->
                        JD.succeed ImageStateChangeReasonCode_INTERNAL_ERROR

                    "IMAGE_BUILDER_NOT_AVAILABLE" ->
                        JD.succeed ImageStateChangeReasonCode_IMAGE_BUILDER_NOT_AVAILABLE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified role is invalid.</p>
-}
type alias InvalidRoleException =
    { message : Maybe String
    }



invalidRoleExceptionDecoder : JD.Decoder InvalidRoleException
invalidRoleExceptionDecoder =
    JDP.decode InvalidRoleException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The requested limit exceeds the permitted limit for an account.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAssociatedFlee
-}
type alias ListAssociatedFleetsResult =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }



listAssociatedFleetsResultDecoder : JD.Decoder ListAssociatedFleetsResult
listAssociatedFleetsResultDecoder =
    JDP.decode ListAssociatedFleetsResult
        |> JDP.optional "names" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAssociatedStac
-}
type alias ListAssociatedStacksResult =
    { names : Maybe (List String)
    , nextToken : Maybe String
    }



listAssociatedStacksResultDecoder : JD.Decoder ListAssociatedStacksResult
listAssociatedStacksResultDecoder =
    JDP.decode ListAssociatedStacksResult
        |> JDP.optional "names" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The attempted operation is not permitted.</p>
-}
type alias OperationNotPermittedException =
    { message : Maybe String
    }



operationNotPermittedExceptionDecoder : JD.Decoder OperationNotPermittedException
operationNotPermittedExceptionDecoder =
    JDP.decode OperationNotPermittedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `PlatformType_WINDOWS`

-}
type PlatformType
    = PlatformType_WINDOWS



platformTypeDecoder : JD.Decoder PlatformType
platformTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WINDOWS" ->
                        JD.succeed PlatformType_WINDOWS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified resource already exists.</p>
-}
type alias ResourceAlreadyExistsException =
    { message : Maybe String
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified resource is in use.</p>
-}
type alias ResourceInUseException =
    { message : Maybe String
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified resource exists and is not in use, but isn't available.</p>
-}
type alias ResourceNotAvailableException =
    { message : Maybe String
    }



resourceNotAvailableExceptionDecoder : JD.Decoder ResourceNotAvailableException
resourceNotAvailableExceptionDecoder =
    JDP.decode ResourceNotAvailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified resource was not found.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains the parameters for a streaming session.</p>
-}
type alias Session =
    { id : String
    , userId : String
    , stackName : String
    , fleetName : String
    , state : SessionState
    }



sessionDecoder : JD.Decoder Session
sessionDecoder =
    JDP.decode Session
        |> JDP.required "id" JD.string
        |> JDP.required "userId" JD.string
        |> JDP.required "stackName" JD.string
        |> JDP.required "fleetName" JD.string
        |> JDP.required "state" sessionStateDecoder




{-| One of

* `SessionState_ACTIVE`
* `SessionState_PENDING`
* `SessionState_EXPIRED`

-}
type SessionState
    = SessionState_ACTIVE
    | SessionState_PENDING
    | SessionState_EXPIRED



sessionStateDecoder : JD.Decoder SessionState
sessionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed SessionState_ACTIVE

                    "PENDING" ->
                        JD.succeed SessionState_PENDING

                    "EXPIRED" ->
                        JD.succeed SessionState_EXPIRED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Details about a stack.</p>
-}
type alias Stack =
    { arn : Maybe String
    , name : String
    , description : Maybe String
    , displayName : Maybe String
    , createdTime : Maybe Date
    }



stackDecoder : JD.Decoder Stack
stackDecoder =
    JDP.decode Stack
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.required "name" JD.string
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from startFle
-}
type alias StartFleetResult =
    { 
    }



startFleetResultDecoder : JD.Decoder StartFleetResult
startFleetResultDecoder =
    JDP.decode StartFleetResult



{-| Type of HTTP response from stopFle
-}
type alias StopFleetResult =
    { 
    }



stopFleetResultDecoder : JD.Decoder StopFleetResult
stopFleetResultDecoder =
    JDP.decode StopFleetResult



{-| Type of HTTP response from updateFle
-}
type alias UpdateFleetResult =
    { fleet : Maybe Fleet
    }



updateFleetResultDecoder : JD.Decoder UpdateFleetResult
updateFleetResultDecoder =
    JDP.decode UpdateFleetResult
        |> JDP.optional "fleet" (JD.nullable fleetDecoder) Nothing




{-| Type of HTTP response from updateSta
-}
type alias UpdateStackResult =
    { stack : Maybe Stack
    }



updateStackResultDecoder : JD.Decoder UpdateStackResult
updateStackResultDecoder =
    JDP.decode UpdateStackResult
        |> JDP.optional "stack" (JD.nullable stackDecoder) Nothing




{-| One of

* `VisibilityType_PUBLIC`
* `VisibilityType_PRIVATE`

-}
type VisibilityType
    = VisibilityType_PUBLIC
    | VisibilityType_PRIVATE



visibilityTypeDecoder : JD.Decoder VisibilityType
visibilityTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PUBLIC" ->
                        JD.succeed VisibilityType_PUBLIC

                    "PRIVATE" ->
                        JD.succeed VisibilityType_PRIVATE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The VPC in which the fleet is launched.</p>
-}
type alias VpcConfig =
    { subnetIds : (List String)
    }



vpcConfigDecoder : JD.Decoder VpcConfig
vpcConfigDecoder =
    JDP.decode VpcConfig
        |> JDP.required "subnetIds" (JD.list JD.string)




