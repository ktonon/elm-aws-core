module AWS.Services.AutoScaling
    exposing
        ( config
        , attachInstances
        , AttachInstancesOptions
        , attachLoadBalancerTargetGroups
        , attachLoadBalancers
        , completeLifecycleAction
        , CompleteLifecycleActionOptions
        , createAutoScalingGroup
        , CreateAutoScalingGroupOptions
        , createLaunchConfiguration
        , CreateLaunchConfigurationOptions
        , createOrUpdateTags
        , deleteAutoScalingGroup
        , DeleteAutoScalingGroupOptions
        , deleteLaunchConfiguration
        , deleteLifecycleHook
        , deleteNotificationConfiguration
        , deletePolicy
        , DeletePolicyOptions
        , deleteScheduledAction
        , deleteTags
        , describeAccountLimits
        , describeAdjustmentTypes
        , describeAutoScalingGroups
        , DescribeAutoScalingGroupsOptions
        , describeAutoScalingInstances
        , DescribeAutoScalingInstancesOptions
        , describeAutoScalingNotificationTypes
        , describeLaunchConfigurations
        , DescribeLaunchConfigurationsOptions
        , describeLifecycleHookTypes
        , describeLifecycleHooks
        , DescribeLifecycleHooksOptions
        , describeLoadBalancerTargetGroups
        , DescribeLoadBalancerTargetGroupsOptions
        , describeLoadBalancers
        , DescribeLoadBalancersOptions
        , describeMetricCollectionTypes
        , describeNotificationConfigurations
        , DescribeNotificationConfigurationsOptions
        , describePolicies
        , DescribePoliciesOptions
        , describeScalingActivities
        , DescribeScalingActivitiesOptions
        , describeScalingProcessTypes
        , describeScheduledActions
        , DescribeScheduledActionsOptions
        , describeTags
        , DescribeTagsOptions
        , describeTerminationPolicyTypes
        , detachInstances
        , DetachInstancesOptions
        , detachLoadBalancerTargetGroups
        , detachLoadBalancers
        , disableMetricsCollection
        , DisableMetricsCollectionOptions
        , enableMetricsCollection
        , EnableMetricsCollectionOptions
        , enterStandby
        , EnterStandbyOptions
        , executePolicy
        , ExecutePolicyOptions
        , exitStandby
        , ExitStandbyOptions
        , putLifecycleHook
        , PutLifecycleHookOptions
        , putNotificationConfiguration
        , putScalingPolicy
        , PutScalingPolicyOptions
        , putScheduledUpdateGroupAction
        , PutScheduledUpdateGroupActionOptions
        , recordLifecycleActionHeartbeat
        , RecordLifecycleActionHeartbeatOptions
        , resumeProcesses
        , ResumeProcessesOptions
        , setDesiredCapacity
        , SetDesiredCapacityOptions
        , setInstanceHealth
        , SetInstanceHealthOptions
        , setInstanceProtection
        , suspendProcesses
        , SuspendProcessesOptions
        , terminateInstanceInAutoScalingGroup
        , updateAutoScalingGroup
        , UpdateAutoScalingGroupOptions
        , ActivitiesType
        , Activity
        , ActivityType
        , AdjustmentType
        , Alarm
        , AlreadyExistsFault
        , AttachLoadBalancerTargetGroupsResultType
        , AttachLoadBalancersResultType
        , AutoScalingGroup
        , AutoScalingGroupsType
        , AutoScalingInstanceDetails
        , AutoScalingInstancesType
        , BlockDeviceMapping
        , CompleteLifecycleActionAnswer
        , DeleteLifecycleHookAnswer
        , DescribeAccountLimitsAnswer
        , DescribeAdjustmentTypesAnswer
        , DescribeAutoScalingNotificationTypesAnswer
        , DescribeLifecycleHookTypesAnswer
        , DescribeLifecycleHooksAnswer
        , DescribeLoadBalancerTargetGroupsResponse
        , DescribeLoadBalancersResponse
        , DescribeMetricCollectionTypesAnswer
        , DescribeNotificationConfigurationsAnswer
        , DescribeTerminationPolicyTypesAnswer
        , DetachInstancesAnswer
        , DetachLoadBalancerTargetGroupsResultType
        , DetachLoadBalancersResultType
        , Ebs
        , EnabledMetric
        , EnterStandbyAnswer
        , ExitStandbyAnswer
        , Filter
        , Instance
        , InstanceMonitoring
        , InvalidNextToken
        , LaunchConfiguration
        , LaunchConfigurationsType
        , LifecycleHook
        , LifecycleState(..)
        , LimitExceededFault
        , LoadBalancerState
        , LoadBalancerTargetGroupState
        , MetricCollectionType
        , MetricGranularityType
        , NotificationConfiguration
        , PoliciesType
        , PolicyARNType
        , ProcessType
        , ProcessesType
        , PutLifecycleHookAnswer
        , RecordLifecycleActionHeartbeatAnswer
        , ResourceContentionFault
        , ResourceInUseFault
        , ScalingActivityInProgressFault
        , ScalingActivityStatusCode(..)
        , ScalingPolicy
        , ScheduledActionsType
        , ScheduledUpdateGroupAction
        , SetInstanceProtectionAnswer
        , StepAdjustment
        , SuspendedProcess
        , Tag
        , TagDescription
        , TagsType
        )

