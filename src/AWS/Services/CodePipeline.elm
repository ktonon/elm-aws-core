module AWS.Services.CodePipeline
    exposing
        ( config
        , acknowledgeJob
        , acknowledgeThirdPartyJob
        , createCustomActionType
        , CreateCustomActionTypeOptions
        , createPipeline
        , deleteCustomActionType
        , deletePipeline
        , disableStageTransition
        , enableStageTransition
        , getJobDetails
        , getPipeline
        , GetPipelineOptions
        , getPipelineExecution
        , getPipelineState
        , getThirdPartyJobDetails
        , listActionTypes
        , ListActionTypesOptions
        , listPipelines
        , ListPipelinesOptions
        , pollForJobs
        , PollForJobsOptions
        , pollForThirdPartyJobs
        , PollForThirdPartyJobsOptions
        , putActionRevision
        , putApprovalResult
        , putJobFailureResult
        , putJobSuccessResult
        , PutJobSuccessResultOptions
        , putThirdPartyJobFailureResult
        , putThirdPartyJobSuccessResult
        , PutThirdPartyJobSuccessResultOptions
        , retryStageExecution
        , startPipelineExecution
        , updatePipeline
        , AWSSessionCredentials
        , AcknowledgeJobOutput
        , AcknowledgeThirdPartyJobOutput
        , ActionCategory(..)
        , ActionConfiguration
        , ActionConfigurationProperty
        , ActionConfigurationPropertyType(..)
        , ActionContext
        , ActionDeclaration
        , ActionExecution
        , ActionExecutionStatus(..)
        , ActionNotFoundException
        , ActionOwner(..)
        , ActionRevision
        , ActionState
        , ActionType
        , ActionTypeId
        , ActionTypeNotFoundException
        , ActionTypeSettings
        , ApprovalAlreadyCompletedException
        , ApprovalResult
        , ApprovalStatus(..)
        , Artifact
        , ArtifactDetails
        , ArtifactLocation
        , ArtifactLocationType(..)
        , ArtifactRevision
        , ArtifactStore
        , ArtifactStoreType(..)
        , BlockerDeclaration
        , BlockerType(..)
        , CreateCustomActionTypeOutput
        , CreatePipelineOutput
        , CurrentRevision
        , EncryptionKey
        , EncryptionKeyType(..)
        , ErrorDetails
        , ExecutionDetails
        , FailureDetails
        , FailureType(..)
        , GetJobDetailsOutput
        , GetPipelineExecutionOutput
        , GetPipelineOutput
        , GetPipelineStateOutput
        , GetThirdPartyJobDetailsOutput
        , InputArtifact
        , InvalidActionDeclarationException
        , InvalidApprovalTokenException
        , InvalidBlockerDeclarationException
        , InvalidClientTokenException
        , InvalidJobException
        , InvalidJobStateException
        , InvalidNextTokenException
        , InvalidNonceException
        , InvalidStageDeclarationException
        , InvalidStructureException
        , Job
        , JobData
        , JobDetails
        , JobNotFoundException
        , JobStatus(..)
        , LimitExceededException
        , ListActionTypesOutput
        , ListPipelinesOutput
        , NotLatestPipelineExecutionException
        , OutputArtifact
        , PipelineContext
        , PipelineDeclaration
        , PipelineExecution
        , PipelineExecutionNotFoundException
        , PipelineExecutionStatus(..)
        , PipelineNameInUseException
        , PipelineNotFoundException
        , PipelineSummary
        , PipelineVersionNotFoundException
        , PollForJobsOutput
        , PollForThirdPartyJobsOutput
        , PutActionRevisionOutput
        , PutApprovalResultOutput
        , RetryStageExecutionOutput
        , S3ArtifactLocation
        , StageContext
        , StageDeclaration
        , StageExecution
        , StageExecutionStatus(..)
        , StageNotFoundException
        , StageNotRetryableException
        , StageRetryMode(..)
        , StageState
        , StageTransitionType(..)
        , StartPipelineExecutionOutput
        , ThirdPartyJob
        , ThirdPartyJobData
        , ThirdPartyJobDetails
        , TransitionState
        , UpdatePipelineOutput
        , ValidationException
        )

