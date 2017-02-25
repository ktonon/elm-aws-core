module AWS.Services.Kinesis
    exposing
        ( config
        , addTagsToStream
        , createStream
        , decreaseStreamRetentionPeriod
        , deleteStream
        , describeLimits
        , describeStream
        , DescribeStreamOptions
        , disableEnhancedMonitoring
        , enableEnhancedMonitoring
        , getRecords
        , GetRecordsOptions
        , getShardIterator
        , GetShardIteratorOptions
        , increaseStreamRetentionPeriod
        , listStreams
        , ListStreamsOptions
        , listTagsForStream
        , ListTagsForStreamOptions
        , mergeShards
        , putRecord
        , PutRecordOptions
        , putRecords
        , removeTagsFromStream
        , splitShard
        , updateShardCount
        , DescribeLimitsOutput
        , DescribeStreamOutput
        , EnhancedMetrics
        , EnhancedMonitoringOutput
        , ExpiredIteratorException
        , GetRecordsOutput
        , GetShardIteratorOutput
        , HashKeyRange
        , InvalidArgumentException
        , LimitExceededException
        , ListStreamsOutput
        , ListTagsForStreamOutput
        , MetricsName(..)
        , ProvisionedThroughputExceededException
        , PutRecordOutput
        , PutRecordsOutput
        , PutRecordsRequestEntry
        , PutRecordsResultEntry
        , Record
        , ResourceInUseException
        , ResourceNotFoundException
        , ScalingType(..)
        , SequenceNumberRange
        , Shard
        , ShardIteratorType(..)
        , StreamDescription
        , StreamStatus(..)
        , Tag
        , UpdateShardCountOutput
        )

{-| <fullname>Amazon Kinesis Streams Service API Reference</fullname> <p>Amazon Kinesis Streams is a managed service that scales elastically for real time processing of streaming big data.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToStream](#addTagsToStream)
* [createStream](#createStream)
* [decreaseStreamRetentionPeriod](#decreaseStreamRetentionPeriod)
* [deleteStream](#deleteStream)
* [describeLimits](#describeLimits)
* [describeStream](#describeStream)
* [DescribeStreamOptions](#DescribeStreamOptions)
* [disableEnhancedMonitoring](#disableEnhancedMonitoring)
* [enableEnhancedMonitoring](#enableEnhancedMonitoring)
* [getRecords](#getRecords)
* [GetRecordsOptions](#GetRecordsOptions)
* [getShardIterator](#getShardIterator)
* [GetShardIteratorOptions](#GetShardIteratorOptions)
* [increaseStreamRetentionPeriod](#increaseStreamRetentionPeriod)
* [listStreams](#listStreams)
* [ListStreamsOptions](#ListStreamsOptions)
* [listTagsForStream](#listTagsForStream)
* [ListTagsForStreamOptions](#ListTagsForStreamOptions)
* [mergeShards](#mergeShards)
* [putRecord](#putRecord)
* [PutRecordOptions](#PutRecordOptions)
* [putRecords](#putRecords)
* [removeTagsFromStream](#removeTagsFromStream)
* [splitShard](#splitShard)
* [updateShardCount](#updateShardCount)


@docs addTagsToStream,createStream,decreaseStreamRetentionPeriod,deleteStream,describeLimits,describeStream,DescribeStreamOptions,disableEnhancedMonitoring,enableEnhancedMonitoring,getRecords,GetRecordsOptions,getShardIterator,GetShardIteratorOptions,increaseStreamRetentionPeriod,listStreams,ListStreamsOptions,listTagsForStream,ListTagsForStreamOptions,mergeShards,putRecord,PutRecordOptions,putRecords,removeTagsFromStream,splitShard,updateShardCount

## Responses

* [DescribeLimitsOutput](#DescribeLimitsOutput)
* [DescribeStreamOutput](#DescribeStreamOutput)
* [EnhancedMonitoringOutput](#EnhancedMonitoringOutput)
* [GetRecordsOutput](#GetRecordsOutput)
* [GetShardIteratorOutput](#GetShardIteratorOutput)
* [ListStreamsOutput](#ListStreamsOutput)
* [ListTagsForStreamOutput](#ListTagsForStreamOutput)
* [PutRecordOutput](#PutRecordOutput)
* [PutRecordsOutput](#PutRecordsOutput)
* [UpdateShardCountOutput](#UpdateShardCountOutput)


@docs DescribeLimitsOutput,DescribeStreamOutput,EnhancedMonitoringOutput,GetRecordsOutput,GetShardIteratorOutput,ListStreamsOutput,ListTagsForStreamOutput,PutRecordOutput,PutRecordsOutput,UpdateShardCountOutput

## Records

* [EnhancedMetrics](#EnhancedMetrics)
* [HashKeyRange](#HashKeyRange)
* [PutRecordsRequestEntry](#PutRecordsRequestEntry)
* [PutRecordsResultEntry](#PutRecordsResultEntry)
* [Record](#Record)
* [SequenceNumberRange](#SequenceNumberRange)
* [Shard](#Shard)
* [StreamDescription](#StreamDescription)
* [Tag](#Tag)


@docs EnhancedMetrics,HashKeyRange,PutRecordsRequestEntry,PutRecordsResultEntry,Record,SequenceNumberRange,Shard,StreamDescription,Tag

## Unions

* [MetricsName](#MetricsName)
* [ScalingType](#ScalingType)
* [ShardIteratorType](#ShardIteratorType)
* [StreamStatus](#StreamStatus)


@docs MetricsName,ScalingType,ShardIteratorType,StreamStatus

## Exceptions

* [ExpiredIteratorException](#ExpiredIteratorException)
* [InvalidArgumentException](#InvalidArgumentException)
* [LimitExceededException](#LimitExceededException)
* [ProvisionedThroughputExceededException](#ProvisionedThroughputExceededException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs ExpiredIteratorException,InvalidArgumentException,LimitExceededException,ProvisionedThroughputExceededException,ResourceInUseException,ResourceNotFoundException

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
        "kinesis"
        "2013-12-02"
        "1.1"
        "AWSKINESIS_20131202."
        "kinesis.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds or updates tags for the specified Amazon Kinesis stream. Each stream can have up to 10 tags.</p> <p>If tags have already been assigned to the stream, <code>AddTagsToStream</code> overwrites any existing tags that correspond to the specified tag keys.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `tags` __:__ `(Dict String String)`


-}
addTagsToStream :
    String
    -> (Dict String String)
    -> AWS.Request ()
addTagsToStream streamName tags =
    AWS.Http.unsignedRequest
        "AddTagsToStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates an Amazon Kinesis stream. A stream captures and transports data records that are continuously emitted from different data sources or <i>producers</i>. Scale-out within a stream is explicitly supported by means of shards, which are uniquely identified groups of data records in a stream.</p> <p>You specify and control the number of shards that a stream is composed of. Each shard can support reads up to 5 transactions per second, up to a maximum data read total of 2 MB per second. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second. You can add shards to a stream if the amount of data input increases and you can remove shards if the amount of data input decreases.</p> <p>The stream name identifies the stream. The name is scoped to the AWS account used by the application. It is also scoped by region. That is, two streams in two different accounts can have the same name, and two streams in the same account, but in two different regions, can have the same name.</p> <p> <code>CreateStream</code> is an asynchronous operation. Upon receiving a <code>CreateStream</code> request, Amazon Kinesis immediately returns and sets the stream status to <code>CREATING</code>. After the stream is created, Amazon Kinesis sets the stream status to <code>ACTIVE</code>. You should perform read and write operations only on an <code>ACTIVE</code> stream. </p> <p>You receive a <code>LimitExceededException</code> when making a <code>CreateStream</code> request if you try to do one of the following:</p> <ul> <li><p>Have more than five streams in the <code>CREATING</code> state at any point in time.</p> </li> <li><p>Create more shards than are authorized for your account.</p> </li> </ul> <p>For the default shard limit for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>. If you need to increase this limit, <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact AWS Support</a>.</p> <p>You can use <code>DescribeStream</code> to check the stream status, which is returned in <code>StreamStatus</code>.</p> <p> <a>CreateStream</a> has a limit of 5 transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardCount` __:__ `Int`


-}
createStream :
    String
    -> Int
    -> AWS.Request ()
createStream streamName shardCount =
    AWS.Http.unsignedRequest
        "CreateStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Decreases the Amazon Kinesis stream's retention period, which is the length of time data records are accessible after they are added to the stream. The minimum value of a stream's retention period is 24 hours.</p> <p>This operation may result in lost data. For example, if the stream's retention period is 48 hours and is decreased to 24 hours, any data already in the stream that is older than 24 hours is inaccessible.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `retentionPeriodHours` __:__ `Int`


-}
decreaseStreamRetentionPeriod :
    String
    -> Int
    -> AWS.Request ()
decreaseStreamRetentionPeriod streamName retentionPeriodHours =
    AWS.Http.unsignedRequest
        "DecreaseStreamRetentionPeriod"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes an Amazon Kinesis stream and all its shards and data. You must shut down any applications that are operating on the stream before you delete the stream. If an application attempts to operate on a deleted stream, it will receive the exception <code>ResourceNotFoundException</code>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can delete it. After a <code>DeleteStream</code> request, the specified stream is in the <code>DELETING</code> state until Amazon Kinesis completes the deletion.</p> <p> <b>Note:</b> Amazon Kinesis might continue to accept data read and write operations, such as <a>PutRecord</a>, <a>PutRecords</a>, and <a>GetRecords</a>, on a stream in the <code>DELETING</code> state until the stream deletion is complete.</p> <p>When you delete a stream, any shards in that stream are also deleted, and any tags are dissociated from the stream.</p> <p>You can use the <a>DescribeStream</a> operation to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <a>DeleteStream</a> has a limit of 5 transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`


-}
deleteStream :
    String
    -> AWS.Request ()
deleteStream streamName =
    AWS.Http.unsignedRequest
        "DeleteStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Describes the shard limits and usage for the account.</p> <p>If you update your account limits, the old limits might be returned for a few minutes.</p> <p>This operation has a limit of 1 transaction per second per account.</p>

__Required Parameters__



-}
describeLimits :
    AWS.Request DescribeLimitsOutput
describeLimits =
    AWS.Http.unsignedRequest
        "DescribeLimits"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLimitsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the specified Amazon Kinesis stream.</p> <p>The information returned includes the stream name, Amazon Resource Name (ARN), creation time, enhanced metric configuration, and shard map. The shard map is an array of shard objects. For each shard object, there is the hash key and sequence number ranges that the shard spans, and the IDs of any earlier shards that played in a role in creating the shard. Every record ingested in the stream is identified by a sequence number, which is assigned when the record is put into the stream.</p> <p>You can limit the number of shards returned by each call. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html">Retrieving Shards from a Stream</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>There are no guarantees about the chronological order shards returned. To process shards in chronological order, use the ID of the parent shard to track the lineage to the oldest shard.</p> <p>This operation has a limit of 10 transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`


-}
describeStream :
    String
    -> (DescribeStreamOptions -> DescribeStreamOptions)
    -> AWS.Request DescribeStreamOutput
describeStream streamName setOptions =
  let
    options = setOptions (DescribeStreamOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStreamOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeStream request
-}
type alias DescribeStreamOptions =
    { limit : Maybe Int
    , exclusiveStartShardId : Maybe String
    }



{-| <p>Disables enhanced monitoring.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardLevelMetrics` __:__ `(List MetricsName)`


-}
disableEnhancedMonitoring :
    String
    -> (List MetricsName)
    -> AWS.Request EnhancedMonitoringOutput
disableEnhancedMonitoring streamName shardLevelMetrics =
    AWS.Http.unsignedRequest
        "DisableEnhancedMonitoring"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enhancedMonitoringOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Enables enhanced Amazon Kinesis stream monitoring for shard-level metrics.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardLevelMetrics` __:__ `(List MetricsName)`


-}
enableEnhancedMonitoring :
    String
    -> (List MetricsName)
    -> AWS.Request EnhancedMonitoringOutput
enableEnhancedMonitoring streamName shardLevelMetrics =
    AWS.Http.unsignedRequest
        "EnableEnhancedMonitoring"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enhancedMonitoringOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets data records from an Amazon Kinesis stream's shard.</p> <p>Specify a shard iterator using the <code>ShardIterator</code> parameter. The shard iterator specifies the position in the shard from which you want to start reading data records sequentially. If there are no records available in the portion of the shard that the iterator points to, <a>GetRecords</a> returns an empty list. Note that it might take multiple calls to get to a portion of the shard that contains records.</p> <p>You can scale by provisioning multiple shards per stream while considering service limits (for more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>). Your application should have one thread per shard, each reading continuously from its stream. To read from a stream continually, call <a>GetRecords</a> in a loop. Use <a>GetShardIterator</a> to get the shard iterator to specify in the first <a>GetRecords</a> call. <a>GetRecords</a> returns a new shard iterator in <code>NextShardIterator</code>. Specify the shard iterator returned in <code>NextShardIterator</code> in subsequent calls to <a>GetRecords</a>. Note that if the shard has been closed, the shard iterator can't return more data and <a>GetRecords</a> returns <code>null</code> in <code>NextShardIterator</code>. You can terminate the loop when the shard is closed, or when the shard iterator reaches the record with the sequence number or other attribute that marks it as the last record to process.</p> <p>Each data record can be up to 1 MB in size, and each shard can read up to 2 MB per second. You can ensure that your calls don't exceed the maximum supported size or throughput by using the <code>Limit</code> parameter to specify the maximum number of records that <a>GetRecords</a> can return. Consider your average record size when determining this limit.</p> <p>The size of the data returned by <a>GetRecords</a> varies depending on the utilization of the shard. The maximum size of data that <a>GetRecords</a> can return is 10 MB. If a call returns this amount of data, subsequent calls made within the next 5 seconds throw <code>ProvisionedThroughputExceededException</code>. If there is insufficient provisioned throughput on the shard, subsequent calls made within the next 1 second throw <code>ProvisionedThroughputExceededException</code>. Note that <a>GetRecords</a> won't return any data when it throws an exception. For this reason, we recommend that you wait one second between calls to <a>GetRecords</a>; however, it's possible that the application will get exceptions for longer than 1 second.</p> <p>To detect whether the application is falling behind in processing, you can use the <code>MillisBehindLatest</code> response attribute. You can also monitor the stream using CloudWatch metrics and other mechanisms (see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html">Monitoring</a> in the <i>Amazon Kinesis Streams Developer Guide</i>).</p> <p>Each Amazon Kinesis record includes a value, <code>ApproximateArrivalTimestamp</code>, that is set when a stream successfully receives and stores a record. This is commonly referred to as a server-side timestamp, whereas a client-side timestamp is set when a data producer creates or sends the record to a stream (a data producer is any data source putting data records into a stream, for example with <a>PutRecords</a>). The timestamp has millisecond precision. There are no guarantees about the timestamp accuracy, or that the timestamp is always increasing. For example, records in a shard or across a stream might have timestamps that are out of order.</p>

__Required Parameters__

* `shardIterator` __:__ `String`


-}
getRecords :
    String
    -> (GetRecordsOptions -> GetRecordsOptions)
    -> AWS.Request GetRecordsOutput
getRecords shardIterator setOptions =
  let
    options = setOptions (GetRecordsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetRecords"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRecordsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getRecords request
-}
type alias GetRecordsOptions =
    { limit : Maybe Int
    }



{-| <p>Gets an Amazon Kinesis shard iterator. A shard iterator expires five minutes after it is returned to the requester.</p> <p>A shard iterator specifies the shard position from which to start reading data records sequentially. The position is specified using the sequence number of a data record in a shard. A sequence number is the identifier associated with every record ingested in the stream, and is assigned when a record is put into the stream. Each stream has one or more shards.</p> <p>You must specify the shard iterator type. For example, you can set the <code>ShardIteratorType</code> parameter to read exactly from the position denoted by a specific sequence number by using the <code>AT_SEQUENCE_NUMBER</code> shard iterator type, or right after the sequence number by using the <code>AFTER_SEQUENCE_NUMBER</code> shard iterator type, using sequence numbers returned by earlier calls to <a>PutRecord</a>, <a>PutRecords</a>, <a>GetRecords</a>, or <a>DescribeStream</a>. In the request, you can specify the shard iterator type <code>AT_TIMESTAMP</code> to read records from an arbitrary point in time, <code>TRIM_HORIZON</code> to cause <code>ShardIterator</code> to point to the last untrimmed record in the shard in the system (the oldest data record in the shard), or <code>LATEST</code> so that you always read the most recent data in the shard. </p> <p>When you read repeatedly from a stream, use a <a>GetShardIterator</a> request to get the first shard iterator for use in your first <a>GetRecords</a> request and for subsequent reads use the shard iterator returned by the <a>GetRecords</a> request in <code>NextShardIterator</code>. A new shard iterator is returned by every <a>GetRecords</a> request in <code>NextShardIterator</code>, which you use in the <code>ShardIterator</code> parameter of the next <a>GetRecords</a> request. </p> <p>If a <a>GetShardIterator</a> request is made too often, you receive a <code>ProvisionedThroughputExceededException</code>. For more information about throughput limits, see <a>GetRecords</a>, and <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>If the shard is closed, <a>GetShardIterator</a> returns a valid iterator for the last sequence number of the shard. Note that a shard can be closed as a result of using <a>SplitShard</a> or <a>MergeShards</a>.</p> <p> <a>GetShardIterator</a> has a limit of 5 transactions per second per account per open shard.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardId` __:__ `String`
* `shardIteratorType` __:__ `ShardIteratorType`


-}
getShardIterator :
    String
    -> String
    -> ShardIteratorType
    -> (GetShardIteratorOptions -> GetShardIteratorOptions)
    -> AWS.Request GetShardIteratorOutput
getShardIterator streamName shardId shardIteratorType setOptions =
  let
    options = setOptions (GetShardIteratorOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetShardIterator"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getShardIteratorOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getShardIterator request
-}
type alias GetShardIteratorOptions =
    { startingSequenceNumber : Maybe String
    , timestamp : Maybe Date
    }



{-| <p>Increases the Amazon Kinesis stream's retention period, which is the length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 168 hours (7 days).</p> <p>Upon choosing a longer stream retention period, this operation will increase the time period records are accessible that have not yet expired. However, it will not make previous data that has expired (older than the stream's previous retention period) accessible after the operation has been called. For example, if a stream's retention period is set to 24 hours and is increased to 168 hours, any data that is older than 24 hours will remain inaccessible to consumer applications.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `retentionPeriodHours` __:__ `Int`


-}
increaseStreamRetentionPeriod :
    String
    -> Int
    -> AWS.Request ()
increaseStreamRetentionPeriod streamName retentionPeriodHours =
    AWS.Http.unsignedRequest
        "IncreaseStreamRetentionPeriod"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Lists your Amazon Kinesis streams.</p> <p>The number of streams may be too large to return from a single call to <code>ListStreams</code>. You can limit the number of returned streams using the <code>Limit</code> parameter. If you do not specify a value for the <code>Limit</code> parameter, Amazon Kinesis uses the default limit, which is currently 10.</p> <p>You can detect if there are more streams available to list by using the <code>HasMoreStreams</code> flag from the returned output. If there are more streams available, you can request more streams by using the name of the last stream returned by the <code>ListStreams</code> request in the <code>ExclusiveStartStreamName</code> parameter in a subsequent request to <code>ListStreams</code>. The group of stream names returned by the subsequent request is then added to the list. You can continue this process until all the stream names have been collected in the list. </p> <p> <a>ListStreams</a> has a limit of 5 transactions per second per account.</p>

__Required Parameters__



-}
listStreams :
    (ListStreamsOptions -> ListStreamsOptions)
    -> AWS.Request ListStreamsOutput
listStreams setOptions =
  let
    options = setOptions (ListStreamsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListStreams"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listStreamsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listStreams request
-}
type alias ListStreamsOptions =
    { limit : Maybe Int
    , exclusiveStartStreamName : Maybe String
    }



{-| <p>Lists the tags for the specified Amazon Kinesis stream.</p>

__Required Parameters__

* `streamName` __:__ `String`


-}
listTagsForStream :
    String
    -> (ListTagsForStreamOptions -> ListTagsForStreamOptions)
    -> AWS.Request ListTagsForStreamOutput
listTagsForStream streamName setOptions =
  let
    options = setOptions (ListTagsForStreamOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTagsForStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForStreamOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listTagsForStream request
-}
type alias ListTagsForStreamOptions =
    { exclusiveStartTagKey : Maybe String
    , limit : Maybe Int
    }



{-| <p>Merges two adjacent shards in an Amazon Kinesis stream and combines them into a single shard to reduce the stream's capacity to ingest and transport data. Two shards are considered adjacent if the union of the hash key ranges for the two shards form a contiguous set with no gaps. For example, if you have two shards, one with a hash key range of 276...381 and the other with a hash key range of 382...454, then you could merge these two shards into a single shard that would have a hash key range of 276...454. After the merge, the single child shard receives data for all hash key values covered by the two parent shards.</p> <p> <code>MergeShards</code> is called when there is a need to reduce the overall capacity of a stream because of excess capacity that is not being used. You must specify the shard to be merged and the adjacent shard for a stream. For more information about merging shards, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html">Merge Two Shards</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>If the stream is in the <code>ACTIVE</code> state, you can call <code>MergeShards</code>. If a stream is in the <code>CREATING</code>, <code>UPDATING</code>, or <code>DELETING</code> state, <code>MergeShards</code> returns a <code>ResourceInUseException</code>. If the specified stream does not exist, <code>MergeShards</code> returns a <code>ResourceNotFoundException</code>. </p> <p>You can use <a>DescribeStream</a> to check the state of the stream, which is returned in <code>StreamStatus</code>.</p> <p> <code>MergeShards</code> is an asynchronous operation. Upon receiving a <code>MergeShards</code> request, Amazon Kinesis immediately returns a response and sets the <code>StreamStatus</code> to <code>UPDATING</code>. After the operation is completed, Amazon Kinesis sets the <code>StreamStatus</code> to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You use <a>DescribeStream</a> to determine the shard IDs that are specified in the <code>MergeShards</code> request. </p> <p>If you try to operate on too many streams in parallel using <a>CreateStream</a>, <a>DeleteStream</a>, <code>MergeShards</code> or <a>SplitShard</a>, you will receive a <code>LimitExceededException</code>. </p> <p> <code>MergeShards</code> has limit of 5 transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardToMerge` __:__ `String`
* `adjacentShardToMerge` __:__ `String`


-}
mergeShards :
    String
    -> String
    -> String
    -> AWS.Request ()
mergeShards streamName shardToMerge adjacentShardToMerge =
    AWS.Http.unsignedRequest
        "MergeShards"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Writes a single data record into an Amazon Kinesis stream. Call <code>PutRecord</code> to send data into the stream for real-time ingestion and subsequent processing, one record at a time. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; a partition key; and the data blob itself.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Amazon Kinesis to distribute data across shards. Amazon Kinesis segregates the data records that belong to a stream into multiple shards, using the partition key associated with each data record to determine which shard a given data record belongs to.</p> <p>Partition keys are Unicode strings, with a maximum length limit of 256 characters for each key. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards using the hash key ranges of the shards. You can override hashing the partition key to determine the shard by explicitly specifying a hash value using the <code>ExplicitHashKey</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p> <code>PutRecord</code> returns the shard ID of where the data record was placed and the sequence number that was assigned to the data record.</p> <p>Sequence numbers increase over time and are specific to a shard within a stream, not across all shards within a stream. To guarantee strictly increasing ordering, write serially to a shard and use the <code>SequenceNumberForOrdering</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>If a <code>PutRecord</code> request cannot be processed because of insufficient provisioned throughput on the shard involved in the request, <code>PutRecord</code> throws <code>ProvisionedThroughputExceededException</code>. </p> <p>Data records are accessible for only 24 hours from the time that they are added to a stream.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `data` __:__ `String`
* `partitionKey` __:__ `String`


-}
putRecord :
    String
    -> String
    -> String
    -> (PutRecordOptions -> PutRecordOptions)
    -> AWS.Request PutRecordOutput
putRecord streamName data partitionKey setOptions =
  let
    options = setOptions (PutRecordOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutRecord"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putRecordOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a putRecord request
-}
type alias PutRecordOptions =
    { explicitHashKey : Maybe String
    , sequenceNumberForOrdering : Maybe String
    }



{-| <p>Writes multiple data records into an Amazon Kinesis stream in a single call (also referred to as a <code>PutRecords</code> request). Use this operation to send data into the stream for data ingestion and processing. </p> <p>Each <code>PutRecords</code> request can support up to 500 records. Each record in the request can be as large as 1 MB, up to a limit of 5 MB for the entire request, including partition keys. Each shard can support writes up to 1,000 records per second, up to a maximum data write total of 1 MB per second.</p> <p>You must specify the name of the stream that captures, stores, and transports the data; and an array of request <code>Records</code>, with each record in the array requiring a partition key and data blob. The record size limit applies to the total size of the partition key and data blob.</p> <p>The data blob can be any type of data; for example, a segment from a log file, geographic/location data, website clickstream data, and so on.</p> <p>The partition key is used by Amazon Kinesis as input to a hash function that maps the partition key and associated data to a specific shard. An MD5 hash function is used to map partition keys to 128-bit integer values and to map associated data records to shards. As a result of this hashing mechanism, all data records with the same partition key map to the same shard within the stream. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream">Adding Data to a Stream</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>Each record in the <code>Records</code> array may include an optional parameter, <code>ExplicitHashKey</code>, which overrides the partition key to shard mapping. This parameter allows a data producer to determine explicitly the shard where the record is stored. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>The <code>PutRecords</code> response includes an array of response <code>Records</code>. Each record in the response array directly correlates with a record in the request array using natural ordering, from the top to the bottom of the request and response. The response <code>Records</code> array always includes the same number of records as the request array.</p> <p>The response <code>Records</code> array includes both successfully and unsuccessfully processed records. Amazon Kinesis attempts to process all records in each <code>PutRecords</code> request. A single record failure does not stop the processing of subsequent records.</p> <p>A successfully-processed record includes <code>ShardId</code> and <code>SequenceNumber</code> values. The <code>ShardId</code> parameter identifies the shard in the stream where the record is stored. The <code>SequenceNumber</code> parameter is an identifier assigned to the put record, unique to all records in the stream.</p> <p>An unsuccessfully-processed record includes <code>ErrorCode</code> and <code>ErrorMessage</code> values. <code>ErrorCode</code> reflects the type of error and can be one of the following values: <code>ProvisionedThroughputExceededException</code> or <code>InternalFailure</code>. <code>ErrorMessage</code> provides more detailed information about the <code>ProvisionedThroughputExceededException</code> exception including the account ID, stream name, and shard ID of the record that was throttled. For more information about partially successful responses, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords">Adding Multiple Records with PutRecords</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>By default, data records are accessible for only 24 hours from the time that they are added to an Amazon Kinesis stream. This retention period can be modified using the <a>DecreaseStreamRetentionPeriod</a> and <a>IncreaseStreamRetentionPeriod</a> operations.</p>

__Required Parameters__

* `records` __:__ `(List PutRecordsRequestEntry)`
* `streamName` __:__ `String`


-}
putRecords :
    (List PutRecordsRequestEntry)
    -> String
    -> AWS.Request PutRecordsOutput
putRecords records streamName =
    AWS.Http.unsignedRequest
        "PutRecords"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putRecordsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes tags from the specified Amazon Kinesis stream. Removed tags are deleted and cannot be recovered after this operation successfully completes.</p> <p>If you specify a tag that does not exist, it is ignored.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTagsFromStream :
    String
    -> (List String)
    -> AWS.Request ()
removeTagsFromStream streamName tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTagsFromStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Splits a shard into two new shards in the Amazon Kinesis stream to increase the stream's capacity to ingest and transport data. <code>SplitShard</code> is called when there is a need to increase the overall capacity of a stream because of an expected increase in the volume of data records being ingested. </p> <p>You can also use <code>SplitShard</code> when a shard appears to be approaching its maximum utilization; for example, the producers sending data into the specific shard are suddenly sending more than previously anticipated. You can also call <code>SplitShard</code> to increase stream capacity, so that more Amazon Kinesis applications can simultaneously read data from the stream for real-time processing. </p> <p>You must specify the shard to be split and the new hash key, which is the position in the shard where the shard gets split in two. In many cases, the new hash key might simply be the average of the beginning and ending hash key, but it can be any hash key value in the range being mapped into the shard. For more information about splitting shards, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html">Split a Shard</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p> <p>You can use <a>DescribeStream</a> to determine the shard ID and hash key values for the <code>ShardToSplit</code> and <code>NewStartingHashKey</code> parameters that are specified in the <code>SplitShard</code> request.</p> <p> <code>SplitShard</code> is an asynchronous operation. Upon receiving a <code>SplitShard</code> request, Amazon Kinesis immediately returns a response and sets the stream status to <code>UPDATING</code>. After the operation is completed, Amazon Kinesis sets the stream status to <code>ACTIVE</code>. Read and write operations continue to work while the stream is in the <code>UPDATING</code> state. </p> <p>You can use <code>DescribeStream</code> to check the status of the stream, which is returned in <code>StreamStatus</code>. If the stream is in the <code>ACTIVE</code> state, you can call <code>SplitShard</code>. If a stream is in <code>CREATING</code> or <code>UPDATING</code> or <code>DELETING</code> states, <code>DescribeStream</code> returns a <code>ResourceInUseException</code>.</p> <p>If the specified stream does not exist, <code>DescribeStream</code> returns a <code>ResourceNotFoundException</code>. If you try to create more shards than are authorized for your account, you receive a <code>LimitExceededException</code>. </p> <p>For the default shard limit for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>. If you need to increase this limit, <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact AWS Support</a>.</p> <p>If you try to operate on too many streams simultaneously using <a>CreateStream</a>, <a>DeleteStream</a>, <a>MergeShards</a>, and/or <a>SplitShard</a>, you receive a <code>LimitExceededException</code>. </p> <p> <code>SplitShard</code> has limit of 5 transactions per second per account.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `shardToSplit` __:__ `String`
* `newStartingHashKey` __:__ `String`


-}
splitShard :
    String
    -> String
    -> String
    -> AWS.Request ()
splitShard streamName shardToSplit newStartingHashKey =
    AWS.Http.unsignedRequest
        "SplitShard"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Updates the shard count of the specified stream to the specified number of shards.</p> <p>Updating the shard count is an asynchronous operation. Upon receiving the request, Amazon Kinesis returns immediately and sets the status of the stream to <code>UPDATING</code>. After the update is complete, Amazon Kinesis sets the status of the stream back to <code>ACTIVE</code>. Depending on the size of the stream, the scaling action could take a few minutes to complete. You can continue to read and write data to your stream while its status is <code>UPDATING</code>.</p> <p>To update the shard count, Amazon Kinesis performs splits and merges and individual shards. This can cause short-lived shards to be created, in addition to the final shards. We recommend that you double or halve the shard count, as this results in the fewest number of splits or merges.</p> <p>This operation has a rate limit of twice per rolling 24 hour period. You cannot scale above double your current shard count, scale below half your current shard count, or exceed the shard limits for your account.</p> <p>For the default limits for an AWS account, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>. If you need to increase a limit, <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">contact AWS Support</a>.</p>

__Required Parameters__

* `streamName` __:__ `String`
* `targetShardCount` __:__ `Int`
* `scalingType` __:__ `ScalingType`


-}
updateShardCount :
    String
    -> Int
    -> ScalingType
    -> AWS.Request UpdateShardCountOutput
updateShardCount streamName targetShardCount scalingType =
    AWS.Http.unsignedRequest
        "UpdateShardCount"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateShardCountOutputDecoder
        |> AWS.UnsignedRequest




{-| Type of HTTP response from describeLimi
-}
type alias DescribeLimitsOutput =
    { shardLimit : Int
    , openShardCount : Int
    }



describeLimitsOutputDecoder : JD.Decoder DescribeLimitsOutput
describeLimitsOutputDecoder =
    JDP.decode DescribeLimitsOutput
        |> JDP.required "shardLimit" JD.int
        |> JDP.required "openShardCount" JD.int




{-| Type of HTTP response from describeStre
-}
type alias DescribeStreamOutput =
    { streamDescription : StreamDescription
    }



describeStreamOutputDecoder : JD.Decoder DescribeStreamOutput
describeStreamOutputDecoder =
    JDP.decode DescribeStreamOutput
        |> JDP.required "streamDescription" streamDescriptionDecoder




{-| <p>Represents enhanced metrics types.</p>
-}
type alias EnhancedMetrics =
    { shardLevelMetrics : Maybe (List MetricsName)
    }



enhancedMetricsDecoder : JD.Decoder EnhancedMetrics
enhancedMetricsDecoder =
    JDP.decode EnhancedMetrics
        |> JDP.optional "shardLevelMetrics" (JD.nullable (JD.list metricsNameDecoder)) Nothing




{-| Type of HTTP response from enhancedMonitori
-}
type alias EnhancedMonitoringOutput =
    { streamName : Maybe String
    , currentShardLevelMetrics : Maybe (List MetricsName)
    , desiredShardLevelMetrics : Maybe (List MetricsName)
    }



enhancedMonitoringOutputDecoder : JD.Decoder EnhancedMonitoringOutput
enhancedMonitoringOutputDecoder =
    JDP.decode EnhancedMonitoringOutput
        |> JDP.optional "streamName" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentShardLevelMetrics" (JD.nullable (JD.list metricsNameDecoder)) Nothing
        |> JDP.optional "desiredShardLevelMetrics" (JD.nullable (JD.list metricsNameDecoder)) Nothing




{-| <p>The provided iterator exceeds the maximum age allowed.</p>
-}
type alias ExpiredIteratorException =
    { message : Maybe String
    }



expiredIteratorExceptionDecoder : JD.Decoder ExpiredIteratorException
expiredIteratorExceptionDecoder =
    JDP.decode ExpiredIteratorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getRecor
-}
type alias GetRecordsOutput =
    { records : (List Record)
    , nextShardIterator : Maybe String
    , millisBehindLatest : Maybe Int
    }



getRecordsOutputDecoder : JD.Decoder GetRecordsOutput
getRecordsOutputDecoder =
    JDP.decode GetRecordsOutput
        |> JDP.required "records" (JD.list recordDecoder)
        |> JDP.optional "nextShardIterator" (JD.nullable JD.string) Nothing
        |> JDP.optional "millisBehindLatest" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from getShardIterat
-}
type alias GetShardIteratorOutput =
    { shardIterator : Maybe String
    }



getShardIteratorOutputDecoder : JD.Decoder GetShardIteratorOutput
getShardIteratorOutputDecoder =
    JDP.decode GetShardIteratorOutput
        |> JDP.optional "shardIterator" (JD.nullable JD.string) Nothing




{-| <p>The range of possible hash key values for the shard, which is a set of ordered contiguous positive integers.</p>
-}
type alias HashKeyRange =
    { startingHashKey : String
    , endingHashKey : String
    }



hashKeyRangeDecoder : JD.Decoder HashKeyRange
hashKeyRangeDecoder =
    JDP.decode HashKeyRange
        |> JDP.required "startingHashKey" JD.string
        |> JDP.required "endingHashKey" JD.string




{-| <p>A specified parameter exceeds its restrictions, is not supported, or can't be used. For more information, see the returned message.</p>
-}
type alias InvalidArgumentException =
    { message : Maybe String
    }



invalidArgumentExceptionDecoder : JD.Decoder InvalidArgumentException
invalidArgumentExceptionDecoder =
    JDP.decode InvalidArgumentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The requested resource exceeds the maximum number allowed, or the number of concurrent stream requests exceeds the maximum number allowed (5).</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listStrea
-}
type alias ListStreamsOutput =
    { streamNames : (List String)
    , hasMoreStreams : Bool
    }



listStreamsOutputDecoder : JD.Decoder ListStreamsOutput
listStreamsOutputDecoder =
    JDP.decode ListStreamsOutput
        |> JDP.required "streamNames" (JD.list JD.string)
        |> JDP.required "hasMoreStreams" JD.bool




{-| Type of HTTP response from listTagsForStre
-}
type alias ListTagsForStreamOutput =
    { tags : (List Tag)
    , hasMoreTags : Bool
    }



listTagsForStreamOutputDecoder : JD.Decoder ListTagsForStreamOutput
listTagsForStreamOutputDecoder =
    JDP.decode ListTagsForStreamOutput
        |> JDP.required "tags" (JD.list tagDecoder)
        |> JDP.required "hasMoreTags" JD.bool




{-| One of

* `MetricsName_IncomingBytes`
* `MetricsName_IncomingRecords`
* `MetricsName_OutgoingBytes`
* `MetricsName_OutgoingRecords`
* `MetricsName_WriteProvisionedThroughputExceeded`
* `MetricsName_ReadProvisionedThroughputExceeded`
* `MetricsName_IteratorAgeMilliseconds`
* `MetricsName_ALL`

-}
type MetricsName
    = MetricsName_IncomingBytes
    | MetricsName_IncomingRecords
    | MetricsName_OutgoingBytes
    | MetricsName_OutgoingRecords
    | MetricsName_WriteProvisionedThroughputExceeded
    | MetricsName_ReadProvisionedThroughputExceeded
    | MetricsName_IteratorAgeMilliseconds
    | MetricsName_ALL



metricsNameDecoder : JD.Decoder MetricsName
metricsNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IncomingBytes" ->
                        JD.succeed MetricsName_IncomingBytes

                    "IncomingRecords" ->
                        JD.succeed MetricsName_IncomingRecords

                    "OutgoingBytes" ->
                        JD.succeed MetricsName_OutgoingBytes

                    "OutgoingRecords" ->
                        JD.succeed MetricsName_OutgoingRecords

                    "WriteProvisionedThroughputExceeded" ->
                        JD.succeed MetricsName_WriteProvisionedThroughputExceeded

                    "ReadProvisionedThroughputExceeded" ->
                        JD.succeed MetricsName_ReadProvisionedThroughputExceeded

                    "IteratorAgeMilliseconds" ->
                        JD.succeed MetricsName_IteratorAgeMilliseconds

                    "ALL" ->
                        JD.succeed MetricsName_ALL


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request rate for the stream is too high, or the requested data is too large for the available throughput. Reduce the frequency or size of your requests. For more information, see <a href="http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html">Streams Limits</a> in the <i>Amazon Kinesis Streams Developer Guide</i>, and <a href="http://docs.aws.amazon.com/general/latest/gr/api-retries.html">Error Retries and Exponential Backoff in AWS</a> in the <i>AWS General Reference</i>.</p>
-}
type alias ProvisionedThroughputExceededException =
    { message : Maybe String
    }



provisionedThroughputExceededExceptionDecoder : JD.Decoder ProvisionedThroughputExceededException
provisionedThroughputExceededExceptionDecoder =
    JDP.decode ProvisionedThroughputExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putReco
-}
type alias PutRecordOutput =
    { shardId : String
    , sequenceNumber : String
    }



putRecordOutputDecoder : JD.Decoder PutRecordOutput
putRecordOutputDecoder =
    JDP.decode PutRecordOutput
        |> JDP.required "shardId" JD.string
        |> JDP.required "sequenceNumber" JD.string




{-| Type of HTTP response from putRecor
-}
type alias PutRecordsOutput =
    { failedRecordCount : Maybe Int
    , records : (List PutRecordsResultEntry)
    }



putRecordsOutputDecoder : JD.Decoder PutRecordsOutput
putRecordsOutputDecoder =
    JDP.decode PutRecordsOutput
        |> JDP.optional "failedRecordCount" (JD.nullable JD.int) Nothing
        |> JDP.required "records" (JD.list putRecordsResultEntryDecoder)




{-| <p>Represents the output for <code>PutRecords</code>.</p>
-}
type alias PutRecordsRequestEntry =
    { data : String
    , explicitHashKey : Maybe String
    , partitionKey : String
    }



putRecordsRequestEntryDecoder : JD.Decoder PutRecordsRequestEntry
putRecordsRequestEntryDecoder =
    JDP.decode PutRecordsRequestEntry
        |> JDP.required "data" JD.string
        |> JDP.optional "explicitHashKey" (JD.nullable JD.string) Nothing
        |> JDP.required "partitionKey" JD.string




{-| <p>Represents the result of an individual record from a <code>PutRecords</code> request. A record that is successfully added to a stream includes <code>SequenceNumber</code> and <code>ShardId</code> in the result. A record that fails to be added to the stream includes <code>ErrorCode</code> and <code>ErrorMessage</code> in the result.</p>
-}
type alias PutRecordsResultEntry =
    { sequenceNumber : Maybe String
    , shardId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putRecordsResultEntryDecoder : JD.Decoder PutRecordsResultEntry
putRecordsResultEntryDecoder =
    JDP.decode PutRecordsResultEntry
        |> JDP.optional "sequenceNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "shardId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| <p>The unit of data of the Amazon Kinesis stream, which is composed of a sequence number, a partition key, and a data blob.</p>
-}
type alias Record =
    { sequenceNumber : String
    , approximateArrivalTimestamp : Maybe Date
    , data : String
    , partitionKey : String
    }



recordDecoder : JD.Decoder Record
recordDecoder =
    JDP.decode Record
        |> JDP.required "sequenceNumber" JD.string
        |> JDP.optional "approximateArrivalTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.required "data" JD.string
        |> JDP.required "partitionKey" JD.string




{-| <p>The resource is not available for this operation. For successful operation, the resource needs to be in the <code>ACTIVE</code> state.</p>
-}
type alias ResourceInUseException =
    { message : Maybe String
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The requested resource could not be found. The stream might not be specified correctly.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ScalingType_UNIFORM_SCALING`

-}
type ScalingType
    = ScalingType_UNIFORM_SCALING



scalingTypeDecoder : JD.Decoder ScalingType
scalingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNIFORM_SCALING" ->
                        JD.succeed ScalingType_UNIFORM_SCALING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The range of possible sequence numbers for the shard.</p>
-}
type alias SequenceNumberRange =
    { startingSequenceNumber : String
    , endingSequenceNumber : Maybe String
    }



sequenceNumberRangeDecoder : JD.Decoder SequenceNumberRange
sequenceNumberRangeDecoder =
    JDP.decode SequenceNumberRange
        |> JDP.required "startingSequenceNumber" JD.string
        |> JDP.optional "endingSequenceNumber" (JD.nullable JD.string) Nothing




{-| <p>A uniquely identified group of data records in an Amazon Kinesis stream.</p>
-}
type alias Shard =
    { shardId : String
    , parentShardId : Maybe String
    , adjacentParentShardId : Maybe String
    , hashKeyRange : HashKeyRange
    , sequenceNumberRange : SequenceNumberRange
    }



shardDecoder : JD.Decoder Shard
shardDecoder =
    JDP.decode Shard
        |> JDP.required "shardId" JD.string
        |> JDP.optional "parentShardId" (JD.nullable JD.string) Nothing
        |> JDP.optional "adjacentParentShardId" (JD.nullable JD.string) Nothing
        |> JDP.required "hashKeyRange" hashKeyRangeDecoder
        |> JDP.required "sequenceNumberRange" sequenceNumberRangeDecoder




{-| One of

* `ShardIteratorType_AT_SEQUENCE_NUMBER`
* `ShardIteratorType_AFTER_SEQUENCE_NUMBER`
* `ShardIteratorType_TRIM_HORIZON`
* `ShardIteratorType_LATEST`
* `ShardIteratorType_AT_TIMESTAMP`

-}
type ShardIteratorType
    = ShardIteratorType_AT_SEQUENCE_NUMBER
    | ShardIteratorType_AFTER_SEQUENCE_NUMBER
    | ShardIteratorType_TRIM_HORIZON
    | ShardIteratorType_LATEST
    | ShardIteratorType_AT_TIMESTAMP



shardIteratorTypeDecoder : JD.Decoder ShardIteratorType
shardIteratorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AT_SEQUENCE_NUMBER" ->
                        JD.succeed ShardIteratorType_AT_SEQUENCE_NUMBER

                    "AFTER_SEQUENCE_NUMBER" ->
                        JD.succeed ShardIteratorType_AFTER_SEQUENCE_NUMBER

                    "TRIM_HORIZON" ->
                        JD.succeed ShardIteratorType_TRIM_HORIZON

                    "LATEST" ->
                        JD.succeed ShardIteratorType_LATEST

                    "AT_TIMESTAMP" ->
                        JD.succeed ShardIteratorType_AT_TIMESTAMP


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the output for <a>DescribeStream</a>.</p>
-}
type alias StreamDescription =
    { streamName : String
    , streamARN : String
    , streamStatus : StreamStatus
    , shards : (List Shard)
    , hasMoreShards : Bool
    , retentionPeriodHours : Int
    , streamCreationTimestamp : Date
    , enhancedMonitoring : (List EnhancedMetrics)
    }



streamDescriptionDecoder : JD.Decoder StreamDescription
streamDescriptionDecoder =
    JDP.decode StreamDescription
        |> JDP.required "streamName" JD.string
        |> JDP.required "streamARN" JD.string
        |> JDP.required "streamStatus" streamStatusDecoder
        |> JDP.required "shards" (JD.list shardDecoder)
        |> JDP.required "hasMoreShards" JD.bool
        |> JDP.required "retentionPeriodHours" JD.int
        |> JDP.required "streamCreationTimestamp" JDX.date
        |> JDP.required "enhancedMonitoring" (JD.list enhancedMetricsDecoder)




{-| One of

* `StreamStatus_CREATING`
* `StreamStatus_DELETING`
* `StreamStatus_ACTIVE`
* `StreamStatus_UPDATING`

-}
type StreamStatus
    = StreamStatus_CREATING
    | StreamStatus_DELETING
    | StreamStatus_ACTIVE
    | StreamStatus_UPDATING



streamStatusDecoder : JD.Decoder StreamStatus
streamStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed StreamStatus_CREATING

                    "DELETING" ->
                        JD.succeed StreamStatus_DELETING

                    "ACTIVE" ->
                        JD.succeed StreamStatus_ACTIVE

                    "UPDATING" ->
                        JD.succeed StreamStatus_UPDATING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Metadata assigned to the stream, consisting of a key-value pair.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateShardCou
-}
type alias UpdateShardCountOutput =
    { streamName : Maybe String
    , currentShardCount : Maybe Int
    , targetShardCount : Maybe Int
    }



updateShardCountOutputDecoder : JD.Decoder UpdateShardCountOutput
updateShardCountOutputDecoder =
    JDP.decode UpdateShardCountOutput
        |> JDP.optional "streamName" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentShardCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "targetShardCount" (JD.nullable JD.int) Nothing




