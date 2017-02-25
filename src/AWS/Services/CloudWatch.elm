module AWS.Services.CloudWatch
    exposing
        ( config
        , deleteAlarms
        , describeAlarmHistory
        , DescribeAlarmHistoryOptions
        , describeAlarms
        , DescribeAlarmsOptions
        , describeAlarmsForMetric
        , DescribeAlarmsForMetricOptions
        , disableAlarmActions
        , enableAlarmActions
        , getMetricStatistics
        , GetMetricStatisticsOptions
        , listMetrics
        , ListMetricsOptions
        , putMetricAlarm
        , PutMetricAlarmOptions
        , putMetricData
        , setAlarmState
        , SetAlarmStateOptions
        , AlarmHistoryItem
        , ComparisonOperator(..)
        , Datapoint
        , DescribeAlarmHistoryOutput
        , DescribeAlarmsForMetricOutput
        , DescribeAlarmsOutput
        , Dimension
        , DimensionFilter
        , GetMetricStatisticsOutput
        , HistoryItemType(..)
        , InternalServiceFault
        , InvalidFormatFault
        , InvalidNextToken
        , InvalidParameterCombinationException
        , InvalidParameterValueException
        , LimitExceededFault
        , ListMetricsOutput
        , Metric
        , MetricAlarm
        , MetricDatum
        , MissingRequiredParameterException
        , ResourceNotFound
        , StandardUnit(..)
        , StateValue(..)
        , Statistic(..)
        , StatisticSet
        )

{-| <p>Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real-time. You can use CloudWatch to collect and track metrics, which are the variables you want to measure for your resources and applications.</p> <p>CloudWatch alarms send notifications or automatically make changes to the resources you are monitoring based on rules that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon Elastic Compute Cloud (Amazon EC2) instances and then use this data to determine whether you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money.</p> <p>In addition to monitoring the built-in metrics that come with AWS, you can monitor your own custom metrics. With CloudWatch, you gain system-wide visibility into resource utilization, application performance, and operational health.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [deleteAlarms](#deleteAlarms)
* [describeAlarmHistory](#describeAlarmHistory)
* [DescribeAlarmHistoryOptions](#DescribeAlarmHistoryOptions)
* [describeAlarms](#describeAlarms)
* [DescribeAlarmsOptions](#DescribeAlarmsOptions)
* [describeAlarmsForMetric](#describeAlarmsForMetric)
* [DescribeAlarmsForMetricOptions](#DescribeAlarmsForMetricOptions)
* [disableAlarmActions](#disableAlarmActions)
* [enableAlarmActions](#enableAlarmActions)
* [getMetricStatistics](#getMetricStatistics)
* [GetMetricStatisticsOptions](#GetMetricStatisticsOptions)
* [listMetrics](#listMetrics)
* [ListMetricsOptions](#ListMetricsOptions)
* [putMetricAlarm](#putMetricAlarm)
* [PutMetricAlarmOptions](#PutMetricAlarmOptions)
* [putMetricData](#putMetricData)
* [setAlarmState](#setAlarmState)
* [SetAlarmStateOptions](#SetAlarmStateOptions)


@docs deleteAlarms,describeAlarmHistory,DescribeAlarmHistoryOptions,describeAlarms,DescribeAlarmsOptions,describeAlarmsForMetric,DescribeAlarmsForMetricOptions,disableAlarmActions,enableAlarmActions,getMetricStatistics,GetMetricStatisticsOptions,listMetrics,ListMetricsOptions,putMetricAlarm,PutMetricAlarmOptions,putMetricData,setAlarmState,SetAlarmStateOptions

## Responses

* [DescribeAlarmHistoryOutput](#DescribeAlarmHistoryOutput)
* [DescribeAlarmsForMetricOutput](#DescribeAlarmsForMetricOutput)
* [DescribeAlarmsOutput](#DescribeAlarmsOutput)
* [GetMetricStatisticsOutput](#GetMetricStatisticsOutput)
* [ListMetricsOutput](#ListMetricsOutput)


@docs DescribeAlarmHistoryOutput,DescribeAlarmsForMetricOutput,DescribeAlarmsOutput,GetMetricStatisticsOutput,ListMetricsOutput

## Records

* [AlarmHistoryItem](#AlarmHistoryItem)
* [Datapoint](#Datapoint)
* [Dimension](#Dimension)
* [DimensionFilter](#DimensionFilter)
* [Metric](#Metric)
* [MetricAlarm](#MetricAlarm)
* [MetricDatum](#MetricDatum)
* [StatisticSet](#StatisticSet)


@docs AlarmHistoryItem,Datapoint,Dimension,DimensionFilter,Metric,MetricAlarm,MetricDatum,StatisticSet

## Unions

* [ComparisonOperator](#ComparisonOperator)
* [HistoryItemType](#HistoryItemType)
* [StandardUnit](#StandardUnit)
* [StateValue](#StateValue)
* [Statistic](#Statistic)


@docs ComparisonOperator,HistoryItemType,StandardUnit,StateValue,Statistic

## Exceptions

* [InternalServiceFault](#InternalServiceFault)
* [InvalidFormatFault](#InvalidFormatFault)
* [InvalidNextToken](#InvalidNextToken)
* [InvalidParameterCombinationException](#InvalidParameterCombinationException)
* [InvalidParameterValueException](#InvalidParameterValueException)
* [LimitExceededFault](#LimitExceededFault)
* [MissingRequiredParameterException](#MissingRequiredParameterException)
* [ResourceNotFound](#ResourceNotFound)


@docs InternalServiceFault,InvalidFormatFault,InvalidNextToken,InvalidParameterCombinationException,InvalidParameterValueException,LimitExceededFault,MissingRequiredParameterException,ResourceNotFound

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "monitoring"
        "2010-08-01"
        "undefined"
        "AWSMONITORING_20100801."
        "monitoring.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Deletes the specified alarms. In the event of an error, no alarms are deleted.</p>

__Required Parameters__

* `alarmNames` __:__ `(List String)`


-}
deleteAlarms :
    (List String)
    -> AWS.Request ()
deleteAlarms alarmNames =
    AWS.Http.unsignedRequest
        "DeleteAlarms"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for all alarms are returned.</p> <p>Note that Amazon CloudWatch retains the history of an alarm even if you delete the alarm.</p>

__Required Parameters__



-}
describeAlarmHistory :
    (DescribeAlarmHistoryOptions -> DescribeAlarmHistoryOptions)
    -> AWS.Request DescribeAlarmHistoryOutput
describeAlarmHistory setOptions =
  let
    options = setOptions (DescribeAlarmHistoryOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAlarmHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAlarmHistoryOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAlarmHistory request
-}
type alias DescribeAlarmHistoryOptions =
    { alarmName : Maybe String
    , historyItemType : Maybe HistoryItemType
    , startDate : Maybe Date
    , endDate : Maybe Date
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the specified alarms. If no alarms are specified, all alarms are returned. Alarms can be retrieved by using only a prefix for the alarm name, the alarm state, or a prefix for any action.</p>

__Required Parameters__



-}
describeAlarms :
    (DescribeAlarmsOptions -> DescribeAlarmsOptions)
    -> AWS.Request DescribeAlarmsOutput
describeAlarms setOptions =
  let
    options = setOptions (DescribeAlarmsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAlarms"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAlarmsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAlarms request
-}
type alias DescribeAlarmsOptions =
    { alarmNames : Maybe (List String)
    , alarmNamePrefix : Maybe String
    , stateValue : Maybe StateValue
    , actionPrefix : Maybe String
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the alarms for the specified metric. Specify a statistic, period, or unit to filter the results.</p>

__Required Parameters__

* `metricName` __:__ `String`
* `namespace` __:__ `String`


-}
describeAlarmsForMetric :
    String
    -> String
    -> (DescribeAlarmsForMetricOptions -> DescribeAlarmsForMetricOptions)
    -> AWS.Request DescribeAlarmsForMetricOutput
describeAlarmsForMetric metricName namespace setOptions =
  let
    options = setOptions (DescribeAlarmsForMetricOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAlarmsForMetric"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAlarmsForMetricOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAlarmsForMetric request
-}
type alias DescribeAlarmsForMetricOptions =
    { statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , period : Maybe Int
    , unit : Maybe StandardUnit
    }



{-| <p>Disables the actions for the specified alarms. When an alarm's actions are disabled, the alarm actions do not execute when the alarm state changes.</p>

__Required Parameters__

* `alarmNames` __:__ `(List String)`


-}
disableAlarmActions :
    (List String)
    -> AWS.Request ()
disableAlarmActions alarmNames =
    AWS.Http.unsignedRequest
        "DisableAlarmActions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Enables the actions for the specified alarms.</p>

__Required Parameters__

* `alarmNames` __:__ `(List String)`


-}
enableAlarmActions :
    (List String)
    -> AWS.Request ()
enableAlarmActions alarmNames =
    AWS.Http.unsignedRequest
        "EnableAlarmActions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Gets statistics for the specified metric.</p> <p>Amazon CloudWatch retains metric data as follows:</p> <ul> <li> <p>Data points with a period of 60 seconds (1 minute) are available for 15 days</p> </li> <li> <p>Data points with a period of 300 seconds (5 minute) are available for 63 days</p> </li> <li> <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months)</p> </li> </ul> <p>Note that CloudWatch started retaining 5-minute and 1-hour metric data as of 9 July 2016.</p> <p>The maximum number of data points returned from a single call is 1,440. If you request more than 1,440 data points, Amazon CloudWatch returns an error. To reduce the number of data points, you can narrow the specified time range and make multiple requests across adjacent time ranges, or you can increase the specified period. A period can be as short as one minute (60 seconds). Note that data points are not returned in chronological order.</p> <p>Amazon CloudWatch aggregates data points based on the length of the period that you specify. For example, if you request statistics with a one-hour period, Amazon CloudWatch aggregates all data points with time stamps that fall within each one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than the number of data points returned.</p> <p>For a list of metrics and dimensions supported by AWS services, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html">Amazon CloudWatch Metrics and Dimensions Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>

__Required Parameters__

* `namespace` __:__ `String`
* `metricName` __:__ `String`
* `startTime` __:__ `Date`
* `endTime` __:__ `Date`
* `period` __:__ `Int`


-}
getMetricStatistics :
    String
    -> String
    -> Date
    -> Date
    -> Int
    -> (GetMetricStatisticsOptions -> GetMetricStatisticsOptions)
    -> AWS.Request GetMetricStatisticsOutput
getMetricStatistics namespace metricName startTime endTime period setOptions =
  let
    options = setOptions (GetMetricStatisticsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetMetricStatistics"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getMetricStatisticsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getMetricStatistics request
-}
type alias GetMetricStatisticsOptions =
    { dimensions : Maybe (List Dimension)
    , statistics : Maybe (List Statistic)
    , extendedStatistics : Maybe (List String)
    , unit : Maybe StandardUnit
    }



{-| <p>List the specified metrics. You can use the returned metrics with <a>GetMetricStatistics</a> to obtain statistical data.</p> <p>Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls.</p> <p>After you create a metric, allow up to fifteen minutes before the metric appears. Statistics about the metric, however, are available sooner using <a>GetMetricStatistics</a>.</p>

__Required Parameters__



-}
listMetrics :
    (ListMetricsOptions -> ListMetricsOptions)
    -> AWS.Request ListMetricsOutput
listMetrics setOptions =
  let
    options = setOptions (ListMetricsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListMetrics"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listMetricsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listMetrics request
-}
type alias ListMetricsOptions =
    { namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List DimensionFilter)
    , nextToken : Maybe String
    }



{-| <p>Creates or updates an alarm and associates it with the specified metric. Optionally, this operation can associate one or more Amazon SNS resources with the alarm.</p> <p>When this operation creates an alarm, the alarm state is immediately set to <code>INSUFFICIENT_DATA</code>. The alarm is evaluated and its state is set appropriately. Any actions associated with the state are then executed.</p> <p>When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.</p> <p>If you are an AWS Identity and Access Management (IAM) user, you must have Amazon EC2 permissions for some operations:</p> <ul> <li> <p> <code>ec2:DescribeInstanceStatus</code> and <code>ec2:DescribeInstances</code> for all alarms on EC2 instance status metrics</p> </li> <li> <p> <code>ec2:StopInstances</code> for alarms with stop actions</p> </li> <li> <p> <code>ec2:TerminateInstances</code> for alarms with terminate actions</p> </li> <li> <p> <code>ec2:DescribeInstanceRecoveryAttribute</code> and <code>ec2:RecoverInstances</code> for alarms with recover actions</p> </li> </ul> <p>If you have read/write permissions for Amazon CloudWatch but not for Amazon EC2, you can still create an alarm, but the stop or terminate actions won't be performed. However, if you are later granted the required permissions, the alarm actions that you created earlier will be performed.</p> <p>If you are using an IAM role (for example, an Amazon EC2 instance profile), you cannot stop or terminate the instance using alarm actions. However, you can still see the alarm state and perform any other actions such as Amazon SNS notifications or Auto Scaling policies.</p> <p>If you are using temporary security credentials granted using the AWS Security Token Service (AWS STS), you cannot stop or terminate an Amazon EC2 instance using alarm actions.</p> <p>Note that you must create at least one stop, terminate, or reboot alarm using the Amazon EC2 or CloudWatch console to create the <b>EC2ActionsAccess</b> IAM role. After this IAM role is created, you can create stop, terminate, or reboot alarms using a command-line interface or an API.</p>

__Required Parameters__

* `alarmName` __:__ `String`
* `metricName` __:__ `String`
* `namespace` __:__ `String`
* `period` __:__ `Int`
* `evaluationPeriods` __:__ `Int`
* `threshold` __:__ `Float`
* `comparisonOperator` __:__ `ComparisonOperator`


-}
putMetricAlarm :
    String
    -> String
    -> String
    -> Int
    -> Int
    -> Float
    -> ComparisonOperator
    -> (PutMetricAlarmOptions -> PutMetricAlarmOptions)
    -> AWS.Request ()
putMetricAlarm alarmName metricName namespace period evaluationPeriods threshold comparisonOperator setOptions =
  let
    options = setOptions (PutMetricAlarmOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutMetricAlarm"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putMetricAlarm request
-}
type alias PutMetricAlarmOptions =
    { alarmDescription : Maybe String
    , actionsEnabled : Maybe Bool
    , oKActions : Maybe (List String)
    , alarmActions : Maybe (List String)
    , insufficientDataActions : Maybe (List String)
    , statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , unit : Maybe StandardUnit
    }



{-| <p>Publishes metric data points to Amazon CloudWatch. Amazon CloudWatch associates the data points with the specified metric. If the specified metric does not exist, Amazon CloudWatch creates the metric. When Amazon CloudWatch creates a metric, it can take up to fifteen minutes for the metric to appear in calls to <a>ListMetrics</a>.</p> <p>Each <code>PutMetricData</code> request is limited to 8 KB in size for HTTP GET requests and is limited to 40 KB in size for HTTP POST requests.</p> <p>Although the <code>Value</code> parameter accepts numbers of type <code>Double</code>, Amazon CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (e.g., NaN, +Infinity, -Infinity) are not supported.</p> <p>Data points with time stamps from 24 hours ago or longer can take at least 48 hours to become available for <a>GetMetricStatistics</a> from the time they are submitted.</p>

__Required Parameters__

* `namespace` __:__ `String`
* `metricData` __:__ `(List MetricDatum)`


-}
putMetricData :
    String
    -> (List MetricDatum)
    -> AWS.Request ()
putMetricData namespace metricData =
    AWS.Http.unsignedRequest
        "PutMetricData"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Temporarily sets the state of an alarm for testing purposes. When the updated state differs from the previous value, the action configured for the appropriate state is invoked. For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to <code>ALARM</code> sends an Amazon SNS message. The alarm returns to its actual state (often within seconds). Because the alarm state change happens very quickly, it is typically only visible in the alarm's <b>History</b> tab in the Amazon CloudWatch console or through <a>DescribeAlarmHistory</a>.</p>

__Required Parameters__

* `alarmName` __:__ `String`
* `stateValue` __:__ `StateValue`
* `stateReason` __:__ `String`


-}
setAlarmState :
    String
    -> StateValue
    -> String
    -> (SetAlarmStateOptions -> SetAlarmStateOptions)
    -> AWS.Request ()
setAlarmState alarmName stateValue stateReason setOptions =
  let
    options = setOptions (SetAlarmStateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetAlarmState"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setAlarmState request
-}
type alias SetAlarmStateOptions =
    { stateReasonData : Maybe String
    }




{-| <p>Represents the history of a specific alarm.</p>
-}
type alias AlarmHistoryItem =
    { alarmName : Maybe String
    , timestamp : Maybe Date
    , historyItemType : Maybe HistoryItemType
    , historySummary : Maybe String
    , historyData : Maybe String
    }



alarmHistoryItemDecoder : JD.Decoder AlarmHistoryItem
alarmHistoryItemDecoder =
    JDP.decode AlarmHistoryItem
        |> JDP.optional "alarmName" (JD.nullable JD.string) Nothing
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "historyItemType" (JD.nullable historyItemTypeDecoder) Nothing
        |> JDP.optional "historySummary" (JD.nullable JD.string) Nothing
        |> JDP.optional "historyData" (JD.nullable JD.string) Nothing




{-| One of

* `ComparisonOperator_GreaterThanOrEqualToThreshold`
* `ComparisonOperator_GreaterThanThreshold`
* `ComparisonOperator_LessThanThreshold`
* `ComparisonOperator_LessThanOrEqualToThreshold`

-}
type ComparisonOperator
    = ComparisonOperator_GreaterThanOrEqualToThreshold
    | ComparisonOperator_GreaterThanThreshold
    | ComparisonOperator_LessThanThreshold
    | ComparisonOperator_LessThanOrEqualToThreshold



comparisonOperatorDecoder : JD.Decoder ComparisonOperator
comparisonOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GreaterThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperator_GreaterThanOrEqualToThreshold

                    "GreaterThanThreshold" ->
                        JD.succeed ComparisonOperator_GreaterThanThreshold

                    "LessThanThreshold" ->
                        JD.succeed ComparisonOperator_LessThanThreshold

                    "LessThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperator_LessThanOrEqualToThreshold


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Encapsulates the statistical data that Amazon CloudWatch computes from metric data.</p>
-}
type alias Datapoint =
    { timestamp : Maybe Date
    , sampleCount : Maybe Float
    , average : Maybe Float
    , sum : Maybe Float
    , minimum : Maybe Float
    , maximum : Maybe Float
    , unit : Maybe StandardUnit
    , extendedStatistics : Maybe (Dict String Float)
    }



datapointDecoder : JD.Decoder Datapoint
datapointDecoder =
    JDP.decode Datapoint
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "sampleCount" (JD.nullable JD.float) Nothing
        |> JDP.optional "average" (JD.nullable JD.float) Nothing
        |> JDP.optional "sum" (JD.nullable JD.float) Nothing
        |> JDP.optional "minimum" (JD.nullable JD.float) Nothing
        |> JDP.optional "maximum" (JD.nullable JD.float) Nothing
        |> JDP.optional "unit" (JD.nullable standardUnitDecoder) Nothing
        |> JDP.optional "extendedStatistics" (JD.nullable (JD.dict JD.float)) Nothing




{-| Type of HTTP response from describeAlarmHisto
-}
type alias DescribeAlarmHistoryOutput =
    { alarmHistoryItems : Maybe (List AlarmHistoryItem)
    , nextToken : Maybe String
    }



describeAlarmHistoryOutputDecoder : JD.Decoder DescribeAlarmHistoryOutput
describeAlarmHistoryOutputDecoder =
    JDP.decode DescribeAlarmHistoryOutput
        |> JDP.optional "alarmHistoryItems" (JD.nullable (JD.list alarmHistoryItemDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeAlarmsForMetr
-}
type alias DescribeAlarmsForMetricOutput =
    { metricAlarms : Maybe (List MetricAlarm)
    }



describeAlarmsForMetricOutputDecoder : JD.Decoder DescribeAlarmsForMetricOutput
describeAlarmsForMetricOutputDecoder =
    JDP.decode DescribeAlarmsForMetricOutput
        |> JDP.optional "metricAlarms" (JD.nullable (JD.list metricAlarmDecoder)) Nothing




{-| Type of HTTP response from describeAlar
-}
type alias DescribeAlarmsOutput =
    { metricAlarms : Maybe (List MetricAlarm)
    , nextToken : Maybe String
    }



describeAlarmsOutputDecoder : JD.Decoder DescribeAlarmsOutput
describeAlarmsOutputDecoder =
    JDP.decode DescribeAlarmsOutput
        |> JDP.optional "metricAlarms" (JD.nullable (JD.list metricAlarmDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Expands the identity of a metric.</p>
-}
type alias Dimension =
    { name : String
    , value : String
    }



dimensionDecoder : JD.Decoder Dimension
dimensionDecoder =
    JDP.decode Dimension
        |> JDP.required "name" JD.string
        |> JDP.required "value" JD.string




{-| <p>Represents filters for a dimension.</p>
-}
type alias DimensionFilter =
    { name : String
    , value : Maybe String
    }



dimensionFilterDecoder : JD.Decoder DimensionFilter
dimensionFilterDecoder =
    JDP.decode DimensionFilter
        |> JDP.required "name" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getMetricStatisti
-}
type alias GetMetricStatisticsOutput =
    { label : Maybe String
    , datapoints : Maybe (List Datapoint)
    }



getMetricStatisticsOutputDecoder : JD.Decoder GetMetricStatisticsOutput
getMetricStatisticsOutputDecoder =
    JDP.decode GetMetricStatisticsOutput
        |> JDP.optional "label" (JD.nullable JD.string) Nothing
        |> JDP.optional "datapoints" (JD.nullable (JD.list datapointDecoder)) Nothing




{-| One of

* `HistoryItemType_ConfigurationUpdate`
* `HistoryItemType_StateUpdate`
* `HistoryItemType_Action`

-}
type HistoryItemType
    = HistoryItemType_ConfigurationUpdate
    | HistoryItemType_StateUpdate
    | HistoryItemType_Action



historyItemTypeDecoder : JD.Decoder HistoryItemType
historyItemTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ConfigurationUpdate" ->
                        JD.succeed HistoryItemType_ConfigurationUpdate

                    "StateUpdate" ->
                        JD.succeed HistoryItemType_StateUpdate

                    "Action" ->
                        JD.succeed HistoryItemType_Action


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Request processing has failed due to some unknown error, exception, or failure.</p>
-}
type alias InternalServiceFault =
    { message : Maybe String
    }



internalServiceFaultDecoder : JD.Decoder InternalServiceFault
internalServiceFaultDecoder =
    JDP.decode InternalServiceFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Data was not syntactically valid JSON.</p>
-}
type alias InvalidFormatFault =
    { message : Maybe String
    }



invalidFormatFaultDecoder : JD.Decoder InvalidFormatFault
invalidFormatFaultDecoder =
    JDP.decode InvalidFormatFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The next token specified is invalid.</p>
-}
type alias InvalidNextToken =
    { message : Maybe String
    }



invalidNextTokenDecoder : JD.Decoder InvalidNextToken
invalidNextTokenDecoder =
    JDP.decode InvalidNextToken
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Parameters that cannot be used together were used together.</p>
-}
type alias InvalidParameterCombinationException =
    { message : Maybe String
    }



invalidParameterCombinationExceptionDecoder : JD.Decoder InvalidParameterCombinationException
invalidParameterCombinationExceptionDecoder =
    JDP.decode InvalidParameterCombinationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The value of an input parameter is bad or out-of-range.</p>
-}
type alias InvalidParameterValueException =
    { message : Maybe String
    }



invalidParameterValueExceptionDecoder : JD.Decoder InvalidParameterValueException
invalidParameterValueExceptionDecoder =
    JDP.decode InvalidParameterValueException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The quota for alarms for this customer has already been reached.</p>
-}
type alias LimitExceededFault =
    { message : Maybe String
    }



limitExceededFaultDecoder : JD.Decoder LimitExceededFault
limitExceededFaultDecoder =
    JDP.decode LimitExceededFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listMetri
-}
type alias ListMetricsOutput =
    { metrics : Maybe (List Metric)
    , nextToken : Maybe String
    }



listMetricsOutputDecoder : JD.Decoder ListMetricsOutput
listMetricsOutputDecoder =
    JDP.decode ListMetricsOutput
        |> JDP.optional "metrics" (JD.nullable (JD.list metricDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Represents a specific metric.</p>
-}
type alias Metric =
    { namespace : Maybe String
    , metricName : Maybe String
    , dimensions : Maybe (List Dimension)
    }



metricDecoder : JD.Decoder Metric
metricDecoder =
    JDP.decode Metric
        |> JDP.optional "namespace" (JD.nullable JD.string) Nothing
        |> JDP.optional "metricName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dimensions" (JD.nullable (JD.list dimensionDecoder)) Nothing




{-| <p>Represents an alarm.</p>
-}
type alias MetricAlarm =
    { alarmName : Maybe String
    , alarmArn : Maybe String
    , alarmDescription : Maybe String
    , alarmConfigurationUpdatedTimestamp : Maybe Date
    , actionsEnabled : Maybe Bool
    , oKActions : Maybe (List String)
    , alarmActions : Maybe (List String)
    , insufficientDataActions : Maybe (List String)
    , stateValue : Maybe StateValue
    , stateReason : Maybe String
    , stateReasonData : Maybe String
    , stateUpdatedTimestamp : Maybe Date
    , metricName : Maybe String
    , namespace : Maybe String
    , statistic : Maybe Statistic
    , extendedStatistic : Maybe String
    , dimensions : Maybe (List Dimension)
    , period : Maybe Int
    , unit : Maybe StandardUnit
    , evaluationPeriods : Maybe Int
    , threshold : Maybe Float
    , comparisonOperator : Maybe ComparisonOperator
    }



metricAlarmDecoder : JD.Decoder MetricAlarm
metricAlarmDecoder =
    JDP.decode MetricAlarm
        |> JDP.optional "alarmName" (JD.nullable JD.string) Nothing
        |> JDP.optional "alarmArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "alarmDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "alarmConfigurationUpdatedTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "actionsEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "oKActions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "alarmActions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "insufficientDataActions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "stateValue" (JD.nullable stateValueDecoder) Nothing
        |> JDP.optional "stateReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "stateReasonData" (JD.nullable JD.string) Nothing
        |> JDP.optional "stateUpdatedTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "metricName" (JD.nullable JD.string) Nothing
        |> JDP.optional "namespace" (JD.nullable JD.string) Nothing
        |> JDP.optional "statistic" (JD.nullable statisticDecoder) Nothing
        |> JDP.optional "extendedStatistic" (JD.nullable JD.string) Nothing
        |> JDP.optional "dimensions" (JD.nullable (JD.list dimensionDecoder)) Nothing
        |> JDP.optional "period" (JD.nullable JD.int) Nothing
        |> JDP.optional "unit" (JD.nullable standardUnitDecoder) Nothing
        |> JDP.optional "evaluationPeriods" (JD.nullable JD.int) Nothing
        |> JDP.optional "threshold" (JD.nullable JD.float) Nothing
        |> JDP.optional "comparisonOperator" (JD.nullable comparisonOperatorDecoder) Nothing




{-| <p>Encapsulates the information sent to either create a metric or add new values to be aggregated into an existing metric.</p>
-}
type alias MetricDatum =
    { metricName : String
    , dimensions : Maybe (List Dimension)
    , timestamp : Maybe Date
    , value : Maybe Float
    , statisticValues : Maybe StatisticSet
    , unit : Maybe StandardUnit
    }



metricDatumDecoder : JD.Decoder MetricDatum
metricDatumDecoder =
    JDP.decode MetricDatum
        |> JDP.required "metricName" JD.string
        |> JDP.optional "dimensions" (JD.nullable (JD.list dimensionDecoder)) Nothing
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "value" (JD.nullable JD.float) Nothing
        |> JDP.optional "statisticValues" (JD.nullable statisticSetDecoder) Nothing
        |> JDP.optional "unit" (JD.nullable standardUnitDecoder) Nothing




{-| <p>An input parameter that is required is missing.</p>
-}
type alias MissingRequiredParameterException =
    { message : Maybe String
    }



missingRequiredParameterExceptionDecoder : JD.Decoder MissingRequiredParameterException
missingRequiredParameterExceptionDecoder =
    JDP.decode MissingRequiredParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The named resource does not exist.</p>
-}
type alias ResourceNotFound =
    { message : Maybe String
    }



resourceNotFoundDecoder : JD.Decoder ResourceNotFound
resourceNotFoundDecoder =
    JDP.decode ResourceNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `StandardUnit_Seconds`
* `StandardUnit_Microseconds`
* `StandardUnit_Milliseconds`
* `StandardUnit_Bytes`
* `StandardUnit_Kilobytes`
* `StandardUnit_Megabytes`
* `StandardUnit_Gigabytes`
* `StandardUnit_Terabytes`
* `StandardUnit_Bits`
* `StandardUnit_Kilobits`
* `StandardUnit_Megabits`
* `StandardUnit_Gigabits`
* `StandardUnit_Terabits`
* `StandardUnit_Percent`
* `StandardUnit_Count`
* `StandardUnit_Bytes/Second`
* `StandardUnit_Kilobytes/Second`
* `StandardUnit_Megabytes/Second`
* `StandardUnit_Gigabytes/Second`
* `StandardUnit_Terabytes/Second`
* `StandardUnit_Bits/Second`
* `StandardUnit_Kilobits/Second`
* `StandardUnit_Megabits/Second`
* `StandardUnit_Gigabits/Second`
* `StandardUnit_Terabits/Second`
* `StandardUnit_Count/Second`
* `StandardUnit_None`

-}
type StandardUnit
    = StandardUnit_Seconds
    | StandardUnit_Microseconds
    | StandardUnit_Milliseconds
    | StandardUnit_Bytes
    | StandardUnit_Kilobytes
    | StandardUnit_Megabytes
    | StandardUnit_Gigabytes
    | StandardUnit_Terabytes
    | StandardUnit_Bits
    | StandardUnit_Kilobits
    | StandardUnit_Megabits
    | StandardUnit_Gigabits
    | StandardUnit_Terabits
    | StandardUnit_Percent
    | StandardUnit_Count
    | StandardUnit_Bytes_Second
    | StandardUnit_Kilobytes_Second
    | StandardUnit_Megabytes_Second
    | StandardUnit_Gigabytes_Second
    | StandardUnit_Terabytes_Second
    | StandardUnit_Bits_Second
    | StandardUnit_Kilobits_Second
    | StandardUnit_Megabits_Second
    | StandardUnit_Gigabits_Second
    | StandardUnit_Terabits_Second
    | StandardUnit_Count_Second
    | StandardUnit_None



standardUnitDecoder : JD.Decoder StandardUnit
standardUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Seconds" ->
                        JD.succeed StandardUnit_Seconds

                    "Microseconds" ->
                        JD.succeed StandardUnit_Microseconds

                    "Milliseconds" ->
                        JD.succeed StandardUnit_Milliseconds

                    "Bytes" ->
                        JD.succeed StandardUnit_Bytes

                    "Kilobytes" ->
                        JD.succeed StandardUnit_Kilobytes

                    "Megabytes" ->
                        JD.succeed StandardUnit_Megabytes

                    "Gigabytes" ->
                        JD.succeed StandardUnit_Gigabytes

                    "Terabytes" ->
                        JD.succeed StandardUnit_Terabytes

                    "Bits" ->
                        JD.succeed StandardUnit_Bits

                    "Kilobits" ->
                        JD.succeed StandardUnit_Kilobits

                    "Megabits" ->
                        JD.succeed StandardUnit_Megabits

                    "Gigabits" ->
                        JD.succeed StandardUnit_Gigabits

                    "Terabits" ->
                        JD.succeed StandardUnit_Terabits

                    "Percent" ->
                        JD.succeed StandardUnit_Percent

                    "Count" ->
                        JD.succeed StandardUnit_Count

                    "Bytes_Second" ->
                        JD.succeed StandardUnit_Bytes_Second

                    "Kilobytes_Second" ->
                        JD.succeed StandardUnit_Kilobytes_Second

                    "Megabytes_Second" ->
                        JD.succeed StandardUnit_Megabytes_Second

                    "Gigabytes_Second" ->
                        JD.succeed StandardUnit_Gigabytes_Second

                    "Terabytes_Second" ->
                        JD.succeed StandardUnit_Terabytes_Second

                    "Bits_Second" ->
                        JD.succeed StandardUnit_Bits_Second

                    "Kilobits_Second" ->
                        JD.succeed StandardUnit_Kilobits_Second

                    "Megabits_Second" ->
                        JD.succeed StandardUnit_Megabits_Second

                    "Gigabits_Second" ->
                        JD.succeed StandardUnit_Gigabits_Second

                    "Terabits_Second" ->
                        JD.succeed StandardUnit_Terabits_Second

                    "Count_Second" ->
                        JD.succeed StandardUnit_Count_Second

                    "None" ->
                        JD.succeed StandardUnit_None


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `StateValue_OK`
* `StateValue_ALARM`
* `StateValue_INSUFFICIENT_DATA`

-}
type StateValue
    = StateValue_OK
    | StateValue_ALARM
    | StateValue_INSUFFICIENT_DATA



stateValueDecoder : JD.Decoder StateValue
stateValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OK" ->
                        JD.succeed StateValue_OK

                    "ALARM" ->
                        JD.succeed StateValue_ALARM

                    "INSUFFICIENT_DATA" ->
                        JD.succeed StateValue_INSUFFICIENT_DATA


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Statistic_SampleCount`
* `Statistic_Average`
* `Statistic_Sum`
* `Statistic_Minimum`
* `Statistic_Maximum`

-}
type Statistic
    = Statistic_SampleCount
    | Statistic_Average
    | Statistic_Sum
    | Statistic_Minimum
    | Statistic_Maximum



statisticDecoder : JD.Decoder Statistic
statisticDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SampleCount" ->
                        JD.succeed Statistic_SampleCount

                    "Average" ->
                        JD.succeed Statistic_Average

                    "Sum" ->
                        JD.succeed Statistic_Sum

                    "Minimum" ->
                        JD.succeed Statistic_Minimum

                    "Maximum" ->
                        JD.succeed Statistic_Maximum


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a set of statistics that describes a specific metric. </p>
-}
type alias StatisticSet =
    { sampleCount : Float
    , sum : Float
    , minimum : Float
    , maximum : Float
    }



statisticSetDecoder : JD.Decoder StatisticSet
statisticSetDecoder =
    JDP.decode StatisticSet
        |> JDP.required "sampleCount" JD.float
        |> JDP.required "sum" JD.float
        |> JDP.required "minimum" JD.float
        |> JDP.required "maximum" JD.float




