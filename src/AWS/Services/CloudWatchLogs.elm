module AWS.Services.CloudWatchLogs
    exposing
        ( config
        , cancelExportTask
        , createExportTask
        , CreateExportTaskOptions
        , createLogGroup
        , CreateLogGroupOptions
        , createLogStream
        , deleteDestination
        , deleteLogGroup
        , deleteLogStream
        , deleteMetricFilter
        , deleteRetentionPolicy
        , deleteSubscriptionFilter
        , describeDestinations
        , DescribeDestinationsOptions
        , describeExportTasks
        , DescribeExportTasksOptions
        , describeLogGroups
        , DescribeLogGroupsOptions
        , describeLogStreams
        , DescribeLogStreamsOptions
        , describeMetricFilters
        , DescribeMetricFiltersOptions
        , describeSubscriptionFilters
        , DescribeSubscriptionFiltersOptions
        , filterLogEvents
        , FilterLogEventsOptions
        , getLogEvents
        , GetLogEventsOptions
        , listTagsLogGroup
        , putDestination
        , putDestinationPolicy
        , putLogEvents
        , PutLogEventsOptions
        , putMetricFilter
        , putRetentionPolicy
        , putSubscriptionFilter
        , PutSubscriptionFilterOptions
        , tagLogGroup
        , testMetricFilter
        , untagLogGroup
        , CreateExportTaskResponse
        , DataAlreadyAcceptedException
        , DescribeDestinationsResponse
        , DescribeExportTasksResponse
        , DescribeLogGroupsResponse
        , DescribeLogStreamsResponse
        , DescribeMetricFiltersResponse
        , DescribeSubscriptionFiltersResponse
        , Destination
        , Distribution(..)
        , ExportTask
        , ExportTaskExecutionInfo
        , ExportTaskStatus
        , ExportTaskStatusCode(..)
        , FilterLogEventsResponse
        , FilteredLogEvent
        , GetLogEventsResponse
        , InputLogEvent
        , InvalidOperationException
        , InvalidParameterException
        , InvalidSequenceTokenException
        , LimitExceededException
        , ListTagsLogGroupResponse
        , LogGroup
        , LogStream
        , MetricFilter
        , MetricFilterMatchRecord
        , MetricTransformation
        , OperationAbortedException
        , OrderBy(..)
        , OutputLogEvent
        , PutDestinationResponse
        , PutLogEventsResponse
        , RejectedLogEventsInfo
        , ResourceAlreadyExistsException
        , ResourceNotFoundException
        , SearchedLogStream
        , ServiceUnavailableException
        , SubscriptionFilter
        , TestMetricFilterResponse
        )

{-| <p>You can use Amazon CloudWatch Logs to monitor, store, and access your log files from EC2 instances, Amazon CloudTrail, or other sources. You can then retrieve the associated log data from CloudWatch Logs using the Amazon CloudWatch console, the CloudWatch Logs commands in the AWS CLI, the CloudWatch Logs API, or the CloudWatch Logs SDK.</p> <p>You can use CloudWatch Logs to:</p> <ul> <li> <p> <b>Monitor Logs from Amazon EC2 Instances in Real-time</b>: You can use CloudWatch Logs to monitor applications and systems using log data. For example, CloudWatch Logs can track the number of errors that occur in your application logs and send you a notification whenever the rate of errors exceeds a threshold you specify. CloudWatch Logs uses your log data for monitoring; so, no code changes are required. For example, you can monitor application logs for specific literal terms (such as "NullReferenceException") or count the number of occurrences of a literal term at a particular position in log data (such as "404" status codes in an Apache access log). When the term you are searching for is found, CloudWatch Logs reports the data to a Amazon CloudWatch metric that you specify.</p> </li> <li> <p> <b>Monitor Amazon CloudTrail Logged Events</b>: You can create alarms in Amazon CloudWatch and receive notifications of particular API activity as captured by CloudTrail and use the notification to perform troubleshooting.</p> </li> <li> <p> <b>Archive Log Data</b>: You can use CloudWatch Logs to store your log data in highly durable storage. You can change the log retention setting so that any log events older than this setting are automatically deleted. The CloudWatch Logs agent makes it easy to quickly send both rotated and non-rotated log data off of a host and into the log service. You can then access the raw log data when you need it.</p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [cancelExportTask](#cancelExportTask)
* [createExportTask](#createExportTask)
* [CreateExportTaskOptions](#CreateExportTaskOptions)
* [createLogGroup](#createLogGroup)
* [CreateLogGroupOptions](#CreateLogGroupOptions)
* [createLogStream](#createLogStream)
* [deleteDestination](#deleteDestination)
* [deleteLogGroup](#deleteLogGroup)
* [deleteLogStream](#deleteLogStream)
* [deleteMetricFilter](#deleteMetricFilter)
* [deleteRetentionPolicy](#deleteRetentionPolicy)
* [deleteSubscriptionFilter](#deleteSubscriptionFilter)
* [describeDestinations](#describeDestinations)
* [DescribeDestinationsOptions](#DescribeDestinationsOptions)
* [describeExportTasks](#describeExportTasks)
* [DescribeExportTasksOptions](#DescribeExportTasksOptions)
* [describeLogGroups](#describeLogGroups)
* [DescribeLogGroupsOptions](#DescribeLogGroupsOptions)
* [describeLogStreams](#describeLogStreams)
* [DescribeLogStreamsOptions](#DescribeLogStreamsOptions)
* [describeMetricFilters](#describeMetricFilters)
* [DescribeMetricFiltersOptions](#DescribeMetricFiltersOptions)
* [describeSubscriptionFilters](#describeSubscriptionFilters)
* [DescribeSubscriptionFiltersOptions](#DescribeSubscriptionFiltersOptions)
* [filterLogEvents](#filterLogEvents)
* [FilterLogEventsOptions](#FilterLogEventsOptions)
* [getLogEvents](#getLogEvents)
* [GetLogEventsOptions](#GetLogEventsOptions)
* [listTagsLogGroup](#listTagsLogGroup)
* [putDestination](#putDestination)
* [putDestinationPolicy](#putDestinationPolicy)
* [putLogEvents](#putLogEvents)
* [PutLogEventsOptions](#PutLogEventsOptions)
* [putMetricFilter](#putMetricFilter)
* [putRetentionPolicy](#putRetentionPolicy)
* [putSubscriptionFilter](#putSubscriptionFilter)
* [PutSubscriptionFilterOptions](#PutSubscriptionFilterOptions)
* [tagLogGroup](#tagLogGroup)
* [testMetricFilter](#testMetricFilter)
* [untagLogGroup](#untagLogGroup)


@docs cancelExportTask,createExportTask,CreateExportTaskOptions,createLogGroup,CreateLogGroupOptions,createLogStream,deleteDestination,deleteLogGroup,deleteLogStream,deleteMetricFilter,deleteRetentionPolicy,deleteSubscriptionFilter,describeDestinations,DescribeDestinationsOptions,describeExportTasks,DescribeExportTasksOptions,describeLogGroups,DescribeLogGroupsOptions,describeLogStreams,DescribeLogStreamsOptions,describeMetricFilters,DescribeMetricFiltersOptions,describeSubscriptionFilters,DescribeSubscriptionFiltersOptions,filterLogEvents,FilterLogEventsOptions,getLogEvents,GetLogEventsOptions,listTagsLogGroup,putDestination,putDestinationPolicy,putLogEvents,PutLogEventsOptions,putMetricFilter,putRetentionPolicy,putSubscriptionFilter,PutSubscriptionFilterOptions,tagLogGroup,testMetricFilter,untagLogGroup

## Responses

* [CreateExportTaskResponse](#CreateExportTaskResponse)
* [DescribeDestinationsResponse](#DescribeDestinationsResponse)
* [DescribeExportTasksResponse](#DescribeExportTasksResponse)
* [DescribeLogGroupsResponse](#DescribeLogGroupsResponse)
* [DescribeLogStreamsResponse](#DescribeLogStreamsResponse)
* [DescribeMetricFiltersResponse](#DescribeMetricFiltersResponse)
* [DescribeSubscriptionFiltersResponse](#DescribeSubscriptionFiltersResponse)
* [FilterLogEventsResponse](#FilterLogEventsResponse)
* [GetLogEventsResponse](#GetLogEventsResponse)
* [ListTagsLogGroupResponse](#ListTagsLogGroupResponse)
* [PutDestinationResponse](#PutDestinationResponse)
* [PutLogEventsResponse](#PutLogEventsResponse)
* [TestMetricFilterResponse](#TestMetricFilterResponse)


@docs CreateExportTaskResponse,DescribeDestinationsResponse,DescribeExportTasksResponse,DescribeLogGroupsResponse,DescribeLogStreamsResponse,DescribeMetricFiltersResponse,DescribeSubscriptionFiltersResponse,FilterLogEventsResponse,GetLogEventsResponse,ListTagsLogGroupResponse,PutDestinationResponse,PutLogEventsResponse,TestMetricFilterResponse

## Records

* [Destination](#Destination)
* [ExportTask](#ExportTask)
* [ExportTaskExecutionInfo](#ExportTaskExecutionInfo)
* [ExportTaskStatus](#ExportTaskStatus)
* [FilteredLogEvent](#FilteredLogEvent)
* [InputLogEvent](#InputLogEvent)
* [LogGroup](#LogGroup)
* [LogStream](#LogStream)
* [MetricFilter](#MetricFilter)
* [MetricFilterMatchRecord](#MetricFilterMatchRecord)
* [MetricTransformation](#MetricTransformation)
* [OutputLogEvent](#OutputLogEvent)
* [RejectedLogEventsInfo](#RejectedLogEventsInfo)
* [SearchedLogStream](#SearchedLogStream)
* [SubscriptionFilter](#SubscriptionFilter)


@docs Destination,ExportTask,ExportTaskExecutionInfo,ExportTaskStatus,FilteredLogEvent,InputLogEvent,LogGroup,LogStream,MetricFilter,MetricFilterMatchRecord,MetricTransformation,OutputLogEvent,RejectedLogEventsInfo,SearchedLogStream,SubscriptionFilter

## Unions

* [Distribution](#Distribution)
* [ExportTaskStatusCode](#ExportTaskStatusCode)
* [OrderBy](#OrderBy)


@docs Distribution,ExportTaskStatusCode,OrderBy

## Exceptions

* [DataAlreadyAcceptedException](#DataAlreadyAcceptedException)
* [InvalidOperationException](#InvalidOperationException)
* [InvalidParameterException](#InvalidParameterException)
* [InvalidSequenceTokenException](#InvalidSequenceTokenException)
* [LimitExceededException](#LimitExceededException)
* [OperationAbortedException](#OperationAbortedException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ServiceUnavailableException](#ServiceUnavailableException)


@docs DataAlreadyAcceptedException,InvalidOperationException,InvalidParameterException,InvalidSequenceTokenException,LimitExceededException,OperationAbortedException,ResourceAlreadyExistsException,ResourceNotFoundException,ServiceUnavailableException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "logs"
        "2014-03-28"
        "1.1"
        "AWSLOGS_20140328."
        "logs.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Cancels the specified export task.</p> <p>The task must be in the <code>PENDING</code> or <code>RUNNING</code> state.</p>

__Required Parameters__

* `taskId` __:__ `String`


-}
cancelExportTask :
    String
    -> AWS.Request ()
cancelExportTask taskId =
    AWS.Http.unsignedRequest
        "CancelExportTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket.</p> <p>This is an asynchronous call. If all the required information is provided, this operation initiates an export task and responds with the ID of the task. After the task has started, you can use <a>DescribeExportTasks</a> to get the status of the export task. Each account can only have one active (<code>RUNNING</code> or <code>PENDING</code>) export task at a time. To cancel an export task, use <a>CancelExportTask</a>.</p> <p>You can export logs from multiple log groups or multiple time ranges to the same S3 bucket. To separate out log data for each export task, you can specify a prefix that will be used as the Amazon S3 key prefix for all exported objects.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `from` __:__ `Int`
* `to` __:__ `Int`
* `destination` __:__ `String`


-}
createExportTask :
    String
    -> Int
    -> Int
    -> String
    -> (CreateExportTaskOptions -> CreateExportTaskOptions)
    -> AWS.Request CreateExportTaskResponse
createExportTask logGroupName from to destination setOptions =
  let
    options = setOptions (CreateExportTaskOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateExportTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createExportTaskResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createExportTask request
-}
type alias CreateExportTaskOptions =
    { taskName : Maybe String
    , logStreamNamePrefix : Maybe String
    , destinationPrefix : Maybe String
    }



{-| <p>Creates a log group with the specified name.</p> <p>You can create up to 5000 log groups per account.</p> <p>You must use the following guidelines when naming a log group:</p> <ul> <li> <p>Log group names must be unique within a region for an AWS account.</p> </li> <li> <p>Log group names can be between 1 and 512 characters long.</p> </li> <li> <p>Log group names consist of the following characters: a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.' (period).</p> </li> </ul>

__Required Parameters__

* `logGroupName` __:__ `String`


-}
createLogGroup :
    String
    -> (CreateLogGroupOptions -> CreateLogGroupOptions)
    -> AWS.Request ()
createLogGroup logGroupName setOptions =
  let
    options = setOptions (CreateLogGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLogGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a createLogGroup request
-}
type alias CreateLogGroupOptions =
    { tags : Maybe (Dict String String)
    }



{-| <p>Creates a log stream for the specified log group.</p> <p>There is no limit on the number of log streams that you can create for a log group.</p> <p>You must use the following guidelines when naming a log stream:</p> <ul> <li> <p>Log stream names must be unique within the log group.</p> </li> <li> <p>Log stream names can be between 1 and 512 characters long.</p> </li> <li> <p>The ':' (colon) and '*' (asterisk) characters are not allowed.</p> </li> </ul>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`


-}
createLogStream :
    String
    -> String
    -> AWS.Request ()
createLogStream logGroupName logStreamName =
    AWS.Http.unsignedRequest
        "CreateLogStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified destination, and eventually disables all the subscription filters that publish to it. This operation does not delete the physical resource encapsulated by the destination.</p>

__Required Parameters__

* `destinationName` __:__ `String`


-}
deleteDestination :
    String
    -> AWS.Request ()
deleteDestination destinationName =
    AWS.Http.unsignedRequest
        "DeleteDestination"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified log group and permanently deletes all the archived log events associated with the log group.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}
deleteLogGroup :
    String
    -> AWS.Request ()
deleteLogGroup logGroupName =
    AWS.Http.unsignedRequest
        "DeleteLogGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`


-}
deleteLogStream :
    String
    -> String
    -> AWS.Request ()
deleteLogStream logGroupName logStreamName =
    AWS.Http.unsignedRequest
        "DeleteLogStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified metric filter.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`


-}
deleteMetricFilter :
    String
    -> String
    -> AWS.Request ()
deleteMetricFilter logGroupName filterName =
    AWS.Http.unsignedRequest
        "DeleteMetricFilter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified retention policy.</p> <p>Log events do not expire if they belong to log groups without a retention policy.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}
deleteRetentionPolicy :
    String
    -> AWS.Request ()
deleteRetentionPolicy logGroupName =
    AWS.Http.unsignedRequest
        "DeleteRetentionPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified subscription filter.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`


-}
deleteSubscriptionFilter :
    String
    -> String
    -> AWS.Request ()
deleteSubscriptionFilter logGroupName filterName =
    AWS.Http.unsignedRequest
        "DeleteSubscriptionFilter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Lists all your destinations. The results are ASCII-sorted by destination name.</p>

__Required Parameters__



-}
describeDestinations :
    (DescribeDestinationsOptions -> DescribeDestinationsOptions)
    -> AWS.Request DescribeDestinationsResponse
describeDestinations setOptions =
  let
    options = setOptions (DescribeDestinationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDestinations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDestinationsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDestinations request
-}
type alias DescribeDestinationsOptions =
    { destinationNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists the specified export tasks. You can list all your export tasks or filter the results based on task ID or task status.</p>

__Required Parameters__



-}
describeExportTasks :
    (DescribeExportTasksOptions -> DescribeExportTasksOptions)
    -> AWS.Request DescribeExportTasksResponse
describeExportTasks setOptions =
  let
    options = setOptions (DescribeExportTasksOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeExportTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeExportTasksResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeExportTasks request
-}
type alias DescribeExportTasksOptions =
    { taskId : Maybe String
    , statusCode : Maybe ExportTaskStatusCode
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.</p>

__Required Parameters__



-}
describeLogGroups :
    (DescribeLogGroupsOptions -> DescribeLogGroupsOptions)
    -> AWS.Request DescribeLogGroupsResponse
describeLogGroups setOptions =
  let
    options = setOptions (DescribeLogGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLogGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLogGroupsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLogGroups request
-}
type alias DescribeLogGroupsOptions =
    { logGroupNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists the log streams for the specified log group. You can list all the log streams or filter the results by prefix. You can also control how the results are ordered.</p> <p>This operation has a limit of five transactions per second, after which transactions are throttled.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}
describeLogStreams :
    String
    -> (DescribeLogStreamsOptions -> DescribeLogStreamsOptions)
    -> AWS.Request DescribeLogStreamsResponse
describeLogStreams logGroupName setOptions =
  let
    options = setOptions (DescribeLogStreamsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLogStreams"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLogStreamsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLogStreams request
-}
type alias DescribeLogStreamsOptions =
    { logStreamNamePrefix : Maybe String
    , orderBy : Maybe OrderBy
    , descending : Maybe Bool
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists the specified metric filters. You can list all the metric filters or filter the results by log name, prefix, metric name, and metric namespace. The results are ASCII-sorted by filter name.</p>

__Required Parameters__



-}
describeMetricFilters :
    (DescribeMetricFiltersOptions -> DescribeMetricFiltersOptions)
    -> AWS.Request DescribeMetricFiltersResponse
describeMetricFilters setOptions =
  let
    options = setOptions (DescribeMetricFiltersOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMetricFilters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMetricFiltersResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeMetricFilters request
-}
type alias DescribeMetricFiltersOptions =
    { logGroupName : Maybe String
    , filterNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    , metricName : Maybe String
    , metricNamespace : Maybe String
    }



{-| <p>Lists the subscription filters for the specified log group. You can list all the subscription filters or filter the results by prefix. The results are ASCII-sorted by filter name.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}
describeSubscriptionFilters :
    String
    -> (DescribeSubscriptionFiltersOptions -> DescribeSubscriptionFiltersOptions)
    -> AWS.Request DescribeSubscriptionFiltersResponse
describeSubscriptionFilters logGroupName setOptions =
  let
    options = setOptions (DescribeSubscriptionFiltersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSubscriptionFilters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSubscriptionFiltersResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSubscriptionFilters request
-}
type alias DescribeSubscriptionFiltersOptions =
    { filterNamePrefix : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists log events from the specified log group. You can list all the log events or filter the results using a filter pattern, a time range, and the name of the log stream.</p> <p>By default, this operation returns as many log events as can fit in 1MB (up to 10,000 log events), or all the events found within the time range that you specify. If the results include a token, then there are more log events available, and you can get additional results by specifying the token in a subsequent call.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}
filterLogEvents :
    String
    -> (FilterLogEventsOptions -> FilterLogEventsOptions)
    -> AWS.Request FilterLogEventsResponse
filterLogEvents logGroupName setOptions =
  let
    options = setOptions (FilterLogEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "FilterLogEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        filterLogEventsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a filterLogEvents request
-}
type alias FilterLogEventsOptions =
    { logStreamNames : Maybe (List String)
    , startTime : Maybe Int
    , endTime : Maybe Int
    , filterPattern : Maybe String
    , nextToken : Maybe String
    , limit : Maybe Int
    , interleaved : Maybe Bool
    }



{-| <p>Lists log events from the specified log stream. You can list all the log events or filter using a time range.</p> <p>By default, this operation returns as many log events as can fit in a response size of 1MB (up to 10,000 log events). If the results include tokens, there are more log events available. You can get additional log events by specifying one of the tokens in a subsequent call.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`


-}
getLogEvents :
    String
    -> String
    -> (GetLogEventsOptions -> GetLogEventsOptions)
    -> AWS.Request GetLogEventsResponse
getLogEvents logGroupName logStreamName setOptions =
  let
    options = setOptions (GetLogEventsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetLogEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getLogEventsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getLogEvents request
-}
type alias GetLogEventsOptions =
    { startTime : Maybe Int
    , endTime : Maybe Int
    , nextToken : Maybe String
    , limit : Maybe Int
    , startFromHead : Maybe Bool
    }



{-| <p>Lists the tags for the specified log group.</p> <p>To add tags, use <a>TagLogGroup</a>. To remove tags, use <a>UntagLogGroup</a>.</p>

__Required Parameters__

* `logGroupName` __:__ `String`


-}
listTagsLogGroup :
    String
    -> AWS.Request ListTagsLogGroupResponse
listTagsLogGroup logGroupName =
    AWS.Http.unsignedRequest
        "ListTagsLogGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsLogGroupResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates or updates a destination. A destination encapsulates a physical resource (such as a Kinesis stream) and enables you to subscribe to a real-time stream of log events of a different account, ingested using <a>PutLogEvents</a>. Currently, the only supported physical resource is a Amazon Kinesis stream belonging to the same account as the destination.</p> <p>A destination controls what is written to its Amazon Kinesis stream through an access policy. By default, <code>PutDestination</code> does not set any access policy with the destination, which means a cross-account user cannot call <a>PutSubscriptionFilter</a> against this destination. To enable this, the destination owner must call <a>PutDestinationPolicy</a> after <code>PutDestination</code>.</p>

__Required Parameters__

* `destinationName` __:__ `String`
* `targetArn` __:__ `String`
* `roleArn` __:__ `String`


-}
putDestination :
    String
    -> String
    -> String
    -> AWS.Request PutDestinationResponse
putDestination destinationName targetArn roleArn =
    AWS.Http.unsignedRequest
        "PutDestination"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putDestinationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates or updates an access policy associated with an existing destination. An access policy is an <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html">IAM policy document</a> that is used to authorize claims to register a subscription filter against a given destination.</p>

__Required Parameters__

* `destinationName` __:__ `String`
* `accessPolicy` __:__ `String`


-}
putDestinationPolicy :
    String
    -> String
    -> AWS.Request ()
putDestinationPolicy destinationName accessPolicy =
    AWS.Http.unsignedRequest
        "PutDestinationPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Uploads a batch of log events to the specified log stream.</p> <p>You must include the sequence token obtained from the response of the previous call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using <a>DescribeLogStreams</a>.</p> <p>The batch of events must satisfy the following constraints:</p> <ul> <li> <p>The maximum batch size is 1,048,576 bytes, and this size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.</p> </li> <li> <p>None of the log events in the batch can be more than 2 hours in the future.</p> </li> <li> <p>None of the log events in the batch can be older than 14 days or the retention period of the log group.</p> </li> <li> <p>The log events in the batch must be in chronological ordered by their timestamp (the time the event occurred, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC).</p> </li> <li> <p>The maximum number of log events in a batch is 10,000.</p> </li> <li> <p>A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.</p> </li> </ul>

__Required Parameters__

* `logGroupName` __:__ `String`
* `logStreamName` __:__ `String`
* `logEvents` __:__ `(List InputLogEvent)`


-}
putLogEvents :
    String
    -> String
    -> (List InputLogEvent)
    -> (PutLogEventsOptions -> PutLogEventsOptions)
    -> AWS.Request PutLogEventsResponse
putLogEvents logGroupName logStreamName logEvents setOptions =
  let
    options = setOptions (PutLogEventsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutLogEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putLogEventsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a putLogEvents request
-}
type alias PutLogEventsOptions =
    { sequenceToken : Maybe String
    }



{-| <p>Creates or updates a metric filter and associates it with the specified log group. Metric filters allow you to configure rules to extract metric data from log events ingested through <a>PutLogEvents</a>.</p> <p>The maximum number of metric filters that can be associated with a log group is 100.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`
* `filterPattern` __:__ `String`
* `metricTransformations` __:__ `(List MetricTransformation)`


-}
putMetricFilter :
    String
    -> String
    -> String
    -> (List MetricTransformation)
    -> AWS.Request ()
putMetricFilter logGroupName filterName filterPattern metricTransformations =
    AWS.Http.unsignedRequest
        "PutMetricFilter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Sets the retention of the specified log group. A retention policy allows you to configure the number of days you want to retain log events in the specified log group.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `retentionInDays` __:__ `Int`


-}
putRetentionPolicy :
    String
    -> Int
    -> AWS.Request ()
putRetentionPolicy logGroupName retentionInDays =
    AWS.Http.unsignedRequest
        "PutRetentionPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates or updates a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events ingested through <a>PutLogEvents</a> and have them delivered to a specific destination. Currently, the supported destinations are:</p> <ul> <li> <p>An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>A logical destination that belongs to a different account, for cross-account delivery.</p> </li> <li> <p>An Amazon Kinesis Firehose stream that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>An AWS Lambda function that belongs to the same account as the subscription filter, for same-account delivery.</p> </li> </ul> <p>There can only be one subscription filter associated with a log group.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `filterName` __:__ `String`
* `filterPattern` __:__ `String`
* `destinationArn` __:__ `String`


-}
putSubscriptionFilter :
    String
    -> String
    -> String
    -> String
    -> (PutSubscriptionFilterOptions -> PutSubscriptionFilterOptions)
    -> AWS.Request ()
putSubscriptionFilter logGroupName filterName filterPattern destinationArn setOptions =
  let
    options = setOptions (PutSubscriptionFilterOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutSubscriptionFilter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putSubscriptionFilter request
-}
type alias PutSubscriptionFilterOptions =
    { roleArn : Maybe String
    , distribution : Maybe Distribution
    }



{-| <p>Adds or updates the specified tags for the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To remove tags, use <a>UntagLogGroup</a>.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/log-group-tagging.html">Tag Log Groups in Amazon CloudWatch Logs</a> in the <i>Amazon CloudWatch Logs User Guide</i>.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}
tagLogGroup :
    String
    -> (Dict String String)
    -> AWS.Request ()
tagLogGroup logGroupName tags =
    AWS.Http.unsignedRequest
        "TagLogGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Tests the filter pattern of a metric filter against a sample of log event messages. You can use this operation to validate the correctness of a metric filter pattern.</p>

__Required Parameters__

* `filterPattern` __:__ `String`
* `logEventMessages` __:__ `(List String)`


-}
testMetricFilter :
    String
    -> (List String)
    -> AWS.Request TestMetricFilterResponse
testMetricFilter filterPattern logEventMessages =
    AWS.Http.unsignedRequest
        "TestMetricFilter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        testMetricFilterResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes the specified tags from the specified log group.</p> <p>To list the tags for a log group, use <a>ListTagsLogGroup</a>. To add tags, use <a>UntagLogGroup</a>.</p>

__Required Parameters__

* `logGroupName` __:__ `String`
* `tags` __:__ `(List String)`


-}
untagLogGroup :
    String
    -> (List String)
    -> AWS.Request ()
untagLogGroup logGroupName tags =
    AWS.Http.unsignedRequest
        "UntagLogGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest




{-| Type of HTTP response from createExportTask
-}
type alias CreateExportTaskResponse =
    { taskId : Maybe String
    }



createExportTaskResponseDecoder : JD.Decoder CreateExportTaskResponse
createExportTaskResponseDecoder =
    JDP.decode CreateExportTaskResponse
        |> JDP.optional "taskId" (JD.nullable JD.string) Nothing




{-| <p>The event was already logged.</p>
-}
type alias DataAlreadyAcceptedException =
    { expectedSequenceToken : Maybe String
    }



dataAlreadyAcceptedExceptionDecoder : JD.Decoder DataAlreadyAcceptedException
dataAlreadyAcceptedExceptionDecoder =
    JDP.decode DataAlreadyAcceptedException
        |> JDP.optional "expectedSequenceToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeDestinations
-}
type alias DescribeDestinationsResponse =
    { destinations : Maybe (List Destination)
    , nextToken : Maybe String
    }



describeDestinationsResponseDecoder : JD.Decoder DescribeDestinationsResponse
describeDestinationsResponseDecoder =
    JDP.decode DescribeDestinationsResponse
        |> JDP.optional "destinations" (JD.nullable (JD.list destinationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeExportTasks
-}
type alias DescribeExportTasksResponse =
    { exportTasks : Maybe (List ExportTask)
    , nextToken : Maybe String
    }



describeExportTasksResponseDecoder : JD.Decoder DescribeExportTasksResponse
describeExportTasksResponseDecoder =
    JDP.decode DescribeExportTasksResponse
        |> JDP.optional "exportTasks" (JD.nullable (JD.list exportTaskDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeLogGroups
-}
type alias DescribeLogGroupsResponse =
    { logGroups : Maybe (List LogGroup)
    , nextToken : Maybe String
    }



describeLogGroupsResponseDecoder : JD.Decoder DescribeLogGroupsResponse
describeLogGroupsResponseDecoder =
    JDP.decode DescribeLogGroupsResponse
        |> JDP.optional "logGroups" (JD.nullable (JD.list logGroupDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeLogStreams
-}
type alias DescribeLogStreamsResponse =
    { logStreams : Maybe (List LogStream)
    , nextToken : Maybe String
    }



describeLogStreamsResponseDecoder : JD.Decoder DescribeLogStreamsResponse
describeLogStreamsResponseDecoder =
    JDP.decode DescribeLogStreamsResponse
        |> JDP.optional "logStreams" (JD.nullable (JD.list logStreamDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMetricFilters
-}
type alias DescribeMetricFiltersResponse =
    { metricFilters : Maybe (List MetricFilter)
    , nextToken : Maybe String
    }



describeMetricFiltersResponseDecoder : JD.Decoder DescribeMetricFiltersResponse
describeMetricFiltersResponseDecoder =
    JDP.decode DescribeMetricFiltersResponse
        |> JDP.optional "metricFilters" (JD.nullable (JD.list metricFilterDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeSubscriptionFilters
-}
type alias DescribeSubscriptionFiltersResponse =
    { subscriptionFilters : Maybe (List SubscriptionFilter)
    , nextToken : Maybe String
    }



describeSubscriptionFiltersResponseDecoder : JD.Decoder DescribeSubscriptionFiltersResponse
describeSubscriptionFiltersResponseDecoder =
    JDP.decode DescribeSubscriptionFiltersResponse
        |> JDP.optional "subscriptionFilters" (JD.nullable (JD.list subscriptionFilterDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Represents a cross-account destination that receives subscription log events.</p>
-}
type alias Destination =
    { destinationName : Maybe String
    , targetArn : Maybe String
    , roleArn : Maybe String
    , accessPolicy : Maybe String
    , arn : Maybe String
    , creationTime : Maybe Int
    }



destinationDecoder : JD.Decoder Destination
destinationDecoder =
    JDP.decode Destination
        |> JDP.optional "destinationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "accessPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationTime" (JD.nullable JD.int) Nothing




{-| One of

* `Distribution_Random`
* `Distribution_ByLogStream`

-}
type Distribution
    = Distribution_Random
    | Distribution_ByLogStream



distributionDecoder : JD.Decoder Distribution
distributionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Random" ->
                        JD.succeed Distribution_Random

                    "ByLogStream" ->
                        JD.succeed Distribution_ByLogStream


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents an export task.</p>
-}
type alias ExportTask =
    { taskId : Maybe String
    , taskName : Maybe String
    , logGroupName : Maybe String
    , from : Maybe Int
    , to : Maybe Int
    , destination : Maybe String
    , destinationPrefix : Maybe String
    , status : Maybe ExportTaskStatus
    , executionInfo : Maybe ExportTaskExecutionInfo
    }



exportTaskDecoder : JD.Decoder ExportTask
exportTaskDecoder =
    JDP.decode ExportTask
        |> JDP.optional "taskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskName" (JD.nullable JD.string) Nothing
        |> JDP.optional "logGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "from" (JD.nullable JD.int) Nothing
        |> JDP.optional "to" (JD.nullable JD.int) Nothing
        |> JDP.optional "destination" (JD.nullable JD.string) Nothing
        |> JDP.optional "destinationPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable exportTaskStatusDecoder) Nothing
        |> JDP.optional "executionInfo" (JD.nullable exportTaskExecutionInfoDecoder) Nothing




{-| <p>Represents the status of an export task.</p>
-}
type alias ExportTaskExecutionInfo =
    { creationTime : Maybe Int
    , completionTime : Maybe Int
    }



exportTaskExecutionInfoDecoder : JD.Decoder ExportTaskExecutionInfo
exportTaskExecutionInfoDecoder =
    JDP.decode ExportTaskExecutionInfo
        |> JDP.optional "creationTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "completionTime" (JD.nullable JD.int) Nothing




{-| <p>Represents the status of an export task.</p>
-}
type alias ExportTaskStatus =
    { code : Maybe ExportTaskStatusCode
    , message : Maybe String
    }



exportTaskStatusDecoder : JD.Decoder ExportTaskStatus
exportTaskStatusDecoder =
    JDP.decode ExportTaskStatus
        |> JDP.optional "code" (JD.nullable exportTaskStatusCodeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ExportTaskStatusCode_CANCELLED`
* `ExportTaskStatusCode_COMPLETED`
* `ExportTaskStatusCode_FAILED`
* `ExportTaskStatusCode_PENDING`
* `ExportTaskStatusCode_PENDING_CANCEL`
* `ExportTaskStatusCode_RUNNING`

-}
type ExportTaskStatusCode
    = ExportTaskStatusCode_CANCELLED
    | ExportTaskStatusCode_COMPLETED
    | ExportTaskStatusCode_FAILED
    | ExportTaskStatusCode_PENDING
    | ExportTaskStatusCode_PENDING_CANCEL
    | ExportTaskStatusCode_RUNNING



exportTaskStatusCodeDecoder : JD.Decoder ExportTaskStatusCode
exportTaskStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CANCELLED" ->
                        JD.succeed ExportTaskStatusCode_CANCELLED

                    "COMPLETED" ->
                        JD.succeed ExportTaskStatusCode_COMPLETED

                    "FAILED" ->
                        JD.succeed ExportTaskStatusCode_FAILED

                    "PENDING" ->
                        JD.succeed ExportTaskStatusCode_PENDING

                    "PENDING_CANCEL" ->
                        JD.succeed ExportTaskStatusCode_PENDING_CANCEL

                    "RUNNING" ->
                        JD.succeed ExportTaskStatusCode_RUNNING


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from filterLogEvents
-}
type alias FilterLogEventsResponse =
    { events : Maybe (List FilteredLogEvent)
    , searchedLogStreams : Maybe (List SearchedLogStream)
    , nextToken : Maybe String
    }



filterLogEventsResponseDecoder : JD.Decoder FilterLogEventsResponse
filterLogEventsResponseDecoder =
    JDP.decode FilterLogEventsResponse
        |> JDP.optional "events" (JD.nullable (JD.list filteredLogEventDecoder)) Nothing
        |> JDP.optional "searchedLogStreams" (JD.nullable (JD.list searchedLogStreamDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Represents a matched event.</p>
-}
type alias FilteredLogEvent =
    { logStreamName : Maybe String
    , timestamp : Maybe Int
    , message : Maybe String
    , ingestionTime : Maybe Int
    , eventId : Maybe String
    }



filteredLogEventDecoder : JD.Decoder FilteredLogEvent
filteredLogEventDecoder =
    JDP.decode FilteredLogEvent
        |> JDP.optional "logStreamName" (JD.nullable JD.string) Nothing
        |> JDP.optional "timestamp" (JD.nullable JD.int) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "ingestionTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getLogEvents
-}
type alias GetLogEventsResponse =
    { events : Maybe (List OutputLogEvent)
    , nextForwardToken : Maybe String
    , nextBackwardToken : Maybe String
    }



getLogEventsResponseDecoder : JD.Decoder GetLogEventsResponse
getLogEventsResponseDecoder =
    JDP.decode GetLogEventsResponse
        |> JDP.optional "events" (JD.nullable (JD.list outputLogEventDecoder)) Nothing
        |> JDP.optional "nextForwardToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextBackwardToken" (JD.nullable JD.string) Nothing




{-| <p>Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.</p>
-}
type alias InputLogEvent =
    { timestamp : Int
    , message : String
    }



inputLogEventDecoder : JD.Decoder InputLogEvent
inputLogEventDecoder =
    JDP.decode InputLogEvent
        |> JDP.required "timestamp" JD.int
        |> JDP.required "message" JD.string




{-| <p>The operation is not valid on the specified resource.</p>
-}
type alias InvalidOperationException =
    { 
    }



invalidOperationExceptionDecoder : JD.Decoder InvalidOperationException
invalidOperationExceptionDecoder =
    JDP.decode InvalidOperationException



{-| <p>A parameter is specified incorrectly.</p>
-}
type alias InvalidParameterException =
    { 
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException



{-| <p>The sequence token is not valid.</p>
-}
type alias InvalidSequenceTokenException =
    { expectedSequenceToken : Maybe String
    }



invalidSequenceTokenExceptionDecoder : JD.Decoder InvalidSequenceTokenException
invalidSequenceTokenExceptionDecoder =
    JDP.decode InvalidSequenceTokenException
        |> JDP.optional "expectedSequenceToken" (JD.nullable JD.string) Nothing




{-| <p>You have reached the maximum number of resources that can be created.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listTagsLogGroup
-}
type alias ListTagsLogGroupResponse =
    { tags : Maybe (Dict String String)
    }



listTagsLogGroupResponseDecoder : JD.Decoder ListTagsLogGroupResponse
listTagsLogGroupResponseDecoder =
    JDP.decode ListTagsLogGroupResponse
        |> JDP.optional "tags" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Represents a log group.</p>
-}
type alias LogGroup =
    { logGroupName : Maybe String
    , creationTime : Maybe Int
    , retentionInDays : Maybe Int
    , metricFilterCount : Maybe Int
    , arn : Maybe String
    , storedBytes : Maybe Int
    }



logGroupDecoder : JD.Decoder LogGroup
logGroupDecoder =
    JDP.decode LogGroup
        |> JDP.optional "logGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "retentionInDays" (JD.nullable JD.int) Nothing
        |> JDP.optional "metricFilterCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "storedBytes" (JD.nullable JD.int) Nothing




{-| <p>Represents a log stream, which is a sequence of log events from a single emitter of logs.</p>
-}
type alias LogStream =
    { logStreamName : Maybe String
    , creationTime : Maybe Int
    , firstEventTimestamp : Maybe Int
    , lastEventTimestamp : Maybe Int
    , lastIngestionTime : Maybe Int
    , uploadSequenceToken : Maybe String
    , arn : Maybe String
    , storedBytes : Maybe Int
    }



logStreamDecoder : JD.Decoder LogStream
logStreamDecoder =
    JDP.decode LogStream
        |> JDP.optional "logStreamName" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "firstEventTimestamp" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastEventTimestamp" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastIngestionTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "uploadSequenceToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "storedBytes" (JD.nullable JD.int) Nothing




{-| <p>Metric filters express how CloudWatch Logs would extract metric observations from ingested log events and transform them into metric data in a CloudWatch metric.</p>
-}
type alias MetricFilter =
    { filterName : Maybe String
    , filterPattern : Maybe String
    , metricTransformations : Maybe (List MetricTransformation)
    , creationTime : Maybe Int
    , logGroupName : Maybe String
    }



metricFilterDecoder : JD.Decoder MetricFilter
metricFilterDecoder =
    JDP.decode MetricFilter
        |> JDP.optional "filterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "filterPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "metricTransformations" (JD.nullable (JD.list metricTransformationDecoder)) Nothing
        |> JDP.optional "creationTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "logGroupName" (JD.nullable JD.string) Nothing




{-| <p>Represents a matched event.</p>
-}
type alias MetricFilterMatchRecord =
    { eventNumber : Maybe Int
    , eventMessage : Maybe String
    , extractedValues : Maybe (Dict String String)
    }



metricFilterMatchRecordDecoder : JD.Decoder MetricFilterMatchRecord
metricFilterMatchRecordDecoder =
    JDP.decode MetricFilterMatchRecord
        |> JDP.optional "eventNumber" (JD.nullable JD.int) Nothing
        |> JDP.optional "eventMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "extractedValues" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Indicates how to transform ingested log events into metric data in a CloudWatch metric.</p>
-}
type alias MetricTransformation =
    { metricName : String
    , metricNamespace : String
    , metricValue : String
    , defaultValue : Maybe Float
    }



metricTransformationDecoder : JD.Decoder MetricTransformation
metricTransformationDecoder =
    JDP.decode MetricTransformation
        |> JDP.required "metricName" JD.string
        |> JDP.required "metricNamespace" JD.string
        |> JDP.required "metricValue" JD.string
        |> JDP.optional "defaultValue" (JD.nullable JD.float) Nothing




{-| <p>Multiple requests to update the same resource were in conflict.</p>
-}
type alias OperationAbortedException =
    { 
    }



operationAbortedExceptionDecoder : JD.Decoder OperationAbortedException
operationAbortedExceptionDecoder =
    JDP.decode OperationAbortedException



{-| One of

* `OrderBy_LogStreamName`
* `OrderBy_LastEventTime`

-}
type OrderBy
    = OrderBy_LogStreamName
    | OrderBy_LastEventTime



orderByDecoder : JD.Decoder OrderBy
orderByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LogStreamName" ->
                        JD.succeed OrderBy_LogStreamName

                    "LastEventTime" ->
                        JD.succeed OrderBy_LastEventTime


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a log event.</p>
-}
type alias OutputLogEvent =
    { timestamp : Maybe Int
    , message : Maybe String
    , ingestionTime : Maybe Int
    }



outputLogEventDecoder : JD.Decoder OutputLogEvent
outputLogEventDecoder =
    JDP.decode OutputLogEvent
        |> JDP.optional "timestamp" (JD.nullable JD.int) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "ingestionTime" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from putDestination
-}
type alias PutDestinationResponse =
    { destination : Maybe Destination
    }



putDestinationResponseDecoder : JD.Decoder PutDestinationResponse
putDestinationResponseDecoder =
    JDP.decode PutDestinationResponse
        |> JDP.optional "destination" (JD.nullable destinationDecoder) Nothing




{-| Type of HTTP response from putLogEvents
-}
type alias PutLogEventsResponse =
    { nextSequenceToken : Maybe String
    , rejectedLogEventsInfo : Maybe RejectedLogEventsInfo
    }



putLogEventsResponseDecoder : JD.Decoder PutLogEventsResponse
putLogEventsResponseDecoder =
    JDP.decode PutLogEventsResponse
        |> JDP.optional "nextSequenceToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "rejectedLogEventsInfo" (JD.nullable rejectedLogEventsInfoDecoder) Nothing




{-| <p>Represents the rejected events.</p>
-}
type alias RejectedLogEventsInfo =
    { tooNewLogEventStartIndex : Maybe Int
    , tooOldLogEventEndIndex : Maybe Int
    , expiredLogEventEndIndex : Maybe Int
    }



rejectedLogEventsInfoDecoder : JD.Decoder RejectedLogEventsInfo
rejectedLogEventsInfoDecoder =
    JDP.decode RejectedLogEventsInfo
        |> JDP.optional "tooNewLogEventStartIndex" (JD.nullable JD.int) Nothing
        |> JDP.optional "tooOldLogEventEndIndex" (JD.nullable JD.int) Nothing
        |> JDP.optional "expiredLogEventEndIndex" (JD.nullable JD.int) Nothing




{-| <p>The specified resource already exists.</p>
-}
type alias ResourceAlreadyExistsException =
    { 
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException



{-| <p>The specified resource does not exist.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| <p>Represents the search status of a log stream.</p>
-}
type alias SearchedLogStream =
    { logStreamName : Maybe String
    , searchedCompletely : Maybe Bool
    }



searchedLogStreamDecoder : JD.Decoder SearchedLogStream
searchedLogStreamDecoder =
    JDP.decode SearchedLogStream
        |> JDP.optional "logStreamName" (JD.nullable JD.string) Nothing
        |> JDP.optional "searchedCompletely" (JD.nullable JD.bool) Nothing




{-| <p>The service cannot complete the request.</p>
-}
type alias ServiceUnavailableException =
    { 
    }



serviceUnavailableExceptionDecoder : JD.Decoder ServiceUnavailableException
serviceUnavailableExceptionDecoder =
    JDP.decode ServiceUnavailableException



{-| <p>Represents a subscription filter.</p>
-}
type alias SubscriptionFilter =
    { filterName : Maybe String
    , logGroupName : Maybe String
    , filterPattern : Maybe String
    , destinationArn : Maybe String
    , roleArn : Maybe String
    , distribution : Maybe Distribution
    , creationTime : Maybe Int
    }



subscriptionFilterDecoder : JD.Decoder SubscriptionFilter
subscriptionFilterDecoder =
    JDP.decode SubscriptionFilter
        |> JDP.optional "filterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "logGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "filterPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "destinationArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "distribution" (JD.nullable distributionDecoder) Nothing
        |> JDP.optional "creationTime" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from testMetricFilter
-}
type alias TestMetricFilterResponse =
    { matches : Maybe (List MetricFilterMatchRecord)
    }



testMetricFilterResponseDecoder : JD.Decoder TestMetricFilterResponse
testMetricFilterResponseDecoder =
    JDP.decode TestMetricFilterResponse
        |> JDP.optional "matches" (JD.nullable (JD.list metricFilterMatchRecordDecoder)) Nothing




