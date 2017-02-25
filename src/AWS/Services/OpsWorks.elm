module AWS.Services.OpsWorks
    exposing
        ( config
        , assignInstance
        , assignVolume
        , AssignVolumeOptions
        , associateElasticIp
        , AssociateElasticIpOptions
        , attachElasticLoadBalancer
        , cloneStack
        , CloneStackOptions
        , createApp
        , CreateAppOptions
        , createDeployment
        , CreateDeploymentOptions
        , createInstance
        , CreateInstanceOptions
        , createLayer
        , CreateLayerOptions
        , createStack
        , CreateStackOptions
        , createUserProfile
        , CreateUserProfileOptions
        , deleteApp
        , deleteInstance
        , DeleteInstanceOptions
        , deleteLayer
        , deleteStack
        , deleteUserProfile
        , deregisterEcsCluster
        , deregisterElasticIp
        , deregisterInstance
        , deregisterRdsDbInstance
        , deregisterVolume
        , describeAgentVersions
        , DescribeAgentVersionsOptions
        , describeApps
        , DescribeAppsOptions
        , describeCommands
        , DescribeCommandsOptions
        , describeDeployments
        , DescribeDeploymentsOptions
        , describeEcsClusters
        , DescribeEcsClustersOptions
        , describeElasticIps
        , DescribeElasticIpsOptions
        , describeElasticLoadBalancers
        , DescribeElasticLoadBalancersOptions
        , describeInstances
        , DescribeInstancesOptions
        , describeLayers
        , DescribeLayersOptions
        , describeLoadBasedAutoScaling
        , describeMyUserProfile
        , describePermissions
        , DescribePermissionsOptions
        , describeRaidArrays
        , DescribeRaidArraysOptions
        , describeRdsDbInstances
        , DescribeRdsDbInstancesOptions
        , describeServiceErrors
        , DescribeServiceErrorsOptions
        , describeStackProvisioningParameters
        , describeStackSummary
        , describeStacks
        , DescribeStacksOptions
        , describeTimeBasedAutoScaling
        , describeUserProfiles
        , DescribeUserProfilesOptions
        , describeVolumes
        , DescribeVolumesOptions
        , detachElasticLoadBalancer
        , disassociateElasticIp
        , getHostnameSuggestion
        , grantAccess
        , GrantAccessOptions
        , rebootInstance
        , registerEcsCluster
        , registerElasticIp
        , registerInstance
        , RegisterInstanceOptions
        , registerRdsDbInstance
        , registerVolume
        , RegisterVolumeOptions
        , setLoadBasedAutoScaling
        , SetLoadBasedAutoScalingOptions
        , setPermission
        , SetPermissionOptions
        , setTimeBasedAutoScaling
        , SetTimeBasedAutoScalingOptions
        , startInstance
        , startStack
        , stopInstance
        , stopStack
        , unassignInstance
        , unassignVolume
        , updateApp
        , UpdateAppOptions
        , updateElasticIp
        , UpdateElasticIpOptions
        , updateInstance
        , UpdateInstanceOptions
        , updateLayer
        , UpdateLayerOptions
        , updateMyUserProfile
        , UpdateMyUserProfileOptions
        , updateRdsDbInstance
        , UpdateRdsDbInstanceOptions
        , updateStack
        , UpdateStackOptions
        , updateUserProfile
        , UpdateUserProfileOptions
        , updateVolume
        , UpdateVolumeOptions
        , AgentVersion
        , App
        , AppAttributesKeys(..)
        , AppType(..)
        , Architecture(..)
        , AutoScalingThresholds
        , AutoScalingType(..)
        , BlockDeviceMapping
        , ChefConfiguration
        , CloneStackResult
        , Command
        , CreateAppResult
        , CreateDeploymentResult
        , CreateInstanceResult
        , CreateLayerResult
        , CreateStackResult
        , CreateUserProfileResult
        , DataSource
        , Deployment
        , DeploymentCommand
        , DeploymentCommandName(..)
        , DescribeAgentVersionsResult
        , DescribeAppsResult
        , DescribeCommandsResult
        , DescribeDeploymentsResult
        , DescribeEcsClustersResult
        , DescribeElasticIpsResult
        , DescribeElasticLoadBalancersResult
        , DescribeInstancesResult
        , DescribeLayersResult
        , DescribeLoadBasedAutoScalingResult
        , DescribeMyUserProfileResult
        , DescribePermissionsResult
        , DescribeRaidArraysResult
        , DescribeRdsDbInstancesResult
        , DescribeServiceErrorsResult
        , DescribeStackProvisioningParametersResult
        , DescribeStackSummaryResult
        , DescribeStacksResult
        , DescribeTimeBasedAutoScalingResult
        , DescribeUserProfilesResult
        , DescribeVolumesResult
        , EbsBlockDevice
        , EcsCluster
        , ElasticIp
        , ElasticLoadBalancer
        , EnvironmentVariable
        , GetHostnameSuggestionResult
        , GrantAccessResult
        , Instance
        , InstanceIdentity
        , InstancesCount
        , Layer
        , LayerAttributesKeys(..)
        , LayerType(..)
        , LifecycleEventConfiguration
        , LoadBasedAutoScalingConfiguration
        , Permission
        , RaidArray
        , RdsDbInstance
        , Recipes
        , RegisterEcsClusterResult
        , RegisterElasticIpResult
        , RegisterInstanceResult
        , RegisterVolumeResult
        , ReportedOs
        , ResourceNotFoundException
        , RootDeviceType(..)
        , SelfUserProfile
        , ServiceError
        , ShutdownEventConfiguration
        , Source
        , SourceType(..)
        , SslConfiguration
        , Stack
        , StackAttributesKeys(..)
        , StackConfigurationManager
        , StackSummary
        , TemporaryCredential
        , TimeBasedAutoScalingConfiguration
        , UserProfile
        , ValidationException
        , VirtualizationType(..)
        , Volume
        , VolumeConfiguration
        , VolumeType(..)
        , WeeklyAutoScalingSchedule
        )

