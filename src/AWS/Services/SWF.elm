module AWS.Services.SWF
    exposing
        ( config
        , countClosedWorkflowExecutions
        , CountClosedWorkflowExecutionsOptions
        , countOpenWorkflowExecutions
        , CountOpenWorkflowExecutionsOptions
        , countPendingActivityTasks
        , countPendingDecisionTasks
        , deprecateActivityType
        , deprecateDomain
        , deprecateWorkflowType
        , describeActivityType
        , describeDomain
        , describeWorkflowExecution
        , describeWorkflowType
        , getWorkflowExecutionHistory
        , GetWorkflowExecutionHistoryOptions
        , listActivityTypes
        , ListActivityTypesOptions
        , listClosedWorkflowExecutions
        , ListClosedWorkflowExecutionsOptions
        , listDomains
        , ListDomainsOptions
        , listOpenWorkflowExecutions
        , ListOpenWorkflowExecutionsOptions
        , listWorkflowTypes
        , ListWorkflowTypesOptions
        , pollForActivityTask
        , PollForActivityTaskOptions
        , pollForDecisionTask
        , PollForDecisionTaskOptions
        , recordActivityTaskHeartbeat
        , RecordActivityTaskHeartbeatOptions
        , registerActivityType
        , RegisterActivityTypeOptions
        , registerDomain
        , RegisterDomainOptions
        , registerWorkflowType
        , RegisterWorkflowTypeOptions
        , requestCancelWorkflowExecution
        , RequestCancelWorkflowExecutionOptions
        , respondActivityTaskCanceled
        , RespondActivityTaskCanceledOptions
        , respondActivityTaskCompleted
        , RespondActivityTaskCompletedOptions
        , respondActivityTaskFailed
        , RespondActivityTaskFailedOptions
        , respondDecisionTaskCompleted
        , RespondDecisionTaskCompletedOptions
        , signalWorkflowExecution
        , SignalWorkflowExecutionOptions
        , startWorkflowExecution
        , StartWorkflowExecutionOptions
        , terminateWorkflowExecution
        , TerminateWorkflowExecutionOptions
        , ActivityTask
        , ActivityTaskCancelRequestedEventAttributes
        , ActivityTaskCanceledEventAttributes
        , ActivityTaskCompletedEventAttributes
        , ActivityTaskFailedEventAttributes
        , ActivityTaskScheduledEventAttributes
        , ActivityTaskStartedEventAttributes
        , ActivityTaskStatus
        , ActivityTaskTimedOutEventAttributes
        , ActivityTaskTimeoutType(..)
        , ActivityType
        , ActivityTypeConfiguration
        , ActivityTypeDetail
        , ActivityTypeInfo
        , ActivityTypeInfos
        , CancelTimerDecisionAttributes
        , CancelTimerFailedCause(..)
        , CancelTimerFailedEventAttributes
        , CancelWorkflowExecutionDecisionAttributes
        , CancelWorkflowExecutionFailedCause(..)
        , CancelWorkflowExecutionFailedEventAttributes
        , ChildPolicy(..)
        , ChildWorkflowExecutionCanceledEventAttributes
        , ChildWorkflowExecutionCompletedEventAttributes
        , ChildWorkflowExecutionFailedEventAttributes
        , ChildWorkflowExecutionStartedEventAttributes
        , ChildWorkflowExecutionTerminatedEventAttributes
        , ChildWorkflowExecutionTimedOutEventAttributes
        , CloseStatus(..)
        , CloseStatusFilter
        , CompleteWorkflowExecutionDecisionAttributes
        , CompleteWorkflowExecutionFailedCause(..)
        , CompleteWorkflowExecutionFailedEventAttributes
        , ContinueAsNewWorkflowExecutionDecisionAttributes
        , ContinueAsNewWorkflowExecutionFailedCause(..)
        , ContinueAsNewWorkflowExecutionFailedEventAttributes
        , Decision
        , DecisionTask
        , DecisionTaskCompletedEventAttributes
        , DecisionTaskScheduledEventAttributes
        , DecisionTaskStartedEventAttributes
        , DecisionTaskTimedOutEventAttributes
        , DecisionTaskTimeoutType(..)
        , DecisionType(..)
        , DefaultUndefinedFault
        , DomainAlreadyExistsFault
        , DomainConfiguration
        , DomainDeprecatedFault
        , DomainDetail
        , DomainInfo
        , DomainInfos
        , EventType(..)
        , ExecutionStatus(..)
        , ExecutionTimeFilter
        , ExternalWorkflowExecutionCancelRequestedEventAttributes
        , ExternalWorkflowExecutionSignaledEventAttributes
        , FailWorkflowExecutionDecisionAttributes
        , FailWorkflowExecutionFailedCause(..)
        , FailWorkflowExecutionFailedEventAttributes
        , History
        , HistoryEvent
        , LambdaFunctionCompletedEventAttributes
        , LambdaFunctionFailedEventAttributes
        , LambdaFunctionScheduledEventAttributes
        , LambdaFunctionStartedEventAttributes
        , LambdaFunctionTimedOutEventAttributes
        , LambdaFunctionTimeoutType(..)
        , LimitExceededFault
        , MarkerRecordedEventAttributes
        , OperationNotPermittedFault
        , PendingTaskCount
        , RecordMarkerDecisionAttributes
        , RecordMarkerFailedCause(..)
        , RecordMarkerFailedEventAttributes
        , RegistrationStatus(..)
        , RequestCancelActivityTaskDecisionAttributes
        , RequestCancelActivityTaskFailedCause(..)
        , RequestCancelActivityTaskFailedEventAttributes
        , RequestCancelExternalWorkflowExecutionDecisionAttributes
        , RequestCancelExternalWorkflowExecutionFailedCause(..)
        , RequestCancelExternalWorkflowExecutionFailedEventAttributes
        , RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
        , Run
        , ScheduleActivityTaskDecisionAttributes
        , ScheduleActivityTaskFailedCause(..)
        , ScheduleActivityTaskFailedEventAttributes
        , ScheduleLambdaFunctionDecisionAttributes
        , ScheduleLambdaFunctionFailedCause(..)
        , ScheduleLambdaFunctionFailedEventAttributes
        , SignalExternalWorkflowExecutionDecisionAttributes
        , SignalExternalWorkflowExecutionFailedCause(..)
        , SignalExternalWorkflowExecutionFailedEventAttributes
        , SignalExternalWorkflowExecutionInitiatedEventAttributes
        , StartChildWorkflowExecutionDecisionAttributes
        , StartChildWorkflowExecutionFailedCause(..)
        , StartChildWorkflowExecutionFailedEventAttributes
        , StartChildWorkflowExecutionInitiatedEventAttributes
        , StartLambdaFunctionFailedCause(..)
        , StartLambdaFunctionFailedEventAttributes
        , StartTimerDecisionAttributes
        , StartTimerFailedCause(..)
        , StartTimerFailedEventAttributes
        , TagFilter
        , TaskList
        , TimerCanceledEventAttributes
        , TimerFiredEventAttributes
        , TimerStartedEventAttributes
        , TypeAlreadyExistsFault
        , TypeDeprecatedFault
        , UnknownResourceFault
        , WorkflowExecution
        , WorkflowExecutionAlreadyStartedFault
        , WorkflowExecutionCancelRequestedCause(..)
        , WorkflowExecutionCancelRequestedEventAttributes
        , WorkflowExecutionCanceledEventAttributes
        , WorkflowExecutionCompletedEventAttributes
        , WorkflowExecutionConfiguration
        , WorkflowExecutionContinuedAsNewEventAttributes
        , WorkflowExecutionCount
        , WorkflowExecutionDetail
        , WorkflowExecutionFailedEventAttributes
        , WorkflowExecutionFilter
        , WorkflowExecutionInfo
        , WorkflowExecutionInfos
        , WorkflowExecutionOpenCounts
        , WorkflowExecutionSignaledEventAttributes
        , WorkflowExecutionStartedEventAttributes
        , WorkflowExecutionTerminatedCause(..)
        , WorkflowExecutionTerminatedEventAttributes
        , WorkflowExecutionTimedOutEventAttributes
        , WorkflowExecutionTimeoutType(..)
        , WorkflowType
        , WorkflowTypeConfiguration
        , WorkflowTypeDetail
        , WorkflowTypeFilter
        , WorkflowTypeInfo
        , WorkflowTypeInfos
        )

{-| <fullname>Amazon Simple Workflow Service</fullname> <p>The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build applications that use Amazon's cloud to coordinate work across distributed components. In Amazon SWF, a <i>task</i> represents a logical unit of work that is performed by a component of your workflow. Coordinating tasks in a workflow involves managing intertask dependencies, scheduling, and concurrency in accordance with the logical flow of the application.</p> <p>Amazon SWF gives you full control over implementing tasks and coordinating them without worrying about underlying complexities such as tracking their progress and maintaining their state.</p> <p>This documentation serves as reference only. For a broader overview of the Amazon SWF programming model, see the <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/">Amazon SWF Developer Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [countClosedWorkflowExecutions](#countClosedWorkflowExecutions)
* [CountClosedWorkflowExecutionsOptions](#CountClosedWorkflowExecutionsOptions)
* [countOpenWorkflowExecutions](#countOpenWorkflowExecutions)
* [CountOpenWorkflowExecutionsOptions](#CountOpenWorkflowExecutionsOptions)
* [countPendingActivityTasks](#countPendingActivityTasks)
* [countPendingDecisionTasks](#countPendingDecisionTasks)
* [deprecateActivityType](#deprecateActivityType)
* [deprecateDomain](#deprecateDomain)
* [deprecateWorkflowType](#deprecateWorkflowType)
* [describeActivityType](#describeActivityType)
* [describeDomain](#describeDomain)
* [describeWorkflowExecution](#describeWorkflowExecution)
* [describeWorkflowType](#describeWorkflowType)
* [getWorkflowExecutionHistory](#getWorkflowExecutionHistory)
* [GetWorkflowExecutionHistoryOptions](#GetWorkflowExecutionHistoryOptions)
* [listActivityTypes](#listActivityTypes)
* [ListActivityTypesOptions](#ListActivityTypesOptions)
* [listClosedWorkflowExecutions](#listClosedWorkflowExecutions)
* [ListClosedWorkflowExecutionsOptions](#ListClosedWorkflowExecutionsOptions)
* [listDomains](#listDomains)
* [ListDomainsOptions](#ListDomainsOptions)
* [listOpenWorkflowExecutions](#listOpenWorkflowExecutions)
* [ListOpenWorkflowExecutionsOptions](#ListOpenWorkflowExecutionsOptions)
* [listWorkflowTypes](#listWorkflowTypes)
* [ListWorkflowTypesOptions](#ListWorkflowTypesOptions)
* [pollForActivityTask](#pollForActivityTask)
* [PollForActivityTaskOptions](#PollForActivityTaskOptions)
* [pollForDecisionTask](#pollForDecisionTask)
* [PollForDecisionTaskOptions](#PollForDecisionTaskOptions)
* [recordActivityTaskHeartbeat](#recordActivityTaskHeartbeat)
* [RecordActivityTaskHeartbeatOptions](#RecordActivityTaskHeartbeatOptions)
* [registerActivityType](#registerActivityType)
* [RegisterActivityTypeOptions](#RegisterActivityTypeOptions)
* [registerDomain](#registerDomain)
* [RegisterDomainOptions](#RegisterDomainOptions)
* [registerWorkflowType](#registerWorkflowType)
* [RegisterWorkflowTypeOptions](#RegisterWorkflowTypeOptions)
* [requestCancelWorkflowExecution](#requestCancelWorkflowExecution)
* [RequestCancelWorkflowExecutionOptions](#RequestCancelWorkflowExecutionOptions)
* [respondActivityTaskCanceled](#respondActivityTaskCanceled)
* [RespondActivityTaskCanceledOptions](#RespondActivityTaskCanceledOptions)
* [respondActivityTaskCompleted](#respondActivityTaskCompleted)
* [RespondActivityTaskCompletedOptions](#RespondActivityTaskCompletedOptions)
* [respondActivityTaskFailed](#respondActivityTaskFailed)
* [RespondActivityTaskFailedOptions](#RespondActivityTaskFailedOptions)
* [respondDecisionTaskCompleted](#respondDecisionTaskCompleted)
* [RespondDecisionTaskCompletedOptions](#RespondDecisionTaskCompletedOptions)
* [signalWorkflowExecution](#signalWorkflowExecution)
* [SignalWorkflowExecutionOptions](#SignalWorkflowExecutionOptions)
* [startWorkflowExecution](#startWorkflowExecution)
* [StartWorkflowExecutionOptions](#StartWorkflowExecutionOptions)
* [terminateWorkflowExecution](#terminateWorkflowExecution)
* [TerminateWorkflowExecutionOptions](#TerminateWorkflowExecutionOptions)


@docs countClosedWorkflowExecutions,CountClosedWorkflowExecutionsOptions,countOpenWorkflowExecutions,CountOpenWorkflowExecutionsOptions,countPendingActivityTasks,countPendingDecisionTasks,deprecateActivityType,deprecateDomain,deprecateWorkflowType,describeActivityType,describeDomain,describeWorkflowExecution,describeWorkflowType,getWorkflowExecutionHistory,GetWorkflowExecutionHistoryOptions,listActivityTypes,ListActivityTypesOptions,listClosedWorkflowExecutions,ListClosedWorkflowExecutionsOptions,listDomains,ListDomainsOptions,listOpenWorkflowExecutions,ListOpenWorkflowExecutionsOptions,listWorkflowTypes,ListWorkflowTypesOptions,pollForActivityTask,PollForActivityTaskOptions,pollForDecisionTask,PollForDecisionTaskOptions,recordActivityTaskHeartbeat,RecordActivityTaskHeartbeatOptions,registerActivityType,RegisterActivityTypeOptions,registerDomain,RegisterDomainOptions,registerWorkflowType,RegisterWorkflowTypeOptions,requestCancelWorkflowExecution,RequestCancelWorkflowExecutionOptions,respondActivityTaskCanceled,RespondActivityTaskCanceledOptions,respondActivityTaskCompleted,RespondActivityTaskCompletedOptions,respondActivityTaskFailed,RespondActivityTaskFailedOptions,respondDecisionTaskCompleted,RespondDecisionTaskCompletedOptions,signalWorkflowExecution,SignalWorkflowExecutionOptions,startWorkflowExecution,StartWorkflowExecutionOptions,terminateWorkflowExecution,TerminateWorkflowExecutionOptions

## Responses

* [ActivityTask](#ActivityTask)
* [ActivityTaskStatus](#ActivityTaskStatus)
* [ActivityTypeDetail](#ActivityTypeDetail)
* [ActivityTypeInfos](#ActivityTypeInfos)
* [DecisionTask](#DecisionTask)
* [DomainDetail](#DomainDetail)
* [DomainInfos](#DomainInfos)
* [History](#History)
* [PendingTaskCount](#PendingTaskCount)
* [Run](#Run)
* [WorkflowExecutionCount](#WorkflowExecutionCount)
* [WorkflowExecutionDetail](#WorkflowExecutionDetail)
* [WorkflowExecutionInfos](#WorkflowExecutionInfos)
* [WorkflowTypeDetail](#WorkflowTypeDetail)
* [WorkflowTypeInfos](#WorkflowTypeInfos)


@docs ActivityTask,ActivityTaskStatus,ActivityTypeDetail,ActivityTypeInfos,DecisionTask,DomainDetail,DomainInfos,History,PendingTaskCount,Run,WorkflowExecutionCount,WorkflowExecutionDetail,WorkflowExecutionInfos,WorkflowTypeDetail,WorkflowTypeInfos

## Records

* [ActivityTaskCancelRequestedEventAttributes](#ActivityTaskCancelRequestedEventAttributes)
* [ActivityTaskCanceledEventAttributes](#ActivityTaskCanceledEventAttributes)
* [ActivityTaskCompletedEventAttributes](#ActivityTaskCompletedEventAttributes)
* [ActivityTaskFailedEventAttributes](#ActivityTaskFailedEventAttributes)
* [ActivityTaskScheduledEventAttributes](#ActivityTaskScheduledEventAttributes)
* [ActivityTaskStartedEventAttributes](#ActivityTaskStartedEventAttributes)
* [ActivityTaskTimedOutEventAttributes](#ActivityTaskTimedOutEventAttributes)
* [ActivityType](#ActivityType)
* [ActivityTypeConfiguration](#ActivityTypeConfiguration)
* [ActivityTypeInfo](#ActivityTypeInfo)
* [CancelTimerDecisionAttributes](#CancelTimerDecisionAttributes)
* [CancelTimerFailedEventAttributes](#CancelTimerFailedEventAttributes)
* [CancelWorkflowExecutionDecisionAttributes](#CancelWorkflowExecutionDecisionAttributes)
* [CancelWorkflowExecutionFailedEventAttributes](#CancelWorkflowExecutionFailedEventAttributes)
* [ChildWorkflowExecutionCanceledEventAttributes](#ChildWorkflowExecutionCanceledEventAttributes)
* [ChildWorkflowExecutionCompletedEventAttributes](#ChildWorkflowExecutionCompletedEventAttributes)
* [ChildWorkflowExecutionFailedEventAttributes](#ChildWorkflowExecutionFailedEventAttributes)
* [ChildWorkflowExecutionStartedEventAttributes](#ChildWorkflowExecutionStartedEventAttributes)
* [ChildWorkflowExecutionTerminatedEventAttributes](#ChildWorkflowExecutionTerminatedEventAttributes)
* [ChildWorkflowExecutionTimedOutEventAttributes](#ChildWorkflowExecutionTimedOutEventAttributes)
* [CloseStatusFilter](#CloseStatusFilter)
* [CompleteWorkflowExecutionDecisionAttributes](#CompleteWorkflowExecutionDecisionAttributes)
* [CompleteWorkflowExecutionFailedEventAttributes](#CompleteWorkflowExecutionFailedEventAttributes)
* [ContinueAsNewWorkflowExecutionDecisionAttributes](#ContinueAsNewWorkflowExecutionDecisionAttributes)
* [ContinueAsNewWorkflowExecutionFailedEventAttributes](#ContinueAsNewWorkflowExecutionFailedEventAttributes)
* [Decision](#Decision)
* [DecisionTaskCompletedEventAttributes](#DecisionTaskCompletedEventAttributes)
* [DecisionTaskScheduledEventAttributes](#DecisionTaskScheduledEventAttributes)
* [DecisionTaskStartedEventAttributes](#DecisionTaskStartedEventAttributes)
* [DecisionTaskTimedOutEventAttributes](#DecisionTaskTimedOutEventAttributes)
* [DomainConfiguration](#DomainConfiguration)
* [DomainInfo](#DomainInfo)
* [ExecutionTimeFilter](#ExecutionTimeFilter)
* [ExternalWorkflowExecutionCancelRequestedEventAttributes](#ExternalWorkflowExecutionCancelRequestedEventAttributes)
* [ExternalWorkflowExecutionSignaledEventAttributes](#ExternalWorkflowExecutionSignaledEventAttributes)
* [FailWorkflowExecutionDecisionAttributes](#FailWorkflowExecutionDecisionAttributes)
* [FailWorkflowExecutionFailedEventAttributes](#FailWorkflowExecutionFailedEventAttributes)
* [HistoryEvent](#HistoryEvent)
* [LambdaFunctionCompletedEventAttributes](#LambdaFunctionCompletedEventAttributes)
* [LambdaFunctionFailedEventAttributes](#LambdaFunctionFailedEventAttributes)
* [LambdaFunctionScheduledEventAttributes](#LambdaFunctionScheduledEventAttributes)
* [LambdaFunctionStartedEventAttributes](#LambdaFunctionStartedEventAttributes)
* [LambdaFunctionTimedOutEventAttributes](#LambdaFunctionTimedOutEventAttributes)
* [MarkerRecordedEventAttributes](#MarkerRecordedEventAttributes)
* [RecordMarkerDecisionAttributes](#RecordMarkerDecisionAttributes)
* [RecordMarkerFailedEventAttributes](#RecordMarkerFailedEventAttributes)
* [RequestCancelActivityTaskDecisionAttributes](#RequestCancelActivityTaskDecisionAttributes)
* [RequestCancelActivityTaskFailedEventAttributes](#RequestCancelActivityTaskFailedEventAttributes)
* [RequestCancelExternalWorkflowExecutionDecisionAttributes](#RequestCancelExternalWorkflowExecutionDecisionAttributes)
* [RequestCancelExternalWorkflowExecutionFailedEventAttributes](#RequestCancelExternalWorkflowExecutionFailedEventAttributes)
* [RequestCancelExternalWorkflowExecutionInitiatedEventAttributes](#RequestCancelExternalWorkflowExecutionInitiatedEventAttributes)
* [ScheduleActivityTaskDecisionAttributes](#ScheduleActivityTaskDecisionAttributes)
* [ScheduleActivityTaskFailedEventAttributes](#ScheduleActivityTaskFailedEventAttributes)
* [ScheduleLambdaFunctionDecisionAttributes](#ScheduleLambdaFunctionDecisionAttributes)
* [ScheduleLambdaFunctionFailedEventAttributes](#ScheduleLambdaFunctionFailedEventAttributes)
* [SignalExternalWorkflowExecutionDecisionAttributes](#SignalExternalWorkflowExecutionDecisionAttributes)
* [SignalExternalWorkflowExecutionFailedEventAttributes](#SignalExternalWorkflowExecutionFailedEventAttributes)
* [SignalExternalWorkflowExecutionInitiatedEventAttributes](#SignalExternalWorkflowExecutionInitiatedEventAttributes)
* [StartChildWorkflowExecutionDecisionAttributes](#StartChildWorkflowExecutionDecisionAttributes)
* [StartChildWorkflowExecutionFailedEventAttributes](#StartChildWorkflowExecutionFailedEventAttributes)
* [StartChildWorkflowExecutionInitiatedEventAttributes](#StartChildWorkflowExecutionInitiatedEventAttributes)
* [StartLambdaFunctionFailedEventAttributes](#StartLambdaFunctionFailedEventAttributes)
* [StartTimerDecisionAttributes](#StartTimerDecisionAttributes)
* [StartTimerFailedEventAttributes](#StartTimerFailedEventAttributes)
* [TagFilter](#TagFilter)
* [TaskList](#TaskList)
* [TimerCanceledEventAttributes](#TimerCanceledEventAttributes)
* [TimerFiredEventAttributes](#TimerFiredEventAttributes)
* [TimerStartedEventAttributes](#TimerStartedEventAttributes)
* [WorkflowExecution](#WorkflowExecution)
* [WorkflowExecutionCancelRequestedEventAttributes](#WorkflowExecutionCancelRequestedEventAttributes)
* [WorkflowExecutionCanceledEventAttributes](#WorkflowExecutionCanceledEventAttributes)
* [WorkflowExecutionCompletedEventAttributes](#WorkflowExecutionCompletedEventAttributes)
* [WorkflowExecutionConfiguration](#WorkflowExecutionConfiguration)
* [WorkflowExecutionContinuedAsNewEventAttributes](#WorkflowExecutionContinuedAsNewEventAttributes)
* [WorkflowExecutionFailedEventAttributes](#WorkflowExecutionFailedEventAttributes)
* [WorkflowExecutionFilter](#WorkflowExecutionFilter)
* [WorkflowExecutionInfo](#WorkflowExecutionInfo)
* [WorkflowExecutionOpenCounts](#WorkflowExecutionOpenCounts)
* [WorkflowExecutionSignaledEventAttributes](#WorkflowExecutionSignaledEventAttributes)
* [WorkflowExecutionStartedEventAttributes](#WorkflowExecutionStartedEventAttributes)
* [WorkflowExecutionTerminatedEventAttributes](#WorkflowExecutionTerminatedEventAttributes)
* [WorkflowExecutionTimedOutEventAttributes](#WorkflowExecutionTimedOutEventAttributes)
* [WorkflowType](#WorkflowType)
* [WorkflowTypeConfiguration](#WorkflowTypeConfiguration)
* [WorkflowTypeFilter](#WorkflowTypeFilter)
* [WorkflowTypeInfo](#WorkflowTypeInfo)


@docs ActivityTaskCancelRequestedEventAttributes,ActivityTaskCanceledEventAttributes,ActivityTaskCompletedEventAttributes,ActivityTaskFailedEventAttributes,ActivityTaskScheduledEventAttributes,ActivityTaskStartedEventAttributes,ActivityTaskTimedOutEventAttributes,ActivityType,ActivityTypeConfiguration,ActivityTypeInfo,CancelTimerDecisionAttributes,CancelTimerFailedEventAttributes,CancelWorkflowExecutionDecisionAttributes,CancelWorkflowExecutionFailedEventAttributes,ChildWorkflowExecutionCanceledEventAttributes,ChildWorkflowExecutionCompletedEventAttributes,ChildWorkflowExecutionFailedEventAttributes,ChildWorkflowExecutionStartedEventAttributes,ChildWorkflowExecutionTerminatedEventAttributes,ChildWorkflowExecutionTimedOutEventAttributes,CloseStatusFilter,CompleteWorkflowExecutionDecisionAttributes,CompleteWorkflowExecutionFailedEventAttributes,ContinueAsNewWorkflowExecutionDecisionAttributes,ContinueAsNewWorkflowExecutionFailedEventAttributes,Decision,DecisionTaskCompletedEventAttributes,DecisionTaskScheduledEventAttributes,DecisionTaskStartedEventAttributes,DecisionTaskTimedOutEventAttributes,DomainConfiguration,DomainInfo,ExecutionTimeFilter,ExternalWorkflowExecutionCancelRequestedEventAttributes,ExternalWorkflowExecutionSignaledEventAttributes,FailWorkflowExecutionDecisionAttributes,FailWorkflowExecutionFailedEventAttributes,HistoryEvent,LambdaFunctionCompletedEventAttributes,LambdaFunctionFailedEventAttributes,LambdaFunctionScheduledEventAttributes,LambdaFunctionStartedEventAttributes,LambdaFunctionTimedOutEventAttributes,MarkerRecordedEventAttributes,RecordMarkerDecisionAttributes,RecordMarkerFailedEventAttributes,RequestCancelActivityTaskDecisionAttributes,RequestCancelActivityTaskFailedEventAttributes,RequestCancelExternalWorkflowExecutionDecisionAttributes,RequestCancelExternalWorkflowExecutionFailedEventAttributes,RequestCancelExternalWorkflowExecutionInitiatedEventAttributes,ScheduleActivityTaskDecisionAttributes,ScheduleActivityTaskFailedEventAttributes,ScheduleLambdaFunctionDecisionAttributes,ScheduleLambdaFunctionFailedEventAttributes,SignalExternalWorkflowExecutionDecisionAttributes,SignalExternalWorkflowExecutionFailedEventAttributes,SignalExternalWorkflowExecutionInitiatedEventAttributes,StartChildWorkflowExecutionDecisionAttributes,StartChildWorkflowExecutionFailedEventAttributes,StartChildWorkflowExecutionInitiatedEventAttributes,StartLambdaFunctionFailedEventAttributes,StartTimerDecisionAttributes,StartTimerFailedEventAttributes,TagFilter,TaskList,TimerCanceledEventAttributes,TimerFiredEventAttributes,TimerStartedEventAttributes,WorkflowExecution,WorkflowExecutionCancelRequestedEventAttributes,WorkflowExecutionCanceledEventAttributes,WorkflowExecutionCompletedEventAttributes,WorkflowExecutionConfiguration,WorkflowExecutionContinuedAsNewEventAttributes,WorkflowExecutionFailedEventAttributes,WorkflowExecutionFilter,WorkflowExecutionInfo,WorkflowExecutionOpenCounts,WorkflowExecutionSignaledEventAttributes,WorkflowExecutionStartedEventAttributes,WorkflowExecutionTerminatedEventAttributes,WorkflowExecutionTimedOutEventAttributes,WorkflowType,WorkflowTypeConfiguration,WorkflowTypeFilter,WorkflowTypeInfo

## Unions

* [ActivityTaskTimeoutType](#ActivityTaskTimeoutType)
* [CancelTimerFailedCause](#CancelTimerFailedCause)
* [CancelWorkflowExecutionFailedCause](#CancelWorkflowExecutionFailedCause)
* [ChildPolicy](#ChildPolicy)
* [CloseStatus](#CloseStatus)
* [CompleteWorkflowExecutionFailedCause](#CompleteWorkflowExecutionFailedCause)
* [ContinueAsNewWorkflowExecutionFailedCause](#ContinueAsNewWorkflowExecutionFailedCause)
* [DecisionTaskTimeoutType](#DecisionTaskTimeoutType)
* [DecisionType](#DecisionType)
* [EventType](#EventType)
* [ExecutionStatus](#ExecutionStatus)
* [FailWorkflowExecutionFailedCause](#FailWorkflowExecutionFailedCause)
* [LambdaFunctionTimeoutType](#LambdaFunctionTimeoutType)
* [RecordMarkerFailedCause](#RecordMarkerFailedCause)
* [RegistrationStatus](#RegistrationStatus)
* [RequestCancelActivityTaskFailedCause](#RequestCancelActivityTaskFailedCause)
* [RequestCancelExternalWorkflowExecutionFailedCause](#RequestCancelExternalWorkflowExecutionFailedCause)
* [ScheduleActivityTaskFailedCause](#ScheduleActivityTaskFailedCause)
* [ScheduleLambdaFunctionFailedCause](#ScheduleLambdaFunctionFailedCause)
* [SignalExternalWorkflowExecutionFailedCause](#SignalExternalWorkflowExecutionFailedCause)
* [StartChildWorkflowExecutionFailedCause](#StartChildWorkflowExecutionFailedCause)
* [StartLambdaFunctionFailedCause](#StartLambdaFunctionFailedCause)
* [StartTimerFailedCause](#StartTimerFailedCause)
* [WorkflowExecutionCancelRequestedCause](#WorkflowExecutionCancelRequestedCause)
* [WorkflowExecutionTerminatedCause](#WorkflowExecutionTerminatedCause)
* [WorkflowExecutionTimeoutType](#WorkflowExecutionTimeoutType)


@docs ActivityTaskTimeoutType,CancelTimerFailedCause,CancelWorkflowExecutionFailedCause,ChildPolicy,CloseStatus,CompleteWorkflowExecutionFailedCause,ContinueAsNewWorkflowExecutionFailedCause,DecisionTaskTimeoutType,DecisionType,EventType,ExecutionStatus,FailWorkflowExecutionFailedCause,LambdaFunctionTimeoutType,RecordMarkerFailedCause,RegistrationStatus,RequestCancelActivityTaskFailedCause,RequestCancelExternalWorkflowExecutionFailedCause,ScheduleActivityTaskFailedCause,ScheduleLambdaFunctionFailedCause,SignalExternalWorkflowExecutionFailedCause,StartChildWorkflowExecutionFailedCause,StartLambdaFunctionFailedCause,StartTimerFailedCause,WorkflowExecutionCancelRequestedCause,WorkflowExecutionTerminatedCause,WorkflowExecutionTimeoutType

## Exceptions

* [DefaultUndefinedFault](#DefaultUndefinedFault)
* [DomainAlreadyExistsFault](#DomainAlreadyExistsFault)
* [DomainDeprecatedFault](#DomainDeprecatedFault)
* [LimitExceededFault](#LimitExceededFault)
* [OperationNotPermittedFault](#OperationNotPermittedFault)
* [TypeAlreadyExistsFault](#TypeAlreadyExistsFault)
* [TypeDeprecatedFault](#TypeDeprecatedFault)
* [UnknownResourceFault](#UnknownResourceFault)
* [WorkflowExecutionAlreadyStartedFault](#WorkflowExecutionAlreadyStartedFault)


@docs DefaultUndefinedFault,DomainAlreadyExistsFault,DomainDeprecatedFault,LimitExceededFault,OperationNotPermittedFault,TypeAlreadyExistsFault,TypeDeprecatedFault,UnknownResourceFault,WorkflowExecutionAlreadyStartedFault

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "swf"
        "2012-01-25"
        "1.0"
        "AWSSWF_20120125."
        "swf.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</li> <li><code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</li> <li><code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`


-}
countClosedWorkflowExecutions :
    String
    -> (CountClosedWorkflowExecutionsOptions -> CountClosedWorkflowExecutionsOptions)
    -> AWS.Http.UnsignedRequest WorkflowExecutionCount
countClosedWorkflowExecutions domain setOptions =
  let
    options = setOptions (CountClosedWorkflowExecutionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CountClosedWorkflowExecutions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        workflowExecutionCountDecoder


{-| Options for a countClosedWorkflowExecutions request
-}
type alias CountClosedWorkflowExecutionsOptions =
    { startTimeFilter : Maybe ExecutionTimeFilter
    , closeTimeFilter : Maybe ExecutionTimeFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , closeStatusFilter : Maybe CloseStatusFilter
    }



{-| <p>Returns the number of open workflow executions within the given domain that meet the specified filtering criteria.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</li> <li><code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</li> <li><code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `startTimeFilter` __:__ `ExecutionTimeFilter`


-}
countOpenWorkflowExecutions :
    String
    -> ExecutionTimeFilter
    -> (CountOpenWorkflowExecutionsOptions -> CountOpenWorkflowExecutionsOptions)
    -> AWS.Http.UnsignedRequest WorkflowExecutionCount
countOpenWorkflowExecutions domain startTimeFilter setOptions =
  let
    options = setOptions (CountOpenWorkflowExecutionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CountOpenWorkflowExecutions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        workflowExecutionCountDecoder


{-| Options for a countOpenWorkflowExecutions request
-}
type alias CountOpenWorkflowExecutionsOptions =
    { typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    }



{-| <p>Returns the estimated number of activity tasks in the specified task list. The count returned is an approximation and is not guaranteed to be exact. If you specify a task list that no activity task was ever scheduled in then 0 will be returned.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the <code>taskList.name</code> parameter by using a <b>Condition</b> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `taskList` __:__ `TaskList`


-}
countPendingActivityTasks :
    String
    -> TaskList
    -> AWS.Http.UnsignedRequest PendingTaskCount
countPendingActivityTasks domain taskList =
    AWS.Http.unsignedRequest
        "CountPendingActivityTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        pendingTaskCountDecoder



{-| <p>Returns the estimated number of decision tasks in the specified task list. The count returned is an approximation and is not guaranteed to be exact. If you specify a task list that no decision task was ever scheduled in then 0 will be returned.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the <code>taskList.name</code> parameter by using a <b>Condition</b> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `taskList` __:__ `TaskList`


-}
countPendingDecisionTasks :
    String
    -> TaskList
    -> AWS.Http.UnsignedRequest PendingTaskCount
countPendingDecisionTasks domain taskList =
    AWS.Http.unsignedRequest
        "CountPendingDecisionTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        pendingTaskCountDecoder



{-| <p>Deprecates the specified <i>activity type</i>. After an activity type has been deprecated, you cannot create new tasks of that activity type. Tasks of this type that were scheduled before the type was deprecated will continue to run.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</li> <li><code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `activityType` __:__ `ActivityType`


-}
deprecateActivityType :
    String
    -> ActivityType
    -> AWS.Http.UnsignedRequest ()
deprecateActivityType domain activityType =
    AWS.Http.unsignedRequest
        "DeprecateActivityType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deprecates the specified domain. After a domain has been deprecated it cannot be used to create new workflow executions or register new types. However, you can still use visibility actions on this domain. Deprecating a domain also deprecates all activity and workflow types registered in the domain. Executions that were started before the domain was deprecated will continue to run.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deprecateDomain :
    String
    -> AWS.Http.UnsignedRequest ()
deprecateDomain name =
    AWS.Http.unsignedRequest
        "DeprecateDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deprecates the specified <i>workflow type</i>. After a workflow type has been deprecated, you cannot create new executions of that type. Executions that were started before the type was deprecated will continue to run. A deprecated workflow type may still be used when calling visibility actions.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</li> <li><code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `workflowType` __:__ `WorkflowType`


-}
deprecateWorkflowType :
    String
    -> WorkflowType
    -> AWS.Http.UnsignedRequest ()
deprecateWorkflowType domain workflowType =
    AWS.Http.unsignedRequest
        "DeprecateWorkflowType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Returns information about the specified activity type. This includes configuration settings provided when the type was registered and other general information about the type.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</li> <li><code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `activityType` __:__ `ActivityType`


-}
describeActivityType :
    String
    -> ActivityType
    -> AWS.Http.UnsignedRequest ActivityTypeDetail
describeActivityType domain activityType =
    AWS.Http.unsignedRequest
        "DescribeActivityType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activityTypeDetailDecoder



{-| <p>Returns information about the specified domain, including description and status.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}
describeDomain :
    String
    -> AWS.Http.UnsignedRequest DomainDetail
describeDomain name =
    AWS.Http.unsignedRequest
        "DescribeDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        domainDetailDecoder



{-| <p>Returns information about the specified workflow execution including its type and some statistics.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `execution` __:__ `WorkflowExecution`


-}
describeWorkflowExecution :
    String
    -> WorkflowExecution
    -> AWS.Http.UnsignedRequest WorkflowExecutionDetail
describeWorkflowExecution domain execution =
    AWS.Http.unsignedRequest
        "DescribeWorkflowExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        workflowExecutionDetailDecoder



{-| <p>Returns information about the specified <i>workflow type</i>. This includes configuration settings specified when the type was registered and other information such as creation date, current status, and so on.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</li> <li><code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `workflowType` __:__ `WorkflowType`


-}
describeWorkflowType :
    String
    -> WorkflowType
    -> AWS.Http.UnsignedRequest WorkflowTypeDetail
describeWorkflowType domain workflowType =
    AWS.Http.unsignedRequest
        "DescribeWorkflowType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        workflowTypeDetailDecoder



{-| <p>Returns the history of the specified workflow execution. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `execution` __:__ `WorkflowExecution`


-}
getWorkflowExecutionHistory :
    String
    -> WorkflowExecution
    -> (GetWorkflowExecutionHistoryOptions -> GetWorkflowExecutionHistoryOptions)
    -> AWS.Http.UnsignedRequest History
getWorkflowExecutionHistory domain execution setOptions =
  let
    options = setOptions (GetWorkflowExecutionHistoryOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetWorkflowExecutionHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        historyDecoder


{-| Options for a getWorkflowExecutionHistory request
-}
type alias GetWorkflowExecutionHistoryOptions =
    { nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }



{-| <p>Returns information about all activities registered in the specified domain that match the specified name and registration status. The result includes information like creation date, current status of the activity, etc. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the <code>nextPageToken</code> returned by the initial call.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `registrationStatus` __:__ `RegistrationStatus`


-}
listActivityTypes :
    String
    -> RegistrationStatus
    -> (ListActivityTypesOptions -> ListActivityTypesOptions)
    -> AWS.Http.UnsignedRequest ActivityTypeInfos
listActivityTypes domain registrationStatus setOptions =
  let
    options = setOptions (ListActivityTypesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListActivityTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activityTypeInfosDecoder


{-| Options for a listActivityTypes request
-}
type alias ListActivityTypesOptions =
    { name : Maybe String
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }



{-| <p>Returns a list of closed workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note>This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</li> <li><code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</li> <li><code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`


-}
listClosedWorkflowExecutions :
    String
    -> (ListClosedWorkflowExecutionsOptions -> ListClosedWorkflowExecutionsOptions)
    -> AWS.Http.UnsignedRequest WorkflowExecutionInfos
listClosedWorkflowExecutions domain setOptions =
  let
    options = setOptions (ListClosedWorkflowExecutionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListClosedWorkflowExecutions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        workflowExecutionInfosDecoder


{-| Options for a listClosedWorkflowExecutions request
-}
type alias ListClosedWorkflowExecutionsOptions =
    { startTimeFilter : Maybe ExecutionTimeFilter
    , closeTimeFilter : Maybe ExecutionTimeFilter
    , executionFilter : Maybe WorkflowExecutionFilter
    , closeStatusFilter : Maybe CloseStatusFilter
    , typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }



{-| <p>Returns the list of domains registered in the account. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains. The element must be set to <code>arn:aws:swf::AccountID:domain/*</code>, where <i>AccountID</i> is the account ID, with no dashes.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `registrationStatus` __:__ `RegistrationStatus`


-}
listDomains :
    RegistrationStatus
    -> (ListDomainsOptions -> ListDomainsOptions)
    -> AWS.Http.UnsignedRequest DomainInfos
listDomains registrationStatus setOptions =
  let
    options = setOptions (ListDomainsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDomains"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        domainInfosDecoder


{-| Options for a listDomains request
-}
type alias ListDomainsOptions =
    { nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }



{-| <p>Returns a list of open workflow executions in the specified domain that meet the filtering criteria. The results may be split into multiple pages. To retrieve subsequent pages, make the call again using the nextPageToken returned by the initial call.</p> <note> This operation is eventually consistent. The results are best effort and may not exactly reflect recent updates and changes.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>tagFilter.tag</code>: String constraint. The key is <code>swf:tagFilter.tag</code>.</li> <li><code>typeFilter.name</code>: String constraint. The key is <code>swf:typeFilter.name</code>.</li> <li><code>typeFilter.version</code>: String constraint. The key is <code>swf:typeFilter.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `startTimeFilter` __:__ `ExecutionTimeFilter`


-}
listOpenWorkflowExecutions :
    String
    -> ExecutionTimeFilter
    -> (ListOpenWorkflowExecutionsOptions -> ListOpenWorkflowExecutionsOptions)
    -> AWS.Http.UnsignedRequest WorkflowExecutionInfos
listOpenWorkflowExecutions domain startTimeFilter setOptions =
  let
    options = setOptions (ListOpenWorkflowExecutionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListOpenWorkflowExecutions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        workflowExecutionInfosDecoder


{-| Options for a listOpenWorkflowExecutions request
-}
type alias ListOpenWorkflowExecutionsOptions =
    { typeFilter : Maybe WorkflowTypeFilter
    , tagFilter : Maybe TagFilter
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    , executionFilter : Maybe WorkflowExecutionFilter
    }



{-| <p>Returns information about workflow types in the specified domain. The results may be split into multiple pages that can be retrieved by making the call repeatedly.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `registrationStatus` __:__ `RegistrationStatus`


-}
listWorkflowTypes :
    String
    -> RegistrationStatus
    -> (ListWorkflowTypesOptions -> ListWorkflowTypesOptions)
    -> AWS.Http.UnsignedRequest WorkflowTypeInfos
listWorkflowTypes domain registrationStatus setOptions =
  let
    options = setOptions (ListWorkflowTypesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListWorkflowTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        workflowTypeInfosDecoder


{-| Options for a listWorkflowTypes request
-}
type alias ListWorkflowTypesOptions =
    { name : Maybe String
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }



{-| <p>Used by workers to get an <a>ActivityTask</a> from the specified activity <code>taskList</code>. This initiates a long poll, where the service holds the HTTP connection open and responds as soon as a task becomes available. The maximum time the service holds on to the request before responding is 60 seconds. If no task is available within 60 seconds, the poll will return an empty result. An empty result, in this context, means that an ActivityTask is returned, but that the value of taskToken is an empty string. If a task is returned, the worker should use its type to identify and process it correctly.</p> <important>Workers should set their client side socket timeout to at least 70 seconds (10 seconds higher than the maximum time service may hold the poll request).</important> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the <code>taskList.name</code> parameter by using a <b>Condition</b> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `taskList` __:__ `TaskList`


-}
pollForActivityTask :
    String
    -> TaskList
    -> (PollForActivityTaskOptions -> PollForActivityTaskOptions)
    -> AWS.Http.UnsignedRequest ActivityTask
pollForActivityTask domain taskList setOptions =
  let
    options = setOptions (PollForActivityTaskOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PollForActivityTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activityTaskDecoder


{-| Options for a pollForActivityTask request
-}
type alias PollForActivityTaskOptions =
    { identity : Maybe String
    }



{-| <p>Used by deciders to get a <a>DecisionTask</a> from the specified decision <code>taskList</code>. A decision task may be returned for any open workflow execution that is using the specified task list. The task includes a paginated view of the history of the workflow execution. The decider should use the workflow type and the history to determine how to properly handle the task.</p> <p>This action initiates a long poll, where the service holds the HTTP connection open and responds as soon a task becomes available. If no decision task is available in the specified task list before the timeout of 60 seconds expires, an empty result is returned. An empty result, in this context, means that a DecisionTask is returned, but that the value of <code>taskToken</code> is an empty string.</p> <important>Deciders should set their client-side socket timeout to at least 70 seconds (10 seconds higher than the timeout).</important> <important>Because the number of workflow history events for a single workflow execution might be very large, the result returned might be split up across a number of pages. To retrieve subsequent pages, make additional calls to <code>PollForDecisionTask</code> using the <code>nextPageToken</code> returned by the initial call. Note that you do <b>not</b> call <code>GetWorkflowExecutionHistory</code> with this <code>nextPageToken</code>. Instead, call <code>PollForDecisionTask</code> again.</important> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the <code>taskList.name</code> parameter by using a <b>Condition</b> element with the <code>swf:taskList.name</code> key to allow the action to access only certain task lists.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `taskList` __:__ `TaskList`


-}
pollForDecisionTask :
    String
    -> TaskList
    -> (PollForDecisionTaskOptions -> PollForDecisionTaskOptions)
    -> AWS.Http.UnsignedRequest DecisionTask
pollForDecisionTask domain taskList setOptions =
  let
    options = setOptions (PollForDecisionTaskOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PollForDecisionTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        decisionTaskDecoder


{-| Options for a pollForDecisionTask request
-}
type alias PollForDecisionTaskOptions =
    { identity : Maybe String
    , nextPageToken : Maybe String
    , maximumPageSize : Maybe Int
    , reverseOrder : Maybe Bool
    }



{-| <p>Used by activity workers to report to the service that the <a>ActivityTask</a> represented by the specified <code>taskToken</code> is still making progress. The worker can also (optionally) specify details of the progress, for example percent complete, using the <code>details</code> parameter. This action can also be used by the worker as a mechanism to check if cancellation is being requested for the activity task. If a cancellation is being attempted for the specified task, then the boolean <code>cancelRequested</code> flag returned by the service is set to <code>true</code>.</p> <p>This action resets the <code>taskHeartbeatTimeout</code> clock. The <code>taskHeartbeatTimeout</code> is specified in <a>RegisterActivityType</a>.</p> <p>This action does not in itself create an event in the workflow execution history. However, if the task times out, the workflow execution history will contain a <code>ActivityTaskTimedOut</code> event that contains the information from the last heartbeat generated by the activity worker.</p> <note>The <code>taskStartToCloseTimeout</code> of an activity type is the maximum duration of an activity task, regardless of the number of <a>RecordActivityTaskHeartbeat</a> requests received. The <code>taskStartToCloseTimeout</code> is also specified in <a>RegisterActivityType</a>.</note> <note>This operation is only useful for long-lived activities to report liveliness of the task and to determine if a cancellation is being attempted. </note> <important>If the <code>cancelRequested</code> flag returns <code>true</code>, a cancellation is being attempted. If the worker can cancel the activity, it should respond with <a>RespondActivityTaskCanceled</a>. Otherwise, it should ignore the cancellation request.</important> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `taskToken` __:__ `String`


-}
recordActivityTaskHeartbeat :
    String
    -> (RecordActivityTaskHeartbeatOptions -> RecordActivityTaskHeartbeatOptions)
    -> AWS.Http.UnsignedRequest ActivityTaskStatus
recordActivityTaskHeartbeat taskToken setOptions =
  let
    options = setOptions (RecordActivityTaskHeartbeatOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RecordActivityTaskHeartbeat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activityTaskStatusDecoder


{-| Options for a recordActivityTaskHeartbeat request
-}
type alias RecordActivityTaskHeartbeatOptions =
    { details : Maybe String
    }



{-| <p>Registers a new <i>activity type</i> along with its configuration settings in the specified domain.</p> <important>A <code>TypeAlreadyExists</code> fault is returned if the type already exists in the domain. You cannot change any configuration settings of the type after its registration, and it must be registered as a new version.</important> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</li> <li> <code>name</code>: String constraint. The key is <code>swf:name</code>.</li> <li> <code>version</code>: String constraint. The key is <code>swf:version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `name` __:__ `String`
* `version` __:__ `String`


-}
registerActivityType :
    String
    -> String
    -> String
    -> (RegisterActivityTypeOptions -> RegisterActivityTypeOptions)
    -> AWS.Http.UnsignedRequest ()
registerActivityType domain name version setOptions =
  let
    options = setOptions (RegisterActivityTypeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterActivityType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a registerActivityType request
-}
type alias RegisterActivityTypeOptions =
    { description : Maybe String
    , defaultTaskStartToCloseTimeout : Maybe String
    , defaultTaskHeartbeatTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultTaskScheduleToStartTimeout : Maybe String
    , defaultTaskScheduleToCloseTimeout : Maybe String
    }



{-| <p>Registers a new domain.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>You cannot use an IAM policy to control domain access for this action. The name of the domain being registered is available as the resource of this action.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `workflowExecutionRetentionPeriodInDays` __:__ `String`


-}
registerDomain :
    String
    -> String
    -> (RegisterDomainOptions -> RegisterDomainOptions)
    -> AWS.Http.UnsignedRequest ()
registerDomain name workflowExecutionRetentionPeriodInDays setOptions =
  let
    options = setOptions (RegisterDomainOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a registerDomain request
-}
type alias RegisterDomainOptions =
    { description : Maybe String
    }



{-| <p>Registers a new <i>workflow type</i> and its configuration settings in the specified domain.</p> <p>The retention period for the workflow history is set by the <a>RegisterDomain</a> action.</p> <important>If the type already exists, then a <code>TypeAlreadyExists</code> fault is returned. You cannot change the configuration settings of a workflow type once it is registered and it must be registered as a new version.</important> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li> <code>defaultTaskList.name</code>: String constraint. The key is <code>swf:defaultTaskList.name</code>.</li> <li> <code>name</code>: String constraint. The key is <code>swf:name</code>.</li> <li> <code>version</code>: String constraint. The key is <code>swf:version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `name` __:__ `String`
* `version` __:__ `String`


-}
registerWorkflowType :
    String
    -> String
    -> String
    -> (RegisterWorkflowTypeOptions -> RegisterWorkflowTypeOptions)
    -> AWS.Http.UnsignedRequest ()
registerWorkflowType domain name version setOptions =
  let
    options = setOptions (RegisterWorkflowTypeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterWorkflowType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a registerWorkflowType request
-}
type alias RegisterWorkflowTypeOptions =
    { description : Maybe String
    , defaultTaskStartToCloseTimeout : Maybe String
    , defaultExecutionStartToCloseTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultChildPolicy : Maybe ChildPolicy
    , defaultLambdaRole : Maybe String
    }



{-| <p>Records a <code>WorkflowExecutionCancelRequested</code> event in the currently running workflow execution identified by the given domain, workflowId, and runId. This logically requests the cancellation of the workflow execution as a whole. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> <note>If the runId is not specified, the <code>WorkflowExecutionCancelRequested</code> event is recorded in the history of the current open workflow execution with the specified workflowId in the domain.</note> <note>Because this action allows the workflow to properly clean up and gracefully close, it should be used instead of <a>TerminateWorkflowExecution</a> when possible.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `workflowId` __:__ `String`


-}
requestCancelWorkflowExecution :
    String
    -> String
    -> (RequestCancelWorkflowExecutionOptions -> RequestCancelWorkflowExecutionOptions)
    -> AWS.Http.UnsignedRequest ()
requestCancelWorkflowExecution domain workflowId setOptions =
  let
    options = setOptions (RequestCancelWorkflowExecutionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RequestCancelWorkflowExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a requestCancelWorkflowExecution request
-}
type alias RequestCancelWorkflowExecutionOptions =
    { runId : Maybe String
    }



{-| <p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> was successfully canceled. Additional <code>details</code> can be optionally provided using the <code>details</code> argument.</p> <p>These <code>details</code> (if provided) appear in the <code>ActivityTaskCanceled</code> event added to the workflow history.</p> <important>Only use this operation if the <code>canceled</code> flag of a <a>RecordActivityTaskHeartbeat</a> request returns <code>true</code> and if the activity can be safely undone or abandoned.</important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, RespondActivityTaskCanceled, <a>RespondActivityTaskFailed</a>, or the task has <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `taskToken` __:__ `String`


-}
respondActivityTaskCanceled :
    String
    -> (RespondActivityTaskCanceledOptions -> RespondActivityTaskCanceledOptions)
    -> AWS.Http.UnsignedRequest ()
respondActivityTaskCanceled taskToken setOptions =
  let
    options = setOptions (RespondActivityTaskCanceledOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RespondActivityTaskCanceled"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a respondActivityTaskCanceled request
-}
type alias RespondActivityTaskCanceledOptions =
    { details : Maybe String
    }



{-| <p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> completed successfully with a <code>result</code> (if provided). The <code>result</code> appears in the <code>ActivityTaskCompleted</code> event in the workflow history.</p> <important> If the requested task does not complete successfully, use <a>RespondActivityTaskFailed</a> instead. If the worker finds that the task is canceled through the <code>canceled</code> flag returned by <a>RecordActivityTaskHeartbeat</a>, it should cancel the task, clean up and then call <a>RespondActivityTaskCanceled</a>.</important> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to RespondActivityTaskCompleted, <a>RespondActivityTaskCanceled</a>, <a>RespondActivityTaskFailed</a>, or the task has <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `taskToken` __:__ `String`


-}
respondActivityTaskCompleted :
    String
    -> (RespondActivityTaskCompletedOptions -> RespondActivityTaskCompletedOptions)
    -> AWS.Http.UnsignedRequest ()
respondActivityTaskCompleted taskToken setOptions =
  let
    options = setOptions (RespondActivityTaskCompletedOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RespondActivityTaskCompleted"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a respondActivityTaskCompleted request
-}
type alias RespondActivityTaskCompletedOptions =
    { result : Maybe String
    }



{-| <p>Used by workers to tell the service that the <a>ActivityTask</a> identified by the <code>taskToken</code> has failed with <code>reason</code> (if specified). The <code>reason</code> and <code>details</code> appear in the <code>ActivityTaskFailed</code> event added to the workflow history.</p> <p>A task is considered open from the time that it is scheduled until it is closed. Therefore a task is reported as open while a worker is processing it. A task is closed after it has been specified in a call to <a>RespondActivityTaskCompleted</a>, <a>RespondActivityTaskCanceled</a>, RespondActivityTaskFailed, or the task has <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types">timed out</a>.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `taskToken` __:__ `String`


-}
respondActivityTaskFailed :
    String
    -> (RespondActivityTaskFailedOptions -> RespondActivityTaskFailedOptions)
    -> AWS.Http.UnsignedRequest ()
respondActivityTaskFailed taskToken setOptions =
  let
    options = setOptions (RespondActivityTaskFailedOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RespondActivityTaskFailed"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a respondActivityTaskFailed request
-}
type alias RespondActivityTaskFailedOptions =
    { reason : Maybe String
    , details : Maybe String
    }



{-| <p>Used by deciders to tell the service that the <a>DecisionTask</a> identified by the <code>taskToken</code> has successfully completed. The <code>decisions</code> argument specifies the list of decisions made while processing the task.</p> <p>A <code>DecisionTaskCompleted</code> event is added to the workflow history. The <code>executionContext</code> specified is attached to the event in the workflow execution history.</p> <p><b>Access Control</b></p> <p>If an IAM policy grants permission to use <code>RespondDecisionTaskCompleted</code>, it can express permissions for the list of decisions in the <code>decisions</code> parameter. Each of the decisions has one or more parameters, much like a regular API call. To allow for policies to be as readable as possible, you can express permissions on decisions as if they were actual API calls, including applying conditions to some parameters. For more information, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `taskToken` __:__ `String`


-}
respondDecisionTaskCompleted :
    String
    -> (RespondDecisionTaskCompletedOptions -> RespondDecisionTaskCompletedOptions)
    -> AWS.Http.UnsignedRequest ()
respondDecisionTaskCompleted taskToken setOptions =
  let
    options = setOptions (RespondDecisionTaskCompletedOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RespondDecisionTaskCompleted"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a respondDecisionTaskCompleted request
-}
type alias RespondDecisionTaskCompletedOptions =
    { decisions : Maybe (List Decision)
    , executionContext : Maybe String
    }



{-| <p>Records a <code>WorkflowExecutionSignaled</code> event in the workflow execution history and creates a decision task for the workflow execution identified by the given domain, workflowId and runId. The event is recorded with the specified user defined signalName and input (if provided).</p> <note> If a runId is not specified, then the <code>WorkflowExecutionSignaled</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</note> <note> If the specified workflow execution is not open, this method fails with <code>UnknownResource</code>.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `workflowId` __:__ `String`
* `signalName` __:__ `String`


-}
signalWorkflowExecution :
    String
    -> String
    -> String
    -> (SignalWorkflowExecutionOptions -> SignalWorkflowExecutionOptions)
    -> AWS.Http.UnsignedRequest ()
signalWorkflowExecution domain workflowId signalName setOptions =
  let
    options = setOptions (SignalWorkflowExecutionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SignalWorkflowExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a signalWorkflowExecution request
-}
type alias SignalWorkflowExecutionOptions =
    { runId : Maybe String
    , input : Maybe String
    }



{-| <p>Starts an execution of the workflow type in the specified domain using the provided <code>workflowId</code> and input data.</p> <p>This action returns the newly started workflow execution.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li> <code>tagList.member.0</code>: The key is <code>swf:tagList.member.0</code>.</li> <li> <code>tagList.member.1</code>: The key is <code>swf:tagList.member.1</code>.</li> <li> <code>tagList.member.2</code>: The key is <code>swf:tagList.member.2</code>.</li> <li> <code>tagList.member.3</code>: The key is <code>swf:tagList.member.3</code>.</li> <li> <code>tagList.member.4</code>: The key is <code>swf:tagList.member.4</code>.</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> <li><code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</li> <li><code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `workflowId` __:__ `String`
* `workflowType` __:__ `WorkflowType`


-}
startWorkflowExecution :
    String
    -> String
    -> WorkflowType
    -> (StartWorkflowExecutionOptions -> StartWorkflowExecutionOptions)
    -> AWS.Http.UnsignedRequest Run
startWorkflowExecution domain workflowId workflowType setOptions =
  let
    options = setOptions (StartWorkflowExecutionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StartWorkflowExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        runDecoder


{-| Options for a startWorkflowExecution request
-}
type alias StartWorkflowExecutionOptions =
    { taskList : Maybe TaskList
    , taskPriority : Maybe String
    , input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , tagList : Maybe (List String)
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : Maybe ChildPolicy
    , lambdaRole : Maybe String
    }



{-| <p>Records a <code>WorkflowExecutionTerminated</code> event and forces closure of the workflow execution identified by the given domain, runId, and workflowId. The child policy, registered with the workflow type or specified when starting this execution, is applied to any open child workflow executions of this workflow execution.</p> <important> If the identified workflow execution was in progress, it is terminated immediately.</important> <note> If a runId is not specified, then the <code>WorkflowExecutionTerminated</code> event is recorded in the history of the current open workflow with the matching workflowId in the domain.</note> <note> You should consider using <a>RequestCancelWorkflowExecution</a> action instead because it allows the workflow to gracefully close while <a>TerminateWorkflowExecution</a> does not.</note> <p><b>Access Control</b></p> <p>You can use IAM policies to control this action's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>

__Required Parameters__

* `domain` __:__ `String`
* `workflowId` __:__ `String`


-}
terminateWorkflowExecution :
    String
    -> String
    -> (TerminateWorkflowExecutionOptions -> TerminateWorkflowExecutionOptions)
    -> AWS.Http.UnsignedRequest ()
terminateWorkflowExecution domain workflowId setOptions =
  let
    options = setOptions (TerminateWorkflowExecutionOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "TerminateWorkflowExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a terminateWorkflowExecution request
-}
type alias TerminateWorkflowExecutionOptions =
    { runId : Maybe String
    , reason : Maybe String
    , details : Maybe String
    , childPolicy : Maybe ChildPolicy
    }




{-| Type of HTTP response from acti
-}
type alias ActivityTask =
    { taskToken : String
    , activityId : String
    , startedEventId : Int
    , workflowExecution : WorkflowExecution
    , activityType : ActivityType
    , input : Maybe String
    }



activityTaskDecoder : JD.Decoder ActivityTask
activityTaskDecoder =
    JDP.decode ActivityTask
        |> JDP.required "taskToken" JD.string
        |> JDP.required "activityId" JD.string
        |> JDP.required "startedEventId" JD.int
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "activityType" activityTypeDecoder
        |> JDP.optional "input" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>ActivityTaskCancelRequested</code> event.</p>
-}
type alias ActivityTaskCancelRequestedEventAttributes =
    { decisionTaskCompletedEventId : Int
    , activityId : String
    }



activityTaskCancelRequestedEventAttributesDecoder : JD.Decoder ActivityTaskCancelRequestedEventAttributes
activityTaskCancelRequestedEventAttributesDecoder =
    JDP.decode ActivityTaskCancelRequestedEventAttributes
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.required "activityId" JD.string




{-| <p>Provides details of the <code>ActivityTaskCanceled</code> event.</p>
-}
type alias ActivityTaskCanceledEventAttributes =
    { details : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    , latestCancelRequestedEventId : Maybe Int
    }



activityTaskCanceledEventAttributesDecoder : JD.Decoder ActivityTaskCanceledEventAttributes
activityTaskCanceledEventAttributesDecoder =
    JDP.decode ActivityTaskCanceledEventAttributes
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int
        |> JDP.optional "latestCancelRequestedEventId" (JD.nullable JD.int) Nothing




{-| <p>Provides details of the <code>ActivityTaskCompleted</code> event.</p>
-}
type alias ActivityTaskCompletedEventAttributes =
    { result : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    }



activityTaskCompletedEventAttributesDecoder : JD.Decoder ActivityTaskCompletedEventAttributes
activityTaskCompletedEventAttributesDecoder =
    JDP.decode ActivityTaskCompletedEventAttributes
        |> JDP.optional "result" (JD.nullable JD.string) Nothing
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details of the <code>ActivityTaskFailed</code> event.</p>
-}
type alias ActivityTaskFailedEventAttributes =
    { reason : Maybe String
    , details : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    }



activityTaskFailedEventAttributesDecoder : JD.Decoder ActivityTaskFailedEventAttributes
activityTaskFailedEventAttributesDecoder =
    JDP.decode ActivityTaskFailedEventAttributes
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details of the <code>ActivityTaskScheduled</code> event.</p>
-}
type alias ActivityTaskScheduledEventAttributes =
    { activityType : ActivityType
    , activityId : String
    , input : Maybe String
    , control : Maybe String
    , scheduleToStartTimeout : Maybe String
    , scheduleToCloseTimeout : Maybe String
    , startToCloseTimeout : Maybe String
    , taskList : TaskList
    , taskPriority : Maybe String
    , decisionTaskCompletedEventId : Int
    , heartbeatTimeout : Maybe String
    }



activityTaskScheduledEventAttributesDecoder : JD.Decoder ActivityTaskScheduledEventAttributes
activityTaskScheduledEventAttributesDecoder =
    JDP.decode ActivityTaskScheduledEventAttributes
        |> JDP.required "activityType" activityTypeDecoder
        |> JDP.required "activityId" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "control" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduleToStartTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduleToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "startToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.required "taskList" taskListDecoder
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.optional "heartbeatTimeout" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>ActivityTaskStarted</code> event.</p>
-}
type alias ActivityTaskStartedEventAttributes =
    { identity : Maybe String
    , scheduledEventId : Int
    }



activityTaskStartedEventAttributesDecoder : JD.Decoder ActivityTaskStartedEventAttributes
activityTaskStartedEventAttributesDecoder =
    JDP.decode ActivityTaskStartedEventAttributes
        |> JDP.optional "identity" (JD.nullable JD.string) Nothing
        |> JDP.required "scheduledEventId" JD.int




{-| Type of HTTP response from activityTa
-}
type alias ActivityTaskStatus =
    { cancelRequested : Bool
    }



activityTaskStatusDecoder : JD.Decoder ActivityTaskStatus
activityTaskStatusDecoder =
    JDP.decode ActivityTaskStatus
        |> JDP.required "cancelRequested" JD.bool




{-| <p>Provides details of the <code>ActivityTaskTimedOut</code> event.</p>
-}
type alias ActivityTaskTimedOutEventAttributes =
    { timeoutType : ActivityTaskTimeoutType
    , scheduledEventId : Int
    , startedEventId : Int
    , details : Maybe String
    }



activityTaskTimedOutEventAttributesDecoder : JD.Decoder ActivityTaskTimedOutEventAttributes
activityTaskTimedOutEventAttributesDecoder =
    JDP.decode ActivityTaskTimedOutEventAttributes
        |> JDP.required "timeoutType" activityTaskTimeoutTypeDecoder
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int
        |> JDP.optional "details" (JD.nullable JD.string) Nothing




{-| One of

* `ActivityTaskTimeoutType_START_TO_CLOSE`
* `ActivityTaskTimeoutType_SCHEDULE_TO_START`
* `ActivityTaskTimeoutType_SCHEDULE_TO_CLOSE`
* `ActivityTaskTimeoutType_HEARTBEAT`

-}
type ActivityTaskTimeoutType
    = ActivityTaskTimeoutType_START_TO_CLOSE
    | ActivityTaskTimeoutType_SCHEDULE_TO_START
    | ActivityTaskTimeoutType_SCHEDULE_TO_CLOSE
    | ActivityTaskTimeoutType_HEARTBEAT



activityTaskTimeoutTypeDecoder : JD.Decoder ActivityTaskTimeoutType
activityTaskTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed ActivityTaskTimeoutType_START_TO_CLOSE

                    "SCHEDULE_TO_START" ->
                        JD.succeed ActivityTaskTimeoutType_SCHEDULE_TO_START

                    "SCHEDULE_TO_CLOSE" ->
                        JD.succeed ActivityTaskTimeoutType_SCHEDULE_TO_CLOSE

                    "HEARTBEAT" ->
                        JD.succeed ActivityTaskTimeoutType_HEARTBEAT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents an activity type.</p>
-}
type alias ActivityType =
    { name : String
    , version : String
    }



activityTypeDecoder : JD.Decoder ActivityType
activityTypeDecoder =
    JDP.decode ActivityType
        |> JDP.required "name" JD.string
        |> JDP.required "version" JD.string




{-| <p>Configuration settings registered with the activity type.</p>
-}
type alias ActivityTypeConfiguration =
    { defaultTaskStartToCloseTimeout : Maybe String
    , defaultTaskHeartbeatTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultTaskScheduleToStartTimeout : Maybe String
    , defaultTaskScheduleToCloseTimeout : Maybe String
    }



activityTypeConfigurationDecoder : JD.Decoder ActivityTypeConfiguration
activityTypeConfigurationDecoder =
    JDP.decode ActivityTypeConfiguration
        |> JDP.optional "defaultTaskStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultTaskHeartbeatTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultTaskList" (JD.nullable taskListDecoder) Nothing
        |> JDP.optional "defaultTaskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultTaskScheduleToStartTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultTaskScheduleToCloseTimeout" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from activityTy
-}
type alias ActivityTypeDetail =
    { typeInfo : ActivityTypeInfo
    , configuration : ActivityTypeConfiguration
    }



activityTypeDetailDecoder : JD.Decoder ActivityTypeDetail
activityTypeDetailDecoder =
    JDP.decode ActivityTypeDetail
        |> JDP.required "typeInfo" activityTypeInfoDecoder
        |> JDP.required "configuration" activityTypeConfigurationDecoder




{-| <p>Detailed information about an activity type.</p>
-}
type alias ActivityTypeInfo =
    { activityType : ActivityType
    , status : RegistrationStatus
    , description : Maybe String
    , creationDate : Date
    , deprecationDate : Maybe Date
    }



activityTypeInfoDecoder : JD.Decoder ActivityTypeInfo
activityTypeInfoDecoder =
    JDP.decode ActivityTypeInfo
        |> JDP.required "activityType" activityTypeDecoder
        |> JDP.required "status" registrationStatusDecoder
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.required "creationDate" JDX.date
        |> JDP.optional "deprecationDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from activityT
-}
type alias ActivityTypeInfos =
    { typeInfos : (List ActivityTypeInfo)
    , nextPageToken : Maybe String
    }



activityTypeInfosDecoder : JD.Decoder ActivityTypeInfos
activityTypeInfosDecoder =
    JDP.decode ActivityTypeInfos
        |> JDP.required "typeInfos" (JD.list activityTypeInfoDecoder)
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>CancelTimer</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias CancelTimerDecisionAttributes =
    { timerId : String
    }



cancelTimerDecisionAttributesDecoder : JD.Decoder CancelTimerDecisionAttributes
cancelTimerDecisionAttributesDecoder =
    JDP.decode CancelTimerDecisionAttributes
        |> JDP.required "timerId" JD.string




{-| One of

* `CancelTimerFailedCause_TIMER_ID_UNKNOWN`
* `CancelTimerFailedCause_OPERATION_NOT_PERMITTED`

-}
type CancelTimerFailedCause
    = CancelTimerFailedCause_TIMER_ID_UNKNOWN
    | CancelTimerFailedCause_OPERATION_NOT_PERMITTED



cancelTimerFailedCauseDecoder : JD.Decoder CancelTimerFailedCause
cancelTimerFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TIMER_ID_UNKNOWN" ->
                        JD.succeed CancelTimerFailedCause_TIMER_ID_UNKNOWN

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed CancelTimerFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>CancelTimerFailed</code> event.</p>
-}
type alias CancelTimerFailedEventAttributes =
    { timerId : String
    , cause : CancelTimerFailedCause
    , decisionTaskCompletedEventId : Int
    }



cancelTimerFailedEventAttributesDecoder : JD.Decoder CancelTimerFailedEventAttributes
cancelTimerFailedEventAttributesDecoder =
    JDP.decode CancelTimerFailedEventAttributes
        |> JDP.required "timerId" JD.string
        |> JDP.required "cause" cancelTimerFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details of the <code>CancelWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias CancelWorkflowExecutionDecisionAttributes =
    { details : Maybe String
    }



cancelWorkflowExecutionDecisionAttributesDecoder : JD.Decoder CancelWorkflowExecutionDecisionAttributes
cancelWorkflowExecutionDecisionAttributesDecoder =
    JDP.decode CancelWorkflowExecutionDecisionAttributes
        |> JDP.optional "details" (JD.nullable JD.string) Nothing




{-| One of

* `CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION`
* `CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type CancelWorkflowExecutionFailedCause
    = CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED



cancelWorkflowExecutionFailedCauseDecoder : JD.Decoder CancelWorkflowExecutionFailedCause
cancelWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed CancelWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed CancelWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>CancelWorkflowExecutionFailed</code> event.</p>
-}
type alias CancelWorkflowExecutionFailedEventAttributes =
    { cause : CancelWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }



cancelWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder CancelWorkflowExecutionFailedEventAttributes
cancelWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode CancelWorkflowExecutionFailedEventAttributes
        |> JDP.required "cause" cancelWorkflowExecutionFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| One of

* `ChildPolicy_TERMINATE`
* `ChildPolicy_REQUEST_CANCEL`
* `ChildPolicy_ABANDON`

-}
type ChildPolicy
    = ChildPolicy_TERMINATE
    | ChildPolicy_REQUEST_CANCEL
    | ChildPolicy_ABANDON



childPolicyDecoder : JD.Decoder ChildPolicy
childPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TERMINATE" ->
                        JD.succeed ChildPolicy_TERMINATE

                    "REQUEST_CANCEL" ->
                        JD.succeed ChildPolicy_REQUEST_CANCEL

                    "ABANDON" ->
                        JD.succeed ChildPolicy_ABANDON


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>
-}
type alias ChildWorkflowExecutionCanceledEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , details : Maybe String
    , initiatedEventId : Int
    , startedEventId : Int
    }



childWorkflowExecutionCanceledEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionCanceledEventAttributes
childWorkflowExecutionCanceledEventAttributesDecoder =
    JDP.decode ChildWorkflowExecutionCanceledEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>
-}
type alias ChildWorkflowExecutionCompletedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , result : Maybe String
    , initiatedEventId : Int
    , startedEventId : Int
    }



childWorkflowExecutionCompletedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionCompletedEventAttributes
childWorkflowExecutionCompletedEventAttributesDecoder =
    JDP.decode ChildWorkflowExecutionCompletedEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.optional "result" (JD.nullable JD.string) Nothing
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details of the <code>ChildWorkflowExecutionFailed</code> event.</p>
-}
type alias ChildWorkflowExecutionFailedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , reason : Maybe String
    , details : Maybe String
    , initiatedEventId : Int
    , startedEventId : Int
    }



childWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionFailedEventAttributes
childWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode ChildWorkflowExecutionFailedEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details of the <code>ChildWorkflowExecutionStarted</code> event.</p>
-}
type alias ChildWorkflowExecutionStartedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , initiatedEventId : Int
    }



childWorkflowExecutionStartedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionStartedEventAttributes
childWorkflowExecutionStartedEventAttributesDecoder =
    JDP.decode ChildWorkflowExecutionStartedEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "initiatedEventId" JD.int




{-| <p>Provides details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>
-}
type alias ChildWorkflowExecutionTerminatedEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , initiatedEventId : Int
    , startedEventId : Int
    }



childWorkflowExecutionTerminatedEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionTerminatedEventAttributes
childWorkflowExecutionTerminatedEventAttributesDecoder =
    JDP.decode ChildWorkflowExecutionTerminatedEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>
-}
type alias ChildWorkflowExecutionTimedOutEventAttributes =
    { workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , timeoutType : WorkflowExecutionTimeoutType
    , initiatedEventId : Int
    , startedEventId : Int
    }



childWorkflowExecutionTimedOutEventAttributesDecoder : JD.Decoder ChildWorkflowExecutionTimedOutEventAttributes
childWorkflowExecutionTimedOutEventAttributesDecoder =
    JDP.decode ChildWorkflowExecutionTimedOutEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "timeoutType" workflowExecutionTimeoutTypeDecoder
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| One of

* `CloseStatus_COMPLETED`
* `CloseStatus_FAILED`
* `CloseStatus_CANCELED`
* `CloseStatus_TERMINATED`
* `CloseStatus_CONTINUED_AS_NEW`
* `CloseStatus_TIMED_OUT`

-}
type CloseStatus
    = CloseStatus_COMPLETED
    | CloseStatus_FAILED
    | CloseStatus_CANCELED
    | CloseStatus_TERMINATED
    | CloseStatus_CONTINUED_AS_NEW
    | CloseStatus_TIMED_OUT



closeStatusDecoder : JD.Decoder CloseStatus
closeStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COMPLETED" ->
                        JD.succeed CloseStatus_COMPLETED

                    "FAILED" ->
                        JD.succeed CloseStatus_FAILED

                    "CANCELED" ->
                        JD.succeed CloseStatus_CANCELED

                    "TERMINATED" ->
                        JD.succeed CloseStatus_TERMINATED

                    "CONTINUED_AS_NEW" ->
                        JD.succeed CloseStatus_CONTINUED_AS_NEW

                    "TIMED_OUT" ->
                        JD.succeed CloseStatus_TIMED_OUT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>
-}
type alias CloseStatusFilter =
    { status : CloseStatus
    }



closeStatusFilterDecoder : JD.Decoder CloseStatusFilter
closeStatusFilterDecoder =
    JDP.decode CloseStatusFilter
        |> JDP.required "status" closeStatusDecoder




{-| <p>Provides details of the <code>CompleteWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias CompleteWorkflowExecutionDecisionAttributes =
    { result : Maybe String
    }



completeWorkflowExecutionDecisionAttributesDecoder : JD.Decoder CompleteWorkflowExecutionDecisionAttributes
completeWorkflowExecutionDecisionAttributesDecoder =
    JDP.decode CompleteWorkflowExecutionDecisionAttributes
        |> JDP.optional "result" (JD.nullable JD.string) Nothing




{-| One of

* `CompleteWorkflowExecutionFailedCause_UNHANDLED_DECISION`
* `CompleteWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type CompleteWorkflowExecutionFailedCause
    = CompleteWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | CompleteWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED



completeWorkflowExecutionFailedCauseDecoder : JD.Decoder CompleteWorkflowExecutionFailedCause
completeWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed CompleteWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed CompleteWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>
-}
type alias CompleteWorkflowExecutionFailedEventAttributes =
    { cause : CompleteWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }



completeWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder CompleteWorkflowExecutionFailedEventAttributes
completeWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode CompleteWorkflowExecutionFailedEventAttributes
        |> JDP.required "cause" completeWorkflowExecutionFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li> <code>tag</code>: <i>Optional.</i>. A tag used to identify the workflow execution</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> <li><code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias ContinueAsNewWorkflowExecutionDecisionAttributes =
    { input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskList : Maybe TaskList
    , taskPriority : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : Maybe ChildPolicy
    , tagList : Maybe (List String)
    , workflowTypeVersion : Maybe String
    , lambdaRole : Maybe String
    }



continueAsNewWorkflowExecutionDecisionAttributesDecoder : JD.Decoder ContinueAsNewWorkflowExecutionDecisionAttributes
continueAsNewWorkflowExecutionDecisionAttributesDecoder =
    JDP.decode ContinueAsNewWorkflowExecutionDecisionAttributes
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskList" (JD.nullable taskListDecoder) Nothing
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "childPolicy" (JD.nullable childPolicyDecoder) Nothing
        |> JDP.optional "tagList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "workflowTypeVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "lambdaRole" (JD.nullable JD.string) Nothing




{-| One of

* `ContinueAsNewWorkflowExecutionFailedCause_UNHANDLED_DECISION`
* `ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED`
* `ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST`
* `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED`
* `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED`
* `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED`
* `ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED`
* `ContinueAsNewWorkflowExecutionFailedCause_CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED`
* `ContinueAsNewWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type ContinueAsNewWorkflowExecutionFailedCause
    = ContinueAsNewWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED
    | ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED
    | ContinueAsNewWorkflowExecutionFailedCause_CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED
    | ContinueAsNewWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED



continueAsNewWorkflowExecutionFailedCauseDecoder : JD.Decoder ContinueAsNewWorkflowExecutionFailedCause
continueAsNewWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "WORKFLOW_TYPE_DEPRECATED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED

                    "WORKFLOW_TYPE_DOES_NOT_EXIST" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST

                    "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_LIST_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED

                    "DEFAULT_CHILD_POLICY_UNDEFINED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED

                    "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed ContinueAsNewWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>
-}
type alias ContinueAsNewWorkflowExecutionFailedEventAttributes =
    { cause : ContinueAsNewWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }



continueAsNewWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder ContinueAsNewWorkflowExecutionFailedEventAttributes
continueAsNewWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode ContinueAsNewWorkflowExecutionFailedEventAttributes
        |> JDP.required "cause" continueAsNewWorkflowExecutionFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Specifies a decision made by the decider. A decision can be one of these types:</p> <ul> <li> <b>CancelTimer</b>: cancels a previously started timer and records a <code>TimerCanceled</code> event in the history.</li> <li> <b>CancelWorkflowExecution</b>: closes the workflow execution and records a <code>WorkflowExecutionCanceled</code> event in the history.</li> <li> <b>CompleteWorkflowExecution</b>: closes the workflow execution and records a <code>WorkflowExecutionCompleted</code> event in the history .</li> <li> <b>ContinueAsNewWorkflowExecution</b>: closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run ID. A <code>WorkflowExecutionContinuedAsNew</code> event is recorded in the history.</li> <li> <b>FailWorkflowExecution</b>: closes the workflow execution and records a <code>WorkflowExecutionFailed</code> event in the history.</li> <li> <b>RecordMarker</b>: records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they do not need to look at the history beyond the marker event.</li> <li> <b>RequestCancelActivityTask</b>: attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it will be canceled. If the activity task was already assigned to a worker, then the worker will be informed that cancellation has been requested in the response to <a>RecordActivityTaskHeartbeat</a>.</li> <li> <b>RequestCancelExternalWorkflowExecution</b>: requests that a request be made to cancel the specified external workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the history.</li> <li> <b>ScheduleActivityTask</b>: schedules an activity task.</li> <li> <b>ScheduleLambdaFunction</b>: schedules a AWS Lambda function.</li> <li> <b>SignalExternalWorkflowExecution</b>: requests a signal to be delivered to the specified external workflow execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</li> <li> <b>StartChildWorkflowExecution</b>: requests that a child workflow execution be started and records a <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a separate workflow execution with its own history.</li> <li> <b>StartTimer</b>: starts a timer for this workflow execution and records a <code>TimerStarted</code> event in the history. This timer will fire after the specified delay and record a <code>TimerFired</code> event.</li> </ul> <p><b>Access Control</b></p> <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p> <p><b>Decision Failure</b></p> <p>Decisions can fail for several reasons</p> <ul> <li>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and will therefore fail.</li> <li>A limit on your account was reached.</li> <li>The decision lacks sufficient permissions.</li> </ul> <p>One of the following events might be added to the history to indicate an error. The event attribute's <b>cause</b> parameter indicates the cause. If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p> <ul> <li> <b>ScheduleActivityTaskFailed</b>: a ScheduleActivityTask decision failed. This could happen if the activity type specified in the decision is not registered, is in a deprecated state, or the decision is not properly configured.</li> <li> <b>ScheduleLambdaFunctionFailed</b>: a ScheduleLambdaFunctionFailed decision failed. This could happen if the AWS Lambda function specified in the decision does not exist, or the AWS Lambda service's limits are exceeded.</li> <li> <b>RequestCancelActivityTaskFailed</b>: a RequestCancelActivityTask decision failed. This could happen if there is no open activity task with the specified activityId.</li> <li> <b>StartTimerFailed</b>: a StartTimer decision failed. This could happen if there is another open timer with the same timerId.</li> <li> <b>CancelTimerFailed</b>: a CancelTimer decision failed. This could happen if there is no open timer with the specified timerId.</li> <li> <b>StartChildWorkflowExecutionFailed</b>: a StartChildWorkflowExecution decision failed. This could happen if the workflow type specified is not registered, is deprecated, or the decision is not properly configured.</li> <li> <b>SignalExternalWorkflowExecutionFailed</b>: a SignalExternalWorkflowExecution decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</li> <li> <b>RequestCancelExternalWorkflowExecutionFailed</b>: a RequestCancelExternalWorkflowExecution decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</li> <li> <b>CancelWorkflowExecutionFailed</b>: a CancelWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</li> <li> <b>CompleteWorkflowExecutionFailed</b>: a CompleteWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</li> <li> <b>ContinueAsNewWorkflowExecutionFailed</b>: a ContinueAsNewWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.</li> <li> <b>FailWorkflowExecutionFailed</b>: a FailWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</li> </ul> <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p> <note>A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>, <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An UnhandledDecision fault will be returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call <a>RespondDecisionTaskCompleted</a> without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.</note> <p><b>How to code a decision</b></p> <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p> <ul> <li> <a>ScheduleActivityTaskDecisionAttributes</a> </li> <li> <a>ScheduleLambdaFunctionDecisionAttributes</a> </li> <li> <a>RequestCancelActivityTaskDecisionAttributes</a> </li> <li> <a>CompleteWorkflowExecutionDecisionAttributes</a> </li> <li> <a>FailWorkflowExecutionDecisionAttributes</a> </li> <li> <a>CancelWorkflowExecutionDecisionAttributes</a> </li> <li> <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a> </li> <li> <a>RecordMarkerDecisionAttributes</a> </li> <li> <a>StartTimerDecisionAttributes</a> </li> <li> <a>CancelTimerDecisionAttributes</a> </li> <li> <a>SignalExternalWorkflowExecutionDecisionAttributes</a> </li> <li> <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a> </li> <li> <a>StartChildWorkflowExecutionDecisionAttributes</a> </li> </ul>
-}
type alias Decision =
    { decisionType : DecisionType
    , scheduleActivityTaskDecisionAttributes : Maybe ScheduleActivityTaskDecisionAttributes
    , requestCancelActivityTaskDecisionAttributes : Maybe RequestCancelActivityTaskDecisionAttributes
    , completeWorkflowExecutionDecisionAttributes : Maybe CompleteWorkflowExecutionDecisionAttributes
    , failWorkflowExecutionDecisionAttributes : Maybe FailWorkflowExecutionDecisionAttributes
    , cancelWorkflowExecutionDecisionAttributes : Maybe CancelWorkflowExecutionDecisionAttributes
    , continueAsNewWorkflowExecutionDecisionAttributes : Maybe ContinueAsNewWorkflowExecutionDecisionAttributes
    , recordMarkerDecisionAttributes : Maybe RecordMarkerDecisionAttributes
    , startTimerDecisionAttributes : Maybe StartTimerDecisionAttributes
    , cancelTimerDecisionAttributes : Maybe CancelTimerDecisionAttributes
    , signalExternalWorkflowExecutionDecisionAttributes : Maybe SignalExternalWorkflowExecutionDecisionAttributes
    , requestCancelExternalWorkflowExecutionDecisionAttributes : Maybe RequestCancelExternalWorkflowExecutionDecisionAttributes
    , startChildWorkflowExecutionDecisionAttributes : Maybe StartChildWorkflowExecutionDecisionAttributes
    , scheduleLambdaFunctionDecisionAttributes : Maybe ScheduleLambdaFunctionDecisionAttributes
    }



decisionDecoder : JD.Decoder Decision
decisionDecoder =
    JDP.decode Decision
        |> JDP.required "decisionType" decisionTypeDecoder
        |> JDP.optional "scheduleActivityTaskDecisionAttributes" (JD.nullable scheduleActivityTaskDecisionAttributesDecoder) Nothing
        |> JDP.optional "requestCancelActivityTaskDecisionAttributes" (JD.nullable requestCancelActivityTaskDecisionAttributesDecoder) Nothing
        |> JDP.optional "completeWorkflowExecutionDecisionAttributes" (JD.nullable completeWorkflowExecutionDecisionAttributesDecoder) Nothing
        |> JDP.optional "failWorkflowExecutionDecisionAttributes" (JD.nullable failWorkflowExecutionDecisionAttributesDecoder) Nothing
        |> JDP.optional "cancelWorkflowExecutionDecisionAttributes" (JD.nullable cancelWorkflowExecutionDecisionAttributesDecoder) Nothing
        |> JDP.optional "continueAsNewWorkflowExecutionDecisionAttributes" (JD.nullable continueAsNewWorkflowExecutionDecisionAttributesDecoder) Nothing
        |> JDP.optional "recordMarkerDecisionAttributes" (JD.nullable recordMarkerDecisionAttributesDecoder) Nothing
        |> JDP.optional "startTimerDecisionAttributes" (JD.nullable startTimerDecisionAttributesDecoder) Nothing
        |> JDP.optional "cancelTimerDecisionAttributes" (JD.nullable cancelTimerDecisionAttributesDecoder) Nothing
        |> JDP.optional "signalExternalWorkflowExecutionDecisionAttributes" (JD.nullable signalExternalWorkflowExecutionDecisionAttributesDecoder) Nothing
        |> JDP.optional "requestCancelExternalWorkflowExecutionDecisionAttributes" (JD.nullable requestCancelExternalWorkflowExecutionDecisionAttributesDecoder) Nothing
        |> JDP.optional "startChildWorkflowExecutionDecisionAttributes" (JD.nullable startChildWorkflowExecutionDecisionAttributesDecoder) Nothing
        |> JDP.optional "scheduleLambdaFunctionDecisionAttributes" (JD.nullable scheduleLambdaFunctionDecisionAttributesDecoder) Nothing




{-| Type of HTTP response from deci
-}
type alias DecisionTask =
    { taskToken : String
    , startedEventId : Int
    , workflowExecution : WorkflowExecution
    , workflowType : WorkflowType
    , events : (List HistoryEvent)
    , nextPageToken : Maybe String
    , previousStartedEventId : Maybe Int
    }



decisionTaskDecoder : JD.Decoder DecisionTask
decisionTaskDecoder =
    JDP.decode DecisionTask
        |> JDP.required "taskToken" JD.string
        |> JDP.required "startedEventId" JD.int
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "events" (JD.list historyEventDecoder)
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "previousStartedEventId" (JD.nullable JD.int) Nothing




{-| <p>Provides details of the <code>DecisionTaskCompleted</code> event.</p>
-}
type alias DecisionTaskCompletedEventAttributes =
    { executionContext : Maybe String
    , scheduledEventId : Int
    , startedEventId : Int
    }



decisionTaskCompletedEventAttributesDecoder : JD.Decoder DecisionTaskCompletedEventAttributes
decisionTaskCompletedEventAttributesDecoder =
    JDP.decode DecisionTaskCompletedEventAttributes
        |> JDP.optional "executionContext" (JD.nullable JD.string) Nothing
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>
-}
type alias DecisionTaskScheduledEventAttributes =
    { taskList : TaskList
    , taskPriority : Maybe String
    , startToCloseTimeout : Maybe String
    }



decisionTaskScheduledEventAttributesDecoder : JD.Decoder DecisionTaskScheduledEventAttributes
decisionTaskScheduledEventAttributesDecoder =
    JDP.decode DecisionTaskScheduledEventAttributes
        |> JDP.required "taskList" taskListDecoder
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "startToCloseTimeout" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>DecisionTaskStarted</code> event.</p>
-}
type alias DecisionTaskStartedEventAttributes =
    { identity : Maybe String
    , scheduledEventId : Int
    }



decisionTaskStartedEventAttributesDecoder : JD.Decoder DecisionTaskStartedEventAttributes
decisionTaskStartedEventAttributesDecoder =
    JDP.decode DecisionTaskStartedEventAttributes
        |> JDP.optional "identity" (JD.nullable JD.string) Nothing
        |> JDP.required "scheduledEventId" JD.int




{-| <p>Provides details of the <code>DecisionTaskTimedOut</code> event.</p>
-}
type alias DecisionTaskTimedOutEventAttributes =
    { timeoutType : DecisionTaskTimeoutType
    , scheduledEventId : Int
    , startedEventId : Int
    }



decisionTaskTimedOutEventAttributesDecoder : JD.Decoder DecisionTaskTimedOutEventAttributes
decisionTaskTimedOutEventAttributesDecoder =
    JDP.decode DecisionTaskTimedOutEventAttributes
        |> JDP.required "timeoutType" decisionTaskTimeoutTypeDecoder
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int




{-| One of

* `DecisionTaskTimeoutType_START_TO_CLOSE`

-}
type DecisionTaskTimeoutType
    = DecisionTaskTimeoutType_START_TO_CLOSE



decisionTaskTimeoutTypeDecoder : JD.Decoder DecisionTaskTimeoutType
decisionTaskTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed DecisionTaskTimeoutType_START_TO_CLOSE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DecisionType_ScheduleActivityTask`
* `DecisionType_RequestCancelActivityTask`
* `DecisionType_CompleteWorkflowExecution`
* `DecisionType_FailWorkflowExecution`
* `DecisionType_CancelWorkflowExecution`
* `DecisionType_ContinueAsNewWorkflowExecution`
* `DecisionType_RecordMarker`
* `DecisionType_StartTimer`
* `DecisionType_CancelTimer`
* `DecisionType_SignalExternalWorkflowExecution`
* `DecisionType_RequestCancelExternalWorkflowExecution`
* `DecisionType_StartChildWorkflowExecution`
* `DecisionType_ScheduleLambdaFunction`

-}
type DecisionType
    = DecisionType_ScheduleActivityTask
    | DecisionType_RequestCancelActivityTask
    | DecisionType_CompleteWorkflowExecution
    | DecisionType_FailWorkflowExecution
    | DecisionType_CancelWorkflowExecution
    | DecisionType_ContinueAsNewWorkflowExecution
    | DecisionType_RecordMarker
    | DecisionType_StartTimer
    | DecisionType_CancelTimer
    | DecisionType_SignalExternalWorkflowExecution
    | DecisionType_RequestCancelExternalWorkflowExecution
    | DecisionType_StartChildWorkflowExecution
    | DecisionType_ScheduleLambdaFunction



decisionTypeDecoder : JD.Decoder DecisionType
decisionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ScheduleActivityTask" ->
                        JD.succeed DecisionType_ScheduleActivityTask

                    "RequestCancelActivityTask" ->
                        JD.succeed DecisionType_RequestCancelActivityTask

                    "CompleteWorkflowExecution" ->
                        JD.succeed DecisionType_CompleteWorkflowExecution

                    "FailWorkflowExecution" ->
                        JD.succeed DecisionType_FailWorkflowExecution

                    "CancelWorkflowExecution" ->
                        JD.succeed DecisionType_CancelWorkflowExecution

                    "ContinueAsNewWorkflowExecution" ->
                        JD.succeed DecisionType_ContinueAsNewWorkflowExecution

                    "RecordMarker" ->
                        JD.succeed DecisionType_RecordMarker

                    "StartTimer" ->
                        JD.succeed DecisionType_StartTimer

                    "CancelTimer" ->
                        JD.succeed DecisionType_CancelTimer

                    "SignalExternalWorkflowExecution" ->
                        JD.succeed DecisionType_SignalExternalWorkflowExecution

                    "RequestCancelExternalWorkflowExecution" ->
                        JD.succeed DecisionType_RequestCancelExternalWorkflowExecution

                    "StartChildWorkflowExecution" ->
                        JD.succeed DecisionType_StartChildWorkflowExecution

                    "ScheduleLambdaFunction" ->
                        JD.succeed DecisionType_ScheduleLambdaFunction


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias DefaultUndefinedFault =
    { message : Maybe String
    }



defaultUndefinedFaultDecoder : JD.Decoder DefaultUndefinedFault
defaultUndefinedFaultDecoder =
    JDP.decode DefaultUndefinedFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if the specified domain already exists. You will get this fault even if the existing domain is in deprecated status.</p>
-}
type alias DomainAlreadyExistsFault =
    { message : Maybe String
    }



domainAlreadyExistsFaultDecoder : JD.Decoder DomainAlreadyExistsFault
domainAlreadyExistsFaultDecoder =
    JDP.decode DomainAlreadyExistsFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains the configuration settings of a domain.</p>
-}
type alias DomainConfiguration =
    { workflowExecutionRetentionPeriodInDays : String
    }



domainConfigurationDecoder : JD.Decoder DomainConfiguration
domainConfigurationDecoder =
    JDP.decode DomainConfiguration
        |> JDP.required "workflowExecutionRetentionPeriodInDays" JD.string




{-| <p>Returned when the specified domain has been deprecated.</p>
-}
type alias DomainDeprecatedFault =
    { message : Maybe String
    }



domainDeprecatedFaultDecoder : JD.Decoder DomainDeprecatedFault
domainDeprecatedFaultDecoder =
    JDP.decode DomainDeprecatedFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from doma
-}
type alias DomainDetail =
    { domainInfo : DomainInfo
    , configuration : DomainConfiguration
    }



domainDetailDecoder : JD.Decoder DomainDetail
domainDetailDecoder =
    JDP.decode DomainDetail
        |> JDP.required "domainInfo" domainInfoDecoder
        |> JDP.required "configuration" domainConfigurationDecoder




{-| <p>Contains general information about a domain.</p>
-}
type alias DomainInfo =
    { name : String
    , status : RegistrationStatus
    , description : Maybe String
    }



domainInfoDecoder : JD.Decoder DomainInfo
domainInfoDecoder =
    JDP.decode DomainInfo
        |> JDP.required "name" JD.string
        |> JDP.required "status" registrationStatusDecoder
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from dom
-}
type alias DomainInfos =
    { domainInfos : (List DomainInfo)
    , nextPageToken : Maybe String
    }



domainInfosDecoder : JD.Decoder DomainInfos
domainInfosDecoder =
    JDP.decode DomainInfos
        |> JDP.required "domainInfos" (JD.list domainInfoDecoder)
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| One of

* `EventType_WorkflowExecutionStarted`
* `EventType_WorkflowExecutionCancelRequested`
* `EventType_WorkflowExecutionCompleted`
* `EventType_CompleteWorkflowExecutionFailed`
* `EventType_WorkflowExecutionFailed`
* `EventType_FailWorkflowExecutionFailed`
* `EventType_WorkflowExecutionTimedOut`
* `EventType_WorkflowExecutionCanceled`
* `EventType_CancelWorkflowExecutionFailed`
* `EventType_WorkflowExecutionContinuedAsNew`
* `EventType_ContinueAsNewWorkflowExecutionFailed`
* `EventType_WorkflowExecutionTerminated`
* `EventType_DecisionTaskScheduled`
* `EventType_DecisionTaskStarted`
* `EventType_DecisionTaskCompleted`
* `EventType_DecisionTaskTimedOut`
* `EventType_ActivityTaskScheduled`
* `EventType_ScheduleActivityTaskFailed`
* `EventType_ActivityTaskStarted`
* `EventType_ActivityTaskCompleted`
* `EventType_ActivityTaskFailed`
* `EventType_ActivityTaskTimedOut`
* `EventType_ActivityTaskCanceled`
* `EventType_ActivityTaskCancelRequested`
* `EventType_RequestCancelActivityTaskFailed`
* `EventType_WorkflowExecutionSignaled`
* `EventType_MarkerRecorded`
* `EventType_RecordMarkerFailed`
* `EventType_TimerStarted`
* `EventType_StartTimerFailed`
* `EventType_TimerFired`
* `EventType_TimerCanceled`
* `EventType_CancelTimerFailed`
* `EventType_StartChildWorkflowExecutionInitiated`
* `EventType_StartChildWorkflowExecutionFailed`
* `EventType_ChildWorkflowExecutionStarted`
* `EventType_ChildWorkflowExecutionCompleted`
* `EventType_ChildWorkflowExecutionFailed`
* `EventType_ChildWorkflowExecutionTimedOut`
* `EventType_ChildWorkflowExecutionCanceled`
* `EventType_ChildWorkflowExecutionTerminated`
* `EventType_SignalExternalWorkflowExecutionInitiated`
* `EventType_SignalExternalWorkflowExecutionFailed`
* `EventType_ExternalWorkflowExecutionSignaled`
* `EventType_RequestCancelExternalWorkflowExecutionInitiated`
* `EventType_RequestCancelExternalWorkflowExecutionFailed`
* `EventType_ExternalWorkflowExecutionCancelRequested`
* `EventType_LambdaFunctionScheduled`
* `EventType_LambdaFunctionStarted`
* `EventType_LambdaFunctionCompleted`
* `EventType_LambdaFunctionFailed`
* `EventType_LambdaFunctionTimedOut`
* `EventType_ScheduleLambdaFunctionFailed`
* `EventType_StartLambdaFunctionFailed`

-}
type EventType
    = EventType_WorkflowExecutionStarted
    | EventType_WorkflowExecutionCancelRequested
    | EventType_WorkflowExecutionCompleted
    | EventType_CompleteWorkflowExecutionFailed
    | EventType_WorkflowExecutionFailed
    | EventType_FailWorkflowExecutionFailed
    | EventType_WorkflowExecutionTimedOut
    | EventType_WorkflowExecutionCanceled
    | EventType_CancelWorkflowExecutionFailed
    | EventType_WorkflowExecutionContinuedAsNew
    | EventType_ContinueAsNewWorkflowExecutionFailed
    | EventType_WorkflowExecutionTerminated
    | EventType_DecisionTaskScheduled
    | EventType_DecisionTaskStarted
    | EventType_DecisionTaskCompleted
    | EventType_DecisionTaskTimedOut
    | EventType_ActivityTaskScheduled
    | EventType_ScheduleActivityTaskFailed
    | EventType_ActivityTaskStarted
    | EventType_ActivityTaskCompleted
    | EventType_ActivityTaskFailed
    | EventType_ActivityTaskTimedOut
    | EventType_ActivityTaskCanceled
    | EventType_ActivityTaskCancelRequested
    | EventType_RequestCancelActivityTaskFailed
    | EventType_WorkflowExecutionSignaled
    | EventType_MarkerRecorded
    | EventType_RecordMarkerFailed
    | EventType_TimerStarted
    | EventType_StartTimerFailed
    | EventType_TimerFired
    | EventType_TimerCanceled
    | EventType_CancelTimerFailed
    | EventType_StartChildWorkflowExecutionInitiated
    | EventType_StartChildWorkflowExecutionFailed
    | EventType_ChildWorkflowExecutionStarted
    | EventType_ChildWorkflowExecutionCompleted
    | EventType_ChildWorkflowExecutionFailed
    | EventType_ChildWorkflowExecutionTimedOut
    | EventType_ChildWorkflowExecutionCanceled
    | EventType_ChildWorkflowExecutionTerminated
    | EventType_SignalExternalWorkflowExecutionInitiated
    | EventType_SignalExternalWorkflowExecutionFailed
    | EventType_ExternalWorkflowExecutionSignaled
    | EventType_RequestCancelExternalWorkflowExecutionInitiated
    | EventType_RequestCancelExternalWorkflowExecutionFailed
    | EventType_ExternalWorkflowExecutionCancelRequested
    | EventType_LambdaFunctionScheduled
    | EventType_LambdaFunctionStarted
    | EventType_LambdaFunctionCompleted
    | EventType_LambdaFunctionFailed
    | EventType_LambdaFunctionTimedOut
    | EventType_ScheduleLambdaFunctionFailed
    | EventType_StartLambdaFunctionFailed



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WorkflowExecutionStarted" ->
                        JD.succeed EventType_WorkflowExecutionStarted

                    "WorkflowExecutionCancelRequested" ->
                        JD.succeed EventType_WorkflowExecutionCancelRequested

                    "WorkflowExecutionCompleted" ->
                        JD.succeed EventType_WorkflowExecutionCompleted

                    "CompleteWorkflowExecutionFailed" ->
                        JD.succeed EventType_CompleteWorkflowExecutionFailed

                    "WorkflowExecutionFailed" ->
                        JD.succeed EventType_WorkflowExecutionFailed

                    "FailWorkflowExecutionFailed" ->
                        JD.succeed EventType_FailWorkflowExecutionFailed

                    "WorkflowExecutionTimedOut" ->
                        JD.succeed EventType_WorkflowExecutionTimedOut

                    "WorkflowExecutionCanceled" ->
                        JD.succeed EventType_WorkflowExecutionCanceled

                    "CancelWorkflowExecutionFailed" ->
                        JD.succeed EventType_CancelWorkflowExecutionFailed

                    "WorkflowExecutionContinuedAsNew" ->
                        JD.succeed EventType_WorkflowExecutionContinuedAsNew

                    "ContinueAsNewWorkflowExecutionFailed" ->
                        JD.succeed EventType_ContinueAsNewWorkflowExecutionFailed

                    "WorkflowExecutionTerminated" ->
                        JD.succeed EventType_WorkflowExecutionTerminated

                    "DecisionTaskScheduled" ->
                        JD.succeed EventType_DecisionTaskScheduled

                    "DecisionTaskStarted" ->
                        JD.succeed EventType_DecisionTaskStarted

                    "DecisionTaskCompleted" ->
                        JD.succeed EventType_DecisionTaskCompleted

                    "DecisionTaskTimedOut" ->
                        JD.succeed EventType_DecisionTaskTimedOut

                    "ActivityTaskScheduled" ->
                        JD.succeed EventType_ActivityTaskScheduled

                    "ScheduleActivityTaskFailed" ->
                        JD.succeed EventType_ScheduleActivityTaskFailed

                    "ActivityTaskStarted" ->
                        JD.succeed EventType_ActivityTaskStarted

                    "ActivityTaskCompleted" ->
                        JD.succeed EventType_ActivityTaskCompleted

                    "ActivityTaskFailed" ->
                        JD.succeed EventType_ActivityTaskFailed

                    "ActivityTaskTimedOut" ->
                        JD.succeed EventType_ActivityTaskTimedOut

                    "ActivityTaskCanceled" ->
                        JD.succeed EventType_ActivityTaskCanceled

                    "ActivityTaskCancelRequested" ->
                        JD.succeed EventType_ActivityTaskCancelRequested

                    "RequestCancelActivityTaskFailed" ->
                        JD.succeed EventType_RequestCancelActivityTaskFailed

                    "WorkflowExecutionSignaled" ->
                        JD.succeed EventType_WorkflowExecutionSignaled

                    "MarkerRecorded" ->
                        JD.succeed EventType_MarkerRecorded

                    "RecordMarkerFailed" ->
                        JD.succeed EventType_RecordMarkerFailed

                    "TimerStarted" ->
                        JD.succeed EventType_TimerStarted

                    "StartTimerFailed" ->
                        JD.succeed EventType_StartTimerFailed

                    "TimerFired" ->
                        JD.succeed EventType_TimerFired

                    "TimerCanceled" ->
                        JD.succeed EventType_TimerCanceled

                    "CancelTimerFailed" ->
                        JD.succeed EventType_CancelTimerFailed

                    "StartChildWorkflowExecutionInitiated" ->
                        JD.succeed EventType_StartChildWorkflowExecutionInitiated

                    "StartChildWorkflowExecutionFailed" ->
                        JD.succeed EventType_StartChildWorkflowExecutionFailed

                    "ChildWorkflowExecutionStarted" ->
                        JD.succeed EventType_ChildWorkflowExecutionStarted

                    "ChildWorkflowExecutionCompleted" ->
                        JD.succeed EventType_ChildWorkflowExecutionCompleted

                    "ChildWorkflowExecutionFailed" ->
                        JD.succeed EventType_ChildWorkflowExecutionFailed

                    "ChildWorkflowExecutionTimedOut" ->
                        JD.succeed EventType_ChildWorkflowExecutionTimedOut

                    "ChildWorkflowExecutionCanceled" ->
                        JD.succeed EventType_ChildWorkflowExecutionCanceled

                    "ChildWorkflowExecutionTerminated" ->
                        JD.succeed EventType_ChildWorkflowExecutionTerminated

                    "SignalExternalWorkflowExecutionInitiated" ->
                        JD.succeed EventType_SignalExternalWorkflowExecutionInitiated

                    "SignalExternalWorkflowExecutionFailed" ->
                        JD.succeed EventType_SignalExternalWorkflowExecutionFailed

                    "ExternalWorkflowExecutionSignaled" ->
                        JD.succeed EventType_ExternalWorkflowExecutionSignaled

                    "RequestCancelExternalWorkflowExecutionInitiated" ->
                        JD.succeed EventType_RequestCancelExternalWorkflowExecutionInitiated

                    "RequestCancelExternalWorkflowExecutionFailed" ->
                        JD.succeed EventType_RequestCancelExternalWorkflowExecutionFailed

                    "ExternalWorkflowExecutionCancelRequested" ->
                        JD.succeed EventType_ExternalWorkflowExecutionCancelRequested

                    "LambdaFunctionScheduled" ->
                        JD.succeed EventType_LambdaFunctionScheduled

                    "LambdaFunctionStarted" ->
                        JD.succeed EventType_LambdaFunctionStarted

                    "LambdaFunctionCompleted" ->
                        JD.succeed EventType_LambdaFunctionCompleted

                    "LambdaFunctionFailed" ->
                        JD.succeed EventType_LambdaFunctionFailed

                    "LambdaFunctionTimedOut" ->
                        JD.succeed EventType_LambdaFunctionTimedOut

                    "ScheduleLambdaFunctionFailed" ->
                        JD.succeed EventType_ScheduleLambdaFunctionFailed

                    "StartLambdaFunctionFailed" ->
                        JD.succeed EventType_StartLambdaFunctionFailed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ExecutionStatus_OPEN`
* `ExecutionStatus_CLOSED`

-}
type ExecutionStatus
    = ExecutionStatus_OPEN
    | ExecutionStatus_CLOSED



executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OPEN" ->
                        JD.succeed ExecutionStatus_OPEN

                    "CLOSED" ->
                        JD.succeed ExecutionStatus_CLOSED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href="https://en.wikipedia.org/wiki/Unix_time">Unix Time format</a>. For example: <code>"oldestDate": 1325376070.</code></p>
-}
type alias ExecutionTimeFilter =
    { oldestDate : Date
    , latestDate : Maybe Date
    }



executionTimeFilterDecoder : JD.Decoder ExecutionTimeFilter
executionTimeFilterDecoder =
    JDP.decode ExecutionTimeFilter
        |> JDP.required "oldestDate" JDX.date
        |> JDP.optional "latestDate" (JD.nullable JDX.date) Nothing




{-| <p>Provides details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>
-}
type alias ExternalWorkflowExecutionCancelRequestedEventAttributes =
    { workflowExecution : WorkflowExecution
    , initiatedEventId : Int
    }



externalWorkflowExecutionCancelRequestedEventAttributesDecoder : JD.Decoder ExternalWorkflowExecutionCancelRequestedEventAttributes
externalWorkflowExecutionCancelRequestedEventAttributesDecoder =
    JDP.decode ExternalWorkflowExecutionCancelRequestedEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "initiatedEventId" JD.int




{-| <p> Provides details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>
-}
type alias ExternalWorkflowExecutionSignaledEventAttributes =
    { workflowExecution : WorkflowExecution
    , initiatedEventId : Int
    }



externalWorkflowExecutionSignaledEventAttributesDecoder : JD.Decoder ExternalWorkflowExecutionSignaledEventAttributes
externalWorkflowExecutionSignaledEventAttributesDecoder =
    JDP.decode ExternalWorkflowExecutionSignaledEventAttributes
        |> JDP.required "workflowExecution" workflowExecutionDecoder
        |> JDP.required "initiatedEventId" JD.int




{-| <p>Provides details of the <code>FailWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias FailWorkflowExecutionDecisionAttributes =
    { reason : Maybe String
    , details : Maybe String
    }



failWorkflowExecutionDecisionAttributesDecoder : JD.Decoder FailWorkflowExecutionDecisionAttributes
failWorkflowExecutionDecisionAttributesDecoder =
    JDP.decode FailWorkflowExecutionDecisionAttributes
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing




{-| One of

* `FailWorkflowExecutionFailedCause_UNHANDLED_DECISION`
* `FailWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type FailWorkflowExecutionFailedCause
    = FailWorkflowExecutionFailedCause_UNHANDLED_DECISION
    | FailWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED



failWorkflowExecutionFailedCauseDecoder : JD.Decoder FailWorkflowExecutionFailedCause
failWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNHANDLED_DECISION" ->
                        JD.succeed FailWorkflowExecutionFailedCause_UNHANDLED_DECISION

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed FailWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>FailWorkflowExecutionFailed</code> event.</p>
-}
type alias FailWorkflowExecutionFailedEventAttributes =
    { cause : FailWorkflowExecutionFailedCause
    , decisionTaskCompletedEventId : Int
    }



failWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder FailWorkflowExecutionFailedEventAttributes
failWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode FailWorkflowExecutionFailedEventAttributes
        |> JDP.required "cause" failWorkflowExecutionFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| Type of HTTP response from histor
-}
type alias History =
    { events : (List HistoryEvent)
    , nextPageToken : Maybe String
    }



historyDecoder : JD.Decoder History
historyDecoder =
    JDP.decode History
        |> JDP.required "events" (JD.list historyEventDecoder)
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| <p>Event within a workflow execution. A history event can be one of these types:</p> <ul> <li> <b>WorkflowExecutionStarted</b>: The workflow execution was started.</li> <li> <b>WorkflowExecutionCompleted</b>: The workflow execution was closed due to successful completion.</li> <li> <b>WorkflowExecutionFailed</b>: The workflow execution closed due to a failure.</li> <li> <b>WorkflowExecutionTimedOut</b>: The workflow execution was closed because a time out was exceeded.</li> <li> <b>WorkflowExecutionCanceled</b>: The workflow execution was successfully canceled and closed.</li> <li> <b>WorkflowExecutionTerminated</b>: The workflow execution was terminated.</li> <li> <b>WorkflowExecutionContinuedAsNew</b>: The workflow execution was closed and a new execution of the same type was created with the same workflowId.</li> <li> <b>WorkflowExecutionCancelRequested</b>: A request to cancel this workflow execution was made.</li> <li> <b>DecisionTaskScheduled</b>: A decision task was scheduled for the workflow execution.</li> <li> <b>DecisionTaskStarted</b>: The decision task was dispatched to a decider.</li> <li> <b>DecisionTaskCompleted</b>: The decider successfully completed a decision task by calling <a>RespondDecisionTaskCompleted</a>.</li> <li> <b>DecisionTaskTimedOut</b>: The decision task timed out.</li> <li> <b>ActivityTaskScheduled</b>: An activity task was scheduled for execution.</li> <li> <b>ScheduleActivityTaskFailed</b>: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.</li> <li> <b>ActivityTaskStarted</b>: The scheduled activity task was dispatched to a worker.</li> <li> <b>ActivityTaskCompleted</b>: An activity worker successfully completed an activity task by calling <a>RespondActivityTaskCompleted</a>.</li> <li> <b>ActivityTaskFailed</b>: An activity worker failed an activity task by calling <a>RespondActivityTaskFailed</a>.</li> <li> <b>ActivityTaskTimedOut</b>: The activity task timed out.</li> <li> <b>ActivityTaskCanceled</b>: The activity task was successfully canceled.</li> <li> <b>ActivityTaskCancelRequested</b>: A <code>RequestCancelActivityTask</code> decision was received by the system.</li> <li> <b>RequestCancelActivityTaskFailed</b>: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.</li> <li> <b>WorkflowExecutionSignaled</b>: An external signal was received for the workflow execution.</li> <li> <b>MarkerRecorded</b>: A marker was recorded in the workflow history as the result of a <code>RecordMarker</code> decision.</li> <li> <b>TimerStarted</b>: A timer was started for the workflow execution due to a <code>StartTimer</code> decision.</li> <li> <b>StartTimerFailed</b>: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.</li> <li> <b>TimerFired</b>: A timer, previously started for this workflow execution, fired.</li> <li> <b>TimerCanceled</b>: A timer, previously started for this workflow execution, was successfully canceled.</li> <li> <b>CancelTimerFailed</b>: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.</li> <li> <b>StartChildWorkflowExecutionInitiated</b>: A request was made to start a child workflow execution.</li> <li> <b>StartChildWorkflowExecutionFailed</b>: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.</li> <li> <b>ChildWorkflowExecutionStarted</b>: A child workflow execution was successfully started.</li> <li> <b>ChildWorkflowExecutionCompleted</b>: A child workflow execution, started by this workflow execution, completed successfully and was closed.</li> <li> <b>ChildWorkflowExecutionFailed</b>: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.</li> <li> <b>ChildWorkflowExecutionTimedOut</b>: A child workflow execution, started by this workflow execution, timed out and was closed.</li> <li> <b>ChildWorkflowExecutionCanceled</b>: A child workflow execution, started by this workflow execution, was canceled and closed.</li> <li> <b>ChildWorkflowExecutionTerminated</b>: A child workflow execution, started by this workflow execution, was terminated.</li> <li> <b>SignalExternalWorkflowExecutionInitiated</b>: A request to signal an external workflow was made.</li> <li> <b>ExternalWorkflowExecutionSignaled</b>: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.</li> <li> <b>SignalExternalWorkflowExecutionFailed</b>: The request to signal an external workflow execution failed.</li> <li> <b>RequestCancelExternalWorkflowExecutionInitiated</b>: A request was made to request the cancellation of an external workflow execution.</li> <li> <b>ExternalWorkflowExecutionCancelRequested</b>: Request to cancel an external workflow execution was successfully delivered to the target execution.</li> <li> <b>RequestCancelExternalWorkflowExecutionFailed</b>: Request to cancel an external workflow execution failed.</li> <li> <b>LambdaFunctionScheduled</b>: An AWS Lambda function was scheduled for execution.</li> <li> <b>LambdaFunctionStarted</b>: The scheduled function was invoked in the AWS Lambda service.</li> <li> <b>LambdaFunctionCompleted</b>: The AWS Lambda function successfully completed.</li> <li> <b>LambdaFunctionFailed</b>: The AWS Lambda function execution failed.</li> <li> <b>LambdaFunctionTimedOut</b>: The AWS Lambda function execution timed out.</li> <li> <b>ScheduleLambdaFunctionFailed</b>: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.</li> <li> <b>StartLambdaFunctionFailed</b>: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.</li> </ul>
-}
type alias HistoryEvent =
    { eventTimestamp : Date
    , eventType : EventType
    , eventId : Int
    , workflowExecutionStartedEventAttributes : Maybe WorkflowExecutionStartedEventAttributes
    , workflowExecutionCompletedEventAttributes : Maybe WorkflowExecutionCompletedEventAttributes
    , completeWorkflowExecutionFailedEventAttributes : Maybe CompleteWorkflowExecutionFailedEventAttributes
    , workflowExecutionFailedEventAttributes : Maybe WorkflowExecutionFailedEventAttributes
    , failWorkflowExecutionFailedEventAttributes : Maybe FailWorkflowExecutionFailedEventAttributes
    , workflowExecutionTimedOutEventAttributes : Maybe WorkflowExecutionTimedOutEventAttributes
    , workflowExecutionCanceledEventAttributes : Maybe WorkflowExecutionCanceledEventAttributes
    , cancelWorkflowExecutionFailedEventAttributes : Maybe CancelWorkflowExecutionFailedEventAttributes
    , workflowExecutionContinuedAsNewEventAttributes : Maybe WorkflowExecutionContinuedAsNewEventAttributes
    , continueAsNewWorkflowExecutionFailedEventAttributes : Maybe ContinueAsNewWorkflowExecutionFailedEventAttributes
    , workflowExecutionTerminatedEventAttributes : Maybe WorkflowExecutionTerminatedEventAttributes
    , workflowExecutionCancelRequestedEventAttributes : Maybe WorkflowExecutionCancelRequestedEventAttributes
    , decisionTaskScheduledEventAttributes : Maybe DecisionTaskScheduledEventAttributes
    , decisionTaskStartedEventAttributes : Maybe DecisionTaskStartedEventAttributes
    , decisionTaskCompletedEventAttributes : Maybe DecisionTaskCompletedEventAttributes
    , decisionTaskTimedOutEventAttributes : Maybe DecisionTaskTimedOutEventAttributes
    , activityTaskScheduledEventAttributes : Maybe ActivityTaskScheduledEventAttributes
    , activityTaskStartedEventAttributes : Maybe ActivityTaskStartedEventAttributes
    , activityTaskCompletedEventAttributes : Maybe ActivityTaskCompletedEventAttributes
    , activityTaskFailedEventAttributes : Maybe ActivityTaskFailedEventAttributes
    , activityTaskTimedOutEventAttributes : Maybe ActivityTaskTimedOutEventAttributes
    , activityTaskCanceledEventAttributes : Maybe ActivityTaskCanceledEventAttributes
    , activityTaskCancelRequestedEventAttributes : Maybe ActivityTaskCancelRequestedEventAttributes
    , workflowExecutionSignaledEventAttributes : Maybe WorkflowExecutionSignaledEventAttributes
    , markerRecordedEventAttributes : Maybe MarkerRecordedEventAttributes
    , recordMarkerFailedEventAttributes : Maybe RecordMarkerFailedEventAttributes
    , timerStartedEventAttributes : Maybe TimerStartedEventAttributes
    , timerFiredEventAttributes : Maybe TimerFiredEventAttributes
    , timerCanceledEventAttributes : Maybe TimerCanceledEventAttributes
    , startChildWorkflowExecutionInitiatedEventAttributes : Maybe StartChildWorkflowExecutionInitiatedEventAttributes
    , childWorkflowExecutionStartedEventAttributes : Maybe ChildWorkflowExecutionStartedEventAttributes
    , childWorkflowExecutionCompletedEventAttributes : Maybe ChildWorkflowExecutionCompletedEventAttributes
    , childWorkflowExecutionFailedEventAttributes : Maybe ChildWorkflowExecutionFailedEventAttributes
    , childWorkflowExecutionTimedOutEventAttributes : Maybe ChildWorkflowExecutionTimedOutEventAttributes
    , childWorkflowExecutionCanceledEventAttributes : Maybe ChildWorkflowExecutionCanceledEventAttributes
    , childWorkflowExecutionTerminatedEventAttributes : Maybe ChildWorkflowExecutionTerminatedEventAttributes
    , signalExternalWorkflowExecutionInitiatedEventAttributes : Maybe SignalExternalWorkflowExecutionInitiatedEventAttributes
    , externalWorkflowExecutionSignaledEventAttributes : Maybe ExternalWorkflowExecutionSignaledEventAttributes
    , signalExternalWorkflowExecutionFailedEventAttributes : Maybe SignalExternalWorkflowExecutionFailedEventAttributes
    , externalWorkflowExecutionCancelRequestedEventAttributes : Maybe ExternalWorkflowExecutionCancelRequestedEventAttributes
    , requestCancelExternalWorkflowExecutionInitiatedEventAttributes : Maybe RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    , requestCancelExternalWorkflowExecutionFailedEventAttributes : Maybe RequestCancelExternalWorkflowExecutionFailedEventAttributes
    , scheduleActivityTaskFailedEventAttributes : Maybe ScheduleActivityTaskFailedEventAttributes
    , requestCancelActivityTaskFailedEventAttributes : Maybe RequestCancelActivityTaskFailedEventAttributes
    , startTimerFailedEventAttributes : Maybe StartTimerFailedEventAttributes
    , cancelTimerFailedEventAttributes : Maybe CancelTimerFailedEventAttributes
    , startChildWorkflowExecutionFailedEventAttributes : Maybe StartChildWorkflowExecutionFailedEventAttributes
    , lambdaFunctionScheduledEventAttributes : Maybe LambdaFunctionScheduledEventAttributes
    , lambdaFunctionStartedEventAttributes : Maybe LambdaFunctionStartedEventAttributes
    , lambdaFunctionCompletedEventAttributes : Maybe LambdaFunctionCompletedEventAttributes
    , lambdaFunctionFailedEventAttributes : Maybe LambdaFunctionFailedEventAttributes
    , lambdaFunctionTimedOutEventAttributes : Maybe LambdaFunctionTimedOutEventAttributes
    , scheduleLambdaFunctionFailedEventAttributes : Maybe ScheduleLambdaFunctionFailedEventAttributes
    , startLambdaFunctionFailedEventAttributes : Maybe StartLambdaFunctionFailedEventAttributes
    }



historyEventDecoder : JD.Decoder HistoryEvent
historyEventDecoder =
    JDP.decode HistoryEvent
        |> JDP.required "eventTimestamp" JDX.date
        |> JDP.required "eventType" eventTypeDecoder
        |> JDP.required "eventId" JD.int
        |> JDP.optional "workflowExecutionStartedEventAttributes" (JD.nullable workflowExecutionStartedEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionCompletedEventAttributes" (JD.nullable workflowExecutionCompletedEventAttributesDecoder) Nothing
        |> JDP.optional "completeWorkflowExecutionFailedEventAttributes" (JD.nullable completeWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionFailedEventAttributes" (JD.nullable workflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "failWorkflowExecutionFailedEventAttributes" (JD.nullable failWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionTimedOutEventAttributes" (JD.nullable workflowExecutionTimedOutEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionCanceledEventAttributes" (JD.nullable workflowExecutionCanceledEventAttributesDecoder) Nothing
        |> JDP.optional "cancelWorkflowExecutionFailedEventAttributes" (JD.nullable cancelWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionContinuedAsNewEventAttributes" (JD.nullable workflowExecutionContinuedAsNewEventAttributesDecoder) Nothing
        |> JDP.optional "continueAsNewWorkflowExecutionFailedEventAttributes" (JD.nullable continueAsNewWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionTerminatedEventAttributes" (JD.nullable workflowExecutionTerminatedEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionCancelRequestedEventAttributes" (JD.nullable workflowExecutionCancelRequestedEventAttributesDecoder) Nothing
        |> JDP.optional "decisionTaskScheduledEventAttributes" (JD.nullable decisionTaskScheduledEventAttributesDecoder) Nothing
        |> JDP.optional "decisionTaskStartedEventAttributes" (JD.nullable decisionTaskStartedEventAttributesDecoder) Nothing
        |> JDP.optional "decisionTaskCompletedEventAttributes" (JD.nullable decisionTaskCompletedEventAttributesDecoder) Nothing
        |> JDP.optional "decisionTaskTimedOutEventAttributes" (JD.nullable decisionTaskTimedOutEventAttributesDecoder) Nothing
        |> JDP.optional "activityTaskScheduledEventAttributes" (JD.nullable activityTaskScheduledEventAttributesDecoder) Nothing
        |> JDP.optional "activityTaskStartedEventAttributes" (JD.nullable activityTaskStartedEventAttributesDecoder) Nothing
        |> JDP.optional "activityTaskCompletedEventAttributes" (JD.nullable activityTaskCompletedEventAttributesDecoder) Nothing
        |> JDP.optional "activityTaskFailedEventAttributes" (JD.nullable activityTaskFailedEventAttributesDecoder) Nothing
        |> JDP.optional "activityTaskTimedOutEventAttributes" (JD.nullable activityTaskTimedOutEventAttributesDecoder) Nothing
        |> JDP.optional "activityTaskCanceledEventAttributes" (JD.nullable activityTaskCanceledEventAttributesDecoder) Nothing
        |> JDP.optional "activityTaskCancelRequestedEventAttributes" (JD.nullable activityTaskCancelRequestedEventAttributesDecoder) Nothing
        |> JDP.optional "workflowExecutionSignaledEventAttributes" (JD.nullable workflowExecutionSignaledEventAttributesDecoder) Nothing
        |> JDP.optional "markerRecordedEventAttributes" (JD.nullable markerRecordedEventAttributesDecoder) Nothing
        |> JDP.optional "recordMarkerFailedEventAttributes" (JD.nullable recordMarkerFailedEventAttributesDecoder) Nothing
        |> JDP.optional "timerStartedEventAttributes" (JD.nullable timerStartedEventAttributesDecoder) Nothing
        |> JDP.optional "timerFiredEventAttributes" (JD.nullable timerFiredEventAttributesDecoder) Nothing
        |> JDP.optional "timerCanceledEventAttributes" (JD.nullable timerCanceledEventAttributesDecoder) Nothing
        |> JDP.optional "startChildWorkflowExecutionInitiatedEventAttributes" (JD.nullable startChildWorkflowExecutionInitiatedEventAttributesDecoder) Nothing
        |> JDP.optional "childWorkflowExecutionStartedEventAttributes" (JD.nullable childWorkflowExecutionStartedEventAttributesDecoder) Nothing
        |> JDP.optional "childWorkflowExecutionCompletedEventAttributes" (JD.nullable childWorkflowExecutionCompletedEventAttributesDecoder) Nothing
        |> JDP.optional "childWorkflowExecutionFailedEventAttributes" (JD.nullable childWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "childWorkflowExecutionTimedOutEventAttributes" (JD.nullable childWorkflowExecutionTimedOutEventAttributesDecoder) Nothing
        |> JDP.optional "childWorkflowExecutionCanceledEventAttributes" (JD.nullable childWorkflowExecutionCanceledEventAttributesDecoder) Nothing
        |> JDP.optional "childWorkflowExecutionTerminatedEventAttributes" (JD.nullable childWorkflowExecutionTerminatedEventAttributesDecoder) Nothing
        |> JDP.optional "signalExternalWorkflowExecutionInitiatedEventAttributes" (JD.nullable signalExternalWorkflowExecutionInitiatedEventAttributesDecoder) Nothing
        |> JDP.optional "externalWorkflowExecutionSignaledEventAttributes" (JD.nullable externalWorkflowExecutionSignaledEventAttributesDecoder) Nothing
        |> JDP.optional "signalExternalWorkflowExecutionFailedEventAttributes" (JD.nullable signalExternalWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "externalWorkflowExecutionCancelRequestedEventAttributes" (JD.nullable externalWorkflowExecutionCancelRequestedEventAttributesDecoder) Nothing
        |> JDP.optional "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" (JD.nullable requestCancelExternalWorkflowExecutionInitiatedEventAttributesDecoder) Nothing
        |> JDP.optional "requestCancelExternalWorkflowExecutionFailedEventAttributes" (JD.nullable requestCancelExternalWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "scheduleActivityTaskFailedEventAttributes" (JD.nullable scheduleActivityTaskFailedEventAttributesDecoder) Nothing
        |> JDP.optional "requestCancelActivityTaskFailedEventAttributes" (JD.nullable requestCancelActivityTaskFailedEventAttributesDecoder) Nothing
        |> JDP.optional "startTimerFailedEventAttributes" (JD.nullable startTimerFailedEventAttributesDecoder) Nothing
        |> JDP.optional "cancelTimerFailedEventAttributes" (JD.nullable cancelTimerFailedEventAttributesDecoder) Nothing
        |> JDP.optional "startChildWorkflowExecutionFailedEventAttributes" (JD.nullable startChildWorkflowExecutionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "lambdaFunctionScheduledEventAttributes" (JD.nullable lambdaFunctionScheduledEventAttributesDecoder) Nothing
        |> JDP.optional "lambdaFunctionStartedEventAttributes" (JD.nullable lambdaFunctionStartedEventAttributesDecoder) Nothing
        |> JDP.optional "lambdaFunctionCompletedEventAttributes" (JD.nullable lambdaFunctionCompletedEventAttributesDecoder) Nothing
        |> JDP.optional "lambdaFunctionFailedEventAttributes" (JD.nullable lambdaFunctionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "lambdaFunctionTimedOutEventAttributes" (JD.nullable lambdaFunctionTimedOutEventAttributesDecoder) Nothing
        |> JDP.optional "scheduleLambdaFunctionFailedEventAttributes" (JD.nullable scheduleLambdaFunctionFailedEventAttributesDecoder) Nothing
        |> JDP.optional "startLambdaFunctionFailedEventAttributes" (JD.nullable startLambdaFunctionFailedEventAttributesDecoder) Nothing




{-| <p>Provides details for the <code>LambdaFunctionCompleted</code> event.</p>
-}
type alias LambdaFunctionCompletedEventAttributes =
    { scheduledEventId : Int
    , startedEventId : Int
    , result : Maybe String
    }



lambdaFunctionCompletedEventAttributesDecoder : JD.Decoder LambdaFunctionCompletedEventAttributes
lambdaFunctionCompletedEventAttributesDecoder =
    JDP.decode LambdaFunctionCompletedEventAttributes
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int
        |> JDP.optional "result" (JD.nullable JD.string) Nothing




{-| <p>Provides details for the <code>LambdaFunctionFailed</code> event.</p>
-}
type alias LambdaFunctionFailedEventAttributes =
    { scheduledEventId : Int
    , startedEventId : Int
    , reason : Maybe String
    , details : Maybe String
    }



lambdaFunctionFailedEventAttributesDecoder : JD.Decoder LambdaFunctionFailedEventAttributes
lambdaFunctionFailedEventAttributesDecoder =
    JDP.decode LambdaFunctionFailedEventAttributes
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing




{-| <p>Provides details for the <code>LambdaFunctionScheduled</code> event.</p>
-}
type alias LambdaFunctionScheduledEventAttributes =
    { id : String
    , name : String
    , input : Maybe String
    , startToCloseTimeout : Maybe String
    , decisionTaskCompletedEventId : Int
    }



lambdaFunctionScheduledEventAttributesDecoder : JD.Decoder LambdaFunctionScheduledEventAttributes
lambdaFunctionScheduledEventAttributesDecoder =
    JDP.decode LambdaFunctionScheduledEventAttributes
        |> JDP.required "id" JD.string
        |> JDP.required "name" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "startToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details for the <code>LambdaFunctionStarted</code> event.</p>
-}
type alias LambdaFunctionStartedEventAttributes =
    { scheduledEventId : Int
    }



lambdaFunctionStartedEventAttributesDecoder : JD.Decoder LambdaFunctionStartedEventAttributes
lambdaFunctionStartedEventAttributesDecoder =
    JDP.decode LambdaFunctionStartedEventAttributes
        |> JDP.required "scheduledEventId" JD.int




{-| <p>Provides details for the <code>LambdaFunctionTimedOut</code> event.</p>
-}
type alias LambdaFunctionTimedOutEventAttributes =
    { scheduledEventId : Int
    , startedEventId : Int
    , timeoutType : Maybe LambdaFunctionTimeoutType
    }



lambdaFunctionTimedOutEventAttributesDecoder : JD.Decoder LambdaFunctionTimedOutEventAttributes
lambdaFunctionTimedOutEventAttributesDecoder =
    JDP.decode LambdaFunctionTimedOutEventAttributes
        |> JDP.required "scheduledEventId" JD.int
        |> JDP.required "startedEventId" JD.int
        |> JDP.optional "timeoutType" (JD.nullable lambdaFunctionTimeoutTypeDecoder) Nothing




{-| One of

* `LambdaFunctionTimeoutType_START_TO_CLOSE`

-}
type LambdaFunctionTimeoutType
    = LambdaFunctionTimeoutType_START_TO_CLOSE



lambdaFunctionTimeoutTypeDecoder : JD.Decoder LambdaFunctionTimeoutType
lambdaFunctionTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed LambdaFunctionTimeoutType_START_TO_CLOSE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.</p>
-}
type alias LimitExceededFault =
    { message : Maybe String
    }



limitExceededFaultDecoder : JD.Decoder LimitExceededFault
limitExceededFaultDecoder =
    JDP.decode LimitExceededFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>MarkerRecorded</code> event.</p>
-}
type alias MarkerRecordedEventAttributes =
    { markerName : String
    , details : Maybe String
    , decisionTaskCompletedEventId : Int
    }



markerRecordedEventAttributesDecoder : JD.Decoder MarkerRecordedEventAttributes
markerRecordedEventAttributesDecoder =
    JDP.decode MarkerRecordedEventAttributes
        |> JDP.required "markerName" JD.string
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Returned when the caller does not have sufficient permissions to invoke the action.</p>
-}
type alias OperationNotPermittedFault =
    { message : Maybe String
    }



operationNotPermittedFaultDecoder : JD.Decoder OperationNotPermittedFault
operationNotPermittedFaultDecoder =
    JDP.decode OperationNotPermittedFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from pendingT
-}
type alias PendingTaskCount =
    { count : Int
    , truncated : Maybe Bool
    }



pendingTaskCountDecoder : JD.Decoder PendingTaskCount
pendingTaskCountDecoder =
    JDP.decode PendingTaskCount
        |> JDP.required "count" JD.int
        |> JDP.optional "truncated" (JD.nullable JD.bool) Nothing




{-| <p>Provides details of the <code>RecordMarker</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias RecordMarkerDecisionAttributes =
    { markerName : String
    , details : Maybe String
    }



recordMarkerDecisionAttributesDecoder : JD.Decoder RecordMarkerDecisionAttributes
recordMarkerDecisionAttributesDecoder =
    JDP.decode RecordMarkerDecisionAttributes
        |> JDP.required "markerName" JD.string
        |> JDP.optional "details" (JD.nullable JD.string) Nothing




{-| One of

* `RecordMarkerFailedCause_OPERATION_NOT_PERMITTED`

-}
type RecordMarkerFailedCause
    = RecordMarkerFailedCause_OPERATION_NOT_PERMITTED



recordMarkerFailedCauseDecoder : JD.Decoder RecordMarkerFailedCause
recordMarkerFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed RecordMarkerFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>RecordMarkerFailed</code> event.</p>
-}
type alias RecordMarkerFailedEventAttributes =
    { markerName : String
    , cause : RecordMarkerFailedCause
    , decisionTaskCompletedEventId : Int
    }



recordMarkerFailedEventAttributesDecoder : JD.Decoder RecordMarkerFailedEventAttributes
recordMarkerFailedEventAttributesDecoder =
    JDP.decode RecordMarkerFailedEventAttributes
        |> JDP.required "markerName" JD.string
        |> JDP.required "cause" recordMarkerFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| One of

* `RegistrationStatus_REGISTERED`
* `RegistrationStatus_DEPRECATED`

-}
type RegistrationStatus
    = RegistrationStatus_REGISTERED
    | RegistrationStatus_DEPRECATED



registrationStatusDecoder : JD.Decoder RegistrationStatus
registrationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGISTERED" ->
                        JD.succeed RegistrationStatus_REGISTERED

                    "DEPRECATED" ->
                        JD.succeed RegistrationStatus_DEPRECATED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>RequestCancelActivityTask</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias RequestCancelActivityTaskDecisionAttributes =
    { activityId : String
    }



requestCancelActivityTaskDecisionAttributesDecoder : JD.Decoder RequestCancelActivityTaskDecisionAttributes
requestCancelActivityTaskDecisionAttributesDecoder =
    JDP.decode RequestCancelActivityTaskDecisionAttributes
        |> JDP.required "activityId" JD.string




{-| One of

* `RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN`
* `RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED`

-}
type RequestCancelActivityTaskFailedCause
    = RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN
    | RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED



requestCancelActivityTaskFailedCauseDecoder : JD.Decoder RequestCancelActivityTaskFailedCause
requestCancelActivityTaskFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVITY_ID_UNKNOWN" ->
                        JD.succeed RequestCancelActivityTaskFailedCause_ACTIVITY_ID_UNKNOWN

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed RequestCancelActivityTaskFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>RequestCancelActivityTaskFailed</code> event.</p>
-}
type alias RequestCancelActivityTaskFailedEventAttributes =
    { activityId : String
    , cause : RequestCancelActivityTaskFailedCause
    , decisionTaskCompletedEventId : Int
    }



requestCancelActivityTaskFailedEventAttributesDecoder : JD.Decoder RequestCancelActivityTaskFailedEventAttributes
requestCancelActivityTaskFailedEventAttributesDecoder =
    JDP.decode RequestCancelActivityTaskFailedEventAttributes
        |> JDP.required "activityId" JD.string
        |> JDP.required "cause" requestCancelActivityTaskFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias RequestCancelExternalWorkflowExecutionDecisionAttributes =
    { workflowId : String
    , runId : Maybe String
    , control : Maybe String
    }



requestCancelExternalWorkflowExecutionDecisionAttributesDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionDecisionAttributes
requestCancelExternalWorkflowExecutionDecisionAttributesDecoder =
    JDP.decode RequestCancelExternalWorkflowExecutionDecisionAttributes
        |> JDP.required "workflowId" JD.string
        |> JDP.optional "runId" (JD.nullable JD.string) Nothing
        |> JDP.optional "control" (JD.nullable JD.string) Nothing




{-| One of

* `RequestCancelExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION`
* `RequestCancelExternalWorkflowExecutionFailedCause_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED`
* `RequestCancelExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type RequestCancelExternalWorkflowExecutionFailedCause
    = RequestCancelExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION
    | RequestCancelExternalWorkflowExecutionFailedCause_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED
    | RequestCancelExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED



requestCancelExternalWorkflowExecutionFailedCauseDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionFailedCause
requestCancelExternalWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" ->
                        JD.succeed RequestCancelExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION

                    "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED" ->
                        JD.succeed RequestCancelExternalWorkflowExecutionFailedCause_REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed RequestCancelExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>
-}
type alias RequestCancelExternalWorkflowExecutionFailedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , cause : RequestCancelExternalWorkflowExecutionFailedCause
    , initiatedEventId : Int
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }



requestCancelExternalWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionFailedEventAttributes
requestCancelExternalWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode RequestCancelExternalWorkflowExecutionFailedEventAttributes
        |> JDP.required "workflowId" JD.string
        |> JDP.optional "runId" (JD.nullable JD.string) Nothing
        |> JDP.required "cause" requestCancelExternalWorkflowExecutionFailedCauseDecoder
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.optional "control" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>
-}
type alias RequestCancelExternalWorkflowExecutionInitiatedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }



requestCancelExternalWorkflowExecutionInitiatedEventAttributesDecoder : JD.Decoder RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
requestCancelExternalWorkflowExecutionInitiatedEventAttributesDecoder =
    JDP.decode RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
        |> JDP.required "workflowId" JD.string
        |> JDP.optional "runId" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.optional "control" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from 
-}
type alias Run =
    { runId : Maybe String
    }



runDecoder : JD.Decoder Run
runDecoder =
    JDP.decode Run
        |> JDP.optional "runId" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>ScheduleActivityTask</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</li> <li><code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias ScheduleActivityTaskDecisionAttributes =
    { activityType : ActivityType
    , activityId : String
    , control : Maybe String
    , input : Maybe String
    , scheduleToCloseTimeout : Maybe String
    , taskList : Maybe TaskList
    , taskPriority : Maybe String
    , scheduleToStartTimeout : Maybe String
    , startToCloseTimeout : Maybe String
    , heartbeatTimeout : Maybe String
    }



scheduleActivityTaskDecisionAttributesDecoder : JD.Decoder ScheduleActivityTaskDecisionAttributes
scheduleActivityTaskDecisionAttributesDecoder =
    JDP.decode ScheduleActivityTaskDecisionAttributes
        |> JDP.required "activityType" activityTypeDecoder
        |> JDP.required "activityId" JD.string
        |> JDP.optional "control" (JD.nullable JD.string) Nothing
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduleToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskList" (JD.nullable taskListDecoder) Nothing
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduleToStartTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "startToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "heartbeatTimeout" (JD.nullable JD.string) Nothing




{-| One of

* `ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DEPRECATED`
* `ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DOES_NOT_EXIST`
* `ScheduleActivityTaskFailedCause_ACTIVITY_ID_ALREADY_IN_USE`
* `ScheduleActivityTaskFailedCause_OPEN_ACTIVITIES_LIMIT_EXCEEDED`
* `ScheduleActivityTaskFailedCause_ACTIVITY_CREATION_RATE_EXCEEDED`
* `ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED`
* `ScheduleActivityTaskFailedCause_DEFAULT_TASK_LIST_UNDEFINED`
* `ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED`
* `ScheduleActivityTaskFailedCause_DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED`
* `ScheduleActivityTaskFailedCause_DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED`
* `ScheduleActivityTaskFailedCause_OPERATION_NOT_PERMITTED`

-}
type ScheduleActivityTaskFailedCause
    = ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DEPRECATED
    | ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DOES_NOT_EXIST
    | ScheduleActivityTaskFailedCause_ACTIVITY_ID_ALREADY_IN_USE
    | ScheduleActivityTaskFailedCause_OPEN_ACTIVITIES_LIMIT_EXCEEDED
    | ScheduleActivityTaskFailedCause_ACTIVITY_CREATION_RATE_EXCEEDED
    | ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_TASK_LIST_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED
    | ScheduleActivityTaskFailedCause_OPERATION_NOT_PERMITTED



scheduleActivityTaskFailedCauseDecoder : JD.Decoder ScheduleActivityTaskFailedCause
scheduleActivityTaskFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVITY_TYPE_DEPRECATED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DEPRECATED

                    "ACTIVITY_TYPE_DOES_NOT_EXIST" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_TYPE_DOES_NOT_EXIST

                    "ACTIVITY_ID_ALREADY_IN_USE" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_ID_ALREADY_IN_USE

                    "OPEN_ACTIVITIES_LIMIT_EXCEEDED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_OPEN_ACTIVITIES_LIMIT_EXCEEDED

                    "ACTIVITY_CREATION_RATE_EXCEEDED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_ACTIVITY_CREATION_RATE_EXCEEDED

                    "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_LIST_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_TASK_LIST_UNDEFINED

                    "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED

                    "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed ScheduleActivityTaskFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>ScheduleActivityTaskFailed</code> event.</p>
-}
type alias ScheduleActivityTaskFailedEventAttributes =
    { activityType : ActivityType
    , activityId : String
    , cause : ScheduleActivityTaskFailedCause
    , decisionTaskCompletedEventId : Int
    }



scheduleActivityTaskFailedEventAttributesDecoder : JD.Decoder ScheduleActivityTaskFailedEventAttributes
scheduleActivityTaskFailedEventAttributesDecoder =
    JDP.decode ScheduleActivityTaskFailedEventAttributes
        |> JDP.required "activityType" activityTypeDecoder
        |> JDP.required "activityId" JD.string
        |> JDP.required "cause" scheduleActivityTaskFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details of the <code>ScheduleLambdaFunction</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</li> <li><code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias ScheduleLambdaFunctionDecisionAttributes =
    { id : String
    , name : String
    , input : Maybe String
    , startToCloseTimeout : Maybe String
    }



scheduleLambdaFunctionDecisionAttributesDecoder : JD.Decoder ScheduleLambdaFunctionDecisionAttributes
scheduleLambdaFunctionDecisionAttributesDecoder =
    JDP.decode ScheduleLambdaFunctionDecisionAttributes
        |> JDP.required "id" JD.string
        |> JDP.required "name" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "startToCloseTimeout" (JD.nullable JD.string) Nothing




{-| One of

* `ScheduleLambdaFunctionFailedCause_ID_ALREADY_IN_USE`
* `ScheduleLambdaFunctionFailedCause_OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED`
* `ScheduleLambdaFunctionFailedCause_LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED`
* `ScheduleLambdaFunctionFailedCause_LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION`

-}
type ScheduleLambdaFunctionFailedCause
    = ScheduleLambdaFunctionFailedCause_ID_ALREADY_IN_USE
    | ScheduleLambdaFunctionFailedCause_OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED
    | ScheduleLambdaFunctionFailedCause_LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED
    | ScheduleLambdaFunctionFailedCause_LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION



scheduleLambdaFunctionFailedCauseDecoder : JD.Decoder ScheduleLambdaFunctionFailedCause
scheduleLambdaFunctionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ID_ALREADY_IN_USE" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_ID_ALREADY_IN_USE

                    "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED

                    "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED

                    "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION" ->
                        JD.succeed ScheduleLambdaFunctionFailedCause_LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details for the <code>ScheduleLambdaFunctionFailed</code> event.</p>
-}
type alias ScheduleLambdaFunctionFailedEventAttributes =
    { id : String
    , name : String
    , cause : ScheduleLambdaFunctionFailedCause
    , decisionTaskCompletedEventId : Int
    }



scheduleLambdaFunctionFailedEventAttributesDecoder : JD.Decoder ScheduleLambdaFunctionFailedEventAttributes
scheduleLambdaFunctionFailedEventAttributesDecoder =
    JDP.decode ScheduleLambdaFunctionFailedEventAttributes
        |> JDP.required "id" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "cause" scheduleLambdaFunctionFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details of the <code>SignalExternalWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias SignalExternalWorkflowExecutionDecisionAttributes =
    { workflowId : String
    , runId : Maybe String
    , signalName : String
    , input : Maybe String
    , control : Maybe String
    }



signalExternalWorkflowExecutionDecisionAttributesDecoder : JD.Decoder SignalExternalWorkflowExecutionDecisionAttributes
signalExternalWorkflowExecutionDecisionAttributesDecoder =
    JDP.decode SignalExternalWorkflowExecutionDecisionAttributes
        |> JDP.required "workflowId" JD.string
        |> JDP.optional "runId" (JD.nullable JD.string) Nothing
        |> JDP.required "signalName" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "control" (JD.nullable JD.string) Nothing




{-| One of

* `SignalExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION`
* `SignalExternalWorkflowExecutionFailedCause_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED`
* `SignalExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type SignalExternalWorkflowExecutionFailedCause
    = SignalExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION
    | SignalExternalWorkflowExecutionFailedCause_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED
    | SignalExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED



signalExternalWorkflowExecutionFailedCauseDecoder : JD.Decoder SignalExternalWorkflowExecutionFailedCause
signalExternalWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION" ->
                        JD.succeed SignalExternalWorkflowExecutionFailedCause_UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION

                    "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED" ->
                        JD.succeed SignalExternalWorkflowExecutionFailedCause_SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed SignalExternalWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>
-}
type alias SignalExternalWorkflowExecutionFailedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , cause : SignalExternalWorkflowExecutionFailedCause
    , initiatedEventId : Int
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }



signalExternalWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder SignalExternalWorkflowExecutionFailedEventAttributes
signalExternalWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode SignalExternalWorkflowExecutionFailedEventAttributes
        |> JDP.required "workflowId" JD.string
        |> JDP.optional "runId" (JD.nullable JD.string) Nothing
        |> JDP.required "cause" signalExternalWorkflowExecutionFailedCauseDecoder
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.optional "control" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>
-}
type alias SignalExternalWorkflowExecutionInitiatedEventAttributes =
    { workflowId : String
    , runId : Maybe String
    , signalName : String
    , input : Maybe String
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }



signalExternalWorkflowExecutionInitiatedEventAttributesDecoder : JD.Decoder SignalExternalWorkflowExecutionInitiatedEventAttributes
signalExternalWorkflowExecutionInitiatedEventAttributesDecoder =
    JDP.decode SignalExternalWorkflowExecutionInitiatedEventAttributes
        |> JDP.required "workflowId" JD.string
        |> JDP.optional "runId" (JD.nullable JD.string) Nothing
        |> JDP.required "signalName" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.optional "control" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>StartChildWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li> <code>tagList.member.N</code>: The key is "swf:tagList.N" where N is the tag number from 0 to 4, inclusive.</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> <li><code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</li> <li><code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias StartChildWorkflowExecutionDecisionAttributes =
    { workflowType : WorkflowType
    , workflowId : String
    , control : Maybe String
    , input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskList : Maybe TaskList
    , taskPriority : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : Maybe ChildPolicy
    , tagList : Maybe (List String)
    , lambdaRole : Maybe String
    }



startChildWorkflowExecutionDecisionAttributesDecoder : JD.Decoder StartChildWorkflowExecutionDecisionAttributes
startChildWorkflowExecutionDecisionAttributesDecoder =
    JDP.decode StartChildWorkflowExecutionDecisionAttributes
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "workflowId" JD.string
        |> JDP.optional "control" (JD.nullable JD.string) Nothing
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskList" (JD.nullable taskListDecoder) Nothing
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "childPolicy" (JD.nullable childPolicyDecoder) Nothing
        |> JDP.optional "tagList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "lambdaRole" (JD.nullable JD.string) Nothing




{-| One of

* `StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST`
* `StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED`
* `StartChildWorkflowExecutionFailedCause_OPEN_CHILDREN_LIMIT_EXCEEDED`
* `StartChildWorkflowExecutionFailedCause_OPEN_WORKFLOWS_LIMIT_EXCEEDED`
* `StartChildWorkflowExecutionFailedCause_CHILD_CREATION_RATE_EXCEEDED`
* `StartChildWorkflowExecutionFailedCause_WORKFLOW_ALREADY_RUNNING`
* `StartChildWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED`
* `StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED`
* `StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED`
* `StartChildWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED`
* `StartChildWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED`

-}
type StartChildWorkflowExecutionFailedCause
    = StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST
    | StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED
    | StartChildWorkflowExecutionFailedCause_OPEN_CHILDREN_LIMIT_EXCEEDED
    | StartChildWorkflowExecutionFailedCause_OPEN_WORKFLOWS_LIMIT_EXCEEDED
    | StartChildWorkflowExecutionFailedCause_CHILD_CREATION_RATE_EXCEEDED
    | StartChildWorkflowExecutionFailedCause_WORKFLOW_ALREADY_RUNNING
    | StartChildWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED
    | StartChildWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED



startChildWorkflowExecutionFailedCauseDecoder : JD.Decoder StartChildWorkflowExecutionFailedCause
startChildWorkflowExecutionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WORKFLOW_TYPE_DOES_NOT_EXIST" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DOES_NOT_EXIST

                    "WORKFLOW_TYPE_DEPRECATED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_WORKFLOW_TYPE_DEPRECATED

                    "OPEN_CHILDREN_LIMIT_EXCEEDED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_OPEN_CHILDREN_LIMIT_EXCEEDED

                    "OPEN_WORKFLOWS_LIMIT_EXCEEDED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_OPEN_WORKFLOWS_LIMIT_EXCEEDED

                    "CHILD_CREATION_RATE_EXCEEDED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_CHILD_CREATION_RATE_EXCEEDED

                    "WORKFLOW_ALREADY_RUNNING" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_WORKFLOW_ALREADY_RUNNING

                    "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_TASK_LIST_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_LIST_UNDEFINED

                    "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED

                    "DEFAULT_CHILD_POLICY_UNDEFINED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_DEFAULT_CHILD_POLICY_UNDEFINED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed StartChildWorkflowExecutionFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>
-}
type alias StartChildWorkflowExecutionFailedEventAttributes =
    { workflowType : WorkflowType
    , cause : StartChildWorkflowExecutionFailedCause
    , workflowId : String
    , initiatedEventId : Int
    , decisionTaskCompletedEventId : Int
    , control : Maybe String
    }



startChildWorkflowExecutionFailedEventAttributesDecoder : JD.Decoder StartChildWorkflowExecutionFailedEventAttributes
startChildWorkflowExecutionFailedEventAttributesDecoder =
    JDP.decode StartChildWorkflowExecutionFailedEventAttributes
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "cause" startChildWorkflowExecutionFailedCauseDecoder
        |> JDP.required "workflowId" JD.string
        |> JDP.required "initiatedEventId" JD.int
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.optional "control" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>
-}
type alias StartChildWorkflowExecutionInitiatedEventAttributes =
    { workflowId : String
    , workflowType : WorkflowType
    , control : Maybe String
    , input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskList : TaskList
    , taskPriority : Maybe String
    , decisionTaskCompletedEventId : Int
    , childPolicy : ChildPolicy
    , taskStartToCloseTimeout : Maybe String
    , tagList : Maybe (List String)
    , lambdaRole : Maybe String
    }



startChildWorkflowExecutionInitiatedEventAttributesDecoder : JD.Decoder StartChildWorkflowExecutionInitiatedEventAttributes
startChildWorkflowExecutionInitiatedEventAttributesDecoder =
    JDP.decode StartChildWorkflowExecutionInitiatedEventAttributes
        |> JDP.required "workflowId" JD.string
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.optional "control" (JD.nullable JD.string) Nothing
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.required "taskList" taskListDecoder
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.required "childPolicy" childPolicyDecoder
        |> JDP.optional "taskStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "tagList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "lambdaRole" (JD.nullable JD.string) Nothing




{-| One of

* `StartLambdaFunctionFailedCause_ASSUME_ROLE_FAILED`

-}
type StartLambdaFunctionFailedCause
    = StartLambdaFunctionFailedCause_ASSUME_ROLE_FAILED



startLambdaFunctionFailedCauseDecoder : JD.Decoder StartLambdaFunctionFailedCause
startLambdaFunctionFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASSUME_ROLE_FAILED" ->
                        JD.succeed StartLambdaFunctionFailedCause_ASSUME_ROLE_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details for the <code>StartLambdaFunctionFailed</code> event.</p>
-}
type alias StartLambdaFunctionFailedEventAttributes =
    { scheduledEventId : Maybe Int
    , cause : Maybe StartLambdaFunctionFailedCause
    , message : Maybe String
    }



startLambdaFunctionFailedEventAttributesDecoder : JD.Decoder StartLambdaFunctionFailedEventAttributes
startLambdaFunctionFailedEventAttributesDecoder =
    JDP.decode StartLambdaFunctionFailedEventAttributes
        |> JDP.optional "scheduledEventId" (JD.nullable JD.int) Nothing
        |> JDP.optional "cause" (JD.nullable startLambdaFunctionFailedCauseDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>StartTimer</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-}
type alias StartTimerDecisionAttributes =
    { timerId : String
    , control : Maybe String
    , startToFireTimeout : String
    }



startTimerDecisionAttributesDecoder : JD.Decoder StartTimerDecisionAttributes
startTimerDecisionAttributesDecoder =
    JDP.decode StartTimerDecisionAttributes
        |> JDP.required "timerId" JD.string
        |> JDP.optional "control" (JD.nullable JD.string) Nothing
        |> JDP.required "startToFireTimeout" JD.string




{-| One of

* `StartTimerFailedCause_TIMER_ID_ALREADY_IN_USE`
* `StartTimerFailedCause_OPEN_TIMERS_LIMIT_EXCEEDED`
* `StartTimerFailedCause_TIMER_CREATION_RATE_EXCEEDED`
* `StartTimerFailedCause_OPERATION_NOT_PERMITTED`

-}
type StartTimerFailedCause
    = StartTimerFailedCause_TIMER_ID_ALREADY_IN_USE
    | StartTimerFailedCause_OPEN_TIMERS_LIMIT_EXCEEDED
    | StartTimerFailedCause_TIMER_CREATION_RATE_EXCEEDED
    | StartTimerFailedCause_OPERATION_NOT_PERMITTED



startTimerFailedCauseDecoder : JD.Decoder StartTimerFailedCause
startTimerFailedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TIMER_ID_ALREADY_IN_USE" ->
                        JD.succeed StartTimerFailedCause_TIMER_ID_ALREADY_IN_USE

                    "OPEN_TIMERS_LIMIT_EXCEEDED" ->
                        JD.succeed StartTimerFailedCause_OPEN_TIMERS_LIMIT_EXCEEDED

                    "TIMER_CREATION_RATE_EXCEEDED" ->
                        JD.succeed StartTimerFailedCause_TIMER_CREATION_RATE_EXCEEDED

                    "OPERATION_NOT_PERMITTED" ->
                        JD.succeed StartTimerFailedCause_OPERATION_NOT_PERMITTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>StartTimerFailed</code> event.</p>
-}
type alias StartTimerFailedEventAttributes =
    { timerId : String
    , cause : StartTimerFailedCause
    , decisionTaskCompletedEventId : Int
    }



startTimerFailedEventAttributesDecoder : JD.Decoder StartTimerFailedEventAttributes
startTimerFailedEventAttributesDecoder =
    JDP.decode StartTimerFailedEventAttributes
        |> JDP.required "timerId" JD.string
        |> JDP.required "cause" startTimerFailedCauseDecoder
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Used to filter the workflow executions in visibility APIs based on a tag.</p>
-}
type alias TagFilter =
    { tag : String
    }



tagFilterDecoder : JD.Decoder TagFilter
tagFilterDecoder =
    JDP.decode TagFilter
        |> JDP.required "tag" JD.string




{-| <p>Represents a task list.</p>
-}
type alias TaskList =
    { name : String
    }



taskListDecoder : JD.Decoder TaskList
taskListDecoder =
    JDP.decode TaskList
        |> JDP.required "name" JD.string




{-| <p> Provides details of the <code>TimerCanceled</code> event. </p>
-}
type alias TimerCanceledEventAttributes =
    { timerId : String
    , startedEventId : Int
    , decisionTaskCompletedEventId : Int
    }



timerCanceledEventAttributesDecoder : JD.Decoder TimerCanceledEventAttributes
timerCanceledEventAttributesDecoder =
    JDP.decode TimerCanceledEventAttributes
        |> JDP.required "timerId" JD.string
        |> JDP.required "startedEventId" JD.int
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details of the <code>TimerFired</code> event.</p>
-}
type alias TimerFiredEventAttributes =
    { timerId : String
    , startedEventId : Int
    }



timerFiredEventAttributesDecoder : JD.Decoder TimerFiredEventAttributes
timerFiredEventAttributesDecoder =
    JDP.decode TimerFiredEventAttributes
        |> JDP.required "timerId" JD.string
        |> JDP.required "startedEventId" JD.int




{-| <p>Provides details of the <code>TimerStarted</code> event.</p>
-}
type alias TimerStartedEventAttributes =
    { timerId : String
    , control : Maybe String
    , startToFireTimeout : String
    , decisionTaskCompletedEventId : Int
    }



timerStartedEventAttributesDecoder : JD.Decoder TimerStartedEventAttributes
timerStartedEventAttributesDecoder =
    JDP.decode TimerStartedEventAttributes
        |> JDP.required "timerId" JD.string
        |> JDP.optional "control" (JD.nullable JD.string) Nothing
        |> JDP.required "startToFireTimeout" JD.string
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Returned if the type already exists in the specified domain. You will get this fault even if the existing type is in deprecated status. You can specify another version if the intent is to create a new distinct version of the type.</p>
-}
type alias TypeAlreadyExistsFault =
    { message : Maybe String
    }



typeAlreadyExistsFaultDecoder : JD.Decoder TypeAlreadyExistsFault
typeAlreadyExistsFaultDecoder =
    JDP.decode TypeAlreadyExistsFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned when the specified activity or workflow type was already deprecated.</p>
-}
type alias TypeDeprecatedFault =
    { message : Maybe String
    }



typeDeprecatedFaultDecoder : JD.Decoder TypeDeprecatedFault
typeDeprecatedFaultDecoder =
    JDP.decode TypeDeprecatedFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.</p>
-}
type alias UnknownResourceFault =
    { message : Maybe String
    }



unknownResourceFaultDecoder : JD.Decoder UnknownResourceFault
unknownResourceFaultDecoder =
    JDP.decode UnknownResourceFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Represents a workflow execution.</p>
-}
type alias WorkflowExecution =
    { workflowId : String
    , runId : String
    }



workflowExecutionDecoder : JD.Decoder WorkflowExecution
workflowExecutionDecoder =
    JDP.decode WorkflowExecution
        |> JDP.required "workflowId" JD.string
        |> JDP.required "runId" JD.string




{-| <p>Returned by <a>StartWorkflowExecution</a> when an open execution with the same workflowId is already running in the specified domain.</p>
-}
type alias WorkflowExecutionAlreadyStartedFault =
    { message : Maybe String
    }



workflowExecutionAlreadyStartedFaultDecoder : JD.Decoder WorkflowExecutionAlreadyStartedFault
workflowExecutionAlreadyStartedFaultDecoder =
    JDP.decode WorkflowExecutionAlreadyStartedFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `WorkflowExecutionCancelRequestedCause_CHILD_POLICY_APPLIED`

-}
type WorkflowExecutionCancelRequestedCause
    = WorkflowExecutionCancelRequestedCause_CHILD_POLICY_APPLIED



workflowExecutionCancelRequestedCauseDecoder : JD.Decoder WorkflowExecutionCancelRequestedCause
workflowExecutionCancelRequestedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CHILD_POLICY_APPLIED" ->
                        JD.succeed WorkflowExecutionCancelRequestedCause_CHILD_POLICY_APPLIED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>WorkflowExecutionCancelRequested</code> event.</p>
-}
type alias WorkflowExecutionCancelRequestedEventAttributes =
    { externalWorkflowExecution : Maybe WorkflowExecution
    , externalInitiatedEventId : Maybe Int
    , cause : Maybe WorkflowExecutionCancelRequestedCause
    }



workflowExecutionCancelRequestedEventAttributesDecoder : JD.Decoder WorkflowExecutionCancelRequestedEventAttributes
workflowExecutionCancelRequestedEventAttributesDecoder =
    JDP.decode WorkflowExecutionCancelRequestedEventAttributes
        |> JDP.optional "externalWorkflowExecution" (JD.nullable workflowExecutionDecoder) Nothing
        |> JDP.optional "externalInitiatedEventId" (JD.nullable JD.int) Nothing
        |> JDP.optional "cause" (JD.nullable workflowExecutionCancelRequestedCauseDecoder) Nothing




{-| <p>Provides details of the <code>WorkflowExecutionCanceled</code> event.</p>
-}
type alias WorkflowExecutionCanceledEventAttributes =
    { details : Maybe String
    , decisionTaskCompletedEventId : Int
    }



workflowExecutionCanceledEventAttributesDecoder : JD.Decoder WorkflowExecutionCanceledEventAttributes
workflowExecutionCanceledEventAttributesDecoder =
    JDP.decode WorkflowExecutionCanceledEventAttributes
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Provides details of the <code>WorkflowExecutionCompleted</code> event.</p>
-}
type alias WorkflowExecutionCompletedEventAttributes =
    { result : Maybe String
    , decisionTaskCompletedEventId : Int
    }



workflowExecutionCompletedEventAttributesDecoder : JD.Decoder WorkflowExecutionCompletedEventAttributes
workflowExecutionCompletedEventAttributesDecoder =
    JDP.decode WorkflowExecutionCompletedEventAttributes
        |> JDP.optional "result" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>
-}
type alias WorkflowExecutionConfiguration =
    { taskStartToCloseTimeout : String
    , executionStartToCloseTimeout : String
    , taskList : TaskList
    , taskPriority : Maybe String
    , childPolicy : ChildPolicy
    , lambdaRole : Maybe String
    }



workflowExecutionConfigurationDecoder : JD.Decoder WorkflowExecutionConfiguration
workflowExecutionConfigurationDecoder =
    JDP.decode WorkflowExecutionConfiguration
        |> JDP.required "taskStartToCloseTimeout" JD.string
        |> JDP.required "executionStartToCloseTimeout" JD.string
        |> JDP.required "taskList" taskListDecoder
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.required "childPolicy" childPolicyDecoder
        |> JDP.optional "lambdaRole" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>
-}
type alias WorkflowExecutionContinuedAsNewEventAttributes =
    { input : Maybe String
    , decisionTaskCompletedEventId : Int
    , newExecutionRunId : String
    , executionStartToCloseTimeout : Maybe String
    , taskList : TaskList
    , taskPriority : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : ChildPolicy
    , tagList : Maybe (List String)
    , workflowType : WorkflowType
    , lambdaRole : Maybe String
    }



workflowExecutionContinuedAsNewEventAttributesDecoder : JD.Decoder WorkflowExecutionContinuedAsNewEventAttributes
workflowExecutionContinuedAsNewEventAttributesDecoder =
    JDP.decode WorkflowExecutionContinuedAsNewEventAttributes
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int
        |> JDP.required "newExecutionRunId" JD.string
        |> JDP.optional "executionStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.required "taskList" taskListDecoder
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.required "childPolicy" childPolicyDecoder
        |> JDP.optional "tagList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.optional "lambdaRole" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from workflowExecut
-}
type alias WorkflowExecutionCount =
    { count : Int
    , truncated : Maybe Bool
    }



workflowExecutionCountDecoder : JD.Decoder WorkflowExecutionCount
workflowExecutionCountDecoder =
    JDP.decode WorkflowExecutionCount
        |> JDP.required "count" JD.int
        |> JDP.optional "truncated" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from workflowExecuti
-}
type alias WorkflowExecutionDetail =
    { executionInfo : WorkflowExecutionInfo
    , executionConfiguration : WorkflowExecutionConfiguration
    , openCounts : WorkflowExecutionOpenCounts
    , latestActivityTaskTimestamp : Maybe Date
    , latestExecutionContext : Maybe String
    }



workflowExecutionDetailDecoder : JD.Decoder WorkflowExecutionDetail
workflowExecutionDetailDecoder =
    JDP.decode WorkflowExecutionDetail
        |> JDP.required "executionInfo" workflowExecutionInfoDecoder
        |> JDP.required "executionConfiguration" workflowExecutionConfigurationDecoder
        |> JDP.required "openCounts" workflowExecutionOpenCountsDecoder
        |> JDP.optional "latestActivityTaskTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "latestExecutionContext" (JD.nullable JD.string) Nothing




{-| <p>Provides details of the <code>WorkflowExecutionFailed</code> event.</p>
-}
type alias WorkflowExecutionFailedEventAttributes =
    { reason : Maybe String
    , details : Maybe String
    , decisionTaskCompletedEventId : Int
    }



workflowExecutionFailedEventAttributesDecoder : JD.Decoder WorkflowExecutionFailedEventAttributes
workflowExecutionFailedEventAttributesDecoder =
    JDP.decode WorkflowExecutionFailedEventAttributes
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "decisionTaskCompletedEventId" JD.int




{-| <p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>
-}
type alias WorkflowExecutionFilter =
    { workflowId : String
    }



workflowExecutionFilterDecoder : JD.Decoder WorkflowExecutionFilter
workflowExecutionFilterDecoder =
    JDP.decode WorkflowExecutionFilter
        |> JDP.required "workflowId" JD.string




{-| <p>Contains information about a workflow execution. </p>
-}
type alias WorkflowExecutionInfo =
    { execution : WorkflowExecution
    , workflowType : WorkflowType
    , startTimestamp : Date
    , closeTimestamp : Maybe Date
    , executionStatus : ExecutionStatus
    , closeStatus : Maybe CloseStatus
    , parent : Maybe WorkflowExecution
    , tagList : Maybe (List String)
    , cancelRequested : Maybe Bool
    }



workflowExecutionInfoDecoder : JD.Decoder WorkflowExecutionInfo
workflowExecutionInfoDecoder =
    JDP.decode WorkflowExecutionInfo
        |> JDP.required "execution" workflowExecutionDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "startTimestamp" JDX.date
        |> JDP.optional "closeTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.required "executionStatus" executionStatusDecoder
        |> JDP.optional "closeStatus" (JD.nullable closeStatusDecoder) Nothing
        |> JDP.optional "parent" (JD.nullable workflowExecutionDecoder) Nothing
        |> JDP.optional "tagList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "cancelRequested" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from workflowExecut
-}
type alias WorkflowExecutionInfos =
    { executionInfos : (List WorkflowExecutionInfo)
    , nextPageToken : Maybe String
    }



workflowExecutionInfosDecoder : JD.Decoder WorkflowExecutionInfos
workflowExecutionInfosDecoder =
    JDP.decode WorkflowExecutionInfos
        |> JDP.required "executionInfos" (JD.list workflowExecutionInfoDecoder)
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| <p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>
-}
type alias WorkflowExecutionOpenCounts =
    { openActivityTasks : Int
    , openDecisionTasks : Int
    , openTimers : Int
    , openChildWorkflowExecutions : Int
    , openLambdaFunctions : Maybe Int
    }



workflowExecutionOpenCountsDecoder : JD.Decoder WorkflowExecutionOpenCounts
workflowExecutionOpenCountsDecoder =
    JDP.decode WorkflowExecutionOpenCounts
        |> JDP.required "openActivityTasks" JD.int
        |> JDP.required "openDecisionTasks" JD.int
        |> JDP.required "openTimers" JD.int
        |> JDP.required "openChildWorkflowExecutions" JD.int
        |> JDP.optional "openLambdaFunctions" (JD.nullable JD.int) Nothing




{-| <p>Provides details of the <code>WorkflowExecutionSignaled</code> event.</p>
-}
type alias WorkflowExecutionSignaledEventAttributes =
    { signalName : String
    , input : Maybe String
    , externalWorkflowExecution : Maybe WorkflowExecution
    , externalInitiatedEventId : Maybe Int
    }



workflowExecutionSignaledEventAttributesDecoder : JD.Decoder WorkflowExecutionSignaledEventAttributes
workflowExecutionSignaledEventAttributesDecoder =
    JDP.decode WorkflowExecutionSignaledEventAttributes
        |> JDP.required "signalName" JD.string
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "externalWorkflowExecution" (JD.nullable workflowExecutionDecoder) Nothing
        |> JDP.optional "externalInitiatedEventId" (JD.nullable JD.int) Nothing




{-| <p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>
-}
type alias WorkflowExecutionStartedEventAttributes =
    { input : Maybe String
    , executionStartToCloseTimeout : Maybe String
    , taskStartToCloseTimeout : Maybe String
    , childPolicy : ChildPolicy
    , taskList : TaskList
    , workflowType : WorkflowType
    , tagList : Maybe (List String)
    , taskPriority : Maybe String
    , continuedExecutionRunId : Maybe String
    , parentWorkflowExecution : Maybe WorkflowExecution
    , parentInitiatedEventId : Maybe Int
    , lambdaRole : Maybe String
    }



workflowExecutionStartedEventAttributesDecoder : JD.Decoder WorkflowExecutionStartedEventAttributes
workflowExecutionStartedEventAttributesDecoder =
    JDP.decode WorkflowExecutionStartedEventAttributes
        |> JDP.optional "input" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.required "childPolicy" childPolicyDecoder
        |> JDP.required "taskList" taskListDecoder
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.optional "tagList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "taskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "continuedExecutionRunId" (JD.nullable JD.string) Nothing
        |> JDP.optional "parentWorkflowExecution" (JD.nullable workflowExecutionDecoder) Nothing
        |> JDP.optional "parentInitiatedEventId" (JD.nullable JD.int) Nothing
        |> JDP.optional "lambdaRole" (JD.nullable JD.string) Nothing




{-| One of

* `WorkflowExecutionTerminatedCause_CHILD_POLICY_APPLIED`
* `WorkflowExecutionTerminatedCause_EVENT_LIMIT_EXCEEDED`
* `WorkflowExecutionTerminatedCause_OPERATOR_INITIATED`

-}
type WorkflowExecutionTerminatedCause
    = WorkflowExecutionTerminatedCause_CHILD_POLICY_APPLIED
    | WorkflowExecutionTerminatedCause_EVENT_LIMIT_EXCEEDED
    | WorkflowExecutionTerminatedCause_OPERATOR_INITIATED



workflowExecutionTerminatedCauseDecoder : JD.Decoder WorkflowExecutionTerminatedCause
workflowExecutionTerminatedCauseDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CHILD_POLICY_APPLIED" ->
                        JD.succeed WorkflowExecutionTerminatedCause_CHILD_POLICY_APPLIED

                    "EVENT_LIMIT_EXCEEDED" ->
                        JD.succeed WorkflowExecutionTerminatedCause_EVENT_LIMIT_EXCEEDED

                    "OPERATOR_INITIATED" ->
                        JD.succeed WorkflowExecutionTerminatedCause_OPERATOR_INITIATED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides details of the <code>WorkflowExecutionTerminated</code> event.</p>
-}
type alias WorkflowExecutionTerminatedEventAttributes =
    { reason : Maybe String
    , details : Maybe String
    , childPolicy : ChildPolicy
    , cause : Maybe WorkflowExecutionTerminatedCause
    }



workflowExecutionTerminatedEventAttributesDecoder : JD.Decoder WorkflowExecutionTerminatedEventAttributes
workflowExecutionTerminatedEventAttributesDecoder =
    JDP.decode WorkflowExecutionTerminatedEventAttributes
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing
        |> JDP.required "childPolicy" childPolicyDecoder
        |> JDP.optional "cause" (JD.nullable workflowExecutionTerminatedCauseDecoder) Nothing




{-| <p>Provides details of the <code>WorkflowExecutionTimedOut</code> event.</p>
-}
type alias WorkflowExecutionTimedOutEventAttributes =
    { timeoutType : WorkflowExecutionTimeoutType
    , childPolicy : ChildPolicy
    }



workflowExecutionTimedOutEventAttributesDecoder : JD.Decoder WorkflowExecutionTimedOutEventAttributes
workflowExecutionTimedOutEventAttributesDecoder =
    JDP.decode WorkflowExecutionTimedOutEventAttributes
        |> JDP.required "timeoutType" workflowExecutionTimeoutTypeDecoder
        |> JDP.required "childPolicy" childPolicyDecoder




{-| One of

* `WorkflowExecutionTimeoutType_START_TO_CLOSE`

-}
type WorkflowExecutionTimeoutType
    = WorkflowExecutionTimeoutType_START_TO_CLOSE



workflowExecutionTimeoutTypeDecoder : JD.Decoder WorkflowExecutionTimeoutType
workflowExecutionTimeoutTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "START_TO_CLOSE" ->
                        JD.succeed WorkflowExecutionTimeoutType_START_TO_CLOSE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a workflow type.</p>
-}
type alias WorkflowType =
    { name : String
    , version : String
    }



workflowTypeDecoder : JD.Decoder WorkflowType
workflowTypeDecoder =
    JDP.decode WorkflowType
        |> JDP.required "name" JD.string
        |> JDP.required "version" JD.string




{-| <p>The configuration settings of a workflow type.</p>
-}
type alias WorkflowTypeConfiguration =
    { defaultTaskStartToCloseTimeout : Maybe String
    , defaultExecutionStartToCloseTimeout : Maybe String
    , defaultTaskList : Maybe TaskList
    , defaultTaskPriority : Maybe String
    , defaultChildPolicy : Maybe ChildPolicy
    , defaultLambdaRole : Maybe String
    }



workflowTypeConfigurationDecoder : JD.Decoder WorkflowTypeConfiguration
workflowTypeConfigurationDecoder =
    JDP.decode WorkflowTypeConfiguration
        |> JDP.optional "defaultTaskStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultExecutionStartToCloseTimeout" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultTaskList" (JD.nullable taskListDecoder) Nothing
        |> JDP.optional "defaultTaskPriority" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultChildPolicy" (JD.nullable childPolicyDecoder) Nothing
        |> JDP.optional "defaultLambdaRole" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from workflowTy
-}
type alias WorkflowTypeDetail =
    { typeInfo : WorkflowTypeInfo
    , configuration : WorkflowTypeConfiguration
    }



workflowTypeDetailDecoder : JD.Decoder WorkflowTypeDetail
workflowTypeDetailDecoder =
    JDP.decode WorkflowTypeDetail
        |> JDP.required "typeInfo" workflowTypeInfoDecoder
        |> JDP.required "configuration" workflowTypeConfigurationDecoder




{-| <p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>
-}
type alias WorkflowTypeFilter =
    { name : String
    , version : Maybe String
    }



workflowTypeFilterDecoder : JD.Decoder WorkflowTypeFilter
workflowTypeFilterDecoder =
    JDP.decode WorkflowTypeFilter
        |> JDP.required "name" JD.string
        |> JDP.optional "version" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a workflow type.</p>
-}
type alias WorkflowTypeInfo =
    { workflowType : WorkflowType
    , status : RegistrationStatus
    , description : Maybe String
    , creationDate : Date
    , deprecationDate : Maybe Date
    }



workflowTypeInfoDecoder : JD.Decoder WorkflowTypeInfo
workflowTypeInfoDecoder =
    JDP.decode WorkflowTypeInfo
        |> JDP.required "workflowType" workflowTypeDecoder
        |> JDP.required "status" registrationStatusDecoder
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.required "creationDate" JDX.date
        |> JDP.optional "deprecationDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from workflowT
-}
type alias WorkflowTypeInfos =
    { typeInfos : (List WorkflowTypeInfo)
    , nextPageToken : Maybe String
    }



workflowTypeInfosDecoder : JD.Decoder WorkflowTypeInfos
workflowTypeInfosDecoder =
    JDP.decode WorkflowTypeInfos
        |> JDP.required "typeInfos" (JD.list workflowTypeInfoDecoder)
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




