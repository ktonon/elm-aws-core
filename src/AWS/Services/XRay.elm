module AWS.Services.XRay
    exposing
        ( config
        , batchGetTraces
        , BatchGetTracesOptions
        , getServiceGraph
        , GetServiceGraphOptions
        , getTraceGraph
        , GetTraceGraphOptions
        , getTraceSummaries
        , GetTraceSummariesOptions
        , putTelemetryRecords
        , PutTelemetryRecordsOptions
        , putTraceSegments
        , Alias
        , AnnotationValue
        , BackendConnectionErrors
        , BatchGetTracesResult
        , Edge
        , EdgeStatistics
        , ErrorStatistics
        , FaultStatistics
        , GetServiceGraphResult
        , GetTraceGraphResult
        , GetTraceSummariesResult
        , HistogramEntry
        , Http
        , InvalidRequestException
        , PutTelemetryRecordsResult
        , PutTraceSegmentsResult
        , Segment
        , Service
        , ServiceId
        , ServiceStatistics
        , TelemetryRecord
        , ThrottledException
        , Trace
        , TraceSummary
        , TraceUser
        , UnprocessedTraceSegment
        , ValueWithServiceIds
        )

{-| <p>AWS X-Ray provides APIs for managing debug traces and retrieving service maps and other data created by processing those traces.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Exceptions](#exceptions)

## Operations

* [batchGetTraces](#batchGetTraces)
* [BatchGetTracesOptions](#BatchGetTracesOptions)
* [getServiceGraph](#getServiceGraph)
* [GetServiceGraphOptions](#GetServiceGraphOptions)
* [getTraceGraph](#getTraceGraph)
* [GetTraceGraphOptions](#GetTraceGraphOptions)
* [getTraceSummaries](#getTraceSummaries)
* [GetTraceSummariesOptions](#GetTraceSummariesOptions)
* [putTelemetryRecords](#putTelemetryRecords)
* [PutTelemetryRecordsOptions](#PutTelemetryRecordsOptions)
* [putTraceSegments](#putTraceSegments)


@docs batchGetTraces,BatchGetTracesOptions,getServiceGraph,GetServiceGraphOptions,getTraceGraph,GetTraceGraphOptions,getTraceSummaries,GetTraceSummariesOptions,putTelemetryRecords,PutTelemetryRecordsOptions,putTraceSegments

## Responses

* [BatchGetTracesResult](#BatchGetTracesResult)
* [GetServiceGraphResult](#GetServiceGraphResult)
* [GetTraceGraphResult](#GetTraceGraphResult)
* [GetTraceSummariesResult](#GetTraceSummariesResult)
* [PutTelemetryRecordsResult](#PutTelemetryRecordsResult)
* [PutTraceSegmentsResult](#PutTraceSegmentsResult)


@docs BatchGetTracesResult,GetServiceGraphResult,GetTraceGraphResult,GetTraceSummariesResult,PutTelemetryRecordsResult,PutTraceSegmentsResult

## Records

* [Alias](#Alias)
* [AnnotationValue](#AnnotationValue)
* [BackendConnectionErrors](#BackendConnectionErrors)
* [Edge](#Edge)
* [EdgeStatistics](#EdgeStatistics)
* [ErrorStatistics](#ErrorStatistics)
* [FaultStatistics](#FaultStatistics)
* [HistogramEntry](#HistogramEntry)
* [Http](#Http)
* [Segment](#Segment)
* [Service](#Service)
* [ServiceId](#ServiceId)
* [ServiceStatistics](#ServiceStatistics)
* [TelemetryRecord](#TelemetryRecord)
* [Trace](#Trace)
* [TraceSummary](#TraceSummary)
* [TraceUser](#TraceUser)
* [UnprocessedTraceSegment](#UnprocessedTraceSegment)
* [ValueWithServiceIds](#ValueWithServiceIds)


@docs Alias,AnnotationValue,BackendConnectionErrors,Edge,EdgeStatistics,ErrorStatistics,FaultStatistics,HistogramEntry,Http,Segment,Service,ServiceId,ServiceStatistics,TelemetryRecord,Trace,TraceSummary,TraceUser,UnprocessedTraceSegment,ValueWithServiceIds

## Exceptions

* [InvalidRequestException](#InvalidRequestException)
* [ThrottledException](#ThrottledException)


@docs InvalidRequestException,ThrottledException

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
        "xray"
        "2016-04-12"
        "undefined"
        "AWSXRAY_20160412."
        "xray.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use <code>GetTraceSummaries</code> to get a list of trace IDs.</p>

__Required Parameters__

* `traceIds` __:__ `(List String)`


-}
batchGetTraces :
    (List String)
    -> (BatchGetTracesOptions -> BatchGetTracesOptions)
    -> AWS.Request BatchGetTracesResult
batchGetTraces traceIds setOptions =
  let
    options = setOptions (BatchGetTracesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchGetTraces"
        "POST"
        "/Traces"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetTracesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a batchGetTraces request
-}
type alias BatchGetTracesOptions =
    { nextToken : Maybe String
    }



{-| <p>Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.</p>

__Required Parameters__

* `startTime` __:__ `Date`
* `endTime` __:__ `Date`


-}
getServiceGraph :
    Date
    -> Date
    -> (GetServiceGraphOptions -> GetServiceGraphOptions)
    -> AWS.Request GetServiceGraphResult
getServiceGraph startTime endTime setOptions =
  let
    options = setOptions (GetServiceGraphOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetServiceGraph"
        "POST"
        "/ServiceGraph"
        (AWS.Http.JsonBody
            JE.null
        )
        getServiceGraphResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getServiceGraph request
-}
type alias GetServiceGraphOptions =
    { nextToken : Maybe String
    }



{-| <p>Retrieves a service graph for one or more specific trace IDs.</p>

__Required Parameters__

* `traceIds` __:__ `(List String)`


-}
getTraceGraph :
    (List String)
    -> (GetTraceGraphOptions -> GetTraceGraphOptions)
    -> AWS.Request GetTraceGraphResult
getTraceGraph traceIds setOptions =
  let
    options = setOptions (GetTraceGraphOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetTraceGraph"
        "POST"
        "/TraceGraph"
        (AWS.Http.JsonBody
            JE.null
        )
        getTraceGraphResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getTraceGraph request
-}
type alias GetTraceGraphOptions =
    { nextToken : Maybe String
    }



{-| <p>Retrieves IDs and metadata for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to <code>BatchGetTraces</code>.</p>

__Required Parameters__

* `startTime` __:__ `Date`
* `endTime` __:__ `Date`


-}
getTraceSummaries :
    Date
    -> Date
    -> (GetTraceSummariesOptions -> GetTraceSummariesOptions)
    -> AWS.Request GetTraceSummariesResult
getTraceSummaries startTime endTime setOptions =
  let
    options = setOptions (GetTraceSummariesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetTraceSummaries"
        "POST"
        "/TraceSummaries"
        (AWS.Http.JsonBody
            JE.null
        )
        getTraceSummariesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getTraceSummaries request
-}
type alias GetTraceSummariesOptions =
    { sampling : Maybe Bool
    , filterExpression : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Used by the AWS X-Ray daemon to upload telemetry.</p>

__Required Parameters__

* `telemetryRecords` __:__ `(List TelemetryRecord)`


-}
putTelemetryRecords :
    (List TelemetryRecord)
    -> (PutTelemetryRecordsOptions -> PutTelemetryRecordsOptions)
    -> AWS.Request PutTelemetryRecordsResult
putTelemetryRecords telemetryRecords setOptions =
  let
    options = setOptions (PutTelemetryRecordsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutTelemetryRecords"
        "POST"
        "/TelemetryRecords"
        (AWS.Http.JsonBody
            JE.null
        )
        putTelemetryRecordsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a putTelemetryRecords request
-}
type alias PutTelemetryRecordsOptions =
    { eC2InstanceId : Maybe String
    , hostname : Maybe String
    , resourceARN : Maybe String
    }



{-| <p>Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments.</p>

__Required Parameters__

* `traceSegmentDocuments` __:__ `(List String)`


-}
putTraceSegments :
    (List String)
    -> AWS.Request PutTraceSegmentsResult
putTraceSegments traceSegmentDocuments =
    AWS.Http.unsignedRequest
        "PutTraceSegments"
        "POST"
        "/TraceSegments"
        (AWS.Http.JsonBody
            JE.null
        )
        putTraceSegmentsResultDecoder
        |> AWS.UnsignedRequest




{-| <p>An alias for an edge.</p>
-}
type alias Alias =
    { name : Maybe String
    , names : Maybe (List String)
    , type_ : Maybe String
    }



aliasDecoder : JD.Decoder Alias
aliasDecoder =
    JDP.decode Alias
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "names" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing




{-| <p>Value of a segment annotation. Has one of three value types: Number, Boolean or String.</p>
-}
type alias AnnotationValue =
    { numberValue : Maybe Float
    , booleanValue : Maybe Bool
    , stringValue : Maybe String
    }



annotationValueDecoder : JD.Decoder AnnotationValue
annotationValueDecoder =
    JDP.decode AnnotationValue
        |> JDP.optional "numberValue" (JD.nullable JD.float) Nothing
        |> JDP.optional "booleanValue" (JD.nullable JD.bool) Nothing
        |> JDP.optional "stringValue" (JD.nullable JD.string) Nothing




{-| <p></p>
-}
type alias BackendConnectionErrors =
    { timeoutCount : Maybe Int
    , connectionRefusedCount : Maybe Int
    , hTTPCode4XXCount : Maybe Int
    , hTTPCode5XXCount : Maybe Int
    , unknownHostCount : Maybe Int
    , otherCount : Maybe Int
    }



backendConnectionErrorsDecoder : JD.Decoder BackendConnectionErrors
backendConnectionErrorsDecoder =
    JDP.decode BackendConnectionErrors
        |> JDP.optional "timeoutCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "connectionRefusedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "hTTPCode4XXCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "hTTPCode5XXCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "unknownHostCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "otherCount" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from batchGetTrac
-}
type alias BatchGetTracesResult =
    { traces : Maybe (List Trace)
    , unprocessedTraceIds : Maybe (List String)
    , nextToken : Maybe String
    }



batchGetTracesResultDecoder : JD.Decoder BatchGetTracesResult
batchGetTracesResultDecoder =
    JDP.decode BatchGetTracesResult
        |> JDP.optional "traces" (JD.nullable (JD.list traceDecoder)) Nothing
        |> JDP.optional "unprocessedTraceIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Information about a connection between two services.</p>
-}
type alias Edge =
    { referenceId : Maybe Int
    , startTime : Maybe Date
    , endTime : Maybe Date
    , summaryStatistics : Maybe EdgeStatistics
    , responseTimeHistogram : Maybe (List HistogramEntry)
    , aliases : Maybe (List Alias)
    }



edgeDecoder : JD.Decoder Edge
edgeDecoder =
    JDP.decode Edge
        |> JDP.optional "referenceId" (JD.nullable JD.int) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "summaryStatistics" (JD.nullable edgeStatisticsDecoder) Nothing
        |> JDP.optional "responseTimeHistogram" (JD.nullable (JD.list histogramEntryDecoder)) Nothing
        |> JDP.optional "aliases" (JD.nullable (JD.list aliasDecoder)) Nothing




{-| <p>Response statistics for an edge.</p>
-}
type alias EdgeStatistics =
    { okCount : Maybe Int
    , errorStatistics : Maybe ErrorStatistics
    , faultStatistics : Maybe FaultStatistics
    , totalCount : Maybe Int
    , totalResponseTime : Maybe Float
    }



edgeStatisticsDecoder : JD.Decoder EdgeStatistics
edgeStatisticsDecoder =
    JDP.decode EdgeStatistics
        |> JDP.optional "okCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "errorStatistics" (JD.nullable errorStatisticsDecoder) Nothing
        |> JDP.optional "faultStatistics" (JD.nullable faultStatisticsDecoder) Nothing
        |> JDP.optional "totalCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalResponseTime" (JD.nullable JD.float) Nothing




{-| <p>Information about requests that failed with a 4xx Client Error status code.</p>
-}
type alias ErrorStatistics =
    { throttleCount : Maybe Int
    , otherCount : Maybe Int
    , totalCount : Maybe Int
    }



errorStatisticsDecoder : JD.Decoder ErrorStatistics
errorStatisticsDecoder =
    JDP.decode ErrorStatistics
        |> JDP.optional "throttleCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "otherCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalCount" (JD.nullable JD.int) Nothing




{-| <p>Information about requests that failed with a 5xx Server Error status code.</p>
-}
type alias FaultStatistics =
    { otherCount : Maybe Int
    , totalCount : Maybe Int
    }



faultStatisticsDecoder : JD.Decoder FaultStatistics
faultStatisticsDecoder =
    JDP.decode FaultStatistics
        |> JDP.optional "otherCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalCount" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from getServiceGra
-}
type alias GetServiceGraphResult =
    { startTime : Maybe Date
    , endTime : Maybe Date
    , services : Maybe (List Service)
    , nextToken : Maybe String
    }



getServiceGraphResultDecoder : JD.Decoder GetServiceGraphResult
getServiceGraphResultDecoder =
    JDP.decode GetServiceGraphResult
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "services" (JD.nullable (JD.list serviceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getTraceGra
-}
type alias GetTraceGraphResult =
    { services : Maybe (List Service)
    , nextToken : Maybe String
    }



getTraceGraphResultDecoder : JD.Decoder GetTraceGraphResult
getTraceGraphResultDecoder =
    JDP.decode GetTraceGraphResult
        |> JDP.optional "services" (JD.nullable (JD.list serviceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getTraceSummari
-}
type alias GetTraceSummariesResult =
    { traceSummaries : Maybe (List TraceSummary)
    , approximateTime : Maybe Date
    , tracesProcessedCount : Maybe Int
    , nextToken : Maybe String
    }



getTraceSummariesResultDecoder : JD.Decoder GetTraceSummariesResult
getTraceSummariesResultDecoder =
    JDP.decode GetTraceSummariesResult
        |> JDP.optional "traceSummaries" (JD.nullable (JD.list traceSummaryDecoder)) Nothing
        |> JDP.optional "approximateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "tracesProcessedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.</p>
-}
type alias HistogramEntry =
    { value : Maybe Float
    , count : Maybe Int
    }



histogramEntryDecoder : JD.Decoder HistogramEntry
histogramEntryDecoder =
    JDP.decode HistogramEntry
        |> JDP.optional "value" (JD.nullable JD.float) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing




{-| <p>Information about an HTTP request.</p>
-}
type alias Http =
    { httpURL : Maybe String
    , httpStatus : Maybe Int
    , httpMethod : Maybe String
    , userAgent : Maybe String
    , clientIp : Maybe String
    }



httpDecoder : JD.Decoder Http
httpDecoder =
    JDP.decode Http
        |> JDP.optional "httpURL" (JD.nullable JD.string) Nothing
        |> JDP.optional "httpStatus" (JD.nullable JD.int) Nothing
        |> JDP.optional "httpMethod" (JD.nullable JD.string) Nothing
        |> JDP.optional "userAgent" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientIp" (JD.nullable JD.string) Nothing




{-| <p>The request is missing required parameters or has invalid parameters.</p>
-}
type alias InvalidRequestException =
    { 
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JDP.decode InvalidRequestException



{-| Type of HTTP response from putTelemetryRecor
-}
type alias PutTelemetryRecordsResult =
    { 
    }



putTelemetryRecordsResultDecoder : JD.Decoder PutTelemetryRecordsResult
putTelemetryRecordsResultDecoder =
    JDP.decode PutTelemetryRecordsResult



{-| Type of HTTP response from putTraceSegmen
-}
type alias PutTraceSegmentsResult =
    { unprocessedTraceSegments : Maybe (List UnprocessedTraceSegment)
    }



putTraceSegmentsResultDecoder : JD.Decoder PutTraceSegmentsResult
putTraceSegmentsResultDecoder =
    JDP.decode PutTraceSegmentsResult
        |> JDP.optional "unprocessedTraceSegments" (JD.nullable (JD.list unprocessedTraceSegmentDecoder)) Nothing




{-| <p>Information about a segment</p>
-}
type alias Segment =
    { id : Maybe String
    , document : Maybe String
    }



segmentDecoder : JD.Decoder Segment
segmentDecoder =
    JDP.decode Segment
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "document" (JD.nullable JD.string) Nothing




{-| <p>Information about an application that processed requests, users that made requests, or downstream services, resources and applications that an application used.</p>
-}
type alias Service =
    { referenceId : Maybe Int
    , name : Maybe String
    , names : Maybe (List String)
    , root : Maybe Bool
    , accountId : Maybe String
    , type_ : Maybe String
    , state : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    , edges : Maybe (List Edge)
    , summaryStatistics : Maybe ServiceStatistics
    , durationHistogram : Maybe (List HistogramEntry)
    }



serviceDecoder : JD.Decoder Service
serviceDecoder =
    JDP.decode Service
        |> JDP.optional "referenceId" (JD.nullable JD.int) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "names" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "root" (JD.nullable JD.bool) Nothing
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "edges" (JD.nullable (JD.list edgeDecoder)) Nothing
        |> JDP.optional "summaryStatistics" (JD.nullable serviceStatisticsDecoder) Nothing
        |> JDP.optional "durationHistogram" (JD.nullable (JD.list histogramEntryDecoder)) Nothing




{-| <p></p>
-}
type alias ServiceId =
    { name : Maybe String
    , names : Maybe (List String)
    , accountId : Maybe String
    , type_ : Maybe String
    }



serviceIdDecoder : JD.Decoder ServiceId
serviceIdDecoder =
    JDP.decode ServiceId
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "names" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing




{-| <p>Response statistics for a service.</p>
-}
type alias ServiceStatistics =
    { okCount : Maybe Int
    , errorStatistics : Maybe ErrorStatistics
    , faultStatistics : Maybe FaultStatistics
    , totalCount : Maybe Int
    , totalResponseTime : Maybe Float
    }



serviceStatisticsDecoder : JD.Decoder ServiceStatistics
serviceStatisticsDecoder =
    JDP.decode ServiceStatistics
        |> JDP.optional "okCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "errorStatistics" (JD.nullable errorStatisticsDecoder) Nothing
        |> JDP.optional "faultStatistics" (JD.nullable faultStatisticsDecoder) Nothing
        |> JDP.optional "totalCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalResponseTime" (JD.nullable JD.float) Nothing




{-| <p></p>
-}
type alias TelemetryRecord =
    { timestamp : Maybe Date
    , segmentsReceivedCount : Maybe Int
    , segmentsSentCount : Maybe Int
    , segmentsSpilloverCount : Maybe Int
    , segmentsRejectedCount : Maybe Int
    , backendConnectionErrors : Maybe BackendConnectionErrors
    }



telemetryRecordDecoder : JD.Decoder TelemetryRecord
telemetryRecordDecoder =
    JDP.decode TelemetryRecord
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "segmentsReceivedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "segmentsSentCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "segmentsSpilloverCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "segmentsRejectedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "backendConnectionErrors" (JD.nullable backendConnectionErrorsDecoder) Nothing




{-| <p>The request exceeds the maximum number of requests per second.</p>
-}
type alias ThrottledException =
    { 
    }



throttledExceptionDecoder : JD.Decoder ThrottledException
throttledExceptionDecoder =
    JDP.decode ThrottledException



{-| <p>A collection of segment documents with matching trace IDs.</p>
-}
type alias Trace =
    { id : Maybe String
    , duration : Maybe Float
    , segments : Maybe (List Segment)
    }



traceDecoder : JD.Decoder Trace
traceDecoder =
    JDP.decode Trace
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.float) Nothing
        |> JDP.optional "segments" (JD.nullable (JD.list segmentDecoder)) Nothing




{-| <p>Metadata generated from the segment documents in a trace.</p>
-}
type alias TraceSummary =
    { id : Maybe String
    , duration : Maybe Float
    , responseTime : Maybe Float
    , hasFault : Maybe Bool
    , hasError : Maybe Bool
    , hasThrottle : Maybe Bool
    , isPartial : Maybe Bool
    , http : Maybe Http
    , annotations : Maybe (Dict String (List ValueWithServiceIds))
    , users : Maybe (List TraceUser)
    , serviceIds : Maybe (List ServiceId)
    }



traceSummaryDecoder : JD.Decoder TraceSummary
traceSummaryDecoder =
    JDP.decode TraceSummary
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.float) Nothing
        |> JDP.optional "responseTime" (JD.nullable JD.float) Nothing
        |> JDP.optional "hasFault" (JD.nullable JD.bool) Nothing
        |> JDP.optional "hasError" (JD.nullable JD.bool) Nothing
        |> JDP.optional "hasThrottle" (JD.nullable JD.bool) Nothing
        |> JDP.optional "isPartial" (JD.nullable JD.bool) Nothing
        |> JDP.optional "http" (JD.nullable httpDecoder) Nothing
        |> JDP.optional "annotations" (JD.nullable (JD.dict (JD.list valueWithServiceIdsDecoder))) Nothing
        |> JDP.optional "users" (JD.nullable (JD.list traceUserDecoder)) Nothing
        |> JDP.optional "serviceIds" (JD.nullable (JD.list serviceIdDecoder)) Nothing




{-| <p>Information about a user recorded in segment documents.</p>
-}
type alias TraceUser =
    { userName : Maybe String
    , serviceIds : Maybe (List ServiceId)
    }



traceUserDecoder : JD.Decoder TraceUser
traceUserDecoder =
    JDP.decode TraceUser
        |> JDP.optional "userName" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceIds" (JD.nullable (JD.list serviceIdDecoder)) Nothing




{-| <p>Information about a segment that failed processing.</p>
-}
type alias UnprocessedTraceSegment =
    { id : Maybe String
    , errorCode : Maybe String
    , message : Maybe String
    }



unprocessedTraceSegmentDecoder : JD.Decoder UnprocessedTraceSegment
unprocessedTraceSegmentDecoder =
    JDP.decode UnprocessedTraceSegment
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Information about a segment annotation.</p>
-}
type alias ValueWithServiceIds =
    { annotationValue : Maybe AnnotationValue
    , serviceIds : Maybe (List ServiceId)
    }



valueWithServiceIdsDecoder : JD.Decoder ValueWithServiceIds
valueWithServiceIdsDecoder =
    JDP.decode ValueWithServiceIds
        |> JDP.optional "annotationValue" (JD.nullable annotationValueDecoder) Nothing
        |> JDP.optional "serviceIds" (JD.nullable (JD.list serviceIdDecoder)) Nothing




