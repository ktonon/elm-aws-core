module AWS.Services.DataPipeline
    exposing
        ( config
        , activatePipeline
        , ActivatePipelineOptions
        , addTags
        , createPipeline
        , CreatePipelineOptions
        , deactivatePipeline
        , DeactivatePipelineOptions
        , deletePipeline
        , describeObjects
        , DescribeObjectsOptions
        , describePipelines
        , evaluateExpression
        , getPipelineDefinition
        , GetPipelineDefinitionOptions
        , listPipelines
        , ListPipelinesOptions
        , pollForTask
        , PollForTaskOptions
        , putPipelineDefinition
        , PutPipelineDefinitionOptions
        , queryObjects
        , QueryObjectsOptions
        , removeTags
        , reportTaskProgress
        , ReportTaskProgressOptions
        , reportTaskRunnerHeartbeat
        , ReportTaskRunnerHeartbeatOptions
        , setStatus
        , setTaskStatus
        , SetTaskStatusOptions
        , validatePipelineDefinition
        , ValidatePipelineDefinitionOptions
        , ActivatePipelineOutput
        , AddTagsOutput
        , CreatePipelineOutput
        , DeactivatePipelineOutput
        , DescribeObjectsOutput
        , DescribePipelinesOutput
        , EvaluateExpressionOutput
        , Field
        , GetPipelineDefinitionOutput
        , InstanceIdentity
        , InternalServiceError
        , InvalidRequestException
        , ListPipelinesOutput
        , Operator
        , OperatorType(..)
        , ParameterAttribute
        , ParameterObject
        , ParameterValue
        , PipelineDeletedException
        , PipelineDescription
        , PipelineIdName
        , PipelineNotFoundException
        , PipelineObject
        , PollForTaskOutput
        , PutPipelineDefinitionOutput
        , Query
        , QueryObjectsOutput
        , RemoveTagsOutput
        , ReportTaskProgressOutput
        , ReportTaskRunnerHeartbeatOutput
        , Selector
        , SetTaskStatusOutput
        , Tag
        , TaskNotFoundException
        , TaskObject
        , TaskStatus(..)
        , ValidatePipelineDefinitionOutput
        , ValidationError
        , ValidationWarning
        )

{-| <p>AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline handles the details of scheduling and ensuring that data dependencies are met so that your application can focus on processing the data.</p> <p>AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide custom data management.</p> <p>AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline and define data sources, schedules, dependencies, and the transforms to be performed on the data. Use the second set in your task runner application to receive the next task ready for processing. The logic for performing the task, such as querying the data, running data analysis, or converting the data from one format to another, is contained within the task runner. The task runner performs the task assigned to it by the web service, reporting progress to the web service as it does so. When the task is done, the task runner reports the final success or failure of the task to the web service.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [activatePipeline](#activatePipeline)
* [ActivatePipelineOptions](#ActivatePipelineOptions)
* [addTags](#addTags)
* [createPipeline](#createPipeline)
* [CreatePipelineOptions](#CreatePipelineOptions)
* [deactivatePipeline](#deactivatePipeline)
* [DeactivatePipelineOptions](#DeactivatePipelineOptions)
* [deletePipeline](#deletePipeline)
* [describeObjects](#describeObjects)
* [DescribeObjectsOptions](#DescribeObjectsOptions)
* [describePipelines](#describePipelines)
* [evaluateExpression](#evaluateExpression)
* [getPipelineDefinition](#getPipelineDefinition)
* [GetPipelineDefinitionOptions](#GetPipelineDefinitionOptions)
* [listPipelines](#listPipelines)
* [ListPipelinesOptions](#ListPipelinesOptions)
* [pollForTask](#pollForTask)
* [PollForTaskOptions](#PollForTaskOptions)
* [putPipelineDefinition](#putPipelineDefinition)
* [PutPipelineDefinitionOptions](#PutPipelineDefinitionOptions)
* [queryObjects](#queryObjects)
* [QueryObjectsOptions](#QueryObjectsOptions)
* [removeTags](#removeTags)
* [reportTaskProgress](#reportTaskProgress)
* [ReportTaskProgressOptions](#ReportTaskProgressOptions)
* [reportTaskRunnerHeartbeat](#reportTaskRunnerHeartbeat)
* [ReportTaskRunnerHeartbeatOptions](#ReportTaskRunnerHeartbeatOptions)
* [setStatus](#setStatus)
* [setTaskStatus](#setTaskStatus)
* [SetTaskStatusOptions](#SetTaskStatusOptions)
* [validatePipelineDefinition](#validatePipelineDefinition)
* [ValidatePipelineDefinitionOptions](#ValidatePipelineDefinitionOptions)


@docs activatePipeline,ActivatePipelineOptions,addTags,createPipeline,CreatePipelineOptions,deactivatePipeline,DeactivatePipelineOptions,deletePipeline,describeObjects,DescribeObjectsOptions,describePipelines,evaluateExpression,getPipelineDefinition,GetPipelineDefinitionOptions,listPipelines,ListPipelinesOptions,pollForTask,PollForTaskOptions,putPipelineDefinition,PutPipelineDefinitionOptions,queryObjects,QueryObjectsOptions,removeTags,reportTaskProgress,ReportTaskProgressOptions,reportTaskRunnerHeartbeat,ReportTaskRunnerHeartbeatOptions,setStatus,setTaskStatus,SetTaskStatusOptions,validatePipelineDefinition,ValidatePipelineDefinitionOptions

## Responses

* [ActivatePipelineOutput](#ActivatePipelineOutput)
* [AddTagsOutput](#AddTagsOutput)
* [CreatePipelineOutput](#CreatePipelineOutput)
* [DeactivatePipelineOutput](#DeactivatePipelineOutput)
* [DescribeObjectsOutput](#DescribeObjectsOutput)
* [DescribePipelinesOutput](#DescribePipelinesOutput)
* [EvaluateExpressionOutput](#EvaluateExpressionOutput)
* [GetPipelineDefinitionOutput](#GetPipelineDefinitionOutput)
* [ListPipelinesOutput](#ListPipelinesOutput)
* [PollForTaskOutput](#PollForTaskOutput)
* [PutPipelineDefinitionOutput](#PutPipelineDefinitionOutput)
* [QueryObjectsOutput](#QueryObjectsOutput)
* [RemoveTagsOutput](#RemoveTagsOutput)
* [ReportTaskProgressOutput](#ReportTaskProgressOutput)
* [ReportTaskRunnerHeartbeatOutput](#ReportTaskRunnerHeartbeatOutput)
* [SetTaskStatusOutput](#SetTaskStatusOutput)
* [ValidatePipelineDefinitionOutput](#ValidatePipelineDefinitionOutput)


@docs ActivatePipelineOutput,AddTagsOutput,CreatePipelineOutput,DeactivatePipelineOutput,DescribeObjectsOutput,DescribePipelinesOutput,EvaluateExpressionOutput,GetPipelineDefinitionOutput,ListPipelinesOutput,PollForTaskOutput,PutPipelineDefinitionOutput,QueryObjectsOutput,RemoveTagsOutput,ReportTaskProgressOutput,ReportTaskRunnerHeartbeatOutput,SetTaskStatusOutput,ValidatePipelineDefinitionOutput

## Records

* [Field](#Field)
* [InstanceIdentity](#InstanceIdentity)
* [Operator](#Operator)
* [ParameterAttribute](#ParameterAttribute)
* [ParameterObject](#ParameterObject)
* [ParameterValue](#ParameterValue)
* [PipelineDescription](#PipelineDescription)
* [PipelineIdName](#PipelineIdName)
* [PipelineObject](#PipelineObject)
* [Query](#Query)
* [Selector](#Selector)
* [Tag](#Tag)
* [TaskObject](#TaskObject)
* [ValidationError](#ValidationError)
* [ValidationWarning](#ValidationWarning)


@docs Field,InstanceIdentity,Operator,ParameterAttribute,ParameterObject,ParameterValue,PipelineDescription,PipelineIdName,PipelineObject,Query,Selector,Tag,TaskObject,ValidationError,ValidationWarning

## Unions

* [OperatorType](#OperatorType)
* [TaskStatus](#TaskStatus)


@docs OperatorType,TaskStatus

## Exceptions

* [InternalServiceError](#InternalServiceError)
* [InvalidRequestException](#InvalidRequestException)
* [PipelineDeletedException](#PipelineDeletedException)
* [PipelineNotFoundException](#PipelineNotFoundException)
* [TaskNotFoundException](#TaskNotFoundException)


@docs InternalServiceError,InvalidRequestException,PipelineDeletedException,PipelineNotFoundException,TaskNotFoundException

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
        "datapipeline"
        "2012-10-29"
        "1.1"
        "AWSDATAPIPELINE_20121029."
        "datapipeline.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Validates the specified pipeline and starts processing pipeline tasks. If the pipeline does not pass validation, activation fails.</p> <p>If you need to pause the pipeline to investigate an issue with a component, such as a data source or script, call <a>DeactivatePipeline</a>.</p> <p>To activate a finished pipeline, modify the end date for the pipeline and then activate it.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}
activatePipeline :
    String
    -> (ActivatePipelineOptions -> ActivatePipelineOptions)
    -> AWS.Request ActivatePipelineOutput
activatePipeline pipelineId setOptions =
  let
    options = setOptions (ActivatePipelineOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ActivatePipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activatePipelineOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a activatePipeline request
-}
type alias ActivatePipelineOptions =
    { parameterValues : Maybe (List ParameterValue)
    , startTimestamp : Maybe Date
    }



{-| <p>Adds or modifies tags for the specified pipeline.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTags :
    String
    -> (List Tag)
    -> AWS.Request AddTagsOutput
addTags pipelineId tags =
    AWS.Http.unsignedRequest
        "AddTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new, empty pipeline. Use <a>PutPipelineDefinition</a> to populate the pipeline.</p>

__Required Parameters__

* `name` __:__ `String`
* `uniqueId` __:__ `String`


-}
createPipeline :
    String
    -> String
    -> (CreatePipelineOptions -> CreatePipelineOptions)
    -> AWS.Request CreatePipelineOutput
createPipeline name uniqueId setOptions =
  let
    options = setOptions (CreatePipelineOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPipelineOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createPipeline request
-}
type alias CreatePipelineOptions =
    { description : Maybe String
    , tags : Maybe (List Tag)
    }



{-| <p>Deactivates the specified running pipeline. The pipeline is set to the <code>DEACTIVATING</code> state until the deactivation process completes.</p> <p>To resume a deactivated pipeline, use <a>ActivatePipeline</a>. By default, the pipeline resumes from the last completed execution. Optionally, you can specify the date and time to resume the pipeline.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}
deactivatePipeline :
    String
    -> (DeactivatePipelineOptions -> DeactivatePipelineOptions)
    -> AWS.Request DeactivatePipelineOutput
deactivatePipeline pipelineId setOptions =
  let
    options = setOptions (DeactivatePipelineOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeactivatePipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deactivatePipelineOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a deactivatePipeline request
-}
type alias DeactivatePipelineOptions =
    { cancelActive : Maybe Bool
    }



{-| <p>Deletes a pipeline, its pipeline definition, and its run history. AWS Data Pipeline attempts to cancel instances associated with the pipeline that are currently being processed by task runners.</p> <p>Deleting a pipeline cannot be undone. You cannot query or restore a deleted pipeline. To temporarily pause a pipeline instead of deleting it, call <a>SetStatus</a> with the status set to <code>PAUSE</code> on individual components. Components that are paused by <a>SetStatus</a> can be resumed.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}
deletePipeline :
    String
    -> AWS.Request ()
deletePipeline pipelineId =
    AWS.Http.unsignedRequest
        "DeletePipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Gets the object definitions for a set of objects associated with the pipeline. Object definitions are composed of a set of fields that define the properties of the object.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `objectIds` __:__ `(List String)`


-}
describeObjects :
    String
    -> (List String)
    -> (DescribeObjectsOptions -> DescribeObjectsOptions)
    -> AWS.Request DescribeObjectsOutput
describeObjects pipelineId objectIds setOptions =
  let
    options = setOptions (DescribeObjectsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeObjects"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeObjectsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeObjects request
-}
type alias DescribeObjectsOptions =
    { evaluateExpressions : Maybe Bool
    , marker : Maybe String
    }



{-| <p>Retrieves metadata about one or more pipelines. The information retrieved includes the name of the pipeline, the pipeline identifier, its current state, and the user account that owns the pipeline. Using account credentials, you can retrieve metadata about pipelines that you or your IAM users have created. If you are using an IAM user account, you can retrieve metadata about only those pipelines for which you have read permissions.</p> <p>To retrieve the full pipeline definition instead of metadata about the pipeline, call <a>GetPipelineDefinition</a>.</p>

__Required Parameters__

* `pipelineIds` __:__ `(List String)`


-}
describePipelines :
    (List String)
    -> AWS.Request DescribePipelinesOutput
describePipelines pipelineIds =
    AWS.Http.unsignedRequest
        "DescribePipelines"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePipelinesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Task runners call <code>EvaluateExpression</code> to evaluate a string in the context of the specified object. For example, a task runner can evaluate SQL queries stored in Amazon S3.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `objectId` __:__ `String`
* `expression` __:__ `String`


-}
evaluateExpression :
    String
    -> String
    -> String
    -> AWS.Request EvaluateExpressionOutput
evaluateExpression pipelineId objectId expression =
    AWS.Http.unsignedRequest
        "EvaluateExpression"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        evaluateExpressionOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the definition of the specified pipeline. You can call <code>GetPipelineDefinition</code> to retrieve the pipeline definition that you provided using <a>PutPipelineDefinition</a>.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}
getPipelineDefinition :
    String
    -> (GetPipelineDefinitionOptions -> GetPipelineDefinitionOptions)
    -> AWS.Request GetPipelineDefinitionOutput
getPipelineDefinition pipelineId setOptions =
  let
    options = setOptions (GetPipelineDefinitionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetPipelineDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPipelineDefinitionOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getPipelineDefinition request
-}
type alias GetPipelineDefinitionOptions =
    { version : Maybe String
    }



{-| <p>Lists the pipeline identifiers for all active pipelines that you have permission to access.</p>

__Required Parameters__



-}
listPipelines :
    (ListPipelinesOptions -> ListPipelinesOptions)
    -> AWS.Request ListPipelinesOutput
listPipelines setOptions =
  let
    options = setOptions (ListPipelinesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPipelines"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPipelinesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPipelines request
-}
type alias ListPipelinesOptions =
    { marker : Maybe String
    }



{-| <p>Task runners call <code>PollForTask</code> to receive a task to perform from AWS Data Pipeline. The task runner specifies which tasks it can perform by setting a value for the <code>workerGroup</code> parameter. The task returned can come from any of the pipelines that match the <code>workerGroup</code> value passed in by the task runner and that was launched using the IAM user credentials specified by the task runner.</p> <p>If tasks are ready in the work queue, <code>PollForTask</code> returns a response immediately. If no tasks are available in the queue, <code>PollForTask</code> uses long-polling and holds on to a poll connection for up to a 90 seconds, during which time the first newly scheduled task is handed to the task runner. To accomodate this, set the socket timeout in your task runner to 90 seconds. The task runner should not call <code>PollForTask</code> again on the same <code>workerGroup</code> until it receives a response, and this can take up to 90 seconds. </p>

__Required Parameters__

* `workerGroup` __:__ `String`


-}
pollForTask :
    String
    -> (PollForTaskOptions -> PollForTaskOptions)
    -> AWS.Request PollForTaskOutput
pollForTask workerGroup setOptions =
  let
    options = setOptions (PollForTaskOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PollForTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        pollForTaskOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a pollForTask request
-}
type alias PollForTaskOptions =
    { hostname : Maybe String
    , instanceIdentity : Maybe InstanceIdentity
    }



{-| <p>Adds tasks, schedules, and preconditions to the specified pipeline. You can use <code>PutPipelineDefinition</code> to populate a new pipeline.</p> <p> <code>PutPipelineDefinition</code> also validates the configuration as it adds it to the pipeline. Changes to the pipeline are saved unless one of the following three validation errors exists in the pipeline. </p> <ol> <li>An object is missing a name or identifier field.</li> <li>A string or reference field is empty.</li> <li>The number of objects in the pipeline exceeds the maximum allowed objects.</li> <li>The pipeline is in a FINISHED state.</li> </ol> <p> Pipeline object definitions are passed to the <code>PutPipelineDefinition</code> action and returned by the <a>GetPipelineDefinition</a> action. </p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `pipelineObjects` __:__ `(List PipelineObject)`


-}
putPipelineDefinition :
    String
    -> (List PipelineObject)
    -> (PutPipelineDefinitionOptions -> PutPipelineDefinitionOptions)
    -> AWS.Request PutPipelineDefinitionOutput
putPipelineDefinition pipelineId pipelineObjects setOptions =
  let
    options = setOptions (PutPipelineDefinitionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutPipelineDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putPipelineDefinitionOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a putPipelineDefinition request
-}
type alias PutPipelineDefinitionOptions =
    { parameterObjects : Maybe (List ParameterObject)
    , parameterValues : Maybe (List ParameterValue)
    }



{-| <p>Queries the specified pipeline for the names of objects that match the specified set of conditions.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `sphere` __:__ `String`


-}
queryObjects :
    String
    -> String
    -> (QueryObjectsOptions -> QueryObjectsOptions)
    -> AWS.Request QueryObjectsOutput
queryObjects pipelineId sphere setOptions =
  let
    options = setOptions (QueryObjectsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "QueryObjects"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        queryObjectsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a queryObjects request
-}
type alias QueryObjectsOptions =
    { query : Maybe Query
    , marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Removes existing tags from the specified pipeline.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTags :
    String
    -> (List String)
    -> AWS.Request RemoveTagsOutput
removeTags pipelineId tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Task runners call <code>ReportTaskProgress</code> when assigned a task to acknowledge that it has the task. If the web service does not receive this acknowledgement within 2 minutes, it assigns the task in a subsequent <a>PollForTask</a> call. After this initial acknowledgement, the task runner only needs to report progress every 15 minutes to maintain its ownership of the task. You can change this reporting time from 15 minutes by specifying a <code>reportProgressTimeout</code> field in your pipeline.</p> <p>If a task runner does not report its status after 5 minutes, AWS Data Pipeline assumes that the task runner is unable to process the task and reassigns the task in a subsequent response to <a>PollForTask</a>. Task runners should call <code>ReportTaskProgress</code> every 60 seconds.</p>

__Required Parameters__

* `taskId` __:__ `String`


-}
reportTaskProgress :
    String
    -> (ReportTaskProgressOptions -> ReportTaskProgressOptions)
    -> AWS.Request ReportTaskProgressOutput
reportTaskProgress taskId setOptions =
  let
    options = setOptions (ReportTaskProgressOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ReportTaskProgress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reportTaskProgressOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a reportTaskProgress request
-}
type alias ReportTaskProgressOptions =
    { fields : Maybe (List Field)
    }



{-| <p>Task runners call <code>ReportTaskRunnerHeartbeat</code> every 15 minutes to indicate that they are operational. If the AWS Data Pipeline Task Runner is launched on a resource managed by AWS Data Pipeline, the web service can use this call to detect when the task runner application has failed and restart a new instance.</p>

__Required Parameters__

* `taskrunnerId` __:__ `String`


-}
reportTaskRunnerHeartbeat :
    String
    -> (ReportTaskRunnerHeartbeatOptions -> ReportTaskRunnerHeartbeatOptions)
    -> AWS.Request ReportTaskRunnerHeartbeatOutput
reportTaskRunnerHeartbeat taskrunnerId setOptions =
  let
    options = setOptions (ReportTaskRunnerHeartbeatOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ReportTaskRunnerHeartbeat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reportTaskRunnerHeartbeatOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a reportTaskRunnerHeartbeat request
-}
type alias ReportTaskRunnerHeartbeatOptions =
    { workerGroup : Maybe String
    , hostname : Maybe String
    }



{-| <p>Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline. This update might not occur immediately, but is eventually consistent. The status that can be set depends on the type of object (for example, DataNode or Activity). You cannot perform this operation on <code>FINISHED</code> pipelines and attempting to do so returns <code>InvalidRequestException</code>.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `objectIds` __:__ `(List String)`
* `status` __:__ `String`


-}
setStatus :
    String
    -> (List String)
    -> String
    -> AWS.Request ()
setStatus pipelineId objectIds status =
    AWS.Http.unsignedRequest
        "SetStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Task runners call <code>SetTaskStatus</code> to notify AWS Data Pipeline that a task is completed and provide information about the final status. A task runner makes this call regardless of whether the task was sucessful. A task runner does not need to call <code>SetTaskStatus</code> for tasks that are canceled by the web service during a call to <a>ReportTaskProgress</a>.</p>

__Required Parameters__

* `taskId` __:__ `String`
* `taskStatus` __:__ `TaskStatus`


-}
setTaskStatus :
    String
    -> TaskStatus
    -> (SetTaskStatusOptions -> SetTaskStatusOptions)
    -> AWS.Request SetTaskStatusOutput
setTaskStatus taskId taskStatus setOptions =
  let
    options = setOptions (SetTaskStatusOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SetTaskStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setTaskStatusOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a setTaskStatus request
-}
type alias SetTaskStatusOptions =
    { errorId : Maybe String
    , errorMessage : Maybe String
    , errorStackTrace : Maybe String
    }



{-| <p>Validates the specified pipeline definition to ensure that it is well formed and can be run without error.</p>

__Required Parameters__

* `pipelineId` __:__ `String`
* `pipelineObjects` __:__ `(List PipelineObject)`


-}
validatePipelineDefinition :
    String
    -> (List PipelineObject)
    -> (ValidatePipelineDefinitionOptions -> ValidatePipelineDefinitionOptions)
    -> AWS.Request ValidatePipelineDefinitionOutput
validatePipelineDefinition pipelineId pipelineObjects setOptions =
  let
    options = setOptions (ValidatePipelineDefinitionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ValidatePipelineDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        validatePipelineDefinitionOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a validatePipelineDefinition request
-}
type alias ValidatePipelineDefinitionOptions =
    { parameterObjects : Maybe (List ParameterObject)
    , parameterValues : Maybe (List ParameterValue)
    }




{-| Type of HTTP response from activatePipeli
-}
type alias ActivatePipelineOutput =
    { 
    }



activatePipelineOutputDecoder : JD.Decoder ActivatePipelineOutput
activatePipelineOutputDecoder =
    JDP.decode ActivatePipelineOutput



{-| Type of HTTP response from addTa
-}
type alias AddTagsOutput =
    { 
    }



addTagsOutputDecoder : JD.Decoder AddTagsOutput
addTagsOutputDecoder =
    JDP.decode AddTagsOutput



{-| Type of HTTP response from createPipeli
-}
type alias CreatePipelineOutput =
    { pipelineId : String
    }



createPipelineOutputDecoder : JD.Decoder CreatePipelineOutput
createPipelineOutputDecoder =
    JDP.decode CreatePipelineOutput
        |> JDP.required "pipelineId" JD.string




{-| Type of HTTP response from deactivatePipeli
-}
type alias DeactivatePipelineOutput =
    { 
    }



deactivatePipelineOutputDecoder : JD.Decoder DeactivatePipelineOutput
deactivatePipelineOutputDecoder =
    JDP.decode DeactivatePipelineOutput



{-| Type of HTTP response from describeObjec
-}
type alias DescribeObjectsOutput =
    { pipelineObjects : (List PipelineObject)
    , marker : Maybe String
    , hasMoreResults : Maybe Bool
    }



describeObjectsOutputDecoder : JD.Decoder DescribeObjectsOutput
describeObjectsOutputDecoder =
    JDP.decode DescribeObjectsOutput
        |> JDP.required "pipelineObjects" (JD.list pipelineObjectDecoder)
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "hasMoreResults" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from describePipelin
-}
type alias DescribePipelinesOutput =
    { pipelineDescriptionList : (List PipelineDescription)
    }



describePipelinesOutputDecoder : JD.Decoder DescribePipelinesOutput
describePipelinesOutputDecoder =
    JDP.decode DescribePipelinesOutput
        |> JDP.required "pipelineDescriptionList" (JD.list pipelineDescriptionDecoder)




{-| Type of HTTP response from evaluateExpressi
-}
type alias EvaluateExpressionOutput =
    { evaluatedExpression : String
    }



evaluateExpressionOutputDecoder : JD.Decoder EvaluateExpressionOutput
evaluateExpressionOutputDecoder =
    JDP.decode EvaluateExpressionOutput
        |> JDP.required "evaluatedExpression" JD.string




{-| <p>A key-value pair that describes a property of a pipeline object. The value is specified as either a string value (<code>StringValue</code>) or a reference to another object (<code>RefValue</code>) but not as both.</p>
-}
type alias Field =
    { key : String
    , stringValue : Maybe String
    , refValue : Maybe String
    }



fieldDecoder : JD.Decoder Field
fieldDecoder =
    JDP.decode Field
        |> JDP.required "key" JD.string
        |> JDP.optional "stringValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "refValue" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getPipelineDefiniti
-}
type alias GetPipelineDefinitionOutput =
    { pipelineObjects : Maybe (List PipelineObject)
    , parameterObjects : Maybe (List ParameterObject)
    , parameterValues : Maybe (List ParameterValue)
    }



getPipelineDefinitionOutputDecoder : JD.Decoder GetPipelineDefinitionOutput
getPipelineDefinitionOutputDecoder =
    JDP.decode GetPipelineDefinitionOutput
        |> JDP.optional "pipelineObjects" (JD.nullable (JD.list pipelineObjectDecoder)) Nothing
        |> JDP.optional "parameterObjects" (JD.nullable (JD.list parameterObjectDecoder)) Nothing
        |> JDP.optional "parameterValues" (JD.nullable (JD.list parameterValueDecoder)) Nothing




{-| <p><p>Identity information for the EC2 instance that is hosting the task runner. You can get this value by calling a metadata URI from the EC2 instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p></p>
-}
type alias InstanceIdentity =
    { document : Maybe String
    , signature : Maybe String
    }



instanceIdentityDecoder : JD.Decoder InstanceIdentity
instanceIdentityDecoder =
    JDP.decode InstanceIdentity
        |> JDP.optional "document" (JD.nullable JD.string) Nothing
        |> JDP.optional "signature" (JD.nullable JD.string) Nothing




{-| <p>An internal service error occurred.</p>
-}
type alias InternalServiceError =
    { message : Maybe String
    }



internalServiceErrorDecoder : JD.Decoder InternalServiceError
internalServiceErrorDecoder =
    JDP.decode InternalServiceError
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was not valid. Verify that your request was properly formatted, that the signature was generated with the correct credentials, and that you haven't exceeded any of the service limits for your account.</p>
-}
type alias InvalidRequestException =
    { message : Maybe String
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JDP.decode InvalidRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPipelin
-}
type alias ListPipelinesOutput =
    { pipelineIdList : (List PipelineIdName)
    , marker : Maybe String
    , hasMoreResults : Maybe Bool
    }



listPipelinesOutputDecoder : JD.Decoder ListPipelinesOutput
listPipelinesOutputDecoder =
    JDP.decode ListPipelinesOutput
        |> JDP.required "pipelineIdList" (JD.list pipelineIdNameDecoder)
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "hasMoreResults" (JD.nullable JD.bool) Nothing




{-| <p>Contains a logical operation for comparing the value of a field with a specified value.</p>
-}
type alias Operator =
    { type_ : Maybe OperatorType
    , values : Maybe (List String)
    }



operatorDecoder : JD.Decoder Operator
operatorDecoder =
    JDP.decode Operator
        |> JDP.optional "type_" (JD.nullable operatorTypeDecoder) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `OperatorType_EQ`
* `OperatorType_REF_EQ`
* `OperatorType_LE`
* `OperatorType_GE`
* `OperatorType_BETWEEN`

-}
type OperatorType
    = OperatorType_EQ
    | OperatorType_REF_EQ
    | OperatorType_LE
    | OperatorType_GE
    | OperatorType_BETWEEN



operatorTypeDecoder : JD.Decoder OperatorType
operatorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EQ" ->
                        JD.succeed OperatorType_EQ

                    "REF_EQ" ->
                        JD.succeed OperatorType_REF_EQ

                    "LE" ->
                        JD.succeed OperatorType_LE

                    "GE" ->
                        JD.succeed OperatorType_GE

                    "BETWEEN" ->
                        JD.succeed OperatorType_BETWEEN


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The attributes allowed or specified with a parameter object.</p>
-}
type alias ParameterAttribute =
    { key : String
    , stringValue : String
    }



parameterAttributeDecoder : JD.Decoder ParameterAttribute
parameterAttributeDecoder =
    JDP.decode ParameterAttribute
        |> JDP.required "key" JD.string
        |> JDP.required "stringValue" JD.string




{-| <p>Contains information about a parameter object.</p>
-}
type alias ParameterObject =
    { id : String
    , attributes : (List ParameterAttribute)
    }



parameterObjectDecoder : JD.Decoder ParameterObject
parameterObjectDecoder =
    JDP.decode ParameterObject
        |> JDP.required "id" JD.string
        |> JDP.required "attributes" (JD.list parameterAttributeDecoder)




{-| <p>A value or list of parameter values. </p>
-}
type alias ParameterValue =
    { id : String
    , stringValue : String
    }



parameterValueDecoder : JD.Decoder ParameterValue
parameterValueDecoder =
    JDP.decode ParameterValue
        |> JDP.required "id" JD.string
        |> JDP.required "stringValue" JD.string




{-| <p>The specified pipeline has been deleted.</p>
-}
type alias PipelineDeletedException =
    { message : Maybe String
    }



pipelineDeletedExceptionDecoder : JD.Decoder PipelineDeletedException
pipelineDeletedExceptionDecoder =
    JDP.decode PipelineDeletedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains pipeline metadata.</p>
-}
type alias PipelineDescription =
    { pipelineId : String
    , name : String
    , fields : (List Field)
    , description : Maybe String
    , tags : Maybe (List Tag)
    }



pipelineDescriptionDecoder : JD.Decoder PipelineDescription
pipelineDescriptionDecoder =
    JDP.decode PipelineDescription
        |> JDP.required "pipelineId" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "fields" (JD.list fieldDecoder)
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Contains the name and identifier of a pipeline.</p>
-}
type alias PipelineIdName =
    { id : Maybe String
    , name : Maybe String
    }



pipelineIdNameDecoder : JD.Decoder PipelineIdName
pipelineIdNameDecoder =
    JDP.decode PipelineIdName
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>The specified pipeline was not found. Verify that you used the correct user and account identifiers.</p>
-}
type alias PipelineNotFoundException =
    { message : Maybe String
    }



pipelineNotFoundExceptionDecoder : JD.Decoder PipelineNotFoundException
pipelineNotFoundExceptionDecoder =
    JDP.decode PipelineNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.</p>
-}
type alias PipelineObject =
    { id : String
    , name : String
    , fields : (List Field)
    }



pipelineObjectDecoder : JD.Decoder PipelineObject
pipelineObjectDecoder =
    JDP.decode PipelineObject
        |> JDP.required "id" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "fields" (JD.list fieldDecoder)




{-| Type of HTTP response from pollForTa
-}
type alias PollForTaskOutput =
    { taskObject : Maybe TaskObject
    }



pollForTaskOutputDecoder : JD.Decoder PollForTaskOutput
pollForTaskOutputDecoder =
    JDP.decode PollForTaskOutput
        |> JDP.optional "taskObject" (JD.nullable taskObjectDecoder) Nothing




{-| Type of HTTP response from putPipelineDefiniti
-}
type alias PutPipelineDefinitionOutput =
    { validationErrors : Maybe (List ValidationError)
    , validationWarnings : Maybe (List ValidationWarning)
    , errored : Bool
    }



putPipelineDefinitionOutputDecoder : JD.Decoder PutPipelineDefinitionOutput
putPipelineDefinitionOutputDecoder =
    JDP.decode PutPipelineDefinitionOutput
        |> JDP.optional "validationErrors" (JD.nullable (JD.list validationErrorDecoder)) Nothing
        |> JDP.optional "validationWarnings" (JD.nullable (JD.list validationWarningDecoder)) Nothing
        |> JDP.required "errored" JD.bool




{-| <p>Defines the query to run against an object.</p>
-}
type alias Query =
    { selectors : Maybe (List Selector)
    }



queryDecoder : JD.Decoder Query
queryDecoder =
    JDP.decode Query
        |> JDP.optional "selectors" (JD.nullable (JD.list selectorDecoder)) Nothing




{-| Type of HTTP response from queryObjec
-}
type alias QueryObjectsOutput =
    { ids : Maybe (List String)
    , marker : Maybe String
    , hasMoreResults : Maybe Bool
    }



queryObjectsOutputDecoder : JD.Decoder QueryObjectsOutput
queryObjectsOutputDecoder =
    JDP.decode QueryObjectsOutput
        |> JDP.optional "ids" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "hasMoreResults" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from removeTa
-}
type alias RemoveTagsOutput =
    { 
    }



removeTagsOutputDecoder : JD.Decoder RemoveTagsOutput
removeTagsOutputDecoder =
    JDP.decode RemoveTagsOutput



{-| Type of HTTP response from reportTaskProgre
-}
type alias ReportTaskProgressOutput =
    { canceled : Bool
    }



reportTaskProgressOutputDecoder : JD.Decoder ReportTaskProgressOutput
reportTaskProgressOutputDecoder =
    JDP.decode ReportTaskProgressOutput
        |> JDP.required "canceled" JD.bool




{-| Type of HTTP response from reportTaskRunnerHeartbe
-}
type alias ReportTaskRunnerHeartbeatOutput =
    { terminate : Bool
    }



reportTaskRunnerHeartbeatOutputDecoder : JD.Decoder ReportTaskRunnerHeartbeatOutput
reportTaskRunnerHeartbeatOutputDecoder =
    JDP.decode ReportTaskRunnerHeartbeatOutput
        |> JDP.required "terminate" JD.bool




{-| <p>A comparision that is used to determine whether a query should return this object.</p>
-}
type alias Selector =
    { fieldName : Maybe String
    , operator : Maybe Operator
    }



selectorDecoder : JD.Decoder Selector
selectorDecoder =
    JDP.decode Selector
        |> JDP.optional "fieldName" (JD.nullable JD.string) Nothing
        |> JDP.optional "operator" (JD.nullable operatorDecoder) Nothing




{-| Type of HTTP response from setTaskStat
-}
type alias SetTaskStatusOutput =
    { 
    }



setTaskStatusOutputDecoder : JD.Decoder SetTaskStatusOutput
setTaskStatusOutputDecoder =
    JDP.decode SetTaskStatusOutput



{-| <p>Tags are key/value pairs defined by a user and associated with a pipeline to control access. AWS Data Pipeline allows you to associate ten tags per pipeline. For more information, see <a href="http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.required "value" JD.string




{-| <p>The specified task was not found. </p>
-}
type alias TaskNotFoundException =
    { message : Maybe String
    }



taskNotFoundExceptionDecoder : JD.Decoder TaskNotFoundException
taskNotFoundExceptionDecoder =
    JDP.decode TaskNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a pipeline task that is assigned to a task runner.</p>
-}
type alias TaskObject =
    { taskId : Maybe String
    , pipelineId : Maybe String
    , attemptId : Maybe String
    , objects : Maybe (Dict String PipelineObject)
    }



taskObjectDecoder : JD.Decoder TaskObject
taskObjectDecoder =
    JDP.decode TaskObject
        |> JDP.optional "taskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "pipelineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "attemptId" (JD.nullable JD.string) Nothing
        |> JDP.optional "objects" (JD.nullable (JD.dict pipelineObjectDecoder)) Nothing




{-| One of

* `TaskStatus_FINISHED`
* `TaskStatus_FAILED`
* `TaskStatus_FALSE`

-}
type TaskStatus
    = TaskStatus_FINISHED
    | TaskStatus_FAILED
    | TaskStatus_FALSE



taskStatusDecoder : JD.Decoder TaskStatus
taskStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FINISHED" ->
                        JD.succeed TaskStatus_FINISHED

                    "FAILED" ->
                        JD.succeed TaskStatus_FAILED

                    "FALSE" ->
                        JD.succeed TaskStatus_FALSE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from validatePipelineDefiniti
-}
type alias ValidatePipelineDefinitionOutput =
    { validationErrors : Maybe (List ValidationError)
    , validationWarnings : Maybe (List ValidationWarning)
    , errored : Bool
    }



validatePipelineDefinitionOutputDecoder : JD.Decoder ValidatePipelineDefinitionOutput
validatePipelineDefinitionOutputDecoder =
    JDP.decode ValidatePipelineDefinitionOutput
        |> JDP.optional "validationErrors" (JD.nullable (JD.list validationErrorDecoder)) Nothing
        |> JDP.optional "validationWarnings" (JD.nullable (JD.list validationWarningDecoder)) Nothing
        |> JDP.required "errored" JD.bool




{-| <p>Defines a validation error. Validation errors prevent pipeline activation. The set of validation errors that can be returned are defined by AWS Data Pipeline.</p>
-}
type alias ValidationError =
    { id : Maybe String
    , errors : Maybe (List String)
    }



validationErrorDecoder : JD.Decoder ValidationError
validationErrorDecoder =
    JDP.decode ValidationError
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "errors" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Defines a validation warning. Validation warnings do not prevent pipeline activation. The set of validation warnings that can be returned are defined by AWS Data Pipeline.</p>
-}
type alias ValidationWarning =
    { id : Maybe String
    , warnings : Maybe (List String)
    }



validationWarningDecoder : JD.Decoder ValidationWarning
validationWarningDecoder =
    JDP.decode ValidationWarning
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list JD.string)) Nothing




