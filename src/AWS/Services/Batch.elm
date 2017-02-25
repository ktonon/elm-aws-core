module AWS.Services.Batch
    exposing
        ( config
        , cancelJob
        , createComputeEnvironment
        , CreateComputeEnvironmentOptions
        , createJobQueue
        , CreateJobQueueOptions
        , deleteComputeEnvironment
        , deleteJobQueue
        , deregisterJobDefinition
        , describeComputeEnvironments
        , DescribeComputeEnvironmentsOptions
        , describeJobDefinitions
        , DescribeJobDefinitionsOptions
        , describeJobQueues
        , DescribeJobQueuesOptions
        , describeJobs
        , listJobs
        , ListJobsOptions
        , registerJobDefinition
        , RegisterJobDefinitionOptions
        , submitJob
        , SubmitJobOptions
        , terminateJob
        , updateComputeEnvironment
        , UpdateComputeEnvironmentOptions
        , updateJobQueue
        , UpdateJobQueueOptions
        , CEState(..)
        , CEStatus(..)
        , CEType(..)
        , CRType(..)
        , CancelJobResponse
        , ClientException
        , ComputeEnvironmentDetail
        , ComputeEnvironmentOrder
        , ComputeResource
        , ComputeResourceUpdate
        , ContainerDetail
        , ContainerOverrides
        , ContainerProperties
        , CreateComputeEnvironmentResponse
        , CreateJobQueueResponse
        , DeleteComputeEnvironmentResponse
        , DeleteJobQueueResponse
        , DeregisterJobDefinitionResponse
        , DescribeComputeEnvironmentsResponse
        , DescribeJobDefinitionsResponse
        , DescribeJobQueuesResponse
        , DescribeJobsResponse
        , Host
        , JQState(..)
        , JQStatus(..)
        , JobDefinition
        , JobDefinitionType(..)
        , JobDependency
        , JobDetail
        , JobQueueDetail
        , JobStatus(..)
        , JobSummary
        , KeyValuePair
        , ListJobsResponse
        , MountPoint
        , RegisterJobDefinitionResponse
        , ServerException
        , SubmitJobResponse
        , TerminateJobResponse
        , Ulimit
        , UpdateComputeEnvironmentResponse
        , UpdateJobQueueResponse
        , Volume
        )

