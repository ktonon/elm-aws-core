module AWS.Services.ConfigService
    exposing
        ( config
        , deleteConfigRule
        , deleteConfigurationRecorder
        , deleteDeliveryChannel
        , deleteEvaluationResults
        , deliverConfigSnapshot
        , describeComplianceByConfigRule
        , DescribeComplianceByConfigRuleOptions
        , describeComplianceByResource
        , DescribeComplianceByResourceOptions
        , describeConfigRuleEvaluationStatus
        , DescribeConfigRuleEvaluationStatusOptions
        , describeConfigRules
        , DescribeConfigRulesOptions
        , describeConfigurationRecorderStatus
        , DescribeConfigurationRecorderStatusOptions
        , describeConfigurationRecorders
        , DescribeConfigurationRecordersOptions
        , describeDeliveryChannelStatus
        , DescribeDeliveryChannelStatusOptions
        , describeDeliveryChannels
        , DescribeDeliveryChannelsOptions
        , getComplianceDetailsByConfigRule
        , GetComplianceDetailsByConfigRuleOptions
        , getComplianceDetailsByResource
        , GetComplianceDetailsByResourceOptions
        , getComplianceSummaryByConfigRule
        , getComplianceSummaryByResourceType
        , GetComplianceSummaryByResourceTypeOptions
        , getResourceConfigHistory
        , GetResourceConfigHistoryOptions
        , listDiscoveredResources
        , ListDiscoveredResourcesOptions
        , putConfigRule
        , putConfigurationRecorder
        , putDeliveryChannel
        , putEvaluations
        , PutEvaluationsOptions
        , startConfigRulesEvaluation
        , StartConfigRulesEvaluationOptions
        , startConfigurationRecorder
        , stopConfigurationRecorder
        , ChronologicalOrder(..)
        , Compliance
        , ComplianceByConfigRule
        , ComplianceByResource
        , ComplianceContributorCount
        , ComplianceSummary
        , ComplianceSummaryByResourceType
        , ComplianceType(..)
        , ConfigExportDeliveryInfo
        , ConfigRule
        , ConfigRuleEvaluationStatus
        , ConfigRuleState(..)
        , ConfigSnapshotDeliveryProperties
        , ConfigStreamDeliveryInfo
        , ConfigurationItem
        , ConfigurationItemStatus(..)
        , ConfigurationRecorder
        , ConfigurationRecorderStatus
        , DeleteEvaluationResultsResponse
        , DeliverConfigSnapshotResponse
        , DeliveryChannel
        , DeliveryChannelStatus
        , DeliveryStatus(..)
        , DescribeComplianceByConfigRuleResponse
        , DescribeComplianceByResourceResponse
        , DescribeConfigRuleEvaluationStatusResponse
        , DescribeConfigRulesResponse
        , DescribeConfigurationRecorderStatusResponse
        , DescribeConfigurationRecordersResponse
        , DescribeDeliveryChannelStatusResponse
        , DescribeDeliveryChannelsResponse
        , Evaluation
        , EvaluationResult
        , EvaluationResultIdentifier
        , EvaluationResultQualifier
        , EventSource(..)
        , GetComplianceDetailsByConfigRuleResponse
        , GetComplianceDetailsByResourceResponse
        , GetComplianceSummaryByConfigRuleResponse
        , GetComplianceSummaryByResourceTypeResponse
        , GetResourceConfigHistoryResponse
        , InsufficientDeliveryPolicyException
        , InsufficientPermissionsException
        , InvalidConfigurationRecorderNameException
        , InvalidDeliveryChannelNameException
        , InvalidLimitException
        , InvalidNextTokenException
        , InvalidParameterValueException
        , InvalidRecordingGroupException
        , InvalidResultTokenException
        , InvalidRoleException
        , InvalidS3KeyPrefixException
        , InvalidSNSTopicARNException
        , InvalidTimeRangeException
        , LastDeliveryChannelDeleteFailedException
        , LimitExceededException
        , ListDiscoveredResourcesResponse
        , MaxNumberOfConfigRulesExceededException
        , MaxNumberOfConfigurationRecordersExceededException
        , MaxNumberOfDeliveryChannelsExceededException
        , MaximumExecutionFrequency(..)
        , MessageType(..)
        , NoAvailableConfigurationRecorderException
        , NoAvailableDeliveryChannelException
        , NoRunningConfigurationRecorderException
        , NoSuchBucketException
        , NoSuchConfigRuleException
        , NoSuchConfigurationRecorderException
        , NoSuchDeliveryChannelException
        , Owner(..)
        , PutEvaluationsResponse
        , RecorderStatus(..)
        , RecordingGroup
        , Relationship
        , ResourceIdentifier
        , ResourceInUseException
        , ResourceNotDiscoveredException
        , ResourceType(..)
        , Scope
        , Source
        , SourceDetail
        , StartConfigRulesEvaluationResponse
        , ValidationException
        )

