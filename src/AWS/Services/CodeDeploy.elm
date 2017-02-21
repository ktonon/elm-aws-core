module AWS.Services.CodeDeploy
    exposing
        ( config
        , addTagsToOnPremisesInstances
        , batchGetApplicationRevisions
        , batchGetApplications
        , BatchGetApplicationsOptions
        , batchGetDeploymentGroups
        , batchGetDeploymentInstances
        , batchGetDeployments
        , BatchGetDeploymentsOptions
        , batchGetOnPremisesInstances
        , BatchGetOnPremisesInstancesOptions
        , continueDeployment
        , ContinueDeploymentOptions
        , createApplication
        , createDeployment
        , CreateDeploymentOptions
        , createDeploymentConfig
        , CreateDeploymentConfigOptions
        , createDeploymentGroup
        , CreateDeploymentGroupOptions
        , deleteApplication
        , deleteDeploymentConfig
        , deleteDeploymentGroup
        , deregisterOnPremisesInstance
        , getApplication
        , getApplicationRevision
        , getDeployment
        , getDeploymentConfig
        , getDeploymentGroup
        , getDeploymentInstance
        , getOnPremisesInstance
        , listApplicationRevisions
        , ListApplicationRevisionsOptions
        , listApplications
        , ListApplicationsOptions
        , listDeploymentConfigs
        , ListDeploymentConfigsOptions
        , listDeploymentGroups
        , ListDeploymentGroupsOptions
        , listDeploymentInstances
        , ListDeploymentInstancesOptions
        , listDeployments
        , ListDeploymentsOptions
        , listOnPremisesInstances
        , ListOnPremisesInstancesOptions
        , registerApplicationRevision
        , RegisterApplicationRevisionOptions
        , registerOnPremisesInstance
        , RegisterOnPremisesInstanceOptions
        , removeTagsFromOnPremisesInstances
        , skipWaitTimeForInstanceTermination
        , SkipWaitTimeForInstanceTerminationOptions
        , stopDeployment
        , StopDeploymentOptions
        , updateApplication
        , UpdateApplicationOptions
        , updateDeploymentGroup
        , UpdateDeploymentGroupOptions
        , Alarm
        , AlarmConfiguration
        , AlarmsLimitExceededException
        , ApplicationAlreadyExistsException
        , ApplicationDoesNotExistException
        , ApplicationInfo
        , ApplicationLimitExceededException
        , ApplicationNameRequiredException
        , ApplicationRevisionSortBy(..)
        , AutoRollbackConfiguration
        , AutoRollbackEvent(..)
        , AutoScalingGroup
        , BatchGetApplicationRevisionsOutput
        , BatchGetApplicationsOutput
        , BatchGetDeploymentGroupsOutput
        , BatchGetDeploymentInstancesOutput
        , BatchGetDeploymentsOutput
        , BatchGetOnPremisesInstancesOutput
        , BatchLimitExceededException
        , BlueGreenDeploymentConfiguration
        , BlueInstanceTerminationOption
        , BucketNameFilterRequiredException
        , BundleType(..)
        , CreateApplicationOutput
        , CreateDeploymentConfigOutput
        , CreateDeploymentGroupOutput
        , CreateDeploymentOutput
        , DeleteDeploymentGroupOutput
        , DeploymentAlreadyCompletedException
        , DeploymentConfigAlreadyExistsException
        , DeploymentConfigDoesNotExistException
        , DeploymentConfigInUseException
        , DeploymentConfigInfo
        , DeploymentConfigLimitExceededException
        , DeploymentConfigNameRequiredException
        , DeploymentCreator(..)
        , DeploymentDoesNotExistException
        , DeploymentGroupAlreadyExistsException
        , DeploymentGroupDoesNotExistException
        , DeploymentGroupInfo
        , DeploymentGroupLimitExceededException
        , DeploymentGroupNameRequiredException
        , DeploymentIdRequiredException
        , DeploymentInfo
        , DeploymentIsNotInReadyStateException
        , DeploymentLimitExceededException
        , DeploymentNotStartedException
        , DeploymentOption(..)
        , DeploymentOverview
        , DeploymentReadyAction(..)
        , DeploymentReadyOption
        , DeploymentStatus(..)
        , DeploymentStyle
        , DeploymentType(..)
        , DescriptionTooLongException
        , Diagnostics
        , EC2TagFilter
        , EC2TagFilterType(..)
        , ELBInfo
        , ErrorCode(..)
        , ErrorInformation
        , GenericRevisionInfo
        , GetApplicationOutput
        , GetApplicationRevisionOutput
        , GetDeploymentConfigOutput
        , GetDeploymentGroupOutput
        , GetDeploymentInstanceOutput
        , GetDeploymentOutput
        , GetOnPremisesInstanceOutput
        , GitHubLocation
        , GreenFleetProvisioningAction(..)
        , GreenFleetProvisioningOption
        , IamArnRequiredException
        , IamSessionArnAlreadyRegisteredException
        , IamUserArnAlreadyRegisteredException
        , IamUserArnRequiredException
        , InstanceAction(..)
        , InstanceDoesNotExistException
        , InstanceIdRequiredException
        , InstanceInfo
        , InstanceLimitExceededException
        , InstanceNameAlreadyRegisteredException
        , InstanceNameRequiredException
        , InstanceNotRegisteredException
        , InstanceStatus(..)
        , InstanceSummary
        , InstanceType(..)
        , InvalidAlarmConfigException
        , InvalidApplicationNameException
        , InvalidAutoRollbackConfigException
        , InvalidAutoScalingGroupException
        , InvalidBlueGreenDeploymentConfigurationException
        , InvalidBucketNameFilterException
        , InvalidDeployedStateFilterException
        , InvalidDeploymentConfigNameException
        , InvalidDeploymentGroupNameException
        , InvalidDeploymentIdException
        , InvalidDeploymentStatusException
        , InvalidDeploymentStyleException
        , InvalidEC2TagException
        , InvalidIamSessionArnException
        , InvalidIamUserArnException
        , InvalidInstanceNameException
        , InvalidInstanceStatusException
        , InvalidInstanceTypeException
        , InvalidKeyPrefixFilterException
        , InvalidLoadBalancerInfoException
        , InvalidMinimumHealthyHostValueException
        , InvalidNextTokenException
        , InvalidOperationException
        , InvalidRegistrationStatusException
        , InvalidRevisionException
        , InvalidRoleException
        , InvalidSortByException
        , InvalidSortOrderException
        , InvalidTagException
        , InvalidTagFilterException
        , InvalidTargetInstancesException
        , InvalidTimeRangeException
        , InvalidTriggerConfigException
        , LifecycleErrorCode(..)
        , LifecycleEvent
        , LifecycleEventStatus(..)
        , LifecycleHookLimitExceededException
        , ListApplicationRevisionsOutput
        , ListApplicationsOutput
        , ListDeploymentConfigsOutput
        , ListDeploymentGroupsOutput
        , ListDeploymentInstancesOutput
        , ListDeploymentsOutput
        , ListOnPremisesInstancesOutput
        , ListStateFilterAction(..)
        , LoadBalancerInfo
        , MinimumHealthyHosts
        , MinimumHealthyHostsType(..)
        , MultipleIamArnsProvidedException
        , RegistrationStatus(..)
        , RevisionDoesNotExistException
        , RevisionInfo
        , RevisionLocation
        , RevisionLocationType(..)
        , RevisionRequiredException
        , RoleRequiredException
        , RollbackInfo
        , S3Location
        , SortOrder(..)
        , StopDeploymentOutput
        , StopStatus(..)
        , Tag
        , TagFilter
        , TagFilterType(..)
        , TagLimitExceededException
        , TagRequiredException
        , TargetInstances
        , TimeRange
        , TriggerConfig
        , TriggerEventType(..)
        , TriggerTargetsLimitExceededException
        , UnsupportedActionForDeploymentTypeException
        , UpdateDeploymentGroupOutput
        )

