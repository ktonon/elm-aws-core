module AWS.Services.WAFRegional
    exposing
        ( config
        , associateWebACL
        , createByteMatchSet
        , createIPSet
        , createRule
        , createSizeConstraintSet
        , createSqlInjectionMatchSet
        , createWebACL
        , createXssMatchSet
        , deleteByteMatchSet
        , deleteIPSet
        , deleteRule
        , deleteSizeConstraintSet
        , deleteSqlInjectionMatchSet
        , deleteWebACL
        , deleteXssMatchSet
        , disassociateWebACL
        , getByteMatchSet
        , getChangeToken
        , getChangeTokenStatus
        , getIPSet
        , getRule
        , getSampledRequests
        , getSizeConstraintSet
        , getSqlInjectionMatchSet
        , getWebACL
        , getWebACLForResource
        , getXssMatchSet
        , listByteMatchSets
        , ListByteMatchSetsOptions
        , listIPSets
        , ListIPSetsOptions
        , listResourcesForWebACL
        , listRules
        , ListRulesOptions
        , listSizeConstraintSets
        , ListSizeConstraintSetsOptions
        , listSqlInjectionMatchSets
        , ListSqlInjectionMatchSetsOptions
        , listWebACLs
        , ListWebACLsOptions
        , listXssMatchSets
        , ListXssMatchSetsOptions
        , updateByteMatchSet
        , updateIPSet
        , updateRule
        , updateSizeConstraintSet
        , updateSqlInjectionMatchSet
        , updateWebACL
        , UpdateWebACLOptions
        , updateXssMatchSet
        , ActivatedRule
        , AssociateWebACLResponse
        , ByteMatchSet
        , ByteMatchSetSummary
        , ByteMatchSetUpdate
        , ByteMatchTuple
        , ChangeAction(..)
        , ChangeTokenStatus(..)
        , ComparisonOperator(..)
        , CreateByteMatchSetResponse
        , CreateIPSetResponse
        , CreateRuleResponse
        , CreateSizeConstraintSetResponse
        , CreateSqlInjectionMatchSetResponse
        , CreateWebACLResponse
        , CreateXssMatchSetResponse
        , DeleteByteMatchSetResponse
        , DeleteIPSetResponse
        , DeleteRuleResponse
        , DeleteSizeConstraintSetResponse
        , DeleteSqlInjectionMatchSetResponse
        , DeleteWebACLResponse
        , DeleteXssMatchSetResponse
        , DisassociateWebACLResponse
        , FieldToMatch
        , GetByteMatchSetResponse
        , GetChangeTokenResponse
        , GetChangeTokenStatusResponse
        , GetIPSetResponse
        , GetRuleResponse
        , GetSampledRequestsResponse
        , GetSizeConstraintSetResponse
        , GetSqlInjectionMatchSetResponse
        , GetWebACLForResourceResponse
        , GetWebACLResponse
        , GetXssMatchSetResponse
        , HTTPHeader
        , HTTPRequest
        , IPSet
        , IPSetDescriptor
        , IPSetDescriptorType(..)
        , IPSetSummary
        , IPSetUpdate
        , ListByteMatchSetsResponse
        , ListIPSetsResponse
        , ListResourcesForWebACLResponse
        , ListRulesResponse
        , ListSizeConstraintSetsResponse
        , ListSqlInjectionMatchSetsResponse
        , ListWebACLsResponse
        , ListXssMatchSetsResponse
        , MatchFieldType(..)
        , ParameterExceptionField(..)
        , ParameterExceptionReason(..)
        , PositionalConstraint(..)
        , Predicate
        , PredicateType(..)
        , Rule
        , RuleSummary
        , RuleUpdate
        , SampledHTTPRequest
        , SizeConstraint
        , SizeConstraintSet
        , SizeConstraintSetSummary
        , SizeConstraintSetUpdate
        , SqlInjectionMatchSet
        , SqlInjectionMatchSetSummary
        , SqlInjectionMatchSetUpdate
        , SqlInjectionMatchTuple
        , TextTransformation(..)
        , TimeWindow
        , UpdateByteMatchSetResponse
        , UpdateIPSetResponse
        , UpdateRuleResponse
        , UpdateSizeConstraintSetResponse
        , UpdateSqlInjectionMatchSetResponse
        , UpdateWebACLResponse
        , UpdateXssMatchSetResponse
        , WAFDisallowedNameException
        , WAFInternalErrorException
        , WAFInvalidAccountException
        , WAFInvalidOperationException
        , WAFInvalidParameterException
        , WAFLimitsExceededException
        , WAFNonEmptyEntityException
        , WAFNonexistentContainerException
        , WAFNonexistentItemException
        , WAFReferencedItemException
        , WAFStaleDataException
        , WAFUnavailableEntityException
        , WafAction
        , WafActionType(..)
        , WebACL
        , WebACLSummary
        , WebACLUpdate
        , XssMatchSet
        , XssMatchSetSummary
        , XssMatchSetUpdate
        , XssMatchTuple
        )

{-| <p>This is the <i>AWS WAF Regional API Reference</i> for using AWS WAF with Elastic Load Balancing (ELB) Application Load Balancers. The AWS WAF actions and data types listed in the reference are available for protecting Application Load Balancers. You can use these actions and data types by means of the endpoints listed in <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region">AWS Regions and Endpoints</a>. This guide is for developers who need detailed information about the AWS WAF API actions, data types, and errors. For detailed information about AWS WAF features and an overview of how to use the AWS WAF API, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [associateWebACL](#associateWebACL)
* [createByteMatchSet](#createByteMatchSet)
* [createIPSet](#createIPSet)
* [createRule](#createRule)
* [createSizeConstraintSet](#createSizeConstraintSet)
* [createSqlInjectionMatchSet](#createSqlInjectionMatchSet)
* [createWebACL](#createWebACL)
* [createXssMatchSet](#createXssMatchSet)
* [deleteByteMatchSet](#deleteByteMatchSet)
* [deleteIPSet](#deleteIPSet)
* [deleteRule](#deleteRule)
* [deleteSizeConstraintSet](#deleteSizeConstraintSet)
* [deleteSqlInjectionMatchSet](#deleteSqlInjectionMatchSet)
* [deleteWebACL](#deleteWebACL)
* [deleteXssMatchSet](#deleteXssMatchSet)
* [disassociateWebACL](#disassociateWebACL)
* [getByteMatchSet](#getByteMatchSet)
* [getChangeToken](#getChangeToken)
* [getChangeTokenStatus](#getChangeTokenStatus)
* [getIPSet](#getIPSet)
* [getRule](#getRule)
* [getSampledRequests](#getSampledRequests)
* [getSizeConstraintSet](#getSizeConstraintSet)
* [getSqlInjectionMatchSet](#getSqlInjectionMatchSet)
* [getWebACL](#getWebACL)
* [getWebACLForResource](#getWebACLForResource)
* [getXssMatchSet](#getXssMatchSet)
* [listByteMatchSets](#listByteMatchSets)
* [ListByteMatchSetsOptions](#ListByteMatchSetsOptions)
* [listIPSets](#listIPSets)
* [ListIPSetsOptions](#ListIPSetsOptions)
* [listResourcesForWebACL](#listResourcesForWebACL)
* [listRules](#listRules)
* [ListRulesOptions](#ListRulesOptions)
* [listSizeConstraintSets](#listSizeConstraintSets)
* [ListSizeConstraintSetsOptions](#ListSizeConstraintSetsOptions)
* [listSqlInjectionMatchSets](#listSqlInjectionMatchSets)
* [ListSqlInjectionMatchSetsOptions](#ListSqlInjectionMatchSetsOptions)
* [listWebACLs](#listWebACLs)
* [ListWebACLsOptions](#ListWebACLsOptions)
* [listXssMatchSets](#listXssMatchSets)
* [ListXssMatchSetsOptions](#ListXssMatchSetsOptions)
* [updateByteMatchSet](#updateByteMatchSet)
* [updateIPSet](#updateIPSet)
* [updateRule](#updateRule)
* [updateSizeConstraintSet](#updateSizeConstraintSet)
* [updateSqlInjectionMatchSet](#updateSqlInjectionMatchSet)
* [updateWebACL](#updateWebACL)
* [UpdateWebACLOptions](#UpdateWebACLOptions)
* [updateXssMatchSet](#updateXssMatchSet)


@docs associateWebACL,createByteMatchSet,createIPSet,createRule,createSizeConstraintSet,createSqlInjectionMatchSet,createWebACL,createXssMatchSet,deleteByteMatchSet,deleteIPSet,deleteRule,deleteSizeConstraintSet,deleteSqlInjectionMatchSet,deleteWebACL,deleteXssMatchSet,disassociateWebACL,getByteMatchSet,getChangeToken,getChangeTokenStatus,getIPSet,getRule,getSampledRequests,getSizeConstraintSet,getSqlInjectionMatchSet,getWebACL,getWebACLForResource,getXssMatchSet,listByteMatchSets,ListByteMatchSetsOptions,listIPSets,ListIPSetsOptions,listResourcesForWebACL,listRules,ListRulesOptions,listSizeConstraintSets,ListSizeConstraintSetsOptions,listSqlInjectionMatchSets,ListSqlInjectionMatchSetsOptions,listWebACLs,ListWebACLsOptions,listXssMatchSets,ListXssMatchSetsOptions,updateByteMatchSet,updateIPSet,updateRule,updateSizeConstraintSet,updateSqlInjectionMatchSet,updateWebACL,UpdateWebACLOptions,updateXssMatchSet

## Responses

* [AssociateWebACLResponse](#AssociateWebACLResponse)
* [CreateByteMatchSetResponse](#CreateByteMatchSetResponse)
* [CreateIPSetResponse](#CreateIPSetResponse)
* [CreateRuleResponse](#CreateRuleResponse)
* [CreateSizeConstraintSetResponse](#CreateSizeConstraintSetResponse)
* [CreateSqlInjectionMatchSetResponse](#CreateSqlInjectionMatchSetResponse)
* [CreateWebACLResponse](#CreateWebACLResponse)
* [CreateXssMatchSetResponse](#CreateXssMatchSetResponse)
* [DeleteByteMatchSetResponse](#DeleteByteMatchSetResponse)
* [DeleteIPSetResponse](#DeleteIPSetResponse)
* [DeleteRuleResponse](#DeleteRuleResponse)
* [DeleteSizeConstraintSetResponse](#DeleteSizeConstraintSetResponse)
* [DeleteSqlInjectionMatchSetResponse](#DeleteSqlInjectionMatchSetResponse)
* [DeleteWebACLResponse](#DeleteWebACLResponse)
* [DeleteXssMatchSetResponse](#DeleteXssMatchSetResponse)
* [DisassociateWebACLResponse](#DisassociateWebACLResponse)
* [GetByteMatchSetResponse](#GetByteMatchSetResponse)
* [GetChangeTokenResponse](#GetChangeTokenResponse)
* [GetChangeTokenStatusResponse](#GetChangeTokenStatusResponse)
* [GetIPSetResponse](#GetIPSetResponse)
* [GetRuleResponse](#GetRuleResponse)
* [GetSampledRequestsResponse](#GetSampledRequestsResponse)
* [GetSizeConstraintSetResponse](#GetSizeConstraintSetResponse)
* [GetSqlInjectionMatchSetResponse](#GetSqlInjectionMatchSetResponse)
* [GetWebACLForResourceResponse](#GetWebACLForResourceResponse)
* [GetWebACLResponse](#GetWebACLResponse)
* [GetXssMatchSetResponse](#GetXssMatchSetResponse)
* [ListByteMatchSetsResponse](#ListByteMatchSetsResponse)
* [ListIPSetsResponse](#ListIPSetsResponse)
* [ListResourcesForWebACLResponse](#ListResourcesForWebACLResponse)
* [ListRulesResponse](#ListRulesResponse)
* [ListSizeConstraintSetsResponse](#ListSizeConstraintSetsResponse)
* [ListSqlInjectionMatchSetsResponse](#ListSqlInjectionMatchSetsResponse)
* [ListWebACLsResponse](#ListWebACLsResponse)
* [ListXssMatchSetsResponse](#ListXssMatchSetsResponse)
* [UpdateByteMatchSetResponse](#UpdateByteMatchSetResponse)
* [UpdateIPSetResponse](#UpdateIPSetResponse)
* [UpdateRuleResponse](#UpdateRuleResponse)
* [UpdateSizeConstraintSetResponse](#UpdateSizeConstraintSetResponse)
* [UpdateSqlInjectionMatchSetResponse](#UpdateSqlInjectionMatchSetResponse)
* [UpdateWebACLResponse](#UpdateWebACLResponse)
* [UpdateXssMatchSetResponse](#UpdateXssMatchSetResponse)


@docs AssociateWebACLResponse,CreateByteMatchSetResponse,CreateIPSetResponse,CreateRuleResponse,CreateSizeConstraintSetResponse,CreateSqlInjectionMatchSetResponse,CreateWebACLResponse,CreateXssMatchSetResponse,DeleteByteMatchSetResponse,DeleteIPSetResponse,DeleteRuleResponse,DeleteSizeConstraintSetResponse,DeleteSqlInjectionMatchSetResponse,DeleteWebACLResponse,DeleteXssMatchSetResponse,DisassociateWebACLResponse,GetByteMatchSetResponse,GetChangeTokenResponse,GetChangeTokenStatusResponse,GetIPSetResponse,GetRuleResponse,GetSampledRequestsResponse,GetSizeConstraintSetResponse,GetSqlInjectionMatchSetResponse,GetWebACLForResourceResponse,GetWebACLResponse,GetXssMatchSetResponse,ListByteMatchSetsResponse,ListIPSetsResponse,ListResourcesForWebACLResponse,ListRulesResponse,ListSizeConstraintSetsResponse,ListSqlInjectionMatchSetsResponse,ListWebACLsResponse,ListXssMatchSetsResponse,UpdateByteMatchSetResponse,UpdateIPSetResponse,UpdateRuleResponse,UpdateSizeConstraintSetResponse,UpdateSqlInjectionMatchSetResponse,UpdateWebACLResponse,UpdateXssMatchSetResponse

## Records

* [ActivatedRule](#ActivatedRule)
* [ByteMatchSet](#ByteMatchSet)
* [ByteMatchSetSummary](#ByteMatchSetSummary)
* [ByteMatchSetUpdate](#ByteMatchSetUpdate)
* [ByteMatchTuple](#ByteMatchTuple)
* [FieldToMatch](#FieldToMatch)
* [HTTPHeader](#HTTPHeader)
* [HTTPRequest](#HTTPRequest)
* [IPSet](#IPSet)
* [IPSetDescriptor](#IPSetDescriptor)
* [IPSetSummary](#IPSetSummary)
* [IPSetUpdate](#IPSetUpdate)
* [Predicate](#Predicate)
* [Rule](#Rule)
* [RuleSummary](#RuleSummary)
* [RuleUpdate](#RuleUpdate)
* [SampledHTTPRequest](#SampledHTTPRequest)
* [SizeConstraint](#SizeConstraint)
* [SizeConstraintSet](#SizeConstraintSet)
* [SizeConstraintSetSummary](#SizeConstraintSetSummary)
* [SizeConstraintSetUpdate](#SizeConstraintSetUpdate)
* [SqlInjectionMatchSet](#SqlInjectionMatchSet)
* [SqlInjectionMatchSetSummary](#SqlInjectionMatchSetSummary)
* [SqlInjectionMatchSetUpdate](#SqlInjectionMatchSetUpdate)
* [SqlInjectionMatchTuple](#SqlInjectionMatchTuple)
* [TimeWindow](#TimeWindow)
* [WafAction](#WafAction)
* [WebACL](#WebACL)
* [WebACLSummary](#WebACLSummary)
* [WebACLUpdate](#WebACLUpdate)
* [XssMatchSet](#XssMatchSet)
* [XssMatchSetSummary](#XssMatchSetSummary)
* [XssMatchSetUpdate](#XssMatchSetUpdate)
* [XssMatchTuple](#XssMatchTuple)


@docs ActivatedRule,ByteMatchSet,ByteMatchSetSummary,ByteMatchSetUpdate,ByteMatchTuple,FieldToMatch,HTTPHeader,HTTPRequest,IPSet,IPSetDescriptor,IPSetSummary,IPSetUpdate,Predicate,Rule,RuleSummary,RuleUpdate,SampledHTTPRequest,SizeConstraint,SizeConstraintSet,SizeConstraintSetSummary,SizeConstraintSetUpdate,SqlInjectionMatchSet,SqlInjectionMatchSetSummary,SqlInjectionMatchSetUpdate,SqlInjectionMatchTuple,TimeWindow,WafAction,WebACL,WebACLSummary,WebACLUpdate,XssMatchSet,XssMatchSetSummary,XssMatchSetUpdate,XssMatchTuple

## Unions

* [ChangeAction](#ChangeAction)
* [ChangeTokenStatus](#ChangeTokenStatus)
* [ComparisonOperator](#ComparisonOperator)
* [IPSetDescriptorType](#IPSetDescriptorType)
* [MatchFieldType](#MatchFieldType)
* [ParameterExceptionField](#ParameterExceptionField)
* [ParameterExceptionReason](#ParameterExceptionReason)
* [PositionalConstraint](#PositionalConstraint)
* [PredicateType](#PredicateType)
* [TextTransformation](#TextTransformation)
* [WafActionType](#WafActionType)


@docs ChangeAction,ChangeTokenStatus,ComparisonOperator,IPSetDescriptorType,MatchFieldType,ParameterExceptionField,ParameterExceptionReason,PositionalConstraint,PredicateType,TextTransformation,WafActionType

## Exceptions

* [WAFDisallowedNameException](#WAFDisallowedNameException)
* [WAFInternalErrorException](#WAFInternalErrorException)
* [WAFInvalidAccountException](#WAFInvalidAccountException)
* [WAFInvalidOperationException](#WAFInvalidOperationException)
* [WAFInvalidParameterException](#WAFInvalidParameterException)
* [WAFLimitsExceededException](#WAFLimitsExceededException)
* [WAFNonEmptyEntityException](#WAFNonEmptyEntityException)
* [WAFNonexistentContainerException](#WAFNonexistentContainerException)
* [WAFNonexistentItemException](#WAFNonexistentItemException)
* [WAFReferencedItemException](#WAFReferencedItemException)
* [WAFStaleDataException](#WAFStaleDataException)
* [WAFUnavailableEntityException](#WAFUnavailableEntityException)


@docs WAFDisallowedNameException,WAFInternalErrorException,WAFInvalidAccountException,WAFInvalidOperationException,WAFInvalidParameterException,WAFLimitsExceededException,WAFNonEmptyEntityException,WAFNonexistentContainerException,WAFNonexistentItemException,WAFReferencedItemException,WAFStaleDataException,WAFUnavailableEntityException

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
        "waf-regional"
        "2016-11-28"
        "1.1"
        "AWSWAF-REGIONAL_20161128."
        "waf-regional.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Associates a web ACL with a resource.</p>

__Required Parameters__

* `webACLId` __:__ `String`
* `resourceArn` __:__ `String`


-}
associateWebACL :
    String
    -> String
    -> AWS.Http.UnsignedRequest AssociateWebACLResponse
associateWebACL webACLId resourceArn =
    AWS.Http.unsignedRequest
        "AssociateWebACL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateWebACLResponseDecoder



{-| <p>Creates a <code>ByteMatchSet</code>. You then use <a>UpdateByteMatchSet</a> to identify the part of a web request that you want AWS WAF to inspect, such as the values of the <code>User-Agent</code> header or the query string. For example, you can create a <code>ByteMatchSet</code> that matches any requests with <code>User-Agent</code> headers that contain the string <code>BadBot</code>. You can then configure AWS WAF to reject those requests.</p> <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateByteMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateByteMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateByteMatchSet</code> request.</p> </li> <li> <p>Submit an <a>UpdateByteMatchSet</a> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}
createByteMatchSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateByteMatchSetResponse
createByteMatchSet name changeToken =
    AWS.Http.unsignedRequest
        "CreateByteMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createByteMatchSetResponseDecoder



{-| <p>Creates an <a>IPSet</a>, which you use to specify which web requests you want to allow or block based on the IP addresses that the requests originate from. For example, if you're receiving a lot of requests from one or more individual IP addresses or one or more ranges of IP addresses and you want to block the requests, you can create an <code>IPSet</code> that contains those IP addresses and then configure AWS WAF to block the requests. </p> <p>To create and configure an <code>IPSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateIPSet</code> request.</p> </li> <li> <p>Submit a <code>CreateIPSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}
createIPSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateIPSetResponse
createIPSet name changeToken =
    AWS.Http.unsignedRequest
        "CreateIPSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createIPSetResponseDecoder



{-| <p>Creates a <code>Rule</code>, which contains the <code>IPSet</code> objects, <code>ByteMatchSet</code> objects, and other predicates that identify the requests that you want to block. If you add more than one predicate to a <code>Rule</code>, a request must match all of the specifications to be allowed or blocked. For example, suppose you add the following to a <code>Rule</code>:</p> <ul> <li> <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44/32</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that matches <code>BadBot</code> in the <code>User-Agent</code> header</p> </li> </ul> <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to blocks requests that satisfy the <code>Rule</code>. For a request to be blocked, it must come from the IP address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code>.</p> <p>To create and configure a <code>Rule</code>, perform the following steps:</p> <ol> <li> <p>Create and update the predicates that you want to include in the <code>Rule</code>. For more information, see <a>CreateByteMatchSet</a>, <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateRule</code> request.</p> </li> <li> <p>Submit a <code>CreateRule</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateRule</a> request.</p> </li> <li> <p>Submit an <code>UpdateRule</code> request to specify the predicates that you want to include in the <code>Rule</code>.</p> </li> <li> <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. For more information, see <a>CreateWebACL</a>.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `metricName` __:__ `String`
* `changeToken` __:__ `String`


-}
createRule :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest CreateRuleResponse
createRule name metricName changeToken =
    AWS.Http.unsignedRequest
        "CreateRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRuleResponseDecoder



{-| <p>Creates a <code>SizeConstraintSet</code>. You then use <a>UpdateSizeConstraintSet</a> to identify the part of a web request that you want AWS WAF to check for length, such as the length of the <code>User-Agent</code> header or the length of the query string. For example, you can create a <code>SizeConstraintSet</code> that matches any requests that have a query string that is longer than 100 bytes. You can then configure AWS WAF to reject those requests.</p> <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateSizeConstraintSet</code> request.</p> </li> <li> <p>Submit a <code>CreateSizeConstraintSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateSizeConstraintSet</code> request.</p> </li> <li> <p>Submit an <a>UpdateSizeConstraintSet</a> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}
createSizeConstraintSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateSizeConstraintSetResponse
createSizeConstraintSet name changeToken =
    AWS.Http.unsignedRequest
        "CreateSizeConstraintSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSizeConstraintSetResponseDecoder



{-| <p>Creates a <a>SqlInjectionMatchSet</a>, which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p> <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateSqlInjectionMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateSqlInjectionMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateSqlInjectionMatchSet</a> request.</p> </li> <li> <p>Submit an <a>UpdateSqlInjectionMatchSet</a> request to specify the parts of web requests in which you want to allow, block, or count malicious SQL code.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}
createSqlInjectionMatchSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateSqlInjectionMatchSetResponse
createSqlInjectionMatchSet name changeToken =
    AWS.Http.unsignedRequest
        "CreateSqlInjectionMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSqlInjectionMatchSetResponseDecoder



{-| <p>Creates a <code>WebACL</code>, which contains the <code>Rules</code> that identify the CloudFront web requests that you want to allow, block, or count. AWS WAF evaluates <code>Rules</code> in order based on the value of <code>Priority</code> for each <code>Rule</code>.</p> <p>You also specify a default action, either <code>ALLOW</code> or <code>BLOCK</code>. If a web request doesn't match any of the <code>Rules</code> in a <code>WebACL</code>, AWS WAF responds to the request with the default action. </p> <p>To create and configure a <code>WebACL</code>, perform the following steps:</p> <ol> <li> <p>Create and update the <code>ByteMatchSet</code> objects and other predicates that you want to include in <code>Rules</code>. For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>, <a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see <a>CreateRule</a> and <a>UpdateRule</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateWebACL</code> request.</p> </li> <li> <p>Submit a <code>CreateWebACL</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateWebACL</a> request.</p> </li> <li> <p>Submit an <a>UpdateWebACL</a> request to specify the <code>Rules</code> that you want to include in the <code>WebACL</code>, to specify the default action, and to associate the <code>WebACL</code> with a CloudFront distribution.</p> </li> </ol> <p>For more information about how to use the AWS WAF API, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `metricName` __:__ `String`
* `defaultAction` __:__ `WafAction`
* `changeToken` __:__ `String`


-}
createWebACL :
    String
    -> String
    -> WafAction
    -> String
    -> AWS.Http.UnsignedRequest CreateWebACLResponse
createWebACL name metricName defaultAction changeToken =
    AWS.Http.unsignedRequest
        "CreateWebACL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createWebACLResponseDecoder



{-| <p>Creates an <a>XssMatchSet</a>, which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests. AWS WAF searches for character sequences that are likely to be malicious strings.</p> <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>CreateXssMatchSet</code> request.</p> </li> <li> <p>Submit a <code>CreateXssMatchSet</code> request.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateXssMatchSet</a> request.</p> </li> <li> <p>Submit an <a>UpdateXssMatchSet</a> request to specify the parts of web requests in which you want to allow, block, or count cross-site scripting attacks.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `changeToken` __:__ `String`


-}
createXssMatchSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateXssMatchSetResponse
createXssMatchSet name changeToken =
    AWS.Http.unsignedRequest
        "CreateXssMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createXssMatchSetResponseDecoder



{-| <p>Permanently deletes a <a>ByteMatchSet</a>. You can't delete a <code>ByteMatchSet</code> if it's still used in any <code>Rules</code> or if it still includes any <a>ByteMatchTuple</a> objects (any filters).</p> <p>If you just want to remove a <code>ByteMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>ByteMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Update the <code>ByteMatchSet</code> to remove filters, if any. For more information, see <a>UpdateByteMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteByteMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteByteMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `byteMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}
deleteByteMatchSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteByteMatchSetResponse
deleteByteMatchSet byteMatchSetId changeToken =
    AWS.Http.unsignedRequest
        "DeleteByteMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteByteMatchSetResponseDecoder



{-| <p>Permanently deletes an <a>IPSet</a>. You can't delete an <code>IPSet</code> if it's still used in any <code>Rules</code> or if it still includes any IP addresses.</p> <p>If you just want to remove an <code>IPSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete an <code>IPSet</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>IPSet</code> to remove IP address ranges, if any. For more information, see <a>UpdateIPSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteIPSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteIPSet</code> request.</p> </li> </ol>

__Required Parameters__

* `iPSetId` __:__ `String`
* `changeToken` __:__ `String`


-}
deleteIPSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteIPSetResponse
deleteIPSet iPSetId changeToken =
    AWS.Http.unsignedRequest
        "DeleteIPSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteIPSetResponseDecoder



{-| <p>Permanently deletes a <a>Rule</a>. You can't delete a <code>Rule</code> if it's still used in any <code>WebACL</code> objects or if it still includes any predicates, such as <code>ByteMatchSet</code> objects.</p> <p>If you just want to remove a <code>Rule</code> from a <code>WebACL</code>, use <a>UpdateWebACL</a>.</p> <p>To permanently delete a <code>Rule</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>Rule</code> to remove predicates, if any. For more information, see <a>UpdateRule</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteRule</code> request.</p> </li> <li> <p>Submit a <code>DeleteRule</code> request.</p> </li> </ol>

__Required Parameters__

* `ruleId` __:__ `String`
* `changeToken` __:__ `String`


-}
deleteRule :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteRuleResponse
deleteRule ruleId changeToken =
    AWS.Http.unsignedRequest
        "DeleteRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRuleResponseDecoder



{-| <p>Permanently deletes a <a>SizeConstraintSet</a>. You can't delete a <code>SizeConstraintSet</code> if it's still used in any <code>Rules</code> or if it still includes any <a>SizeConstraint</a> objects (any filters).</p> <p>If you just want to remove a <code>SizeConstraintSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>SizeConstraintSet</code>, perform the following steps:</p> <ol> <li> <p>Update the <code>SizeConstraintSet</code> to remove filters, if any. For more information, see <a>UpdateSizeConstraintSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteSizeConstraintSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteSizeConstraintSet</code> request.</p> </li> </ol>

__Required Parameters__

* `sizeConstraintSetId` __:__ `String`
* `changeToken` __:__ `String`


-}
deleteSizeConstraintSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteSizeConstraintSetResponse
deleteSizeConstraintSet sizeConstraintSetId changeToken =
    AWS.Http.unsignedRequest
        "DeleteSizeConstraintSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSizeConstraintSetResponseDecoder



{-| <p>Permanently deletes a <a>SqlInjectionMatchSet</a>. You can't delete a <code>SqlInjectionMatchSet</code> if it's still used in any <code>Rules</code> or if it still contains any <a>SqlInjectionMatchTuple</a> objects.</p> <p>If you just want to remove a <code>SqlInjectionMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete a <code>SqlInjectionMatchSet</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>SqlInjectionMatchSet</code> to remove filters, if any. For more information, see <a>UpdateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteSqlInjectionMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteSqlInjectionMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `sqlInjectionMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}
deleteSqlInjectionMatchSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteSqlInjectionMatchSetResponse
deleteSqlInjectionMatchSet sqlInjectionMatchSetId changeToken =
    AWS.Http.unsignedRequest
        "DeleteSqlInjectionMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSqlInjectionMatchSetResponseDecoder



{-| <p>Permanently deletes a <a>WebACL</a>. You can't delete a <code>WebACL</code> if it still contains any <code>Rules</code>.</p> <p>To delete a <code>WebACL</code>, perform the following steps:</p> <ol> <li> <p>Update the <code>WebACL</code> to remove <code>Rules</code>, if any. For more information, see <a>UpdateWebACL</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteWebACL</code> request.</p> </li> <li> <p>Submit a <code>DeleteWebACL</code> request.</p> </li> </ol>

__Required Parameters__

* `webACLId` __:__ `String`
* `changeToken` __:__ `String`


-}
deleteWebACL :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteWebACLResponse
deleteWebACL webACLId changeToken =
    AWS.Http.unsignedRequest
        "DeleteWebACL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteWebACLResponseDecoder



{-| <p>Permanently deletes an <a>XssMatchSet</a>. You can't delete an <code>XssMatchSet</code> if it's still used in any <code>Rules</code> or if it still contains any <a>XssMatchTuple</a> objects.</p> <p>If you just want to remove an <code>XssMatchSet</code> from a <code>Rule</code>, use <a>UpdateRule</a>.</p> <p>To permanently delete an <code>XssMatchSet</code> from AWS WAF, perform the following steps:</p> <ol> <li> <p>Update the <code>XssMatchSet</code> to remove filters, if any. For more information, see <a>UpdateXssMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of a <code>DeleteXssMatchSet</code> request.</p> </li> <li> <p>Submit a <code>DeleteXssMatchSet</code> request.</p> </li> </ol>

__Required Parameters__

* `xssMatchSetId` __:__ `String`
* `changeToken` __:__ `String`


-}
deleteXssMatchSet :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteXssMatchSetResponse
deleteXssMatchSet xssMatchSetId changeToken =
    AWS.Http.unsignedRequest
        "DeleteXssMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteXssMatchSetResponseDecoder



{-| <p>Removes a web ACL from the specified resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}
disassociateWebACL :
    String
    -> AWS.Http.UnsignedRequest DisassociateWebACLResponse
disassociateWebACL resourceArn =
    AWS.Http.unsignedRequest
        "DisassociateWebACL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateWebACLResponseDecoder



{-| <p>Returns the <a>ByteMatchSet</a> specified by <code>ByteMatchSetId</code>.</p>

__Required Parameters__

* `byteMatchSetId` __:__ `String`


-}
getByteMatchSet :
    String
    -> AWS.Http.UnsignedRequest GetByteMatchSetResponse
getByteMatchSet byteMatchSetId =
    AWS.Http.unsignedRequest
        "GetByteMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getByteMatchSetResponseDecoder



{-| <p>When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request. Change tokens ensure that your application doesn't submit conflicting requests to AWS WAF.</p> <p>Each create, update, or delete request must use a unique change token. If your application submits a <code>GetChangeToken</code> request and then submits a second <code>GetChangeToken</code> request before submitting a create, update, or delete request, the second <code>GetChangeToken</code> request returns the same value as the first <code>GetChangeToken</code> request.</p> <p>When you use a change token in a create, update, or delete request, the status of the change token changes to <code>PENDING</code>, which indicates that AWS WAF is propagating the change to all AWS WAF servers. Use <code>GetChangeTokenStatus</code> to determine the status of your change token.</p>

__Required Parameters__



-}
getChangeToken :
    AWS.Http.UnsignedRequest GetChangeTokenResponse
getChangeToken =
    AWS.Http.unsignedRequest
        "GetChangeToken"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getChangeTokenResponseDecoder



{-| <p>Returns the status of a <code>ChangeToken</code> that you got by calling <a>GetChangeToken</a>. <code>ChangeTokenStatus</code> is one of the following values:</p> <ul> <li> <p> <code>PROVISIONED</code>: You requested the change token by calling <code>GetChangeToken</code>, but you haven't used it yet in a call to create, update, or delete an AWS WAF object.</p> </li> <li> <p> <code>PENDING</code>: AWS WAF is propagating the create, update, or delete request to all AWS WAF servers.</p> </li> <li> <p> <code>IN_SYNC</code>: Propagation is complete.</p> </li> </ul>

__Required Parameters__

* `changeToken` __:__ `String`


-}
getChangeTokenStatus :
    String
    -> AWS.Http.UnsignedRequest GetChangeTokenStatusResponse
getChangeTokenStatus changeToken =
    AWS.Http.unsignedRequest
        "GetChangeTokenStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getChangeTokenStatusResponseDecoder



{-| <p>Returns the <a>IPSet</a> that is specified by <code>IPSetId</code>.</p>

__Required Parameters__

* `iPSetId` __:__ `String`


-}
getIPSet :
    String
    -> AWS.Http.UnsignedRequest GetIPSetResponse
getIPSet iPSetId =
    AWS.Http.unsignedRequest
        "GetIPSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIPSetResponseDecoder



{-| <p>Returns the <a>Rule</a> that is specified by the <code>RuleId</code> that you included in the <code>GetRule</code> request.</p>

__Required Parameters__

* `ruleId` __:__ `String`


-}
getRule :
    String
    -> AWS.Http.UnsignedRequest GetRuleResponse
getRule ruleId =
    AWS.Http.unsignedRequest
        "GetRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRuleResponseDecoder



{-| <p>Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose. You can specify a sample size of up to 100 requests, and you can specify any time range in the previous three hours.</p> <p> <code>GetSampledRequests</code> returns a time range, which is usually the time range that you specified. However, if your resource (such as a CloudFront distribution) received 5,000 requests before the specified time range elapsed, <code>GetSampledRequests</code> returns an updated time range. This new time range indicates the actual period during which AWS WAF selected the requests in the sample.</p>

__Required Parameters__

* `webAclId` __:__ `String`
* `ruleId` __:__ `String`
* `timeWindow` __:__ `TimeWindow`
* `maxItems` __:__ `Int`


-}
getSampledRequests :
    String
    -> String
    -> TimeWindow
    -> Int
    -> AWS.Http.UnsignedRequest GetSampledRequestsResponse
getSampledRequests webAclId ruleId timeWindow maxItems =
    AWS.Http.unsignedRequest
        "GetSampledRequests"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSampledRequestsResponseDecoder



{-| <p>Returns the <a>SizeConstraintSet</a> specified by <code>SizeConstraintSetId</code>.</p>

__Required Parameters__

* `sizeConstraintSetId` __:__ `String`


-}
getSizeConstraintSet :
    String
    -> AWS.Http.UnsignedRequest GetSizeConstraintSetResponse
getSizeConstraintSet sizeConstraintSetId =
    AWS.Http.unsignedRequest
        "GetSizeConstraintSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSizeConstraintSetResponseDecoder



{-| <p>Returns the <a>SqlInjectionMatchSet</a> that is specified by <code>SqlInjectionMatchSetId</code>.</p>

__Required Parameters__

* `sqlInjectionMatchSetId` __:__ `String`


-}
getSqlInjectionMatchSet :
    String
    -> AWS.Http.UnsignedRequest GetSqlInjectionMatchSetResponse
getSqlInjectionMatchSet sqlInjectionMatchSetId =
    AWS.Http.unsignedRequest
        "GetSqlInjectionMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSqlInjectionMatchSetResponseDecoder



{-| <p>Returns the <a>WebACL</a> that is specified by <code>WebACLId</code>.</p>

__Required Parameters__

* `webACLId` __:__ `String`


-}
getWebACL :
    String
    -> AWS.Http.UnsignedRequest GetWebACLResponse
getWebACL webACLId =
    AWS.Http.unsignedRequest
        "GetWebACL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getWebACLResponseDecoder



{-| <p>Returns the web ACL for the specified resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}
getWebACLForResource :
    String
    -> AWS.Http.UnsignedRequest GetWebACLForResourceResponse
getWebACLForResource resourceArn =
    AWS.Http.unsignedRequest
        "GetWebACLForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getWebACLForResourceResponseDecoder



{-| <p>Returns the <a>XssMatchSet</a> that is specified by <code>XssMatchSetId</code>.</p>

__Required Parameters__

* `xssMatchSetId` __:__ `String`


-}
getXssMatchSet :
    String
    -> AWS.Http.UnsignedRequest GetXssMatchSetResponse
getXssMatchSet xssMatchSetId =
    AWS.Http.unsignedRequest
        "GetXssMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getXssMatchSetResponseDecoder



{-| <p>Returns an array of <a>ByteMatchSetSummary</a> objects.</p>

__Required Parameters__



-}
listByteMatchSets :
    (ListByteMatchSetsOptions -> ListByteMatchSetsOptions)
    -> AWS.Http.UnsignedRequest ListByteMatchSetsResponse
listByteMatchSets setOptions =
  let
    options = setOptions (ListByteMatchSetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListByteMatchSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listByteMatchSetsResponseDecoder


{-| Options for a listByteMatchSets request
-}
type alias ListByteMatchSetsOptions =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns an array of <a>IPSetSummary</a> objects in the response.</p>

__Required Parameters__



-}
listIPSets :
    (ListIPSetsOptions -> ListIPSetsOptions)
    -> AWS.Http.UnsignedRequest ListIPSetsResponse
listIPSets setOptions =
  let
    options = setOptions (ListIPSetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListIPSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listIPSetsResponseDecoder


{-| Options for a listIPSets request
-}
type alias ListIPSetsOptions =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns an array of resources associated with the specified web ACL.</p>

__Required Parameters__

* `webACLId` __:__ `String`


-}
listResourcesForWebACL :
    String
    -> AWS.Http.UnsignedRequest ListResourcesForWebACLResponse
listResourcesForWebACL webACLId =
    AWS.Http.unsignedRequest
        "ListResourcesForWebACL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listResourcesForWebACLResponseDecoder



{-| <p>Returns an array of <a>RuleSummary</a> objects.</p>

__Required Parameters__



-}
listRules :
    (ListRulesOptions -> ListRulesOptions)
    -> AWS.Http.UnsignedRequest ListRulesResponse
listRules setOptions =
  let
    options = setOptions (ListRulesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRules"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRulesResponseDecoder


{-| Options for a listRules request
-}
type alias ListRulesOptions =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns an array of <a>SizeConstraintSetSummary</a> objects.</p>

__Required Parameters__



-}
listSizeConstraintSets :
    (ListSizeConstraintSetsOptions -> ListSizeConstraintSetsOptions)
    -> AWS.Http.UnsignedRequest ListSizeConstraintSetsResponse
listSizeConstraintSets setOptions =
  let
    options = setOptions (ListSizeConstraintSetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSizeConstraintSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSizeConstraintSetsResponseDecoder


{-| Options for a listSizeConstraintSets request
-}
type alias ListSizeConstraintSetsOptions =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns an array of <a>SqlInjectionMatchSet</a> objects.</p>

__Required Parameters__



-}
listSqlInjectionMatchSets :
    (ListSqlInjectionMatchSetsOptions -> ListSqlInjectionMatchSetsOptions)
    -> AWS.Http.UnsignedRequest ListSqlInjectionMatchSetsResponse
listSqlInjectionMatchSets setOptions =
  let
    options = setOptions (ListSqlInjectionMatchSetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSqlInjectionMatchSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSqlInjectionMatchSetsResponseDecoder


{-| Options for a listSqlInjectionMatchSets request
-}
type alias ListSqlInjectionMatchSetsOptions =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns an array of <a>WebACLSummary</a> objects in the response.</p>

__Required Parameters__



-}
listWebACLs :
    (ListWebACLsOptions -> ListWebACLsOptions)
    -> AWS.Http.UnsignedRequest ListWebACLsResponse
listWebACLs setOptions =
  let
    options = setOptions (ListWebACLsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListWebACLs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listWebACLsResponseDecoder


{-| Options for a listWebACLs request
-}
type alias ListWebACLsOptions =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns an array of <a>XssMatchSet</a> objects.</p>

__Required Parameters__



-}
listXssMatchSets :
    (ListXssMatchSetsOptions -> ListXssMatchSetsOptions)
    -> AWS.Http.UnsignedRequest ListXssMatchSetsResponse
listXssMatchSets setOptions =
  let
    options = setOptions (ListXssMatchSetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListXssMatchSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listXssMatchSetsResponseDecoder


{-| Options for a listXssMatchSets request
-}
type alias ListXssMatchSetsOptions =
    { nextMarker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Inserts or deletes <a>ByteMatchTuple</a> objects (filters) in a <a>ByteMatchSet</a>. For each <code>ByteMatchTuple</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change a <code>ByteMatchSetUpdate</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The part of a web request that you want AWS WAF to inspect, such as a query string or the value of the <code>User-Agent</code> header. </p> </li> <li> <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to look for. For more information, including how you specify the values for the AWS WAF API and the AWS CLI or SDKs, see <code>TargetString</code> in the <a>ByteMatchTuple</a> data type. </p> </li> <li> <p>Where to look, such as at the beginning or the end of a query string.</p> </li> <li> <p>Whether to perform any conversions on the request, such as converting it to lowercase, before inspecting it for the specified string.</p> </li> </ul> <p>For example, you can add a <code>ByteMatchSetUpdate</code> object that matches web requests in which <code>User-Agent</code> headers contain the string <code>BadBot</code>. You can then configure AWS WAF to block those requests.</p> <p>To create and configure a <code>ByteMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Create a <code>ByteMatchSet.</code> For more information, see <a>CreateByteMatchSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateByteMatchSet</code> request.</p> </li> <li> <p>Submit an <code>UpdateByteMatchSet</code> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `byteMatchSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List ByteMatchSetUpdate)`


-}
updateByteMatchSet :
    String
    -> String
    -> (List ByteMatchSetUpdate)
    -> AWS.Http.UnsignedRequest UpdateByteMatchSetResponse
updateByteMatchSet byteMatchSetId changeToken updates =
    AWS.Http.unsignedRequest
        "UpdateByteMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateByteMatchSetResponseDecoder



{-| <p>Inserts or deletes <a>IPSetDescriptor</a> objects in an <code>IPSet</code>. For each <code>IPSetDescriptor</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change an <code>IPSetDescriptor</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The IP address version, <code>IPv4</code> or <code>IPv6</code>. </p> </li> <li> <p>The IP address in CIDR notation, for example, <code>192.0.2.0/24</code> (for the range of IP addresses from <code>192.0.2.0</code> to <code>192.0.2.255</code>) or <code>192.0.2.44/32</code> (for the individual IP address <code>192.0.2.44</code>). </p> </li> </ul> <p>AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6. For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>.</p> <p>IPv6 addresses can be represented using any of the following formats:</p> <ul> <li> <p>1111:0000:0000:0000:0000:0000:0000:0111/128</p> </li> <li> <p>1111:0:0:0:0:0:0:0111/128</p> </li> <li> <p>1111::0111/128</p> </li> <li> <p>1111::111/128</p> </li> </ul> <p>You use an <code>IPSet</code> to specify which web requests you want to allow or block based on the IP addresses that the requests originated from. For example, if you're receiving a lot of requests from one or a small number of IP addresses and you want to block the requests, you can create an <code>IPSet</code> that specifies those IP addresses, and then configure AWS WAF to block the requests. </p> <p>To create and configure an <code>IPSet</code>, perform the following steps:</p> <ol> <li> <p>Submit a <a>CreateIPSet</a> request.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateIPSet</code> request to specify the IP addresses that you want AWS WAF to watch for.</p> </li> </ol> <p>When you update an <code>IPSet</code>, you specify the IP addresses that you want to add and/or the IP addresses that you want to delete. If you want to change an IP address, you delete the existing IP address and add the new one.</p> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `iPSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List IPSetUpdate)`


-}
updateIPSet :
    String
    -> String
    -> (List IPSetUpdate)
    -> AWS.Http.UnsignedRequest UpdateIPSetResponse
updateIPSet iPSetId changeToken updates =
    AWS.Http.unsignedRequest
        "UpdateIPSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateIPSetResponseDecoder



{-| <p>Inserts or deletes <a>Predicate</a> objects in a <code>Rule</code>. Each <code>Predicate</code> object identifies a predicate, such as a <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests that you want to allow, block, or count. If you add more than one predicate to a <code>Rule</code>, a request must match all of the specifications to be allowed, blocked, or counted. For example, suppose you add the following to a <code>Rule</code>: </p> <ul> <li> <p>A <code>ByteMatchSet</code> that matches the value <code>BadBot</code> in the <code>User-Agent</code> header</p> </li> <li> <p>An <code>IPSet</code> that matches the IP address <code>192.0.2.44</code> </p> </li> </ul> <p>You then add the <code>Rule</code> to a <code>WebACL</code> and specify that you want to block requests that satisfy the <code>Rule</code>. For a request to be blocked, the <code>User-Agent</code> header in the request must contain the value <code>BadBot</code> <i>and</i> the request must originate from the IP address 192.0.2.44.</p> <p>To create and configure a <code>Rule</code>, perform the following steps:</p> <ol> <li> <p>Create and update the predicates that you want to include in the <code>Rule</code>.</p> </li> <li> <p>Create the <code>Rule</code>. See <a>CreateRule</a>.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateRule</a> request.</p> </li> <li> <p>Submit an <code>UpdateRule</code> request to add predicates to the <code>Rule</code>.</p> </li> <li> <p>Create and update a <code>WebACL</code> that contains the <code>Rule</code>. See <a>CreateWebACL</a>.</p> </li> </ol> <p>If you want to replace one <code>ByteMatchSet</code> or <code>IPSet</code> with another, you delete the existing one and add the new one.</p> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `ruleId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List RuleUpdate)`


-}
updateRule :
    String
    -> String
    -> (List RuleUpdate)
    -> AWS.Http.UnsignedRequest UpdateRuleResponse
updateRule ruleId changeToken updates =
    AWS.Http.unsignedRequest
        "UpdateRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateRuleResponseDecoder



{-| <p>Inserts or deletes <a>SizeConstraint</a> objects (filters) in a <a>SizeConstraintSet</a>. For each <code>SizeConstraint</code> object, you specify the following values: </p> <ul> <li> <p>Whether to insert or delete the object from the array. If you want to change a <code>SizeConstraintSetUpdate</code> object, you delete the existing object and add a new one.</p> </li> <li> <p>The part of a web request that you want AWS WAF to evaluate, such as the length of a query string or the length of the <code>User-Agent</code> header.</p> </li> <li> <p>Whether to perform any transformations on the request, such as converting it to lowercase, before checking its length. Note that transformations of the request body are not supported because the AWS resource forwards only the first <code>8192</code> bytes of your request to AWS WAF.</p> </li> <li> <p>A <code>ComparisonOperator</code> used for evaluating the selected part of the request against the specified <code>Size</code>, such as equals, greater than, less than, and so on.</p> </li> <li> <p>The length, in bytes, that you want AWS WAF to watch for in selected part of the request. The length is computed after applying the transformation.</p> </li> </ul> <p>For example, you can add a <code>SizeConstraintSetUpdate</code> object that matches web requests in which the length of the <code>User-Agent</code> header is greater than 100 bytes. You can then configure AWS WAF to block those requests.</p> <p>To create and configure a <code>SizeConstraintSet</code>, perform the following steps:</p> <ol> <li> <p>Create a <code>SizeConstraintSet.</code> For more information, see <a>CreateSizeConstraintSet</a>.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <code>UpdateSizeConstraintSet</code> request.</p> </li> <li> <p>Submit an <code>UpdateSizeConstraintSet</code> request to specify the part of the request that you want AWS WAF to inspect (for example, the header or the URI) and the value that you want AWS WAF to watch for.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `sizeConstraintSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List SizeConstraintSetUpdate)`


-}
updateSizeConstraintSet :
    String
    -> String
    -> (List SizeConstraintSetUpdate)
    -> AWS.Http.UnsignedRequest UpdateSizeConstraintSetResponse
updateSizeConstraintSet sizeConstraintSetId changeToken updates =
    AWS.Http.unsignedRequest
        "UpdateSizeConstraintSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateSizeConstraintSetResponseDecoder



{-| <p>Inserts or deletes <a>SqlInjectionMatchTuple</a> objects (filters) in a <a>SqlInjectionMatchSet</a>. For each <code>SqlInjectionMatchTuple</code> object, you specify the following values:</p> <ul> <li> <p> <code>Action</code>: Whether to insert the object into or delete the object from the array. To change a <code>SqlInjectionMatchTuple</code>, you delete the existing object and add a new one.</p> </li> <li> <p> <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header, the name of the header.</p> </li> <li> <p> <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before inspecting the request for snippets of malicious SQL code.</p> </li> </ul> <p>You use <code>SqlInjectionMatchSet</code> objects to specify which CloudFront requests you want to allow, block, or count. For example, if you're receiving requests that contain snippets of SQL code in the query string and you want to block the requests, you can create a <code>SqlInjectionMatchSet</code> with the applicable settings, and then configure AWS WAF to block the requests. </p> <p>To create and configure a <code>SqlInjectionMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Submit a <a>CreateSqlInjectionMatchSet</a> request.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateSqlInjectionMatchSet</code> request to specify the parts of web requests that you want AWS WAF to inspect for snippets of SQL code.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `sqlInjectionMatchSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List SqlInjectionMatchSetUpdate)`


-}
updateSqlInjectionMatchSet :
    String
    -> String
    -> (List SqlInjectionMatchSetUpdate)
    -> AWS.Http.UnsignedRequest UpdateSqlInjectionMatchSetResponse
updateSqlInjectionMatchSet sqlInjectionMatchSetId changeToken updates =
    AWS.Http.unsignedRequest
        "UpdateSqlInjectionMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateSqlInjectionMatchSetResponseDecoder



{-| <p>Inserts or deletes <a>ActivatedRule</a> objects in a <code>WebACL</code>. Each <code>Rule</code> identifies web requests that you want to allow, block, or count. When you update a <code>WebACL</code>, you specify the following values:</p> <ul> <li> <p>A default action for the <code>WebACL</code>, either <code>ALLOW</code> or <code>BLOCK</code>. AWS WAF performs the default action if a request doesn't match the criteria in any of the <code>Rules</code> in a <code>WebACL</code>.</p> </li> <li> <p>The <code>Rules</code> that you want to add and/or delete. If you want to replace one <code>Rule</code> with another, you delete the existing <code>Rule</code> and add the new one.</p> </li> <li> <p>For each <code>Rule</code>, whether you want AWS WAF to allow requests, block requests, or count requests that match the conditions in the <code>Rule</code>.</p> </li> <li> <p>The order in which you want AWS WAF to evaluate the <code>Rules</code> in a <code>WebACL</code>. If you add more than one <code>Rule</code> to a <code>WebACL</code>, AWS WAF evaluates each request against the <code>Rules</code> in order based on the value of <code>Priority</code>. (The <code>Rule</code> that has the lowest value for <code>Priority</code> is evaluated first.) When a web request matches all of the predicates (such as <code>ByteMatchSets</code> and <code>IPSets</code>) in a <code>Rule</code>, AWS WAF immediately takes the corresponding action, allow or block, and doesn't evaluate the request against the remaining <code>Rules</code> in the <code>WebACL</code>, if any. </p> </li> <li> <p>The CloudFront distribution that you want to associate with the <code>WebACL</code>.</p> </li> </ul> <p>To create and configure a <code>WebACL</code>, perform the following steps:</p> <ol> <li> <p>Create and update the predicates that you want to include in <code>Rules</code>. For more information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>, <a>CreateSqlInjectionMatchSet</a>, and <a>UpdateSqlInjectionMatchSet</a>.</p> </li> <li> <p>Create and update the <code>Rules</code> that you want to include in the <code>WebACL</code>. For more information, see <a>CreateRule</a> and <a>UpdateRule</a>.</p> </li> <li> <p>Create a <code>WebACL</code>. See <a>CreateWebACL</a>.</p> </li> <li> <p>Use <code>GetChangeToken</code> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateWebACL</a> request.</p> </li> <li> <p>Submit an <code>UpdateWebACL</code> request to specify the <code>Rules</code> that you want to include in the <code>WebACL</code>, to specify the default action, and to associate the <code>WebACL</code> with a CloudFront distribution. </p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `webACLId` __:__ `String`
* `changeToken` __:__ `String`


-}
updateWebACL :
    String
    -> String
    -> (UpdateWebACLOptions -> UpdateWebACLOptions)
    -> AWS.Http.UnsignedRequest UpdateWebACLResponse
updateWebACL webACLId changeToken setOptions =
  let
    options = setOptions (UpdateWebACLOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateWebACL"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateWebACLResponseDecoder


{-| Options for a updateWebACL request
-}
type alias UpdateWebACLOptions =
    { updates : Maybe (List WebACLUpdate)
    , defaultAction : Maybe WafAction
    }



{-| <p>Inserts or deletes <a>XssMatchTuple</a> objects (filters) in an <a>XssMatchSet</a>. For each <code>XssMatchTuple</code> object, you specify the following values:</p> <ul> <li> <p> <code>Action</code>: Whether to insert the object into or delete the object from the array. To change a <code>XssMatchTuple</code>, you delete the existing object and add a new one.</p> </li> <li> <p> <code>FieldToMatch</code>: The part of web requests that you want AWS WAF to inspect and, if you want AWS WAF to inspect a header, the name of the header.</p> </li> <li> <p> <code>TextTransformation</code>: Which text transformation, if any, to perform on the web request before inspecting the request for cross-site scripting attacks.</p> </li> </ul> <p>You use <code>XssMatchSet</code> objects to specify which CloudFront requests you want to allow, block, or count. For example, if you're receiving requests that contain cross-site scripting attacks in the request body and you want to block the requests, you can create an <code>XssMatchSet</code> with the applicable settings, and then configure AWS WAF to block the requests. </p> <p>To create and configure an <code>XssMatchSet</code>, perform the following steps:</p> <ol> <li> <p>Submit a <a>CreateXssMatchSet</a> request.</p> </li> <li> <p>Use <a>GetChangeToken</a> to get the change token that you provide in the <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</p> </li> <li> <p>Submit an <code>UpdateXssMatchSet</code> request to specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks.</p> </li> </ol> <p>For more information about how to use the AWS WAF API to allow or block HTTP requests, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF Developer Guide</a>.</p>

__Required Parameters__

* `xssMatchSetId` __:__ `String`
* `changeToken` __:__ `String`
* `updates` __:__ `(List XssMatchSetUpdate)`


-}
updateXssMatchSet :
    String
    -> String
    -> (List XssMatchSetUpdate)
    -> AWS.Http.UnsignedRequest UpdateXssMatchSetResponse
updateXssMatchSet xssMatchSetId changeToken updates =
    AWS.Http.unsignedRequest
        "UpdateXssMatchSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateXssMatchSetResponseDecoder




{-| <p>The <code>ActivatedRule</code> object in an <a>UpdateWebACL</a> request specifies a <code>Rule</code> that you want to insert or delete, the priority of the <code>Rule</code> in the <code>WebACL</code>, and the action that you want AWS WAF to take when a web request matches the <code>Rule</code> (<code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>).</p> <p>To specify whether to insert or delete a <code>Rule</code>, use the <code>Action</code> parameter in the <a>WebACLUpdate</a> data type.</p>
-}
type alias ActivatedRule =
    { priority : Int
    , ruleId : String
    , action : WafAction
    }



activatedRuleDecoder : JD.Decoder ActivatedRule
activatedRuleDecoder =
    JDP.decode ActivatedRule
        |> JDP.required "priority" JD.int
        |> JDP.required "ruleId" JD.string
        |> JDP.required "action" wafActionDecoder




{-| Type of HTTP response from associateWebACL
-}
type alias AssociateWebACLResponse =
    { 
    }



associateWebACLResponseDecoder : JD.Decoder AssociateWebACLResponse
associateWebACLResponseDecoder =
    JDP.decode AssociateWebACLResponse



{-| <p>In a <a>GetByteMatchSet</a> request, <code>ByteMatchSet</code> is a complex type that contains the <code>ByteMatchSetId</code> and <code>Name</code> of a <code>ByteMatchSet</code>, and the values that you specified when you updated the <code>ByteMatchSet</code>. </p> <p>A complex type that contains <code>ByteMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect and the values that you want AWS WAF to search for. If a <code>ByteMatchSet</code> contains more than one <code>ByteMatchTuple</code> object, a request needs to match the settings in only one <code>ByteMatchTuple</code> to be considered a match.</p>
-}
type alias ByteMatchSet =
    { byteMatchSetId : String
    , name : Maybe String
    , byteMatchTuples : (List ByteMatchTuple)
    }



byteMatchSetDecoder : JD.Decoder ByteMatchSet
byteMatchSetDecoder =
    JDP.decode ByteMatchSet
        |> JDP.required "byteMatchSetId" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.required "byteMatchTuples" (JD.list byteMatchTupleDecoder)




{-| <p>Returned by <a>ListByteMatchSets</a>. Each <code>ByteMatchSetSummary</code> object includes the <code>Name</code> and <code>ByteMatchSetId</code> for one <a>ByteMatchSet</a>.</p>
-}
type alias ByteMatchSetSummary =
    { byteMatchSetId : String
    , name : String
    }



byteMatchSetSummaryDecoder : JD.Decoder ByteMatchSetSummary
byteMatchSetSummaryDecoder =
    JDP.decode ByteMatchSetSummary
        |> JDP.required "byteMatchSetId" JD.string
        |> JDP.required "name" JD.string




{-| <p>In an <a>UpdateByteMatchSet</a> request, <code>ByteMatchSetUpdate</code> specifies whether to insert or delete a <a>ByteMatchTuple</a> and includes the settings for the <code>ByteMatchTuple</code>.</p>
-}
type alias ByteMatchSetUpdate =
    { action : ChangeAction
    , byteMatchTuple : ByteMatchTuple
    }



byteMatchSetUpdateDecoder : JD.Decoder ByteMatchSetUpdate
byteMatchSetUpdateDecoder =
    JDP.decode ByteMatchSetUpdate
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "byteMatchTuple" byteMatchTupleDecoder




{-| <p>The bytes (typically a string that corresponds with ASCII characters) that you want AWS WAF to search for in web requests, the location in requests that you want AWS WAF to search, and other settings.</p>
-}
type alias ByteMatchTuple =
    { fieldToMatch : FieldToMatch
    , targetString : String
    , textTransformation : TextTransformation
    , positionalConstraint : PositionalConstraint
    }



byteMatchTupleDecoder : JD.Decoder ByteMatchTuple
byteMatchTupleDecoder =
    JDP.decode ByteMatchTuple
        |> JDP.required "fieldToMatch" fieldToMatchDecoder
        |> JDP.required "targetString" JD.string
        |> JDP.required "textTransformation" textTransformationDecoder
        |> JDP.required "positionalConstraint" positionalConstraintDecoder




{-| One of

* `ChangeAction_INSERT`
* `ChangeAction_DELETE`

-}
type ChangeAction
    = ChangeAction_INSERT
    | ChangeAction_DELETE



changeActionDecoder : JD.Decoder ChangeAction
changeActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INSERT" ->
                        JD.succeed ChangeAction_INSERT

                    "DELETE" ->
                        JD.succeed ChangeAction_DELETE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ChangeTokenStatus_PROVISIONED`
* `ChangeTokenStatus_PENDING`
* `ChangeTokenStatus_INSYNC`

-}
type ChangeTokenStatus
    = ChangeTokenStatus_PROVISIONED
    | ChangeTokenStatus_PENDING
    | ChangeTokenStatus_INSYNC



changeTokenStatusDecoder : JD.Decoder ChangeTokenStatus
changeTokenStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PROVISIONED" ->
                        JD.succeed ChangeTokenStatus_PROVISIONED

                    "PENDING" ->
                        JD.succeed ChangeTokenStatus_PENDING

                    "INSYNC" ->
                        JD.succeed ChangeTokenStatus_INSYNC


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ComparisonOperator_EQ`
* `ComparisonOperator_NE`
* `ComparisonOperator_LE`
* `ComparisonOperator_LT`
* `ComparisonOperator_GE`
* `ComparisonOperator_GT`

-}
type ComparisonOperator
    = ComparisonOperator_EQ
    | ComparisonOperator_NE
    | ComparisonOperator_LE
    | ComparisonOperator_LT
    | ComparisonOperator_GE
    | ComparisonOperator_GT



comparisonOperatorDecoder : JD.Decoder ComparisonOperator
comparisonOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EQ" ->
                        JD.succeed ComparisonOperator_EQ

                    "NE" ->
                        JD.succeed ComparisonOperator_NE

                    "LE" ->
                        JD.succeed ComparisonOperator_LE

                    "LT" ->
                        JD.succeed ComparisonOperator_LT

                    "GE" ->
                        JD.succeed ComparisonOperator_GE

                    "GT" ->
                        JD.succeed ComparisonOperator_GT


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createByteMatchSet
-}
type alias CreateByteMatchSetResponse =
    { byteMatchSet : Maybe ByteMatchSet
    , changeToken : Maybe String
    }



createByteMatchSetResponseDecoder : JD.Decoder CreateByteMatchSetResponse
createByteMatchSetResponseDecoder =
    JDP.decode CreateByteMatchSetResponse
        |> JDP.optional "byteMatchSet" (JD.nullable byteMatchSetDecoder) Nothing
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createIPSet
-}
type alias CreateIPSetResponse =
    { iPSet : Maybe IPSet
    , changeToken : Maybe String
    }



createIPSetResponseDecoder : JD.Decoder CreateIPSetResponse
createIPSetResponseDecoder =
    JDP.decode CreateIPSetResponse
        |> JDP.optional "iPSet" (JD.nullable iPSetDecoder) Nothing
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createRule
-}
type alias CreateRuleResponse =
    { rule : Maybe Rule
    , changeToken : Maybe String
    }



createRuleResponseDecoder : JD.Decoder CreateRuleResponse
createRuleResponseDecoder =
    JDP.decode CreateRuleResponse
        |> JDP.optional "rule" (JD.nullable ruleDecoder) Nothing
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSizeConstraintSet
-}
type alias CreateSizeConstraintSetResponse =
    { sizeConstraintSet : Maybe SizeConstraintSet
    , changeToken : Maybe String
    }



createSizeConstraintSetResponseDecoder : JD.Decoder CreateSizeConstraintSetResponse
createSizeConstraintSetResponseDecoder =
    JDP.decode CreateSizeConstraintSetResponse
        |> JDP.optional "sizeConstraintSet" (JD.nullable sizeConstraintSetDecoder) Nothing
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSqlInjectionMatchSet
-}
type alias CreateSqlInjectionMatchSetResponse =
    { sqlInjectionMatchSet : Maybe SqlInjectionMatchSet
    , changeToken : Maybe String
    }



createSqlInjectionMatchSetResponseDecoder : JD.Decoder CreateSqlInjectionMatchSetResponse
createSqlInjectionMatchSetResponseDecoder =
    JDP.decode CreateSqlInjectionMatchSetResponse
        |> JDP.optional "sqlInjectionMatchSet" (JD.nullable sqlInjectionMatchSetDecoder) Nothing
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createWebACL
-}
type alias CreateWebACLResponse =
    { webACL : Maybe WebACL
    , changeToken : Maybe String
    }



createWebACLResponseDecoder : JD.Decoder CreateWebACLResponse
createWebACLResponseDecoder =
    JDP.decode CreateWebACLResponse
        |> JDP.optional "webACL" (JD.nullable webACLDecoder) Nothing
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createXssMatchSet
-}
type alias CreateXssMatchSetResponse =
    { xssMatchSet : Maybe XssMatchSet
    , changeToken : Maybe String
    }



createXssMatchSetResponseDecoder : JD.Decoder CreateXssMatchSetResponse
createXssMatchSetResponseDecoder =
    JDP.decode CreateXssMatchSetResponse
        |> JDP.optional "xssMatchSet" (JD.nullable xssMatchSetDecoder) Nothing
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteByteMatchSet
-}
type alias DeleteByteMatchSetResponse =
    { changeToken : Maybe String
    }



deleteByteMatchSetResponseDecoder : JD.Decoder DeleteByteMatchSetResponse
deleteByteMatchSetResponseDecoder =
    JDP.decode DeleteByteMatchSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteIPSet
-}
type alias DeleteIPSetResponse =
    { changeToken : Maybe String
    }



deleteIPSetResponseDecoder : JD.Decoder DeleteIPSetResponse
deleteIPSetResponseDecoder =
    JDP.decode DeleteIPSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteRule
-}
type alias DeleteRuleResponse =
    { changeToken : Maybe String
    }



deleteRuleResponseDecoder : JD.Decoder DeleteRuleResponse
deleteRuleResponseDecoder =
    JDP.decode DeleteRuleResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteSizeConstraintSet
-}
type alias DeleteSizeConstraintSetResponse =
    { changeToken : Maybe String
    }



deleteSizeConstraintSetResponseDecoder : JD.Decoder DeleteSizeConstraintSetResponse
deleteSizeConstraintSetResponseDecoder =
    JDP.decode DeleteSizeConstraintSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteSqlInjectionMatchSet
-}
type alias DeleteSqlInjectionMatchSetResponse =
    { changeToken : Maybe String
    }



deleteSqlInjectionMatchSetResponseDecoder : JD.Decoder DeleteSqlInjectionMatchSetResponse
deleteSqlInjectionMatchSetResponseDecoder =
    JDP.decode DeleteSqlInjectionMatchSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteWebACL
-}
type alias DeleteWebACLResponse =
    { changeToken : Maybe String
    }



deleteWebACLResponseDecoder : JD.Decoder DeleteWebACLResponse
deleteWebACLResponseDecoder =
    JDP.decode DeleteWebACLResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteXssMatchSet
-}
type alias DeleteXssMatchSetResponse =
    { changeToken : Maybe String
    }



deleteXssMatchSetResponseDecoder : JD.Decoder DeleteXssMatchSetResponse
deleteXssMatchSetResponseDecoder =
    JDP.decode DeleteXssMatchSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from disassociateWebACL
-}
type alias DisassociateWebACLResponse =
    { 
    }



disassociateWebACLResponseDecoder : JD.Decoder DisassociateWebACLResponse
disassociateWebACLResponseDecoder =
    JDP.decode DisassociateWebACLResponse



{-| <p>Specifies where in a web request to look for <code>TargetString</code>.</p>
-}
type alias FieldToMatch =
    { type_ : MatchFieldType
    , data : Maybe String
    }



fieldToMatchDecoder : JD.Decoder FieldToMatch
fieldToMatchDecoder =
    JDP.decode FieldToMatch
        |> JDP.required "type_" matchFieldTypeDecoder
        |> JDP.optional "data" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getByteMatchSet
-}
type alias GetByteMatchSetResponse =
    { byteMatchSet : Maybe ByteMatchSet
    }



getByteMatchSetResponseDecoder : JD.Decoder GetByteMatchSetResponse
getByteMatchSetResponseDecoder =
    JDP.decode GetByteMatchSetResponse
        |> JDP.optional "byteMatchSet" (JD.nullable byteMatchSetDecoder) Nothing




{-| Type of HTTP response from getChangeToken
-}
type alias GetChangeTokenResponse =
    { changeToken : Maybe String
    }



getChangeTokenResponseDecoder : JD.Decoder GetChangeTokenResponse
getChangeTokenResponseDecoder =
    JDP.decode GetChangeTokenResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getChangeTokenStatus
-}
type alias GetChangeTokenStatusResponse =
    { changeTokenStatus : Maybe ChangeTokenStatus
    }



getChangeTokenStatusResponseDecoder : JD.Decoder GetChangeTokenStatusResponse
getChangeTokenStatusResponseDecoder =
    JDP.decode GetChangeTokenStatusResponse
        |> JDP.optional "changeTokenStatus" (JD.nullable changeTokenStatusDecoder) Nothing




{-| Type of HTTP response from getIPSet
-}
type alias GetIPSetResponse =
    { iPSet : Maybe IPSet
    }



getIPSetResponseDecoder : JD.Decoder GetIPSetResponse
getIPSetResponseDecoder =
    JDP.decode GetIPSetResponse
        |> JDP.optional "iPSet" (JD.nullable iPSetDecoder) Nothing




{-| Type of HTTP response from getRule
-}
type alias GetRuleResponse =
    { rule : Maybe Rule
    }



getRuleResponseDecoder : JD.Decoder GetRuleResponse
getRuleResponseDecoder =
    JDP.decode GetRuleResponse
        |> JDP.optional "rule" (JD.nullable ruleDecoder) Nothing




{-| Type of HTTP response from getSampledRequests
-}
type alias GetSampledRequestsResponse =
    { sampledRequests : Maybe (List SampledHTTPRequest)
    , populationSize : Maybe Int
    , timeWindow : Maybe TimeWindow
    }



getSampledRequestsResponseDecoder : JD.Decoder GetSampledRequestsResponse
getSampledRequestsResponseDecoder =
    JDP.decode GetSampledRequestsResponse
        |> JDP.optional "sampledRequests" (JD.nullable (JD.list sampledHTTPRequestDecoder)) Nothing
        |> JDP.optional "populationSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "timeWindow" (JD.nullable timeWindowDecoder) Nothing




{-| Type of HTTP response from getSizeConstraintSet
-}
type alias GetSizeConstraintSetResponse =
    { sizeConstraintSet : Maybe SizeConstraintSet
    }



getSizeConstraintSetResponseDecoder : JD.Decoder GetSizeConstraintSetResponse
getSizeConstraintSetResponseDecoder =
    JDP.decode GetSizeConstraintSetResponse
        |> JDP.optional "sizeConstraintSet" (JD.nullable sizeConstraintSetDecoder) Nothing




{-| Type of HTTP response from getSqlInjectionMatchSet
-}
type alias GetSqlInjectionMatchSetResponse =
    { sqlInjectionMatchSet : Maybe SqlInjectionMatchSet
    }



getSqlInjectionMatchSetResponseDecoder : JD.Decoder GetSqlInjectionMatchSetResponse
getSqlInjectionMatchSetResponseDecoder =
    JDP.decode GetSqlInjectionMatchSetResponse
        |> JDP.optional "sqlInjectionMatchSet" (JD.nullable sqlInjectionMatchSetDecoder) Nothing




{-| Type of HTTP response from getWebACLForResource
-}
type alias GetWebACLForResourceResponse =
    { webACLSummary : Maybe WebACLSummary
    }



getWebACLForResourceResponseDecoder : JD.Decoder GetWebACLForResourceResponse
getWebACLForResourceResponseDecoder =
    JDP.decode GetWebACLForResourceResponse
        |> JDP.optional "webACLSummary" (JD.nullable webACLSummaryDecoder) Nothing




{-| Type of HTTP response from getWebACL
-}
type alias GetWebACLResponse =
    { webACL : Maybe WebACL
    }



getWebACLResponseDecoder : JD.Decoder GetWebACLResponse
getWebACLResponseDecoder =
    JDP.decode GetWebACLResponse
        |> JDP.optional "webACL" (JD.nullable webACLDecoder) Nothing




{-| Type of HTTP response from getXssMatchSet
-}
type alias GetXssMatchSetResponse =
    { xssMatchSet : Maybe XssMatchSet
    }



getXssMatchSetResponseDecoder : JD.Decoder GetXssMatchSetResponse
getXssMatchSetResponseDecoder =
    JDP.decode GetXssMatchSetResponse
        |> JDP.optional "xssMatchSet" (JD.nullable xssMatchSetDecoder) Nothing




{-| <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPHeader</code> complex type that appears as <code>Headers</code> in the response syntax. <code>HTTPHeader</code> contains the names and values of all of the headers that appear in one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
-}
type alias HTTPHeader =
    { name : Maybe String
    , value : Maybe String
    }



hTTPHeaderDecoder : JD.Decoder HTTPHeader
hTTPHeaderDecoder =
    JDP.decode HTTPHeader
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The response from a <a>GetSampledRequests</a> request includes an <code>HTTPRequest</code> complex type that appears as <code>Request</code> in the response syntax. <code>HTTPRequest</code> contains information about one of the web requests that were returned by <code>GetSampledRequests</code>. </p>
-}
type alias HTTPRequest =
    { clientIP : Maybe String
    , country : Maybe String
    , uRI : Maybe String
    , method : Maybe String
    , hTTPVersion : Maybe String
    , headers : Maybe (List HTTPHeader)
    }



hTTPRequestDecoder : JD.Decoder HTTPRequest
hTTPRequestDecoder =
    JDP.decode HTTPRequest
        |> JDP.optional "clientIP" (JD.nullable JD.string) Nothing
        |> JDP.optional "country" (JD.nullable JD.string) Nothing
        |> JDP.optional "uRI" (JD.nullable JD.string) Nothing
        |> JDP.optional "method" (JD.nullable JD.string) Nothing
        |> JDP.optional "hTTPVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "headers" (JD.nullable (JD.list hTTPHeaderDecoder)) Nothing




{-| <p>Contains one or more IP addresses or blocks of IP addresses specified in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports /8, /16, /24, and /32 IP address ranges for IPv4, and /24, /32, /48, /56, /64 and /128 for IPv6.</p> <p>To specify an individual IP address, you specify the four-part IP address followed by a <code>/32</code>, for example, 192.0.2.0/31. To block a range of IP addresses, you can specify a <code>/128</code>, <code>/64</code>, <code>/56</code>, <code>/48</code>, <code>/32</code>, <code>/24</code>, <code>/16</code>, or <code>/8</code> CIDR. For more information about CIDR notation, see the Wikipedia entry <a href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p>
-}
type alias IPSet =
    { iPSetId : String
    , name : Maybe String
    , iPSetDescriptors : (List IPSetDescriptor)
    }



iPSetDecoder : JD.Decoder IPSet
iPSetDecoder =
    JDP.decode IPSet
        |> JDP.required "iPSetId" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.required "iPSetDescriptors" (JD.list iPSetDescriptorDecoder)




{-| <p>Specifies the IP address type (<code>IPV4</code> or <code>IPV6</code>) and the IP address range (in CIDR format) that web requests originate from.</p>
-}
type alias IPSetDescriptor =
    { type_ : IPSetDescriptorType
    , value : String
    }



iPSetDescriptorDecoder : JD.Decoder IPSetDescriptor
iPSetDescriptorDecoder =
    JDP.decode IPSetDescriptor
        |> JDP.required "type_" iPSetDescriptorTypeDecoder
        |> JDP.required "value" JD.string




{-| One of

* `IPSetDescriptorType_IPV4`
* `IPSetDescriptorType_IPV6`

-}
type IPSetDescriptorType
    = IPSetDescriptorType_IPV4
    | IPSetDescriptorType_IPV6



iPSetDescriptorTypeDecoder : JD.Decoder IPSetDescriptorType
iPSetDescriptorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IPV4" ->
                        JD.succeed IPSetDescriptorType_IPV4

                    "IPV6" ->
                        JD.succeed IPSetDescriptorType_IPV6


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains the identifier and the name of the <code>IPSet</code>.</p>
-}
type alias IPSetSummary =
    { iPSetId : String
    , name : String
    }



iPSetSummaryDecoder : JD.Decoder IPSetSummary
iPSetSummaryDecoder =
    JDP.decode IPSetSummary
        |> JDP.required "iPSetId" JD.string
        |> JDP.required "name" JD.string




{-| <p>Specifies the type of update to perform to an <a>IPSet</a> with <a>UpdateIPSet</a>.</p>
-}
type alias IPSetUpdate =
    { action : ChangeAction
    , iPSetDescriptor : IPSetDescriptor
    }



iPSetUpdateDecoder : JD.Decoder IPSetUpdate
iPSetUpdateDecoder =
    JDP.decode IPSetUpdate
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "iPSetDescriptor" iPSetDescriptorDecoder




{-| Type of HTTP response from listByteMatchSets
-}
type alias ListByteMatchSetsResponse =
    { nextMarker : Maybe String
    , byteMatchSets : Maybe (List ByteMatchSetSummary)
    }



listByteMatchSetsResponseDecoder : JD.Decoder ListByteMatchSetsResponse
listByteMatchSetsResponseDecoder =
    JDP.decode ListByteMatchSetsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "byteMatchSets" (JD.nullable (JD.list byteMatchSetSummaryDecoder)) Nothing




{-| Type of HTTP response from listIPSets
-}
type alias ListIPSetsResponse =
    { nextMarker : Maybe String
    , iPSets : Maybe (List IPSetSummary)
    }



listIPSetsResponseDecoder : JD.Decoder ListIPSetsResponse
listIPSetsResponseDecoder =
    JDP.decode ListIPSetsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "iPSets" (JD.nullable (JD.list iPSetSummaryDecoder)) Nothing




{-| Type of HTTP response from listResourcesForWebACL
-}
type alias ListResourcesForWebACLResponse =
    { resourceArns : Maybe (List String)
    }



listResourcesForWebACLResponseDecoder : JD.Decoder ListResourcesForWebACLResponse
listResourcesForWebACLResponseDecoder =
    JDP.decode ListResourcesForWebACLResponse
        |> JDP.optional "resourceArns" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from listRules
-}
type alias ListRulesResponse =
    { nextMarker : Maybe String
    , rules : Maybe (List RuleSummary)
    }



listRulesResponseDecoder : JD.Decoder ListRulesResponse
listRulesResponseDecoder =
    JDP.decode ListRulesResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "rules" (JD.nullable (JD.list ruleSummaryDecoder)) Nothing




{-| Type of HTTP response from listSizeConstraintSets
-}
type alias ListSizeConstraintSetsResponse =
    { nextMarker : Maybe String
    , sizeConstraintSets : Maybe (List SizeConstraintSetSummary)
    }



listSizeConstraintSetsResponseDecoder : JD.Decoder ListSizeConstraintSetsResponse
listSizeConstraintSetsResponseDecoder =
    JDP.decode ListSizeConstraintSetsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "sizeConstraintSets" (JD.nullable (JD.list sizeConstraintSetSummaryDecoder)) Nothing




{-| Type of HTTP response from listSqlInjectionMatchSets
-}
type alias ListSqlInjectionMatchSetsResponse =
    { nextMarker : Maybe String
    , sqlInjectionMatchSets : Maybe (List SqlInjectionMatchSetSummary)
    }



listSqlInjectionMatchSetsResponseDecoder : JD.Decoder ListSqlInjectionMatchSetsResponse
listSqlInjectionMatchSetsResponseDecoder =
    JDP.decode ListSqlInjectionMatchSetsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "sqlInjectionMatchSets" (JD.nullable (JD.list sqlInjectionMatchSetSummaryDecoder)) Nothing




{-| Type of HTTP response from listWebACLs
-}
type alias ListWebACLsResponse =
    { nextMarker : Maybe String
    , webACLs : Maybe (List WebACLSummary)
    }



listWebACLsResponseDecoder : JD.Decoder ListWebACLsResponse
listWebACLsResponseDecoder =
    JDP.decode ListWebACLsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "webACLs" (JD.nullable (JD.list webACLSummaryDecoder)) Nothing




{-| Type of HTTP response from listXssMatchSets
-}
type alias ListXssMatchSetsResponse =
    { nextMarker : Maybe String
    , xssMatchSets : Maybe (List XssMatchSetSummary)
    }



listXssMatchSetsResponseDecoder : JD.Decoder ListXssMatchSetsResponse
listXssMatchSetsResponseDecoder =
    JDP.decode ListXssMatchSetsResponse
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "xssMatchSets" (JD.nullable (JD.list xssMatchSetSummaryDecoder)) Nothing




{-| One of

* `MatchFieldType_URI`
* `MatchFieldType_QUERY_STRING`
* `MatchFieldType_HEADER`
* `MatchFieldType_METHOD`
* `MatchFieldType_BODY`

-}
type MatchFieldType
    = MatchFieldType_URI
    | MatchFieldType_QUERY_STRING
    | MatchFieldType_HEADER
    | MatchFieldType_METHOD
    | MatchFieldType_BODY



matchFieldTypeDecoder : JD.Decoder MatchFieldType
matchFieldTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "URI" ->
                        JD.succeed MatchFieldType_URI

                    "QUERY_STRING" ->
                        JD.succeed MatchFieldType_QUERY_STRING

                    "HEADER" ->
                        JD.succeed MatchFieldType_HEADER

                    "METHOD" ->
                        JD.succeed MatchFieldType_METHOD

                    "BODY" ->
                        JD.succeed MatchFieldType_BODY


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ParameterExceptionField_CHANGE_ACTION`
* `ParameterExceptionField_WAF_ACTION`
* `ParameterExceptionField_PREDICATE_TYPE`
* `ParameterExceptionField_IPSET_TYPE`
* `ParameterExceptionField_BYTE_MATCH_FIELD_TYPE`
* `ParameterExceptionField_SQL_INJECTION_MATCH_FIELD_TYPE`
* `ParameterExceptionField_BYTE_MATCH_TEXT_TRANSFORMATION`
* `ParameterExceptionField_BYTE_MATCH_POSITIONAL_CONSTRAINT`
* `ParameterExceptionField_SIZE_CONSTRAINT_COMPARISON_OPERATOR`

-}
type ParameterExceptionField
    = ParameterExceptionField_CHANGE_ACTION
    | ParameterExceptionField_WAF_ACTION
    | ParameterExceptionField_PREDICATE_TYPE
    | ParameterExceptionField_IPSET_TYPE
    | ParameterExceptionField_BYTE_MATCH_FIELD_TYPE
    | ParameterExceptionField_SQL_INJECTION_MATCH_FIELD_TYPE
    | ParameterExceptionField_BYTE_MATCH_TEXT_TRANSFORMATION
    | ParameterExceptionField_BYTE_MATCH_POSITIONAL_CONSTRAINT
    | ParameterExceptionField_SIZE_CONSTRAINT_COMPARISON_OPERATOR



parameterExceptionFieldDecoder : JD.Decoder ParameterExceptionField
parameterExceptionFieldDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CHANGE_ACTION" ->
                        JD.succeed ParameterExceptionField_CHANGE_ACTION

                    "WAF_ACTION" ->
                        JD.succeed ParameterExceptionField_WAF_ACTION

                    "PREDICATE_TYPE" ->
                        JD.succeed ParameterExceptionField_PREDICATE_TYPE

                    "IPSET_TYPE" ->
                        JD.succeed ParameterExceptionField_IPSET_TYPE

                    "BYTE_MATCH_FIELD_TYPE" ->
                        JD.succeed ParameterExceptionField_BYTE_MATCH_FIELD_TYPE

                    "SQL_INJECTION_MATCH_FIELD_TYPE" ->
                        JD.succeed ParameterExceptionField_SQL_INJECTION_MATCH_FIELD_TYPE

                    "BYTE_MATCH_TEXT_TRANSFORMATION" ->
                        JD.succeed ParameterExceptionField_BYTE_MATCH_TEXT_TRANSFORMATION

                    "BYTE_MATCH_POSITIONAL_CONSTRAINT" ->
                        JD.succeed ParameterExceptionField_BYTE_MATCH_POSITIONAL_CONSTRAINT

                    "SIZE_CONSTRAINT_COMPARISON_OPERATOR" ->
                        JD.succeed ParameterExceptionField_SIZE_CONSTRAINT_COMPARISON_OPERATOR


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ParameterExceptionReason_INVALID_OPTION`
* `ParameterExceptionReason_ILLEGAL_COMBINATION`

-}
type ParameterExceptionReason
    = ParameterExceptionReason_INVALID_OPTION
    | ParameterExceptionReason_ILLEGAL_COMBINATION



parameterExceptionReasonDecoder : JD.Decoder ParameterExceptionReason
parameterExceptionReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INVALID_OPTION" ->
                        JD.succeed ParameterExceptionReason_INVALID_OPTION

                    "ILLEGAL_COMBINATION" ->
                        JD.succeed ParameterExceptionReason_ILLEGAL_COMBINATION


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PositionalConstraint_EXACTLY`
* `PositionalConstraint_STARTS_WITH`
* `PositionalConstraint_ENDS_WITH`
* `PositionalConstraint_CONTAINS`
* `PositionalConstraint_CONTAINS_WORD`

-}
type PositionalConstraint
    = PositionalConstraint_EXACTLY
    | PositionalConstraint_STARTS_WITH
    | PositionalConstraint_ENDS_WITH
    | PositionalConstraint_CONTAINS
    | PositionalConstraint_CONTAINS_WORD



positionalConstraintDecoder : JD.Decoder PositionalConstraint
positionalConstraintDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EXACTLY" ->
                        JD.succeed PositionalConstraint_EXACTLY

                    "STARTS_WITH" ->
                        JD.succeed PositionalConstraint_STARTS_WITH

                    "ENDS_WITH" ->
                        JD.succeed PositionalConstraint_ENDS_WITH

                    "CONTAINS" ->
                        JD.succeed PositionalConstraint_CONTAINS

                    "CONTAINS_WORD" ->
                        JD.succeed PositionalConstraint_CONTAINS_WORD


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Specifies the <a>ByteMatchSet</a>, <a>IPSet</a>, <a>SqlInjectionMatchSet</a>, <a>XssMatchSet</a>, and <a>SizeConstraintSet</a> objects that you want to add to a <code>Rule</code> and, for each object, indicates whether you want to negate the settings, for example, requests that do NOT originate from the IP address 192.0.2.44. </p>
-}
type alias Predicate =
    { negated : Bool
    , type_ : PredicateType
    , dataId : String
    }



predicateDecoder : JD.Decoder Predicate
predicateDecoder =
    JDP.decode Predicate
        |> JDP.required "negated" JD.bool
        |> JDP.required "type_" predicateTypeDecoder
        |> JDP.required "dataId" JD.string




{-| One of

* `PredicateType_IPMatch`
* `PredicateType_ByteMatch`
* `PredicateType_SqlInjectionMatch`
* `PredicateType_SizeConstraint`
* `PredicateType_XssMatch`

-}
type PredicateType
    = PredicateType_IPMatch
    | PredicateType_ByteMatch
    | PredicateType_SqlInjectionMatch
    | PredicateType_SizeConstraint
    | PredicateType_XssMatch



predicateTypeDecoder : JD.Decoder PredicateType
predicateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IPMatch" ->
                        JD.succeed PredicateType_IPMatch

                    "ByteMatch" ->
                        JD.succeed PredicateType_ByteMatch

                    "SqlInjectionMatch" ->
                        JD.succeed PredicateType_SqlInjectionMatch

                    "SizeConstraint" ->
                        JD.succeed PredicateType_SizeConstraint

                    "XssMatch" ->
                        JD.succeed PredicateType_XssMatch


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A combination of <a>ByteMatchSet</a>, <a>IPSet</a>, and/or <a>SqlInjectionMatchSet</a> objects that identify the web requests that you want to allow, block, or count. For example, you might create a <code>Rule</code> that includes the following predicates:</p> <ul> <li> <p>An <code>IPSet</code> that causes AWS WAF to search for web requests that originate from the IP address <code>192.0.2.44</code> </p> </li> <li> <p>A <code>ByteMatchSet</code> that causes AWS WAF to search for web requests for which the value of the <code>User-Agent</code> header is <code>BadBot</code>.</p> </li> </ul> <p>To match the settings in this <code>Rule</code>, a request must originate from <code>192.0.2.44</code> AND include a <code>User-Agent</code> header for which the value is <code>BadBot</code>.</p>
-}
type alias Rule =
    { ruleId : String
    , name : Maybe String
    , metricName : Maybe String
    , predicates : (List Predicate)
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JDP.decode Rule
        |> JDP.required "ruleId" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "metricName" (JD.nullable JD.string) Nothing
        |> JDP.required "predicates" (JD.list predicateDecoder)




{-| <p>Contains the identifier and the friendly name or description of the <code>Rule</code>.</p>
-}
type alias RuleSummary =
    { ruleId : String
    , name : String
    }



ruleSummaryDecoder : JD.Decoder RuleSummary
ruleSummaryDecoder =
    JDP.decode RuleSummary
        |> JDP.required "ruleId" JD.string
        |> JDP.required "name" JD.string




{-| <p>Specifies a <code>Predicate</code> (such as an <code>IPSet</code>) and indicates whether you want to add it to a <code>Rule</code> or delete it from a <code>Rule</code>.</p>
-}
type alias RuleUpdate =
    { action : ChangeAction
    , predicate : Predicate
    }



ruleUpdateDecoder : JD.Decoder RuleUpdate
ruleUpdateDecoder =
    JDP.decode RuleUpdate
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "predicate" predicateDecoder




{-| <p>The response from a <a>GetSampledRequests</a> request includes a <code>SampledHTTPRequests</code> complex type that appears as <code>SampledRequests</code> in the response syntax. <code>SampledHTTPRequests</code> contains one <code>SampledHTTPRequest</code> object for each web request that is returned by <code>GetSampledRequests</code>.</p>
-}
type alias SampledHTTPRequest =
    { request : HTTPRequest
    , weight : Int
    , timestamp : Maybe Date
    , action : Maybe String
    }



sampledHTTPRequestDecoder : JD.Decoder SampledHTTPRequest
sampledHTTPRequestDecoder =
    JDP.decode SampledHTTPRequest
        |> JDP.required "request" hTTPRequestDecoder
        |> JDP.required "weight" JD.int
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "action" (JD.nullable JD.string) Nothing




{-| <p>Specifies a constraint on the size of a part of the web request. AWS WAF uses the <code>Size</code>, <code>ComparisonOperator</code>, and <code>FieldToMatch</code> to build an expression in the form of "<code>Size</code> <code>ComparisonOperator</code> size in bytes of <code>FieldToMatch</code>". If that expression is true, the <code>SizeConstraint</code> is considered to match.</p>
-}
type alias SizeConstraint =
    { fieldToMatch : FieldToMatch
    , textTransformation : TextTransformation
    , comparisonOperator : ComparisonOperator
    , size : Int
    }



sizeConstraintDecoder : JD.Decoder SizeConstraint
sizeConstraintDecoder =
    JDP.decode SizeConstraint
        |> JDP.required "fieldToMatch" fieldToMatchDecoder
        |> JDP.required "textTransformation" textTransformationDecoder
        |> JDP.required "comparisonOperator" comparisonOperatorDecoder
        |> JDP.required "size" JD.int




{-| <p>A complex type that contains <code>SizeConstraint</code> objects, which specify the parts of web requests that you want AWS WAF to inspect the size of. If a <code>SizeConstraintSet</code> contains more than one <code>SizeConstraint</code> object, a request only needs to match one constraint to be considered a match.</p>
-}
type alias SizeConstraintSet =
    { sizeConstraintSetId : String
    , name : Maybe String
    , sizeConstraints : (List SizeConstraint)
    }



sizeConstraintSetDecoder : JD.Decoder SizeConstraintSet
sizeConstraintSetDecoder =
    JDP.decode SizeConstraintSet
        |> JDP.required "sizeConstraintSetId" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.required "sizeConstraints" (JD.list sizeConstraintDecoder)




{-| <p>The <code>Id</code> and <code>Name</code> of a <code>SizeConstraintSet</code>.</p>
-}
type alias SizeConstraintSetSummary =
    { sizeConstraintSetId : String
    , name : String
    }



sizeConstraintSetSummaryDecoder : JD.Decoder SizeConstraintSetSummary
sizeConstraintSetSummaryDecoder =
    JDP.decode SizeConstraintSetSummary
        |> JDP.required "sizeConstraintSetId" JD.string
        |> JDP.required "name" JD.string




{-| <p>Specifies the part of a web request that you want to inspect the size of and indicates whether you want to add the specification to a <a>SizeConstraintSet</a> or delete it from a <code>SizeConstraintSet</code>.</p>
-}
type alias SizeConstraintSetUpdate =
    { action : ChangeAction
    , sizeConstraint : SizeConstraint
    }



sizeConstraintSetUpdateDecoder : JD.Decoder SizeConstraintSetUpdate
sizeConstraintSetUpdateDecoder =
    JDP.decode SizeConstraintSetUpdate
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "sizeConstraint" sizeConstraintDecoder




{-| <p>A complex type that contains <code>SqlInjectionMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header. If a <code>SqlInjectionMatchSet</code> contains more than one <code>SqlInjectionMatchTuple</code> object, a request needs to include snippets of SQL code in only one of the specified parts of the request to be considered a match.</p>
-}
type alias SqlInjectionMatchSet =
    { sqlInjectionMatchSetId : String
    , name : Maybe String
    , sqlInjectionMatchTuples : (List SqlInjectionMatchTuple)
    }



sqlInjectionMatchSetDecoder : JD.Decoder SqlInjectionMatchSet
sqlInjectionMatchSetDecoder =
    JDP.decode SqlInjectionMatchSet
        |> JDP.required "sqlInjectionMatchSetId" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.required "sqlInjectionMatchTuples" (JD.list sqlInjectionMatchTupleDecoder)




{-| <p>The <code>Id</code> and <code>Name</code> of a <code>SqlInjectionMatchSet</code>.</p>
-}
type alias SqlInjectionMatchSetSummary =
    { sqlInjectionMatchSetId : String
    , name : String
    }



sqlInjectionMatchSetSummaryDecoder : JD.Decoder SqlInjectionMatchSetSummary
sqlInjectionMatchSetSummaryDecoder =
    JDP.decode SqlInjectionMatchSetSummary
        |> JDP.required "sqlInjectionMatchSetId" JD.string
        |> JDP.required "name" JD.string




{-| <p>Specifies the part of a web request that you want to inspect for snippets of malicious SQL code and indicates whether you want to add the specification to a <a>SqlInjectionMatchSet</a> or delete it from a <code>SqlInjectionMatchSet</code>.</p>
-}
type alias SqlInjectionMatchSetUpdate =
    { action : ChangeAction
    , sqlInjectionMatchTuple : SqlInjectionMatchTuple
    }



sqlInjectionMatchSetUpdateDecoder : JD.Decoder SqlInjectionMatchSetUpdate
sqlInjectionMatchSetUpdateDecoder =
    JDP.decode SqlInjectionMatchSetUpdate
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "sqlInjectionMatchTuple" sqlInjectionMatchTupleDecoder




{-| <p>Specifies the part of a web request that you want AWS WAF to inspect for snippets of malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.</p>
-}
type alias SqlInjectionMatchTuple =
    { fieldToMatch : FieldToMatch
    , textTransformation : TextTransformation
    }



sqlInjectionMatchTupleDecoder : JD.Decoder SqlInjectionMatchTuple
sqlInjectionMatchTupleDecoder =
    JDP.decode SqlInjectionMatchTuple
        |> JDP.required "fieldToMatch" fieldToMatchDecoder
        |> JDP.required "textTransformation" textTransformationDecoder




{-| One of

* `TextTransformation_NONE`
* `TextTransformation_COMPRESS_WHITE_SPACE`
* `TextTransformation_HTML_ENTITY_DECODE`
* `TextTransformation_LOWERCASE`
* `TextTransformation_CMD_LINE`
* `TextTransformation_URL_DECODE`

-}
type TextTransformation
    = TextTransformation_NONE
    | TextTransformation_COMPRESS_WHITE_SPACE
    | TextTransformation_HTML_ENTITY_DECODE
    | TextTransformation_LOWERCASE
    | TextTransformation_CMD_LINE
    | TextTransformation_URL_DECODE



textTransformationDecoder : JD.Decoder TextTransformation
textTransformationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed TextTransformation_NONE

                    "COMPRESS_WHITE_SPACE" ->
                        JD.succeed TextTransformation_COMPRESS_WHITE_SPACE

                    "HTML_ENTITY_DECODE" ->
                        JD.succeed TextTransformation_HTML_ENTITY_DECODE

                    "LOWERCASE" ->
                        JD.succeed TextTransformation_LOWERCASE

                    "CMD_LINE" ->
                        JD.succeed TextTransformation_CMD_LINE

                    "URL_DECODE" ->
                        JD.succeed TextTransformation_URL_DECODE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>In a <a>GetSampledRequests</a> request, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which you want AWS WAF to return a sample of web requests.</p> <p>In a <a>GetSampledRequests</a> response, the <code>StartTime</code> and <code>EndTime</code> objects specify the time range for which AWS WAF actually returned a sample of web requests. AWS WAF gets the specified number of requests from among the first 5,000 requests that your AWS resource receives during the specified time period. If your resource receives more than 5,000 requests during that period, AWS WAF stops sampling after the 5,000th request. In that case, <code>EndTime</code> is the time that AWS WAF received the 5,000th request. </p>
-}
type alias TimeWindow =
    { startTime : Date
    , endTime : Date
    }



timeWindowDecoder : JD.Decoder TimeWindow
timeWindowDecoder =
    JDP.decode TimeWindow
        |> JDP.required "startTime" JDX.date
        |> JDP.required "endTime" JDX.date




{-| Type of HTTP response from updateByteMatchSet
-}
type alias UpdateByteMatchSetResponse =
    { changeToken : Maybe String
    }



updateByteMatchSetResponseDecoder : JD.Decoder UpdateByteMatchSetResponse
updateByteMatchSetResponseDecoder =
    JDP.decode UpdateByteMatchSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateIPSet
-}
type alias UpdateIPSetResponse =
    { changeToken : Maybe String
    }



updateIPSetResponseDecoder : JD.Decoder UpdateIPSetResponse
updateIPSetResponseDecoder =
    JDP.decode UpdateIPSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateRule
-}
type alias UpdateRuleResponse =
    { changeToken : Maybe String
    }



updateRuleResponseDecoder : JD.Decoder UpdateRuleResponse
updateRuleResponseDecoder =
    JDP.decode UpdateRuleResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateSizeConstraintSet
-}
type alias UpdateSizeConstraintSetResponse =
    { changeToken : Maybe String
    }



updateSizeConstraintSetResponseDecoder : JD.Decoder UpdateSizeConstraintSetResponse
updateSizeConstraintSetResponseDecoder =
    JDP.decode UpdateSizeConstraintSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateSqlInjectionMatchSet
-}
type alias UpdateSqlInjectionMatchSetResponse =
    { changeToken : Maybe String
    }



updateSqlInjectionMatchSetResponseDecoder : JD.Decoder UpdateSqlInjectionMatchSetResponse
updateSqlInjectionMatchSetResponseDecoder =
    JDP.decode UpdateSqlInjectionMatchSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateWebACL
-}
type alias UpdateWebACLResponse =
    { changeToken : Maybe String
    }



updateWebACLResponseDecoder : JD.Decoder UpdateWebACLResponse
updateWebACLResponseDecoder =
    JDP.decode UpdateWebACLResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateXssMatchSet
-}
type alias UpdateXssMatchSetResponse =
    { changeToken : Maybe String
    }



updateXssMatchSetResponseDecoder : JD.Decoder UpdateXssMatchSetResponse
updateXssMatchSetResponseDecoder =
    JDP.decode UpdateXssMatchSetResponse
        |> JDP.optional "changeToken" (JD.nullable JD.string) Nothing




{-| <p>The name specified is invalid.</p>
-}
type alias WAFDisallowedNameException =
    { message : Maybe String
    }



wAFDisallowedNameExceptionDecoder : JD.Decoder WAFDisallowedNameException
wAFDisallowedNameExceptionDecoder =
    JDP.decode WAFDisallowedNameException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because of a system problem, even though the request was valid. Retry your request.</p>
-}
type alias WAFInternalErrorException =
    { message : Maybe String
    }



wAFInternalErrorExceptionDecoder : JD.Decoder WAFInternalErrorException
wAFInternalErrorExceptionDecoder =
    JDP.decode WAFInternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because you tried to create, update, or delete an object by using an invalid account identifier.</p>
-}
type alias WAFInvalidAccountException =
    { 
    }



wAFInvalidAccountExceptionDecoder : JD.Decoder WAFInvalidAccountException
wAFInvalidAccountExceptionDecoder =
    JDP.decode WAFInvalidAccountException



{-| <p>The operation failed because there was nothing to do. For example:</p> <ul> <li> <p>You tried to remove a <code>Rule</code> from a <code>WebACL</code>, but the <code>Rule</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to remove an IP address from an <code>IPSet</code>, but the IP address isn't in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to remove a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> isn't in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add a <code>Rule</code> to a <code>WebACL</code>, but the <code>Rule</code> already exists in the specified <code>WebACL</code>.</p> </li> <li> <p>You tried to add an IP address to an <code>IPSet</code>, but the IP address already exists in the specified <code>IPSet</code>.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to a <code>ByteMatchSet</code>, but the <code>ByteMatchTuple</code> already exists in the specified <code>WebACL</code>.</p> </li> </ul>
-}
type alias WAFInvalidOperationException =
    { message : Maybe String
    }



wAFInvalidOperationExceptionDecoder : JD.Decoder WAFInvalidOperationException
wAFInvalidOperationExceptionDecoder =
    JDP.decode WAFInvalidOperationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because AWS WAF didn't recognize a parameter in the request. For example:</p> <ul> <li> <p>You specified an invalid parameter name.</p> </li> <li> <p>You specified an invalid value.</p> </li> <li> <p>You tried to update an object (<code>ByteMatchSet</code>, <code>IPSet</code>, <code>Rule</code>, or <code>WebACL</code>) using an action other than <code>INSERT</code> or <code>DELETE</code>.</p> </li> <li> <p>You tried to create a <code>WebACL</code> with a <code>DefaultAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to update a <code>WebACL</code> with a <code>WafAction</code> <code>Type</code> other than <code>ALLOW</code>, <code>BLOCK</code>, or <code>COUNT</code>.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>FieldToMatch</code> <code>Type</code> other than HEADER, QUERY_STRING, or URI.</p> </li> <li> <p>You tried to update a <code>ByteMatchSet</code> with a <code>Field</code> of <code>HEADER</code> but no value for <code>Data</code>.</p> </li> <li> <p>Your request references an ARN that is malformed, or corresponds to a resource with which a web ACL cannot be associated.</p> </li> </ul>
-}
type alias WAFInvalidParameterException =
    { field : Maybe ParameterExceptionField
    , parameter : Maybe String
    , reason : Maybe ParameterExceptionReason
    }



wAFInvalidParameterExceptionDecoder : JD.Decoder WAFInvalidParameterException
wAFInvalidParameterExceptionDecoder =
    JDP.decode WAFInvalidParameterException
        |> JDP.optional "field" (JD.nullable parameterExceptionFieldDecoder) Nothing
        |> JDP.optional "parameter" (JD.nullable JD.string) Nothing
        |> JDP.optional "reason" (JD.nullable parameterExceptionReasonDecoder) Nothing




{-| <p>The operation exceeds a resource limit, for example, the maximum number of <code>WebACL</code> objects that you can create for an AWS account. For more information, see <a href="http://docs.aws.amazon.com/waf/latest/developerguide/limits.html">Limits</a> in the <i>AWS WAF Developer Guide</i>.</p>
-}
type alias WAFLimitsExceededException =
    { message : Maybe String
    }



wAFLimitsExceededExceptionDecoder : JD.Decoder WAFLimitsExceededException
wAFLimitsExceededExceptionDecoder =
    JDP.decode WAFLimitsExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because you tried to delete an object that isn't empty. For example:</p> <ul> <li> <p>You tried to delete a <code>WebACL</code> that still contains one or more <code>Rule</code> objects.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that still contains one or more <code>ByteMatchSet</code> objects or other predicates.</p> </li> <li> <p>You tried to delete a <code>ByteMatchSet</code> that contains one or more <code>ByteMatchTuple</code> objects.</p> </li> <li> <p>You tried to delete an <code>IPSet</code> that references one or more IP addresses.</p> </li> </ul>
-}
type alias WAFNonEmptyEntityException =
    { message : Maybe String
    }



wAFNonEmptyEntityExceptionDecoder : JD.Decoder WAFNonEmptyEntityException
wAFNonEmptyEntityExceptionDecoder =
    JDP.decode WAFNonEmptyEntityException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because you tried to add an object to or delete an object from another object that doesn't exist. For example:</p> <ul> <li> <p>You tried to add a <code>Rule</code> to or delete a <code>Rule</code> from a <code>WebACL</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchSet</code> to or delete a <code>ByteMatchSet</code> from a <code>Rule</code> that doesn't exist.</p> </li> <li> <p>You tried to add an IP address to or delete an IP address from an <code>IPSet</code> that doesn't exist.</p> </li> <li> <p>You tried to add a <code>ByteMatchTuple</code> to or delete a <code>ByteMatchTuple</code> from a <code>ByteMatchSet</code> that doesn't exist.</p> </li> </ul>
-}
type alias WAFNonexistentContainerException =
    { message : Maybe String
    }



wAFNonexistentContainerExceptionDecoder : JD.Decoder WAFNonexistentContainerException
wAFNonexistentContainerExceptionDecoder =
    JDP.decode WAFNonexistentContainerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because the referenced object doesn't exist.</p>
-}
type alias WAFNonexistentItemException =
    { message : Maybe String
    }



wAFNonexistentItemExceptionDecoder : JD.Decoder WAFNonexistentItemException
wAFNonexistentItemExceptionDecoder =
    JDP.decode WAFNonexistentItemException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because you tried to delete an object that is still in use. For example:</p> <ul> <li> <p>You tried to delete a <code>ByteMatchSet</code> that is still referenced by a <code>Rule</code>.</p> </li> <li> <p>You tried to delete a <code>Rule</code> that is still referenced by a <code>WebACL</code>.</p> </li> </ul>
-}
type alias WAFReferencedItemException =
    { message : Maybe String
    }



wAFReferencedItemExceptionDecoder : JD.Decoder WAFReferencedItemException
wAFReferencedItemExceptionDecoder =
    JDP.decode WAFReferencedItemException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because you tried to create, update, or delete an object by using a change token that has already been used.</p>
-}
type alias WAFStaleDataException =
    { message : Maybe String
    }



wAFStaleDataExceptionDecoder : JD.Decoder WAFStaleDataException
wAFStaleDataExceptionDecoder =
    JDP.decode WAFStaleDataException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation failed because the entity referenced is temporarily unavailable. Retry your request.</p>
-}
type alias WAFUnavailableEntityException =
    { message : Maybe String
    }



wAFUnavailableEntityExceptionDecoder : JD.Decoder WAFUnavailableEntityException
wAFUnavailableEntityExceptionDecoder =
    JDP.decode WAFUnavailableEntityException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>For the action that is associated with a rule in a <code>WebACL</code>, specifies the action that you want AWS WAF to perform when a web request matches all of the conditions in a rule. For the default action in a <code>WebACL</code>, specifies the action that you want AWS WAF to take when a web request doesn't match all of the conditions in any of the rules in a <code>WebACL</code>. </p>
-}
type alias WafAction =
    { type_ : WafActionType
    }



wafActionDecoder : JD.Decoder WafAction
wafActionDecoder =
    JDP.decode WafAction
        |> JDP.required "type_" wafActionTypeDecoder




{-| One of

* `WafActionType_BLOCK`
* `WafActionType_ALLOW`
* `WafActionType_COUNT`

-}
type WafActionType
    = WafActionType_BLOCK
    | WafActionType_ALLOW
    | WafActionType_COUNT



wafActionTypeDecoder : JD.Decoder WafActionType
wafActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BLOCK" ->
                        JD.succeed WafActionType_BLOCK

                    "ALLOW" ->
                        JD.succeed WafActionType_ALLOW

                    "COUNT" ->
                        JD.succeed WafActionType_COUNT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains the <code>Rules</code> that identify the requests that you want to allow, block, or count. In a <code>WebACL</code>, you also specify a default action (<code>ALLOW</code> or <code>BLOCK</code>), and the action for each <code>Rule</code> that you add to a <code>WebACL</code>, for example, block requests from specified IP addresses or block requests from specified referrers. You also associate the <code>WebACL</code> with a CloudFront distribution to identify the requests that you want AWS WAF to filter. If you add more than one <code>Rule</code> to a <code>WebACL</code>, a request needs to match only one of the specifications to be allowed, blocked, or counted. For more information, see <a>UpdateWebACL</a>.</p>
-}
type alias WebACL =
    { webACLId : String
    , name : Maybe String
    , metricName : Maybe String
    , defaultAction : WafAction
    , rules : (List ActivatedRule)
    }



webACLDecoder : JD.Decoder WebACL
webACLDecoder =
    JDP.decode WebACL
        |> JDP.required "webACLId" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "metricName" (JD.nullable JD.string) Nothing
        |> JDP.required "defaultAction" wafActionDecoder
        |> JDP.required "rules" (JD.list activatedRuleDecoder)




{-| <p>Contains the identifier and the name or description of the <a>WebACL</a>.</p>
-}
type alias WebACLSummary =
    { webACLId : String
    , name : String
    }



webACLSummaryDecoder : JD.Decoder WebACLSummary
webACLSummaryDecoder =
    JDP.decode WebACLSummary
        |> JDP.required "webACLId" JD.string
        |> JDP.required "name" JD.string




{-| <p>Specifies whether to insert a <code>Rule</code> into or delete a <code>Rule</code> from a <code>WebACL</code>.</p>
-}
type alias WebACLUpdate =
    { action : ChangeAction
    , activatedRule : ActivatedRule
    }



webACLUpdateDecoder : JD.Decoder WebACLUpdate
webACLUpdateDecoder =
    JDP.decode WebACLUpdate
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "activatedRule" activatedRuleDecoder




{-| <p>A complex type that contains <code>XssMatchTuple</code> objects, which specify the parts of web requests that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header. If a <code>XssMatchSet</code> contains more than one <code>XssMatchTuple</code> object, a request needs to include cross-site scripting attacks in only one of the specified parts of the request to be considered a match.</p>
-}
type alias XssMatchSet =
    { xssMatchSetId : String
    , name : Maybe String
    , xssMatchTuples : (List XssMatchTuple)
    }



xssMatchSetDecoder : JD.Decoder XssMatchSet
xssMatchSetDecoder =
    JDP.decode XssMatchSet
        |> JDP.required "xssMatchSetId" JD.string
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.required "xssMatchTuples" (JD.list xssMatchTupleDecoder)




{-| <p>The <code>Id</code> and <code>Name</code> of an <code>XssMatchSet</code>.</p>
-}
type alias XssMatchSetSummary =
    { xssMatchSetId : String
    , name : String
    }



xssMatchSetSummaryDecoder : JD.Decoder XssMatchSetSummary
xssMatchSetSummaryDecoder =
    JDP.decode XssMatchSetSummary
        |> JDP.required "xssMatchSetId" JD.string
        |> JDP.required "name" JD.string




{-| <p>Specifies the part of a web request that you want to inspect for cross-site scripting attacks and indicates whether you want to add the specification to an <a>XssMatchSet</a> or delete it from an <code>XssMatchSet</code>.</p>
-}
type alias XssMatchSetUpdate =
    { action : ChangeAction
    , xssMatchTuple : XssMatchTuple
    }



xssMatchSetUpdateDecoder : JD.Decoder XssMatchSetUpdate
xssMatchSetUpdateDecoder =
    JDP.decode XssMatchSetUpdate
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "xssMatchTuple" xssMatchTupleDecoder




{-| <p>Specifies the part of a web request that you want AWS WAF to inspect for cross-site scripting attacks and, if you want AWS WAF to inspect a header, the name of the header.</p>
-}
type alias XssMatchTuple =
    { fieldToMatch : FieldToMatch
    , textTransformation : TextTransformation
    }



xssMatchTupleDecoder : JD.Decoder XssMatchTuple
xssMatchTupleDecoder =
    JDP.decode XssMatchTuple
        |> JDP.required "fieldToMatch" fieldToMatchDecoder
        |> JDP.required "textTransformation" textTransformationDecoder