{-| <fullname>AWS Config</fullname> <p>AWS Config provides a way to keep track of the configurations of all the AWS resources associated with your AWS account. You can use AWS Config to get the current and historical configurations of each AWS resource and also to get information about the relationship between the resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an Elastic network Interface (ENI), or a security group. For a complete list of resources currently supported by AWS Config, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported AWS Resources</a>.</p> <p>You can access and manage AWS Config through the AWS Management Console, the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS SDKs for AWS Config</p> <p>This reference guide contains documentation for the AWS Config API and the AWS CLI commands that you can use to manage AWS Config.</p> <p>The AWS Config API uses the Signature Version 4 protocol for signing requests. For more information about how to sign a request with this protocol, see <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a>.</p> <p>For detailed information about AWS Config features and their associated actions or commands, as well as how to work with AWS Management Console, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html">What Is AWS Config?</a> in the <i>AWS Config Developer Guide</i>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [deleteConfigRule](#deleteConfigRule)
* [deleteConfigurationRecorder](#deleteConfigurationRecorder)
* [deleteDeliveryChannel](#deleteDeliveryChannel)
* [deleteEvaluationResults](#deleteEvaluationResults)
* [deliverConfigSnapshot](#deliverConfigSnapshot)
* [describeComplianceByConfigRule](#describeComplianceByConfigRule)
* [DescribeComplianceByConfigRuleOptions](#DescribeComplianceByConfigRuleOptions)
* [describeComplianceByResource](#describeComplianceByResource)
* [DescribeComplianceByResourceOptions](#DescribeComplianceByResourceOptions)
* [describeConfigRuleEvaluationStatus](#describeConfigRuleEvaluationStatus)
* [DescribeConfigRuleEvaluationStatusOptions](#DescribeConfigRuleEvaluationStatusOptions)
* [describeConfigRules](#describeConfigRules)
* [DescribeConfigRulesOptions](#DescribeConfigRulesOptions)
* [describeConfigurationRecorderStatus](#describeConfigurationRecorderStatus)
* [DescribeConfigurationRecorderStatusOptions](#DescribeConfigurationRecorderStatusOptions)
* [describeConfigurationRecorders](#describeConfigurationRecorders)
* [DescribeConfigurationRecordersOptions](#DescribeConfigurationRecordersOptions)
* [describeDeliveryChannelStatus](#describeDeliveryChannelStatus)
* [DescribeDeliveryChannelStatusOptions](#DescribeDeliveryChannelStatusOptions)
* [describeDeliveryChannels](#describeDeliveryChannels)
* [DescribeDeliveryChannelsOptions](#DescribeDeliveryChannelsOptions)
* [getComplianceDetailsByConfigRule](#getComplianceDetailsByConfigRule)
* [GetComplianceDetailsByConfigRuleOptions](#GetComplianceDetailsByConfigRuleOptions)
* [getComplianceDetailsByResource](#getComplianceDetailsByResource)
* [GetComplianceDetailsByResourceOptions](#GetComplianceDetailsByResourceOptions)
* [getComplianceSummaryByConfigRule](#getComplianceSummaryByConfigRule)
* [getComplianceSummaryByResourceType](#getComplianceSummaryByResourceType)
* [GetComplianceSummaryByResourceTypeOptions](#GetComplianceSummaryByResourceTypeOptions)
* [getResourceConfigHistory](#getResourceConfigHistory)
* [GetResourceConfigHistoryOptions](#GetResourceConfigHistoryOptions)
* [listDiscoveredResources](#listDiscoveredResources)
* [ListDiscoveredResourcesOptions](#ListDiscoveredResourcesOptions)
* [putConfigRule](#putConfigRule)
* [putConfigurationRecorder](#putConfigurationRecorder)
* [putDeliveryChannel](#putDeliveryChannel)
* [putEvaluations](#putEvaluations)
* [PutEvaluationsOptions](#PutEvaluationsOptions)
* [startConfigRulesEvaluation](#startConfigRulesEvaluation)
* [StartConfigRulesEvaluationOptions](#StartConfigRulesEvaluationOptions)
* [startConfigurationRecorder](#startConfigurationRecorder)
* [stopConfigurationRecorder](#stopConfigurationRecorder)


@docs deleteConfigRule,deleteConfigurationRecorder,deleteDeliveryChannel,deleteEvaluationResults,deliverConfigSnapshot,describeComplianceByConfigRule,DescribeComplianceByConfigRuleOptions,describeComplianceByResource,DescribeComplianceByResourceOptions,describeConfigRuleEvaluationStatus,DescribeConfigRuleEvaluationStatusOptions,describeConfigRules,DescribeConfigRulesOptions,describeConfigurationRecorderStatus,DescribeConfigurationRecorderStatusOptions,describeConfigurationRecorders,DescribeConfigurationRecordersOptions,describeDeliveryChannelStatus,DescribeDeliveryChannelStatusOptions,describeDeliveryChannels,DescribeDeliveryChannelsOptions,getComplianceDetailsByConfigRule,GetComplianceDetailsByConfigRuleOptions,getComplianceDetailsByResource,GetComplianceDetailsByResourceOptions,getComplianceSummaryByConfigRule,getComplianceSummaryByResourceType,GetComplianceSummaryByResourceTypeOptions,getResourceConfigHistory,GetResourceConfigHistoryOptions,listDiscoveredResources,ListDiscoveredResourcesOptions,putConfigRule,putConfigurationRecorder,putDeliveryChannel,putEvaluations,PutEvaluationsOptions,startConfigRulesEvaluation,StartConfigRulesEvaluationOptions,startConfigurationRecorder,stopConfigurationRecorder

## Responses

* [DeleteEvaluationResultsResponse](#DeleteEvaluationResultsResponse)
* [DeliverConfigSnapshotResponse](#DeliverConfigSnapshotResponse)
* [DescribeComplianceByConfigRuleResponse](#DescribeComplianceByConfigRuleResponse)
* [DescribeComplianceByResourceResponse](#DescribeComplianceByResourceResponse)
* [DescribeConfigRuleEvaluationStatusResponse](#DescribeConfigRuleEvaluationStatusResponse)
* [DescribeConfigRulesResponse](#DescribeConfigRulesResponse)
* [DescribeConfigurationRecorderStatusResponse](#DescribeConfigurationRecorderStatusResponse)
* [DescribeConfigurationRecordersResponse](#DescribeConfigurationRecordersResponse)
* [DescribeDeliveryChannelStatusResponse](#DescribeDeliveryChannelStatusResponse)
* [DescribeDeliveryChannelsResponse](#DescribeDeliveryChannelsResponse)
* [GetComplianceDetailsByConfigRuleResponse](#GetComplianceDetailsByConfigRuleResponse)
* [GetComplianceDetailsByResourceResponse](#GetComplianceDetailsByResourceResponse)
* [GetComplianceSummaryByConfigRuleResponse](#GetComplianceSummaryByConfigRuleResponse)
* [GetComplianceSummaryByResourceTypeResponse](#GetComplianceSummaryByResourceTypeResponse)
* [GetResourceConfigHistoryResponse](#GetResourceConfigHistoryResponse)
* [ListDiscoveredResourcesResponse](#ListDiscoveredResourcesResponse)
* [PutEvaluationsResponse](#PutEvaluationsResponse)
* [StartConfigRulesEvaluationResponse](#StartConfigRulesEvaluationResponse)


@docs DeleteEvaluationResultsResponse,DeliverConfigSnapshotResponse,DescribeComplianceByConfigRuleResponse,DescribeComplianceByResourceResponse,DescribeConfigRuleEvaluationStatusResponse,DescribeConfigRulesResponse,DescribeConfigurationRecorderStatusResponse,DescribeConfigurationRecordersResponse,DescribeDeliveryChannelStatusResponse,DescribeDeliveryChannelsResponse,GetComplianceDetailsByConfigRuleResponse,GetComplianceDetailsByResourceResponse,GetComplianceSummaryByConfigRuleResponse,GetComplianceSummaryByResourceTypeResponse,GetResourceConfigHistoryResponse,ListDiscoveredResourcesResponse,PutEvaluationsResponse,StartConfigRulesEvaluationResponse

## Records

* [Compliance](#Compliance)
* [ComplianceByConfigRule](#ComplianceByConfigRule)
* [ComplianceByResource](#ComplianceByResource)
* [ComplianceContributorCount](#ComplianceContributorCount)
* [ComplianceSummary](#ComplianceSummary)
* [ComplianceSummaryByResourceType](#ComplianceSummaryByResourceType)
* [ConfigExportDeliveryInfo](#ConfigExportDeliveryInfo)
* [ConfigRule](#ConfigRule)
* [ConfigRuleEvaluationStatus](#ConfigRuleEvaluationStatus)
* [ConfigSnapshotDeliveryProperties](#ConfigSnapshotDeliveryProperties)
* [ConfigStreamDeliveryInfo](#ConfigStreamDeliveryInfo)
* [ConfigurationItem](#ConfigurationItem)
* [ConfigurationRecorder](#ConfigurationRecorder)
* [ConfigurationRecorderStatus](#ConfigurationRecorderStatus)
* [DeliveryChannel](#DeliveryChannel)
* [DeliveryChannelStatus](#DeliveryChannelStatus)
* [Evaluation](#Evaluation)
* [EvaluationResult](#EvaluationResult)
* [EvaluationResultIdentifier](#EvaluationResultIdentifier)
* [EvaluationResultQualifier](#EvaluationResultQualifier)
* [RecordingGroup](#RecordingGroup)
* [Relationship](#Relationship)
* [ResourceIdentifier](#ResourceIdentifier)
* [Scope](#Scope)
* [Source](#Source)
* [SourceDetail](#SourceDetail)


@docs Compliance,ComplianceByConfigRule,ComplianceByResource,ComplianceContributorCount,ComplianceSummary,ComplianceSummaryByResourceType,ConfigExportDeliveryInfo,ConfigRule,ConfigRuleEvaluationStatus,ConfigSnapshotDeliveryProperties,ConfigStreamDeliveryInfo,ConfigurationItem,ConfigurationRecorder,ConfigurationRecorderStatus,DeliveryChannel,DeliveryChannelStatus,Evaluation,EvaluationResult,EvaluationResultIdentifier,EvaluationResultQualifier,RecordingGroup,Relationship,ResourceIdentifier,Scope,Source,SourceDetail

## Unions

* [ChronologicalOrder](#ChronologicalOrder)
* [ComplianceType](#ComplianceType)
* [ConfigRuleState](#ConfigRuleState)
* [ConfigurationItemStatus](#ConfigurationItemStatus)
* [DeliveryStatus](#DeliveryStatus)
* [EventSource](#EventSource)
* [MaximumExecutionFrequency](#MaximumExecutionFrequency)
* [MessageType](#MessageType)
* [Owner](#Owner)
* [RecorderStatus](#RecorderStatus)
* [ResourceType](#ResourceType)


@docs ChronologicalOrder,ComplianceType,ConfigRuleState,ConfigurationItemStatus,DeliveryStatus,EventSource,MaximumExecutionFrequency,MessageType,Owner,RecorderStatus,ResourceType

## Exceptions

* [InsufficientDeliveryPolicyException](#InsufficientDeliveryPolicyException)
* [InsufficientPermissionsException](#InsufficientPermissionsException)
* [InvalidConfigurationRecorderNameException](#InvalidConfigurationRecorderNameException)
* [InvalidDeliveryChannelNameException](#InvalidDeliveryChannelNameException)
* [InvalidLimitException](#InvalidLimitException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidParameterValueException](#InvalidParameterValueException)
* [InvalidRecordingGroupException](#InvalidRecordingGroupException)
* [InvalidResultTokenException](#InvalidResultTokenException)
* [InvalidRoleException](#InvalidRoleException)
* [InvalidS3KeyPrefixException](#InvalidS3KeyPrefixException)
* [InvalidSNSTopicARNException](#InvalidSNSTopicARNException)
* [InvalidTimeRangeException](#InvalidTimeRangeException)
* [LastDeliveryChannelDeleteFailedException](#LastDeliveryChannelDeleteFailedException)
* [LimitExceededException](#LimitExceededException)
* [MaxNumberOfConfigRulesExceededException](#MaxNumberOfConfigRulesExceededException)
* [MaxNumberOfConfigurationRecordersExceededException](#MaxNumberOfConfigurationRecordersExceededException)
* [MaxNumberOfDeliveryChannelsExceededException](#MaxNumberOfDeliveryChannelsExceededException)
* [NoAvailableConfigurationRecorderException](#NoAvailableConfigurationRecorderException)
* [NoAvailableDeliveryChannelException](#NoAvailableDeliveryChannelException)
* [NoRunningConfigurationRecorderException](#NoRunningConfigurationRecorderException)
* [NoSuchBucketException](#NoSuchBucketException)
* [NoSuchConfigRuleException](#NoSuchConfigRuleException)
* [NoSuchConfigurationRecorderException](#NoSuchConfigurationRecorderException)
* [NoSuchDeliveryChannelException](#NoSuchDeliveryChannelException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotDiscoveredException](#ResourceNotDiscoveredException)
* [ValidationException](#ValidationException)


@docs InsufficientDeliveryPolicyException,InsufficientPermissionsException,InvalidConfigurationRecorderNameException,InvalidDeliveryChannelNameException,InvalidLimitException,InvalidNextTokenException,InvalidParameterValueException,InvalidRecordingGroupException,InvalidResultTokenException,InvalidRoleException,InvalidS3KeyPrefixException,InvalidSNSTopicARNException,InvalidTimeRangeException,LastDeliveryChannelDeleteFailedException,LimitExceededException,MaxNumberOfConfigRulesExceededException,MaxNumberOfConfigurationRecordersExceededException,MaxNumberOfDeliveryChannelsExceededException,NoAvailableConfigurationRecorderException,NoAvailableDeliveryChannelException,NoRunningConfigurationRecorderException,NoSuchBucketException,NoSuchConfigRuleException,NoSuchConfigurationRecorderException,NoSuchDeliveryChannelException,ResourceInUseException,ResourceNotDiscoveredException,ValidationException

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
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "config"
        "2014-11-12"
        "1.1"
        "AWSCONFIG_20141112."
        "config.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Deletes the specified AWS Config rule and all of its evaluation results.</p> <p>AWS Config sets the state of a rule to <code>DELETING</code> until the deletion is complete. You cannot update a rule while it is in this state. If you make a <code>PutConfigRule</code> or <code>DeleteConfigRule</code> request for the rule, you will receive a <code>ResourceInUseException</code>.</p> <p>You can check the state of a rule by using the <code>DescribeConfigRules</code> request.</p>

__Required Parameters__

* `configRuleName` __:__ `String`


-}
deleteConfigRule :
    String
    -> AWS.Request ()
deleteConfigRule configRuleName =
    AWS.Http.unsignedRequest
        "DeleteConfigRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the configuration recorder.</p> <p>After the configuration recorder is deleted, AWS Config will not record resource configuration changes until you create a new configuration recorder.</p> <p>This action does not delete the configuration information that was previously recorded. You will be able to access the previously recorded information by using the <code>GetResourceConfigHistory</code> action, but you will not be able to access this information in the AWS Config console until you create a new configuration recorder.</p>

__Required Parameters__

* `configurationRecorderName` __:__ `String`


-}
deleteConfigurationRecorder :
    String
    -> AWS.Request ()
deleteConfigurationRecorder configurationRecorderName =
    AWS.Http.unsignedRequest
        "DeleteConfigurationRecorder"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the delivery channel.</p> <p>Before you can delete the delivery channel, you must stop the configuration recorder by using the <a>StopConfigurationRecorder</a> action.</p>

__Required Parameters__

* `deliveryChannelName` __:__ `String`


-}
deleteDeliveryChannel :
    String
    -> AWS.Request ()
deleteDeliveryChannel deliveryChannelName =
    AWS.Http.unsignedRequest
        "DeleteDeliveryChannel"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the evaluation results for the specified Config rule. You can specify one Config rule per request. After you delete the evaluation results, you can call the <a>StartConfigRulesEvaluation</a> API to start evaluating your AWS resources against the rule.</p>

__Required Parameters__

* `configRuleName` __:__ `String`


-}
deleteEvaluationResults :
    String
    -> AWS.Request DeleteEvaluationResultsResponse
deleteEvaluationResults configRuleName =
    AWS.Http.unsignedRequest
        "DeleteEvaluationResults"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteEvaluationResultsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel. After the delivery has started, AWS Config sends following notifications using an Amazon SNS topic that you have specified.</p> <ul> <li> <p>Notification of starting the delivery.</p> </li> <li> <p>Notification of delivery completed, if the delivery was successfully completed.</p> </li> <li> <p>Notification of delivery failure, if the delivery failed to complete.</p> </li> </ul>

__Required Parameters__

* `deliveryChannelName` __:__ `String`


-}
deliverConfigSnapshot :
    String
    -> AWS.Request DeliverConfigSnapshotResponse
deliverConfigSnapshot deliveryChannelName =
    AWS.Http.unsignedRequest
        "DeliverConfigSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deliverConfigSnapshotResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Indicates whether the specified AWS Config rules are compliant. If a rule is noncompliant, this action returns the number of AWS resources that do not comply with the rule.</p> <p>A rule is compliant if all of the evaluated resources comply with it, and it is noncompliant if any of these resources do not comply.</p> <p>If AWS Config has no current evaluation results for the rule, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>

__Required Parameters__



-}
describeComplianceByConfigRule :
    (DescribeComplianceByConfigRuleOptions -> DescribeComplianceByConfigRuleOptions)
    -> AWS.Request DescribeComplianceByConfigRuleResponse
describeComplianceByConfigRule setOptions =
  let
    options = setOptions (DescribeComplianceByConfigRuleOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeComplianceByConfigRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeComplianceByConfigRuleResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeComplianceByConfigRule request
-}
type alias DescribeComplianceByConfigRuleOptions =
    { configRuleNames : Maybe (List String)
    , complianceTypes : Maybe (List ComplianceType)
    , nextToken : Maybe String
    }



{-| <p>Indicates whether the specified AWS resources are compliant. If a resource is noncompliant, this action returns the number of AWS Config rules that the resource does not comply with.</p> <p>A resource is compliant if it complies with all the AWS Config rules that evaluate it. It is noncompliant if it does not comply with one or more of these rules.</p> <p>If AWS Config has no current evaluation results for the resource, it returns <code>INSUFFICIENT_DATA</code>. This result might indicate one of the following conditions about the rules that evaluate the resource:</p> <ul> <li> <p>AWS Config has never invoked an evaluation for the rule. To check whether it has, use the <code>DescribeConfigRuleEvaluationStatus</code> action to get the <code>LastSuccessfulInvocationTime</code> and <code>LastFailedInvocationTime</code>.</p> </li> <li> <p>The rule's AWS Lambda function is failing to send evaluation results to AWS Config. Verify that the role that you assigned to your configuration recorder includes the <code>config:PutEvaluations</code> permission. If the rule is a custom rule, verify that the AWS Lambda execution role includes the <code>config:PutEvaluations</code> permission.</p> </li> <li> <p>The rule's AWS Lambda function has returned <code>NOT_APPLICABLE</code> for all evaluation results. This can occur if the resources were deleted or removed from the rule's scope.</p> </li> </ul>

__Required Parameters__



-}
describeComplianceByResource :
    (DescribeComplianceByResourceOptions -> DescribeComplianceByResourceOptions)
    -> AWS.Request DescribeComplianceByResourceResponse
describeComplianceByResource setOptions =
  let
    options = setOptions (DescribeComplianceByResourceOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeComplianceByResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeComplianceByResourceResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeComplianceByResource request
-}
type alias DescribeComplianceByResourceOptions =
    { resourceType : Maybe String
    , resourceId : Maybe String
    , complianceTypes : Maybe (List ComplianceType)
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns status information for each of your AWS managed Config rules. The status includes information such as the last time AWS Config invoked the rule, the last time AWS Config failed to invoke the rule, and the related error for the last failure.</p>

__Required Parameters__



-}
describeConfigRuleEvaluationStatus :
    (DescribeConfigRuleEvaluationStatusOptions -> DescribeConfigRuleEvaluationStatusOptions)
    -> AWS.Request DescribeConfigRuleEvaluationStatusResponse
describeConfigRuleEvaluationStatus setOptions =
  let
    options = setOptions (DescribeConfigRuleEvaluationStatusOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConfigRuleEvaluationStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConfigRuleEvaluationStatusResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConfigRuleEvaluationStatus request
-}
type alias DescribeConfigRuleEvaluationStatusOptions =
    { configRuleNames : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns details about your AWS Config rules.</p>

__Required Parameters__



-}
describeConfigRules :
    (DescribeConfigRulesOptions -> DescribeConfigRulesOptions)
    -> AWS.Request DescribeConfigRulesResponse
describeConfigRules setOptions =
  let
    options = setOptions (DescribeConfigRulesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConfigRules"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConfigRulesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConfigRules request
-}
type alias DescribeConfigRulesOptions =
    { configRuleNames : Maybe (List String)
    , nextToken : Maybe String
    }



{-| <p>Returns the current status of the specified configuration recorder. If a configuration recorder is not specified, this action returns the status of all configuration recorder associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>

__Required Parameters__



-}
describeConfigurationRecorderStatus :
    (DescribeConfigurationRecorderStatusOptions -> DescribeConfigurationRecorderStatusOptions)
    -> AWS.Request DescribeConfigurationRecorderStatusResponse
describeConfigurationRecorderStatus setOptions =
  let
    options = setOptions (DescribeConfigurationRecorderStatusOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConfigurationRecorderStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConfigurationRecorderStatusResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConfigurationRecorderStatus request
-}
type alias DescribeConfigurationRecorderStatusOptions =
    { configurationRecorderNames : Maybe (List String)
    }



{-| <p>Returns the details for the specified configuration recorders. If the configuration recorder is not specified, this action returns the details for all configuration recorders associated with the account.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> </note>

__Required Parameters__



-}
describeConfigurationRecorders :
    (DescribeConfigurationRecordersOptions -> DescribeConfigurationRecordersOptions)
    -> AWS.Request DescribeConfigurationRecordersResponse
describeConfigurationRecorders setOptions =
  let
    options = setOptions (DescribeConfigurationRecordersOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConfigurationRecorders"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConfigurationRecordersResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConfigurationRecorders request
-}
type alias DescribeConfigurationRecordersOptions =
    { configurationRecorderNames : Maybe (List String)
    }



{-| <p>Returns the current status of the specified delivery channel. If a delivery channel is not specified, this action returns the current status of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>

__Required Parameters__



-}
describeDeliveryChannelStatus :
    (DescribeDeliveryChannelStatusOptions -> DescribeDeliveryChannelStatusOptions)
    -> AWS.Request DescribeDeliveryChannelStatusResponse
describeDeliveryChannelStatus setOptions =
  let
    options = setOptions (DescribeDeliveryChannelStatusOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDeliveryChannelStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDeliveryChannelStatusResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDeliveryChannelStatus request
-}
type alias DescribeDeliveryChannelStatusOptions =
    { deliveryChannelNames : Maybe (List String)
    }



{-| <p>Returns details about the specified delivery channel. If a delivery channel is not specified, this action returns the details of all delivery channels associated with the account.</p> <note> <p>Currently, you can specify only one delivery channel per region in your account.</p> </note>

__Required Parameters__



-}
describeDeliveryChannels :
    (DescribeDeliveryChannelsOptions -> DescribeDeliveryChannelsOptions)
    -> AWS.Request DescribeDeliveryChannelsResponse
describeDeliveryChannels setOptions =
  let
    options = setOptions (DescribeDeliveryChannelsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDeliveryChannels"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDeliveryChannelsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDeliveryChannels request
-}
type alias DescribeDeliveryChannelsOptions =
    { deliveryChannelNames : Maybe (List String)
    }



{-| <p>Returns the evaluation results for the specified AWS Config rule. The results indicate which AWS resources were evaluated by the rule, when each resource was last evaluated, and whether each resource complies with the rule.</p>

__Required Parameters__

* `configRuleName` __:__ `String`


-}
getComplianceDetailsByConfigRule :
    String
    -> (GetComplianceDetailsByConfigRuleOptions -> GetComplianceDetailsByConfigRuleOptions)
    -> AWS.Request GetComplianceDetailsByConfigRuleResponse
getComplianceDetailsByConfigRule configRuleName setOptions =
  let
    options = setOptions (GetComplianceDetailsByConfigRuleOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetComplianceDetailsByConfigRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getComplianceDetailsByConfigRuleResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getComplianceDetailsByConfigRule request
-}
type alias GetComplianceDetailsByConfigRuleOptions =
    { complianceTypes : Maybe (List ComplianceType)
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns the evaluation results for the specified AWS resource. The results indicate which AWS Config rules were used to evaluate the resource, when each rule was last used, and whether the resource complies with each rule.</p>

__Required Parameters__

* `resourceType` __:__ `String`
* `resourceId` __:__ `String`


-}
getComplianceDetailsByResource :
    String
    -> String
    -> (GetComplianceDetailsByResourceOptions -> GetComplianceDetailsByResourceOptions)
    -> AWS.Request GetComplianceDetailsByResourceResponse
getComplianceDetailsByResource resourceType resourceId setOptions =
  let
    options = setOptions (GetComplianceDetailsByResourceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetComplianceDetailsByResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getComplianceDetailsByResourceResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getComplianceDetailsByResource request
-}
type alias GetComplianceDetailsByResourceOptions =
    { complianceTypes : Maybe (List ComplianceType)
    , nextToken : Maybe String
    }



{-| <p>Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each.</p>

__Required Parameters__



-}
getComplianceSummaryByConfigRule :
    AWS.Request GetComplianceSummaryByConfigRuleResponse
getComplianceSummaryByConfigRule =
    AWS.Http.unsignedRequest
        "GetComplianceSummaryByConfigRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getComplianceSummaryByConfigRuleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the number of resources that are compliant and the number that are noncompliant. You can specify one or more resource types to get these numbers for each resource type. The maximum number returned is 100.</p>

__Required Parameters__



-}
getComplianceSummaryByResourceType :
    (GetComplianceSummaryByResourceTypeOptions -> GetComplianceSummaryByResourceTypeOptions)
    -> AWS.Request GetComplianceSummaryByResourceTypeResponse
getComplianceSummaryByResourceType setOptions =
  let
    options = setOptions (GetComplianceSummaryByResourceTypeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetComplianceSummaryByResourceType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getComplianceSummaryByResourceTypeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getComplianceSummaryByResourceType request
-}
type alias GetComplianceSummaryByResourceTypeOptions =
    { resourceTypes : Maybe (List String)
    }



{-| <p>Returns a list of configuration items for the specified resource. The list contains details about each state of the resource during the specified time interval.</p> <p>The response is paginated, and by default, AWS Config returns a limit of 10 configuration items per page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string, and to get the next page of results, run the request again and enter this string for the <code>nextToken</code> parameter.</p> <note> <p>Each call to the API is limited to span a duration of seven days. It is likely that the number of records returned is smaller than the specified <code>limit</code>. In such cases, you can make another call, using the <code>nextToken</code>.</p> </note>

__Required Parameters__

* `resourceType` __:__ `ResourceType`
* `resourceId` __:__ `String`


-}
getResourceConfigHistory :
    ResourceType
    -> String
    -> (GetResourceConfigHistoryOptions -> GetResourceConfigHistoryOptions)
    -> AWS.Request GetResourceConfigHistoryResponse
getResourceConfigHistory resourceType resourceId setOptions =
  let
    options = setOptions (GetResourceConfigHistoryOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetResourceConfigHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getResourceConfigHistoryResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getResourceConfigHistory request
-}
type alias GetResourceConfigHistoryOptions =
    { laterTime : Maybe Date
    , earlierTime : Maybe Date
    , chronologicalOrder : Maybe ChronologicalOrder
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Accepts a resource type and returns a list of resource identifiers for the resources of that type. A resource identifier includes the resource type, ID, and (if available) the custom resource name. The results consist of resources that AWS Config has discovered, including those that AWS Config is not currently recording. You can narrow the results to include only resources that have specific resource IDs or a resource name.</p> <note> <p>You can specify either resource IDs or a resource name but not both in the same request.</p> </note> <p>The response is paginated, and by default AWS Config lists 100 resource identifiers on each page. You can customize this number with the <code>limit</code> parameter. The response includes a <code>nextToken</code> string, and to get the next page of results, run the request again and enter this string for the <code>nextToken</code> parameter.</p>

__Required Parameters__

* `resourceType` __:__ `ResourceType`


-}
listDiscoveredResources :
    ResourceType
    -> (ListDiscoveredResourcesOptions -> ListDiscoveredResourcesOptions)
    -> AWS.Request ListDiscoveredResourcesResponse
listDiscoveredResources resourceType setOptions =
  let
    options = setOptions (ListDiscoveredResourcesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDiscoveredResources"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDiscoveredResourcesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDiscoveredResources request
-}
type alias ListDiscoveredResourcesOptions =
    { resourceIds : Maybe (List String)
    , resourceName : Maybe String
    , limit : Maybe Int
    , includeDeletedResources : Maybe Bool
    , nextToken : Maybe String
    }



{-| <p>Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations.</p> <p>You can use this action for custom Config rules and AWS managed Config rules. A custom Config rule is a rule that you develop and maintain. An AWS managed Config rule is a customizable, predefined rule that AWS Config provides.</p> <p>If you are adding a new custom Config rule, you must first create the AWS Lambda function that the rule invokes to evaluate your resources. When you use the <code>PutConfigRule</code> action to add the rule to AWS Config, you must specify the Amazon Resource Name (ARN) that AWS Lambda assigns to the function. Specify the ARN for the <code>SourceIdentifier</code> key. This key is part of the <code>Source</code> object, which is part of the <code>ConfigRule</code> object. </p> <p>If you are adding a new AWS managed Config rule, specify the rule's identifier for the <code>SourceIdentifier</code> key. To reference AWS managed Config rule identifiers, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html">Using AWS Managed Config Rules</a>.</p> <p>For any new rule that you add, specify the <code>ConfigRuleName</code> in the <code>ConfigRule</code> object. Do not specify the <code>ConfigRuleArn</code> or the <code>ConfigRuleId</code>. These values are generated by AWS Config for new rules.</p> <p>If you are updating a rule that you added previously, you can specify the rule by <code>ConfigRuleName</code>, <code>ConfigRuleId</code>, or <code>ConfigRuleArn</code> in the <code>ConfigRule</code> data type that you use in this request.</p> <p>The maximum number of rules that AWS Config supports is 50.</p> <p>For more information about requesting a rule limit increase, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config">AWS Config Limits</a> in the <i>AWS General Reference Guide</i>.</p> <p>For more information about developing and using AWS Config rules, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>

__Required Parameters__

* `configRule` __:__ `ConfigRule`


-}
putConfigRule :
    ConfigRule
    -> AWS.Request ()
putConfigRule configRule =
    AWS.Http.unsignedRequest
        "PutConfigRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates a new configuration recorder to record the selected resource configurations.</p> <p>You can use this action to change the role <code>roleARN</code> and/or the <code>recordingGroup</code> of an existing recorder. To change the role, call the action on the existing configuration recorder and specify a role.</p> <note> <p>Currently, you can specify only one configuration recorder per region in your account.</p> <p>If <code>ConfigurationRecorder</code> does not have the <b>recordingGroup</b> parameter specified, the default is to record all supported resource types.</p> </note>

__Required Parameters__

* `configurationRecorder` __:__ `ConfigurationRecorder`


-}
putConfigurationRecorder :
    ConfigurationRecorder
    -> AWS.Request ()
putConfigurationRecorder configurationRecorder =
    AWS.Http.unsignedRequest
        "PutConfigurationRecorder"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic.</p> <p>Before you can create a delivery channel, you must create a configuration recorder.</p> <p>You can use this action to change the Amazon S3 bucket or an Amazon SNS topic of the existing delivery channel. To change the Amazon S3 bucket or an Amazon SNS topic, call this action and specify the changed values for the S3 bucket and the SNS topic. If you specify a different value for either the S3 bucket or the SNS topic, this action will keep the existing value for the parameter that is not changed.</p> <note> <p>You can have only one delivery channel per region in your account.</p> </note>

__Required Parameters__

* `deliveryChannel` __:__ `DeliveryChannel`


-}
putDeliveryChannel :
    DeliveryChannel
    -> AWS.Request ()
putDeliveryChannel deliveryChannel =
    AWS.Http.unsignedRequest
        "PutDeliveryChannel"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Used by an AWS Lambda function to deliver evaluation results to AWS Config. This action is required in every AWS Lambda function that is invoked by an AWS Config rule.</p>

__Required Parameters__

* `resultToken` __:__ `String`


-}
putEvaluations :
    String
    -> (PutEvaluationsOptions -> PutEvaluationsOptions)
    -> AWS.Request PutEvaluationsResponse
putEvaluations resultToken setOptions =
  let
    options = setOptions (PutEvaluationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutEvaluations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putEvaluationsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a putEvaluations request
-}
type alias PutEvaluationsOptions =
    { evaluations : Maybe (List Evaluation)
    }



{-| <p>Runs an on-demand evaluation for the specified Config rules against the last known configuration state of the resources. Use <code>StartConfigRulesEvaluation</code> when you want to test a rule that you updated is working as expected. <code>StartConfigRulesEvaluation</code> does not re-record the latest configuration state for your resources; it re-runs an evaluation against the last known state of your resources. </p> <p>You can specify up to 25 Config rules per request. </p> <p>An existing <code>StartConfigRulesEvaluation</code> call must complete for the specified rules before you can call the API again. If you chose to have AWS Config stream to an Amazon SNS topic, you will receive a <code>ConfigRuleEvaluationStarted</code> notification when the evaluation starts.</p> <note> <p>You don't need to call the <code>StartConfigRulesEvaluation</code> API to run an evaluation for a new rule. When you create a new rule, AWS Config automatically evaluates your resources against the rule. </p> </note> <p>The <code>StartConfigRulesEvaluation</code> API is useful if you want to run on-demand evaluations, such as the following example:</p> <ol> <li> <p>You have a custom rule that evaluates your IAM resources every 24 hours.</p> </li> <li> <p>You update your Lambda function to add additional conditions to your rule.</p> </li> <li> <p>Instead of waiting for the next periodic evaluation, you call the <code>StartConfigRulesEvaluation</code> API.</p> </li> <li> <p>AWS Config invokes your Lambda function and evaluates your IAM resources.</p> </li> <li> <p>Your custom rule will still run periodic evaluations every 24 hours.</p> </li> </ol>

__Required Parameters__



-}
startConfigRulesEvaluation :
    (StartConfigRulesEvaluationOptions -> StartConfigRulesEvaluationOptions)
    -> AWS.Request StartConfigRulesEvaluationResponse
startConfigRulesEvaluation setOptions =
  let
    options = setOptions (StartConfigRulesEvaluationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "StartConfigRulesEvaluation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startConfigRulesEvaluationResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a startConfigRulesEvaluation request
-}
type alias StartConfigRulesEvaluationOptions =
    { configRuleNames : Maybe (List String)
    }



{-| <p>Starts recording configurations of the AWS resources you have selected to record in your AWS account.</p> <p>You must have created at least one delivery channel to successfully start the configuration recorder.</p>

__Required Parameters__

* `configurationRecorderName` __:__ `String`


-}
startConfigurationRecorder :
    String
    -> AWS.Request ()
startConfigurationRecorder configurationRecorderName =
    AWS.Http.unsignedRequest
        "StartConfigurationRecorder"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Stops recording configurations of the AWS resources you have selected to record in your AWS account.</p>

__Required Parameters__

* `configurationRecorderName` __:__ `String`


-}
stopConfigurationRecorder :
    String
    -> AWS.Request ()
stopConfigurationRecorder configurationRecorderName =
    AWS.Http.unsignedRequest
        "StopConfigurationRecorder"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest




{-| One of

* `ChronologicalOrder_Reverse`
* `ChronologicalOrder_Forward`

-}
type ChronologicalOrder
    = ChronologicalOrder_Reverse
    | ChronologicalOrder_Forward



chronologicalOrderDecoder : JD.Decoder ChronologicalOrder
chronologicalOrderDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Reverse" ->
                        JD.succeed ChronologicalOrder_Reverse

                    "Forward" ->
                        JD.succeed ChronologicalOrder_Forward


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates whether an AWS resource or AWS Config rule is compliant and provides the number of contributors that affect the compliance.</p>
-}
type alias Compliance =
    { complianceType : Maybe ComplianceType
    , complianceContributorCount : Maybe ComplianceContributorCount
    }



complianceDecoder : JD.Decoder Compliance
complianceDecoder =
    JDP.decode Compliance
        |> JDP.optional "complianceType" (JD.nullable complianceTypeDecoder) Nothing
        |> JDP.optional "complianceContributorCount" (JD.nullable complianceContributorCountDecoder) Nothing




{-| <p>Indicates whether an AWS Config rule is compliant. A rule is compliant if all of the resources that the rule evaluated comply with it, and it is noncompliant if any of these resources do not comply.</p>
-}
type alias ComplianceByConfigRule =
    { configRuleName : Maybe String
    , compliance : Maybe Compliance
    }



complianceByConfigRuleDecoder : JD.Decoder ComplianceByConfigRule
complianceByConfigRuleDecoder =
    JDP.decode ComplianceByConfigRule
        |> JDP.optional "configRuleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "compliance" (JD.nullable complianceDecoder) Nothing




{-| <p>Indicates whether an AWS resource that is evaluated according to one or more AWS Config rules is compliant. A resource is compliant if it complies with all of the rules that evaluate it, and it is noncompliant if it does not comply with one or more of these rules.</p>
-}
type alias ComplianceByResource =
    { resourceType : Maybe String
    , resourceId : Maybe String
    , compliance : Maybe Compliance
    }



complianceByResourceDecoder : JD.Decoder ComplianceByResource
complianceByResourceDecoder =
    JDP.decode ComplianceByResource
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "compliance" (JD.nullable complianceDecoder) Nothing




{-| <p>The number of AWS resources or AWS Config rules responsible for the current compliance of the item, up to a maximum number.</p>
-}
type alias ComplianceContributorCount =
    { cappedCount : Maybe Int
    , capExceeded : Maybe Bool
    }



complianceContributorCountDecoder : JD.Decoder ComplianceContributorCount
complianceContributorCountDecoder =
    JDP.decode ComplianceContributorCount
        |> JDP.optional "cappedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "capExceeded" (JD.nullable JD.bool) Nothing




{-| <p>The number of AWS Config rules or AWS resources that are compliant and noncompliant.</p>
-}
type alias ComplianceSummary =
    { compliantResourceCount : Maybe ComplianceContributorCount
    , nonCompliantResourceCount : Maybe ComplianceContributorCount
    , complianceSummaryTimestamp : Maybe Date
    }



complianceSummaryDecoder : JD.Decoder ComplianceSummary
complianceSummaryDecoder =
    JDP.decode ComplianceSummary
        |> JDP.optional "compliantResourceCount" (JD.nullable complianceContributorCountDecoder) Nothing
        |> JDP.optional "nonCompliantResourceCount" (JD.nullable complianceContributorCountDecoder) Nothing
        |> JDP.optional "complianceSummaryTimestamp" (JD.nullable JDX.date) Nothing




{-| <p>The number of AWS resources of a specific type that are compliant or noncompliant, up to a maximum of 100 for each compliance.</p>
-}
type alias ComplianceSummaryByResourceType =
    { resourceType : Maybe String
    , complianceSummary : Maybe ComplianceSummary
    }



complianceSummaryByResourceTypeDecoder : JD.Decoder ComplianceSummaryByResourceType
complianceSummaryByResourceTypeDecoder =
    JDP.decode ComplianceSummaryByResourceType
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "complianceSummary" (JD.nullable complianceSummaryDecoder) Nothing




{-| One of

* `ComplianceType_COMPLIANT`
* `ComplianceType_NON_COMPLIANT`
* `ComplianceType_NOT_APPLICABLE`
* `ComplianceType_INSUFFICIENT_DATA`

-}
type ComplianceType
    = ComplianceType_COMPLIANT
    | ComplianceType_NON_COMPLIANT
    | ComplianceType_NOT_APPLICABLE
    | ComplianceType_INSUFFICIENT_DATA



complianceTypeDecoder : JD.Decoder ComplianceType
complianceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COMPLIANT" ->
                        JD.succeed ComplianceType_COMPLIANT

                    "NON_COMPLIANT" ->
                        JD.succeed ComplianceType_NON_COMPLIANT

                    "NOT_APPLICABLE" ->
                        JD.succeed ComplianceType_NOT_APPLICABLE

                    "INSUFFICIENT_DATA" ->
                        JD.succeed ComplianceType_INSUFFICIENT_DATA


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A list that contains the status of the delivery of either the snapshot or the configuration history to the specified Amazon S3 bucket.</p>
-}
type alias ConfigExportDeliveryInfo =
    { lastStatus : Maybe DeliveryStatus
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , lastAttemptTime : Maybe Date
    , lastSuccessfulTime : Maybe Date
    , nextDeliveryTime : Maybe Date
    }



configExportDeliveryInfoDecoder : JD.Decoder ConfigExportDeliveryInfo
configExportDeliveryInfoDecoder =
    JDP.decode ConfigExportDeliveryInfo
        |> JDP.optional "lastStatus" (JD.nullable deliveryStatusDecoder) Nothing
        |> JDP.optional "lastErrorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastErrorMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastAttemptTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastSuccessfulTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "nextDeliveryTime" (JD.nullable JDX.date) Nothing




{-| <p>An AWS Config rule represents an AWS Lambda function that you create for a custom rule or a predefined function for an AWS managed rule. The function evaluates configuration items to assess whether your AWS resources comply with your desired configurations. This function can run when AWS Config detects a configuration change to an AWS resource and at a periodic frequency that you choose (for example, every 24 hours).</p> <note> <p>You can use the AWS CLI and AWS SDKs if you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p> </note> <p>For more information about developing and using AWS Config rules, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html">Evaluating AWS Resource Configurations with AWS Config</a> in the <i>AWS Config Developer Guide</i>.</p>
-}
type alias ConfigRule =
    { configRuleName : Maybe String
    , configRuleArn : Maybe String
    , configRuleId : Maybe String
    , description : Maybe String
    , scope : Maybe Scope
    , source : Source
    , inputParameters : Maybe String
    , maximumExecutionFrequency : Maybe MaximumExecutionFrequency
    , configRuleState : Maybe ConfigRuleState
    }



configRuleDecoder : JD.Decoder ConfigRule
configRuleDecoder =
    JDP.decode ConfigRule
        |> JDP.optional "configRuleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "configRuleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "configRuleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "scope" (JD.nullable scopeDecoder) Nothing
        |> JDP.required "source" sourceDecoder
        |> JDP.optional "inputParameters" (JD.nullable JD.string) Nothing
        |> JDP.optional "maximumExecutionFrequency" (JD.nullable maximumExecutionFrequencyDecoder) Nothing
        |> JDP.optional "configRuleState" (JD.nullable configRuleStateDecoder) Nothing




{-| <p>Status information for your AWS managed Config rules. The status includes information such as the last time the rule ran, the last time it failed, and the related error for the last failure.</p> <p>This action does not return status information about custom Config rules.</p>
-}
type alias ConfigRuleEvaluationStatus =
    { configRuleName : Maybe String
    , configRuleArn : Maybe String
    , configRuleId : Maybe String
    , lastSuccessfulInvocationTime : Maybe Date
    , lastFailedInvocationTime : Maybe Date
    , lastSuccessfulEvaluationTime : Maybe Date
    , lastFailedEvaluationTime : Maybe Date
    , firstActivatedTime : Maybe Date
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , firstEvaluationStarted : Maybe Bool
    }



configRuleEvaluationStatusDecoder : JD.Decoder ConfigRuleEvaluationStatus
configRuleEvaluationStatusDecoder =
    JDP.decode ConfigRuleEvaluationStatus
        |> JDP.optional "configRuleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "configRuleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "configRuleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastSuccessfulInvocationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastFailedInvocationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastSuccessfulEvaluationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastFailedEvaluationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "firstActivatedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastErrorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastErrorMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "firstEvaluationStarted" (JD.nullable JD.bool) Nothing




{-| One of

* `ConfigRuleState_ACTIVE`
* `ConfigRuleState_DELETING`
* `ConfigRuleState_DELETING_RESULTS`
* `ConfigRuleState_EVALUATING`

-}
type ConfigRuleState
    = ConfigRuleState_ACTIVE
    | ConfigRuleState_DELETING
    | ConfigRuleState_DELETING_RESULTS
    | ConfigRuleState_EVALUATING



configRuleStateDecoder : JD.Decoder ConfigRuleState
configRuleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed ConfigRuleState_ACTIVE

                    "DELETING" ->
                        JD.succeed ConfigRuleState_DELETING

                    "DELETING_RESULTS" ->
                        JD.succeed ConfigRuleState_DELETING_RESULTS

                    "EVALUATING" ->
                        JD.succeed ConfigRuleState_EVALUATING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides options for how often AWS Config delivers configuration snapshots to the Amazon S3 bucket in your delivery channel.</p> <note> <p>If you want to create a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot, see the following:</p> </note> <p>The frequency for a rule that triggers evaluations for your resources when AWS Config delivers the configuration snapshot is set by one of two values, depending on which is less frequent:</p> <ul> <li> <p>The value for the <code>deliveryFrequency</code> parameter within the delivery channel configuration, which sets how often AWS Config delivers configuration snapshots. This value also sets how often AWS Config invokes evaluations for Config rules.</p> </li> <li> <p>The value for the <code>MaximumExecutionFrequency</code> parameter, which sets the maximum frequency with which AWS Config invokes evaluations for the rule. For more information, see <a>ConfigRule</a>.</p> </li> </ul> <p>If the <code>deliveryFrequency</code> value is less frequent than the <code>MaximumExecutionFrequency</code> value for a rule, AWS Config invokes the rule only as often as the <code>deliveryFrequency</code> value.</p> <ol> <li> <p>For example, you want your rule to run evaluations when AWS Config delivers the configuration snapshot.</p> </li> <li> <p>You specify the <code>MaximumExecutionFrequency</code> value for <code>Six_Hours</code>. </p> </li> <li> <p>You then specify the delivery channel <code>deliveryFrequency</code> value for <code>TwentyFour_Hours</code>.</p> </li> <li> <p>Because the value for <code>deliveryFrequency</code> is less frequent than <code>MaximumExecutionFrequency</code>, AWS Config invokes evaluations for the rule every 24 hours. </p> </li> </ol> <p>You should set the <code>MaximumExecutionFrequency</code> value to be at least as frequent as the <code>deliveryFrequency</code> value. You can view the <code>deliveryFrequency</code> value by using the <code>DescribeDeliveryChannnels</code> action.</p> <p>To update the <code>deliveryFrequency</code> with which AWS Config delivers your configuration snapshots, use the <code>PutDeliveryChannel</code> action.</p>
-}
type alias ConfigSnapshotDeliveryProperties =
    { deliveryFrequency : Maybe MaximumExecutionFrequency
    }



configSnapshotDeliveryPropertiesDecoder : JD.Decoder ConfigSnapshotDeliveryProperties
configSnapshotDeliveryPropertiesDecoder =
    JDP.decode ConfigSnapshotDeliveryProperties
        |> JDP.optional "deliveryFrequency" (JD.nullable maximumExecutionFrequencyDecoder) Nothing




{-| <p>A list that contains the status of the delivery of the configuration stream notification to the Amazon SNS topic.</p>
-}
type alias ConfigStreamDeliveryInfo =
    { lastStatus : Maybe DeliveryStatus
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , lastStatusChangeTime : Maybe Date
    }



configStreamDeliveryInfoDecoder : JD.Decoder ConfigStreamDeliveryInfo
configStreamDeliveryInfoDecoder =
    JDP.decode ConfigStreamDeliveryInfo
        |> JDP.optional "lastStatus" (JD.nullable deliveryStatusDecoder) Nothing
        |> JDP.optional "lastErrorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastErrorMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastStatusChangeTime" (JD.nullable JDX.date) Nothing




{-| <p>A list that contains detailed configurations of a specified resource.</p>
-}
type alias ConfigurationItem =
    { version : Maybe String
    , accountId : Maybe String
    , configurationItemCaptureTime : Maybe Date
    , configurationItemStatus : Maybe ConfigurationItemStatus
    , configurationStateId : Maybe String
    , configurationItemMD5Hash : Maybe String
    , arn : Maybe String
    , resourceType : Maybe ResourceType
    , resourceId : Maybe String
    , resourceName : Maybe String
    , awsRegion : Maybe String
    , availabilityZone : Maybe String
    , resourceCreationTime : Maybe Date
    , tags : Maybe (Dict String String)
    , relatedEvents : Maybe (List String)
    , relationships : Maybe (List Relationship)
    , configuration : Maybe String
    , supplementaryConfiguration : Maybe (Dict String String)
    }



configurationItemDecoder : JD.Decoder ConfigurationItem
configurationItemDecoder =
    JDP.decode ConfigurationItem
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing
        |> JDP.optional "configurationItemCaptureTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "configurationItemStatus" (JD.nullable configurationItemStatusDecoder) Nothing
        |> JDP.optional "configurationStateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "configurationItemMD5Hash" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "awsRegion" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceCreationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "relatedEvents" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "relationships" (JD.nullable (JD.list relationshipDecoder)) Nothing
        |> JDP.optional "configuration" (JD.nullable JD.string) Nothing
        |> JDP.optional "supplementaryConfiguration" (JD.nullable (JD.dict JD.string)) Nothing




{-| One of

* `ConfigurationItemStatus_Ok`
* `ConfigurationItemStatus_Failed`
* `ConfigurationItemStatus_Discovered`
* `ConfigurationItemStatus_Deleted`

-}
type ConfigurationItemStatus
    = ConfigurationItemStatus_Ok
    | ConfigurationItemStatus_Failed
    | ConfigurationItemStatus_Discovered
    | ConfigurationItemStatus_Deleted



configurationItemStatusDecoder : JD.Decoder ConfigurationItemStatus
configurationItemStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Ok" ->
                        JD.succeed ConfigurationItemStatus_Ok

                    "Failed" ->
                        JD.succeed ConfigurationItemStatus_Failed

                    "Discovered" ->
                        JD.succeed ConfigurationItemStatus_Discovered

                    "Deleted" ->
                        JD.succeed ConfigurationItemStatus_Deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An object that represents the recording of configuration changes of an AWS resource.</p>
-}
type alias ConfigurationRecorder =
    { name : Maybe String
    , roleARN : Maybe String
    , recordingGroup : Maybe RecordingGroup
    }



configurationRecorderDecoder : JD.Decoder ConfigurationRecorder
configurationRecorderDecoder =
    JDP.decode ConfigurationRecorder
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "recordingGroup" (JD.nullable recordingGroupDecoder) Nothing




{-| <p>The current status of the configuration recorder.</p>
-}
type alias ConfigurationRecorderStatus =
    { name : Maybe String
    , lastStartTime : Maybe Date
    , lastStopTime : Maybe Date
    , recording : Maybe Bool
    , lastStatus : Maybe RecorderStatus
    , lastErrorCode : Maybe String
    , lastErrorMessage : Maybe String
    , lastStatusChangeTime : Maybe Date
    }



configurationRecorderStatusDecoder : JD.Decoder ConfigurationRecorderStatus
configurationRecorderStatusDecoder =
    JDP.decode ConfigurationRecorderStatus
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastStopTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "recording" (JD.nullable JD.bool) Nothing
        |> JDP.optional "lastStatus" (JD.nullable recorderStatusDecoder) Nothing
        |> JDP.optional "lastErrorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastErrorMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastStatusChangeTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from deleteEvaluationResults
-}
type alias DeleteEvaluationResultsResponse =
    { 
    }



deleteEvaluationResultsResponseDecoder : JD.Decoder DeleteEvaluationResultsResponse
deleteEvaluationResultsResponseDecoder =
    JDP.decode DeleteEvaluationResultsResponse



{-| Type of HTTP response from deliverConfigSnapshot
-}
type alias DeliverConfigSnapshotResponse =
    { configSnapshotId : Maybe String
    }



deliverConfigSnapshotResponseDecoder : JD.Decoder DeliverConfigSnapshotResponse
deliverConfigSnapshotResponseDecoder =
    JDP.decode DeliverConfigSnapshotResponse
        |> JDP.optional "configSnapshotId" (JD.nullable JD.string) Nothing




{-| <p>The channel through which AWS Config delivers notifications and updated configuration states.</p>
-}
type alias DeliveryChannel =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicARN : Maybe String
    , configSnapshotDeliveryProperties : Maybe ConfigSnapshotDeliveryProperties
    }



deliveryChannelDecoder : JD.Decoder DeliveryChannel
deliveryChannelDecoder =
    JDP.decode DeliveryChannel
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3KeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "configSnapshotDeliveryProperties" (JD.nullable configSnapshotDeliveryPropertiesDecoder) Nothing




{-| <p>The status of a specified delivery channel.</p> <p>Valid values: <code>Success</code> | <code>Failure</code> </p>
-}
type alias DeliveryChannelStatus =
    { name : Maybe String
    , configSnapshotDeliveryInfo : Maybe ConfigExportDeliveryInfo
    , configHistoryDeliveryInfo : Maybe ConfigExportDeliveryInfo
    , configStreamDeliveryInfo : Maybe ConfigStreamDeliveryInfo
    }



deliveryChannelStatusDecoder : JD.Decoder DeliveryChannelStatus
deliveryChannelStatusDecoder =
    JDP.decode DeliveryChannelStatus
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "configSnapshotDeliveryInfo" (JD.nullable configExportDeliveryInfoDecoder) Nothing
        |> JDP.optional "configHistoryDeliveryInfo" (JD.nullable configExportDeliveryInfoDecoder) Nothing
        |> JDP.optional "configStreamDeliveryInfo" (JD.nullable configStreamDeliveryInfoDecoder) Nothing




{-| One of

* `DeliveryStatus_Success`
* `DeliveryStatus_Failure`
* `DeliveryStatus_Not_Applicable`

-}
type DeliveryStatus
    = DeliveryStatus_Success
    | DeliveryStatus_Failure
    | DeliveryStatus_Not_Applicable



deliveryStatusDecoder : JD.Decoder DeliveryStatus
deliveryStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Success" ->
                        JD.succeed DeliveryStatus_Success

                    "Failure" ->
                        JD.succeed DeliveryStatus_Failure

                    "Not_Applicable" ->
                        JD.succeed DeliveryStatus_Not_Applicable


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from describeComplianceByConfigRule
-}
type alias DescribeComplianceByConfigRuleResponse =
    { complianceByConfigRules : Maybe (List ComplianceByConfigRule)
    , nextToken : Maybe String
    }



describeComplianceByConfigRuleResponseDecoder : JD.Decoder DescribeComplianceByConfigRuleResponse
describeComplianceByConfigRuleResponseDecoder =
    JDP.decode DescribeComplianceByConfigRuleResponse
        |> JDP.optional "complianceByConfigRules" (JD.nullable (JD.list complianceByConfigRuleDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeComplianceByResource
-}
type alias DescribeComplianceByResourceResponse =
    { complianceByResources : Maybe (List ComplianceByResource)
    , nextToken : Maybe String
    }



describeComplianceByResourceResponseDecoder : JD.Decoder DescribeComplianceByResourceResponse
describeComplianceByResourceResponseDecoder =
    JDP.decode DescribeComplianceByResourceResponse
        |> JDP.optional "complianceByResources" (JD.nullable (JD.list complianceByResourceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeConfigRuleEvaluationStatus
-}
type alias DescribeConfigRuleEvaluationStatusResponse =
    { configRulesEvaluationStatus : Maybe (List ConfigRuleEvaluationStatus)
    , nextToken : Maybe String
    }



describeConfigRuleEvaluationStatusResponseDecoder : JD.Decoder DescribeConfigRuleEvaluationStatusResponse
describeConfigRuleEvaluationStatusResponseDecoder =
    JDP.decode DescribeConfigRuleEvaluationStatusResponse
        |> JDP.optional "configRulesEvaluationStatus" (JD.nullable (JD.list configRuleEvaluationStatusDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeConfigRules
-}
type alias DescribeConfigRulesResponse =
    { configRules : Maybe (List ConfigRule)
    , nextToken : Maybe String
    }



describeConfigRulesResponseDecoder : JD.Decoder DescribeConfigRulesResponse
describeConfigRulesResponseDecoder =
    JDP.decode DescribeConfigRulesResponse
        |> JDP.optional "configRules" (JD.nullable (JD.list configRuleDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeConfigurationRecorderStatus
-}
type alias DescribeConfigurationRecorderStatusResponse =
    { configurationRecordersStatus : Maybe (List ConfigurationRecorderStatus)
    }



describeConfigurationRecorderStatusResponseDecoder : JD.Decoder DescribeConfigurationRecorderStatusResponse
describeConfigurationRecorderStatusResponseDecoder =
    JDP.decode DescribeConfigurationRecorderStatusResponse
        |> JDP.optional "configurationRecordersStatus" (JD.nullable (JD.list configurationRecorderStatusDecoder)) Nothing




{-| Type of HTTP response from describeConfigurationRecorders
-}
type alias DescribeConfigurationRecordersResponse =
    { configurationRecorders : Maybe (List ConfigurationRecorder)
    }



describeConfigurationRecordersResponseDecoder : JD.Decoder DescribeConfigurationRecordersResponse
describeConfigurationRecordersResponseDecoder =
    JDP.decode DescribeConfigurationRecordersResponse
        |> JDP.optional "configurationRecorders" (JD.nullable (JD.list configurationRecorderDecoder)) Nothing




{-| Type of HTTP response from describeDeliveryChannelStatus
-}
type alias DescribeDeliveryChannelStatusResponse =
    { deliveryChannelsStatus : Maybe (List DeliveryChannelStatus)
    }



describeDeliveryChannelStatusResponseDecoder : JD.Decoder DescribeDeliveryChannelStatusResponse
describeDeliveryChannelStatusResponseDecoder =
    JDP.decode DescribeDeliveryChannelStatusResponse
        |> JDP.optional "deliveryChannelsStatus" (JD.nullable (JD.list deliveryChannelStatusDecoder)) Nothing




{-| Type of HTTP response from describeDeliveryChannels
-}
type alias DescribeDeliveryChannelsResponse =
    { deliveryChannels : Maybe (List DeliveryChannel)
    }



describeDeliveryChannelsResponseDecoder : JD.Decoder DescribeDeliveryChannelsResponse
describeDeliveryChannelsResponseDecoder =
    JDP.decode DescribeDeliveryChannelsResponse
        |> JDP.optional "deliveryChannels" (JD.nullable (JD.list deliveryChannelDecoder)) Nothing




{-| <p>Identifies an AWS resource and indicates whether it complies with the AWS Config rule that it was evaluated against.</p>
-}
type alias Evaluation =
    { complianceResourceType : String
    , complianceResourceId : String
    , complianceType : ComplianceType
    , annotation : Maybe String
    , orderingTimestamp : Date
    }



evaluationDecoder : JD.Decoder Evaluation
evaluationDecoder =
    JDP.decode Evaluation
        |> JDP.required "complianceResourceType" JD.string
        |> JDP.required "complianceResourceId" JD.string
        |> JDP.required "complianceType" complianceTypeDecoder
        |> JDP.optional "annotation" (JD.nullable JD.string) Nothing
        |> JDP.required "orderingTimestamp" JDX.date




{-| <p>The details of an AWS Config evaluation. Provides the AWS resource that was evaluated, the compliance of the resource, related timestamps, and supplementary information.</p>
-}
type alias EvaluationResult =
    { evaluationResultIdentifier : Maybe EvaluationResultIdentifier
    , complianceType : Maybe ComplianceType
    , resultRecordedTime : Maybe Date
    , configRuleInvokedTime : Maybe Date
    , annotation : Maybe String
    , resultToken : Maybe String
    }



evaluationResultDecoder : JD.Decoder EvaluationResult
evaluationResultDecoder =
    JDP.decode EvaluationResult
        |> JDP.optional "evaluationResultIdentifier" (JD.nullable evaluationResultIdentifierDecoder) Nothing
        |> JDP.optional "complianceType" (JD.nullable complianceTypeDecoder) Nothing
        |> JDP.optional "resultRecordedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "configRuleInvokedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "annotation" (JD.nullable JD.string) Nothing
        |> JDP.optional "resultToken" (JD.nullable JD.string) Nothing




{-| <p>Uniquely identifies an evaluation result.</p>
-}
type alias EvaluationResultIdentifier =
    { evaluationResultQualifier : Maybe EvaluationResultQualifier
    , orderingTimestamp : Maybe Date
    }



evaluationResultIdentifierDecoder : JD.Decoder EvaluationResultIdentifier
evaluationResultIdentifierDecoder =
    JDP.decode EvaluationResultIdentifier
        |> JDP.optional "evaluationResultQualifier" (JD.nullable evaluationResultQualifierDecoder) Nothing
        |> JDP.optional "orderingTimestamp" (JD.nullable JDX.date) Nothing




{-| <p>Identifies an AWS Config rule that evaluated an AWS resource, and provides the type and ID of the resource that the rule evaluated.</p>
-}
type alias EvaluationResultQualifier =
    { configRuleName : Maybe String
    , resourceType : Maybe String
    , resourceId : Maybe String
    }



evaluationResultQualifierDecoder : JD.Decoder EvaluationResultQualifier
evaluationResultQualifierDecoder =
    JDP.decode EvaluationResultQualifier
        |> JDP.optional "configRuleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing




{-| One of

* `EventSource_aws.config`

-}
type EventSource
    = EventSource_aws_config



eventSourceDecoder : JD.Decoder EventSource
eventSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "aws_config" ->
                        JD.succeed EventSource_aws_config


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getComplianceDetailsByConfigRule
-}
type alias GetComplianceDetailsByConfigRuleResponse =
    { evaluationResults : Maybe (List EvaluationResult)
    , nextToken : Maybe String
    }



getComplianceDetailsByConfigRuleResponseDecoder : JD.Decoder GetComplianceDetailsByConfigRuleResponse
getComplianceDetailsByConfigRuleResponseDecoder =
    JDP.decode GetComplianceDetailsByConfigRuleResponse
        |> JDP.optional "evaluationResults" (JD.nullable (JD.list evaluationResultDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getComplianceDetailsByResource
-}
type alias GetComplianceDetailsByResourceResponse =
    { evaluationResults : Maybe (List EvaluationResult)
    , nextToken : Maybe String
    }



getComplianceDetailsByResourceResponseDecoder : JD.Decoder GetComplianceDetailsByResourceResponse
getComplianceDetailsByResourceResponseDecoder =
    JDP.decode GetComplianceDetailsByResourceResponse
        |> JDP.optional "evaluationResults" (JD.nullable (JD.list evaluationResultDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getComplianceSummaryByConfigRule
-}
type alias GetComplianceSummaryByConfigRuleResponse =
    { complianceSummary : Maybe ComplianceSummary
    }



getComplianceSummaryByConfigRuleResponseDecoder : JD.Decoder GetComplianceSummaryByConfigRuleResponse
getComplianceSummaryByConfigRuleResponseDecoder =
    JDP.decode GetComplianceSummaryByConfigRuleResponse
        |> JDP.optional "complianceSummary" (JD.nullable complianceSummaryDecoder) Nothing




{-| Type of HTTP response from getComplianceSummaryByResourceType
-}
type alias GetComplianceSummaryByResourceTypeResponse =
    { complianceSummariesByResourceType : Maybe (List ComplianceSummaryByResourceType)
    }



getComplianceSummaryByResourceTypeResponseDecoder : JD.Decoder GetComplianceSummaryByResourceTypeResponse
getComplianceSummaryByResourceTypeResponseDecoder =
    JDP.decode GetComplianceSummaryByResourceTypeResponse
        |> JDP.optional "complianceSummariesByResourceType" (JD.nullable (JD.list complianceSummaryByResourceTypeDecoder)) Nothing




{-| Type of HTTP response from getResourceConfigHistory
-}
type alias GetResourceConfigHistoryResponse =
    { configurationItems : Maybe (List ConfigurationItem)
    , nextToken : Maybe String
    }



getResourceConfigHistoryResponseDecoder : JD.Decoder GetResourceConfigHistoryResponse
getResourceConfigHistoryResponseDecoder =
    JDP.decode GetResourceConfigHistoryResponse
        |> JDP.optional "configurationItems" (JD.nullable (JD.list configurationItemDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Your Amazon S3 bucket policy does not permit AWS Config to write to it.</p>
-}
type alias InsufficientDeliveryPolicyException =
    { 
    }



insufficientDeliveryPolicyExceptionDecoder : JD.Decoder InsufficientDeliveryPolicyException
insufficientDeliveryPolicyExceptionDecoder =
    JDP.decode InsufficientDeliveryPolicyException



{-| <p>Indicates one of the following errors:</p> <ul> <li> <p>The rule cannot be created because the IAM role assigned to AWS Config lacks permissions to perform the config:Put* action.</p> </li> <li> <p>The AWS Lambda function cannot be invoked. Check the function ARN, and check the function's permissions.</p> </li> </ul>
-}
type alias InsufficientPermissionsException =
    { 
    }



insufficientPermissionsExceptionDecoder : JD.Decoder InsufficientPermissionsException
insufficientPermissionsExceptionDecoder =
    JDP.decode InsufficientPermissionsException



{-| <p>You have provided a configuration recorder name that is not valid.</p>
-}
type alias InvalidConfigurationRecorderNameException =
    { 
    }



invalidConfigurationRecorderNameExceptionDecoder : JD.Decoder InvalidConfigurationRecorderNameException
invalidConfigurationRecorderNameExceptionDecoder =
    JDP.decode InvalidConfigurationRecorderNameException



{-| <p>The specified delivery channel name is not valid.</p>
-}
type alias InvalidDeliveryChannelNameException =
    { 
    }



invalidDeliveryChannelNameExceptionDecoder : JD.Decoder InvalidDeliveryChannelNameException
invalidDeliveryChannelNameExceptionDecoder =
    JDP.decode InvalidDeliveryChannelNameException



{-| <p>The specified limit is outside the allowable range.</p>
-}
type alias InvalidLimitException =
    { 
    }



invalidLimitExceptionDecoder : JD.Decoder InvalidLimitException
invalidLimitExceptionDecoder =
    JDP.decode InvalidLimitException



{-| <p>The specified next token is invalid. Specify the <code>NextToken</code> string that was returned in the previous response to get the next page of results.</p>
-}
type alias InvalidNextTokenException =
    { 
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException



{-| <p>One or more of the specified parameters are invalid. Verify that your parameters are valid and try again.</p>
-}
type alias InvalidParameterValueException =
    { 
    }



invalidParameterValueExceptionDecoder : JD.Decoder InvalidParameterValueException
invalidParameterValueExceptionDecoder =
    JDP.decode InvalidParameterValueException



{-| <p>AWS Config throws an exception if the recording group does not contain a valid list of resource types. Invalid values could also be incorrectly formatted.</p>
-}
type alias InvalidRecordingGroupException =
    { 
    }



invalidRecordingGroupExceptionDecoder : JD.Decoder InvalidRecordingGroupException
invalidRecordingGroupExceptionDecoder =
    JDP.decode InvalidRecordingGroupException



{-| <p>The speNexcified token is invalid.</p>
-}
type alias InvalidResultTokenException =
    { 
    }



invalidResultTokenExceptionDecoder : JD.Decoder InvalidResultTokenException
invalidResultTokenExceptionDecoder =
    JDP.decode InvalidResultTokenException



{-| <p>You have provided a null or empty role ARN.</p>
-}
type alias InvalidRoleException =
    { 
    }



invalidRoleExceptionDecoder : JD.Decoder InvalidRoleException
invalidRoleExceptionDecoder =
    JDP.decode InvalidRoleException



{-| <p>The specified Amazon S3 key prefix is not valid.</p>
-}
type alias InvalidS3KeyPrefixException =
    { 
    }



invalidS3KeyPrefixExceptionDecoder : JD.Decoder InvalidS3KeyPrefixException
invalidS3KeyPrefixExceptionDecoder =
    JDP.decode InvalidS3KeyPrefixException



{-| <p>The specified Amazon SNS topic does not exist.</p>
-}
type alias InvalidSNSTopicARNException =
    { 
    }



invalidSNSTopicARNExceptionDecoder : JD.Decoder InvalidSNSTopicARNException
invalidSNSTopicARNExceptionDecoder =
    JDP.decode InvalidSNSTopicARNException



{-| <p>The specified time range is not valid. The earlier time is not chronologically before the later time.</p>
-}
type alias InvalidTimeRangeException =
    { 
    }



invalidTimeRangeExceptionDecoder : JD.Decoder InvalidTimeRangeException
invalidTimeRangeExceptionDecoder =
    JDP.decode InvalidTimeRangeException



{-| <p>You cannot delete the delivery channel you specified because the configuration recorder is running.</p>
-}
type alias LastDeliveryChannelDeleteFailedException =
    { 
    }



lastDeliveryChannelDeleteFailedExceptionDecoder : JD.Decoder LastDeliveryChannelDeleteFailedException
lastDeliveryChannelDeleteFailedExceptionDecoder =
    JDP.decode LastDeliveryChannelDeleteFailedException



{-| <p>This exception is thrown if an evaluation is in progress or if you call the <a>StartConfigRulesEvaluation</a> API more than once per minute.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listDiscoveredResources
-}
type alias ListDiscoveredResourcesResponse =
    { resourceIdentifiers : Maybe (List ResourceIdentifier)
    , nextToken : Maybe String
    }



listDiscoveredResourcesResponseDecoder : JD.Decoder ListDiscoveredResourcesResponse
listDiscoveredResourcesResponseDecoder =
    JDP.decode ListDiscoveredResourcesResponse
        |> JDP.optional "resourceIdentifiers" (JD.nullable (JD.list resourceIdentifierDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Failed to add the AWS Config rule because the account already contains the maximum number of 50 rules. Consider deleting any deactivated rules before adding new rules.</p>
-}
type alias MaxNumberOfConfigRulesExceededException =
    { 
    }



maxNumberOfConfigRulesExceededExceptionDecoder : JD.Decoder MaxNumberOfConfigRulesExceededException
maxNumberOfConfigRulesExceededExceptionDecoder =
    JDP.decode MaxNumberOfConfigRulesExceededException



{-| <p>You have reached the limit on the number of recorders you can create.</p>
-}
type alias MaxNumberOfConfigurationRecordersExceededException =
    { 
    }



maxNumberOfConfigurationRecordersExceededExceptionDecoder : JD.Decoder MaxNumberOfConfigurationRecordersExceededException
maxNumberOfConfigurationRecordersExceededExceptionDecoder =
    JDP.decode MaxNumberOfConfigurationRecordersExceededException



{-| <p>You have reached the limit on the number of delivery channels you can create.</p>
-}
type alias MaxNumberOfDeliveryChannelsExceededException =
    { 
    }



maxNumberOfDeliveryChannelsExceededExceptionDecoder : JD.Decoder MaxNumberOfDeliveryChannelsExceededException
maxNumberOfDeliveryChannelsExceededExceptionDecoder =
    JDP.decode MaxNumberOfDeliveryChannelsExceededException



{-| One of

* `MaximumExecutionFrequency_One_Hour`
* `MaximumExecutionFrequency_Three_Hours`
* `MaximumExecutionFrequency_Six_Hours`
* `MaximumExecutionFrequency_Twelve_Hours`
* `MaximumExecutionFrequency_TwentyFour_Hours`

-}
type MaximumExecutionFrequency
    = MaximumExecutionFrequency_One_Hour
    | MaximumExecutionFrequency_Three_Hours
    | MaximumExecutionFrequency_Six_Hours
    | MaximumExecutionFrequency_Twelve_Hours
    | MaximumExecutionFrequency_TwentyFour_Hours



maximumExecutionFrequencyDecoder : JD.Decoder MaximumExecutionFrequency
maximumExecutionFrequencyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "One_Hour" ->
                        JD.succeed MaximumExecutionFrequency_One_Hour

                    "Three_Hours" ->
                        JD.succeed MaximumExecutionFrequency_Three_Hours

                    "Six_Hours" ->
                        JD.succeed MaximumExecutionFrequency_Six_Hours

                    "Twelve_Hours" ->
                        JD.succeed MaximumExecutionFrequency_Twelve_Hours

                    "TwentyFour_Hours" ->
                        JD.succeed MaximumExecutionFrequency_TwentyFour_Hours


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `MessageType_ConfigurationItemChangeNotification`
* `MessageType_ConfigurationSnapshotDeliveryCompleted`
* `MessageType_ScheduledNotification`
* `MessageType_OversizedConfigurationItemChangeNotification`

-}
type MessageType
    = MessageType_ConfigurationItemChangeNotification
    | MessageType_ConfigurationSnapshotDeliveryCompleted
    | MessageType_ScheduledNotification
    | MessageType_OversizedConfigurationItemChangeNotification



messageTypeDecoder : JD.Decoder MessageType
messageTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ConfigurationItemChangeNotification" ->
                        JD.succeed MessageType_ConfigurationItemChangeNotification

                    "ConfigurationSnapshotDeliveryCompleted" ->
                        JD.succeed MessageType_ConfigurationSnapshotDeliveryCompleted

                    "ScheduledNotification" ->
                        JD.succeed MessageType_ScheduledNotification

                    "OversizedConfigurationItemChangeNotification" ->
                        JD.succeed MessageType_OversizedConfigurationItemChangeNotification


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>There are no configuration recorders available to provide the role needed to describe your resources. Create a configuration recorder.</p>
-}
type alias NoAvailableConfigurationRecorderException =
    { 
    }



noAvailableConfigurationRecorderExceptionDecoder : JD.Decoder NoAvailableConfigurationRecorderException
noAvailableConfigurationRecorderExceptionDecoder =
    JDP.decode NoAvailableConfigurationRecorderException



{-| <p>There is no delivery channel available to record configurations.</p>
-}
type alias NoAvailableDeliveryChannelException =
    { 
    }



noAvailableDeliveryChannelExceptionDecoder : JD.Decoder NoAvailableDeliveryChannelException
noAvailableDeliveryChannelExceptionDecoder =
    JDP.decode NoAvailableDeliveryChannelException



{-| <p>There is no configuration recorder running.</p>
-}
type alias NoRunningConfigurationRecorderException =
    { 
    }



noRunningConfigurationRecorderExceptionDecoder : JD.Decoder NoRunningConfigurationRecorderException
noRunningConfigurationRecorderExceptionDecoder =
    JDP.decode NoRunningConfigurationRecorderException



{-| <p>The specified Amazon S3 bucket does not exist.</p>
-}
type alias NoSuchBucketException =
    { 
    }



noSuchBucketExceptionDecoder : JD.Decoder NoSuchBucketException
noSuchBucketExceptionDecoder =
    JDP.decode NoSuchBucketException



{-| <p>One or more AWS Config rules in the request are invalid. Verify that the rule names are correct and try again.</p>
-}
type alias NoSuchConfigRuleException =
    { 
    }



noSuchConfigRuleExceptionDecoder : JD.Decoder NoSuchConfigRuleException
noSuchConfigRuleExceptionDecoder =
    JDP.decode NoSuchConfigRuleException



{-| <p>You have specified a configuration recorder that does not exist.</p>
-}
type alias NoSuchConfigurationRecorderException =
    { 
    }



noSuchConfigurationRecorderExceptionDecoder : JD.Decoder NoSuchConfigurationRecorderException
noSuchConfigurationRecorderExceptionDecoder =
    JDP.decode NoSuchConfigurationRecorderException



{-| <p>You have specified a delivery channel that does not exist.</p>
-}
type alias NoSuchDeliveryChannelException =
    { 
    }



noSuchDeliveryChannelExceptionDecoder : JD.Decoder NoSuchDeliveryChannelException
noSuchDeliveryChannelExceptionDecoder =
    JDP.decode NoSuchDeliveryChannelException



{-| One of

* `Owner_CUSTOM_LAMBDA`
* `Owner_AWS`

-}
type Owner
    = Owner_CUSTOM_LAMBDA
    | Owner_AWS



ownerDecoder : JD.Decoder Owner
ownerDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CUSTOM_LAMBDA" ->
                        JD.succeed Owner_CUSTOM_LAMBDA

                    "AWS" ->
                        JD.succeed Owner_AWS


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putEvaluations
-}
type alias PutEvaluationsResponse =
    { failedEvaluations : Maybe (List Evaluation)
    }



putEvaluationsResponseDecoder : JD.Decoder PutEvaluationsResponse
putEvaluationsResponseDecoder =
    JDP.decode PutEvaluationsResponse
        |> JDP.optional "failedEvaluations" (JD.nullable (JD.list evaluationDecoder)) Nothing




{-| One of

* `RecorderStatus_Pending`
* `RecorderStatus_Success`
* `RecorderStatus_Failure`

-}
type RecorderStatus
    = RecorderStatus_Pending
    | RecorderStatus_Success
    | RecorderStatus_Failure



recorderStatusDecoder : JD.Decoder RecorderStatus
recorderStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed RecorderStatus_Pending

                    "Success" ->
                        JD.succeed RecorderStatus_Success

                    "Failure" ->
                        JD.succeed RecorderStatus_Failure


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Specifies the types of AWS resource for which AWS Config records configuration changes.</p> <p>In the recording group, you specify whether all supported types or specific types of resources are recorded.</p> <p>By default, AWS Config records configuration changes for all supported types of regional resources that AWS Config discovers in the region in which it is running. Regional resources are tied to a region and can be used only in that region. Examples of regional resources are EC2 instances and EBS volumes.</p> <p>You can also have AWS Config record configuration changes for supported types of global resources (for example, IAM resources). Global resources are not tied to an individual region and can be used in all regions.</p> <important> <p>The configuration details for any global resource are the same in all regions. If you customize AWS Config in multiple regions to record global resources, it will create multiple configuration items each time a global resource changes: one configuration item for each region. These configuration items will contain identical data. To prevent duplicate configuration items, you should consider customizing AWS Config in only one region to record global resources, unless you want the configuration items to be available in multiple regions.</p> </important> <p>If you don't want AWS Config to record all resources, you can specify which types of resources it will record with the <code>resourceTypes</code> parameter.</p> <p>For a list of supported resource types, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported resource types</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/config/latest/developerguide/select-resources.html">Selecting Which Resources AWS Config Records</a>.</p>
-}
type alias RecordingGroup =
    { allSupported : Maybe Bool
    , includeGlobalResourceTypes : Maybe Bool
    , resourceTypes : Maybe (List ResourceType)
    }



recordingGroupDecoder : JD.Decoder RecordingGroup
recordingGroupDecoder =
    JDP.decode RecordingGroup
        |> JDP.optional "allSupported" (JD.nullable JD.bool) Nothing
        |> JDP.optional "includeGlobalResourceTypes" (JD.nullable JD.bool) Nothing
        |> JDP.optional "resourceTypes" (JD.nullable (JD.list resourceTypeDecoder)) Nothing




{-| <p>The relationship of the related resource to the main resource.</p>
-}
type alias Relationship =
    { resourceType : Maybe ResourceType
    , resourceId : Maybe String
    , resourceName : Maybe String
    , relationshipName : Maybe String
    }



relationshipDecoder : JD.Decoder Relationship
relationshipDecoder =
    JDP.decode Relationship
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "relationshipName" (JD.nullable JD.string) Nothing




{-| <p>The details that identify a resource that is discovered by AWS Config, including the resource type, ID, and (if available) the custom resource name.</p>
-}
type alias ResourceIdentifier =
    { resourceType : Maybe ResourceType
    , resourceId : Maybe String
    , resourceName : Maybe String
    , resourceDeletionTime : Maybe Date
    }



resourceIdentifierDecoder : JD.Decoder ResourceIdentifier
resourceIdentifierDecoder =
    JDP.decode ResourceIdentifier
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceDeletionTime" (JD.nullable JDX.date) Nothing




{-| <p>The rule is currently being deleted or the rule is deleting your evaluation results. Try your request again later.</p>
-}
type alias ResourceInUseException =
    { 
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException



{-| <p>You have specified a resource that is either unknown or has not been discovered.</p>
-}
type alias ResourceNotDiscoveredException =
    { 
    }



resourceNotDiscoveredExceptionDecoder : JD.Decoder ResourceNotDiscoveredException
resourceNotDiscoveredExceptionDecoder =
    JDP.decode ResourceNotDiscoveredException



{-| One of

* `ResourceType_AWS::EC2::CustomerGateway`
* `ResourceType_AWS::EC2::EIP`
* `ResourceType_AWS::EC2::Host`
* `ResourceType_AWS::EC2::Instance`
* `ResourceType_AWS::EC2::InternetGateway`
* `ResourceType_AWS::EC2::NetworkAcl`
* `ResourceType_AWS::EC2::NetworkInterface`
* `ResourceType_AWS::EC2::RouteTable`
* `ResourceType_AWS::EC2::SecurityGroup`
* `ResourceType_AWS::EC2::Subnet`
* `ResourceType_AWS::CloudTrail::Trail`
* `ResourceType_AWS::EC2::Volume`
* `ResourceType_AWS::EC2::VPC`
* `ResourceType_AWS::EC2::VPNConnection`
* `ResourceType_AWS::EC2::VPNGateway`
* `ResourceType_AWS::IAM::Group`
* `ResourceType_AWS::IAM::Policy`
* `ResourceType_AWS::IAM::Role`
* `ResourceType_AWS::IAM::User`
* `ResourceType_AWS::ACM::Certificate`
* `ResourceType_AWS::RDS::DBInstance`
* `ResourceType_AWS::RDS::DBSubnetGroup`
* `ResourceType_AWS::RDS::DBSecurityGroup`
* `ResourceType_AWS::RDS::DBSnapshot`
* `ResourceType_AWS::RDS::EventSubscription`
* `ResourceType_AWS::ElasticLoadBalancingV2::LoadBalancer`
* `ResourceType_AWS::S3::Bucket`
* `ResourceType_AWS::SSM::ManagedInstanceInventory`
* `ResourceType_AWS::Redshift::Cluster`
* `ResourceType_AWS::Redshift::ClusterSnapshot`
* `ResourceType_AWS::Redshift::ClusterParameterGroup`
* `ResourceType_AWS::Redshift::ClusterSecurityGroup`
* `ResourceType_AWS::Redshift::ClusterSubnetGroup`
* `ResourceType_AWS::Redshift::EventSubscription`

-}
type ResourceType
    = ResourceType_AWS_EC2_CustomerGateway
    | ResourceType_AWS_EC2_EIP
    | ResourceType_AWS_EC2_Host
    | ResourceType_AWS_EC2_Instance
    | ResourceType_AWS_EC2_InternetGateway
    | ResourceType_AWS_EC2_NetworkAcl
    | ResourceType_AWS_EC2_NetworkInterface
    | ResourceType_AWS_EC2_RouteTable
    | ResourceType_AWS_EC2_SecurityGroup
    | ResourceType_AWS_EC2_Subnet
    | ResourceType_AWS_CloudTrail_Trail
    | ResourceType_AWS_EC2_Volume
    | ResourceType_AWS_EC2_VPC
    | ResourceType_AWS_EC2_VPNConnection
    | ResourceType_AWS_EC2_VPNGateway
    | ResourceType_AWS_IAM_Group
    | ResourceType_AWS_IAM_Policy
    | ResourceType_AWS_IAM_Role
    | ResourceType_AWS_IAM_User
    | ResourceType_AWS_ACM_Certificate
    | ResourceType_AWS_RDS_DBInstance
    | ResourceType_AWS_RDS_DBSubnetGroup
    | ResourceType_AWS_RDS_DBSecurityGroup
    | ResourceType_AWS_RDS_DBSnapshot
    | ResourceType_AWS_RDS_EventSubscription
    | ResourceType_AWS_ElasticLoadBalancingV2_LoadBalancer
    | ResourceType_AWS_S3_Bucket
    | ResourceType_AWS_SSM_ManagedInstanceInventory
    | ResourceType_AWS_Redshift_Cluster
    | ResourceType_AWS_Redshift_ClusterSnapshot
    | ResourceType_AWS_Redshift_ClusterParameterGroup
    | ResourceType_AWS_Redshift_ClusterSecurityGroup
    | ResourceType_AWS_Redshift_ClusterSubnetGroup
    | ResourceType_AWS_Redshift_EventSubscription



resourceTypeDecoder : JD.Decoder ResourceType
resourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS_EC2_CustomerGateway" ->
                        JD.succeed ResourceType_AWS_EC2_CustomerGateway

                    "AWS_EC2_EIP" ->
                        JD.succeed ResourceType_AWS_EC2_EIP

                    "AWS_EC2_Host" ->
                        JD.succeed ResourceType_AWS_EC2_Host

                    "AWS_EC2_Instance" ->
                        JD.succeed ResourceType_AWS_EC2_Instance

                    "AWS_EC2_InternetGateway" ->
                        JD.succeed ResourceType_AWS_EC2_InternetGateway

                    "AWS_EC2_NetworkAcl" ->
                        JD.succeed ResourceType_AWS_EC2_NetworkAcl

                    "AWS_EC2_NetworkInterface" ->
                        JD.succeed ResourceType_AWS_EC2_NetworkInterface

                    "AWS_EC2_RouteTable" ->
                        JD.succeed ResourceType_AWS_EC2_RouteTable

                    "AWS_EC2_SecurityGroup" ->
                        JD.succeed ResourceType_AWS_EC2_SecurityGroup

                    "AWS_EC2_Subnet" ->
                        JD.succeed ResourceType_AWS_EC2_Subnet

                    "AWS_CloudTrail_Trail" ->
                        JD.succeed ResourceType_AWS_CloudTrail_Trail

                    "AWS_EC2_Volume" ->
                        JD.succeed ResourceType_AWS_EC2_Volume

                    "AWS_EC2_VPC" ->
                        JD.succeed ResourceType_AWS_EC2_VPC

                    "AWS_EC2_VPNConnection" ->
                        JD.succeed ResourceType_AWS_EC2_VPNConnection

                    "AWS_EC2_VPNGateway" ->
                        JD.succeed ResourceType_AWS_EC2_VPNGateway

                    "AWS_IAM_Group" ->
                        JD.succeed ResourceType_AWS_IAM_Group

                    "AWS_IAM_Policy" ->
                        JD.succeed ResourceType_AWS_IAM_Policy

                    "AWS_IAM_Role" ->
                        JD.succeed ResourceType_AWS_IAM_Role

                    "AWS_IAM_User" ->
                        JD.succeed ResourceType_AWS_IAM_User

                    "AWS_ACM_Certificate" ->
                        JD.succeed ResourceType_AWS_ACM_Certificate

                    "AWS_RDS_DBInstance" ->
                        JD.succeed ResourceType_AWS_RDS_DBInstance

                    "AWS_RDS_DBSubnetGroup" ->
                        JD.succeed ResourceType_AWS_RDS_DBSubnetGroup

                    "AWS_RDS_DBSecurityGroup" ->
                        JD.succeed ResourceType_AWS_RDS_DBSecurityGroup

                    "AWS_RDS_DBSnapshot" ->
                        JD.succeed ResourceType_AWS_RDS_DBSnapshot

                    "AWS_RDS_EventSubscription" ->
                        JD.succeed ResourceType_AWS_RDS_EventSubscription

                    "AWS_ElasticLoadBalancingV2_LoadBalancer" ->
                        JD.succeed ResourceType_AWS_ElasticLoadBalancingV2_LoadBalancer

                    "AWS_S3_Bucket" ->
                        JD.succeed ResourceType_AWS_S3_Bucket

                    "AWS_SSM_ManagedInstanceInventory" ->
                        JD.succeed ResourceType_AWS_SSM_ManagedInstanceInventory

                    "AWS_Redshift_Cluster" ->
                        JD.succeed ResourceType_AWS_Redshift_Cluster

                    "AWS_Redshift_ClusterSnapshot" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterSnapshot

                    "AWS_Redshift_ClusterParameterGroup" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterParameterGroup

                    "AWS_Redshift_ClusterSecurityGroup" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterSecurityGroup

                    "AWS_Redshift_ClusterSubnetGroup" ->
                        JD.succeed ResourceType_AWS_Redshift_ClusterSubnetGroup

                    "AWS_Redshift_EventSubscription" ->
                        JD.succeed ResourceType_AWS_Redshift_EventSubscription


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Defines which resources trigger an evaluation for an AWS Config rule. The scope can include one or more resource types, a combination of a tag key and value, or a combination of one resource type and one resource ID. Specify a scope to constrain which resources trigger an evaluation for a rule. Otherwise, evaluations for the rule are triggered when any resource in your recording group changes in configuration.</p>
-}
type alias Scope =
    { complianceResourceTypes : Maybe (List String)
    , tagKey : Maybe String
    , tagValue : Maybe String
    , complianceResourceId : Maybe String
    }



scopeDecoder : JD.Decoder Scope
scopeDecoder =
    JDP.decode Scope
        |> JDP.optional "complianceResourceTypes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "tagKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "tagValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "complianceResourceId" (JD.nullable JD.string) Nothing




{-| <p>Provides the AWS Config rule owner (AWS or customer), the rule identifier, and the events that trigger the evaluation of your AWS resources.</p>
-}
type alias Source =
    { owner : Owner
    , sourceIdentifier : String
    , sourceDetails : Maybe (List SourceDetail)
    }



sourceDecoder : JD.Decoder Source
sourceDecoder =
    JDP.decode Source
        |> JDP.required "owner" ownerDecoder
        |> JDP.required "sourceIdentifier" JD.string
        |> JDP.optional "sourceDetails" (JD.nullable (JD.list sourceDetailDecoder)) Nothing




{-| <p>Provides the source and the message types that trigger AWS Config to evaluate your AWS resources against a rule. It also provides the frequency with which you want AWS Config to run evaluations for the rule if the trigger type is periodic. You can specify the parameter values for <code>SourceDetail</code> only for custom rules. </p>
-}
type alias SourceDetail =
    { eventSource : Maybe EventSource
    , messageType : Maybe MessageType
    , maximumExecutionFrequency : Maybe MaximumExecutionFrequency
    }



sourceDetailDecoder : JD.Decoder SourceDetail
sourceDetailDecoder =
    JDP.decode SourceDetail
        |> JDP.optional "eventSource" (JD.nullable eventSourceDecoder) Nothing
        |> JDP.optional "messageType" (JD.nullable messageTypeDecoder) Nothing
        |> JDP.optional "maximumExecutionFrequency" (JD.nullable maximumExecutionFrequencyDecoder) Nothing




{-| Type of HTTP response from startConfigRulesEvaluation
-}
type alias StartConfigRulesEvaluationResponse =
    { 
    }



startConfigRulesEvaluationResponseDecoder : JD.Decoder StartConfigRulesEvaluationResponse
startConfigRulesEvaluationResponseDecoder =
    JDP.decode StartConfigRulesEvaluationResponse



{-| <p>The requested action is not valid.</p>
-}
type alias ValidationException =
    { 
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException



