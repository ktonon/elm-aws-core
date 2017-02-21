module AWS.Services.KinesisAnalytics
    exposing
        ( config
        , addApplicationInput
        , addApplicationOutput
        , addApplicationReferenceDataSource
        , createApplication
        , CreateApplicationOptions
        , deleteApplication
        , deleteApplicationOutput
        , deleteApplicationReferenceDataSource
        , describeApplication
        , discoverInputSchema
        , listApplications
        , ListApplicationsOptions
        , startApplication
        , stopApplication
        , updateApplication
        , AddApplicationInputResponse
        , AddApplicationOutputResponse
        , AddApplicationReferenceDataSourceResponse
        , ApplicationDetail
        , ApplicationStatus(..)
        , ApplicationSummary
        , ApplicationUpdate
        , CSVMappingParameters
        , CodeValidationException
        , ConcurrentModificationException
        , CreateApplicationResponse
        , DeleteApplicationOutputResponse
        , DeleteApplicationReferenceDataSourceResponse
        , DeleteApplicationResponse
        , DescribeApplicationResponse
        , DestinationSchema
        , DiscoverInputSchemaResponse
        , Input
        , InputConfiguration
        , InputDescription
        , InputParallelism
        , InputParallelismUpdate
        , InputSchemaUpdate
        , InputStartingPosition(..)
        , InputStartingPositionConfiguration
        , InputUpdate
        , InvalidApplicationConfigurationException
        , InvalidArgumentException
        , JSONMappingParameters
        , KinesisFirehoseInput
        , KinesisFirehoseInputDescription
        , KinesisFirehoseInputUpdate
        , KinesisFirehoseOutput
        , KinesisFirehoseOutputDescription
        , KinesisFirehoseOutputUpdate
        , KinesisStreamsInput
        , KinesisStreamsInputDescription
        , KinesisStreamsInputUpdate
        , KinesisStreamsOutput
        , KinesisStreamsOutputDescription
        , KinesisStreamsOutputUpdate
        , LimitExceededException
        , ListApplicationsResponse
        , MappingParameters
        , Output
        , OutputDescription
        , OutputUpdate
        , RecordColumn
        , RecordFormat
        , RecordFormatType(..)
        , ReferenceDataSource
        , ReferenceDataSourceDescription
        , ReferenceDataSourceUpdate
        , ResourceInUseException
        , ResourceNotFoundException
        , ResourceProvisionedThroughputExceededException
        , S3ReferenceDataSource
        , S3ReferenceDataSourceDescription
        , S3ReferenceDataSourceUpdate
        , SourceSchema
        , StartApplicationResponse
        , StopApplicationResponse
        , UnableToDetectSchemaException
        , UpdateApplicationResponse
        )

{-| undefined

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addApplicationInput](#addApplicationInput)
* [addApplicationOutput](#addApplicationOutput)
* [addApplicationReferenceDataSource](#addApplicationReferenceDataSource)
* [createApplication](#createApplication)
* [CreateApplicationOptions](#CreateApplicationOptions)
* [deleteApplication](#deleteApplication)
* [deleteApplicationOutput](#deleteApplicationOutput)
* [deleteApplicationReferenceDataSource](#deleteApplicationReferenceDataSource)
* [describeApplication](#describeApplication)
* [discoverInputSchema](#discoverInputSchema)
* [listApplications](#listApplications)
* [ListApplicationsOptions](#ListApplicationsOptions)
* [startApplication](#startApplication)
* [stopApplication](#stopApplication)
* [updateApplication](#updateApplication)


@docs addApplicationInput,addApplicationOutput,addApplicationReferenceDataSource,createApplication,CreateApplicationOptions,deleteApplication,deleteApplicationOutput,deleteApplicationReferenceDataSource,describeApplication,discoverInputSchema,listApplications,ListApplicationsOptions,startApplication,stopApplication,updateApplication

## Responses

* [AddApplicationInputResponse](#AddApplicationInputResponse)
* [AddApplicationOutputResponse](#AddApplicationOutputResponse)
* [AddApplicationReferenceDataSourceResponse](#AddApplicationReferenceDataSourceResponse)
* [CreateApplicationResponse](#CreateApplicationResponse)
* [DeleteApplicationOutputResponse](#DeleteApplicationOutputResponse)
* [DeleteApplicationReferenceDataSourceResponse](#DeleteApplicationReferenceDataSourceResponse)
* [DeleteApplicationResponse](#DeleteApplicationResponse)
* [DescribeApplicationResponse](#DescribeApplicationResponse)
* [DiscoverInputSchemaResponse](#DiscoverInputSchemaResponse)
* [ListApplicationsResponse](#ListApplicationsResponse)
* [StartApplicationResponse](#StartApplicationResponse)
* [StopApplicationResponse](#StopApplicationResponse)
* [UpdateApplicationResponse](#UpdateApplicationResponse)


@docs AddApplicationInputResponse,AddApplicationOutputResponse,AddApplicationReferenceDataSourceResponse,CreateApplicationResponse,DeleteApplicationOutputResponse,DeleteApplicationReferenceDataSourceResponse,DeleteApplicationResponse,DescribeApplicationResponse,DiscoverInputSchemaResponse,ListApplicationsResponse,StartApplicationResponse,StopApplicationResponse,UpdateApplicationResponse

## Records

* [ApplicationDetail](#ApplicationDetail)
* [ApplicationSummary](#ApplicationSummary)
* [ApplicationUpdate](#ApplicationUpdate)
* [CSVMappingParameters](#CSVMappingParameters)
* [DestinationSchema](#DestinationSchema)
* [Input](#Input)
* [InputConfiguration](#InputConfiguration)
* [InputDescription](#InputDescription)
* [InputParallelism](#InputParallelism)
* [InputParallelismUpdate](#InputParallelismUpdate)
* [InputSchemaUpdate](#InputSchemaUpdate)
* [InputStartingPositionConfiguration](#InputStartingPositionConfiguration)
* [InputUpdate](#InputUpdate)
* [JSONMappingParameters](#JSONMappingParameters)
* [KinesisFirehoseInput](#KinesisFirehoseInput)
* [KinesisFirehoseInputDescription](#KinesisFirehoseInputDescription)
* [KinesisFirehoseInputUpdate](#KinesisFirehoseInputUpdate)
* [KinesisFirehoseOutput](#KinesisFirehoseOutput)
* [KinesisFirehoseOutputDescription](#KinesisFirehoseOutputDescription)
* [KinesisFirehoseOutputUpdate](#KinesisFirehoseOutputUpdate)
* [KinesisStreamsInput](#KinesisStreamsInput)
* [KinesisStreamsInputDescription](#KinesisStreamsInputDescription)
* [KinesisStreamsInputUpdate](#KinesisStreamsInputUpdate)
* [KinesisStreamsOutput](#KinesisStreamsOutput)
* [KinesisStreamsOutputDescription](#KinesisStreamsOutputDescription)
* [KinesisStreamsOutputUpdate](#KinesisStreamsOutputUpdate)
* [MappingParameters](#MappingParameters)
* [Output](#Output)
* [OutputDescription](#OutputDescription)
* [OutputUpdate](#OutputUpdate)
* [RecordColumn](#RecordColumn)
* [RecordFormat](#RecordFormat)
* [ReferenceDataSource](#ReferenceDataSource)
* [ReferenceDataSourceDescription](#ReferenceDataSourceDescription)
* [ReferenceDataSourceUpdate](#ReferenceDataSourceUpdate)
* [S3ReferenceDataSource](#S3ReferenceDataSource)
* [S3ReferenceDataSourceDescription](#S3ReferenceDataSourceDescription)
* [S3ReferenceDataSourceUpdate](#S3ReferenceDataSourceUpdate)
* [SourceSchema](#SourceSchema)


@docs ApplicationDetail,ApplicationSummary,ApplicationUpdate,CSVMappingParameters,DestinationSchema,Input,InputConfiguration,InputDescription,InputParallelism,InputParallelismUpdate,InputSchemaUpdate,InputStartingPositionConfiguration,InputUpdate,JSONMappingParameters,KinesisFirehoseInput,KinesisFirehoseInputDescription,KinesisFirehoseInputUpdate,KinesisFirehoseOutput,KinesisFirehoseOutputDescription,KinesisFirehoseOutputUpdate,KinesisStreamsInput,KinesisStreamsInputDescription,KinesisStreamsInputUpdate,KinesisStreamsOutput,KinesisStreamsOutputDescription,KinesisStreamsOutputUpdate,MappingParameters,Output,OutputDescription,OutputUpdate,RecordColumn,RecordFormat,ReferenceDataSource,ReferenceDataSourceDescription,ReferenceDataSourceUpdate,S3ReferenceDataSource,S3ReferenceDataSourceDescription,S3ReferenceDataSourceUpdate,SourceSchema

## Unions

* [ApplicationStatus](#ApplicationStatus)
* [InputStartingPosition](#InputStartingPosition)
* [RecordFormatType](#RecordFormatType)


@docs ApplicationStatus,InputStartingPosition,RecordFormatType

## Exceptions

* [CodeValidationException](#CodeValidationException)
* [ConcurrentModificationException](#ConcurrentModificationException)
* [InvalidApplicationConfigurationException](#InvalidApplicationConfigurationException)
* [InvalidArgumentException](#InvalidArgumentException)
* [LimitExceededException](#LimitExceededException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ResourceProvisionedThroughputExceededException](#ResourceProvisionedThroughputExceededException)
* [UnableToDetectSchemaException](#UnableToDetectSchemaException)


@docs CodeValidationException,ConcurrentModificationException,InvalidApplicationConfigurationException,InvalidArgumentException,LimitExceededException,ResourceInUseException,ResourceNotFoundException,ResourceProvisionedThroughputExceededException,UnableToDetectSchemaException

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
        "kinesisanalytics"
        "2015-08-14"
        "1.1"
        "AWSKINESISANALYTICS_20150814."
        "kinesisanalytics.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p> Adds a streaming source to your Amazon Kinesis application. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p> <p>You can add a streaming source either when you create an application or you can use this operation to add a streaming source after you create an application. For more information, see <a>CreateApplication</a>.</p> <p>Any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationInput</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `input` __:__ `Input`


-}
addApplicationInput :
    String
    -> Int
    -> Input
    -> AWS.Http.UnsignedRequest AddApplicationInputResponse
addApplicationInput applicationName currentApplicationVersionId input =
    AWS.Http.unsignedRequest
        "AddApplicationInput"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addApplicationInputResponseDecoder



{-| <p>Adds an external destination to your Amazon Kinesis Analytics application.</p> <p>If you want Amazon Kinesis Analytics to deliver data from an in-application stream within your application to an external destination (such as an Amazon Kinesis stream or a Firehose delivery stream), you add the relevant configuration to your application using this operation. You can configure one or more outputs for your application. Each output configuration maps an in-application stream and an external destination.</p> <p> You can use one of the output configurations to deliver data from your in-application error stream to an external destination so that you can analyze the errors. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Understanding Application Output (Destination)</a>. </p> <p> Note that any configuration update, including adding a streaming source using this operation, results in a new version of the application. You can use the <a>DescribeApplication</a> operation to find the current application version.</p> <p>For the limits on the number of application inputs and outputs you can configure, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `output` __:__ `Output`


-}
addApplicationOutput :
    String
    -> Int
    -> Output
    -> AWS.Http.UnsignedRequest AddApplicationOutputResponse
addApplicationOutput applicationName currentApplicationVersionId output =
    AWS.Http.unsignedRequest
        "AddApplicationOutput"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addApplicationOutputResponseDecoder



{-| <p>Adds a reference data source to an existing application.</p> <p>Amazon Kinesis Analytics reads reference data (that is, an Amazon S3 object) and creates an in-application table within your application. In the request, you provide the source (S3 bucket name and object key name), name of the in-application table to create, and the necessary mapping information that describes how data in Amazon S3 object maps to columns in the resulting in-application table.</p> <p> For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. For the limits on data sources you can add to your application, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html">Limits</a>. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:AddApplicationOutput</code> action. </p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `referenceDataSource` __:__ `ReferenceDataSource`


-}
addApplicationReferenceDataSource :
    String
    -> Int
    -> ReferenceDataSource
    -> AWS.Http.UnsignedRequest AddApplicationReferenceDataSourceResponse
addApplicationReferenceDataSource applicationName currentApplicationVersionId referenceDataSource =
    AWS.Http.unsignedRequest
        "AddApplicationReferenceDataSource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addApplicationReferenceDataSourceResponseDecoder



{-| <p> Creates an Amazon Kinesis Analytics application. You can configure each application with one streaming source as input, application code to process the input, and up to five streaming destinations where you want Amazon Kinesis Analytics to write the output data from your application. For an overview, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html">How it Works</a>. </p> <p>In the input configuration, you map the streaming source to an in-application stream, which you can think of as a constantly updating table. In the mapping, you must provide a schema for the in-application stream and map each data column in the in-application stream to a data element in the streaming source, with the option of renaming, casting and dropping columns as desired.</p> <p>Your application code is one or more SQL statements that read input data, transform it, and generate output. Your application code can create one or more SQL artifacts like SQL streams or pumps.</p> <p>In the output configuration, you can configure the application to write data from in-application streams created in your applications to up to five streaming destinations.</p> <p> To read data from your source stream or write data to destination streams, Amazon Kinesis Analytics needs your permissions. You grant these permissions by creating IAM roles. This operation requires permissions to perform the <code>kinesisanalytics:CreateApplication</code> action. </p> <p> For introductory exercises to create an Amazon Kinesis Analytics application, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html">Getting Started</a>. </p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
createApplication :
    String
    -> (CreateApplicationOptions -> CreateApplicationOptions)
    -> AWS.Http.UnsignedRequest CreateApplicationResponse
createApplication applicationName setOptions =
  let
    options = setOptions (CreateApplicationOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createApplicationResponseDecoder


{-| Options for a createApplication request
-}
type alias CreateApplicationOptions =
    { applicationDescription : Maybe String
    , inputs : Maybe (List Input)
    , outputs : Maybe (List Output)
    , applicationCode : Maybe String
    }



{-| <p>Deletes the specified application. Amazon Kinesis Analytics halts application execution and deletes the application, including any application artifacts (such as in-application streams, reference table, and application code).</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `createTimestamp` __:__ `Date`


-}
deleteApplication :
    String
    -> Date
    -> AWS.Http.UnsignedRequest DeleteApplicationResponse
deleteApplication applicationName createTimestamp =
    AWS.Http.unsignedRequest
        "DeleteApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteApplicationResponseDecoder



{-| <p>Deletes output destination configuration from your application configuration. Amazon Kinesis Analytics will no longer write data from the corresponding in-application stream to the external output destination.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DeleteApplicationOutput</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `outputId` __:__ `String`


-}
deleteApplicationOutput :
    String
    -> Int
    -> String
    -> AWS.Http.UnsignedRequest DeleteApplicationOutputResponse
deleteApplicationOutput applicationName currentApplicationVersionId outputId =
    AWS.Http.unsignedRequest
        "DeleteApplicationOutput"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteApplicationOutputResponseDecoder



{-| <p>Deletes a reference data source configuration from the specified application configuration.</p> <p>If the application is running, Amazon Kinesis Analytics immediately removes the in-application table that you created using the <a>AddApplicationReferenceDataSource</a> operation. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics.DeleteApplicationReferenceDataSource</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `referenceId` __:__ `String`


-}
deleteApplicationReferenceDataSource :
    String
    -> Int
    -> String
    -> AWS.Http.UnsignedRequest DeleteApplicationReferenceDataSourceResponse
deleteApplicationReferenceDataSource applicationName currentApplicationVersionId referenceId =
    AWS.Http.unsignedRequest
        "DeleteApplicationReferenceDataSource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteApplicationReferenceDataSourceResponseDecoder



{-| <p>Returns information about a specific Amazon Kinesis Analytics application.</p> <p>If you want to retrieve a list of all applications in your account, use the <a>ListApplications</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:DescribeApplication</code> action. You can use <code>DescribeApplication</code> to get the current application versionId, which you need to call other operations such as <code>Update</code>. </p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
describeApplication :
    String
    -> AWS.Http.UnsignedRequest DescribeApplicationResponse
describeApplication applicationName =
    AWS.Http.unsignedRequest
        "DescribeApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeApplicationResponseDecoder



{-| <p>Infers a schema by evaluating sample records on the specified streaming source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery stream). In the response, the operation returns the inferred schema and also the sample records that the operation used to infer the schema.</p> <p> You can use the inferred schema when configuring a streaming source for your application. For conceptual information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. Note that when you create an application using the Amazon Kinesis Analytics console, the console uses this operation to infer a schema and show it in the console user interface. </p> <p> This operation requires permissions to perform the <code>kinesisanalytics:DiscoverInputSchema</code> action. </p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `roleARN` __:__ `String`
* `inputStartingPositionConfiguration` __:__ `InputStartingPositionConfiguration`


-}
discoverInputSchema :
    String
    -> String
    -> InputStartingPositionConfiguration
    -> AWS.Http.UnsignedRequest DiscoverInputSchemaResponse
discoverInputSchema resourceARN roleARN inputStartingPositionConfiguration =
    AWS.Http.unsignedRequest
        "DiscoverInputSchema"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        discoverInputSchemaResponseDecoder



{-| <p>Returns a list of Amazon Kinesis Analytics applications in your account. For each application, the response includes the application name, Amazon Resource Name (ARN), and status. If the response returns the <code>HasMoreApplications</code> value as true, you can send another request by adding the <code>ExclusiveStartApplicationName</code> in the request body, and set the value of this to the last application name from the previous response. </p> <p>If you want detailed information about a specific application, use <a>DescribeApplication</a>.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:ListApplications</code> action.</p>

__Required Parameters__



-}
listApplications :
    (ListApplicationsOptions -> ListApplicationsOptions)
    -> AWS.Http.UnsignedRequest ListApplicationsResponse
listApplications setOptions =
  let
    options = setOptions (ListApplicationsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListApplications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listApplicationsResponseDecoder


{-| Options for a listApplications request
-}
type alias ListApplicationsOptions =
    { limit : Maybe Int
    , exclusiveStartApplicationName : Maybe String
    }



{-| <p>Starts the specified Amazon Kinesis Analytics application. After creating an application, you must exclusively call this operation to start your application.</p> <p>After the application starts, it begins consuming the input data, processes it, and writes the output to the configured destination.</p> <p> The application status must be <code>READY</code> for you to start an application. You can get the application status in the console or using the <a>DescribeApplication</a> operation.</p> <p>After you start the application, you can stop the application from processing the input by calling the <a>StopApplication</a> operation.</p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StartApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `inputConfigurations` __:__ `(List InputConfiguration)`


-}
startApplication :
    String
    -> (List InputConfiguration)
    -> AWS.Http.UnsignedRequest StartApplicationResponse
startApplication applicationName inputConfigurations =
    AWS.Http.unsignedRequest
        "StartApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startApplicationResponseDecoder



{-| <p>Stops the application from processing input data. You can stop an application only if it is in the running state. You can use the <a>DescribeApplication</a> operation to find the application state. After the application is stopped, Amazon Kinesis Analytics stops reading data from the input, the application stops processing data, and there is no output written to the destination. </p> <p>This operation requires permissions to perform the <code>kinesisanalytics:StopApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
stopApplication :
    String
    -> AWS.Http.UnsignedRequest StopApplicationResponse
stopApplication applicationName =
    AWS.Http.unsignedRequest
        "StopApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopApplicationResponseDecoder



{-| <p>Updates an existing Kinesis Analytics application. Using this API, you can update application code, input configuration, and output configuration. </p> <p>Note that Kinesis Analytics updates the <code>CurrentApplicationVersionId</code> each time you update your application. </p> <p>This opeation requires permission for the <code>kinesisanalytics:UpdateApplication</code> action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentApplicationVersionId` __:__ `Int`
* `applicationUpdate` __:__ `ApplicationUpdate`


-}
updateApplication :
    String
    -> Int
    -> ApplicationUpdate
    -> AWS.Http.UnsignedRequest UpdateApplicationResponse
updateApplication applicationName currentApplicationVersionId applicationUpdate =
    AWS.Http.unsignedRequest
        "UpdateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateApplicationResponseDecoder




{-| Type of HTTP response from addApplicationInput
-}
type alias AddApplicationInputResponse =
    { 
    }



addApplicationInputResponseDecoder : JD.Decoder AddApplicationInputResponse
addApplicationInputResponseDecoder =
    JDP.decode AddApplicationInputResponse



{-| Type of HTTP response from addApplicationOutput
-}
type alias AddApplicationOutputResponse =
    { 
    }



addApplicationOutputResponseDecoder : JD.Decoder AddApplicationOutputResponse
addApplicationOutputResponseDecoder =
    JDP.decode AddApplicationOutputResponse



{-| Type of HTTP response from addApplicationReferenceDataSource
-}
type alias AddApplicationReferenceDataSourceResponse =
    { 
    }



addApplicationReferenceDataSourceResponseDecoder : JD.Decoder AddApplicationReferenceDataSourceResponse
addApplicationReferenceDataSourceResponseDecoder =
    JDP.decode AddApplicationReferenceDataSourceResponse



{-| <p>Provides a description of the application, including the application Amazon Resource Name (ARN), status, latest version, and input and output configuration.</p>
-}
type alias ApplicationDetail =
    { applicationName : String
    , applicationDescription : Maybe String
    , applicationARN : String
    , applicationStatus : ApplicationStatus
    , createTimestamp : Maybe Date
    , lastUpdateTimestamp : Maybe Date
    , inputDescriptions : Maybe (List InputDescription)
    , outputDescriptions : Maybe (List OutputDescription)
    , referenceDataSourceDescriptions : Maybe (List ReferenceDataSourceDescription)
    , applicationCode : Maybe String
    , applicationVersionId : Int
    }



applicationDetailDecoder : JD.Decoder ApplicationDetail
applicationDetailDecoder =
    JDP.decode ApplicationDetail
        |> JDP.required "applicationName" JD.string
        |> JDP.optional "applicationDescription" (JD.nullable JD.string) Nothing
        |> JDP.required "applicationARN" JD.string
        |> JDP.required "applicationStatus" applicationStatusDecoder
        |> JDP.optional "createTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdateTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "inputDescriptions" (JD.nullable (JD.list inputDescriptionDecoder)) Nothing
        |> JDP.optional "outputDescriptions" (JD.nullable (JD.list outputDescriptionDecoder)) Nothing
        |> JDP.optional "referenceDataSourceDescriptions" (JD.nullable (JD.list referenceDataSourceDescriptionDecoder)) Nothing
        |> JDP.optional "applicationCode" (JD.nullable JD.string) Nothing
        |> JDP.required "applicationVersionId" JD.int




{-| One of

* `ApplicationStatus_DELETING`
* `ApplicationStatus_STARTING`
* `ApplicationStatus_STOPPING`
* `ApplicationStatus_READY`
* `ApplicationStatus_RUNNING`
* `ApplicationStatus_UPDATING`

-}
type ApplicationStatus
    = ApplicationStatus_DELETING
    | ApplicationStatus_STARTING
    | ApplicationStatus_STOPPING
    | ApplicationStatus_READY
    | ApplicationStatus_RUNNING
    | ApplicationStatus_UPDATING



applicationStatusDecoder : JD.Decoder ApplicationStatus
applicationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DELETING" ->
                        JD.succeed ApplicationStatus_DELETING

                    "STARTING" ->
                        JD.succeed ApplicationStatus_STARTING

                    "STOPPING" ->
                        JD.succeed ApplicationStatus_STOPPING

                    "READY" ->
                        JD.succeed ApplicationStatus_READY

                    "RUNNING" ->
                        JD.succeed ApplicationStatus_RUNNING

                    "UPDATING" ->
                        JD.succeed ApplicationStatus_UPDATING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides application summary information, including the application Amazon Resource Name (ARN), name, and status.</p>
-}
type alias ApplicationSummary =
    { applicationName : String
    , applicationARN : String
    , applicationStatus : ApplicationStatus
    }



applicationSummaryDecoder : JD.Decoder ApplicationSummary
applicationSummaryDecoder =
    JDP.decode ApplicationSummary
        |> JDP.required "applicationName" JD.string
        |> JDP.required "applicationARN" JD.string
        |> JDP.required "applicationStatus" applicationStatusDecoder




{-| <p>Describes updates to apply to an existing Kinesis Analytics application.</p>
-}
type alias ApplicationUpdate =
    { inputUpdates : Maybe (List InputUpdate)
    , applicationCodeUpdate : Maybe String
    , outputUpdates : Maybe (List OutputUpdate)
    , referenceDataSourceUpdates : Maybe (List ReferenceDataSourceUpdate)
    }



applicationUpdateDecoder : JD.Decoder ApplicationUpdate
applicationUpdateDecoder =
    JDP.decode ApplicationUpdate
        |> JDP.optional "inputUpdates" (JD.nullable (JD.list inputUpdateDecoder)) Nothing
        |> JDP.optional "applicationCodeUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputUpdates" (JD.nullable (JD.list outputUpdateDecoder)) Nothing
        |> JDP.optional "referenceDataSourceUpdates" (JD.nullable (JD.list referenceDataSourceUpdateDecoder)) Nothing




{-| <p>Provides additional mapping information when the record format uses delimiters, such as CSV. For example, the following sample records use CSV format, where the records use the <i>'\n'</i> as the row delimiter and a comma (",") as the column delimiter: </p> <p> <code>"name1", "address1" </code> </p> <p> <code>"name2, "address2"</code> </p>
-}
type alias CSVMappingParameters =
    { recordRowDelimiter : String
    , recordColumnDelimiter : String
    }



cSVMappingParametersDecoder : JD.Decoder CSVMappingParameters
cSVMappingParametersDecoder =
    JDP.decode CSVMappingParameters
        |> JDP.required "recordRowDelimiter" JD.string
        |> JDP.required "recordColumnDelimiter" JD.string




{-| <p>User-provided application code (query) is invalid. This can be a simple syntax error.</p>
-}
type alias CodeValidationException =
    { message : Maybe String
    }



codeValidationExceptionDecoder : JD.Decoder CodeValidationException
codeValidationExceptionDecoder =
    JDP.decode CodeValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Exception thrown as a result of concurrent modification to an application. For example, two individuals attempting to edit the same application at the same time.</p>
-}
type alias ConcurrentModificationException =
    { message : Maybe String
    }



concurrentModificationExceptionDecoder : JD.Decoder ConcurrentModificationException
concurrentModificationExceptionDecoder =
    JDP.decode ConcurrentModificationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createApplication
-}
type alias CreateApplicationResponse =
    { applicationSummary : ApplicationSummary
    }



createApplicationResponseDecoder : JD.Decoder CreateApplicationResponse
createApplicationResponseDecoder =
    JDP.decode CreateApplicationResponse
        |> JDP.required "applicationSummary" applicationSummaryDecoder




{-| Type of HTTP response from deleteApplicationOutput
-}
type alias DeleteApplicationOutputResponse =
    { 
    }



deleteApplicationOutputResponseDecoder : JD.Decoder DeleteApplicationOutputResponse
deleteApplicationOutputResponseDecoder =
    JDP.decode DeleteApplicationOutputResponse



{-| Type of HTTP response from deleteApplicationReferenceDataSource
-}
type alias DeleteApplicationReferenceDataSourceResponse =
    { 
    }



deleteApplicationReferenceDataSourceResponseDecoder : JD.Decoder DeleteApplicationReferenceDataSourceResponse
deleteApplicationReferenceDataSourceResponseDecoder =
    JDP.decode DeleteApplicationReferenceDataSourceResponse



{-| Type of HTTP response from deleteApplication
-}
type alias DeleteApplicationResponse =
    { 
    }



deleteApplicationResponseDecoder : JD.Decoder DeleteApplicationResponse
deleteApplicationResponseDecoder =
    JDP.decode DeleteApplicationResponse



{-| Type of HTTP response from describeApplication
-}
type alias DescribeApplicationResponse =
    { applicationDetail : ApplicationDetail
    }



describeApplicationResponseDecoder : JD.Decoder DescribeApplicationResponse
describeApplicationResponseDecoder =
    JDP.decode DescribeApplicationResponse
        |> JDP.required "applicationDetail" applicationDetailDecoder




{-| <p>Describes the data format when records are written to the destination. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html">Configuring Application Output</a>. </p>
-}
type alias DestinationSchema =
    { recordFormatType : Maybe RecordFormatType
    }



destinationSchemaDecoder : JD.Decoder DestinationSchema
destinationSchemaDecoder =
    JDP.decode DestinationSchema
        |> JDP.optional "recordFormatType" (JD.nullable recordFormatTypeDecoder) Nothing




{-| Type of HTTP response from discoverInputSchema
-}
type alias DiscoverInputSchemaResponse =
    { inputSchema : Maybe SourceSchema
    , parsedInputRecords : Maybe (List (List String))
    , rawInputRecords : Maybe (List String)
    }



discoverInputSchemaResponseDecoder : JD.Decoder DiscoverInputSchemaResponse
discoverInputSchemaResponseDecoder =
    JDP.decode DiscoverInputSchemaResponse
        |> JDP.optional "inputSchema" (JD.nullable sourceSchemaDecoder) Nothing
        |> JDP.optional "parsedInputRecords" (JD.nullable (JD.list (JD.list JD.string))) Nothing
        |> JDP.optional "rawInputRecords" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>When you configure the application input, you specify the streaming source, the in-application stream name that is created, and the mapping between the two. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-}
type alias Input =
    { namePrefix : String
    , kinesisStreamsInput : Maybe KinesisStreamsInput
    , kinesisFirehoseInput : Maybe KinesisFirehoseInput
    , inputParallelism : Maybe InputParallelism
    , inputSchema : SourceSchema
    }



inputDecoder : JD.Decoder Input
inputDecoder =
    JDP.decode Input
        |> JDP.required "namePrefix" JD.string
        |> JDP.optional "kinesisStreamsInput" (JD.nullable kinesisStreamsInputDecoder) Nothing
        |> JDP.optional "kinesisFirehoseInput" (JD.nullable kinesisFirehoseInputDecoder) Nothing
        |> JDP.optional "inputParallelism" (JD.nullable inputParallelismDecoder) Nothing
        |> JDP.required "inputSchema" sourceSchemaDecoder




{-| <p>When you start your application, you provide this configuration, which identifies the input source and the point in the input source at which you want the application to start processing records.</p>
-}
type alias InputConfiguration =
    { id : String
    , inputStartingPositionConfiguration : InputStartingPositionConfiguration
    }



inputConfigurationDecoder : JD.Decoder InputConfiguration
inputConfigurationDecoder =
    JDP.decode InputConfiguration
        |> JDP.required "id" JD.string
        |> JDP.required "inputStartingPositionConfiguration" inputStartingPositionConfigurationDecoder




{-| <p>Describes the application input configuration. For more information, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-}
type alias InputDescription =
    { inputId : Maybe String
    , namePrefix : Maybe String
    , inAppStreamNames : Maybe (List String)
    , kinesisStreamsInputDescription : Maybe KinesisStreamsInputDescription
    , kinesisFirehoseInputDescription : Maybe KinesisFirehoseInputDescription
    , inputSchema : Maybe SourceSchema
    , inputParallelism : Maybe InputParallelism
    , inputStartingPositionConfiguration : Maybe InputStartingPositionConfiguration
    }



inputDescriptionDecoder : JD.Decoder InputDescription
inputDescriptionDecoder =
    JDP.decode InputDescription
        |> JDP.optional "inputId" (JD.nullable JD.string) Nothing
        |> JDP.optional "namePrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "inAppStreamNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "kinesisStreamsInputDescription" (JD.nullable kinesisStreamsInputDescriptionDecoder) Nothing
        |> JDP.optional "kinesisFirehoseInputDescription" (JD.nullable kinesisFirehoseInputDescriptionDecoder) Nothing
        |> JDP.optional "inputSchema" (JD.nullable sourceSchemaDecoder) Nothing
        |> JDP.optional "inputParallelism" (JD.nullable inputParallelismDecoder) Nothing
        |> JDP.optional "inputStartingPositionConfiguration" (JD.nullable inputStartingPositionConfigurationDecoder) Nothing




{-| <p>Describes the number of in-application streams to create for a given streaming source. For information about parallellism, see <a href="http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html">Configuring Application Input</a>. </p>
-}
type alias InputParallelism =
    { count : Maybe Int
    }



inputParallelismDecoder : JD.Decoder InputParallelism
inputParallelismDecoder =
    JDP.decode InputParallelism
        |> JDP.optional "count" (JD.nullable JD.int) Nothing




{-| <p>Provides updates to the parallelism count.</p>
-}
type alias InputParallelismUpdate =
    { countUpdate : Maybe Int
    }



inputParallelismUpdateDecoder : JD.Decoder InputParallelismUpdate
inputParallelismUpdateDecoder =
    JDP.decode InputParallelismUpdate
        |> JDP.optional "countUpdate" (JD.nullable JD.int) Nothing




{-| <p> Describes updates for the application's input schema. </p>
-}
type alias InputSchemaUpdate =
    { recordFormatUpdate : Maybe RecordFormat
    , recordEncodingUpdate : Maybe String
    , recordColumnUpdates : Maybe (List RecordColumn)
    }



inputSchemaUpdateDecoder : JD.Decoder InputSchemaUpdate
inputSchemaUpdateDecoder =
    JDP.decode InputSchemaUpdate
        |> JDP.optional "recordFormatUpdate" (JD.nullable recordFormatDecoder) Nothing
        |> JDP.optional "recordEncodingUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "recordColumnUpdates" (JD.nullable (JD.list recordColumnDecoder)) Nothing




{-| One of

* `InputStartingPosition_NOW`
* `InputStartingPosition_TRIM_HORIZON`
* `InputStartingPosition_LAST_STOPPED_POINT`

-}
type InputStartingPosition
    = InputStartingPosition_NOW
    | InputStartingPosition_TRIM_HORIZON
    | InputStartingPosition_LAST_STOPPED_POINT



inputStartingPositionDecoder : JD.Decoder InputStartingPosition
inputStartingPositionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOW" ->
                        JD.succeed InputStartingPosition_NOW

                    "TRIM_HORIZON" ->
                        JD.succeed InputStartingPosition_TRIM_HORIZON

                    "LAST_STOPPED_POINT" ->
                        JD.succeed InputStartingPosition_LAST_STOPPED_POINT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the point at which the application reads from the streaming source.</p>
-}
type alias InputStartingPositionConfiguration =
    { inputStartingPosition : Maybe InputStartingPosition
    }



inputStartingPositionConfigurationDecoder : JD.Decoder InputStartingPositionConfiguration
inputStartingPositionConfigurationDecoder =
    JDP.decode InputStartingPositionConfiguration
        |> JDP.optional "inputStartingPosition" (JD.nullable inputStartingPositionDecoder) Nothing




{-| <p>Describes updates to a specific input configuration (identified by the <code>InputId</code> of an application). </p>
-}
type alias InputUpdate =
    { inputId : String
    , namePrefixUpdate : Maybe String
    , kinesisStreamsInputUpdate : Maybe KinesisStreamsInputUpdate
    , kinesisFirehoseInputUpdate : Maybe KinesisFirehoseInputUpdate
    , inputSchemaUpdate : Maybe InputSchemaUpdate
    , inputParallelismUpdate : Maybe InputParallelismUpdate
    }



inputUpdateDecoder : JD.Decoder InputUpdate
inputUpdateDecoder =
    JDP.decode InputUpdate
        |> JDP.required "inputId" JD.string
        |> JDP.optional "namePrefixUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "kinesisStreamsInputUpdate" (JD.nullable kinesisStreamsInputUpdateDecoder) Nothing
        |> JDP.optional "kinesisFirehoseInputUpdate" (JD.nullable kinesisFirehoseInputUpdateDecoder) Nothing
        |> JDP.optional "inputSchemaUpdate" (JD.nullable inputSchemaUpdateDecoder) Nothing
        |> JDP.optional "inputParallelismUpdate" (JD.nullable inputParallelismUpdateDecoder) Nothing




{-| <p>User-provided application configuration is not valid.</p>
-}
type alias InvalidApplicationConfigurationException =
    { message : Maybe String
    }



invalidApplicationConfigurationExceptionDecoder : JD.Decoder InvalidApplicationConfigurationException
invalidApplicationConfigurationExceptionDecoder =
    JDP.decode InvalidApplicationConfigurationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Specified input parameter value is invalid.</p>
-}
type alias InvalidArgumentException =
    { message : Maybe String
    }



invalidArgumentExceptionDecoder : JD.Decoder InvalidArgumentException
invalidArgumentExceptionDecoder =
    JDP.decode InvalidArgumentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Provides additional mapping information when JSON is the record format on the streaming source.</p>
-}
type alias JSONMappingParameters =
    { recordRowPath : String
    }



jSONMappingParametersDecoder : JD.Decoder JSONMappingParameters
jSONMappingParametersDecoder =
    JDP.decode JSONMappingParameters
        |> JDP.required "recordRowPath" JD.string




{-| <p> Identifies an Amazon Kinesis Firehose delivery stream as the streaming source. You provide the Firehose delivery stream's Amazon Resource Name (ARN) and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-}
type alias KinesisFirehoseInput =
    { resourceARN : String
    , roleARN : String
    }



kinesisFirehoseInputDecoder : JD.Decoder KinesisFirehoseInput
kinesisFirehoseInputDecoder =
    JDP.decode KinesisFirehoseInput
        |> JDP.required "resourceARN" JD.string
        |> JDP.required "roleARN" JD.string




{-| <p> Describes the Amazon Kinesis Firehose delivery stream that is configured as the streaming source in the application input configuration. </p>
-}
type alias KinesisFirehoseInputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisFirehoseInputDescriptionDecoder : JD.Decoder KinesisFirehoseInputDescription
kinesisFirehoseInputDescriptionDecoder =
    JDP.decode KinesisFirehoseInputDescription
        |> JDP.optional "resourceARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing




{-| <p>When updating application input configuration, provides information about an Amazon Kinesis Firehose delivery stream as the streaming source.</p>
-}
type alias KinesisFirehoseInputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisFirehoseInputUpdateDecoder : JD.Decoder KinesisFirehoseInputUpdate
kinesisFirehoseInputUpdateDecoder =
    JDP.decode KinesisFirehoseInputUpdate
        |> JDP.optional "resourceARNUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARNUpdate" (JD.nullable JD.string) Nothing




{-| <p>When configuring application output, identifies an Amazon Kinesis Firehose delivery stream as the destination. You provide the stream Amazon Resource Name (ARN) and an IAM role that enables Amazon Kinesis Analytics to write to the stream on your behalf.</p>
-}
type alias KinesisFirehoseOutput =
    { resourceARN : String
    , roleARN : String
    }



kinesisFirehoseOutputDecoder : JD.Decoder KinesisFirehoseOutput
kinesisFirehoseOutputDecoder =
    JDP.decode KinesisFirehoseOutput
        |> JDP.required "resourceARN" JD.string
        |> JDP.required "roleARN" JD.string




{-| <p> For an application output, describes the Amazon Kinesis Firehose delivery stream configured as its destination. </p>
-}
type alias KinesisFirehoseOutputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisFirehoseOutputDescriptionDecoder : JD.Decoder KinesisFirehoseOutputDescription
kinesisFirehoseOutputDescriptionDecoder =
    JDP.decode KinesisFirehoseOutputDescription
        |> JDP.optional "resourceARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing




{-| <p> When updating an output configuration using the <a>UpdateApplication</a> operation, provides information about an Amazon Kinesis Firehose delivery stream configured as the destination. </p>
-}
type alias KinesisFirehoseOutputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisFirehoseOutputUpdateDecoder : JD.Decoder KinesisFirehoseOutputUpdate
kinesisFirehoseOutputUpdateDecoder =
    JDP.decode KinesisFirehoseOutputUpdate
        |> JDP.optional "resourceARNUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARNUpdate" (JD.nullable JD.string) Nothing




{-| <p> Identifies an Amazon Kinesis stream as the streaming source. You provide the stream's ARN and an IAM role ARN that enables Amazon Kinesis Analytics to access the stream on your behalf.</p>
-}
type alias KinesisStreamsInput =
    { resourceARN : String
    , roleARN : String
    }



kinesisStreamsInputDecoder : JD.Decoder KinesisStreamsInput
kinesisStreamsInputDecoder =
    JDP.decode KinesisStreamsInput
        |> JDP.required "resourceARN" JD.string
        |> JDP.required "roleARN" JD.string




{-| <p> Describes the Amazon Kinesis stream that is configured as the streaming source in the application input configuration. </p>
-}
type alias KinesisStreamsInputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisStreamsInputDescriptionDecoder : JD.Decoder KinesisStreamsInputDescription
kinesisStreamsInputDescriptionDecoder =
    JDP.decode KinesisStreamsInputDescription
        |> JDP.optional "resourceARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing




{-| <p>When updating application input configuration, provides information about an Amazon Kinesis stream as the streaming source.</p>
-}
type alias KinesisStreamsInputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisStreamsInputUpdateDecoder : JD.Decoder KinesisStreamsInputUpdate
kinesisStreamsInputUpdateDecoder =
    JDP.decode KinesisStreamsInputUpdate
        |> JDP.optional "resourceARNUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARNUpdate" (JD.nullable JD.string) Nothing




{-| <p>When configuring application output, identifies a Amazon Kinesis stream as the destination. You provide the stream Amazon Resource Name (ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to write to the stream on your behalf.</p>
-}
type alias KinesisStreamsOutput =
    { resourceARN : String
    , roleARN : String
    }



kinesisStreamsOutputDecoder : JD.Decoder KinesisStreamsOutput
kinesisStreamsOutputDecoder =
    JDP.decode KinesisStreamsOutput
        |> JDP.required "resourceARN" JD.string
        |> JDP.required "roleARN" JD.string




{-| <p> For an application output, describes the Amazon Kinesis stream configured as its destination. </p>
-}
type alias KinesisStreamsOutputDescription =
    { resourceARN : Maybe String
    , roleARN : Maybe String
    }



kinesisStreamsOutputDescriptionDecoder : JD.Decoder KinesisStreamsOutputDescription
kinesisStreamsOutputDescriptionDecoder =
    JDP.decode KinesisStreamsOutputDescription
        |> JDP.optional "resourceARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing




{-| <p> When updating an output configuration using the <a>UpdateApplication</a> operation, provides information about an Amazon Kinesis stream configured as the destination. </p>
-}
type alias KinesisStreamsOutputUpdate =
    { resourceARNUpdate : Maybe String
    , roleARNUpdate : Maybe String
    }



kinesisStreamsOutputUpdateDecoder : JD.Decoder KinesisStreamsOutputUpdate
kinesisStreamsOutputUpdateDecoder =
    JDP.decode KinesisStreamsOutputUpdate
        |> JDP.optional "resourceARNUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARNUpdate" (JD.nullable JD.string) Nothing




{-| <p>Exceeded the number of applications allowed.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listApplications
-}
type alias ListApplicationsResponse =
    { applicationSummaries : (List ApplicationSummary)
    , hasMoreApplications : Bool
    }



listApplicationsResponseDecoder : JD.Decoder ListApplicationsResponse
listApplicationsResponseDecoder =
    JDP.decode ListApplicationsResponse
        |> JDP.required "applicationSummaries" (JD.list applicationSummaryDecoder)
        |> JDP.required "hasMoreApplications" JD.bool




{-| <p>When configuring application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.</p>
-}
type alias MappingParameters =
    { jSONMappingParameters : Maybe JSONMappingParameters
    , cSVMappingParameters : Maybe CSVMappingParameters
    }



mappingParametersDecoder : JD.Decoder MappingParameters
mappingParametersDecoder =
    JDP.decode MappingParameters
        |> JDP.optional "jSONMappingParameters" (JD.nullable jSONMappingParametersDecoder) Nothing
        |> JDP.optional "cSVMappingParameters" (JD.nullable cSVMappingParametersDecoder) Nothing




{-| <p> Describes application output configuration in which you identify an in-application stream and a destination where you want the in-application stream data to be written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p> <p/> <p>You can configure your application to write output to up to five destinations.</p>
-}
type alias Output =
    { name : String
    , kinesisStreamsOutput : Maybe KinesisStreamsOutput
    , kinesisFirehoseOutput : Maybe KinesisFirehoseOutput
    , destinationSchema : DestinationSchema
    }



outputDecoder : JD.Decoder Output
outputDecoder =
    JDP.decode Output
        |> JDP.required "name" JD.string
        |> JDP.optional "kinesisStreamsOutput" (JD.nullable kinesisStreamsOutputDecoder) Nothing
        |> JDP.optional "kinesisFirehoseOutput" (JD.nullable kinesisFirehoseOutputDecoder) Nothing
        |> JDP.required "destinationSchema" destinationSchemaDecoder




{-| <p>Describes the application output configuration, which includes the in-application stream name and the destination where the stream data is written. The destination can be an Amazon Kinesis stream or an Amazon Kinesis Firehose delivery stream. </p>
-}
type alias OutputDescription =
    { outputId : Maybe String
    , name : Maybe String
    , kinesisStreamsOutputDescription : Maybe KinesisStreamsOutputDescription
    , kinesisFirehoseOutputDescription : Maybe KinesisFirehoseOutputDescription
    , destinationSchema : Maybe DestinationSchema
    }



outputDescriptionDecoder : JD.Decoder OutputDescription
outputDescriptionDecoder =
    JDP.decode OutputDescription
        |> JDP.optional "outputId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "kinesisStreamsOutputDescription" (JD.nullable kinesisStreamsOutputDescriptionDecoder) Nothing
        |> JDP.optional "kinesisFirehoseOutputDescription" (JD.nullable kinesisFirehoseOutputDescriptionDecoder) Nothing
        |> JDP.optional "destinationSchema" (JD.nullable destinationSchemaDecoder) Nothing




{-| <p> Describes updates to the output configuration identified by the <code>OutputId</code>. </p>
-}
type alias OutputUpdate =
    { outputId : String
    , nameUpdate : Maybe String
    , kinesisStreamsOutputUpdate : Maybe KinesisStreamsOutputUpdate
    , kinesisFirehoseOutputUpdate : Maybe KinesisFirehoseOutputUpdate
    , destinationSchemaUpdate : Maybe DestinationSchema
    }



outputUpdateDecoder : JD.Decoder OutputUpdate
outputUpdateDecoder =
    JDP.decode OutputUpdate
        |> JDP.required "outputId" JD.string
        |> JDP.optional "nameUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "kinesisStreamsOutputUpdate" (JD.nullable kinesisStreamsOutputUpdateDecoder) Nothing
        |> JDP.optional "kinesisFirehoseOutputUpdate" (JD.nullable kinesisFirehoseOutputUpdateDecoder) Nothing
        |> JDP.optional "destinationSchemaUpdate" (JD.nullable destinationSchemaDecoder) Nothing




{-| <p>Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream.</p> <p>Also used to describe the format of the reference data source.</p>
-}
type alias RecordColumn =
    { name : String
    , mapping : Maybe String
    , sqlType : String
    }



recordColumnDecoder : JD.Decoder RecordColumn
recordColumnDecoder =
    JDP.decode RecordColumn
        |> JDP.required "name" JD.string
        |> JDP.optional "mapping" (JD.nullable JD.string) Nothing
        |> JDP.required "sqlType" JD.string




{-| <p> Describes the record format and relevant mapping information that should be applied to schematize the records on the stream. </p>
-}
type alias RecordFormat =
    { recordFormatType : RecordFormatType
    , mappingParameters : Maybe MappingParameters
    }



recordFormatDecoder : JD.Decoder RecordFormat
recordFormatDecoder =
    JDP.decode RecordFormat
        |> JDP.required "recordFormatType" recordFormatTypeDecoder
        |> JDP.optional "mappingParameters" (JD.nullable mappingParametersDecoder) Nothing




{-| One of

* `RecordFormatType_JSON`
* `RecordFormatType_CSV`

-}
type RecordFormatType
    = RecordFormatType_JSON
    | RecordFormatType_CSV



recordFormatTypeDecoder : JD.Decoder RecordFormatType
recordFormatTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JSON" ->
                        JD.succeed RecordFormatType_JSON

                    "CSV" ->
                        JD.succeed RecordFormatType_CSV


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the reference data source by providing the source information (S3 bucket name and object key name), the resulting in-application table name that is created, and the necessary schema to map the data elements in the Amazon S3 object to the in-application table.</p>
-}
type alias ReferenceDataSource =
    { tableName : String
    , s3ReferenceDataSource : Maybe S3ReferenceDataSource
    , referenceSchema : SourceSchema
    }



referenceDataSourceDecoder : JD.Decoder ReferenceDataSource
referenceDataSourceDecoder =
    JDP.decode ReferenceDataSource
        |> JDP.required "tableName" JD.string
        |> JDP.optional "s3ReferenceDataSource" (JD.nullable s3ReferenceDataSourceDecoder) Nothing
        |> JDP.required "referenceSchema" sourceSchemaDecoder




{-| <p>Describes the reference data source configured for an application.</p>
-}
type alias ReferenceDataSourceDescription =
    { referenceId : String
    , tableName : String
    , s3ReferenceDataSourceDescription : S3ReferenceDataSourceDescription
    , referenceSchema : Maybe SourceSchema
    }



referenceDataSourceDescriptionDecoder : JD.Decoder ReferenceDataSourceDescription
referenceDataSourceDescriptionDecoder =
    JDP.decode ReferenceDataSourceDescription
        |> JDP.required "referenceId" JD.string
        |> JDP.required "tableName" JD.string
        |> JDP.required "s3ReferenceDataSourceDescription" s3ReferenceDataSourceDescriptionDecoder
        |> JDP.optional "referenceSchema" (JD.nullable sourceSchemaDecoder) Nothing




{-| <p>When you update a reference data source configuration for an application, this object provides all the updated values (such as the source bucket name and object key name), the in-application table name that is created, and updated mapping information that maps the data in the Amazon S3 object to the in-application reference table that is created.</p>
-}
type alias ReferenceDataSourceUpdate =
    { referenceId : String
    , tableNameUpdate : Maybe String
    , s3ReferenceDataSourceUpdate : Maybe S3ReferenceDataSourceUpdate
    , referenceSchemaUpdate : Maybe SourceSchema
    }



referenceDataSourceUpdateDecoder : JD.Decoder ReferenceDataSourceUpdate
referenceDataSourceUpdateDecoder =
    JDP.decode ReferenceDataSourceUpdate
        |> JDP.required "referenceId" JD.string
        |> JDP.optional "tableNameUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3ReferenceDataSourceUpdate" (JD.nullable s3ReferenceDataSourceUpdateDecoder) Nothing
        |> JDP.optional "referenceSchemaUpdate" (JD.nullable sourceSchemaDecoder) Nothing




{-| <p>Application is not available for this operation.</p>
-}
type alias ResourceInUseException =
    { message : Maybe String
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Specified application can't be found.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Discovery failed to get a record from the streaming source because of the Kinesis Streams ProvisionedThroughputExceededException.</p>
-}
type alias ResourceProvisionedThroughputExceededException =
    { message : Maybe String
    }



resourceProvisionedThroughputExceededExceptionDecoder : JD.Decoder ResourceProvisionedThroughputExceededException
resourceProvisionedThroughputExceededExceptionDecoder =
    JDP.decode ResourceProvisionedThroughputExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Identifies the S3 bucket and object that contains the reference data. Also identifies the IAM role Amazon Kinesis Analytics can assume to read this object on your behalf.</p> <p>An Amazon Kinesis Analytics application loads reference data only once. If the data changes, you call the <a>UpdateApplication</a> operation to trigger reloading of data into your application.</p>
-}
type alias S3ReferenceDataSource =
    { bucketARN : String
    , fileKey : String
    , referenceRoleARN : String
    }



s3ReferenceDataSourceDecoder : JD.Decoder S3ReferenceDataSource
s3ReferenceDataSourceDecoder =
    JDP.decode S3ReferenceDataSource
        |> JDP.required "bucketARN" JD.string
        |> JDP.required "fileKey" JD.string
        |> JDP.required "referenceRoleARN" JD.string




{-| <p>Provides the bucket name and object key name that stores the reference data.</p>
-}
type alias S3ReferenceDataSourceDescription =
    { bucketARN : String
    , fileKey : String
    , referenceRoleARN : String
    }



s3ReferenceDataSourceDescriptionDecoder : JD.Decoder S3ReferenceDataSourceDescription
s3ReferenceDataSourceDescriptionDecoder =
    JDP.decode S3ReferenceDataSourceDescription
        |> JDP.required "bucketARN" JD.string
        |> JDP.required "fileKey" JD.string
        |> JDP.required "referenceRoleARN" JD.string




{-| <p>Describes the S3 bucket name, object key name, and IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3 object on your behalf and populate the in-application reference table.</p>
-}
type alias S3ReferenceDataSourceUpdate =
    { bucketARNUpdate : Maybe String
    , fileKeyUpdate : Maybe String
    , referenceRoleARNUpdate : Maybe String
    }



s3ReferenceDataSourceUpdateDecoder : JD.Decoder S3ReferenceDataSourceUpdate
s3ReferenceDataSourceUpdateDecoder =
    JDP.decode S3ReferenceDataSourceUpdate
        |> JDP.optional "bucketARNUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileKeyUpdate" (JD.nullable JD.string) Nothing
        |> JDP.optional "referenceRoleARNUpdate" (JD.nullable JD.string) Nothing




{-| <p>Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream.</p>
-}
type alias SourceSchema =
    { recordFormat : RecordFormat
    , recordEncoding : Maybe String
    , recordColumns : (List RecordColumn)
    }



sourceSchemaDecoder : JD.Decoder SourceSchema
sourceSchemaDecoder =
    JDP.decode SourceSchema
        |> JDP.required "recordFormat" recordFormatDecoder
        |> JDP.optional "recordEncoding" (JD.nullable JD.string) Nothing
        |> JDP.required "recordColumns" (JD.list recordColumnDecoder)




{-| Type of HTTP response from startApplication
-}
type alias StartApplicationResponse =
    { 
    }



startApplicationResponseDecoder : JD.Decoder StartApplicationResponse
startApplicationResponseDecoder =
    JDP.decode StartApplicationResponse



{-| Type of HTTP response from stopApplication
-}
type alias StopApplicationResponse =
    { 
    }



stopApplicationResponseDecoder : JD.Decoder StopApplicationResponse
stopApplicationResponseDecoder =
    JDP.decode StopApplicationResponse



{-| <p>Data format is not valid, Kinesis Analytics is not able to detect schema for the given streaming source.</p>
-}
type alias UnableToDetectSchemaException =
    { message : Maybe String
    , rawInputRecords : Maybe (List String)
    }



unableToDetectSchemaExceptionDecoder : JD.Decoder UnableToDetectSchemaException
unableToDetectSchemaExceptionDecoder =
    JDP.decode UnableToDetectSchemaException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "rawInputRecords" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from updateApplication
-}
type alias UpdateApplicationResponse =
    { 
    }



updateApplicationResponseDecoder : JD.Decoder UpdateApplicationResponse
updateApplicationResponseDecoder =
    JDP.decode UpdateApplicationResponse