{-| <fullname>AWS CodePipeline</fullname> <p> <b>Overview</b> </p> <p>This is the AWS CodePipeline API Reference. This guide provides descriptions of the actions and data types for AWS CodePipeline. Some functionality for your pipeline is only configurable through the API. For additional information, see the <a href="http://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html">AWS CodePipeline User Guide</a>.</p> <p>You can use the AWS CodePipeline API to work with pipelines, stages, actions, gates, and transitions, as described below.</p> <p> <i>Pipelines</i> are models of automated release processes. Each pipeline is uniquely named, and consists of actions, gates, and stages. </p> <p>You can work with pipelines by calling:</p> <ul> <li> <p> <a>CreatePipeline</a>, which creates a uniquely-named pipeline.</p> </li> <li> <p> <a>DeletePipeline</a>, which deletes the specified pipeline.</p> </li> <li> <p> <a>GetPipeline</a>, which returns information about a pipeline structure.</p> </li> <li> <p> <a>GetPipelineExecution</a>, which returns information about a specific execution of a pipeline.</p> </li> <li> <p> <a>GetPipelineState</a>, which returns information about the current state of the stages and actions of a pipeline.</p> </li> <li> <p> <a>ListPipelines</a>, which gets a summary of all of the pipelines associated with your account.</p> </li> <li> <p> <a>StartPipelineExecution</a>, which runs the the most recent revision of an artifact through the pipeline.</p> </li> <li> <p> <a>UpdatePipeline</a>, which updates a pipeline with edits or changes to the structure of the pipeline.</p> </li> </ul> <p>Pipelines include <i>stages</i>, which are logical groupings of gates and actions. Each stage contains one or more actions that must complete before the next stage begins. A stage will result in success or failure. If a stage fails, then the pipeline stops at that stage and will remain stopped until either a new version of an artifact appears in the source location, or a user takes action to re-run the most recent artifact through the pipeline. You can call <a>GetPipelineState</a>, which displays the status of a pipeline, including the status of stages in the pipeline, or <a>GetPipeline</a>, which returns the entire structure of the pipeline, including the stages of that pipeline. For more information about the structure of stages and actions, also refer to the <a href="http://docs.aws.amazon.com/codepipeline/latest/userguide/pipeline-structure.html">AWS CodePipeline Pipeline Structure Reference</a>.</p> <p>Pipeline stages include <i>actions</i>, which are categorized into categories such as source or build actions performed within a stage of a pipeline. For example, you can use a source action to import artifacts into a pipeline from a source such as Amazon S3. Like stages, you do not work with actions directly in most cases, but you do define and interact with actions when working with pipeline operations such as <a>CreatePipeline</a> and <a>GetPipelineState</a>. </p> <p>Pipelines also include <i>transitions</i>, which allow the transition of artifacts from one stage to the next in a pipeline after the actions in one stage complete.</p> <p>You can work with transitions by calling:</p> <ul> <li> <p> <a>DisableStageTransition</a>, which prevents artifacts from transitioning to the next stage in a pipeline.</p> </li> <li> <p> <a>EnableStageTransition</a>, which enables transition of artifacts between stages in a pipeline. </p> </li> </ul> <p> <b>Using the API to integrate with AWS CodePipeline</b> </p> <p>For third-party integrators or developers who want to create their own integrations with AWS CodePipeline, the expected sequence varies from the standard API user. In order to integrate with AWS CodePipeline, developers will need to work with the following items:</p> <p> <b>Jobs</b>, which are instances of an action. For example, a job for a source action might import a revision of an artifact from a source. </p> <p>You can work with jobs by calling:</p> <ul> <li> <p> <a>AcknowledgeJob</a>, which confirms whether a job worker has received the specified job,</p> </li> <li> <p> <a>GetJobDetails</a>, which returns the details of a job,</p> </li> <li> <p> <a>PollForJobs</a>, which determines whether there are any jobs to act upon, </p> </li> <li> <p> <a>PutJobFailureResult</a>, which provides details of a job failure, and</p> </li> <li> <p> <a>PutJobSuccessResult</a>, which provides details of a job success.</p> </li> </ul> <p> <b>Third party jobs</b>, which are instances of an action created by a partner action and integrated into AWS CodePipeline. Partner actions are created by members of the AWS Partner Network.</p> <p>You can work with third party jobs by calling:</p> <ul> <li> <p> <a>AcknowledgeThirdPartyJob</a>, which confirms whether a job worker has received the specified job,</p> </li> <li> <p> <a>GetThirdPartyJobDetails</a>, which requests the details of a job for a partner action,</p> </li> <li> <p> <a>PollForThirdPartyJobs</a>, which determines whether there are any jobs to act upon, </p> </li> <li> <p> <a>PutThirdPartyJobFailureResult</a>, which provides details of a job failure, and</p> </li> <li> <p> <a>PutThirdPartyJobSuccessResult</a>, which provides details of a job success.</p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [acknowledgeJob](#acknowledgeJob)
* [acknowledgeThirdPartyJob](#acknowledgeThirdPartyJob)
* [createCustomActionType](#createCustomActionType)
* [CreateCustomActionTypeOptions](#CreateCustomActionTypeOptions)
* [createPipeline](#createPipeline)
* [deleteCustomActionType](#deleteCustomActionType)
* [deletePipeline](#deletePipeline)
* [disableStageTransition](#disableStageTransition)
* [enableStageTransition](#enableStageTransition)
* [getJobDetails](#getJobDetails)
* [getPipeline](#getPipeline)
* [GetPipelineOptions](#GetPipelineOptions)
* [getPipelineExecution](#getPipelineExecution)
* [getPipelineState](#getPipelineState)
* [getThirdPartyJobDetails](#getThirdPartyJobDetails)
* [listActionTypes](#listActionTypes)
* [ListActionTypesOptions](#ListActionTypesOptions)
* [listPipelines](#listPipelines)
* [ListPipelinesOptions](#ListPipelinesOptions)
* [pollForJobs](#pollForJobs)
* [PollForJobsOptions](#PollForJobsOptions)
* [pollForThirdPartyJobs](#pollForThirdPartyJobs)
* [PollForThirdPartyJobsOptions](#PollForThirdPartyJobsOptions)
* [putActionRevision](#putActionRevision)
* [putApprovalResult](#putApprovalResult)
* [putJobFailureResult](#putJobFailureResult)
* [putJobSuccessResult](#putJobSuccessResult)
* [PutJobSuccessResultOptions](#PutJobSuccessResultOptions)
* [putThirdPartyJobFailureResult](#putThirdPartyJobFailureResult)
* [putThirdPartyJobSuccessResult](#putThirdPartyJobSuccessResult)
* [PutThirdPartyJobSuccessResultOptions](#PutThirdPartyJobSuccessResultOptions)
* [retryStageExecution](#retryStageExecution)
* [startPipelineExecution](#startPipelineExecution)
* [updatePipeline](#updatePipeline)


@docs acknowledgeJob,acknowledgeThirdPartyJob,createCustomActionType,CreateCustomActionTypeOptions,createPipeline,deleteCustomActionType,deletePipeline,disableStageTransition,enableStageTransition,getJobDetails,getPipeline,GetPipelineOptions,getPipelineExecution,getPipelineState,getThirdPartyJobDetails,listActionTypes,ListActionTypesOptions,listPipelines,ListPipelinesOptions,pollForJobs,PollForJobsOptions,pollForThirdPartyJobs,PollForThirdPartyJobsOptions,putActionRevision,putApprovalResult,putJobFailureResult,putJobSuccessResult,PutJobSuccessResultOptions,putThirdPartyJobFailureResult,putThirdPartyJobSuccessResult,PutThirdPartyJobSuccessResultOptions,retryStageExecution,startPipelineExecution,updatePipeline

## Responses

* [AcknowledgeJobOutput](#AcknowledgeJobOutput)
* [AcknowledgeThirdPartyJobOutput](#AcknowledgeThirdPartyJobOutput)
* [CreateCustomActionTypeOutput](#CreateCustomActionTypeOutput)
* [CreatePipelineOutput](#CreatePipelineOutput)
* [GetJobDetailsOutput](#GetJobDetailsOutput)
* [GetPipelineExecutionOutput](#GetPipelineExecutionOutput)
* [GetPipelineOutput](#GetPipelineOutput)
* [GetPipelineStateOutput](#GetPipelineStateOutput)
* [GetThirdPartyJobDetailsOutput](#GetThirdPartyJobDetailsOutput)
* [ListActionTypesOutput](#ListActionTypesOutput)
* [ListPipelinesOutput](#ListPipelinesOutput)
* [PollForJobsOutput](#PollForJobsOutput)
* [PollForThirdPartyJobsOutput](#PollForThirdPartyJobsOutput)
* [PutActionRevisionOutput](#PutActionRevisionOutput)
* [PutApprovalResultOutput](#PutApprovalResultOutput)
* [RetryStageExecutionOutput](#RetryStageExecutionOutput)
* [StartPipelineExecutionOutput](#StartPipelineExecutionOutput)
* [UpdatePipelineOutput](#UpdatePipelineOutput)


@docs AcknowledgeJobOutput,AcknowledgeThirdPartyJobOutput,CreateCustomActionTypeOutput,CreatePipelineOutput,GetJobDetailsOutput,GetPipelineExecutionOutput,GetPipelineOutput,GetPipelineStateOutput,GetThirdPartyJobDetailsOutput,ListActionTypesOutput,ListPipelinesOutput,PollForJobsOutput,PollForThirdPartyJobsOutput,PutActionRevisionOutput,PutApprovalResultOutput,RetryStageExecutionOutput,StartPipelineExecutionOutput,UpdatePipelineOutput

## Records

* [AWSSessionCredentials](#AWSSessionCredentials)
* [ActionConfiguration](#ActionConfiguration)
* [ActionConfigurationProperty](#ActionConfigurationProperty)
* [ActionContext](#ActionContext)
* [ActionDeclaration](#ActionDeclaration)
* [ActionExecution](#ActionExecution)
* [ActionRevision](#ActionRevision)
* [ActionState](#ActionState)
* [ActionType](#ActionType)
* [ActionTypeId](#ActionTypeId)
* [ActionTypeSettings](#ActionTypeSettings)
* [ApprovalResult](#ApprovalResult)
* [Artifact](#Artifact)
* [ArtifactDetails](#ArtifactDetails)
* [ArtifactLocation](#ArtifactLocation)
* [ArtifactRevision](#ArtifactRevision)
* [ArtifactStore](#ArtifactStore)
* [BlockerDeclaration](#BlockerDeclaration)
* [CurrentRevision](#CurrentRevision)
* [EncryptionKey](#EncryptionKey)
* [ErrorDetails](#ErrorDetails)
* [ExecutionDetails](#ExecutionDetails)
* [FailureDetails](#FailureDetails)
* [InputArtifact](#InputArtifact)
* [Job](#Job)
* [JobData](#JobData)
* [JobDetails](#JobDetails)
* [OutputArtifact](#OutputArtifact)
* [PipelineContext](#PipelineContext)
* [PipelineDeclaration](#PipelineDeclaration)
* [PipelineExecution](#PipelineExecution)
* [PipelineSummary](#PipelineSummary)
* [S3ArtifactLocation](#S3ArtifactLocation)
* [StageContext](#StageContext)
* [StageDeclaration](#StageDeclaration)
* [StageExecution](#StageExecution)
* [StageState](#StageState)
* [ThirdPartyJob](#ThirdPartyJob)
* [ThirdPartyJobData](#ThirdPartyJobData)
* [ThirdPartyJobDetails](#ThirdPartyJobDetails)
* [TransitionState](#TransitionState)


@docs AWSSessionCredentials,ActionConfiguration,ActionConfigurationProperty,ActionContext,ActionDeclaration,ActionExecution,ActionRevision,ActionState,ActionType,ActionTypeId,ActionTypeSettings,ApprovalResult,Artifact,ArtifactDetails,ArtifactLocation,ArtifactRevision,ArtifactStore,BlockerDeclaration,CurrentRevision,EncryptionKey,ErrorDetails,ExecutionDetails,FailureDetails,InputArtifact,Job,JobData,JobDetails,OutputArtifact,PipelineContext,PipelineDeclaration,PipelineExecution,PipelineSummary,S3ArtifactLocation,StageContext,StageDeclaration,StageExecution,StageState,ThirdPartyJob,ThirdPartyJobData,ThirdPartyJobDetails,TransitionState

## Unions

* [ActionCategory](#ActionCategory)
* [ActionConfigurationPropertyType](#ActionConfigurationPropertyType)
* [ActionExecutionStatus](#ActionExecutionStatus)
* [ActionOwner](#ActionOwner)
* [ApprovalStatus](#ApprovalStatus)
* [ArtifactLocationType](#ArtifactLocationType)
* [ArtifactStoreType](#ArtifactStoreType)
* [BlockerType](#BlockerType)
* [EncryptionKeyType](#EncryptionKeyType)
* [FailureType](#FailureType)
* [JobStatus](#JobStatus)
* [PipelineExecutionStatus](#PipelineExecutionStatus)
* [StageExecutionStatus](#StageExecutionStatus)
* [StageRetryMode](#StageRetryMode)
* [StageTransitionType](#StageTransitionType)


@docs ActionCategory,ActionConfigurationPropertyType,ActionExecutionStatus,ActionOwner,ApprovalStatus,ArtifactLocationType,ArtifactStoreType,BlockerType,EncryptionKeyType,FailureType,JobStatus,PipelineExecutionStatus,StageExecutionStatus,StageRetryMode,StageTransitionType

## Exceptions

* [ActionNotFoundException](#ActionNotFoundException)
* [ActionTypeNotFoundException](#ActionTypeNotFoundException)
* [ApprovalAlreadyCompletedException](#ApprovalAlreadyCompletedException)
* [InvalidActionDeclarationException](#InvalidActionDeclarationException)
* [InvalidApprovalTokenException](#InvalidApprovalTokenException)
* [InvalidBlockerDeclarationException](#InvalidBlockerDeclarationException)
* [InvalidClientTokenException](#InvalidClientTokenException)
* [InvalidJobException](#InvalidJobException)
* [InvalidJobStateException](#InvalidJobStateException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidNonceException](#InvalidNonceException)
* [InvalidStageDeclarationException](#InvalidStageDeclarationException)
* [InvalidStructureException](#InvalidStructureException)
* [JobNotFoundException](#JobNotFoundException)
* [LimitExceededException](#LimitExceededException)
* [NotLatestPipelineExecutionException](#NotLatestPipelineExecutionException)
* [PipelineExecutionNotFoundException](#PipelineExecutionNotFoundException)
* [PipelineNameInUseException](#PipelineNameInUseException)
* [PipelineNotFoundException](#PipelineNotFoundException)
* [PipelineVersionNotFoundException](#PipelineVersionNotFoundException)
* [StageNotFoundException](#StageNotFoundException)
* [StageNotRetryableException](#StageNotRetryableException)
* [ValidationException](#ValidationException)


@docs ActionNotFoundException,ActionTypeNotFoundException,ApprovalAlreadyCompletedException,InvalidActionDeclarationException,InvalidApprovalTokenException,InvalidBlockerDeclarationException,InvalidClientTokenException,InvalidJobException,InvalidJobStateException,InvalidNextTokenException,InvalidNonceException,InvalidStageDeclarationException,InvalidStructureException,JobNotFoundException,LimitExceededException,NotLatestPipelineExecutionException,PipelineExecutionNotFoundException,PipelineNameInUseException,PipelineNotFoundException,PipelineVersionNotFoundException,StageNotFoundException,StageNotRetryableException,ValidationException

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
        "codepipeline"
        "2015-07-09"
        "1.1"
        "AWSCODEPIPELINE_20150709."
        "codepipeline.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Returns information about a specified job and whether that job has been received by the job worker. Only used for custom actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `nonce` __:__ `String`


-}
acknowledgeJob :
    String
    -> String
    -> AWS.Request AcknowledgeJobOutput
acknowledgeJob jobId nonce =
    AWS.Http.unsignedRequest
        "AcknowledgeJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        acknowledgeJobOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Confirms a job worker has received the specified job. Only used for partner actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `nonce` __:__ `String`
* `clientToken` __:__ `String`


-}
acknowledgeThirdPartyJob :
    String
    -> String
    -> String
    -> AWS.Request AcknowledgeThirdPartyJobOutput
acknowledgeThirdPartyJob jobId nonce clientToken =
    AWS.Http.unsignedRequest
        "AcknowledgeThirdPartyJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        acknowledgeThirdPartyJobOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new custom action that can be used in all pipelines associated with the AWS account. Only used for custom actions.</p>

__Required Parameters__

* `category` __:__ `ActionCategory`
* `provider` __:__ `String`
* `version` __:__ `String`
* `inputArtifactDetails` __:__ `ArtifactDetails`
* `outputArtifactDetails` __:__ `ArtifactDetails`


-}
createCustomActionType :
    ActionCategory
    -> String
    -> String
    -> ArtifactDetails
    -> ArtifactDetails
    -> (CreateCustomActionTypeOptions -> CreateCustomActionTypeOptions)
    -> AWS.Request CreateCustomActionTypeOutput
createCustomActionType category provider version inputArtifactDetails outputArtifactDetails setOptions =
  let
    options = setOptions (CreateCustomActionTypeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCustomActionType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCustomActionTypeOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createCustomActionType request
-}
type alias CreateCustomActionTypeOptions =
    { settings : Maybe ActionTypeSettings
    , configurationProperties : Maybe (List ActionConfigurationProperty)
    }



{-| <p>Creates a pipeline.</p>

__Required Parameters__

* `pipeline` __:__ `PipelineDeclaration`


-}
createPipeline :
    PipelineDeclaration
    -> AWS.Request CreatePipelineOutput
createPipeline pipeline =
    AWS.Http.unsignedRequest
        "CreatePipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPipelineOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Marks a custom action as deleted. PollForJobs for the custom action will fail after the action is marked for deletion. Only used for custom actions.</p> <important> <p>You cannot recreate a custom action after it has been deleted unless you increase the version number of the action.</p> </important>

__Required Parameters__

* `category` __:__ `ActionCategory`
* `provider` __:__ `String`
* `version` __:__ `String`


-}
deleteCustomActionType :
    ActionCategory
    -> String
    -> String
    -> AWS.Request ()
deleteCustomActionType category provider version =
    AWS.Http.unsignedRequest
        "DeleteCustomActionType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified pipeline.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deletePipeline :
    String
    -> AWS.Request ()
deletePipeline name =
    AWS.Http.unsignedRequest
        "DeletePipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Prevents artifacts in a pipeline from transitioning to the next stage in the pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `transitionType` __:__ `StageTransitionType`
* `reason` __:__ `String`


-}
disableStageTransition :
    String
    -> String
    -> StageTransitionType
    -> String
    -> AWS.Request ()
disableStageTransition pipelineName stageName transitionType reason =
    AWS.Http.unsignedRequest
        "DisableStageTransition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Enables artifacts in a pipeline to transition to a stage in a pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `transitionType` __:__ `StageTransitionType`


-}
enableStageTransition :
    String
    -> String
    -> StageTransitionType
    -> AWS.Request ()
enableStageTransition pipelineName stageName transitionType =
    AWS.Http.unsignedRequest
        "EnableStageTransition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Returns information about a job. Only used for custom actions.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.</p> </important>

__Required Parameters__

* `jobId` __:__ `String`


-}
getJobDetails :
    String
    -> AWS.Request GetJobDetailsOutput
getJobDetails jobId =
    AWS.Http.unsignedRequest
        "GetJobDetails"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getJobDetailsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the metadata, structure, stages, and actions of a pipeline. Can be used to return the entire structure of a pipeline in JSON format, which can then be modified and used to update the pipeline structure with <a>UpdatePipeline</a>.</p>

__Required Parameters__

* `name` __:__ `String`


-}
getPipeline :
    String
    -> (GetPipelineOptions -> GetPipelineOptions)
    -> AWS.Request GetPipelineOutput
getPipeline name setOptions =
  let
    options = setOptions (GetPipelineOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetPipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPipelineOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getPipeline request
-}
type alias GetPipelineOptions =
    { version : Maybe Int
    }



{-| <p>Returns information about an execution of a pipeline, including details about artifacts, the pipeline execution ID, and the name, version, and status of the pipeline.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `pipelineExecutionId` __:__ `String`


-}
getPipelineExecution :
    String
    -> String
    -> AWS.Request GetPipelineExecutionOutput
getPipelineExecution pipelineName pipelineExecutionId =
    AWS.Http.unsignedRequest
        "GetPipelineExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPipelineExecutionOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about the state of a pipeline, including the stages and actions.</p>

__Required Parameters__

* `name` __:__ `String`


-}
getPipelineState :
    String
    -> AWS.Request GetPipelineStateOutput
getPipelineState name =
    AWS.Http.unsignedRequest
        "GetPipelineState"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPipelineStateOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Requests the details of a job for a third party action. Only used for partner actions.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.</p> </important>

__Required Parameters__

* `jobId` __:__ `String`
* `clientToken` __:__ `String`


-}
getThirdPartyJobDetails :
    String
    -> String
    -> AWS.Request GetThirdPartyJobDetailsOutput
getThirdPartyJobDetails jobId clientToken =
    AWS.Http.unsignedRequest
        "GetThirdPartyJobDetails"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getThirdPartyJobDetailsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets a summary of all AWS CodePipeline action types associated with your account.</p>

__Required Parameters__



-}
listActionTypes :
    (ListActionTypesOptions -> ListActionTypesOptions)
    -> AWS.Request ListActionTypesOutput
listActionTypes setOptions =
  let
    options = setOptions (ListActionTypesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListActionTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listActionTypesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listActionTypes request
-}
type alias ListActionTypesOptions =
    { actionOwnerFilter : Maybe ActionOwner
    , nextToken : Maybe String
    }



{-| <p>Gets a summary of all of the pipelines associated with your account.</p>

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
    { nextToken : Maybe String
    }



{-| <p>Returns information about any jobs for AWS CodePipeline to act upon.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts. Additionally, this API returns any secret values defined for the action.</p> </important>

__Required Parameters__

* `actionTypeId` __:__ `ActionTypeId`


-}
pollForJobs :
    ActionTypeId
    -> (PollForJobsOptions -> PollForJobsOptions)
    -> AWS.Request PollForJobsOutput
pollForJobs actionTypeId setOptions =
  let
    options = setOptions (PollForJobsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PollForJobs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        pollForJobsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a pollForJobs request
-}
type alias PollForJobsOptions =
    { maxBatchSize : Maybe Int
    , queryParam : Maybe (Dict String String)
    }



{-| <p>Determines whether there are any third party jobs for a job worker to act on. Only used for partner actions.</p> <important> <p>When this API is called, AWS CodePipeline returns temporary credentials for the Amazon S3 bucket used to store artifacts for the pipeline, if the action requires access to that Amazon S3 bucket for input or output artifacts.</p> </important>

__Required Parameters__

* `actionTypeId` __:__ `ActionTypeId`


-}
pollForThirdPartyJobs :
    ActionTypeId
    -> (PollForThirdPartyJobsOptions -> PollForThirdPartyJobsOptions)
    -> AWS.Request PollForThirdPartyJobsOutput
pollForThirdPartyJobs actionTypeId setOptions =
  let
    options = setOptions (PollForThirdPartyJobsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PollForThirdPartyJobs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        pollForThirdPartyJobsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a pollForThirdPartyJobs request
-}
type alias PollForThirdPartyJobsOptions =
    { maxBatchSize : Maybe Int
    }



{-| <p>Provides information to AWS CodePipeline about new revisions to a source.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `actionName` __:__ `String`
* `actionRevision` __:__ `ActionRevision`


-}
putActionRevision :
    String
    -> String
    -> String
    -> ActionRevision
    -> AWS.Request PutActionRevisionOutput
putActionRevision pipelineName stageName actionName actionRevision =
    AWS.Http.unsignedRequest
        "PutActionRevision"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putActionRevisionOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Provides the response to a manual approval request to AWS CodePipeline. Valid responses include Approved and Rejected.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `actionName` __:__ `String`
* `result` __:__ `ApprovalResult`
* `token` __:__ `String`


-}
putApprovalResult :
    String
    -> String
    -> String
    -> ApprovalResult
    -> String
    -> AWS.Request PutApprovalResultOutput
putApprovalResult pipelineName stageName actionName result token =
    AWS.Http.unsignedRequest
        "PutApprovalResult"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putApprovalResultOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Represents the failure of a job as returned to the pipeline by a job worker. Only used for custom actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `failureDetails` __:__ `FailureDetails`


-}
putJobFailureResult :
    String
    -> FailureDetails
    -> AWS.Request ()
putJobFailureResult jobId failureDetails =
    AWS.Http.unsignedRequest
        "PutJobFailureResult"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Represents the success of a job as returned to the pipeline by a job worker. Only used for custom actions.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}
putJobSuccessResult :
    String
    -> (PutJobSuccessResultOptions -> PutJobSuccessResultOptions)
    -> AWS.Request ()
putJobSuccessResult jobId setOptions =
  let
    options = setOptions (PutJobSuccessResultOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutJobSuccessResult"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putJobSuccessResult request
-}
type alias PutJobSuccessResultOptions =
    { currentRevision : Maybe CurrentRevision
    , continuationToken : Maybe String
    , executionDetails : Maybe ExecutionDetails
    }



{-| <p>Represents the failure of a third party job as returned to the pipeline by a job worker. Only used for partner actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `clientToken` __:__ `String`
* `failureDetails` __:__ `FailureDetails`


-}
putThirdPartyJobFailureResult :
    String
    -> String
    -> FailureDetails
    -> AWS.Request ()
putThirdPartyJobFailureResult jobId clientToken failureDetails =
    AWS.Http.unsignedRequest
        "PutThirdPartyJobFailureResult"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Represents the success of a third party job as returned to the pipeline by a job worker. Only used for partner actions.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `clientToken` __:__ `String`


-}
putThirdPartyJobSuccessResult :
    String
    -> String
    -> (PutThirdPartyJobSuccessResultOptions -> PutThirdPartyJobSuccessResultOptions)
    -> AWS.Request ()
putThirdPartyJobSuccessResult jobId clientToken setOptions =
  let
    options = setOptions (PutThirdPartyJobSuccessResultOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutThirdPartyJobSuccessResult"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putThirdPartyJobSuccessResult request
-}
type alias PutThirdPartyJobSuccessResultOptions =
    { currentRevision : Maybe CurrentRevision
    , continuationToken : Maybe String
    , executionDetails : Maybe ExecutionDetails
    }



{-| <p>Resumes the pipeline execution by retrying the last failed actions in a stage.</p>

__Required Parameters__

* `pipelineName` __:__ `String`
* `stageName` __:__ `String`
* `pipelineExecutionId` __:__ `String`
* `retryMode` __:__ `StageRetryMode`


-}
retryStageExecution :
    String
    -> String
    -> String
    -> StageRetryMode
    -> AWS.Request RetryStageExecutionOutput
retryStageExecution pipelineName stageName pipelineExecutionId retryMode =
    AWS.Http.unsignedRequest
        "RetryStageExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        retryStageExecutionOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Starts the specified pipeline. Specifically, it begins processing the latest commit to the source location specified as part of the pipeline.</p>

__Required Parameters__

* `name` __:__ `String`


-}
startPipelineExecution :
    String
    -> AWS.Request StartPipelineExecutionOutput
startPipelineExecution name =
    AWS.Http.unsignedRequest
        "StartPipelineExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startPipelineExecutionOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure in conjunction with UpdatePipeline to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.</p>

__Required Parameters__

* `pipeline` __:__ `PipelineDeclaration`


-}
updatePipeline :
    PipelineDeclaration
    -> AWS.Request UpdatePipelineOutput
updatePipeline pipeline =
    AWS.Http.unsignedRequest
        "UpdatePipeline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updatePipelineOutputDecoder
        |> AWS.UnsignedRequest




{-| <p>Represents an AWS session credentials object. These credentials are temporary credentials that are issued by AWS Secure Token Service (STS). They can be used to access input and output artifacts in the Amazon S3 bucket used to store artifact for the pipeline in AWS CodePipeline.</p>
-}
type alias AWSSessionCredentials =
    { accessKeyId : String
    , secretAccessKey : String
    , sessionToken : String
    }



aWSSessionCredentialsDecoder : JD.Decoder AWSSessionCredentials
aWSSessionCredentialsDecoder =
    JDP.decode AWSSessionCredentials
        |> JDP.required "accessKeyId" JD.string
        |> JDP.required "secretAccessKey" JD.string
        |> JDP.required "sessionToken" JD.string




{-| Type of HTTP response from acknowledgeJ
-}
type alias AcknowledgeJobOutput =
    { status : Maybe JobStatus
    }



acknowledgeJobOutputDecoder : JD.Decoder AcknowledgeJobOutput
acknowledgeJobOutputDecoder =
    JDP.decode AcknowledgeJobOutput
        |> JDP.optional "status" (JD.nullable jobStatusDecoder) Nothing




{-| Type of HTTP response from acknowledgeThirdPartyJ
-}
type alias AcknowledgeThirdPartyJobOutput =
    { status : Maybe JobStatus
    }



acknowledgeThirdPartyJobOutputDecoder : JD.Decoder AcknowledgeThirdPartyJobOutput
acknowledgeThirdPartyJobOutputDecoder =
    JDP.decode AcknowledgeThirdPartyJobOutput
        |> JDP.optional "status" (JD.nullable jobStatusDecoder) Nothing




{-| One of

* `ActionCategory_Source`
* `ActionCategory_Build`
* `ActionCategory_Deploy`
* `ActionCategory_Test`
* `ActionCategory_Invoke`
* `ActionCategory_Approval`

-}
type ActionCategory
    = ActionCategory_Source
    | ActionCategory_Build
    | ActionCategory_Deploy
    | ActionCategory_Test
    | ActionCategory_Invoke
    | ActionCategory_Approval



actionCategoryDecoder : JD.Decoder ActionCategory
actionCategoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Source" ->
                        JD.succeed ActionCategory_Source

                    "Build" ->
                        JD.succeed ActionCategory_Build

                    "Deploy" ->
                        JD.succeed ActionCategory_Deploy

                    "Test" ->
                        JD.succeed ActionCategory_Test

                    "Invoke" ->
                        JD.succeed ActionCategory_Invoke

                    "Approval" ->
                        JD.succeed ActionCategory_Approval


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents information about an action configuration.</p>
-}
type alias ActionConfiguration =
    { configuration : Maybe (Dict String String)
    }



actionConfigurationDecoder : JD.Decoder ActionConfiguration
actionConfigurationDecoder =
    JDP.decode ActionConfiguration
        |> JDP.optional "configuration" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Represents information about an action configuration property.</p>
-}
type alias ActionConfigurationProperty =
    { name : String
    , required : Bool
    , key : Bool
    , secret : Bool
    , queryable : Maybe Bool
    , description : Maybe String
    , type_ : Maybe ActionConfigurationPropertyType
    }



actionConfigurationPropertyDecoder : JD.Decoder ActionConfigurationProperty
actionConfigurationPropertyDecoder =
    JDP.decode ActionConfigurationProperty
        |> JDP.required "name" JD.string
        |> JDP.required "required" JD.bool
        |> JDP.required "key" JD.bool
        |> JDP.required "secret" JD.bool
        |> JDP.optional "queryable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable actionConfigurationPropertyTypeDecoder) Nothing




{-| One of

* `ActionConfigurationPropertyType_String`
* `ActionConfigurationPropertyType_Number`
* `ActionConfigurationPropertyType_Boolean`

-}
type ActionConfigurationPropertyType
    = ActionConfigurationPropertyType_String
    | ActionConfigurationPropertyType_Number
    | ActionConfigurationPropertyType_Boolean



actionConfigurationPropertyTypeDecoder : JD.Decoder ActionConfigurationPropertyType
actionConfigurationPropertyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "String" ->
                        JD.succeed ActionConfigurationPropertyType_String

                    "Number" ->
                        JD.succeed ActionConfigurationPropertyType_Number

                    "Boolean" ->
                        JD.succeed ActionConfigurationPropertyType_Boolean


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the context of an action within the stage of a pipeline to a job worker.</p>
-}
type alias ActionContext =
    { name : Maybe String
    }



actionContextDecoder : JD.Decoder ActionContext
actionContextDecoder =
    JDP.decode ActionContext
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Represents information about an action declaration.</p>
-}
type alias ActionDeclaration =
    { name : String
    , actionTypeId : ActionTypeId
    , runOrder : Maybe Int
    , configuration : Maybe (Dict String String)
    , outputArtifacts : Maybe (List OutputArtifact)
    , inputArtifacts : Maybe (List InputArtifact)
    , roleArn : Maybe String
    }



actionDeclarationDecoder : JD.Decoder ActionDeclaration
actionDeclarationDecoder =
    JDP.decode ActionDeclaration
        |> JDP.required "name" JD.string
        |> JDP.required "actionTypeId" actionTypeIdDecoder
        |> JDP.optional "runOrder" (JD.nullable JD.int) Nothing
        |> JDP.optional "configuration" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "outputArtifacts" (JD.nullable (JD.list outputArtifactDecoder)) Nothing
        |> JDP.optional "inputArtifacts" (JD.nullable (JD.list inputArtifactDecoder)) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing




{-| <p>Represents information about the run of an action.</p>
-}
type alias ActionExecution =
    { status : Maybe ActionExecutionStatus
    , summary : Maybe String
    , lastStatusChange : Maybe Date
    , token : Maybe String
    , lastUpdatedBy : Maybe String
    , externalExecutionId : Maybe String
    , externalExecutionUrl : Maybe String
    , percentComplete : Maybe Int
    , errorDetails : Maybe ErrorDetails
    }



actionExecutionDecoder : JD.Decoder ActionExecution
actionExecutionDecoder =
    JDP.decode ActionExecution
        |> JDP.optional "status" (JD.nullable actionExecutionStatusDecoder) Nothing
        |> JDP.optional "summary" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastStatusChange" (JD.nullable JDX.date) Nothing
        |> JDP.optional "token" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastUpdatedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "externalExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "externalExecutionUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "percentComplete" (JD.nullable JD.int) Nothing
        |> JDP.optional "errorDetails" (JD.nullable errorDetailsDecoder) Nothing




{-| One of

* `ActionExecutionStatus_InProgress`
* `ActionExecutionStatus_Succeeded`
* `ActionExecutionStatus_Failed`

-}
type ActionExecutionStatus
    = ActionExecutionStatus_InProgress
    | ActionExecutionStatus_Succeeded
    | ActionExecutionStatus_Failed



actionExecutionStatusDecoder : JD.Decoder ActionExecutionStatus
actionExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InProgress" ->
                        JD.succeed ActionExecutionStatus_InProgress

                    "Succeeded" ->
                        JD.succeed ActionExecutionStatus_Succeeded

                    "Failed" ->
                        JD.succeed ActionExecutionStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified action cannot be found.</p>
-}
type alias ActionNotFoundException =
    { 
    }



actionNotFoundExceptionDecoder : JD.Decoder ActionNotFoundException
actionNotFoundExceptionDecoder =
    JDP.decode ActionNotFoundException



{-| One of

* `ActionOwner_AWS`
* `ActionOwner_ThirdParty`
* `ActionOwner_Custom`

-}
type ActionOwner
    = ActionOwner_AWS
    | ActionOwner_ThirdParty
    | ActionOwner_Custom



actionOwnerDecoder : JD.Decoder ActionOwner
actionOwnerDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS" ->
                        JD.succeed ActionOwner_AWS

                    "ThirdParty" ->
                        JD.succeed ActionOwner_ThirdParty

                    "Custom" ->
                        JD.succeed ActionOwner_Custom


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents information about the version (or revision) of an action.</p>
-}
type alias ActionRevision =
    { revisionId : String
    , revisionChangeId : String
    , created : Date
    }



actionRevisionDecoder : JD.Decoder ActionRevision
actionRevisionDecoder =
    JDP.decode ActionRevision
        |> JDP.required "revisionId" JD.string
        |> JDP.required "revisionChangeId" JD.string
        |> JDP.required "created" JDX.date




{-| <p>Represents information about the state of an action.</p>
-}
type alias ActionState =
    { actionName : Maybe String
    , currentRevision : Maybe ActionRevision
    , latestExecution : Maybe ActionExecution
    , entityUrl : Maybe String
    , revisionUrl : Maybe String
    }



actionStateDecoder : JD.Decoder ActionState
actionStateDecoder =
    JDP.decode ActionState
        |> JDP.optional "actionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentRevision" (JD.nullable actionRevisionDecoder) Nothing
        |> JDP.optional "latestExecution" (JD.nullable actionExecutionDecoder) Nothing
        |> JDP.optional "entityUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "revisionUrl" (JD.nullable JD.string) Nothing




{-| <p>Returns information about the details of an action type.</p>
-}
type alias ActionType =
    { id : ActionTypeId
    , settings : Maybe ActionTypeSettings
    , actionConfigurationProperties : Maybe (List ActionConfigurationProperty)
    , inputArtifactDetails : ArtifactDetails
    , outputArtifactDetails : ArtifactDetails
    }



actionTypeDecoder : JD.Decoder ActionType
actionTypeDecoder =
    JDP.decode ActionType
        |> JDP.required "id" actionTypeIdDecoder
        |> JDP.optional "settings" (JD.nullable actionTypeSettingsDecoder) Nothing
        |> JDP.optional "actionConfigurationProperties" (JD.nullable (JD.list actionConfigurationPropertyDecoder)) Nothing
        |> JDP.required "inputArtifactDetails" artifactDetailsDecoder
        |> JDP.required "outputArtifactDetails" artifactDetailsDecoder




{-| <p>Represents information about an action type.</p>
-}
type alias ActionTypeId =
    { category : ActionCategory
    , owner : ActionOwner
    , provider : String
    , version : String
    }



actionTypeIdDecoder : JD.Decoder ActionTypeId
actionTypeIdDecoder =
    JDP.decode ActionTypeId
        |> JDP.required "category" actionCategoryDecoder
        |> JDP.required "owner" actionOwnerDecoder
        |> JDP.required "provider" JD.string
        |> JDP.required "version" JD.string




{-| <p>The specified action type cannot be found.</p>
-}
type alias ActionTypeNotFoundException =
    { 
    }



actionTypeNotFoundExceptionDecoder : JD.Decoder ActionTypeNotFoundException
actionTypeNotFoundExceptionDecoder =
    JDP.decode ActionTypeNotFoundException



{-| <p>Returns information about the settings for an action type.</p>
-}
type alias ActionTypeSettings =
    { thirdPartyConfigurationUrl : Maybe String
    , entityUrlTemplate : Maybe String
    , executionUrlTemplate : Maybe String
    , revisionUrlTemplate : Maybe String
    }



actionTypeSettingsDecoder : JD.Decoder ActionTypeSettings
actionTypeSettingsDecoder =
    JDP.decode ActionTypeSettings
        |> JDP.optional "thirdPartyConfigurationUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "entityUrlTemplate" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionUrlTemplate" (JD.nullable JD.string) Nothing
        |> JDP.optional "revisionUrlTemplate" (JD.nullable JD.string) Nothing




{-| <p>The approval action has already been approved or rejected.</p>
-}
type alias ApprovalAlreadyCompletedException =
    { 
    }



approvalAlreadyCompletedExceptionDecoder : JD.Decoder ApprovalAlreadyCompletedException
approvalAlreadyCompletedExceptionDecoder =
    JDP.decode ApprovalAlreadyCompletedException



{-| <p>Represents information about the result of an approval request.</p>
-}
type alias ApprovalResult =
    { summary : String
    , status : ApprovalStatus
    }



approvalResultDecoder : JD.Decoder ApprovalResult
approvalResultDecoder =
    JDP.decode ApprovalResult
        |> JDP.required "summary" JD.string
        |> JDP.required "status" approvalStatusDecoder




{-| One of

* `ApprovalStatus_Approved`
* `ApprovalStatus_Rejected`

-}
type ApprovalStatus
    = ApprovalStatus_Approved
    | ApprovalStatus_Rejected



approvalStatusDecoder : JD.Decoder ApprovalStatus
approvalStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Approved" ->
                        JD.succeed ApprovalStatus_Approved

                    "Rejected" ->
                        JD.succeed ApprovalStatus_Rejected


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents information about an artifact that will be worked upon by actions in the pipeline.</p>
-}
type alias Artifact =
    { name : Maybe String
    , revision : Maybe String
    , location : Maybe ArtifactLocation
    }



artifactDecoder : JD.Decoder Artifact
artifactDecoder =
    JDP.decode Artifact
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "revision" (JD.nullable JD.string) Nothing
        |> JDP.optional "location" (JD.nullable artifactLocationDecoder) Nothing




{-| <p>Returns information about the details of an artifact.</p>
-}
type alias ArtifactDetails =
    { minimumCount : Int
    , maximumCount : Int
    }



artifactDetailsDecoder : JD.Decoder ArtifactDetails
artifactDetailsDecoder =
    JDP.decode ArtifactDetails
        |> JDP.required "minimumCount" JD.int
        |> JDP.required "maximumCount" JD.int




{-| <p>Represents information about the location of an artifact.</p>
-}
type alias ArtifactLocation =
    { type_ : Maybe ArtifactLocationType
    , s3Location : Maybe S3ArtifactLocation
    }



artifactLocationDecoder : JD.Decoder ArtifactLocation
artifactLocationDecoder =
    JDP.decode ArtifactLocation
        |> JDP.optional "type_" (JD.nullable artifactLocationTypeDecoder) Nothing
        |> JDP.optional "s3Location" (JD.nullable s3ArtifactLocationDecoder) Nothing




{-| One of

* `ArtifactLocationType_S3`

-}
type ArtifactLocationType
    = ArtifactLocationType_S3



artifactLocationTypeDecoder : JD.Decoder ArtifactLocationType
artifactLocationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "S3" ->
                        JD.succeed ArtifactLocationType_S3


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents revision details of an artifact. </p>
-}
type alias ArtifactRevision =
    { name : Maybe String
    , revisionId : Maybe String
    , revisionChangeIdentifier : Maybe String
    , revisionSummary : Maybe String
    , created : Maybe Date
    , revisionUrl : Maybe String
    }



artifactRevisionDecoder : JD.Decoder ArtifactRevision
artifactRevisionDecoder =
    JDP.decode ArtifactRevision
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "revisionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "revisionChangeIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "revisionSummary" (JD.nullable JD.string) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "revisionUrl" (JD.nullable JD.string) Nothing




{-| <p>The Amazon S3 location where artifacts are stored for the pipeline. If this Amazon S3 bucket is created manually, it must meet the requirements for AWS CodePipeline. For more information, see the <a href="http://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html#CPS3Bucket">Concepts</a>.</p>
-}
type alias ArtifactStore =
    { type_ : ArtifactStoreType
    , location : String
    , encryptionKey : Maybe EncryptionKey
    }



artifactStoreDecoder : JD.Decoder ArtifactStore
artifactStoreDecoder =
    JDP.decode ArtifactStore
        |> JDP.required "type_" artifactStoreTypeDecoder
        |> JDP.required "location" JD.string
        |> JDP.optional "encryptionKey" (JD.nullable encryptionKeyDecoder) Nothing




{-| One of

* `ArtifactStoreType_S3`

-}
type ArtifactStoreType
    = ArtifactStoreType_S3



artifactStoreTypeDecoder : JD.Decoder ArtifactStoreType
artifactStoreTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "S3" ->
                        JD.succeed ArtifactStoreType_S3


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Reserved for future use.</p>
-}
type alias BlockerDeclaration =
    { name : String
    , type_ : BlockerType
    }



blockerDeclarationDecoder : JD.Decoder BlockerDeclaration
blockerDeclarationDecoder =
    JDP.decode BlockerDeclaration
        |> JDP.required "name" JD.string
        |> JDP.required "type_" blockerTypeDecoder




{-| One of

* `BlockerType_Schedule`

-}
type BlockerType
    = BlockerType_Schedule



blockerTypeDecoder : JD.Decoder BlockerType
blockerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Schedule" ->
                        JD.succeed BlockerType_Schedule


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createCustomActionTy
-}
type alias CreateCustomActionTypeOutput =
    { actionType : ActionType
    }



createCustomActionTypeOutputDecoder : JD.Decoder CreateCustomActionTypeOutput
createCustomActionTypeOutputDecoder =
    JDP.decode CreateCustomActionTypeOutput
        |> JDP.required "actionType" actionTypeDecoder




{-| Type of HTTP response from createPipeli
-}
type alias CreatePipelineOutput =
    { pipeline : Maybe PipelineDeclaration
    }



createPipelineOutputDecoder : JD.Decoder CreatePipelineOutput
createPipelineOutputDecoder =
    JDP.decode CreatePipelineOutput
        |> JDP.optional "pipeline" (JD.nullable pipelineDeclarationDecoder) Nothing




{-| <p>Represents information about a current revision.</p>
-}
type alias CurrentRevision =
    { revision : String
    , changeIdentifier : String
    , created : Maybe Date
    , revisionSummary : Maybe String
    }



currentRevisionDecoder : JD.Decoder CurrentRevision
currentRevisionDecoder =
    JDP.decode CurrentRevision
        |> JDP.required "revision" JD.string
        |> JDP.required "changeIdentifier" JD.string
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "revisionSummary" (JD.nullable JD.string) Nothing




{-| <p>Represents information about the key used to encrypt data in the artifact store, such as an AWS Key Management Service (AWS KMS) key.</p>
-}
type alias EncryptionKey =
    { id : String
    , type_ : EncryptionKeyType
    }



encryptionKeyDecoder : JD.Decoder EncryptionKey
encryptionKeyDecoder =
    JDP.decode EncryptionKey
        |> JDP.required "id" JD.string
        |> JDP.required "type_" encryptionKeyTypeDecoder




{-| One of

* `EncryptionKeyType_KMS`

-}
type EncryptionKeyType
    = EncryptionKeyType_KMS



encryptionKeyTypeDecoder : JD.Decoder EncryptionKeyType
encryptionKeyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KMS" ->
                        JD.succeed EncryptionKeyType_KMS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents information about an error in AWS CodePipeline.</p>
-}
type alias ErrorDetails =
    { code : Maybe String
    , message : Maybe String
    }



errorDetailsDecoder : JD.Decoder ErrorDetails
errorDetailsDecoder =
    JDP.decode ErrorDetails
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The details of the actions taken and results produced on an artifact as it passes through stages in the pipeline.</p>
-}
type alias ExecutionDetails =
    { summary : Maybe String
    , externalExecutionId : Maybe String
    , percentComplete : Maybe Int
    }



executionDetailsDecoder : JD.Decoder ExecutionDetails
executionDetailsDecoder =
    JDP.decode ExecutionDetails
        |> JDP.optional "summary" (JD.nullable JD.string) Nothing
        |> JDP.optional "externalExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "percentComplete" (JD.nullable JD.int) Nothing




{-| <p>Represents information about failure details.</p>
-}
type alias FailureDetails =
    { type_ : FailureType
    , message : String
    , externalExecutionId : Maybe String
    }



failureDetailsDecoder : JD.Decoder FailureDetails
failureDetailsDecoder =
    JDP.decode FailureDetails
        |> JDP.required "type_" failureTypeDecoder
        |> JDP.required "message" JD.string
        |> JDP.optional "externalExecutionId" (JD.nullable JD.string) Nothing




{-| One of

* `FailureType_JobFailed`
* `FailureType_ConfigurationError`
* `FailureType_PermissionError`
* `FailureType_RevisionOutOfSync`
* `FailureType_RevisionUnavailable`
* `FailureType_SystemUnavailable`

-}
type FailureType
    = FailureType_JobFailed
    | FailureType_ConfigurationError
    | FailureType_PermissionError
    | FailureType_RevisionOutOfSync
    | FailureType_RevisionUnavailable
    | FailureType_SystemUnavailable



failureTypeDecoder : JD.Decoder FailureType
failureTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JobFailed" ->
                        JD.succeed FailureType_JobFailed

                    "ConfigurationError" ->
                        JD.succeed FailureType_ConfigurationError

                    "PermissionError" ->
                        JD.succeed FailureType_PermissionError

                    "RevisionOutOfSync" ->
                        JD.succeed FailureType_RevisionOutOfSync

                    "RevisionUnavailable" ->
                        JD.succeed FailureType_RevisionUnavailable

                    "SystemUnavailable" ->
                        JD.succeed FailureType_SystemUnavailable


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getJobDetai
-}
type alias GetJobDetailsOutput =
    { jobDetails : Maybe JobDetails
    }



getJobDetailsOutputDecoder : JD.Decoder GetJobDetailsOutput
getJobDetailsOutputDecoder =
    JDP.decode GetJobDetailsOutput
        |> JDP.optional "jobDetails" (JD.nullable jobDetailsDecoder) Nothing




{-| Type of HTTP response from getPipelineExecuti
-}
type alias GetPipelineExecutionOutput =
    { pipelineExecution : Maybe PipelineExecution
    }



getPipelineExecutionOutputDecoder : JD.Decoder GetPipelineExecutionOutput
getPipelineExecutionOutputDecoder =
    JDP.decode GetPipelineExecutionOutput
        |> JDP.optional "pipelineExecution" (JD.nullable pipelineExecutionDecoder) Nothing




{-| Type of HTTP response from getPipeli
-}
type alias GetPipelineOutput =
    { pipeline : Maybe PipelineDeclaration
    }



getPipelineOutputDecoder : JD.Decoder GetPipelineOutput
getPipelineOutputDecoder =
    JDP.decode GetPipelineOutput
        |> JDP.optional "pipeline" (JD.nullable pipelineDeclarationDecoder) Nothing




{-| Type of HTTP response from getPipelineSta
-}
type alias GetPipelineStateOutput =
    { pipelineName : Maybe String
    , pipelineVersion : Maybe Int
    , stageStates : Maybe (List StageState)
    , created : Maybe Date
    , updated : Maybe Date
    }



getPipelineStateOutputDecoder : JD.Decoder GetPipelineStateOutput
getPipelineStateOutputDecoder =
    JDP.decode GetPipelineStateOutput
        |> JDP.optional "pipelineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "pipelineVersion" (JD.nullable JD.int) Nothing
        |> JDP.optional "stageStates" (JD.nullable (JD.list stageStateDecoder)) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updated" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getThirdPartyJobDetai
-}
type alias GetThirdPartyJobDetailsOutput =
    { jobDetails : Maybe ThirdPartyJobDetails
    }



getThirdPartyJobDetailsOutputDecoder : JD.Decoder GetThirdPartyJobDetailsOutput
getThirdPartyJobDetailsOutputDecoder =
    JDP.decode GetThirdPartyJobDetailsOutput
        |> JDP.optional "jobDetails" (JD.nullable thirdPartyJobDetailsDecoder) Nothing




{-| <p>Represents information about an artifact to be worked on, such as a test or build artifact.</p>
-}
type alias InputArtifact =
    { name : String
    }



inputArtifactDecoder : JD.Decoder InputArtifact
inputArtifactDecoder =
    JDP.decode InputArtifact
        |> JDP.required "name" JD.string




{-| <p>The specified action declaration was specified in an invalid format.</p>
-}
type alias InvalidActionDeclarationException =
    { 
    }



invalidActionDeclarationExceptionDecoder : JD.Decoder InvalidActionDeclarationException
invalidActionDeclarationExceptionDecoder =
    JDP.decode InvalidActionDeclarationException



{-| <p>The approval request already received a response or has expired.</p>
-}
type alias InvalidApprovalTokenException =
    { 
    }



invalidApprovalTokenExceptionDecoder : JD.Decoder InvalidApprovalTokenException
invalidApprovalTokenExceptionDecoder =
    JDP.decode InvalidApprovalTokenException



{-| <p>Reserved for future use.</p>
-}
type alias InvalidBlockerDeclarationException =
    { 
    }



invalidBlockerDeclarationExceptionDecoder : JD.Decoder InvalidBlockerDeclarationException
invalidBlockerDeclarationExceptionDecoder =
    JDP.decode InvalidBlockerDeclarationException



{-| <p>The client token was specified in an invalid format</p>
-}
type alias InvalidClientTokenException =
    { 
    }



invalidClientTokenExceptionDecoder : JD.Decoder InvalidClientTokenException
invalidClientTokenExceptionDecoder =
    JDP.decode InvalidClientTokenException



{-| <p>The specified job was specified in an invalid format or cannot be found.</p>
-}
type alias InvalidJobException =
    { 
    }



invalidJobExceptionDecoder : JD.Decoder InvalidJobException
invalidJobExceptionDecoder =
    JDP.decode InvalidJobException



{-| <p>The specified job state was specified in an invalid format.</p>
-}
type alias InvalidJobStateException =
    { 
    }



invalidJobStateExceptionDecoder : JD.Decoder InvalidJobStateException
invalidJobStateExceptionDecoder =
    JDP.decode InvalidJobStateException



{-| <p>The next token was specified in an invalid format. Make sure that the next token you provided is the token returned by a previous call.</p>
-}
type alias InvalidNextTokenException =
    { 
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException



{-| <p>The specified nonce was specified in an invalid format.</p>
-}
type alias InvalidNonceException =
    { 
    }



invalidNonceExceptionDecoder : JD.Decoder InvalidNonceException
invalidNonceExceptionDecoder =
    JDP.decode InvalidNonceException



{-| <p>The specified stage declaration was specified in an invalid format.</p>
-}
type alias InvalidStageDeclarationException =
    { 
    }



invalidStageDeclarationExceptionDecoder : JD.Decoder InvalidStageDeclarationException
invalidStageDeclarationExceptionDecoder =
    JDP.decode InvalidStageDeclarationException



{-| <p>The specified structure was specified in an invalid format.</p>
-}
type alias InvalidStructureException =
    { 
    }



invalidStructureExceptionDecoder : JD.Decoder InvalidStructureException
invalidStructureExceptionDecoder =
    JDP.decode InvalidStructureException



{-| <p>Represents information about a job.</p>
-}
type alias Job =
    { id : Maybe String
    , data : Maybe JobData
    , nonce : Maybe String
    , accountId : Maybe String
    }



jobDecoder : JD.Decoder Job
jobDecoder =
    JDP.decode Job
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "data" (JD.nullable jobDataDecoder) Nothing
        |> JDP.optional "nonce" (JD.nullable JD.string) Nothing
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing




{-| <p>Represents additional information about a job required for a job worker to complete the job.</p>
-}
type alias JobData =
    { actionTypeId : Maybe ActionTypeId
    , actionConfiguration : Maybe ActionConfiguration
    , pipelineContext : Maybe PipelineContext
    , inputArtifacts : Maybe (List Artifact)
    , outputArtifacts : Maybe (List Artifact)
    , artifactCredentials : Maybe AWSSessionCredentials
    , continuationToken : Maybe String
    , encryptionKey : Maybe EncryptionKey
    }



jobDataDecoder : JD.Decoder JobData
jobDataDecoder =
    JDP.decode JobData
        |> JDP.optional "actionTypeId" (JD.nullable actionTypeIdDecoder) Nothing
        |> JDP.optional "actionConfiguration" (JD.nullable actionConfigurationDecoder) Nothing
        |> JDP.optional "pipelineContext" (JD.nullable pipelineContextDecoder) Nothing
        |> JDP.optional "inputArtifacts" (JD.nullable (JD.list artifactDecoder)) Nothing
        |> JDP.optional "outputArtifacts" (JD.nullable (JD.list artifactDecoder)) Nothing
        |> JDP.optional "artifactCredentials" (JD.nullable aWSSessionCredentialsDecoder) Nothing
        |> JDP.optional "continuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryptionKey" (JD.nullable encryptionKeyDecoder) Nothing




{-| <p>Represents information about the details of a job.</p>
-}
type alias JobDetails =
    { id : Maybe String
    , data : Maybe JobData
    , accountId : Maybe String
    }



jobDetailsDecoder : JD.Decoder JobDetails
jobDetailsDecoder =
    JDP.decode JobDetails
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "data" (JD.nullable jobDataDecoder) Nothing
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing




{-| <p>The specified job was specified in an invalid format or cannot be found.</p>
-}
type alias JobNotFoundException =
    { 
    }



jobNotFoundExceptionDecoder : JD.Decoder JobNotFoundException
jobNotFoundExceptionDecoder =
    JDP.decode JobNotFoundException



{-| One of

* `JobStatus_Created`
* `JobStatus_Queued`
* `JobStatus_Dispatched`
* `JobStatus_InProgress`
* `JobStatus_TimedOut`
* `JobStatus_Succeeded`
* `JobStatus_Failed`

-}
type JobStatus
    = JobStatus_Created
    | JobStatus_Queued
    | JobStatus_Dispatched
    | JobStatus_InProgress
    | JobStatus_TimedOut
    | JobStatus_Succeeded
    | JobStatus_Failed



jobStatusDecoder : JD.Decoder JobStatus
jobStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Created" ->
                        JD.succeed JobStatus_Created

                    "Queued" ->
                        JD.succeed JobStatus_Queued

                    "Dispatched" ->
                        JD.succeed JobStatus_Dispatched

                    "InProgress" ->
                        JD.succeed JobStatus_InProgress

                    "TimedOut" ->
                        JD.succeed JobStatus_TimedOut

                    "Succeeded" ->
                        JD.succeed JobStatus_Succeeded

                    "Failed" ->
                        JD.succeed JobStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The number of pipelines associated with the AWS account has exceeded the limit allowed for the account.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listActionTyp
-}
type alias ListActionTypesOutput =
    { actionTypes : (List ActionType)
    , nextToken : Maybe String
    }



listActionTypesOutputDecoder : JD.Decoder ListActionTypesOutput
listActionTypesOutputDecoder =
    JDP.decode ListActionTypesOutput
        |> JDP.required "actionTypes" (JD.list actionTypeDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPipelin
-}
type alias ListPipelinesOutput =
    { pipelines : Maybe (List PipelineSummary)
    , nextToken : Maybe String
    }



listPipelinesOutputDecoder : JD.Decoder ListPipelinesOutput
listPipelinesOutputDecoder =
    JDP.decode ListPipelinesOutput
        |> JDP.optional "pipelines" (JD.nullable (JD.list pipelineSummaryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The stage has failed in a later run of the pipeline and the pipelineExecutionId associated with the request is out of date.</p>
-}
type alias NotLatestPipelineExecutionException =
    { 
    }



notLatestPipelineExecutionExceptionDecoder : JD.Decoder NotLatestPipelineExecutionException
notLatestPipelineExecutionExceptionDecoder =
    JDP.decode NotLatestPipelineExecutionException



{-| <p>Represents information about the output of an action.</p>
-}
type alias OutputArtifact =
    { name : String
    }



outputArtifactDecoder : JD.Decoder OutputArtifact
outputArtifactDecoder =
    JDP.decode OutputArtifact
        |> JDP.required "name" JD.string




{-| <p>Represents information about a pipeline to a job worker.</p>
-}
type alias PipelineContext =
    { pipelineName : Maybe String
    , stage : Maybe StageContext
    , action : Maybe ActionContext
    }



pipelineContextDecoder : JD.Decoder PipelineContext
pipelineContextDecoder =
    JDP.decode PipelineContext
        |> JDP.optional "pipelineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "stage" (JD.nullable stageContextDecoder) Nothing
        |> JDP.optional "action" (JD.nullable actionContextDecoder) Nothing




{-| <p>Represents the structure of actions and stages to be performed in the pipeline.</p>
-}
type alias PipelineDeclaration =
    { name : String
    , roleArn : String
    , artifactStore : ArtifactStore
    , stages : (List StageDeclaration)
    , version : Maybe Int
    }



pipelineDeclarationDecoder : JD.Decoder PipelineDeclaration
pipelineDeclarationDecoder =
    JDP.decode PipelineDeclaration
        |> JDP.required "name" JD.string
        |> JDP.required "roleArn" JD.string
        |> JDP.required "artifactStore" artifactStoreDecoder
        |> JDP.required "stages" (JD.list stageDeclarationDecoder)
        |> JDP.optional "version" (JD.nullable JD.int) Nothing




{-| <p>Represents information about an execution of a pipeline.</p>
-}
type alias PipelineExecution =
    { pipelineName : Maybe String
    , pipelineVersion : Maybe Int
    , pipelineExecutionId : Maybe String
    , status : Maybe PipelineExecutionStatus
    , artifactRevisions : Maybe (List ArtifactRevision)
    }



pipelineExecutionDecoder : JD.Decoder PipelineExecution
pipelineExecutionDecoder =
    JDP.decode PipelineExecution
        |> JDP.optional "pipelineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "pipelineVersion" (JD.nullable JD.int) Nothing
        |> JDP.optional "pipelineExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable pipelineExecutionStatusDecoder) Nothing
        |> JDP.optional "artifactRevisions" (JD.nullable (JD.list artifactRevisionDecoder)) Nothing




{-| <p>The pipeline execution was specified in an invalid format or cannot be found, or an execution ID does not belong to the specified pipeline. </p>
-}
type alias PipelineExecutionNotFoundException =
    { 
    }



pipelineExecutionNotFoundExceptionDecoder : JD.Decoder PipelineExecutionNotFoundException
pipelineExecutionNotFoundExceptionDecoder =
    JDP.decode PipelineExecutionNotFoundException



{-| One of

* `PipelineExecutionStatus_InProgress`
* `PipelineExecutionStatus_Succeeded`
* `PipelineExecutionStatus_Superseded`
* `PipelineExecutionStatus_Failed`

-}
type PipelineExecutionStatus
    = PipelineExecutionStatus_InProgress
    | PipelineExecutionStatus_Succeeded
    | PipelineExecutionStatus_Superseded
    | PipelineExecutionStatus_Failed



pipelineExecutionStatusDecoder : JD.Decoder PipelineExecutionStatus
pipelineExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InProgress" ->
                        JD.succeed PipelineExecutionStatus_InProgress

                    "Succeeded" ->
                        JD.succeed PipelineExecutionStatus_Succeeded

                    "Superseded" ->
                        JD.succeed PipelineExecutionStatus_Superseded

                    "Failed" ->
                        JD.succeed PipelineExecutionStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified pipeline name is already in use.</p>
-}
type alias PipelineNameInUseException =
    { 
    }



pipelineNameInUseExceptionDecoder : JD.Decoder PipelineNameInUseException
pipelineNameInUseExceptionDecoder =
    JDP.decode PipelineNameInUseException



{-| <p>The specified pipeline was specified in an invalid format or cannot be found.</p>
-}
type alias PipelineNotFoundException =
    { 
    }



pipelineNotFoundExceptionDecoder : JD.Decoder PipelineNotFoundException
pipelineNotFoundExceptionDecoder =
    JDP.decode PipelineNotFoundException



{-| <p>Returns a summary of a pipeline.</p>
-}
type alias PipelineSummary =
    { name : Maybe String
    , version : Maybe Int
    , created : Maybe Date
    , updated : Maybe Date
    }



pipelineSummaryDecoder : JD.Decoder PipelineSummary
pipelineSummaryDecoder =
    JDP.decode PipelineSummary
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.int) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updated" (JD.nullable JDX.date) Nothing




{-| <p>The specified pipeline version was specified in an invalid format or cannot be found.</p>
-}
type alias PipelineVersionNotFoundException =
    { 
    }



pipelineVersionNotFoundExceptionDecoder : JD.Decoder PipelineVersionNotFoundException
pipelineVersionNotFoundExceptionDecoder =
    JDP.decode PipelineVersionNotFoundException



{-| Type of HTTP response from pollForJo
-}
type alias PollForJobsOutput =
    { jobs : Maybe (List Job)
    }



pollForJobsOutputDecoder : JD.Decoder PollForJobsOutput
pollForJobsOutputDecoder =
    JDP.decode PollForJobsOutput
        |> JDP.optional "jobs" (JD.nullable (JD.list jobDecoder)) Nothing




{-| Type of HTTP response from pollForThirdPartyJo
-}
type alias PollForThirdPartyJobsOutput =
    { jobs : Maybe (List ThirdPartyJob)
    }



pollForThirdPartyJobsOutputDecoder : JD.Decoder PollForThirdPartyJobsOutput
pollForThirdPartyJobsOutputDecoder =
    JDP.decode PollForThirdPartyJobsOutput
        |> JDP.optional "jobs" (JD.nullable (JD.list thirdPartyJobDecoder)) Nothing




{-| Type of HTTP response from putActionRevisi
-}
type alias PutActionRevisionOutput =
    { newRevision : Maybe Bool
    , pipelineExecutionId : Maybe String
    }



putActionRevisionOutputDecoder : JD.Decoder PutActionRevisionOutput
putActionRevisionOutputDecoder =
    JDP.decode PutActionRevisionOutput
        |> JDP.optional "newRevision" (JD.nullable JD.bool) Nothing
        |> JDP.optional "pipelineExecutionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putApprovalResu
-}
type alias PutApprovalResultOutput =
    { approvedAt : Maybe Date
    }



putApprovalResultOutputDecoder : JD.Decoder PutApprovalResultOutput
putApprovalResultOutputDecoder =
    JDP.decode PutApprovalResultOutput
        |> JDP.optional "approvedAt" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from retryStageExecuti
-}
type alias RetryStageExecutionOutput =
    { pipelineExecutionId : Maybe String
    }



retryStageExecutionOutputDecoder : JD.Decoder RetryStageExecutionOutput
retryStageExecutionOutputDecoder =
    JDP.decode RetryStageExecutionOutput
        |> JDP.optional "pipelineExecutionId" (JD.nullable JD.string) Nothing




{-| <p>The location of the Amazon S3 bucket that contains a revision.</p>
-}
type alias S3ArtifactLocation =
    { bucketName : String
    , objectKey : String
    }



s3ArtifactLocationDecoder : JD.Decoder S3ArtifactLocation
s3ArtifactLocationDecoder =
    JDP.decode S3ArtifactLocation
        |> JDP.required "bucketName" JD.string
        |> JDP.required "objectKey" JD.string




{-| <p>Represents information about a stage to a job worker.</p>
-}
type alias StageContext =
    { name : Maybe String
    }



stageContextDecoder : JD.Decoder StageContext
stageContextDecoder =
    JDP.decode StageContext
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Represents information about a stage and its definition.</p>
-}
type alias StageDeclaration =
    { name : String
    , blockers : Maybe (List BlockerDeclaration)
    , actions : (List ActionDeclaration)
    }



stageDeclarationDecoder : JD.Decoder StageDeclaration
stageDeclarationDecoder =
    JDP.decode StageDeclaration
        |> JDP.required "name" JD.string
        |> JDP.optional "blockers" (JD.nullable (JD.list blockerDeclarationDecoder)) Nothing
        |> JDP.required "actions" (JD.list actionDeclarationDecoder)




{-| <p>Represents information about the run of a stage.</p>
-}
type alias StageExecution =
    { pipelineExecutionId : String
    , status : StageExecutionStatus
    }



stageExecutionDecoder : JD.Decoder StageExecution
stageExecutionDecoder =
    JDP.decode StageExecution
        |> JDP.required "pipelineExecutionId" JD.string
        |> JDP.required "status" stageExecutionStatusDecoder




{-| One of

* `StageExecutionStatus_InProgress`
* `StageExecutionStatus_Failed`
* `StageExecutionStatus_Succeeded`

-}
type StageExecutionStatus
    = StageExecutionStatus_InProgress
    | StageExecutionStatus_Failed
    | StageExecutionStatus_Succeeded



stageExecutionStatusDecoder : JD.Decoder StageExecutionStatus
stageExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InProgress" ->
                        JD.succeed StageExecutionStatus_InProgress

                    "Failed" ->
                        JD.succeed StageExecutionStatus_Failed

                    "Succeeded" ->
                        JD.succeed StageExecutionStatus_Succeeded


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified stage was specified in an invalid format or cannot be found.</p>
-}
type alias StageNotFoundException =
    { 
    }



stageNotFoundExceptionDecoder : JD.Decoder StageNotFoundException
stageNotFoundExceptionDecoder =
    JDP.decode StageNotFoundException



{-| <p>The specified stage can't be retried because the pipeline structure or stage state changed after the stage was not completed; the stage contains no failed actions; one or more actions are still in progress; or another retry attempt is already in progress. </p>
-}
type alias StageNotRetryableException =
    { 
    }



stageNotRetryableExceptionDecoder : JD.Decoder StageNotRetryableException
stageNotRetryableExceptionDecoder =
    JDP.decode StageNotRetryableException



{-| One of

* `StageRetryMode_FAILED_ACTIONS`

-}
type StageRetryMode
    = StageRetryMode_FAILED_ACTIONS



stageRetryModeDecoder : JD.Decoder StageRetryMode
stageRetryModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FAILED_ACTIONS" ->
                        JD.succeed StageRetryMode_FAILED_ACTIONS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents information about the state of the stage.</p>
-}
type alias StageState =
    { stageName : Maybe String
    , inboundTransitionState : Maybe TransitionState
    , actionStates : Maybe (List ActionState)
    , latestExecution : Maybe StageExecution
    }



stageStateDecoder : JD.Decoder StageState
stageStateDecoder =
    JDP.decode StageState
        |> JDP.optional "stageName" (JD.nullable JD.string) Nothing
        |> JDP.optional "inboundTransitionState" (JD.nullable transitionStateDecoder) Nothing
        |> JDP.optional "actionStates" (JD.nullable (JD.list actionStateDecoder)) Nothing
        |> JDP.optional "latestExecution" (JD.nullable stageExecutionDecoder) Nothing




{-| One of

* `StageTransitionType_Inbound`
* `StageTransitionType_Outbound`

-}
type StageTransitionType
    = StageTransitionType_Inbound
    | StageTransitionType_Outbound



stageTransitionTypeDecoder : JD.Decoder StageTransitionType
stageTransitionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Inbound" ->
                        JD.succeed StageTransitionType_Inbound

                    "Outbound" ->
                        JD.succeed StageTransitionType_Outbound


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from startPipelineExecuti
-}
type alias StartPipelineExecutionOutput =
    { pipelineExecutionId : Maybe String
    }



startPipelineExecutionOutputDecoder : JD.Decoder StartPipelineExecutionOutput
startPipelineExecutionOutputDecoder =
    JDP.decode StartPipelineExecutionOutput
        |> JDP.optional "pipelineExecutionId" (JD.nullable JD.string) Nothing




{-| <p>A response to a PollForThirdPartyJobs request returned by AWS CodePipeline when there is a job to be worked upon by a partner action.</p>
-}
type alias ThirdPartyJob =
    { clientId : Maybe String
    , jobId : Maybe String
    }



thirdPartyJobDecoder : JD.Decoder ThirdPartyJob
thirdPartyJobDecoder =
    JDP.decode ThirdPartyJob
        |> JDP.optional "clientId" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing




{-| <p>Represents information about the job data for a partner action.</p>
-}
type alias ThirdPartyJobData =
    { actionTypeId : Maybe ActionTypeId
    , actionConfiguration : Maybe ActionConfiguration
    , pipelineContext : Maybe PipelineContext
    , inputArtifacts : Maybe (List Artifact)
    , outputArtifacts : Maybe (List Artifact)
    , artifactCredentials : Maybe AWSSessionCredentials
    , continuationToken : Maybe String
    , encryptionKey : Maybe EncryptionKey
    }



thirdPartyJobDataDecoder : JD.Decoder ThirdPartyJobData
thirdPartyJobDataDecoder =
    JDP.decode ThirdPartyJobData
        |> JDP.optional "actionTypeId" (JD.nullable actionTypeIdDecoder) Nothing
        |> JDP.optional "actionConfiguration" (JD.nullable actionConfigurationDecoder) Nothing
        |> JDP.optional "pipelineContext" (JD.nullable pipelineContextDecoder) Nothing
        |> JDP.optional "inputArtifacts" (JD.nullable (JD.list artifactDecoder)) Nothing
        |> JDP.optional "outputArtifacts" (JD.nullable (JD.list artifactDecoder)) Nothing
        |> JDP.optional "artifactCredentials" (JD.nullable aWSSessionCredentialsDecoder) Nothing
        |> JDP.optional "continuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryptionKey" (JD.nullable encryptionKeyDecoder) Nothing




{-| <p>The details of a job sent in response to a GetThirdPartyJobDetails request.</p>
-}
type alias ThirdPartyJobDetails =
    { id : Maybe String
    , data : Maybe ThirdPartyJobData
    , nonce : Maybe String
    }



thirdPartyJobDetailsDecoder : JD.Decoder ThirdPartyJobDetails
thirdPartyJobDetailsDecoder =
    JDP.decode ThirdPartyJobDetails
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "data" (JD.nullable thirdPartyJobDataDecoder) Nothing
        |> JDP.optional "nonce" (JD.nullable JD.string) Nothing




{-| <p>Represents information about the state of transitions between one stage and another stage.</p>
-}
type alias TransitionState =
    { enabled : Maybe Bool
    , lastChangedBy : Maybe String
    , lastChangedAt : Maybe Date
    , disabledReason : Maybe String
    }



transitionStateDecoder : JD.Decoder TransitionState
transitionStateDecoder =
    JDP.decode TransitionState
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "lastChangedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastChangedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "disabledReason" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updatePipeli
-}
type alias UpdatePipelineOutput =
    { pipeline : Maybe PipelineDeclaration
    }



updatePipelineOutputDecoder : JD.Decoder UpdatePipelineOutput
updatePipelineOutputDecoder =
    JDP.decode UpdatePipelineOutput
        |> JDP.optional "pipeline" (JD.nullable pipelineDeclarationDecoder) Nothing




{-| <p>The validation was specified in an invalid format.</p>
-}
type alias ValidationException =
    { 
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException



