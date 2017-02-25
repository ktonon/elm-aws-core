module AWS.Services.Firehose
    exposing
        ( config
        , createDeliveryStream
        , CreateDeliveryStreamOptions
        , deleteDeliveryStream
        , describeDeliveryStream
        , DescribeDeliveryStreamOptions
        , listDeliveryStreams
        , ListDeliveryStreamsOptions
        , putRecord
        , putRecordBatch
        , updateDestination
        , UpdateDestinationOptions
        , BufferingHints
        , CloudWatchLoggingOptions
        , CompressionFormat(..)
        , ConcurrentModificationException
        , CopyCommand
        , CreateDeliveryStreamOutput
        , DeleteDeliveryStreamOutput
        , DeliveryStreamDescription
        , DeliveryStreamStatus(..)
        , DescribeDeliveryStreamOutput
        , DestinationDescription
        , ElasticsearchBufferingHints
        , ElasticsearchDestinationConfiguration
        , ElasticsearchDestinationDescription
        , ElasticsearchDestinationUpdate
        , ElasticsearchIndexRotationPeriod(..)
        , ElasticsearchRetryOptions
        , ElasticsearchS3BackupMode(..)
        , EncryptionConfiguration
        , ExtendedS3DestinationConfiguration
        , ExtendedS3DestinationDescription
        , ExtendedS3DestinationUpdate
        , InvalidArgumentException
        , KMSEncryptionConfig
        , LimitExceededException
        , ListDeliveryStreamsOutput
        , NoEncryptionConfig(..)
        , ProcessingConfiguration
        , Processor
        , ProcessorParameter
        , ProcessorParameterName(..)
        , ProcessorType(..)
        , PutRecordBatchOutput
        , PutRecordBatchResponseEntry
        , PutRecordOutput
        , Record
        , RedshiftDestinationConfiguration
        , RedshiftDestinationDescription
        , RedshiftDestinationUpdate
        , RedshiftRetryOptions
        , RedshiftS3BackupMode(..)
        , ResourceInUseException
        , ResourceNotFoundException
        , S3BackupMode(..)
        , S3DestinationConfiguration
        , S3DestinationDescription
        , S3DestinationUpdate
        , ServiceUnavailableException
        , UpdateDestinationOutput
        )