{-| <fullname>Auto Scaling</fullname> <p>Auto Scaling is designed to automatically launch or terminate EC2 instances based on user-defined policies, schedules, and health checks. Use this service in conjunction with the Amazon CloudWatch and Elastic Load Balancing services.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [attachInstances](#attachInstances)
* [AttachInstancesOptions](#AttachInstancesOptions)
* [attachLoadBalancerTargetGroups](#attachLoadBalancerTargetGroups)
* [attachLoadBalancers](#attachLoadBalancers)
* [completeLifecycleAction](#completeLifecycleAction)
* [CompleteLifecycleActionOptions](#CompleteLifecycleActionOptions)
* [createAutoScalingGroup](#createAutoScalingGroup)
* [CreateAutoScalingGroupOptions](#CreateAutoScalingGroupOptions)
* [createLaunchConfiguration](#createLaunchConfiguration)
* [CreateLaunchConfigurationOptions](#CreateLaunchConfigurationOptions)
* [createOrUpdateTags](#createOrUpdateTags)
* [deleteAutoScalingGroup](#deleteAutoScalingGroup)
* [DeleteAutoScalingGroupOptions](#DeleteAutoScalingGroupOptions)
* [deleteLaunchConfiguration](#deleteLaunchConfiguration)
* [deleteLifecycleHook](#deleteLifecycleHook)
* [deleteNotificationConfiguration](#deleteNotificationConfiguration)
* [deletePolicy](#deletePolicy)
* [DeletePolicyOptions](#DeletePolicyOptions)
* [deleteScheduledAction](#deleteScheduledAction)
* [deleteTags](#deleteTags)
* [describeAccountLimits](#describeAccountLimits)
* [describeAdjustmentTypes](#describeAdjustmentTypes)
* [describeAutoScalingGroups](#describeAutoScalingGroups)
* [DescribeAutoScalingGroupsOptions](#DescribeAutoScalingGroupsOptions)
* [describeAutoScalingInstances](#describeAutoScalingInstances)
* [DescribeAutoScalingInstancesOptions](#DescribeAutoScalingInstancesOptions)
* [describeAutoScalingNotificationTypes](#describeAutoScalingNotificationTypes)
* [describeLaunchConfigurations](#describeLaunchConfigurations)
* [DescribeLaunchConfigurationsOptions](#DescribeLaunchConfigurationsOptions)
* [describeLifecycleHookTypes](#describeLifecycleHookTypes)
* [describeLifecycleHooks](#describeLifecycleHooks)
* [DescribeLifecycleHooksOptions](#DescribeLifecycleHooksOptions)
* [describeLoadBalancerTargetGroups](#describeLoadBalancerTargetGroups)
* [DescribeLoadBalancerTargetGroupsOptions](#DescribeLoadBalancerTargetGroupsOptions)
* [describeLoadBalancers](#describeLoadBalancers)
* [DescribeLoadBalancersOptions](#DescribeLoadBalancersOptions)
* [describeMetricCollectionTypes](#describeMetricCollectionTypes)
* [describeNotificationConfigurations](#describeNotificationConfigurations)
* [DescribeNotificationConfigurationsOptions](#DescribeNotificationConfigurationsOptions)
* [describePolicies](#describePolicies)
* [DescribePoliciesOptions](#DescribePoliciesOptions)
* [describeScalingActivities](#describeScalingActivities)
* [DescribeScalingActivitiesOptions](#DescribeScalingActivitiesOptions)
* [describeScalingProcessTypes](#describeScalingProcessTypes)
* [describeScheduledActions](#describeScheduledActions)
* [DescribeScheduledActionsOptions](#DescribeScheduledActionsOptions)
* [describeTags](#describeTags)
* [DescribeTagsOptions](#DescribeTagsOptions)
* [describeTerminationPolicyTypes](#describeTerminationPolicyTypes)
* [detachInstances](#detachInstances)
* [DetachInstancesOptions](#DetachInstancesOptions)
* [detachLoadBalancerTargetGroups](#detachLoadBalancerTargetGroups)
* [detachLoadBalancers](#detachLoadBalancers)
* [disableMetricsCollection](#disableMetricsCollection)
* [DisableMetricsCollectionOptions](#DisableMetricsCollectionOptions)
* [enableMetricsCollection](#enableMetricsCollection)
* [EnableMetricsCollectionOptions](#EnableMetricsCollectionOptions)
* [enterStandby](#enterStandby)
* [EnterStandbyOptions](#EnterStandbyOptions)
* [executePolicy](#executePolicy)
* [ExecutePolicyOptions](#ExecutePolicyOptions)
* [exitStandby](#exitStandby)
* [ExitStandbyOptions](#ExitStandbyOptions)
* [putLifecycleHook](#putLifecycleHook)
* [PutLifecycleHookOptions](#PutLifecycleHookOptions)
* [putNotificationConfiguration](#putNotificationConfiguration)
* [putScalingPolicy](#putScalingPolicy)
* [PutScalingPolicyOptions](#PutScalingPolicyOptions)
* [putScheduledUpdateGroupAction](#putScheduledUpdateGroupAction)
* [PutScheduledUpdateGroupActionOptions](#PutScheduledUpdateGroupActionOptions)
* [recordLifecycleActionHeartbeat](#recordLifecycleActionHeartbeat)
* [RecordLifecycleActionHeartbeatOptions](#RecordLifecycleActionHeartbeatOptions)
* [resumeProcesses](#resumeProcesses)
* [ResumeProcessesOptions](#ResumeProcessesOptions)
* [setDesiredCapacity](#setDesiredCapacity)
* [SetDesiredCapacityOptions](#SetDesiredCapacityOptions)
* [setInstanceHealth](#setInstanceHealth)
* [SetInstanceHealthOptions](#SetInstanceHealthOptions)
* [setInstanceProtection](#setInstanceProtection)
* [suspendProcesses](#suspendProcesses)
* [SuspendProcessesOptions](#SuspendProcessesOptions)
* [terminateInstanceInAutoScalingGroup](#terminateInstanceInAutoScalingGroup)
* [updateAutoScalingGroup](#updateAutoScalingGroup)
* [UpdateAutoScalingGroupOptions](#UpdateAutoScalingGroupOptions)


@docs attachInstances,AttachInstancesOptions,attachLoadBalancerTargetGroups,attachLoadBalancers,completeLifecycleAction,CompleteLifecycleActionOptions,createAutoScalingGroup,CreateAutoScalingGroupOptions,createLaunchConfiguration,CreateLaunchConfigurationOptions,createOrUpdateTags,deleteAutoScalingGroup,DeleteAutoScalingGroupOptions,deleteLaunchConfiguration,deleteLifecycleHook,deleteNotificationConfiguration,deletePolicy,DeletePolicyOptions,deleteScheduledAction,deleteTags,describeAccountLimits,describeAdjustmentTypes,describeAutoScalingGroups,DescribeAutoScalingGroupsOptions,describeAutoScalingInstances,DescribeAutoScalingInstancesOptions,describeAutoScalingNotificationTypes,describeLaunchConfigurations,DescribeLaunchConfigurationsOptions,describeLifecycleHookTypes,describeLifecycleHooks,DescribeLifecycleHooksOptions,describeLoadBalancerTargetGroups,DescribeLoadBalancerTargetGroupsOptions,describeLoadBalancers,DescribeLoadBalancersOptions,describeMetricCollectionTypes,describeNotificationConfigurations,DescribeNotificationConfigurationsOptions,describePolicies,DescribePoliciesOptions,describeScalingActivities,DescribeScalingActivitiesOptions,describeScalingProcessTypes,describeScheduledActions,DescribeScheduledActionsOptions,describeTags,DescribeTagsOptions,describeTerminationPolicyTypes,detachInstances,DetachInstancesOptions,detachLoadBalancerTargetGroups,detachLoadBalancers,disableMetricsCollection,DisableMetricsCollectionOptions,enableMetricsCollection,EnableMetricsCollectionOptions,enterStandby,EnterStandbyOptions,executePolicy,ExecutePolicyOptions,exitStandby,ExitStandbyOptions,putLifecycleHook,PutLifecycleHookOptions,putNotificationConfiguration,putScalingPolicy,PutScalingPolicyOptions,putScheduledUpdateGroupAction,PutScheduledUpdateGroupActionOptions,recordLifecycleActionHeartbeat,RecordLifecycleActionHeartbeatOptions,resumeProcesses,ResumeProcessesOptions,setDesiredCapacity,SetDesiredCapacityOptions,setInstanceHealth,SetInstanceHealthOptions,setInstanceProtection,suspendProcesses,SuspendProcessesOptions,terminateInstanceInAutoScalingGroup,updateAutoScalingGroup,UpdateAutoScalingGroupOptions

## Responses

* [ActivitiesType](#ActivitiesType)
* [ActivityType](#ActivityType)
* [AttachLoadBalancerTargetGroupsResultType](#AttachLoadBalancerTargetGroupsResultType)
* [AttachLoadBalancersResultType](#AttachLoadBalancersResultType)
* [AutoScalingGroupsType](#AutoScalingGroupsType)
* [AutoScalingInstancesType](#AutoScalingInstancesType)
* [CompleteLifecycleActionAnswer](#CompleteLifecycleActionAnswer)
* [DeleteLifecycleHookAnswer](#DeleteLifecycleHookAnswer)
* [DescribeAccountLimitsAnswer](#DescribeAccountLimitsAnswer)
* [DescribeAdjustmentTypesAnswer](#DescribeAdjustmentTypesAnswer)
* [DescribeAutoScalingNotificationTypesAnswer](#DescribeAutoScalingNotificationTypesAnswer)
* [DescribeLifecycleHookTypesAnswer](#DescribeLifecycleHookTypesAnswer)
* [DescribeLifecycleHooksAnswer](#DescribeLifecycleHooksAnswer)
* [DescribeLoadBalancerTargetGroupsResponse](#DescribeLoadBalancerTargetGroupsResponse)
* [DescribeLoadBalancersResponse](#DescribeLoadBalancersResponse)
* [DescribeMetricCollectionTypesAnswer](#DescribeMetricCollectionTypesAnswer)
* [DescribeNotificationConfigurationsAnswer](#DescribeNotificationConfigurationsAnswer)
* [DescribeTerminationPolicyTypesAnswer](#DescribeTerminationPolicyTypesAnswer)
* [DetachInstancesAnswer](#DetachInstancesAnswer)
* [DetachLoadBalancerTargetGroupsResultType](#DetachLoadBalancerTargetGroupsResultType)
* [DetachLoadBalancersResultType](#DetachLoadBalancersResultType)
* [EnterStandbyAnswer](#EnterStandbyAnswer)
* [ExitStandbyAnswer](#ExitStandbyAnswer)
* [LaunchConfigurationsType](#LaunchConfigurationsType)
* [PoliciesType](#PoliciesType)
* [PolicyARNType](#PolicyARNType)
* [ProcessesType](#ProcessesType)
* [PutLifecycleHookAnswer](#PutLifecycleHookAnswer)
* [RecordLifecycleActionHeartbeatAnswer](#RecordLifecycleActionHeartbeatAnswer)
* [ScheduledActionsType](#ScheduledActionsType)
* [SetInstanceProtectionAnswer](#SetInstanceProtectionAnswer)
* [TagsType](#TagsType)


@docs ActivitiesType,ActivityType,AttachLoadBalancerTargetGroupsResultType,AttachLoadBalancersResultType,AutoScalingGroupsType,AutoScalingInstancesType,CompleteLifecycleActionAnswer,DeleteLifecycleHookAnswer,DescribeAccountLimitsAnswer,DescribeAdjustmentTypesAnswer,DescribeAutoScalingNotificationTypesAnswer,DescribeLifecycleHookTypesAnswer,DescribeLifecycleHooksAnswer,DescribeLoadBalancerTargetGroupsResponse,DescribeLoadBalancersResponse,DescribeMetricCollectionTypesAnswer,DescribeNotificationConfigurationsAnswer,DescribeTerminationPolicyTypesAnswer,DetachInstancesAnswer,DetachLoadBalancerTargetGroupsResultType,DetachLoadBalancersResultType,EnterStandbyAnswer,ExitStandbyAnswer,LaunchConfigurationsType,PoliciesType,PolicyARNType,ProcessesType,PutLifecycleHookAnswer,RecordLifecycleActionHeartbeatAnswer,ScheduledActionsType,SetInstanceProtectionAnswer,TagsType

## Records

* [Activity](#Activity)
* [AdjustmentType](#AdjustmentType)
* [Alarm](#Alarm)
* [AutoScalingGroup](#AutoScalingGroup)
* [AutoScalingInstanceDetails](#AutoScalingInstanceDetails)
* [BlockDeviceMapping](#BlockDeviceMapping)
* [Ebs](#Ebs)
* [EnabledMetric](#EnabledMetric)
* [Filter](#Filter)
* [Instance](#Instance)
* [InstanceMonitoring](#InstanceMonitoring)
* [LaunchConfiguration](#LaunchConfiguration)
* [LifecycleHook](#LifecycleHook)
* [LoadBalancerState](#LoadBalancerState)
* [LoadBalancerTargetGroupState](#LoadBalancerTargetGroupState)
* [MetricCollectionType](#MetricCollectionType)
* [MetricGranularityType](#MetricGranularityType)
* [NotificationConfiguration](#NotificationConfiguration)
* [ProcessType](#ProcessType)
* [ScalingPolicy](#ScalingPolicy)
* [ScheduledUpdateGroupAction](#ScheduledUpdateGroupAction)
* [StepAdjustment](#StepAdjustment)
* [SuspendedProcess](#SuspendedProcess)
* [Tag](#Tag)
* [TagDescription](#TagDescription)


@docs Activity,AdjustmentType,Alarm,AutoScalingGroup,AutoScalingInstanceDetails,BlockDeviceMapping,Ebs,EnabledMetric,Filter,Instance,InstanceMonitoring,LaunchConfiguration,LifecycleHook,LoadBalancerState,LoadBalancerTargetGroupState,MetricCollectionType,MetricGranularityType,NotificationConfiguration,ProcessType,ScalingPolicy,ScheduledUpdateGroupAction,StepAdjustment,SuspendedProcess,Tag,TagDescription

## Unions

* [LifecycleState](#LifecycleState)
* [ScalingActivityStatusCode](#ScalingActivityStatusCode)


@docs LifecycleState,ScalingActivityStatusCode

## Exceptions

* [AlreadyExistsFault](#AlreadyExistsFault)
* [InvalidNextToken](#InvalidNextToken)
* [LimitExceededFault](#LimitExceededFault)
* [ResourceContentionFault](#ResourceContentionFault)
* [ResourceInUseFault](#ResourceInUseFault)
* [ScalingActivityInProgressFault](#ScalingActivityInProgressFault)


@docs AlreadyExistsFault,InvalidNextToken,LimitExceededFault,ResourceContentionFault,ResourceInUseFault,ScalingActivityInProgressFault

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
        "autoscaling"
        "2011-01-01"
        "undefined"
        "AWSAUTOSCALING_20110101."
        "autoscaling.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Attaches one or more EC2 instances to the specified Auto Scaling group.</p> <p>When you attach instances, Auto Scaling increases the desired capacity of the group by the number of instances being attached. If the number of instances being attached plus the desired capacity of the group exceeds the maximum size of the group, the operation fails.</p> <p>If there is a Classic load balancer attached to your Auto Scaling group, the instances are also registered with the load balancer. If there are target groups attached to your Auto Scaling group, the instances are also registered with the target groups.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-instance-asg.html">Attach EC2 Instances to Your Auto Scaling Group</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
attachInstances :
    String
    -> (AttachInstancesOptions -> AttachInstancesOptions)
    -> AWS.Http.UnsignedRequest ()
attachInstances autoScalingGroupName setOptions =
  let
    options = setOptions (AttachInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AttachInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a attachInstances request
-}
type alias AttachInstancesOptions =
    { instanceIds : Maybe (List String)
    }



{-| <p>Attaches one or more target groups to the specified Auto Scaling group.</p> <p>To describe the target groups for an Auto Scaling group, use <a>DescribeLoadBalancerTargetGroups</a>. To detach the target group from the Auto Scaling group, use <a>DetachLoadBalancerTargetGroups</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-load-balancer-asg.html">Attach a Load Balancer to Your Auto Scaling Group</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `targetGroupARNs` __:__ `(List String)`


-}
attachLoadBalancerTargetGroups :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest AttachLoadBalancerTargetGroupsResultType
attachLoadBalancerTargetGroups autoScalingGroupName targetGroupARNs =
    AWS.Http.unsignedRequest
        "AttachLoadBalancerTargetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        attachLoadBalancerTargetGroupsResultTypeDecoder



{-| <p>Attaches one or more Classic load balancers to the specified Auto Scaling group.</p> <p>To attach an Application load balancer instead, see <a>AttachLoadBalancerTargetGroups</a>.</p> <p>To describe the load balancers for an Auto Scaling group, use <a>DescribeLoadBalancers</a>. To detach the load balancer from the Auto Scaling group, use <a>DetachLoadBalancers</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/attach-load-balancer-asg.html">Attach a Load Balancer to Your Auto Scaling Group</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `loadBalancerNames` __:__ `(List String)`


-}
attachLoadBalancers :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest AttachLoadBalancersResultType
attachLoadBalancers autoScalingGroupName loadBalancerNames =
    AWS.Http.unsignedRequest
        "AttachLoadBalancers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        attachLoadBalancersResultTypeDecoder



{-| <p>Completes the lifecycle action for the specified token or instance with the specified result.</p> <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:</p> <ol> <li> <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Auto Scaling launches or terminates instances.</p> </li> <li> <p>(Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Auto Scaling to publish lifecycle notifications to the target.</p> </li> <li> <p>Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.</p> </li> <li> <p>If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.</p> </li> <li> <p> <b>If you finish before the timeout period ends, complete the lifecycle action.</b> </p> </li> </ol> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `lifecycleHookName` __:__ `String`
* `autoScalingGroupName` __:__ `String`
* `lifecycleActionResult` __:__ `String`


-}
completeLifecycleAction :
    String
    -> String
    -> String
    -> (CompleteLifecycleActionOptions -> CompleteLifecycleActionOptions)
    -> AWS.Http.UnsignedRequest CompleteLifecycleActionAnswer
completeLifecycleAction lifecycleHookName autoScalingGroupName lifecycleActionResult setOptions =
  let
    options = setOptions (CompleteLifecycleActionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CompleteLifecycleAction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        completeLifecycleActionAnswerDecoder


{-| Options for a completeLifecycleAction request
-}
type alias CompleteLifecycleActionOptions =
    { lifecycleActionToken : Maybe String
    , instanceId : Maybe String
    }



{-| <p>Creates an Auto Scaling group with the specified name and attributes.</p> <p>If you exceed your maximum limit of Auto Scaling groups, which by default is 20 per region, the call fails. For information about viewing and updating this limit, see <a>DescribeAccountLimits</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroup.html">Auto Scaling Groups</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `minSize` __:__ `Int`
* `maxSize` __:__ `Int`


-}
createAutoScalingGroup :
    String
    -> Int
    -> Int
    -> (CreateAutoScalingGroupOptions -> CreateAutoScalingGroupOptions)
    -> AWS.Http.UnsignedRequest ()
createAutoScalingGroup autoScalingGroupName minSize maxSize setOptions =
  let
    options = setOptions (CreateAutoScalingGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateAutoScalingGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a createAutoScalingGroup request
-}
type alias CreateAutoScalingGroupOptions =
    { launchConfigurationName : Maybe String
    , instanceId : Maybe String
    , desiredCapacity : Maybe Int
    , defaultCooldown : Maybe Int
    , availabilityZones : Maybe (List String)
    , loadBalancerNames : Maybe (List String)
    , targetGroupARNs : Maybe (List String)
    , healthCheckType : Maybe String
    , healthCheckGracePeriod : Maybe Int
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    , tags : Maybe (List Tag)
    }



{-| <p>Creates a launch configuration.</p> <p>If you exceed your maximum limit of launch configurations, which by default is 100 per region, the call fails. For information about viewing and updating this limit, see <a>DescribeAccountLimits</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/LaunchConfiguration.html">Launch Configurations</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `launchConfigurationName` __:__ `String`


-}
createLaunchConfiguration :
    String
    -> (CreateLaunchConfigurationOptions -> CreateLaunchConfigurationOptions)
    -> AWS.Http.UnsignedRequest ()
createLaunchConfiguration launchConfigurationName setOptions =
  let
    options = setOptions (CreateLaunchConfigurationOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLaunchConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a createLaunchConfiguration request
-}
type alias CreateLaunchConfigurationOptions =
    { imageId : Maybe String
    , keyName : Maybe String
    , securityGroups : Maybe (List String)
    , classicLinkVPCId : Maybe String
    , classicLinkVPCSecurityGroups : Maybe (List String)
    , userData : Maybe String
    , instanceId : Maybe String
    , instanceType : Maybe String
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , instanceMonitoring : Maybe InstanceMonitoring
    , spotPrice : Maybe String
    , iamInstanceProfile : Maybe String
    , ebsOptimized : Maybe Bool
    , associatePublicIpAddress : Maybe Bool
    , placementTenancy : Maybe String
    }



{-| <p>Creates or updates tags for the specified Auto Scaling group.</p> <p>When you specify a tag with a key that already exists, the operation overwrites the previous tag definition, and you do not get an error message.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/autoscaling-tagging.html">Tagging Auto Scaling Groups and Instances</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `tags` __:__ `(List Tag)`


-}
createOrUpdateTags :
    (List Tag)
    -> AWS.Http.UnsignedRequest ()
createOrUpdateTags tags =
    AWS.Http.unsignedRequest
        "CreateOrUpdateTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified Auto Scaling group.</p> <p>If the group has instances or scaling activities in progress, you must specify the option to force the deletion in order for it to succeed.</p> <p>If the group has policies, deleting the group deletes the policies, the underlying alarm actions, and any alarm that no longer has an associated action.</p> <p>To remove instances from the Auto Scaling group before deleting it, call <a>DetachInstances</a> with the list of instances and the option to decrement the desired capacity so that Auto Scaling does not launch replacement instances.</p> <p>To terminate all instances before deleting the Auto Scaling group, call <a>UpdateAutoScalingGroup</a> and set the minimum size and desired capacity of the Auto Scaling group to zero.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
deleteAutoScalingGroup :
    String
    -> (DeleteAutoScalingGroupOptions -> DeleteAutoScalingGroupOptions)
    -> AWS.Http.UnsignedRequest ()
deleteAutoScalingGroup autoScalingGroupName setOptions =
  let
    options = setOptions (DeleteAutoScalingGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteAutoScalingGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a deleteAutoScalingGroup request
-}
type alias DeleteAutoScalingGroupOptions =
    { forceDelete : Maybe Bool
    }



{-| <p>Deletes the specified launch configuration.</p> <p>The launch configuration must not be attached to an Auto Scaling group. When this call completes, the launch configuration is no longer available for use.</p>

__Required Parameters__

* `launchConfigurationName` __:__ `String`


-}
deleteLaunchConfiguration :
    String
    -> AWS.Http.UnsignedRequest ()
deleteLaunchConfiguration launchConfigurationName =
    AWS.Http.unsignedRequest
        "DeleteLaunchConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified lifecycle hook.</p> <p>If there are any outstanding lifecycle actions, they are completed first (<code>ABANDON</code> for launching instances, <code>CONTINUE</code> for terminating instances).</p>

__Required Parameters__

* `lifecycleHookName` __:__ `String`
* `autoScalingGroupName` __:__ `String`


-}
deleteLifecycleHook :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteLifecycleHookAnswer
deleteLifecycleHook lifecycleHookName autoScalingGroupName =
    AWS.Http.unsignedRequest
        "DeleteLifecycleHook"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteLifecycleHookAnswerDecoder



{-| <p>Deletes the specified notification.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `topicARN` __:__ `String`


-}
deleteNotificationConfiguration :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteNotificationConfiguration autoScalingGroupName topicARN =
    AWS.Http.unsignedRequest
        "DeleteNotificationConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified Auto Scaling policy.</p> <p>Deleting a policy deletes the underlying alarm action, but does not delete the alarm, even if it no longer has an associated action.</p>

__Required Parameters__

* `policyName` __:__ `String`


-}
deletePolicy :
    String
    -> (DeletePolicyOptions -> DeletePolicyOptions)
    -> AWS.Http.UnsignedRequest ()
deletePolicy policyName setOptions =
  let
    options = setOptions (DeletePolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeletePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a deletePolicy request
-}
type alias DeletePolicyOptions =
    { autoScalingGroupName : Maybe String
    }



{-| <p>Deletes the specified scheduled action.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `scheduledActionName` __:__ `String`


-}
deleteScheduledAction :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteScheduledAction autoScalingGroupName scheduledActionName =
    AWS.Http.unsignedRequest
        "DeleteScheduledAction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified tags.</p>

__Required Parameters__

* `tags` __:__ `(List Tag)`


-}
deleteTags :
    (List Tag)
    -> AWS.Http.UnsignedRequest ()
deleteTags tags =
    AWS.Http.unsignedRequest
        "DeleteTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Describes the current Auto Scaling resource limits for your AWS account.</p> <p>For information about requesting an increase in these limits, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">AWS Service Limits</a> in the <i>Amazon Web Services General Reference</i>.</p>

__Required Parameters__



-}
describeAccountLimits :
    AWS.Http.UnsignedRequest DescribeAccountLimitsAnswer
describeAccountLimits =
    AWS.Http.unsignedRequest
        "DescribeAccountLimits"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAccountLimitsAnswerDecoder



{-| <p>Describes the policy adjustment types for use with <a>PutScalingPolicy</a>.</p>

__Required Parameters__



-}
describeAdjustmentTypes :
    AWS.Http.UnsignedRequest DescribeAdjustmentTypesAnswer
describeAdjustmentTypes =
    AWS.Http.unsignedRequest
        "DescribeAdjustmentTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAdjustmentTypesAnswerDecoder



{-| <p>Describes one or more Auto Scaling groups.</p>

__Required Parameters__



-}
describeAutoScalingGroups :
    (DescribeAutoScalingGroupsOptions -> DescribeAutoScalingGroupsOptions)
    -> AWS.Http.UnsignedRequest AutoScalingGroupsType
describeAutoScalingGroups setOptions =
  let
    options = setOptions (DescribeAutoScalingGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAutoScalingGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        autoScalingGroupsTypeDecoder


{-| Options for a describeAutoScalingGroups request
-}
type alias DescribeAutoScalingGroupsOptions =
    { autoScalingGroupNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes one or more Auto Scaling instances.</p>

__Required Parameters__



-}
describeAutoScalingInstances :
    (DescribeAutoScalingInstancesOptions -> DescribeAutoScalingInstancesOptions)
    -> AWS.Http.UnsignedRequest AutoScalingInstancesType
describeAutoScalingInstances setOptions =
  let
    options = setOptions (DescribeAutoScalingInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAutoScalingInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        autoScalingInstancesTypeDecoder


{-| Options for a describeAutoScalingInstances request
-}
type alias DescribeAutoScalingInstancesOptions =
    { instanceIds : Maybe (List String)
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes the notification types that are supported by Auto Scaling.</p>

__Required Parameters__



-}
describeAutoScalingNotificationTypes :
    AWS.Http.UnsignedRequest DescribeAutoScalingNotificationTypesAnswer
describeAutoScalingNotificationTypes =
    AWS.Http.unsignedRequest
        "DescribeAutoScalingNotificationTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAutoScalingNotificationTypesAnswerDecoder



{-| <p>Describes one or more launch configurations.</p>

__Required Parameters__



-}
describeLaunchConfigurations :
    (DescribeLaunchConfigurationsOptions -> DescribeLaunchConfigurationsOptions)
    -> AWS.Http.UnsignedRequest LaunchConfigurationsType
describeLaunchConfigurations setOptions =
  let
    options = setOptions (DescribeLaunchConfigurationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLaunchConfigurations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        launchConfigurationsTypeDecoder


{-| Options for a describeLaunchConfigurations request
-}
type alias DescribeLaunchConfigurationsOptions =
    { launchConfigurationNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes the available types of lifecycle hooks.</p>

__Required Parameters__



-}
describeLifecycleHookTypes :
    AWS.Http.UnsignedRequest DescribeLifecycleHookTypesAnswer
describeLifecycleHookTypes =
    AWS.Http.unsignedRequest
        "DescribeLifecycleHookTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLifecycleHookTypesAnswerDecoder



{-| <p>Describes the lifecycle hooks for the specified Auto Scaling group.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
describeLifecycleHooks :
    String
    -> (DescribeLifecycleHooksOptions -> DescribeLifecycleHooksOptions)
    -> AWS.Http.UnsignedRequest DescribeLifecycleHooksAnswer
describeLifecycleHooks autoScalingGroupName setOptions =
  let
    options = setOptions (DescribeLifecycleHooksOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLifecycleHooks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLifecycleHooksAnswerDecoder


{-| Options for a describeLifecycleHooks request
-}
type alias DescribeLifecycleHooksOptions =
    { lifecycleHookNames : Maybe (List String)
    }



{-| <p>Describes the target groups for the specified Auto Scaling group.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
describeLoadBalancerTargetGroups :
    String
    -> (DescribeLoadBalancerTargetGroupsOptions -> DescribeLoadBalancerTargetGroupsOptions)
    -> AWS.Http.UnsignedRequest DescribeLoadBalancerTargetGroupsResponse
describeLoadBalancerTargetGroups autoScalingGroupName setOptions =
  let
    options = setOptions (DescribeLoadBalancerTargetGroupsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLoadBalancerTargetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBalancerTargetGroupsResponseDecoder


{-| Options for a describeLoadBalancerTargetGroups request
-}
type alias DescribeLoadBalancerTargetGroupsOptions =
    { nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes the load balancers for the specified Auto Scaling group.</p> <p>Note that this operation describes only Classic load balancers. If you have Application load balancers, use <a>DescribeLoadBalancerTargetGroups</a> instead.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
describeLoadBalancers :
    String
    -> (DescribeLoadBalancersOptions -> DescribeLoadBalancersOptions)
    -> AWS.Http.UnsignedRequest DescribeLoadBalancersResponse
describeLoadBalancers autoScalingGroupName setOptions =
  let
    options = setOptions (DescribeLoadBalancersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLoadBalancers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBalancersResponseDecoder


{-| Options for a describeLoadBalancers request
-}
type alias DescribeLoadBalancersOptions =
    { nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes the available CloudWatch metrics for Auto Scaling.</p> <p>Note that the <code>GroupStandbyInstances</code> metric is not returned by default. You must explicitly request this metric when calling <a>EnableMetricsCollection</a>.</p>

__Required Parameters__



-}
describeMetricCollectionTypes :
    AWS.Http.UnsignedRequest DescribeMetricCollectionTypesAnswer
describeMetricCollectionTypes =
    AWS.Http.unsignedRequest
        "DescribeMetricCollectionTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMetricCollectionTypesAnswerDecoder



{-| <p>Describes the notification actions associated with the specified Auto Scaling group.</p>

__Required Parameters__



-}
describeNotificationConfigurations :
    (DescribeNotificationConfigurationsOptions -> DescribeNotificationConfigurationsOptions)
    -> AWS.Http.UnsignedRequest DescribeNotificationConfigurationsAnswer
describeNotificationConfigurations setOptions =
  let
    options = setOptions (DescribeNotificationConfigurationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeNotificationConfigurations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNotificationConfigurationsAnswerDecoder


{-| Options for a describeNotificationConfigurations request
-}
type alias DescribeNotificationConfigurationsOptions =
    { autoScalingGroupNames : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes the policies for the specified Auto Scaling group.</p>

__Required Parameters__



-}
describePolicies :
    (DescribePoliciesOptions -> DescribePoliciesOptions)
    -> AWS.Http.UnsignedRequest PoliciesType
describePolicies setOptions =
  let
    options = setOptions (DescribePoliciesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        policiesTypeDecoder


{-| Options for a describePolicies request
-}
type alias DescribePoliciesOptions =
    { autoScalingGroupName : Maybe String
    , policyNames : Maybe (List String)
    , policyTypes : Maybe (List String)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes one or more scaling activities for the specified Auto Scaling group.</p>

__Required Parameters__



-}
describeScalingActivities :
    (DescribeScalingActivitiesOptions -> DescribeScalingActivitiesOptions)
    -> AWS.Http.UnsignedRequest ActivitiesType
describeScalingActivities setOptions =
  let
    options = setOptions (DescribeScalingActivitiesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeScalingActivities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activitiesTypeDecoder


{-| Options for a describeScalingActivities request
-}
type alias DescribeScalingActivitiesOptions =
    { activityIds : Maybe (List String)
    , autoScalingGroupName : Maybe String
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes the scaling process types for use with <a>ResumeProcesses</a> and <a>SuspendProcesses</a>.</p>

__Required Parameters__



-}
describeScalingProcessTypes :
    AWS.Http.UnsignedRequest ProcessesType
describeScalingProcessTypes =
    AWS.Http.unsignedRequest
        "DescribeScalingProcessTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        processesTypeDecoder



{-| <p>Describes the actions scheduled for your Auto Scaling group that haven't run. To describe the actions that have already run, use <a>DescribeScalingActivities</a>.</p>

__Required Parameters__



-}
describeScheduledActions :
    (DescribeScheduledActionsOptions -> DescribeScheduledActionsOptions)
    -> AWS.Http.UnsignedRequest ScheduledActionsType
describeScheduledActions setOptions =
  let
    options = setOptions (DescribeScheduledActionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeScheduledActions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        scheduledActionsTypeDecoder


{-| Options for a describeScheduledActions request
-}
type alias DescribeScheduledActionsOptions =
    { autoScalingGroupName : Maybe String
    , scheduledActionNames : Maybe (List String)
    , startTime : Maybe Date
    , endTime : Maybe Date
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes the specified tags.</p> <p>You can use filters to limit the results. For example, you can query for the tags for a specific Auto Scaling group. You can specify multiple values for a filter. A tag must match at least one of the specified values for it to be included in the results.</p> <p>You can also specify multiple filters. The result includes information for a particular tag only if it matches all the filters. If there's no match, no special message is returned.</p>

__Required Parameters__



-}
describeTags :
    (DescribeTagsOptions -> DescribeTagsOptions)
    -> AWS.Http.UnsignedRequest TagsType
describeTags setOptions =
  let
    options = setOptions (DescribeTagsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        tagsTypeDecoder


{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    { filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Describes the termination policies supported by Auto Scaling.</p>

__Required Parameters__



-}
describeTerminationPolicyTypes :
    AWS.Http.UnsignedRequest DescribeTerminationPolicyTypesAnswer
describeTerminationPolicyTypes =
    AWS.Http.unsignedRequest
        "DescribeTerminationPolicyTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTerminationPolicyTypesAnswerDecoder



{-| <p>Removes one or more instances from the specified Auto Scaling group.</p> <p>After the instances are detached, you can manage them independently from the rest of the Auto Scaling group.</p> <p>If you do not specify the option to decrement the desired capacity, Auto Scaling launches instances to replace the ones that are detached.</p> <p>If there is a Classic load balancer attached to the Auto Scaling group, the instances are deregistered from the load balancer. If there are target groups attached to the Auto Scaling group, the instances are deregistered from the target groups.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/detach-instance-asg.html">Detach EC2 Instances from Your Auto Scaling Group</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `shouldDecrementDesiredCapacity` __:__ `Bool`


-}
detachInstances :
    String
    -> Bool
    -> (DetachInstancesOptions -> DetachInstancesOptions)
    -> AWS.Http.UnsignedRequest DetachInstancesAnswer
detachInstances autoScalingGroupName shouldDecrementDesiredCapacity setOptions =
  let
    options = setOptions (DetachInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DetachInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detachInstancesAnswerDecoder


{-| Options for a detachInstances request
-}
type alias DetachInstancesOptions =
    { instanceIds : Maybe (List String)
    }



{-| <p>Detaches one or more target groups from the specified Auto Scaling group.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `targetGroupARNs` __:__ `(List String)`


-}
detachLoadBalancerTargetGroups :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest DetachLoadBalancerTargetGroupsResultType
detachLoadBalancerTargetGroups autoScalingGroupName targetGroupARNs =
    AWS.Http.unsignedRequest
        "DetachLoadBalancerTargetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detachLoadBalancerTargetGroupsResultTypeDecoder



{-| <p>Detaches one or more Classic load balancers from the specified Auto Scaling group.</p> <p>Note that this operation detaches only Classic load balancers. If you have Application load balancers, use <a>DetachLoadBalancerTargetGroups</a> instead.</p> <p>When you detach a load balancer, it enters the <code>Removing</code> state while deregistering the instances in the group. When all instances are deregistered, then you can no longer describe the load balancer using <a>DescribeLoadBalancers</a>. Note that the instances remain running.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `loadBalancerNames` __:__ `(List String)`


-}
detachLoadBalancers :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest DetachLoadBalancersResultType
detachLoadBalancers autoScalingGroupName loadBalancerNames =
    AWS.Http.unsignedRequest
        "DetachLoadBalancers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detachLoadBalancersResultTypeDecoder



{-| <p>Disables group metrics for the specified Auto Scaling group.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
disableMetricsCollection :
    String
    -> (DisableMetricsCollectionOptions -> DisableMetricsCollectionOptions)
    -> AWS.Http.UnsignedRequest ()
disableMetricsCollection autoScalingGroupName setOptions =
  let
    options = setOptions (DisableMetricsCollectionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisableMetricsCollection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a disableMetricsCollection request
-}
type alias DisableMetricsCollectionOptions =
    { metrics : Maybe (List String)
    }



{-| <p>Enables group metrics for the specified Auto Scaling group. For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-monitoring.html">Monitoring Your Auto Scaling Groups and Instances</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `granularity` __:__ `String`


-}
enableMetricsCollection :
    String
    -> String
    -> (EnableMetricsCollectionOptions -> EnableMetricsCollectionOptions)
    -> AWS.Http.UnsignedRequest ()
enableMetricsCollection autoScalingGroupName granularity setOptions =
  let
    options = setOptions (EnableMetricsCollectionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "EnableMetricsCollection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a enableMetricsCollection request
-}
type alias EnableMetricsCollectionOptions =
    { metrics : Maybe (List String)
    }



{-| <p>Moves the specified instances into <code>Standby</code> mode.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `shouldDecrementDesiredCapacity` __:__ `Bool`


-}
enterStandby :
    String
    -> Bool
    -> (EnterStandbyOptions -> EnterStandbyOptions)
    -> AWS.Http.UnsignedRequest EnterStandbyAnswer
enterStandby autoScalingGroupName shouldDecrementDesiredCapacity setOptions =
  let
    options = setOptions (EnterStandbyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "EnterStandby"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enterStandbyAnswerDecoder


{-| Options for a enterStandby request
-}
type alias EnterStandbyOptions =
    { instanceIds : Maybe (List String)
    }



{-| <p>Executes the specified policy.</p>

__Required Parameters__

* `policyName` __:__ `String`


-}
executePolicy :
    String
    -> (ExecutePolicyOptions -> ExecutePolicyOptions)
    -> AWS.Http.UnsignedRequest ()
executePolicy policyName setOptions =
  let
    options = setOptions (ExecutePolicyOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ExecutePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a executePolicy request
-}
type alias ExecutePolicyOptions =
    { autoScalingGroupName : Maybe String
    , honorCooldown : Maybe Bool
    , metricValue : Maybe Float
    , breachThreshold : Maybe Float
    }



{-| <p>Moves the specified instances out of <code>Standby</code> mode.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
exitStandby :
    String
    -> (ExitStandbyOptions -> ExitStandbyOptions)
    -> AWS.Http.UnsignedRequest ExitStandbyAnswer
exitStandby autoScalingGroupName setOptions =
  let
    options = setOptions (ExitStandbyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ExitStandby"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        exitStandbyAnswerDecoder


{-| Options for a exitStandby request
-}
type alias ExitStandbyOptions =
    { instanceIds : Maybe (List String)
    }



{-| <p>Creates or updates a lifecycle hook for the specified Auto Scaling Group.</p> <p>A lifecycle hook tells Auto Scaling that you want to perform an action on an instance that is not actively in service; for example, either when the instance launches or before the instance terminates.</p> <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:</p> <ol> <li> <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Auto Scaling launches or terminates instances.</p> </li> <li> <p>(Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Auto Scaling to publish lifecycle notifications to the target.</p> </li> <li> <p> <b>Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.</b> </p> </li> <li> <p>If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.</p> </li> <li> <p>If you finish before the timeout period ends, complete the lifecycle action.</p> </li> </ol> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/lifecycle-hooks.html">Auto Scaling Lifecycle Hooks</a> in the <i>Auto Scaling User Guide</i>.</p> <p>If you exceed your maximum limit of lifecycle hooks, which by default is 50 per Auto Scaling group, the call fails. For information about updating this limit, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">AWS Service Limits</a> in the <i>Amazon Web Services General Reference</i>.</p>

__Required Parameters__

* `lifecycleHookName` __:__ `String`
* `autoScalingGroupName` __:__ `String`


-}
putLifecycleHook :
    String
    -> String
    -> (PutLifecycleHookOptions -> PutLifecycleHookOptions)
    -> AWS.Http.UnsignedRequest PutLifecycleHookAnswer
putLifecycleHook lifecycleHookName autoScalingGroupName setOptions =
  let
    options = setOptions (PutLifecycleHookOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutLifecycleHook"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putLifecycleHookAnswerDecoder


{-| Options for a putLifecycleHook request
-}
type alias PutLifecycleHookOptions =
    { lifecycleTransition : Maybe String
    , roleARN : Maybe String
    , notificationTargetARN : Maybe String
    , notificationMetadata : Maybe String
    , heartbeatTimeout : Maybe Int
    , defaultResult : Maybe String
    }



{-| <p>Configures an Auto Scaling group to send notifications when specified events take place. Subscribers to the specified topic can have messages delivered to an endpoint such as a web server or an email address.</p> <p>This configuration overwrites any existing configuration.</p> <p>For more information see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/ASGettingNotifications.html">Getting SNS Notifications When Your Auto Scaling Group Scales</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `topicARN` __:__ `String`
* `notificationTypes` __:__ `(List String)`


-}
putNotificationConfiguration :
    String
    -> String
    -> (List String)
    -> AWS.Http.UnsignedRequest ()
putNotificationConfiguration autoScalingGroupName topicARN notificationTypes =
    AWS.Http.unsignedRequest
        "PutNotificationConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Creates or updates a policy for an Auto Scaling group. To update an existing policy, use the existing policy name and set the parameters you want to change. Any existing parameter not changed in an update to an existing policy is not changed in this update request.</p> <p>If you exceed your maximum limit of step adjustments, which by default is 20 per region, the call fails. For information about updating this limit, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">AWS Service Limits</a> in the <i>Amazon Web Services General Reference</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `policyName` __:__ `String`
* `adjustmentType` __:__ `String`


-}
putScalingPolicy :
    String
    -> String
    -> String
    -> (PutScalingPolicyOptions -> PutScalingPolicyOptions)
    -> AWS.Http.UnsignedRequest PolicyARNType
putScalingPolicy autoScalingGroupName policyName adjustmentType setOptions =
  let
    options = setOptions (PutScalingPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutScalingPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        policyARNTypeDecoder


{-| Options for a putScalingPolicy request
-}
type alias PutScalingPolicyOptions =
    { policyType : Maybe String
    , minAdjustmentStep : Maybe Int
    , minAdjustmentMagnitude : Maybe Int
    , scalingAdjustment : Maybe Int
    , cooldown : Maybe Int
    , metricAggregationType : Maybe String
    , stepAdjustments : Maybe (List StepAdjustment)
    , estimatedInstanceWarmup : Maybe Int
    }



{-| <p>Creates or updates a scheduled scaling action for an Auto Scaling group. When updating a scheduled scaling action, if you leave a parameter unspecified, the corresponding value remains unchanged.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/schedule_time.html">Scheduled Scaling</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `scheduledActionName` __:__ `String`


-}
putScheduledUpdateGroupAction :
    String
    -> String
    -> (PutScheduledUpdateGroupActionOptions -> PutScheduledUpdateGroupActionOptions)
    -> AWS.Http.UnsignedRequest ()
putScheduledUpdateGroupAction autoScalingGroupName scheduledActionName setOptions =
  let
    options = setOptions (PutScheduledUpdateGroupActionOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutScheduledUpdateGroupAction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a putScheduledUpdateGroupAction request
-}
type alias PutScheduledUpdateGroupActionOptions =
    { time : Maybe Date
    , startTime : Maybe Date
    , endTime : Maybe Date
    , recurrence : Maybe String
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    }



{-| <p>Records a heartbeat for the lifecycle action associated with the specified token or instance. This extends the timeout by the length of time defined using <a>PutLifecycleHook</a>.</p> <p>This step is a part of the procedure for adding a lifecycle hook to an Auto Scaling group:</p> <ol> <li> <p>(Optional) Create a Lambda function and a rule that allows CloudWatch Events to invoke your Lambda function when Auto Scaling launches or terminates instances.</p> </li> <li> <p>(Optional) Create a notification target and an IAM role. The target can be either an Amazon SQS queue or an Amazon SNS topic. The role allows Auto Scaling to publish lifecycle notifications to the target.</p> </li> <li> <p>Create the lifecycle hook. Specify whether the hook is used when the instances launch or terminate.</p> </li> <li> <p> <b>If you need more time, record the lifecycle action heartbeat to keep the instance in a pending state.</b> </p> </li> <li> <p>If you finish before the timeout period ends, complete the lifecycle action.</p> </li> </ol> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `lifecycleHookName` __:__ `String`
* `autoScalingGroupName` __:__ `String`


-}
recordLifecycleActionHeartbeat :
    String
    -> String
    -> (RecordLifecycleActionHeartbeatOptions -> RecordLifecycleActionHeartbeatOptions)
    -> AWS.Http.UnsignedRequest RecordLifecycleActionHeartbeatAnswer
recordLifecycleActionHeartbeat lifecycleHookName autoScalingGroupName setOptions =
  let
    options = setOptions (RecordLifecycleActionHeartbeatOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RecordLifecycleActionHeartbeat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        recordLifecycleActionHeartbeatAnswerDecoder


{-| Options for a recordLifecycleActionHeartbeat request
-}
type alias RecordLifecycleActionHeartbeatOptions =
    { lifecycleActionToken : Maybe String
    , instanceId : Maybe String
    }



{-| <p>Resumes the specified suspended Auto Scaling processes, or all suspended process, for the specified Auto Scaling group.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html">Suspending and Resuming Auto Scaling Processes</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
resumeProcesses :
    String
    -> (ResumeProcessesOptions -> ResumeProcessesOptions)
    -> AWS.Http.UnsignedRequest ()
resumeProcesses autoScalingGroupName setOptions =
  let
    options = setOptions (ResumeProcessesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResumeProcesses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a resumeProcesses request
-}
type alias ResumeProcessesOptions =
    { scalingProcesses : Maybe (List String)
    }



{-| <p>Sets the size of the specified Auto Scaling group.</p> <p>For more information about desired capacity, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/WhatIsAutoScaling.html">What Is Auto Scaling?</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`
* `desiredCapacity` __:__ `Int`


-}
setDesiredCapacity :
    String
    -> Int
    -> (SetDesiredCapacityOptions -> SetDesiredCapacityOptions)
    -> AWS.Http.UnsignedRequest ()
setDesiredCapacity autoScalingGroupName desiredCapacity setOptions =
  let
    options = setOptions (SetDesiredCapacityOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetDesiredCapacity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a setDesiredCapacity request
-}
type alias SetDesiredCapacityOptions =
    { honorCooldown : Maybe Bool
    }



{-| <p>Sets the health status of the specified instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/healthcheck.html">Health Checks</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `healthStatus` __:__ `String`


-}
setInstanceHealth :
    String
    -> String
    -> (SetInstanceHealthOptions -> SetInstanceHealthOptions)
    -> AWS.Http.UnsignedRequest ()
setInstanceHealth instanceId healthStatus setOptions =
  let
    options = setOptions (SetInstanceHealthOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetInstanceHealth"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a setInstanceHealth request
-}
type alias SetInstanceHealthOptions =
    { shouldRespectGracePeriod : Maybe Bool
    }



{-| <p>Updates the instance protection settings of the specified instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-instance-termination.html#instance-protection">Instance Protection</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`
* `autoScalingGroupName` __:__ `String`
* `protectedFromScaleIn` __:__ `Bool`


-}
setInstanceProtection :
    (List String)
    -> String
    -> Bool
    -> AWS.Http.UnsignedRequest SetInstanceProtectionAnswer
setInstanceProtection instanceIds autoScalingGroupName protectedFromScaleIn =
    AWS.Http.unsignedRequest
        "SetInstanceProtection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setInstanceProtectionAnswerDecoder



{-| <p>Suspends the specified Auto Scaling processes, or all processes, for the specified Auto Scaling group.</p> <p>Note that if you suspend either the <code>Launch</code> or <code>Terminate</code> process types, it can prevent other process types from functioning properly.</p> <p>To resume processes that have been suspended, use <a>ResumeProcesses</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html">Suspending and Resuming Auto Scaling Processes</a> in the <i>Auto Scaling User Guide</i>.</p>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
suspendProcesses :
    String
    -> (SuspendProcessesOptions -> SuspendProcessesOptions)
    -> AWS.Http.UnsignedRequest ()
suspendProcesses autoScalingGroupName setOptions =
  let
    options = setOptions (SuspendProcessesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SuspendProcesses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a suspendProcesses request
-}
type alias SuspendProcessesOptions =
    { scalingProcesses : Maybe (List String)
    }



{-| <p>Terminates the specified instance and optionally adjusts the desired group size.</p> <p>This call simply makes a termination request. The instance is not terminated immediately.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `shouldDecrementDesiredCapacity` __:__ `Bool`


-}
terminateInstanceInAutoScalingGroup :
    String
    -> Bool
    -> AWS.Http.UnsignedRequest ActivityType
terminateInstanceInAutoScalingGroup instanceId shouldDecrementDesiredCapacity =
    AWS.Http.unsignedRequest
        "TerminateInstanceInAutoScalingGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activityTypeDecoder



{-| <p>Updates the configuration for the specified Auto Scaling group.</p> <p>To update an Auto Scaling group with a launch configuration with <code>InstanceMonitoring</code> set to <code>False</code>, you must first disable the collection of group metrics. Otherwise, you will get an error. If you have previously enabled the collection of group metrics, you can disable it using <a>DisableMetricsCollection</a>.</p> <p>The new settings are registered upon the completion of this call. Any launch configuration settings take effect on any triggers after this call returns. Scaling activities that are currently in progress aren't affected.</p> <p>Note the following:</p> <ul> <li> <p>If you specify a new value for <code>MinSize</code> without specifying a value for <code>DesiredCapacity</code>, and the new <code>MinSize</code> is larger than the current size of the group, we implicitly call <a>SetDesiredCapacity</a> to set the size of the group to the new value of <code>MinSize</code>.</p> </li> <li> <p>If you specify a new value for <code>MaxSize</code> without specifying a value for <code>DesiredCapacity</code>, and the new <code>MaxSize</code> is smaller than the current size of the group, we implicitly call <a>SetDesiredCapacity</a> to set the size of the group to the new value of <code>MaxSize</code>.</p> </li> <li> <p>All other optional parameters are left unchanged if not specified.</p> </li> </ul>

__Required Parameters__

* `autoScalingGroupName` __:__ `String`


-}
updateAutoScalingGroup :
    String
    -> (UpdateAutoScalingGroupOptions -> UpdateAutoScalingGroupOptions)
    -> AWS.Http.UnsignedRequest ()
updateAutoScalingGroup autoScalingGroupName setOptions =
  let
    options = setOptions (UpdateAutoScalingGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAutoScalingGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateAutoScalingGroup request
-}
type alias UpdateAutoScalingGroupOptions =
    { launchConfigurationName : Maybe String
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    , defaultCooldown : Maybe Int
    , availabilityZones : Maybe (List String)
    , healthCheckType : Maybe String
    , healthCheckGracePeriod : Maybe Int
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    }




{-| Type of HTTP response from activi
-}
type alias ActivitiesType =
    { activities : (List Activity)
    , nextToken : Maybe String
    }



activitiesTypeDecoder : JD.Decoder ActivitiesType
activitiesTypeDecoder =
    JDP.decode ActivitiesType
        |> JDP.required "activities" (JD.list activityDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Describes scaling activity, which is a long-running process that represents a change to your Auto Scaling group, such as changing its size or replacing an instance.</p>
-}
type alias Activity =
    { activityId : String
    , autoScalingGroupName : String
    , description : Maybe String
    , cause : String
    , startTime : Date
    , endTime : Maybe Date
    , statusCode : ScalingActivityStatusCode
    , statusMessage : Maybe String
    , progress : Maybe Int
    , details : Maybe String
    }



activityDecoder : JD.Decoder Activity
activityDecoder =
    JDP.decode Activity
        |> JDP.required "activityId" JD.string
        |> JDP.required "autoScalingGroupName" JD.string
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.required "cause" JD.string
        |> JDP.required "startTime" JDX.date
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.required "statusCode" scalingActivityStatusCodeDecoder
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "progress" (JD.nullable JD.int) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from acti
-}
type alias ActivityType =
    { activity : Maybe Activity
    }



activityTypeDecoder : JD.Decoder ActivityType
activityTypeDecoder =
    JDP.decode ActivityType
        |> JDP.optional "activity" (JD.nullable activityDecoder) Nothing




{-| <p>Describes a policy adjustment type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-scale-based-on-demand.html">Dynamic Scaling</a> in the <i>Auto Scaling User Guide</i>.</p>
-}
type alias AdjustmentType =
    { adjustmentType : Maybe String
    }



adjustmentTypeDecoder : JD.Decoder AdjustmentType
adjustmentTypeDecoder =
    JDP.decode AdjustmentType
        |> JDP.optional "adjustmentType" (JD.nullable JD.string) Nothing




{-| <p>Describes an alarm.</p>
-}
type alias Alarm =
    { alarmName : Maybe String
    , alarmARN : Maybe String
    }



alarmDecoder : JD.Decoder Alarm
alarmDecoder =
    JDP.decode Alarm
        |> JDP.optional "alarmName" (JD.nullable JD.string) Nothing
        |> JDP.optional "alarmARN" (JD.nullable JD.string) Nothing




{-| <p>You already have an Auto Scaling group or launch configuration with this name.</p>
-}
type alias AlreadyExistsFault =
    { message : Maybe String
    }



alreadyExistsFaultDecoder : JD.Decoder AlreadyExistsFault
alreadyExistsFaultDecoder =
    JDP.decode AlreadyExistsFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from attachLoadBalancerTargetGroupsRe
-}
type alias AttachLoadBalancerTargetGroupsResultType =
    { 
    }



attachLoadBalancerTargetGroupsResultTypeDecoder : JD.Decoder AttachLoadBalancerTargetGroupsResultType
attachLoadBalancerTargetGroupsResultTypeDecoder =
    JDP.decode AttachLoadBalancerTargetGroupsResultType



{-| Type of HTTP response from attachLoadBalancersRe
-}
type alias AttachLoadBalancersResultType =
    { 
    }



attachLoadBalancersResultTypeDecoder : JD.Decoder AttachLoadBalancersResultType
attachLoadBalancersResultTypeDecoder =
    JDP.decode AttachLoadBalancersResultType



{-| <p>Describes an Auto Scaling group.</p>
-}
type alias AutoScalingGroup =
    { autoScalingGroupName : String
    , autoScalingGroupARN : Maybe String
    , launchConfigurationName : Maybe String
    , minSize : Int
    , maxSize : Int
    , desiredCapacity : Int
    , defaultCooldown : Int
    , availabilityZones : (List String)
    , loadBalancerNames : Maybe (List String)
    , targetGroupARNs : Maybe (List String)
    , healthCheckType : String
    , healthCheckGracePeriod : Maybe Int
    , instances : Maybe (List Instance)
    , createdTime : Date
    , suspendedProcesses : Maybe (List SuspendedProcess)
    , placementGroup : Maybe String
    , vPCZoneIdentifier : Maybe String
    , enabledMetrics : Maybe (List EnabledMetric)
    , status : Maybe String
    , tags : Maybe (List TagDescription)
    , terminationPolicies : Maybe (List String)
    , newInstancesProtectedFromScaleIn : Maybe Bool
    }



autoScalingGroupDecoder : JD.Decoder AutoScalingGroup
autoScalingGroupDecoder =
    JDP.decode AutoScalingGroup
        |> JDP.required "autoScalingGroupName" JD.string
        |> JDP.optional "autoScalingGroupARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "launchConfigurationName" (JD.nullable JD.string) Nothing
        |> JDP.required "minSize" JD.int
        |> JDP.required "maxSize" JD.int
        |> JDP.required "desiredCapacity" JD.int
        |> JDP.required "defaultCooldown" JD.int
        |> JDP.required "availabilityZones" (JD.list JD.string)
        |> JDP.optional "loadBalancerNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "targetGroupARNs" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.required "healthCheckType" JD.string
        |> JDP.optional "healthCheckGracePeriod" (JD.nullable JD.int) Nothing
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing
        |> JDP.required "createdTime" JDX.date
        |> JDP.optional "suspendedProcesses" (JD.nullable (JD.list suspendedProcessDecoder)) Nothing
        |> JDP.optional "placementGroup" (JD.nullable JD.string) Nothing
        |> JDP.optional "vPCZoneIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "enabledMetrics" (JD.nullable (JD.list enabledMetricDecoder)) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDescriptionDecoder)) Nothing
        |> JDP.optional "terminationPolicies" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "newInstancesProtectedFromScaleIn" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from autoScalingGr
-}
type alias AutoScalingGroupsType =
    { autoScalingGroups : (List AutoScalingGroup)
    , nextToken : Maybe String
    }



autoScalingGroupsTypeDecoder : JD.Decoder AutoScalingGroupsType
autoScalingGroupsTypeDecoder =
    JDP.decode AutoScalingGroupsType
        |> JDP.required "autoScalingGroups" (JD.list autoScalingGroupDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Describes an EC2 instance associated with an Auto Scaling group.</p>
-}
type alias AutoScalingInstanceDetails =
    { instanceId : String
    , autoScalingGroupName : String
    , availabilityZone : String
    , lifecycleState : String
    , healthStatus : String
    , launchConfigurationName : String
    , protectedFromScaleIn : Bool
    }



autoScalingInstanceDetailsDecoder : JD.Decoder AutoScalingInstanceDetails
autoScalingInstanceDetailsDecoder =
    JDP.decode AutoScalingInstanceDetails
        |> JDP.required "instanceId" JD.string
        |> JDP.required "autoScalingGroupName" JD.string
        |> JDP.required "availabilityZone" JD.string
        |> JDP.required "lifecycleState" JD.string
        |> JDP.required "healthStatus" JD.string
        |> JDP.required "launchConfigurationName" JD.string
        |> JDP.required "protectedFromScaleIn" JD.bool




{-| Type of HTTP response from autoScalingInsta
-}
type alias AutoScalingInstancesType =
    { autoScalingInstances : Maybe (List AutoScalingInstanceDetails)
    , nextToken : Maybe String
    }



autoScalingInstancesTypeDecoder : JD.Decoder AutoScalingInstancesType
autoScalingInstancesTypeDecoder =
    JDP.decode AutoScalingInstancesType
        |> JDP.optional "autoScalingInstances" (JD.nullable (JD.list autoScalingInstanceDetailsDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Describes a block device mapping.</p>
-}
type alias BlockDeviceMapping =
    { virtualName : Maybe String
    , deviceName : String
    , ebs : Maybe Ebs
    , noDevice : Maybe Bool
    }



blockDeviceMappingDecoder : JD.Decoder BlockDeviceMapping
blockDeviceMappingDecoder =
    JDP.decode BlockDeviceMapping
        |> JDP.optional "virtualName" (JD.nullable JD.string) Nothing
        |> JDP.required "deviceName" JD.string
        |> JDP.optional "ebs" (JD.nullable ebsDecoder) Nothing
        |> JDP.optional "noDevice" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from completeLifecycleActi
-}
type alias CompleteLifecycleActionAnswer =
    { 
    }



completeLifecycleActionAnswerDecoder : JD.Decoder CompleteLifecycleActionAnswer
completeLifecycleActionAnswerDecoder =
    JDP.decode CompleteLifecycleActionAnswer



{-| Type of HTTP response from deleteLifecycleHo
-}
type alias DeleteLifecycleHookAnswer =
    { 
    }



deleteLifecycleHookAnswerDecoder : JD.Decoder DeleteLifecycleHookAnswer
deleteLifecycleHookAnswerDecoder =
    JDP.decode DeleteLifecycleHookAnswer



{-| Type of HTTP response from describeAccountLimi
-}
type alias DescribeAccountLimitsAnswer =
    { maxNumberOfAutoScalingGroups : Maybe Int
    , maxNumberOfLaunchConfigurations : Maybe Int
    , numberOfAutoScalingGroups : Maybe Int
    , numberOfLaunchConfigurations : Maybe Int
    }



describeAccountLimitsAnswerDecoder : JD.Decoder DescribeAccountLimitsAnswer
describeAccountLimitsAnswerDecoder =
    JDP.decode DescribeAccountLimitsAnswer
        |> JDP.optional "maxNumberOfAutoScalingGroups" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxNumberOfLaunchConfigurations" (JD.nullable JD.int) Nothing
        |> JDP.optional "numberOfAutoScalingGroups" (JD.nullable JD.int) Nothing
        |> JDP.optional "numberOfLaunchConfigurations" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describeAdjustmentTyp
-}
type alias DescribeAdjustmentTypesAnswer =
    { adjustmentTypes : Maybe (List AdjustmentType)
    }



describeAdjustmentTypesAnswerDecoder : JD.Decoder DescribeAdjustmentTypesAnswer
describeAdjustmentTypesAnswerDecoder =
    JDP.decode DescribeAdjustmentTypesAnswer
        |> JDP.optional "adjustmentTypes" (JD.nullable (JD.list adjustmentTypeDecoder)) Nothing




{-| Type of HTTP response from describeAutoScalingNotificationTyp
-}
type alias DescribeAutoScalingNotificationTypesAnswer =
    { autoScalingNotificationTypes : Maybe (List String)
    }



describeAutoScalingNotificationTypesAnswerDecoder : JD.Decoder DescribeAutoScalingNotificationTypesAnswer
describeAutoScalingNotificationTypesAnswerDecoder =
    JDP.decode DescribeAutoScalingNotificationTypesAnswer
        |> JDP.optional "autoScalingNotificationTypes" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from describeLifecycleHookTyp
-}
type alias DescribeLifecycleHookTypesAnswer =
    { lifecycleHookTypes : Maybe (List String)
    }



describeLifecycleHookTypesAnswerDecoder : JD.Decoder DescribeLifecycleHookTypesAnswer
describeLifecycleHookTypesAnswerDecoder =
    JDP.decode DescribeLifecycleHookTypesAnswer
        |> JDP.optional "lifecycleHookTypes" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from describeLifecycleHoo
-}
type alias DescribeLifecycleHooksAnswer =
    { lifecycleHooks : Maybe (List LifecycleHook)
    }



describeLifecycleHooksAnswerDecoder : JD.Decoder DescribeLifecycleHooksAnswer
describeLifecycleHooksAnswerDecoder =
    JDP.decode DescribeLifecycleHooksAnswer
        |> JDP.optional "lifecycleHooks" (JD.nullable (JD.list lifecycleHookDecoder)) Nothing




{-| Type of HTTP response from describeLoadBalancerTargetGroups
-}
type alias DescribeLoadBalancerTargetGroupsResponse =
    { loadBalancerTargetGroups : Maybe (List LoadBalancerTargetGroupState)
    , nextToken : Maybe String
    }



describeLoadBalancerTargetGroupsResponseDecoder : JD.Decoder DescribeLoadBalancerTargetGroupsResponse
describeLoadBalancerTargetGroupsResponseDecoder =
    JDP.decode DescribeLoadBalancerTargetGroupsResponse
        |> JDP.optional "loadBalancerTargetGroups" (JD.nullable (JD.list loadBalancerTargetGroupStateDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeLoadBalancers
-}
type alias DescribeLoadBalancersResponse =
    { loadBalancers : Maybe (List LoadBalancerState)
    , nextToken : Maybe String
    }



describeLoadBalancersResponseDecoder : JD.Decoder DescribeLoadBalancersResponse
describeLoadBalancersResponseDecoder =
    JDP.decode DescribeLoadBalancersResponse
        |> JDP.optional "loadBalancers" (JD.nullable (JD.list loadBalancerStateDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMetricCollectionTyp
-}
type alias DescribeMetricCollectionTypesAnswer =
    { metrics : Maybe (List MetricCollectionType)
    , granularities : Maybe (List MetricGranularityType)
    }



describeMetricCollectionTypesAnswerDecoder : JD.Decoder DescribeMetricCollectionTypesAnswer
describeMetricCollectionTypesAnswerDecoder =
    JDP.decode DescribeMetricCollectionTypesAnswer
        |> JDP.optional "metrics" (JD.nullable (JD.list metricCollectionTypeDecoder)) Nothing
        |> JDP.optional "granularities" (JD.nullable (JD.list metricGranularityTypeDecoder)) Nothing




{-| Type of HTTP response from describeNotificationConfiguratio
-}
type alias DescribeNotificationConfigurationsAnswer =
    { notificationConfigurations : (List NotificationConfiguration)
    , nextToken : Maybe String
    }



describeNotificationConfigurationsAnswerDecoder : JD.Decoder DescribeNotificationConfigurationsAnswer
describeNotificationConfigurationsAnswerDecoder =
    JDP.decode DescribeNotificationConfigurationsAnswer
        |> JDP.required "notificationConfigurations" (JD.list notificationConfigurationDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTerminationPolicyTyp
-}
type alias DescribeTerminationPolicyTypesAnswer =
    { terminationPolicyTypes : Maybe (List String)
    }



describeTerminationPolicyTypesAnswerDecoder : JD.Decoder DescribeTerminationPolicyTypesAnswer
describeTerminationPolicyTypesAnswerDecoder =
    JDP.decode DescribeTerminationPolicyTypesAnswer
        |> JDP.optional "terminationPolicyTypes" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from detachInstanc
-}
type alias DetachInstancesAnswer =
    { activities : Maybe (List Activity)
    }



detachInstancesAnswerDecoder : JD.Decoder DetachInstancesAnswer
detachInstancesAnswerDecoder =
    JDP.decode DetachInstancesAnswer
        |> JDP.optional "activities" (JD.nullable (JD.list activityDecoder)) Nothing




{-| Type of HTTP response from detachLoadBalancerTargetGroupsRe
-}
type alias DetachLoadBalancerTargetGroupsResultType =
    { 
    }



detachLoadBalancerTargetGroupsResultTypeDecoder : JD.Decoder DetachLoadBalancerTargetGroupsResultType
detachLoadBalancerTargetGroupsResultTypeDecoder =
    JDP.decode DetachLoadBalancerTargetGroupsResultType



{-| Type of HTTP response from detachLoadBalancersRe
-}
type alias DetachLoadBalancersResultType =
    { 
    }



detachLoadBalancersResultTypeDecoder : JD.Decoder DetachLoadBalancersResultType
detachLoadBalancersResultTypeDecoder =
    JDP.decode DetachLoadBalancersResultType



{-| <p>Describes an Amazon EBS volume.</p>
-}
type alias Ebs =
    { snapshotId : Maybe String
    , volumeSize : Maybe Int
    , volumeType : Maybe String
    , deleteOnTermination : Maybe Bool
    , iops : Maybe Int
    , encrypted : Maybe Bool
    }



ebsDecoder : JD.Decoder Ebs
ebsDecoder =
    JDP.decode Ebs
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing




{-| <p>Describes an enabled metric.</p>
-}
type alias EnabledMetric =
    { metric : Maybe String
    , granularity : Maybe String
    }



enabledMetricDecoder : JD.Decoder EnabledMetric
enabledMetricDecoder =
    JDP.decode EnabledMetric
        |> JDP.optional "metric" (JD.nullable JD.string) Nothing
        |> JDP.optional "granularity" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from enterStand
-}
type alias EnterStandbyAnswer =
    { activities : Maybe (List Activity)
    }



enterStandbyAnswerDecoder : JD.Decoder EnterStandbyAnswer
enterStandbyAnswerDecoder =
    JDP.decode EnterStandbyAnswer
        |> JDP.optional "activities" (JD.nullable (JD.list activityDecoder)) Nothing




{-| Type of HTTP response from exitStand
-}
type alias ExitStandbyAnswer =
    { activities : Maybe (List Activity)
    }



exitStandbyAnswerDecoder : JD.Decoder ExitStandbyAnswer
exitStandbyAnswerDecoder =
    JDP.decode ExitStandbyAnswer
        |> JDP.optional "activities" (JD.nullable (JD.list activityDecoder)) Nothing




{-| <p>Describes a filter.</p>
-}
type alias Filter =
    { name : Maybe String
    , values : Maybe (List String)
    }



filterDecoder : JD.Decoder Filter
filterDecoder =
    JDP.decode Filter
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Describes an EC2 instance.</p>
-}
type alias Instance =
    { instanceId : String
    , availabilityZone : String
    , lifecycleState : LifecycleState
    , healthStatus : String
    , launchConfigurationName : String
    , protectedFromScaleIn : Bool
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JDP.decode Instance
        |> JDP.required "instanceId" JD.string
        |> JDP.required "availabilityZone" JD.string
        |> JDP.required "lifecycleState" lifecycleStateDecoder
        |> JDP.required "healthStatus" JD.string
        |> JDP.required "launchConfigurationName" JD.string
        |> JDP.required "protectedFromScaleIn" JD.bool




{-| <p>Describes whether instance monitoring is enabled.</p>
-}
type alias InstanceMonitoring =
    { enabled : Maybe Bool
    }



instanceMonitoringDecoder : JD.Decoder InstanceMonitoring
instanceMonitoringDecoder =
    JDP.decode InstanceMonitoring
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing




{-| <p>The <code>NextToken</code> value is not valid.</p>
-}
type alias InvalidNextToken =
    { message : Maybe String
    }



invalidNextTokenDecoder : JD.Decoder InvalidNextToken
invalidNextTokenDecoder =
    JDP.decode InvalidNextToken
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes a launch configuration.</p>
-}
type alias LaunchConfiguration =
    { launchConfigurationName : String
    , launchConfigurationARN : Maybe String
    , imageId : String
    , keyName : Maybe String
    , securityGroups : Maybe (List String)
    , classicLinkVPCId : Maybe String
    , classicLinkVPCSecurityGroups : Maybe (List String)
    , userData : Maybe String
    , instanceType : String
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , instanceMonitoring : Maybe InstanceMonitoring
    , spotPrice : Maybe String
    , iamInstanceProfile : Maybe String
    , createdTime : Date
    , ebsOptimized : Maybe Bool
    , associatePublicIpAddress : Maybe Bool
    , placementTenancy : Maybe String
    }



launchConfigurationDecoder : JD.Decoder LaunchConfiguration
launchConfigurationDecoder =
    JDP.decode LaunchConfiguration
        |> JDP.required "launchConfigurationName" JD.string
        |> JDP.optional "launchConfigurationARN" (JD.nullable JD.string) Nothing
        |> JDP.required "imageId" JD.string
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "classicLinkVPCId" (JD.nullable JD.string) Nothing
        |> JDP.optional "classicLinkVPCSecurityGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "userData" (JD.nullable JD.string) Nothing
        |> JDP.required "instanceType" JD.string
        |> JDP.optional "kernelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list blockDeviceMappingDecoder)) Nothing
        |> JDP.optional "instanceMonitoring" (JD.nullable instanceMonitoringDecoder) Nothing
        |> JDP.optional "spotPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamInstanceProfile" (JD.nullable JD.string) Nothing
        |> JDP.required "createdTime" JDX.date
        |> JDP.optional "ebsOptimized" (JD.nullable JD.bool) Nothing
        |> JDP.optional "associatePublicIpAddress" (JD.nullable JD.bool) Nothing
        |> JDP.optional "placementTenancy" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from launchConfigurat
-}
type alias LaunchConfigurationsType =
    { launchConfigurations : (List LaunchConfiguration)
    , nextToken : Maybe String
    }



launchConfigurationsTypeDecoder : JD.Decoder LaunchConfigurationsType
launchConfigurationsTypeDecoder =
    JDP.decode LaunchConfigurationsType
        |> JDP.required "launchConfigurations" (JD.list launchConfigurationDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Describes a lifecycle hook, which tells Auto Scaling that you want to perform an action when an instance launches or terminates. When you have a lifecycle hook in place, the Auto Scaling group will either:</p> <ul> <li> <p>Pause the instance after it launches, but before it is put into service</p> </li> <li> <p>Pause the instance as it terminates, but before it is fully terminated</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/AutoScalingGroupLifecycle.html">Auto Scaling Lifecycle</a> in the <i>Auto Scaling User Guide</i>.</p>
-}
type alias LifecycleHook =
    { lifecycleHookName : Maybe String
    , autoScalingGroupName : Maybe String
    , lifecycleTransition : Maybe String
    , notificationTargetARN : Maybe String
    , roleARN : Maybe String
    , notificationMetadata : Maybe String
    , heartbeatTimeout : Maybe Int
    , globalTimeout : Maybe Int
    , defaultResult : Maybe String
    }



lifecycleHookDecoder : JD.Decoder LifecycleHook
lifecycleHookDecoder =
    JDP.decode LifecycleHook
        |> JDP.optional "lifecycleHookName" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoScalingGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "lifecycleTransition" (JD.nullable JD.string) Nothing
        |> JDP.optional "notificationTargetARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "notificationMetadata" (JD.nullable JD.string) Nothing
        |> JDP.optional "heartbeatTimeout" (JD.nullable JD.int) Nothing
        |> JDP.optional "globalTimeout" (JD.nullable JD.int) Nothing
        |> JDP.optional "defaultResult" (JD.nullable JD.string) Nothing




{-| One of

* `LifecycleState_Pending`
* `LifecycleState_Pending:Wait`
* `LifecycleState_Pending:Proceed`
* `LifecycleState_Quarantined`
* `LifecycleState_InService`
* `LifecycleState_Terminating`
* `LifecycleState_Terminating:Wait`
* `LifecycleState_Terminating:Proceed`
* `LifecycleState_Terminated`
* `LifecycleState_Detaching`
* `LifecycleState_Detached`
* `LifecycleState_EnteringStandby`
* `LifecycleState_Standby`

-}
type LifecycleState
    = LifecycleState_Pending
    | LifecycleState_Pending_Wait
    | LifecycleState_Pending_Proceed
    | LifecycleState_Quarantined
    | LifecycleState_InService
    | LifecycleState_Terminating
    | LifecycleState_Terminating_Wait
    | LifecycleState_Terminating_Proceed
    | LifecycleState_Terminated
    | LifecycleState_Detaching
    | LifecycleState_Detached
    | LifecycleState_EnteringStandby
    | LifecycleState_Standby



lifecycleStateDecoder : JD.Decoder LifecycleState
lifecycleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed LifecycleState_Pending

                    "Pending_Wait" ->
                        JD.succeed LifecycleState_Pending_Wait

                    "Pending_Proceed" ->
                        JD.succeed LifecycleState_Pending_Proceed

                    "Quarantined" ->
                        JD.succeed LifecycleState_Quarantined

                    "InService" ->
                        JD.succeed LifecycleState_InService

                    "Terminating" ->
                        JD.succeed LifecycleState_Terminating

                    "Terminating_Wait" ->
                        JD.succeed LifecycleState_Terminating_Wait

                    "Terminating_Proceed" ->
                        JD.succeed LifecycleState_Terminating_Proceed

                    "Terminated" ->
                        JD.succeed LifecycleState_Terminated

                    "Detaching" ->
                        JD.succeed LifecycleState_Detaching

                    "Detached" ->
                        JD.succeed LifecycleState_Detached

                    "EnteringStandby" ->
                        JD.succeed LifecycleState_EnteringStandby

                    "Standby" ->
                        JD.succeed LifecycleState_Standby


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>You have already reached a limit for your Auto Scaling resources (for example, groups, launch configurations, or lifecycle hooks). For more information, see <a>DescribeAccountLimits</a>.</p>
-}
type alias LimitExceededFault =
    { message : Maybe String
    }



limitExceededFaultDecoder : JD.Decoder LimitExceededFault
limitExceededFaultDecoder =
    JDP.decode LimitExceededFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes the state of a Classic load balancer.</p> <p>If you specify a load balancer when creating the Auto Scaling group, the state of the load balancer is <code>InService</code>.</p> <p>If you attach a load balancer to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all instances in the group are registered with the load balancer. If ELB health checks are enabled for the load balancer, the state transitions to <code>InService</code> after at least one instance in the group passes the health check. If EC2 health checks are enabled instead, the load balancer remains in the <code>Added</code> state.</p>
-}
type alias LoadBalancerState =
    { loadBalancerName : Maybe String
    , state : Maybe String
    }



loadBalancerStateDecoder : JD.Decoder LoadBalancerState
loadBalancerStateDecoder =
    JDP.decode LoadBalancerState
        |> JDP.optional "loadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing




{-| <p>Describes the state of a target group.</p> <p>If you attach a target group to an existing Auto Scaling group, the initial state is <code>Adding</code>. The state transitions to <code>Added</code> after all Auto Scaling instances are registered with the target group. If ELB health checks are enabled, the state transitions to <code>InService</code> after at least one Auto Scaling instance passes the health check. If EC2 health checks are enabled instead, the target group remains in the <code>Added</code> state.</p>
-}
type alias LoadBalancerTargetGroupState =
    { loadBalancerTargetGroupARN : Maybe String
    , state : Maybe String
    }



loadBalancerTargetGroupStateDecoder : JD.Decoder LoadBalancerTargetGroupState
loadBalancerTargetGroupStateDecoder =
    JDP.decode LoadBalancerTargetGroupState
        |> JDP.optional "loadBalancerTargetGroupARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing




{-| <p>Describes a metric.</p>
-}
type alias MetricCollectionType =
    { metric : Maybe String
    }



metricCollectionTypeDecoder : JD.Decoder MetricCollectionType
metricCollectionTypeDecoder =
    JDP.decode MetricCollectionType
        |> JDP.optional "metric" (JD.nullable JD.string) Nothing




{-| <p>Describes a granularity of a metric.</p>
-}
type alias MetricGranularityType =
    { granularity : Maybe String
    }



metricGranularityTypeDecoder : JD.Decoder MetricGranularityType
metricGranularityTypeDecoder =
    JDP.decode MetricGranularityType
        |> JDP.optional "granularity" (JD.nullable JD.string) Nothing




{-| <p>Describes a notification.</p>
-}
type alias NotificationConfiguration =
    { autoScalingGroupName : Maybe String
    , topicARN : Maybe String
    , notificationType : Maybe String
    }



notificationConfigurationDecoder : JD.Decoder NotificationConfiguration
notificationConfigurationDecoder =
    JDP.decode NotificationConfiguration
        |> JDP.optional "autoScalingGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "topicARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "notificationType" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from poli
-}
type alias PoliciesType =
    { scalingPolicies : Maybe (List ScalingPolicy)
    , nextToken : Maybe String
    }



policiesTypeDecoder : JD.Decoder PoliciesType
policiesTypeDecoder =
    JDP.decode PoliciesType
        |> JDP.optional "scalingPolicies" (JD.nullable (JD.list scalingPolicyDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from polic
-}
type alias PolicyARNType =
    { policyARN : Maybe String
    }



policyARNTypeDecoder : JD.Decoder PolicyARNType
policyARNTypeDecoder =
    JDP.decode PolicyARNType
        |> JDP.optional "policyARN" (JD.nullable JD.string) Nothing




{-| <p>Describes a process type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/autoscaling/latest/userguide/as-suspend-resume-processes.html#process-types">Auto Scaling Processes</a> in the <i>Auto Scaling User Guide</i>.</p>
-}
type alias ProcessType =
    { processName : String
    }



processTypeDecoder : JD.Decoder ProcessType
processTypeDecoder =
    JDP.decode ProcessType
        |> JDP.required "processName" JD.string




{-| Type of HTTP response from proce
-}
type alias ProcessesType =
    { processes : Maybe (List ProcessType)
    }



processesTypeDecoder : JD.Decoder ProcessesType
processesTypeDecoder =
    JDP.decode ProcessesType
        |> JDP.optional "processes" (JD.nullable (JD.list processTypeDecoder)) Nothing




{-| Type of HTTP response from putLifecycleHo
-}
type alias PutLifecycleHookAnswer =
    { 
    }



putLifecycleHookAnswerDecoder : JD.Decoder PutLifecycleHookAnswer
putLifecycleHookAnswerDecoder =
    JDP.decode PutLifecycleHookAnswer



{-| Type of HTTP response from recordLifecycleActionHeartbe
-}
type alias RecordLifecycleActionHeartbeatAnswer =
    { 
    }



recordLifecycleActionHeartbeatAnswerDecoder : JD.Decoder RecordLifecycleActionHeartbeatAnswer
recordLifecycleActionHeartbeatAnswerDecoder =
    JDP.decode RecordLifecycleActionHeartbeatAnswer



{-| <p>You already have a pending update to an Auto Scaling resource (for example, a group, instance, or load balancer).</p>
-}
type alias ResourceContentionFault =
    { message : Maybe String
    }



resourceContentionFaultDecoder : JD.Decoder ResourceContentionFault
resourceContentionFaultDecoder =
    JDP.decode ResourceContentionFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation can't be performed because the resource is in use.</p>
-}
type alias ResourceInUseFault =
    { message : Maybe String
    }



resourceInUseFaultDecoder : JD.Decoder ResourceInUseFault
resourceInUseFaultDecoder =
    JDP.decode ResourceInUseFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation can't be performed because there are scaling activities in progress.</p>
-}
type alias ScalingActivityInProgressFault =
    { message : Maybe String
    }



scalingActivityInProgressFaultDecoder : JD.Decoder ScalingActivityInProgressFault
scalingActivityInProgressFaultDecoder =
    JDP.decode ScalingActivityInProgressFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ScalingActivityStatusCode_PendingSpotBidPlacement`
* `ScalingActivityStatusCode_WaitingForSpotInstanceRequestId`
* `ScalingActivityStatusCode_WaitingForSpotInstanceId`
* `ScalingActivityStatusCode_WaitingForInstanceId`
* `ScalingActivityStatusCode_PreInService`
* `ScalingActivityStatusCode_InProgress`
* `ScalingActivityStatusCode_WaitingForELBConnectionDraining`
* `ScalingActivityStatusCode_MidLifecycleAction`
* `ScalingActivityStatusCode_WaitingForInstanceWarmup`
* `ScalingActivityStatusCode_Successful`
* `ScalingActivityStatusCode_Failed`
* `ScalingActivityStatusCode_Cancelled`

-}
type ScalingActivityStatusCode
    = ScalingActivityStatusCode_PendingSpotBidPlacement
    | ScalingActivityStatusCode_WaitingForSpotInstanceRequestId
    | ScalingActivityStatusCode_WaitingForSpotInstanceId
    | ScalingActivityStatusCode_WaitingForInstanceId
    | ScalingActivityStatusCode_PreInService
    | ScalingActivityStatusCode_InProgress
    | ScalingActivityStatusCode_WaitingForELBConnectionDraining
    | ScalingActivityStatusCode_MidLifecycleAction
    | ScalingActivityStatusCode_WaitingForInstanceWarmup
    | ScalingActivityStatusCode_Successful
    | ScalingActivityStatusCode_Failed
    | ScalingActivityStatusCode_Cancelled



scalingActivityStatusCodeDecoder : JD.Decoder ScalingActivityStatusCode
scalingActivityStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PendingSpotBidPlacement" ->
                        JD.succeed ScalingActivityStatusCode_PendingSpotBidPlacement

                    "WaitingForSpotInstanceRequestId" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForSpotInstanceRequestId

                    "WaitingForSpotInstanceId" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForSpotInstanceId

                    "WaitingForInstanceId" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForInstanceId

                    "PreInService" ->
                        JD.succeed ScalingActivityStatusCode_PreInService

                    "InProgress" ->
                        JD.succeed ScalingActivityStatusCode_InProgress

                    "WaitingForELBConnectionDraining" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForELBConnectionDraining

                    "MidLifecycleAction" ->
                        JD.succeed ScalingActivityStatusCode_MidLifecycleAction

                    "WaitingForInstanceWarmup" ->
                        JD.succeed ScalingActivityStatusCode_WaitingForInstanceWarmup

                    "Successful" ->
                        JD.succeed ScalingActivityStatusCode_Successful

                    "Failed" ->
                        JD.succeed ScalingActivityStatusCode_Failed

                    "Cancelled" ->
                        JD.succeed ScalingActivityStatusCode_Cancelled


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a scaling policy.</p>
-}
type alias ScalingPolicy =
    { autoScalingGroupName : Maybe String
    , policyName : Maybe String
    , policyARN : Maybe String
    , policyType : Maybe String
    , adjustmentType : Maybe String
    , minAdjustmentStep : Maybe Int
    , minAdjustmentMagnitude : Maybe Int
    , scalingAdjustment : Maybe Int
    , cooldown : Maybe Int
    , stepAdjustments : Maybe (List StepAdjustment)
    , metricAggregationType : Maybe String
    , estimatedInstanceWarmup : Maybe Int
    , alarms : Maybe (List Alarm)
    }



scalingPolicyDecoder : JD.Decoder ScalingPolicy
scalingPolicyDecoder =
    JDP.decode ScalingPolicy
        |> JDP.optional "autoScalingGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyType" (JD.nullable JD.string) Nothing
        |> JDP.optional "adjustmentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "minAdjustmentStep" (JD.nullable JD.int) Nothing
        |> JDP.optional "minAdjustmentMagnitude" (JD.nullable JD.int) Nothing
        |> JDP.optional "scalingAdjustment" (JD.nullable JD.int) Nothing
        |> JDP.optional "cooldown" (JD.nullable JD.int) Nothing
        |> JDP.optional "stepAdjustments" (JD.nullable (JD.list stepAdjustmentDecoder)) Nothing
        |> JDP.optional "metricAggregationType" (JD.nullable JD.string) Nothing
        |> JDP.optional "estimatedInstanceWarmup" (JD.nullable JD.int) Nothing
        |> JDP.optional "alarms" (JD.nullable (JD.list alarmDecoder)) Nothing




{-| Type of HTTP response from scheduledAct
-}
type alias ScheduledActionsType =
    { scheduledUpdateGroupActions : Maybe (List ScheduledUpdateGroupAction)
    , nextToken : Maybe String
    }



scheduledActionsTypeDecoder : JD.Decoder ScheduledActionsType
scheduledActionsTypeDecoder =
    JDP.decode ScheduledActionsType
        |> JDP.optional "scheduledUpdateGroupActions" (JD.nullable (JD.list scheduledUpdateGroupActionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Describes a scheduled update to an Auto Scaling group.</p>
-}
type alias ScheduledUpdateGroupAction =
    { autoScalingGroupName : Maybe String
    , scheduledActionName : Maybe String
    , scheduledActionARN : Maybe String
    , time : Maybe Date
    , startTime : Maybe Date
    , endTime : Maybe Date
    , recurrence : Maybe String
    , minSize : Maybe Int
    , maxSize : Maybe Int
    , desiredCapacity : Maybe Int
    }



scheduledUpdateGroupActionDecoder : JD.Decoder ScheduledUpdateGroupAction
scheduledUpdateGroupActionDecoder =
    JDP.decode ScheduledUpdateGroupAction
        |> JDP.optional "autoScalingGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduledActionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduledActionARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "time" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "recurrence" (JD.nullable JD.string) Nothing
        |> JDP.optional "minSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "desiredCapacity" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from setInstanceProtecti
-}
type alias SetInstanceProtectionAnswer =
    { 
    }



setInstanceProtectionAnswerDecoder : JD.Decoder SetInstanceProtectionAnswer
setInstanceProtectionAnswerDecoder =
    JDP.decode SetInstanceProtectionAnswer



{-| <p>Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm.</p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>If you want the adjustment to be triggered when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>If you want the adjustment to be triggered when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
-}
type alias StepAdjustment =
    { metricIntervalLowerBound : Maybe Float
    , metricIntervalUpperBound : Maybe Float
    , scalingAdjustment : Int
    }



stepAdjustmentDecoder : JD.Decoder StepAdjustment
stepAdjustmentDecoder =
    JDP.decode StepAdjustment
        |> JDP.optional "metricIntervalLowerBound" (JD.nullable JD.float) Nothing
        |> JDP.optional "metricIntervalUpperBound" (JD.nullable JD.float) Nothing
        |> JDP.required "scalingAdjustment" JD.int




{-| <p>Describes an Auto Scaling process that has been suspended. For more information, see <a>ProcessType</a>.</p>
-}
type alias SuspendedProcess =
    { processName : Maybe String
    , suspensionReason : Maybe String
    }



suspendedProcessDecoder : JD.Decoder SuspendedProcess
suspendedProcessDecoder =
    JDP.decode SuspendedProcess
        |> JDP.optional "processName" (JD.nullable JD.string) Nothing
        |> JDP.optional "suspensionReason" (JD.nullable JD.string) Nothing




{-| <p>Describes a tag for an Auto Scaling group.</p>
-}
type alias Tag =
    { resourceId : Maybe String
    , resourceType : Maybe String
    , key : String
    , value : Maybe String
    , propagateAtLaunch : Maybe Bool
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "propagateAtLaunch" (JD.nullable JD.bool) Nothing




{-| <p>Describes a tag for an Auto Scaling group.</p>
-}
type alias TagDescription =
    { resourceId : Maybe String
    , resourceType : Maybe String
    , key : Maybe String
    , value : Maybe String
    , propagateAtLaunch : Maybe Bool
    }



tagDescriptionDecoder : JD.Decoder TagDescription
tagDescriptionDecoder =
    JDP.decode TagDescription
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "propagateAtLaunch" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from 
-}
type alias TagsType =
    { tags : Maybe (List TagDescription)
    , nextToken : Maybe String
    }



tagsTypeDecoder : JD.Decoder TagsType
tagsTypeDecoder =
    JDP.decode TagsType
        |> JDP.optional "tags" (JD.nullable (JD.list tagDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