{-| <fullname>AWS CodeDeploy</fullname> <p> <b>Overview</b> </p> <p>This reference guide provides descriptions of the AWS CodeDeploy APIs. For more information about AWS CodeDeploy, see the <a href="http://docs.aws.amazon.com/codedeploy/latest/userguide">AWS CodeDeploy User Guide</a>.</p> <p> <b>Using the APIs</b> </p> <p>You can use the AWS CodeDeploy APIs to work with the following:</p> <ul> <li> <p>Applications are unique identifiers used by AWS CodeDeploy to ensure the correct combinations of revisions, deployment configurations, and deployment groups are being referenced during deployments.</p> <p>You can use the AWS CodeDeploy APIs to create, delete, get, list, and update applications.</p> </li> <li> <p>Deployment configurations are sets of deployment rules and success and failure conditions used by AWS CodeDeploy during deployments.</p> <p>You can use the AWS CodeDeploy APIs to create, delete, get, and list deployment configurations.</p> </li> <li> <p>Deployment groups are groups of instances to which application revisions can be deployed.</p> <p>You can use the AWS CodeDeploy APIs to create, delete, get, list, and update deployment groups.</p> </li> <li> <p>Instances represent Amazon EC2 instances to which application revisions are deployed. Instances are identified by their Amazon EC2 tags or Auto Scaling group names. Instances belong to deployment groups.</p> <p>You can use the AWS CodeDeploy APIs to get and list instance.</p> </li> <li> <p>Deployments represent the process of deploying revisions to instances.</p> <p>You can use the AWS CodeDeploy APIs to create, get, list, and stop deployments.</p> </li> <li> <p>Application revisions are archive files stored in Amazon S3 buckets or GitHub repositories. These revisions contain source content (such as source code, web pages, executable files, and deployment scripts) along with an application specification (AppSpec) file. (The AppSpec file is unique to AWS CodeDeploy; it defines the deployment actions you want AWS CodeDeploy to execute.) For application revisions stored in Amazon S3 buckets, an application revision is uniquely identified by its Amazon S3 object key and its ETag, version, or both. For application revisions stored in GitHub repositories, an application revision is uniquely identified by its repository name and commit ID. Application revisions are deployed through deployment groups.</p> <p>You can use the AWS CodeDeploy APIs to get, list, and register application revisions.</p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToOnPremisesInstances](#addTagsToOnPremisesInstances)
* [batchGetApplicationRevisions](#batchGetApplicationRevisions)
* [batchGetApplications](#batchGetApplications)
* [BatchGetApplicationsOptions](#BatchGetApplicationsOptions)
* [batchGetDeploymentGroups](#batchGetDeploymentGroups)
* [batchGetDeploymentInstances](#batchGetDeploymentInstances)
* [batchGetDeployments](#batchGetDeployments)
* [BatchGetDeploymentsOptions](#BatchGetDeploymentsOptions)
* [batchGetOnPremisesInstances](#batchGetOnPremisesInstances)
* [BatchGetOnPremisesInstancesOptions](#BatchGetOnPremisesInstancesOptions)
* [continueDeployment](#continueDeployment)
* [ContinueDeploymentOptions](#ContinueDeploymentOptions)
* [createApplication](#createApplication)
* [createDeployment](#createDeployment)
* [CreateDeploymentOptions](#CreateDeploymentOptions)
* [createDeploymentConfig](#createDeploymentConfig)
* [CreateDeploymentConfigOptions](#CreateDeploymentConfigOptions)
* [createDeploymentGroup](#createDeploymentGroup)
* [CreateDeploymentGroupOptions](#CreateDeploymentGroupOptions)
* [deleteApplication](#deleteApplication)
* [deleteDeploymentConfig](#deleteDeploymentConfig)
* [deleteDeploymentGroup](#deleteDeploymentGroup)
* [deregisterOnPremisesInstance](#deregisterOnPremisesInstance)
* [getApplication](#getApplication)
* [getApplicationRevision](#getApplicationRevision)
* [getDeployment](#getDeployment)
* [getDeploymentConfig](#getDeploymentConfig)
* [getDeploymentGroup](#getDeploymentGroup)
* [getDeploymentInstance](#getDeploymentInstance)
* [getOnPremisesInstance](#getOnPremisesInstance)
* [listApplicationRevisions](#listApplicationRevisions)
* [ListApplicationRevisionsOptions](#ListApplicationRevisionsOptions)
* [listApplications](#listApplications)
* [ListApplicationsOptions](#ListApplicationsOptions)
* [listDeploymentConfigs](#listDeploymentConfigs)
* [ListDeploymentConfigsOptions](#ListDeploymentConfigsOptions)
* [listDeploymentGroups](#listDeploymentGroups)
* [ListDeploymentGroupsOptions](#ListDeploymentGroupsOptions)
* [listDeploymentInstances](#listDeploymentInstances)
* [ListDeploymentInstancesOptions](#ListDeploymentInstancesOptions)
* [listDeployments](#listDeployments)
* [ListDeploymentsOptions](#ListDeploymentsOptions)
* [listOnPremisesInstances](#listOnPremisesInstances)
* [ListOnPremisesInstancesOptions](#ListOnPremisesInstancesOptions)
* [registerApplicationRevision](#registerApplicationRevision)
* [RegisterApplicationRevisionOptions](#RegisterApplicationRevisionOptions)
* [registerOnPremisesInstance](#registerOnPremisesInstance)
* [RegisterOnPremisesInstanceOptions](#RegisterOnPremisesInstanceOptions)
* [removeTagsFromOnPremisesInstances](#removeTagsFromOnPremisesInstances)
* [skipWaitTimeForInstanceTermination](#skipWaitTimeForInstanceTermination)
* [SkipWaitTimeForInstanceTerminationOptions](#SkipWaitTimeForInstanceTerminationOptions)
* [stopDeployment](#stopDeployment)
* [StopDeploymentOptions](#StopDeploymentOptions)
* [updateApplication](#updateApplication)
* [UpdateApplicationOptions](#UpdateApplicationOptions)
* [updateDeploymentGroup](#updateDeploymentGroup)
* [UpdateDeploymentGroupOptions](#UpdateDeploymentGroupOptions)


@docs addTagsToOnPremisesInstances,batchGetApplicationRevisions,batchGetApplications,BatchGetApplicationsOptions,batchGetDeploymentGroups,batchGetDeploymentInstances,batchGetDeployments,BatchGetDeploymentsOptions,batchGetOnPremisesInstances,BatchGetOnPremisesInstancesOptions,continueDeployment,ContinueDeploymentOptions,createApplication,createDeployment,CreateDeploymentOptions,createDeploymentConfig,CreateDeploymentConfigOptions,createDeploymentGroup,CreateDeploymentGroupOptions,deleteApplication,deleteDeploymentConfig,deleteDeploymentGroup,deregisterOnPremisesInstance,getApplication,getApplicationRevision,getDeployment,getDeploymentConfig,getDeploymentGroup,getDeploymentInstance,getOnPremisesInstance,listApplicationRevisions,ListApplicationRevisionsOptions,listApplications,ListApplicationsOptions,listDeploymentConfigs,ListDeploymentConfigsOptions,listDeploymentGroups,ListDeploymentGroupsOptions,listDeploymentInstances,ListDeploymentInstancesOptions,listDeployments,ListDeploymentsOptions,listOnPremisesInstances,ListOnPremisesInstancesOptions,registerApplicationRevision,RegisterApplicationRevisionOptions,registerOnPremisesInstance,RegisterOnPremisesInstanceOptions,removeTagsFromOnPremisesInstances,skipWaitTimeForInstanceTermination,SkipWaitTimeForInstanceTerminationOptions,stopDeployment,StopDeploymentOptions,updateApplication,UpdateApplicationOptions,updateDeploymentGroup,UpdateDeploymentGroupOptions

## Responses

* [BatchGetApplicationRevisionsOutput](#BatchGetApplicationRevisionsOutput)
* [BatchGetApplicationsOutput](#BatchGetApplicationsOutput)
* [BatchGetDeploymentGroupsOutput](#BatchGetDeploymentGroupsOutput)
* [BatchGetDeploymentInstancesOutput](#BatchGetDeploymentInstancesOutput)
* [BatchGetDeploymentsOutput](#BatchGetDeploymentsOutput)
* [BatchGetOnPremisesInstancesOutput](#BatchGetOnPremisesInstancesOutput)
* [CreateApplicationOutput](#CreateApplicationOutput)
* [CreateDeploymentConfigOutput](#CreateDeploymentConfigOutput)
* [CreateDeploymentGroupOutput](#CreateDeploymentGroupOutput)
* [CreateDeploymentOutput](#CreateDeploymentOutput)
* [DeleteDeploymentGroupOutput](#DeleteDeploymentGroupOutput)
* [GetApplicationOutput](#GetApplicationOutput)
* [GetApplicationRevisionOutput](#GetApplicationRevisionOutput)
* [GetDeploymentConfigOutput](#GetDeploymentConfigOutput)
* [GetDeploymentGroupOutput](#GetDeploymentGroupOutput)
* [GetDeploymentInstanceOutput](#GetDeploymentInstanceOutput)
* [GetDeploymentOutput](#GetDeploymentOutput)
* [GetOnPremisesInstanceOutput](#GetOnPremisesInstanceOutput)
* [ListApplicationRevisionsOutput](#ListApplicationRevisionsOutput)
* [ListApplicationsOutput](#ListApplicationsOutput)
* [ListDeploymentConfigsOutput](#ListDeploymentConfigsOutput)
* [ListDeploymentGroupsOutput](#ListDeploymentGroupsOutput)
* [ListDeploymentInstancesOutput](#ListDeploymentInstancesOutput)
* [ListDeploymentsOutput](#ListDeploymentsOutput)
* [ListOnPremisesInstancesOutput](#ListOnPremisesInstancesOutput)
* [StopDeploymentOutput](#StopDeploymentOutput)
* [UpdateDeploymentGroupOutput](#UpdateDeploymentGroupOutput)


@docs BatchGetApplicationRevisionsOutput,BatchGetApplicationsOutput,BatchGetDeploymentGroupsOutput,BatchGetDeploymentInstancesOutput,BatchGetDeploymentsOutput,BatchGetOnPremisesInstancesOutput,CreateApplicationOutput,CreateDeploymentConfigOutput,CreateDeploymentGroupOutput,CreateDeploymentOutput,DeleteDeploymentGroupOutput,GetApplicationOutput,GetApplicationRevisionOutput,GetDeploymentConfigOutput,GetDeploymentGroupOutput,GetDeploymentInstanceOutput,GetDeploymentOutput,GetOnPremisesInstanceOutput,ListApplicationRevisionsOutput,ListApplicationsOutput,ListDeploymentConfigsOutput,ListDeploymentGroupsOutput,ListDeploymentInstancesOutput,ListDeploymentsOutput,ListOnPremisesInstancesOutput,StopDeploymentOutput,UpdateDeploymentGroupOutput

## Records

* [Alarm](#Alarm)
* [AlarmConfiguration](#AlarmConfiguration)
* [ApplicationInfo](#ApplicationInfo)
* [AutoRollbackConfiguration](#AutoRollbackConfiguration)
* [AutoScalingGroup](#AutoScalingGroup)
* [BlueGreenDeploymentConfiguration](#BlueGreenDeploymentConfiguration)
* [BlueInstanceTerminationOption](#BlueInstanceTerminationOption)
* [DeploymentConfigInfo](#DeploymentConfigInfo)
* [DeploymentGroupInfo](#DeploymentGroupInfo)
* [DeploymentInfo](#DeploymentInfo)
* [DeploymentOverview](#DeploymentOverview)
* [DeploymentReadyOption](#DeploymentReadyOption)
* [DeploymentStyle](#DeploymentStyle)
* [Diagnostics](#Diagnostics)
* [EC2TagFilter](#EC2TagFilter)
* [ELBInfo](#ELBInfo)
* [ErrorInformation](#ErrorInformation)
* [GenericRevisionInfo](#GenericRevisionInfo)
* [GitHubLocation](#GitHubLocation)
* [GreenFleetProvisioningOption](#GreenFleetProvisioningOption)
* [InstanceInfo](#InstanceInfo)
* [InstanceSummary](#InstanceSummary)
* [LifecycleEvent](#LifecycleEvent)
* [LoadBalancerInfo](#LoadBalancerInfo)
* [MinimumHealthyHosts](#MinimumHealthyHosts)
* [RevisionInfo](#RevisionInfo)
* [RevisionLocation](#RevisionLocation)
* [RollbackInfo](#RollbackInfo)
* [S3Location](#S3Location)
* [Tag](#Tag)
* [TagFilter](#TagFilter)
* [TargetInstances](#TargetInstances)
* [TimeRange](#TimeRange)
* [TriggerConfig](#TriggerConfig)


@docs Alarm,AlarmConfiguration,ApplicationInfo,AutoRollbackConfiguration,AutoScalingGroup,BlueGreenDeploymentConfiguration,BlueInstanceTerminationOption,DeploymentConfigInfo,DeploymentGroupInfo,DeploymentInfo,DeploymentOverview,DeploymentReadyOption,DeploymentStyle,Diagnostics,EC2TagFilter,ELBInfo,ErrorInformation,GenericRevisionInfo,GitHubLocation,GreenFleetProvisioningOption,InstanceInfo,InstanceSummary,LifecycleEvent,LoadBalancerInfo,MinimumHealthyHosts,RevisionInfo,RevisionLocation,RollbackInfo,S3Location,Tag,TagFilter,TargetInstances,TimeRange,TriggerConfig

## Unions

* [ApplicationRevisionSortBy](#ApplicationRevisionSortBy)
* [AutoRollbackEvent](#AutoRollbackEvent)
* [BundleType](#BundleType)
* [DeploymentCreator](#DeploymentCreator)
* [DeploymentOption](#DeploymentOption)
* [DeploymentReadyAction](#DeploymentReadyAction)
* [DeploymentStatus](#DeploymentStatus)
* [DeploymentType](#DeploymentType)
* [EC2TagFilterType](#EC2TagFilterType)
* [ErrorCode](#ErrorCode)
* [GreenFleetProvisioningAction](#GreenFleetProvisioningAction)
* [InstanceAction](#InstanceAction)
* [InstanceStatus](#InstanceStatus)
* [InstanceType](#InstanceType)
* [LifecycleErrorCode](#LifecycleErrorCode)
* [LifecycleEventStatus](#LifecycleEventStatus)
* [ListStateFilterAction](#ListStateFilterAction)
* [MinimumHealthyHostsType](#MinimumHealthyHostsType)
* [RegistrationStatus](#RegistrationStatus)
* [RevisionLocationType](#RevisionLocationType)
* [SortOrder](#SortOrder)
* [StopStatus](#StopStatus)
* [TagFilterType](#TagFilterType)
* [TriggerEventType](#TriggerEventType)


@docs ApplicationRevisionSortBy,AutoRollbackEvent,BundleType,DeploymentCreator,DeploymentOption,DeploymentReadyAction,DeploymentStatus,DeploymentType,EC2TagFilterType,ErrorCode,GreenFleetProvisioningAction,InstanceAction,InstanceStatus,InstanceType,LifecycleErrorCode,LifecycleEventStatus,ListStateFilterAction,MinimumHealthyHostsType,RegistrationStatus,RevisionLocationType,SortOrder,StopStatus,TagFilterType,TriggerEventType

## Exceptions

* [AlarmsLimitExceededException](#AlarmsLimitExceededException)
* [ApplicationAlreadyExistsException](#ApplicationAlreadyExistsException)
* [ApplicationDoesNotExistException](#ApplicationDoesNotExistException)
* [ApplicationLimitExceededException](#ApplicationLimitExceededException)
* [ApplicationNameRequiredException](#ApplicationNameRequiredException)
* [BatchLimitExceededException](#BatchLimitExceededException)
* [BucketNameFilterRequiredException](#BucketNameFilterRequiredException)
* [DeploymentAlreadyCompletedException](#DeploymentAlreadyCompletedException)
* [DeploymentConfigAlreadyExistsException](#DeploymentConfigAlreadyExistsException)
* [DeploymentConfigDoesNotExistException](#DeploymentConfigDoesNotExistException)
* [DeploymentConfigInUseException](#DeploymentConfigInUseException)
* [DeploymentConfigLimitExceededException](#DeploymentConfigLimitExceededException)
* [DeploymentConfigNameRequiredException](#DeploymentConfigNameRequiredException)
* [DeploymentDoesNotExistException](#DeploymentDoesNotExistException)
* [DeploymentGroupAlreadyExistsException](#DeploymentGroupAlreadyExistsException)
* [DeploymentGroupDoesNotExistException](#DeploymentGroupDoesNotExistException)
* [DeploymentGroupLimitExceededException](#DeploymentGroupLimitExceededException)
* [DeploymentGroupNameRequiredException](#DeploymentGroupNameRequiredException)
* [DeploymentIdRequiredException](#DeploymentIdRequiredException)
* [DeploymentIsNotInReadyStateException](#DeploymentIsNotInReadyStateException)
* [DeploymentLimitExceededException](#DeploymentLimitExceededException)
* [DeploymentNotStartedException](#DeploymentNotStartedException)
* [DescriptionTooLongException](#DescriptionTooLongException)
* [IamArnRequiredException](#IamArnRequiredException)
* [IamSessionArnAlreadyRegisteredException](#IamSessionArnAlreadyRegisteredException)
* [IamUserArnAlreadyRegisteredException](#IamUserArnAlreadyRegisteredException)
* [IamUserArnRequiredException](#IamUserArnRequiredException)
* [InstanceDoesNotExistException](#InstanceDoesNotExistException)
* [InstanceIdRequiredException](#InstanceIdRequiredException)
* [InstanceLimitExceededException](#InstanceLimitExceededException)
* [InstanceNameAlreadyRegisteredException](#InstanceNameAlreadyRegisteredException)
* [InstanceNameRequiredException](#InstanceNameRequiredException)
* [InstanceNotRegisteredException](#InstanceNotRegisteredException)
* [InvalidAlarmConfigException](#InvalidAlarmConfigException)
* [InvalidApplicationNameException](#InvalidApplicationNameException)
* [InvalidAutoRollbackConfigException](#InvalidAutoRollbackConfigException)
* [InvalidAutoScalingGroupException](#InvalidAutoScalingGroupException)
* [InvalidBlueGreenDeploymentConfigurationException](#InvalidBlueGreenDeploymentConfigurationException)
* [InvalidBucketNameFilterException](#InvalidBucketNameFilterException)
* [InvalidDeployedStateFilterException](#InvalidDeployedStateFilterException)
* [InvalidDeploymentConfigNameException](#InvalidDeploymentConfigNameException)
* [InvalidDeploymentGroupNameException](#InvalidDeploymentGroupNameException)
* [InvalidDeploymentIdException](#InvalidDeploymentIdException)
* [InvalidDeploymentStatusException](#InvalidDeploymentStatusException)
* [InvalidDeploymentStyleException](#InvalidDeploymentStyleException)
* [InvalidEC2TagException](#InvalidEC2TagException)
* [InvalidIamSessionArnException](#InvalidIamSessionArnException)
* [InvalidIamUserArnException](#InvalidIamUserArnException)
* [InvalidInstanceNameException](#InvalidInstanceNameException)
* [InvalidInstanceStatusException](#InvalidInstanceStatusException)
* [InvalidInstanceTypeException](#InvalidInstanceTypeException)
* [InvalidKeyPrefixFilterException](#InvalidKeyPrefixFilterException)
* [InvalidLoadBalancerInfoException](#InvalidLoadBalancerInfoException)
* [InvalidMinimumHealthyHostValueException](#InvalidMinimumHealthyHostValueException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidOperationException](#InvalidOperationException)
* [InvalidRegistrationStatusException](#InvalidRegistrationStatusException)
* [InvalidRevisionException](#InvalidRevisionException)
* [InvalidRoleException](#InvalidRoleException)
* [InvalidSortByException](#InvalidSortByException)
* [InvalidSortOrderException](#InvalidSortOrderException)
* [InvalidTagException](#InvalidTagException)
* [InvalidTagFilterException](#InvalidTagFilterException)
* [InvalidTargetInstancesException](#InvalidTargetInstancesException)
* [InvalidTimeRangeException](#InvalidTimeRangeException)
* [InvalidTriggerConfigException](#InvalidTriggerConfigException)
* [LifecycleHookLimitExceededException](#LifecycleHookLimitExceededException)
* [MultipleIamArnsProvidedException](#MultipleIamArnsProvidedException)
* [RevisionDoesNotExistException](#RevisionDoesNotExistException)
* [RevisionRequiredException](#RevisionRequiredException)
* [RoleRequiredException](#RoleRequiredException)
* [TagLimitExceededException](#TagLimitExceededException)
* [TagRequiredException](#TagRequiredException)
* [TriggerTargetsLimitExceededException](#TriggerTargetsLimitExceededException)
* [UnsupportedActionForDeploymentTypeException](#UnsupportedActionForDeploymentTypeException)


@docs AlarmsLimitExceededException,ApplicationAlreadyExistsException,ApplicationDoesNotExistException,ApplicationLimitExceededException,ApplicationNameRequiredException,BatchLimitExceededException,BucketNameFilterRequiredException,DeploymentAlreadyCompletedException,DeploymentConfigAlreadyExistsException,DeploymentConfigDoesNotExistException,DeploymentConfigInUseException,DeploymentConfigLimitExceededException,DeploymentConfigNameRequiredException,DeploymentDoesNotExistException,DeploymentGroupAlreadyExistsException,DeploymentGroupDoesNotExistException,DeploymentGroupLimitExceededException,DeploymentGroupNameRequiredException,DeploymentIdRequiredException,DeploymentIsNotInReadyStateException,DeploymentLimitExceededException,DeploymentNotStartedException,DescriptionTooLongException,IamArnRequiredException,IamSessionArnAlreadyRegisteredException,IamUserArnAlreadyRegisteredException,IamUserArnRequiredException,InstanceDoesNotExistException,InstanceIdRequiredException,InstanceLimitExceededException,InstanceNameAlreadyRegisteredException,InstanceNameRequiredException,InstanceNotRegisteredException,InvalidAlarmConfigException,InvalidApplicationNameException,InvalidAutoRollbackConfigException,InvalidAutoScalingGroupException,InvalidBlueGreenDeploymentConfigurationException,InvalidBucketNameFilterException,InvalidDeployedStateFilterException,InvalidDeploymentConfigNameException,InvalidDeploymentGroupNameException,InvalidDeploymentIdException,InvalidDeploymentStatusException,InvalidDeploymentStyleException,InvalidEC2TagException,InvalidIamSessionArnException,InvalidIamUserArnException,InvalidInstanceNameException,InvalidInstanceStatusException,InvalidInstanceTypeException,InvalidKeyPrefixFilterException,InvalidLoadBalancerInfoException,InvalidMinimumHealthyHostValueException,InvalidNextTokenException,InvalidOperationException,InvalidRegistrationStatusException,InvalidRevisionException,InvalidRoleException,InvalidSortByException,InvalidSortOrderException,InvalidTagException,InvalidTagFilterException,InvalidTargetInstancesException,InvalidTimeRangeException,InvalidTriggerConfigException,LifecycleHookLimitExceededException,MultipleIamArnsProvidedException,RevisionDoesNotExistException,RevisionRequiredException,RoleRequiredException,TagLimitExceededException,TagRequiredException,TriggerTargetsLimitExceededException,UnsupportedActionForDeploymentTypeException

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
        "codedeploy"
        "2014-10-06"
        "1.1"
        "AWSCODEDEPLOY_20141006."
        "codedeploy.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Adds tags to on-premises instances.</p>

__Required Parameters__

* `tags` __:__ `(List Tag)`
* `instanceNames` __:__ `(List String)`


-}
addTagsToOnPremisesInstances :
    (List Tag)
    -> (List String)
    -> AWS.Http.UnsignedRequest ()
addTagsToOnPremisesInstances tags instanceNames =
    AWS.Http.unsignedRequest
        "AddTagsToOnPremisesInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Gets information about one or more application revisions.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `revisions` __:__ `(List RevisionLocation)`


-}
batchGetApplicationRevisions :
    String
    -> (List RevisionLocation)
    -> AWS.Http.UnsignedRequest BatchGetApplicationRevisionsOutput
batchGetApplicationRevisions applicationName revisions =
    AWS.Http.unsignedRequest
        "BatchGetApplicationRevisions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetApplicationRevisionsOutputDecoder



{-| <p>Gets information about one or more applications.</p>

__Required Parameters__



-}
batchGetApplications :
    (BatchGetApplicationsOptions -> BatchGetApplicationsOptions)
    -> AWS.Http.UnsignedRequest BatchGetApplicationsOutput
batchGetApplications setOptions =
  let
    options = setOptions (BatchGetApplicationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchGetApplications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetApplicationsOutputDecoder


{-| Options for a batchGetApplications request
-}
type alias BatchGetApplicationsOptions =
    { applicationNames : Maybe (List String)
    }



{-| <p>Gets information about one or more deployment groups.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `deploymentGroupNames` __:__ `(List String)`


-}
batchGetDeploymentGroups :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest BatchGetDeploymentGroupsOutput
batchGetDeploymentGroups applicationName deploymentGroupNames =
    AWS.Http.unsignedRequest
        "BatchGetDeploymentGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetDeploymentGroupsOutputDecoder



{-| <p>Gets information about one or more instance that are part of a deployment group.</p>

__Required Parameters__

* `deploymentId` __:__ `String`
* `instanceIds` __:__ `(List String)`


-}
batchGetDeploymentInstances :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest BatchGetDeploymentInstancesOutput
batchGetDeploymentInstances deploymentId instanceIds =
    AWS.Http.unsignedRequest
        "BatchGetDeploymentInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetDeploymentInstancesOutputDecoder



{-| <p>Gets information about one or more deployments.</p>

__Required Parameters__



-}
batchGetDeployments :
    (BatchGetDeploymentsOptions -> BatchGetDeploymentsOptions)
    -> AWS.Http.UnsignedRequest BatchGetDeploymentsOutput
batchGetDeployments setOptions =
  let
    options = setOptions (BatchGetDeploymentsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchGetDeployments"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetDeploymentsOutputDecoder


{-| Options for a batchGetDeployments request
-}
type alias BatchGetDeploymentsOptions =
    { deploymentIds : Maybe (List String)
    }



{-| <p>Gets information about one or more on-premises instances.</p>

__Required Parameters__



-}
batchGetOnPremisesInstances :
    (BatchGetOnPremisesInstancesOptions -> BatchGetOnPremisesInstancesOptions)
    -> AWS.Http.UnsignedRequest BatchGetOnPremisesInstancesOutput
batchGetOnPremisesInstances setOptions =
  let
    options = setOptions (BatchGetOnPremisesInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchGetOnPremisesInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetOnPremisesInstancesOutputDecoder


{-| Options for a batchGetOnPremisesInstances request
-}
type alias BatchGetOnPremisesInstancesOptions =
    { instanceNames : Maybe (List String)
    }



{-| <p>Starts the process of rerouting traffic from instances in the original environment to instances in thereplacement environment without waiting for a specified wait time to elapse. (Traffic rerouting, which is achieved by registering instances in the replacement environment with the load balancer, can start as soon as all instances have a status of Ready.) </p>

__Required Parameters__



-}
continueDeployment :
    (ContinueDeploymentOptions -> ContinueDeploymentOptions)
    -> AWS.Http.UnsignedRequest ()
continueDeployment setOptions =
  let
    options = setOptions (ContinueDeploymentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ContinueDeployment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a continueDeployment request
-}
type alias ContinueDeploymentOptions =
    { deploymentId : Maybe String
    }



{-| <p>Creates an application.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
createApplication :
    String
    -> AWS.Http.UnsignedRequest CreateApplicationOutput
createApplication applicationName =
    AWS.Http.unsignedRequest
        "CreateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createApplicationOutputDecoder



{-| <p>Deploys an application revision through the specified deployment group.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
createDeployment :
    String
    -> (CreateDeploymentOptions -> CreateDeploymentOptions)
    -> AWS.Http.UnsignedRequest CreateDeploymentOutput
createDeployment applicationName setOptions =
  let
    options = setOptions (CreateDeploymentOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDeployment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDeploymentOutputDecoder


{-| Options for a createDeployment request
-}
type alias CreateDeploymentOptions =
    { deploymentGroupName : Maybe String
    , revision : Maybe RevisionLocation
    , deploymentConfigName : Maybe String
    , description : Maybe String
    , ignoreApplicationStopFailures : Maybe Bool
    , targetInstances : Maybe TargetInstances
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , updateOutdatedInstancesOnly : Maybe Bool
    }



{-| <p>Creates a deployment configuration.</p>

__Required Parameters__

* `deploymentConfigName` __:__ `String`


-}
createDeploymentConfig :
    String
    -> (CreateDeploymentConfigOptions -> CreateDeploymentConfigOptions)
    -> AWS.Http.UnsignedRequest CreateDeploymentConfigOutput
createDeploymentConfig deploymentConfigName setOptions =
  let
    options = setOptions (CreateDeploymentConfigOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDeploymentConfig"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDeploymentConfigOutputDecoder


{-| Options for a createDeploymentConfig request
-}
type alias CreateDeploymentConfigOptions =
    { minimumHealthyHosts : Maybe MinimumHealthyHosts
    }



{-| <p>Creates a deployment group to which application revisions will be deployed.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `deploymentGroupName` __:__ `String`
* `serviceRoleArn` __:__ `String`


-}
createDeploymentGroup :
    String
    -> String
    -> String
    -> (CreateDeploymentGroupOptions -> CreateDeploymentGroupOptions)
    -> AWS.Http.UnsignedRequest CreateDeploymentGroupOutput
createDeploymentGroup applicationName deploymentGroupName serviceRoleArn setOptions =
  let
    options = setOptions (CreateDeploymentGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDeploymentGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDeploymentGroupOutputDecoder


{-| Options for a createDeploymentGroup request
-}
type alias CreateDeploymentGroupOptions =
    { deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List String)
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    }



{-| <p>Deletes an application.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
deleteApplication :
    String
    -> AWS.Http.UnsignedRequest ()
deleteApplication applicationName =
    AWS.Http.unsignedRequest
        "DeleteApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a deployment configuration.</p> <note> <p>A deployment configuration cannot be deleted if it is currently in use. Predefined configurations cannot be deleted.</p> </note>

__Required Parameters__

* `deploymentConfigName` __:__ `String`


-}
deleteDeploymentConfig :
    String
    -> AWS.Http.UnsignedRequest ()
deleteDeploymentConfig deploymentConfigName =
    AWS.Http.unsignedRequest
        "DeleteDeploymentConfig"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a deployment group.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `deploymentGroupName` __:__ `String`


-}
deleteDeploymentGroup :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteDeploymentGroupOutput
deleteDeploymentGroup applicationName deploymentGroupName =
    AWS.Http.unsignedRequest
        "DeleteDeploymentGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDeploymentGroupOutputDecoder



{-| <p>Deregisters an on-premises instance.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
deregisterOnPremisesInstance :
    String
    -> AWS.Http.UnsignedRequest ()
deregisterOnPremisesInstance instanceName =
    AWS.Http.unsignedRequest
        "DeregisterOnPremisesInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Gets information about an application.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
getApplication :
    String
    -> AWS.Http.UnsignedRequest GetApplicationOutput
getApplication applicationName =
    AWS.Http.unsignedRequest
        "GetApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getApplicationOutputDecoder



{-| <p>Gets information about an application revision.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `revision` __:__ `RevisionLocation`


-}
getApplicationRevision :
    String
    -> RevisionLocation
    -> AWS.Http.UnsignedRequest GetApplicationRevisionOutput
getApplicationRevision applicationName revision =
    AWS.Http.unsignedRequest
        "GetApplicationRevision"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getApplicationRevisionOutputDecoder



{-| <p>Gets information about a deployment.</p>

__Required Parameters__

* `deploymentId` __:__ `String`


-}
getDeployment :
    String
    -> AWS.Http.UnsignedRequest GetDeploymentOutput
getDeployment deploymentId =
    AWS.Http.unsignedRequest
        "GetDeployment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDeploymentOutputDecoder



{-| <p>Gets information about a deployment configuration.</p>

__Required Parameters__

* `deploymentConfigName` __:__ `String`


-}
getDeploymentConfig :
    String
    -> AWS.Http.UnsignedRequest GetDeploymentConfigOutput
getDeploymentConfig deploymentConfigName =
    AWS.Http.unsignedRequest
        "GetDeploymentConfig"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDeploymentConfigOutputDecoder



{-| <p>Gets information about a deployment group.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `deploymentGroupName` __:__ `String`


-}
getDeploymentGroup :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetDeploymentGroupOutput
getDeploymentGroup applicationName deploymentGroupName =
    AWS.Http.unsignedRequest
        "GetDeploymentGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDeploymentGroupOutputDecoder



{-| <p>Gets information about an instance as part of a deployment.</p>

__Required Parameters__

* `deploymentId` __:__ `String`
* `instanceId` __:__ `String`


-}
getDeploymentInstance :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetDeploymentInstanceOutput
getDeploymentInstance deploymentId instanceId =
    AWS.Http.unsignedRequest
        "GetDeploymentInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDeploymentInstanceOutputDecoder



{-| <p>Gets information about an on-premises instance.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
getOnPremisesInstance :
    String
    -> AWS.Http.UnsignedRequest GetOnPremisesInstanceOutput
getOnPremisesInstance instanceName =
    AWS.Http.unsignedRequest
        "GetOnPremisesInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOnPremisesInstanceOutputDecoder



{-| <p>Lists information about revisions for an application.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
listApplicationRevisions :
    String
    -> (ListApplicationRevisionsOptions -> ListApplicationRevisionsOptions)
    -> AWS.Http.UnsignedRequest ListApplicationRevisionsOutput
listApplicationRevisions applicationName setOptions =
  let
    options = setOptions (ListApplicationRevisionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListApplicationRevisions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listApplicationRevisionsOutputDecoder


{-| Options for a listApplicationRevisions request
-}
type alias ListApplicationRevisionsOptions =
    { sortBy : Maybe ApplicationRevisionSortBy
    , sortOrder : Maybe SortOrder
    , s3Bucket : Maybe String
    , s3KeyPrefix : Maybe String
    , deployed : Maybe ListStateFilterAction
    , nextToken : Maybe String
    }



{-| <p>Lists the applications registered with the applicable IAM user or AWS account.</p>

__Required Parameters__



-}
listApplications :
    (ListApplicationsOptions -> ListApplicationsOptions)
    -> AWS.Http.UnsignedRequest ListApplicationsOutput
listApplications setOptions =
  let
    options = setOptions (ListApplicationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListApplications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listApplicationsOutputDecoder


{-| Options for a listApplications request
-}
type alias ListApplicationsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists the deployment configurations with the applicable IAM user or AWS account.</p>

__Required Parameters__



-}
listDeploymentConfigs :
    (ListDeploymentConfigsOptions -> ListDeploymentConfigsOptions)
    -> AWS.Http.UnsignedRequest ListDeploymentConfigsOutput
listDeploymentConfigs setOptions =
  let
    options = setOptions (ListDeploymentConfigsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDeploymentConfigs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDeploymentConfigsOutputDecoder


{-| Options for a listDeploymentConfigs request
-}
type alias ListDeploymentConfigsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists the deployment groups for an application registered with the applicable IAM user or AWS account.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
listDeploymentGroups :
    String
    -> (ListDeploymentGroupsOptions -> ListDeploymentGroupsOptions)
    -> AWS.Http.UnsignedRequest ListDeploymentGroupsOutput
listDeploymentGroups applicationName setOptions =
  let
    options = setOptions (ListDeploymentGroupsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDeploymentGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDeploymentGroupsOutputDecoder


{-| Options for a listDeploymentGroups request
-}
type alias ListDeploymentGroupsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists the instance for a deployment associated with the applicable IAM user or AWS account.</p>

__Required Parameters__

* `deploymentId` __:__ `String`


-}
listDeploymentInstances :
    String
    -> (ListDeploymentInstancesOptions -> ListDeploymentInstancesOptions)
    -> AWS.Http.UnsignedRequest ListDeploymentInstancesOutput
listDeploymentInstances deploymentId setOptions =
  let
    options = setOptions (ListDeploymentInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDeploymentInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDeploymentInstancesOutputDecoder


{-| Options for a listDeploymentInstances request
-}
type alias ListDeploymentInstancesOptions =
    { nextToken : Maybe String
    , instanceStatusFilter : Maybe (List InstanceStatus)
    , instanceTypeFilter : Maybe (List InstanceType)
    }



{-| <p>Lists the deployments in a deployment group for an application registered with the applicable IAM user or AWS account.</p>

__Required Parameters__



-}
listDeployments :
    (ListDeploymentsOptions -> ListDeploymentsOptions)
    -> AWS.Http.UnsignedRequest ListDeploymentsOutput
listDeployments setOptions =
  let
    options = setOptions (ListDeploymentsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDeployments"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDeploymentsOutputDecoder


{-| Options for a listDeployments request
-}
type alias ListDeploymentsOptions =
    { applicationName : Maybe String
    , deploymentGroupName : Maybe String
    , includeOnlyStatuses : Maybe (List DeploymentStatus)
    , createTimeRange : Maybe TimeRange
    , nextToken : Maybe String
    }



{-| <p>Gets a list of names for one or more on-premises instances.</p> <p>Unless otherwise specified, both registered and deregistered on-premises instance names will be listed. To list only registered or deregistered on-premises instance names, use the registration status parameter.</p>

__Required Parameters__



-}
listOnPremisesInstances :
    (ListOnPremisesInstancesOptions -> ListOnPremisesInstancesOptions)
    -> AWS.Http.UnsignedRequest ListOnPremisesInstancesOutput
listOnPremisesInstances setOptions =
  let
    options = setOptions (ListOnPremisesInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListOnPremisesInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listOnPremisesInstancesOutputDecoder


{-| Options for a listOnPremisesInstances request
-}
type alias ListOnPremisesInstancesOptions =
    { registrationStatus : Maybe RegistrationStatus
    , tagFilters : Maybe (List TagFilter)
    , nextToken : Maybe String
    }



{-| <p>Registers with AWS CodeDeploy a revision for the specified application.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `revision` __:__ `RevisionLocation`


-}
registerApplicationRevision :
    String
    -> RevisionLocation
    -> (RegisterApplicationRevisionOptions -> RegisterApplicationRevisionOptions)
    -> AWS.Http.UnsignedRequest ()
registerApplicationRevision applicationName revision setOptions =
  let
    options = setOptions (RegisterApplicationRevisionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterApplicationRevision"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a registerApplicationRevision request
-}
type alias RegisterApplicationRevisionOptions =
    { description : Maybe String
    }



{-| <p>Registers an on-premises instance.</p> <note> <p>Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the request. You cannot use both.</p> </note>

__Required Parameters__

* `instanceName` __:__ `String`


-}
registerOnPremisesInstance :
    String
    -> (RegisterOnPremisesInstanceOptions -> RegisterOnPremisesInstanceOptions)
    -> AWS.Http.UnsignedRequest ()
registerOnPremisesInstance instanceName setOptions =
  let
    options = setOptions (RegisterOnPremisesInstanceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterOnPremisesInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a registerOnPremisesInstance request
-}
type alias RegisterOnPremisesInstanceOptions =
    { iamSessionArn : Maybe String
    , iamUserArn : Maybe String
    }



{-| <p>Removes one or more tags from one or more on-premises instances.</p>

__Required Parameters__

* `tags` __:__ `(List Tag)`
* `instanceNames` __:__ `(List String)`


-}
removeTagsFromOnPremisesInstances :
    (List Tag)
    -> (List String)
    -> AWS.Http.UnsignedRequest ()
removeTagsFromOnPremisesInstances tags instanceNames =
    AWS.Http.unsignedRequest
        "RemoveTagsFromOnPremisesInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>In a blue/green deployment, overrides any specified wait time and starts terminating instances immediately after the traffic routing is completed.</p>

__Required Parameters__



-}
skipWaitTimeForInstanceTermination :
    (SkipWaitTimeForInstanceTerminationOptions -> SkipWaitTimeForInstanceTerminationOptions)
    -> AWS.Http.UnsignedRequest ()
skipWaitTimeForInstanceTermination setOptions =
  let
    options = setOptions (SkipWaitTimeForInstanceTerminationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SkipWaitTimeForInstanceTermination"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a skipWaitTimeForInstanceTermination request
-}
type alias SkipWaitTimeForInstanceTerminationOptions =
    { deploymentId : Maybe String
    }



{-| <p>Attempts to stop an ongoing deployment.</p>

__Required Parameters__

* `deploymentId` __:__ `String`


-}
stopDeployment :
    String
    -> (StopDeploymentOptions -> StopDeploymentOptions)
    -> AWS.Http.UnsignedRequest StopDeploymentOutput
stopDeployment deploymentId setOptions =
  let
    options = setOptions (StopDeploymentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "StopDeployment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopDeploymentOutputDecoder


{-| Options for a stopDeployment request
-}
type alias StopDeploymentOptions =
    { autoRollbackEnabled : Maybe Bool
    }



{-| <p>Changes the name of an application.</p>

__Required Parameters__



-}
updateApplication :
    (UpdateApplicationOptions -> UpdateApplicationOptions)
    -> AWS.Http.UnsignedRequest ()
updateApplication setOptions =
  let
    options = setOptions (UpdateApplicationOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateApplication request
-}
type alias UpdateApplicationOptions =
    { applicationName : Maybe String
    , newApplicationName : Maybe String
    }



{-| <p>Changes information about a deployment group.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `currentDeploymentGroupName` __:__ `String`


-}
updateDeploymentGroup :
    String
    -> String
    -> (UpdateDeploymentGroupOptions -> UpdateDeploymentGroupOptions)
    -> AWS.Http.UnsignedRequest UpdateDeploymentGroupOutput
updateDeploymentGroup applicationName currentDeploymentGroupName setOptions =
  let
    options = setOptions (UpdateDeploymentGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDeploymentGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDeploymentGroupOutputDecoder


{-| Options for a updateDeploymentGroup request
-}
type alias UpdateDeploymentGroupOptions =
    { newDeploymentGroupName : Maybe String
    , deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List String)
    , serviceRoleArn : Maybe String
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    }




{-| <p>Information about an alarm.</p>
-}
type alias Alarm =
    { name : Maybe String
    }



alarmDecoder : JD.Decoder Alarm
alarmDecoder =
    JDP.decode Alarm
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Information about alarms associated with the deployment group.</p>
-}
type alias AlarmConfiguration =
    { enabled : Maybe Bool
    , ignorePollAlarmFailure : Maybe Bool
    , alarms : Maybe (List Alarm)
    }



alarmConfigurationDecoder : JD.Decoder AlarmConfiguration
alarmConfigurationDecoder =
    JDP.decode AlarmConfiguration
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "ignorePollAlarmFailure" (JD.nullable JD.bool) Nothing
        |> JDP.optional "alarms" (JD.nullable (JD.list alarmDecoder)) Nothing




{-| <p>The maximum number of alarms for a deployment group (10) was exceeded.</p>
-}
type alias AlarmsLimitExceededException =
    { 
    }



alarmsLimitExceededExceptionDecoder : JD.Decoder AlarmsLimitExceededException
alarmsLimitExceededExceptionDecoder =
    JDP.decode AlarmsLimitExceededException



{-| <p>An application with the specified name already exists with the applicable IAM user or AWS account.</p>
-}
type alias ApplicationAlreadyExistsException =
    { 
    }



applicationAlreadyExistsExceptionDecoder : JD.Decoder ApplicationAlreadyExistsException
applicationAlreadyExistsExceptionDecoder =
    JDP.decode ApplicationAlreadyExistsException



{-| <p>The application does not exist with the applicable IAM user or AWS account.</p>
-}
type alias ApplicationDoesNotExistException =
    { 
    }



applicationDoesNotExistExceptionDecoder : JD.Decoder ApplicationDoesNotExistException
applicationDoesNotExistExceptionDecoder =
    JDP.decode ApplicationDoesNotExistException



{-| <p>Information about an application.</p>
-}
type alias ApplicationInfo =
    { applicationId : Maybe String
    , applicationName : Maybe String
    , createTime : Maybe Date
    , linkedToGitHub : Maybe Bool
    }



applicationInfoDecoder : JD.Decoder ApplicationInfo
applicationInfoDecoder =
    JDP.decode ApplicationInfo
        |> JDP.optional "applicationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "createTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "linkedToGitHub" (JD.nullable JD.bool) Nothing




{-| <p>More applications were attempted to be created than are allowed.</p>
-}
type alias ApplicationLimitExceededException =
    { 
    }



applicationLimitExceededExceptionDecoder : JD.Decoder ApplicationLimitExceededException
applicationLimitExceededExceptionDecoder =
    JDP.decode ApplicationLimitExceededException



{-| <p>The minimum number of required application names was not specified.</p>
-}
type alias ApplicationNameRequiredException =
    { 
    }



applicationNameRequiredExceptionDecoder : JD.Decoder ApplicationNameRequiredException
applicationNameRequiredExceptionDecoder =
    JDP.decode ApplicationNameRequiredException



{-| One of

* `ApplicationRevisionSortBy_registerTime`
* `ApplicationRevisionSortBy_firstUsedTime`
* `ApplicationRevisionSortBy_lastUsedTime`

-}
type ApplicationRevisionSortBy
    = ApplicationRevisionSortBy_registerTime
    | ApplicationRevisionSortBy_firstUsedTime
    | ApplicationRevisionSortBy_lastUsedTime



applicationRevisionSortByDecoder : JD.Decoder ApplicationRevisionSortBy
applicationRevisionSortByDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "registerTime" ->
                        JD.succeed ApplicationRevisionSortBy_registerTime

                    "firstUsedTime" ->
                        JD.succeed ApplicationRevisionSortBy_firstUsedTime

                    "lastUsedTime" ->
                        JD.succeed ApplicationRevisionSortBy_lastUsedTime


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a configuration for automatically rolling back to a previous version of an application revision when a deployment doesn't complete successfully.</p>
-}
type alias AutoRollbackConfiguration =
    { enabled : Maybe Bool
    , events : Maybe (List AutoRollbackEvent)
    }



autoRollbackConfigurationDecoder : JD.Decoder AutoRollbackConfiguration
autoRollbackConfigurationDecoder =
    JDP.decode AutoRollbackConfiguration
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list autoRollbackEventDecoder)) Nothing




{-| One of

* `AutoRollbackEvent_DEPLOYMENT_FAILURE`
* `AutoRollbackEvent_DEPLOYMENT_STOP_ON_ALARM`
* `AutoRollbackEvent_DEPLOYMENT_STOP_ON_REQUEST`

-}
type AutoRollbackEvent
    = AutoRollbackEvent_DEPLOYMENT_FAILURE
    | AutoRollbackEvent_DEPLOYMENT_STOP_ON_ALARM
    | AutoRollbackEvent_DEPLOYMENT_STOP_ON_REQUEST



autoRollbackEventDecoder : JD.Decoder AutoRollbackEvent
autoRollbackEventDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEPLOYMENT_FAILURE" ->
                        JD.succeed AutoRollbackEvent_DEPLOYMENT_FAILURE

                    "DEPLOYMENT_STOP_ON_ALARM" ->
                        JD.succeed AutoRollbackEvent_DEPLOYMENT_STOP_ON_ALARM

                    "DEPLOYMENT_STOP_ON_REQUEST" ->
                        JD.succeed AutoRollbackEvent_DEPLOYMENT_STOP_ON_REQUEST


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about an Auto Scaling group.</p>
-}
type alias AutoScalingGroup =
    { name : Maybe String
    , hook : Maybe String
    }



autoScalingGroupDecoder : JD.Decoder AutoScalingGroup
autoScalingGroupDecoder =
    JDP.decode AutoScalingGroup
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "hook" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from batchGetApplicationRevisio
-}
type alias BatchGetApplicationRevisionsOutput =
    { applicationName : Maybe String
    , errorMessage : Maybe String
    , revisions : Maybe (List RevisionInfo)
    }



batchGetApplicationRevisionsOutputDecoder : JD.Decoder BatchGetApplicationRevisionsOutput
batchGetApplicationRevisionsOutputDecoder =
    JDP.decode BatchGetApplicationRevisionsOutput
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "revisions" (JD.nullable (JD.list revisionInfoDecoder)) Nothing




{-| Type of HTTP response from batchGetApplicatio
-}
type alias BatchGetApplicationsOutput =
    { applicationsInfo : Maybe (List ApplicationInfo)
    }



batchGetApplicationsOutputDecoder : JD.Decoder BatchGetApplicationsOutput
batchGetApplicationsOutputDecoder =
    JDP.decode BatchGetApplicationsOutput
        |> JDP.optional "applicationsInfo" (JD.nullable (JD.list applicationInfoDecoder)) Nothing




{-| Type of HTTP response from batchGetDeploymentGrou
-}
type alias BatchGetDeploymentGroupsOutput =
    { deploymentGroupsInfo : Maybe (List DeploymentGroupInfo)
    , errorMessage : Maybe String
    }



batchGetDeploymentGroupsOutputDecoder : JD.Decoder BatchGetDeploymentGroupsOutput
batchGetDeploymentGroupsOutputDecoder =
    JDP.decode BatchGetDeploymentGroupsOutput
        |> JDP.optional "deploymentGroupsInfo" (JD.nullable (JD.list deploymentGroupInfoDecoder)) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from batchGetDeploymentInstanc
-}
type alias BatchGetDeploymentInstancesOutput =
    { instancesSummary : Maybe (List InstanceSummary)
    , errorMessage : Maybe String
    }



batchGetDeploymentInstancesOutputDecoder : JD.Decoder BatchGetDeploymentInstancesOutput
batchGetDeploymentInstancesOutputDecoder =
    JDP.decode BatchGetDeploymentInstancesOutput
        |> JDP.optional "instancesSummary" (JD.nullable (JD.list instanceSummaryDecoder)) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from batchGetDeploymen
-}
type alias BatchGetDeploymentsOutput =
    { deploymentsInfo : Maybe (List DeploymentInfo)
    }



batchGetDeploymentsOutputDecoder : JD.Decoder BatchGetDeploymentsOutput
batchGetDeploymentsOutputDecoder =
    JDP.decode BatchGetDeploymentsOutput
        |> JDP.optional "deploymentsInfo" (JD.nullable (JD.list deploymentInfoDecoder)) Nothing




{-| Type of HTTP response from batchGetOnPremisesInstanc
-}
type alias BatchGetOnPremisesInstancesOutput =
    { instanceInfos : Maybe (List InstanceInfo)
    }



batchGetOnPremisesInstancesOutputDecoder : JD.Decoder BatchGetOnPremisesInstancesOutput
batchGetOnPremisesInstancesOutputDecoder =
    JDP.decode BatchGetOnPremisesInstancesOutput
        |> JDP.optional "instanceInfos" (JD.nullable (JD.list instanceInfoDecoder)) Nothing




{-| <p>The maximum number of names or IDs allowed for this request (100) was exceeded.</p>
-}
type alias BatchLimitExceededException =
    { 
    }



batchLimitExceededExceptionDecoder : JD.Decoder BatchLimitExceededException
batchLimitExceededExceptionDecoder =
    JDP.decode BatchLimitExceededException



{-| <p>Information about blue/green deployment options for a deployment group.</p>
-}
type alias BlueGreenDeploymentConfiguration =
    { terminateBlueInstancesOnDeploymentSuccess : Maybe BlueInstanceTerminationOption
    , deploymentReadyOption : Maybe DeploymentReadyOption
    , greenFleetProvisioningOption : Maybe GreenFleetProvisioningOption
    }



blueGreenDeploymentConfigurationDecoder : JD.Decoder BlueGreenDeploymentConfiguration
blueGreenDeploymentConfigurationDecoder =
    JDP.decode BlueGreenDeploymentConfiguration
        |> JDP.optional "terminateBlueInstancesOnDeploymentSuccess" (JD.nullable blueInstanceTerminationOptionDecoder) Nothing
        |> JDP.optional "deploymentReadyOption" (JD.nullable deploymentReadyOptionDecoder) Nothing
        |> JDP.optional "greenFleetProvisioningOption" (JD.nullable greenFleetProvisioningOptionDecoder) Nothing




{-| <p>Information about whether instances in the original environment are terminated when a blue/green deployment is successful.</p>
-}
type alias BlueInstanceTerminationOption =
    { action : Maybe InstanceAction
    , terminationWaitTimeInMinutes : Maybe Int
    }



blueInstanceTerminationOptionDecoder : JD.Decoder BlueInstanceTerminationOption
blueInstanceTerminationOptionDecoder =
    JDP.decode BlueInstanceTerminationOption
        |> JDP.optional "action" (JD.nullable instanceActionDecoder) Nothing
        |> JDP.optional "terminationWaitTimeInMinutes" (JD.nullable JD.int) Nothing




{-| <p>A bucket name is required, but was not provided.</p>
-}
type alias BucketNameFilterRequiredException =
    { 
    }



bucketNameFilterRequiredExceptionDecoder : JD.Decoder BucketNameFilterRequiredException
bucketNameFilterRequiredExceptionDecoder =
    JDP.decode BucketNameFilterRequiredException



{-| One of

* `BundleType_tar`
* `BundleType_tgz`
* `BundleType_zip`

-}
type BundleType
    = BundleType_tar
    | BundleType_tgz
    | BundleType_zip



bundleTypeDecoder : JD.Decoder BundleType
bundleTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "tar" ->
                        JD.succeed BundleType_tar

                    "tgz" ->
                        JD.succeed BundleType_tgz

                    "zip" ->
                        JD.succeed BundleType_zip


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createApplicati
-}
type alias CreateApplicationOutput =
    { applicationId : Maybe String
    }



createApplicationOutputDecoder : JD.Decoder CreateApplicationOutput
createApplicationOutputDecoder =
    JDP.decode CreateApplicationOutput
        |> JDP.optional "applicationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDeploymentConf
-}
type alias CreateDeploymentConfigOutput =
    { deploymentConfigId : Maybe String
    }



createDeploymentConfigOutputDecoder : JD.Decoder CreateDeploymentConfigOutput
createDeploymentConfigOutputDecoder =
    JDP.decode CreateDeploymentConfigOutput
        |> JDP.optional "deploymentConfigId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDeploymentGro
-}
type alias CreateDeploymentGroupOutput =
    { deploymentGroupId : Maybe String
    }



createDeploymentGroupOutputDecoder : JD.Decoder CreateDeploymentGroupOutput
createDeploymentGroupOutputDecoder =
    JDP.decode CreateDeploymentGroupOutput
        |> JDP.optional "deploymentGroupId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDeployme
-}
type alias CreateDeploymentOutput =
    { deploymentId : Maybe String
    }



createDeploymentOutputDecoder : JD.Decoder CreateDeploymentOutput
createDeploymentOutputDecoder =
    JDP.decode CreateDeploymentOutput
        |> JDP.optional "deploymentId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteDeploymentGro
-}
type alias DeleteDeploymentGroupOutput =
    { hooksNotCleanedUp : Maybe (List AutoScalingGroup)
    }



deleteDeploymentGroupOutputDecoder : JD.Decoder DeleteDeploymentGroupOutput
deleteDeploymentGroupOutputDecoder =
    JDP.decode DeleteDeploymentGroupOutput
        |> JDP.optional "hooksNotCleanedUp" (JD.nullable (JD.list autoScalingGroupDecoder)) Nothing




{-| <p>The deployment is already complete.</p>
-}
type alias DeploymentAlreadyCompletedException =
    { 
    }



deploymentAlreadyCompletedExceptionDecoder : JD.Decoder DeploymentAlreadyCompletedException
deploymentAlreadyCompletedExceptionDecoder =
    JDP.decode DeploymentAlreadyCompletedException



{-| <p>A deployment configuration with the specified name already exists with the applicable IAM user or AWS account.</p>
-}
type alias DeploymentConfigAlreadyExistsException =
    { 
    }



deploymentConfigAlreadyExistsExceptionDecoder : JD.Decoder DeploymentConfigAlreadyExistsException
deploymentConfigAlreadyExistsExceptionDecoder =
    JDP.decode DeploymentConfigAlreadyExistsException



{-| <p>The deployment configuration does not exist with the applicable IAM user or AWS account.</p>
-}
type alias DeploymentConfigDoesNotExistException =
    { 
    }



deploymentConfigDoesNotExistExceptionDecoder : JD.Decoder DeploymentConfigDoesNotExistException
deploymentConfigDoesNotExistExceptionDecoder =
    JDP.decode DeploymentConfigDoesNotExistException



{-| <p>The deployment configuration is still in use.</p>
-}
type alias DeploymentConfigInUseException =
    { 
    }



deploymentConfigInUseExceptionDecoder : JD.Decoder DeploymentConfigInUseException
deploymentConfigInUseExceptionDecoder =
    JDP.decode DeploymentConfigInUseException



{-| <p>Information about a deployment configuration.</p>
-}
type alias DeploymentConfigInfo =
    { deploymentConfigId : Maybe String
    , deploymentConfigName : Maybe String
    , minimumHealthyHosts : Maybe MinimumHealthyHosts
    , createTime : Maybe Date
    }



deploymentConfigInfoDecoder : JD.Decoder DeploymentConfigInfo
deploymentConfigInfoDecoder =
    JDP.decode DeploymentConfigInfo
        |> JDP.optional "deploymentConfigId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentConfigName" (JD.nullable JD.string) Nothing
        |> JDP.optional "minimumHealthyHosts" (JD.nullable minimumHealthyHostsDecoder) Nothing
        |> JDP.optional "createTime" (JD.nullable JDX.date) Nothing




{-| <p>The deployment configurations limit was exceeded.</p>
-}
type alias DeploymentConfigLimitExceededException =
    { 
    }



deploymentConfigLimitExceededExceptionDecoder : JD.Decoder DeploymentConfigLimitExceededException
deploymentConfigLimitExceededExceptionDecoder =
    JDP.decode DeploymentConfigLimitExceededException



{-| <p>The deployment configuration name was not specified.</p>
-}
type alias DeploymentConfigNameRequiredException =
    { 
    }



deploymentConfigNameRequiredExceptionDecoder : JD.Decoder DeploymentConfigNameRequiredException
deploymentConfigNameRequiredExceptionDecoder =
    JDP.decode DeploymentConfigNameRequiredException



{-| One of

* `DeploymentCreator_user`
* `DeploymentCreator_autoscaling`
* `DeploymentCreator_codeDeployRollback`

-}
type DeploymentCreator
    = DeploymentCreator_user
    | DeploymentCreator_autoscaling
    | DeploymentCreator_codeDeployRollback



deploymentCreatorDecoder : JD.Decoder DeploymentCreator
deploymentCreatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "user" ->
                        JD.succeed DeploymentCreator_user

                    "autoscaling" ->
                        JD.succeed DeploymentCreator_autoscaling

                    "codeDeployRollback" ->
                        JD.succeed DeploymentCreator_codeDeployRollback


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The deployment does not exist with the applicable IAM user or AWS account.</p>
-}
type alias DeploymentDoesNotExistException =
    { 
    }



deploymentDoesNotExistExceptionDecoder : JD.Decoder DeploymentDoesNotExistException
deploymentDoesNotExistExceptionDecoder =
    JDP.decode DeploymentDoesNotExistException



{-| <p>A deployment group with the specified name already exists with the applicable IAM user or AWS account.</p>
-}
type alias DeploymentGroupAlreadyExistsException =
    { 
    }



deploymentGroupAlreadyExistsExceptionDecoder : JD.Decoder DeploymentGroupAlreadyExistsException
deploymentGroupAlreadyExistsExceptionDecoder =
    JDP.decode DeploymentGroupAlreadyExistsException



{-| <p>The named deployment group does not exist with the applicable IAM user or AWS account.</p>
-}
type alias DeploymentGroupDoesNotExistException =
    { 
    }



deploymentGroupDoesNotExistExceptionDecoder : JD.Decoder DeploymentGroupDoesNotExistException
deploymentGroupDoesNotExistExceptionDecoder =
    JDP.decode DeploymentGroupDoesNotExistException



{-| <p>Information about a deployment group.</p>
-}
type alias DeploymentGroupInfo =
    { applicationName : Maybe String
    , deploymentGroupId : Maybe String
    , deploymentGroupName : Maybe String
    , deploymentConfigName : Maybe String
    , ec2TagFilters : Maybe (List EC2TagFilter)
    , onPremisesInstanceTagFilters : Maybe (List TagFilter)
    , autoScalingGroups : Maybe (List AutoScalingGroup)
    , serviceRoleArn : Maybe String
    , targetRevision : Maybe RevisionLocation
    , triggerConfigurations : Maybe (List TriggerConfig)
    , alarmConfiguration : Maybe AlarmConfiguration
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , deploymentStyle : Maybe DeploymentStyle
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    }



deploymentGroupInfoDecoder : JD.Decoder DeploymentGroupInfo
deploymentGroupInfoDecoder =
    JDP.decode DeploymentGroupInfo
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentConfigName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ec2TagFilters" (JD.nullable (JD.list eC2TagFilterDecoder)) Nothing
        |> JDP.optional "onPremisesInstanceTagFilters" (JD.nullable (JD.list tagFilterDecoder)) Nothing
        |> JDP.optional "autoScalingGroups" (JD.nullable (JD.list autoScalingGroupDecoder)) Nothing
        |> JDP.optional "serviceRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetRevision" (JD.nullable revisionLocationDecoder) Nothing
        |> JDP.optional "triggerConfigurations" (JD.nullable (JD.list triggerConfigDecoder)) Nothing
        |> JDP.optional "alarmConfiguration" (JD.nullable alarmConfigurationDecoder) Nothing
        |> JDP.optional "autoRollbackConfiguration" (JD.nullable autoRollbackConfigurationDecoder) Nothing
        |> JDP.optional "deploymentStyle" (JD.nullable deploymentStyleDecoder) Nothing
        |> JDP.optional "blueGreenDeploymentConfiguration" (JD.nullable blueGreenDeploymentConfigurationDecoder) Nothing
        |> JDP.optional "loadBalancerInfo" (JD.nullable loadBalancerInfoDecoder) Nothing




{-| <p> The deployment groups limit was exceeded.</p>
-}
type alias DeploymentGroupLimitExceededException =
    { 
    }



deploymentGroupLimitExceededExceptionDecoder : JD.Decoder DeploymentGroupLimitExceededException
deploymentGroupLimitExceededExceptionDecoder =
    JDP.decode DeploymentGroupLimitExceededException



{-| <p>The deployment group name was not specified.</p>
-}
type alias DeploymentGroupNameRequiredException =
    { 
    }



deploymentGroupNameRequiredExceptionDecoder : JD.Decoder DeploymentGroupNameRequiredException
deploymentGroupNameRequiredExceptionDecoder =
    JDP.decode DeploymentGroupNameRequiredException



{-| <p>At least one deployment ID must be specified.</p>
-}
type alias DeploymentIdRequiredException =
    { 
    }



deploymentIdRequiredExceptionDecoder : JD.Decoder DeploymentIdRequiredException
deploymentIdRequiredExceptionDecoder =
    JDP.decode DeploymentIdRequiredException



{-| <p>Information about a deployment.</p>
-}
type alias DeploymentInfo =
    { applicationName : Maybe String
    , deploymentGroupName : Maybe String
    , deploymentConfigName : Maybe String
    , deploymentId : Maybe String
    , revision : Maybe RevisionLocation
    , status : Maybe DeploymentStatus
    , errorInformation : Maybe ErrorInformation
    , createTime : Maybe Date
    , startTime : Maybe Date
    , completeTime : Maybe Date
    , deploymentOverview : Maybe DeploymentOverview
    , description : Maybe String
    , creator : Maybe DeploymentCreator
    , ignoreApplicationStopFailures : Maybe Bool
    , autoRollbackConfiguration : Maybe AutoRollbackConfiguration
    , updateOutdatedInstancesOnly : Maybe Bool
    , rollbackInfo : Maybe RollbackInfo
    , deploymentStyle : Maybe DeploymentStyle
    , targetInstances : Maybe TargetInstances
    , instanceTerminationWaitTimeStarted : Maybe Bool
    , blueGreenDeploymentConfiguration : Maybe BlueGreenDeploymentConfiguration
    , loadBalancerInfo : Maybe LoadBalancerInfo
    , additionalDeploymentStatusInfo : Maybe String
    }



deploymentInfoDecoder : JD.Decoder DeploymentInfo
deploymentInfoDecoder =
    JDP.decode DeploymentInfo
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentConfigName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "revision" (JD.nullable revisionLocationDecoder) Nothing
        |> JDP.optional "status" (JD.nullable deploymentStatusDecoder) Nothing
        |> JDP.optional "errorInformation" (JD.nullable errorInformationDecoder) Nothing
        |> JDP.optional "createTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "completeTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deploymentOverview" (JD.nullable deploymentOverviewDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "creator" (JD.nullable deploymentCreatorDecoder) Nothing
        |> JDP.optional "ignoreApplicationStopFailures" (JD.nullable JD.bool) Nothing
        |> JDP.optional "autoRollbackConfiguration" (JD.nullable autoRollbackConfigurationDecoder) Nothing
        |> JDP.optional "updateOutdatedInstancesOnly" (JD.nullable JD.bool) Nothing
        |> JDP.optional "rollbackInfo" (JD.nullable rollbackInfoDecoder) Nothing
        |> JDP.optional "deploymentStyle" (JD.nullable deploymentStyleDecoder) Nothing
        |> JDP.optional "targetInstances" (JD.nullable targetInstancesDecoder) Nothing
        |> JDP.optional "instanceTerminationWaitTimeStarted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "blueGreenDeploymentConfiguration" (JD.nullable blueGreenDeploymentConfigurationDecoder) Nothing
        |> JDP.optional "loadBalancerInfo" (JD.nullable loadBalancerInfoDecoder) Nothing
        |> JDP.optional "additionalDeploymentStatusInfo" (JD.nullable JD.string) Nothing




{-| <p>The deployment does not have a status of Ready and can't continue yet.</p>
-}
type alias DeploymentIsNotInReadyStateException =
    { 
    }



deploymentIsNotInReadyStateExceptionDecoder : JD.Decoder DeploymentIsNotInReadyStateException
deploymentIsNotInReadyStateExceptionDecoder =
    JDP.decode DeploymentIsNotInReadyStateException



{-| <p>The number of allowed deployments was exceeded.</p>
-}
type alias DeploymentLimitExceededException =
    { 
    }



deploymentLimitExceededExceptionDecoder : JD.Decoder DeploymentLimitExceededException
deploymentLimitExceededExceptionDecoder =
    JDP.decode DeploymentLimitExceededException



{-| <p>The specified deployment has not started.</p>
-}
type alias DeploymentNotStartedException =
    { 
    }



deploymentNotStartedExceptionDecoder : JD.Decoder DeploymentNotStartedException
deploymentNotStartedExceptionDecoder =
    JDP.decode DeploymentNotStartedException



{-| One of

* `DeploymentOption_WITH_TRAFFIC_CONTROL`
* `DeploymentOption_WITHOUT_TRAFFIC_CONTROL`

-}
type DeploymentOption
    = DeploymentOption_WITH_TRAFFIC_CONTROL
    | DeploymentOption_WITHOUT_TRAFFIC_CONTROL



deploymentOptionDecoder : JD.Decoder DeploymentOption
deploymentOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WITH_TRAFFIC_CONTROL" ->
                        JD.succeed DeploymentOption_WITH_TRAFFIC_CONTROL

                    "WITHOUT_TRAFFIC_CONTROL" ->
                        JD.succeed DeploymentOption_WITHOUT_TRAFFIC_CONTROL


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the deployment status of the instances in the deployment.</p>
-}
type alias DeploymentOverview =
    { pending : Maybe Int
    , inProgress : Maybe Int
    , succeeded : Maybe Int
    , failed : Maybe Int
    , skipped : Maybe Int
    , ready : Maybe Int
    }



deploymentOverviewDecoder : JD.Decoder DeploymentOverview
deploymentOverviewDecoder =
    JDP.decode DeploymentOverview
        |> JDP.optional "pending" (JD.nullable JD.int) Nothing
        |> JDP.optional "inProgress" (JD.nullable JD.int) Nothing
        |> JDP.optional "succeeded" (JD.nullable JD.int) Nothing
        |> JDP.optional "failed" (JD.nullable JD.int) Nothing
        |> JDP.optional "skipped" (JD.nullable JD.int) Nothing
        |> JDP.optional "ready" (JD.nullable JD.int) Nothing




{-| One of

* `DeploymentReadyAction_CONTINUE_DEPLOYMENT`
* `DeploymentReadyAction_STOP_DEPLOYMENT`

-}
type DeploymentReadyAction
    = DeploymentReadyAction_CONTINUE_DEPLOYMENT
    | DeploymentReadyAction_STOP_DEPLOYMENT



deploymentReadyActionDecoder : JD.Decoder DeploymentReadyAction
deploymentReadyActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONTINUE_DEPLOYMENT" ->
                        JD.succeed DeploymentReadyAction_CONTINUE_DEPLOYMENT

                    "STOP_DEPLOYMENT" ->
                        JD.succeed DeploymentReadyAction_STOP_DEPLOYMENT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about how traffic is rerouted to instances in a replacement environment in a blue/green deployment.</p>
-}
type alias DeploymentReadyOption =
    { actionOnTimeout : Maybe DeploymentReadyAction
    , waitTimeInMinutes : Maybe Int
    }



deploymentReadyOptionDecoder : JD.Decoder DeploymentReadyOption
deploymentReadyOptionDecoder =
    JDP.decode DeploymentReadyOption
        |> JDP.optional "actionOnTimeout" (JD.nullable deploymentReadyActionDecoder) Nothing
        |> JDP.optional "waitTimeInMinutes" (JD.nullable JD.int) Nothing




{-| One of

* `DeploymentStatus_Created`
* `DeploymentStatus_Queued`
* `DeploymentStatus_InProgress`
* `DeploymentStatus_Succeeded`
* `DeploymentStatus_Failed`
* `DeploymentStatus_Stopped`
* `DeploymentStatus_Ready`

-}
type DeploymentStatus
    = DeploymentStatus_Created
    | DeploymentStatus_Queued
    | DeploymentStatus_InProgress
    | DeploymentStatus_Succeeded
    | DeploymentStatus_Failed
    | DeploymentStatus_Stopped
    | DeploymentStatus_Ready



deploymentStatusDecoder : JD.Decoder DeploymentStatus
deploymentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Created" ->
                        JD.succeed DeploymentStatus_Created

                    "Queued" ->
                        JD.succeed DeploymentStatus_Queued

                    "InProgress" ->
                        JD.succeed DeploymentStatus_InProgress

                    "Succeeded" ->
                        JD.succeed DeploymentStatus_Succeeded

                    "Failed" ->
                        JD.succeed DeploymentStatus_Failed

                    "Stopped" ->
                        JD.succeed DeploymentStatus_Stopped

                    "Ready" ->
                        JD.succeed DeploymentStatus_Ready


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the type of deployment, either standard or blue/green, you want to run and whether to route deployment traffic behind a load balancer.</p>
-}
type alias DeploymentStyle =
    { deploymentType : Maybe DeploymentType
    , deploymentOption : Maybe DeploymentOption
    }



deploymentStyleDecoder : JD.Decoder DeploymentStyle
deploymentStyleDecoder =
    JDP.decode DeploymentStyle
        |> JDP.optional "deploymentType" (JD.nullable deploymentTypeDecoder) Nothing
        |> JDP.optional "deploymentOption" (JD.nullable deploymentOptionDecoder) Nothing




{-| One of

* `DeploymentType_IN_PLACE`
* `DeploymentType_BLUE_GREEN`

-}
type DeploymentType
    = DeploymentType_IN_PLACE
    | DeploymentType_BLUE_GREEN



deploymentTypeDecoder : JD.Decoder DeploymentType
deploymentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PLACE" ->
                        JD.succeed DeploymentType_IN_PLACE

                    "BLUE_GREEN" ->
                        JD.succeed DeploymentType_BLUE_GREEN


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The description is too long.</p>
-}
type alias DescriptionTooLongException =
    { 
    }



descriptionTooLongExceptionDecoder : JD.Decoder DescriptionTooLongException
descriptionTooLongExceptionDecoder =
    JDP.decode DescriptionTooLongException



{-| <p>Diagnostic information about executable scripts that are part of a deployment.</p>
-}
type alias Diagnostics =
    { errorCode : Maybe LifecycleErrorCode
    , scriptName : Maybe String
    , message : Maybe String
    , logTail : Maybe String
    }



diagnosticsDecoder : JD.Decoder Diagnostics
diagnosticsDecoder =
    JDP.decode Diagnostics
        |> JDP.optional "errorCode" (JD.nullable lifecycleErrorCodeDecoder) Nothing
        |> JDP.optional "scriptName" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "logTail" (JD.nullable JD.string) Nothing




{-| <p>Information about a tag filter.</p>
-}
type alias EC2TagFilter =
    { key : Maybe String
    , value : Maybe String
    , type_ : Maybe EC2TagFilterType
    }



eC2TagFilterDecoder : JD.Decoder EC2TagFilter
eC2TagFilterDecoder =
    JDP.decode EC2TagFilter
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable eC2TagFilterTypeDecoder) Nothing




{-| One of

* `EC2TagFilterType_KEY_ONLY`
* `EC2TagFilterType_VALUE_ONLY`
* `EC2TagFilterType_KEY_AND_VALUE`

-}
type EC2TagFilterType
    = EC2TagFilterType_KEY_ONLY
    | EC2TagFilterType_VALUE_ONLY
    | EC2TagFilterType_KEY_AND_VALUE



eC2TagFilterTypeDecoder : JD.Decoder EC2TagFilterType
eC2TagFilterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KEY_ONLY" ->
                        JD.succeed EC2TagFilterType_KEY_ONLY

                    "VALUE_ONLY" ->
                        JD.succeed EC2TagFilterType_VALUE_ONLY

                    "KEY_AND_VALUE" ->
                        JD.succeed EC2TagFilterType_KEY_AND_VALUE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a load balancer in Elastic Load Balancing to use in a blue/green deployment.</p>
-}
type alias ELBInfo =
    { name : Maybe String
    }



eLBInfoDecoder : JD.Decoder ELBInfo
eLBInfoDecoder =
    JDP.decode ELBInfo
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| One of

* `ErrorCode_DEPLOYMENT_GROUP_MISSING`
* `ErrorCode_APPLICATION_MISSING`
* `ErrorCode_REVISION_MISSING`
* `ErrorCode_IAM_ROLE_MISSING`
* `ErrorCode_IAM_ROLE_PERMISSIONS`
* `ErrorCode_NO_EC2_SUBSCRIPTION`
* `ErrorCode_OVER_MAX_INSTANCES`
* `ErrorCode_NO_INSTANCES`
* `ErrorCode_TIMEOUT`
* `ErrorCode_HEALTH_CONSTRAINTS_INVALID`
* `ErrorCode_HEALTH_CONSTRAINTS`
* `ErrorCode_INTERNAL_ERROR`
* `ErrorCode_THROTTLED`
* `ErrorCode_ALARM_ACTIVE`
* `ErrorCode_AGENT_ISSUE`
* `ErrorCode_AUTO_SCALING_IAM_ROLE_PERMISSIONS`
* `ErrorCode_AUTO_SCALING_CONFIGURATION`
* `ErrorCode_MANUAL_STOP`

-}
type ErrorCode
    = ErrorCode_DEPLOYMENT_GROUP_MISSING
    | ErrorCode_APPLICATION_MISSING
    | ErrorCode_REVISION_MISSING
    | ErrorCode_IAM_ROLE_MISSING
    | ErrorCode_IAM_ROLE_PERMISSIONS
    | ErrorCode_NO_EC2_SUBSCRIPTION
    | ErrorCode_OVER_MAX_INSTANCES
    | ErrorCode_NO_INSTANCES
    | ErrorCode_TIMEOUT
    | ErrorCode_HEALTH_CONSTRAINTS_INVALID
    | ErrorCode_HEALTH_CONSTRAINTS
    | ErrorCode_INTERNAL_ERROR
    | ErrorCode_THROTTLED
    | ErrorCode_ALARM_ACTIVE
    | ErrorCode_AGENT_ISSUE
    | ErrorCode_AUTO_SCALING_IAM_ROLE_PERMISSIONS
    | ErrorCode_AUTO_SCALING_CONFIGURATION
    | ErrorCode_MANUAL_STOP



errorCodeDecoder : JD.Decoder ErrorCode
errorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEPLOYMENT_GROUP_MISSING" ->
                        JD.succeed ErrorCode_DEPLOYMENT_GROUP_MISSING

                    "APPLICATION_MISSING" ->
                        JD.succeed ErrorCode_APPLICATION_MISSING

                    "REVISION_MISSING" ->
                        JD.succeed ErrorCode_REVISION_MISSING

                    "IAM_ROLE_MISSING" ->
                        JD.succeed ErrorCode_IAM_ROLE_MISSING

                    "IAM_ROLE_PERMISSIONS" ->
                        JD.succeed ErrorCode_IAM_ROLE_PERMISSIONS

                    "NO_EC2_SUBSCRIPTION" ->
                        JD.succeed ErrorCode_NO_EC2_SUBSCRIPTION

                    "OVER_MAX_INSTANCES" ->
                        JD.succeed ErrorCode_OVER_MAX_INSTANCES

                    "NO_INSTANCES" ->
                        JD.succeed ErrorCode_NO_INSTANCES

                    "TIMEOUT" ->
                        JD.succeed ErrorCode_TIMEOUT

                    "HEALTH_CONSTRAINTS_INVALID" ->
                        JD.succeed ErrorCode_HEALTH_CONSTRAINTS_INVALID

                    "HEALTH_CONSTRAINTS" ->
                        JD.succeed ErrorCode_HEALTH_CONSTRAINTS

                    "INTERNAL_ERROR" ->
                        JD.succeed ErrorCode_INTERNAL_ERROR

                    "THROTTLED" ->
                        JD.succeed ErrorCode_THROTTLED

                    "ALARM_ACTIVE" ->
                        JD.succeed ErrorCode_ALARM_ACTIVE

                    "AGENT_ISSUE" ->
                        JD.succeed ErrorCode_AGENT_ISSUE

                    "AUTO_SCALING_IAM_ROLE_PERMISSIONS" ->
                        JD.succeed ErrorCode_AUTO_SCALING_IAM_ROLE_PERMISSIONS

                    "AUTO_SCALING_CONFIGURATION" ->
                        JD.succeed ErrorCode_AUTO_SCALING_CONFIGURATION

                    "MANUAL_STOP" ->
                        JD.succeed ErrorCode_MANUAL_STOP


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a deployment error.</p>
-}
type alias ErrorInformation =
    { code : Maybe ErrorCode
    , message : Maybe String
    }



errorInformationDecoder : JD.Decoder ErrorInformation
errorInformationDecoder =
    JDP.decode ErrorInformation
        |> JDP.optional "code" (JD.nullable errorCodeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Information about an application revision.</p>
-}
type alias GenericRevisionInfo =
    { description : Maybe String
    , deploymentGroups : Maybe (List String)
    , firstUsedTime : Maybe Date
    , lastUsedTime : Maybe Date
    , registerTime : Maybe Date
    }



genericRevisionInfoDecoder : JD.Decoder GenericRevisionInfo
genericRevisionInfoDecoder =
    JDP.decode GenericRevisionInfo
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "firstUsedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUsedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "registerTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getApplicati
-}
type alias GetApplicationOutput =
    { application : Maybe ApplicationInfo
    }



getApplicationOutputDecoder : JD.Decoder GetApplicationOutput
getApplicationOutputDecoder =
    JDP.decode GetApplicationOutput
        |> JDP.optional "application" (JD.nullable applicationInfoDecoder) Nothing




{-| Type of HTTP response from getApplicationRevisi
-}
type alias GetApplicationRevisionOutput =
    { applicationName : Maybe String
    , revision : Maybe RevisionLocation
    , revisionInfo : Maybe GenericRevisionInfo
    }



getApplicationRevisionOutputDecoder : JD.Decoder GetApplicationRevisionOutput
getApplicationRevisionOutputDecoder =
    JDP.decode GetApplicationRevisionOutput
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "revision" (JD.nullable revisionLocationDecoder) Nothing
        |> JDP.optional "revisionInfo" (JD.nullable genericRevisionInfoDecoder) Nothing




{-| Type of HTTP response from getDeploymentConf
-}
type alias GetDeploymentConfigOutput =
    { deploymentConfigInfo : Maybe DeploymentConfigInfo
    }



getDeploymentConfigOutputDecoder : JD.Decoder GetDeploymentConfigOutput
getDeploymentConfigOutputDecoder =
    JDP.decode GetDeploymentConfigOutput
        |> JDP.optional "deploymentConfigInfo" (JD.nullable deploymentConfigInfoDecoder) Nothing




{-| Type of HTTP response from getDeploymentGro
-}
type alias GetDeploymentGroupOutput =
    { deploymentGroupInfo : Maybe DeploymentGroupInfo
    }



getDeploymentGroupOutputDecoder : JD.Decoder GetDeploymentGroupOutput
getDeploymentGroupOutputDecoder =
    JDP.decode GetDeploymentGroupOutput
        |> JDP.optional "deploymentGroupInfo" (JD.nullable deploymentGroupInfoDecoder) Nothing




{-| Type of HTTP response from getDeploymentInstan
-}
type alias GetDeploymentInstanceOutput =
    { instanceSummary : Maybe InstanceSummary
    }



getDeploymentInstanceOutputDecoder : JD.Decoder GetDeploymentInstanceOutput
getDeploymentInstanceOutputDecoder =
    JDP.decode GetDeploymentInstanceOutput
        |> JDP.optional "instanceSummary" (JD.nullable instanceSummaryDecoder) Nothing




{-| Type of HTTP response from getDeployme
-}
type alias GetDeploymentOutput =
    { deploymentInfo : Maybe DeploymentInfo
    }



getDeploymentOutputDecoder : JD.Decoder GetDeploymentOutput
getDeploymentOutputDecoder =
    JDP.decode GetDeploymentOutput
        |> JDP.optional "deploymentInfo" (JD.nullable deploymentInfoDecoder) Nothing




{-| Type of HTTP response from getOnPremisesInstan
-}
type alias GetOnPremisesInstanceOutput =
    { instanceInfo : Maybe InstanceInfo
    }



getOnPremisesInstanceOutputDecoder : JD.Decoder GetOnPremisesInstanceOutput
getOnPremisesInstanceOutputDecoder =
    JDP.decode GetOnPremisesInstanceOutput
        |> JDP.optional "instanceInfo" (JD.nullable instanceInfoDecoder) Nothing




{-| <p>Information about the location of application artifacts stored in GitHub.</p>
-}
type alias GitHubLocation =
    { repository : Maybe String
    , commitId : Maybe String
    }



gitHubLocationDecoder : JD.Decoder GitHubLocation
gitHubLocationDecoder =
    JDP.decode GitHubLocation
        |> JDP.optional "repository" (JD.nullable JD.string) Nothing
        |> JDP.optional "commitId" (JD.nullable JD.string) Nothing




{-| One of

* `GreenFleetProvisioningAction_DISCOVER_EXISTING`
* `GreenFleetProvisioningAction_COPY_AUTO_SCALING_GROUP`

-}
type GreenFleetProvisioningAction
    = GreenFleetProvisioningAction_DISCOVER_EXISTING
    | GreenFleetProvisioningAction_COPY_AUTO_SCALING_GROUP



greenFleetProvisioningActionDecoder : JD.Decoder GreenFleetProvisioningAction
greenFleetProvisioningActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DISCOVER_EXISTING" ->
                        JD.succeed GreenFleetProvisioningAction_DISCOVER_EXISTING

                    "COPY_AUTO_SCALING_GROUP" ->
                        JD.succeed GreenFleetProvisioningAction_COPY_AUTO_SCALING_GROUP


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the instances that belong to the replacement environment in a blue/green deployment.</p>
-}
type alias GreenFleetProvisioningOption =
    { action : Maybe GreenFleetProvisioningAction
    }



greenFleetProvisioningOptionDecoder : JD.Decoder GreenFleetProvisioningOption
greenFleetProvisioningOptionDecoder =
    JDP.decode GreenFleetProvisioningOption
        |> JDP.optional "action" (JD.nullable greenFleetProvisioningActionDecoder) Nothing




{-| <p>No IAM ARN was included in the request. You must use an IAM session ARN or IAM user ARN in the request.</p>
-}
type alias IamArnRequiredException =
    { 
    }



iamArnRequiredExceptionDecoder : JD.Decoder IamArnRequiredException
iamArnRequiredExceptionDecoder =
    JDP.decode IamArnRequiredException



{-| <p>The request included an IAM session ARN that has already been used to register a different instance.</p>
-}
type alias IamSessionArnAlreadyRegisteredException =
    { 
    }



iamSessionArnAlreadyRegisteredExceptionDecoder : JD.Decoder IamSessionArnAlreadyRegisteredException
iamSessionArnAlreadyRegisteredExceptionDecoder =
    JDP.decode IamSessionArnAlreadyRegisteredException



{-| <p>The specified IAM user ARN is already registered with an on-premises instance.</p>
-}
type alias IamUserArnAlreadyRegisteredException =
    { 
    }



iamUserArnAlreadyRegisteredExceptionDecoder : JD.Decoder IamUserArnAlreadyRegisteredException
iamUserArnAlreadyRegisteredExceptionDecoder =
    JDP.decode IamUserArnAlreadyRegisteredException



{-| <p>An IAM user ARN was not specified.</p>
-}
type alias IamUserArnRequiredException =
    { 
    }



iamUserArnRequiredExceptionDecoder : JD.Decoder IamUserArnRequiredException
iamUserArnRequiredExceptionDecoder =
    JDP.decode IamUserArnRequiredException



{-| One of

* `InstanceAction_TERMINATE`
* `InstanceAction_KEEP_ALIVE`

-}
type InstanceAction
    = InstanceAction_TERMINATE
    | InstanceAction_KEEP_ALIVE



instanceActionDecoder : JD.Decoder InstanceAction
instanceActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TERMINATE" ->
                        JD.succeed InstanceAction_TERMINATE

                    "KEEP_ALIVE" ->
                        JD.succeed InstanceAction_KEEP_ALIVE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified instance does not exist in the deployment group.</p>
-}
type alias InstanceDoesNotExistException =
    { 
    }



instanceDoesNotExistExceptionDecoder : JD.Decoder InstanceDoesNotExistException
instanceDoesNotExistExceptionDecoder =
    JDP.decode InstanceDoesNotExistException



{-| <p>The instance ID was not specified.</p>
-}
type alias InstanceIdRequiredException =
    { 
    }



instanceIdRequiredExceptionDecoder : JD.Decoder InstanceIdRequiredException
instanceIdRequiredExceptionDecoder =
    JDP.decode InstanceIdRequiredException



{-| <p>Information about an on-premises instance.</p>
-}
type alias InstanceInfo =
    { instanceName : Maybe String
    , iamSessionArn : Maybe String
    , iamUserArn : Maybe String
    , instanceArn : Maybe String
    , registerTime : Maybe Date
    , deregisterTime : Maybe Date
    , tags : Maybe (List Tag)
    }



instanceInfoDecoder : JD.Decoder InstanceInfo
instanceInfoDecoder =
    JDP.decode InstanceInfo
        |> JDP.optional "instanceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamSessionArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamUserArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "registerTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deregisterTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>The maximum number of allowed on-premises instances in a single call was exceeded.</p>
-}
type alias InstanceLimitExceededException =
    { 
    }



instanceLimitExceededExceptionDecoder : JD.Decoder InstanceLimitExceededException
instanceLimitExceededExceptionDecoder =
    JDP.decode InstanceLimitExceededException



{-| <p>The specified on-premises instance name is already registered.</p>
-}
type alias InstanceNameAlreadyRegisteredException =
    { 
    }



instanceNameAlreadyRegisteredExceptionDecoder : JD.Decoder InstanceNameAlreadyRegisteredException
instanceNameAlreadyRegisteredExceptionDecoder =
    JDP.decode InstanceNameAlreadyRegisteredException



{-| <p>An on-premises instance name was not specified.</p>
-}
type alias InstanceNameRequiredException =
    { 
    }



instanceNameRequiredExceptionDecoder : JD.Decoder InstanceNameRequiredException
instanceNameRequiredExceptionDecoder =
    JDP.decode InstanceNameRequiredException



{-| <p>The specified on-premises instance is not registered.</p>
-}
type alias InstanceNotRegisteredException =
    { 
    }



instanceNotRegisteredExceptionDecoder : JD.Decoder InstanceNotRegisteredException
instanceNotRegisteredExceptionDecoder =
    JDP.decode InstanceNotRegisteredException



{-| One of

* `InstanceStatus_Pending`
* `InstanceStatus_InProgress`
* `InstanceStatus_Succeeded`
* `InstanceStatus_Failed`
* `InstanceStatus_Skipped`
* `InstanceStatus_Unknown`
* `InstanceStatus_Ready`

-}
type InstanceStatus
    = InstanceStatus_Pending
    | InstanceStatus_InProgress
    | InstanceStatus_Succeeded
    | InstanceStatus_Failed
    | InstanceStatus_Skipped
    | InstanceStatus_Unknown
    | InstanceStatus_Ready



instanceStatusDecoder : JD.Decoder InstanceStatus
instanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed InstanceStatus_Pending

                    "InProgress" ->
                        JD.succeed InstanceStatus_InProgress

                    "Succeeded" ->
                        JD.succeed InstanceStatus_Succeeded

                    "Failed" ->
                        JD.succeed InstanceStatus_Failed

                    "Skipped" ->
                        JD.succeed InstanceStatus_Skipped

                    "Unknown" ->
                        JD.succeed InstanceStatus_Unknown

                    "Ready" ->
                        JD.succeed InstanceStatus_Ready


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about an instance in a deployment.</p>
-}
type alias InstanceSummary =
    { deploymentId : Maybe String
    , instanceId : Maybe String
    , status : Maybe InstanceStatus
    , lastUpdatedAt : Maybe Date
    , lifecycleEvents : Maybe (List LifecycleEvent)
    , instanceType : Maybe InstanceType
    }



instanceSummaryDecoder : JD.Decoder InstanceSummary
instanceSummaryDecoder =
    JDP.decode InstanceSummary
        |> JDP.optional "deploymentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable instanceStatusDecoder) Nothing
        |> JDP.optional "lastUpdatedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lifecycleEvents" (JD.nullable (JD.list lifecycleEventDecoder)) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing




{-| One of

* `InstanceType_Blue`
* `InstanceType_Green`

-}
type InstanceType
    = InstanceType_Blue
    | InstanceType_Green



instanceTypeDecoder : JD.Decoder InstanceType
instanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Blue" ->
                        JD.succeed InstanceType_Blue

                    "Green" ->
                        JD.succeed InstanceType_Green


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The format of the alarm configuration is invalid. Possible causes include:</p> <ul> <li> <p>The alarm list is null.</p> </li> <li> <p>The alarm object is null.</p> </li> <li> <p>The alarm name is empty or null or exceeds the 255 character limit.</p> </li> <li> <p>Two alarms with the same name have been specified.</p> </li> <li> <p>The alarm configuration is enabled but the alarm list is empty.</p> </li> </ul>
-}
type alias InvalidAlarmConfigException =
    { 
    }



invalidAlarmConfigExceptionDecoder : JD.Decoder InvalidAlarmConfigException
invalidAlarmConfigExceptionDecoder =
    JDP.decode InvalidAlarmConfigException



{-| <p>The application name was specified in an invalid format.</p>
-}
type alias InvalidApplicationNameException =
    { 
    }



invalidApplicationNameExceptionDecoder : JD.Decoder InvalidApplicationNameException
invalidApplicationNameExceptionDecoder =
    JDP.decode InvalidApplicationNameException



{-| <p>The automatic rollback configuration was specified in an invalid format. For example, automatic rollback is enabled but an invalid triggering event type or no event types were listed.</p>
-}
type alias InvalidAutoRollbackConfigException =
    { 
    }



invalidAutoRollbackConfigExceptionDecoder : JD.Decoder InvalidAutoRollbackConfigException
invalidAutoRollbackConfigExceptionDecoder =
    JDP.decode InvalidAutoRollbackConfigException



{-| <p>The Auto Scaling group was specified in an invalid format or does not exist.</p>
-}
type alias InvalidAutoScalingGroupException =
    { 
    }



invalidAutoScalingGroupExceptionDecoder : JD.Decoder InvalidAutoScalingGroupException
invalidAutoScalingGroupExceptionDecoder =
    JDP.decode InvalidAutoScalingGroupException



{-| <p>The configuration for the blue/green deployment group was provided in an invalid format. For information about deployment configuration format, see <a>CreateDeploymentConfig</a>.</p>
-}
type alias InvalidBlueGreenDeploymentConfigurationException =
    { 
    }



invalidBlueGreenDeploymentConfigurationExceptionDecoder : JD.Decoder InvalidBlueGreenDeploymentConfigurationException
invalidBlueGreenDeploymentConfigurationExceptionDecoder =
    JDP.decode InvalidBlueGreenDeploymentConfigurationException



{-| <p>The bucket name either doesn't exist or was specified in an invalid format.</p>
-}
type alias InvalidBucketNameFilterException =
    { 
    }



invalidBucketNameFilterExceptionDecoder : JD.Decoder InvalidBucketNameFilterException
invalidBucketNameFilterExceptionDecoder =
    JDP.decode InvalidBucketNameFilterException



{-| <p>The deployed state filter was specified in an invalid format.</p>
-}
type alias InvalidDeployedStateFilterException =
    { 
    }



invalidDeployedStateFilterExceptionDecoder : JD.Decoder InvalidDeployedStateFilterException
invalidDeployedStateFilterExceptionDecoder =
    JDP.decode InvalidDeployedStateFilterException



{-| <p>The deployment configuration name was specified in an invalid format.</p>
-}
type alias InvalidDeploymentConfigNameException =
    { 
    }



invalidDeploymentConfigNameExceptionDecoder : JD.Decoder InvalidDeploymentConfigNameException
invalidDeploymentConfigNameExceptionDecoder =
    JDP.decode InvalidDeploymentConfigNameException



{-| <p>The deployment group name was specified in an invalid format.</p>
-}
type alias InvalidDeploymentGroupNameException =
    { 
    }



invalidDeploymentGroupNameExceptionDecoder : JD.Decoder InvalidDeploymentGroupNameException
invalidDeploymentGroupNameExceptionDecoder =
    JDP.decode InvalidDeploymentGroupNameException



{-| <p>At least one of the deployment IDs was specified in an invalid format.</p>
-}
type alias InvalidDeploymentIdException =
    { 
    }



invalidDeploymentIdExceptionDecoder : JD.Decoder InvalidDeploymentIdException
invalidDeploymentIdExceptionDecoder =
    JDP.decode InvalidDeploymentIdException



{-| <p>The specified deployment status doesn't exist or cannot be determined.</p>
-}
type alias InvalidDeploymentStatusException =
    { 
    }



invalidDeploymentStatusExceptionDecoder : JD.Decoder InvalidDeploymentStatusException
invalidDeploymentStatusExceptionDecoder =
    JDP.decode InvalidDeploymentStatusException



{-| <p>An invalid deployment style was specified. Valid deployment types include "IN_PLACE" and "BLUE_GREEN". Valid deployment options for blue/green deployments include "WITH_TRAFFIC_CONTROL" and "WITHOUT_TRAFFIC_CONTROL".</p>
-}
type alias InvalidDeploymentStyleException =
    { 
    }



invalidDeploymentStyleExceptionDecoder : JD.Decoder InvalidDeploymentStyleException
invalidDeploymentStyleExceptionDecoder =
    JDP.decode InvalidDeploymentStyleException



{-| <p>The tag was specified in an invalid format.</p>
-}
type alias InvalidEC2TagException =
    { 
    }



invalidEC2TagExceptionDecoder : JD.Decoder InvalidEC2TagException
invalidEC2TagExceptionDecoder =
    JDP.decode InvalidEC2TagException



{-| <p>The IAM session ARN was specified in an invalid format.</p>
-}
type alias InvalidIamSessionArnException =
    { 
    }



invalidIamSessionArnExceptionDecoder : JD.Decoder InvalidIamSessionArnException
invalidIamSessionArnExceptionDecoder =
    JDP.decode InvalidIamSessionArnException



{-| <p>The IAM user ARN was specified in an invalid format.</p>
-}
type alias InvalidIamUserArnException =
    { 
    }



invalidIamUserArnExceptionDecoder : JD.Decoder InvalidIamUserArnException
invalidIamUserArnExceptionDecoder =
    JDP.decode InvalidIamUserArnException



{-| <p>The specified on-premises instance name was specified in an invalid format.</p>
-}
type alias InvalidInstanceNameException =
    { 
    }



invalidInstanceNameExceptionDecoder : JD.Decoder InvalidInstanceNameException
invalidInstanceNameExceptionDecoder =
    JDP.decode InvalidInstanceNameException



{-| <p>The specified instance status does not exist.</p>
-}
type alias InvalidInstanceStatusException =
    { 
    }



invalidInstanceStatusExceptionDecoder : JD.Decoder InvalidInstanceStatusException
invalidInstanceStatusExceptionDecoder =
    JDP.decode InvalidInstanceStatusException



{-| <p>An invalid instance type was specified for instances in a blue/green deployment. Valid values include "Blue" for an original environment and "Green" for a replacement environment.</p>
-}
type alias InvalidInstanceTypeException =
    { 
    }



invalidInstanceTypeExceptionDecoder : JD.Decoder InvalidInstanceTypeException
invalidInstanceTypeExceptionDecoder =
    JDP.decode InvalidInstanceTypeException



{-| <p>The specified key prefix filter was specified in an invalid format.</p>
-}
type alias InvalidKeyPrefixFilterException =
    { 
    }



invalidKeyPrefixFilterExceptionDecoder : JD.Decoder InvalidKeyPrefixFilterException
invalidKeyPrefixFilterExceptionDecoder =
    JDP.decode InvalidKeyPrefixFilterException



{-| <p>An invalid load balancer name, or no load balancer name, was specified.</p>
-}
type alias InvalidLoadBalancerInfoException =
    { 
    }



invalidLoadBalancerInfoExceptionDecoder : JD.Decoder InvalidLoadBalancerInfoException
invalidLoadBalancerInfoExceptionDecoder =
    JDP.decode InvalidLoadBalancerInfoException



{-| <p>The minimum healthy instance value was specified in an invalid format.</p>
-}
type alias InvalidMinimumHealthyHostValueException =
    { 
    }



invalidMinimumHealthyHostValueExceptionDecoder : JD.Decoder InvalidMinimumHealthyHostValueException
invalidMinimumHealthyHostValueExceptionDecoder =
    JDP.decode InvalidMinimumHealthyHostValueException



{-| <p>The next token was specified in an invalid format.</p>
-}
type alias InvalidNextTokenException =
    { 
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException



{-| <p>An invalid operation was detected.</p>
-}
type alias InvalidOperationException =
    { 
    }



invalidOperationExceptionDecoder : JD.Decoder InvalidOperationException
invalidOperationExceptionDecoder =
    JDP.decode InvalidOperationException



{-| <p>The registration status was specified in an invalid format.</p>
-}
type alias InvalidRegistrationStatusException =
    { 
    }



invalidRegistrationStatusExceptionDecoder : JD.Decoder InvalidRegistrationStatusException
invalidRegistrationStatusExceptionDecoder =
    JDP.decode InvalidRegistrationStatusException



{-| <p>The revision was specified in an invalid format.</p>
-}
type alias InvalidRevisionException =
    { 
    }



invalidRevisionExceptionDecoder : JD.Decoder InvalidRevisionException
invalidRevisionExceptionDecoder =
    JDP.decode InvalidRevisionException



{-| <p>The service role ARN was specified in an invalid format. Or, if an Auto Scaling group was specified, the specified service role does not grant the appropriate permissions to Auto Scaling.</p>
-}
type alias InvalidRoleException =
    { 
    }



invalidRoleExceptionDecoder : JD.Decoder InvalidRoleException
invalidRoleExceptionDecoder =
    JDP.decode InvalidRoleException



{-| <p>The column name to sort by is either not present or was specified in an invalid format.</p>
-}
type alias InvalidSortByException =
    { 
    }



invalidSortByExceptionDecoder : JD.Decoder InvalidSortByException
invalidSortByExceptionDecoder =
    JDP.decode InvalidSortByException



{-| <p>The sort order was specified in an invalid format.</p>
-}
type alias InvalidSortOrderException =
    { 
    }



invalidSortOrderExceptionDecoder : JD.Decoder InvalidSortOrderException
invalidSortOrderExceptionDecoder =
    JDP.decode InvalidSortOrderException



{-| <p>The specified tag was specified in an invalid format.</p>
-}
type alias InvalidTagException =
    { 
    }



invalidTagExceptionDecoder : JD.Decoder InvalidTagException
invalidTagExceptionDecoder =
    JDP.decode InvalidTagException



{-| <p>The specified tag filter was specified in an invalid format.</p>
-}
type alias InvalidTagFilterException =
    { 
    }



invalidTagFilterExceptionDecoder : JD.Decoder InvalidTagFilterException
invalidTagFilterExceptionDecoder =
    JDP.decode InvalidTagFilterException



{-| <p>The target instance configuration is invalid. Possible causes include:</p> <ul> <li> <p>Configuration data for target instances was entered for an in-place deployment.</p> </li> <li> <p>The limit of 10 tags for a tag type was exceeded.</p> </li> <li> <p>The combined length of the tag names exceeded the limit. </p> </li> <li> <p>A specified tag is not currently applied to any instances.</p> </li> </ul>
-}
type alias InvalidTargetInstancesException =
    { 
    }



invalidTargetInstancesExceptionDecoder : JD.Decoder InvalidTargetInstancesException
invalidTargetInstancesExceptionDecoder =
    JDP.decode InvalidTargetInstancesException



{-| <p>The specified time range was specified in an invalid format.</p>
-}
type alias InvalidTimeRangeException =
    { 
    }



invalidTimeRangeExceptionDecoder : JD.Decoder InvalidTimeRangeException
invalidTimeRangeExceptionDecoder =
    JDP.decode InvalidTimeRangeException



{-| <p>The trigger was specified in an invalid format.</p>
-}
type alias InvalidTriggerConfigException =
    { 
    }



invalidTriggerConfigExceptionDecoder : JD.Decoder InvalidTriggerConfigException
invalidTriggerConfigExceptionDecoder =
    JDP.decode InvalidTriggerConfigException



{-| One of

* `LifecycleErrorCode_Success`
* `LifecycleErrorCode_ScriptMissing`
* `LifecycleErrorCode_ScriptNotExecutable`
* `LifecycleErrorCode_ScriptTimedOut`
* `LifecycleErrorCode_ScriptFailed`
* `LifecycleErrorCode_UnknownError`

-}
type LifecycleErrorCode
    = LifecycleErrorCode_Success
    | LifecycleErrorCode_ScriptMissing
    | LifecycleErrorCode_ScriptNotExecutable
    | LifecycleErrorCode_ScriptTimedOut
    | LifecycleErrorCode_ScriptFailed
    | LifecycleErrorCode_UnknownError



lifecycleErrorCodeDecoder : JD.Decoder LifecycleErrorCode
lifecycleErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed LifecycleErrorCode_Success

                    "ScriptMissing" ->
                        JD.succeed LifecycleErrorCode_ScriptMissing

                    "ScriptNotExecutable" ->
                        JD.succeed LifecycleErrorCode_ScriptNotExecutable

                    "ScriptTimedOut" ->
                        JD.succeed LifecycleErrorCode_ScriptTimedOut

                    "ScriptFailed" ->
                        JD.succeed LifecycleErrorCode_ScriptFailed

                    "UnknownError" ->
                        JD.succeed LifecycleErrorCode_UnknownError


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a deployment lifecycle event.</p>
-}
type alias LifecycleEvent =
    { lifecycleEventName : Maybe String
    , diagnostics : Maybe Diagnostics
    , startTime : Maybe Date
    , endTime : Maybe Date
    , status : Maybe LifecycleEventStatus
    }



lifecycleEventDecoder : JD.Decoder LifecycleEvent
lifecycleEventDecoder =
    JDP.decode LifecycleEvent
        |> JDP.optional "lifecycleEventName" (JD.nullable JD.string) Nothing
        |> JDP.optional "diagnostics" (JD.nullable diagnosticsDecoder) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable lifecycleEventStatusDecoder) Nothing




{-| One of

* `LifecycleEventStatus_Pending`
* `LifecycleEventStatus_InProgress`
* `LifecycleEventStatus_Succeeded`
* `LifecycleEventStatus_Failed`
* `LifecycleEventStatus_Skipped`
* `LifecycleEventStatus_Unknown`

-}
type LifecycleEventStatus
    = LifecycleEventStatus_Pending
    | LifecycleEventStatus_InProgress
    | LifecycleEventStatus_Succeeded
    | LifecycleEventStatus_Failed
    | LifecycleEventStatus_Skipped
    | LifecycleEventStatus_Unknown



lifecycleEventStatusDecoder : JD.Decoder LifecycleEventStatus
lifecycleEventStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed LifecycleEventStatus_Pending

                    "InProgress" ->
                        JD.succeed LifecycleEventStatus_InProgress

                    "Succeeded" ->
                        JD.succeed LifecycleEventStatus_Succeeded

                    "Failed" ->
                        JD.succeed LifecycleEventStatus_Failed

                    "Skipped" ->
                        JD.succeed LifecycleEventStatus_Skipped

                    "Unknown" ->
                        JD.succeed LifecycleEventStatus_Unknown


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The limit for lifecycle hooks was exceeded.</p>
-}
type alias LifecycleHookLimitExceededException =
    { 
    }



lifecycleHookLimitExceededExceptionDecoder : JD.Decoder LifecycleHookLimitExceededException
lifecycleHookLimitExceededExceptionDecoder =
    JDP.decode LifecycleHookLimitExceededException



{-| Type of HTTP response from listApplicationRevisio
-}
type alias ListApplicationRevisionsOutput =
    { revisions : Maybe (List RevisionLocation)
    , nextToken : Maybe String
    }



listApplicationRevisionsOutputDecoder : JD.Decoder ListApplicationRevisionsOutput
listApplicationRevisionsOutputDecoder =
    JDP.decode ListApplicationRevisionsOutput
        |> JDP.optional "revisions" (JD.nullable (JD.list revisionLocationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listApplicatio
-}
type alias ListApplicationsOutput =
    { applications : Maybe (List String)
    , nextToken : Maybe String
    }



listApplicationsOutputDecoder : JD.Decoder ListApplicationsOutput
listApplicationsOutputDecoder =
    JDP.decode ListApplicationsOutput
        |> JDP.optional "applications" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDeploymentConfi
-}
type alias ListDeploymentConfigsOutput =
    { deploymentConfigsList : Maybe (List String)
    , nextToken : Maybe String
    }



listDeploymentConfigsOutputDecoder : JD.Decoder ListDeploymentConfigsOutput
listDeploymentConfigsOutputDecoder =
    JDP.decode ListDeploymentConfigsOutput
        |> JDP.optional "deploymentConfigsList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDeploymentGrou
-}
type alias ListDeploymentGroupsOutput =
    { applicationName : Maybe String
    , deploymentGroups : Maybe (List String)
    , nextToken : Maybe String
    }



listDeploymentGroupsOutputDecoder : JD.Decoder ListDeploymentGroupsOutput
listDeploymentGroupsOutputDecoder =
    JDP.decode ListDeploymentGroupsOutput
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDeploymentInstanc
-}
type alias ListDeploymentInstancesOutput =
    { instancesList : Maybe (List String)
    , nextToken : Maybe String
    }



listDeploymentInstancesOutputDecoder : JD.Decoder ListDeploymentInstancesOutput
listDeploymentInstancesOutputDecoder =
    JDP.decode ListDeploymentInstancesOutput
        |> JDP.optional "instancesList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDeploymen
-}
type alias ListDeploymentsOutput =
    { deployments : Maybe (List String)
    , nextToken : Maybe String
    }



listDeploymentsOutputDecoder : JD.Decoder ListDeploymentsOutput
listDeploymentsOutputDecoder =
    JDP.decode ListDeploymentsOutput
        |> JDP.optional "deployments" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listOnPremisesInstanc
-}
type alias ListOnPremisesInstancesOutput =
    { instanceNames : Maybe (List String)
    , nextToken : Maybe String
    }



listOnPremisesInstancesOutputDecoder : JD.Decoder ListOnPremisesInstancesOutput
listOnPremisesInstancesOutputDecoder =
    JDP.decode ListOnPremisesInstancesOutput
        |> JDP.optional "instanceNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| One of

* `ListStateFilterAction_include`
* `ListStateFilterAction_exclude`
* `ListStateFilterAction_ignore`

-}
type ListStateFilterAction
    = ListStateFilterAction_include
    | ListStateFilterAction_exclude
    | ListStateFilterAction_ignore



listStateFilterActionDecoder : JD.Decoder ListStateFilterAction
listStateFilterActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "include" ->
                        JD.succeed ListStateFilterAction_include

                    "exclude" ->
                        JD.succeed ListStateFilterAction_exclude

                    "ignore" ->
                        JD.succeed ListStateFilterAction_ignore


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the load balancer used in a blue/green deployment.</p>
-}
type alias LoadBalancerInfo =
    { elbInfoList : Maybe (List ELBInfo)
    }



loadBalancerInfoDecoder : JD.Decoder LoadBalancerInfo
loadBalancerInfoDecoder =
    JDP.decode LoadBalancerInfo
        |> JDP.optional "elbInfoList" (JD.nullable (JD.list eLBInfoDecoder)) Nothing




{-| <p>Information about minimum healthy instance.</p>
-}
type alias MinimumHealthyHosts =
    { value : Maybe Int
    , type_ : Maybe MinimumHealthyHostsType
    }



minimumHealthyHostsDecoder : JD.Decoder MinimumHealthyHosts
minimumHealthyHostsDecoder =
    JDP.decode MinimumHealthyHosts
        |> JDP.optional "value" (JD.nullable JD.int) Nothing
        |> JDP.optional "type_" (JD.nullable minimumHealthyHostsTypeDecoder) Nothing




{-| One of

* `MinimumHealthyHostsType_HOST_COUNT`
* `MinimumHealthyHostsType_FLEET_PERCENT`

-}
type MinimumHealthyHostsType
    = MinimumHealthyHostsType_HOST_COUNT
    | MinimumHealthyHostsType_FLEET_PERCENT



minimumHealthyHostsTypeDecoder : JD.Decoder MinimumHealthyHostsType
minimumHealthyHostsTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HOST_COUNT" ->
                        JD.succeed MinimumHealthyHostsType_HOST_COUNT

                    "FLEET_PERCENT" ->
                        JD.succeed MinimumHealthyHostsType_FLEET_PERCENT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Both an IAM user ARN and an IAM session ARN were included in the request. Use only one ARN type.</p>
-}
type alias MultipleIamArnsProvidedException =
    { 
    }



multipleIamArnsProvidedExceptionDecoder : JD.Decoder MultipleIamArnsProvidedException
multipleIamArnsProvidedExceptionDecoder =
    JDP.decode MultipleIamArnsProvidedException



{-| One of

* `RegistrationStatus_Registered`
* `RegistrationStatus_Deregistered`

-}
type RegistrationStatus
    = RegistrationStatus_Registered
    | RegistrationStatus_Deregistered



registrationStatusDecoder : JD.Decoder RegistrationStatus
registrationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Registered" ->
                        JD.succeed RegistrationStatus_Registered

                    "Deregistered" ->
                        JD.succeed RegistrationStatus_Deregistered


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The named revision does not exist with the applicable IAM user or AWS account.</p>
-}
type alias RevisionDoesNotExistException =
    { 
    }



revisionDoesNotExistExceptionDecoder : JD.Decoder RevisionDoesNotExistException
revisionDoesNotExistExceptionDecoder =
    JDP.decode RevisionDoesNotExistException



{-| <p>Information about an application revision.</p>
-}
type alias RevisionInfo =
    { revisionLocation : Maybe RevisionLocation
    , genericRevisionInfo : Maybe GenericRevisionInfo
    }



revisionInfoDecoder : JD.Decoder RevisionInfo
revisionInfoDecoder =
    JDP.decode RevisionInfo
        |> JDP.optional "revisionLocation" (JD.nullable revisionLocationDecoder) Nothing
        |> JDP.optional "genericRevisionInfo" (JD.nullable genericRevisionInfoDecoder) Nothing




{-| <p>Information about the location of an application revision.</p>
-}
type alias RevisionLocation =
    { revisionType : Maybe RevisionLocationType
    , s3Location : Maybe S3Location
    , gitHubLocation : Maybe GitHubLocation
    }



revisionLocationDecoder : JD.Decoder RevisionLocation
revisionLocationDecoder =
    JDP.decode RevisionLocation
        |> JDP.optional "revisionType" (JD.nullable revisionLocationTypeDecoder) Nothing
        |> JDP.optional "s3Location" (JD.nullable s3LocationDecoder) Nothing
        |> JDP.optional "gitHubLocation" (JD.nullable gitHubLocationDecoder) Nothing




{-| One of

* `RevisionLocationType_S3`
* `RevisionLocationType_GitHub`

-}
type RevisionLocationType
    = RevisionLocationType_S3
    | RevisionLocationType_GitHub



revisionLocationTypeDecoder : JD.Decoder RevisionLocationType
revisionLocationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "S3" ->
                        JD.succeed RevisionLocationType_S3

                    "GitHub" ->
                        JD.succeed RevisionLocationType_GitHub


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The revision ID was not specified.</p>
-}
type alias RevisionRequiredException =
    { 
    }



revisionRequiredExceptionDecoder : JD.Decoder RevisionRequiredException
revisionRequiredExceptionDecoder =
    JDP.decode RevisionRequiredException



{-| <p>The role ID was not specified.</p>
-}
type alias RoleRequiredException =
    { 
    }



roleRequiredExceptionDecoder : JD.Decoder RoleRequiredException
roleRequiredExceptionDecoder =
    JDP.decode RoleRequiredException



{-| <p>Information about a deployment rollback.</p>
-}
type alias RollbackInfo =
    { rollbackDeploymentId : Maybe String
    , rollbackTriggeringDeploymentId : Maybe String
    , rollbackMessage : Maybe String
    }



rollbackInfoDecoder : JD.Decoder RollbackInfo
rollbackInfoDecoder =
    JDP.decode RollbackInfo
        |> JDP.optional "rollbackDeploymentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "rollbackTriggeringDeploymentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "rollbackMessage" (JD.nullable JD.string) Nothing




{-| <p>Information about the location of application artifacts stored in Amazon S3.</p>
-}
type alias S3Location =
    { bucket : Maybe String
    , key : Maybe String
    , bundleType : Maybe BundleType
    , version : Maybe String
    , eTag : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JDP.decode S3Location
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "bundleType" (JD.nullable bundleTypeDecoder) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| One of

* `SortOrder_ascending`
* `SortOrder_descending`

-}
type SortOrder
    = SortOrder_ascending
    | SortOrder_descending



sortOrderDecoder : JD.Decoder SortOrder
sortOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ascending" ->
                        JD.succeed SortOrder_ascending

                    "descending" ->
                        JD.succeed SortOrder_descending


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from stopDeployme
-}
type alias StopDeploymentOutput =
    { status : Maybe StopStatus
    , statusMessage : Maybe String
    }



stopDeploymentOutputDecoder : JD.Decoder StopDeploymentOutput
stopDeploymentOutputDecoder =
    JDP.decode StopDeploymentOutput
        |> JDP.optional "status" (JD.nullable stopStatusDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing




{-| One of

* `StopStatus_Pending`
* `StopStatus_Succeeded`

-}
type StopStatus
    = StopStatus_Pending
    | StopStatus_Succeeded



stopStatusDecoder : JD.Decoder StopStatus
stopStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed StopStatus_Pending

                    "Succeeded" ->
                        JD.succeed StopStatus_Succeeded


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a tag.</p>
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




{-| <p>Information about an on-premises instance tag filter.</p>
-}
type alias TagFilter =
    { key : Maybe String
    , value : Maybe String
    , type_ : Maybe TagFilterType
    }



tagFilterDecoder : JD.Decoder TagFilter
tagFilterDecoder =
    JDP.decode TagFilter
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable tagFilterTypeDecoder) Nothing




{-| One of

* `TagFilterType_KEY_ONLY`
* `TagFilterType_VALUE_ONLY`
* `TagFilterType_KEY_AND_VALUE`

-}
type TagFilterType
    = TagFilterType_KEY_ONLY
    | TagFilterType_VALUE_ONLY
    | TagFilterType_KEY_AND_VALUE



tagFilterTypeDecoder : JD.Decoder TagFilterType
tagFilterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KEY_ONLY" ->
                        JD.succeed TagFilterType_KEY_ONLY

                    "VALUE_ONLY" ->
                        JD.succeed TagFilterType_VALUE_ONLY

                    "KEY_AND_VALUE" ->
                        JD.succeed TagFilterType_KEY_AND_VALUE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The maximum allowed number of tags was exceeded.</p>
-}
type alias TagLimitExceededException =
    { 
    }



tagLimitExceededExceptionDecoder : JD.Decoder TagLimitExceededException
tagLimitExceededExceptionDecoder =
    JDP.decode TagLimitExceededException



{-| <p>A tag was not specified.</p>
-}
type alias TagRequiredException =
    { 
    }



tagRequiredExceptionDecoder : JD.Decoder TagRequiredException
tagRequiredExceptionDecoder =
    JDP.decode TagRequiredException



{-| <p>Information about the instances to be used in the replacement environment in a blue/green deployment.</p>
-}
type alias TargetInstances =
    { tagFilters : Maybe (List EC2TagFilter)
    , autoScalingGroups : Maybe (List String)
    }



targetInstancesDecoder : JD.Decoder TargetInstances
targetInstancesDecoder =
    JDP.decode TargetInstances
        |> JDP.optional "tagFilters" (JD.nullable (JD.list eC2TagFilterDecoder)) Nothing
        |> JDP.optional "autoScalingGroups" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Information about a time range.</p>
-}
type alias TimeRange =
    { start : Maybe Date
    , end : Maybe Date
    }



timeRangeDecoder : JD.Decoder TimeRange
timeRangeDecoder =
    JDP.decode TimeRange
        |> JDP.optional "start" (JD.nullable JDX.date) Nothing
        |> JDP.optional "end" (JD.nullable JDX.date) Nothing




{-| <p>Information about notification triggers for the deployment group.</p>
-}
type alias TriggerConfig =
    { triggerName : Maybe String
    , triggerTargetArn : Maybe String
    , triggerEvents : Maybe (List TriggerEventType)
    }



triggerConfigDecoder : JD.Decoder TriggerConfig
triggerConfigDecoder =
    JDP.decode TriggerConfig
        |> JDP.optional "triggerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "triggerTargetArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "triggerEvents" (JD.nullable (JD.list triggerEventTypeDecoder)) Nothing




{-| One of

* `TriggerEventType_DeploymentStart`
* `TriggerEventType_DeploymentSuccess`
* `TriggerEventType_DeploymentFailure`
* `TriggerEventType_DeploymentStop`
* `TriggerEventType_DeploymentRollback`
* `TriggerEventType_DeploymentReady`
* `TriggerEventType_InstanceStart`
* `TriggerEventType_InstanceSuccess`
* `TriggerEventType_InstanceFailure`
* `TriggerEventType_InstanceReady`

-}
type TriggerEventType
    = TriggerEventType_DeploymentStart
    | TriggerEventType_DeploymentSuccess
    | TriggerEventType_DeploymentFailure
    | TriggerEventType_DeploymentStop
    | TriggerEventType_DeploymentRollback
    | TriggerEventType_DeploymentReady
    | TriggerEventType_InstanceStart
    | TriggerEventType_InstanceSuccess
    | TriggerEventType_InstanceFailure
    | TriggerEventType_InstanceReady



triggerEventTypeDecoder : JD.Decoder TriggerEventType
triggerEventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DeploymentStart" ->
                        JD.succeed TriggerEventType_DeploymentStart

                    "DeploymentSuccess" ->
                        JD.succeed TriggerEventType_DeploymentSuccess

                    "DeploymentFailure" ->
                        JD.succeed TriggerEventType_DeploymentFailure

                    "DeploymentStop" ->
                        JD.succeed TriggerEventType_DeploymentStop

                    "DeploymentRollback" ->
                        JD.succeed TriggerEventType_DeploymentRollback

                    "DeploymentReady" ->
                        JD.succeed TriggerEventType_DeploymentReady

                    "InstanceStart" ->
                        JD.succeed TriggerEventType_InstanceStart

                    "InstanceSuccess" ->
                        JD.succeed TriggerEventType_InstanceSuccess

                    "InstanceFailure" ->
                        JD.succeed TriggerEventType_InstanceFailure

                    "InstanceReady" ->
                        JD.succeed TriggerEventType_InstanceReady


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The maximum allowed number of triggers was exceeded.</p>
-}
type alias TriggerTargetsLimitExceededException =
    { 
    }



triggerTargetsLimitExceededExceptionDecoder : JD.Decoder TriggerTargetsLimitExceededException
triggerTargetsLimitExceededExceptionDecoder =
    JDP.decode TriggerTargetsLimitExceededException



{-| <p>A call was submitted that is not supported for the specified deployment type.</p>
-}
type alias UnsupportedActionForDeploymentTypeException =
    { 
    }



unsupportedActionForDeploymentTypeExceptionDecoder : JD.Decoder UnsupportedActionForDeploymentTypeException
unsupportedActionForDeploymentTypeExceptionDecoder =
    JDP.decode UnsupportedActionForDeploymentTypeException



{-| Type of HTTP response from updateDeploymentGro
-}
type alias UpdateDeploymentGroupOutput =
    { hooksNotCleanedUp : Maybe (List AutoScalingGroup)
    }



updateDeploymentGroupOutputDecoder : JD.Decoder UpdateDeploymentGroupOutput
updateDeploymentGroupOutputDecoder =
    JDP.decode UpdateDeploymentGroupOutput
        |> JDP.optional "hooksNotCleanedUp" (JD.nullable (JD.list autoScalingGroupDecoder)) Nothing




