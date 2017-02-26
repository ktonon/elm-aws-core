module AWS.Services.ElasticLoadBalancing
    exposing
        ( config
        , addTags
        , applySecurityGroupsToLoadBalancer
        , attachLoadBalancerToSubnets
        , configureHealthCheck
        , createAppCookieStickinessPolicy
        , createLBCookieStickinessPolicy
        , CreateLBCookieStickinessPolicyOptions
        , createLoadBalancer
        , CreateLoadBalancerOptions
        , createLoadBalancerListeners
        , createLoadBalancerPolicy
        , CreateLoadBalancerPolicyOptions
        , deleteLoadBalancer
        , deleteLoadBalancerListeners
        , deleteLoadBalancerPolicy
        , deregisterInstancesFromLoadBalancer
        , describeInstanceHealth
        , DescribeInstanceHealthOptions
        , describeLoadBalancerAttributes
        , describeLoadBalancerPolicies
        , DescribeLoadBalancerPoliciesOptions
        , describeLoadBalancerPolicyTypes
        , DescribeLoadBalancerPolicyTypesOptions
        , describeLoadBalancers
        , DescribeLoadBalancersOptions
        , describeTags
        , detachLoadBalancerFromSubnets
        , disableAvailabilityZonesForLoadBalancer
        , enableAvailabilityZonesForLoadBalancer
        , modifyLoadBalancerAttributes
        , registerInstancesWithLoadBalancer
        , removeTags
        , setLoadBalancerListenerSSLCertificate
        , setLoadBalancerPoliciesForBackendServer
        , setLoadBalancerPoliciesOfListener
        , AccessLog
        , AccessPointNotFoundException
        , AddAvailabilityZonesOutput
        , AddTagsOutput
        , AdditionalAttribute
        , AppCookieStickinessPolicy
        , ApplySecurityGroupsToLoadBalancerOutput
        , AttachLoadBalancerToSubnetsOutput
        , BackendServerDescription
        , CertificateNotFoundException
        , ConfigureHealthCheckOutput
        , ConnectionDraining
        , ConnectionSettings
        , CreateAccessPointOutput
        , CreateAppCookieStickinessPolicyOutput
        , CreateLBCookieStickinessPolicyOutput
        , CreateLoadBalancerListenerOutput
        , CreateLoadBalancerPolicyOutput
        , CrossZoneLoadBalancing
        , DeleteAccessPointOutput
        , DeleteLoadBalancerListenerOutput
        , DeleteLoadBalancerPolicyOutput
        , DependencyThrottleException
        , DeregisterEndPointsOutput
        , DescribeAccessPointsOutput
        , DescribeEndPointStateOutput
        , DescribeLoadBalancerAttributesOutput
        , DescribeLoadBalancerPoliciesOutput
        , DescribeLoadBalancerPolicyTypesOutput
        , DescribeTagsOutput
        , DetachLoadBalancerFromSubnetsOutput
        , DuplicateAccessPointNameException
        , DuplicateListenerException
        , DuplicatePolicyNameException
        , DuplicateTagKeysException
        , HealthCheck
        , Instance
        , InstanceState
        , InvalidConfigurationRequestException
        , InvalidEndPointException
        , InvalidSchemeException
        , InvalidSecurityGroupException
        , InvalidSubnetException
        , LBCookieStickinessPolicy
        , Listener
        , ListenerDescription
        , ListenerNotFoundException
        , LoadBalancerAttributeNotFoundException
        , LoadBalancerAttributes
        , LoadBalancerDescription
        , ModifyLoadBalancerAttributesOutput
        , Policies
        , PolicyAttribute
        , PolicyAttributeDescription
        , PolicyAttributeTypeDescription
        , PolicyDescription
        , PolicyNotFoundException
        , PolicyTypeDescription
        , PolicyTypeNotFoundException
        , RegisterEndPointsOutput
        , RemoveAvailabilityZonesOutput
        , RemoveTagsOutput
        , SetLoadBalancerListenerSSLCertificateOutput
        , SetLoadBalancerPoliciesForBackendServerOutput
        , SetLoadBalancerPoliciesOfListenerOutput
        , SourceSecurityGroup
        , SubnetNotFoundException
        , Tag
        , TagDescription
        , TagKeyOnly
        , TooManyAccessPointsException
        , TooManyPoliciesException
        , TooManyTagsException
        , UnsupportedProtocolException
        )

{-| <fullname>Elastic Load Balancing</fullname> <p>A load balancer distributes incoming traffic across your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered instances and ensures that it routes traffic only to healthy instances. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer and a protocol and port number for connections from the load balancer to the instances.</p> <p>Elastic Load Balancing supports two types of load balancers: Classic load balancers and Application load balancers (new). A Classic load balancer makes routing and load balancing decisions either at the transport layer (TCP/SSL) or the application layer (HTTP/HTTPS), and supports either EC2-Classic or a VPC. An Application load balancer makes routing and load balancing decisions at the application layer (HTTP/HTTPS), supports path-based routing, and can route requests to one or more ports on each EC2 instance or container instance in your virtual private cloud (VPC). For more information, see the .</p> <p>This reference covers the 2012-06-01 API, which supports Classic load balancers. The 2015-12-01 API supports Application load balancers.</p> <p>To get started, create a load balancer with one or more listeners using <a>CreateLoadBalancer</a>. Register your instances with the load balancer using <a>RegisterInstancesWithLoadBalancer</a>.</p> <p>All Elastic Load Balancing operations are <i>idempotent</i>, which means that they complete at most one time. If you repeat an operation, it succeeds with a 200 OK response code.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Exceptions](#exceptions)

## Operations

* [addTags](#addTags)
* [applySecurityGroupsToLoadBalancer](#applySecurityGroupsToLoadBalancer)
* [attachLoadBalancerToSubnets](#attachLoadBalancerToSubnets)
* [configureHealthCheck](#configureHealthCheck)
* [createAppCookieStickinessPolicy](#createAppCookieStickinessPolicy)
* [createLBCookieStickinessPolicy](#createLBCookieStickinessPolicy)
* [CreateLBCookieStickinessPolicyOptions](#CreateLBCookieStickinessPolicyOptions)
* [createLoadBalancer](#createLoadBalancer)
* [CreateLoadBalancerOptions](#CreateLoadBalancerOptions)
* [createLoadBalancerListeners](#createLoadBalancerListeners)
* [createLoadBalancerPolicy](#createLoadBalancerPolicy)
* [CreateLoadBalancerPolicyOptions](#CreateLoadBalancerPolicyOptions)
* [deleteLoadBalancer](#deleteLoadBalancer)
* [deleteLoadBalancerListeners](#deleteLoadBalancerListeners)
* [deleteLoadBalancerPolicy](#deleteLoadBalancerPolicy)
* [deregisterInstancesFromLoadBalancer](#deregisterInstancesFromLoadBalancer)
* [describeInstanceHealth](#describeInstanceHealth)
* [DescribeInstanceHealthOptions](#DescribeInstanceHealthOptions)
* [describeLoadBalancerAttributes](#describeLoadBalancerAttributes)
* [describeLoadBalancerPolicies](#describeLoadBalancerPolicies)
* [DescribeLoadBalancerPoliciesOptions](#DescribeLoadBalancerPoliciesOptions)
* [describeLoadBalancerPolicyTypes](#describeLoadBalancerPolicyTypes)
* [DescribeLoadBalancerPolicyTypesOptions](#DescribeLoadBalancerPolicyTypesOptions)
* [describeLoadBalancers](#describeLoadBalancers)
* [DescribeLoadBalancersOptions](#DescribeLoadBalancersOptions)
* [describeTags](#describeTags)
* [detachLoadBalancerFromSubnets](#detachLoadBalancerFromSubnets)
* [disableAvailabilityZonesForLoadBalancer](#disableAvailabilityZonesForLoadBalancer)
* [enableAvailabilityZonesForLoadBalancer](#enableAvailabilityZonesForLoadBalancer)
* [modifyLoadBalancerAttributes](#modifyLoadBalancerAttributes)
* [registerInstancesWithLoadBalancer](#registerInstancesWithLoadBalancer)
* [removeTags](#removeTags)
* [setLoadBalancerListenerSSLCertificate](#setLoadBalancerListenerSSLCertificate)
* [setLoadBalancerPoliciesForBackendServer](#setLoadBalancerPoliciesForBackendServer)
* [setLoadBalancerPoliciesOfListener](#setLoadBalancerPoliciesOfListener)


@docs addTags,applySecurityGroupsToLoadBalancer,attachLoadBalancerToSubnets,configureHealthCheck,createAppCookieStickinessPolicy,createLBCookieStickinessPolicy,CreateLBCookieStickinessPolicyOptions,createLoadBalancer,CreateLoadBalancerOptions,createLoadBalancerListeners,createLoadBalancerPolicy,CreateLoadBalancerPolicyOptions,deleteLoadBalancer,deleteLoadBalancerListeners,deleteLoadBalancerPolicy,deregisterInstancesFromLoadBalancer,describeInstanceHealth,DescribeInstanceHealthOptions,describeLoadBalancerAttributes,describeLoadBalancerPolicies,DescribeLoadBalancerPoliciesOptions,describeLoadBalancerPolicyTypes,DescribeLoadBalancerPolicyTypesOptions,describeLoadBalancers,DescribeLoadBalancersOptions,describeTags,detachLoadBalancerFromSubnets,disableAvailabilityZonesForLoadBalancer,enableAvailabilityZonesForLoadBalancer,modifyLoadBalancerAttributes,registerInstancesWithLoadBalancer,removeTags,setLoadBalancerListenerSSLCertificate,setLoadBalancerPoliciesForBackendServer,setLoadBalancerPoliciesOfListener

## Responses

* [AddAvailabilityZonesOutput](#AddAvailabilityZonesOutput)
* [AddTagsOutput](#AddTagsOutput)
* [ApplySecurityGroupsToLoadBalancerOutput](#ApplySecurityGroupsToLoadBalancerOutput)
* [AttachLoadBalancerToSubnetsOutput](#AttachLoadBalancerToSubnetsOutput)
* [ConfigureHealthCheckOutput](#ConfigureHealthCheckOutput)
* [CreateAccessPointOutput](#CreateAccessPointOutput)
* [CreateAppCookieStickinessPolicyOutput](#CreateAppCookieStickinessPolicyOutput)
* [CreateLBCookieStickinessPolicyOutput](#CreateLBCookieStickinessPolicyOutput)
* [CreateLoadBalancerListenerOutput](#CreateLoadBalancerListenerOutput)
* [CreateLoadBalancerPolicyOutput](#CreateLoadBalancerPolicyOutput)
* [DeleteAccessPointOutput](#DeleteAccessPointOutput)
* [DeleteLoadBalancerListenerOutput](#DeleteLoadBalancerListenerOutput)
* [DeleteLoadBalancerPolicyOutput](#DeleteLoadBalancerPolicyOutput)
* [DeregisterEndPointsOutput](#DeregisterEndPointsOutput)
* [DescribeAccessPointsOutput](#DescribeAccessPointsOutput)
* [DescribeEndPointStateOutput](#DescribeEndPointStateOutput)
* [DescribeLoadBalancerAttributesOutput](#DescribeLoadBalancerAttributesOutput)
* [DescribeLoadBalancerPoliciesOutput](#DescribeLoadBalancerPoliciesOutput)
* [DescribeLoadBalancerPolicyTypesOutput](#DescribeLoadBalancerPolicyTypesOutput)
* [DescribeTagsOutput](#DescribeTagsOutput)
* [DetachLoadBalancerFromSubnetsOutput](#DetachLoadBalancerFromSubnetsOutput)
* [ModifyLoadBalancerAttributesOutput](#ModifyLoadBalancerAttributesOutput)
* [RegisterEndPointsOutput](#RegisterEndPointsOutput)
* [RemoveAvailabilityZonesOutput](#RemoveAvailabilityZonesOutput)
* [RemoveTagsOutput](#RemoveTagsOutput)
* [SetLoadBalancerListenerSSLCertificateOutput](#SetLoadBalancerListenerSSLCertificateOutput)
* [SetLoadBalancerPoliciesForBackendServerOutput](#SetLoadBalancerPoliciesForBackendServerOutput)
* [SetLoadBalancerPoliciesOfListenerOutput](#SetLoadBalancerPoliciesOfListenerOutput)


@docs AddAvailabilityZonesOutput,AddTagsOutput,ApplySecurityGroupsToLoadBalancerOutput,AttachLoadBalancerToSubnetsOutput,ConfigureHealthCheckOutput,CreateAccessPointOutput,CreateAppCookieStickinessPolicyOutput,CreateLBCookieStickinessPolicyOutput,CreateLoadBalancerListenerOutput,CreateLoadBalancerPolicyOutput,DeleteAccessPointOutput,DeleteLoadBalancerListenerOutput,DeleteLoadBalancerPolicyOutput,DeregisterEndPointsOutput,DescribeAccessPointsOutput,DescribeEndPointStateOutput,DescribeLoadBalancerAttributesOutput,DescribeLoadBalancerPoliciesOutput,DescribeLoadBalancerPolicyTypesOutput,DescribeTagsOutput,DetachLoadBalancerFromSubnetsOutput,ModifyLoadBalancerAttributesOutput,RegisterEndPointsOutput,RemoveAvailabilityZonesOutput,RemoveTagsOutput,SetLoadBalancerListenerSSLCertificateOutput,SetLoadBalancerPoliciesForBackendServerOutput,SetLoadBalancerPoliciesOfListenerOutput

## Records

* [AccessLog](#AccessLog)
* [AdditionalAttribute](#AdditionalAttribute)
* [AppCookieStickinessPolicy](#AppCookieStickinessPolicy)
* [BackendServerDescription](#BackendServerDescription)
* [ConnectionDraining](#ConnectionDraining)
* [ConnectionSettings](#ConnectionSettings)
* [CrossZoneLoadBalancing](#CrossZoneLoadBalancing)
* [HealthCheck](#HealthCheck)
* [Instance](#Instance)
* [InstanceState](#InstanceState)
* [LBCookieStickinessPolicy](#LBCookieStickinessPolicy)
* [Listener](#Listener)
* [ListenerDescription](#ListenerDescription)
* [LoadBalancerAttributes](#LoadBalancerAttributes)
* [LoadBalancerDescription](#LoadBalancerDescription)
* [Policies](#Policies)
* [PolicyAttribute](#PolicyAttribute)
* [PolicyAttributeDescription](#PolicyAttributeDescription)
* [PolicyAttributeTypeDescription](#PolicyAttributeTypeDescription)
* [PolicyDescription](#PolicyDescription)
* [PolicyTypeDescription](#PolicyTypeDescription)
* [SourceSecurityGroup](#SourceSecurityGroup)
* [Tag](#Tag)
* [TagDescription](#TagDescription)
* [TagKeyOnly](#TagKeyOnly)


@docs AccessLog,AdditionalAttribute,AppCookieStickinessPolicy,BackendServerDescription,ConnectionDraining,ConnectionSettings,CrossZoneLoadBalancing,HealthCheck,Instance,InstanceState,LBCookieStickinessPolicy,Listener,ListenerDescription,LoadBalancerAttributes,LoadBalancerDescription,Policies,PolicyAttribute,PolicyAttributeDescription,PolicyAttributeTypeDescription,PolicyDescription,PolicyTypeDescription,SourceSecurityGroup,Tag,TagDescription,TagKeyOnly

## Exceptions

* [AccessPointNotFoundException](#AccessPointNotFoundException)
* [CertificateNotFoundException](#CertificateNotFoundException)
* [DependencyThrottleException](#DependencyThrottleException)
* [DuplicateAccessPointNameException](#DuplicateAccessPointNameException)
* [DuplicateListenerException](#DuplicateListenerException)
* [DuplicatePolicyNameException](#DuplicatePolicyNameException)
* [DuplicateTagKeysException](#DuplicateTagKeysException)
* [InvalidConfigurationRequestException](#InvalidConfigurationRequestException)
* [InvalidEndPointException](#InvalidEndPointException)
* [InvalidSchemeException](#InvalidSchemeException)
* [InvalidSecurityGroupException](#InvalidSecurityGroupException)
* [InvalidSubnetException](#InvalidSubnetException)
* [ListenerNotFoundException](#ListenerNotFoundException)
* [LoadBalancerAttributeNotFoundException](#LoadBalancerAttributeNotFoundException)
* [PolicyNotFoundException](#PolicyNotFoundException)
* [PolicyTypeNotFoundException](#PolicyTypeNotFoundException)
* [SubnetNotFoundException](#SubnetNotFoundException)
* [TooManyAccessPointsException](#TooManyAccessPointsException)
* [TooManyPoliciesException](#TooManyPoliciesException)
* [TooManyTagsException](#TooManyTagsException)
* [UnsupportedProtocolException](#UnsupportedProtocolException)


@docs AccessPointNotFoundException,CertificateNotFoundException,DependencyThrottleException,DuplicateAccessPointNameException,DuplicateListenerException,DuplicatePolicyNameException,DuplicateTagKeysException,InvalidConfigurationRequestException,InvalidEndPointException,InvalidSchemeException,InvalidSecurityGroupException,InvalidSubnetException,ListenerNotFoundException,LoadBalancerAttributeNotFoundException,PolicyNotFoundException,PolicyTypeNotFoundException,SubnetNotFoundException,TooManyAccessPointsException,TooManyPoliciesException,TooManyTagsException,UnsupportedProtocolException

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
        "elasticloadbalancing"
        "2012-06-01"
        "undefined"
        "AWSELASTICLOADBALANCING_20120601."
        "elasticloadbalancing.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds the specified tags to the specified load balancer. Each load balancer can have a maximum of 10 tags.</p> <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the load balancer, <code>AddTags</code> updates its value.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerNames` __:__ `(List String)`
* `tags` __:__ `(List Tag)`


-}
addTags :
    (List String)
    -> (List Tag)
    -> AWS.Request AddTagsOutput
addTags loadBalancerNames tags =
    AWS.Http.unsignedRequest
        "AddTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Associates one or more security groups with your load balancer in a virtual private cloud (VPC). The specified security groups override the previously associated security groups.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups">Security Groups for Load Balancers in a VPC</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `securityGroups` __:__ `(List String)`


-}
applySecurityGroupsToLoadBalancer :
    String
    -> (List String)
    -> AWS.Request ApplySecurityGroupsToLoadBalancerOutput
applySecurityGroupsToLoadBalancer loadBalancerName securityGroups =
    AWS.Http.unsignedRequest
        "ApplySecurityGroupsToLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applySecurityGroupsToLoadBalancerOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Adds one or more subnets to the set of configured subnets for the specified load balancer.</p> <p>The load balancer evenly distributes requests across all registered subnets. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html">Add or Remove Subnets for Your Load Balancer in a VPC</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `subnets` __:__ `(List String)`


-}
attachLoadBalancerToSubnets :
    String
    -> (List String)
    -> AWS.Request AttachLoadBalancerToSubnetsOutput
attachLoadBalancerToSubnets loadBalancerName subnets =
    AWS.Http.unsignedRequest
        "AttachLoadBalancerToSubnets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        attachLoadBalancerToSubnetsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Specifies the health check settings to use when evaluating the health state of your EC2 instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html">Configure Health Checks for Your Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `healthCheck` __:__ `HealthCheck`


-}
configureHealthCheck :
    String
    -> HealthCheck
    -> AWS.Request ConfigureHealthCheckOutput
configureHealthCheck loadBalancerName healthCheck =
    AWS.Http.unsignedRequest
        "ConfigureHealthCheck"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        configureHealthCheckOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie. This policy can be associated only with HTTP/HTTPS listeners.</p> <p>This policy is similar to the policy created by <a>CreateLBCookieStickinessPolicy</a>, except that the lifetime of the special Elastic Load Balancing cookie, <code>AWSELB</code>, follows the lifetime of the application-generated cookie specified in the policy configuration. The load balancer only inserts a new stickiness cookie when the application response includes a new application cookie.</p> <p>If the application cookie is explicitly removed or expires, the session stops being sticky until a new application cookie is issued.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`
* `cookieName` __:__ `String`


-}
createAppCookieStickinessPolicy :
    String
    -> String
    -> String
    -> AWS.Request CreateAppCookieStickinessPolicyOutput
createAppCookieStickinessPolicy loadBalancerName policyName cookieName =
    AWS.Http.unsignedRequest
        "CreateAppCookieStickinessPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAppCookieStickinessPolicyOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period. This policy can be associated only with HTTP/HTTPS listeners.</p> <p>When a load balancer implements this policy, the load balancer uses a special cookie to track the instance for each request. When the load balancer receives a request, it first checks to see if this cookie is present in the request. If so, the load balancer sends the request to the application server specified in the cookie. If not, the load balancer sends the request to a server that is chosen based on the existing load-balancing algorithm.</p> <p>A cookie is inserted into the response for binding subsequent requests from the same user to that server. The validity of the cookie is based on the cookie expiration time, which is specified in the policy configuration.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`


-}
createLBCookieStickinessPolicy :
    String
    -> String
    -> (CreateLBCookieStickinessPolicyOptions -> CreateLBCookieStickinessPolicyOptions)
    -> AWS.Request CreateLBCookieStickinessPolicyOutput
createLBCookieStickinessPolicy loadBalancerName policyName setOptions =
  let
    options = setOptions (CreateLBCookieStickinessPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLBCookieStickinessPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createLBCookieStickinessPolicyOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createLBCookieStickinessPolicy request
-}
type alias CreateLBCookieStickinessPolicyOptions =
    { cookieExpirationPeriod : Maybe Int
    }



{-| <p>Creates a Classic load balancer.</p> <p>You can add listeners, security groups, subnets, and tags when you create your load balancer, or you can add them later using <a>CreateLoadBalancerListeners</a>, <a>ApplySecurityGroupsToLoadBalancer</a>, <a>AttachLoadBalancerToSubnets</a>, and <a>AddTags</a>.</p> <p>To describe your current load balancers, see <a>DescribeLoadBalancers</a>. When you are finished with a load balancer, you can delete it using <a>DeleteLoadBalancer</a>.</p> <p>You can create up to 20 load balancers per region per account. You can request an increase for the number of load balancers for your account. For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html">Limits for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `listeners` __:__ `(List Listener)`


-}
createLoadBalancer :
    String
    -> (List Listener)
    -> (CreateLoadBalancerOptions -> CreateLoadBalancerOptions)
    -> AWS.Request CreateAccessPointOutput
createLoadBalancer loadBalancerName listeners setOptions =
  let
    options = setOptions (CreateLoadBalancerOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAccessPointOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createLoadBalancer request
-}
type alias CreateLoadBalancerOptions =
    { availabilityZones : Maybe (List String)
    , subnets : Maybe (List String)
    , securityGroups : Maybe (List String)
    , scheme : Maybe String
    , tags : Maybe (List Tag)
    }



{-| <p>Creates one or more listeners for the specified load balancer. If a listener with the specified port does not already exist, it is created; otherwise, the properties of the new listener must match the properties of the existing listener.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `listeners` __:__ `(List Listener)`


-}
createLoadBalancerListeners :
    String
    -> (List Listener)
    -> AWS.Request CreateLoadBalancerListenerOutput
createLoadBalancerListeners loadBalancerName listeners =
    AWS.Http.unsignedRequest
        "CreateLoadBalancerListeners"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createLoadBalancerListenerOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a policy with the specified attributes for the specified load balancer.</p> <p>Policies are settings that are saved for your load balancer and that can be applied to the listener or the application server, depending on the policy type.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`
* `policyTypeName` __:__ `String`


-}
createLoadBalancerPolicy :
    String
    -> String
    -> String
    -> (CreateLoadBalancerPolicyOptions -> CreateLoadBalancerPolicyOptions)
    -> AWS.Request CreateLoadBalancerPolicyOutput
createLoadBalancerPolicy loadBalancerName policyName policyTypeName setOptions =
  let
    options = setOptions (CreateLoadBalancerPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLoadBalancerPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createLoadBalancerPolicyOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createLoadBalancerPolicy request
-}
type alias CreateLoadBalancerPolicyOptions =
    { policyAttributes : Maybe (List PolicyAttribute)
    }



{-| <p>Deletes the specified load balancer.</p> <p>If you are attempting to recreate a load balancer, you must reconfigure all settings. The DNS name associated with a deleted load balancer are no longer usable. The name and associated DNS record of the deleted load balancer no longer exist and traffic sent to any of its IP addresses is no longer delivered to your instances.</p> <p>If the load balancer does not exist or has already been deleted, the call to <code>DeleteLoadBalancer</code> still succeeds.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}
deleteLoadBalancer :
    String
    -> AWS.Request DeleteAccessPointOutput
deleteLoadBalancer loadBalancerName =
    AWS.Http.unsignedRequest
        "DeleteLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteAccessPointOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified listeners from the specified load balancer.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerPorts` __:__ `(List Int)`


-}
deleteLoadBalancerListeners :
    String
    -> (List Int)
    -> AWS.Request DeleteLoadBalancerListenerOutput
deleteLoadBalancerListeners loadBalancerName loadBalancerPorts =
    AWS.Http.unsignedRequest
        "DeleteLoadBalancerListeners"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteLoadBalancerListenerOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified policy from the specified load balancer. This policy must not be enabled for any listeners.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `policyName` __:__ `String`


-}
deleteLoadBalancerPolicy :
    String
    -> String
    -> AWS.Request DeleteLoadBalancerPolicyOutput
deleteLoadBalancerPolicy loadBalancerName policyName =
    AWS.Http.unsignedRequest
        "DeleteLoadBalancerPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteLoadBalancerPolicyOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Deregisters the specified instances from the specified load balancer. After the instance is deregistered, it no longer receives traffic from the load balancer.</p> <p>You can use <a>DescribeLoadBalancers</a> to verify that the instance is deregistered from the load balancer.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instances` __:__ `(List Instance)`


-}
deregisterInstancesFromLoadBalancer :
    String
    -> (List Instance)
    -> AWS.Request DeregisterEndPointsOutput
deregisterInstancesFromLoadBalancer loadBalancerName instances =
    AWS.Http.unsignedRequest
        "DeregisterInstancesFromLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterEndPointsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}
describeInstanceHealth :
    String
    -> (DescribeInstanceHealthOptions -> DescribeInstanceHealthOptions)
    -> AWS.Request DescribeEndPointStateOutput
describeInstanceHealth loadBalancerName setOptions =
  let
    options = setOptions (DescribeInstanceHealthOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstanceHealth"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEndPointStateOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInstanceHealth request
-}
type alias DescribeInstanceHealthOptions =
    { instances : Maybe (List Instance)
    }



{-| <p>Describes the attributes for the specified load balancer.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`


-}
describeLoadBalancerAttributes :
    String
    -> AWS.Request DescribeLoadBalancerAttributesOutput
describeLoadBalancerAttributes loadBalancerName =
    AWS.Http.unsignedRequest
        "DescribeLoadBalancerAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBalancerAttributesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the specified policies.</p> <p>If you specify a load balancer name, the action returns the descriptions of all policies created for the load balancer. If you specify a policy name associated with your load balancer, the action returns the description of that policy. If you don't specify a load balancer name, the action returns descriptions of the specified sample policies, or descriptions of all sample policies. The names of the sample policies have the <code>ELBSample-</code> prefix.</p>

__Required Parameters__



-}
describeLoadBalancerPolicies :
    (DescribeLoadBalancerPoliciesOptions -> DescribeLoadBalancerPoliciesOptions)
    -> AWS.Request DescribeLoadBalancerPoliciesOutput
describeLoadBalancerPolicies setOptions =
  let
    options = setOptions (DescribeLoadBalancerPoliciesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLoadBalancerPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBalancerPoliciesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLoadBalancerPolicies request
-}
type alias DescribeLoadBalancerPoliciesOptions =
    { loadBalancerName : Maybe String
    , policyNames : Maybe (List String)
    }



{-| <p>Describes the specified load balancer policy types or all load balancer policy types.</p> <p>The description of each type indicates how it can be used. For example, some policies can be used only with layer 7 listeners, some policies can be used only with layer 4 listeners, and some policies can be used only with your EC2 instances.</p> <p>You can use <a>CreateLoadBalancerPolicy</a> to create a policy configuration for any of these policy types. Then, depending on the policy type, use either <a>SetLoadBalancerPoliciesOfListener</a> or <a>SetLoadBalancerPoliciesForBackendServer</a> to set the policy.</p>

__Required Parameters__



-}
describeLoadBalancerPolicyTypes :
    (DescribeLoadBalancerPolicyTypesOptions -> DescribeLoadBalancerPolicyTypesOptions)
    -> AWS.Request DescribeLoadBalancerPolicyTypesOutput
describeLoadBalancerPolicyTypes setOptions =
  let
    options = setOptions (DescribeLoadBalancerPolicyTypesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLoadBalancerPolicyTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLoadBalancerPolicyTypesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLoadBalancerPolicyTypes request
-}
type alias DescribeLoadBalancerPolicyTypesOptions =
    { policyTypeNames : Maybe (List String)
    }



{-| <p>Describes the specified the load balancers. If no load balancers are specified, the call describes all of your load balancers.</p>

__Required Parameters__



-}
describeLoadBalancers :
    (DescribeLoadBalancersOptions -> DescribeLoadBalancersOptions)
    -> AWS.Request DescribeAccessPointsOutput
describeLoadBalancers setOptions =
  let
    options = setOptions (DescribeLoadBalancersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLoadBalancers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAccessPointsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLoadBalancers request
-}
type alias DescribeLoadBalancersOptions =
    { loadBalancerNames : Maybe (List String)
    , marker : Maybe String
    , pageSize : Maybe Int
    }



{-| <p>Describes the tags associated with the specified load balancers.</p>

__Required Parameters__

* `loadBalancerNames` __:__ `(List String)`


-}
describeTags :
    (List String)
    -> AWS.Request DescribeTagsOutput
describeTags loadBalancerNames =
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes the specified subnets from the set of configured subnets for the load balancer.</p> <p>After a subnet is removed, all EC2 instances registered with the load balancer in the removed subnet go into the <code>OutOfService</code> state. Then, the load balancer balances the traffic among the remaining routable subnets.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `subnets` __:__ `(List String)`


-}
detachLoadBalancerFromSubnets :
    String
    -> (List String)
    -> AWS.Request DetachLoadBalancerFromSubnetsOutput
detachLoadBalancerFromSubnets loadBalancerName subnets =
    AWS.Http.unsignedRequest
        "DetachLoadBalancerFromSubnets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detachLoadBalancerFromSubnetsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer.</p> <p>There must be at least one Availability Zone registered with a load balancer at all times. After an Availability Zone is removed, all instances registered with the load balancer that are in the removed Availability Zone go into the <code>OutOfService</code> state. Then, the load balancer attempts to equally balance the traffic among its remaining Availability Zones.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `availabilityZones` __:__ `(List String)`


-}
disableAvailabilityZonesForLoadBalancer :
    String
    -> (List String)
    -> AWS.Request RemoveAvailabilityZonesOutput
disableAvailabilityZonesForLoadBalancer loadBalancerName availabilityZones =
    AWS.Http.unsignedRequest
        "DisableAvailabilityZonesForLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeAvailabilityZonesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer.</p> <p>The load balancer evenly distributes requests across all its registered Availability Zones that contain instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html">Add or Remove Availability Zones</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `availabilityZones` __:__ `(List String)`


-}
enableAvailabilityZonesForLoadBalancer :
    String
    -> (List String)
    -> AWS.Request AddAvailabilityZonesOutput
enableAvailabilityZonesForLoadBalancer loadBalancerName availabilityZones =
    AWS.Http.unsignedRequest
        "EnableAvailabilityZonesForLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addAvailabilityZonesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies the attributes of the specified load balancer.</p> <p>You can modify the load balancer attributes, such as <code>AccessLogs</code>, <code>ConnectionDraining</code>, and <code>CrossZoneLoadBalancing</code> by either enabling or disabling them. Or, you can modify the load balancer attribute <code>ConnectionSettings</code> by specifying an idle connection timeout value for your load balancer.</p> <p>For more information, see the following in the <i>Classic Load Balancers Guide</i>:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html">Cross-Zone Load Balancing</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html">Connection Draining</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html">Access Logs</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html">Idle Connection Timeout</a> </p> </li> </ul>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerAttributes` __:__ `LoadBalancerAttributes`


-}
modifyLoadBalancerAttributes :
    String
    -> LoadBalancerAttributes
    -> AWS.Request ModifyLoadBalancerAttributesOutput
modifyLoadBalancerAttributes loadBalancerName loadBalancerAttributes =
    AWS.Http.unsignedRequest
        "ModifyLoadBalancerAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyLoadBalancerAttributesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Adds the specified instances to the specified load balancer.</p> <p>The instance must be a running instance in the same network as the load balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances and a load balancer in a VPC with ClassicLink enabled, you can link the EC2-Classic instances to that VPC and then register the linked EC2-Classic instances with the load balancer in the VPC.</p> <p>Note that <code>RegisterInstanceWithLoadBalancer</code> completes when the request has been registered. Instance registration takes a little time to complete. To check the state of the registered instances, use <a>DescribeLoadBalancers</a> or <a>DescribeInstanceHealth</a>.</p> <p>After the instance is registered, it starts receiving traffic and requests from the load balancer. Any instance that is not in one of the Availability Zones registered for the load balancer is moved to the <code>OutOfService</code> state. If an Availability Zone is added to the load balancer later, any instances registered with the load balancer move to the <code>InService</code> state.</p> <p>To deregister instances from a load balancer, use <a>DeregisterInstancesFromLoadBalancer</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html">Register or De-Register EC2 Instances</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instances` __:__ `(List Instance)`


-}
registerInstancesWithLoadBalancer :
    String
    -> (List Instance)
    -> AWS.Request RegisterEndPointsOutput
registerInstancesWithLoadBalancer loadBalancerName instances =
    AWS.Http.unsignedRequest
        "RegisterInstancesWithLoadBalancer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerEndPointsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes one or more tags from the specified load balancer.</p>

__Required Parameters__

* `loadBalancerNames` __:__ `(List String)`
* `tags` __:__ `(List TagKeyOnly)`


-}
removeTags :
    (List String)
    -> (List TagKeyOnly)
    -> AWS.Request RemoveTagsOutput
removeTags loadBalancerNames tags =
    AWS.Http.unsignedRequest
        "RemoveTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets the certificate that terminates the specified listener's SSL connections. The specified certificate replaces any prior certificate that was used on the same load balancer and port.</p> <p>For more information about updating your SSL certificate, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html">Replace the SSL Certificate for Your Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerPort` __:__ `Int`
* `sSLCertificateId` __:__ `String`


-}
setLoadBalancerListenerSSLCertificate :
    String
    -> Int
    -> String
    -> AWS.Request SetLoadBalancerListenerSSLCertificateOutput
setLoadBalancerListenerSSLCertificate loadBalancerName loadBalancerPort sSLCertificateId =
    AWS.Http.unsignedRequest
        "SetLoadBalancerListenerSSLCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setLoadBalancerListenerSSLCertificateOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies. At this time, only the back-end server authentication policy type can be applied to the instance ports; this policy type is composed of multiple public key policies.</p> <p>Each time you use <code>SetLoadBalancerPoliciesForBackendServer</code> to enable the policies, use the <code>PolicyNames</code> parameter to list the policies that you want to enable.</p> <p>You can use <a>DescribeLoadBalancers</a> or <a>DescribeLoadBalancerPolicies</a> to verify that the policy is associated with the EC2 instance.</p> <p>For more information about enabling back-end instance authentication, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt">Configure Back-end Instance Authentication</a> in the <i>Classic Load Balancers Guide</i>. For more information about Proxy Protocol, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html">Configure Proxy Protocol Support</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `instancePort` __:__ `Int`
* `policyNames` __:__ `(List String)`


-}
setLoadBalancerPoliciesForBackendServer :
    String
    -> Int
    -> (List String)
    -> AWS.Request SetLoadBalancerPoliciesForBackendServerOutput
setLoadBalancerPoliciesForBackendServer loadBalancerName instancePort policyNames =
    AWS.Http.unsignedRequest
        "SetLoadBalancerPoliciesForBackendServer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setLoadBalancerPoliciesForBackendServerOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Replaces the current set of policies for the specified load balancer port with the specified set of policies.</p> <p>To enable back-end server authentication, use <a>SetLoadBalancerPoliciesForBackendServer</a>.</p> <p>For more information about setting policies, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html">Update the SSL Negotiation Configuration</a>, <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration">Duration-Based Session Stickiness</a>, and <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application">Application-Controlled Session Stickiness</a> in the <i>Classic Load Balancers Guide</i>.</p>

__Required Parameters__

* `loadBalancerName` __:__ `String`
* `loadBalancerPort` __:__ `Int`
* `policyNames` __:__ `(List String)`


-}
setLoadBalancerPoliciesOfListener :
    String
    -> Int
    -> (List String)
    -> AWS.Request SetLoadBalancerPoliciesOfListenerOutput
setLoadBalancerPoliciesOfListener loadBalancerName loadBalancerPort policyNames =
    AWS.Http.unsignedRequest
        "SetLoadBalancerPoliciesOfListener"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setLoadBalancerPoliciesOfListenerOutputDecoder
        |> AWS.UnsignedRequest




{-| <p>Information about the <code>AccessLog</code> attribute.</p>
-}
type alias AccessLog =
    { enabled : Bool
    , s3BucketName : Maybe String
    , emitInterval : Maybe Int
    , s3BucketPrefix : Maybe String
    }



accessLogDecoder : JD.Decoder AccessLog
accessLogDecoder =
    JDP.decode AccessLog
        |> JDP.required "enabled" JD.bool
        |> JDP.optional "s3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "emitInterval" (JD.nullable JD.int) Nothing
        |> JDP.optional "s3BucketPrefix" (JD.nullable JD.string) Nothing




{-| <p>The specified load balancer does not exist.</p>
-}
type alias AccessPointNotFoundException =
    { 
    }



accessPointNotFoundExceptionDecoder : JD.Decoder AccessPointNotFoundException
accessPointNotFoundExceptionDecoder =
    JDP.decode AccessPointNotFoundException



{-| Type of HTTP response from addAvailabilityZon
-}
type alias AddAvailabilityZonesOutput =
    { availabilityZones : Maybe (List String)
    }



addAvailabilityZonesOutputDecoder : JD.Decoder AddAvailabilityZonesOutput
addAvailabilityZonesOutputDecoder =
    JDP.decode AddAvailabilityZonesOutput
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from addTa
-}
type alias AddTagsOutput =
    { 
    }



addTagsOutputDecoder : JD.Decoder AddTagsOutput
addTagsOutputDecoder =
    JDP.decode AddTagsOutput



{-| <p>This data type is reserved.</p>
-}
type alias AdditionalAttribute =
    { key : Maybe String
    , value : Maybe String
    }



additionalAttributeDecoder : JD.Decoder AdditionalAttribute
additionalAttributeDecoder =
    JDP.decode AdditionalAttribute
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>Information about a policy for application-controlled session stickiness.</p>
-}
type alias AppCookieStickinessPolicy =
    { policyName : Maybe String
    , cookieName : Maybe String
    }



appCookieStickinessPolicyDecoder : JD.Decoder AppCookieStickinessPolicy
appCookieStickinessPolicyDecoder =
    JDP.decode AppCookieStickinessPolicy
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "cookieName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from applySecurityGroupsToLoadBalanc
-}
type alias ApplySecurityGroupsToLoadBalancerOutput =
    { securityGroups : Maybe (List String)
    }



applySecurityGroupsToLoadBalancerOutputDecoder : JD.Decoder ApplySecurityGroupsToLoadBalancerOutput
applySecurityGroupsToLoadBalancerOutputDecoder =
    JDP.decode ApplySecurityGroupsToLoadBalancerOutput
        |> JDP.optional "securityGroups" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from attachLoadBalancerToSubne
-}
type alias AttachLoadBalancerToSubnetsOutput =
    { subnets : Maybe (List String)
    }



attachLoadBalancerToSubnetsOutputDecoder : JD.Decoder AttachLoadBalancerToSubnetsOutput
attachLoadBalancerToSubnetsOutputDecoder =
    JDP.decode AttachLoadBalancerToSubnetsOutput
        |> JDP.optional "subnets" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Information about the configuration of an EC2 instance.</p>
-}
type alias BackendServerDescription =
    { instancePort : Maybe Int
    , policyNames : Maybe (List String)
    }



backendServerDescriptionDecoder : JD.Decoder BackendServerDescription
backendServerDescriptionDecoder =
    JDP.decode BackendServerDescription
        |> JDP.optional "instancePort" (JD.nullable JD.int) Nothing
        |> JDP.optional "policyNames" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The specified ARN does not refer to a valid SSL certificate in AWS Identity and Access Management (IAM) or AWS Certificate Manager (ACM). Note that if you recently uploaded the certificate to IAM, this error might indicate that the certificate is not fully available yet.</p>
-}
type alias CertificateNotFoundException =
    { 
    }



certificateNotFoundExceptionDecoder : JD.Decoder CertificateNotFoundException
certificateNotFoundExceptionDecoder =
    JDP.decode CertificateNotFoundException



{-| Type of HTTP response from configureHealthChe
-}
type alias ConfigureHealthCheckOutput =
    { healthCheck : Maybe HealthCheck
    }



configureHealthCheckOutputDecoder : JD.Decoder ConfigureHealthCheckOutput
configureHealthCheckOutputDecoder =
    JDP.decode ConfigureHealthCheckOutput
        |> JDP.optional "healthCheck" (JD.nullable healthCheckDecoder) Nothing




{-| <p>Information about the <code>ConnectionDraining</code> attribute.</p>
-}
type alias ConnectionDraining =
    { enabled : Bool
    , timeout : Maybe Int
    }



connectionDrainingDecoder : JD.Decoder ConnectionDraining
connectionDrainingDecoder =
    JDP.decode ConnectionDraining
        |> JDP.required "enabled" JD.bool
        |> JDP.optional "timeout" (JD.nullable JD.int) Nothing




{-| <p>Information about the <code>ConnectionSettings</code> attribute.</p>
-}
type alias ConnectionSettings =
    { idleTimeout : Int
    }



connectionSettingsDecoder : JD.Decoder ConnectionSettings
connectionSettingsDecoder =
    JDP.decode ConnectionSettings
        |> JDP.required "idleTimeout" JD.int




{-| Type of HTTP response from createAccessPoi
-}
type alias CreateAccessPointOutput =
    { dNSName : Maybe String
    }



createAccessPointOutputDecoder : JD.Decoder CreateAccessPointOutput
createAccessPointOutputDecoder =
    JDP.decode CreateAccessPointOutput
        |> JDP.optional "dNSName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createAppCookieStickinessPoli
-}
type alias CreateAppCookieStickinessPolicyOutput =
    { 
    }



createAppCookieStickinessPolicyOutputDecoder : JD.Decoder CreateAppCookieStickinessPolicyOutput
createAppCookieStickinessPolicyOutputDecoder =
    JDP.decode CreateAppCookieStickinessPolicyOutput



{-| Type of HTTP response from createLBCookieStickinessPoli
-}
type alias CreateLBCookieStickinessPolicyOutput =
    { 
    }



createLBCookieStickinessPolicyOutputDecoder : JD.Decoder CreateLBCookieStickinessPolicyOutput
createLBCookieStickinessPolicyOutputDecoder =
    JDP.decode CreateLBCookieStickinessPolicyOutput



{-| Type of HTTP response from createLoadBalancerListen
-}
type alias CreateLoadBalancerListenerOutput =
    { 
    }



createLoadBalancerListenerOutputDecoder : JD.Decoder CreateLoadBalancerListenerOutput
createLoadBalancerListenerOutputDecoder =
    JDP.decode CreateLoadBalancerListenerOutput



{-| Type of HTTP response from createLoadBalancerPoli
-}
type alias CreateLoadBalancerPolicyOutput =
    { 
    }



createLoadBalancerPolicyOutputDecoder : JD.Decoder CreateLoadBalancerPolicyOutput
createLoadBalancerPolicyOutputDecoder =
    JDP.decode CreateLoadBalancerPolicyOutput



{-| <p>Information about the <code>CrossZoneLoadBalancing</code> attribute.</p>
-}
type alias CrossZoneLoadBalancing =
    { enabled : Bool
    }



crossZoneLoadBalancingDecoder : JD.Decoder CrossZoneLoadBalancing
crossZoneLoadBalancingDecoder =
    JDP.decode CrossZoneLoadBalancing
        |> JDP.required "enabled" JD.bool




{-| Type of HTTP response from deleteAccessPoi
-}
type alias DeleteAccessPointOutput =
    { 
    }



deleteAccessPointOutputDecoder : JD.Decoder DeleteAccessPointOutput
deleteAccessPointOutputDecoder =
    JDP.decode DeleteAccessPointOutput



{-| Type of HTTP response from deleteLoadBalancerListen
-}
type alias DeleteLoadBalancerListenerOutput =
    { 
    }



deleteLoadBalancerListenerOutputDecoder : JD.Decoder DeleteLoadBalancerListenerOutput
deleteLoadBalancerListenerOutputDecoder =
    JDP.decode DeleteLoadBalancerListenerOutput



{-| Type of HTTP response from deleteLoadBalancerPoli
-}
type alias DeleteLoadBalancerPolicyOutput =
    { 
    }



deleteLoadBalancerPolicyOutputDecoder : JD.Decoder DeleteLoadBalancerPolicyOutput
deleteLoadBalancerPolicyOutputDecoder =
    JDP.decode DeleteLoadBalancerPolicyOutput



{-| undefined
-}
type alias DependencyThrottleException =
    { 
    }



dependencyThrottleExceptionDecoder : JD.Decoder DependencyThrottleException
dependencyThrottleExceptionDecoder =
    JDP.decode DependencyThrottleException



{-| Type of HTTP response from deregisterEndPoin
-}
type alias DeregisterEndPointsOutput =
    { instances : Maybe (List Instance)
    }



deregisterEndPointsOutputDecoder : JD.Decoder DeregisterEndPointsOutput
deregisterEndPointsOutputDecoder =
    JDP.decode DeregisterEndPointsOutput
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing




{-| Type of HTTP response from describeAccessPoin
-}
type alias DescribeAccessPointsOutput =
    { loadBalancerDescriptions : Maybe (List LoadBalancerDescription)
    , nextMarker : Maybe String
    }



describeAccessPointsOutputDecoder : JD.Decoder DescribeAccessPointsOutput
describeAccessPointsOutputDecoder =
    JDP.decode DescribeAccessPointsOutput
        |> JDP.optional "loadBalancerDescriptions" (JD.nullable (JD.list loadBalancerDescriptionDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEndPointSta
-}
type alias DescribeEndPointStateOutput =
    { instanceStates : Maybe (List InstanceState)
    }



describeEndPointStateOutputDecoder : JD.Decoder DescribeEndPointStateOutput
describeEndPointStateOutputDecoder =
    JDP.decode DescribeEndPointStateOutput
        |> JDP.optional "instanceStates" (JD.nullable (JD.list instanceStateDecoder)) Nothing




{-| Type of HTTP response from describeLoadBalancerAttribut
-}
type alias DescribeLoadBalancerAttributesOutput =
    { loadBalancerAttributes : Maybe LoadBalancerAttributes
    }



describeLoadBalancerAttributesOutputDecoder : JD.Decoder DescribeLoadBalancerAttributesOutput
describeLoadBalancerAttributesOutputDecoder =
    JDP.decode DescribeLoadBalancerAttributesOutput
        |> JDP.optional "loadBalancerAttributes" (JD.nullable loadBalancerAttributesDecoder) Nothing




{-| Type of HTTP response from describeLoadBalancerPolici
-}
type alias DescribeLoadBalancerPoliciesOutput =
    { policyDescriptions : Maybe (List PolicyDescription)
    }



describeLoadBalancerPoliciesOutputDecoder : JD.Decoder DescribeLoadBalancerPoliciesOutput
describeLoadBalancerPoliciesOutputDecoder =
    JDP.decode DescribeLoadBalancerPoliciesOutput
        |> JDP.optional "policyDescriptions" (JD.nullable (JD.list policyDescriptionDecoder)) Nothing




{-| Type of HTTP response from describeLoadBalancerPolicyTyp
-}
type alias DescribeLoadBalancerPolicyTypesOutput =
    { policyTypeDescriptions : Maybe (List PolicyTypeDescription)
    }



describeLoadBalancerPolicyTypesOutputDecoder : JD.Decoder DescribeLoadBalancerPolicyTypesOutput
describeLoadBalancerPolicyTypesOutputDecoder =
    JDP.decode DescribeLoadBalancerPolicyTypesOutput
        |> JDP.optional "policyTypeDescriptions" (JD.nullable (JD.list policyTypeDescriptionDecoder)) Nothing




{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsOutput =
    { tagDescriptions : Maybe (List TagDescription)
    }



describeTagsOutputDecoder : JD.Decoder DescribeTagsOutput
describeTagsOutputDecoder =
    JDP.decode DescribeTagsOutput
        |> JDP.optional "tagDescriptions" (JD.nullable (JD.list tagDescriptionDecoder)) Nothing




{-| Type of HTTP response from detachLoadBalancerFromSubne
-}
type alias DetachLoadBalancerFromSubnetsOutput =
    { subnets : Maybe (List String)
    }



detachLoadBalancerFromSubnetsOutputDecoder : JD.Decoder DetachLoadBalancerFromSubnetsOutput
detachLoadBalancerFromSubnetsOutputDecoder =
    JDP.decode DetachLoadBalancerFromSubnetsOutput
        |> JDP.optional "subnets" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The specified load balancer name already exists for this account.</p>
-}
type alias DuplicateAccessPointNameException =
    { 
    }



duplicateAccessPointNameExceptionDecoder : JD.Decoder DuplicateAccessPointNameException
duplicateAccessPointNameExceptionDecoder =
    JDP.decode DuplicateAccessPointNameException



{-| <p>A listener already exists for the specified load balancer name and port, but with a different instance port, protocol, or SSL certificate.</p>
-}
type alias DuplicateListenerException =
    { 
    }



duplicateListenerExceptionDecoder : JD.Decoder DuplicateListenerException
duplicateListenerExceptionDecoder =
    JDP.decode DuplicateListenerException



{-| <p>A policy with the specified name already exists for this load balancer.</p>
-}
type alias DuplicatePolicyNameException =
    { 
    }



duplicatePolicyNameExceptionDecoder : JD.Decoder DuplicatePolicyNameException
duplicatePolicyNameExceptionDecoder =
    JDP.decode DuplicatePolicyNameException



{-| <p>A tag key was specified more than once.</p>
-}
type alias DuplicateTagKeysException =
    { 
    }



duplicateTagKeysExceptionDecoder : JD.Decoder DuplicateTagKeysException
duplicateTagKeysExceptionDecoder =
    JDP.decode DuplicateTagKeysException



{-| <p>Information about a health check.</p>
-}
type alias HealthCheck =
    { target : String
    , interval : Int
    , timeout : Int
    , unhealthyThreshold : Int
    , healthyThreshold : Int
    }



healthCheckDecoder : JD.Decoder HealthCheck
healthCheckDecoder =
    JDP.decode HealthCheck
        |> JDP.required "target" JD.string
        |> JDP.required "interval" JD.int
        |> JDP.required "timeout" JD.int
        |> JDP.required "unhealthyThreshold" JD.int
        |> JDP.required "healthyThreshold" JD.int




{-| <p>The ID of an EC2 instance.</p>
-}
type alias Instance =
    { instanceId : Maybe String
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JDP.decode Instance
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing




{-| <p>Information about the state of an EC2 instance.</p>
-}
type alias InstanceState =
    { instanceId : Maybe String
    , state : Maybe String
    , reasonCode : Maybe String
    , description : Maybe String
    }



instanceStateDecoder : JD.Decoder InstanceState
instanceStateDecoder =
    JDP.decode InstanceState
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "reasonCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>The requested configuration change is not valid.</p>
-}
type alias InvalidConfigurationRequestException =
    { 
    }



invalidConfigurationRequestExceptionDecoder : JD.Decoder InvalidConfigurationRequestException
invalidConfigurationRequestExceptionDecoder =
    JDP.decode InvalidConfigurationRequestException



{-| <p>The specified endpoint is not valid.</p>
-}
type alias InvalidEndPointException =
    { 
    }



invalidEndPointExceptionDecoder : JD.Decoder InvalidEndPointException
invalidEndPointExceptionDecoder =
    JDP.decode InvalidEndPointException



{-| <p>The specified value for the schema is not valid. You can only specify a scheme for load balancers in a VPC.</p>
-}
type alias InvalidSchemeException =
    { 
    }



invalidSchemeExceptionDecoder : JD.Decoder InvalidSchemeException
invalidSchemeExceptionDecoder =
    JDP.decode InvalidSchemeException



{-| <p>One or more of the specified security groups do not exist.</p>
-}
type alias InvalidSecurityGroupException =
    { 
    }



invalidSecurityGroupExceptionDecoder : JD.Decoder InvalidSecurityGroupException
invalidSecurityGroupExceptionDecoder =
    JDP.decode InvalidSecurityGroupException



{-| <p>The specified VPC has no associated Internet gateway.</p>
-}
type alias InvalidSubnetException =
    { 
    }



invalidSubnetExceptionDecoder : JD.Decoder InvalidSubnetException
invalidSubnetExceptionDecoder =
    JDP.decode InvalidSubnetException



{-| <p>Information about a policy for duration-based session stickiness.</p>
-}
type alias LBCookieStickinessPolicy =
    { policyName : Maybe String
    , cookieExpirationPeriod : Maybe Int
    }



lBCookieStickinessPolicyDecoder : JD.Decoder LBCookieStickinessPolicy
lBCookieStickinessPolicyDecoder =
    JDP.decode LBCookieStickinessPolicy
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "cookieExpirationPeriod" (JD.nullable JD.int) Nothing




{-| <p>Information about a listener.</p> <p>For information about the protocols and the ports supported by Elastic Load Balancing, see <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a> in the <i>Classic Load Balancers Guide</i>.</p>
-}
type alias Listener =
    { protocol : String
    , loadBalancerPort : Int
    , instanceProtocol : Maybe String
    , instancePort : Int
    , sSLCertificateId : Maybe String
    }



listenerDecoder : JD.Decoder Listener
listenerDecoder =
    JDP.decode Listener
        |> JDP.required "protocol" JD.string
        |> JDP.required "loadBalancerPort" JD.int
        |> JDP.optional "instanceProtocol" (JD.nullable JD.string) Nothing
        |> JDP.required "instancePort" JD.int
        |> JDP.optional "sSLCertificateId" (JD.nullable JD.string) Nothing




{-| <p>The policies enabled for a listener.</p>
-}
type alias ListenerDescription =
    { listener : Maybe Listener
    , policyNames : Maybe (List String)
    }



listenerDescriptionDecoder : JD.Decoder ListenerDescription
listenerDescriptionDecoder =
    JDP.decode ListenerDescription
        |> JDP.optional "listener" (JD.nullable listenerDecoder) Nothing
        |> JDP.optional "policyNames" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The load balancer does not have a listener configured at the specified port.</p>
-}
type alias ListenerNotFoundException =
    { 
    }



listenerNotFoundExceptionDecoder : JD.Decoder ListenerNotFoundException
listenerNotFoundExceptionDecoder =
    JDP.decode ListenerNotFoundException



{-| <p>The specified load balancer attribute does not exist.</p>
-}
type alias LoadBalancerAttributeNotFoundException =
    { 
    }



loadBalancerAttributeNotFoundExceptionDecoder : JD.Decoder LoadBalancerAttributeNotFoundException
loadBalancerAttributeNotFoundExceptionDecoder =
    JDP.decode LoadBalancerAttributeNotFoundException



{-| <p>The attributes for a load balancer.</p>
-}
type alias LoadBalancerAttributes =
    { crossZoneLoadBalancing : Maybe CrossZoneLoadBalancing
    , accessLog : Maybe AccessLog
    , connectionDraining : Maybe ConnectionDraining
    , connectionSettings : Maybe ConnectionSettings
    , additionalAttributes : Maybe (List AdditionalAttribute)
    }



loadBalancerAttributesDecoder : JD.Decoder LoadBalancerAttributes
loadBalancerAttributesDecoder =
    JDP.decode LoadBalancerAttributes
        |> JDP.optional "crossZoneLoadBalancing" (JD.nullable crossZoneLoadBalancingDecoder) Nothing
        |> JDP.optional "accessLog" (JD.nullable accessLogDecoder) Nothing
        |> JDP.optional "connectionDraining" (JD.nullable connectionDrainingDecoder) Nothing
        |> JDP.optional "connectionSettings" (JD.nullable connectionSettingsDecoder) Nothing
        |> JDP.optional "additionalAttributes" (JD.nullable (JD.list additionalAttributeDecoder)) Nothing




{-| <p>Information about a load balancer.</p>
-}
type alias LoadBalancerDescription =
    { loadBalancerName : Maybe String
    , dNSName : Maybe String
    , canonicalHostedZoneName : Maybe String
    , canonicalHostedZoneNameID : Maybe String
    , listenerDescriptions : Maybe (List ListenerDescription)
    , policies : Maybe Policies
    , backendServerDescriptions : Maybe (List BackendServerDescription)
    , availabilityZones : Maybe (List String)
    , subnets : Maybe (List String)
    , vPCId : Maybe String
    , instances : Maybe (List Instance)
    , healthCheck : Maybe HealthCheck
    , sourceSecurityGroup : Maybe SourceSecurityGroup
    , securityGroups : Maybe (List String)
    , createdTime : Maybe Date
    , scheme : Maybe String
    }



loadBalancerDescriptionDecoder : JD.Decoder LoadBalancerDescription
loadBalancerDescriptionDecoder =
    JDP.decode LoadBalancerDescription
        |> JDP.optional "loadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dNSName" (JD.nullable JD.string) Nothing
        |> JDP.optional "canonicalHostedZoneName" (JD.nullable JD.string) Nothing
        |> JDP.optional "canonicalHostedZoneNameID" (JD.nullable JD.string) Nothing
        |> JDP.optional "listenerDescriptions" (JD.nullable (JD.list listenerDescriptionDecoder)) Nothing
        |> JDP.optional "policies" (JD.nullable policiesDecoder) Nothing
        |> JDP.optional "backendServerDescriptions" (JD.nullable (JD.list backendServerDescriptionDecoder)) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "subnets" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "vPCId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing
        |> JDP.optional "healthCheck" (JD.nullable healthCheckDecoder) Nothing
        |> JDP.optional "sourceSecurityGroup" (JD.nullable sourceSecurityGroupDecoder) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "createdTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "scheme" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from modifyLoadBalancerAttribut
-}
type alias ModifyLoadBalancerAttributesOutput =
    { loadBalancerName : Maybe String
    , loadBalancerAttributes : Maybe LoadBalancerAttributes
    }



modifyLoadBalancerAttributesOutputDecoder : JD.Decoder ModifyLoadBalancerAttributesOutput
modifyLoadBalancerAttributesOutputDecoder =
    JDP.decode ModifyLoadBalancerAttributesOutput
        |> JDP.optional "loadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "loadBalancerAttributes" (JD.nullable loadBalancerAttributesDecoder) Nothing




{-| <p>The policies for a load balancer.</p>
-}
type alias Policies =
    { appCookieStickinessPolicies : Maybe (List AppCookieStickinessPolicy)
    , lBCookieStickinessPolicies : Maybe (List LBCookieStickinessPolicy)
    , otherPolicies : Maybe (List String)
    }



policiesDecoder : JD.Decoder Policies
policiesDecoder =
    JDP.decode Policies
        |> JDP.optional "appCookieStickinessPolicies" (JD.nullable (JD.list appCookieStickinessPolicyDecoder)) Nothing
        |> JDP.optional "lBCookieStickinessPolicies" (JD.nullable (JD.list lBCookieStickinessPolicyDecoder)) Nothing
        |> JDP.optional "otherPolicies" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Information about a policy attribute.</p>
-}
type alias PolicyAttribute =
    { attributeName : Maybe String
    , attributeValue : Maybe String
    }



policyAttributeDecoder : JD.Decoder PolicyAttribute
policyAttributeDecoder =
    JDP.decode PolicyAttribute
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributeValue" (JD.nullable JD.string) Nothing




{-| <p>Information about a policy attribute.</p>
-}
type alias PolicyAttributeDescription =
    { attributeName : Maybe String
    , attributeValue : Maybe String
    }



policyAttributeDescriptionDecoder : JD.Decoder PolicyAttributeDescription
policyAttributeDescriptionDecoder =
    JDP.decode PolicyAttributeDescription
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributeValue" (JD.nullable JD.string) Nothing




{-| <p>Information about a policy attribute type.</p>
-}
type alias PolicyAttributeTypeDescription =
    { attributeName : Maybe String
    , attributeType : Maybe String
    , description : Maybe String
    , defaultValue : Maybe String
    , cardinality : Maybe String
    }



policyAttributeTypeDescriptionDecoder : JD.Decoder PolicyAttributeTypeDescription
policyAttributeTypeDescriptionDecoder =
    JDP.decode PolicyAttributeTypeDescription
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "cardinality" (JD.nullable JD.string) Nothing




{-| <p>Information about a policy.</p>
-}
type alias PolicyDescription =
    { policyName : Maybe String
    , policyTypeName : Maybe String
    , policyAttributeDescriptions : Maybe (List PolicyAttributeDescription)
    }



policyDescriptionDecoder : JD.Decoder PolicyDescription
policyDescriptionDecoder =
    JDP.decode PolicyDescription
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyTypeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyAttributeDescriptions" (JD.nullable (JD.list policyAttributeDescriptionDecoder)) Nothing




{-| <p>One or more of the specified policies do not exist.</p>
-}
type alias PolicyNotFoundException =
    { 
    }



policyNotFoundExceptionDecoder : JD.Decoder PolicyNotFoundException
policyNotFoundExceptionDecoder =
    JDP.decode PolicyNotFoundException



{-| <p>Information about a policy type.</p>
-}
type alias PolicyTypeDescription =
    { policyTypeName : Maybe String
    , description : Maybe String
    , policyAttributeTypeDescriptions : Maybe (List PolicyAttributeTypeDescription)
    }



policyTypeDescriptionDecoder : JD.Decoder PolicyTypeDescription
policyTypeDescriptionDecoder =
    JDP.decode PolicyTypeDescription
        |> JDP.optional "policyTypeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyAttributeTypeDescriptions" (JD.nullable (JD.list policyAttributeTypeDescriptionDecoder)) Nothing




{-| <p>One or more of the specified policy types do not exist.</p>
-}
type alias PolicyTypeNotFoundException =
    { 
    }



policyTypeNotFoundExceptionDecoder : JD.Decoder PolicyTypeNotFoundException
policyTypeNotFoundExceptionDecoder =
    JDP.decode PolicyTypeNotFoundException



{-| Type of HTTP response from registerEndPoin
-}
type alias RegisterEndPointsOutput =
    { instances : Maybe (List Instance)
    }



registerEndPointsOutputDecoder : JD.Decoder RegisterEndPointsOutput
registerEndPointsOutputDecoder =
    JDP.decode RegisterEndPointsOutput
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing




{-| Type of HTTP response from removeAvailabilityZon
-}
type alias RemoveAvailabilityZonesOutput =
    { availabilityZones : Maybe (List String)
    }



removeAvailabilityZonesOutputDecoder : JD.Decoder RemoveAvailabilityZonesOutput
removeAvailabilityZonesOutputDecoder =
    JDP.decode RemoveAvailabilityZonesOutput
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from removeTa
-}
type alias RemoveTagsOutput =
    { 
    }



removeTagsOutputDecoder : JD.Decoder RemoveTagsOutput
removeTagsOutputDecoder =
    JDP.decode RemoveTagsOutput



{-| Type of HTTP response from setLoadBalancerListenerSSLCertifica
-}
type alias SetLoadBalancerListenerSSLCertificateOutput =
    { 
    }



setLoadBalancerListenerSSLCertificateOutputDecoder : JD.Decoder SetLoadBalancerListenerSSLCertificateOutput
setLoadBalancerListenerSSLCertificateOutputDecoder =
    JDP.decode SetLoadBalancerListenerSSLCertificateOutput



{-| Type of HTTP response from setLoadBalancerPoliciesForBackendServ
-}
type alias SetLoadBalancerPoliciesForBackendServerOutput =
    { 
    }



setLoadBalancerPoliciesForBackendServerOutputDecoder : JD.Decoder SetLoadBalancerPoliciesForBackendServerOutput
setLoadBalancerPoliciesForBackendServerOutputDecoder =
    JDP.decode SetLoadBalancerPoliciesForBackendServerOutput



{-| Type of HTTP response from setLoadBalancerPoliciesOfListen
-}
type alias SetLoadBalancerPoliciesOfListenerOutput =
    { 
    }



setLoadBalancerPoliciesOfListenerOutputDecoder : JD.Decoder SetLoadBalancerPoliciesOfListenerOutput
setLoadBalancerPoliciesOfListenerOutputDecoder =
    JDP.decode SetLoadBalancerPoliciesOfListenerOutput



{-| <p>Information about a source security group.</p>
-}
type alias SourceSecurityGroup =
    { ownerAlias : Maybe String
    , groupName : Maybe String
    }



sourceSecurityGroupDecoder : JD.Decoder SourceSecurityGroup
sourceSecurityGroupDecoder =
    JDP.decode SourceSecurityGroup
        |> JDP.optional "ownerAlias" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing




{-| <p>One or more of the specified subnets do not exist.</p>
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




{-| <p>The tags associated with a load balancer.</p>
-}
type alias TagDescription =
    { loadBalancerName : Maybe String
    , tags : Maybe (List Tag)
    }



tagDescriptionDecoder : JD.Decoder TagDescription
tagDescriptionDecoder =
    JDP.decode TagDescription
        |> JDP.optional "loadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>The key of a tag.</p>
-}
type alias TagKeyOnly =
    { key : Maybe String
    }



tagKeyOnlyDecoder : JD.Decoder TagKeyOnly
tagKeyOnlyDecoder =
    JDP.decode TagKeyOnly
        |> JDP.optional "key" (JD.nullable JD.string) Nothing




{-| <p>The quota for the number of load balancers has been reached.</p>
-}
type alias TooManyAccessPointsException =
    { 
    }



tooManyAccessPointsExceptionDecoder : JD.Decoder TooManyAccessPointsException
tooManyAccessPointsExceptionDecoder =
    JDP.decode TooManyAccessPointsException



{-| <p>The quota for the number of policies for this load balancer has been reached.</p>
-}
type alias TooManyPoliciesException =
    { 
    }



tooManyPoliciesExceptionDecoder : JD.Decoder TooManyPoliciesException
tooManyPoliciesExceptionDecoder =
    JDP.decode TooManyPoliciesException



{-| <p>The quota for the number of tags that can be assigned to a load balancer has been reached.</p>
-}
type alias TooManyTagsException =
    { 
    }



tooManyTagsExceptionDecoder : JD.Decoder TooManyTagsException
tooManyTagsExceptionDecoder =
    JDP.decode TooManyTagsException



{-| undefined
-}
type alias UnsupportedProtocolException =
    { 
    }



unsupportedProtocolExceptionDecoder : JD.Decoder UnsupportedProtocolException
unsupportedProtocolExceptionDecoder =
    JDP.decode UnsupportedProtocolException



