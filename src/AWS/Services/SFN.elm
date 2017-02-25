module AWS.Services.SFN
    exposing
        ( config
        , createActivity
        , createStateMachine
        , deleteActivity
        , deleteStateMachine
        , describeActivity
        , describeExecution
        , describeStateMachine
        , getActivityTask
        , GetActivityTaskOptions
        , getExecutionHistory
        , GetExecutionHistoryOptions
        , listActivities
        , ListActivitiesOptions
        , listExecutions
        , ListExecutionsOptions
        , listStateMachines
        , ListStateMachinesOptions
        , sendTaskFailure
        , SendTaskFailureOptions
        , sendTaskHeartbeat
        , sendTaskSuccess
        , startExecution
        , StartExecutionOptions
        , stopExecution
        , StopExecutionOptions
        , ActivityDoesNotExist
        , ActivityFailedEventDetails
        , ActivityLimitExceeded
        , ActivityListItem
        , ActivityScheduleFailedEventDetails
        , ActivityScheduledEventDetails
        , ActivityStartedEventDetails
        , ActivitySucceededEventDetails
        , ActivityTimedOutEventDetails
        , ActivityWorkerLimitExceeded
        , CreateActivityOutput
        , CreateStateMachineOutput
        , DeleteActivityOutput
        , DeleteStateMachineOutput
        , DescribeActivityOutput
        , DescribeExecutionOutput
        , DescribeStateMachineOutput
        , ExecutionAbortedEventDetails
        , ExecutionAlreadyExists
        , ExecutionDoesNotExist
        , ExecutionFailedEventDetails
        , ExecutionLimitExceeded
        , ExecutionListItem
        , ExecutionStartedEventDetails
        , ExecutionStatus(..)
        , ExecutionSucceededEventDetails
        , ExecutionTimedOutEventDetails
        , GetActivityTaskOutput
        , GetExecutionHistoryOutput
        , HistoryEvent
        , HistoryEventType(..)
        , InvalidArn
        , InvalidDefinition
        , InvalidExecutionInput
        , InvalidName
        , InvalidOutput
        , InvalidToken
        , LambdaFunctionFailedEventDetails
        , LambdaFunctionScheduleFailedEventDetails
        , LambdaFunctionScheduledEventDetails
        , LambdaFunctionStartFailedEventDetails
        , LambdaFunctionSucceededEventDetails
        , LambdaFunctionTimedOutEventDetails
        , ListActivitiesOutput
        , ListExecutionsOutput
        , ListStateMachinesOutput
        , SendTaskFailureOutput
        , SendTaskHeartbeatOutput
        , SendTaskSuccessOutput
        , StartExecutionOutput
        , StateEnteredEventDetails
        , StateExitedEventDetails
        , StateMachineAlreadyExists
        , StateMachineDeleting
        , StateMachineDoesNotExist
        , StateMachineLimitExceeded
        , StateMachineListItem
        , StateMachineStatus(..)
        , StopExecutionOutput
        , TaskDoesNotExist
        , TaskTimedOut
        )

{-| <fullname>AWS Step Functions</fullname> <p>AWS Step Functions is a web service that enables you to coordinate the components of distributed applications and microservices using visual workflows. You build applications from individual components that each perform a discrete function, or <i>task</i>, allowing you to scale and change applications quickly. Step Functions provides a graphical console to visualize the components of your application as a series of steps. It automatically triggers and tracks each step, and retries when there are errors, so your application executes in order and as expected, every time. Step Functions logs the state of each step, so when things do go wrong, you can diagnose and debug problems quickly.</p> <p>Step Functions manages the operations and underlying infrastructure for you to ensure your application is available at any scale. You can run tasks on the AWS cloud, on your own servers, or an any system that has access to AWS. Step Functions can be accessed and used with the Step Functions console, the AWS SDKs (included with your Beta release invitation email), or an HTTP API (the subject of this document).</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createActivity](#createActivity)
* [createStateMachine](#createStateMachine)
* [deleteActivity](#deleteActivity)
* [deleteStateMachine](#deleteStateMachine)
* [describeActivity](#describeActivity)
* [describeExecution](#describeExecution)
* [describeStateMachine](#describeStateMachine)
* [getActivityTask](#getActivityTask)
* [GetActivityTaskOptions](#GetActivityTaskOptions)
* [getExecutionHistory](#getExecutionHistory)
* [GetExecutionHistoryOptions](#GetExecutionHistoryOptions)
* [listActivities](#listActivities)
* [ListActivitiesOptions](#ListActivitiesOptions)
* [listExecutions](#listExecutions)
* [ListExecutionsOptions](#ListExecutionsOptions)
* [listStateMachines](#listStateMachines)
* [ListStateMachinesOptions](#ListStateMachinesOptions)
* [sendTaskFailure](#sendTaskFailure)
* [SendTaskFailureOptions](#SendTaskFailureOptions)
* [sendTaskHeartbeat](#sendTaskHeartbeat)
* [sendTaskSuccess](#sendTaskSuccess)
* [startExecution](#startExecution)
* [StartExecutionOptions](#StartExecutionOptions)
* [stopExecution](#stopExecution)
* [StopExecutionOptions](#StopExecutionOptions)


@docs createActivity,createStateMachine,deleteActivity,deleteStateMachine,describeActivity,describeExecution,describeStateMachine,getActivityTask,GetActivityTaskOptions,getExecutionHistory,GetExecutionHistoryOptions,listActivities,ListActivitiesOptions,listExecutions,ListExecutionsOptions,listStateMachines,ListStateMachinesOptions,sendTaskFailure,SendTaskFailureOptions,sendTaskHeartbeat,sendTaskSuccess,startExecution,StartExecutionOptions,stopExecution,StopExecutionOptions

## Responses

* [CreateActivityOutput](#CreateActivityOutput)
* [CreateStateMachineOutput](#CreateStateMachineOutput)
* [DeleteActivityOutput](#DeleteActivityOutput)
* [DeleteStateMachineOutput](#DeleteStateMachineOutput)
* [DescribeActivityOutput](#DescribeActivityOutput)
* [DescribeExecutionOutput](#DescribeExecutionOutput)
* [DescribeStateMachineOutput](#DescribeStateMachineOutput)
* [GetActivityTaskOutput](#GetActivityTaskOutput)
* [GetExecutionHistoryOutput](#GetExecutionHistoryOutput)
* [ListActivitiesOutput](#ListActivitiesOutput)
* [ListExecutionsOutput](#ListExecutionsOutput)
* [ListStateMachinesOutput](#ListStateMachinesOutput)
* [SendTaskFailureOutput](#SendTaskFailureOutput)
* [SendTaskHeartbeatOutput](#SendTaskHeartbeatOutput)
* [SendTaskSuccessOutput](#SendTaskSuccessOutput)
* [StartExecutionOutput](#StartExecutionOutput)
* [StopExecutionOutput](#StopExecutionOutput)


@docs CreateActivityOutput,CreateStateMachineOutput,DeleteActivityOutput,DeleteStateMachineOutput,DescribeActivityOutput,DescribeExecutionOutput,DescribeStateMachineOutput,GetActivityTaskOutput,GetExecutionHistoryOutput,ListActivitiesOutput,ListExecutionsOutput,ListStateMachinesOutput,SendTaskFailureOutput,SendTaskHeartbeatOutput,SendTaskSuccessOutput,StartExecutionOutput,StopExecutionOutput

## Records

* [ActivityFailedEventDetails](#ActivityFailedEventDetails)
* [ActivityListItem](#ActivityListItem)
* [ActivityScheduleFailedEventDetails](#ActivityScheduleFailedEventDetails)
* [ActivityScheduledEventDetails](#ActivityScheduledEventDetails)
* [ActivityStartedEventDetails](#ActivityStartedEventDetails)
* [ActivitySucceededEventDetails](#ActivitySucceededEventDetails)
* [ActivityTimedOutEventDetails](#ActivityTimedOutEventDetails)
* [ExecutionAbortedEventDetails](#ExecutionAbortedEventDetails)
* [ExecutionFailedEventDetails](#ExecutionFailedEventDetails)
* [ExecutionListItem](#ExecutionListItem)
* [ExecutionStartedEventDetails](#ExecutionStartedEventDetails)
* [ExecutionSucceededEventDetails](#ExecutionSucceededEventDetails)
* [ExecutionTimedOutEventDetails](#ExecutionTimedOutEventDetails)
* [HistoryEvent](#HistoryEvent)
* [LambdaFunctionFailedEventDetails](#LambdaFunctionFailedEventDetails)
* [LambdaFunctionScheduleFailedEventDetails](#LambdaFunctionScheduleFailedEventDetails)
* [LambdaFunctionScheduledEventDetails](#LambdaFunctionScheduledEventDetails)
* [LambdaFunctionStartFailedEventDetails](#LambdaFunctionStartFailedEventDetails)
* [LambdaFunctionSucceededEventDetails](#LambdaFunctionSucceededEventDetails)
* [LambdaFunctionTimedOutEventDetails](#LambdaFunctionTimedOutEventDetails)
* [StateEnteredEventDetails](#StateEnteredEventDetails)
* [StateExitedEventDetails](#StateExitedEventDetails)
* [StateMachineListItem](#StateMachineListItem)


@docs ActivityFailedEventDetails,ActivityListItem,ActivityScheduleFailedEventDetails,ActivityScheduledEventDetails,ActivityStartedEventDetails,ActivitySucceededEventDetails,ActivityTimedOutEventDetails,ExecutionAbortedEventDetails,ExecutionFailedEventDetails,ExecutionListItem,ExecutionStartedEventDetails,ExecutionSucceededEventDetails,ExecutionTimedOutEventDetails,HistoryEvent,LambdaFunctionFailedEventDetails,LambdaFunctionScheduleFailedEventDetails,LambdaFunctionScheduledEventDetails,LambdaFunctionStartFailedEventDetails,LambdaFunctionSucceededEventDetails,LambdaFunctionTimedOutEventDetails,StateEnteredEventDetails,StateExitedEventDetails,StateMachineListItem

## Unions

* [ExecutionStatus](#ExecutionStatus)
* [HistoryEventType](#HistoryEventType)
* [StateMachineStatus](#StateMachineStatus)


@docs ExecutionStatus,HistoryEventType,StateMachineStatus

## Exceptions

* [ActivityDoesNotExist](#ActivityDoesNotExist)
* [ActivityLimitExceeded](#ActivityLimitExceeded)
* [ActivityWorkerLimitExceeded](#ActivityWorkerLimitExceeded)
* [ExecutionAlreadyExists](#ExecutionAlreadyExists)
* [ExecutionDoesNotExist](#ExecutionDoesNotExist)
* [ExecutionLimitExceeded](#ExecutionLimitExceeded)
* [InvalidArn](#InvalidArn)
* [InvalidDefinition](#InvalidDefinition)
* [InvalidExecutionInput](#InvalidExecutionInput)
* [InvalidName](#InvalidName)
* [InvalidOutput](#InvalidOutput)
* [InvalidToken](#InvalidToken)
* [StateMachineAlreadyExists](#StateMachineAlreadyExists)
* [StateMachineDeleting](#StateMachineDeleting)
* [StateMachineDoesNotExist](#StateMachineDoesNotExist)
* [StateMachineLimitExceeded](#StateMachineLimitExceeded)
* [TaskDoesNotExist](#TaskDoesNotExist)
* [TaskTimedOut](#TaskTimedOut)


@docs ActivityDoesNotExist,ActivityLimitExceeded,ActivityWorkerLimitExceeded,ExecutionAlreadyExists,ExecutionDoesNotExist,ExecutionLimitExceeded,InvalidArn,InvalidDefinition,InvalidExecutionInput,InvalidName,InvalidOutput,InvalidToken,StateMachineAlreadyExists,StateMachineDeleting,StateMachineDoesNotExist,StateMachineLimitExceeded,TaskDoesNotExist,TaskTimedOut

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "states"
        "2016-11-23"
        "1.0"
        "AWSSTATES_20161123."
        "states.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates an activity.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createActivity :
    String
    -> AWS.Request CreateActivityOutput
createActivity name =
    AWS.Http.unsignedRequest
        "CreateActivity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createActivityOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a state machine.</p>

__Required Parameters__

* `name` __:__ `String`
* `definition` __:__ `String`
* `roleArn` __:__ `String`


-}
createStateMachine :
    String
    -> String
    -> String
    -> AWS.Request CreateStateMachineOutput
createStateMachine name definition roleArn =
    AWS.Http.unsignedRequest
        "CreateStateMachine"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createStateMachineOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes an activity.</p>

__Required Parameters__

* `activityArn` __:__ `String`


-}
deleteActivity :
    String
    -> AWS.Request DeleteActivityOutput
deleteActivity activityArn =
    AWS.Http.unsignedRequest
        "DeleteActivity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteActivityOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a state machine. This is an asynchronous operation-- it sets the state machine's status to "DELETING" and begins the delete process.</p>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}
deleteStateMachine :
    String
    -> AWS.Request DeleteStateMachineOutput
deleteStateMachine stateMachineArn =
    AWS.Http.unsignedRequest
        "DeleteStateMachine"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteStateMachineOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes an activity.</p>

__Required Parameters__

* `activityArn` __:__ `String`


-}
describeActivity :
    String
    -> AWS.Request DescribeActivityOutput
describeActivity activityArn =
    AWS.Http.unsignedRequest
        "DescribeActivity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeActivityOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes an execution.</p>

__Required Parameters__

* `executionArn` __:__ `String`


-}
describeExecution :
    String
    -> AWS.Request DescribeExecutionOutput
describeExecution executionArn =
    AWS.Http.unsignedRequest
        "DescribeExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeExecutionOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes a state machine.</p>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}
describeStateMachine :
    String
    -> AWS.Request DescribeStateMachineOutput
describeStateMachine stateMachineArn =
    AWS.Http.unsignedRequest
        "DescribeStateMachine"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStateMachineOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Used by workers to retrieve a task (with the specified activity ARN) scheduled for execution by a running state machine. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available (i.e. an execution of a task of this type is needed.) The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll will return an empty result, that is, the <code>taskToken</code> returned is an empty string.</p> <important> <p>Workers should set their client side socket timeout to at least 65 seconds (5 seconds higher than the maximum time the service may hold the poll request).</p> </important>

__Required Parameters__

* `activityArn` __:__ `String`


-}
getActivityTask :
    String
    -> (GetActivityTaskOptions -> GetActivityTaskOptions)
    -> AWS.Request GetActivityTaskOutput
getActivityTask activityArn setOptions =
  let
    options = setOptions (GetActivityTaskOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetActivityTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getActivityTaskOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getActivityTask request
-}
type alias GetActivityTaskOptions =
    { workerName : Maybe String
    }



{-| <p>Returns the history of the specified execution as a list of events. By default, the results are returned in ascending order of the <code>timeStamp</code> of the events. Use the <code>reverseOrder</code> parameter to get the latest events first. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextToken</code> returned by the previous call.</p>

__Required Parameters__

* `executionArn` __:__ `String`


-}
getExecutionHistory :
    String
    -> (GetExecutionHistoryOptions -> GetExecutionHistoryOptions)
    -> AWS.Request GetExecutionHistoryOutput
getExecutionHistory executionArn setOptions =
  let
    options = setOptions (GetExecutionHistoryOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetExecutionHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getExecutionHistoryOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getExecutionHistory request
-}
type alias GetExecutionHistoryOptions =
    { maxResults : Maybe Int
    , reverseOrder : Maybe Bool
    , nextToken : Maybe String
    }



{-| <p>Lists the existing activities. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextToken</code> returned by the previous call.</p>

__Required Parameters__



-}
listActivities :
    (ListActivitiesOptions -> ListActivitiesOptions)
    -> AWS.Request ListActivitiesOutput
listActivities setOptions =
  let
    options = setOptions (ListActivitiesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListActivities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listActivitiesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listActivities request
-}
type alias ListActivitiesOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the executions of a state machine that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextToken</code> returned by the previous call.</p>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}
listExecutions :
    String
    -> (ListExecutionsOptions -> ListExecutionsOptions)
    -> AWS.Request ListExecutionsOutput
listExecutions stateMachineArn setOptions =
  let
    options = setOptions (ListExecutionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListExecutions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listExecutionsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listExecutions request
-}
type alias ListExecutionsOptions =
    { statusFilter : Maybe ExecutionStatus
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the existing state machines. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextToken</code> returned by the previous call.</p>

__Required Parameters__



-}
listStateMachines :
    (ListStateMachinesOptions -> ListStateMachinesOptions)
    -> AWS.Request ListStateMachinesOutput
listStateMachines setOptions =
  let
    options = setOptions (ListStateMachinesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListStateMachines"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listStateMachinesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listStateMachines request
-}
type alias ListStateMachinesOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Used by workers to report that the task identified by the <code>taskToken</code> failed.</p>

__Required Parameters__

* `taskToken` __:__ `String`


-}
sendTaskFailure :
    String
    -> (SendTaskFailureOptions -> SendTaskFailureOptions)
    -> AWS.Request SendTaskFailureOutput
sendTaskFailure taskToken setOptions =
  let
    options = setOptions (SendTaskFailureOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SendTaskFailure"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendTaskFailureOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a sendTaskFailure request
-}
type alias SendTaskFailureOptions =
    { error : Maybe String
    , cause : Maybe String
    }



{-| <p>Used by workers to report to the service that the task represented by the specified <code>taskToken</code> is still making progress. This action resets the <code>Heartbeat</code> clock. The <code>Heartbeat</code> threshold is specified in the state machine's Amazon States Language definition. This action does not in itself create an event in the execution history. However, if the task times out, the execution history will contain an <code>ActivityTimedOut</code> event.</p> <note> <p>The <code>Timeout</code> of a task, defined in the state machine's Amazon States Language definition, is its maximum allowed duration, regardless of the number of <a>SendTaskHeartbeat</a> requests received.</p> </note> <note> <p>This operation is only useful for long-lived tasks to report the liveliness of the task.</p> </note>

__Required Parameters__

* `taskToken` __:__ `String`


-}
sendTaskHeartbeat :
    String
    -> AWS.Request SendTaskHeartbeatOutput
sendTaskHeartbeat taskToken =
    AWS.Http.unsignedRequest
        "SendTaskHeartbeat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendTaskHeartbeatOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Used by workers to report that the task identified by the <code>taskToken</code> completed successfully.</p>

__Required Parameters__

* `taskToken` __:__ `String`
* `output` __:__ `String`


-}
sendTaskSuccess :
    String
    -> String
    -> AWS.Request SendTaskSuccessOutput
sendTaskSuccess taskToken output =
    AWS.Http.unsignedRequest
        "SendTaskSuccess"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendTaskSuccessOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Starts a state machine execution.</p>

__Required Parameters__

* `stateMachineArn` __:__ `String`


-}
startExecution :
    String
    -> (StartExecutionOptions -> StartExecutionOptions)
    -> AWS.Request StartExecutionOutput
startExecution stateMachineArn setOptions =
  let
    options = setOptions (StartExecutionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StartExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startExecutionOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a startExecution request
-}
type alias StartExecutionOptions =
    { name : Maybe String
    , input : Maybe String
    }



{-| <p>Stops an execution.</p>

__Required Parameters__

* `executionArn` __:__ `String`


-}
stopExecution :
    String
    -> (StopExecutionOptions -> StopExecutionOptions)
    -> AWS.Request StopExecutionOutput
stopExecution executionArn setOptions =
  let
    options = setOptions (StopExecutionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StopExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopExecutionOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a stopExecution request
-}
type alias StopExecutionOptions =
    { error : Maybe String
    , cause : Maybe String
    }




{-| <p>The specified activity does not exist.</p>
-}
type alias ActivityDoesNotExist =
    { message : Maybe String
    }



activityDoesNotExistDecoder : JD.Decoder ActivityDoesNotExist
activityDoesNotExistDecoder =
    JDP.decode ActivityDoesNotExist
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ActivityFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



activityFailedEventDetailsDecoder : JD.Decoder ActivityFailedEventDetails
activityFailedEventDetailsDecoder =
    JDP.decode ActivityFailedEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| <p>The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.</p>
-}
type alias ActivityLimitExceeded =
    { message : Maybe String
    }



activityLimitExceededDecoder : JD.Decoder ActivityLimitExceeded
activityLimitExceededDecoder =
    JDP.decode ActivityLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ActivityListItem =
    { activityArn : String
    , name : String
    , creationDate : Date
    }



activityListItemDecoder : JD.Decoder ActivityListItem
activityListItemDecoder =
    JDP.decode ActivityListItem
        |> JDP.required "activityArn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "creationDate" JDX.date




{-| undefined
-}
type alias ActivityScheduleFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



activityScheduleFailedEventDetailsDecoder : JD.Decoder ActivityScheduleFailedEventDetails
activityScheduleFailedEventDetailsDecoder =
    JDP.decode ActivityScheduleFailedEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ActivityScheduledEventDetails =
    { resource : String
    , input : Maybe String
    , timeoutInSeconds : Maybe Int
    , heartbeatInSeconds : Maybe Int
    }



activityScheduledEventDetailsDecoder : JD.Decoder ActivityScheduledEventDetails
activityScheduledEventDetailsDecoder =
    JDP.decode ActivityScheduledEventDetails
        |> JDP.required "resource" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeoutInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "heartbeatInSeconds" (JD.nullable JD.int) Nothing




{-| undefined
-}
type alias ActivityStartedEventDetails =
    { workerName : Maybe String
    }



activityStartedEventDetailsDecoder : JD.Decoder ActivityStartedEventDetails
activityStartedEventDetailsDecoder =
    JDP.decode ActivityStartedEventDetails
        |> JDP.optional "workerName" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ActivitySucceededEventDetails =
    { output : Maybe String
    }



activitySucceededEventDetailsDecoder : JD.Decoder ActivitySucceededEventDetails
activitySucceededEventDetailsDecoder =
    JDP.decode ActivitySucceededEventDetails
        |> JDP.optional "output" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ActivityTimedOutEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



activityTimedOutEventDetailsDecoder : JD.Decoder ActivityTimedOutEventDetails
activityTimedOutEventDetailsDecoder =
    JDP.decode ActivityTimedOutEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| <p>The maximum number of workers concurrently polling for activity tasks has been reached.</p>
-}
type alias ActivityWorkerLimitExceeded =
    { message : Maybe String
    }



activityWorkerLimitExceededDecoder : JD.Decoder ActivityWorkerLimitExceeded
activityWorkerLimitExceededDecoder =
    JDP.decode ActivityWorkerLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createActivi
-}
type alias CreateActivityOutput =
    { activityArn : String
    , creationDate : Date
    }



createActivityOutputDecoder : JD.Decoder CreateActivityOutput
createActivityOutputDecoder =
    JDP.decode CreateActivityOutput
        |> JDP.required "activityArn" JD.string
        |> JDP.required "creationDate" JDX.date




{-| Type of HTTP response from createStateMachi
-}
type alias CreateStateMachineOutput =
    { stateMachineArn : String
    , creationDate : Date
    }



createStateMachineOutputDecoder : JD.Decoder CreateStateMachineOutput
createStateMachineOutputDecoder =
    JDP.decode CreateStateMachineOutput
        |> JDP.required "stateMachineArn" JD.string
        |> JDP.required "creationDate" JDX.date




{-| Type of HTTP response from deleteActivi
-}
type alias DeleteActivityOutput =
    { 
    }



deleteActivityOutputDecoder : JD.Decoder DeleteActivityOutput
deleteActivityOutputDecoder =
    JDP.decode DeleteActivityOutput



{-| Type of HTTP response from deleteStateMachi
-}
type alias DeleteStateMachineOutput =
    { 
    }



deleteStateMachineOutputDecoder : JD.Decoder DeleteStateMachineOutput
deleteStateMachineOutputDecoder =
    JDP.decode DeleteStateMachineOutput



{-| Type of HTTP response from describeActivi
-}
type alias DescribeActivityOutput =
    { activityArn : String
    , name : String
    , creationDate : Date
    }



describeActivityOutputDecoder : JD.Decoder DescribeActivityOutput
describeActivityOutputDecoder =
    JDP.decode DescribeActivityOutput
        |> JDP.required "activityArn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "creationDate" JDX.date




{-| Type of HTTP response from describeExecuti
-}
type alias DescribeExecutionOutput =
    { executionArn : String
    , stateMachineArn : String
    , name : Maybe String
    , status : ExecutionStatus
    , startDate : Date
    , stopDate : Maybe Date
    , input : String
    , output : Maybe String
    }



describeExecutionOutputDecoder : JD.Decoder DescribeExecutionOutput
describeExecutionOutputDecoder =
    JDP.decode DescribeExecutionOutput
        |> JDP.required "executionArn" JD.string
        |> JDP.required "stateMachineArn" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.required "status" executionStatusDecoder
        |> JDP.required "startDate" JDX.date
        |> JDP.optional "stopDate" (JD.nullable JDX.date) Nothing
        |> JDP.required "input" JD.string
        |> JDP.optional "output" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeStateMachi
-}
type alias DescribeStateMachineOutput =
    { stateMachineArn : String
    , name : String
    , status : Maybe StateMachineStatus
    , definition : String
    , roleArn : String
    , creationDate : Date
    }



describeStateMachineOutputDecoder : JD.Decoder DescribeStateMachineOutput
describeStateMachineOutputDecoder =
    JDP.decode DescribeStateMachineOutput
        |> JDP.required "stateMachineArn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.optional "status" (JD.nullable stateMachineStatusDecoder) Nothing
        |> JDP.required "definition" JD.string
        |> JDP.required "roleArn" JD.string
        |> JDP.required "creationDate" JDX.date




{-| undefined
-}
type alias ExecutionAbortedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



executionAbortedEventDetailsDecoder : JD.Decoder ExecutionAbortedEventDetails
executionAbortedEventDetailsDecoder =
    JDP.decode ExecutionAbortedEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| <p>An execution with the same name already exists.</p>
-}
type alias ExecutionAlreadyExists =
    { message : Maybe String
    }



executionAlreadyExistsDecoder : JD.Decoder ExecutionAlreadyExists
executionAlreadyExistsDecoder =
    JDP.decode ExecutionAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified execution does not exist.</p>
-}
type alias ExecutionDoesNotExist =
    { message : Maybe String
    }



executionDoesNotExistDecoder : JD.Decoder ExecutionDoesNotExist
executionDoesNotExistDecoder =
    JDP.decode ExecutionDoesNotExist
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ExecutionFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



executionFailedEventDetailsDecoder : JD.Decoder ExecutionFailedEventDetails
executionFailedEventDetailsDecoder =
    JDP.decode ExecutionFailedEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| <p>The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.</p>
-}
type alias ExecutionLimitExceeded =
    { message : Maybe String
    }



executionLimitExceededDecoder : JD.Decoder ExecutionLimitExceeded
executionLimitExceededDecoder =
    JDP.decode ExecutionLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ExecutionListItem =
    { executionArn : String
    , stateMachineArn : String
    , name : String
    , status : ExecutionStatus
    , startDate : Date
    , stopDate : Maybe Date
    }



executionListItemDecoder : JD.Decoder ExecutionListItem
executionListItemDecoder =
    JDP.decode ExecutionListItem
        |> JDP.required "executionArn" JD.string
        |> JDP.required "stateMachineArn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "status" executionStatusDecoder
        |> JDP.required "startDate" JDX.date
        |> JDP.optional "stopDate" (JD.nullable JDX.date) Nothing




{-| undefined
-}
type alias ExecutionStartedEventDetails =
    { input : Maybe String
    , roleArn : Maybe String
    }



executionStartedEventDetailsDecoder : JD.Decoder ExecutionStartedEventDetails
executionStartedEventDetailsDecoder =
    JDP.decode ExecutionStartedEventDetails
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing




{-| One of

* `ExecutionStatus_RUNNING`
* `ExecutionStatus_SUCCEEDED`
* `ExecutionStatus_FAILED`
* `ExecutionStatus_TIMED_OUT`
* `ExecutionStatus_ABORTED`

-}
type ExecutionStatus
    = ExecutionStatus_RUNNING
    | ExecutionStatus_SUCCEEDED
    | ExecutionStatus_FAILED
    | ExecutionStatus_TIMED_OUT
    | ExecutionStatus_ABORTED



executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RUNNING" ->
                        JD.succeed ExecutionStatus_RUNNING

                    "SUCCEEDED" ->
                        JD.succeed ExecutionStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed ExecutionStatus_FAILED

                    "TIMED_OUT" ->
                        JD.succeed ExecutionStatus_TIMED_OUT

                    "ABORTED" ->
                        JD.succeed ExecutionStatus_ABORTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias ExecutionSucceededEventDetails =
    { output : Maybe String
    }



executionSucceededEventDetailsDecoder : JD.Decoder ExecutionSucceededEventDetails
executionSucceededEventDetailsDecoder =
    JDP.decode ExecutionSucceededEventDetails
        |> JDP.optional "output" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ExecutionTimedOutEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



executionTimedOutEventDetailsDecoder : JD.Decoder ExecutionTimedOutEventDetails
executionTimedOutEventDetailsDecoder =
    JDP.decode ExecutionTimedOutEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getActivityTa
-}
type alias GetActivityTaskOutput =
    { taskToken : Maybe String
    , input : Maybe String
    }



getActivityTaskOutputDecoder : JD.Decoder GetActivityTaskOutput
getActivityTaskOutputDecoder =
    JDP.decode GetActivityTaskOutput
        |> JDP.optional "taskToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "input" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getExecutionHisto
-}
type alias GetExecutionHistoryOutput =
    { events : (List HistoryEvent)
    , nextToken : Maybe String
    }



getExecutionHistoryOutputDecoder : JD.Decoder GetExecutionHistoryOutput
getExecutionHistoryOutputDecoder =
    JDP.decode GetExecutionHistoryOutput
        |> JDP.required "events" (JD.list historyEventDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias HistoryEvent =
    { timestamp : Date
    , type_ : HistoryEventType
    , id : Int
    , previousEventId : Maybe Int
    , activityFailedEventDetails : Maybe ActivityFailedEventDetails
    , activityScheduleFailedEventDetails : Maybe ActivityScheduleFailedEventDetails
    , activityScheduledEventDetails : Maybe ActivityScheduledEventDetails
    , activityStartedEventDetails : Maybe ActivityStartedEventDetails
    , activitySucceededEventDetails : Maybe ActivitySucceededEventDetails
    , activityTimedOutEventDetails : Maybe ActivityTimedOutEventDetails
    , executionFailedEventDetails : Maybe ExecutionFailedEventDetails
    , executionStartedEventDetails : Maybe ExecutionStartedEventDetails
    , executionSucceededEventDetails : Maybe ExecutionSucceededEventDetails
    , executionAbortedEventDetails : Maybe ExecutionAbortedEventDetails
    , executionTimedOutEventDetails : Maybe ExecutionTimedOutEventDetails
    , lambdaFunctionFailedEventDetails : Maybe LambdaFunctionFailedEventDetails
    , lambdaFunctionScheduleFailedEventDetails : Maybe LambdaFunctionScheduleFailedEventDetails
    , lambdaFunctionScheduledEventDetails : Maybe LambdaFunctionScheduledEventDetails
    , lambdaFunctionStartFailedEventDetails : Maybe LambdaFunctionStartFailedEventDetails
    , lambdaFunctionSucceededEventDetails : Maybe LambdaFunctionSucceededEventDetails
    , lambdaFunctionTimedOutEventDetails : Maybe LambdaFunctionTimedOutEventDetails
    , stateEnteredEventDetails : Maybe StateEnteredEventDetails
    , stateExitedEventDetails : Maybe StateExitedEventDetails
    }



historyEventDecoder : JD.Decoder HistoryEvent
historyEventDecoder =
    JDP.decode HistoryEvent
        |> JDP.required "timestamp" JDX.date
        |> JDP.required "type_" historyEventTypeDecoder
        |> JDP.required "id" JD.int
        |> JDP.optional "previousEventId" (JD.nullable JD.int) Nothing
        |> JDP.optional "activityFailedEventDetails" (JD.nullable activityFailedEventDetailsDecoder) Nothing
        |> JDP.optional "activityScheduleFailedEventDetails" (JD.nullable activityScheduleFailedEventDetailsDecoder) Nothing
        |> JDP.optional "activityScheduledEventDetails" (JD.nullable activityScheduledEventDetailsDecoder) Nothing
        |> JDP.optional "activityStartedEventDetails" (JD.nullable activityStartedEventDetailsDecoder) Nothing
        |> JDP.optional "activitySucceededEventDetails" (JD.nullable activitySucceededEventDetailsDecoder) Nothing
        |> JDP.optional "activityTimedOutEventDetails" (JD.nullable activityTimedOutEventDetailsDecoder) Nothing
        |> JDP.optional "executionFailedEventDetails" (JD.nullable executionFailedEventDetailsDecoder) Nothing
        |> JDP.optional "executionStartedEventDetails" (JD.nullable executionStartedEventDetailsDecoder) Nothing
        |> JDP.optional "executionSucceededEventDetails" (JD.nullable executionSucceededEventDetailsDecoder) Nothing
        |> JDP.optional "executionAbortedEventDetails" (JD.nullable executionAbortedEventDetailsDecoder) Nothing
        |> JDP.optional "executionTimedOutEventDetails" (JD.nullable executionTimedOutEventDetailsDecoder) Nothing
        |> JDP.optional "lambdaFunctionFailedEventDetails" (JD.nullable lambdaFunctionFailedEventDetailsDecoder) Nothing
        |> JDP.optional "lambdaFunctionScheduleFailedEventDetails" (JD.nullable lambdaFunctionScheduleFailedEventDetailsDecoder) Nothing
        |> JDP.optional "lambdaFunctionScheduledEventDetails" (JD.nullable lambdaFunctionScheduledEventDetailsDecoder) Nothing
        |> JDP.optional "lambdaFunctionStartFailedEventDetails" (JD.nullable lambdaFunctionStartFailedEventDetailsDecoder) Nothing
        |> JDP.optional "lambdaFunctionSucceededEventDetails" (JD.nullable lambdaFunctionSucceededEventDetailsDecoder) Nothing
        |> JDP.optional "lambdaFunctionTimedOutEventDetails" (JD.nullable lambdaFunctionTimedOutEventDetailsDecoder) Nothing
        |> JDP.optional "stateEnteredEventDetails" (JD.nullable stateEnteredEventDetailsDecoder) Nothing
        |> JDP.optional "stateExitedEventDetails" (JD.nullable stateExitedEventDetailsDecoder) Nothing




{-| One of

* `HistoryEventType_ActivityFailed`
* `HistoryEventType_ActivityScheduleFailed`
* `HistoryEventType_ActivityScheduled`
* `HistoryEventType_ActivityStarted`
* `HistoryEventType_ActivitySucceeded`
* `HistoryEventType_ActivityTimedOut`
* `HistoryEventType_ChoiceStateEntered`
* `HistoryEventType_ChoiceStateExited`
* `HistoryEventType_ExecutionFailed`
* `HistoryEventType_ExecutionStarted`
* `HistoryEventType_ExecutionSucceeded`
* `HistoryEventType_ExecutionAborted`
* `HistoryEventType_ExecutionTimedOut`
* `HistoryEventType_FailStateEntered`
* `HistoryEventType_LambdaFunctionFailed`
* `HistoryEventType_LambdaFunctionScheduleFailed`
* `HistoryEventType_LambdaFunctionScheduled`
* `HistoryEventType_LambdaFunctionStartFailed`
* `HistoryEventType_LambdaFunctionStarted`
* `HistoryEventType_LambdaFunctionSucceeded`
* `HistoryEventType_LambdaFunctionTimedOut`
* `HistoryEventType_SucceedStateEntered`
* `HistoryEventType_SucceedStateExited`
* `HistoryEventType_TaskStateEntered`
* `HistoryEventType_TaskStateExited`
* `HistoryEventType_PassStateEntered`
* `HistoryEventType_PassStateExited`
* `HistoryEventType_ParallelStateEntered`
* `HistoryEventType_ParallelStateExited`
* `HistoryEventType_WaitStateEntered`
* `HistoryEventType_WaitStateExited`

-}
type HistoryEventType
    = HistoryEventType_ActivityFailed
    | HistoryEventType_ActivityScheduleFailed
    | HistoryEventType_ActivityScheduled
    | HistoryEventType_ActivityStarted
    | HistoryEventType_ActivitySucceeded
    | HistoryEventType_ActivityTimedOut
    | HistoryEventType_ChoiceStateEntered
    | HistoryEventType_ChoiceStateExited
    | HistoryEventType_ExecutionFailed
    | HistoryEventType_ExecutionStarted
    | HistoryEventType_ExecutionSucceeded
    | HistoryEventType_ExecutionAborted
    | HistoryEventType_ExecutionTimedOut
    | HistoryEventType_FailStateEntered
    | HistoryEventType_LambdaFunctionFailed
    | HistoryEventType_LambdaFunctionScheduleFailed
    | HistoryEventType_LambdaFunctionScheduled
    | HistoryEventType_LambdaFunctionStartFailed
    | HistoryEventType_LambdaFunctionStarted
    | HistoryEventType_LambdaFunctionSucceeded
    | HistoryEventType_LambdaFunctionTimedOut
    | HistoryEventType_SucceedStateEntered
    | HistoryEventType_SucceedStateExited
    | HistoryEventType_TaskStateEntered
    | HistoryEventType_TaskStateExited
    | HistoryEventType_PassStateEntered
    | HistoryEventType_PassStateExited
    | HistoryEventType_ParallelStateEntered
    | HistoryEventType_ParallelStateExited
    | HistoryEventType_WaitStateEntered
    | HistoryEventType_WaitStateExited



historyEventTypeDecoder : JD.Decoder HistoryEventType
historyEventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ActivityFailed" ->
                        JD.succeed HistoryEventType_ActivityFailed

                    "ActivityScheduleFailed" ->
                        JD.succeed HistoryEventType_ActivityScheduleFailed

                    "ActivityScheduled" ->
                        JD.succeed HistoryEventType_ActivityScheduled

                    "ActivityStarted" ->
                        JD.succeed HistoryEventType_ActivityStarted

                    "ActivitySucceeded" ->
                        JD.succeed HistoryEventType_ActivitySucceeded

                    "ActivityTimedOut" ->
                        JD.succeed HistoryEventType_ActivityTimedOut

                    "ChoiceStateEntered" ->
                        JD.succeed HistoryEventType_ChoiceStateEntered

                    "ChoiceStateExited" ->
                        JD.succeed HistoryEventType_ChoiceStateExited

                    "ExecutionFailed" ->
                        JD.succeed HistoryEventType_ExecutionFailed

                    "ExecutionStarted" ->
                        JD.succeed HistoryEventType_ExecutionStarted

                    "ExecutionSucceeded" ->
                        JD.succeed HistoryEventType_ExecutionSucceeded

                    "ExecutionAborted" ->
                        JD.succeed HistoryEventType_ExecutionAborted

                    "ExecutionTimedOut" ->
                        JD.succeed HistoryEventType_ExecutionTimedOut

                    "FailStateEntered" ->
                        JD.succeed HistoryEventType_FailStateEntered

                    "LambdaFunctionFailed" ->
                        JD.succeed HistoryEventType_LambdaFunctionFailed

                    "LambdaFunctionScheduleFailed" ->
                        JD.succeed HistoryEventType_LambdaFunctionScheduleFailed

                    "LambdaFunctionScheduled" ->
                        JD.succeed HistoryEventType_LambdaFunctionScheduled

                    "LambdaFunctionStartFailed" ->
                        JD.succeed HistoryEventType_LambdaFunctionStartFailed

                    "LambdaFunctionStarted" ->
                        JD.succeed HistoryEventType_LambdaFunctionStarted

                    "LambdaFunctionSucceeded" ->
                        JD.succeed HistoryEventType_LambdaFunctionSucceeded

                    "LambdaFunctionTimedOut" ->
                        JD.succeed HistoryEventType_LambdaFunctionTimedOut

                    "SucceedStateEntered" ->
                        JD.succeed HistoryEventType_SucceedStateEntered

                    "SucceedStateExited" ->
                        JD.succeed HistoryEventType_SucceedStateExited

                    "TaskStateEntered" ->
                        JD.succeed HistoryEventType_TaskStateEntered

                    "TaskStateExited" ->
                        JD.succeed HistoryEventType_TaskStateExited

                    "PassStateEntered" ->
                        JD.succeed HistoryEventType_PassStateEntered

                    "PassStateExited" ->
                        JD.succeed HistoryEventType_PassStateExited

                    "ParallelStateEntered" ->
                        JD.succeed HistoryEventType_ParallelStateEntered

                    "ParallelStateExited" ->
                        JD.succeed HistoryEventType_ParallelStateExited

                    "WaitStateEntered" ->
                        JD.succeed HistoryEventType_WaitStateEntered

                    "WaitStateExited" ->
                        JD.succeed HistoryEventType_WaitStateExited


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The provided Amazon Resource Name (ARN) is invalid.</p>
-}
type alias InvalidArn =
    { message : Maybe String
    }



invalidArnDecoder : JD.Decoder InvalidArn
invalidArnDecoder =
    JDP.decode InvalidArn
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The provided Amazon States Language definition is invalid.</p>
-}
type alias InvalidDefinition =
    { message : Maybe String
    }



invalidDefinitionDecoder : JD.Decoder InvalidDefinition
invalidDefinitionDecoder =
    JDP.decode InvalidDefinition
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The provided JSON input data is invalid.</p>
-}
type alias InvalidExecutionInput =
    { message : Maybe String
    }



invalidExecutionInputDecoder : JD.Decoder InvalidExecutionInput
invalidExecutionInputDecoder =
    JDP.decode InvalidExecutionInput
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The provided name is invalid.</p>
-}
type alias InvalidName =
    { message : Maybe String
    }



invalidNameDecoder : JD.Decoder InvalidName
invalidNameDecoder =
    JDP.decode InvalidName
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The provided JSON output data is invalid.</p>
-}
type alias InvalidOutput =
    { message : Maybe String
    }



invalidOutputDecoder : JD.Decoder InvalidOutput
invalidOutputDecoder =
    JDP.decode InvalidOutput
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The provided token is invalid.</p>
-}
type alias InvalidToken =
    { message : Maybe String
    }



invalidTokenDecoder : JD.Decoder InvalidToken
invalidTokenDecoder =
    JDP.decode InvalidToken
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias LambdaFunctionFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionFailedEventDetailsDecoder : JD.Decoder LambdaFunctionFailedEventDetails
lambdaFunctionFailedEventDetailsDecoder =
    JDP.decode LambdaFunctionFailedEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias LambdaFunctionScheduleFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionScheduleFailedEventDetailsDecoder : JD.Decoder LambdaFunctionScheduleFailedEventDetails
lambdaFunctionScheduleFailedEventDetailsDecoder =
    JDP.decode LambdaFunctionScheduleFailedEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias LambdaFunctionScheduledEventDetails =
    { resource : String
    , input : Maybe String
    , timeoutInSeconds : Maybe Int
    }



lambdaFunctionScheduledEventDetailsDecoder : JD.Decoder LambdaFunctionScheduledEventDetails
lambdaFunctionScheduledEventDetailsDecoder =
    JDP.decode LambdaFunctionScheduledEventDetails
        |> JDP.required "resource" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeoutInSeconds" (JD.nullable JD.int) Nothing




{-| undefined
-}
type alias LambdaFunctionStartFailedEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionStartFailedEventDetailsDecoder : JD.Decoder LambdaFunctionStartFailedEventDetails
lambdaFunctionStartFailedEventDetailsDecoder =
    JDP.decode LambdaFunctionStartFailedEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias LambdaFunctionSucceededEventDetails =
    { output : Maybe String
    }



lambdaFunctionSucceededEventDetailsDecoder : JD.Decoder LambdaFunctionSucceededEventDetails
lambdaFunctionSucceededEventDetailsDecoder =
    JDP.decode LambdaFunctionSucceededEventDetails
        |> JDP.optional "output" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias LambdaFunctionTimedOutEventDetails =
    { error : Maybe String
    , cause : Maybe String
    }



lambdaFunctionTimedOutEventDetailsDecoder : JD.Decoder LambdaFunctionTimedOutEventDetails
lambdaFunctionTimedOutEventDetailsDecoder =
    JDP.decode LambdaFunctionTimedOutEventDetails
        |> JDP.optional "error" (JD.nullable JD.string) Nothing
        |> JDP.optional "cause" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listActiviti
-}
type alias ListActivitiesOutput =
    { activities : (List ActivityListItem)
    , nextToken : Maybe String
    }



listActivitiesOutputDecoder : JD.Decoder ListActivitiesOutput
listActivitiesOutputDecoder =
    JDP.decode ListActivitiesOutput
        |> JDP.required "activities" (JD.list activityListItemDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listExecutio
-}
type alias ListExecutionsOutput =
    { executions : (List ExecutionListItem)
    , nextToken : Maybe String
    }



listExecutionsOutputDecoder : JD.Decoder ListExecutionsOutput
listExecutionsOutputDecoder =
    JDP.decode ListExecutionsOutput
        |> JDP.required "executions" (JD.list executionListItemDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listStateMachin
-}
type alias ListStateMachinesOutput =
    { stateMachines : (List StateMachineListItem)
    , nextToken : Maybe String
    }



listStateMachinesOutputDecoder : JD.Decoder ListStateMachinesOutput
listStateMachinesOutputDecoder =
    JDP.decode ListStateMachinesOutput
        |> JDP.required "stateMachines" (JD.list stateMachineListItemDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from sendTaskFailu
-}
type alias SendTaskFailureOutput =
    { 
    }



sendTaskFailureOutputDecoder : JD.Decoder SendTaskFailureOutput
sendTaskFailureOutputDecoder =
    JDP.decode SendTaskFailureOutput



{-| Type of HTTP response from sendTaskHeartbe
-}
type alias SendTaskHeartbeatOutput =
    { 
    }



sendTaskHeartbeatOutputDecoder : JD.Decoder SendTaskHeartbeatOutput
sendTaskHeartbeatOutputDecoder =
    JDP.decode SendTaskHeartbeatOutput



{-| Type of HTTP response from sendTaskSucce
-}
type alias SendTaskSuccessOutput =
    { 
    }



sendTaskSuccessOutputDecoder : JD.Decoder SendTaskSuccessOutput
sendTaskSuccessOutputDecoder =
    JDP.decode SendTaskSuccessOutput



{-| Type of HTTP response from startExecuti
-}
type alias StartExecutionOutput =
    { executionArn : String
    , startDate : Date
    }



startExecutionOutputDecoder : JD.Decoder StartExecutionOutput
startExecutionOutputDecoder =
    JDP.decode StartExecutionOutput
        |> JDP.required "executionArn" JD.string
        |> JDP.required "startDate" JDX.date




{-| undefined
-}
type alias StateEnteredEventDetails =
    { name : String
    , input : Maybe String
    }



stateEnteredEventDetailsDecoder : JD.Decoder StateEnteredEventDetails
stateEnteredEventDetailsDecoder =
    JDP.decode StateEnteredEventDetails
        |> JDP.required "name" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias StateExitedEventDetails =
    { name : String
    , output : Maybe String
    }



stateExitedEventDetailsDecoder : JD.Decoder StateExitedEventDetails
stateExitedEventDetailsDecoder =
    JDP.decode StateExitedEventDetails
        |> JDP.required "name" JD.string
        |> JDP.optional "output" (JD.nullable JD.string) Nothing




{-| <p>A state machine with the same name but a different definition or role ARN already exists.</p>
-}
type alias StateMachineAlreadyExists =
    { message : Maybe String
    }



stateMachineAlreadyExistsDecoder : JD.Decoder StateMachineAlreadyExists
stateMachineAlreadyExistsDecoder =
    JDP.decode StateMachineAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified state machine is being deleted.</p>
-}
type alias StateMachineDeleting =
    { message : Maybe String
    }



stateMachineDeletingDecoder : JD.Decoder StateMachineDeleting
stateMachineDeletingDecoder =
    JDP.decode StateMachineDeleting
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified state machine does not exist.</p>
-}
type alias StateMachineDoesNotExist =
    { message : Maybe String
    }



stateMachineDoesNotExistDecoder : JD.Decoder StateMachineDoesNotExist
stateMachineDoesNotExistDecoder =
    JDP.decode StateMachineDoesNotExist
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.</p>
-}
type alias StateMachineLimitExceeded =
    { message : Maybe String
    }



stateMachineLimitExceededDecoder : JD.Decoder StateMachineLimitExceeded
stateMachineLimitExceededDecoder =
    JDP.decode StateMachineLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias StateMachineListItem =
    { stateMachineArn : String
    , name : String
    , creationDate : Date
    }



stateMachineListItemDecoder : JD.Decoder StateMachineListItem
stateMachineListItemDecoder =
    JDP.decode StateMachineListItem
        |> JDP.required "stateMachineArn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "creationDate" JDX.date




{-| One of

* `StateMachineStatus_ACTIVE`
* `StateMachineStatus_DELETING`

-}
type StateMachineStatus
    = StateMachineStatus_ACTIVE
    | StateMachineStatus_DELETING



stateMachineStatusDecoder : JD.Decoder StateMachineStatus
stateMachineStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed StateMachineStatus_ACTIVE

                    "DELETING" ->
                        JD.succeed StateMachineStatus_DELETING


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from stopExecuti
-}
type alias StopExecutionOutput =
    { stopDate : Date
    }



stopExecutionOutputDecoder : JD.Decoder StopExecutionOutput
stopExecutionOutputDecoder =
    JDP.decode StopExecutionOutput
        |> JDP.required "stopDate" JDX.date




{-| undefined
-}
type alias TaskDoesNotExist =
    { message : Maybe String
    }



taskDoesNotExistDecoder : JD.Decoder TaskDoesNotExist
taskDoesNotExistDecoder =
    JDP.decode TaskDoesNotExist
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias TaskTimedOut =
    { message : Maybe String
    }



taskTimedOutDecoder : JD.Decoder TaskTimedOut
taskTimedOutDecoder =
    JDP.decode TaskTimedOut
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




