module AWS.Services.ElasticLoadBalancingv2
    exposing
        ( config
        , addTags
        , createListener
        , CreateListenerOptions
        , createLoadBalancer
        , CreateLoadBalancerOptions
        , createRule
        , createTargetGroup
        , CreateTargetGroupOptions
        , deleteListener
        , deleteLoadBalancer
        , deleteRule
        , deleteTargetGroup
        , deregisterTargets
        , describeListeners
        , DescribeListenersOptions
        , describeLoadBalancerAttributes
        , describeLoadBalancers
        , DescribeLoadBalancersOptions
        , describeRules
        , DescribeRulesOptions
        , describeSSLPolicies
        , DescribeSSLPoliciesOptions
        , describeTags
        , describeTargetGroupAttributes
        , describeTargetGroups
        , DescribeTargetGroupsOptions
        , describeTargetHealth
        , DescribeTargetHealthOptions
        , modifyListener
        , ModifyListenerOptions
        , modifyLoadBalancerAttributes
        , modifyRule
        , ModifyRuleOptions
        , modifyTargetGroup
        , ModifyTargetGroupOptions
        , modifyTargetGroupAttributes
        , registerTargets
        , removeTags
        , setIpAddressType
        , setRulePriorities
        , setSecurityGroups
        , setSubnets
        , Action
        , ActionTypeEnum(..)
        , AddTagsOutput
        , AvailabilityZone
        , Certificate
        , CertificateNotFoundException
        , Cipher
        , CreateListenerOutput
        , CreateLoadBalancerOutput
        , CreateRuleOutput
        , CreateTargetGroupOutput
        , DeleteListenerOutput
        , DeleteLoadBalancerOutput
        , DeleteRuleOutput
        , DeleteTargetGroupOutput
        , DeregisterTargetsOutput
        , DescribeListenersOutput
        , DescribeLoadBalancerAttributesOutput
        , DescribeLoadBalancersOutput
        , DescribeRulesOutput
        , DescribeSSLPoliciesOutput
        , DescribeTagsOutput
        , DescribeTargetGroupAttributesOutput
        , DescribeTargetGroupsOutput
        , DescribeTargetHealthOutput
        , DuplicateListenerException
        , DuplicateLoadBalancerNameException
        , DuplicateTagKeysException
        , DuplicateTargetGroupNameException
        , HealthUnavailableException
        , IncompatibleProtocolsException
        , InvalidConfigurationRequestException
        , InvalidSchemeException
        , InvalidSecurityGroupException
        , InvalidSubnetException
        , InvalidTargetException
        , IpAddressType(..)
        , Listener
        , ListenerNotFoundException
        , LoadBalancer
        , LoadBalancerAttribute
        , LoadBalancerNotFoundException
        , LoadBalancerSchemeEnum(..)
        , LoadBalancerState
        , LoadBalancerStateEnum(..)
        , LoadBalancerTypeEnum(..)
        , Matcher
        , ModifyListenerOutput
        , ModifyLoadBalancerAttributesOutput
        , ModifyRuleOutput
        , ModifyTargetGroupAttributesOutput
        , ModifyTargetGroupOutput
        , OperationNotPermittedException
        , PriorityInUseException
        , ProtocolEnum(..)
        , RegisterTargetsOutput
        , RemoveTagsOutput
        , ResourceInUseException
        , Rule
        , RuleCondition
        , RuleNotFoundException
        , RulePriorityPair
        , SSLPolicyNotFoundException
        , SetIpAddressTypeOutput
        , SetRulePrioritiesOutput
        , SetSecurityGroupsOutput
        , SetSubnetsOutput
        , SslPolicy
        , SubnetNotFoundException
        , Tag
        , TagDescription
        , TargetDescription
        , TargetGroup
        , TargetGroupAssociationLimitException
        , TargetGroupAttribute
        , TargetGroupNotFoundException
        , TargetHealth
        , TargetHealthDescription
        , TargetHealthReasonEnum(..)
        , TargetHealthStateEnum(..)
        , TooManyCertificatesException
        , TooManyListenersException
        , TooManyLoadBalancersException
        , TooManyRegistrationsForTargetIdException
        , TooManyRulesException
        , TooManyTagsException
        , TooManyTargetGroupsException
        , TooManyTargetsException
        , UnsupportedProtocolException
        )

