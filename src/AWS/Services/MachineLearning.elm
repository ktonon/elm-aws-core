module AWS.Services.MachineLearning
    exposing
        ( config
        , addTags
        , createBatchPrediction
        , CreateBatchPredictionOptions
        , createDataSourceFromRDS
        , CreateDataSourceFromRDSOptions
        , createDataSourceFromRedshift
        , CreateDataSourceFromRedshiftOptions
        , createDataSourceFromS3
        , CreateDataSourceFromS3Options
        , createEvaluation
        , CreateEvaluationOptions
        , createMLModel
        , CreateMLModelOptions
        , createRealtimeEndpoint
        , deleteBatchPrediction
        , deleteDataSource
        , deleteEvaluation
        , deleteMLModel
        , deleteRealtimeEndpoint
        , deleteTags
        , describeBatchPredictions
        , DescribeBatchPredictionsOptions
        , describeDataSources
        , DescribeDataSourcesOptions
        , describeEvaluations
        , DescribeEvaluationsOptions
        , describeMLModels
        , DescribeMLModelsOptions
        , describeTags
        , getBatchPrediction
        , getDataSource
        , GetDataSourceOptions
        , getEvaluation
        , getMLModel
        , GetMLModelOptions
        , predict
        , updateBatchPrediction
        , updateDataSource
        , updateEvaluation
        , updateMLModel
        , UpdateMLModelOptions
        , AddTagsOutput
        , Algorithm(..)
        , BatchPrediction
        , BatchPredictionFilterVariable(..)
        , CreateBatchPredictionOutput
        , CreateDataSourceFromRDSOutput
        , CreateDataSourceFromRedshiftOutput
        , CreateDataSourceFromS3Output
        , CreateEvaluationOutput
        , CreateMLModelOutput
        , CreateRealtimeEndpointOutput
        , DataSource
        , DataSourceFilterVariable(..)
        , DeleteBatchPredictionOutput
        , DeleteDataSourceOutput
        , DeleteEvaluationOutput
        , DeleteMLModelOutput
        , DeleteRealtimeEndpointOutput
        , DeleteTagsOutput
        , DescribeBatchPredictionsOutput
        , DescribeDataSourcesOutput
        , DescribeEvaluationsOutput
        , DescribeMLModelsOutput
        , DescribeTagsOutput
        , DetailsAttributes(..)
        , EntityStatus(..)
        , Evaluation
        , EvaluationFilterVariable(..)
        , GetBatchPredictionOutput
        , GetDataSourceOutput
        , GetEvaluationOutput
        , GetMLModelOutput
        , IdempotentParameterMismatchException
        , InternalServerException
        , InvalidInputException
        , InvalidTagException
        , LimitExceededException
        , MLModel
        , MLModelFilterVariable(..)
        , MLModelType(..)
        , PerformanceMetrics
        , PredictOutput
        , Prediction
        , PredictorNotMountedException
        , RDSDataSpec
        , RDSDatabase
        , RDSDatabaseCredentials
        , RDSMetadata
        , RealtimeEndpointInfo
        , RealtimeEndpointStatus(..)
        , RedshiftDataSpec
        , RedshiftDatabase
        , RedshiftDatabaseCredentials
        , RedshiftMetadata
        , ResourceNotFoundException
        , S3DataSpec
        , SortOrder(..)
        , Tag
        , TagLimitExceededException
        , TaggableResourceType(..)
        , UpdateBatchPredictionOutput
        , UpdateDataSourceOutput
        , UpdateEvaluationOutput
        , UpdateMLModelOutput
        )

{-| Definition of the public APIs exposed by Amazon Machine Learning

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTags](#addTags)
* [createBatchPrediction](#createBatchPrediction)
* [CreateBatchPredictionOptions](#CreateBatchPredictionOptions)
* [createDataSourceFromRDS](#createDataSourceFromRDS)
* [CreateDataSourceFromRDSOptions](#CreateDataSourceFromRDSOptions)
* [createDataSourceFromRedshift](#createDataSourceFromRedshift)
* [CreateDataSourceFromRedshiftOptions](#CreateDataSourceFromRedshiftOptions)
* [createDataSourceFromS3](#createDataSourceFromS3)
* [CreateDataSourceFromS3Options](#CreateDataSourceFromS3Options)
* [createEvaluation](#createEvaluation)
* [CreateEvaluationOptions](#CreateEvaluationOptions)
* [createMLModel](#createMLModel)
* [CreateMLModelOptions](#CreateMLModelOptions)
* [createRealtimeEndpoint](#createRealtimeEndpoint)
* [deleteBatchPrediction](#deleteBatchPrediction)
* [deleteDataSource](#deleteDataSource)
* [deleteEvaluation](#deleteEvaluation)
* [deleteMLModel](#deleteMLModel)
* [deleteRealtimeEndpoint](#deleteRealtimeEndpoint)
* [deleteTags](#deleteTags)
* [describeBatchPredictions](#describeBatchPredictions)
* [DescribeBatchPredictionsOptions](#DescribeBatchPredictionsOptions)
* [describeDataSources](#describeDataSources)
* [DescribeDataSourcesOptions](#DescribeDataSourcesOptions)
* [describeEvaluations](#describeEvaluations)
* [DescribeEvaluationsOptions](#DescribeEvaluationsOptions)
* [describeMLModels](#describeMLModels)
* [DescribeMLModelsOptions](#DescribeMLModelsOptions)
* [describeTags](#describeTags)
* [getBatchPrediction](#getBatchPrediction)
* [getDataSource](#getDataSource)
* [GetDataSourceOptions](#GetDataSourceOptions)
* [getEvaluation](#getEvaluation)
* [getMLModel](#getMLModel)
* [GetMLModelOptions](#GetMLModelOptions)
* [predict](#predict)
* [updateBatchPrediction](#updateBatchPrediction)
* [updateDataSource](#updateDataSource)
* [updateEvaluation](#updateEvaluation)
* [updateMLModel](#updateMLModel)
* [UpdateMLModelOptions](#UpdateMLModelOptions)


@docs addTags,createBatchPrediction,CreateBatchPredictionOptions,createDataSourceFromRDS,CreateDataSourceFromRDSOptions,createDataSourceFromRedshift,CreateDataSourceFromRedshiftOptions,createDataSourceFromS3,CreateDataSourceFromS3Options,createEvaluation,CreateEvaluationOptions,createMLModel,CreateMLModelOptions,createRealtimeEndpoint,deleteBatchPrediction,deleteDataSource,deleteEvaluation,deleteMLModel,deleteRealtimeEndpoint,deleteTags,describeBatchPredictions,DescribeBatchPredictionsOptions,describeDataSources,DescribeDataSourcesOptions,describeEvaluations,DescribeEvaluationsOptions,describeMLModels,DescribeMLModelsOptions,describeTags,getBatchPrediction,getDataSource,GetDataSourceOptions,getEvaluation,getMLModel,GetMLModelOptions,predict,updateBatchPrediction,updateDataSource,updateEvaluation,updateMLModel,UpdateMLModelOptions

## Responses

* [AddTagsOutput](#AddTagsOutput)
* [CreateBatchPredictionOutput](#CreateBatchPredictionOutput)
* [CreateDataSourceFromRDSOutput](#CreateDataSourceFromRDSOutput)
* [CreateDataSourceFromRedshiftOutput](#CreateDataSourceFromRedshiftOutput)
* [CreateDataSourceFromS3Output](#CreateDataSourceFromS3Output)
* [CreateEvaluationOutput](#CreateEvaluationOutput)
* [CreateMLModelOutput](#CreateMLModelOutput)
* [CreateRealtimeEndpointOutput](#CreateRealtimeEndpointOutput)
* [DeleteBatchPredictionOutput](#DeleteBatchPredictionOutput)
* [DeleteDataSourceOutput](#DeleteDataSourceOutput)
* [DeleteEvaluationOutput](#DeleteEvaluationOutput)
* [DeleteMLModelOutput](#DeleteMLModelOutput)
* [DeleteRealtimeEndpointOutput](#DeleteRealtimeEndpointOutput)
* [DeleteTagsOutput](#DeleteTagsOutput)
* [DescribeBatchPredictionsOutput](#DescribeBatchPredictionsOutput)
* [DescribeDataSourcesOutput](#DescribeDataSourcesOutput)
* [DescribeEvaluationsOutput](#DescribeEvaluationsOutput)
* [DescribeMLModelsOutput](#DescribeMLModelsOutput)
* [DescribeTagsOutput](#DescribeTagsOutput)
* [GetBatchPredictionOutput](#GetBatchPredictionOutput)
* [GetDataSourceOutput](#GetDataSourceOutput)
* [GetEvaluationOutput](#GetEvaluationOutput)
* [GetMLModelOutput](#GetMLModelOutput)
* [PredictOutput](#PredictOutput)
* [UpdateBatchPredictionOutput](#UpdateBatchPredictionOutput)
* [UpdateDataSourceOutput](#UpdateDataSourceOutput)
* [UpdateEvaluationOutput](#UpdateEvaluationOutput)
* [UpdateMLModelOutput](#UpdateMLModelOutput)


@docs AddTagsOutput,CreateBatchPredictionOutput,CreateDataSourceFromRDSOutput,CreateDataSourceFromRedshiftOutput,CreateDataSourceFromS3Output,CreateEvaluationOutput,CreateMLModelOutput,CreateRealtimeEndpointOutput,DeleteBatchPredictionOutput,DeleteDataSourceOutput,DeleteEvaluationOutput,DeleteMLModelOutput,DeleteRealtimeEndpointOutput,DeleteTagsOutput,DescribeBatchPredictionsOutput,DescribeDataSourcesOutput,DescribeEvaluationsOutput,DescribeMLModelsOutput,DescribeTagsOutput,GetBatchPredictionOutput,GetDataSourceOutput,GetEvaluationOutput,GetMLModelOutput,PredictOutput,UpdateBatchPredictionOutput,UpdateDataSourceOutput,UpdateEvaluationOutput,UpdateMLModelOutput

## Records

* [BatchPrediction](#BatchPrediction)
* [DataSource](#DataSource)
* [Evaluation](#Evaluation)
* [MLModel](#MLModel)
* [PerformanceMetrics](#PerformanceMetrics)
* [Prediction](#Prediction)
* [RDSDataSpec](#RDSDataSpec)
* [RDSDatabase](#RDSDatabase)
* [RDSDatabaseCredentials](#RDSDatabaseCredentials)
* [RDSMetadata](#RDSMetadata)
* [RealtimeEndpointInfo](#RealtimeEndpointInfo)
* [RedshiftDataSpec](#RedshiftDataSpec)
* [RedshiftDatabase](#RedshiftDatabase)
* [RedshiftDatabaseCredentials](#RedshiftDatabaseCredentials)
* [RedshiftMetadata](#RedshiftMetadata)
* [S3DataSpec](#S3DataSpec)
* [Tag](#Tag)


@docs BatchPrediction,DataSource,Evaluation,MLModel,PerformanceMetrics,Prediction,RDSDataSpec,RDSDatabase,RDSDatabaseCredentials,RDSMetadata,RealtimeEndpointInfo,RedshiftDataSpec,RedshiftDatabase,RedshiftDatabaseCredentials,RedshiftMetadata,S3DataSpec,Tag

## Unions

* [Algorithm](#Algorithm)
* [BatchPredictionFilterVariable](#BatchPredictionFilterVariable)
* [DataSourceFilterVariable](#DataSourceFilterVariable)
* [DetailsAttributes](#DetailsAttributes)
* [EntityStatus](#EntityStatus)
* [EvaluationFilterVariable](#EvaluationFilterVariable)
* [MLModelFilterVariable](#MLModelFilterVariable)
* [MLModelType](#MLModelType)
* [RealtimeEndpointStatus](#RealtimeEndpointStatus)
* [SortOrder](#SortOrder)
* [TaggableResourceType](#TaggableResourceType)


@docs Algorithm,BatchPredictionFilterVariable,DataSourceFilterVariable,DetailsAttributes,EntityStatus,EvaluationFilterVariable,MLModelFilterVariable,MLModelType,RealtimeEndpointStatus,SortOrder,TaggableResourceType

## Exceptions

* [IdempotentParameterMismatchException](#IdempotentParameterMismatchException)
* [InternalServerException](#InternalServerException)
* [InvalidInputException](#InvalidInputException)
* [InvalidTagException](#InvalidTagException)
* [LimitExceededException](#LimitExceededException)
* [PredictorNotMountedException](#PredictorNotMountedException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [TagLimitExceededException](#TagLimitExceededException)


@docs IdempotentParameterMismatchException,InternalServerException,InvalidInputException,InvalidTagException,LimitExceededException,PredictorNotMountedException,ResourceNotFoundException,TagLimitExceededException

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "machinelearning"
        "2014-12-12"
        "1.1"
        "AWSMACHINELEARNING_20141212."
        "machinelearning.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, <code>AddTags</code> updates the tag's value.</p>

__Required Parameters__

* `tags` __:__ `(List Tag)`
* `resourceId` __:__ `String`
* `resourceType` __:__ `TaggableResourceType`


-}
addTags :
    (List Tag)
    -> String
    -> TaggableResourceType
    -> AWS.Http.UnsignedRequest AddTagsOutput
addTags tags resourceId resourceType =
    AWS.Http.unsignedRequest
        "AddTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsOutputDecoder



{-| <p>Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a <code>DataSource</code>. This operation creates a new <code>BatchPrediction</code>, and uses an <code>MLModel</code> and the data files referenced by the <code>DataSource</code> as information sources. </p> <p><code>CreateBatchPrediction</code> is an asynchronous operation. In response to <code>CreateBatchPrediction</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>BatchPrediction</code> status to <code>PENDING</code>. After the <code>BatchPrediction</code> completes, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can poll for status updates by using the <a>GetBatchPrediction</a> operation and checking the <code>Status</code> parameter of the result. After the <code>COMPLETED</code> status appears, the results are available in the location specified by the <code>OutputUri</code> parameter.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`
* `mLModelId` __:__ `String`
* `batchPredictionDataSourceId` __:__ `String`
* `outputUri` __:__ `String`


-}
createBatchPrediction :
    String
    -> String
    -> String
    -> String
    -> (CreateBatchPredictionOptions -> CreateBatchPredictionOptions)
    -> AWS.Http.UnsignedRequest CreateBatchPredictionOutput
createBatchPrediction batchPredictionId mLModelId batchPredictionDataSourceId outputUri setOptions =
  let
    options = setOptions (CreateBatchPredictionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateBatchPrediction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createBatchPredictionOutputDecoder


{-| Options for a createBatchPrediction request
-}
type alias CreateBatchPredictionOptions =
    { batchPredictionName : Maybe String
    }



{-| <p>Creates a <code>DataSource</code> object from an <a href="http://aws.amazon.com/rds/"> Amazon Relational Database Service</a> (Amazon RDS). A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRDS</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRDS</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used only to perform <code>&gt;CreateMLModel</code>&gt;, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML cannot accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `rDSData` __:__ `RDSDataSpec`
* `roleARN` __:__ `String`


-}
createDataSourceFromRDS :
    String
    -> RDSDataSpec
    -> String
    -> (CreateDataSourceFromRDSOptions -> CreateDataSourceFromRDSOptions)
    -> AWS.Http.UnsignedRequest CreateDataSourceFromRDSOutput
createDataSourceFromRDS dataSourceId rDSData roleARN setOptions =
  let
    options = setOptions (CreateDataSourceFromRDSOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDataSourceFromRDS"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDataSourceFromRDSOutputDecoder


{-| Options for a createDataSourceFromRDS request
-}
type alias CreateDataSourceFromRDSOptions =
    { dataSourceName : Maybe String
    , computeStatistics : Maybe Bool
    }



{-| <p>Creates a <code>DataSource</code> from a database hosted on an Amazon Redshift cluster. A <code>DataSource</code> references data that can be used to perform either <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRedshift</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRedshift</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in <code>COMPLETED</code> or <code>PENDING</code> states can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a <code>SelectSqlQuery</code> query. Amazon ML executes an <code>Unload</code> command in Amazon Redshift to transfer the result set of the <code>SelectSqlQuery</code> query to <code>S3StagingLocation</code>.</p> <p>After the <code>DataSource</code> has been created, it's ready for use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also requires a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p> <?oxy_insert_start author="laurama" timestamp="20160406T153842-0700"><p>You can't change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call <code>GetDataSource</code> for an existing datasource and copy the values to a <code>CreateDataSource</code> call. Change the settings that you want to change and make sure that all required fields have the appropriate values.</p> <?oxy_insert_end>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `dataSpec` __:__ `RedshiftDataSpec`
* `roleARN` __:__ `String`


-}
createDataSourceFromRedshift :
    String
    -> RedshiftDataSpec
    -> String
    -> (CreateDataSourceFromRedshiftOptions -> CreateDataSourceFromRedshiftOptions)
    -> AWS.Http.UnsignedRequest CreateDataSourceFromRedshiftOutput
createDataSourceFromRedshift dataSourceId dataSpec roleARN setOptions =
  let
    options = setOptions (CreateDataSourceFromRedshiftOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDataSourceFromRedshift"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDataSourceFromRedshiftOutputDecoder


{-| Options for a createDataSourceFromRedshift request
-}
type alias CreateDataSourceFromRedshiftOptions =
    { dataSourceName : Maybe String
    , computeStatistics : Maybe Bool
    }



{-| <p>Creates a <code>DataSource</code> object. A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromS3</code> is an asynchronous operation. In response to <code>CreateDataSourceFromS3</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> has been created and is ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code> or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observation data used in a <code>DataSource</code> should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the <code>DataSource</code>. </p> <p>After the <code>DataSource</code> has been created, it's ready to use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also needs a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `dataSpec` __:__ `S3DataSpec`


-}
createDataSourceFromS3 :
    String
    -> S3DataSpec
    -> (CreateDataSourceFromS3Options -> CreateDataSourceFromS3Options)
    -> AWS.Http.UnsignedRequest CreateDataSourceFromS3Output
createDataSourceFromS3 dataSourceId dataSpec setOptions =
  let
    options = setOptions (CreateDataSourceFromS3Options Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDataSourceFromS3"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDataSourceFromS3OutputDecoder


{-| Options for a createDataSourceFromS3 request
-}
type alias CreateDataSourceFromS3Options =
    { dataSourceName : Maybe String
    , computeStatistics : Maybe Bool
    }



{-| <p>Creates a new <code>Evaluation</code> of an <code>MLModel</code>. An <code>MLModel</code> is evaluated on a set of observations associated to a <code>DataSource</code>. Like a <code>DataSource</code> for an <code>MLModel</code>, the <code>DataSource</code> for an <code>Evaluation</code> contains values for the <code>Target Variable</code>. The <code>Evaluation</code> compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the <code>MLModel</code> functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding <code>MLModelType</code>: <code>BINARY</code>, <code>REGRESSION</code> or <code>MULTICLASS</code>. </p> <p><code>CreateEvaluation</code> is an asynchronous operation. In response to <code>CreateEvaluation</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to <code>PENDING</code>. After the <code>Evaluation</code> is created and ready for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetEvaluation</code> operation to check progress of the evaluation during the creation operation.</p>

__Required Parameters__

* `evaluationId` __:__ `String`
* `mLModelId` __:__ `String`
* `evaluationDataSourceId` __:__ `String`


-}
createEvaluation :
    String
    -> String
    -> String
    -> (CreateEvaluationOptions -> CreateEvaluationOptions)
    -> AWS.Http.UnsignedRequest CreateEvaluationOutput
createEvaluation evaluationId mLModelId evaluationDataSourceId setOptions =
  let
    options = setOptions (CreateEvaluationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateEvaluation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createEvaluationOutputDecoder


{-| Options for a createEvaluation request
-}
type alias CreateEvaluationOptions =
    { evaluationName : Maybe String
    }



{-| <p>Creates a new <code>MLModel</code> using the <code>DataSource</code> and the recipe as information sources. </p> <p>An <code>MLModel</code> is nearly immutable. Users can update only the <code>MLModelName</code> and the <code>ScoreThreshold</code> in an <code>MLModel</code> without creating a new <code>MLModel</code>. </p> <p><code>CreateMLModel</code> is an asynchronous operation. In response to <code>CreateMLModel</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>MLModel</code> status to <code>PENDING</code>. After the <code>MLModel</code> has been created and ready is for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetMLModel</code> operation to check the progress of the <code>MLModel</code> during the creation operation.</p> <p> <code>CreateMLModel</code> requires a <code>DataSource</code> with computed statistics, which can be created by setting <code>ComputeStatistics</code> to <code>true</code> in <code>CreateDataSourceFromRDS</code>, <code>CreateDataSourceFromS3</code>, or <code>CreateDataSourceFromRedshift</code> operations. </p>

__Required Parameters__

* `mLModelId` __:__ `String`
* `mLModelType` __:__ `MLModelType`
* `trainingDataSourceId` __:__ `String`


-}
createMLModel :
    String
    -> MLModelType
    -> String
    -> (CreateMLModelOptions -> CreateMLModelOptions)
    -> AWS.Http.UnsignedRequest CreateMLModelOutput
createMLModel mLModelId mLModelType trainingDataSourceId setOptions =
  let
    options = setOptions (CreateMLModelOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateMLModel"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createMLModelOutputDecoder


{-| Options for a createMLModel request
-}
type alias CreateMLModelOptions =
    { mLModelName : Maybe String
    , parameters : Maybe (Dict String String)
    , recipe : Maybe String
    , recipeUri : Maybe String
    }



{-| <p>Creates a real-time endpoint for the <code>MLModel</code>. The endpoint contains the URI of the <code>MLModel</code>; that is, the location to send real-time prediction requests for the specified <code>MLModel</code>.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}
createRealtimeEndpoint :
    String
    -> AWS.Http.UnsignedRequest CreateRealtimeEndpointOutput
createRealtimeEndpoint mLModelId =
    AWS.Http.unsignedRequest
        "CreateRealtimeEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRealtimeEndpointOutputDecoder



{-| <p>Assigns the DELETED status to a <code>BatchPrediction</code>, rendering it unusable.</p> <p>After using the <code>DeleteBatchPrediction</code> operation, you can use the <a>GetBatchPrediction</a> operation to verify that the status of the <code>BatchPrediction</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteBatchPrediction</code> operation is irreversible.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`


-}
deleteBatchPrediction :
    String
    -> AWS.Http.UnsignedRequest DeleteBatchPredictionOutput
deleteBatchPrediction batchPredictionId =
    AWS.Http.unsignedRequest
        "DeleteBatchPrediction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteBatchPredictionOutputDecoder



{-| <p>Assigns the DELETED status to a <code>DataSource</code>, rendering it unusable.</p> <p>After using the <code>DeleteDataSource</code> operation, you can use the <a>GetDataSource</a> operation to verify that the status of the <code>DataSource</code> changed to DELETED.</p> <p><b>Caution:</b> The results of the <code>DeleteDataSource</code> operation are irreversible.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`


-}
deleteDataSource :
    String
    -> AWS.Http.UnsignedRequest DeleteDataSourceOutput
deleteDataSource dataSourceId =
    AWS.Http.unsignedRequest
        "DeleteDataSource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDataSourceOutputDecoder



{-| <p>Assigns the <code>DELETED</code> status to an <code>Evaluation</code>, rendering it unusable.</p> <p>After invoking the <code>DeleteEvaluation</code> operation, you can use the <code>GetEvaluation</code> operation to verify that the status of the <code>Evaluation</code> changed to <code>DELETED</code>.</p> <caution><title>Caution</title> <p>The results of the <code>DeleteEvaluation</code> operation are irreversible.</p></caution>

__Required Parameters__

* `evaluationId` __:__ `String`


-}
deleteEvaluation :
    String
    -> AWS.Http.UnsignedRequest DeleteEvaluationOutput
deleteEvaluation evaluationId =
    AWS.Http.unsignedRequest
        "DeleteEvaluation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteEvaluationOutputDecoder



{-| <p>Assigns the <code>DELETED</code> status to an <code>MLModel</code>, rendering it unusable.</p> <p>After using the <code>DeleteMLModel</code> operation, you can use the <code>GetMLModel</code> operation to verify that the status of the <code>MLModel</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteMLModel</code> operation is irreversible.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}
deleteMLModel :
    String
    -> AWS.Http.UnsignedRequest DeleteMLModelOutput
deleteMLModel mLModelId =
    AWS.Http.unsignedRequest
        "DeleteMLModel"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteMLModelOutputDecoder



{-| <p>Deletes a real time endpoint of an <code>MLModel</code>.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}
deleteRealtimeEndpoint :
    String
    -> AWS.Http.UnsignedRequest DeleteRealtimeEndpointOutput
deleteRealtimeEndpoint mLModelId =
    AWS.Http.unsignedRequest
        "DeleteRealtimeEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRealtimeEndpointOutputDecoder



{-| <p>Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags.</p> <p>If you specify a tag that doesn't exist, Amazon ML ignores it.</p>

__Required Parameters__

* `tagKeys` __:__ `(List String)`
* `resourceId` __:__ `String`
* `resourceType` __:__ `TaggableResourceType`


-}
deleteTags :
    (List String)
    -> String
    -> TaggableResourceType
    -> AWS.Http.UnsignedRequest DeleteTagsOutput
deleteTags tagKeys resourceId resourceType =
    AWS.Http.unsignedRequest
        "DeleteTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTagsOutputDecoder



{-| <p>Returns a list of <code>BatchPrediction</code> operations that match the search criteria in the request.</p>

__Required Parameters__



-}
describeBatchPredictions :
    (DescribeBatchPredictionsOptions -> DescribeBatchPredictionsOptions)
    -> AWS.Http.UnsignedRequest DescribeBatchPredictionsOutput
describeBatchPredictions setOptions =
  let
    options = setOptions (DescribeBatchPredictionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeBatchPredictions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeBatchPredictionsOutputDecoder


{-| Options for a describeBatchPredictions request
-}
type alias DescribeBatchPredictionsOptions =
    { filterVariable : Maybe BatchPredictionFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns a list of <code>DataSource</code> that match the search criteria in the request.</p>

__Required Parameters__



-}
describeDataSources :
    (DescribeDataSourcesOptions -> DescribeDataSourcesOptions)
    -> AWS.Http.UnsignedRequest DescribeDataSourcesOutput
describeDataSources setOptions =
  let
    options = setOptions (DescribeDataSourcesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDataSources"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDataSourcesOutputDecoder


{-| Options for a describeDataSources request
-}
type alias DescribeDataSourcesOptions =
    { filterVariable : Maybe DataSourceFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns a list of <code>DescribeEvaluations</code> that match the search criteria in the request.</p>

__Required Parameters__



-}
describeEvaluations :
    (DescribeEvaluationsOptions -> DescribeEvaluationsOptions)
    -> AWS.Http.UnsignedRequest DescribeEvaluationsOutput
describeEvaluations setOptions =
  let
    options = setOptions (DescribeEvaluationsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEvaluations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEvaluationsOutputDecoder


{-| Options for a describeEvaluations request
-}
type alias DescribeEvaluationsOptions =
    { filterVariable : Maybe EvaluationFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns a list of <code>MLModel</code> that match the search criteria in the request.</p>

__Required Parameters__



-}
describeMLModels :
    (DescribeMLModelsOptions -> DescribeMLModelsOptions)
    -> AWS.Http.UnsignedRequest DescribeMLModelsOutput
describeMLModels setOptions =
  let
    options = setOptions (DescribeMLModelsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMLModels"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMLModelsOutputDecoder


{-| Options for a describeMLModels request
-}
type alias DescribeMLModelsOptions =
    { filterVariable : Maybe MLModelFilterVariable
    , eQ : Maybe String
    , gT : Maybe String
    , lT : Maybe String
    , gE : Maybe String
    , lE : Maybe String
    , nE : Maybe String
    , prefix : Maybe String
    , sortOrder : Maybe SortOrder
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Describes one or more of the tags for your Amazon ML object.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `resourceType` __:__ `TaggableResourceType`


-}
describeTags :
    String
    -> TaggableResourceType
    -> AWS.Http.UnsignedRequest DescribeTagsOutput
describeTags resourceId resourceType =
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTagsOutputDecoder



{-| <p>Returns a <code>BatchPrediction</code> that includes detailed metadata, status, and data file information for a <code>Batch Prediction</code> request.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`


-}
getBatchPrediction :
    String
    -> AWS.Http.UnsignedRequest GetBatchPredictionOutput
getBatchPrediction batchPredictionId =
    AWS.Http.unsignedRequest
        "GetBatchPrediction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getBatchPredictionOutputDecoder



{-| <p>Returns a <code>DataSource</code> that includes metadata and data file information, as well as the current status of the <code>DataSource</code>.</p> <p><code>GetDataSource</code> provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`


-}
getDataSource :
    String
    -> (GetDataSourceOptions -> GetDataSourceOptions)
    -> AWS.Http.UnsignedRequest GetDataSourceOutput
getDataSource dataSourceId setOptions =
  let
    options = setOptions (GetDataSourceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDataSource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDataSourceOutputDecoder


{-| Options for a getDataSource request
-}
type alias GetDataSourceOptions =
    { verbose : Maybe Bool
    }



{-| <p>Returns an <code>Evaluation</code> that includes metadata as well as the current status of the <code>Evaluation</code>.</p>

__Required Parameters__

* `evaluationId` __:__ `String`


-}
getEvaluation :
    String
    -> AWS.Http.UnsignedRequest GetEvaluationOutput
getEvaluation evaluationId =
    AWS.Http.unsignedRequest
        "GetEvaluation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getEvaluationOutputDecoder



{-| <p>Returns an <code>MLModel</code> that includes detailed metadata, data source information, and the current status of the <code>MLModel</code>.</p> <p><code>GetMLModel</code> provides results in normal or verbose format. </p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}
getMLModel :
    String
    -> (GetMLModelOptions -> GetMLModelOptions)
    -> AWS.Http.UnsignedRequest GetMLModelOutput
getMLModel mLModelId setOptions =
  let
    options = setOptions (GetMLModelOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetMLModel"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getMLModelOutputDecoder


{-| Options for a getMLModel request
-}
type alias GetMLModelOptions =
    { verbose : Maybe Bool
    }



{-| <p>Generates a prediction for the observation using the specified <code>ML Model</code>.</p> <note><title>Note</title> <p>Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.</p></note>

__Required Parameters__

* `mLModelId` __:__ `String`
* `record` __:__ `(Dict String String)`
* `predictEndpoint` __:__ `String`


-}
predict :
    String
    -> (Dict String String)
    -> String
    -> AWS.Http.UnsignedRequest PredictOutput
predict mLModelId record predictEndpoint =
    AWS.Http.unsignedRequest
        "Predict"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        predictOutputDecoder



{-| <p>Updates the <code>BatchPredictionName</code> of a <code>BatchPrediction</code>.</p> <p>You can use the <code>GetBatchPrediction</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `batchPredictionId` __:__ `String`
* `batchPredictionName` __:__ `String`


-}
updateBatchPrediction :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateBatchPredictionOutput
updateBatchPrediction batchPredictionId batchPredictionName =
    AWS.Http.unsignedRequest
        "UpdateBatchPrediction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateBatchPredictionOutputDecoder



{-| <p>Updates the <code>DataSourceName</code> of a <code>DataSource</code>.</p> <p>You can use the <code>GetDataSource</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `dataSourceId` __:__ `String`
* `dataSourceName` __:__ `String`


-}
updateDataSource :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateDataSourceOutput
updateDataSource dataSourceId dataSourceName =
    AWS.Http.unsignedRequest
        "UpdateDataSource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDataSourceOutputDecoder



{-| <p>Updates the <code>EvaluationName</code> of an <code>Evaluation</code>.</p> <p>You can use the <code>GetEvaluation</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `evaluationId` __:__ `String`
* `evaluationName` __:__ `String`


-}
updateEvaluation :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateEvaluationOutput
updateEvaluation evaluationId evaluationName =
    AWS.Http.unsignedRequest
        "UpdateEvaluation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateEvaluationOutputDecoder



{-| <p>Updates the <code>MLModelName</code> and the <code>ScoreThreshold</code> of an <code>MLModel</code>.</p> <p>You can use the <code>GetMLModel</code> operation to view the contents of the updated data element.</p>

__Required Parameters__

* `mLModelId` __:__ `String`


-}
updateMLModel :
    String
    -> (UpdateMLModelOptions -> UpdateMLModelOptions)
    -> AWS.Http.UnsignedRequest UpdateMLModelOutput
updateMLModel mLModelId setOptions =
  let
    options = setOptions (UpdateMLModelOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateMLModel"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateMLModelOutputDecoder


{-| Options for a updateMLModel request
-}
type alias UpdateMLModelOptions =
    { mLModelName : Maybe String
    , scoreThreshold : Maybe Float
    }




{-| Type of HTTP response from addTa
-}
type alias AddTagsOutput =
    { resourceId : Maybe String
    , resourceType : Maybe TaggableResourceType
    }



addTagsOutputDecoder : JD.Decoder AddTagsOutput
addTagsOutputDecoder =
    JDP.decode AddTagsOutput
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable taggableResourceTypeDecoder) Nothing




{-| One of

* `Algorithm_sgd`

-}
type Algorithm
    = Algorithm_sgd



algorithmDecoder : JD.Decoder Algorithm
algorithmDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "sgd" ->
                        JD.succeed Algorithm_sgd


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>
-}
type alias BatchPrediction =
    { batchPredictionId : Maybe String
    , mLModelId : Maybe String
    , batchPredictionDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , name : Maybe String
    , status : Maybe EntityStatus
    , outputUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    , totalRecordCount : Maybe Int
    , invalidRecordCount : Maybe Int
    }



batchPredictionDecoder : JD.Decoder BatchPrediction
batchPredictionDecoder =
    JDP.decode BatchPrediction
        |> JDP.optional "batchPredictionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "batchPredictionDataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputDataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "outputUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "totalRecordCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "invalidRecordCount" (JD.nullable JD.int) Nothing




{-| One of

* `BatchPredictionFilterVariable_CreatedAt`
* `BatchPredictionFilterVariable_LastUpdatedAt`
* `BatchPredictionFilterVariable_Status`
* `BatchPredictionFilterVariable_Name`
* `BatchPredictionFilterVariable_IAMUser`
* `BatchPredictionFilterVariable_MLModelId`
* `BatchPredictionFilterVariable_DataSourceId`
* `BatchPredictionFilterVariable_DataURI`

-}
type BatchPredictionFilterVariable
    = BatchPredictionFilterVariable_CreatedAt
    | BatchPredictionFilterVariable_LastUpdatedAt
    | BatchPredictionFilterVariable_Status
    | BatchPredictionFilterVariable_Name
    | BatchPredictionFilterVariable_IAMUser
    | BatchPredictionFilterVariable_MLModelId
    | BatchPredictionFilterVariable_DataSourceId
    | BatchPredictionFilterVariable_DataURI



batchPredictionFilterVariableDecoder : JD.Decoder BatchPredictionFilterVariable
batchPredictionFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed BatchPredictionFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed BatchPredictionFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed BatchPredictionFilterVariable_Status

                    "Name" ->
                        JD.succeed BatchPredictionFilterVariable_Name

                    "IAMUser" ->
                        JD.succeed BatchPredictionFilterVariable_IAMUser

                    "MLModelId" ->
                        JD.succeed BatchPredictionFilterVariable_MLModelId

                    "DataSourceId" ->
                        JD.succeed BatchPredictionFilterVariable_DataSourceId

                    "DataURI" ->
                        JD.succeed BatchPredictionFilterVariable_DataURI


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createBatchPredicti
-}
type alias CreateBatchPredictionOutput =
    { batchPredictionId : Maybe String
    }



createBatchPredictionOutputDecoder : JD.Decoder CreateBatchPredictionOutput
createBatchPredictionOutputDecoder =
    JDP.decode CreateBatchPredictionOutput
        |> JDP.optional "batchPredictionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDataSourceFromR
-}
type alias CreateDataSourceFromRDSOutput =
    { dataSourceId : Maybe String
    }



createDataSourceFromRDSOutputDecoder : JD.Decoder CreateDataSourceFromRDSOutput
createDataSourceFromRDSOutputDecoder =
    JDP.decode CreateDataSourceFromRDSOutput
        |> JDP.optional "dataSourceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDataSourceFromRedshi
-}
type alias CreateDataSourceFromRedshiftOutput =
    { dataSourceId : Maybe String
    }



createDataSourceFromRedshiftOutputDecoder : JD.Decoder CreateDataSourceFromRedshiftOutput
createDataSourceFromRedshiftOutputDecoder =
    JDP.decode CreateDataSourceFromRedshiftOutput
        |> JDP.optional "dataSourceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDataSourceFrom
-}
type alias CreateDataSourceFromS3Output =
    { dataSourceId : Maybe String
    }



createDataSourceFromS3OutputDecoder : JD.Decoder CreateDataSourceFromS3Output
createDataSourceFromS3OutputDecoder =
    JDP.decode CreateDataSourceFromS3Output
        |> JDP.optional "dataSourceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createEvaluati
-}
type alias CreateEvaluationOutput =
    { evaluationId : Maybe String
    }



createEvaluationOutputDecoder : JD.Decoder CreateEvaluationOutput
createEvaluationOutputDecoder =
    JDP.decode CreateEvaluationOutput
        |> JDP.optional "evaluationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createMLMod
-}
type alias CreateMLModelOutput =
    { mLModelId : Maybe String
    }



createMLModelOutputDecoder : JD.Decoder CreateMLModelOutput
createMLModelOutputDecoder =
    JDP.decode CreateMLModelOutput
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createRealtimeEndpoi
-}
type alias CreateRealtimeEndpointOutput =
    { mLModelId : Maybe String
    , realtimeEndpointInfo : Maybe RealtimeEndpointInfo
    }



createRealtimeEndpointOutputDecoder : JD.Decoder CreateRealtimeEndpointOutput
createRealtimeEndpointOutputDecoder =
    JDP.decode CreateRealtimeEndpointOutput
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "realtimeEndpointInfo" (JD.nullable realtimeEndpointInfoDecoder) Nothing




{-| <p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>
-}
type alias DataSource =
    { dataSourceId : Maybe String
    , dataLocationS3 : Maybe String
    , dataRearrangement : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , dataSizeInBytes : Maybe Int
    , numberOfFiles : Maybe Int
    , name : Maybe String
    , status : Maybe EntityStatus
    , message : Maybe String
    , redshiftMetadata : Maybe RedshiftMetadata
    , rDSMetadata : Maybe RDSMetadata
    , roleARN : Maybe String
    , computeStatistics : Maybe Bool
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    }



dataSourceDecoder : JD.Decoder DataSource
dataSourceDecoder =
    JDP.decode DataSource
        |> JDP.optional "dataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataRearrangement" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "dataSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "numberOfFiles" (JD.nullable JD.int) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "redshiftMetadata" (JD.nullable redshiftMetadataDecoder) Nothing
        |> JDP.optional "rDSMetadata" (JD.nullable rDSMetadataDecoder) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeStatistics" (JD.nullable JD.bool) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing




{-| One of

* `DataSourceFilterVariable_CreatedAt`
* `DataSourceFilterVariable_LastUpdatedAt`
* `DataSourceFilterVariable_Status`
* `DataSourceFilterVariable_Name`
* `DataSourceFilterVariable_DataLocationS3`
* `DataSourceFilterVariable_IAMUser`

-}
type DataSourceFilterVariable
    = DataSourceFilterVariable_CreatedAt
    | DataSourceFilterVariable_LastUpdatedAt
    | DataSourceFilterVariable_Status
    | DataSourceFilterVariable_Name
    | DataSourceFilterVariable_DataLocationS3
    | DataSourceFilterVariable_IAMUser



dataSourceFilterVariableDecoder : JD.Decoder DataSourceFilterVariable
dataSourceFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed DataSourceFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed DataSourceFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed DataSourceFilterVariable_Status

                    "Name" ->
                        JD.succeed DataSourceFilterVariable_Name

                    "DataLocationS3" ->
                        JD.succeed DataSourceFilterVariable_DataLocationS3

                    "IAMUser" ->
                        JD.succeed DataSourceFilterVariable_IAMUser


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from deleteBatchPredicti
-}
type alias DeleteBatchPredictionOutput =
    { batchPredictionId : Maybe String
    }



deleteBatchPredictionOutputDecoder : JD.Decoder DeleteBatchPredictionOutput
deleteBatchPredictionOutputDecoder =
    JDP.decode DeleteBatchPredictionOutput
        |> JDP.optional "batchPredictionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteDataSour
-}
type alias DeleteDataSourceOutput =
    { dataSourceId : Maybe String
    }



deleteDataSourceOutputDecoder : JD.Decoder DeleteDataSourceOutput
deleteDataSourceOutputDecoder =
    JDP.decode DeleteDataSourceOutput
        |> JDP.optional "dataSourceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteEvaluati
-}
type alias DeleteEvaluationOutput =
    { evaluationId : Maybe String
    }



deleteEvaluationOutputDecoder : JD.Decoder DeleteEvaluationOutput
deleteEvaluationOutputDecoder =
    JDP.decode DeleteEvaluationOutput
        |> JDP.optional "evaluationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteMLMod
-}
type alias DeleteMLModelOutput =
    { mLModelId : Maybe String
    }



deleteMLModelOutputDecoder : JD.Decoder DeleteMLModelOutput
deleteMLModelOutputDecoder =
    JDP.decode DeleteMLModelOutput
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteRealtimeEndpoi
-}
type alias DeleteRealtimeEndpointOutput =
    { mLModelId : Maybe String
    , realtimeEndpointInfo : Maybe RealtimeEndpointInfo
    }



deleteRealtimeEndpointOutputDecoder : JD.Decoder DeleteRealtimeEndpointOutput
deleteRealtimeEndpointOutputDecoder =
    JDP.decode DeleteRealtimeEndpointOutput
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "realtimeEndpointInfo" (JD.nullable realtimeEndpointInfoDecoder) Nothing




{-| Type of HTTP response from deleteTa
-}
type alias DeleteTagsOutput =
    { resourceId : Maybe String
    , resourceType : Maybe TaggableResourceType
    }



deleteTagsOutputDecoder : JD.Decoder DeleteTagsOutput
deleteTagsOutputDecoder =
    JDP.decode DeleteTagsOutput
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable taggableResourceTypeDecoder) Nothing




{-| Type of HTTP response from describeBatchPredictio
-}
type alias DescribeBatchPredictionsOutput =
    { results : Maybe (List BatchPrediction)
    , nextToken : Maybe String
    }



describeBatchPredictionsOutputDecoder : JD.Decoder DescribeBatchPredictionsOutput
describeBatchPredictionsOutputDecoder =
    JDP.decode DescribeBatchPredictionsOutput
        |> JDP.optional "results" (JD.nullable (JD.list batchPredictionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeDataSourc
-}
type alias DescribeDataSourcesOutput =
    { results : Maybe (List DataSource)
    , nextToken : Maybe String
    }



describeDataSourcesOutputDecoder : JD.Decoder DescribeDataSourcesOutput
describeDataSourcesOutputDecoder =
    JDP.decode DescribeDataSourcesOutput
        |> JDP.optional "results" (JD.nullable (JD.list dataSourceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEvaluatio
-}
type alias DescribeEvaluationsOutput =
    { results : Maybe (List Evaluation)
    , nextToken : Maybe String
    }



describeEvaluationsOutputDecoder : JD.Decoder DescribeEvaluationsOutput
describeEvaluationsOutputDecoder =
    JDP.decode DescribeEvaluationsOutput
        |> JDP.optional "results" (JD.nullable (JD.list evaluationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMLMode
-}
type alias DescribeMLModelsOutput =
    { results : Maybe (List MLModel)
    , nextToken : Maybe String
    }



describeMLModelsOutputDecoder : JD.Decoder DescribeMLModelsOutput
describeMLModelsOutputDecoder =
    JDP.decode DescribeMLModelsOutput
        |> JDP.optional "results" (JD.nullable (JD.list mLModelDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsOutput =
    { resourceId : Maybe String
    , resourceType : Maybe TaggableResourceType
    , tags : Maybe (List Tag)
    }



describeTagsOutputDecoder : JD.Decoder DescribeTagsOutput
describeTagsOutputDecoder =
    JDP.decode DescribeTagsOutput
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable taggableResourceTypeDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `DetailsAttributes_PredictiveModelType`
* `DetailsAttributes_Algorithm`

-}
type DetailsAttributes
    = DetailsAttributes_PredictiveModelType
    | DetailsAttributes_Algorithm



detailsAttributesDecoder : JD.Decoder DetailsAttributes
detailsAttributesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PredictiveModelType" ->
                        JD.succeed DetailsAttributes_PredictiveModelType

                    "Algorithm" ->
                        JD.succeed DetailsAttributes_Algorithm


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `EntityStatus_PENDING`
* `EntityStatus_INPROGRESS`
* `EntityStatus_FAILED`
* `EntityStatus_COMPLETED`
* `EntityStatus_DELETED`

-}
type EntityStatus
    = EntityStatus_PENDING
    | EntityStatus_INPROGRESS
    | EntityStatus_FAILED
    | EntityStatus_COMPLETED
    | EntityStatus_DELETED



entityStatusDecoder : JD.Decoder EntityStatus
entityStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed EntityStatus_PENDING

                    "INPROGRESS" ->
                        JD.succeed EntityStatus_INPROGRESS

                    "FAILED" ->
                        JD.succeed EntityStatus_FAILED

                    "COMPLETED" ->
                        JD.succeed EntityStatus_COMPLETED

                    "DELETED" ->
                        JD.succeed EntityStatus_DELETED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>
-}
type alias Evaluation =
    { evaluationId : Maybe String
    , mLModelId : Maybe String
    , evaluationDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , name : Maybe String
    , status : Maybe EntityStatus
    , performanceMetrics : Maybe PerformanceMetrics
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    }



evaluationDecoder : JD.Decoder Evaluation
evaluationDecoder =
    JDP.decode Evaluation
        |> JDP.optional "evaluationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "evaluationDataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputDataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "performanceMetrics" (JD.nullable performanceMetricsDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing




{-| One of

* `EvaluationFilterVariable_CreatedAt`
* `EvaluationFilterVariable_LastUpdatedAt`
* `EvaluationFilterVariable_Status`
* `EvaluationFilterVariable_Name`
* `EvaluationFilterVariable_IAMUser`
* `EvaluationFilterVariable_MLModelId`
* `EvaluationFilterVariable_DataSourceId`
* `EvaluationFilterVariable_DataURI`

-}
type EvaluationFilterVariable
    = EvaluationFilterVariable_CreatedAt
    | EvaluationFilterVariable_LastUpdatedAt
    | EvaluationFilterVariable_Status
    | EvaluationFilterVariable_Name
    | EvaluationFilterVariable_IAMUser
    | EvaluationFilterVariable_MLModelId
    | EvaluationFilterVariable_DataSourceId
    | EvaluationFilterVariable_DataURI



evaluationFilterVariableDecoder : JD.Decoder EvaluationFilterVariable
evaluationFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed EvaluationFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed EvaluationFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed EvaluationFilterVariable_Status

                    "Name" ->
                        JD.succeed EvaluationFilterVariable_Name

                    "IAMUser" ->
                        JD.succeed EvaluationFilterVariable_IAMUser

                    "MLModelId" ->
                        JD.succeed EvaluationFilterVariable_MLModelId

                    "DataSourceId" ->
                        JD.succeed EvaluationFilterVariable_DataSourceId

                    "DataURI" ->
                        JD.succeed EvaluationFilterVariable_DataURI


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getBatchPredicti
-}
type alias GetBatchPredictionOutput =
    { batchPredictionId : Maybe String
    , mLModelId : Maybe String
    , batchPredictionDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , name : Maybe String
    , status : Maybe EntityStatus
    , outputUri : Maybe String
    , logUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    , totalRecordCount : Maybe Int
    , invalidRecordCount : Maybe Int
    }



getBatchPredictionOutputDecoder : JD.Decoder GetBatchPredictionOutput
getBatchPredictionOutputDecoder =
    JDP.decode GetBatchPredictionOutput
        |> JDP.optional "batchPredictionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "batchPredictionDataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputDataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "outputUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "logUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "totalRecordCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "invalidRecordCount" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from getDataSour
-}
type alias GetDataSourceOutput =
    { dataSourceId : Maybe String
    , dataLocationS3 : Maybe String
    , dataRearrangement : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , dataSizeInBytes : Maybe Int
    , numberOfFiles : Maybe Int
    , name : Maybe String
    , status : Maybe EntityStatus
    , logUri : Maybe String
    , message : Maybe String
    , redshiftMetadata : Maybe RedshiftMetadata
    , rDSMetadata : Maybe RDSMetadata
    , roleARN : Maybe String
    , computeStatistics : Maybe Bool
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    , dataSourceSchema : Maybe String
    }



getDataSourceOutputDecoder : JD.Decoder GetDataSourceOutput
getDataSourceOutputDecoder =
    JDP.decode GetDataSourceOutput
        |> JDP.optional "dataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataRearrangement" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "dataSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "numberOfFiles" (JD.nullable JD.int) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "logUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "redshiftMetadata" (JD.nullable redshiftMetadataDecoder) Nothing
        |> JDP.optional "rDSMetadata" (JD.nullable rDSMetadataDecoder) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeStatistics" (JD.nullable JD.bool) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "dataSourceSchema" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getEvaluati
-}
type alias GetEvaluationOutput =
    { evaluationId : Maybe String
    , mLModelId : Maybe String
    , evaluationDataSourceId : Maybe String
    , inputDataLocationS3 : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , name : Maybe String
    , status : Maybe EntityStatus
    , performanceMetrics : Maybe PerformanceMetrics
    , logUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    }



getEvaluationOutputDecoder : JD.Decoder GetEvaluationOutput
getEvaluationOutputDecoder =
    JDP.decode GetEvaluationOutput
        |> JDP.optional "evaluationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "evaluationDataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputDataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "performanceMetrics" (JD.nullable performanceMetricsDecoder) Nothing
        |> JDP.optional "logUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getMLMod
-}
type alias GetMLModelOutput =
    { mLModelId : Maybe String
    , trainingDataSourceId : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , name : Maybe String
    , status : Maybe EntityStatus
    , sizeInBytes : Maybe Int
    , endpointInfo : Maybe RealtimeEndpointInfo
    , trainingParameters : Maybe (Dict String String)
    , inputDataLocationS3 : Maybe String
    , mLModelType : Maybe MLModelType
    , scoreThreshold : Maybe Float
    , scoreThresholdLastUpdatedAt : Maybe Date
    , logUri : Maybe String
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    , recipe : Maybe String
    , schema : Maybe String
    }



getMLModelOutputDecoder : JD.Decoder GetMLModelOutput
getMLModelOutputDecoder =
    JDP.decode GetMLModelOutput
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "trainingDataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "sizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "endpointInfo" (JD.nullable realtimeEndpointInfoDecoder) Nothing
        |> JDP.optional "trainingParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "inputDataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "mLModelType" (JD.nullable mLModelTypeDecoder) Nothing
        |> JDP.optional "scoreThreshold" (JD.nullable JD.float) Nothing
        |> JDP.optional "scoreThresholdLastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "logUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "recipe" (JD.nullable JD.string) Nothing
        |> JDP.optional "schema" (JD.nullable JD.string) Nothing




{-| <p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>
-}
type alias IdempotentParameterMismatchException =
    { message : Maybe String
    , code : Maybe Int
    }



idempotentParameterMismatchExceptionDecoder : JD.Decoder IdempotentParameterMismatchException
idempotentParameterMismatchExceptionDecoder =
    JDP.decode IdempotentParameterMismatchException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.int) Nothing




{-| <p>An error on the server occurred when trying to process a request.</p>
-}
type alias InternalServerException =
    { message : Maybe String
    , code : Maybe Int
    }



internalServerExceptionDecoder : JD.Decoder InternalServerException
internalServerExceptionDecoder =
    JDP.decode InternalServerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.int) Nothing




{-| <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
-}
type alias InvalidInputException =
    { message : Maybe String
    , code : Maybe Int
    }



invalidInputExceptionDecoder : JD.Decoder InvalidInputException
invalidInputExceptionDecoder =
    JDP.decode InvalidInputException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.int) Nothing




{-| undefined
-}
type alias InvalidTagException =
    { message : Maybe String
    }



invalidTagExceptionDecoder : JD.Decoder InvalidTagException
invalidTagExceptionDecoder =
    JDP.decode InvalidTagException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    , code : Maybe Int
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.int) Nothing




{-| <p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
-}
type alias MLModel =
    { mLModelId : Maybe String
    , trainingDataSourceId : Maybe String
    , createdByIamUser : Maybe String
    , createdAt : Maybe Date
    , lastUpdatedAt : Maybe Date
    , name : Maybe String
    , status : Maybe EntityStatus
    , sizeInBytes : Maybe Int
    , endpointInfo : Maybe RealtimeEndpointInfo
    , trainingParameters : Maybe (Dict String String)
    , inputDataLocationS3 : Maybe String
    , algorithm : Maybe Algorithm
    , mLModelType : Maybe MLModelType
    , scoreThreshold : Maybe Float
    , scoreThresholdLastUpdatedAt : Maybe Date
    , message : Maybe String
    , computeTime : Maybe Int
    , finishedAt : Maybe Date
    , startedAt : Maybe Date
    }



mLModelDecoder : JD.Decoder MLModel
mLModelDecoder =
    JDP.decode MLModel
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "trainingDataSourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdByIamUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable entityStatusDecoder) Nothing
        |> JDP.optional "sizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "endpointInfo" (JD.nullable realtimeEndpointInfoDecoder) Nothing
        |> JDP.optional "trainingParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "inputDataLocationS3" (JD.nullable JD.string) Nothing
        |> JDP.optional "algorithm" (JD.nullable algorithmDecoder) Nothing
        |> JDP.optional "mLModelType" (JD.nullable mLModelTypeDecoder) Nothing
        |> JDP.optional "scoreThreshold" (JD.nullable JD.float) Nothing
        |> JDP.optional "scoreThresholdLastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing




{-| One of

* `MLModelFilterVariable_CreatedAt`
* `MLModelFilterVariable_LastUpdatedAt`
* `MLModelFilterVariable_Status`
* `MLModelFilterVariable_Name`
* `MLModelFilterVariable_IAMUser`
* `MLModelFilterVariable_TrainingDataSourceId`
* `MLModelFilterVariable_RealtimeEndpointStatus`
* `MLModelFilterVariable_MLModelType`
* `MLModelFilterVariable_Algorithm`
* `MLModelFilterVariable_TrainingDataURI`

-}
type MLModelFilterVariable
    = MLModelFilterVariable_CreatedAt
    | MLModelFilterVariable_LastUpdatedAt
    | MLModelFilterVariable_Status
    | MLModelFilterVariable_Name
    | MLModelFilterVariable_IAMUser
    | MLModelFilterVariable_TrainingDataSourceId
    | MLModelFilterVariable_RealtimeEndpointStatus
    | MLModelFilterVariable_MLModelType
    | MLModelFilterVariable_Algorithm
    | MLModelFilterVariable_TrainingDataURI



mLModelFilterVariableDecoder : JD.Decoder MLModelFilterVariable
mLModelFilterVariableDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreatedAt" ->
                        JD.succeed MLModelFilterVariable_CreatedAt

                    "LastUpdatedAt" ->
                        JD.succeed MLModelFilterVariable_LastUpdatedAt

                    "Status" ->
                        JD.succeed MLModelFilterVariable_Status

                    "Name" ->
                        JD.succeed MLModelFilterVariable_Name

                    "IAMUser" ->
                        JD.succeed MLModelFilterVariable_IAMUser

                    "TrainingDataSourceId" ->
                        JD.succeed MLModelFilterVariable_TrainingDataSourceId

                    "RealtimeEndpointStatus" ->
                        JD.succeed MLModelFilterVariable_RealtimeEndpointStatus

                    "MLModelType" ->
                        JD.succeed MLModelFilterVariable_MLModelType

                    "Algorithm" ->
                        JD.succeed MLModelFilterVariable_Algorithm

                    "TrainingDataURI" ->
                        JD.succeed MLModelFilterVariable_TrainingDataURI


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `MLModelType_REGRESSION`
* `MLModelType_BINARY`
* `MLModelType_MULTICLASS`

-}
type MLModelType
    = MLModelType_REGRESSION
    | MLModelType_BINARY
    | MLModelType_MULTICLASS



mLModelTypeDecoder : JD.Decoder MLModelType
mLModelTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGRESSION" ->
                        JD.succeed MLModelType_REGRESSION

                    "BINARY" ->
                        JD.succeed MLModelType_BINARY

                    "MULTICLASS" ->
                        JD.succeed MLModelType_MULTICLASS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>
-}
type alias PerformanceMetrics =
    { properties : Maybe (Dict String String)
    }



performanceMetricsDecoder : JD.Decoder PerformanceMetrics
performanceMetricsDecoder =
    JDP.decode PerformanceMetrics
        |> JDP.optional "properties" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from predi
-}
type alias PredictOutput =
    { prediction : Maybe Prediction
    }



predictOutputDecoder : JD.Decoder PredictOutput
predictOutputDecoder =
    JDP.decode PredictOutput
        |> JDP.optional "prediction" (JD.nullable predictionDecoder) Nothing




{-| <p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>
-}
type alias Prediction =
    { predictedLabel : Maybe String
    , predictedValue : Maybe Float
    , predictedScores : Maybe (Dict String Float)
    , details : Maybe (Dict String String)
    }



predictionDecoder : JD.Decoder Prediction
predictionDecoder =
    JDP.decode Prediction
        |> JDP.optional "predictedLabel" (JD.nullable JD.string) Nothing
        |> JDP.optional "predictedValue" (JD.nullable JD.float) Nothing
        |> JDP.optional "predictedScores" (JD.nullable (JD.dict JD.float)) Nothing
        |> JDP.optional "details" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>
-}
type alias PredictorNotMountedException =
    { message : Maybe String
    }



predictorNotMountedExceptionDecoder : JD.Decoder PredictorNotMountedException
predictorNotMountedExceptionDecoder =
    JDP.decode PredictorNotMountedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>
-}
type alias RDSDataSpec =
    { databaseInformation : RDSDatabase
    , selectSqlQuery : String
    , databaseCredentials : RDSDatabaseCredentials
    , s3StagingLocation : String
    , dataRearrangement : Maybe String
    , dataSchema : Maybe String
    , dataSchemaUri : Maybe String
    , resourceRole : String
    , serviceRole : String
    , subnetId : String
    , securityGroupIds : (List String)
    }



rDSDataSpecDecoder : JD.Decoder RDSDataSpec
rDSDataSpecDecoder =
    JDP.decode RDSDataSpec
        |> JDP.required "databaseInformation" rDSDatabaseDecoder
        |> JDP.required "selectSqlQuery" JD.string
        |> JDP.required "databaseCredentials" rDSDatabaseCredentialsDecoder
        |> JDP.required "s3StagingLocation" JD.string
        |> JDP.optional "dataRearrangement" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataSchema" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataSchemaUri" (JD.nullable JD.string) Nothing
        |> JDP.required "resourceRole" JD.string
        |> JDP.required "serviceRole" JD.string
        |> JDP.required "subnetId" JD.string
        |> JDP.required "securityGroupIds" (JD.list JD.string)




{-| <p>The database details of an Amazon RDS database.</p>
-}
type alias RDSDatabase =
    { instanceIdentifier : String
    , databaseName : String
    }



rDSDatabaseDecoder : JD.Decoder RDSDatabase
rDSDatabaseDecoder =
    JDP.decode RDSDatabase
        |> JDP.required "instanceIdentifier" JD.string
        |> JDP.required "databaseName" JD.string




{-| <p>The database credentials to connect to a database on an RDS DB instance.</p>
-}
type alias RDSDatabaseCredentials =
    { username : String
    , password : String
    }



rDSDatabaseCredentialsDecoder : JD.Decoder RDSDatabaseCredentials
rDSDatabaseCredentialsDecoder =
    JDP.decode RDSDatabaseCredentials
        |> JDP.required "username" JD.string
        |> JDP.required "password" JD.string




{-| <p>The datasource details that are specific to Amazon RDS.</p>
-}
type alias RDSMetadata =
    { database : Maybe RDSDatabase
    , databaseUserName : Maybe String
    , selectSqlQuery : Maybe String
    , resourceRole : Maybe String
    , serviceRole : Maybe String
    , dataPipelineId : Maybe String
    }



rDSMetadataDecoder : JD.Decoder RDSMetadata
rDSMetadataDecoder =
    JDP.decode RDSMetadata
        |> JDP.optional "database" (JD.nullable rDSDatabaseDecoder) Nothing
        |> JDP.optional "databaseUserName" (JD.nullable JD.string) Nothing
        |> JDP.optional "selectSqlQuery" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataPipelineId" (JD.nullable JD.string) Nothing




{-| <p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>
-}
type alias RealtimeEndpointInfo =
    { peakRequestsPerSecond : Maybe Int
    , createdAt : Maybe Date
    , endpointUrl : Maybe String
    , endpointStatus : Maybe RealtimeEndpointStatus
    }



realtimeEndpointInfoDecoder : JD.Decoder RealtimeEndpointInfo
realtimeEndpointInfoDecoder =
    JDP.decode RealtimeEndpointInfo
        |> JDP.optional "peakRequestsPerSecond" (JD.nullable JD.int) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endpointUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpointStatus" (JD.nullable realtimeEndpointStatusDecoder) Nothing




{-| One of

* `RealtimeEndpointStatus_NONE`
* `RealtimeEndpointStatus_READY`
* `RealtimeEndpointStatus_UPDATING`
* `RealtimeEndpointStatus_FAILED`

-}
type RealtimeEndpointStatus
    = RealtimeEndpointStatus_NONE
    | RealtimeEndpointStatus_READY
    | RealtimeEndpointStatus_UPDATING
    | RealtimeEndpointStatus_FAILED



realtimeEndpointStatusDecoder : JD.Decoder RealtimeEndpointStatus
realtimeEndpointStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed RealtimeEndpointStatus_NONE

                    "READY" ->
                        JD.succeed RealtimeEndpointStatus_READY

                    "UPDATING" ->
                        JD.succeed RealtimeEndpointStatus_UPDATING

                    "FAILED" ->
                        JD.succeed RealtimeEndpointStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>
-}
type alias RedshiftDataSpec =
    { databaseInformation : RedshiftDatabase
    , selectSqlQuery : String
    , databaseCredentials : RedshiftDatabaseCredentials
    , s3StagingLocation : String
    , dataRearrangement : Maybe String
    , dataSchema : Maybe String
    , dataSchemaUri : Maybe String
    }



redshiftDataSpecDecoder : JD.Decoder RedshiftDataSpec
redshiftDataSpecDecoder =
    JDP.decode RedshiftDataSpec
        |> JDP.required "databaseInformation" redshiftDatabaseDecoder
        |> JDP.required "selectSqlQuery" JD.string
        |> JDP.required "databaseCredentials" redshiftDatabaseCredentialsDecoder
        |> JDP.required "s3StagingLocation" JD.string
        |> JDP.optional "dataRearrangement" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataSchema" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataSchemaUri" (JD.nullable JD.string) Nothing




{-| <p>Describes the database details required to connect to an Amazon Redshift database.</p>
-}
type alias RedshiftDatabase =
    { databaseName : String
    , clusterIdentifier : String
    }



redshiftDatabaseDecoder : JD.Decoder RedshiftDatabase
redshiftDatabaseDecoder =
    JDP.decode RedshiftDatabase
        |> JDP.required "databaseName" JD.string
        |> JDP.required "clusterIdentifier" JD.string




{-| <p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>
-}
type alias RedshiftDatabaseCredentials =
    { username : String
    , password : String
    }



redshiftDatabaseCredentialsDecoder : JD.Decoder RedshiftDatabaseCredentials
redshiftDatabaseCredentialsDecoder =
    JDP.decode RedshiftDatabaseCredentials
        |> JDP.required "username" JD.string
        |> JDP.required "password" JD.string




{-| <p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>
-}
type alias RedshiftMetadata =
    { redshiftDatabase : Maybe RedshiftDatabase
    , databaseUserName : Maybe String
    , selectSqlQuery : Maybe String
    }



redshiftMetadataDecoder : JD.Decoder RedshiftMetadata
redshiftMetadataDecoder =
    JDP.decode RedshiftMetadata
        |> JDP.optional "redshiftDatabase" (JD.nullable redshiftDatabaseDecoder) Nothing
        |> JDP.optional "databaseUserName" (JD.nullable JD.string) Nothing
        |> JDP.optional "selectSqlQuery" (JD.nullable JD.string) Nothing




{-| <p>A specified resource cannot be located.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    , code : Maybe Int
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.int) Nothing




{-| <p> Describes the data specification of a <code>DataSource</code>.</p>
-}
type alias S3DataSpec =
    { dataLocationS3 : String
    , dataRearrangement : Maybe String
    , dataSchema : Maybe String
    , dataSchemaLocationS3 : Maybe String
    }



s3DataSpecDecoder : JD.Decoder S3DataSpec
s3DataSpecDecoder =
    JDP.decode S3DataSpec
        |> JDP.required "dataLocationS3" JD.string
        |> JDP.optional "dataRearrangement" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataSchema" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataSchemaLocationS3" (JD.nullable JD.string) Nothing




{-| One of

* `SortOrder_asc`
* `SortOrder_dsc`

-}
type SortOrder
    = SortOrder_asc
    | SortOrder_dsc



sortOrderDecoder : JD.Decoder SortOrder
sortOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "asc" ->
                        JD.succeed SortOrder_asc

                    "dsc" ->
                        JD.succeed SortOrder_dsc


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A custom key-value pair associated with an ML object, such as an ML model.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias TagLimitExceededException =
    { message : Maybe String
    }



tagLimitExceededExceptionDecoder : JD.Decoder TagLimitExceededException
tagLimitExceededExceptionDecoder =
    JDP.decode TagLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `TaggableResourceType_BatchPrediction`
* `TaggableResourceType_DataSource`
* `TaggableResourceType_Evaluation`
* `TaggableResourceType_MLModel`

-}
type TaggableResourceType
    = TaggableResourceType_BatchPrediction
    | TaggableResourceType_DataSource
    | TaggableResourceType_Evaluation
    | TaggableResourceType_MLModel



taggableResourceTypeDecoder : JD.Decoder TaggableResourceType
taggableResourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BatchPrediction" ->
                        JD.succeed TaggableResourceType_BatchPrediction

                    "DataSource" ->
                        JD.succeed TaggableResourceType_DataSource

                    "Evaluation" ->
                        JD.succeed TaggableResourceType_Evaluation

                    "MLModel" ->
                        JD.succeed TaggableResourceType_MLModel


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from updateBatchPredicti
-}
type alias UpdateBatchPredictionOutput =
    { batchPredictionId : Maybe String
    }



updateBatchPredictionOutputDecoder : JD.Decoder UpdateBatchPredictionOutput
updateBatchPredictionOutputDecoder =
    JDP.decode UpdateBatchPredictionOutput
        |> JDP.optional "batchPredictionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateDataSour
-}
type alias UpdateDataSourceOutput =
    { dataSourceId : Maybe String
    }



updateDataSourceOutputDecoder : JD.Decoder UpdateDataSourceOutput
updateDataSourceOutputDecoder =
    JDP.decode UpdateDataSourceOutput
        |> JDP.optional "dataSourceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateEvaluati
-}
type alias UpdateEvaluationOutput =
    { evaluationId : Maybe String
    }



updateEvaluationOutputDecoder : JD.Decoder UpdateEvaluationOutput
updateEvaluationOutputDecoder =
    JDP.decode UpdateEvaluationOutput
        |> JDP.optional "evaluationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateMLMod
-}
type alias UpdateMLModelOutput =
    { mLModelId : Maybe String
    }



updateMLModelOutputDecoder : JD.Decoder UpdateMLModelOutput
updateMLModelOutputDecoder =
    JDP.decode UpdateMLModelOutput
        |> JDP.optional "mLModelId" (JD.nullable JD.string) Nothing