{-| <fullname>AWS OpsWorks</fullname> <p>Welcome to the <i>AWS OpsWorks API Reference</i>. This guide provides descriptions, syntax, and usage examples for AWS OpsWorks actions and data types, including common parameters and error codes. </p> <p>AWS OpsWorks is an application management service that provides an integrated experience for overseeing the complete application lifecycle. For information about this product, go to the <a href="http://aws.amazon.com/opsworks/">AWS OpsWorks</a> details page. </p> <p> <b>SDKs and CLI</b> </p> <p>The most common way to use the AWS OpsWorks API is by using the AWS Command Line Interface (CLI) or by using one of the AWS SDKs to implement applications in your preferred language. For more information, see:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html">AWS CLI</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html">AWS SDK for Java</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm">AWS SDK for .NET</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html">AWS SDK for PHP 2</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/sdkforruby/api/">AWS SDK for Ruby</a> </p> </li> <li> <p> <a href="http://aws.amazon.com/documentation/sdkforjavascript/">AWS SDK for Node.js</a> </p> </li> <li> <p> <a href="http://docs.pythonboto.org/en/latest/ref/opsworks.html">AWS SDK for Python(Boto)</a> </p> </li> </ul> <p> <b>Endpoints</b> </p> <p>AWS OpsWorks supports the following endpoints, all HTTPS. You must connect to one of the following endpoints. Stacks can only be accessed or managed within the endpoint in which they are created.</p> <ul> <li> <p>opsworks.us-east-1.amazonaws.com</p> </li> <li> <p>opsworks.us-west-1.amazonaws.com</p> </li> <li> <p>opsworks.us-west-2.amazonaws.com</p> </li> <li> <p>opsworks.eu-west-1.amazonaws.com</p> </li> <li> <p>opsworks.eu-central-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-northeast-2.amazonaws.com</p> </li> <li> <p>opsworks.ap-south-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-1.amazonaws.com</p> </li> <li> <p>opsworks.ap-southeast-2.amazonaws.com</p> </li> <li> <p>opsworks.sa-east-1.amazonaws.com</p> </li> </ul> <p> <b>Chef Versions</b> </p> <p>When you call <a>CreateStack</a>, <a>CloneStack</a>, or <a>UpdateStack</a> we recommend you use the <code>ConfigurationManager</code> parameter to specify the Chef version. The recommended and default value for Linux stacks is currently 12. Windows stacks use Chef 12.2. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html">Chef Versions</a>.</p> <note> <p>You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend migrating your existing Linux stacks to Chef 12 as soon as possible.</p> </note>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [assignInstance](#assignInstance)
* [assignVolume](#assignVolume)
* [AssignVolumeOptions](#AssignVolumeOptions)
* [associateElasticIp](#associateElasticIp)
* [AssociateElasticIpOptions](#AssociateElasticIpOptions)
* [attachElasticLoadBalancer](#attachElasticLoadBalancer)
* [cloneStack](#cloneStack)
* [CloneStackOptions](#CloneStackOptions)
* [createApp](#createApp)
* [CreateAppOptions](#CreateAppOptions)
* [createDeployment](#createDeployment)
* [CreateDeploymentOptions](#CreateDeploymentOptions)
* [createInstance](#createInstance)
* [CreateInstanceOptions](#CreateInstanceOptions)
* [createLayer](#createLayer)
* [CreateLayerOptions](#CreateLayerOptions)
* [createStack](#createStack)
* [CreateStackOptions](#CreateStackOptions)
* [createUserProfile](#createUserProfile)
* [CreateUserProfileOptions](#CreateUserProfileOptions)
* [deleteApp](#deleteApp)
* [deleteInstance](#deleteInstance)
* [DeleteInstanceOptions](#DeleteInstanceOptions)
* [deleteLayer](#deleteLayer)
* [deleteStack](#deleteStack)
* [deleteUserProfile](#deleteUserProfile)
* [deregisterEcsCluster](#deregisterEcsCluster)
* [deregisterElasticIp](#deregisterElasticIp)
* [deregisterInstance](#deregisterInstance)
* [deregisterRdsDbInstance](#deregisterRdsDbInstance)
* [deregisterVolume](#deregisterVolume)
* [describeAgentVersions](#describeAgentVersions)
* [DescribeAgentVersionsOptions](#DescribeAgentVersionsOptions)
* [describeApps](#describeApps)
* [DescribeAppsOptions](#DescribeAppsOptions)
* [describeCommands](#describeCommands)
* [DescribeCommandsOptions](#DescribeCommandsOptions)
* [describeDeployments](#describeDeployments)
* [DescribeDeploymentsOptions](#DescribeDeploymentsOptions)
* [describeEcsClusters](#describeEcsClusters)
* [DescribeEcsClustersOptions](#DescribeEcsClustersOptions)
* [describeElasticIps](#describeElasticIps)
* [DescribeElasticIpsOptions](#DescribeElasticIpsOptions)
* [describeElasticLoadBalancers](#describeElasticLoadBalancers)
* [DescribeElasticLoadBalancersOptions](#DescribeElasticLoadBalancersOptions)
* [describeInstances](#describeInstances)
* [DescribeInstancesOptions](#DescribeInstancesOptions)
* [describeLayers](#describeLayers)
* [DescribeLayersOptions](#DescribeLayersOptions)
* [describeLoadBasedAutoScaling](#describeLoadBasedAutoScaling)
* [describeMyUserProfile](#describeMyUserProfile)
* [describePermissions](#describePermissions)
* [DescribePermissionsOptions](#DescribePermissionsOptions)
* [describeRaidArrays](#describeRaidArrays)
* [DescribeRaidArraysOptions](#DescribeRaidArraysOptions)
* [describeRdsDbInstances](#describeRdsDbInstances)
* [DescribeRdsDbInstancesOptions](#DescribeRdsDbInstancesOptions)
* [describeServiceErrors](#describeServiceErrors)
* [DescribeServiceErrorsOptions](#DescribeServiceErrorsOptions)
* [describeStackProvisioningParameters](#describeStackProvisioningParameters)
* [describeStackSummary](#describeStackSummary)
* [describeStacks](#describeStacks)
* [DescribeStacksOptions](#DescribeStacksOptions)
* [describeTimeBasedAutoScaling](#describeTimeBasedAutoScaling)
* [describeUserProfiles](#describeUserProfiles)
* [DescribeUserProfilesOptions](#DescribeUserProfilesOptions)
* [describeVolumes](#describeVolumes)
* [DescribeVolumesOptions](#DescribeVolumesOptions)
* [detachElasticLoadBalancer](#detachElasticLoadBalancer)
* [disassociateElasticIp](#disassociateElasticIp)
* [getHostnameSuggestion](#getHostnameSuggestion)
* [grantAccess](#grantAccess)
* [GrantAccessOptions](#GrantAccessOptions)
* [rebootInstance](#rebootInstance)
* [registerEcsCluster](#registerEcsCluster)
* [registerElasticIp](#registerElasticIp)
* [registerInstance](#registerInstance)
* [RegisterInstanceOptions](#RegisterInstanceOptions)
* [registerRdsDbInstance](#registerRdsDbInstance)
* [registerVolume](#registerVolume)
* [RegisterVolumeOptions](#RegisterVolumeOptions)
* [setLoadBasedAutoScaling](#setLoadBasedAutoScaling)
* [SetLoadBasedAutoScalingOptions](#SetLoadBasedAutoScalingOptions)
* [setPermission](#setPermission)
* [SetPermissionOptions](#SetPermissionOptions)
* [setTimeBasedAutoScaling](#setTimeBasedAutoScaling)
* [SetTimeBasedAutoScalingOptions](#SetTimeBasedAutoScalingOptions)
* [startInstance](#startInstance)
* [startStack](#startStack)
* [stopInstance](#stopInstance)
* [stopStack](#stopStack)
* [unassignInstance](#unassignInstance)
* [unassignVolume](#unassignVolume)
* [updateApp](#updateApp)
* [UpdateAppOptions](#UpdateAppOptions)
* [updateElasticIp](#updateElasticIp)
* [UpdateElasticIpOptions](#UpdateElasticIpOptions)
* [updateInstance](#updateInstance)
* [UpdateInstanceOptions](#UpdateInstanceOptions)
* [updateLayer](#updateLayer)
* [UpdateLayerOptions](#UpdateLayerOptions)
* [updateMyUserProfile](#updateMyUserProfile)
* [UpdateMyUserProfileOptions](#UpdateMyUserProfileOptions)
* [updateRdsDbInstance](#updateRdsDbInstance)
* [UpdateRdsDbInstanceOptions](#UpdateRdsDbInstanceOptions)
* [updateStack](#updateStack)
* [UpdateStackOptions](#UpdateStackOptions)
* [updateUserProfile](#updateUserProfile)
* [UpdateUserProfileOptions](#UpdateUserProfileOptions)
* [updateVolume](#updateVolume)
* [UpdateVolumeOptions](#UpdateVolumeOptions)


@docs assignInstance,assignVolume,AssignVolumeOptions,associateElasticIp,AssociateElasticIpOptions,attachElasticLoadBalancer,cloneStack,CloneStackOptions,createApp,CreateAppOptions,createDeployment,CreateDeploymentOptions,createInstance,CreateInstanceOptions,createLayer,CreateLayerOptions,createStack,CreateStackOptions,createUserProfile,CreateUserProfileOptions,deleteApp,deleteInstance,DeleteInstanceOptions,deleteLayer,deleteStack,deleteUserProfile,deregisterEcsCluster,deregisterElasticIp,deregisterInstance,deregisterRdsDbInstance,deregisterVolume,describeAgentVersions,DescribeAgentVersionsOptions,describeApps,DescribeAppsOptions,describeCommands,DescribeCommandsOptions,describeDeployments,DescribeDeploymentsOptions,describeEcsClusters,DescribeEcsClustersOptions,describeElasticIps,DescribeElasticIpsOptions,describeElasticLoadBalancers,DescribeElasticLoadBalancersOptions,describeInstances,DescribeInstancesOptions,describeLayers,DescribeLayersOptions,describeLoadBasedAutoScaling,describeMyUserProfile,describePermissions,DescribePermissionsOptions,describeRaidArrays,DescribeRaidArraysOptions,describeRdsDbInstances,DescribeRdsDbInstancesOptions,describeServiceErrors,DescribeServiceErrorsOptions,describeStackProvisioningParameters,describeStackSummary,describeStacks,DescribeStacksOptions,describeTimeBasedAutoScaling,describeUserProfiles,DescribeUserProfilesOptions,describeVolumes,DescribeVolumesOptions,detachElasticLoadBalancer,disassociateElasticIp,getHostnameSuggestion,grantAccess,GrantAccessOptions,rebootInstance,registerEcsCluster,registerElasticIp,registerInstance,RegisterInstanceOptions,registerRdsDbInstance,registerVolume,RegisterVolumeOptions,setLoadBasedAutoScaling,SetLoadBasedAutoScalingOptions,setPermission,SetPermissionOptions,setTimeBasedAutoScaling,SetTimeBasedAutoScalingOptions,startInstance,startStack,stopInstance,stopStack,unassignInstance,unassignVolume,updateApp,UpdateAppOptions,updateElasticIp,UpdateElasticIpOptions,updateInstance,UpdateInstanceOptions,updateLayer,UpdateLayerOptions,updateMyUserProfile,UpdateMyUserProfileOptions,updateRdsDbInstance,UpdateRdsDbInstanceOptions,updateStack,UpdateStackOptions,updateUserProfile,UpdateUserProfileOptions,updateVolume,UpdateVolumeOptions

## Responses

* [CloneStackResult](#CloneStackResult)
* [CreateAppResult](#CreateAppResult)
* [CreateDeploymentResult](#CreateDeploymentResult)
* [CreateInstanceResult](#CreateInstanceResult)
* [CreateLayerResult](#CreateLayerResult)
* [CreateStackResult](#CreateStackResult)
* [CreateUserProfileResult](#CreateUserProfileResult)
* [DescribeAgentVersionsResult](#DescribeAgentVersionsResult)
* [DescribeAppsResult](#DescribeAppsResult)
* [DescribeCommandsResult](#DescribeCommandsResult)
* [DescribeDeploymentsResult](#DescribeDeploymentsResult)
* [DescribeEcsClustersResult](#DescribeEcsClustersResult)
* [DescribeElasticIpsResult](#DescribeElasticIpsResult)
* [DescribeElasticLoadBalancersResult](#DescribeElasticLoadBalancersResult)
* [DescribeInstancesResult](#DescribeInstancesResult)
* [DescribeLayersResult](#DescribeLayersResult)
* [DescribeLoadBasedAutoScalingResult](#DescribeLoadBasedAutoScalingResult)
* [DescribeMyUserProfileResult](#DescribeMyUserProfileResult)
* [DescribePermissionsResult](#DescribePermissionsResult)
* [DescribeRaidArraysResult](#DescribeRaidArraysResult)
* [DescribeRdsDbInstancesResult](#DescribeRdsDbInstancesResult)
* [DescribeServiceErrorsResult](#DescribeServiceErrorsResult)
* [DescribeStackProvisioningParametersResult](#DescribeStackProvisioningParametersResult)
* [DescribeStackSummaryResult](#DescribeStackSummaryResult)
* [DescribeStacksResult](#DescribeStacksResult)
* [DescribeTimeBasedAutoScalingResult](#DescribeTimeBasedAutoScalingResult)
* [DescribeUserProfilesResult](#DescribeUserProfilesResult)
* [DescribeVolumesResult](#DescribeVolumesResult)
* [GetHostnameSuggestionResult](#GetHostnameSuggestionResult)
* [GrantAccessResult](#GrantAccessResult)
* [RegisterEcsClusterResult](#RegisterEcsClusterResult)
* [RegisterElasticIpResult](#RegisterElasticIpResult)
* [RegisterInstanceResult](#RegisterInstanceResult)
* [RegisterVolumeResult](#RegisterVolumeResult)


@docs CloneStackResult,CreateAppResult,CreateDeploymentResult,CreateInstanceResult,CreateLayerResult,CreateStackResult,CreateUserProfileResult,DescribeAgentVersionsResult,DescribeAppsResult,DescribeCommandsResult,DescribeDeploymentsResult,DescribeEcsClustersResult,DescribeElasticIpsResult,DescribeElasticLoadBalancersResult,DescribeInstancesResult,DescribeLayersResult,DescribeLoadBasedAutoScalingResult,DescribeMyUserProfileResult,DescribePermissionsResult,DescribeRaidArraysResult,DescribeRdsDbInstancesResult,DescribeServiceErrorsResult,DescribeStackProvisioningParametersResult,DescribeStackSummaryResult,DescribeStacksResult,DescribeTimeBasedAutoScalingResult,DescribeUserProfilesResult,DescribeVolumesResult,GetHostnameSuggestionResult,GrantAccessResult,RegisterEcsClusterResult,RegisterElasticIpResult,RegisterInstanceResult,RegisterVolumeResult

## Records

* [AgentVersion](#AgentVersion)
* [App](#App)
* [AutoScalingThresholds](#AutoScalingThresholds)
* [BlockDeviceMapping](#BlockDeviceMapping)
* [ChefConfiguration](#ChefConfiguration)
* [Command](#Command)
* [DataSource](#DataSource)
* [Deployment](#Deployment)
* [DeploymentCommand](#DeploymentCommand)
* [EbsBlockDevice](#EbsBlockDevice)
* [EcsCluster](#EcsCluster)
* [ElasticIp](#ElasticIp)
* [ElasticLoadBalancer](#ElasticLoadBalancer)
* [EnvironmentVariable](#EnvironmentVariable)
* [Instance](#Instance)
* [InstanceIdentity](#InstanceIdentity)
* [InstancesCount](#InstancesCount)
* [Layer](#Layer)
* [LifecycleEventConfiguration](#LifecycleEventConfiguration)
* [LoadBasedAutoScalingConfiguration](#LoadBasedAutoScalingConfiguration)
* [Permission](#Permission)
* [RaidArray](#RaidArray)
* [RdsDbInstance](#RdsDbInstance)
* [Recipes](#Recipes)
* [ReportedOs](#ReportedOs)
* [SelfUserProfile](#SelfUserProfile)
* [ServiceError](#ServiceError)
* [ShutdownEventConfiguration](#ShutdownEventConfiguration)
* [Source](#Source)
* [SslConfiguration](#SslConfiguration)
* [Stack](#Stack)
* [StackConfigurationManager](#StackConfigurationManager)
* [StackSummary](#StackSummary)
* [TemporaryCredential](#TemporaryCredential)
* [TimeBasedAutoScalingConfiguration](#TimeBasedAutoScalingConfiguration)
* [UserProfile](#UserProfile)
* [Volume](#Volume)
* [VolumeConfiguration](#VolumeConfiguration)
* [WeeklyAutoScalingSchedule](#WeeklyAutoScalingSchedule)


@docs AgentVersion,App,AutoScalingThresholds,BlockDeviceMapping,ChefConfiguration,Command,DataSource,Deployment,DeploymentCommand,EbsBlockDevice,EcsCluster,ElasticIp,ElasticLoadBalancer,EnvironmentVariable,Instance,InstanceIdentity,InstancesCount,Layer,LifecycleEventConfiguration,LoadBasedAutoScalingConfiguration,Permission,RaidArray,RdsDbInstance,Recipes,ReportedOs,SelfUserProfile,ServiceError,ShutdownEventConfiguration,Source,SslConfiguration,Stack,StackConfigurationManager,StackSummary,TemporaryCredential,TimeBasedAutoScalingConfiguration,UserProfile,Volume,VolumeConfiguration,WeeklyAutoScalingSchedule

## Unions

* [AppAttributesKeys](#AppAttributesKeys)
* [AppType](#AppType)
* [Architecture](#Architecture)
* [AutoScalingType](#AutoScalingType)
* [DeploymentCommandName](#DeploymentCommandName)
* [LayerAttributesKeys](#LayerAttributesKeys)
* [LayerType](#LayerType)
* [RootDeviceType](#RootDeviceType)
* [SourceType](#SourceType)
* [StackAttributesKeys](#StackAttributesKeys)
* [VirtualizationType](#VirtualizationType)
* [VolumeType](#VolumeType)


@docs AppAttributesKeys,AppType,Architecture,AutoScalingType,DeploymentCommandName,LayerAttributesKeys,LayerType,RootDeviceType,SourceType,StackAttributesKeys,VirtualizationType,VolumeType

## Exceptions

* [ResourceNotFoundException](#ResourceNotFoundException)
* [ValidationException](#ValidationException)


@docs ResourceNotFoundException,ValidationException

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
        "opsworks"
        "2013-02-18"
        "1.1"
        "AWSOPSWORKS_20130218."
        "opsworks.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Assign a registered instance to a layer.</p> <ul> <li> <p>You can assign registered on-premises instances to any layer type.</p> </li> <li> <p>You can assign registered Amazon EC2 instances only to custom layers.</p> </li> <li> <p>You cannot use this action with instances that were created with AWS OpsWorks.</p> </li> </ul> <p> <b>Required Permissions</b>: To use this action, an AWS Identity and Access Management (IAM) user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `layerIds` __:__ `(List String)`


-}
assignInstance :
    String
    -> (List String)
    -> AWS.Request ()
assignInstance instanceId layerIds =
    AWS.Http.unsignedRequest
        "AssignInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Assigns one of the stack's registered Amazon EBS volumes to a specified instance. The volume must first be registered with the stack by calling <a>RegisterVolume</a>. After you register the volume, you must call <a>UpdateVolume</a> to specify a mount point before calling <code>AssignVolume</code>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
assignVolume :
    String
    -> (AssignVolumeOptions -> AssignVolumeOptions)
    -> AWS.Request ()
assignVolume volumeId setOptions =
  let
    options = setOptions (AssignVolumeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssignVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a assignVolume request
-}
type alias AssignVolumeOptions =
    { instanceId : Maybe String
    }



{-| <p>Associates one of the stack's registered Elastic IP addresses with a specified instance. The address must first be registered with the stack by calling <a>RegisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}
associateElasticIp :
    String
    -> (AssociateElasticIpOptions -> AssociateElasticIpOptions)
    -> AWS.Request ()
associateElasticIp elasticIp setOptions =
  let
    options = setOptions (AssociateElasticIpOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateElasticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a associateElasticIp request
-}
type alias AssociateElasticIpOptions =
    { instanceId : Maybe String
    }



{-| <p>Attaches an Elastic Load Balancing load balancer to a specified layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/load-balancer-elb.html">Elastic Load Balancing</a>.</p> <note> <p>You must create the Elastic Load Balancing instance separately, by using the Elastic Load Balancing console, API, or CLI. For more information, see <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html"> Elastic Load Balancing Developer Guide</a>.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticLoadBalancerName` __:__ `String`
* `layerId` __:__ `String`


-}
attachElasticLoadBalancer :
    String
    -> String
    -> AWS.Request ()
attachElasticLoadBalancer elasticLoadBalancerName layerId =
    AWS.Http.unsignedRequest
        "AttachElasticLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates a clone of a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html">Clone a Stack</a>. By default, all parameters are set to the values used by the parent stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `sourceStackId` __:__ `String`
* `serviceRoleArn` __:__ `String`


-}
cloneStack :
    String
    -> String
    -> (CloneStackOptions -> CloneStackOptions)
    -> AWS.Request CloneStackResult
cloneStack sourceStackId serviceRoleArn setOptions =
  let
    options = setOptions (CloneStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CloneStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cloneStackResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a cloneStack request
-}
type alias CloneStackOptions =
    { name : Maybe String
    , region : Maybe String
    , vpcId : Maybe String
    , attributes : Maybe (Dict String String)
    , defaultInstanceProfileArn : Maybe String
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , useOpsworksSecurityGroups : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , clonePermissions : Maybe Bool
    , cloneAppIds : Maybe (List String)
    , defaultRootDeviceType : Maybe RootDeviceType
    , agentVersion : Maybe String
    }



{-| <p>Creates an app for a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `name` __:__ `String`
* `type_` __:__ `AppType`


-}
createApp :
    String
    -> String
    -> AppType
    -> (CreateAppOptions -> CreateAppOptions)
    -> AWS.Request CreateAppResult
createApp stackId name type_ setOptions =
  let
    options = setOptions (CreateAppOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateApp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAppResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createApp request
-}
type alias CreateAppOptions =
    { shortname : Maybe String
    , description : Maybe String
    , dataSources : Maybe (List DataSource)
    , appSource : Maybe Source
    , domains : Maybe (List String)
    , enableSsl : Maybe Bool
    , sslConfiguration : Maybe SslConfiguration
    , attributes : Maybe (Dict String String)
    , environment : Maybe (List EnvironmentVariable)
    }



{-| <p>Runs deployment or stack commands. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html">Deploying Apps</a> and <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html">Run Stack Commands</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `command` __:__ `DeploymentCommand`


-}
createDeployment :
    String
    -> DeploymentCommand
    -> (CreateDeploymentOptions -> CreateDeploymentOptions)
    -> AWS.Request CreateDeploymentResult
createDeployment stackId command setOptions =
  let
    options = setOptions (CreateDeploymentOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDeployment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDeploymentResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createDeployment request
-}
type alias CreateDeploymentOptions =
    { appId : Maybe String
    , instanceIds : Maybe (List String)
    , layerIds : Maybe (List String)
    , comment : Maybe String
    , customJson : Maybe String
    }



{-| <p>Creates an instance in a specified stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html">Adding an Instance to a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `layerIds` __:__ `(List String)`
* `instanceType` __:__ `String`


-}
createInstance :
    String
    -> (List String)
    -> String
    -> (CreateInstanceOptions -> CreateInstanceOptions)
    -> AWS.Request CreateInstanceResult
createInstance stackId layerIds instanceType setOptions =
  let
    options = setOptions (CreateInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createInstanceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createInstance request
-}
type alias CreateInstanceOptions =
    { autoScalingType : Maybe AutoScalingType
    , hostname : Maybe String
    , os : Maybe String
    , amiId : Maybe String
    , sshKeyName : Maybe String
    , availabilityZone : Maybe String
    , virtualizationType : Maybe String
    , subnetId : Maybe String
    , architecture : Maybe Architecture
    , rootDeviceType : Maybe RootDeviceType
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , installUpdatesOnBoot : Maybe Bool
    , ebsOptimized : Maybe Bool
    , agentVersion : Maybe String
    , tenancy : Maybe String
    }



{-| <p>Creates a layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html">How to Create a Layer</a>.</p> <note> <p>You should use <b>CreateLayer</b> for noncustom layer types such as PHP App Server only if the stack does not have an existing layer of that type. A stack can have at most one instance of each noncustom layer; if you attempt to create a second instance, <b>CreateLayer</b> fails. A stack can have an arbitrary number of custom layers, so you can call <b>CreateLayer</b> as many times as you like for that layer type.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `type_` __:__ `LayerType`
* `name` __:__ `String`
* `shortname` __:__ `String`


-}
createLayer :
    String
    -> LayerType
    -> String
    -> String
    -> (CreateLayerOptions -> CreateLayerOptions)
    -> AWS.Request CreateLayerResult
createLayer stackId type_ name shortname setOptions =
  let
    options = setOptions (CreateLayerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLayer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createLayerResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createLayer request
-}
type alias CreateLayerOptions =
    { attributes : Maybe (Dict String String)
    , customInstanceProfileArn : Maybe String
    , customJson : Maybe String
    , customSecurityGroupIds : Maybe (List String)
    , packages : Maybe (List String)
    , volumeConfigurations : Maybe (List VolumeConfiguration)
    , enableAutoHealing : Maybe Bool
    , autoAssignElasticIps : Maybe Bool
    , autoAssignPublicIps : Maybe Bool
    , customRecipes : Maybe Recipes
    , installUpdatesOnBoot : Maybe Bool
    , useEbsOptimizedInstances : Maybe Bool
    , lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }



{-| <p>Creates a new stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html">Create a New Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `region` __:__ `String`
* `serviceRoleArn` __:__ `String`
* `defaultInstanceProfileArn` __:__ `String`


-}
createStack :
    String
    -> String
    -> String
    -> String
    -> (CreateStackOptions -> CreateStackOptions)
    -> AWS.Request CreateStackResult
createStack name region serviceRoleArn defaultInstanceProfileArn setOptions =
  let
    options = setOptions (CreateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createStackResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createStack request
-}
type alias CreateStackOptions =
    { vpcId : Maybe String
    , attributes : Maybe (Dict String String)
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , useOpsworksSecurityGroups : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , defaultRootDeviceType : Maybe RootDeviceType
    , agentVersion : Maybe String
    }



{-| <p>Creates a new user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `iamUserArn` __:__ `String`


-}
createUserProfile :
    String
    -> (CreateUserProfileOptions -> CreateUserProfileOptions)
    -> AWS.Request CreateUserProfileResult
createUserProfile iamUserArn setOptions =
  let
    options = setOptions (CreateUserProfileOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateUserProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createUserProfileResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createUserProfile request
-}
type alias CreateUserProfileOptions =
    { sshUsername : Maybe String
    , sshPublicKey : Maybe String
    , allowSelfManagement : Maybe Bool
    }



{-| <p>Deletes a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `appId` __:__ `String`


-}
deleteApp :
    String
    -> AWS.Request ()
deleteApp appId =
    AWS.Http.unsignedRequest
        "DeleteApp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a specified instance, which terminates the associated Amazon EC2 instance. You must stop an instance before you can delete it.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html">Deleting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
deleteInstance :
    String
    -> (DeleteInstanceOptions -> DeleteInstanceOptions)
    -> AWS.Request ()
deleteInstance instanceId setOptions =
  let
    options = setOptions (DeleteInstanceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteInstance request
-}
type alias DeleteInstanceOptions =
    { deleteElasticIp : Maybe Bool
    , deleteVolumes : Maybe Bool
    }



{-| <p>Deletes a specified layer. You must first stop and then delete all associated instances or unassign registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html">How to Delete a Layer</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}
deleteLayer :
    String
    -> AWS.Request ()
deleteLayer layerId =
    AWS.Http.unsignedRequest
        "DeleteLayer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a specified stack. You must first delete all instances, layers, and apps or deregister registered instances. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html">Shut Down a Stack</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
deleteStack :
    String
    -> AWS.Request ()
deleteStack stackId =
    AWS.Http.unsignedRequest
        "DeleteStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `iamUserArn` __:__ `String`


-}
deleteUserProfile :
    String
    -> AWS.Request ()
deleteUserProfile iamUserArn =
    AWS.Http.unsignedRequest
        "DeleteUserProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deregisters a specified Amazon ECS cluster from a stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html</a>.</p>

__Required Parameters__

* `ecsClusterArn` __:__ `String`


-}
deregisterEcsCluster :
    String
    -> AWS.Request ()
deregisterEcsCluster ecsClusterArn =
    AWS.Http.unsignedRequest
        "DeregisterEcsCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deregisters a specified Elastic IP address. The address can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}
deregisterElasticIp :
    String
    -> AWS.Request ()
deregisterElasticIp elasticIp =
    AWS.Http.unsignedRequest
        "DeregisterElasticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deregister a registered Amazon EC2 or on-premises instance. This action removes the instance from the stack and returns it to your control. This action can not be used with instances that were created with AWS OpsWorks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
deregisterInstance :
    String
    -> AWS.Request ()
deregisterInstance instanceId =
    AWS.Http.unsignedRequest
        "DeregisterInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deregisters an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `rdsDbInstanceArn` __:__ `String`


-}
deregisterRdsDbInstance :
    String
    -> AWS.Request ()
deregisterRdsDbInstance rdsDbInstanceArn =
    AWS.Http.unsignedRequest
        "DeregisterRdsDbInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deregisters an Amazon EBS volume. The volume can then be registered by another stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
deregisterVolume :
    String
    -> AWS.Request ()
deregisterVolume volumeId =
    AWS.Http.unsignedRequest
        "DeregisterVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Describes the available AWS OpsWorks agent versions. You must specify a stack ID or a configuration manager. <code>DescribeAgentVersions</code> returns a list of available agent versions for the specified stack or configuration manager.</p>

__Required Parameters__



-}
describeAgentVersions :
    (DescribeAgentVersionsOptions -> DescribeAgentVersionsOptions)
    -> AWS.Request DescribeAgentVersionsResult
describeAgentVersions setOptions =
  let
    options = setOptions (DescribeAgentVersionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAgentVersions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAgentVersionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAgentVersions request
-}
type alias DescribeAgentVersionsOptions =
    { stackId : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    }



{-| <p>Requests a description of a specified set of apps.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeApps :
    (DescribeAppsOptions -> DescribeAppsOptions)
    -> AWS.Request DescribeAppsResult
describeApps setOptions =
  let
    options = setOptions (DescribeAppsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeApps"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAppsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeApps request
-}
type alias DescribeAppsOptions =
    { stackId : Maybe String
    , appIds : Maybe (List String)
    }



{-| <p>Describes the results of specified commands.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeCommands :
    (DescribeCommandsOptions -> DescribeCommandsOptions)
    -> AWS.Request DescribeCommandsResult
describeCommands setOptions =
  let
    options = setOptions (DescribeCommandsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCommands"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCommandsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCommands request
-}
type alias DescribeCommandsOptions =
    { deploymentId : Maybe String
    , instanceId : Maybe String
    , commandIds : Maybe (List String)
    }



{-| <p>Requests a description of a specified set of deployments.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeDeployments :
    (DescribeDeploymentsOptions -> DescribeDeploymentsOptions)
    -> AWS.Request DescribeDeploymentsResult
describeDeployments setOptions =
  let
    options = setOptions (DescribeDeploymentsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDeployments"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDeploymentsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDeployments request
-}
type alias DescribeDeploymentsOptions =
    { stackId : Maybe String
    , appId : Maybe String
    , deploymentIds : Maybe (List String)
    }



{-| <p>Describes Amazon ECS clusters that are registered with a stack. If you specify only a stack ID, you can use the <code>MaxResults</code> and <code>NextToken</code> parameters to paginate the response. However, AWS OpsWorks currently supports only one cluster per layer, so the result set has a maximum of one element.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permission. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeEcsClusters :
    (DescribeEcsClustersOptions -> DescribeEcsClustersOptions)
    -> AWS.Request DescribeEcsClustersResult
describeEcsClusters setOptions =
  let
    options = setOptions (DescribeEcsClustersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEcsClusters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEcsClustersResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEcsClusters request
-}
type alias DescribeEcsClustersOptions =
    { ecsClusterArns : Maybe (List String)
    , stackId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP addresses</a>.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeElasticIps :
    (DescribeElasticIpsOptions -> DescribeElasticIpsOptions)
    -> AWS.Request DescribeElasticIpsResult
describeElasticIps setOptions =
  let
    options = setOptions (DescribeElasticIpsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeElasticIps"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeElasticIpsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeElasticIps request
-}
type alias DescribeElasticIpsOptions =
    { instanceId : Maybe String
    , stackId : Maybe String
    , ips : Maybe (List String)
    }



{-| <p>Describes a stack's Elastic Load Balancing instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeElasticLoadBalancers :
    (DescribeElasticLoadBalancersOptions -> DescribeElasticLoadBalancersOptions)
    -> AWS.Request DescribeElasticLoadBalancersResult
describeElasticLoadBalancers setOptions =
  let
    options = setOptions (DescribeElasticLoadBalancersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeElasticLoadBalancers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeElasticLoadBalancersResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeElasticLoadBalancers request
-}
type alias DescribeElasticLoadBalancersOptions =
    { stackId : Maybe String
    , layerIds : Maybe (List String)
    }



{-| <p>Requests a description of a set of instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeInstances :
    (DescribeInstancesOptions -> DescribeInstancesOptions)
    -> AWS.Request DescribeInstancesResult
describeInstances setOptions =
  let
    options = setOptions (DescribeInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInstances request
-}
type alias DescribeInstancesOptions =
    { stackId : Maybe String
    , layerId : Maybe String
    , instanceIds : Maybe (List String)
    }



{-| <p>Requests a description of one or more layers in a specified stack.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeLayers :
    (DescribeLayersOptions -> DescribeLayersOptions)
    -> AWS.Request DescribeLayersResult
describeLayers setOptions =
  let
    options = setOptions (DescribeLayersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLayers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLayersResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLayers request
-}
type alias DescribeLayersOptions =
    { stackId : Maybe String
    , layerIds : Maybe (List String)
    }



{-| <p>Describes load-based auto scaling configurations for specified layers.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerIds` __:__ `(List String)`


-}
describeLoadBasedAutoScaling :
    (List String)
    -> AWS.Request DescribeLoadBasedAutoScalingResult
describeLoadBasedAutoScaling layerIds =
    AWS.Http.unsignedRequest
        "DescribeLoadBasedAutoScaling"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBasedAutoScalingResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes a user's SSH information.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeMyUserProfile :
    AWS.Request DescribeMyUserProfileResult
describeMyUserProfile =
    AWS.Http.unsignedRequest
        "DescribeMyUserProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMyUserProfileResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the permissions for a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describePermissions :
    (DescribePermissionsOptions -> DescribePermissionsOptions)
    -> AWS.Request DescribePermissionsResult
describePermissions setOptions =
  let
    options = setOptions (DescribePermissionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePermissions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePermissionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describePermissions request
-}
type alias DescribePermissionsOptions =
    { iamUserArn : Maybe String
    , stackId : Maybe String
    }



{-| <p>Describe an instance's RAID arrays.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeRaidArrays :
    (DescribeRaidArraysOptions -> DescribeRaidArraysOptions)
    -> AWS.Request DescribeRaidArraysResult
describeRaidArrays setOptions =
  let
    options = setOptions (DescribeRaidArraysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRaidArrays"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRaidArraysResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeRaidArrays request
-}
type alias DescribeRaidArraysOptions =
    { instanceId : Maybe String
    , stackId : Maybe String
    , raidArrayIds : Maybe (List String)
    }



{-| <p>Describes Amazon RDS instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
describeRdsDbInstances :
    String
    -> (DescribeRdsDbInstancesOptions -> DescribeRdsDbInstancesOptions)
    -> AWS.Request DescribeRdsDbInstancesResult
describeRdsDbInstances stackId setOptions =
  let
    options = setOptions (DescribeRdsDbInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRdsDbInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRdsDbInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeRdsDbInstances request
-}
type alias DescribeRdsDbInstancesOptions =
    { rdsDbInstanceArns : Maybe (List String)
    }



{-| <p>Describes AWS OpsWorks service errors.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeServiceErrors :
    (DescribeServiceErrorsOptions -> DescribeServiceErrorsOptions)
    -> AWS.Request DescribeServiceErrorsResult
describeServiceErrors setOptions =
  let
    options = setOptions (DescribeServiceErrorsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeServiceErrors"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeServiceErrorsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeServiceErrors request
-}
type alias DescribeServiceErrorsOptions =
    { stackId : Maybe String
    , instanceId : Maybe String
    , serviceErrorIds : Maybe (List String)
    }



{-| <p>Requests a description of a stack's provisioning parameters.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
describeStackProvisioningParameters :
    String
    -> AWS.Request DescribeStackProvisioningParametersResult
describeStackProvisioningParameters stackId =
    AWS.Http.unsignedRequest
        "DescribeStackProvisioningParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStackProvisioningParametersResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as <code>running_setup</code> or <code>online</code>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
describeStackSummary :
    String
    -> AWS.Request DescribeStackSummaryResult
describeStackSummary stackId =
    AWS.Http.unsignedRequest
        "DescribeStackSummary"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStackSummaryResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Requests a description of one or more stacks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeStacks :
    (DescribeStacksOptions -> DescribeStacksOptions)
    -> AWS.Request DescribeStacksResult
describeStacks setOptions =
  let
    options = setOptions (DescribeStacksOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeStacks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStacksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeStacks request
-}
type alias DescribeStacksOptions =
    { stackIds : Maybe (List String)
    }



{-| <p>Describes time-based auto scaling configurations for specified instances.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
describeTimeBasedAutoScaling :
    (List String)
    -> AWS.Request DescribeTimeBasedAutoScalingResult
describeTimeBasedAutoScaling instanceIds =
    AWS.Http.unsignedRequest
        "DescribeTimeBasedAutoScaling"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTimeBasedAutoScalingResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Describe specified users.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeUserProfiles :
    (DescribeUserProfilesOptions -> DescribeUserProfilesOptions)
    -> AWS.Request DescribeUserProfilesResult
describeUserProfiles setOptions =
  let
    options = setOptions (DescribeUserProfilesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeUserProfiles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeUserProfilesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeUserProfiles request
-}
type alias DescribeUserProfilesOptions =
    { iamUserArns : Maybe (List String)
    }



{-| <p>Describes an instance's Amazon EBS volumes.</p> <note> <p>You must specify at least one of the parameters.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Show, Deploy, or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
describeVolumes :
    (DescribeVolumesOptions -> DescribeVolumesOptions)
    -> AWS.Request DescribeVolumesResult
describeVolumes setOptions =
  let
    options = setOptions (DescribeVolumesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVolumes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVolumesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVolumes request
-}
type alias DescribeVolumesOptions =
    { instanceId : Maybe String
    , stackId : Maybe String
    , raidArrayId : Maybe String
    , volumeIds : Maybe (List String)
    }



{-| <p>Detaches a specified Elastic Load Balancing instance from its layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticLoadBalancerName` __:__ `String`
* `layerId` __:__ `String`


-}
detachElasticLoadBalancer :
    String
    -> String
    -> AWS.Request ()
detachElasticLoadBalancer elasticLoadBalancerName layerId =
    AWS.Http.unsignedRequest
        "DetachElasticLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Disassociates an Elastic IP address from its instance. The address remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}
disassociateElasticIp :
    String
    -> AWS.Request ()
disassociateElasticIp elasticIp =
    AWS.Http.unsignedRequest
        "DisassociateElasticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Gets a generated host name for the specified layer, based on the current host name theme.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}
getHostnameSuggestion :
    String
    -> AWS.Request GetHostnameSuggestionResult
getHostnameSuggestion layerId =
    AWS.Http.unsignedRequest
        "GetHostnameSuggestion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getHostnameSuggestionResultDecoder
        |> AWS.UnsignedRequest



{-| <note> <p>This action can be used only with Windows stacks.</p> </note> <p>Grants RDP access to a Windows instance for a specified time period.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
grantAccess :
    String
    -> (GrantAccessOptions -> GrantAccessOptions)
    -> AWS.Request GrantAccessResult
grantAccess instanceId setOptions =
  let
    options = setOptions (GrantAccessOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GrantAccess"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        grantAccessResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a grantAccess request
-}
type alias GrantAccessOptions =
    { validForInMinutes : Maybe Int
    }



{-| <p>Reboots a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
rebootInstance :
    String
    -> AWS.Request ()
rebootInstance instanceId =
    AWS.Http.unsignedRequest
        "RebootInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Registers a specified Amazon ECS cluster with a stack. You can register only one cluster with a stack. A cluster can be registered with only one stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html"> Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html"> Managing User Permissions</a>.</p>

__Required Parameters__

* `ecsClusterArn` __:__ `String`
* `stackId` __:__ `String`


-}
registerEcsCluster :
    String
    -> String
    -> AWS.Request RegisterEcsClusterResult
registerEcsCluster ecsClusterArn stackId =
    AWS.Http.unsignedRequest
        "RegisterEcsCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerEcsClusterResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Registers an Elastic IP address with a specified stack. An address can be registered with only one stack at a time. If the address is already registered, you must first deregister it by calling <a>DeregisterElasticIp</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`
* `stackId` __:__ `String`


-}
registerElasticIp :
    String
    -> String
    -> AWS.Request RegisterElasticIpResult
registerElasticIp elasticIp stackId =
    AWS.Http.unsignedRequest
        "RegisterElasticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerElasticIpResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Registers instances with a specified stack that were created outside of AWS OpsWorks.</p> <note> <p>We do not recommend using this action to register instances. The complete registration operation has two primary steps, installing the AWS OpsWorks agent on the instance and registering the instance with the stack. <code>RegisterInstance</code> handles only the second step. You should instead use the AWS CLI <code>register</code> command, which performs the entire registration operation. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html"> Registering an Instance with an AWS OpsWorks Stack</a>.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
registerInstance :
    String
    -> (RegisterInstanceOptions -> RegisterInstanceOptions)
    -> AWS.Request RegisterInstanceResult
registerInstance stackId setOptions =
  let
    options = setOptions (RegisterInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerInstanceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a registerInstance request
-}
type alias RegisterInstanceOptions =
    { hostname : Maybe String
    , publicIp : Maybe String
    , privateIp : Maybe String
    , rsaPublicKey : Maybe String
    , rsaPublicKeyFingerprint : Maybe String
    , instanceIdentity : Maybe InstanceIdentity
    }



{-| <p>Registers an Amazon RDS instance with a stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `rdsDbInstanceArn` __:__ `String`
* `dbUser` __:__ `String`
* `dbPassword` __:__ `String`


-}
registerRdsDbInstance :
    String
    -> String
    -> String
    -> String
    -> AWS.Request ()
registerRdsDbInstance stackId rdsDbInstanceArn dbUser dbPassword =
    AWS.Http.unsignedRequest
        "RegisterRdsDbInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Registers an Amazon EBS volume with a specified stack. A volume can be registered with only one stack at a time. If the volume is already registered, you must first deregister it by calling <a>DeregisterVolume</a>. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
registerVolume :
    String
    -> (RegisterVolumeOptions -> RegisterVolumeOptions)
    -> AWS.Request RegisterVolumeResult
registerVolume stackId setOptions =
  let
    options = setOptions (RegisterVolumeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerVolumeResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a registerVolume request
-}
type alias RegisterVolumeOptions =
    { ec2VolumeId : Maybe String
    }



{-| <p>Specify the load-based auto scaling configuration for a specified layer. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <note> <p>To use load-based auto scaling, you must create a set of load-based auto scaling instances. Load-based auto scaling operates only on the instances from that set, so you must ensure that you have created enough instances to handle the maximum anticipated load.</p> </note> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}
setLoadBasedAutoScaling :
    String
    -> (SetLoadBasedAutoScalingOptions -> SetLoadBasedAutoScalingOptions)
    -> AWS.Request ()
setLoadBasedAutoScaling layerId setOptions =
  let
    options = setOptions (SetLoadBasedAutoScalingOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SetLoadBasedAutoScaling"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setLoadBasedAutoScaling request
-}
type alias SetLoadBasedAutoScalingOptions =
    { enable : Maybe Bool
    , upScaling : Maybe AutoScalingThresholds
    , downScaling : Maybe AutoScalingThresholds
    }



{-| <p>Specifies a user's permissions. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html">Security and Permissions</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`
* `iamUserArn` __:__ `String`


-}
setPermission :
    String
    -> String
    -> (SetPermissionOptions -> SetPermissionOptions)
    -> AWS.Request ()
setPermission stackId iamUserArn setOptions =
  let
    options = setOptions (SetPermissionOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SetPermission"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setPermission request
-}
type alias SetPermissionOptions =
    { allowSsh : Maybe Bool
    , allowSudo : Maybe Bool
    , level : Maybe String
    }



{-| <p>Specify the time-based auto scaling configuration for a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html">Managing Load with Time-based and Load-based Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
setTimeBasedAutoScaling :
    String
    -> (SetTimeBasedAutoScalingOptions -> SetTimeBasedAutoScalingOptions)
    -> AWS.Request ()
setTimeBasedAutoScaling instanceId setOptions =
  let
    options = setOptions (SetTimeBasedAutoScalingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetTimeBasedAutoScaling"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setTimeBasedAutoScaling request
-}
type alias SetTimeBasedAutoScalingOptions =
    { autoScalingSchedule : Maybe WeeklyAutoScalingSchedule
    }



{-| <p>Starts a specified instance. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
startInstance :
    String
    -> AWS.Request ()
startInstance instanceId =
    AWS.Http.unsignedRequest
        "StartInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Starts a stack's instances.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
startStack :
    String
    -> AWS.Request ()
startStack stackId =
    AWS.Http.unsignedRequest
        "StartStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Stops a specified instance. When you stop a standard instance, the data disappears and must be reinstalled when you restart the instance. You can stop an Amazon EBS-backed instance without losing data. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html">Starting, Stopping, and Rebooting Instances</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
stopInstance :
    String
    -> AWS.Request ()
stopInstance instanceId =
    AWS.Http.unsignedRequest
        "StopInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Stops a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
stopStack :
    String
    -> AWS.Request ()
stopStack stackId =
    AWS.Http.unsignedRequest
        "StopStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Unassigns a registered instance from all of it's layers. The instance remains in the stack as an unassigned instance and can be assigned to another layer, as needed. You cannot use this action with instances that were created with AWS OpsWorks.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
unassignInstance :
    String
    -> AWS.Request ()
unassignInstance instanceId =
    AWS.Http.unsignedRequest
        "UnassignInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Unassigns an assigned Amazon EBS volume. The volume remains registered with the stack. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
unassignVolume :
    String
    -> AWS.Request ()
unassignVolume volumeId =
    AWS.Http.unsignedRequest
        "UnassignVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Updates a specified app.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Deploy or Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `appId` __:__ `String`


-}
updateApp :
    String
    -> (UpdateAppOptions -> UpdateAppOptions)
    -> AWS.Request ()
updateApp appId setOptions =
  let
    options = setOptions (UpdateAppOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateApp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateApp request
-}
type alias UpdateAppOptions =
    { name : Maybe String
    , description : Maybe String
    , dataSources : Maybe (List DataSource)
    , type_ : Maybe AppType
    , appSource : Maybe Source
    , domains : Maybe (List String)
    , enableSsl : Maybe Bool
    , sslConfiguration : Maybe SslConfiguration
    , attributes : Maybe (Dict String String)
    , environment : Maybe (List EnvironmentVariable)
    }



{-| <p>Updates a registered Elastic IP address's name. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `elasticIp` __:__ `String`


-}
updateElasticIp :
    String
    -> (UpdateElasticIpOptions -> UpdateElasticIpOptions)
    -> AWS.Request ()
updateElasticIp elasticIp setOptions =
  let
    options = setOptions (UpdateElasticIpOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateElasticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateElasticIp request
-}
type alias UpdateElasticIpOptions =
    { name : Maybe String
    }



{-| <p>Updates a specified instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
updateInstance :
    String
    -> (UpdateInstanceOptions -> UpdateInstanceOptions)
    -> AWS.Request ()
updateInstance instanceId setOptions =
  let
    options = setOptions (UpdateInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateInstance request
-}
type alias UpdateInstanceOptions =
    { layerIds : Maybe (List String)
    , instanceType : Maybe String
    , autoScalingType : Maybe AutoScalingType
    , hostname : Maybe String
    , os : Maybe String
    , amiId : Maybe String
    , sshKeyName : Maybe String
    , architecture : Maybe Architecture
    , installUpdatesOnBoot : Maybe Bool
    , ebsOptimized : Maybe Bool
    , agentVersion : Maybe String
    }



{-| <p>Updates a specified layer.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `layerId` __:__ `String`


-}
updateLayer :
    String
    -> (UpdateLayerOptions -> UpdateLayerOptions)
    -> AWS.Request ()
updateLayer layerId setOptions =
  let
    options = setOptions (UpdateLayerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateLayer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateLayer request
-}
type alias UpdateLayerOptions =
    { name : Maybe String
    , shortname : Maybe String
    , attributes : Maybe (Dict String String)
    , customInstanceProfileArn : Maybe String
    , customJson : Maybe String
    , customSecurityGroupIds : Maybe (List String)
    , packages : Maybe (List String)
    , volumeConfigurations : Maybe (List VolumeConfiguration)
    , enableAutoHealing : Maybe Bool
    , autoAssignElasticIps : Maybe Bool
    , autoAssignPublicIps : Maybe Bool
    , customRecipes : Maybe Recipes
    , installUpdatesOnBoot : Maybe Bool
    , useEbsOptimizedInstances : Maybe Bool
    , lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }



{-| <p>Updates a user's SSH public key.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have self-management enabled or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__



-}
updateMyUserProfile :
    (UpdateMyUserProfileOptions -> UpdateMyUserProfileOptions)
    -> AWS.Request ()
updateMyUserProfile setOptions =
  let
    options = setOptions (UpdateMyUserProfileOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateMyUserProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateMyUserProfile request
-}
type alias UpdateMyUserProfileOptions =
    { sshPublicKey : Maybe String
    }



{-| <p>Updates an Amazon RDS instance.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `rdsDbInstanceArn` __:__ `String`


-}
updateRdsDbInstance :
    String
    -> (UpdateRdsDbInstanceOptions -> UpdateRdsDbInstanceOptions)
    -> AWS.Request ()
updateRdsDbInstance rdsDbInstanceArn setOptions =
  let
    options = setOptions (UpdateRdsDbInstanceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateRdsDbInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateRdsDbInstance request
-}
type alias UpdateRdsDbInstanceOptions =
    { dbUser : Maybe String
    , dbPassword : Maybe String
    }



{-| <p>Updates a specified stack.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `stackId` __:__ `String`


-}
updateStack :
    String
    -> (UpdateStackOptions -> UpdateStackOptions)
    -> AWS.Request ()
updateStack stackId setOptions =
  let
    options = setOptions (UpdateStackOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateStack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateStack request
-}
type alias UpdateStackOptions =
    { name : Maybe String
    , attributes : Maybe (Dict String String)
    , serviceRoleArn : Maybe String
    , defaultInstanceProfileArn : Maybe String
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , defaultRootDeviceType : Maybe RootDeviceType
    , useOpsworksSecurityGroups : Maybe Bool
    , agentVersion : Maybe String
    }



{-| <p>Updates a specified user profile.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `iamUserArn` __:__ `String`


-}
updateUserProfile :
    String
    -> (UpdateUserProfileOptions -> UpdateUserProfileOptions)
    -> AWS.Request ()
updateUserProfile iamUserArn setOptions =
  let
    options = setOptions (UpdateUserProfileOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateUserProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateUserProfile request
-}
type alias UpdateUserProfileOptions =
    { sshUsername : Maybe String
    , sshPublicKey : Maybe String
    , allowSelfManagement : Maybe Bool
    }



{-| <p>Updates an Amazon EBS volume's name or mount point. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html">Resource Management</a>.</p> <p> <b>Required Permissions</b>: To use this action, an IAM user must have a Manage permissions level for the stack, or an attached policy that explicitly grants permissions. For more information on user permissions, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing User Permissions</a>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
updateVolume :
    String
    -> (UpdateVolumeOptions -> UpdateVolumeOptions)
    -> AWS.Request ()
updateVolume volumeId setOptions =
  let
    options = setOptions (UpdateVolumeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateVolume request
-}
type alias UpdateVolumeOptions =
    { name : Maybe String
    , mountPoint : Maybe String
    }




{-| <p>Describes an agent version.</p>
-}
type alias AgentVersion =
    { version : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    }



agentVersionDecoder : JD.Decoder AgentVersion
agentVersionDecoder =
    JDP.decode AgentVersion
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "configurationManager" (JD.nullable stackConfigurationManagerDecoder) Nothing




{-| <p>A description of the app.</p>
-}
type alias App =
    { appId : Maybe String
    , stackId : Maybe String
    , shortname : Maybe String
    , name : Maybe String
    , description : Maybe String
    , dataSources : Maybe (List DataSource)
    , type_ : Maybe AppType
    , appSource : Maybe Source
    , domains : Maybe (List String)
    , enableSsl : Maybe Bool
    , sslConfiguration : Maybe SslConfiguration
    , attributes : Maybe (Dict String String)
    , createdAt : Maybe String
    , environment : Maybe (List EnvironmentVariable)
    }



appDecoder : JD.Decoder App
appDecoder =
    JDP.decode App
        |> JDP.optional "appId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "shortname" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataSources" (JD.nullable (JD.list dataSourceDecoder)) Nothing
        |> JDP.optional "type_" (JD.nullable appTypeDecoder) Nothing
        |> JDP.optional "appSource" (JD.nullable sourceDecoder) Nothing
        |> JDP.optional "domains" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "enableSsl" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sslConfiguration" (JD.nullable sslConfigurationDecoder) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "environment" (JD.nullable (JD.list environmentVariableDecoder)) Nothing




{-| One of

* `AppAttributesKeys_DocumentRoot`
* `AppAttributesKeys_RailsEnv`
* `AppAttributesKeys_AutoBundleOnDeploy`
* `AppAttributesKeys_AwsFlowRubySettings`

-}
type AppAttributesKeys
    = AppAttributesKeys_DocumentRoot
    | AppAttributesKeys_RailsEnv
    | AppAttributesKeys_AutoBundleOnDeploy
    | AppAttributesKeys_AwsFlowRubySettings



appAttributesKeysDecoder : JD.Decoder AppAttributesKeys
appAttributesKeysDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DocumentRoot" ->
                        JD.succeed AppAttributesKeys_DocumentRoot

                    "RailsEnv" ->
                        JD.succeed AppAttributesKeys_RailsEnv

                    "AutoBundleOnDeploy" ->
                        JD.succeed AppAttributesKeys_AutoBundleOnDeploy

                    "AwsFlowRubySettings" ->
                        JD.succeed AppAttributesKeys_AwsFlowRubySettings


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `AppType_aws-flow-ruby`
* `AppType_java`
* `AppType_rails`
* `AppType_php`
* `AppType_nodejs`
* `AppType_static`
* `AppType_other`

-}
type AppType
    = AppType_aws_flow_ruby
    | AppType_java
    | AppType_rails
    | AppType_php
    | AppType_nodejs
    | AppType_static
    | AppType_other



appTypeDecoder : JD.Decoder AppType
appTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "aws_flow_ruby" ->
                        JD.succeed AppType_aws_flow_ruby

                    "java" ->
                        JD.succeed AppType_java

                    "rails" ->
                        JD.succeed AppType_rails

                    "php" ->
                        JD.succeed AppType_php

                    "nodejs" ->
                        JD.succeed AppType_nodejs

                    "static" ->
                        JD.succeed AppType_static

                    "other" ->
                        JD.succeed AppType_other


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Architecture_x86_64`
* `Architecture_i386`

-}
type Architecture
    = Architecture_x86_64
    | Architecture_i386



architectureDecoder : JD.Decoder Architecture
architectureDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "x86_64" ->
                        JD.succeed Architecture_x86_64

                    "i386" ->
                        JD.succeed Architecture_i386


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a load-based auto scaling upscaling or downscaling threshold configuration, which specifies when AWS OpsWorks starts or stops load-based instances.</p>
-}
type alias AutoScalingThresholds =
    { instanceCount : Maybe Int
    , thresholdsWaitTime : Maybe Int
    , ignoreMetricsTime : Maybe Int
    , cpuThreshold : Maybe Float
    , memoryThreshold : Maybe Float
    , loadThreshold : Maybe Float
    , alarms : Maybe (List String)
    }



autoScalingThresholdsDecoder : JD.Decoder AutoScalingThresholds
autoScalingThresholdsDecoder =
    JDP.decode AutoScalingThresholds
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "thresholdsWaitTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "ignoreMetricsTime" (JD.nullable JD.int) Nothing
        |> JDP.optional "cpuThreshold" (JD.nullable JD.float) Nothing
        |> JDP.optional "memoryThreshold" (JD.nullable JD.float) Nothing
        |> JDP.optional "loadThreshold" (JD.nullable JD.float) Nothing
        |> JDP.optional "alarms" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `AutoScalingType_load`
* `AutoScalingType_timer`

-}
type AutoScalingType
    = AutoScalingType_load
    | AutoScalingType_timer



autoScalingTypeDecoder : JD.Decoder AutoScalingType
autoScalingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "load" ->
                        JD.succeed AutoScalingType_load

                    "timer" ->
                        JD.succeed AutoScalingType_timer


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a block device mapping. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html">BlockDeviceMapping</a> data type. </p>
-}
type alias BlockDeviceMapping =
    { deviceName : Maybe String
    , noDevice : Maybe String
    , virtualName : Maybe String
    , ebs : Maybe EbsBlockDevice
    }



blockDeviceMappingDecoder : JD.Decoder BlockDeviceMapping
blockDeviceMappingDecoder =
    JDP.decode BlockDeviceMapping
        |> JDP.optional "deviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "noDevice" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ebs" (JD.nullable ebsBlockDeviceDecoder) Nothing




{-| <p>Describes the Chef configuration.</p>
-}
type alias ChefConfiguration =
    { manageBerkshelf : Maybe Bool
    , berkshelfVersion : Maybe String
    }



chefConfigurationDecoder : JD.Decoder ChefConfiguration
chefConfigurationDecoder =
    JDP.decode ChefConfiguration
        |> JDP.optional "manageBerkshelf" (JD.nullable JD.bool) Nothing
        |> JDP.optional "berkshelfVersion" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cloneSta
-}
type alias CloneStackResult =
    { stackId : Maybe String
    }



cloneStackResultDecoder : JD.Decoder CloneStackResult
cloneStackResultDecoder =
    JDP.decode CloneStackResult
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing




{-| <p>Describes a command.</p>
-}
type alias Command =
    { commandId : Maybe String
    , instanceId : Maybe String
    , deploymentId : Maybe String
    , createdAt : Maybe String
    , acknowledgedAt : Maybe String
    , completedAt : Maybe String
    , status : Maybe String
    , exitCode : Maybe Int
    , logUrl : Maybe String
    , type_ : Maybe String
    }



commandDecoder : JD.Decoder Command
commandDecoder =
    JDP.decode Command
        |> JDP.optional "commandId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "acknowledgedAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "completedAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "exitCode" (JD.nullable JD.int) Nothing
        |> JDP.optional "logUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createA
-}
type alias CreateAppResult =
    { appId : Maybe String
    }



createAppResultDecoder : JD.Decoder CreateAppResult
createAppResultDecoder =
    JDP.decode CreateAppResult
        |> JDP.optional "appId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDeployme
-}
type alias CreateDeploymentResult =
    { deploymentId : Maybe String
    }



createDeploymentResultDecoder : JD.Decoder CreateDeploymentResult
createDeploymentResultDecoder =
    JDP.decode CreateDeploymentResult
        |> JDP.optional "deploymentId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createInstan
-}
type alias CreateInstanceResult =
    { instanceId : Maybe String
    }



createInstanceResultDecoder : JD.Decoder CreateInstanceResult
createInstanceResultDecoder =
    JDP.decode CreateInstanceResult
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createLay
-}
type alias CreateLayerResult =
    { layerId : Maybe String
    }



createLayerResultDecoder : JD.Decoder CreateLayerResult
createLayerResultDecoder =
    JDP.decode CreateLayerResult
        |> JDP.optional "layerId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSta
-}
type alias CreateStackResult =
    { stackId : Maybe String
    }



createStackResultDecoder : JD.Decoder CreateStackResult
createStackResultDecoder =
    JDP.decode CreateStackResult
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createUserProfi
-}
type alias CreateUserProfileResult =
    { iamUserArn : Maybe String
    }



createUserProfileResultDecoder : JD.Decoder CreateUserProfileResult
createUserProfileResultDecoder =
    JDP.decode CreateUserProfileResult
        |> JDP.optional "iamUserArn" (JD.nullable JD.string) Nothing




{-| <p>Describes an app's data source.</p>
-}
type alias DataSource =
    { type_ : Maybe String
    , arn : Maybe String
    , databaseName : Maybe String
    }



dataSourceDecoder : JD.Decoder DataSource
dataSourceDecoder =
    JDP.decode DataSource
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "databaseName" (JD.nullable JD.string) Nothing




{-| <p>Describes a deployment of a stack or app.</p>
-}
type alias Deployment =
    { deploymentId : Maybe String
    , stackId : Maybe String
    , appId : Maybe String
    , createdAt : Maybe String
    , completedAt : Maybe String
    , duration : Maybe Int
    , iamUserArn : Maybe String
    , comment : Maybe String
    , command : Maybe DeploymentCommand
    , status : Maybe String
    , customJson : Maybe String
    , instanceIds : Maybe (List String)
    }



deploymentDecoder : JD.Decoder Deployment
deploymentDecoder =
    JDP.decode Deployment
        |> JDP.optional "deploymentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "appId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "completedAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "iamUserArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing
        |> JDP.optional "command" (JD.nullable deploymentCommandDecoder) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "customJson" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceIds" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Used to specify a stack or deployment command.</p>
-}
type alias DeploymentCommand =
    { name : DeploymentCommandName
    , args : Maybe (Dict String (List String))
    }



deploymentCommandDecoder : JD.Decoder DeploymentCommand
deploymentCommandDecoder =
    JDP.decode DeploymentCommand
        |> JDP.required "name" deploymentCommandNameDecoder
        |> JDP.optional "args" (JD.nullable (JD.dict (JD.list JD.string))) Nothing




{-| One of

* `DeploymentCommandName_install_dependencies`
* `DeploymentCommandName_update_dependencies`
* `DeploymentCommandName_update_custom_cookbooks`
* `DeploymentCommandName_execute_recipes`
* `DeploymentCommandName_configure`
* `DeploymentCommandName_setup`
* `DeploymentCommandName_deploy`
* `DeploymentCommandName_rollback`
* `DeploymentCommandName_start`
* `DeploymentCommandName_stop`
* `DeploymentCommandName_restart`
* `DeploymentCommandName_undeploy`

-}
type DeploymentCommandName
    = DeploymentCommandName_install_dependencies
    | DeploymentCommandName_update_dependencies
    | DeploymentCommandName_update_custom_cookbooks
    | DeploymentCommandName_execute_recipes
    | DeploymentCommandName_configure
    | DeploymentCommandName_setup
    | DeploymentCommandName_deploy
    | DeploymentCommandName_rollback
    | DeploymentCommandName_start
    | DeploymentCommandName_stop
    | DeploymentCommandName_restart
    | DeploymentCommandName_undeploy



deploymentCommandNameDecoder : JD.Decoder DeploymentCommandName
deploymentCommandNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "install_dependencies" ->
                        JD.succeed DeploymentCommandName_install_dependencies

                    "update_dependencies" ->
                        JD.succeed DeploymentCommandName_update_dependencies

                    "update_custom_cookbooks" ->
                        JD.succeed DeploymentCommandName_update_custom_cookbooks

                    "execute_recipes" ->
                        JD.succeed DeploymentCommandName_execute_recipes

                    "configure" ->
                        JD.succeed DeploymentCommandName_configure

                    "setup" ->
                        JD.succeed DeploymentCommandName_setup

                    "deploy" ->
                        JD.succeed DeploymentCommandName_deploy

                    "rollback" ->
                        JD.succeed DeploymentCommandName_rollback

                    "start" ->
                        JD.succeed DeploymentCommandName_start

                    "stop" ->
                        JD.succeed DeploymentCommandName_stop

                    "restart" ->
                        JD.succeed DeploymentCommandName_restart

                    "undeploy" ->
                        JD.succeed DeploymentCommandName_undeploy


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from describeAgentVersio
-}
type alias DescribeAgentVersionsResult =
    { agentVersions : Maybe (List AgentVersion)
    }



describeAgentVersionsResultDecoder : JD.Decoder DescribeAgentVersionsResult
describeAgentVersionsResultDecoder =
    JDP.decode DescribeAgentVersionsResult
        |> JDP.optional "agentVersions" (JD.nullable (JD.list agentVersionDecoder)) Nothing




{-| Type of HTTP response from describeAp
-}
type alias DescribeAppsResult =
    { apps : Maybe (List App)
    }



describeAppsResultDecoder : JD.Decoder DescribeAppsResult
describeAppsResultDecoder =
    JDP.decode DescribeAppsResult
        |> JDP.optional "apps" (JD.nullable (JD.list appDecoder)) Nothing




{-| Type of HTTP response from describeComman
-}
type alias DescribeCommandsResult =
    { commands : Maybe (List Command)
    }



describeCommandsResultDecoder : JD.Decoder DescribeCommandsResult
describeCommandsResultDecoder =
    JDP.decode DescribeCommandsResult
        |> JDP.optional "commands" (JD.nullable (JD.list commandDecoder)) Nothing




{-| Type of HTTP response from describeDeploymen
-}
type alias DescribeDeploymentsResult =
    { deployments : Maybe (List Deployment)
    }



describeDeploymentsResultDecoder : JD.Decoder DescribeDeploymentsResult
describeDeploymentsResultDecoder =
    JDP.decode DescribeDeploymentsResult
        |> JDP.optional "deployments" (JD.nullable (JD.list deploymentDecoder)) Nothing




{-| Type of HTTP response from describeEcsCluste
-}
type alias DescribeEcsClustersResult =
    { ecsClusters : Maybe (List EcsCluster)
    , nextToken : Maybe String
    }



describeEcsClustersResultDecoder : JD.Decoder DescribeEcsClustersResult
describeEcsClustersResultDecoder =
    JDP.decode DescribeEcsClustersResult
        |> JDP.optional "ecsClusters" (JD.nullable (JD.list ecsClusterDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeElasticI
-}
type alias DescribeElasticIpsResult =
    { elasticIps : Maybe (List ElasticIp)
    }



describeElasticIpsResultDecoder : JD.Decoder DescribeElasticIpsResult
describeElasticIpsResultDecoder =
    JDP.decode DescribeElasticIpsResult
        |> JDP.optional "elasticIps" (JD.nullable (JD.list elasticIpDecoder)) Nothing




{-| Type of HTTP response from describeElasticLoadBalance
-}
type alias DescribeElasticLoadBalancersResult =
    { elasticLoadBalancers : Maybe (List ElasticLoadBalancer)
    }



describeElasticLoadBalancersResultDecoder : JD.Decoder DescribeElasticLoadBalancersResult
describeElasticLoadBalancersResultDecoder =
    JDP.decode DescribeElasticLoadBalancersResult
        |> JDP.optional "elasticLoadBalancers" (JD.nullable (JD.list elasticLoadBalancerDecoder)) Nothing




{-| Type of HTTP response from describeInstanc
-}
type alias DescribeInstancesResult =
    { instances : Maybe (List Instance)
    }



describeInstancesResultDecoder : JD.Decoder DescribeInstancesResult
describeInstancesResultDecoder =
    JDP.decode DescribeInstancesResult
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing




{-| Type of HTTP response from describeLaye
-}
type alias DescribeLayersResult =
    { layers : Maybe (List Layer)
    }



describeLayersResultDecoder : JD.Decoder DescribeLayersResult
describeLayersResultDecoder =
    JDP.decode DescribeLayersResult
        |> JDP.optional "layers" (JD.nullable (JD.list layerDecoder)) Nothing




{-| Type of HTTP response from describeLoadBasedAutoScali
-}
type alias DescribeLoadBasedAutoScalingResult =
    { loadBasedAutoScalingConfigurations : Maybe (List LoadBasedAutoScalingConfiguration)
    }



describeLoadBasedAutoScalingResultDecoder : JD.Decoder DescribeLoadBasedAutoScalingResult
describeLoadBasedAutoScalingResultDecoder =
    JDP.decode DescribeLoadBasedAutoScalingResult
        |> JDP.optional "loadBasedAutoScalingConfigurations" (JD.nullable (JD.list loadBasedAutoScalingConfigurationDecoder)) Nothing




{-| Type of HTTP response from describeMyUserProfi
-}
type alias DescribeMyUserProfileResult =
    { userProfile : Maybe SelfUserProfile
    }



describeMyUserProfileResultDecoder : JD.Decoder DescribeMyUserProfileResult
describeMyUserProfileResultDecoder =
    JDP.decode DescribeMyUserProfileResult
        |> JDP.optional "userProfile" (JD.nullable selfUserProfileDecoder) Nothing




{-| Type of HTTP response from describePermissio
-}
type alias DescribePermissionsResult =
    { permissions : Maybe (List Permission)
    }



describePermissionsResultDecoder : JD.Decoder DescribePermissionsResult
describePermissionsResultDecoder =
    JDP.decode DescribePermissionsResult
        |> JDP.optional "permissions" (JD.nullable (JD.list permissionDecoder)) Nothing




{-| Type of HTTP response from describeRaidArra
-}
type alias DescribeRaidArraysResult =
    { raidArrays : Maybe (List RaidArray)
    }



describeRaidArraysResultDecoder : JD.Decoder DescribeRaidArraysResult
describeRaidArraysResultDecoder =
    JDP.decode DescribeRaidArraysResult
        |> JDP.optional "raidArrays" (JD.nullable (JD.list raidArrayDecoder)) Nothing




{-| Type of HTTP response from describeRdsDbInstanc
-}
type alias DescribeRdsDbInstancesResult =
    { rdsDbInstances : Maybe (List RdsDbInstance)
    }



describeRdsDbInstancesResultDecoder : JD.Decoder DescribeRdsDbInstancesResult
describeRdsDbInstancesResultDecoder =
    JDP.decode DescribeRdsDbInstancesResult
        |> JDP.optional "rdsDbInstances" (JD.nullable (JD.list rdsDbInstanceDecoder)) Nothing




{-| Type of HTTP response from describeServiceErro
-}
type alias DescribeServiceErrorsResult =
    { serviceErrors : Maybe (List ServiceError)
    }



describeServiceErrorsResultDecoder : JD.Decoder DescribeServiceErrorsResult
describeServiceErrorsResultDecoder =
    JDP.decode DescribeServiceErrorsResult
        |> JDP.optional "serviceErrors" (JD.nullable (JD.list serviceErrorDecoder)) Nothing




{-| Type of HTTP response from describeStackProvisioningParamete
-}
type alias DescribeStackProvisioningParametersResult =
    { agentInstallerUrl : Maybe String
    , parameters : Maybe (Dict String String)
    }



describeStackProvisioningParametersResultDecoder : JD.Decoder DescribeStackProvisioningParametersResult
describeStackProvisioningParametersResultDecoder =
    JDP.decode DescribeStackProvisioningParametersResult
        |> JDP.optional "agentInstallerUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from describeStackSumma
-}
type alias DescribeStackSummaryResult =
    { stackSummary : Maybe StackSummary
    }



describeStackSummaryResultDecoder : JD.Decoder DescribeStackSummaryResult
describeStackSummaryResultDecoder =
    JDP.decode DescribeStackSummaryResult
        |> JDP.optional "stackSummary" (JD.nullable stackSummaryDecoder) Nothing




{-| Type of HTTP response from describeStac
-}
type alias DescribeStacksResult =
    { stacks : Maybe (List Stack)
    }



describeStacksResultDecoder : JD.Decoder DescribeStacksResult
describeStacksResultDecoder =
    JDP.decode DescribeStacksResult
        |> JDP.optional "stacks" (JD.nullable (JD.list stackDecoder)) Nothing




{-| Type of HTTP response from describeTimeBasedAutoScali
-}
type alias DescribeTimeBasedAutoScalingResult =
    { timeBasedAutoScalingConfigurations : Maybe (List TimeBasedAutoScalingConfiguration)
    }



describeTimeBasedAutoScalingResultDecoder : JD.Decoder DescribeTimeBasedAutoScalingResult
describeTimeBasedAutoScalingResultDecoder =
    JDP.decode DescribeTimeBasedAutoScalingResult
        |> JDP.optional "timeBasedAutoScalingConfigurations" (JD.nullable (JD.list timeBasedAutoScalingConfigurationDecoder)) Nothing




{-| Type of HTTP response from describeUserProfil
-}
type alias DescribeUserProfilesResult =
    { userProfiles : Maybe (List UserProfile)
    }



describeUserProfilesResultDecoder : JD.Decoder DescribeUserProfilesResult
describeUserProfilesResultDecoder =
    JDP.decode DescribeUserProfilesResult
        |> JDP.optional "userProfiles" (JD.nullable (JD.list userProfileDecoder)) Nothing




{-| Type of HTTP response from describeVolum
-}
type alias DescribeVolumesResult =
    { volumes : Maybe (List Volume)
    }



describeVolumesResultDecoder : JD.Decoder DescribeVolumesResult
describeVolumesResultDecoder =
    JDP.decode DescribeVolumesResult
        |> JDP.optional "volumes" (JD.nullable (JD.list volumeDecoder)) Nothing




{-| <p>Describes an Amazon EBS volume. This data type maps directly to the Amazon EC2 <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html">EbsBlockDevice</a> data type.</p>
-}
type alias EbsBlockDevice =
    { snapshotId : Maybe String
    , iops : Maybe Int
    , volumeSize : Maybe Int
    , volumeType : Maybe VolumeType
    , deleteOnTermination : Maybe Bool
    }



ebsBlockDeviceDecoder : JD.Decoder EbsBlockDevice
ebsBlockDeviceDecoder =
    JDP.decode EbsBlockDevice
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumeType" (JD.nullable volumeTypeDecoder) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing




{-| <p>Describes a registered Amazon ECS cluster.</p>
-}
type alias EcsCluster =
    { ecsClusterArn : Maybe String
    , ecsClusterName : Maybe String
    , stackId : Maybe String
    , registeredAt : Maybe String
    }



ecsClusterDecoder : JD.Decoder EcsCluster
ecsClusterDecoder =
    JDP.decode EcsCluster
        |> JDP.optional "ecsClusterArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "ecsClusterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "registeredAt" (JD.nullable JD.string) Nothing




{-| <p>Describes an Elastic IP address.</p>
-}
type alias ElasticIp =
    { ip : Maybe String
    , name : Maybe String
    , domain : Maybe String
    , region : Maybe String
    , instanceId : Maybe String
    }



elasticIpDecoder : JD.Decoder ElasticIp
elasticIpDecoder =
    JDP.decode ElasticIp
        |> JDP.optional "ip" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "domain" (JD.nullable JD.string) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing




{-| <p>Describes an Elastic Load Balancing instance.</p>
-}
type alias ElasticLoadBalancer =
    { elasticLoadBalancerName : Maybe String
    , region : Maybe String
    , dnsName : Maybe String
    , stackId : Maybe String
    , layerId : Maybe String
    , vpcId : Maybe String
    , availabilityZones : Maybe (List String)
    , subnetIds : Maybe (List String)
    , ec2InstanceIds : Maybe (List String)
    }



elasticLoadBalancerDecoder : JD.Decoder ElasticLoadBalancer
elasticLoadBalancerDecoder =
    JDP.decode ElasticLoadBalancer
        |> JDP.optional "elasticLoadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "dnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "layerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "ec2InstanceIds" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Represents an app's environment variable.</p>
-}
type alias EnvironmentVariable =
    { key : String
    , value : String
    , secure : Maybe Bool
    }



environmentVariableDecoder : JD.Decoder EnvironmentVariable
environmentVariableDecoder =
    JDP.decode EnvironmentVariable
        |> JDP.required "key" JD.string
        |> JDP.required "value" JD.string
        |> JDP.optional "secure" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from getHostnameSuggesti
-}
type alias GetHostnameSuggestionResult =
    { layerId : Maybe String
    , hostname : Maybe String
    }



getHostnameSuggestionResultDecoder : JD.Decoder GetHostnameSuggestionResult
getHostnameSuggestionResultDecoder =
    JDP.decode GetHostnameSuggestionResult
        |> JDP.optional "layerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostname" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from grantAcce
-}
type alias GrantAccessResult =
    { temporaryCredential : Maybe TemporaryCredential
    }



grantAccessResultDecoder : JD.Decoder GrantAccessResult
grantAccessResultDecoder =
    JDP.decode GrantAccessResult
        |> JDP.optional "temporaryCredential" (JD.nullable temporaryCredentialDecoder) Nothing




{-| <p>Describes an instance.</p>
-}
type alias Instance =
    { agentVersion : Maybe String
    , amiId : Maybe String
    , architecture : Maybe Architecture
    , autoScalingType : Maybe AutoScalingType
    , availabilityZone : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , createdAt : Maybe String
    , ebsOptimized : Maybe Bool
    , ec2InstanceId : Maybe String
    , ecsClusterArn : Maybe String
    , ecsContainerInstanceArn : Maybe String
    , elasticIp : Maybe String
    , hostname : Maybe String
    , infrastructureClass : Maybe String
    , installUpdatesOnBoot : Maybe Bool
    , instanceId : Maybe String
    , instanceProfileArn : Maybe String
    , instanceType : Maybe String
    , lastServiceErrorId : Maybe String
    , layerIds : Maybe (List String)
    , os : Maybe String
    , platform : Maybe String
    , privateDns : Maybe String
    , privateIp : Maybe String
    , publicDns : Maybe String
    , publicIp : Maybe String
    , registeredBy : Maybe String
    , reportedAgentVersion : Maybe String
    , reportedOs : Maybe ReportedOs
    , rootDeviceType : Maybe RootDeviceType
    , rootDeviceVolumeId : Maybe String
    , securityGroupIds : Maybe (List String)
    , sshHostDsaKeyFingerprint : Maybe String
    , sshHostRsaKeyFingerprint : Maybe String
    , sshKeyName : Maybe String
    , stackId : Maybe String
    , status : Maybe String
    , subnetId : Maybe String
    , tenancy : Maybe String
    , virtualizationType : Maybe VirtualizationType
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JDP.decode Instance
        |> JDP.optional "agentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "amiId" (JD.nullable JD.string) Nothing
        |> JDP.optional "architecture" (JD.nullable architectureDecoder) Nothing
        |> JDP.optional "autoScalingType" (JD.nullable autoScalingTypeDecoder) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list blockDeviceMappingDecoder)) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "ebsOptimized" (JD.nullable JD.bool) Nothing
        |> JDP.optional "ec2InstanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ecsClusterArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "ecsContainerInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "elasticIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostname" (JD.nullable JD.string) Nothing
        |> JDP.optional "infrastructureClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "installUpdatesOnBoot" (JD.nullable JD.bool) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceProfileArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastServiceErrorId" (JD.nullable JD.string) Nothing
        |> JDP.optional "layerIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "os" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateDns" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicDns" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "registeredBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "reportedAgentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "reportedOs" (JD.nullable reportedOsDecoder) Nothing
        |> JDP.optional "rootDeviceType" (JD.nullable rootDeviceTypeDecoder) Nothing
        |> JDP.optional "rootDeviceVolumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "sshHostDsaKeyFingerprint" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshHostRsaKeyFingerprint" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshKeyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tenancy" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualizationType" (JD.nullable virtualizationTypeDecoder) Nothing




{-| <p>Contains a description of an Amazon EC2 instance from the Amazon EC2 metadata service. For more information, see <a href="http://docs.aws.amazon.com/sdkfornet/latest/apidocs/Index.html">Instance Metadata and User Data</a>.</p>
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




{-| <p>Describes how many instances a stack has for each status.</p>
-}
type alias InstancesCount =
    { assigning : Maybe Int
    , booting : Maybe Int
    , connectionLost : Maybe Int
    , deregistering : Maybe Int
    , online : Maybe Int
    , pending : Maybe Int
    , rebooting : Maybe Int
    , registered : Maybe Int
    , registering : Maybe Int
    , requested : Maybe Int
    , runningSetup : Maybe Int
    , setupFailed : Maybe Int
    , shuttingDown : Maybe Int
    , startFailed : Maybe Int
    , stopped : Maybe Int
    , stopping : Maybe Int
    , terminated : Maybe Int
    , terminating : Maybe Int
    , unassigning : Maybe Int
    }



instancesCountDecoder : JD.Decoder InstancesCount
instancesCountDecoder =
    JDP.decode InstancesCount
        |> JDP.optional "assigning" (JD.nullable JD.int) Nothing
        |> JDP.optional "booting" (JD.nullable JD.int) Nothing
        |> JDP.optional "connectionLost" (JD.nullable JD.int) Nothing
        |> JDP.optional "deregistering" (JD.nullable JD.int) Nothing
        |> JDP.optional "online" (JD.nullable JD.int) Nothing
        |> JDP.optional "pending" (JD.nullable JD.int) Nothing
        |> JDP.optional "rebooting" (JD.nullable JD.int) Nothing
        |> JDP.optional "registered" (JD.nullable JD.int) Nothing
        |> JDP.optional "registering" (JD.nullable JD.int) Nothing
        |> JDP.optional "requested" (JD.nullable JD.int) Nothing
        |> JDP.optional "runningSetup" (JD.nullable JD.int) Nothing
        |> JDP.optional "setupFailed" (JD.nullable JD.int) Nothing
        |> JDP.optional "shuttingDown" (JD.nullable JD.int) Nothing
        |> JDP.optional "startFailed" (JD.nullable JD.int) Nothing
        |> JDP.optional "stopped" (JD.nullable JD.int) Nothing
        |> JDP.optional "stopping" (JD.nullable JD.int) Nothing
        |> JDP.optional "terminated" (JD.nullable JD.int) Nothing
        |> JDP.optional "terminating" (JD.nullable JD.int) Nothing
        |> JDP.optional "unassigning" (JD.nullable JD.int) Nothing




{-| <p>Describes a layer.</p>
-}
type alias Layer =
    { stackId : Maybe String
    , layerId : Maybe String
    , type_ : Maybe LayerType
    , name : Maybe String
    , shortname : Maybe String
    , attributes : Maybe (Dict String String)
    , customInstanceProfileArn : Maybe String
    , customJson : Maybe String
    , customSecurityGroupIds : Maybe (List String)
    , defaultSecurityGroupNames : Maybe (List String)
    , packages : Maybe (List String)
    , volumeConfigurations : Maybe (List VolumeConfiguration)
    , enableAutoHealing : Maybe Bool
    , autoAssignElasticIps : Maybe Bool
    , autoAssignPublicIps : Maybe Bool
    , defaultRecipes : Maybe Recipes
    , customRecipes : Maybe Recipes
    , createdAt : Maybe String
    , installUpdatesOnBoot : Maybe Bool
    , useEbsOptimizedInstances : Maybe Bool
    , lifecycleEventConfiguration : Maybe LifecycleEventConfiguration
    }



layerDecoder : JD.Decoder Layer
layerDecoder =
    JDP.decode Layer
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "layerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable layerTypeDecoder) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "shortname" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "customInstanceProfileArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "customJson" (JD.nullable JD.string) Nothing
        |> JDP.optional "customSecurityGroupIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "defaultSecurityGroupNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "packages" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "volumeConfigurations" (JD.nullable (JD.list volumeConfigurationDecoder)) Nothing
        |> JDP.optional "enableAutoHealing" (JD.nullable JD.bool) Nothing
        |> JDP.optional "autoAssignElasticIps" (JD.nullable JD.bool) Nothing
        |> JDP.optional "autoAssignPublicIps" (JD.nullable JD.bool) Nothing
        |> JDP.optional "defaultRecipes" (JD.nullable recipesDecoder) Nothing
        |> JDP.optional "customRecipes" (JD.nullable recipesDecoder) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "installUpdatesOnBoot" (JD.nullable JD.bool) Nothing
        |> JDP.optional "useEbsOptimizedInstances" (JD.nullable JD.bool) Nothing
        |> JDP.optional "lifecycleEventConfiguration" (JD.nullable lifecycleEventConfigurationDecoder) Nothing




{-| One of

* `LayerAttributesKeys_EcsClusterArn`
* `LayerAttributesKeys_EnableHaproxyStats`
* `LayerAttributesKeys_HaproxyStatsUrl`
* `LayerAttributesKeys_HaproxyStatsUser`
* `LayerAttributesKeys_HaproxyStatsPassword`
* `LayerAttributesKeys_HaproxyHealthCheckUrl`
* `LayerAttributesKeys_HaproxyHealthCheckMethod`
* `LayerAttributesKeys_MysqlRootPassword`
* `LayerAttributesKeys_MysqlRootPasswordUbiquitous`
* `LayerAttributesKeys_GangliaUrl`
* `LayerAttributesKeys_GangliaUser`
* `LayerAttributesKeys_GangliaPassword`
* `LayerAttributesKeys_MemcachedMemory`
* `LayerAttributesKeys_NodejsVersion`
* `LayerAttributesKeys_RubyVersion`
* `LayerAttributesKeys_RubygemsVersion`
* `LayerAttributesKeys_ManageBundler`
* `LayerAttributesKeys_BundlerVersion`
* `LayerAttributesKeys_RailsStack`
* `LayerAttributesKeys_PassengerVersion`
* `LayerAttributesKeys_Jvm`
* `LayerAttributesKeys_JvmVersion`
* `LayerAttributesKeys_JvmOptions`
* `LayerAttributesKeys_JavaAppServer`
* `LayerAttributesKeys_JavaAppServerVersion`

-}
type LayerAttributesKeys
    = LayerAttributesKeys_EcsClusterArn
    | LayerAttributesKeys_EnableHaproxyStats
    | LayerAttributesKeys_HaproxyStatsUrl
    | LayerAttributesKeys_HaproxyStatsUser
    | LayerAttributesKeys_HaproxyStatsPassword
    | LayerAttributesKeys_HaproxyHealthCheckUrl
    | LayerAttributesKeys_HaproxyHealthCheckMethod
    | LayerAttributesKeys_MysqlRootPassword
    | LayerAttributesKeys_MysqlRootPasswordUbiquitous
    | LayerAttributesKeys_GangliaUrl
    | LayerAttributesKeys_GangliaUser
    | LayerAttributesKeys_GangliaPassword
    | LayerAttributesKeys_MemcachedMemory
    | LayerAttributesKeys_NodejsVersion
    | LayerAttributesKeys_RubyVersion
    | LayerAttributesKeys_RubygemsVersion
    | LayerAttributesKeys_ManageBundler
    | LayerAttributesKeys_BundlerVersion
    | LayerAttributesKeys_RailsStack
    | LayerAttributesKeys_PassengerVersion
    | LayerAttributesKeys_Jvm
    | LayerAttributesKeys_JvmVersion
    | LayerAttributesKeys_JvmOptions
    | LayerAttributesKeys_JavaAppServer
    | LayerAttributesKeys_JavaAppServerVersion



layerAttributesKeysDecoder : JD.Decoder LayerAttributesKeys
layerAttributesKeysDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EcsClusterArn" ->
                        JD.succeed LayerAttributesKeys_EcsClusterArn

                    "EnableHaproxyStats" ->
                        JD.succeed LayerAttributesKeys_EnableHaproxyStats

                    "HaproxyStatsUrl" ->
                        JD.succeed LayerAttributesKeys_HaproxyStatsUrl

                    "HaproxyStatsUser" ->
                        JD.succeed LayerAttributesKeys_HaproxyStatsUser

                    "HaproxyStatsPassword" ->
                        JD.succeed LayerAttributesKeys_HaproxyStatsPassword

                    "HaproxyHealthCheckUrl" ->
                        JD.succeed LayerAttributesKeys_HaproxyHealthCheckUrl

                    "HaproxyHealthCheckMethod" ->
                        JD.succeed LayerAttributesKeys_HaproxyHealthCheckMethod

                    "MysqlRootPassword" ->
                        JD.succeed LayerAttributesKeys_MysqlRootPassword

                    "MysqlRootPasswordUbiquitous" ->
                        JD.succeed LayerAttributesKeys_MysqlRootPasswordUbiquitous

                    "GangliaUrl" ->
                        JD.succeed LayerAttributesKeys_GangliaUrl

                    "GangliaUser" ->
                        JD.succeed LayerAttributesKeys_GangliaUser

                    "GangliaPassword" ->
                        JD.succeed LayerAttributesKeys_GangliaPassword

                    "MemcachedMemory" ->
                        JD.succeed LayerAttributesKeys_MemcachedMemory

                    "NodejsVersion" ->
                        JD.succeed LayerAttributesKeys_NodejsVersion

                    "RubyVersion" ->
                        JD.succeed LayerAttributesKeys_RubyVersion

                    "RubygemsVersion" ->
                        JD.succeed LayerAttributesKeys_RubygemsVersion

                    "ManageBundler" ->
                        JD.succeed LayerAttributesKeys_ManageBundler

                    "BundlerVersion" ->
                        JD.succeed LayerAttributesKeys_BundlerVersion

                    "RailsStack" ->
                        JD.succeed LayerAttributesKeys_RailsStack

                    "PassengerVersion" ->
                        JD.succeed LayerAttributesKeys_PassengerVersion

                    "Jvm" ->
                        JD.succeed LayerAttributesKeys_Jvm

                    "JvmVersion" ->
                        JD.succeed LayerAttributesKeys_JvmVersion

                    "JvmOptions" ->
                        JD.succeed LayerAttributesKeys_JvmOptions

                    "JavaAppServer" ->
                        JD.succeed LayerAttributesKeys_JavaAppServer

                    "JavaAppServerVersion" ->
                        JD.succeed LayerAttributesKeys_JavaAppServerVersion


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `LayerType_aws-flow-ruby`
* `LayerType_ecs-cluster`
* `LayerType_java-app`
* `LayerType_lb`
* `LayerType_web`
* `LayerType_php-app`
* `LayerType_rails-app`
* `LayerType_nodejs-app`
* `LayerType_memcached`
* `LayerType_db-master`
* `LayerType_monitoring-master`
* `LayerType_custom`

-}
type LayerType
    = LayerType_aws_flow_ruby
    | LayerType_ecs_cluster
    | LayerType_java_app
    | LayerType_lb
    | LayerType_web
    | LayerType_php_app
    | LayerType_rails_app
    | LayerType_nodejs_app
    | LayerType_memcached
    | LayerType_db_master
    | LayerType_monitoring_master
    | LayerType_custom



layerTypeDecoder : JD.Decoder LayerType
layerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "aws_flow_ruby" ->
                        JD.succeed LayerType_aws_flow_ruby

                    "ecs_cluster" ->
                        JD.succeed LayerType_ecs_cluster

                    "java_app" ->
                        JD.succeed LayerType_java_app

                    "lb" ->
                        JD.succeed LayerType_lb

                    "web" ->
                        JD.succeed LayerType_web

                    "php_app" ->
                        JD.succeed LayerType_php_app

                    "rails_app" ->
                        JD.succeed LayerType_rails_app

                    "nodejs_app" ->
                        JD.succeed LayerType_nodejs_app

                    "memcached" ->
                        JD.succeed LayerType_memcached

                    "db_master" ->
                        JD.succeed LayerType_db_master

                    "monitoring_master" ->
                        JD.succeed LayerType_monitoring_master

                    "custom" ->
                        JD.succeed LayerType_custom


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Specifies the lifecycle event configuration</p>
-}
type alias LifecycleEventConfiguration =
    { shutdown : Maybe ShutdownEventConfiguration
    }



lifecycleEventConfigurationDecoder : JD.Decoder LifecycleEventConfiguration
lifecycleEventConfigurationDecoder =
    JDP.decode LifecycleEventConfiguration
        |> JDP.optional "shutdown" (JD.nullable shutdownEventConfigurationDecoder) Nothing




{-| <p>Describes a layer's load-based auto scaling configuration.</p>
-}
type alias LoadBasedAutoScalingConfiguration =
    { layerId : Maybe String
    , enable : Maybe Bool
    , upScaling : Maybe AutoScalingThresholds
    , downScaling : Maybe AutoScalingThresholds
    }



loadBasedAutoScalingConfigurationDecoder : JD.Decoder LoadBasedAutoScalingConfiguration
loadBasedAutoScalingConfigurationDecoder =
    JDP.decode LoadBasedAutoScalingConfiguration
        |> JDP.optional "layerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "enable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "upScaling" (JD.nullable autoScalingThresholdsDecoder) Nothing
        |> JDP.optional "downScaling" (JD.nullable autoScalingThresholdsDecoder) Nothing




{-| <p>Describes stack or user permissions.</p>
-}
type alias Permission =
    { stackId : Maybe String
    , iamUserArn : Maybe String
    , allowSsh : Maybe Bool
    , allowSudo : Maybe Bool
    , level : Maybe String
    }



permissionDecoder : JD.Decoder Permission
permissionDecoder =
    JDP.decode Permission
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamUserArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowSsh" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowSudo" (JD.nullable JD.bool) Nothing
        |> JDP.optional "level" (JD.nullable JD.string) Nothing




{-| <p>Describes an instance's RAID array.</p>
-}
type alias RaidArray =
    { raidArrayId : Maybe String
    , instanceId : Maybe String
    , name : Maybe String
    , raidLevel : Maybe Int
    , numberOfDisks : Maybe Int
    , size : Maybe Int
    , device : Maybe String
    , mountPoint : Maybe String
    , availabilityZone : Maybe String
    , createdAt : Maybe String
    , stackId : Maybe String
    , volumeType : Maybe String
    , iops : Maybe Int
    }



raidArrayDecoder : JD.Decoder RaidArray
raidArrayDecoder =
    JDP.decode RaidArray
        |> JDP.optional "raidArrayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "raidLevel" (JD.nullable JD.int) Nothing
        |> JDP.optional "numberOfDisks" (JD.nullable JD.int) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing
        |> JDP.optional "device" (JD.nullable JD.string) Nothing
        |> JDP.optional "mountPoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing




{-| <p>Describes an Amazon RDS instance.</p>
-}
type alias RdsDbInstance =
    { rdsDbInstanceArn : Maybe String
    , dbInstanceIdentifier : Maybe String
    , dbUser : Maybe String
    , dbPassword : Maybe String
    , region : Maybe String
    , address : Maybe String
    , engine : Maybe String
    , stackId : Maybe String
    , missingOnRds : Maybe Bool
    }



rdsDbInstanceDecoder : JD.Decoder RdsDbInstance
rdsDbInstanceDecoder =
    JDP.decode RdsDbInstance
        |> JDP.optional "rdsDbInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "dbInstanceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dbUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "dbPassword" (JD.nullable JD.string) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "address" (JD.nullable JD.string) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "missingOnRds" (JD.nullable JD.bool) Nothing




{-| <p>AWS OpsWorks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>. For each layer, AWS OpsWorks runs a set of standard recipes for each event. In addition, you can provide custom recipes for any or all layers and events. AWS OpsWorks runs custom event recipes after the standard recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of the five events. </p> <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe name, which is the recipe's file name without the .rb extension. For example: phpapp2::dbsetup specifies the dbsetup.rb recipe in the repository's phpapp2 folder.</p>
-}
type alias Recipes =
    { setup : Maybe (List String)
    , configure : Maybe (List String)
    , deploy : Maybe (List String)
    , undeploy : Maybe (List String)
    , shutdown : Maybe (List String)
    }



recipesDecoder : JD.Decoder Recipes
recipesDecoder =
    JDP.decode Recipes
        |> JDP.optional "setup" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "configure" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "deploy" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "undeploy" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "shutdown" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from registerEcsClust
-}
type alias RegisterEcsClusterResult =
    { ecsClusterArn : Maybe String
    }



registerEcsClusterResultDecoder : JD.Decoder RegisterEcsClusterResult
registerEcsClusterResultDecoder =
    JDP.decode RegisterEcsClusterResult
        |> JDP.optional "ecsClusterArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerElastic
-}
type alias RegisterElasticIpResult =
    { elasticIp : Maybe String
    }



registerElasticIpResultDecoder : JD.Decoder RegisterElasticIpResult
registerElasticIpResultDecoder =
    JDP.decode RegisterElasticIpResult
        |> JDP.optional "elasticIp" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerInstan
-}
type alias RegisterInstanceResult =
    { instanceId : Maybe String
    }



registerInstanceResultDecoder : JD.Decoder RegisterInstanceResult
registerInstanceResultDecoder =
    JDP.decode RegisterInstanceResult
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerVolu
-}
type alias RegisterVolumeResult =
    { volumeId : Maybe String
    }



registerVolumeResultDecoder : JD.Decoder RegisterVolumeResult
registerVolumeResultDecoder =
    JDP.decode RegisterVolumeResult
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing




{-| <p>A registered instance's reported operating system.</p>
-}
type alias ReportedOs =
    { family : Maybe String
    , name : Maybe String
    , version : Maybe String
    }



reportedOsDecoder : JD.Decoder ReportedOs
reportedOsDecoder =
    JDP.decode ReportedOs
        |> JDP.optional "family" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing




{-| <p>Indicates that a resource was not found.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `RootDeviceType_ebs`
* `RootDeviceType_instance-store`

-}
type RootDeviceType
    = RootDeviceType_ebs
    | RootDeviceType_instance_store



rootDeviceTypeDecoder : JD.Decoder RootDeviceType
rootDeviceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ebs" ->
                        JD.succeed RootDeviceType_ebs

                    "instance_store" ->
                        JD.succeed RootDeviceType_instance_store


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a user's SSH information.</p>
-}
type alias SelfUserProfile =
    { iamUserArn : Maybe String
    , name : Maybe String
    , sshUsername : Maybe String
    , sshPublicKey : Maybe String
    }



selfUserProfileDecoder : JD.Decoder SelfUserProfile
selfUserProfileDecoder =
    JDP.decode SelfUserProfile
        |> JDP.optional "iamUserArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshPublicKey" (JD.nullable JD.string) Nothing




{-| <p>Describes an AWS OpsWorks service error.</p>
-}
type alias ServiceError =
    { serviceErrorId : Maybe String
    , stackId : Maybe String
    , instanceId : Maybe String
    , type_ : Maybe String
    , message : Maybe String
    , createdAt : Maybe String
    }



serviceErrorDecoder : JD.Decoder ServiceError
serviceErrorDecoder =
    JDP.decode ServiceError
        |> JDP.optional "serviceErrorId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing




{-| <p>The Shutdown event configuration.</p>
-}
type alias ShutdownEventConfiguration =
    { executionTimeout : Maybe Int
    , delayUntilElbConnectionsDrained : Maybe Bool
    }



shutdownEventConfigurationDecoder : JD.Decoder ShutdownEventConfiguration
shutdownEventConfigurationDecoder =
    JDP.decode ShutdownEventConfiguration
        |> JDP.optional "executionTimeout" (JD.nullable JD.int) Nothing
        |> JDP.optional "delayUntilElbConnectionsDrained" (JD.nullable JD.bool) Nothing




{-| <p>Contains the information required to retrieve an app or cookbook from a repository. For more information, see <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html">Creating Apps</a> or <a href="http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html">Custom Recipes and Cookbooks</a>.</p>
-}
type alias Source =
    { type_ : Maybe SourceType
    , url : Maybe String
    , username : Maybe String
    , password : Maybe String
    , sshKey : Maybe String
    , revision : Maybe String
    }



sourceDecoder : JD.Decoder Source
sourceDecoder =
    JDP.decode Source
        |> JDP.optional "type_" (JD.nullable sourceTypeDecoder) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing
        |> JDP.optional "username" (JD.nullable JD.string) Nothing
        |> JDP.optional "password" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "revision" (JD.nullable JD.string) Nothing




{-| One of

* `SourceType_git`
* `SourceType_svn`
* `SourceType_archive`
* `SourceType_s3`

-}
type SourceType
    = SourceType_git
    | SourceType_svn
    | SourceType_archive
    | SourceType_s3



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "git" ->
                        JD.succeed SourceType_git

                    "svn" ->
                        JD.succeed SourceType_svn

                    "archive" ->
                        JD.succeed SourceType_archive

                    "s3" ->
                        JD.succeed SourceType_s3


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an app's SSL configuration.</p>
-}
type alias SslConfiguration =
    { certificate : String
    , privateKey : String
    , chain : Maybe String
    }



sslConfigurationDecoder : JD.Decoder SslConfiguration
sslConfigurationDecoder =
    JDP.decode SslConfiguration
        |> JDP.required "certificate" JD.string
        |> JDP.required "privateKey" JD.string
        |> JDP.optional "chain" (JD.nullable JD.string) Nothing




{-| <p>Describes a stack.</p>
-}
type alias Stack =
    { stackId : Maybe String
    , name : Maybe String
    , arn : Maybe String
    , region : Maybe String
    , vpcId : Maybe String
    , attributes : Maybe (Dict String String)
    , serviceRoleArn : Maybe String
    , defaultInstanceProfileArn : Maybe String
    , defaultOs : Maybe String
    , hostnameTheme : Maybe String
    , defaultAvailabilityZone : Maybe String
    , defaultSubnetId : Maybe String
    , customJson : Maybe String
    , configurationManager : Maybe StackConfigurationManager
    , chefConfiguration : Maybe ChefConfiguration
    , useCustomCookbooks : Maybe Bool
    , useOpsworksSecurityGroups : Maybe Bool
    , customCookbooksSource : Maybe Source
    , defaultSshKeyName : Maybe String
    , createdAt : Maybe String
    , defaultRootDeviceType : Maybe RootDeviceType
    , agentVersion : Maybe String
    }



stackDecoder : JD.Decoder Stack
stackDecoder =
    JDP.decode Stack
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "serviceRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultInstanceProfileArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultOs" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostnameTheme" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultAvailabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultSubnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "customJson" (JD.nullable JD.string) Nothing
        |> JDP.optional "configurationManager" (JD.nullable stackConfigurationManagerDecoder) Nothing
        |> JDP.optional "chefConfiguration" (JD.nullable chefConfigurationDecoder) Nothing
        |> JDP.optional "useCustomCookbooks" (JD.nullable JD.bool) Nothing
        |> JDP.optional "useOpsworksSecurityGroups" (JD.nullable JD.bool) Nothing
        |> JDP.optional "customCookbooksSource" (JD.nullable sourceDecoder) Nothing
        |> JDP.optional "defaultSshKeyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultRootDeviceType" (JD.nullable rootDeviceTypeDecoder) Nothing
        |> JDP.optional "agentVersion" (JD.nullable JD.string) Nothing




{-| One of

* `StackAttributesKeys_Color`

-}
type StackAttributesKeys
    = StackAttributesKeys_Color



stackAttributesKeysDecoder : JD.Decoder StackAttributesKeys
stackAttributesKeysDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Color" ->
                        JD.succeed StackAttributesKeys_Color


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the configuration manager.</p>
-}
type alias StackConfigurationManager =
    { name : Maybe String
    , version : Maybe String
    }



stackConfigurationManagerDecoder : JD.Decoder StackConfigurationManager
stackConfigurationManagerDecoder =
    JDP.decode StackConfigurationManager
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing




{-| <p>Summarizes the number of layers, instances, and apps in a stack.</p>
-}
type alias StackSummary =
    { stackId : Maybe String
    , name : Maybe String
    , arn : Maybe String
    , layersCount : Maybe Int
    , appsCount : Maybe Int
    , instancesCount : Maybe InstancesCount
    }



stackSummaryDecoder : JD.Decoder StackSummary
stackSummaryDecoder =
    JDP.decode StackSummary
        |> JDP.optional "stackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "layersCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "appsCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "instancesCount" (JD.nullable instancesCountDecoder) Nothing




{-| <p>Contains the data needed by RDP clients such as the Microsoft Remote Desktop Connection to log in to the instance.</p>
-}
type alias TemporaryCredential =
    { username : Maybe String
    , password : Maybe String
    , validForInMinutes : Maybe Int
    , instanceId : Maybe String
    }



temporaryCredentialDecoder : JD.Decoder TemporaryCredential
temporaryCredentialDecoder =
    JDP.decode TemporaryCredential
        |> JDP.optional "username" (JD.nullable JD.string) Nothing
        |> JDP.optional "password" (JD.nullable JD.string) Nothing
        |> JDP.optional "validForInMinutes" (JD.nullable JD.int) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing




{-| <p>Describes an instance's time-based auto scaling configuration.</p>
-}
type alias TimeBasedAutoScalingConfiguration =
    { instanceId : Maybe String
    , autoScalingSchedule : Maybe WeeklyAutoScalingSchedule
    }



timeBasedAutoScalingConfigurationDecoder : JD.Decoder TimeBasedAutoScalingConfiguration
timeBasedAutoScalingConfigurationDecoder =
    JDP.decode TimeBasedAutoScalingConfiguration
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoScalingSchedule" (JD.nullable weeklyAutoScalingScheduleDecoder) Nothing




{-| <p>Describes a user's SSH information.</p>
-}
type alias UserProfile =
    { iamUserArn : Maybe String
    , name : Maybe String
    , sshUsername : Maybe String
    , sshPublicKey : Maybe String
    , allowSelfManagement : Maybe Bool
    }



userProfileDecoder : JD.Decoder UserProfile
userProfileDecoder =
    JDP.decode UserProfile
        |> JDP.optional "iamUserArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshPublicKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowSelfManagement" (JD.nullable JD.bool) Nothing




{-| <p>Indicates that a request was not valid.</p>
-}
type alias ValidationException =
    { message : Maybe String
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `VirtualizationType_paravirtual`
* `VirtualizationType_hvm`

-}
type VirtualizationType
    = VirtualizationType_paravirtual
    | VirtualizationType_hvm



virtualizationTypeDecoder : JD.Decoder VirtualizationType
virtualizationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "paravirtual" ->
                        JD.succeed VirtualizationType_paravirtual

                    "hvm" ->
                        JD.succeed VirtualizationType_hvm


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an instance's Amazon EBS volume.</p>
-}
type alias Volume =
    { volumeId : Maybe String
    , ec2VolumeId : Maybe String
    , name : Maybe String
    , raidArrayId : Maybe String
    , instanceId : Maybe String
    , status : Maybe String
    , size : Maybe Int
    , device : Maybe String
    , mountPoint : Maybe String
    , region : Maybe String
    , availabilityZone : Maybe String
    , volumeType : Maybe String
    , iops : Maybe Int
    }



volumeDecoder : JD.Decoder Volume
volumeDecoder =
    JDP.decode Volume
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ec2VolumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "raidArrayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing
        |> JDP.optional "device" (JD.nullable JD.string) Nothing
        |> JDP.optional "mountPoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing




{-| <p>Describes an Amazon EBS volume configuration.</p>
-}
type alias VolumeConfiguration =
    { mountPoint : String
    , raidLevel : Maybe Int
    , numberOfDisks : Int
    , size : Int
    , volumeType : Maybe String
    , iops : Maybe Int
    }



volumeConfigurationDecoder : JD.Decoder VolumeConfiguration
volumeConfigurationDecoder =
    JDP.decode VolumeConfiguration
        |> JDP.required "mountPoint" JD.string
        |> JDP.optional "raidLevel" (JD.nullable JD.int) Nothing
        |> JDP.required "numberOfDisks" JD.int
        |> JDP.required "size" JD.int
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing




{-| One of

* `VolumeType_gp2`
* `VolumeType_io1`
* `VolumeType_standard`

-}
type VolumeType
    = VolumeType_gp2
    | VolumeType_io1
    | VolumeType_standard



volumeTypeDecoder : JD.Decoder VolumeType
volumeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "gp2" ->
                        JD.succeed VolumeType_gp2

                    "io1" ->
                        JD.succeed VolumeType_io1

                    "standard" ->
                        JD.succeed VolumeType_standard


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a time-based instance's auto scaling schedule. The schedule consists of a set of key-value pairs.</p> <ul> <li> <p>The key is the time period (a UTC hour) and must be an integer from 0 - 23.</p> </li> <li> <p>The value indicates whether the instance should be online or offline for the specified period, and must be set to "on" or "off"</p> </li> </ul> <p>The default setting for all time periods is off, so you use the following parameters primarily to specify the online periods. You don't have to explicitly specify offline periods unless you want to change an online period to an offline period.</p> <p>The following example specifies that the instance should be online for four hours, from UTC 1200 - 1600. It will be off for the remainder of the day.</p> <p> <code> { "12":"on", "13":"on", "14":"on", "15":"on" } </code> </p>
-}
type alias WeeklyAutoScalingSchedule =
    { monday : Maybe (Dict String String)
    , tuesday : Maybe (Dict String String)
    , wednesday : Maybe (Dict String String)
    , thursday : Maybe (Dict String String)
    , friday : Maybe (Dict String String)
    , saturday : Maybe (Dict String String)
    , sunday : Maybe (Dict String String)
    }



weeklyAutoScalingScheduleDecoder : JD.Decoder WeeklyAutoScalingSchedule
weeklyAutoScalingScheduleDecoder =
    JDP.decode WeeklyAutoScalingSchedule
        |> JDP.optional "monday" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "tuesday" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "wednesday" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "thursday" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "friday" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "saturday" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "sunday" (JD.nullable (JD.dict JD.string)) Nothing