{-| <fullname>Elastic Load Balancing</fullname> <p>A load balancer distributes incoming traffic across targets, such as your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered targets and ensures that it routes traffic only to healthy targets. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer. You configure a target group with a protocol and port number for connections from the load balancer to the targets, and with health check settings to be used when checking the health status of the targets.</p> <p>Elastic Load Balancing supports two types of load balancers: Classic Load Balancers and Application Load Balancers. A Classic Load Balancer makes routing and load balancing decisions either at the transport layer (TCP/SSL) or the application layer (HTTP/HTTPS), and supports either EC2-Classic or a VPC. An Application Load Balancer makes routing and load balancing decisions at the application layer (HTTP/HTTPS), supports path-based routing, and can route requests to one or more ports on each EC2 instance or container instance in your virtual private cloud (VPC). For more information, see the <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/">Elastic Load Balancing User Guide</a>.</p> <p>This reference covers the 2015-12-01 API, which supports Application Load Balancers. The 2012-06-01 API supports Classic Load Balancers.</p> <p>To get started, complete the following tasks:</p> <ol> <li> <p>Create an Application Load Balancer using <a>CreateLoadBalancer</a>.</p> </li> <li> <p>Create a target group using <a>CreateTargetGroup</a>.</p> </li> <li> <p>Register targets for the target group using <a>RegisterTargets</a>.</p> </li> <li> <p>Create one or more listeners for your load balancer using <a>CreateListener</a>.</p> </li> <li> <p>(Optional) Create one or more rules for content routing based on URL using <a>CreateRule</a>.</p> </li> </ol> <p>To delete an Application Load Balancer and its related resources, complete the following tasks:</p> <ol> <li> <p>Delete the load balancer using <a>DeleteLoadBalancer</a>.</p> </li> <li> <p>Delete the target group using <a>DeleteTargetGroup</a>.</p> </li> </ol> <p>All Elastic Load Balancing operations are idempotent, which means that they complete at most one time. If you repeat an operation, it succeeds.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTags](#addTags)
* [createListener](#createListener)
* [CreateListenerOptions](#CreateListenerOptions)
* [createLoadBalancer](#createLoadBalancer)
* [CreateLoadBalancerOptions](#CreateLoadBalancerOptions)
* [createRule](#createRule)
* [createTargetGroup](#createTargetGroup)
* [CreateTargetGroupOptions](#CreateTargetGroupOptions)
* [deleteListener](#deleteListener)
* [deleteLoadBalancer](#deleteLoadBalancer)
* [deleteRule](#deleteRule)
* [deleteTargetGroup](#deleteTargetGroup)
* [deregisterTargets](#deregisterTargets)
* [describeListeners](#describeListeners)
* [DescribeListenersOptions](#DescribeListenersOptions)
* [describeLoadBalancerAttributes](#describeLoadBalancerAttributes)
* [describeLoadBalancers](#describeLoadBalancers)
* [DescribeLoadBalancersOptions](#DescribeLoadBalancersOptions)
* [describeRules](#describeRules)
* [DescribeRulesOptions](#DescribeRulesOptions)
* [describeSSLPolicies](#describeSSLPolicies)
* [DescribeSSLPoliciesOptions](#DescribeSSLPoliciesOptions)
* [describeTags](#describeTags)
* [describeTargetGroupAttributes](#describeTargetGroupAttributes)
* [describeTargetGroups](#describeTargetGroups)
* [DescribeTargetGroupsOptions](#DescribeTargetGroupsOptions)
* [describeTargetHealth](#describeTargetHealth)
* [DescribeTargetHealthOptions](#DescribeTargetHealthOptions)
* [modifyListener](#modifyListener)
* [ModifyListenerOptions](#ModifyListenerOptions)
* [modifyLoadBalancerAttributes](#modifyLoadBalancerAttributes)
* [modifyRule](#modifyRule)
* [ModifyRuleOptions](#ModifyRuleOptions)
* [modifyTargetGroup](#modifyTargetGroup)
* [ModifyTargetGroupOptions](#ModifyTargetGroupOptions)
* [modifyTargetGroupAttributes](#modifyTargetGroupAttributes)
* [registerTargets](#registerTargets)
* [removeTags](#removeTags)
* [setIpAddressType](#setIpAddressType)
* [setRulePriorities](#setRulePriorities)
* [setSecurityGroups](#setSecurityGroups)
* [setSubnets](#setSubnets)


@docs addTags,createListener,CreateListenerOptions,createLoadBalancer,CreateLoadBalancerOptions,createRule,createTargetGroup,CreateTargetGroupOptions,deleteListener,deleteLoadBalancer,deleteRule,deleteTargetGroup,deregisterTargets,describeListeners,DescribeListenersOptions,describeLoadBalancerAttributes,describeLoadBalancers,DescribeLoadBalancersOptions,describeRules,DescribeRulesOptions,describeSSLPolicies,DescribeSSLPoliciesOptions,describeTags,describeTargetGroupAttributes,describeTargetGroups,DescribeTargetGroupsOptions,describeTargetHealth,DescribeTargetHealthOptions,modifyListener,ModifyListenerOptions,modifyLoadBalancerAttributes,modifyRule,ModifyRuleOptions,modifyTargetGroup,ModifyTargetGroupOptions,modifyTargetGroupAttributes,registerTargets,removeTags,setIpAddressType,setRulePriorities,setSecurityGroups,setSubnets

## Responses

* [AddTagsOutput](#AddTagsOutput)
* [CreateListenerOutput](#CreateListenerOutput)
* [CreateLoadBalancerOutput](#CreateLoadBalancerOutput)
* [CreateRuleOutput](#CreateRuleOutput)
* [CreateTargetGroupOutput](#CreateTargetGroupOutput)
* [DeleteListenerOutput](#DeleteListenerOutput)
* [DeleteLoadBalancerOutput](#DeleteLoadBalancerOutput)
* [DeleteRuleOutput](#DeleteRuleOutput)
* [DeleteTargetGroupOutput](#DeleteTargetGroupOutput)
* [DeregisterTargetsOutput](#DeregisterTargetsOutput)
* [DescribeListenersOutput](#DescribeListenersOutput)
* [DescribeLoadBalancerAttributesOutput](#DescribeLoadBalancerAttributesOutput)
* [DescribeLoadBalancersOutput](#DescribeLoadBalancersOutput)
* [DescribeRulesOutput](#DescribeRulesOutput)
* [DescribeSSLPoliciesOutput](#DescribeSSLPoliciesOutput)
* [DescribeTagsOutput](#DescribeTagsOutput)
* [DescribeTargetGroupAttributesOutput](#DescribeTargetGroupAttributesOutput)
* [DescribeTargetGroupsOutput](#DescribeTargetGroupsOutput)
* [DescribeTargetHealthOutput](#DescribeTargetHealthOutput)
* [ModifyListenerOutput](#ModifyListenerOutput)
* [ModifyLoadBalancerAttributesOutput](#ModifyLoadBalancerAttributesOutput)
* [ModifyRuleOutput](#ModifyRuleOutput)
* [ModifyTargetGroupAttributesOutput](#ModifyTargetGroupAttributesOutput)
* [ModifyTargetGroupOutput](#ModifyTargetGroupOutput)
* [RegisterTargetsOutput](#RegisterTargetsOutput)
* [RemoveTagsOutput](#RemoveTagsOutput)
* [SetIpAddressTypeOutput](#SetIpAddressTypeOutput)
* [SetRulePrioritiesOutput](#SetRulePrioritiesOutput)
* [SetSecurityGroupsOutput](#SetSecurityGroupsOutput)
* [SetSubnetsOutput](#SetSubnetsOutput)


@docs AddTagsOutput,CreateListenerOutput,CreateLoadBalancerOutput,CreateRuleOutput,CreateTargetGroupOutput,DeleteListenerOutput,DeleteLoadBalancerOutput,DeleteRuleOutput,DeleteTargetGroupOutput,DeregisterTargetsOutput,DescribeListenersOutput,DescribeLoadBalancerAttributesOutput,DescribeLoadBalancersOutput,DescribeRulesOutput,DescribeSSLPoliciesOutput,DescribeTagsOutput,DescribeTargetGroupAttributesOutput,DescribeTargetGroupsOutput,DescribeTargetHealthOutput,ModifyListenerOutput,ModifyLoadBalancerAttributesOutput,ModifyRuleOutput,ModifyTargetGroupAttributesOutput,ModifyTargetGroupOutput,RegisterTargetsOutput,RemoveTagsOutput,SetIpAddressTypeOutput,SetRulePrioritiesOutput,SetSecurityGroupsOutput,SetSubnetsOutput

## Records

* [Action](#Action)
* [AvailabilityZone](#AvailabilityZone)
* [Certificate](#Certificate)
* [Cipher](#Cipher)
* [Listener](#Listener)
* [LoadBalancer](#LoadBalancer)
* [LoadBalancerAttribute](#LoadBalancerAttribute)
* [LoadBalancerState](#LoadBalancerState)
* [Matcher](#Matcher)
* [Rule](#Rule)
* [RuleCondition](#RuleCondition)
* [RulePriorityPair](#RulePriorityPair)
* [SslPolicy](#SslPolicy)
* [Tag](#Tag)
* [TagDescription](#TagDescription)
* [TargetDescription](#TargetDescription)
* [TargetGroup](#TargetGroup)
* [TargetGroupAttribute](#TargetGroupAttribute)
* [TargetHealth](#TargetHealth)
* [TargetHealthDescription](#TargetHealthDescription)


@docs Action,AvailabilityZone,Certificate,Cipher,Listener,LoadBalancer,LoadBalancerAttribute,LoadBalancerState,Matcher,Rule,RuleCondition,RulePriorityPair,SslPolicy,Tag,TagDescription,TargetDescription,TargetGroup,TargetGroupAttribute,TargetHealth,TargetHealthDescription

## Unions

* [ActionTypeEnum](#ActionTypeEnum)
* [IpAddressType](#IpAddressType)
* [LoadBalancerSchemeEnum](#LoadBalancerSchemeEnum)
* [LoadBalancerStateEnum](#LoadBalancerStateEnum)
* [LoadBalancerTypeEnum](#LoadBalancerTypeEnum)
* [ProtocolEnum](#ProtocolEnum)
* [TargetHealthReasonEnum](#TargetHealthReasonEnum)
* [TargetHealthStateEnum](#TargetHealthStateEnum)


@docs ActionTypeEnum,IpAddressType,LoadBalancerSchemeEnum,LoadBalancerStateEnum,LoadBalancerTypeEnum,ProtocolEnum,TargetHealthReasonEnum,TargetHealthStateEnum

## Exceptions

* [CertificateNotFoundException](#CertificateNotFoundException)
* [DuplicateListenerException](#DuplicateListenerException)
* [DuplicateLoadBalancerNameException](#DuplicateLoadBalancerNameException)
* [DuplicateTagKeysException](#DuplicateTagKeysException)
* [DuplicateTargetGroupNameException](#DuplicateTargetGroupNameException)
* [HealthUnavailableException](#HealthUnavailableException)
* [IncompatibleProtocolsException](#IncompatibleProtocolsException)
* [InvalidConfigurationRequestException](#InvalidConfigurationRequestException)
* [InvalidSchemeException](#InvalidSchemeException)
* [InvalidSecurityGroupException](#InvalidSecurityGroupException)
* [InvalidSubnetException](#InvalidSubnetException)
* [InvalidTargetException](#InvalidTargetException)
* [ListenerNotFoundException](#ListenerNotFoundException)
* [LoadBalancerNotFoundException](#LoadBalancerNotFoundException)
* [OperationNotPermittedException](#OperationNotPermittedException)
* [PriorityInUseException](#PriorityInUseException)
* [ResourceInUseException](#ResourceInUseException)
* [RuleNotFoundException](#RuleNotFoundException)
* [SSLPolicyNotFoundException](#SSLPolicyNotFoundException)
* [SubnetNotFoundException](#SubnetNotFoundException)
* [TargetGroupAssociationLimitException](#TargetGroupAssociationLimitException)
* [TargetGroupNotFoundException](#TargetGroupNotFoundException)
* [TooManyCertificatesException](#TooManyCertificatesException)
* [TooManyListenersException](#TooManyListenersException)
* [TooManyLoadBalancersException](#TooManyLoadBalancersException)
* [TooManyRegistrationsForTargetIdException](#TooManyRegistrationsForTargetIdException)
* [TooManyRulesException](#TooManyRulesException)
* [TooManyTagsException](#TooManyTagsException)
* [TooManyTargetGroupsException](#TooManyTargetGroupsException)
* [TooManyTargetsException](#TooManyTargetsException)
* [UnsupportedProtocolException](#UnsupportedProtocolException)


@docs CertificateNotFoundException,DuplicateListenerException,DuplicateLoadBalancerNameException,DuplicateTagKeysException,DuplicateTargetGroupNameException,HealthUnavailableException,IncompatibleProtocolsException,InvalidConfigurationRequestException,InvalidSchemeException,InvalidSecurityGroupException,InvalidSubnetException,InvalidTargetException,ListenerNotFoundException,LoadBalancerNotFoundException,OperationNotPermittedException,PriorityInUseException,ResourceInUseException,RuleNotFoundException,SSLPolicyNotFoundException,SubnetNotFoundException,TargetGroupAssociationLimitException,TargetGroupNotFoundException,TooManyCertificatesException,TooManyListenersException,TooManyLoadBalancersException,TooManyRegistrationsForTargetIdException,TooManyRulesException,TooManyTagsException,TooManyTargetGroupsException,TooManyTargetsException,UnsupportedProtocolException

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "elasticloadbalancing"
        "2015-12-01"
        "undefined"
        "AWSELASTICLOADBALANCING_20151201."
        "elasticloadbalancing.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds the specified tags to the specified resource. You can tag your Application Load Balancers and your target groups.</p> <p>Each tag consists of a key and an optional value. If a resource already has a tag with the same key, <code>AddTags</code> updates its value.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>. To remove tags from your resources, use <a>RemoveTags</a>.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`
* `tags` __:__ `(List Tag)`


-}
addTags :
    (List String)
    -> (List Tag)
    -> AWS.Request AddTagsOutput
addTags resourceArns tags =
    AWS.Http.unsignedRequest
        "AddTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a listener for the specified Application Load Balancer.</p> <p>You can create up to 10 listeners per load balancer.</p> <p>To update a listener, use <a>ModifyListener</a>. When you are finished with a listener, you can delete it using <a>DeleteListener</a>. If you are finished with both the listener and the load balancer, you can delete them both using <a>DeleteLoadBalancer</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html">Listeners for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `protocol` __:__ `ProtocolEnum`
* `port_` __:__ `Int`
* `defaultActions` __:__ `(List Action)`


-}
createListener :
    String
    -> ProtocolEnum
    -> Int
    -> (List Action)
    -> (CreateListenerOptions -> CreateListenerOptions)
    -> AWS.Request CreateListenerOutput
createListener loadBalancerArn protocol port_ defaultActions setOptions =
  let
    options = setOptions (CreateListenerOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateListener"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createListenerOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createListener request
-}
type alias CreateListenerOptions =
    { sslPolicy : Maybe String
    , certificates : Maybe (List Certificate)
    }



{-| <p>Creates an Application Load Balancer.</p> <p>When you create a load balancer, you can specify security groups, subnets, IP address type, and tags. Otherwise, you could do so later using <a>SetSecurityGroups</a>, <a>SetSubnets</a>, <a>SetIpAddressType</a>, and <a>AddTags</a>.</p> <p>To create listeners for your load balancer, use <a>CreateListener</a>. To describe your current load balancers, see <a>DescribeLoadBalancers</a>. When you are finished with a load balancer, you can delete it using <a>DeleteLoadBalancer</a>.</p> <p>You can create up to 20 load balancers per region per account. You can request an increase for the number of load balancers for your account. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html">Limits for Your Application Load Balancer</a> in the <i>Application Load Balancers Guide</i>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html">Application Load Balancers</a> in the <i>Application Load Balancers Guide</i>.</p>

__Required Parameters__

* `name` __:__ `String`
* `subnets` __:__ `(List String)`


-}
createLoadBalancer :
    String
    -> (List String)
    -> (CreateLoadBalancerOptions -> CreateLoadBalancerOptions)
    -> AWS.Request CreateLoadBalancerOutput
createLoadBalancer name subnets setOptions =
  let
    options = setOptions (CreateLoadBalancerOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createLoadBalancerOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createLoadBalancer request
-}
type alias CreateLoadBalancerOptions =
    { securityGroups : Maybe (List String)
    , scheme : Maybe LoadBalancerSchemeEnum
    , tags : Maybe (List Tag)
    , ipAddressType : Maybe IpAddressType
    }



{-| <p>Creates a rule for the specified listener.</p> <p>Each rule can have one action and one condition. Rules are evaluated in priority order, from the lowest value to the highest value. When the condition for a rule is met, the specified action is taken. If no conditions are met, the default action for the default rule is taken. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules">Listener Rules</a> in the <i>Application Load Balancers Guide</i>.</p> <p>To view your current rules, use <a>DescribeRules</a>. To update a rule, use <a>ModifyRule</a>. To set the priorities of your rules, use <a>SetRulePriorities</a>. To delete a rule, use <a>DeleteRule</a>.</p>

__Required Parameters__

* `listenerArn` __:__ `String`
* `conditions` __:__ `(List RuleCondition)`
* `priority` __:__ `Int`
* `actions` __:__ `(List Action)`


-}
createRule :
    String
    -> (List RuleCondition)
    -> Int
    -> (List Action)
    -> AWS.Request CreateRuleOutput
createRule listenerArn conditions priority actions =
    AWS.Http.unsignedRequest
        "CreateRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRuleOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a target group.</p> <p>To register targets with the target group, use <a>RegisterTargets</a>. To update the health check settings for the target group, use <a>ModifyTargetGroup</a>. To monitor the health of targets in the target group, use <a>DescribeTargetHealth</a>.</p> <p>To route traffic to the targets in a target group, specify the target group in an action using <a>CreateListener</a> or <a>CreateRule</a>.</p> <p>To delete a target group, use <a>DeleteTargetGroup</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html">Target Groups for Your Application Load Balancers</a> in the <i>Application Load Balancers Guide</i>.</p>

__Required Parameters__

* `name` __:__ `String`
* `protocol` __:__ `ProtocolEnum`
* `port_` __:__ `Int`
* `vpcId` __:__ `String`


-}
createTargetGroup :
    String
    -> ProtocolEnum
    -> Int
    -> String
    -> (CreateTargetGroupOptions -> CreateTargetGroupOptions)
    -> AWS.Request CreateTargetGroupOutput
createTargetGroup name protocol port_ vpcId setOptions =
  let
    options = setOptions (CreateTargetGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateTargetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTargetGroupOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createTargetGroup request
-}
type alias CreateTargetGroupOptions =
    { healthCheckProtocol : Maybe ProtocolEnum
    , healthCheckPort : Maybe String
    , healthCheckPath : Maybe String
    , healthCheckIntervalSeconds : Maybe Int
    , healthCheckTimeoutSeconds : Maybe Int
    , healthyThresholdCount : Maybe Int
    , unhealthyThresholdCount : Maybe Int
    , matcher : Maybe Matcher
    }



{-| <p>Deletes the specified listener.</p> <p>Alternatively, your listener is deleted when you delete the load balancer it is attached to using <a>DeleteLoadBalancer</a>.</p>

__Required Parameters__

* `listenerArn` __:__ `String`


-}
deleteListener :
    String
    -> AWS.Request DeleteListenerOutput
deleteListener listenerArn =
    AWS.Http.unsignedRequest
        "DeleteListener"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteListenerOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified Application Load Balancer and its attached listeners.</p> <p>You can't delete a load balancer if deletion protection is enabled. If the load balancer does not exist or has already been deleted, the call succeeds.</p> <p>Deleting a load balancer does not affect its registered targets. For example, your EC2 instances continue to run and are still registered to their target groups. If you no longer need these EC2 instances, you can stop or terminate them.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`


-}
deleteLoadBalancer :
    String
    -> AWS.Request DeleteLoadBalancerOutput
deleteLoadBalancer loadBalancerArn =
    AWS.Http.unsignedRequest
        "DeleteLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteLoadBalancerOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified rule.</p>

__Required Parameters__

* `ruleArn` __:__ `String`


-}
deleteRule :
    String
    -> AWS.Request DeleteRuleOutput
deleteRule ruleArn =
    AWS.Http.unsignedRequest
        "DeleteRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRuleOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified target group.</p> <p>You can delete a target group if it is not referenced by any actions. Deleting a target group also deletes any associated health checks.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}
deleteTargetGroup :
    String
    -> AWS.Request DeleteTargetGroupOutput
deleteTargetGroup targetGroupArn =
    AWS.Http.unsignedRequest
        "DeleteTargetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTargetGroupOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deregisters the specified targets from the specified target group. After the targets are deregistered, they no longer receive traffic from the load balancer.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`
* `targets` __:__ `(List TargetDescription)`


-}
deregisterTargets :
    String
    -> (List TargetDescription)
    -> AWS.Request DeregisterTargetsOutput
deregisterTargets targetGroupArn targets =
    AWS.Http.unsignedRequest
        "DeregisterTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterTargetsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the specified listeners or the listeners for the specified Application Load Balancer. You must specify either a load balancer or one or more listeners.</p>

__Required Parameters__



-}
describeListeners :
    (DescribeListenersOptions -> DescribeListenersOptions)
    -> AWS.Request DescribeListenersOutput
describeListeners setOptions =
  let
    options = setOptions (DescribeListenersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeListeners"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeListenersOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeListeners request
-}
type alias DescribeListenersOptions =
    { loadBalancerArn : Maybe String
    , listenerArns : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Describes the attributes for the specified Application Load Balancer.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`


-}
describeLoadBalancerAttributes :
    String
    -> AWS.Request DescribeLoadBalancerAttributesOutput
describeLoadBalancerAttributes loadBalancerArn =
    AWS.Http.unsignedRequest
        "DescribeLoadBalancerAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBalancerAttributesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the specified Application Load Balancers or all of your Application Load Balancers.</p> <p>To describe the listeners for a load balancer, use <a>DescribeListeners</a>. To describe the attributes for a load balancer, use <a>DescribeLoadBalancerAttributes</a>.</p>

__Required Parameters__



-}
describeLoadBalancers :
    (DescribeLoadBalancersOptions -> DescribeLoadBalancersOptions)
    -> AWS.Request DescribeLoadBalancersOutput
describeLoadBalancers setOptions =
  let
    options = setOptions (DescribeLoadBalancersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLoadBalancers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBalancersOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLoadBalancers request
-}
type alias DescribeLoadBalancersOptions =
    { loadBalancerArns : Maybe (List String)
    , names : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Describes the specified rules or the rules for the specified listener. You must specify either a listener or one or more rules.</p>

__Required Parameters__



-}
describeRules :
    (DescribeRulesOptions -> DescribeRulesOptions)
    -> AWS.Request DescribeRulesOutput
describeRules setOptions =
  let
    options = setOptions (DescribeRulesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRules"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRulesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeRules request
-}
type alias DescribeRulesOptions =
    { listenerArn : Maybe String
    , ruleArns : Maybe (List String)
    }



{-| <p>Describes the specified policies or all policies used for SSL negotiation.</p> <p>Note that the only supported policy at this time is ELBSecurityPolicy-2015-05.</p>

__Required Parameters__



-}
describeSSLPolicies :
    (DescribeSSLPoliciesOptions -> DescribeSSLPoliciesOptions)
    -> AWS.Request DescribeSSLPoliciesOutput
describeSSLPolicies setOptions =
  let
    options = setOptions (DescribeSSLPoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSSLPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSSLPoliciesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSSLPolicies request
-}
type alias DescribeSSLPoliciesOptions =
    { names : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Describes the tags for the specified resources.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`


-}
describeTags :
    (List String)
    -> AWS.Request DescribeTagsOutput
describeTags resourceArns =
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the attributes for the specified target group.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}
describeTargetGroupAttributes :
    String
    -> AWS.Request DescribeTargetGroupAttributesOutput
describeTargetGroupAttributes targetGroupArn =
    AWS.Http.unsignedRequest
        "DescribeTargetGroupAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTargetGroupAttributesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the specified target groups or all of your target groups. By default, all target groups are described. Alternatively, you can specify one of the following to filter the results: the ARN of the load balancer, the names of one or more target groups, or the ARNs of one or more target groups.</p> <p>To describe the targets for a target group, use <a>DescribeTargetHealth</a>. To describe the attributes of a target group, use <a>DescribeTargetGroupAttributes</a>.</p>

__Required Parameters__



-}
describeTargetGroups :
    (DescribeTargetGroupsOptions -> DescribeTargetGroupsOptions)
    -> AWS.Request DescribeTargetGroupsOutput
describeTargetGroups setOptions =
  let
    options = setOptions (DescribeTargetGroupsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTargetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTargetGroupsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTargetGroups request
-}
type alias DescribeTargetGroupsOptions =
    { loadBalancerArn : Maybe String
    , targetGroupArns : Maybe (List String)
    , names : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Describes the health of the specified targets or all of your targets.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}
describeTargetHealth :
    String
    -> (DescribeTargetHealthOptions -> DescribeTargetHealthOptions)
    -> AWS.Request DescribeTargetHealthOutput
describeTargetHealth targetGroupArn setOptions =
  let
    options = setOptions (DescribeTargetHealthOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTargetHealth"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTargetHealthOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTargetHealth request
-}
type alias DescribeTargetHealthOptions =
    { targets : Maybe (List TargetDescription)
    }



{-| <p>Modifies the specified properties of the specified listener.</p> <p>Any properties that you do not specify retain their current values. However, changing the protocol from HTTPS to HTTP removes the security policy and SSL certificate properties. If you change the protocol from HTTP to HTTPS, you must add the security policy.</p>

__Required Parameters__

* `listenerArn` __:__ `String`


-}
modifyListener :
    String
    -> (ModifyListenerOptions -> ModifyListenerOptions)
    -> AWS.Request ModifyListenerOutput
modifyListener listenerArn setOptions =
  let
    options = setOptions (ModifyListenerOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyListener"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyListenerOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyListener request
-}
type alias ModifyListenerOptions =
    { port_ : Maybe Int
    , protocol : Maybe ProtocolEnum
    , sslPolicy : Maybe String
    , certificates : Maybe (List Certificate)
    , defaultActions : Maybe (List Action)
    }



{-| <p>Modifies the specified attributes of the specified Application Load Balancer.</p> <p>If any of the specified attributes can't be modified as requested, the call fails. Any existing attributes that you do not modify retain their current values.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `attributes` __:__ `(List LoadBalancerAttribute)`


-}
modifyLoadBalancerAttributes :
    String
    -> (List LoadBalancerAttribute)
    -> AWS.Request ModifyLoadBalancerAttributesOutput
modifyLoadBalancerAttributes loadBalancerArn attributes =
    AWS.Http.unsignedRequest
        "ModifyLoadBalancerAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyLoadBalancerAttributesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies the specified rule.</p> <p>Any existing properties that you do not modify retain their current values.</p> <p>To modify the default action, use <a>ModifyListener</a>.</p>

__Required Parameters__

* `ruleArn` __:__ `String`


-}
modifyRule :
    String
    -> (ModifyRuleOptions -> ModifyRuleOptions)
    -> AWS.Request ModifyRuleOutput
modifyRule ruleArn setOptions =
  let
    options = setOptions (ModifyRuleOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyRuleOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyRule request
-}
type alias ModifyRuleOptions =
    { conditions : Maybe (List RuleCondition)
    , actions : Maybe (List Action)
    }



{-| <p>Modifies the health checks used when evaluating the health state of the targets in the specified target group.</p> <p>To monitor the health of the targets, use <a>DescribeTargetHealth</a>.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`


-}
modifyTargetGroup :
    String
    -> (ModifyTargetGroupOptions -> ModifyTargetGroupOptions)
    -> AWS.Request ModifyTargetGroupOutput
modifyTargetGroup targetGroupArn setOptions =
  let
    options = setOptions (ModifyTargetGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyTargetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyTargetGroupOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyTargetGroup request
-}
type alias ModifyTargetGroupOptions =
    { healthCheckProtocol : Maybe ProtocolEnum
    , healthCheckPort : Maybe String
    , healthCheckPath : Maybe String
    , healthCheckIntervalSeconds : Maybe Int
    , healthCheckTimeoutSeconds : Maybe Int
    , healthyThresholdCount : Maybe Int
    , unhealthyThresholdCount : Maybe Int
    , matcher : Maybe Matcher
    }



{-| <p>Modifies the specified attributes of the specified target group.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`
* `attributes` __:__ `(List TargetGroupAttribute)`


-}
modifyTargetGroupAttributes :
    String
    -> (List TargetGroupAttribute)
    -> AWS.Request ModifyTargetGroupAttributesOutput
modifyTargetGroupAttributes targetGroupArn attributes =
    AWS.Http.unsignedRequest
        "ModifyTargetGroupAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyTargetGroupAttributesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Registers the specified targets with the specified target group.</p> <p>By default, the load balancer routes requests to registered targets using the protocol and port number for the target group. Alternatively, you can override the port for a target when you register it.</p> <p>The target must be in the virtual private cloud (VPC) that you specified for the target group. If the target is an EC2 instance, it must be in the <code>running</code> state when you register it.</p> <p>To remove a target from a target group, use <a>DeregisterTargets</a>.</p>

__Required Parameters__

* `targetGroupArn` __:__ `String`
* `targets` __:__ `(List TargetDescription)`


-}
registerTargets :
    String
    -> (List TargetDescription)
    -> AWS.Request RegisterTargetsOutput
registerTargets targetGroupArn targets =
    AWS.Http.unsignedRequest
        "RegisterTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerTargetsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes the specified tags from the specified resource.</p> <p>To list the current tags for your resources, use <a>DescribeTags</a>.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`
* `tagKeys` __:__ `(List String)`


-}
removeTags :
    (List String)
    -> (List String)
    -> AWS.Request RemoveTagsOutput
removeTags resourceArns tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets the type of IP addresses used by the subnets of the specified Application Load Balancer.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `ipAddressType` __:__ `IpAddressType`


-}
setIpAddressType :
    String
    -> IpAddressType
    -> AWS.Request SetIpAddressTypeOutput
setIpAddressType loadBalancerArn ipAddressType =
    AWS.Http.unsignedRequest
        "SetIpAddressType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setIpAddressTypeOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets the priorities of the specified rules.</p> <p>You can reorder the rules as long as there are no priority conflicts in the new order. Any existing rules that you do not specify retain their current priority.</p>

__Required Parameters__

* `rulePriorities` __:__ `(List RulePriorityPair)`


-}
setRulePriorities :
    (List RulePriorityPair)
    -> AWS.Request SetRulePrioritiesOutput
setRulePriorities rulePriorities =
    AWS.Http.unsignedRequest
        "SetRulePriorities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setRulePrioritiesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Associates the specified security groups with the specified load balancer. The specified security groups override the previously associated security groups.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `securityGroups` __:__ `(List String)`


-}
setSecurityGroups :
    String
    -> (List String)
    -> AWS.Request SetSecurityGroupsOutput
setSecurityGroups loadBalancerArn securityGroups =
    AWS.Http.unsignedRequest
        "SetSecurityGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setSecurityGroupsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Enables the Availability Zone for the specified subnets for the specified load balancer. The specified subnets replace the previously enabled subnets.</p>

__Required Parameters__

* `loadBalancerArn` __:__ `String`
* `subnets` __:__ `(List String)`


-}
setSubnets :
    String
    -> (List String)
    -> AWS.Request SetSubnetsOutput
setSubnets loadBalancerArn subnets =
    AWS.Http.unsignedRequest
        "SetSubnets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setSubnetsOutputDecoder
        |> AWS.UnsignedRequest




{-| <p>Information about an action.</p>
-}
type alias Action =
    { type_ : ActionTypeEnum
    , targetGroupArn : String
    }



actionDecoder : JD.Decoder Action
actionDecoder =
    JDP.decode Action
        |> JDP.required "type_" actionTypeEnumDecoder
        |> JDP.required "targetGroupArn" JD.string




{-| One of

* `ActionTypeEnum_forward`

-}
type ActionTypeEnum
    = ActionTypeEnum_forward



actionTypeEnumDecoder : JD.Decoder ActionTypeEnum
actionTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "forward" ->
                        JD.succeed ActionTypeEnum_forward


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from addTa
-}
type alias AddTagsOutput =
    { 
    }



addTagsOutputDecoder : JD.Decoder AddTagsOutput
addTagsOutputDecoder =
    JDP.decode AddTagsOutput



{-| <p>Information about an Availability Zone.</p>
-}
type alias AvailabilityZone =
    { zoneName : Maybe String
    , subnetId : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JDP.decode AvailabilityZone
        |> JDP.optional "zoneName" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing




{-| <p>Information about an SSL server certificate deployed on a load balancer.</p>
-}
type alias Certificate =
    { certificateArn : Maybe String
    }



certificateDecoder : JD.Decoder Certificate
certificateDecoder =
    JDP.decode Certificate
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing




{-| <p>The specified certificate does not exist.</p>
-}
type alias CertificateNotFoundException =
    { 
    }



certificateNotFoundExceptionDecoder : JD.Decoder CertificateNotFoundException
certificateNotFoundExceptionDecoder =
    JDP.decode CertificateNotFoundException



{-| <p>Information about a cipher used in a policy.</p>
-}
type alias Cipher =
    { name : Maybe String
    , priority : Maybe Int
    }



cipherDecoder : JD.Decoder Cipher
cipherDecoder =
    JDP.decode Cipher
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "priority" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from createListen
-}
type alias CreateListenerOutput =
    { listeners : Maybe (List Listener)
    }



createListenerOutputDecoder : JD.Decoder CreateListenerOutput
createListenerOutputDecoder =
    JDP.decode CreateListenerOutput
        |> JDP.optional "listeners" (JD.nullable (JD.list listenerDecoder)) Nothing




{-| Type of HTTP response from createLoadBalanc
-}
type alias CreateLoadBalancerOutput =
    { loadBalancers : Maybe (List LoadBalancer)
    }



createLoadBalancerOutputDecoder : JD.Decoder CreateLoadBalancerOutput
createLoadBalancerOutputDecoder =
    JDP.decode CreateLoadBalancerOutput
        |> JDP.optional "loadBalancers" (JD.nullable (JD.list loadBalancerDecoder)) Nothing




{-| Type of HTTP response from createRu
-}
type alias CreateRuleOutput =
    { rules : Maybe (List Rule)
    }



createRuleOutputDecoder : JD.Decoder CreateRuleOutput
createRuleOutputDecoder =
    JDP.decode CreateRuleOutput
        |> JDP.optional "rules" (JD.nullable (JD.list ruleDecoder)) Nothing




{-| Type of HTTP response from createTargetGro
-}
type alias CreateTargetGroupOutput =
    { targetGroups : Maybe (List TargetGroup)
    }



createTargetGroupOutputDecoder : JD.Decoder CreateTargetGroupOutput
createTargetGroupOutputDecoder =
    JDP.decode CreateTargetGroupOutput
        |> JDP.optional "targetGroups" (JD.nullable (JD.list targetGroupDecoder)) Nothing




{-| Type of HTTP response from deleteListen
-}
type alias DeleteListenerOutput =
    { 
    }



deleteListenerOutputDecoder : JD.Decoder DeleteListenerOutput
deleteListenerOutputDecoder =
    JDP.decode DeleteListenerOutput



{-| Type of HTTP response from deleteLoadBalanc
-}
type alias DeleteLoadBalancerOutput =
    { 
    }



deleteLoadBalancerOutputDecoder : JD.Decoder DeleteLoadBalancerOutput
deleteLoadBalancerOutputDecoder =
    JDP.decode DeleteLoadBalancerOutput



{-| Type of HTTP response from deleteRu
-}
type alias DeleteRuleOutput =
    { 
    }



deleteRuleOutputDecoder : JD.Decoder DeleteRuleOutput
deleteRuleOutputDecoder =
    JDP.decode DeleteRuleOutput



{-| Type of HTTP response from deleteTargetGro
-}
type alias DeleteTargetGroupOutput =
    { 
    }



deleteTargetGroupOutputDecoder : JD.Decoder DeleteTargetGroupOutput
deleteTargetGroupOutputDecoder =
    JDP.decode DeleteTargetGroupOutput



{-| Type of HTTP response from deregisterTarge
-}
type alias DeregisterTargetsOutput =
    { 
    }



deregisterTargetsOutputDecoder : JD.Decoder DeregisterTargetsOutput
deregisterTargetsOutputDecoder =
    JDP.decode DeregisterTargetsOutput



{-| Type of HTTP response from describeListene
-}
type alias DescribeListenersOutput =
    { listeners : Maybe (List Listener)
    , nextMarker : Maybe String
    }



describeListenersOutputDecoder : JD.Decoder DescribeListenersOutput
describeListenersOutputDecoder =
    JDP.decode DescribeListenersOutput
        |> JDP.optional "listeners" (JD.nullable (JD.list listenerDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeLoadBalancerAttribut
-}
type alias DescribeLoadBalancerAttributesOutput =
    { attributes : Maybe (List LoadBalancerAttribute)
    }



describeLoadBalancerAttributesOutputDecoder : JD.Decoder DescribeLoadBalancerAttributesOutput
describeLoadBalancerAttributesOutputDecoder =
    JDP.decode DescribeLoadBalancerAttributesOutput
        |> JDP.optional "attributes" (JD.nullable (JD.list loadBalancerAttributeDecoder)) Nothing




{-| Type of HTTP response from describeLoadBalance
-}
type alias DescribeLoadBalancersOutput =
    { loadBalancers : Maybe (List LoadBalancer)
    , nextMarker : Maybe String
    }



describeLoadBalancersOutputDecoder : JD.Decoder DescribeLoadBalancersOutput
describeLoadBalancersOutputDecoder =
    JDP.decode DescribeLoadBalancersOutput
        |> JDP.optional "loadBalancers" (JD.nullable (JD.list loadBalancerDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeRul
-}
type alias DescribeRulesOutput =
    { rules : Maybe (List Rule)
    }



describeRulesOutputDecoder : JD.Decoder DescribeRulesOutput
describeRulesOutputDecoder =
    JDP.decode DescribeRulesOutput
        |> JDP.optional "rules" (JD.nullable (JD.list ruleDecoder)) Nothing




{-| Type of HTTP response from describeSSLPolici
-}
type alias DescribeSSLPoliciesOutput =
    { sslPolicies : Maybe (List SslPolicy)
    , nextMarker : Maybe String
    }



describeSSLPoliciesOutputDecoder : JD.Decoder DescribeSSLPoliciesOutput
describeSSLPoliciesOutputDecoder =
    JDP.decode DescribeSSLPoliciesOutput
        |> JDP.optional "sslPolicies" (JD.nullable (JD.list sslPolicyDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsOutput =
    { tagDescriptions : Maybe (List TagDescription)
    }



describeTagsOutputDecoder : JD.Decoder DescribeTagsOutput
describeTagsOutputDecoder =
    JDP.decode DescribeTagsOutput
        |> JDP.optional "tagDescriptions" (JD.nullable (JD.list tagDescriptionDecoder)) Nothing




{-| Type of HTTP response from describeTargetGroupAttribut
-}
type alias DescribeTargetGroupAttributesOutput =
    { attributes : Maybe (List TargetGroupAttribute)
    }



describeTargetGroupAttributesOutputDecoder : JD.Decoder DescribeTargetGroupAttributesOutput
describeTargetGroupAttributesOutputDecoder =
    JDP.decode DescribeTargetGroupAttributesOutput
        |> JDP.optional "attributes" (JD.nullable (JD.list targetGroupAttributeDecoder)) Nothing




{-| Type of HTTP response from describeTargetGrou
-}
type alias DescribeTargetGroupsOutput =
    { targetGroups : Maybe (List TargetGroup)
    , nextMarker : Maybe String
    }



describeTargetGroupsOutputDecoder : JD.Decoder DescribeTargetGroupsOutput
describeTargetGroupsOutputDecoder =
    JDP.decode DescribeTargetGroupsOutput
        |> JDP.optional "targetGroups" (JD.nullable (JD.list targetGroupDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTargetHeal
-}
type alias DescribeTargetHealthOutput =
    { targetHealthDescriptions : Maybe (List TargetHealthDescription)
    }



describeTargetHealthOutputDecoder : JD.Decoder DescribeTargetHealthOutput
describeTargetHealthOutputDecoder =
    JDP.decode DescribeTargetHealthOutput
        |> JDP.optional "targetHealthDescriptions" (JD.nullable (JD.list targetHealthDescriptionDecoder)) Nothing




{-| <p>A listener with the specified port already exists.</p>
-}
type alias DuplicateListenerException =
    { 
    }



duplicateListenerExceptionDecoder : JD.Decoder DuplicateListenerException
duplicateListenerExceptionDecoder =
    JDP.decode DuplicateListenerException



{-| <p>A load balancer with the specified name already exists for this account.</p>
-}
type alias DuplicateLoadBalancerNameException =
    { 
    }



duplicateLoadBalancerNameExceptionDecoder : JD.Decoder DuplicateLoadBalancerNameException
duplicateLoadBalancerNameExceptionDecoder =
    JDP.decode DuplicateLoadBalancerNameException



{-| <p>A tag key was specified more than once.</p>
-}
type alias DuplicateTagKeysException =
    { 
    }



duplicateTagKeysExceptionDecoder : JD.Decoder DuplicateTagKeysException
duplicateTagKeysExceptionDecoder =
    JDP.decode DuplicateTagKeysException



{-| <p>A target group with the specified name already exists.</p>
-}
type alias DuplicateTargetGroupNameException =
    { 
    }



duplicateTargetGroupNameExceptionDecoder : JD.Decoder DuplicateTargetGroupNameException
duplicateTargetGroupNameExceptionDecoder =
    JDP.decode DuplicateTargetGroupNameException



{-| <p>The health of the specified targets could not be retrieved due to an internal error.</p>
-}
type alias HealthUnavailableException =
    { 
    }



healthUnavailableExceptionDecoder : JD.Decoder HealthUnavailableException
healthUnavailableExceptionDecoder =
    JDP.decode HealthUnavailableException



{-| <p>The specified configuration is not valid with this protocol.</p>
-}
type alias IncompatibleProtocolsException =
    { 
    }



incompatibleProtocolsExceptionDecoder : JD.Decoder IncompatibleProtocolsException
incompatibleProtocolsExceptionDecoder =
    JDP.decode IncompatibleProtocolsException



{-| <p>The requested configuration is not valid.</p>
-}
type alias InvalidConfigurationRequestException =
    { 
    }



invalidConfigurationRequestExceptionDecoder : JD.Decoder InvalidConfigurationRequestException
invalidConfigurationRequestExceptionDecoder =
    JDP.decode InvalidConfigurationRequestException



{-| <p>The requested scheme is not valid.</p>
-}
type alias InvalidSchemeException =
    { 
    }



invalidSchemeExceptionDecoder : JD.Decoder InvalidSchemeException
invalidSchemeExceptionDecoder =
    JDP.decode InvalidSchemeException



{-| <p>The specified security group does not exist.</p>
-}
type alias InvalidSecurityGroupException =
    { 
    }



invalidSecurityGroupExceptionDecoder : JD.Decoder InvalidSecurityGroupException
invalidSecurityGroupExceptionDecoder =
    JDP.decode InvalidSecurityGroupException



{-| <p>The specified subnet is out of available addresses.</p>
-}
type alias InvalidSubnetException =
    { 
    }



invalidSubnetExceptionDecoder : JD.Decoder InvalidSubnetException
invalidSubnetExceptionDecoder =
    JDP.decode InvalidSubnetException



{-| <p>The specified target does not exist or is not in the same VPC as the target group.</p>
-}
type alias InvalidTargetException =
    { 
    }



invalidTargetExceptionDecoder : JD.Decoder InvalidTargetException
invalidTargetExceptionDecoder =
    JDP.decode InvalidTargetException



{-| One of

* `IpAddressType_ipv4`
* `IpAddressType_dualstack`

-}
type IpAddressType
    = IpAddressType_ipv4
    | IpAddressType_dualstack



ipAddressTypeDecoder : JD.Decoder IpAddressType
ipAddressTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ipv4" ->
                        JD.succeed IpAddressType_ipv4

                    "dualstack" ->
                        JD.succeed IpAddressType_dualstack


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a listener.</p>
-}
type alias Listener =
    { listenerArn : Maybe String
    , loadBalancerArn : Maybe String
    , port_ : Maybe Int
    , protocol : Maybe ProtocolEnum
    , certificates : Maybe (List Certificate)
    , sslPolicy : Maybe String
    , defaultActions : Maybe (List Action)
    }



listenerDecoder : JD.Decoder Listener
listenerDecoder =
    JDP.decode Listener
        |> JDP.optional "listenerArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "loadBalancerArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "protocol" (JD.nullable protocolEnumDecoder) Nothing
        |> JDP.optional "certificates" (JD.nullable (JD.list certificateDecoder)) Nothing
        |> JDP.optional "sslPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultActions" (JD.nullable (JD.list actionDecoder)) Nothing




{-| <p>The specified listener does not exist.</p>
-}
type alias ListenerNotFoundException =
    { 
    }



listenerNotFoundExceptionDecoder : JD.Decoder ListenerNotFoundException
listenerNotFoundExceptionDecoder =
    JDP.decode ListenerNotFoundException



{-| <p>Information about a load balancer.</p>
-}
type alias LoadBalancer =
    { loadBalancerArn : Maybe String
    , dNSName : Maybe String
    , canonicalHostedZoneId : Maybe String
    , createdTime : Maybe Date
    , loadBalancerName : Maybe String
    , scheme : Maybe LoadBalancerSchemeEnum
    , vpcId : Maybe String
    , state : Maybe LoadBalancerState
    , type_ : Maybe LoadBalancerTypeEnum
    , availabilityZones : Maybe (List AvailabilityZone)
    , securityGroups : Maybe (List String)
    , ipAddressType : Maybe IpAddressType
    }



loadBalancerDecoder : JD.Decoder LoadBalancer
loadBalancerDecoder =
    JDP.decode LoadBalancer
        |> JDP.optional "loadBalancerArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "dNSName" (JD.nullable JD.string) Nothing
        |> JDP.optional "canonicalHostedZoneId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "loadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheme" (JD.nullable loadBalancerSchemeEnumDecoder) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable loadBalancerStateDecoder) Nothing
        |> JDP.optional "type_" (JD.nullable loadBalancerTypeEnumDecoder) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list availabilityZoneDecoder)) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "ipAddressType" (JD.nullable ipAddressTypeDecoder) Nothing




{-| <p>Information about a load balancer attribute.</p>
-}
type alias LoadBalancerAttribute =
    { key : Maybe String
    , value : Maybe String
    }



loadBalancerAttributeDecoder : JD.Decoder LoadBalancerAttribute
loadBalancerAttributeDecoder =
    JDP.decode LoadBalancerAttribute
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The specified load balancer does not exist.</p>
-}
type alias LoadBalancerNotFoundException =
    { 
    }



loadBalancerNotFoundExceptionDecoder : JD.Decoder LoadBalancerNotFoundException
loadBalancerNotFoundExceptionDecoder =
    JDP.decode LoadBalancerNotFoundException



{-| One of

* `LoadBalancerSchemeEnum_internet-facing`
* `LoadBalancerSchemeEnum_internal`

-}
type LoadBalancerSchemeEnum
    = LoadBalancerSchemeEnum_internet_facing
    | LoadBalancerSchemeEnum_internal



loadBalancerSchemeEnumDecoder : JD.Decoder LoadBalancerSchemeEnum
loadBalancerSchemeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "internet_facing" ->
                        JD.succeed LoadBalancerSchemeEnum_internet_facing

                    "internal" ->
                        JD.succeed LoadBalancerSchemeEnum_internal


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the state of the load balancer.</p>
-}
type alias LoadBalancerState =
    { code : Maybe LoadBalancerStateEnum
    , reason : Maybe String
    }



loadBalancerStateDecoder : JD.Decoder LoadBalancerState
loadBalancerStateDecoder =
    JDP.decode LoadBalancerState
        |> JDP.optional "code" (JD.nullable loadBalancerStateEnumDecoder) Nothing
        |> JDP.optional "reason" (JD.nullable JD.string) Nothing




{-| One of

* `LoadBalancerStateEnum_active`
* `LoadBalancerStateEnum_provisioning`
* `LoadBalancerStateEnum_failed`

-}
type LoadBalancerStateEnum
    = LoadBalancerStateEnum_active
    | LoadBalancerStateEnum_provisioning
    | LoadBalancerStateEnum_failed



loadBalancerStateEnumDecoder : JD.Decoder LoadBalancerStateEnum
loadBalancerStateEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed LoadBalancerStateEnum_active

                    "provisioning" ->
                        JD.succeed LoadBalancerStateEnum_provisioning

                    "failed" ->
                        JD.succeed LoadBalancerStateEnum_failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `LoadBalancerTypeEnum_application`

-}
type LoadBalancerTypeEnum
    = LoadBalancerTypeEnum_application



loadBalancerTypeEnumDecoder : JD.Decoder LoadBalancerTypeEnum
loadBalancerTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "application" ->
                        JD.succeed LoadBalancerTypeEnum_application


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information to use when checking for a successful response from a target.</p>
-}
type alias Matcher =
    { httpCode : String
    }



matcherDecoder : JD.Decoder Matcher
matcherDecoder =
    JDP.decode Matcher
        |> JDP.required "httpCode" JD.string




{-| Type of HTTP response from modifyListen
-}
type alias ModifyListenerOutput =
    { listeners : Maybe (List Listener)
    }



modifyListenerOutputDecoder : JD.Decoder ModifyListenerOutput
modifyListenerOutputDecoder =
    JDP.decode ModifyListenerOutput
        |> JDP.optional "listeners" (JD.nullable (JD.list listenerDecoder)) Nothing




{-| Type of HTTP response from modifyLoadBalancerAttribut
-}
type alias ModifyLoadBalancerAttributesOutput =
    { attributes : Maybe (List LoadBalancerAttribute)
    }



modifyLoadBalancerAttributesOutputDecoder : JD.Decoder ModifyLoadBalancerAttributesOutput
modifyLoadBalancerAttributesOutputDecoder =
    JDP.decode ModifyLoadBalancerAttributesOutput
        |> JDP.optional "attributes" (JD.nullable (JD.list loadBalancerAttributeDecoder)) Nothing




{-| Type of HTTP response from modifyRu
-}
type alias ModifyRuleOutput =
    { rules : Maybe (List Rule)
    }



modifyRuleOutputDecoder : JD.Decoder ModifyRuleOutput
modifyRuleOutputDecoder =
    JDP.decode ModifyRuleOutput
        |> JDP.optional "rules" (JD.nullable (JD.list ruleDecoder)) Nothing




{-| Type of HTTP response from modifyTargetGroupAttribut
-}
type alias ModifyTargetGroupAttributesOutput =
    { attributes : Maybe (List TargetGroupAttribute)
    }



modifyTargetGroupAttributesOutputDecoder : JD.Decoder ModifyTargetGroupAttributesOutput
modifyTargetGroupAttributesOutputDecoder =
    JDP.decode ModifyTargetGroupAttributesOutput
        |> JDP.optional "attributes" (JD.nullable (JD.list targetGroupAttributeDecoder)) Nothing




{-| Type of HTTP response from modifyTargetGro
-}
type alias ModifyTargetGroupOutput =
    { targetGroups : Maybe (List TargetGroup)
    }



modifyTargetGroupOutputDecoder : JD.Decoder ModifyTargetGroupOutput
modifyTargetGroupOutputDecoder =
    JDP.decode ModifyTargetGroupOutput
        |> JDP.optional "targetGroups" (JD.nullable (JD.list targetGroupDecoder)) Nothing




{-| <p>This operation is not allowed.</p>
-}
type alias OperationNotPermittedException =
    { 
    }



operationNotPermittedExceptionDecoder : JD.Decoder OperationNotPermittedException
operationNotPermittedExceptionDecoder =
    JDP.decode OperationNotPermittedException



{-| <p>The specified priority is in use.</p>
-}
type alias PriorityInUseException =
    { 
    }



priorityInUseExceptionDecoder : JD.Decoder PriorityInUseException
priorityInUseExceptionDecoder =
    JDP.decode PriorityInUseException



{-| One of

* `ProtocolEnum_HTTP`
* `ProtocolEnum_HTTPS`

-}
type ProtocolEnum
    = ProtocolEnum_HTTP
    | ProtocolEnum_HTTPS



protocolEnumDecoder : JD.Decoder ProtocolEnum
protocolEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HTTP" ->
                        JD.succeed ProtocolEnum_HTTP

                    "HTTPS" ->
                        JD.succeed ProtocolEnum_HTTPS


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from registerTarge
-}
type alias RegisterTargetsOutput =
    { 
    }



registerTargetsOutputDecoder : JD.Decoder RegisterTargetsOutput
registerTargetsOutputDecoder =
    JDP.decode RegisterTargetsOutput



{-| Type of HTTP response from removeTa
-}
type alias RemoveTagsOutput =
    { 
    }



removeTagsOutputDecoder : JD.Decoder RemoveTagsOutput
removeTagsOutputDecoder =
    JDP.decode RemoveTagsOutput



{-| <p>A specified resource is in use.</p>
-}
type alias ResourceInUseException =
    { 
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException



{-| <p>Information about a rule.</p>
-}
type alias Rule =
    { ruleArn : Maybe String
    , priority : Maybe String
    , conditions : Maybe (List RuleCondition)
    , actions : Maybe (List Action)
    , isDefault : Maybe Bool
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JDP.decode Rule
        |> JDP.optional "ruleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "priority" (JD.nullable JD.string) Nothing
        |> JDP.optional "conditions" (JD.nullable (JD.list ruleConditionDecoder)) Nothing
        |> JDP.optional "actions" (JD.nullable (JD.list actionDecoder)) Nothing
        |> JDP.optional "isDefault" (JD.nullable JD.bool) Nothing




{-| <p>Information about a condition for a rule.</p>
-}
type alias RuleCondition =
    { field : Maybe String
    , values : Maybe (List String)
    }



ruleConditionDecoder : JD.Decoder RuleCondition
ruleConditionDecoder =
    JDP.decode RuleCondition
        |> JDP.optional "field" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The specified rule does not exist.</p>
-}
type alias RuleNotFoundException =
    { 
    }



ruleNotFoundExceptionDecoder : JD.Decoder RuleNotFoundException
ruleNotFoundExceptionDecoder =
    JDP.decode RuleNotFoundException



{-| <p>Information about the priorities for the rules for a listener.</p>
-}
type alias RulePriorityPair =
    { ruleArn : Maybe String
    , priority : Maybe Int
    }



rulePriorityPairDecoder : JD.Decoder RulePriorityPair
rulePriorityPairDecoder =
    JDP.decode RulePriorityPair
        |> JDP.optional "ruleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "priority" (JD.nullable JD.int) Nothing




{-| <p>The specified SSL policy does not exist.</p>
-}
type alias SSLPolicyNotFoundException =
    { 
    }



sSLPolicyNotFoundExceptionDecoder : JD.Decoder SSLPolicyNotFoundException
sSLPolicyNotFoundExceptionDecoder =
    JDP.decode SSLPolicyNotFoundException



{-| Type of HTTP response from setIpAddressTy
-}
type alias SetIpAddressTypeOutput =
    { ipAddressType : Maybe IpAddressType
    }



setIpAddressTypeOutputDecoder : JD.Decoder SetIpAddressTypeOutput
setIpAddressTypeOutputDecoder =
    JDP.decode SetIpAddressTypeOutput
        |> JDP.optional "ipAddressType" (JD.nullable ipAddressTypeDecoder) Nothing




{-| Type of HTTP response from setRulePrioriti
-}
type alias SetRulePrioritiesOutput =
    { rules : Maybe (List Rule)
    }



setRulePrioritiesOutputDecoder : JD.Decoder SetRulePrioritiesOutput
setRulePrioritiesOutputDecoder =
    JDP.decode SetRulePrioritiesOutput
        |> JDP.optional "rules" (JD.nullable (JD.list ruleDecoder)) Nothing




{-| Type of HTTP response from setSecurityGrou
-}
type alias SetSecurityGroupsOutput =
    { securityGroupIds : Maybe (List String)
    }



setSecurityGroupsOutputDecoder : JD.Decoder SetSecurityGroupsOutput
setSecurityGroupsOutputDecoder =
    JDP.decode SetSecurityGroupsOutput
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from setSubne
-}
type alias SetSubnetsOutput =
    { availabilityZones : Maybe (List AvailabilityZone)
    }



setSubnetsOutputDecoder : JD.Decoder SetSubnetsOutput
setSubnetsOutputDecoder =
    JDP.decode SetSubnetsOutput
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list availabilityZoneDecoder)) Nothing




{-| <p>Information about a policy used for SSL negotiation.</p>
-}
type alias SslPolicy =
    { sslProtocols : Maybe (List String)
    , ciphers : Maybe (List Cipher)
    , name : Maybe String
    }



sslPolicyDecoder : JD.Decoder SslPolicy
sslPolicyDecoder =
    JDP.decode SslPolicy
        |> JDP.optional "sslProtocols" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "ciphers" (JD.nullable (JD.list cipherDecoder)) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>The specified subnet does not exist.</p>
-}
type alias SubnetNotFoundException =
    { 
    }



subnetNotFoundExceptionDecoder : JD.Decoder SubnetNotFoundException
subnetNotFoundExceptionDecoder =
    JDP.decode SubnetNotFoundException



{-| <p>Information about a tag.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The tags associated with a resource.</p>
-}
type alias TagDescription =
    { resourceArn : Maybe String
    , tags : Maybe (List Tag)
    }



tagDescriptionDecoder : JD.Decoder TagDescription
tagDescriptionDecoder =
    JDP.decode TagDescription
        |> JDP.optional "resourceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Information about a target.</p>
-}
type alias TargetDescription =
    { id : String
    , port_ : Maybe Int
    }



targetDescriptionDecoder : JD.Decoder TargetDescription
targetDescriptionDecoder =
    JDP.decode TargetDescription
        |> JDP.required "id" JD.string
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing




{-| <p>Information about a target group.</p>
-}
type alias TargetGroup =
    { targetGroupArn : Maybe String
    , targetGroupName : Maybe String
    , protocol : Maybe ProtocolEnum
    , port_ : Maybe Int
    , vpcId : Maybe String
    , healthCheckProtocol : Maybe ProtocolEnum
    , healthCheckPort : Maybe String
    , healthCheckIntervalSeconds : Maybe Int
    , healthCheckTimeoutSeconds : Maybe Int
    , healthyThresholdCount : Maybe Int
    , unhealthyThresholdCount : Maybe Int
    , healthCheckPath : Maybe String
    , matcher : Maybe Matcher
    , loadBalancerArns : Maybe (List String)
    }



targetGroupDecoder : JD.Decoder TargetGroup
targetGroupDecoder =
    JDP.decode TargetGroup
        |> JDP.optional "targetGroupArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "protocol" (JD.nullable protocolEnumDecoder) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "healthCheckProtocol" (JD.nullable protocolEnumDecoder) Nothing
        |> JDP.optional "healthCheckPort" (JD.nullable JD.string) Nothing
        |> JDP.optional "healthCheckIntervalSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "healthCheckTimeoutSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "healthyThresholdCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "unhealthyThresholdCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "healthCheckPath" (JD.nullable JD.string) Nothing
        |> JDP.optional "matcher" (JD.nullable matcherDecoder) Nothing
        |> JDP.optional "loadBalancerArns" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>You've reached the limit on the number of load balancers per target group.</p>
-}
type alias TargetGroupAssociationLimitException =
    { 
    }



targetGroupAssociationLimitExceptionDecoder : JD.Decoder TargetGroupAssociationLimitException
targetGroupAssociationLimitExceptionDecoder =
    JDP.decode TargetGroupAssociationLimitException



{-| <p>Information about a target group attribute.</p>
-}
type alias TargetGroupAttribute =
    { key : Maybe String
    , value : Maybe String
    }



targetGroupAttributeDecoder : JD.Decoder TargetGroupAttribute
targetGroupAttributeDecoder =
    JDP.decode TargetGroupAttribute
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The specified target group does not exist.</p>
-}
type alias TargetGroupNotFoundException =
    { 
    }



targetGroupNotFoundExceptionDecoder : JD.Decoder TargetGroupNotFoundException
targetGroupNotFoundExceptionDecoder =
    JDP.decode TargetGroupNotFoundException



{-| <p>Information about the current health of a target.</p>
-}
type alias TargetHealth =
    { state : Maybe TargetHealthStateEnum
    , reason : Maybe TargetHealthReasonEnum
    , description : Maybe String
    }



targetHealthDecoder : JD.Decoder TargetHealth
targetHealthDecoder =
    JDP.decode TargetHealth
        |> JDP.optional "state" (JD.nullable targetHealthStateEnumDecoder) Nothing
        |> JDP.optional "reason" (JD.nullable targetHealthReasonEnumDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Information about the health of a target.</p>
-}
type alias TargetHealthDescription =
    { target : Maybe TargetDescription
    , healthCheckPort : Maybe String
    , targetHealth : Maybe TargetHealth
    }



targetHealthDescriptionDecoder : JD.Decoder TargetHealthDescription
targetHealthDescriptionDecoder =
    JDP.decode TargetHealthDescription
        |> JDP.optional "target" (JD.nullable targetDescriptionDecoder) Nothing
        |> JDP.optional "healthCheckPort" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetHealth" (JD.nullable targetHealthDecoder) Nothing




{-| One of

* `TargetHealthReasonEnum_Elb.RegistrationInProgress`
* `TargetHealthReasonEnum_Elb.InitialHealthChecking`
* `TargetHealthReasonEnum_Target.ResponseCodeMismatch`
* `TargetHealthReasonEnum_Target.Timeout`
* `TargetHealthReasonEnum_Target.FailedHealthChecks`
* `TargetHealthReasonEnum_Target.NotRegistered`
* `TargetHealthReasonEnum_Target.NotInUse`
* `TargetHealthReasonEnum_Target.DeregistrationInProgress`
* `TargetHealthReasonEnum_Target.InvalidState`
* `TargetHealthReasonEnum_Elb.InternalError`

-}
type TargetHealthReasonEnum
    = TargetHealthReasonEnum_Elb_RegistrationInProgress
    | TargetHealthReasonEnum_Elb_InitialHealthChecking
    | TargetHealthReasonEnum_Target_ResponseCodeMismatch
    | TargetHealthReasonEnum_Target_Timeout
    | TargetHealthReasonEnum_Target_FailedHealthChecks
    | TargetHealthReasonEnum_Target_NotRegistered
    | TargetHealthReasonEnum_Target_NotInUse
    | TargetHealthReasonEnum_Target_DeregistrationInProgress
    | TargetHealthReasonEnum_Target_InvalidState
    | TargetHealthReasonEnum_Elb_InternalError



targetHealthReasonEnumDecoder : JD.Decoder TargetHealthReasonEnum
targetHealthReasonEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Elb_RegistrationInProgress" ->
                        JD.succeed TargetHealthReasonEnum_Elb_RegistrationInProgress

                    "Elb_InitialHealthChecking" ->
                        JD.succeed TargetHealthReasonEnum_Elb_InitialHealthChecking

                    "Target_ResponseCodeMismatch" ->
                        JD.succeed TargetHealthReasonEnum_Target_ResponseCodeMismatch

                    "Target_Timeout" ->
                        JD.succeed TargetHealthReasonEnum_Target_Timeout

                    "Target_FailedHealthChecks" ->
                        JD.succeed TargetHealthReasonEnum_Target_FailedHealthChecks

                    "Target_NotRegistered" ->
                        JD.succeed TargetHealthReasonEnum_Target_NotRegistered

                    "Target_NotInUse" ->
                        JD.succeed TargetHealthReasonEnum_Target_NotInUse

                    "Target_DeregistrationInProgress" ->
                        JD.succeed TargetHealthReasonEnum_Target_DeregistrationInProgress

                    "Target_InvalidState" ->
                        JD.succeed TargetHealthReasonEnum_Target_InvalidState

                    "Elb_InternalError" ->
                        JD.succeed TargetHealthReasonEnum_Elb_InternalError


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `TargetHealthStateEnum_initial`
* `TargetHealthStateEnum_healthy`
* `TargetHealthStateEnum_unhealthy`
* `TargetHealthStateEnum_unused`
* `TargetHealthStateEnum_draining`

-}
type TargetHealthStateEnum
    = TargetHealthStateEnum_initial
    | TargetHealthStateEnum_healthy
    | TargetHealthStateEnum_unhealthy
    | TargetHealthStateEnum_unused
    | TargetHealthStateEnum_draining



targetHealthStateEnumDecoder : JD.Decoder TargetHealthStateEnum
targetHealthStateEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "initial" ->
                        JD.succeed TargetHealthStateEnum_initial

                    "healthy" ->
                        JD.succeed TargetHealthStateEnum_healthy

                    "unhealthy" ->
                        JD.succeed TargetHealthStateEnum_unhealthy

                    "unused" ->
                        JD.succeed TargetHealthStateEnum_unused

                    "draining" ->
                        JD.succeed TargetHealthStateEnum_draining


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>You've reached the limit on the number of certificates per listener.</p>
-}
type alias TooManyCertificatesException =
    { 
    }



tooManyCertificatesExceptionDecoder : JD.Decoder TooManyCertificatesException
tooManyCertificatesExceptionDecoder =
    JDP.decode TooManyCertificatesException



{-| <p>You've reached the limit on the number of listeners per load balancer.</p>
-}
type alias TooManyListenersException =
    { 
    }



tooManyListenersExceptionDecoder : JD.Decoder TooManyListenersException
tooManyListenersExceptionDecoder =
    JDP.decode TooManyListenersException



{-| <p>You've reached the limit on the number of load balancers for your AWS account.</p>
-}
type alias TooManyLoadBalancersException =
    { 
    }



tooManyLoadBalancersExceptionDecoder : JD.Decoder TooManyLoadBalancersException
tooManyLoadBalancersExceptionDecoder =
    JDP.decode TooManyLoadBalancersException



{-| <p>You've reached the limit on the number of times a target can be registered with a load balancer.</p>
-}
type alias TooManyRegistrationsForTargetIdException =
    { 
    }



tooManyRegistrationsForTargetIdExceptionDecoder : JD.Decoder TooManyRegistrationsForTargetIdException
tooManyRegistrationsForTargetIdExceptionDecoder =
    JDP.decode TooManyRegistrationsForTargetIdException



{-| <p>You've reached the limit on the number of rules per load balancer.</p>
-}
type alias TooManyRulesException =
    { 
    }



tooManyRulesExceptionDecoder : JD.Decoder TooManyRulesException
tooManyRulesExceptionDecoder =
    JDP.decode TooManyRulesException



{-| <p>You've reached the limit on the number of tags per load balancer.</p>
-}
type alias TooManyTagsException =
    { 
    }



tooManyTagsExceptionDecoder : JD.Decoder TooManyTagsException
tooManyTagsExceptionDecoder =
    JDP.decode TooManyTagsException



{-| <p>You've reached the limit on the number of target groups for your AWS account.</p>
-}
type alias TooManyTargetGroupsException =
    { 
    }



tooManyTargetGroupsExceptionDecoder : JD.Decoder TooManyTargetGroupsException
tooManyTargetGroupsExceptionDecoder =
    JDP.decode TooManyTargetGroupsException



{-| <p>You've reached the limit on the number of targets.</p>
-}
type alias TooManyTargetsException =
    { 
    }



tooManyTargetsExceptionDecoder : JD.Decoder TooManyTargetsException
tooManyTargetsExceptionDecoder =
    JDP.decode TooManyTargetsException



{-| <p>The specified protocol is not supported.</p>
-}
type alias UnsupportedProtocolException =
    { 
    }



unsupportedProtocolExceptionDecoder : JD.Decoder UnsupportedProtocolException
unsupportedProtocolExceptionDecoder =
    JDP.decode UnsupportedProtocolException



