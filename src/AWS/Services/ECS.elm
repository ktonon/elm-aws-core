module AWS.Services.ECS
    exposing
        ( config
        , createCluster
        , CreateClusterOptions
        , createService
        , CreateServiceOptions
        , deleteAttributes
        , DeleteAttributesOptions
        , deleteCluster
        , deleteService
        , DeleteServiceOptions
        , deregisterContainerInstance
        , DeregisterContainerInstanceOptions
        , deregisterTaskDefinition
        , describeClusters
        , DescribeClustersOptions
        , describeContainerInstances
        , DescribeContainerInstancesOptions
        , describeServices
        , DescribeServicesOptions
        , describeTaskDefinition
        , describeTasks
        , DescribeTasksOptions
        , discoverPollEndpoint
        , DiscoverPollEndpointOptions
        , listAttributes
        , ListAttributesOptions
        , listClusters
        , ListClustersOptions
        , listContainerInstances
        , ListContainerInstancesOptions
        , listServices
        , ListServicesOptions
        , listTaskDefinitionFamilies
        , ListTaskDefinitionFamiliesOptions
        , listTaskDefinitions
        , ListTaskDefinitionsOptions
        , listTasks
        , ListTasksOptions
        , putAttributes
        , PutAttributesOptions
        , registerContainerInstance
        , RegisterContainerInstanceOptions
        , registerTaskDefinition
        , RegisterTaskDefinitionOptions
        , runTask
        , RunTaskOptions
        , startTask
        , StartTaskOptions
        , stopTask
        , StopTaskOptions
        , submitContainerStateChange
        , SubmitContainerStateChangeOptions
        , submitTaskStateChange
        , SubmitTaskStateChangeOptions
        , updateContainerAgent
        , UpdateContainerAgentOptions
        , updateContainerInstancesState
        , UpdateContainerInstancesStateOptions
        , updateService
        , UpdateServiceOptions
        , AgentUpdateStatus(..)
        , Attribute
        , AttributeLimitExceededException
        , ClientException
        , Cluster
        , ClusterContainsContainerInstancesException
        , ClusterContainsServicesException
        , ClusterNotFoundException
        , Container
        , ContainerDefinition
        , ContainerInstance
        , ContainerInstanceStatus(..)
        , ContainerOverride
        , CreateClusterResponse
        , CreateServiceResponse
        , DeleteAttributesResponse
        , DeleteClusterResponse
        , DeleteServiceResponse
        , Deployment
        , DeploymentConfiguration
        , DeregisterContainerInstanceResponse
        , DeregisterTaskDefinitionResponse
        , DescribeClustersResponse
        , DescribeContainerInstancesResponse
        , DescribeServicesResponse
        , DescribeTaskDefinitionResponse
        , DescribeTasksResponse
        , DesiredStatus(..)
        , DiscoverPollEndpointResponse
        , Failure
        , HostEntry
        , HostVolumeProperties
        , InvalidParameterException
        , KeyValuePair
        , ListAttributesResponse
        , ListClustersResponse
        , ListContainerInstancesResponse
        , ListServicesResponse
        , ListTaskDefinitionFamiliesResponse
        , ListTaskDefinitionsResponse
        , ListTasksResponse
        , LoadBalancer
        , LogConfiguration
        , LogDriver(..)
        , MissingVersionException
        , MountPoint
        , NetworkBinding
        , NetworkMode(..)
        , NoUpdateAvailableException
        , PlacementConstraint
        , PlacementConstraintType(..)
        , PlacementStrategy
        , PlacementStrategyType(..)
        , PortMapping
        , PutAttributesResponse
        , RegisterContainerInstanceResponse
        , RegisterTaskDefinitionResponse
        , Resource
        , RunTaskResponse
        , ServerException
        , Service
        , ServiceEvent
        , ServiceNotActiveException
        , ServiceNotFoundException
        , SortOrder(..)
        , StartTaskResponse
        , StopTaskResponse
        , SubmitContainerStateChangeResponse
        , SubmitTaskStateChangeResponse
        , TargetNotFoundException
        , TargetType(..)
        , Task
        , TaskDefinition
        , TaskDefinitionFamilyStatus(..)
        , TaskDefinitionPlacementConstraint
        , TaskDefinitionPlacementConstraintType(..)
        , TaskDefinitionStatus(..)
        , TaskOverride
        , TransportProtocol(..)
        , Ulimit
        , UlimitName(..)
        , UpdateContainerAgentResponse
        , UpdateContainerInstancesStateResponse
        , UpdateInProgressException
        , UpdateServiceResponse
        , VersionInfo
        , Volume
        , VolumeFrom
        )