{-| <p>AWS Batch enables you to run batch computing workloads on the AWS Cloud. Batch computing is a common way for developers, scientists, and engineers to access large amounts of compute resources, and AWS Batch removes the undifferentiated heavy lifting of configuring and managing the required infrastructure. AWS Batch will be familiar to users of traditional batch computing software. This service can efficiently provision resources in response to jobs submitted in order to eliminate capacity constraints, reduce compute costs, and deliver results quickly.</p> <p>As a fully managed service, AWS Batch enables developers, scientists, and engineers to run batch computing workloads of any scale. AWS Batch automatically provisions compute resources and optimizes the workload distribution based on the quantity and scale of the workloads. With AWS Batch, there is no need to install or manage batch computing software, which allows you to focus on analyzing results and solving problems. AWS Batch reduces operational complexities, saves time, and reduces costs, which makes it easy for developers, scientists, and engineers to run their batch jobs in the AWS Cloud.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [cancelJob](#cancelJob)
* [createComputeEnvironment](#createComputeEnvironment)
* [CreateComputeEnvironmentOptions](#CreateComputeEnvironmentOptions)
* [createJobQueue](#createJobQueue)
* [CreateJobQueueOptions](#CreateJobQueueOptions)
* [deleteComputeEnvironment](#deleteComputeEnvironment)
* [deleteJobQueue](#deleteJobQueue)
* [deregisterJobDefinition](#deregisterJobDefinition)
* [describeComputeEnvironments](#describeComputeEnvironments)
* [DescribeComputeEnvironmentsOptions](#DescribeComputeEnvironmentsOptions)
* [describeJobDefinitions](#describeJobDefinitions)
* [DescribeJobDefinitionsOptions](#DescribeJobDefinitionsOptions)
* [describeJobQueues](#describeJobQueues)
* [DescribeJobQueuesOptions](#DescribeJobQueuesOptions)
* [describeJobs](#describeJobs)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [registerJobDefinition](#registerJobDefinition)
* [RegisterJobDefinitionOptions](#RegisterJobDefinitionOptions)
* [submitJob](#submitJob)
* [SubmitJobOptions](#SubmitJobOptions)
* [terminateJob](#terminateJob)
* [updateComputeEnvironment](#updateComputeEnvironment)
* [UpdateComputeEnvironmentOptions](#UpdateComputeEnvironmentOptions)
* [updateJobQueue](#updateJobQueue)
* [UpdateJobQueueOptions](#UpdateJobQueueOptions)


@docs cancelJob,createComputeEnvironment,CreateComputeEnvironmentOptions,createJobQueue,CreateJobQueueOptions,deleteComputeEnvironment,deleteJobQueue,deregisterJobDefinition,describeComputeEnvironments,DescribeComputeEnvironmentsOptions,describeJobDefinitions,DescribeJobDefinitionsOptions,describeJobQueues,DescribeJobQueuesOptions,describeJobs,listJobs,ListJobsOptions,registerJobDefinition,RegisterJobDefinitionOptions,submitJob,SubmitJobOptions,terminateJob,updateComputeEnvironment,UpdateComputeEnvironmentOptions,updateJobQueue,UpdateJobQueueOptions

## Responses

* [CancelJobResponse](#CancelJobResponse)
* [CreateComputeEnvironmentResponse](#CreateComputeEnvironmentResponse)
* [CreateJobQueueResponse](#CreateJobQueueResponse)
* [DeleteComputeEnvironmentResponse](#DeleteComputeEnvironmentResponse)
* [DeleteJobQueueResponse](#DeleteJobQueueResponse)
* [DeregisterJobDefinitionResponse](#DeregisterJobDefinitionResponse)
* [DescribeComputeEnvironmentsResponse](#DescribeComputeEnvironmentsResponse)
* [DescribeJobDefinitionsResponse](#DescribeJobDefinitionsResponse)
* [DescribeJobQueuesResponse](#DescribeJobQueuesResponse)
* [DescribeJobsResponse](#DescribeJobsResponse)
* [ListJobsResponse](#ListJobsResponse)
* [RegisterJobDefinitionResponse](#RegisterJobDefinitionResponse)
* [SubmitJobResponse](#SubmitJobResponse)
* [TerminateJobResponse](#TerminateJobResponse)
* [UpdateComputeEnvironmentResponse](#UpdateComputeEnvironmentResponse)
* [UpdateJobQueueResponse](#UpdateJobQueueResponse)


@docs CancelJobResponse,CreateComputeEnvironmentResponse,CreateJobQueueResponse,DeleteComputeEnvironmentResponse,DeleteJobQueueResponse,DeregisterJobDefinitionResponse,DescribeComputeEnvironmentsResponse,DescribeJobDefinitionsResponse,DescribeJobQueuesResponse,DescribeJobsResponse,ListJobsResponse,RegisterJobDefinitionResponse,SubmitJobResponse,TerminateJobResponse,UpdateComputeEnvironmentResponse,UpdateJobQueueResponse

## Records

* [ComputeEnvironmentDetail](#ComputeEnvironmentDetail)
* [ComputeEnvironmentOrder](#ComputeEnvironmentOrder)
* [ComputeResource](#ComputeResource)
* [ComputeResourceUpdate](#ComputeResourceUpdate)
* [ContainerDetail](#ContainerDetail)
* [ContainerOverrides](#ContainerOverrides)
* [ContainerProperties](#ContainerProperties)
* [Host](#Host)
* [JobDefinition](#JobDefinition)
* [JobDependency](#JobDependency)
* [JobDetail](#JobDetail)
* [JobQueueDetail](#JobQueueDetail)
* [JobSummary](#JobSummary)
* [KeyValuePair](#KeyValuePair)
* [MountPoint](#MountPoint)
* [Ulimit](#Ulimit)
* [Volume](#Volume)


@docs ComputeEnvironmentDetail,ComputeEnvironmentOrder,ComputeResource,ComputeResourceUpdate,ContainerDetail,ContainerOverrides,ContainerProperties,Host,JobDefinition,JobDependency,JobDetail,JobQueueDetail,JobSummary,KeyValuePair,MountPoint,Ulimit,Volume

## Unions

* [CEState](#CEState)
* [CEStatus](#CEStatus)
* [CEType](#CEType)
* [CRType](#CRType)
* [JQState](#JQState)
* [JQStatus](#JQStatus)
* [JobDefinitionType](#JobDefinitionType)
* [JobStatus](#JobStatus)


@docs CEState,CEStatus,CEType,CRType,JQState,JQStatus,JobDefinitionType,JobStatus

## Exceptions

* [ClientException](#ClientException)
* [ServerException](#ServerException)


@docs ClientException,ServerException

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
        "batch"
        "2016-08-10"
        "1.1"
        "AWSBATCH_20160810."
        "batch.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Cancels jobs in an AWS Batch job queue. Jobs that are in the <code>SUBMITTED</code>, <code>PENDING</code>, or <code>RUNNABLE</code> state are cancelled. Jobs that have progressed to <code>STARTING</code> or <code>RUNNING</code> are not cancelled (but the API operation still succeeds, even if no jobs are cancelled); these jobs must be terminated with the <a>TerminateJob</a> operation.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `reason` __:__ `String`


-}
cancelJob :
    String
    -> String
    -> AWS.Request CancelJobResponse
cancelJob jobId reason =
    AWS.Http.unsignedRequest
        "CancelJob"
        "POST"
        "/v1/canceljob"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates an AWS Batch compute environment. You can create <code>MANAGED</code> or <code>UNMANAGED</code>compute environments.</p> <p>In a managed compute environment, AWS Batch manages the compute resources within the environment, based on the compute resources that you specify. Instances launched into a managed compute environment use the latest Amazon ECS-optimized AMI. You can choose to use Amazon EC2 On-Demand instances in your managed compute environment, or you can use Amazon EC2 Spot instances that only launch when the Spot bid price is below a specified percentage of the On-Demand price.</p> <p>In an unmanaged compute environment, you can manage your own compute resources. This provides more compute resource configuration options, such as using a custom AMI, but you must ensure that your AMI meets the Amazon ECS container instance AMI specification. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/container_instance_AMIs.html">Container Instance AMIs</a> in the <i>Amazon EC2 Container Service Developer Guide</i>. After you have created your unmanaged compute environment, you can use the <a>DescribeComputeEnvironments</a> operation to find the Amazon ECS cluster that is associated with it and then manually launch your container instances into that Amazon ECS cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_container_instance.html">Launching an Amazon ECS Container Instance</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>

__Required Parameters__

* `computeEnvironmentName` __:__ `String`
* `type_` __:__ `CEType`
* `serviceRole` __:__ `String`


-}
createComputeEnvironment :
    String
    -> CEType
    -> String
    -> (CreateComputeEnvironmentOptions -> CreateComputeEnvironmentOptions)
    -> AWS.Request CreateComputeEnvironmentResponse
createComputeEnvironment computeEnvironmentName type_ serviceRole setOptions =
  let
    options = setOptions (CreateComputeEnvironmentOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateComputeEnvironment"
        "POST"
        "/v1/createcomputeenvironment"
        (AWS.Http.JsonBody
            JE.null
        )
        createComputeEnvironmentResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createComputeEnvironment request
-}
type alias CreateComputeEnvironmentOptions =
    { state : Maybe CEState
    , computeResources : Maybe ComputeResource
    }



{-| <p>Creates an AWS Batch job queue. When you create a job queue, you associate one or more compute environments to the queue and assign an order of preference for the compute environments.</p> <p>You also set a priority to the job queue that determines the order in which the AWS Batch scheduler places jobs onto its associated compute environments. For example, if a compute environment is associated with more than one job queue, the job queue with a higher priority is given preference for scheduling jobs to that compute environment.</p>

__Required Parameters__

* `jobQueueName` __:__ `String`
* `priority` __:__ `Int`
* `computeEnvironmentOrder` __:__ `(List ComputeEnvironmentOrder)`


-}
createJobQueue :
    String
    -> Int
    -> (List ComputeEnvironmentOrder)
    -> (CreateJobQueueOptions -> CreateJobQueueOptions)
    -> AWS.Request CreateJobQueueResponse
createJobQueue jobQueueName priority computeEnvironmentOrder setOptions =
  let
    options = setOptions (CreateJobQueueOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateJobQueue"
        "POST"
        "/v1/createjobqueue"
        (AWS.Http.JsonBody
            JE.null
        )
        createJobQueueResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createJobQueue request
-}
type alias CreateJobQueueOptions =
    { state : Maybe JQState
    }



{-| <p>Deletes an AWS Batch compute environment.</p> <p>Before you can delete a compute environment, you must set its state to <code>DISABLED</code> with the <a>UpdateComputeEnvironment</a> API operation and disassociate it from any job queues with the <a>UpdateJobQueue</a> API operation.</p>

__Required Parameters__

* `computeEnvironment` __:__ `String`


-}
deleteComputeEnvironment :
    String
    -> AWS.Request DeleteComputeEnvironmentResponse
deleteComputeEnvironment computeEnvironment =
    AWS.Http.unsignedRequest
        "DeleteComputeEnvironment"
        "POST"
        "/v1/deletecomputeenvironment"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteComputeEnvironmentResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified job queue. You must first disable submissions for a queue with the <a>UpdateJobQueue</a> operation and terminate any jobs that have not completed with the <a>TerminateJob</a>.</p> <p>It is not necessary to disassociate compute environments from a queue before submitting a <code>DeleteJobQueue</code> request. </p>

__Required Parameters__

* `jobQueue` __:__ `String`


-}
deleteJobQueue :
    String
    -> AWS.Request DeleteJobQueueResponse
deleteJobQueue jobQueue =
    AWS.Http.unsignedRequest
        "DeleteJobQueue"
        "POST"
        "/v1/deletejobqueue"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteJobQueueResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deregisters an AWS Batch job definition.</p>

__Required Parameters__

* `jobDefinition` __:__ `String`


-}
deregisterJobDefinition :
    String
    -> AWS.Request DeregisterJobDefinitionResponse
deregisterJobDefinition jobDefinition =
    AWS.Http.unsignedRequest
        "DeregisterJobDefinition"
        "POST"
        "/v1/deregisterjobdefinition"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterJobDefinitionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes one or more of your compute environments.</p> <p>If you are using an unmanaged compute environment, you can use the <code>DescribeComputeEnvironment</code> operation to determine the <code>ecsClusterArn</code> that you should launch your Amazon ECS container instances into.</p>

__Required Parameters__



-}
describeComputeEnvironments :
    (DescribeComputeEnvironmentsOptions -> DescribeComputeEnvironmentsOptions)
    -> AWS.Request DescribeComputeEnvironmentsResponse
describeComputeEnvironments setOptions =
  let
    options = setOptions (DescribeComputeEnvironmentsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeComputeEnvironments"
        "POST"
        "/v1/describecomputeenvironments"
        (AWS.Http.JsonBody
            JE.null
        )
        describeComputeEnvironmentsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeComputeEnvironments request
-}
type alias DescribeComputeEnvironmentsOptions =
    { computeEnvironments : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes a list of job definitions. You can specify a <code>status</code> (such as <code>ACTIVE</code>) to only return job definitions that match that status.</p>

__Required Parameters__



-}
describeJobDefinitions :
    (DescribeJobDefinitionsOptions -> DescribeJobDefinitionsOptions)
    -> AWS.Request DescribeJobDefinitionsResponse
describeJobDefinitions setOptions =
  let
    options = setOptions (DescribeJobDefinitionsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeJobDefinitions"
        "POST"
        "/v1/describejobdefinitions"
        (AWS.Http.JsonBody
            JE.null
        )
        describeJobDefinitionsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeJobDefinitions request
-}
type alias DescribeJobDefinitionsOptions =
    { jobDefinitions : Maybe (List String)
    , maxResults : Maybe Int
    , jobDefinitionName : Maybe String
    , status : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your job queues.</p>

__Required Parameters__



-}
describeJobQueues :
    (DescribeJobQueuesOptions -> DescribeJobQueuesOptions)
    -> AWS.Request DescribeJobQueuesResponse
describeJobQueues setOptions =
  let
    options = setOptions (DescribeJobQueuesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeJobQueues"
        "POST"
        "/v1/describejobqueues"
        (AWS.Http.JsonBody
            JE.null
        )
        describeJobQueuesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeJobQueues request
-}
type alias DescribeJobQueuesOptions =
    { jobQueues : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes a list of AWS Batch jobs.</p>

__Required Parameters__

* `jobs` __:__ `(List String)`


-}
describeJobs :
    (List String)
    -> AWS.Request DescribeJobsResponse
describeJobs jobs =
    AWS.Http.unsignedRequest
        "DescribeJobs"
        "POST"
        "/v1/describejobs"
        (AWS.Http.JsonBody
            JE.null
        )
        describeJobsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of task jobs for a specified job queue. You can filter the results by job status with the <code>jobStatus</code> parameter.</p>

__Required Parameters__

* `jobQueue` __:__ `String`


-}
listJobs :
    String
    -> (ListJobsOptions -> ListJobsOptions)
    -> AWS.Request ListJobsResponse
listJobs jobQueue setOptions =
  let
    options = setOptions (ListJobsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListJobs"
        "POST"
        "/v1/listjobs"
        (AWS.Http.JsonBody
            JE.null
        )
        listJobsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    { jobStatus : Maybe JobStatus
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Registers an AWS Batch job definition. </p>

__Required Parameters__

* `jobDefinitionName` __:__ `String`
* `type_` __:__ `JobDefinitionType`


-}
registerJobDefinition :
    String
    -> JobDefinitionType
    -> (RegisterJobDefinitionOptions -> RegisterJobDefinitionOptions)
    -> AWS.Request RegisterJobDefinitionResponse
registerJobDefinition jobDefinitionName type_ setOptions =
  let
    options = setOptions (RegisterJobDefinitionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterJobDefinition"
        "POST"
        "/v1/registerjobdefinition"
        (AWS.Http.JsonBody
            JE.null
        )
        registerJobDefinitionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a registerJobDefinition request
-}
type alias RegisterJobDefinitionOptions =
    { parameters : Maybe (Dict String String)
    , containerProperties : Maybe ContainerProperties
    }



{-| <p>Submits an AWS Batch job from a job definition. Parameters specified during <a>SubmitJob</a> override parameters defined in the job definition. </p>

__Required Parameters__

* `jobName` __:__ `String`
* `jobQueue` __:__ `String`
* `jobDefinition` __:__ `String`


-}
submitJob :
    String
    -> String
    -> String
    -> (SubmitJobOptions -> SubmitJobOptions)
    -> AWS.Request SubmitJobResponse
submitJob jobName jobQueue jobDefinition setOptions =
  let
    options = setOptions (SubmitJobOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SubmitJob"
        "POST"
        "/v1/submitjob"
        (AWS.Http.JsonBody
            JE.null
        )
        submitJobResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a submitJob request
-}
type alias SubmitJobOptions =
    { dependsOn : Maybe (List JobDependency)
    , parameters : Maybe (Dict String String)
    , containerOverrides : Maybe ContainerOverrides
    }



{-| <p>Terminates jobs in a job queue. Jobs that are in the <code>STARTING</code> or <code>RUNNING</code> state are terminated, which causes them to transition to <code>FAILED</code>. Jobs that have not progressed to the <code>STARTING</code> state are cancelled.</p>

__Required Parameters__

* `jobId` __:__ `String`
* `reason` __:__ `String`


-}
terminateJob :
    String
    -> String
    -> AWS.Request TerminateJobResponse
terminateJob jobId reason =
    AWS.Http.unsignedRequest
        "TerminateJob"
        "POST"
        "/v1/terminatejob"
        (AWS.Http.JsonBody
            JE.null
        )
        terminateJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates an AWS Batch compute environment.</p>

__Required Parameters__

* `computeEnvironment` __:__ `String`


-}
updateComputeEnvironment :
    String
    -> (UpdateComputeEnvironmentOptions -> UpdateComputeEnvironmentOptions)
    -> AWS.Request UpdateComputeEnvironmentResponse
updateComputeEnvironment computeEnvironment setOptions =
  let
    options = setOptions (UpdateComputeEnvironmentOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateComputeEnvironment"
        "POST"
        "/v1/updatecomputeenvironment"
        (AWS.Http.JsonBody
            JE.null
        )
        updateComputeEnvironmentResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateComputeEnvironment request
-}
type alias UpdateComputeEnvironmentOptions =
    { state : Maybe CEState
    , computeResources : Maybe ComputeResourceUpdate
    , serviceRole : Maybe String
    }



{-| <p>Updates a job queue.</p>

__Required Parameters__

* `jobQueue` __:__ `String`


-}
updateJobQueue :
    String
    -> (UpdateJobQueueOptions -> UpdateJobQueueOptions)
    -> AWS.Request UpdateJobQueueResponse
updateJobQueue jobQueue setOptions =
  let
    options = setOptions (UpdateJobQueueOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateJobQueue"
        "POST"
        "/v1/updatejobqueue"
        (AWS.Http.JsonBody
            JE.null
        )
        updateJobQueueResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateJobQueue request
-}
type alias UpdateJobQueueOptions =
    { state : Maybe JQState
    , priority : Maybe Int
    , computeEnvironmentOrder : Maybe (List ComputeEnvironmentOrder)
    }




{-| One of

* `CEState_ENABLED`
* `CEState_DISABLED`

-}
type CEState
    = CEState_ENABLED
    | CEState_DISABLED



cEStateDecoder : JD.Decoder CEState
cEStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed CEState_ENABLED

                    "DISABLED" ->
                        JD.succeed CEState_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CEStatus_CREATING`
* `CEStatus_UPDATING`
* `CEStatus_DELETING`
* `CEStatus_DELETED`
* `CEStatus_VALID`
* `CEStatus_INVALID`

-}
type CEStatus
    = CEStatus_CREATING
    | CEStatus_UPDATING
    | CEStatus_DELETING
    | CEStatus_DELETED
    | CEStatus_VALID
    | CEStatus_INVALID



cEStatusDecoder : JD.Decoder CEStatus
cEStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed CEStatus_CREATING

                    "UPDATING" ->
                        JD.succeed CEStatus_UPDATING

                    "DELETING" ->
                        JD.succeed CEStatus_DELETING

                    "DELETED" ->
                        JD.succeed CEStatus_DELETED

                    "VALID" ->
                        JD.succeed CEStatus_VALID

                    "INVALID" ->
                        JD.succeed CEStatus_INVALID


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CEType_MANAGED`
* `CEType_UNMANAGED`

-}
type CEType
    = CEType_MANAGED
    | CEType_UNMANAGED



cETypeDecoder : JD.Decoder CEType
cETypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MANAGED" ->
                        JD.succeed CEType_MANAGED

                    "UNMANAGED" ->
                        JD.succeed CEType_UNMANAGED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CRType_EC2`
* `CRType_SPOT`

-}
type CRType
    = CRType_EC2
    | CRType_SPOT



cRTypeDecoder : JD.Decoder CRType
cRTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EC2" ->
                        JD.succeed CRType_EC2

                    "SPOT" ->
                        JD.succeed CRType_SPOT


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from cancelJob
-}
type alias CancelJobResponse =
    { 
    }



cancelJobResponseDecoder : JD.Decoder CancelJobResponse
cancelJobResponseDecoder =
    JDP.decode CancelJobResponse



{-| <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid. </p>
-}
type alias ClientException =
    { message : Maybe String
    }



clientExceptionDecoder : JD.Decoder ClientException
clientExceptionDecoder =
    JDP.decode ClientException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An object representing an AWS Batch compute environment.</p>
-}
type alias ComputeEnvironmentDetail =
    { computeEnvironmentName : String
    , computeEnvironmentArn : String
    , ecsClusterArn : String
    , type_ : Maybe CEType
    , state : Maybe CEState
    , status : Maybe CEStatus
    , statusReason : Maybe String
    , computeResources : Maybe ComputeResource
    , serviceRole : Maybe String
    }



computeEnvironmentDetailDecoder : JD.Decoder ComputeEnvironmentDetail
computeEnvironmentDetailDecoder =
    JDP.decode ComputeEnvironmentDetail
        |> JDP.required "computeEnvironmentName" JD.string
        |> JDP.required "computeEnvironmentArn" JD.string
        |> JDP.required "ecsClusterArn" JD.string
        |> JDP.optional "type_" (JD.nullable cETypeDecoder) Nothing
        |> JDP.optional "state" (JD.nullable cEStateDecoder) Nothing
        |> JDP.optional "status" (JD.nullable cEStatusDecoder) Nothing
        |> JDP.optional "statusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeResources" (JD.nullable computeResourceDecoder) Nothing
        |> JDP.optional "serviceRole" (JD.nullable JD.string) Nothing




{-| <p>The order in which compute environments are tried for job placement within a queue. Compute environments are tried in ascending order. For example, if two compute environments are associated with a job queue, the compute environment with a lower order integer value is tried for job placement first.</p>
-}
type alias ComputeEnvironmentOrder =
    { order : Int
    , computeEnvironment : String
    }



computeEnvironmentOrderDecoder : JD.Decoder ComputeEnvironmentOrder
computeEnvironmentOrderDecoder =
    JDP.decode ComputeEnvironmentOrder
        |> JDP.required "order" JD.int
        |> JDP.required "computeEnvironment" JD.string




{-| <p>An object representing an AWS Batch compute resource.</p>
-}
type alias ComputeResource =
    { type_ : CRType
    , minvCpus : Int
    , maxvCpus : Int
    , desiredvCpus : Maybe Int
    , instanceTypes : (List String)
    , subnets : (List String)
    , securityGroupIds : (List String)
    , ec2KeyPair : Maybe String
    , instanceRole : String
    , tags : Maybe (Dict String String)
    , bidPercentage : Maybe Int
    , spotIamFleetRole : Maybe String
    }



computeResourceDecoder : JD.Decoder ComputeResource
computeResourceDecoder =
    JDP.decode ComputeResource
        |> JDP.required "type_" cRTypeDecoder
        |> JDP.required "minvCpus" JD.int
        |> JDP.required "maxvCpus" JD.int
        |> JDP.optional "desiredvCpus" (JD.nullable JD.int) Nothing
        |> JDP.required "instanceTypes" (JD.list JD.string)
        |> JDP.required "subnets" (JD.list JD.string)
        |> JDP.required "securityGroupIds" (JD.list JD.string)
        |> JDP.optional "ec2KeyPair" (JD.nullable JD.string) Nothing
        |> JDP.required "instanceRole" JD.string
        |> JDP.optional "tags" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "bidPercentage" (JD.nullable JD.int) Nothing
        |> JDP.optional "spotIamFleetRole" (JD.nullable JD.string) Nothing




{-| <p>An object representing the attributes of a compute environment that can be updated.</p>
-}
type alias ComputeResourceUpdate =
    { minvCpus : Maybe Int
    , maxvCpus : Maybe Int
    , desiredvCpus : Maybe Int
    }



computeResourceUpdateDecoder : JD.Decoder ComputeResourceUpdate
computeResourceUpdateDecoder =
    JDP.decode ComputeResourceUpdate
        |> JDP.optional "minvCpus" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxvCpus" (JD.nullable JD.int) Nothing
        |> JDP.optional "desiredvCpus" (JD.nullable JD.int) Nothing




{-| <p>An object representing the details of a container that is part of a job.</p>
-}
type alias ContainerDetail =
    { image : Maybe String
    , vcpus : Maybe Int
    , memory : Maybe Int
    , command : Maybe (List String)
    , jobRoleArn : Maybe String
    , volumes : Maybe (List Volume)
    , environment : Maybe (List KeyValuePair)
    , mountPoints : Maybe (List MountPoint)
    , readonlyRootFilesystem : Maybe Bool
    , ulimits : Maybe (List Ulimit)
    , privileged : Maybe Bool
    , user : Maybe String
    , exitCode : Maybe Int
    , reason : Maybe String
    , containerInstanceArn : Maybe String
    }



containerDetailDecoder : JD.Decoder ContainerDetail
containerDetailDecoder =
    JDP.decode ContainerDetail
        |> JDP.optional "image" (JD.nullable JD.string) Nothing
        |> JDP.optional "vcpus" (JD.nullable JD.int) Nothing
        |> JDP.optional "memory" (JD.nullable JD.int) Nothing
        |> JDP.optional "command" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "jobRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumes" (JD.nullable (JD.list volumeDecoder)) Nothing
        |> JDP.optional "environment" (JD.nullable (JD.list keyValuePairDecoder)) Nothing
        |> JDP.optional "mountPoints" (JD.nullable (JD.list mountPointDecoder)) Nothing
        |> JDP.optional "readonlyRootFilesystem" (JD.nullable JD.bool) Nothing
        |> JDP.optional "ulimits" (JD.nullable (JD.list ulimitDecoder)) Nothing
        |> JDP.optional "privileged" (JD.nullable JD.bool) Nothing
        |> JDP.optional "user" (JD.nullable JD.string) Nothing
        |> JDP.optional "exitCode" (JD.nullable JD.int) Nothing
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "containerInstanceArn" (JD.nullable JD.string) Nothing




{-| <p>The overrides that should be sent to a container.</p>
-}
type alias ContainerOverrides =
    { vcpus : Maybe Int
    , memory : Maybe Int
    , command : Maybe (List String)
    , environment : Maybe (List KeyValuePair)
    }



containerOverridesDecoder : JD.Decoder ContainerOverrides
containerOverridesDecoder =
    JDP.decode ContainerOverrides
        |> JDP.optional "vcpus" (JD.nullable JD.int) Nothing
        |> JDP.optional "memory" (JD.nullable JD.int) Nothing
        |> JDP.optional "command" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "environment" (JD.nullable (JD.list keyValuePairDecoder)) Nothing




{-| <p>Container properties are used in job definitions to describe the container that is launched as part of a job.</p>
-}
type alias ContainerProperties =
    { image : String
    , vcpus : Int
    , memory : Int
    , command : Maybe (List String)
    , jobRoleArn : Maybe String
    , volumes : Maybe (List Volume)
    , environment : Maybe (List KeyValuePair)
    , mountPoints : Maybe (List MountPoint)
    , readonlyRootFilesystem : Maybe Bool
    , privileged : Maybe Bool
    , ulimits : Maybe (List Ulimit)
    , user : Maybe String
    }



containerPropertiesDecoder : JD.Decoder ContainerProperties
containerPropertiesDecoder =
    JDP.decode ContainerProperties
        |> JDP.required "image" JD.string
        |> JDP.required "vcpus" JD.int
        |> JDP.required "memory" JD.int
        |> JDP.optional "command" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "jobRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumes" (JD.nullable (JD.list volumeDecoder)) Nothing
        |> JDP.optional "environment" (JD.nullable (JD.list keyValuePairDecoder)) Nothing
        |> JDP.optional "mountPoints" (JD.nullable (JD.list mountPointDecoder)) Nothing
        |> JDP.optional "readonlyRootFilesystem" (JD.nullable JD.bool) Nothing
        |> JDP.optional "privileged" (JD.nullable JD.bool) Nothing
        |> JDP.optional "ulimits" (JD.nullable (JD.list ulimitDecoder)) Nothing
        |> JDP.optional "user" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createComputeEnvironment
-}
type alias CreateComputeEnvironmentResponse =
    { computeEnvironmentName : Maybe String
    , computeEnvironmentArn : Maybe String
    }



createComputeEnvironmentResponseDecoder : JD.Decoder CreateComputeEnvironmentResponse
createComputeEnvironmentResponseDecoder =
    JDP.decode CreateComputeEnvironmentResponse
        |> JDP.optional "computeEnvironmentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeEnvironmentArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createJobQueue
-}
type alias CreateJobQueueResponse =
    { jobQueueName : String
    , jobQueueArn : String
    }



createJobQueueResponseDecoder : JD.Decoder CreateJobQueueResponse
createJobQueueResponseDecoder =
    JDP.decode CreateJobQueueResponse
        |> JDP.required "jobQueueName" JD.string
        |> JDP.required "jobQueueArn" JD.string




{-| Type of HTTP response from deleteComputeEnvironment
-}
type alias DeleteComputeEnvironmentResponse =
    { 
    }



deleteComputeEnvironmentResponseDecoder : JD.Decoder DeleteComputeEnvironmentResponse
deleteComputeEnvironmentResponseDecoder =
    JDP.decode DeleteComputeEnvironmentResponse



{-| Type of HTTP response from deleteJobQueue
-}
type alias DeleteJobQueueResponse =
    { 
    }



deleteJobQueueResponseDecoder : JD.Decoder DeleteJobQueueResponse
deleteJobQueueResponseDecoder =
    JDP.decode DeleteJobQueueResponse



{-| Type of HTTP response from deregisterJobDefinition
-}
type alias DeregisterJobDefinitionResponse =
    { 
    }



deregisterJobDefinitionResponseDecoder : JD.Decoder DeregisterJobDefinitionResponse
deregisterJobDefinitionResponseDecoder =
    JDP.decode DeregisterJobDefinitionResponse



{-| Type of HTTP response from describeComputeEnvironments
-}
type alias DescribeComputeEnvironmentsResponse =
    { computeEnvironments : Maybe (List ComputeEnvironmentDetail)
    , nextToken : Maybe String
    }



describeComputeEnvironmentsResponseDecoder : JD.Decoder DescribeComputeEnvironmentsResponse
describeComputeEnvironmentsResponseDecoder =
    JDP.decode DescribeComputeEnvironmentsResponse
        |> JDP.optional "computeEnvironments" (JD.nullable (JD.list computeEnvironmentDetailDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeJobDefinitions
-}
type alias DescribeJobDefinitionsResponse =
    { jobDefinitions : Maybe (List JobDefinition)
    , nextToken : Maybe String
    }



describeJobDefinitionsResponseDecoder : JD.Decoder DescribeJobDefinitionsResponse
describeJobDefinitionsResponseDecoder =
    JDP.decode DescribeJobDefinitionsResponse
        |> JDP.optional "jobDefinitions" (JD.nullable (JD.list jobDefinitionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeJobQueues
-}
type alias DescribeJobQueuesResponse =
    { jobQueues : Maybe (List JobQueueDetail)
    , nextToken : Maybe String
    }



describeJobQueuesResponseDecoder : JD.Decoder DescribeJobQueuesResponse
describeJobQueuesResponseDecoder =
    JDP.decode DescribeJobQueuesResponse
        |> JDP.optional "jobQueues" (JD.nullable (JD.list jobQueueDetailDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeJobs
-}
type alias DescribeJobsResponse =
    { jobs : Maybe (List JobDetail)
    }



describeJobsResponseDecoder : JD.Decoder DescribeJobsResponse
describeJobsResponseDecoder =
    JDP.decode DescribeJobsResponse
        |> JDP.optional "jobs" (JD.nullable (JD.list jobDetailDecoder)) Nothing




{-| <p>The contents of the <code>host</code> parameter determine whether your data volume persists on the host container instance and where it is stored. If the host parameter is empty, then the Docker daemon assigns a host path for your data volume, but the data is not guaranteed to persist after the containers associated with it stop running.</p>
-}
type alias Host =
    { sourcePath : Maybe String
    }



hostDecoder : JD.Decoder Host
hostDecoder =
    JDP.decode Host
        |> JDP.optional "sourcePath" (JD.nullable JD.string) Nothing




{-| One of

* `JQState_ENABLED`
* `JQState_DISABLED`

-}
type JQState
    = JQState_ENABLED
    | JQState_DISABLED



jQStateDecoder : JD.Decoder JQState
jQStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed JQState_ENABLED

                    "DISABLED" ->
                        JD.succeed JQState_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `JQStatus_CREATING`
* `JQStatus_UPDATING`
* `JQStatus_DELETING`
* `JQStatus_DELETED`
* `JQStatus_VALID`
* `JQStatus_INVALID`

-}
type JQStatus
    = JQStatus_CREATING
    | JQStatus_UPDATING
    | JQStatus_DELETING
    | JQStatus_DELETED
    | JQStatus_VALID
    | JQStatus_INVALID



jQStatusDecoder : JD.Decoder JQStatus
jQStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATING" ->
                        JD.succeed JQStatus_CREATING

                    "UPDATING" ->
                        JD.succeed JQStatus_UPDATING

                    "DELETING" ->
                        JD.succeed JQStatus_DELETING

                    "DELETED" ->
                        JD.succeed JQStatus_DELETED

                    "VALID" ->
                        JD.succeed JQStatus_VALID

                    "INVALID" ->
                        JD.succeed JQStatus_INVALID


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An object representing an AWS Batch job definition.</p>
-}
type alias JobDefinition =
    { jobDefinitionName : String
    , jobDefinitionArn : String
    , revision : Int
    , status : Maybe String
    , type_ : String
    , parameters : Maybe (Dict String String)
    , containerProperties : Maybe ContainerProperties
    }



jobDefinitionDecoder : JD.Decoder JobDefinition
jobDefinitionDecoder =
    JDP.decode JobDefinition
        |> JDP.required "jobDefinitionName" JD.string
        |> JDP.required "jobDefinitionArn" JD.string
        |> JDP.required "revision" JD.int
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.required "type_" JD.string
        |> JDP.optional "parameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "containerProperties" (JD.nullable containerPropertiesDecoder) Nothing




{-| One of

* `JobDefinitionType_container`

-}
type JobDefinitionType
    = JobDefinitionType_container



jobDefinitionTypeDecoder : JD.Decoder JobDefinitionType
jobDefinitionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "container" ->
                        JD.succeed JobDefinitionType_container


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An object representing an AWS Batch job dependency.</p>
-}
type alias JobDependency =
    { jobId : Maybe String
    }



jobDependencyDecoder : JD.Decoder JobDependency
jobDependencyDecoder =
    JDP.decode JobDependency
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing




{-| <p>An object representing an AWS Batch job.</p>
-}
type alias JobDetail =
    { jobName : String
    , jobId : String
    , jobQueue : String
    , status : JobStatus
    , statusReason : Maybe String
    , createdAt : Maybe Int
    , startedAt : Int
    , stoppedAt : Maybe Int
    , dependsOn : Maybe (List JobDependency)
    , jobDefinition : String
    , parameters : Maybe (Dict String String)
    , container : Maybe ContainerDetail
    }



jobDetailDecoder : JD.Decoder JobDetail
jobDetailDecoder =
    JDP.decode JobDetail
        |> JDP.required "jobName" JD.string
        |> JDP.required "jobId" JD.string
        |> JDP.required "jobQueue" JD.string
        |> JDP.required "status" jobStatusDecoder
        |> JDP.optional "statusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.int) Nothing
        |> JDP.required "startedAt" JD.int
        |> JDP.optional "stoppedAt" (JD.nullable JD.int) Nothing
        |> JDP.optional "dependsOn" (JD.nullable (JD.list jobDependencyDecoder)) Nothing
        |> JDP.required "jobDefinition" JD.string
        |> JDP.optional "parameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "container" (JD.nullable containerDetailDecoder) Nothing




{-| <p>An object representing the details of an AWS Batch job queue.</p>
-}
type alias JobQueueDetail =
    { jobQueueName : String
    , jobQueueArn : String
    , state : JQState
    , status : Maybe JQStatus
    , statusReason : Maybe String
    , priority : Int
    , computeEnvironmentOrder : (List ComputeEnvironmentOrder)
    }



jobQueueDetailDecoder : JD.Decoder JobQueueDetail
jobQueueDetailDecoder =
    JDP.decode JobQueueDetail
        |> JDP.required "jobQueueName" JD.string
        |> JDP.required "jobQueueArn" JD.string
        |> JDP.required "state" jQStateDecoder
        |> JDP.optional "status" (JD.nullable jQStatusDecoder) Nothing
        |> JDP.optional "statusReason" (JD.nullable JD.string) Nothing
        |> JDP.required "priority" JD.int
        |> JDP.required "computeEnvironmentOrder" (JD.list computeEnvironmentOrderDecoder)




{-| One of

* `JobStatus_SUBMITTED`
* `JobStatus_PENDING`
* `JobStatus_RUNNABLE`
* `JobStatus_STARTING`
* `JobStatus_RUNNING`
* `JobStatus_SUCCEEDED`
* `JobStatus_FAILED`

-}
type JobStatus
    = JobStatus_SUBMITTED
    | JobStatus_PENDING
    | JobStatus_RUNNABLE
    | JobStatus_STARTING
    | JobStatus_RUNNING
    | JobStatus_SUCCEEDED
    | JobStatus_FAILED



jobStatusDecoder : JD.Decoder JobStatus
jobStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUBMITTED" ->
                        JD.succeed JobStatus_SUBMITTED

                    "PENDING" ->
                        JD.succeed JobStatus_PENDING

                    "RUNNABLE" ->
                        JD.succeed JobStatus_RUNNABLE

                    "STARTING" ->
                        JD.succeed JobStatus_STARTING

                    "RUNNING" ->
                        JD.succeed JobStatus_RUNNING

                    "SUCCEEDED" ->
                        JD.succeed JobStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed JobStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An object representing summary details of a job.</p>
-}
type alias JobSummary =
    { jobId : String
    , jobName : String
    }



jobSummaryDecoder : JD.Decoder JobSummary
jobSummaryDecoder =
    JDP.decode JobSummary
        |> JDP.required "jobId" JD.string
        |> JDP.required "jobName" JD.string




{-| <p>A key-value pair object.</p>
-}
type alias KeyValuePair =
    { name : Maybe String
    , value : Maybe String
    }



keyValuePairDecoder : JD.Decoder KeyValuePair
keyValuePairDecoder =
    JDP.decode KeyValuePair
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listJobs
-}
type alias ListJobsResponse =
    { jobSummaryList : (List JobSummary)
    , nextToken : Maybe String
    }



listJobsResponseDecoder : JD.Decoder ListJobsResponse
listJobsResponseDecoder =
    JDP.decode ListJobsResponse
        |> JDP.required "jobSummaryList" (JD.list jobSummaryDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Details on a volume mount point that is used in a job's container properties.</p>
-}
type alias MountPoint =
    { containerPath : Maybe String
    , readOnly : Maybe Bool
    , sourceVolume : Maybe String
    }



mountPointDecoder : JD.Decoder MountPoint
mountPointDecoder =
    JDP.decode MountPoint
        |> JDP.optional "containerPath" (JD.nullable JD.string) Nothing
        |> JDP.optional "readOnly" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sourceVolume" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerJobDefinition
-}
type alias RegisterJobDefinitionResponse =
    { jobDefinitionName : String
    , jobDefinitionArn : String
    , revision : Int
    }



registerJobDefinitionResponseDecoder : JD.Decoder RegisterJobDefinitionResponse
registerJobDefinitionResponseDecoder =
    JDP.decode RegisterJobDefinitionResponse
        |> JDP.required "jobDefinitionName" JD.string
        |> JDP.required "jobDefinitionArn" JD.string
        |> JDP.required "revision" JD.int




{-| <p>These errors are usually caused by a server issue.</p>
-}
type alias ServerException =
    { message : Maybe String
    }



serverExceptionDecoder : JD.Decoder ServerException
serverExceptionDecoder =
    JDP.decode ServerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from submitJob
-}
type alias SubmitJobResponse =
    { jobName : String
    , jobId : String
    }



submitJobResponseDecoder : JD.Decoder SubmitJobResponse
submitJobResponseDecoder =
    JDP.decode SubmitJobResponse
        |> JDP.required "jobName" JD.string
        |> JDP.required "jobId" JD.string




{-| Type of HTTP response from terminateJob
-}
type alias TerminateJobResponse =
    { 
    }



terminateJobResponseDecoder : JD.Decoder TerminateJobResponse
terminateJobResponseDecoder =
    JDP.decode TerminateJobResponse



{-| <p>The <code>ulimit</code> settings to pass to the container.</p>
-}
type alias Ulimit =
    { hardLimit : Int
    , name : String
    , softLimit : Int
    }



ulimitDecoder : JD.Decoder Ulimit
ulimitDecoder =
    JDP.decode Ulimit
        |> JDP.required "hardLimit" JD.int
        |> JDP.required "name" JD.string
        |> JDP.required "softLimit" JD.int




{-| Type of HTTP response from updateComputeEnvironment
-}
type alias UpdateComputeEnvironmentResponse =
    { computeEnvironmentName : Maybe String
    , computeEnvironmentArn : Maybe String
    }



updateComputeEnvironmentResponseDecoder : JD.Decoder UpdateComputeEnvironmentResponse
updateComputeEnvironmentResponseDecoder =
    JDP.decode UpdateComputeEnvironmentResponse
        |> JDP.optional "computeEnvironmentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "computeEnvironmentArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateJobQueue
-}
type alias UpdateJobQueueResponse =
    { jobQueueName : Maybe String
    , jobQueueArn : Maybe String
    }



updateJobQueueResponseDecoder : JD.Decoder UpdateJobQueueResponse
updateJobQueueResponseDecoder =
    JDP.decode UpdateJobQueueResponse
        |> JDP.optional "jobQueueName" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobQueueArn" (JD.nullable JD.string) Nothing




{-| <p>A data volume used in a job's container properties.</p>
-}
type alias Volume =
    { host : Maybe Host
    , name : Maybe String
    }



volumeDecoder : JD.Decoder Volume
volumeDecoder =
    JDP.decode Volume
        |> JDP.optional "host" (JD.nullable hostDecoder) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