{-| <fullname>Amazon Kinesis Firehose API Reference</fullname> <p>Amazon Kinesis Firehose is a fully-managed service that delivers real-time streaming data to destinations such as Amazon Simple Storage Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), and Amazon Redshift.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createDeliveryStream](#createDeliveryStream)
* [CreateDeliveryStreamOptions](#CreateDeliveryStreamOptions)
* [deleteDeliveryStream](#deleteDeliveryStream)
* [describeDeliveryStream](#describeDeliveryStream)
* [DescribeDeliveryStreamOptions](#DescribeDeliveryStreamOptions)
* [listDeliveryStreams](#listDeliveryStreams)
* [ListDeliveryStreamsOptions](#ListDeliveryStreamsOptions)
* [putRecord](#putRecord)
* [putRecordBatch](#putRecordBatch)
* [updateDestination](#updateDestination)
* [UpdateDestinationOptions](#UpdateDestinationOptions)


@docs createDeliveryStream,CreateDeliveryStreamOptions,deleteDeliveryStream,describeDeliveryStream,DescribeDeliveryStreamOptions,listDeliveryStreams,ListDeliveryStreamsOptions,putRecord,putRecordBatch,updateDestination,UpdateDestinationOptions

## Responses

* [CreateDeliveryStreamOutput](#CreateDeliveryStreamOutput)
* [DeleteDeliveryStreamOutput](#DeleteDeliveryStreamOutput)
* [DescribeDeliveryStreamOutput](#DescribeDeliveryStreamOutput)
* [ListDeliveryStreamsOutput](#ListDeliveryStreamsOutput)
* [PutRecordBatchOutput](#PutRecordBatchOutput)
* [PutRecordOutput](#PutRecordOutput)
* [UpdateDestinationOutput](#UpdateDestinationOutput)


@docs CreateDeliveryStreamOutput,DeleteDeliveryStreamOutput,DescribeDeliveryStreamOutput,ListDeliveryStreamsOutput,PutRecordBatchOutput,PutRecordOutput,UpdateDestinationOutput

## Records

* [BufferingHints](#BufferingHints)
* [CloudWatchLoggingOptions](#CloudWatchLoggingOptions)
* [CopyCommand](#CopyCommand)
* [DeliveryStreamDescription](#DeliveryStreamDescription)
* [DestinationDescription](#DestinationDescription)
* [ElasticsearchBufferingHints](#ElasticsearchBufferingHints)
* [ElasticsearchDestinationConfiguration](#ElasticsearchDestinationConfiguration)
* [ElasticsearchDestinationDescription](#ElasticsearchDestinationDescription)
* [ElasticsearchDestinationUpdate](#ElasticsearchDestinationUpdate)
* [ElasticsearchRetryOptions](#ElasticsearchRetryOptions)
* [EncryptionConfiguration](#EncryptionConfiguration)
* [ExtendedS3DestinationConfiguration](#ExtendedS3DestinationConfiguration)
* [ExtendedS3DestinationDescription](#ExtendedS3DestinationDescription)
* [ExtendedS3DestinationUpdate](#ExtendedS3DestinationUpdate)
* [KMSEncryptionConfig](#KMSEncryptionConfig)
* [ProcessingConfiguration](#ProcessingConfiguration)
* [Processor](#Processor)
* [ProcessorParameter](#ProcessorParameter)
* [PutRecordBatchResponseEntry](#PutRecordBatchResponseEntry)
* [Record](#Record)
* [RedshiftDestinationConfiguration](#RedshiftDestinationConfiguration)
* [RedshiftDestinationDescription](#RedshiftDestinationDescription)
* [RedshiftDestinationUpdate](#RedshiftDestinationUpdate)
* [RedshiftRetryOptions](#RedshiftRetryOptions)
* [S3DestinationConfiguration](#S3DestinationConfiguration)
* [S3DestinationDescription](#S3DestinationDescription)
* [S3DestinationUpdate](#S3DestinationUpdate)


@docs BufferingHints,CloudWatchLoggingOptions,CopyCommand,DeliveryStreamDescription,DestinationDescription,ElasticsearchBufferingHints,ElasticsearchDestinationConfiguration,ElasticsearchDestinationDescription,ElasticsearchDestinationUpdate,ElasticsearchRetryOptions,EncryptionConfiguration,ExtendedS3DestinationConfiguration,ExtendedS3DestinationDescription,ExtendedS3DestinationUpdate,KMSEncryptionConfig,ProcessingConfiguration,Processor,ProcessorParameter,PutRecordBatchResponseEntry,Record,RedshiftDestinationConfiguration,RedshiftDestinationDescription,RedshiftDestinationUpdate,RedshiftRetryOptions,S3DestinationConfiguration,S3DestinationDescription,S3DestinationUpdate

## Unions

* [CompressionFormat](#CompressionFormat)
* [DeliveryStreamStatus](#DeliveryStreamStatus)
* [ElasticsearchIndexRotationPeriod](#ElasticsearchIndexRotationPeriod)
* [ElasticsearchS3BackupMode](#ElasticsearchS3BackupMode)
* [NoEncryptionConfig](#NoEncryptionConfig)
* [ProcessorParameterName](#ProcessorParameterName)
* [ProcessorType](#ProcessorType)
* [RedshiftS3BackupMode](#RedshiftS3BackupMode)
* [S3BackupMode](#S3BackupMode)


@docs CompressionFormat,DeliveryStreamStatus,ElasticsearchIndexRotationPeriod,ElasticsearchS3BackupMode,NoEncryptionConfig,ProcessorParameterName,ProcessorType,RedshiftS3BackupMode,S3BackupMode

## Exceptions

* [ConcurrentModificationException](#ConcurrentModificationException)
* [InvalidArgumentException](#InvalidArgumentException)
* [LimitExceededException](#LimitExceededException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ServiceUnavailableException](#ServiceUnavailableException)


@docs ConcurrentModificationException,InvalidArgumentException,LimitExceededException,ResourceInUseException,ResourceNotFoundException,ServiceUnavailableException

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
        "firehose"
        "2015-08-04"
        "1.1"
        "AWSFIREHOSE_20150804."
        "firehose.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates a delivery stream.</p> <p>By default, you can create up to 20 delivery streams per region.</p> <p>This is an asynchronous operation that immediately returns. The initial status of the delivery stream is <code>CREATING</code>. After the delivery stream is created, its status is <code>ACTIVE</code> and it now accepts data. Attempts to send data to a delivery stream that is not in the <code>ACTIVE</code> state cause an exception. To check the state of a delivery stream, use <a>DescribeDeliveryStream</a>.</p> <p>A delivery stream is configured with a single destination: Amazon S3, Amazon Elasticsearch Service, or Amazon Redshift. You must specify only one of the following destination configuration parameters: <b>ExtendedS3DestinationConfiguration</b>, <b>S3DestinationConfiguration</b>, <b>ElasticsearchDestinationConfiguration</b>, or <b>RedshiftDestinationConfiguration</b>.</p> <p>When you specify <b>S3DestinationConfiguration</b>, you can also provide the following optional values: <b>BufferingHints</b>, <b>EncryptionConfiguration</b>, and <b>CompressionFormat</b>. By default, if no <b>BufferingHints</b> value is provided, Firehose buffers data up to 5 MB or for 5 minutes, whichever condition is satisfied first. Note that <b>BufferingHints</b> is a hint, so there are some cases where the service cannot adhere to these conditions strictly; for example, record boundaries are such that the size is a little over or under the configured buffering size. By default, no encryption is performed. We strongly recommend that you enable encryption to ensure secure data storage in Amazon S3.</p> <p>A few notes about Amazon Redshift as a destination:</p> <ul> <li> <p>An Amazon Redshift destination requires an S3 bucket as intermediate location, as Firehose first delivers data to S3 and then uses <code>COPY</code> syntax to load data into an Amazon Redshift table. This is specified in the <b>RedshiftDestinationConfiguration.S3Configuration</b> parameter.</p> </li> <li> <p>The compression formats <code>SNAPPY</code> or <code>ZIP</code> cannot be specified in <b>RedshiftDestinationConfiguration.S3Configuration</b> because the Amazon Redshift <code>COPY</code> operation that reads from the S3 bucket doesn't support these compression formats.</p> </li> <li> <p>We strongly recommend that you use the user name and password you provide exclusively with Firehose, and that the permissions for the account are restricted for Amazon Redshift <code>INSERT</code> permissions.</p> </li> </ul> <p>Firehose assumes the IAM role that is configured as part of the destination. The role should allow the Firehose principal to assume the role, and the role should have permissions that allows the service to deliver the data. For more information, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3">Amazon S3 Bucket Access</a> in the <i>Amazon Kinesis Firehose Developer Guide</i>.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}
createDeliveryStream :
    String
    -> (CreateDeliveryStreamOptions -> CreateDeliveryStreamOptions)
    -> AWS.Request CreateDeliveryStreamOutput
createDeliveryStream deliveryStreamName setOptions =
  let
    options = setOptions (CreateDeliveryStreamOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDeliveryStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDeliveryStreamOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createDeliveryStream request
-}
type alias CreateDeliveryStreamOptions =
    { s3DestinationConfiguration : Maybe S3DestinationConfiguration
    , extendedS3DestinationConfiguration : Maybe ExtendedS3DestinationConfiguration
    , redshiftDestinationConfiguration : Maybe RedshiftDestinationConfiguration
    , elasticsearchDestinationConfiguration : Maybe ElasticsearchDestinationConfiguration
    }



{-| <p>Deletes a delivery stream and its data.</p> <p>You can delete a delivery stream only if it is in <code>ACTIVE</code> or <code>DELETING</code> state, and not in the <code>CREATING</code> state. While the deletion request is in process, the delivery stream is in the <code>DELETING</code> state.</p> <p>To check the state of a delivery stream, use <a>DescribeDeliveryStream</a>.</p> <p>While the delivery stream is <code>DELETING</code> state, the service may continue to accept the records, but the service doesn't make any guarantees with respect to delivering the data. Therefore, as a best practice, you should first stop any applications that are sending records before deleting a delivery stream.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}
deleteDeliveryStream :
    String
    -> AWS.Request DeleteDeliveryStreamOutput
deleteDeliveryStream deliveryStreamName =
    AWS.Http.unsignedRequest
        "DeleteDeliveryStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDeliveryStreamOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the specified delivery stream and gets the status. For example, after your delivery stream is created, call <a>DescribeDeliveryStream</a> to see if the delivery stream is <code>ACTIVE</code> and therefore ready for data to be sent to it.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`


-}
describeDeliveryStream :
    String
    -> (DescribeDeliveryStreamOptions -> DescribeDeliveryStreamOptions)
    -> AWS.Request DescribeDeliveryStreamOutput
describeDeliveryStream deliveryStreamName setOptions =
  let
    options = setOptions (DescribeDeliveryStreamOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDeliveryStream"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDeliveryStreamOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDeliveryStream request
-}
type alias DescribeDeliveryStreamOptions =
    { limit : Maybe Int
    , exclusiveStartDestinationId : Maybe String
    }



{-| <p>Lists your delivery streams.</p> <p>The number of delivery streams might be too large to return using a single call to <a>ListDeliveryStreams</a>. You can limit the number of delivery streams returned, using the <b>Limit</b> parameter. To determine whether there are more delivery streams to list, check the value of <b>HasMoreDeliveryStreams</b> in the output. If there are more delivery streams to list, you can request them by specifying the name of the last delivery stream returned in the call in the <b>ExclusiveStartDeliveryStreamName</b> parameter of a subsequent call.</p>

__Required Parameters__



-}
listDeliveryStreams :
    (ListDeliveryStreamsOptions -> ListDeliveryStreamsOptions)
    -> AWS.Request ListDeliveryStreamsOutput
listDeliveryStreams setOptions =
  let
    options = setOptions (ListDeliveryStreamsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDeliveryStreams"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDeliveryStreamsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDeliveryStreams request
-}
type alias ListDeliveryStreamsOptions =
    { limit : Maybe Int
    , exclusiveStartDeliveryStreamName : Maybe String
    }



{-| <p>Writes a single data record into an Amazon Kinesis Firehose delivery stream. To write multiple data records into a delivery stream, use <a>PutRecordBatch</a>. Applications using these operations are referred to as producers.</p> <p>By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. Note that if you use <a>PutRecord</a> and <a>PutRecordBatch</a>, the limits are an aggregate across these two operations for each delivery stream. For more information about limits and how to request an increase, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Firehose Limits</a>. </p> <p>You must specify the name of the delivery stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data, for example, a segment from a log file, geographic location data, web site clickstream data, etc.</p> <p>Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (<code>\n</code>) or some other character unique within the data. This allows the consumer application(s) to parse individual data items when reading the data from the destination.</p> <p>The <a>PutRecord</a> operation returns a <b>RecordId</b>, which is a unique string assigned to each record. Producer applications can use this ID for purposes such as auditability and investigation.</p> <p>If the <a>PutRecord</a> operation throws a <b>ServiceUnavailableException</b>, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream. </p> <p>Data records sent to Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `record` __:__ `Record`


-}
putRecord :
    String
    -> Record
    -> AWS.Request PutRecordOutput
putRecord deliveryStreamName record =
    AWS.Http.unsignedRequest
        "PutRecord"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putRecordOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records. To write single data records into a delivery stream, use <a>PutRecord</a>. Applications using these operations are referred to as producers.</p> <p>By default, each delivery stream can take in up to 2,000 transactions per second, 5,000 records per second, or 5 MB per second. Note that if you use <a>PutRecord</a> and <a>PutRecordBatch</a>, the limits are an aggregate across these two operations for each delivery stream. For more information about limits, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Firehose Limits</a>.</p> <p>Each <a>PutRecordBatch</a> request supports up to 500 records. Each record in the request can be as large as 1,000 KB (before 64-bit encoding), up to a limit of 4 MB for the entire request. These limits cannot be changed.</p> <p>You must specify the name of the delivery stream and the data record when using <a>PutRecord</a>. The data record consists of a data blob that can be up to 1,000 KB in size, and any kind of data, for example, a segment from a log file, geographic location data, web site clickstream data, and so on.</p> <p>Firehose buffers records before delivering them to the destination. To disambiguate the data blobs at the destination, a common solution is to use delimiters in the data, such as a newline (<code>\n</code>) or some other character unique within the data. This allows the consumer application(s) to parse individual data items when reading the data from the destination.</p> <p>The <a>PutRecordBatch</a> response includes a count of failed records, <b>FailedPutCount</b>, and an array of responses, <b>RequestResponses</b>. Each entry in the <b>RequestResponses</b> array provides additional information about the processed record, and directly correlates with a record in the request array using the same ordering, from the top to the bottom. The response array always includes the same number of records as the request array. <b>RequestResponses</b> includes both successfully and unsuccessfully processed records. Firehose attempts to process all records in each <a>PutRecordBatch</a> request. A single record failure does not stop the processing of subsequent records.</p> <p>A successfully processed record includes a <b>RecordId</b> value, which is unique for the record. An unsuccessfully processed record includes <b>ErrorCode</b> and <b>ErrorMessage</b> values. <b>ErrorCode</b> reflects the type of error, and is one of the following values: <code>ServiceUnavailable</code> or <code>InternalFailure</code>. <b>ErrorMessage</b> provides more detailed information about the error.</p> <p>If there is an internal server error or a timeout, the write might have completed or it might have failed. If <b>FailedPutCount</b> is greater than 0, retry the request, resending only those records that might have failed processing. This minimizes the possible duplicate records and also reduces the total bytes sent (and corresponding charges). We recommend that you handle any duplicates at the destination.</p> <p>If <a>PutRecordBatch</a> throws <b>ServiceUnavailableException</b>, back off and retry. If the exception persists, it is possible that the throughput limits have been exceeded for the delivery stream.</p> <p>Data records sent to Firehose are stored for 24 hours from the time they are added to a delivery stream as it attempts to send the records to the destination. If the destination is unreachable for more than 24 hours, the data is no longer available.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `records` __:__ `(List Record)`


-}
putRecordBatch :
    String
    -> (List Record)
    -> AWS.Request PutRecordBatchOutput
putRecordBatch deliveryStreamName records =
    AWS.Http.unsignedRequest
        "PutRecordBatch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putRecordBatchOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates the specified destination of the specified delivery stream.</p> <p>You can use this operation to change the destination type (for example, to replace the Amazon S3 destination with Amazon Redshift) or change the parameters associated with a destination (for example, to change the bucket name of the Amazon S3 destination). The update might not occur immediately. The target delivery stream remains active while the configurations are updated, so data writes to the delivery stream can continue during this process. The updated configurations are usually effective within a few minutes.</p> <p>Note that switching between Amazon ES and other services is not supported. For an Amazon ES destination, you can only update to another Amazon ES destination.</p> <p>If the destination type is the same, Firehose merges the configuration parameters specified with the destination configuration that already exists on the delivery stream. If any of the parameters are not specified in the call, the existing values are retained. For example, in the Amazon S3 destination, if <a>EncryptionConfiguration</a> is not specified then the existing <a>EncryptionConfiguration</a> is maintained on the destination.</p> <p>If the destination type is not the same, for example, changing the destination from Amazon S3 to Amazon Redshift, Firehose does not merge any parameters. In this case, all parameters must be specified.</p> <p>Firehose uses <b>CurrentDeliveryStreamVersionId</b> to avoid race conditions and conflicting merges. This is a required field, and the service updates the configuration only if the existing configuration has a version ID that matches. After the update is applied successfully, the version ID is updated, and can be retrieved using <a>DescribeDeliveryStream</a>. You should use the new version ID to set <b>CurrentDeliveryStreamVersionId</b> in the next call.</p>

__Required Parameters__

* `deliveryStreamName` __:__ `String`
* `currentDeliveryStreamVersionId` __:__ `String`
* `destinationId` __:__ `String`


-}
updateDestination :
    String
    -> String
    -> String
    -> (UpdateDestinationOptions -> UpdateDestinationOptions)
    -> AWS.Request UpdateDestinationOutput
updateDestination deliveryStreamName currentDeliveryStreamVersionId destinationId setOptions =
  let
    options = setOptions (UpdateDestinationOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDestination"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDestinationOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateDestination request
-}
type alias UpdateDestinationOptions =
    { s3DestinationUpdate : Maybe S3DestinationUpdate
    , extendedS3DestinationUpdate : Maybe ExtendedS3DestinationUpdate
    , redshiftDestinationUpdate : Maybe RedshiftDestinationUpdate
    , elasticsearchDestinationUpdate : Maybe ElasticsearchDestinationUpdate
    }




{-| <p>Describes hints for the buffering to perform before delivering data to the destination. Please note that these options are treated as hints, and therefore Firehose may choose to use different values when it is optimal.</p>
-}
type alias BufferingHints =
    { sizeInMBs : Maybe Int
    , intervalInSeconds : Maybe Int
    }



bufferingHintsDecoder : JD.Decoder BufferingHints
bufferingHintsDecoder =
    JDP.decode BufferingHints
        |> JDP.optional "sizeInMBs" (JD.nullable JD.int) Nothing
        |> JDP.optional "intervalInSeconds" (JD.nullable JD.int) Nothing




{-| <p>Describes the CloudWatch logging options for your delivery stream.</p>
-}
type alias CloudWatchLoggingOptions =
    { enabled : Maybe Bool
    , logGroupName : Maybe String
    , logStreamName : Maybe String
    }



cloudWatchLoggingOptionsDecoder : JD.Decoder CloudWatchLoggingOptions
cloudWatchLoggingOptionsDecoder =
    JDP.decode CloudWatchLoggingOptions
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "logGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "logStreamName" (JD.nullable JD.string) Nothing




{-| One of

* `CompressionFormat_UNCOMPRESSED`
* `CompressionFormat_GZIP`
* `CompressionFormat_ZIP`
* `CompressionFormat_Snappy`

-}
type CompressionFormat
    = CompressionFormat_UNCOMPRESSED
    | CompressionFormat_GZIP
    | CompressionFormat_ZIP
    | CompressionFormat_Snappy



compressionFormatDecoder : JD.Decoder CompressionFormat
compressionFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNCOMPRESSED" ->
                        JD.succeed CompressionFormat_UNCOMPRESSED

                    "GZIP" ->
                        JD.succeed CompressionFormat_GZIP

                    "ZIP" ->
                        JD.succeed CompressionFormat_ZIP

                    "Snappy" ->
                        JD.succeed CompressionFormat_Snappy


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Another modification has already happened. Fetch <b>VersionId</b> again and use it to update the destination.</p>
-}
type alias ConcurrentModificationException =
    { message : Maybe String
    }



concurrentModificationExceptionDecoder : JD.Decoder ConcurrentModificationException
concurrentModificationExceptionDecoder =
    JDP.decode ConcurrentModificationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes a <code>COPY</code> command for Amazon Redshift.</p>
-}
type alias CopyCommand =
    { dataTableName : String
    , dataTableColumns : Maybe String
    , copyOptions : Maybe String
    }



copyCommandDecoder : JD.Decoder CopyCommand
copyCommandDecoder =
    JDP.decode CopyCommand
        |> JDP.required "dataTableName" JD.string
        |> JDP.optional "dataTableColumns" (JD.nullable JD.string) Nothing
        |> JDP.optional "copyOptions" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDeliveryStre
-}
type alias CreateDeliveryStreamOutput =
    { deliveryStreamARN : Maybe String
    }



createDeliveryStreamOutputDecoder : JD.Decoder CreateDeliveryStreamOutput
createDeliveryStreamOutputDecoder =
    JDP.decode CreateDeliveryStreamOutput
        |> JDP.optional "deliveryStreamARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteDeliveryStre
-}
type alias DeleteDeliveryStreamOutput =
    { 
    }



deleteDeliveryStreamOutputDecoder : JD.Decoder DeleteDeliveryStreamOutput
deleteDeliveryStreamOutputDecoder =
    JDP.decode DeleteDeliveryStreamOutput



{-| <p>Contains information about a delivery stream.</p>
-}
type alias DeliveryStreamDescription =
    { deliveryStreamName : String
    , deliveryStreamARN : String
    , deliveryStreamStatus : DeliveryStreamStatus
    , versionId : String
    , createTimestamp : Maybe Date
    , lastUpdateTimestamp : Maybe Date
    , destinations : (List DestinationDescription)
    , hasMoreDestinations : Bool
    }



deliveryStreamDescriptionDecoder : JD.Decoder DeliveryStreamDescription
deliveryStreamDescriptionDecoder =
    JDP.decode DeliveryStreamDescription
        |> JDP.required "deliveryStreamName" JD.string
        |> JDP.required "deliveryStreamARN" JD.string
        |> JDP.required "deliveryStreamStatus" deliveryStreamStatusDecoder
        |> JDP.required "versionId" JD.string
        |> JDP.optional "createTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdateTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.required "destinations" (JD.list destinationDescriptionDecoder)
        |> JDP.required "hasMoreDestinations" JD.bool




{-| One of

* `DeliveryStreamStatus_CREATING`
* `DeliveryStreamStatus_DELETING`
* `DeliveryStreamStatus_ACTIVE`

-}
type DeliveryStreamStatus
    = DeliveryStreamStatus_CREATING
    | DeliveryStreamStatus_DELETING
    | DeliveryStreamStatus_ACTIVE



deliveryStreamStatusDecoder : JD.Decoder DeliveryStreamStatus
deliveryStreamStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed DeliveryStreamStatus_CREATING

                    "DELETING" ->
                        JD.succeed DeliveryStreamStatus_DELETING

                    "ACTIVE" ->
                        JD.succeed DeliveryStreamStatus_ACTIVE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from describeDeliveryStre
-}
type alias DescribeDeliveryStreamOutput =
    { deliveryStreamDescription : DeliveryStreamDescription
    }



describeDeliveryStreamOutputDecoder : JD.Decoder DescribeDeliveryStreamOutput
describeDeliveryStreamOutputDecoder =
    JDP.decode DescribeDeliveryStreamOutput
        |> JDP.required "deliveryStreamDescription" deliveryStreamDescriptionDecoder




{-| <p>Describes the destination for a delivery stream.</p>
-}
type alias DestinationDescription =
    { destinationId : String
    , s3DestinationDescription : Maybe S3DestinationDescription
    , extendedS3DestinationDescription : Maybe ExtendedS3DestinationDescription
    , redshiftDestinationDescription : Maybe RedshiftDestinationDescription
    , elasticsearchDestinationDescription : Maybe ElasticsearchDestinationDescription
    }



destinationDescriptionDecoder : JD.Decoder DestinationDescription
destinationDescriptionDecoder =
    JDP.decode DestinationDescription
        |> JDP.required "destinationId" JD.string
        |> JDP.optional "s3DestinationDescription" (JD.nullable s3DestinationDescriptionDecoder) Nothing
        |> JDP.optional "extendedS3DestinationDescription" (JD.nullable extendedS3DestinationDescriptionDecoder) Nothing
        |> JDP.optional "redshiftDestinationDescription" (JD.nullable redshiftDestinationDescriptionDecoder) Nothing
        |> JDP.optional "elasticsearchDestinationDescription" (JD.nullable elasticsearchDestinationDescriptionDecoder) Nothing




{-| <p>Describes the buffering to perform before delivering data to the Amazon ES destination.</p>
-}
type alias ElasticsearchBufferingHints =
    { intervalInSeconds : Maybe Int
    , sizeInMBs : Maybe Int
    }



elasticsearchBufferingHintsDecoder : JD.Decoder ElasticsearchBufferingHints
elasticsearchBufferingHintsDecoder =
    JDP.decode ElasticsearchBufferingHints
        |> JDP.optional "intervalInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "sizeInMBs" (JD.nullable JD.int) Nothing




{-| <p>Describes the configuration of a destination in Amazon ES.</p>
-}
type alias ElasticsearchDestinationConfiguration =
    { roleARN : String
    , domainARN : String
    , indexName : String
    , typeName : String
    , indexRotationPeriod : Maybe ElasticsearchIndexRotationPeriod
    , bufferingHints : Maybe ElasticsearchBufferingHints
    , retryOptions : Maybe ElasticsearchRetryOptions
    , s3BackupMode : Maybe ElasticsearchS3BackupMode
    , s3Configuration : S3DestinationConfiguration
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



elasticsearchDestinationConfigurationDecoder : JD.Decoder ElasticsearchDestinationConfiguration
elasticsearchDestinationConfigurationDecoder =
    JDP.decode ElasticsearchDestinationConfiguration
        |> JDP.required "roleARN" JD.string
        |> JDP.required "domainARN" JD.string
        |> JDP.required "indexName" JD.string
        |> JDP.required "typeName" JD.string
        |> JDP.optional "indexRotationPeriod" (JD.nullable elasticsearchIndexRotationPeriodDecoder) Nothing
        |> JDP.optional "bufferingHints" (JD.nullable elasticsearchBufferingHintsDecoder) Nothing
        |> JDP.optional "retryOptions" (JD.nullable elasticsearchRetryOptionsDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable elasticsearchS3BackupModeDecoder) Nothing
        |> JDP.required "s3Configuration" s3DestinationConfigurationDecoder
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>The destination description in Amazon ES.</p>
-}
type alias ElasticsearchDestinationDescription =
    { roleARN : Maybe String
    , domainARN : Maybe String
    , indexName : Maybe String
    , typeName : Maybe String
    , indexRotationPeriod : Maybe ElasticsearchIndexRotationPeriod
    , bufferingHints : Maybe ElasticsearchBufferingHints
    , retryOptions : Maybe ElasticsearchRetryOptions
    , s3BackupMode : Maybe ElasticsearchS3BackupMode
    , s3DestinationDescription : Maybe S3DestinationDescription
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



elasticsearchDestinationDescriptionDecoder : JD.Decoder ElasticsearchDestinationDescription
elasticsearchDestinationDescriptionDecoder =
    JDP.decode ElasticsearchDestinationDescription
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "domainARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "indexName" (JD.nullable JD.string) Nothing
        |> JDP.optional "typeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "indexRotationPeriod" (JD.nullable elasticsearchIndexRotationPeriodDecoder) Nothing
        |> JDP.optional "bufferingHints" (JD.nullable elasticsearchBufferingHintsDecoder) Nothing
        |> JDP.optional "retryOptions" (JD.nullable elasticsearchRetryOptionsDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable elasticsearchS3BackupModeDecoder) Nothing
        |> JDP.optional "s3DestinationDescription" (JD.nullable s3DestinationDescriptionDecoder) Nothing
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>Describes an update for a destination in Amazon ES.</p>
-}
type alias ElasticsearchDestinationUpdate =
    { roleARN : Maybe String
    , domainARN : Maybe String
    , indexName : Maybe String
    , typeName : Maybe String
    , indexRotationPeriod : Maybe ElasticsearchIndexRotationPeriod
    , bufferingHints : Maybe ElasticsearchBufferingHints
    , retryOptions : Maybe ElasticsearchRetryOptions
    , s3Update : Maybe S3DestinationUpdate
    , processingConfiguration : Maybe ProcessingConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



elasticsearchDestinationUpdateDecoder : JD.Decoder ElasticsearchDestinationUpdate
elasticsearchDestinationUpdateDecoder =
    JDP.decode ElasticsearchDestinationUpdate
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "domainARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "indexName" (JD.nullable JD.string) Nothing
        |> JDP.optional "typeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "indexRotationPeriod" (JD.nullable elasticsearchIndexRotationPeriodDecoder) Nothing
        |> JDP.optional "bufferingHints" (JD.nullable elasticsearchBufferingHintsDecoder) Nothing
        |> JDP.optional "retryOptions" (JD.nullable elasticsearchRetryOptionsDecoder) Nothing
        |> JDP.optional "s3Update" (JD.nullable s3DestinationUpdateDecoder) Nothing
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| One of

* `ElasticsearchIndexRotationPeriod_NoRotation`
* `ElasticsearchIndexRotationPeriod_OneHour`
* `ElasticsearchIndexRotationPeriod_OneDay`
* `ElasticsearchIndexRotationPeriod_OneWeek`
* `ElasticsearchIndexRotationPeriod_OneMonth`

-}
type ElasticsearchIndexRotationPeriod
    = ElasticsearchIndexRotationPeriod_NoRotation
    | ElasticsearchIndexRotationPeriod_OneHour
    | ElasticsearchIndexRotationPeriod_OneDay
    | ElasticsearchIndexRotationPeriod_OneWeek
    | ElasticsearchIndexRotationPeriod_OneMonth



elasticsearchIndexRotationPeriodDecoder : JD.Decoder ElasticsearchIndexRotationPeriod
elasticsearchIndexRotationPeriodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoRotation" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_NoRotation

                    "OneHour" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneHour

                    "OneDay" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneDay

                    "OneWeek" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneWeek

                    "OneMonth" ->
                        JD.succeed ElasticsearchIndexRotationPeriod_OneMonth


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Configures retry behavior in the event that Firehose is unable to deliver documents to Amazon ES.</p>
-}
type alias ElasticsearchRetryOptions =
    { durationInSeconds : Maybe Int
    }



elasticsearchRetryOptionsDecoder : JD.Decoder ElasticsearchRetryOptions
elasticsearchRetryOptionsDecoder =
    JDP.decode ElasticsearchRetryOptions
        |> JDP.optional "durationInSeconds" (JD.nullable JD.int) Nothing




{-| One of

* `ElasticsearchS3BackupMode_FailedDocumentsOnly`
* `ElasticsearchS3BackupMode_AllDocuments`

-}
type ElasticsearchS3BackupMode
    = ElasticsearchS3BackupMode_FailedDocumentsOnly
    | ElasticsearchS3BackupMode_AllDocuments



elasticsearchS3BackupModeDecoder : JD.Decoder ElasticsearchS3BackupMode
elasticsearchS3BackupModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FailedDocumentsOnly" ->
                        JD.succeed ElasticsearchS3BackupMode_FailedDocumentsOnly

                    "AllDocuments" ->
                        JD.succeed ElasticsearchS3BackupMode_AllDocuments


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the encryption for a destination in Amazon S3.</p>
-}
type alias EncryptionConfiguration =
    { noEncryptionConfig : Maybe NoEncryptionConfig
    , kMSEncryptionConfig : Maybe KMSEncryptionConfig
    }



encryptionConfigurationDecoder : JD.Decoder EncryptionConfiguration
encryptionConfigurationDecoder =
    JDP.decode EncryptionConfiguration
        |> JDP.optional "noEncryptionConfig" (JD.nullable noEncryptionConfigDecoder) Nothing
        |> JDP.optional "kMSEncryptionConfig" (JD.nullable kMSEncryptionConfigDecoder) Nothing




{-| <p>Describes the configuration of a destination in Amazon S3.</p>
-}
type alias ExtendedS3DestinationConfiguration =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe S3BackupMode
    , s3BackupConfiguration : Maybe S3DestinationConfiguration
    }



extendedS3DestinationConfigurationDecoder : JD.Decoder ExtendedS3DestinationConfiguration
extendedS3DestinationConfigurationDecoder =
    JDP.decode ExtendedS3DestinationConfiguration
        |> JDP.required "roleARN" JD.string
        |> JDP.required "bucketARN" JD.string
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "bufferingHints" (JD.nullable bufferingHintsDecoder) Nothing
        |> JDP.optional "compressionFormat" (JD.nullable compressionFormatDecoder) Nothing
        |> JDP.optional "encryptionConfiguration" (JD.nullable encryptionConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable s3BackupModeDecoder) Nothing
        |> JDP.optional "s3BackupConfiguration" (JD.nullable s3DestinationConfigurationDecoder) Nothing




{-| <p>Describes a destination in Amazon S3.</p>
-}
type alias ExtendedS3DestinationDescription =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , bufferingHints : BufferingHints
    , compressionFormat : CompressionFormat
    , encryptionConfiguration : EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe S3BackupMode
    , s3BackupDescription : Maybe S3DestinationDescription
    }



extendedS3DestinationDescriptionDecoder : JD.Decoder ExtendedS3DestinationDescription
extendedS3DestinationDescriptionDecoder =
    JDP.decode ExtendedS3DestinationDescription
        |> JDP.required "roleARN" JD.string
        |> JDP.required "bucketARN" JD.string
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.required "bufferingHints" bufferingHintsDecoder
        |> JDP.required "compressionFormat" compressionFormatDecoder
        |> JDP.required "encryptionConfiguration" encryptionConfigurationDecoder
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable s3BackupModeDecoder) Nothing
        |> JDP.optional "s3BackupDescription" (JD.nullable s3DestinationDescriptionDecoder) Nothing




{-| <p>Describes an update for a destination in Amazon S3.</p>
-}
type alias ExtendedS3DestinationUpdate =
    { roleARN : Maybe String
    , bucketARN : Maybe String
    , prefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe S3BackupMode
    , s3BackupUpdate : Maybe S3DestinationUpdate
    }



extendedS3DestinationUpdateDecoder : JD.Decoder ExtendedS3DestinationUpdate
extendedS3DestinationUpdateDecoder =
    JDP.decode ExtendedS3DestinationUpdate
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "bucketARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "bufferingHints" (JD.nullable bufferingHintsDecoder) Nothing
        |> JDP.optional "compressionFormat" (JD.nullable compressionFormatDecoder) Nothing
        |> JDP.optional "encryptionConfiguration" (JD.nullable encryptionConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable s3BackupModeDecoder) Nothing
        |> JDP.optional "s3BackupUpdate" (JD.nullable s3DestinationUpdateDecoder) Nothing




{-| <p>The specified input parameter has an value that is not valid.</p>
-}
type alias InvalidArgumentException =
    { message : Maybe String
    }



invalidArgumentExceptionDecoder : JD.Decoder InvalidArgumentException
invalidArgumentExceptionDecoder =
    JDP.decode InvalidArgumentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes an encryption key for a destination in Amazon S3.</p>
-}
type alias KMSEncryptionConfig =
    { aWSKMSKeyARN : String
    }



kMSEncryptionConfigDecoder : JD.Decoder KMSEncryptionConfig
kMSEncryptionConfigDecoder =
    JDP.decode KMSEncryptionConfig
        |> JDP.required "aWSKMSKeyARN" JD.string




{-| <p>You have already reached the limit for a requested resource.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDeliveryStrea
-}
type alias ListDeliveryStreamsOutput =
    { deliveryStreamNames : (List String)
    , hasMoreDeliveryStreams : Bool
    }



listDeliveryStreamsOutputDecoder : JD.Decoder ListDeliveryStreamsOutput
listDeliveryStreamsOutputDecoder =
    JDP.decode ListDeliveryStreamsOutput
        |> JDP.required "deliveryStreamNames" (JD.list JD.string)
        |> JDP.required "hasMoreDeliveryStreams" JD.bool




{-| One of

* `NoEncryptionConfig_NoEncryption`

-}
type NoEncryptionConfig
    = NoEncryptionConfig_NoEncryption



noEncryptionConfigDecoder : JD.Decoder NoEncryptionConfig
noEncryptionConfigDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoEncryption" ->
                        JD.succeed NoEncryptionConfig_NoEncryption


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a data processing configuration.</p>
-}
type alias ProcessingConfiguration =
    { enabled : Maybe Bool
    , processors : Maybe (List Processor)
    }



processingConfigurationDecoder : JD.Decoder ProcessingConfiguration
processingConfigurationDecoder =
    JDP.decode ProcessingConfiguration
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "processors" (JD.nullable (JD.list processorDecoder)) Nothing




{-| <p>Describes a data processor.</p>
-}
type alias Processor =
    { type_ : ProcessorType
    , parameters : Maybe (List ProcessorParameter)
    }



processorDecoder : JD.Decoder Processor
processorDecoder =
    JDP.decode Processor
        |> JDP.required "type_" processorTypeDecoder
        |> JDP.optional "parameters" (JD.nullable (JD.list processorParameterDecoder)) Nothing




{-| <p>Describes the processor parameter.</p>
-}
type alias ProcessorParameter =
    { parameterName : ProcessorParameterName
    , parameterValue : String
    }



processorParameterDecoder : JD.Decoder ProcessorParameter
processorParameterDecoder =
    JDP.decode ProcessorParameter
        |> JDP.required "parameterName" processorParameterNameDecoder
        |> JDP.required "parameterValue" JD.string




{-| One of

* `ProcessorParameterName_LambdaArn`
* `ProcessorParameterName_NumberOfRetries`

-}
type ProcessorParameterName
    = ProcessorParameterName_LambdaArn
    | ProcessorParameterName_NumberOfRetries



processorParameterNameDecoder : JD.Decoder ProcessorParameterName
processorParameterNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LambdaArn" ->
                        JD.succeed ProcessorParameterName_LambdaArn

                    "NumberOfRetries" ->
                        JD.succeed ProcessorParameterName_NumberOfRetries


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ProcessorType_Lambda`

-}
type ProcessorType
    = ProcessorType_Lambda



processorTypeDecoder : JD.Decoder ProcessorType
processorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Lambda" ->
                        JD.succeed ProcessorType_Lambda


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putRecordBat
-}
type alias PutRecordBatchOutput =
    { failedPutCount : Int
    , requestResponses : (List PutRecordBatchResponseEntry)
    }



putRecordBatchOutputDecoder : JD.Decoder PutRecordBatchOutput
putRecordBatchOutputDecoder =
    JDP.decode PutRecordBatchOutput
        |> JDP.required "failedPutCount" JD.int
        |> JDP.required "requestResponses" (JD.list putRecordBatchResponseEntryDecoder)




{-| <p>Contains the result for an individual record from a <a>PutRecordBatch</a> request. If the record is successfully added to your delivery stream, it receives a record ID. If the record fails to be added to your delivery stream, the result includes an error code and an error message.</p>
-}
type alias PutRecordBatchResponseEntry =
    { recordId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



putRecordBatchResponseEntryDecoder : JD.Decoder PutRecordBatchResponseEntry
putRecordBatchResponseEntryDecoder =
    JDP.decode PutRecordBatchResponseEntry
        |> JDP.optional "recordId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putReco
-}
type alias PutRecordOutput =
    { recordId : String
    }



putRecordOutputDecoder : JD.Decoder PutRecordOutput
putRecordOutputDecoder =
    JDP.decode PutRecordOutput
        |> JDP.required "recordId" JD.string




{-| <p>The unit of data in a delivery stream.</p>
-}
type alias Record =
    { data : String
    }



recordDecoder : JD.Decoder Record
recordDecoder =
    JDP.decode Record
        |> JDP.required "data" JD.string




{-| <p>Describes the configuration of a destination in Amazon Redshift.</p>
-}
type alias RedshiftDestinationConfiguration =
    { roleARN : String
    , clusterJDBCURL : String
    , copyCommand : CopyCommand
    , username : String
    , password : String
    , retryOptions : Maybe RedshiftRetryOptions
    , s3Configuration : S3DestinationConfiguration
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe RedshiftS3BackupMode
    , s3BackupConfiguration : Maybe S3DestinationConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



redshiftDestinationConfigurationDecoder : JD.Decoder RedshiftDestinationConfiguration
redshiftDestinationConfigurationDecoder =
    JDP.decode RedshiftDestinationConfiguration
        |> JDP.required "roleARN" JD.string
        |> JDP.required "clusterJDBCURL" JD.string
        |> JDP.required "copyCommand" copyCommandDecoder
        |> JDP.required "username" JD.string
        |> JDP.required "password" JD.string
        |> JDP.optional "retryOptions" (JD.nullable redshiftRetryOptionsDecoder) Nothing
        |> JDP.required "s3Configuration" s3DestinationConfigurationDecoder
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable redshiftS3BackupModeDecoder) Nothing
        |> JDP.optional "s3BackupConfiguration" (JD.nullable s3DestinationConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>Describes a destination in Amazon Redshift.</p>
-}
type alias RedshiftDestinationDescription =
    { roleARN : String
    , clusterJDBCURL : String
    , copyCommand : CopyCommand
    , username : String
    , retryOptions : Maybe RedshiftRetryOptions
    , s3DestinationDescription : S3DestinationDescription
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe RedshiftS3BackupMode
    , s3BackupDescription : Maybe S3DestinationDescription
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



redshiftDestinationDescriptionDecoder : JD.Decoder RedshiftDestinationDescription
redshiftDestinationDescriptionDecoder =
    JDP.decode RedshiftDestinationDescription
        |> JDP.required "roleARN" JD.string
        |> JDP.required "clusterJDBCURL" JD.string
        |> JDP.required "copyCommand" copyCommandDecoder
        |> JDP.required "username" JD.string
        |> JDP.optional "retryOptions" (JD.nullable redshiftRetryOptionsDecoder) Nothing
        |> JDP.required "s3DestinationDescription" s3DestinationDescriptionDecoder
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable redshiftS3BackupModeDecoder) Nothing
        |> JDP.optional "s3BackupDescription" (JD.nullable s3DestinationDescriptionDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>Describes an update for a destination in Amazon Redshift.</p>
-}
type alias RedshiftDestinationUpdate =
    { roleARN : Maybe String
    , clusterJDBCURL : Maybe String
    , copyCommand : Maybe CopyCommand
    , username : Maybe String
    , password : Maybe String
    , retryOptions : Maybe RedshiftRetryOptions
    , s3Update : Maybe S3DestinationUpdate
    , processingConfiguration : Maybe ProcessingConfiguration
    , s3BackupMode : Maybe RedshiftS3BackupMode
    , s3BackupUpdate : Maybe S3DestinationUpdate
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



redshiftDestinationUpdateDecoder : JD.Decoder RedshiftDestinationUpdate
redshiftDestinationUpdateDecoder =
    JDP.decode RedshiftDestinationUpdate
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterJDBCURL" (JD.nullable JD.string) Nothing
        |> JDP.optional "copyCommand" (JD.nullable copyCommandDecoder) Nothing
        |> JDP.optional "username" (JD.nullable JD.string) Nothing
        |> JDP.optional "password" (JD.nullable JD.string) Nothing
        |> JDP.optional "retryOptions" (JD.nullable redshiftRetryOptionsDecoder) Nothing
        |> JDP.optional "s3Update" (JD.nullable s3DestinationUpdateDecoder) Nothing
        |> JDP.optional "processingConfiguration" (JD.nullable processingConfigurationDecoder) Nothing
        |> JDP.optional "s3BackupMode" (JD.nullable redshiftS3BackupModeDecoder) Nothing
        |> JDP.optional "s3BackupUpdate" (JD.nullable s3DestinationUpdateDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>Configures retry behavior in the event that Firehose is unable to deliver documents to Amazon Redshift.</p>
-}
type alias RedshiftRetryOptions =
    { durationInSeconds : Maybe Int
    }



redshiftRetryOptionsDecoder : JD.Decoder RedshiftRetryOptions
redshiftRetryOptionsDecoder =
    JDP.decode RedshiftRetryOptions
        |> JDP.optional "durationInSeconds" (JD.nullable JD.int) Nothing




{-| One of

* `RedshiftS3BackupMode_Disabled`
* `RedshiftS3BackupMode_Enabled`

-}
type RedshiftS3BackupMode
    = RedshiftS3BackupMode_Disabled
    | RedshiftS3BackupMode_Enabled



redshiftS3BackupModeDecoder : JD.Decoder RedshiftS3BackupMode
redshiftS3BackupModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Disabled" ->
                        JD.succeed RedshiftS3BackupMode_Disabled

                    "Enabled" ->
                        JD.succeed RedshiftS3BackupMode_Enabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The resource is already in use and not available for this operation.</p>
-}
type alias ResourceInUseException =
    { message : Maybe String
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified resource could not be found.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `S3BackupMode_Disabled`
* `S3BackupMode_Enabled`

-}
type S3BackupMode
    = S3BackupMode_Disabled
    | S3BackupMode_Enabled



s3BackupModeDecoder : JD.Decoder S3BackupMode
s3BackupModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Disabled" ->
                        JD.succeed S3BackupMode_Disabled

                    "Enabled" ->
                        JD.succeed S3BackupMode_Enabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the configuration of a destination in Amazon S3.</p>
-}
type alias S3DestinationConfiguration =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



s3DestinationConfigurationDecoder : JD.Decoder S3DestinationConfiguration
s3DestinationConfigurationDecoder =
    JDP.decode S3DestinationConfiguration
        |> JDP.required "roleARN" JD.string
        |> JDP.required "bucketARN" JD.string
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "bufferingHints" (JD.nullable bufferingHintsDecoder) Nothing
        |> JDP.optional "compressionFormat" (JD.nullable compressionFormatDecoder) Nothing
        |> JDP.optional "encryptionConfiguration" (JD.nullable encryptionConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>Describes a destination in Amazon S3.</p>
-}
type alias S3DestinationDescription =
    { roleARN : String
    , bucketARN : String
    , prefix : Maybe String
    , bufferingHints : BufferingHints
    , compressionFormat : CompressionFormat
    , encryptionConfiguration : EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



s3DestinationDescriptionDecoder : JD.Decoder S3DestinationDescription
s3DestinationDescriptionDecoder =
    JDP.decode S3DestinationDescription
        |> JDP.required "roleARN" JD.string
        |> JDP.required "bucketARN" JD.string
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.required "bufferingHints" bufferingHintsDecoder
        |> JDP.required "compressionFormat" compressionFormatDecoder
        |> JDP.required "encryptionConfiguration" encryptionConfigurationDecoder
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>Describes an update for a destination in Amazon S3.</p>
-}
type alias S3DestinationUpdate =
    { roleARN : Maybe String
    , bucketARN : Maybe String
    , prefix : Maybe String
    , bufferingHints : Maybe BufferingHints
    , compressionFormat : Maybe CompressionFormat
    , encryptionConfiguration : Maybe EncryptionConfiguration
    , cloudWatchLoggingOptions : Maybe CloudWatchLoggingOptions
    }



s3DestinationUpdateDecoder : JD.Decoder S3DestinationUpdate
s3DestinationUpdateDecoder =
    JDP.decode S3DestinationUpdate
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "bucketARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "bufferingHints" (JD.nullable bufferingHintsDecoder) Nothing
        |> JDP.optional "compressionFormat" (JD.nullable compressionFormatDecoder) Nothing
        |> JDP.optional "encryptionConfiguration" (JD.nullable encryptionConfigurationDecoder) Nothing
        |> JDP.optional "cloudWatchLoggingOptions" (JD.nullable cloudWatchLoggingOptionsDecoder) Nothing




{-| <p>The service is unavailable, back off and retry the operation. If you continue to see the exception, throughput limits for the delivery stream may have been exceeded. For more information about limits and how to request an increase, see <a href="http://docs.aws.amazon.com/firehose/latest/dev/limits.html">Amazon Kinesis Firehose Limits</a>.</p>
-}
type alias ServiceUnavailableException =
    { message : Maybe String
    }



serviceUnavailableExceptionDecoder : JD.Decoder ServiceUnavailableException
serviceUnavailableExceptionDecoder =
    JDP.decode ServiceUnavailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateDestinati
-}
type alias UpdateDestinationOutput =
    { 
    }



updateDestinationOutputDecoder : JD.Decoder UpdateDestinationOutput
updateDestinationOutputDecoder =
    JDP.decode UpdateDestinationOutput



