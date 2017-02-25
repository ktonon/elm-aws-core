module AWS.Services.ApplicationAutoScaling
    exposing
        ( config
        , deleteScalingPolicy
        , deregisterScalableTarget
        , describeScalableTargets
        , DescribeScalableTargetsOptions
        , describeScalingActivities
        , DescribeScalingActivitiesOptions
        , describeScalingPolicies
        , DescribeScalingPoliciesOptions
        , putScalingPolicy
        , PutScalingPolicyOptions
        , registerScalableTarget
        , RegisterScalableTargetOptions
        , AdjustmentType(..)
        , Alarm
        , ConcurrentUpdateException
        , DeleteScalingPolicyResponse
        , DeregisterScalableTargetResponse
        , DescribeScalableTargetsResponse
        , DescribeScalingActivitiesResponse
        , DescribeScalingPoliciesResponse
        , FailedResourceAccessException
        , InternalServiceException
        , InvalidNextTokenException
        , LimitExceededException
        , MetricAggregationType(..)
        , ObjectNotFoundException
        , PolicyType(..)
        , PutScalingPolicyResponse
        , RegisterScalableTargetResponse
        , ScalableDimension(..)
        , ScalableTarget
        , ScalingActivity
        , ScalingActivityStatusCode(..)
        , ScalingPolicy
        , ServiceNamespace(..)
        , StepAdjustment
        , StepScalingPolicyConfiguration
        , ValidationException
        )