{-| <p>Amazon EC2 Container Service (Amazon ECS) is a highly scalable, fast, container management service that makes it easy to run, stop, and manage Docker containers on a cluster of EC2 instances. Amazon ECS lets you launch and stop container-enabled applications with simple API calls, allows you to get the state of your cluster from a centralized service, and gives you access to many familiar Amazon EC2 features like security groups, Amazon EBS volumes, and IAM roles.</p> <p>You can use Amazon ECS to schedule the placement of containers across your cluster based on your resource needs, isolation policies, and availability requirements. Amazon EC2 Container Service eliminates the need for you to operate your own cluster management and configuration management systems or worry about scaling your management infrastructure.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createCluster](#createCluster)
* [CreateClusterOptions](#CreateClusterOptions)
* [createService](#createService)
* [CreateServiceOptions](#CreateServiceOptions)
* [deleteAttributes](#deleteAttributes)
* [DeleteAttributesOptions](#DeleteAttributesOptions)
* [deleteCluster](#deleteCluster)
* [deleteService](#deleteService)
* [DeleteServiceOptions](#DeleteServiceOptions)
* [deregisterContainerInstance](#deregisterContainerInstance)
* [DeregisterContainerInstanceOptions](#DeregisterContainerInstanceOptions)
* [deregisterTaskDefinition](#deregisterTaskDefinition)
* [describeClusters](#describeClusters)
* [DescribeClustersOptions](#DescribeClustersOptions)
* [describeContainerInstances](#describeContainerInstances)
* [DescribeContainerInstancesOptions](#DescribeContainerInstancesOptions)
* [describeServices](#describeServices)
* [DescribeServicesOptions](#DescribeServicesOptions)
* [describeTaskDefinition](#describeTaskDefinition)
* [describeTasks](#describeTasks)
* [DescribeTasksOptions](#DescribeTasksOptions)
* [discoverPollEndpoint](#discoverPollEndpoint)
* [DiscoverPollEndpointOptions](#DiscoverPollEndpointOptions)
* [listAttributes](#listAttributes)
* [ListAttributesOptions](#ListAttributesOptions)
* [listClusters](#listClusters)
* [ListClustersOptions](#ListClustersOptions)
* [listContainerInstances](#listContainerInstances)
* [ListContainerInstancesOptions](#ListContainerInstancesOptions)
* [listServices](#listServices)
* [ListServicesOptions](#ListServicesOptions)
* [listTaskDefinitionFamilies](#listTaskDefinitionFamilies)
* [ListTaskDefinitionFamiliesOptions](#ListTaskDefinitionFamiliesOptions)
* [listTaskDefinitions](#listTaskDefinitions)
* [ListTaskDefinitionsOptions](#ListTaskDefinitionsOptions)
* [listTasks](#listTasks)
* [ListTasksOptions](#ListTasksOptions)
* [putAttributes](#putAttributes)
* [PutAttributesOptions](#PutAttributesOptions)
* [registerContainerInstance](#registerContainerInstance)
* [RegisterContainerInstanceOptions](#RegisterContainerInstanceOptions)
* [registerTaskDefinition](#registerTaskDefinition)
* [RegisterTaskDefinitionOptions](#RegisterTaskDefinitionOptions)
* [runTask](#runTask)
* [RunTaskOptions](#RunTaskOptions)
* [startTask](#startTask)
* [StartTaskOptions](#StartTaskOptions)
* [stopTask](#stopTask)
* [StopTaskOptions](#StopTaskOptions)
* [submitContainerStateChange](#submitContainerStateChange)
* [SubmitContainerStateChangeOptions](#SubmitContainerStateChangeOptions)
* [submitTaskStateChange](#submitTaskStateChange)
* [SubmitTaskStateChangeOptions](#SubmitTaskStateChangeOptions)
* [updateContainerAgent](#updateContainerAgent)
* [UpdateContainerAgentOptions](#UpdateContainerAgentOptions)
* [updateContainerInstancesState](#updateContainerInstancesState)
* [UpdateContainerInstancesStateOptions](#UpdateContainerInstancesStateOptions)
* [updateService](#updateService)
* [UpdateServiceOptions](#UpdateServiceOptions)


@docs createCluster,CreateClusterOptions,createService,CreateServiceOptions,deleteAttributes,DeleteAttributesOptions,deleteCluster,deleteService,DeleteServiceOptions,deregisterContainerInstance,DeregisterContainerInstanceOptions,deregisterTaskDefinition,describeClusters,DescribeClustersOptions,describeContainerInstances,DescribeContainerInstancesOptions,describeServices,DescribeServicesOptions,describeTaskDefinition,describeTasks,DescribeTasksOptions,discoverPollEndpoint,DiscoverPollEndpointOptions,listAttributes,ListAttributesOptions,listClusters,ListClustersOptions,listContainerInstances,ListContainerInstancesOptions,listServices,ListServicesOptions,listTaskDefinitionFamilies,ListTaskDefinitionFamiliesOptions,listTaskDefinitions,ListTaskDefinitionsOptions,listTasks,ListTasksOptions,putAttributes,PutAttributesOptions,registerContainerInstance,RegisterContainerInstanceOptions,registerTaskDefinition,RegisterTaskDefinitionOptions,runTask,RunTaskOptions,startTask,StartTaskOptions,stopTask,StopTaskOptions,submitContainerStateChange,SubmitContainerStateChangeOptions,submitTaskStateChange,SubmitTaskStateChangeOptions,updateContainerAgent,UpdateContainerAgentOptions,updateContainerInstancesState,UpdateContainerInstancesStateOptions,updateService,UpdateServiceOptions

## Responses

* [CreateClusterResponse](#CreateClusterResponse)
* [CreateServiceResponse](#CreateServiceResponse)
* [DeleteAttributesResponse](#DeleteAttributesResponse)
* [DeleteClusterResponse](#DeleteClusterResponse)
* [DeleteServiceResponse](#DeleteServiceResponse)
* [DeregisterContainerInstanceResponse](#DeregisterContainerInstanceResponse)
* [DeregisterTaskDefinitionResponse](#DeregisterTaskDefinitionResponse)
* [DescribeClustersResponse](#DescribeClustersResponse)
* [DescribeContainerInstancesResponse](#DescribeContainerInstancesResponse)
* [DescribeServicesResponse](#DescribeServicesResponse)
* [DescribeTaskDefinitionResponse](#DescribeTaskDefinitionResponse)
* [DescribeTasksResponse](#DescribeTasksResponse)
* [DiscoverPollEndpointResponse](#DiscoverPollEndpointResponse)
* [ListAttributesResponse](#ListAttributesResponse)
* [ListClustersResponse](#ListClustersResponse)
* [ListContainerInstancesResponse](#ListContainerInstancesResponse)
* [ListServicesResponse](#ListServicesResponse)
* [ListTaskDefinitionFamiliesResponse](#ListTaskDefinitionFamiliesResponse)
* [ListTaskDefinitionsResponse](#ListTaskDefinitionsResponse)
* [ListTasksResponse](#ListTasksResponse)
* [PutAttributesResponse](#PutAttributesResponse)
* [RegisterContainerInstanceResponse](#RegisterContainerInstanceResponse)
* [RegisterTaskDefinitionResponse](#RegisterTaskDefinitionResponse)
* [RunTaskResponse](#RunTaskResponse)
* [StartTaskResponse](#StartTaskResponse)
* [StopTaskResponse](#StopTaskResponse)
* [SubmitContainerStateChangeResponse](#SubmitContainerStateChangeResponse)
* [SubmitTaskStateChangeResponse](#SubmitTaskStateChangeResponse)
* [UpdateContainerAgentResponse](#UpdateContainerAgentResponse)
* [UpdateContainerInstancesStateResponse](#UpdateContainerInstancesStateResponse)
* [UpdateServiceResponse](#UpdateServiceResponse)


@docs CreateClusterResponse,CreateServiceResponse,DeleteAttributesResponse,DeleteClusterResponse,DeleteServiceResponse,DeregisterContainerInstanceResponse,DeregisterTaskDefinitionResponse,DescribeClustersResponse,DescribeContainerInstancesResponse,DescribeServicesResponse,DescribeTaskDefinitionResponse,DescribeTasksResponse,DiscoverPollEndpointResponse,ListAttributesResponse,ListClustersResponse,ListContainerInstancesResponse,ListServicesResponse,ListTaskDefinitionFamiliesResponse,ListTaskDefinitionsResponse,ListTasksResponse,PutAttributesResponse,RegisterContainerInstanceResponse,RegisterTaskDefinitionResponse,RunTaskResponse,StartTaskResponse,StopTaskResponse,SubmitContainerStateChangeResponse,SubmitTaskStateChangeResponse,UpdateContainerAgentResponse,UpdateContainerInstancesStateResponse,UpdateServiceResponse

## Records

* [Attribute](#Attribute)
* [Cluster](#Cluster)
* [Container](#Container)
* [ContainerDefinition](#ContainerDefinition)
* [ContainerInstance](#ContainerInstance)
* [ContainerOverride](#ContainerOverride)
* [Deployment](#Deployment)
* [DeploymentConfiguration](#DeploymentConfiguration)
* [Failure](#Failure)
* [HostEntry](#HostEntry)
* [HostVolumeProperties](#HostVolumeProperties)
* [KeyValuePair](#KeyValuePair)
* [LoadBalancer](#LoadBalancer)
* [LogConfiguration](#LogConfiguration)
* [MountPoint](#MountPoint)
* [NetworkBinding](#NetworkBinding)
* [PlacementConstraint](#PlacementConstraint)
* [PlacementStrategy](#PlacementStrategy)
* [PortMapping](#PortMapping)
* [Resource](#Resource)
* [Service](#Service)
* [ServiceEvent](#ServiceEvent)
* [Task](#Task)
* [TaskDefinition](#TaskDefinition)
* [TaskDefinitionPlacementConstraint](#TaskDefinitionPlacementConstraint)
* [TaskOverride](#TaskOverride)
* [Ulimit](#Ulimit)
* [VersionInfo](#VersionInfo)
* [Volume](#Volume)
* [VolumeFrom](#VolumeFrom)


@docs Attribute,Cluster,Container,ContainerDefinition,ContainerInstance,ContainerOverride,Deployment,DeploymentConfiguration,Failure,HostEntry,HostVolumeProperties,KeyValuePair,LoadBalancer,LogConfiguration,MountPoint,NetworkBinding,PlacementConstraint,PlacementStrategy,PortMapping,Resource,Service,ServiceEvent,Task,TaskDefinition,TaskDefinitionPlacementConstraint,TaskOverride,Ulimit,VersionInfo,Volume,VolumeFrom

## Unions

* [AgentUpdateStatus](#AgentUpdateStatus)
* [ContainerInstanceStatus](#ContainerInstanceStatus)
* [DesiredStatus](#DesiredStatus)
* [LogDriver](#LogDriver)
* [NetworkMode](#NetworkMode)
* [PlacementConstraintType](#PlacementConstraintType)
* [PlacementStrategyType](#PlacementStrategyType)
* [SortOrder](#SortOrder)
* [TargetType](#TargetType)
* [TaskDefinitionFamilyStatus](#TaskDefinitionFamilyStatus)
* [TaskDefinitionPlacementConstraintType](#TaskDefinitionPlacementConstraintType)
* [TaskDefinitionStatus](#TaskDefinitionStatus)
* [TransportProtocol](#TransportProtocol)
* [UlimitName](#UlimitName)


@docs AgentUpdateStatus,ContainerInstanceStatus,DesiredStatus,LogDriver,NetworkMode,PlacementConstraintType,PlacementStrategyType,SortOrder,TargetType,TaskDefinitionFamilyStatus,TaskDefinitionPlacementConstraintType,TaskDefinitionStatus,TransportProtocol,UlimitName

## Exceptions

* [AttributeLimitExceededException](#AttributeLimitExceededException)
* [ClientException](#ClientException)
* [ClusterContainsContainerInstancesException](#ClusterContainsContainerInstancesException)
* [ClusterContainsServicesException](#ClusterContainsServicesException)
* [ClusterNotFoundException](#ClusterNotFoundException)
* [InvalidParameterException](#InvalidParameterException)
* [MissingVersionException](#MissingVersionException)
* [NoUpdateAvailableException](#NoUpdateAvailableException)
* [ServerException](#ServerException)
* [ServiceNotActiveException](#ServiceNotActiveException)
* [ServiceNotFoundException](#ServiceNotFoundException)
* [TargetNotFoundException](#TargetNotFoundException)
* [UpdateInProgressException](#UpdateInProgressException)


@docs AttributeLimitExceededException,ClientException,ClusterContainsContainerInstancesException,ClusterContainsServicesException,ClusterNotFoundException,InvalidParameterException,MissingVersionException,NoUpdateAvailableException,ServerException,ServiceNotActiveException,ServiceNotFoundException,TargetNotFoundException,UpdateInProgressException

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
        "ecs"
        "2014-11-13"
        "1.1"
        "AWSECS_20141113."
        "ecs.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Creates a new Amazon ECS cluster. By default, your account receives a <code>default</code> cluster when you launch your first container instance. However, you can create your own cluster with a unique name with the <code>CreateCluster</code> action.</p>

__Required Parameters__



-}
createCluster :
    (CreateClusterOptions -> CreateClusterOptions)
    -> AWS.Http.UnsignedRequest CreateClusterResponse
createCluster setOptions =
  let
    options = setOptions (CreateClusterOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createClusterResponseDecoder


{-| Options for a createCluster request
-}
type alias CreateClusterOptions =
    { clusterName : Maybe String
    }



{-| <p>Runs and maintains a desired number of tasks from a specified task definition. If the number of tasks running in a service drops below <code>desiredCount</code>, Amazon ECS spawns another copy of the task in the specified cluster. To update an existing service, see <a>UpdateService</a>.</p> <p>In addition to maintaining the desired count of tasks in your service, you can optionally run your service behind a load balancer. The load balancer distributes traffic across the tasks that are associated with the service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service Load Balancing</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> <p>You can optionally specify a deployment configuration for your service. During a deployment (which is triggered by changing the task definition or the desired count of a service with an <a>UpdateService</a> operation), the service scheduler uses the <code>minimumHealthyPercent</code> and <code>maximumPercent</code> parameters to determine the deployment strategy.</p> <p>The <code>minimumHealthyPercent</code> represents a lower limit on the number of your service's tasks that must remain in the <code>RUNNING</code> state during a deployment, as a percentage of the <code>desiredCount</code> (rounded up to the nearest integer). This parameter enables you to deploy without using additional cluster capacity. For example, if <code>desiredCount</code> is four tasks and the minimum is 50%, the scheduler can stop two existing tasks to free up cluster capacity before starting two new tasks. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer. The default value is 50% in the console and 100% for the AWS CLI, the AWS SDKs, and the APIs.</p> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of your service's tasks that are allowed in the <code>RUNNING</code> or <code>PENDING</code> state during a deployment, as a percentage of the <code>desiredCount</code> (rounded down to the nearest integer). This parameter enables you to define the deployment batch size. For example, if <code>desiredCount</code> is four tasks and the maximum is 200%, the scheduler can start four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available). The default value is 200%.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster using the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy):</p> <ul> <li> <p>Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul>

__Required Parameters__

* `serviceName` __:__ `String`
* `taskDefinition` __:__ `String`
* `desiredCount` __:__ `Int`


-}
createService :
    String
    -> String
    -> Int
    -> (CreateServiceOptions -> CreateServiceOptions)
    -> AWS.Http.UnsignedRequest CreateServiceResponse
createService serviceName taskDefinition desiredCount setOptions =
  let
    options = setOptions (CreateServiceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateService"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createServiceResponseDecoder


{-| Options for a createService request
-}
type alias CreateServiceOptions =
    { cluster : Maybe String
    , loadBalancers : Maybe (List LoadBalancer)
    , clientToken : Maybe String
    , role : Maybe String
    , deploymentConfiguration : Maybe DeploymentConfiguration
    , placementConstraints : Maybe (List PlacementConstraint)
    , placementStrategy : Maybe (List PlacementStrategy)
    }



{-| <p>Deletes one or more custom attributes from an Amazon ECS resource.</p>

__Required Parameters__

* `attributes` __:__ `(List Attribute)`


-}
deleteAttributes :
    (List Attribute)
    -> (DeleteAttributesOptions -> DeleteAttributesOptions)
    -> AWS.Http.UnsignedRequest DeleteAttributesResponse
deleteAttributes attributes setOptions =
  let
    options = setOptions (DeleteAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteAttributesResponseDecoder


{-| Options for a deleteAttributes request
-}
type alias DeleteAttributesOptions =
    { cluster : Maybe String
    }



{-| <p>Deletes the specified cluster. You must deregister all container instances from this cluster before you may delete it. You can list the container instances in a cluster with <a>ListContainerInstances</a> and deregister them with <a>DeregisterContainerInstance</a>.</p>

__Required Parameters__

* `cluster` __:__ `String`


-}
deleteCluster :
    String
    -> AWS.Http.UnsignedRequest DeleteClusterResponse
deleteCluster cluster =
    AWS.Http.unsignedRequest
        "DeleteCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteClusterResponseDecoder



{-| <p>Deletes a specified service within a cluster. You can delete a service if you have no running tasks in it and the desired task count is zero. If the service is actively maintaining tasks, you cannot delete it, and you must update the service to a desired task count of zero. For more information, see <a>UpdateService</a>.</p> <note> <p>When you delete a service, if there are still running tasks that require cleanup, the service status moves from <code>ACTIVE</code> to <code>DRAINING</code>, and the service is no longer visible in the console or in <a>ListServices</a> API operations. After the tasks have stopped, then the service status moves from <code>DRAINING</code> to <code>INACTIVE</code>. Services in the <code>DRAINING</code> or <code>INACTIVE</code> status can still be viewed with <a>DescribeServices</a> API operations; however, in the future, <code>INACTIVE</code> services may be cleaned up and purged from Amazon ECS record keeping, and <a>DescribeServices</a> API operations on those services will return a <code>ServiceNotFoundException</code> error.</p> </note>

__Required Parameters__

* `service` __:__ `String`


-}
deleteService :
    String
    -> (DeleteServiceOptions -> DeleteServiceOptions)
    -> AWS.Http.UnsignedRequest DeleteServiceResponse
deleteService service setOptions =
  let
    options = setOptions (DeleteServiceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteService"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteServiceResponseDecoder


{-| Options for a deleteService request
-}
type alias DeleteServiceOptions =
    { cluster : Maybe String
    }



{-| <p>Deregisters an Amazon ECS container instance from the specified cluster. This instance is no longer available to run tasks.</p> <p>If you intend to use the container instance for some other purpose after deregistration, you should stop all of the tasks running on the container instance before deregistration to avoid any orphaned tasks from consuming resources.</p> <p>Deregistering a container instance removes the instance from a cluster, but it does not terminate the EC2 instance; if you are finished using the instance, be sure to terminate it in the Amazon EC2 console to stop billing.</p> <note> <p>If you terminate a running container instance, Amazon ECS automatically deregisters the instance from your cluster (stopped container instances or instances with disconnected agents are not automatically deregistered when terminated).</p> </note>

__Required Parameters__

* `containerInstance` __:__ `String`


-}
deregisterContainerInstance :
    String
    -> (DeregisterContainerInstanceOptions -> DeregisterContainerInstanceOptions)
    -> AWS.Http.UnsignedRequest DeregisterContainerInstanceResponse
deregisterContainerInstance containerInstance setOptions =
  let
    options = setOptions (DeregisterContainerInstanceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeregisterContainerInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterContainerInstanceResponseDecoder


{-| Options for a deregisterContainerInstance request
-}
type alias DeregisterContainerInstanceOptions =
    { cluster : Maybe String
    , force : Maybe Bool
    }



{-| <p>Deregisters the specified task definition by family and revision. Upon deregistration, the task definition is marked as <code>INACTIVE</code>. Existing tasks and services that reference an <code>INACTIVE</code> task definition continue to run without disruption. Existing services that reference an <code>INACTIVE</code> task definition can still scale up or down by modifying the service's desired count.</p> <p>You cannot use an <code>INACTIVE</code> task definition to run new tasks or create new services, and you cannot update an existing service to reference an <code>INACTIVE</code> task definition (although there may be up to a 10 minute window following deregistration where these restrictions have not yet taken effect).</p>

__Required Parameters__

* `taskDefinition` __:__ `String`


-}
deregisterTaskDefinition :
    String
    -> AWS.Http.UnsignedRequest DeregisterTaskDefinitionResponse
deregisterTaskDefinition taskDefinition =
    AWS.Http.unsignedRequest
        "DeregisterTaskDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterTaskDefinitionResponseDecoder



{-| <p>Describes one or more of your clusters.</p>

__Required Parameters__



-}
describeClusters :
    (DescribeClustersOptions -> DescribeClustersOptions)
    -> AWS.Http.UnsignedRequest DescribeClustersResponse
describeClusters setOptions =
  let
    options = setOptions (DescribeClustersOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeClustersResponseDecoder


{-| Options for a describeClusters request
-}
type alias DescribeClustersOptions =
    { clusters : Maybe (List String)
    }



{-| <p>Describes Amazon EC2 Container Service container instances. Returns metadata about registered and remaining resources on each container instance requested.</p>

__Required Parameters__

* `containerInstances` __:__ `(List String)`


-}
describeContainerInstances :
    (List String)
    -> (DescribeContainerInstancesOptions -> DescribeContainerInstancesOptions)
    -> AWS.Http.UnsignedRequest DescribeContainerInstancesResponse
describeContainerInstances containerInstances setOptions =
  let
    options = setOptions (DescribeContainerInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeContainerInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeContainerInstancesResponseDecoder


{-| Options for a describeContainerInstances request
-}
type alias DescribeContainerInstancesOptions =
    { cluster : Maybe String
    }



{-| <p>Describes the specified services running in your cluster.</p>

__Required Parameters__

* `services` __:__ `(List String)`


-}
describeServices :
    (List String)
    -> (DescribeServicesOptions -> DescribeServicesOptions)
    -> AWS.Http.UnsignedRequest DescribeServicesResponse
describeServices services setOptions =
  let
    options = setOptions (DescribeServicesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeServices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeServicesResponseDecoder


{-| Options for a describeServices request
-}
type alias DescribeServicesOptions =
    { cluster : Maybe String
    }



{-| <p>Describes a task definition. You can specify a <code>family</code> and <code>revision</code> to find information about a specific task definition, or you can simply specify the family to find the latest <code>ACTIVE</code> revision in that family.</p> <note> <p>You can only describe <code>INACTIVE</code> task definitions while an active task or service references them.</p> </note>

__Required Parameters__

* `taskDefinition` __:__ `String`


-}
describeTaskDefinition :
    String
    -> AWS.Http.UnsignedRequest DescribeTaskDefinitionResponse
describeTaskDefinition taskDefinition =
    AWS.Http.unsignedRequest
        "DescribeTaskDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTaskDefinitionResponseDecoder



{-| <p>Describes a specified task or tasks.</p>

__Required Parameters__

* `tasks` __:__ `(List String)`


-}
describeTasks :
    (List String)
    -> (DescribeTasksOptions -> DescribeTasksOptions)
    -> AWS.Http.UnsignedRequest DescribeTasksResponse
describeTasks tasks setOptions =
  let
    options = setOptions (DescribeTasksOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTasksResponseDecoder


{-| Options for a describeTasks request
-}
type alias DescribeTasksOptions =
    { cluster : Maybe String
    }



{-| <note> <p>This action is only used by the Amazon EC2 Container Service agent, and it is not intended for use outside of the agent.</p> </note> <p>Returns an endpoint for the Amazon EC2 Container Service agent to poll for updates.</p>

__Required Parameters__



-}
discoverPollEndpoint :
    (DiscoverPollEndpointOptions -> DiscoverPollEndpointOptions)
    -> AWS.Http.UnsignedRequest DiscoverPollEndpointResponse
discoverPollEndpoint setOptions =
  let
    options = setOptions (DiscoverPollEndpointOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DiscoverPollEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        discoverPollEndpointResponseDecoder


{-| Options for a discoverPollEndpoint request
-}
type alias DiscoverPollEndpointOptions =
    { containerInstance : Maybe String
    , cluster : Maybe String
    }



{-| <p>Lists the attributes for Amazon ECS resources within a specified target type and cluster. When you specify a target type and cluster, <code>LisAttributes</code> returns a list of attribute objects, one for each attribute on each resource. You can filter the list of results to a single attribute name to only return results that have that name. You can also filter the results by attribute name and value, for example, to see which container instances in a cluster are running a Linux AMI (<code>ecs.os-type=linux</code>). </p>

__Required Parameters__

* `targetType` __:__ `TargetType`


-}
listAttributes :
    TargetType
    -> (ListAttributesOptions -> ListAttributesOptions)
    -> AWS.Http.UnsignedRequest ListAttributesResponse
listAttributes targetType setOptions =
  let
    options = setOptions (ListAttributesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAttributesResponseDecoder


{-| Options for a listAttributes request
-}
type alias ListAttributesOptions =
    { cluster : Maybe String
    , attributeName : Maybe String
    , attributeValue : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns a list of existing clusters.</p>

__Required Parameters__



-}
listClusters :
    (ListClustersOptions -> ListClustersOptions)
    -> AWS.Http.UnsignedRequest ListClustersResponse
listClusters setOptions =
  let
    options = setOptions (ListClustersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListClusters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listClustersResponseDecoder


{-| Options for a listClusters request
-}
type alias ListClustersOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns a list of container instances in a specified cluster. You can filter the results of a <code>ListContainerInstances</code> operation with cluster query language statements inside the <code>filter</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>

__Required Parameters__



-}
listContainerInstances :
    (ListContainerInstancesOptions -> ListContainerInstancesOptions)
    -> AWS.Http.UnsignedRequest ListContainerInstancesResponse
listContainerInstances setOptions =
  let
    options = setOptions (ListContainerInstancesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListContainerInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listContainerInstancesResponseDecoder


{-| Options for a listContainerInstances request
-}
type alias ListContainerInstancesOptions =
    { cluster : Maybe String
    , filter : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , status : Maybe ContainerInstanceStatus
    }



{-| <p>Lists the services that are running in a specified cluster.</p>

__Required Parameters__



-}
listServices :
    (ListServicesOptions -> ListServicesOptions)
    -> AWS.Http.UnsignedRequest ListServicesResponse
listServices setOptions =
  let
    options = setOptions (ListServicesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListServices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listServicesResponseDecoder


{-| Options for a listServices request
-}
type alias ListServicesOptions =
    { cluster : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any <code>ACTIVE</code> task definition revisions).</p> <p>You can filter out task definition families that do not contain any <code>ACTIVE</code> task definition revisions by setting the <code>status</code> parameter to <code>ACTIVE</code>. You can also filter the results with the <code>familyPrefix</code> parameter.</p>

__Required Parameters__



-}
listTaskDefinitionFamilies :
    (ListTaskDefinitionFamiliesOptions -> ListTaskDefinitionFamiliesOptions)
    -> AWS.Http.UnsignedRequest ListTaskDefinitionFamiliesResponse
listTaskDefinitionFamilies setOptions =
  let
    options = setOptions (ListTaskDefinitionFamiliesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTaskDefinitionFamilies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTaskDefinitionFamiliesResponseDecoder


{-| Options for a listTaskDefinitionFamilies request
-}
type alias ListTaskDefinitionFamiliesOptions =
    { familyPrefix : Maybe String
    , status : Maybe TaskDefinitionFamilyStatus
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns a list of task definitions that are registered to your account. You can filter the results by family name with the <code>familyPrefix</code> parameter or by status with the <code>status</code> parameter.</p>

__Required Parameters__



-}
listTaskDefinitions :
    (ListTaskDefinitionsOptions -> ListTaskDefinitionsOptions)
    -> AWS.Http.UnsignedRequest ListTaskDefinitionsResponse
listTaskDefinitions setOptions =
  let
    options = setOptions (ListTaskDefinitionsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTaskDefinitions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTaskDefinitionsResponseDecoder


{-| Options for a listTaskDefinitions request
-}
type alias ListTaskDefinitionsOptions =
    { familyPrefix : Maybe String
    , status : Maybe TaskDefinitionStatus
    , sort : Maybe SortOrder
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns a list of tasks for a specified cluster. You can filter the results by family name, by a particular container instance, or by the desired status of the task with the <code>family</code>, <code>containerInstance</code>, and <code>desiredStatus</code> parameters.</p> <p>Recently-stopped tasks might appear in the returned results. Currently, stopped tasks appear in the returned results for at least one hour. </p>

__Required Parameters__



-}
listTasks :
    (ListTasksOptions -> ListTasksOptions)
    -> AWS.Http.UnsignedRequest ListTasksResponse
listTasks setOptions =
  let
    options = setOptions (ListTasksOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTasksResponseDecoder


{-| Options for a listTasks request
-}
type alias ListTasksOptions =
    { cluster : Maybe String
    , containerInstance : Maybe String
    , family : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , startedBy : Maybe String
    , serviceName : Maybe String
    , desiredStatus : Maybe DesiredStatus
    }



{-| <p>Create or update an attribute on an Amazon ECS resource. If the attribute does not exist, it is created. If the attribute exists, its value is replaced with the specified value. To delete an attribute, use <a>DeleteAttributes</a>. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>

__Required Parameters__

* `attributes` __:__ `(List Attribute)`


-}
putAttributes :
    (List Attribute)
    -> (PutAttributesOptions -> PutAttributesOptions)
    -> AWS.Http.UnsignedRequest PutAttributesResponse
putAttributes attributes setOptions =
  let
    options = setOptions (PutAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putAttributesResponseDecoder


{-| Options for a putAttributes request
-}
type alias PutAttributesOptions =
    { cluster : Maybe String
    }



{-| <note> <p>This action is only used by the Amazon EC2 Container Service agent, and it is not intended for use outside of the agent.</p> </note> <p>Registers an EC2 instance into the specified cluster. This instance becomes available to place containers on.</p>

__Required Parameters__



-}
registerContainerInstance :
    (RegisterContainerInstanceOptions -> RegisterContainerInstanceOptions)
    -> AWS.Http.UnsignedRequest RegisterContainerInstanceResponse
registerContainerInstance setOptions =
  let
    options = setOptions (RegisterContainerInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterContainerInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerContainerInstanceResponseDecoder


{-| Options for a registerContainerInstance request
-}
type alias RegisterContainerInstanceOptions =
    { cluster : Maybe String
    , instanceIdentityDocument : Maybe String
    , instanceIdentityDocumentSignature : Maybe String
    , totalResources : Maybe (List Resource)
    , versionInfo : Maybe VersionInfo
    , containerInstanceArn : Maybe String
    , attributes : Maybe (List Attribute)
    }



{-| <p>Registers a new task definition from the supplied <code>family</code> and <code>containerDefinitions</code>. Optionally, you can add data volumes to your containers with the <code>volumes</code> parameter. For more information about task definition parameters and defaults, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task Definitions</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> <p>You can specify an IAM role for your task with the <code>taskRoleArn</code> parameter. When you specify an IAM role for a task, its containers can then use the latest versions of the AWS CLI or SDKs to make API requests to the AWS services that are specified in the IAM policy associated with the role. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for Tasks</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> <p>You can specify a Docker networking mode for the containers in your task definition with the <code>networkMode</code> parameter. The available network modes correspond to those described in <a href="https://docs.docker.com/engine/reference/run/#/network-settings">Network settings</a> in the Docker run reference.</p>

__Required Parameters__

* `family` __:__ `String`
* `containerDefinitions` __:__ `(List ContainerDefinition)`


-}
registerTaskDefinition :
    String
    -> (List ContainerDefinition)
    -> (RegisterTaskDefinitionOptions -> RegisterTaskDefinitionOptions)
    -> AWS.Http.UnsignedRequest RegisterTaskDefinitionResponse
registerTaskDefinition family containerDefinitions setOptions =
  let
    options = setOptions (RegisterTaskDefinitionOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterTaskDefinition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerTaskDefinitionResponseDecoder


{-| Options for a registerTaskDefinition request
-}
type alias RegisterTaskDefinitionOptions =
    { taskRoleArn : Maybe String
    , networkMode : Maybe NetworkMode
    , volumes : Maybe (List Volume)
    , placementConstraints : Maybe (List TaskDefinitionPlacementConstraint)
    }



{-| <p>Starts a new task using the specified task definition.</p> <p>You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places tasks using placement constraints and placement strategies. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> <p>Alternatively, you can use <a>StartTask</a> to use your own scheduler or place tasks manually on specific container instances.</p>

__Required Parameters__

* `taskDefinition` __:__ `String`


-}
runTask :
    String
    -> (RunTaskOptions -> RunTaskOptions)
    -> AWS.Http.UnsignedRequest RunTaskResponse
runTask taskDefinition setOptions =
  let
    options = setOptions (RunTaskOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RunTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        runTaskResponseDecoder


{-| Options for a runTask request
-}
type alias RunTaskOptions =
    { cluster : Maybe String
    , overrides : Maybe TaskOverride
    , count : Maybe Int
    , startedBy : Maybe String
    , group : Maybe String
    , placementConstraints : Maybe (List PlacementConstraint)
    , placementStrategy : Maybe (List PlacementStrategy)
    }



{-| <p>Starts a new task from the specified task definition on the specified container instance or instances.</p> <p>Alternatively, you can use <a>RunTask</a> to place tasks for you. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>

__Required Parameters__

* `taskDefinition` __:__ `String`
* `containerInstances` __:__ `(List String)`


-}
startTask :
    String
    -> (List String)
    -> (StartTaskOptions -> StartTaskOptions)
    -> AWS.Http.UnsignedRequest StartTaskResponse
startTask taskDefinition containerInstances setOptions =
  let
    options = setOptions (StartTaskOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StartTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startTaskResponseDecoder


{-| Options for a startTask request
-}
type alias StartTaskOptions =
    { cluster : Maybe String
    , overrides : Maybe TaskOverride
    , startedBy : Maybe String
    , group : Maybe String
    }



{-| <p>Stops a running task.</p> <p>When <a>StopTask</a> is called on a task, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> and a 30-second timeout, after which <code>SIGKILL</code> is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p>

__Required Parameters__

* `task` __:__ `String`


-}
stopTask :
    String
    -> (StopTaskOptions -> StopTaskOptions)
    -> AWS.Http.UnsignedRequest StopTaskResponse
stopTask task setOptions =
  let
    options = setOptions (StopTaskOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StopTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopTaskResponseDecoder


{-| Options for a stopTask request
-}
type alias StopTaskOptions =
    { cluster : Maybe String
    , reason : Maybe String
    }



{-| <note> <p>This action is only used by the Amazon EC2 Container Service agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a container changed states.</p>

__Required Parameters__



-}
submitContainerStateChange :
    (SubmitContainerStateChangeOptions -> SubmitContainerStateChangeOptions)
    -> AWS.Http.UnsignedRequest SubmitContainerStateChangeResponse
submitContainerStateChange setOptions =
  let
    options = setOptions (SubmitContainerStateChangeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SubmitContainerStateChange"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        submitContainerStateChangeResponseDecoder


{-| Options for a submitContainerStateChange request
-}
type alias SubmitContainerStateChangeOptions =
    { cluster : Maybe String
    , task : Maybe String
    , containerName : Maybe String
    , status : Maybe String
    , exitCode : Maybe Int
    , reason : Maybe String
    , networkBindings : Maybe (List NetworkBinding)
    }



{-| <note> <p>This action is only used by the Amazon EC2 Container Service agent, and it is not intended for use outside of the agent.</p> </note> <p>Sent to acknowledge that a task changed states.</p>

__Required Parameters__



-}
submitTaskStateChange :
    (SubmitTaskStateChangeOptions -> SubmitTaskStateChangeOptions)
    -> AWS.Http.UnsignedRequest SubmitTaskStateChangeResponse
submitTaskStateChange setOptions =
  let
    options = setOptions (SubmitTaskStateChangeOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SubmitTaskStateChange"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        submitTaskStateChangeResponseDecoder


{-| Options for a submitTaskStateChange request
-}
type alias SubmitTaskStateChangeOptions =
    { cluster : Maybe String
    , task : Maybe String
    , status : Maybe String
    , reason : Maybe String
    }



{-| <p>Updates the Amazon ECS container agent on a specified container instance. Updating the Amazon ECS container agent does not interrupt running tasks or services on the container instance. The process for updating the agent differs depending on whether your container instance was launched with the Amazon ECS-optimized AMI or another operating system.</p> <p> <code>UpdateContainerAgent</code> requires the Amazon ECS-optimized AMI or Amazon Linux with the <code>ecs-init</code> service installed and running. For help updating the Amazon ECS container agent on other operating systems, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent">Manually Updating the Amazon ECS Container Agent</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>

__Required Parameters__

* `containerInstance` __:__ `String`


-}
updateContainerAgent :
    String
    -> (UpdateContainerAgentOptions -> UpdateContainerAgentOptions)
    -> AWS.Http.UnsignedRequest UpdateContainerAgentResponse
updateContainerAgent containerInstance setOptions =
  let
    options = setOptions (UpdateContainerAgentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateContainerAgent"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateContainerAgentResponseDecoder


{-| Options for a updateContainerAgent request
-}
type alias UpdateContainerAgentOptions =
    { cluster : Maybe String
    }



{-| <p>Modifies the status of an Amazon ECS container instance.</p> <p>You can change the status of a container instance to <code>DRAINING</code> to manually remove an instance from a cluster, for example to perform system updates, update the Docker daemon, or scale down the cluster size. </p> <p>When you set a container instance to <code>DRAINING</code>, Amazon ECS prevents new tasks from being scheduled for placement on the container instance and replacement service tasks are started on other container instances in the cluster if the resources are available. Service tasks on the container instance that are in the <code>PENDING</code> state are stopped immediately.</p> <p>Service tasks on the container instance that are in the <code>RUNNING</code> state are stopped and replaced according the service's deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>. Note that you can change the deployment configuration of your service using <a>UpdateService</a>.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during task replacement. For example, <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. If the minimum is 100%, the service scheduler can't remove existing tasks until the replacement tasks are considered healthy. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during task replacement, which enables you to define the replacement batch size. For example, if <code>desiredCount</code> of four tasks, a maximum of 200% starts four new tasks before stopping the four tasks to be drained (provided that the cluster resources required to do this are available). If the maximum is 100%, then replacement tasks can't start until the draining tasks have stopped.</p> </li> </ul> <p>Any <code>PENDING</code> or <code>RUNNING</code> tasks that do not belong to a service are not affected; you must wait for them to finish or stop them manually.</p> <p>A container instance has completed draining when it has no more <code>RUNNING</code> tasks. You can verify this using <a>ListTasks</a>.</p> <p>When you set a container instance to <code>ACTIVE</code>, the Amazon ECS scheduler can begin scheduling tasks on the instance again.</p>

__Required Parameters__

* `containerInstances` __:__ `(List String)`
* `status` __:__ `ContainerInstanceStatus`


-}
updateContainerInstancesState :
    (List String)
    -> ContainerInstanceStatus
    -> (UpdateContainerInstancesStateOptions -> UpdateContainerInstancesStateOptions)
    -> AWS.Http.UnsignedRequest UpdateContainerInstancesStateResponse
updateContainerInstancesState containerInstances status setOptions =
  let
    options = setOptions (UpdateContainerInstancesStateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateContainerInstancesState"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateContainerInstancesStateResponseDecoder


{-| Options for a updateContainerInstancesState request
-}
type alias UpdateContainerInstancesStateOptions =
    { cluster : Maybe String
    }



{-| <p>Modifies the desired count, deployment configuration, or task definition used in a service.</p> <p>You can add to or subtract from the number of instantiations of a task definition in a service by specifying the cluster that the service is running in and a new <code>desiredCount</code> parameter.</p> <p>You can use <a>UpdateService</a> to modify your task definition and deploy a new version of your service.</p> <p>You can also update the deployment configuration of a service. When a deployment is triggered by updating the task definition of a service, the service scheduler uses the deployment configuration parameters, <code>minimumHealthyPercent</code> and <code>maximumPercent</code>, to determine the deployment strategy.</p> <ul> <li> <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore <code>desiredCount</code> temporarily during a deployment. For example, if <code>desiredCount</code> is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. Tasks for services that do not use a load balancer are considered healthy if they are in the <code>RUNNING</code> state. Tasks for services that use a load balancer are considered healthy if they are in the <code>RUNNING</code> state and the container instance they are hosted on is reported as healthy by the load balancer.</p> </li> <li> <p>The <code>maximumPercent</code> parameter represents an upper limit on the number of running tasks during a deployment, which enables you to define the deployment batch size. For example, if <code>desiredCount</code> is four tasks, a maximum of 200% starts four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available).</p> </li> </ul> <p>When <a>UpdateService</a> stops a task during a deployment, the equivalent of <code>docker stop</code> is issued to the containers running in the task. This results in a <code>SIGTERM</code> and a 30-second timeout, after which <code>SIGKILL</code> is sent and the containers are forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p> <p>When the service scheduler launches new tasks, it determines task placement in your cluster with the following logic:</p> <ul> <li> <p>Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).</p> </li> <li> <p>By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy):</p> <ul> <li> <p>Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.</p> </li> <li> <p>Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.</p> </li> </ul> </li> </ul> <p>When the service scheduler stops running tasks, it attempts to maintain balance across the Availability Zones in your cluster using the following logic: </p> <ul> <li> <p>Sort the container instances by the largest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have two, container instances in either zone B or C are considered optimal for termination.</p> </li> <li> <p>Stop the task on a container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the largest number of running tasks for this service.</p> </li> </ul>

__Required Parameters__

* `service` __:__ `String`


-}
updateService :
    String
    -> (UpdateServiceOptions -> UpdateServiceOptions)
    -> AWS.Http.UnsignedRequest UpdateServiceResponse
updateService service setOptions =
  let
    options = setOptions (UpdateServiceOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateService"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateServiceResponseDecoder


{-| Options for a updateService request
-}
type alias UpdateServiceOptions =
    { cluster : Maybe String
    , desiredCount : Maybe Int
    , taskDefinition : Maybe String
    , deploymentConfiguration : Maybe DeploymentConfiguration
    }




{-| One of

* `AgentUpdateStatus_PENDING`
* `AgentUpdateStatus_STAGING`
* `AgentUpdateStatus_STAGED`
* `AgentUpdateStatus_UPDATING`
* `AgentUpdateStatus_UPDATED`
* `AgentUpdateStatus_FAILED`

-}
type AgentUpdateStatus
    = AgentUpdateStatus_PENDING
    | AgentUpdateStatus_STAGING
    | AgentUpdateStatus_STAGED
    | AgentUpdateStatus_UPDATING
    | AgentUpdateStatus_UPDATED
    | AgentUpdateStatus_FAILED



agentUpdateStatusDecoder : JD.Decoder AgentUpdateStatus
agentUpdateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed AgentUpdateStatus_PENDING

                    "STAGING" ->
                        JD.succeed AgentUpdateStatus_STAGING

                    "STAGED" ->
                        JD.succeed AgentUpdateStatus_STAGED

                    "UPDATING" ->
                        JD.succeed AgentUpdateStatus_UPDATING

                    "UPDATED" ->
                        JD.succeed AgentUpdateStatus_UPDATED

                    "FAILED" ->
                        JD.succeed AgentUpdateStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An attribute is a name-value pair associated with an Amazon ECS object. Attributes enable you to extend the Amazon ECS data model by adding custom metadata to your resources. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-}
type alias Attribute =
    { name : String
    , value : Maybe String
    , targetType : Maybe TargetType
    , targetId : Maybe String
    }



attributeDecoder : JD.Decoder Attribute
attributeDecoder =
    JDP.decode Attribute
        |> JDP.required "name" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetType" (JD.nullable targetTypeDecoder) Nothing
        |> JDP.optional "targetId" (JD.nullable JD.string) Nothing




{-| <p>You can apply up to 10 custom attributes per resource. You can view the attributes of a resource with <a>ListAttributes</a>. You can remove existing attributes on a resource with <a>DeleteAttributes</a>.</p>
-}
type alias AttributeLimitExceededException =
    { 
    }



attributeLimitExceededExceptionDecoder : JD.Decoder AttributeLimitExceededException
attributeLimitExceededExceptionDecoder =
    JDP.decode AttributeLimitExceededException



{-| <p>These errors are usually caused by a client action, such as using an action or resource on behalf of a user that doesn't have permission to use the action or resource, or specifying an identifier that is not valid.</p>
-}
type alias ClientException =
    { message : Maybe String
    }



clientExceptionDecoder : JD.Decoder ClientException
clientExceptionDecoder =
    JDP.decode ClientException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A regional grouping of one or more container instances on which you can run task requests. Each account receives a default cluster the first time you use the Amazon ECS service, but you may also create other clusters. Clusters may contain more than one instance type simultaneously.</p>
-}
type alias Cluster =
    { clusterArn : Maybe String
    , clusterName : Maybe String
    , status : Maybe String
    , registeredContainerInstancesCount : Maybe Int
    , runningTasksCount : Maybe Int
    , pendingTasksCount : Maybe Int
    , activeServicesCount : Maybe Int
    }



clusterDecoder : JD.Decoder Cluster
clusterDecoder =
    JDP.decode Cluster
        |> JDP.optional "clusterArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "registeredContainerInstancesCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "runningTasksCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "pendingTasksCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "activeServicesCount" (JD.nullable JD.int) Nothing




{-| <p>You cannot delete a cluster that has registered container instances. You must first deregister the container instances before you can delete the cluster. For more information, see <a>DeregisterContainerInstance</a>.</p>
-}
type alias ClusterContainsContainerInstancesException =
    { 
    }



clusterContainsContainerInstancesExceptionDecoder : JD.Decoder ClusterContainsContainerInstancesException
clusterContainsContainerInstancesExceptionDecoder =
    JDP.decode ClusterContainsContainerInstancesException



{-| <p>You cannot delete a cluster that contains services. You must first update the service to reduce its desired task count to 0 and then delete the service. For more information, see <a>UpdateService</a> and <a>DeleteService</a>.</p>
-}
type alias ClusterContainsServicesException =
    { 
    }



clusterContainsServicesExceptionDecoder : JD.Decoder ClusterContainsServicesException
clusterContainsServicesExceptionDecoder =
    JDP.decode ClusterContainsServicesException



{-| <p>The specified cluster could not be found. You can view your available clusters with <a>ListClusters</a>. Amazon ECS clusters are region-specific.</p>
-}
type alias ClusterNotFoundException =
    { 
    }



clusterNotFoundExceptionDecoder : JD.Decoder ClusterNotFoundException
clusterNotFoundExceptionDecoder =
    JDP.decode ClusterNotFoundException



{-| <p>A Docker container that is part of a task.</p>
-}
type alias Container =
    { containerArn : Maybe String
    , taskArn : Maybe String
    , name : Maybe String
    , lastStatus : Maybe String
    , exitCode : Maybe Int
    , reason : Maybe String
    , networkBindings : Maybe (List NetworkBinding)
    }



containerDecoder : JD.Decoder Container
containerDecoder =
    JDP.decode Container
        |> JDP.optional "containerArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "exitCode" (JD.nullable JD.int) Nothing
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkBindings" (JD.nullable (JD.list networkBindingDecoder)) Nothing




{-| <p>Container definitions are used in task definitions to describe the different containers that are launched as part of a task.</p>
-}
type alias ContainerDefinition =
    { name : Maybe String
    , image : Maybe String
    , cpu : Maybe Int
    , memory : Maybe Int
    , memoryReservation : Maybe Int
    , links : Maybe (List String)
    , portMappings : Maybe (List PortMapping)
    , essential : Maybe Bool
    , entryPoint : Maybe (List String)
    , command : Maybe (List String)
    , environment : Maybe (List KeyValuePair)
    , mountPoints : Maybe (List MountPoint)
    , volumesFrom : Maybe (List VolumeFrom)
    , hostname : Maybe String
    , user : Maybe String
    , workingDirectory : Maybe String
    , disableNetworking : Maybe Bool
    , privileged : Maybe Bool
    , readonlyRootFilesystem : Maybe Bool
    , dnsServers : Maybe (List String)
    , dnsSearchDomains : Maybe (List String)
    , extraHosts : Maybe (List HostEntry)
    , dockerSecurityOptions : Maybe (List String)
    , dockerLabels : Maybe (Dict String String)
    , ulimits : Maybe (List Ulimit)
    , logConfiguration : Maybe LogConfiguration
    }



containerDefinitionDecoder : JD.Decoder ContainerDefinition
containerDefinitionDecoder =
    JDP.decode ContainerDefinition
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "image" (JD.nullable JD.string) Nothing
        |> JDP.optional "cpu" (JD.nullable JD.int) Nothing
        |> JDP.optional "memory" (JD.nullable JD.int) Nothing
        |> JDP.optional "memoryReservation" (JD.nullable JD.int) Nothing
        |> JDP.optional "links" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "portMappings" (JD.nullable (JD.list portMappingDecoder)) Nothing
        |> JDP.optional "essential" (JD.nullable JD.bool) Nothing
        |> JDP.optional "entryPoint" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "command" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "environment" (JD.nullable (JD.list keyValuePairDecoder)) Nothing
        |> JDP.optional "mountPoints" (JD.nullable (JD.list mountPointDecoder)) Nothing
        |> JDP.optional "volumesFrom" (JD.nullable (JD.list volumeFromDecoder)) Nothing
        |> JDP.optional "hostname" (JD.nullable JD.string) Nothing
        |> JDP.optional "user" (JD.nullable JD.string) Nothing
        |> JDP.optional "workingDirectory" (JD.nullable JD.string) Nothing
        |> JDP.optional "disableNetworking" (JD.nullable JD.bool) Nothing
        |> JDP.optional "privileged" (JD.nullable JD.bool) Nothing
        |> JDP.optional "readonlyRootFilesystem" (JD.nullable JD.bool) Nothing
        |> JDP.optional "dnsServers" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "dnsSearchDomains" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "extraHosts" (JD.nullable (JD.list hostEntryDecoder)) Nothing
        |> JDP.optional "dockerSecurityOptions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "dockerLabels" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "ulimits" (JD.nullable (JD.list ulimitDecoder)) Nothing
        |> JDP.optional "logConfiguration" (JD.nullable logConfigurationDecoder) Nothing




{-| <p>An EC2 instance that is running the Amazon ECS agent and has been registered with a cluster.</p>
-}
type alias ContainerInstance =
    { containerInstanceArn : Maybe String
    , ec2InstanceId : Maybe String
    , version : Maybe Int
    , versionInfo : Maybe VersionInfo
    , remainingResources : Maybe (List Resource)
    , registeredResources : Maybe (List Resource)
    , status : Maybe String
    , agentConnected : Maybe Bool
    , runningTasksCount : Maybe Int
    , pendingTasksCount : Maybe Int
    , agentUpdateStatus : Maybe AgentUpdateStatus
    , attributes : Maybe (List Attribute)
    }



containerInstanceDecoder : JD.Decoder ContainerInstance
containerInstanceDecoder =
    JDP.decode ContainerInstance
        |> JDP.optional "containerInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "ec2InstanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.int) Nothing
        |> JDP.optional "versionInfo" (JD.nullable versionInfoDecoder) Nothing
        |> JDP.optional "remainingResources" (JD.nullable (JD.list resourceDecoder)) Nothing
        |> JDP.optional "registeredResources" (JD.nullable (JD.list resourceDecoder)) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "agentConnected" (JD.nullable JD.bool) Nothing
        |> JDP.optional "runningTasksCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "pendingTasksCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "agentUpdateStatus" (JD.nullable agentUpdateStatusDecoder) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeDecoder)) Nothing




{-| One of

* `ContainerInstanceStatus_ACTIVE`
* `ContainerInstanceStatus_DRAINING`

-}
type ContainerInstanceStatus
    = ContainerInstanceStatus_ACTIVE
    | ContainerInstanceStatus_DRAINING



containerInstanceStatusDecoder : JD.Decoder ContainerInstanceStatus
containerInstanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed ContainerInstanceStatus_ACTIVE

                    "DRAINING" ->
                        JD.succeed ContainerInstanceStatus_DRAINING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The overrides that should be sent to a container.</p>
-}
type alias ContainerOverride =
    { name : Maybe String
    , command : Maybe (List String)
    , environment : Maybe (List KeyValuePair)
    }



containerOverrideDecoder : JD.Decoder ContainerOverride
containerOverrideDecoder =
    JDP.decode ContainerOverride
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "command" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "environment" (JD.nullable (JD.list keyValuePairDecoder)) Nothing




{-| Type of HTTP response from createCluster
-}
type alias CreateClusterResponse =
    { cluster : Maybe Cluster
    }



createClusterResponseDecoder : JD.Decoder CreateClusterResponse
createClusterResponseDecoder =
    JDP.decode CreateClusterResponse
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| Type of HTTP response from createService
-}
type alias CreateServiceResponse =
    { service : Maybe Service
    }



createServiceResponseDecoder : JD.Decoder CreateServiceResponse
createServiceResponseDecoder =
    JDP.decode CreateServiceResponse
        |> JDP.optional "service" (JD.nullable serviceDecoder) Nothing




{-| Type of HTTP response from deleteAttributes
-}
type alias DeleteAttributesResponse =
    { attributes : Maybe (List Attribute)
    }



deleteAttributesResponseDecoder : JD.Decoder DeleteAttributesResponse
deleteAttributesResponseDecoder =
    JDP.decode DeleteAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeDecoder)) Nothing




{-| Type of HTTP response from deleteCluster
-}
type alias DeleteClusterResponse =
    { cluster : Maybe Cluster
    }



deleteClusterResponseDecoder : JD.Decoder DeleteClusterResponse
deleteClusterResponseDecoder =
    JDP.decode DeleteClusterResponse
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| Type of HTTP response from deleteService
-}
type alias DeleteServiceResponse =
    { service : Maybe Service
    }



deleteServiceResponseDecoder : JD.Decoder DeleteServiceResponse
deleteServiceResponseDecoder =
    JDP.decode DeleteServiceResponse
        |> JDP.optional "service" (JD.nullable serviceDecoder) Nothing




{-| <p>The details of an Amazon ECS service deployment.</p>
-}
type alias Deployment =
    { id : Maybe String
    , status : Maybe String
    , taskDefinition : Maybe String
    , desiredCount : Maybe Int
    , pendingCount : Maybe Int
    , runningCount : Maybe Int
    , createdAt : Maybe Date
    , updatedAt : Maybe Date
    }



deploymentDecoder : JD.Decoder Deployment
deploymentDecoder =
    JDP.decode Deployment
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskDefinition" (JD.nullable JD.string) Nothing
        |> JDP.optional "desiredCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "pendingCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "runningCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updatedAt" (JD.nullable JDX.date) Nothing




{-| <p>Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.</p>
-}
type alias DeploymentConfiguration =
    { maximumPercent : Maybe Int
    , minimumHealthyPercent : Maybe Int
    }



deploymentConfigurationDecoder : JD.Decoder DeploymentConfiguration
deploymentConfigurationDecoder =
    JDP.decode DeploymentConfiguration
        |> JDP.optional "maximumPercent" (JD.nullable JD.int) Nothing
        |> JDP.optional "minimumHealthyPercent" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from deregisterContainerInstance
-}
type alias DeregisterContainerInstanceResponse =
    { containerInstance : Maybe ContainerInstance
    }



deregisterContainerInstanceResponseDecoder : JD.Decoder DeregisterContainerInstanceResponse
deregisterContainerInstanceResponseDecoder =
    JDP.decode DeregisterContainerInstanceResponse
        |> JDP.optional "containerInstance" (JD.nullable containerInstanceDecoder) Nothing




{-| Type of HTTP response from deregisterTaskDefinition
-}
type alias DeregisterTaskDefinitionResponse =
    { taskDefinition : Maybe TaskDefinition
    }



deregisterTaskDefinitionResponseDecoder : JD.Decoder DeregisterTaskDefinitionResponse
deregisterTaskDefinitionResponseDecoder =
    JDP.decode DeregisterTaskDefinitionResponse
        |> JDP.optional "taskDefinition" (JD.nullable taskDefinitionDecoder) Nothing




{-| Type of HTTP response from describeClusters
-}
type alias DescribeClustersResponse =
    { clusters : Maybe (List Cluster)
    , failures : Maybe (List Failure)
    }



describeClustersResponseDecoder : JD.Decoder DescribeClustersResponse
describeClustersResponseDecoder =
    JDP.decode DescribeClustersResponse
        |> JDP.optional "clusters" (JD.nullable (JD.list clusterDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list failureDecoder)) Nothing




{-| Type of HTTP response from describeContainerInstances
-}
type alias DescribeContainerInstancesResponse =
    { containerInstances : Maybe (List ContainerInstance)
    , failures : Maybe (List Failure)
    }



describeContainerInstancesResponseDecoder : JD.Decoder DescribeContainerInstancesResponse
describeContainerInstancesResponseDecoder =
    JDP.decode DescribeContainerInstancesResponse
        |> JDP.optional "containerInstances" (JD.nullable (JD.list containerInstanceDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list failureDecoder)) Nothing




{-| Type of HTTP response from describeServices
-}
type alias DescribeServicesResponse =
    { services : Maybe (List Service)
    , failures : Maybe (List Failure)
    }



describeServicesResponseDecoder : JD.Decoder DescribeServicesResponse
describeServicesResponseDecoder =
    JDP.decode DescribeServicesResponse
        |> JDP.optional "services" (JD.nullable (JD.list serviceDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list failureDecoder)) Nothing




{-| Type of HTTP response from describeTaskDefinition
-}
type alias DescribeTaskDefinitionResponse =
    { taskDefinition : Maybe TaskDefinition
    }



describeTaskDefinitionResponseDecoder : JD.Decoder DescribeTaskDefinitionResponse
describeTaskDefinitionResponseDecoder =
    JDP.decode DescribeTaskDefinitionResponse
        |> JDP.optional "taskDefinition" (JD.nullable taskDefinitionDecoder) Nothing




{-| Type of HTTP response from describeTasks
-}
type alias DescribeTasksResponse =
    { tasks : Maybe (List Task)
    , failures : Maybe (List Failure)
    }



describeTasksResponseDecoder : JD.Decoder DescribeTasksResponse
describeTasksResponseDecoder =
    JDP.decode DescribeTasksResponse
        |> JDP.optional "tasks" (JD.nullable (JD.list taskDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list failureDecoder)) Nothing




{-| One of

* `DesiredStatus_RUNNING`
* `DesiredStatus_PENDING`
* `DesiredStatus_STOPPED`

-}
type DesiredStatus
    = DesiredStatus_RUNNING
    | DesiredStatus_PENDING
    | DesiredStatus_STOPPED



desiredStatusDecoder : JD.Decoder DesiredStatus
desiredStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RUNNING" ->
                        JD.succeed DesiredStatus_RUNNING

                    "PENDING" ->
                        JD.succeed DesiredStatus_PENDING

                    "STOPPED" ->
                        JD.succeed DesiredStatus_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from discoverPollEndpoint
-}
type alias DiscoverPollEndpointResponse =
    { endpoint : Maybe String
    , telemetryEndpoint : Maybe String
    }



discoverPollEndpointResponseDecoder : JD.Decoder DiscoverPollEndpointResponse
discoverPollEndpointResponseDecoder =
    JDP.decode DiscoverPollEndpointResponse
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "telemetryEndpoint" (JD.nullable JD.string) Nothing




{-| <p>A failed resource.</p>
-}
type alias Failure =
    { arn : Maybe String
    , reason : Maybe String
    }



failureDecoder : JD.Decoder Failure
failureDecoder =
    JDP.decode Failure
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing




{-| <p>Hostnames and IP address entries that are added to the <code>/etc/hosts</code> file of a container via the <code>extraHosts</code> parameter of its <a>ContainerDefinition</a>. </p>
-}
type alias HostEntry =
    { hostname : String
    , ipAddress : String
    }



hostEntryDecoder : JD.Decoder HostEntry
hostEntryDecoder =
    JDP.decode HostEntry
        |> JDP.required "hostname" JD.string
        |> JDP.required "ipAddress" JD.string




{-| <p>Details on a container instance host volume.</p>
-}
type alias HostVolumeProperties =
    { sourcePath : Maybe String
    }



hostVolumePropertiesDecoder : JD.Decoder HostVolumeProperties
hostVolumePropertiesDecoder =
    JDP.decode HostVolumeProperties
        |> JDP.optional "sourcePath" (JD.nullable JD.string) Nothing




{-| <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
-}
type alias InvalidParameterException =
    { 
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException



{-| <p>A key and value pair object.</p>
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




{-| Type of HTTP response from listAttributes
-}
type alias ListAttributesResponse =
    { attributes : Maybe (List Attribute)
    , nextToken : Maybe String
    }



listAttributesResponseDecoder : JD.Decoder ListAttributesResponse
listAttributesResponseDecoder =
    JDP.decode ListAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listClusters
-}
type alias ListClustersResponse =
    { clusterArns : Maybe (List String)
    , nextToken : Maybe String
    }



listClustersResponseDecoder : JD.Decoder ListClustersResponse
listClustersResponseDecoder =
    JDP.decode ListClustersResponse
        |> JDP.optional "clusterArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listContainerInstances
-}
type alias ListContainerInstancesResponse =
    { containerInstanceArns : Maybe (List String)
    , nextToken : Maybe String
    }



listContainerInstancesResponseDecoder : JD.Decoder ListContainerInstancesResponse
listContainerInstancesResponseDecoder =
    JDP.decode ListContainerInstancesResponse
        |> JDP.optional "containerInstanceArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listServices
-}
type alias ListServicesResponse =
    { serviceArns : Maybe (List String)
    , nextToken : Maybe String
    }



listServicesResponseDecoder : JD.Decoder ListServicesResponse
listServicesResponseDecoder =
    JDP.decode ListServicesResponse
        |> JDP.optional "serviceArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTaskDefinitionFamilies
-}
type alias ListTaskDefinitionFamiliesResponse =
    { families : Maybe (List String)
    , nextToken : Maybe String
    }



listTaskDefinitionFamiliesResponseDecoder : JD.Decoder ListTaskDefinitionFamiliesResponse
listTaskDefinitionFamiliesResponseDecoder =
    JDP.decode ListTaskDefinitionFamiliesResponse
        |> JDP.optional "families" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTaskDefinitions
-}
type alias ListTaskDefinitionsResponse =
    { taskDefinitionArns : Maybe (List String)
    , nextToken : Maybe String
    }



listTaskDefinitionsResponseDecoder : JD.Decoder ListTaskDefinitionsResponse
listTaskDefinitionsResponseDecoder =
    JDP.decode ListTaskDefinitionsResponse
        |> JDP.optional "taskDefinitionArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTasks
-}
type alias ListTasksResponse =
    { taskArns : Maybe (List String)
    , nextToken : Maybe String
    }



listTasksResponseDecoder : JD.Decoder ListTasksResponse
listTasksResponseDecoder =
    JDP.decode ListTasksResponse
        |> JDP.optional "taskArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Details on a load balancer that is used with a service.</p>
-}
type alias LoadBalancer =
    { targetGroupArn : Maybe String
    , loadBalancerName : Maybe String
    , containerName : Maybe String
    , containerPort : Maybe Int
    }



loadBalancerDecoder : JD.Decoder LoadBalancer
loadBalancerDecoder =
    JDP.decode LoadBalancer
        |> JDP.optional "targetGroupArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "loadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "containerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "containerPort" (JD.nullable JD.int) Nothing




{-| <p>Log configuration options to send to a custom log driver for the container.</p>
-}
type alias LogConfiguration =
    { logDriver : LogDriver
    , options : Maybe (Dict String String)
    }



logConfigurationDecoder : JD.Decoder LogConfiguration
logConfigurationDecoder =
    JDP.decode LogConfiguration
        |> JDP.required "logDriver" logDriverDecoder
        |> JDP.optional "options" (JD.nullable (JD.dict JD.string)) Nothing




{-| One of

* `LogDriver_json-file`
* `LogDriver_syslog`
* `LogDriver_journald`
* `LogDriver_gelf`
* `LogDriver_fluentd`
* `LogDriver_awslogs`
* `LogDriver_splunk`

-}
type LogDriver
    = LogDriver_json_file
    | LogDriver_syslog
    | LogDriver_journald
    | LogDriver_gelf
    | LogDriver_fluentd
    | LogDriver_awslogs
    | LogDriver_splunk



logDriverDecoder : JD.Decoder LogDriver
logDriverDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "json_file" ->
                        JD.succeed LogDriver_json_file

                    "syslog" ->
                        JD.succeed LogDriver_syslog

                    "journald" ->
                        JD.succeed LogDriver_journald

                    "gelf" ->
                        JD.succeed LogDriver_gelf

                    "fluentd" ->
                        JD.succeed LogDriver_fluentd

                    "awslogs" ->
                        JD.succeed LogDriver_awslogs

                    "splunk" ->
                        JD.succeed LogDriver_splunk


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Amazon ECS is unable to determine the current version of the Amazon ECS container agent on the container instance and does not have enough information to proceed with an update. This could be because the agent running on the container instance is an older or custom version that does not use our version information.</p>
-}
type alias MissingVersionException =
    { 
    }



missingVersionExceptionDecoder : JD.Decoder MissingVersionException
missingVersionExceptionDecoder =
    JDP.decode MissingVersionException



{-| <p>Details on a volume mount point that is used in a container definition.</p>
-}
type alias MountPoint =
    { sourceVolume : Maybe String
    , containerPath : Maybe String
    , readOnly : Maybe Bool
    }



mountPointDecoder : JD.Decoder MountPoint
mountPointDecoder =
    JDP.decode MountPoint
        |> JDP.optional "sourceVolume" (JD.nullable JD.string) Nothing
        |> JDP.optional "containerPath" (JD.nullable JD.string) Nothing
        |> JDP.optional "readOnly" (JD.nullable JD.bool) Nothing




{-| <p>Details on the network bindings between a container and its host container instance. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
-}
type alias NetworkBinding =
    { bindIP : Maybe String
    , containerPort : Maybe Int
    , hostPort : Maybe Int
    , protocol : Maybe TransportProtocol
    }



networkBindingDecoder : JD.Decoder NetworkBinding
networkBindingDecoder =
    JDP.decode NetworkBinding
        |> JDP.optional "bindIP" (JD.nullable JD.string) Nothing
        |> JDP.optional "containerPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "hostPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "protocol" (JD.nullable transportProtocolDecoder) Nothing




{-| One of

* `NetworkMode_bridge`
* `NetworkMode_host`
* `NetworkMode_none`

-}
type NetworkMode
    = NetworkMode_bridge
    | NetworkMode_host
    | NetworkMode_none



networkModeDecoder : JD.Decoder NetworkMode
networkModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "bridge" ->
                        JD.succeed NetworkMode_bridge

                    "host" ->
                        JD.succeed NetworkMode_host

                    "none" ->
                        JD.succeed NetworkMode_none


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>There is no update available for this Amazon ECS container agent. This could be because the agent is already running the latest version, or it is so old that there is no update path to the current version.</p>
-}
type alias NoUpdateAvailableException =
    { 
    }



noUpdateAvailableExceptionDecoder : JD.Decoder NoUpdateAvailableException
noUpdateAvailableExceptionDecoder =
    JDP.decode NoUpdateAvailableException



{-| <p>An object representing a constraint on task placement. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-}
type alias PlacementConstraint =
    { type_ : Maybe PlacementConstraintType
    , expression : Maybe String
    }



placementConstraintDecoder : JD.Decoder PlacementConstraint
placementConstraintDecoder =
    JDP.decode PlacementConstraint
        |> JDP.optional "type_" (JD.nullable placementConstraintTypeDecoder) Nothing
        |> JDP.optional "expression" (JD.nullable JD.string) Nothing




{-| One of

* `PlacementConstraintType_distinctInstance`
* `PlacementConstraintType_memberOf`

-}
type PlacementConstraintType
    = PlacementConstraintType_distinctInstance
    | PlacementConstraintType_memberOf



placementConstraintTypeDecoder : JD.Decoder PlacementConstraintType
placementConstraintTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "distinctInstance" ->
                        JD.succeed PlacementConstraintType_distinctInstance

                    "memberOf" ->
                        JD.succeed PlacementConstraintType_memberOf


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The task placement strategy for a task or service. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html">Task Placement Strategies</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-}
type alias PlacementStrategy =
    { type_ : Maybe PlacementStrategyType
    , field : Maybe String
    }



placementStrategyDecoder : JD.Decoder PlacementStrategy
placementStrategyDecoder =
    JDP.decode PlacementStrategy
        |> JDP.optional "type_" (JD.nullable placementStrategyTypeDecoder) Nothing
        |> JDP.optional "field" (JD.nullable JD.string) Nothing




{-| One of

* `PlacementStrategyType_random`
* `PlacementStrategyType_spread`
* `PlacementStrategyType_binpack`

-}
type PlacementStrategyType
    = PlacementStrategyType_random
    | PlacementStrategyType_spread
    | PlacementStrategyType_binpack



placementStrategyTypeDecoder : JD.Decoder PlacementStrategyType
placementStrategyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "random" ->
                        JD.succeed PlacementStrategyType_random

                    "spread" ->
                        JD.succeed PlacementStrategyType_spread

                    "binpack" ->
                        JD.succeed PlacementStrategyType_binpack


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Port mappings allow containers to access ports on the host container instance to send or receive traffic. Port mappings are specified as part of the container definition. After a task reaches the <code>RUNNING</code> status, manual and automatic host and container port assignments are visible in the <code>networkBindings</code> section of <a>DescribeTasks</a> API responses.</p>
-}
type alias PortMapping =
    { containerPort : Maybe Int
    , hostPort : Maybe Int
    , protocol : Maybe TransportProtocol
    }



portMappingDecoder : JD.Decoder PortMapping
portMappingDecoder =
    JDP.decode PortMapping
        |> JDP.optional "containerPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "hostPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "protocol" (JD.nullable transportProtocolDecoder) Nothing




{-| Type of HTTP response from putAttributes
-}
type alias PutAttributesResponse =
    { attributes : Maybe (List Attribute)
    }



putAttributesResponseDecoder : JD.Decoder PutAttributesResponse
putAttributesResponseDecoder =
    JDP.decode PutAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeDecoder)) Nothing




{-| Type of HTTP response from registerContainerInstance
-}
type alias RegisterContainerInstanceResponse =
    { containerInstance : Maybe ContainerInstance
    }



registerContainerInstanceResponseDecoder : JD.Decoder RegisterContainerInstanceResponse
registerContainerInstanceResponseDecoder =
    JDP.decode RegisterContainerInstanceResponse
        |> JDP.optional "containerInstance" (JD.nullable containerInstanceDecoder) Nothing




{-| Type of HTTP response from registerTaskDefinition
-}
type alias RegisterTaskDefinitionResponse =
    { taskDefinition : Maybe TaskDefinition
    }



registerTaskDefinitionResponseDecoder : JD.Decoder RegisterTaskDefinitionResponse
registerTaskDefinitionResponseDecoder =
    JDP.decode RegisterTaskDefinitionResponse
        |> JDP.optional "taskDefinition" (JD.nullable taskDefinitionDecoder) Nothing




{-| <p>Describes the resources available for a container instance.</p>
-}
type alias Resource =
    { name : Maybe String
    , type_ : Maybe String
    , doubleValue : Maybe Float
    , longValue : Maybe Int
    , integerValue : Maybe Int
    , stringSetValue : Maybe (List String)
    }



resourceDecoder : JD.Decoder Resource
resourceDecoder =
    JDP.decode Resource
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "doubleValue" (JD.nullable JD.float) Nothing
        |> JDP.optional "longValue" (JD.nullable JD.int) Nothing
        |> JDP.optional "integerValue" (JD.nullable JD.int) Nothing
        |> JDP.optional "stringSetValue" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from runTask
-}
type alias RunTaskResponse =
    { tasks : Maybe (List Task)
    , failures : Maybe (List Failure)
    }



runTaskResponseDecoder : JD.Decoder RunTaskResponse
runTaskResponseDecoder =
    JDP.decode RunTaskResponse
        |> JDP.optional "tasks" (JD.nullable (JD.list taskDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list failureDecoder)) Nothing




{-| <p>These errors are usually caused by a server issue.</p>
-}
type alias ServerException =
    { message : Maybe String
    }



serverExceptionDecoder : JD.Decoder ServerException
serverExceptionDecoder =
    JDP.decode ServerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Details on a service within a cluster</p>
-}
type alias Service =
    { serviceArn : Maybe String
    , serviceName : Maybe String
    , clusterArn : Maybe String
    , loadBalancers : Maybe (List LoadBalancer)
    , status : Maybe String
    , desiredCount : Maybe Int
    , runningCount : Maybe Int
    , pendingCount : Maybe Int
    , taskDefinition : Maybe String
    , deploymentConfiguration : Maybe DeploymentConfiguration
    , deployments : Maybe (List Deployment)
    , roleArn : Maybe String
    , events : Maybe (List ServiceEvent)
    , createdAt : Maybe Date
    , placementConstraints : Maybe (List PlacementConstraint)
    , placementStrategy : Maybe (List PlacementStrategy)
    }



serviceDecoder : JD.Decoder Service
serviceDecoder =
    JDP.decode Service
        |> JDP.optional "serviceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "loadBalancers" (JD.nullable (JD.list loadBalancerDecoder)) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "desiredCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "runningCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "pendingCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "taskDefinition" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentConfiguration" (JD.nullable deploymentConfigurationDecoder) Nothing
        |> JDP.optional "deployments" (JD.nullable (JD.list deploymentDecoder)) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list serviceEventDecoder)) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "placementConstraints" (JD.nullable (JD.list placementConstraintDecoder)) Nothing
        |> JDP.optional "placementStrategy" (JD.nullable (JD.list placementStrategyDecoder)) Nothing




{-| <p>Details on an event associated with a service.</p>
-}
type alias ServiceEvent =
    { id : Maybe String
    , createdAt : Maybe Date
    , message : Maybe String
    }



serviceEventDecoder : JD.Decoder ServiceEvent
serviceEventDecoder =
    JDP.decode ServiceEvent
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified service is not active. You cannot update a service that is not active. If you have previously deleted a service, you can re-create it with <a>CreateService</a>.</p>
-}
type alias ServiceNotActiveException =
    { 
    }



serviceNotActiveExceptionDecoder : JD.Decoder ServiceNotActiveException
serviceNotActiveExceptionDecoder =
    JDP.decode ServiceNotActiveException



{-| <p>The specified service could not be found. You can view your available services with <a>ListServices</a>. Amazon ECS services are cluster-specific and region-specific.</p>
-}
type alias ServiceNotFoundException =
    { 
    }



serviceNotFoundExceptionDecoder : JD.Decoder ServiceNotFoundException
serviceNotFoundExceptionDecoder =
    JDP.decode ServiceNotFoundException



{-| One of

* `SortOrder_ASC`
* `SortOrder_DESC`

-}
type SortOrder
    = SortOrder_ASC
    | SortOrder_DESC



sortOrderDecoder : JD.Decoder SortOrder
sortOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASC" ->
                        JD.succeed SortOrder_ASC

                    "DESC" ->
                        JD.succeed SortOrder_DESC


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from startTask
-}
type alias StartTaskResponse =
    { tasks : Maybe (List Task)
    , failures : Maybe (List Failure)
    }



startTaskResponseDecoder : JD.Decoder StartTaskResponse
startTaskResponseDecoder =
    JDP.decode StartTaskResponse
        |> JDP.optional "tasks" (JD.nullable (JD.list taskDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list failureDecoder)) Nothing




{-| Type of HTTP response from stopTask
-}
type alias StopTaskResponse =
    { task : Maybe Task
    }



stopTaskResponseDecoder : JD.Decoder StopTaskResponse
stopTaskResponseDecoder =
    JDP.decode StopTaskResponse
        |> JDP.optional "task" (JD.nullable taskDecoder) Nothing




{-| Type of HTTP response from submitContainerStateChange
-}
type alias SubmitContainerStateChangeResponse =
    { acknowledgment : Maybe String
    }



submitContainerStateChangeResponseDecoder : JD.Decoder SubmitContainerStateChangeResponse
submitContainerStateChangeResponseDecoder =
    JDP.decode SubmitContainerStateChangeResponse
        |> JDP.optional "acknowledgment" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from submitTaskStateChange
-}
type alias SubmitTaskStateChangeResponse =
    { acknowledgment : Maybe String
    }



submitTaskStateChangeResponseDecoder : JD.Decoder SubmitTaskStateChangeResponse
submitTaskStateChangeResponseDecoder =
    JDP.decode SubmitTaskStateChangeResponse
        |> JDP.optional "acknowledgment" (JD.nullable JD.string) Nothing




{-| <p>The specified target could not be found. You can view your available container instances with <a>ListContainerInstances</a>. Amazon ECS container instances are cluster-specific and region-specific.</p>
-}
type alias TargetNotFoundException =
    { 
    }



targetNotFoundExceptionDecoder : JD.Decoder TargetNotFoundException
targetNotFoundExceptionDecoder =
    JDP.decode TargetNotFoundException



{-| One of

* `TargetType_container-instance`

-}
type TargetType
    = TargetType_container_instance



targetTypeDecoder : JD.Decoder TargetType
targetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "container_instance" ->
                        JD.succeed TargetType_container_instance


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Details on a task in a cluster.</p>
-}
type alias Task =
    { taskArn : Maybe String
    , clusterArn : Maybe String
    , taskDefinitionArn : Maybe String
    , containerInstanceArn : Maybe String
    , overrides : Maybe TaskOverride
    , lastStatus : Maybe String
    , desiredStatus : Maybe String
    , containers : Maybe (List Container)
    , startedBy : Maybe String
    , version : Maybe Int
    , stoppedReason : Maybe String
    , createdAt : Maybe Date
    , startedAt : Maybe Date
    , stoppedAt : Maybe Date
    , group : Maybe String
    }



taskDecoder : JD.Decoder Task
taskDecoder =
    JDP.decode Task
        |> JDP.optional "taskArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskDefinitionArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "containerInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "overrides" (JD.nullable taskOverrideDecoder) Nothing
        |> JDP.optional "lastStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "desiredStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "containers" (JD.nullable (JD.list containerDecoder)) Nothing
        |> JDP.optional "startedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.int) Nothing
        |> JDP.optional "stoppedReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stoppedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "group" (JD.nullable JD.string) Nothing




{-| <p>Details of a task definition.</p>
-}
type alias TaskDefinition =
    { taskDefinitionArn : Maybe String
    , containerDefinitions : Maybe (List ContainerDefinition)
    , family : Maybe String
    , taskRoleArn : Maybe String
    , networkMode : Maybe NetworkMode
    , revision : Maybe Int
    , volumes : Maybe (List Volume)
    , status : Maybe TaskDefinitionStatus
    , requiresAttributes : Maybe (List Attribute)
    , placementConstraints : Maybe (List TaskDefinitionPlacementConstraint)
    }



taskDefinitionDecoder : JD.Decoder TaskDefinition
taskDefinitionDecoder =
    JDP.decode TaskDefinition
        |> JDP.optional "taskDefinitionArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "containerDefinitions" (JD.nullable (JD.list containerDefinitionDecoder)) Nothing
        |> JDP.optional "family" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkMode" (JD.nullable networkModeDecoder) Nothing
        |> JDP.optional "revision" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumes" (JD.nullable (JD.list volumeDecoder)) Nothing
        |> JDP.optional "status" (JD.nullable taskDefinitionStatusDecoder) Nothing
        |> JDP.optional "requiresAttributes" (JD.nullable (JD.list attributeDecoder)) Nothing
        |> JDP.optional "placementConstraints" (JD.nullable (JD.list taskDefinitionPlacementConstraintDecoder)) Nothing




{-| One of

* `TaskDefinitionFamilyStatus_ACTIVE`
* `TaskDefinitionFamilyStatus_INACTIVE`
* `TaskDefinitionFamilyStatus_ALL`

-}
type TaskDefinitionFamilyStatus
    = TaskDefinitionFamilyStatus_ACTIVE
    | TaskDefinitionFamilyStatus_INACTIVE
    | TaskDefinitionFamilyStatus_ALL



taskDefinitionFamilyStatusDecoder : JD.Decoder TaskDefinitionFamilyStatus
taskDefinitionFamilyStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed TaskDefinitionFamilyStatus_ACTIVE

                    "INACTIVE" ->
                        JD.succeed TaskDefinitionFamilyStatus_INACTIVE

                    "ALL" ->
                        JD.succeed TaskDefinitionFamilyStatus_ALL


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An object representing a constraint on task placement in the task definition. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html">Task Placement Constraints</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-}
type alias TaskDefinitionPlacementConstraint =
    { type_ : Maybe TaskDefinitionPlacementConstraintType
    , expression : Maybe String
    }



taskDefinitionPlacementConstraintDecoder : JD.Decoder TaskDefinitionPlacementConstraint
taskDefinitionPlacementConstraintDecoder =
    JDP.decode TaskDefinitionPlacementConstraint
        |> JDP.optional "type_" (JD.nullable taskDefinitionPlacementConstraintTypeDecoder) Nothing
        |> JDP.optional "expression" (JD.nullable JD.string) Nothing




{-| One of

* `TaskDefinitionPlacementConstraintType_memberOf`

-}
type TaskDefinitionPlacementConstraintType
    = TaskDefinitionPlacementConstraintType_memberOf



taskDefinitionPlacementConstraintTypeDecoder : JD.Decoder TaskDefinitionPlacementConstraintType
taskDefinitionPlacementConstraintTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "memberOf" ->
                        JD.succeed TaskDefinitionPlacementConstraintType_memberOf


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `TaskDefinitionStatus_ACTIVE`
* `TaskDefinitionStatus_INACTIVE`

-}
type TaskDefinitionStatus
    = TaskDefinitionStatus_ACTIVE
    | TaskDefinitionStatus_INACTIVE



taskDefinitionStatusDecoder : JD.Decoder TaskDefinitionStatus
taskDefinitionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed TaskDefinitionStatus_ACTIVE

                    "INACTIVE" ->
                        JD.succeed TaskDefinitionStatus_INACTIVE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The overrides associated with a task.</p>
-}
type alias TaskOverride =
    { containerOverrides : Maybe (List ContainerOverride)
    , taskRoleArn : Maybe String
    }



taskOverrideDecoder : JD.Decoder TaskOverride
taskOverrideDecoder =
    JDP.decode TaskOverride
        |> JDP.optional "containerOverrides" (JD.nullable (JD.list containerOverrideDecoder)) Nothing
        |> JDP.optional "taskRoleArn" (JD.nullable JD.string) Nothing




{-| One of

* `TransportProtocol_tcp`
* `TransportProtocol_udp`

-}
type TransportProtocol
    = TransportProtocol_tcp
    | TransportProtocol_udp



transportProtocolDecoder : JD.Decoder TransportProtocol
transportProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "tcp" ->
                        JD.succeed TransportProtocol_tcp

                    "udp" ->
                        JD.succeed TransportProtocol_udp


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The <code>ulimit</code> settings to pass to the container.</p>
-}
type alias Ulimit =
    { name : UlimitName
    , softLimit : Int
    , hardLimit : Int
    }



ulimitDecoder : JD.Decoder Ulimit
ulimitDecoder =
    JDP.decode Ulimit
        |> JDP.required "name" ulimitNameDecoder
        |> JDP.required "softLimit" JD.int
        |> JDP.required "hardLimit" JD.int




{-| One of

* `UlimitName_core`
* `UlimitName_cpu`
* `UlimitName_data`
* `UlimitName_fsize`
* `UlimitName_locks`
* `UlimitName_memlock`
* `UlimitName_msgqueue`
* `UlimitName_nice`
* `UlimitName_nofile`
* `UlimitName_nproc`
* `UlimitName_rss`
* `UlimitName_rtprio`
* `UlimitName_rttime`
* `UlimitName_sigpending`
* `UlimitName_stack`

-}
type UlimitName
    = UlimitName_core
    | UlimitName_cpu
    | UlimitName_data
    | UlimitName_fsize
    | UlimitName_locks
    | UlimitName_memlock
    | UlimitName_msgqueue
    | UlimitName_nice
    | UlimitName_nofile
    | UlimitName_nproc
    | UlimitName_rss
    | UlimitName_rtprio
    | UlimitName_rttime
    | UlimitName_sigpending
    | UlimitName_stack



ulimitNameDecoder : JD.Decoder UlimitName
ulimitNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "core" ->
                        JD.succeed UlimitName_core

                    "cpu" ->
                        JD.succeed UlimitName_cpu

                    "data" ->
                        JD.succeed UlimitName_data

                    "fsize" ->
                        JD.succeed UlimitName_fsize

                    "locks" ->
                        JD.succeed UlimitName_locks

                    "memlock" ->
                        JD.succeed UlimitName_memlock

                    "msgqueue" ->
                        JD.succeed UlimitName_msgqueue

                    "nice" ->
                        JD.succeed UlimitName_nice

                    "nofile" ->
                        JD.succeed UlimitName_nofile

                    "nproc" ->
                        JD.succeed UlimitName_nproc

                    "rss" ->
                        JD.succeed UlimitName_rss

                    "rtprio" ->
                        JD.succeed UlimitName_rtprio

                    "rttime" ->
                        JD.succeed UlimitName_rttime

                    "sigpending" ->
                        JD.succeed UlimitName_sigpending

                    "stack" ->
                        JD.succeed UlimitName_stack


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from updateContainerAgent
-}
type alias UpdateContainerAgentResponse =
    { containerInstance : Maybe ContainerInstance
    }



updateContainerAgentResponseDecoder : JD.Decoder UpdateContainerAgentResponse
updateContainerAgentResponseDecoder =
    JDP.decode UpdateContainerAgentResponse
        |> JDP.optional "containerInstance" (JD.nullable containerInstanceDecoder) Nothing




{-| Type of HTTP response from updateContainerInstancesState
-}
type alias UpdateContainerInstancesStateResponse =
    { containerInstances : Maybe (List ContainerInstance)
    , failures : Maybe (List Failure)
    }



updateContainerInstancesStateResponseDecoder : JD.Decoder UpdateContainerInstancesStateResponse
updateContainerInstancesStateResponseDecoder =
    JDP.decode UpdateContainerInstancesStateResponse
        |> JDP.optional "containerInstances" (JD.nullable (JD.list containerInstanceDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list failureDecoder)) Nothing




{-| <p>There is already a current Amazon ECS container agent update in progress on the specified container instance. If the container agent becomes disconnected while it is in a transitional stage, such as <code>PENDING</code> or <code>STAGING</code>, the update process can get stuck in that state. However, when the agent reconnects, it resumes where it stopped previously.</p>
-}
type alias UpdateInProgressException =
    { 
    }



updateInProgressExceptionDecoder : JD.Decoder UpdateInProgressException
updateInProgressExceptionDecoder =
    JDP.decode UpdateInProgressException



{-| Type of HTTP response from updateService
-}
type alias UpdateServiceResponse =
    { service : Maybe Service
    }



updateServiceResponseDecoder : JD.Decoder UpdateServiceResponse
updateServiceResponseDecoder =
    JDP.decode UpdateServiceResponse
        |> JDP.optional "service" (JD.nullable serviceDecoder) Nothing




{-| <p>The Docker and Amazon ECS container agent version information about a container instance.</p>
-}
type alias VersionInfo =
    { agentVersion : Maybe String
    , agentHash : Maybe String
    , dockerVersion : Maybe String
    }



versionInfoDecoder : JD.Decoder VersionInfo
versionInfoDecoder =
    JDP.decode VersionInfo
        |> JDP.optional "agentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "agentHash" (JD.nullable JD.string) Nothing
        |> JDP.optional "dockerVersion" (JD.nullable JD.string) Nothing




{-| <p>A data volume used in a task definition.</p>
-}
type alias Volume =
    { name : Maybe String
    , host : Maybe HostVolumeProperties
    }



volumeDecoder : JD.Decoder Volume
volumeDecoder =
    JDP.decode Volume
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "host" (JD.nullable hostVolumePropertiesDecoder) Nothing




{-| <p>Details on a data volume from another container.</p>
-}
type alias VolumeFrom =
    { sourceContainer : Maybe String
    , readOnly : Maybe Bool
    }



volumeFromDecoder : JD.Decoder VolumeFrom
volumeFromDecoder =
    JDP.decode VolumeFrom
        |> JDP.optional "sourceContainer" (JD.nullable JD.string) Nothing
        |> JDP.optional "readOnly" (JD.nullable JD.bool) Nothing