{-| <p>With Application Auto Scaling, you can automatically scale your AWS resources. The experience similar to that of <a href="https://aws.amazon.com/autoscaling/">Auto Scaling</a>. You can use Application Auto Scaling to accomplish the following tasks:</p> <ul> <li> <p>Define scaling policies to automatically scale your AWS resources</p> </li> <li> <p>Scale your resources in response to CloudWatch alarms</p> </li> <li> <p>View the history of your scaling events</p> </li> </ul> <p>Application Auto Scaling can scale the following AWS resources:</p> <ul> <li> <p>Amazon ECS services. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html">Service Auto Scaling</a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p> </li> <li> <p>Amazon EC2 Spot fleets. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html">Automatic Scaling for Spot Fleet</a> in the <i>Amazon EC2 User Guide</i>.</p> </li> <li> <p>Amazon EMR clusters. For more information, see <a href="http://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html">Using Automatic Scaling in Amazon EMR</a> in the <i>Amazon EMR Management Guide</i>.</p> </li> </ul> <p>For a list of supported regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#as-app_region">AWS Regions and Endpoints: Application Auto Scaling</a> in the <i>AWS General Reference</i>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [deleteScalingPolicy](#deleteScalingPolicy)
* [deregisterScalableTarget](#deregisterScalableTarget)
* [describeScalableTargets](#describeScalableTargets)
* [DescribeScalableTargetsOptions](#DescribeScalableTargetsOptions)
* [describeScalingActivities](#describeScalingActivities)
* [DescribeScalingActivitiesOptions](#DescribeScalingActivitiesOptions)
* [describeScalingPolicies](#describeScalingPolicies)
* [DescribeScalingPoliciesOptions](#DescribeScalingPoliciesOptions)
* [putScalingPolicy](#putScalingPolicy)
* [PutScalingPolicyOptions](#PutScalingPolicyOptions)
* [registerScalableTarget](#registerScalableTarget)
* [RegisterScalableTargetOptions](#RegisterScalableTargetOptions)


@docs deleteScalingPolicy,deregisterScalableTarget,describeScalableTargets,DescribeScalableTargetsOptions,describeScalingActivities,DescribeScalingActivitiesOptions,describeScalingPolicies,DescribeScalingPoliciesOptions,putScalingPolicy,PutScalingPolicyOptions,registerScalableTarget,RegisterScalableTargetOptions

## Responses

* [DeleteScalingPolicyResponse](#DeleteScalingPolicyResponse)
* [DeregisterScalableTargetResponse](#DeregisterScalableTargetResponse)
* [DescribeScalableTargetsResponse](#DescribeScalableTargetsResponse)
* [DescribeScalingActivitiesResponse](#DescribeScalingActivitiesResponse)
* [DescribeScalingPoliciesResponse](#DescribeScalingPoliciesResponse)
* [PutScalingPolicyResponse](#PutScalingPolicyResponse)
* [RegisterScalableTargetResponse](#RegisterScalableTargetResponse)


@docs DeleteScalingPolicyResponse,DeregisterScalableTargetResponse,DescribeScalableTargetsResponse,DescribeScalingActivitiesResponse,DescribeScalingPoliciesResponse,PutScalingPolicyResponse,RegisterScalableTargetResponse

## Records

* [Alarm](#Alarm)
* [ScalableTarget](#ScalableTarget)
* [ScalingActivity](#ScalingActivity)
* [ScalingPolicy](#ScalingPolicy)
* [StepAdjustment](#StepAdjustment)
* [StepScalingPolicyConfiguration](#StepScalingPolicyConfiguration)


@docs Alarm,ScalableTarget,ScalingActivity,ScalingPolicy,StepAdjustment,StepScalingPolicyConfiguration

## Unions

* [AdjustmentType](#AdjustmentType)
* [MetricAggregationType](#MetricAggregationType)
* [PolicyType](#PolicyType)
* [ScalableDimension](#ScalableDimension)
* [ScalingActivityStatusCode](#ScalingActivityStatusCode)
* [ServiceNamespace](#ServiceNamespace)


@docs AdjustmentType,MetricAggregationType,PolicyType,ScalableDimension,ScalingActivityStatusCode,ServiceNamespace

## Exceptions

* [ConcurrentUpdateException](#ConcurrentUpdateException)
* [FailedResourceAccessException](#FailedResourceAccessException)
* [InternalServiceException](#InternalServiceException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [LimitExceededException](#LimitExceededException)
* [ObjectNotFoundException](#ObjectNotFoundException)
* [ValidationException](#ValidationException)


@docs ConcurrentUpdateException,FailedResourceAccessException,InternalServiceException,InvalidNextTokenException,LimitExceededException,ObjectNotFoundException,ValidationException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "autoscaling"
        "2016-02-06"
        "1.1"
        "AWSAUTOSCALING_20160206."
        "autoscaling.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Deletes the specified Application Auto Scaling scaling policy.</p> <p>Deleting a policy deletes the underlying alarm action, but does not delete the CloudWatch alarm associated with the scaling policy, even if it no longer has an associated action.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}
deleteScalingPolicy :
    String
    -> ServiceNamespace
    -> String
    -> ScalableDimension
    -> AWS.Request DeleteScalingPolicyResponse
deleteScalingPolicy policyName serviceNamespace resourceId scalableDimension =
    AWS.Http.unsignedRequest
        "DeleteScalingPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteScalingPolicyResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deregisters a scalable target.</p> <p>Deregistering a scalable target deletes the scaling policies that are associated with it.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}
deregisterScalableTarget :
    ServiceNamespace
    -> String
    -> ScalableDimension
    -> AWS.Request DeregisterScalableTargetResponse
deregisterScalableTarget serviceNamespace resourceId scalableDimension =
    AWS.Http.unsignedRequest
        "DeregisterScalableTarget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterScalableTargetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Provides descriptive information about the scalable targets in the specified namespace.</p> <p>You can filter the results using the <code>ResourceIds</code> and <code>ScalableDimension</code> parameters.</p> <p>To create a scalable target or update an existing one, see <a>RegisterScalableTarget</a>. If you are no longer using a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`


-}
describeScalableTargets :
    ServiceNamespace
    -> (DescribeScalableTargetsOptions -> DescribeScalableTargetsOptions)
    -> AWS.Request DescribeScalableTargetsResponse
describeScalableTargets serviceNamespace setOptions =
  let
    options = setOptions (DescribeScalableTargetsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeScalableTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeScalableTargetsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeScalableTargets request
-}
type alias DescribeScalableTargetsOptions =
    { resourceIds : Maybe (List String)
    , scalableDimension : Maybe ScalableDimension
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks.</p> <p>You can filter the results using the <code>ResourceId</code> and <code>ScalableDimension</code> parameters.</p> <p>Scaling activities are triggered by CloudWatch alarms that are associated with scaling policies. To view the scaling policies for a service namespace, see <a>DescribeScalingPolicies</a>. To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`


-}
describeScalingActivities :
    ServiceNamespace
    -> (DescribeScalingActivitiesOptions -> DescribeScalingActivitiesOptions)
    -> AWS.Request DescribeScalingActivitiesResponse
describeScalingActivities serviceNamespace setOptions =
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
        describeScalingActivitiesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeScalingActivities request
-}
type alias DescribeScalingActivitiesOptions =
    { resourceId : Maybe String
    , scalableDimension : Maybe ScalableDimension
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Provides descriptive information about the scaling policies in the specified namespace.</p> <p>You can filter the results using the <code>ResourceId</code>, <code>ScalableDimension</code>, and <code>PolicyNames</code> parameters.</p> <p>To create a scaling policy or update an existing one, see <a>PutScalingPolicy</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`


-}
describeScalingPolicies :
    ServiceNamespace
    -> (DescribeScalingPoliciesOptions -> DescribeScalingPoliciesOptions)
    -> AWS.Request DescribeScalingPoliciesResponse
describeScalingPolicies serviceNamespace setOptions =
  let
    options = setOptions (DescribeScalingPoliciesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeScalingPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeScalingPoliciesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeScalingPolicies request
-}
type alias DescribeScalingPoliciesOptions =
    { policyNames : Maybe (List String)
    , resourceId : Maybe String
    , scalableDimension : Maybe ScalableDimension
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Creates or updates a policy for an Application Auto Scaling scalable target.</p> <p>Each scalable target is identified by a service namespace, resource ID, and scalable dimension. A scaling policy applies to the scalable target identified by those three attributes. You cannot create a scaling policy without first registering a scalable target using <a>RegisterScalableTarget</a>.</p> <p>To update a policy, specify its policy name and the parameters that you want to change. Any parameters that you don't specify are not changed by this update request.</p> <p>You can view the scaling policies for a service namespace using <a>DescribeScalingPolicies</a>. If you are no longer using a scaling policy, you can delete it using <a>DeleteScalingPolicy</a>.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}
putScalingPolicy :
    String
    -> ServiceNamespace
    -> String
    -> ScalableDimension
    -> (PutScalingPolicyOptions -> PutScalingPolicyOptions)
    -> AWS.Request PutScalingPolicyResponse
putScalingPolicy policyName serviceNamespace resourceId scalableDimension setOptions =
  let
    options = setOptions (PutScalingPolicyOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutScalingPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putScalingPolicyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a putScalingPolicy request
-}
type alias PutScalingPolicyOptions =
    { policyType : Maybe PolicyType
    , stepScalingPolicyConfiguration : Maybe StepScalingPolicyConfiguration
    }



{-| <p>Registers or updates a scalable target. A scalable target is a resource that Application Auto Scaling can scale out or scale in. After you have registered a scalable target, you can use this operation to update the minimum and maximum values for your scalable dimension.</p> <p>After you register a scalable target, you can create and apply scaling policies using <a>PutScalingPolicy</a>. You can view the scaling policies for a service namespace using <a>DescribeScalableTargets</a>. If you are no longer using a scalable target, you can deregister it using <a>DeregisterScalableTarget</a>.</p>

__Required Parameters__

* `serviceNamespace` __:__ `ServiceNamespace`
* `resourceId` __:__ `String`
* `scalableDimension` __:__ `ScalableDimension`


-}
registerScalableTarget :
    ServiceNamespace
    -> String
    -> ScalableDimension
    -> (RegisterScalableTargetOptions -> RegisterScalableTargetOptions)
    -> AWS.Request RegisterScalableTargetResponse
registerScalableTarget serviceNamespace resourceId scalableDimension setOptions =
  let
    options = setOptions (RegisterScalableTargetOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterScalableTarget"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerScalableTargetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a registerScalableTarget request
-}
type alias RegisterScalableTargetOptions =
    { minCapacity : Maybe Int
    , maxCapacity : Maybe Int
    , roleARN : Maybe String
    }




{-| One of

* `AdjustmentType_ChangeInCapacity`
* `AdjustmentType_PercentChangeInCapacity`
* `AdjustmentType_ExactCapacity`

-}
type AdjustmentType
    = AdjustmentType_ChangeInCapacity
    | AdjustmentType_PercentChangeInCapacity
    | AdjustmentType_ExactCapacity



adjustmentTypeDecoder : JD.Decoder AdjustmentType
adjustmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ChangeInCapacity" ->
                        JD.succeed AdjustmentType_ChangeInCapacity

                    "PercentChangeInCapacity" ->
                        JD.succeed AdjustmentType_PercentChangeInCapacity

                    "ExactCapacity" ->
                        JD.succeed AdjustmentType_ExactCapacity


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a CloudWatch alarm associated with a scaling policy.</p>
-}
type alias Alarm =
    { alarmName : String
    , alarmARN : String
    }



alarmDecoder : JD.Decoder Alarm
alarmDecoder =
    JDP.decode Alarm
        |> JDP.required "alarmName" JD.string
        |> JDP.required "alarmARN" JD.string




{-| <p>Concurrent updates caused an exception, for example, if you request an update to an Application Auto Scaling resource that already has a pending update.</p>
-}
type alias ConcurrentUpdateException =
    { message : Maybe String
    }



concurrentUpdateExceptionDecoder : JD.Decoder ConcurrentUpdateException
concurrentUpdateExceptionDecoder =
    JDP.decode ConcurrentUpdateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteScalingPolicy
-}
type alias DeleteScalingPolicyResponse =
    { 
    }



deleteScalingPolicyResponseDecoder : JD.Decoder DeleteScalingPolicyResponse
deleteScalingPolicyResponseDecoder =
    JDP.decode DeleteScalingPolicyResponse



{-| Type of HTTP response from deregisterScalableTarget
-}
type alias DeregisterScalableTargetResponse =
    { 
    }



deregisterScalableTargetResponseDecoder : JD.Decoder DeregisterScalableTargetResponse
deregisterScalableTargetResponseDecoder =
    JDP.decode DeregisterScalableTargetResponse



{-| Type of HTTP response from describeScalableTargets
-}
type alias DescribeScalableTargetsResponse =
    { scalableTargets : Maybe (List ScalableTarget)
    , nextToken : Maybe String
    }



describeScalableTargetsResponseDecoder : JD.Decoder DescribeScalableTargetsResponse
describeScalableTargetsResponseDecoder =
    JDP.decode DescribeScalableTargetsResponse
        |> JDP.optional "scalableTargets" (JD.nullable (JD.list scalableTargetDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeScalingActivities
-}
type alias DescribeScalingActivitiesResponse =
    { scalingActivities : Maybe (List ScalingActivity)
    , nextToken : Maybe String
    }



describeScalingActivitiesResponseDecoder : JD.Decoder DescribeScalingActivitiesResponse
describeScalingActivitiesResponseDecoder =
    JDP.decode DescribeScalingActivitiesResponse
        |> JDP.optional "scalingActivities" (JD.nullable (JD.list scalingActivityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeScalingPolicies
-}
type alias DescribeScalingPoliciesResponse =
    { scalingPolicies : Maybe (List ScalingPolicy)
    , nextToken : Maybe String
    }



describeScalingPoliciesResponseDecoder : JD.Decoder DescribeScalingPoliciesResponse
describeScalingPoliciesResponseDecoder =
    JDP.decode DescribeScalingPoliciesResponse
        |> JDP.optional "scalingPolicies" (JD.nullable (JD.list scalingPolicyDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Failed access to resources caused an exception. This exception currently only applies to <a>DescribeScalingPolicies</a>. It is thrown when Application Auto Scaling is unable to retrieve the alarms associated with a scaling policy due to a client error, for example, if the role ARN specified for a scalable target does not have the proper permissions to call the CloudWatch <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> API operation on behalf of your account.</p>
-}
type alias FailedResourceAccessException =
    { message : Maybe String
    }



failedResourceAccessExceptionDecoder : JD.Decoder FailedResourceAccessException
failedResourceAccessExceptionDecoder =
    JDP.decode FailedResourceAccessException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The service encountered an internal error.</p>
-}
type alias InternalServiceException =
    { message : Maybe String
    }



internalServiceExceptionDecoder : JD.Decoder InternalServiceException
internalServiceExceptionDecoder =
    JDP.decode InternalServiceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The next token supplied was invalid.</p>
-}
type alias InvalidNextTokenException =
    { message : Maybe String
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Your account exceeded a limit. This exception is thrown when a per-account resource limit is exceeded. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_as-app">Application Auto Scaling Limits</a>.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `MetricAggregationType_Average`
* `MetricAggregationType_Minimum`
* `MetricAggregationType_Maximum`

-}
type MetricAggregationType
    = MetricAggregationType_Average
    | MetricAggregationType_Minimum
    | MetricAggregationType_Maximum



metricAggregationTypeDecoder : JD.Decoder MetricAggregationType
metricAggregationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Average" ->
                        JD.succeed MetricAggregationType_Average

                    "Minimum" ->
                        JD.succeed MetricAggregationType_Minimum

                    "Maximum" ->
                        JD.succeed MetricAggregationType_Maximum


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified object could not be found. For any <code>Put</code> or <code>Register</code> API operation, which depends on the existence of a scalable target, this exception is thrown if the scalable target with the specified service namespace, resource ID, and scalable dimension does not exist. For any <code>Delete</code> or <code>Deregister</code> API operation, this exception is thrown if the resource that is to be deleted or deregistered cannot be found.</p>
-}
type alias ObjectNotFoundException =
    { message : Maybe String
    }



objectNotFoundExceptionDecoder : JD.Decoder ObjectNotFoundException
objectNotFoundExceptionDecoder =
    JDP.decode ObjectNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `PolicyType_StepScaling`

-}
type PolicyType
    = PolicyType_StepScaling



policyTypeDecoder : JD.Decoder PolicyType
policyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "StepScaling" ->
                        JD.succeed PolicyType_StepScaling


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putScalingPolicy
-}
type alias PutScalingPolicyResponse =
    { policyARN : String
    }



putScalingPolicyResponseDecoder : JD.Decoder PutScalingPolicyResponse
putScalingPolicyResponseDecoder =
    JDP.decode PutScalingPolicyResponse
        |> JDP.required "policyARN" JD.string




{-| Type of HTTP response from registerScalableTarget
-}
type alias RegisterScalableTargetResponse =
    { 
    }



registerScalableTargetResponseDecoder : JD.Decoder RegisterScalableTargetResponse
registerScalableTargetResponseDecoder =
    JDP.decode RegisterScalableTargetResponse



{-| One of

* `ScalableDimension_ecs:service:DesiredCount`
* `ScalableDimension_ec2:spot-fleet-request:TargetCapacity`
* `ScalableDimension_elasticmapreduce:instancegroup:InstanceCount`

-}
type ScalableDimension
    = ScalableDimension_ecs_service_DesiredCount
    | ScalableDimension_ec2_spot_fleet_request_TargetCapacity
    | ScalableDimension_elasticmapreduce_instancegroup_InstanceCount



scalableDimensionDecoder : JD.Decoder ScalableDimension
scalableDimensionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ecs_service_DesiredCount" ->
                        JD.succeed ScalableDimension_ecs_service_DesiredCount

                    "ec2_spot_fleet_request_TargetCapacity" ->
                        JD.succeed ScalableDimension_ec2_spot_fleet_request_TargetCapacity

                    "elasticmapreduce_instancegroup_InstanceCount" ->
                        JD.succeed ScalableDimension_elasticmapreduce_instancegroup_InstanceCount


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a scalable target.</p>
-}
type alias ScalableTarget =
    { serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , minCapacity : Int
    , maxCapacity : Int
    , roleARN : String
    , creationTime : Date
    }



scalableTargetDecoder : JD.Decoder ScalableTarget
scalableTargetDecoder =
    JDP.decode ScalableTarget
        |> JDP.required "serviceNamespace" serviceNamespaceDecoder
        |> JDP.required "resourceId" JD.string
        |> JDP.required "scalableDimension" scalableDimensionDecoder
        |> JDP.required "minCapacity" JD.int
        |> JDP.required "maxCapacity" JD.int
        |> JDP.required "roleARN" JD.string
        |> JDP.required "creationTime" JDX.date




{-| <p>Represents a scaling activity.</p>
-}
type alias ScalingActivity =
    { activityId : String
    , serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , description : String
    , cause : String
    , startTime : Date
    , endTime : Maybe Date
    , statusCode : ScalingActivityStatusCode
    , statusMessage : Maybe String
    , details : Maybe String
    }



scalingActivityDecoder : JD.Decoder ScalingActivity
scalingActivityDecoder =
    JDP.decode ScalingActivity
        |> JDP.required "activityId" JD.string
        |> JDP.required "serviceNamespace" serviceNamespaceDecoder
        |> JDP.required "resourceId" JD.string
        |> JDP.required "scalableDimension" scalableDimensionDecoder
        |> JDP.required "description" JD.string
        |> JDP.required "cause" JD.string
        |> JDP.required "startTime" JDX.date
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.required "statusCode" scalingActivityStatusCodeDecoder
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "details" (JD.nullable JD.string) Nothing




{-| One of

* `ScalingActivityStatusCode_Pending`
* `ScalingActivityStatusCode_InProgress`
* `ScalingActivityStatusCode_Successful`
* `ScalingActivityStatusCode_Overridden`
* `ScalingActivityStatusCode_Unfulfilled`
* `ScalingActivityStatusCode_Failed`

-}
type ScalingActivityStatusCode
    = ScalingActivityStatusCode_Pending
    | ScalingActivityStatusCode_InProgress
    | ScalingActivityStatusCode_Successful
    | ScalingActivityStatusCode_Overridden
    | ScalingActivityStatusCode_Unfulfilled
    | ScalingActivityStatusCode_Failed



scalingActivityStatusCodeDecoder : JD.Decoder ScalingActivityStatusCode
scalingActivityStatusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed ScalingActivityStatusCode_Pending

                    "InProgress" ->
                        JD.succeed ScalingActivityStatusCode_InProgress

                    "Successful" ->
                        JD.succeed ScalingActivityStatusCode_Successful

                    "Overridden" ->
                        JD.succeed ScalingActivityStatusCode_Overridden

                    "Unfulfilled" ->
                        JD.succeed ScalingActivityStatusCode_Unfulfilled

                    "Failed" ->
                        JD.succeed ScalingActivityStatusCode_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a scaling policy.</p>
-}
type alias ScalingPolicy =
    { policyARN : String
    , policyName : String
    , serviceNamespace : ServiceNamespace
    , resourceId : String
    , scalableDimension : ScalableDimension
    , policyType : PolicyType
    , stepScalingPolicyConfiguration : Maybe StepScalingPolicyConfiguration
    , alarms : Maybe (List Alarm)
    , creationTime : Date
    }



scalingPolicyDecoder : JD.Decoder ScalingPolicy
scalingPolicyDecoder =
    JDP.decode ScalingPolicy
        |> JDP.required "policyARN" JD.string
        |> JDP.required "policyName" JD.string
        |> JDP.required "serviceNamespace" serviceNamespaceDecoder
        |> JDP.required "resourceId" JD.string
        |> JDP.required "scalableDimension" scalableDimensionDecoder
        |> JDP.required "policyType" policyTypeDecoder
        |> JDP.optional "stepScalingPolicyConfiguration" (JD.nullable stepScalingPolicyConfigurationDecoder) Nothing
        |> JDP.optional "alarms" (JD.nullable (JD.list alarmDecoder)) Nothing
        |> JDP.required "creationTime" JDX.date




{-| One of

* `ServiceNamespace_ecs`
* `ServiceNamespace_elasticmapreduce`
* `ServiceNamespace_ec2`

-}
type ServiceNamespace
    = ServiceNamespace_ecs
    | ServiceNamespace_elasticmapreduce
    | ServiceNamespace_ec2



serviceNamespaceDecoder : JD.Decoder ServiceNamespace
serviceNamespaceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ecs" ->
                        JD.succeed ServiceNamespace_ecs

                    "elasticmapreduce" ->
                        JD.succeed ServiceNamespace_elasticmapreduce

                    "ec2" ->
                        JD.succeed ServiceNamespace_ec2


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a step adjustment for a <a>StepScalingPolicyConfiguration</a>. Describes an adjustment based on the difference between the value of the aggregated CloudWatch metric and the breach threshold that you've defined for the alarm. </p> <p>For the following examples, suppose that you have an alarm with a breach threshold of 50:</p> <ul> <li> <p>To trigger the adjustment when the metric is greater than or equal to 50 and less than 60, specify a lower bound of 0 and an upper bound of 10.</p> </li> <li> <p>To trigger the adjustment when the metric is greater than 40 and less than or equal to 50, specify a lower bound of -10 and an upper bound of 0.</p> </li> </ul> <p>There are a few rules for the step adjustments for your step policy:</p> <ul> <li> <p>The ranges of your step adjustments can't overlap or have a gap.</p> </li> <li> <p>At most one step adjustment can have a null lower bound. If one step adjustment has a negative lower bound, then there must be a step adjustment with a null lower bound.</p> </li> <li> <p>At most one step adjustment can have a null upper bound. If one step adjustment has a positive upper bound, then there must be a step adjustment with a null upper bound.</p> </li> <li> <p>The upper and lower bound can't be null in the same step adjustment.</p> </li> </ul>
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




{-| <p>Represents a step scaling policy configuration.</p>
-}
type alias StepScalingPolicyConfiguration =
    { adjustmentType : Maybe AdjustmentType
    , stepAdjustments : Maybe (List StepAdjustment)
    , minAdjustmentMagnitude : Maybe Int
    , cooldown : Maybe Int
    , metricAggregationType : Maybe MetricAggregationType
    }



stepScalingPolicyConfigurationDecoder : JD.Decoder StepScalingPolicyConfiguration
stepScalingPolicyConfigurationDecoder =
    JDP.decode StepScalingPolicyConfiguration
        |> JDP.optional "adjustmentType" (JD.nullable adjustmentTypeDecoder) Nothing
        |> JDP.optional "stepAdjustments" (JD.nullable (JD.list stepAdjustmentDecoder)) Nothing
        |> JDP.optional "minAdjustmentMagnitude" (JD.nullable JD.int) Nothing
        |> JDP.optional "cooldown" (JD.nullable JD.int) Nothing
        |> JDP.optional "metricAggregationType" (JD.nullable metricAggregationTypeDecoder) Nothing




{-| <p>An exception was thrown for a validation issue. Review the available parameters for the API request.</p>
-}
type alias ValidationException =
    { message : Maybe String
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




