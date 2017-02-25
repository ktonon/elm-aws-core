module AWS.Services.SES
    exposing
        ( config
        , cloneReceiptRuleSet
        , createConfigurationSet
        , createConfigurationSetEventDestination
        , createReceiptFilter
        , createReceiptRule
        , CreateReceiptRuleOptions
        , createReceiptRuleSet
        , deleteConfigurationSet
        , deleteConfigurationSetEventDestination
        , deleteIdentity
        , deleteIdentityPolicy
        , deleteReceiptFilter
        , deleteReceiptRule
        , deleteReceiptRuleSet
        , deleteVerifiedEmailAddress
        , describeActiveReceiptRuleSet
        , describeConfigurationSet
        , DescribeConfigurationSetOptions
        , describeReceiptRule
        , describeReceiptRuleSet
        , getIdentityDkimAttributes
        , getIdentityMailFromDomainAttributes
        , getIdentityNotificationAttributes
        , getIdentityPolicies
        , getIdentityVerificationAttributes
        , getSendQuota
        , getSendStatistics
        , listConfigurationSets
        , ListConfigurationSetsOptions
        , listIdentities
        , ListIdentitiesOptions
        , listIdentityPolicies
        , listReceiptFilters
        , listReceiptRuleSets
        , ListReceiptRuleSetsOptions
        , listVerifiedEmailAddresses
        , putIdentityPolicy
        , reorderReceiptRuleSet
        , sendBounce
        , SendBounceOptions
        , sendEmail
        , SendEmailOptions
        , sendRawEmail
        , SendRawEmailOptions
        , setActiveReceiptRuleSet
        , SetActiveReceiptRuleSetOptions
        , setIdentityDkimEnabled
        , setIdentityFeedbackForwardingEnabled
        , setIdentityHeadersInNotificationsEnabled
        , setIdentityMailFromDomain
        , SetIdentityMailFromDomainOptions
        , setIdentityNotificationTopic
        , SetIdentityNotificationTopicOptions
        , setReceiptRulePosition
        , SetReceiptRulePositionOptions
        , updateConfigurationSetEventDestination
        , updateReceiptRule
        , verifyDomainDkim
        , verifyDomainIdentity
        , verifyEmailAddress
        , verifyEmailIdentity
        , AddHeaderAction
        , AlreadyExistsException
        , BehaviorOnMXFailure(..)
        , Body
        , BounceAction
        , BounceType(..)
        , BouncedRecipientInfo
        , CannotDeleteException
        , CloneReceiptRuleSetResponse
        , CloudWatchDestination
        , CloudWatchDimensionConfiguration
        , ConfigurationSet
        , ConfigurationSetAlreadyExistsException
        , ConfigurationSetAttribute(..)
        , ConfigurationSetDoesNotExistException
        , Content
        , CreateConfigurationSetEventDestinationResponse
        , CreateConfigurationSetResponse
        , CreateReceiptFilterResponse
        , CreateReceiptRuleResponse
        , CreateReceiptRuleSetResponse
        , CustomMailFromStatus(..)
        , DeleteConfigurationSetEventDestinationResponse
        , DeleteConfigurationSetResponse
        , DeleteIdentityPolicyResponse
        , DeleteIdentityResponse
        , DeleteReceiptFilterResponse
        , DeleteReceiptRuleResponse
        , DeleteReceiptRuleSetResponse
        , DescribeActiveReceiptRuleSetResponse
        , DescribeConfigurationSetResponse
        , DescribeReceiptRuleResponse
        , DescribeReceiptRuleSetResponse
        , Destination
        , DimensionValueSource(..)
        , DsnAction(..)
        , EventDestination
        , EventDestinationAlreadyExistsException
        , EventDestinationDoesNotExistException
        , EventType(..)
        , ExtensionField
        , GetIdentityDkimAttributesResponse
        , GetIdentityMailFromDomainAttributesResponse
        , GetIdentityNotificationAttributesResponse
        , GetIdentityPoliciesResponse
        , GetIdentityVerificationAttributesResponse
        , GetSendQuotaResponse
        , GetSendStatisticsResponse
        , IdentityDkimAttributes
        , IdentityMailFromDomainAttributes
        , IdentityNotificationAttributes
        , IdentityType(..)
        , IdentityVerificationAttributes
        , InvalidCloudWatchDestinationException
        , InvalidConfigurationSetException
        , InvalidFirehoseDestinationException
        , InvalidLambdaFunctionException
        , InvalidPolicyException
        , InvalidS3ConfigurationException
        , InvalidSnsTopicException
        , InvocationType(..)
        , KinesisFirehoseDestination
        , LambdaAction
        , LimitExceededException
        , ListConfigurationSetsResponse
        , ListIdentitiesResponse
        , ListIdentityPoliciesResponse
        , ListReceiptFiltersResponse
        , ListReceiptRuleSetsResponse
        , ListVerifiedEmailAddressesResponse
        , MailFromDomainNotVerifiedException
        , Message
        , MessageDsn
        , MessageRejected
        , MessageTag
        , NotificationType(..)
        , PutIdentityPolicyResponse
        , RawMessage
        , ReceiptAction
        , ReceiptFilter
        , ReceiptFilterPolicy(..)
        , ReceiptIpFilter
        , ReceiptRule
        , ReceiptRuleSetMetadata
        , RecipientDsnFields
        , ReorderReceiptRuleSetResponse
        , RuleDoesNotExistException
        , RuleSetDoesNotExistException
        , S3Action
        , SNSAction
        , SNSActionEncoding(..)
        , SendBounceResponse
        , SendDataPoint
        , SendEmailResponse
        , SendRawEmailResponse
        , SetActiveReceiptRuleSetResponse
        , SetIdentityDkimEnabledResponse
        , SetIdentityFeedbackForwardingEnabledResponse
        , SetIdentityHeadersInNotificationsEnabledResponse
        , SetIdentityMailFromDomainResponse
        , SetIdentityNotificationTopicResponse
        , SetReceiptRulePositionResponse
        , StopAction
        , StopScope(..)
        , TlsPolicy(..)
        , UpdateConfigurationSetEventDestinationResponse
        , UpdateReceiptRuleResponse
        , VerificationStatus(..)
        , VerifyDomainDkimResponse
        , VerifyDomainIdentityResponse
        , VerifyEmailIdentityResponse
        , WorkmailAction
        )

{-| <fullname>Amazon Simple Email Service</fullname> <p> This is the API Reference for Amazon Simple Email Service (Amazon SES). This documentation is intended to be used in conjunction with the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html">Amazon SES Developer Guide</a>. </p> <note> <p> For a list of Amazon SES endpoints to use in service requests, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html">Regions and Amazon SES</a> in the Amazon SES Developer Guide. </p> </note>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [cloneReceiptRuleSet](#cloneReceiptRuleSet)
* [createConfigurationSet](#createConfigurationSet)
* [createConfigurationSetEventDestination](#createConfigurationSetEventDestination)
* [createReceiptFilter](#createReceiptFilter)
* [createReceiptRule](#createReceiptRule)
* [CreateReceiptRuleOptions](#CreateReceiptRuleOptions)
* [createReceiptRuleSet](#createReceiptRuleSet)
* [deleteConfigurationSet](#deleteConfigurationSet)
* [deleteConfigurationSetEventDestination](#deleteConfigurationSetEventDestination)
* [deleteIdentity](#deleteIdentity)
* [deleteIdentityPolicy](#deleteIdentityPolicy)
* [deleteReceiptFilter](#deleteReceiptFilter)
* [deleteReceiptRule](#deleteReceiptRule)
* [deleteReceiptRuleSet](#deleteReceiptRuleSet)
* [deleteVerifiedEmailAddress](#deleteVerifiedEmailAddress)
* [describeActiveReceiptRuleSet](#describeActiveReceiptRuleSet)
* [describeConfigurationSet](#describeConfigurationSet)
* [DescribeConfigurationSetOptions](#DescribeConfigurationSetOptions)
* [describeReceiptRule](#describeReceiptRule)
* [describeReceiptRuleSet](#describeReceiptRuleSet)
* [getIdentityDkimAttributes](#getIdentityDkimAttributes)
* [getIdentityMailFromDomainAttributes](#getIdentityMailFromDomainAttributes)
* [getIdentityNotificationAttributes](#getIdentityNotificationAttributes)
* [getIdentityPolicies](#getIdentityPolicies)
* [getIdentityVerificationAttributes](#getIdentityVerificationAttributes)
* [getSendQuota](#getSendQuota)
* [getSendStatistics](#getSendStatistics)
* [listConfigurationSets](#listConfigurationSets)
* [ListConfigurationSetsOptions](#ListConfigurationSetsOptions)
* [listIdentities](#listIdentities)
* [ListIdentitiesOptions](#ListIdentitiesOptions)
* [listIdentityPolicies](#listIdentityPolicies)
* [listReceiptFilters](#listReceiptFilters)
* [listReceiptRuleSets](#listReceiptRuleSets)
* [ListReceiptRuleSetsOptions](#ListReceiptRuleSetsOptions)
* [listVerifiedEmailAddresses](#listVerifiedEmailAddresses)
* [putIdentityPolicy](#putIdentityPolicy)
* [reorderReceiptRuleSet](#reorderReceiptRuleSet)
* [sendBounce](#sendBounce)
* [SendBounceOptions](#SendBounceOptions)
* [sendEmail](#sendEmail)
* [SendEmailOptions](#SendEmailOptions)
* [sendRawEmail](#sendRawEmail)
* [SendRawEmailOptions](#SendRawEmailOptions)
* [setActiveReceiptRuleSet](#setActiveReceiptRuleSet)
* [SetActiveReceiptRuleSetOptions](#SetActiveReceiptRuleSetOptions)
* [setIdentityDkimEnabled](#setIdentityDkimEnabled)
* [setIdentityFeedbackForwardingEnabled](#setIdentityFeedbackForwardingEnabled)
* [setIdentityHeadersInNotificationsEnabled](#setIdentityHeadersInNotificationsEnabled)
* [setIdentityMailFromDomain](#setIdentityMailFromDomain)
* [SetIdentityMailFromDomainOptions](#SetIdentityMailFromDomainOptions)
* [setIdentityNotificationTopic](#setIdentityNotificationTopic)
* [SetIdentityNotificationTopicOptions](#SetIdentityNotificationTopicOptions)
* [setReceiptRulePosition](#setReceiptRulePosition)
* [SetReceiptRulePositionOptions](#SetReceiptRulePositionOptions)
* [updateConfigurationSetEventDestination](#updateConfigurationSetEventDestination)
* [updateReceiptRule](#updateReceiptRule)
* [verifyDomainDkim](#verifyDomainDkim)
* [verifyDomainIdentity](#verifyDomainIdentity)
* [verifyEmailAddress](#verifyEmailAddress)
* [verifyEmailIdentity](#verifyEmailIdentity)


@docs cloneReceiptRuleSet,createConfigurationSet,createConfigurationSetEventDestination,createReceiptFilter,createReceiptRule,CreateReceiptRuleOptions,createReceiptRuleSet,deleteConfigurationSet,deleteConfigurationSetEventDestination,deleteIdentity,deleteIdentityPolicy,deleteReceiptFilter,deleteReceiptRule,deleteReceiptRuleSet,deleteVerifiedEmailAddress,describeActiveReceiptRuleSet,describeConfigurationSet,DescribeConfigurationSetOptions,describeReceiptRule,describeReceiptRuleSet,getIdentityDkimAttributes,getIdentityMailFromDomainAttributes,getIdentityNotificationAttributes,getIdentityPolicies,getIdentityVerificationAttributes,getSendQuota,getSendStatistics,listConfigurationSets,ListConfigurationSetsOptions,listIdentities,ListIdentitiesOptions,listIdentityPolicies,listReceiptFilters,listReceiptRuleSets,ListReceiptRuleSetsOptions,listVerifiedEmailAddresses,putIdentityPolicy,reorderReceiptRuleSet,sendBounce,SendBounceOptions,sendEmail,SendEmailOptions,sendRawEmail,SendRawEmailOptions,setActiveReceiptRuleSet,SetActiveReceiptRuleSetOptions,setIdentityDkimEnabled,setIdentityFeedbackForwardingEnabled,setIdentityHeadersInNotificationsEnabled,setIdentityMailFromDomain,SetIdentityMailFromDomainOptions,setIdentityNotificationTopic,SetIdentityNotificationTopicOptions,setReceiptRulePosition,SetReceiptRulePositionOptions,updateConfigurationSetEventDestination,updateReceiptRule,verifyDomainDkim,verifyDomainIdentity,verifyEmailAddress,verifyEmailIdentity

## Responses

* [CloneReceiptRuleSetResponse](#CloneReceiptRuleSetResponse)
* [CreateConfigurationSetEventDestinationResponse](#CreateConfigurationSetEventDestinationResponse)
* [CreateConfigurationSetResponse](#CreateConfigurationSetResponse)
* [CreateReceiptFilterResponse](#CreateReceiptFilterResponse)
* [CreateReceiptRuleResponse](#CreateReceiptRuleResponse)
* [CreateReceiptRuleSetResponse](#CreateReceiptRuleSetResponse)
* [DeleteConfigurationSetEventDestinationResponse](#DeleteConfigurationSetEventDestinationResponse)
* [DeleteConfigurationSetResponse](#DeleteConfigurationSetResponse)
* [DeleteIdentityPolicyResponse](#DeleteIdentityPolicyResponse)
* [DeleteIdentityResponse](#DeleteIdentityResponse)
* [DeleteReceiptFilterResponse](#DeleteReceiptFilterResponse)
* [DeleteReceiptRuleResponse](#DeleteReceiptRuleResponse)
* [DeleteReceiptRuleSetResponse](#DeleteReceiptRuleSetResponse)
* [DescribeActiveReceiptRuleSetResponse](#DescribeActiveReceiptRuleSetResponse)
* [DescribeConfigurationSetResponse](#DescribeConfigurationSetResponse)
* [DescribeReceiptRuleResponse](#DescribeReceiptRuleResponse)
* [DescribeReceiptRuleSetResponse](#DescribeReceiptRuleSetResponse)
* [GetIdentityDkimAttributesResponse](#GetIdentityDkimAttributesResponse)
* [GetIdentityMailFromDomainAttributesResponse](#GetIdentityMailFromDomainAttributesResponse)
* [GetIdentityNotificationAttributesResponse](#GetIdentityNotificationAttributesResponse)
* [GetIdentityPoliciesResponse](#GetIdentityPoliciesResponse)
* [GetIdentityVerificationAttributesResponse](#GetIdentityVerificationAttributesResponse)
* [GetSendQuotaResponse](#GetSendQuotaResponse)
* [GetSendStatisticsResponse](#GetSendStatisticsResponse)
* [ListConfigurationSetsResponse](#ListConfigurationSetsResponse)
* [ListIdentitiesResponse](#ListIdentitiesResponse)
* [ListIdentityPoliciesResponse](#ListIdentityPoliciesResponse)
* [ListReceiptFiltersResponse](#ListReceiptFiltersResponse)
* [ListReceiptRuleSetsResponse](#ListReceiptRuleSetsResponse)
* [ListVerifiedEmailAddressesResponse](#ListVerifiedEmailAddressesResponse)
* [PutIdentityPolicyResponse](#PutIdentityPolicyResponse)
* [ReorderReceiptRuleSetResponse](#ReorderReceiptRuleSetResponse)
* [SendBounceResponse](#SendBounceResponse)
* [SendEmailResponse](#SendEmailResponse)
* [SendRawEmailResponse](#SendRawEmailResponse)
* [SetActiveReceiptRuleSetResponse](#SetActiveReceiptRuleSetResponse)
* [SetIdentityDkimEnabledResponse](#SetIdentityDkimEnabledResponse)
* [SetIdentityFeedbackForwardingEnabledResponse](#SetIdentityFeedbackForwardingEnabledResponse)
* [SetIdentityHeadersInNotificationsEnabledResponse](#SetIdentityHeadersInNotificationsEnabledResponse)
* [SetIdentityMailFromDomainResponse](#SetIdentityMailFromDomainResponse)
* [SetIdentityNotificationTopicResponse](#SetIdentityNotificationTopicResponse)
* [SetReceiptRulePositionResponse](#SetReceiptRulePositionResponse)
* [UpdateConfigurationSetEventDestinationResponse](#UpdateConfigurationSetEventDestinationResponse)
* [UpdateReceiptRuleResponse](#UpdateReceiptRuleResponse)
* [VerifyDomainDkimResponse](#VerifyDomainDkimResponse)
* [VerifyDomainIdentityResponse](#VerifyDomainIdentityResponse)
* [VerifyEmailIdentityResponse](#VerifyEmailIdentityResponse)


@docs CloneReceiptRuleSetResponse,CreateConfigurationSetEventDestinationResponse,CreateConfigurationSetResponse,CreateReceiptFilterResponse,CreateReceiptRuleResponse,CreateReceiptRuleSetResponse,DeleteConfigurationSetEventDestinationResponse,DeleteConfigurationSetResponse,DeleteIdentityPolicyResponse,DeleteIdentityResponse,DeleteReceiptFilterResponse,DeleteReceiptRuleResponse,DeleteReceiptRuleSetResponse,DescribeActiveReceiptRuleSetResponse,DescribeConfigurationSetResponse,DescribeReceiptRuleResponse,DescribeReceiptRuleSetResponse,GetIdentityDkimAttributesResponse,GetIdentityMailFromDomainAttributesResponse,GetIdentityNotificationAttributesResponse,GetIdentityPoliciesResponse,GetIdentityVerificationAttributesResponse,GetSendQuotaResponse,GetSendStatisticsResponse,ListConfigurationSetsResponse,ListIdentitiesResponse,ListIdentityPoliciesResponse,ListReceiptFiltersResponse,ListReceiptRuleSetsResponse,ListVerifiedEmailAddressesResponse,PutIdentityPolicyResponse,ReorderReceiptRuleSetResponse,SendBounceResponse,SendEmailResponse,SendRawEmailResponse,SetActiveReceiptRuleSetResponse,SetIdentityDkimEnabledResponse,SetIdentityFeedbackForwardingEnabledResponse,SetIdentityHeadersInNotificationsEnabledResponse,SetIdentityMailFromDomainResponse,SetIdentityNotificationTopicResponse,SetReceiptRulePositionResponse,UpdateConfigurationSetEventDestinationResponse,UpdateReceiptRuleResponse,VerifyDomainDkimResponse,VerifyDomainIdentityResponse,VerifyEmailIdentityResponse

## Records

* [AddHeaderAction](#AddHeaderAction)
* [Body](#Body)
* [BounceAction](#BounceAction)
* [BouncedRecipientInfo](#BouncedRecipientInfo)
* [CloudWatchDestination](#CloudWatchDestination)
* [CloudWatchDimensionConfiguration](#CloudWatchDimensionConfiguration)
* [ConfigurationSet](#ConfigurationSet)
* [Content](#Content)
* [Destination](#Destination)
* [EventDestination](#EventDestination)
* [ExtensionField](#ExtensionField)
* [IdentityDkimAttributes](#IdentityDkimAttributes)
* [IdentityMailFromDomainAttributes](#IdentityMailFromDomainAttributes)
* [IdentityNotificationAttributes](#IdentityNotificationAttributes)
* [IdentityVerificationAttributes](#IdentityVerificationAttributes)
* [KinesisFirehoseDestination](#KinesisFirehoseDestination)
* [LambdaAction](#LambdaAction)
* [Message](#Message)
* [MessageDsn](#MessageDsn)
* [MessageTag](#MessageTag)
* [RawMessage](#RawMessage)
* [ReceiptAction](#ReceiptAction)
* [ReceiptFilter](#ReceiptFilter)
* [ReceiptIpFilter](#ReceiptIpFilter)
* [ReceiptRule](#ReceiptRule)
* [ReceiptRuleSetMetadata](#ReceiptRuleSetMetadata)
* [RecipientDsnFields](#RecipientDsnFields)
* [S3Action](#S3Action)
* [SNSAction](#SNSAction)
* [SendDataPoint](#SendDataPoint)
* [StopAction](#StopAction)
* [WorkmailAction](#WorkmailAction)


@docs AddHeaderAction,Body,BounceAction,BouncedRecipientInfo,CloudWatchDestination,CloudWatchDimensionConfiguration,ConfigurationSet,Content,Destination,EventDestination,ExtensionField,IdentityDkimAttributes,IdentityMailFromDomainAttributes,IdentityNotificationAttributes,IdentityVerificationAttributes,KinesisFirehoseDestination,LambdaAction,Message,MessageDsn,MessageTag,RawMessage,ReceiptAction,ReceiptFilter,ReceiptIpFilter,ReceiptRule,ReceiptRuleSetMetadata,RecipientDsnFields,S3Action,SNSAction,SendDataPoint,StopAction,WorkmailAction

## Unions

* [BehaviorOnMXFailure](#BehaviorOnMXFailure)
* [BounceType](#BounceType)
* [ConfigurationSetAttribute](#ConfigurationSetAttribute)
* [CustomMailFromStatus](#CustomMailFromStatus)
* [DimensionValueSource](#DimensionValueSource)
* [DsnAction](#DsnAction)
* [EventType](#EventType)
* [IdentityType](#IdentityType)
* [InvocationType](#InvocationType)
* [NotificationType](#NotificationType)
* [ReceiptFilterPolicy](#ReceiptFilterPolicy)
* [SNSActionEncoding](#SNSActionEncoding)
* [StopScope](#StopScope)
* [TlsPolicy](#TlsPolicy)
* [VerificationStatus](#VerificationStatus)


@docs BehaviorOnMXFailure,BounceType,ConfigurationSetAttribute,CustomMailFromStatus,DimensionValueSource,DsnAction,EventType,IdentityType,InvocationType,NotificationType,ReceiptFilterPolicy,SNSActionEncoding,StopScope,TlsPolicy,VerificationStatus

## Exceptions

* [AlreadyExistsException](#AlreadyExistsException)
* [CannotDeleteException](#CannotDeleteException)
* [ConfigurationSetAlreadyExistsException](#ConfigurationSetAlreadyExistsException)
* [ConfigurationSetDoesNotExistException](#ConfigurationSetDoesNotExistException)
* [EventDestinationAlreadyExistsException](#EventDestinationAlreadyExistsException)
* [EventDestinationDoesNotExistException](#EventDestinationDoesNotExistException)
* [InvalidCloudWatchDestinationException](#InvalidCloudWatchDestinationException)
* [InvalidConfigurationSetException](#InvalidConfigurationSetException)
* [InvalidFirehoseDestinationException](#InvalidFirehoseDestinationException)
* [InvalidLambdaFunctionException](#InvalidLambdaFunctionException)
* [InvalidPolicyException](#InvalidPolicyException)
* [InvalidS3ConfigurationException](#InvalidS3ConfigurationException)
* [InvalidSnsTopicException](#InvalidSnsTopicException)
* [LimitExceededException](#LimitExceededException)
* [MailFromDomainNotVerifiedException](#MailFromDomainNotVerifiedException)
* [MessageRejected](#MessageRejected)
* [RuleDoesNotExistException](#RuleDoesNotExistException)
* [RuleSetDoesNotExistException](#RuleSetDoesNotExistException)


@docs AlreadyExistsException,CannotDeleteException,ConfigurationSetAlreadyExistsException,ConfigurationSetDoesNotExistException,EventDestinationAlreadyExistsException,EventDestinationDoesNotExistException,InvalidCloudWatchDestinationException,InvalidConfigurationSetException,InvalidFirehoseDestinationException,InvalidLambdaFunctionException,InvalidPolicyException,InvalidS3ConfigurationException,InvalidSnsTopicException,LimitExceededException,MailFromDomainNotVerifiedException,MessageRejected,RuleDoesNotExistException,RuleSetDoesNotExistException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "email"
        "2010-12-01"
        "undefined"
        "AWSEMAIL_20101201."
        "email.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates a receipt rule set by cloning an existing one. All receipt rules and configurations are copied to the new receipt rule set and are completely independent of the source rule set.</p> <p>For information about setting up rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`
* `originalRuleSetName` __:__ `String`


-}
cloneReceiptRuleSet :
    String
    -> String
    -> AWS.Request CloneReceiptRuleSetResponse
cloneReceiptRuleSet ruleSetName originalRuleSetName =
    AWS.Http.unsignedRequest
        "CloneReceiptRuleSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cloneReceiptRuleSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a configuration set.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `configurationSet` __:__ `ConfigurationSet`


-}
createConfigurationSet :
    ConfigurationSet
    -> AWS.Request CreateConfigurationSetResponse
createConfigurationSet configurationSet =
    AWS.Http.unsignedRequest
        "CreateConfigurationSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createConfigurationSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a configuration set event destination.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.</p> </note> <p>An event destination is the AWS service to which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `configurationSetName` __:__ `String`
* `eventDestination` __:__ `EventDestination`


-}
createConfigurationSetEventDestination :
    String
    -> EventDestination
    -> AWS.Request CreateConfigurationSetEventDestinationResponse
createConfigurationSetEventDestination configurationSetName eventDestination =
    AWS.Http.unsignedRequest
        "CreateConfigurationSetEventDestination"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createConfigurationSetEventDestinationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new IP address filter.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `filter` __:__ `ReceiptFilter`


-}
createReceiptFilter :
    ReceiptFilter
    -> AWS.Request CreateReceiptFilterResponse
createReceiptFilter filter =
    AWS.Http.unsignedRequest
        "CreateReceiptFilter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReceiptFilterResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a receipt rule.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`
* `rule` __:__ `ReceiptRule`


-}
createReceiptRule :
    String
    -> ReceiptRule
    -> (CreateReceiptRuleOptions -> CreateReceiptRuleOptions)
    -> AWS.Request CreateReceiptRuleResponse
createReceiptRule ruleSetName rule setOptions =
  let
    options = setOptions (CreateReceiptRuleOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateReceiptRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReceiptRuleResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createReceiptRule request
-}
type alias CreateReceiptRuleOptions =
    { after : Maybe String
    }



{-| <p>Creates an empty receipt rule set.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`


-}
createReceiptRuleSet :
    String
    -> AWS.Request CreateReceiptRuleSetResponse
createReceiptRuleSet ruleSetName =
    AWS.Http.unsignedRequest
        "CreateReceiptRuleSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReceiptRuleSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a configuration set.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `configurationSetName` __:__ `String`


-}
deleteConfigurationSet :
    String
    -> AWS.Request DeleteConfigurationSetResponse
deleteConfigurationSet configurationSetName =
    AWS.Http.unsignedRequest
        "DeleteConfigurationSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteConfigurationSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a configuration set event destination.</p> <p>Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `configurationSetName` __:__ `String`
* `eventDestinationName` __:__ `String`


-}
deleteConfigurationSetEventDestination :
    String
    -> String
    -> AWS.Request DeleteConfigurationSetEventDestinationResponse
deleteConfigurationSetEventDestination configurationSetName eventDestinationName =
    AWS.Http.unsignedRequest
        "DeleteConfigurationSetEventDestination"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteConfigurationSetEventDestinationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified identity (an email address or a domain) from the list of verified identities.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `identity` __:__ `String`


-}
deleteIdentity :
    String
    -> AWS.Request DeleteIdentityResponse
deleteIdentity identity =
    AWS.Http.unsignedRequest
        "DeleteIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteIdentityResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified sending authorization policy for the given identity (an email address or a domain). This API returns successfully even if a policy with the specified name does not exist.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `identity` __:__ `String`
* `policyName` __:__ `String`


-}
deleteIdentityPolicy :
    String
    -> String
    -> AWS.Request DeleteIdentityPolicyResponse
deleteIdentityPolicy identity policyName =
    AWS.Http.unsignedRequest
        "DeleteIdentityPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteIdentityPolicyResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified IP address filter.</p> <p>For information about managing IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `filterName` __:__ `String`


-}
deleteReceiptFilter :
    String
    -> AWS.Request DeleteReceiptFilterResponse
deleteReceiptFilter filterName =
    AWS.Http.unsignedRequest
        "DeleteReceiptFilter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReceiptFilterResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified receipt rule.</p> <p>For information about managing receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`
* `ruleName` __:__ `String`


-}
deleteReceiptRule :
    String
    -> String
    -> AWS.Request DeleteReceiptRuleResponse
deleteReceiptRule ruleSetName ruleName =
    AWS.Http.unsignedRequest
        "DeleteReceiptRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReceiptRuleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified receipt rule set and all of the receipt rules it contains.</p> <note> <p>The currently active rule set cannot be deleted.</p> </note> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`


-}
deleteReceiptRuleSet :
    String
    -> AWS.Request DeleteReceiptRuleSetResponse
deleteReceiptRuleSet ruleSetName =
    AWS.Http.unsignedRequest
        "DeleteReceiptRuleSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReceiptRuleSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified email address from the list of verified addresses.</p> <important> <p>The DeleteVerifiedEmailAddress action is deprecated as of the May 15, 2012 release of Domain Verification. The DeleteIdentity action is now preferred.</p> </important> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `emailAddress` __:__ `String`


-}
deleteVerifiedEmailAddress :
    String
    -> AWS.Request ()
deleteVerifiedEmailAddress emailAddress =
    AWS.Http.unsignedRequest
        "DeleteVerifiedEmailAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Returns the metadata and receipt rules for the receipt rule set that is currently active.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
describeActiveReceiptRuleSet :
    AWS.Request DescribeActiveReceiptRuleSetResponse
describeActiveReceiptRuleSet =
    AWS.Http.unsignedRequest
        "DescribeActiveReceiptRuleSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeActiveReceiptRuleSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the details of the specified configuration set.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `configurationSetName` __:__ `String`


-}
describeConfigurationSet :
    String
    -> (DescribeConfigurationSetOptions -> DescribeConfigurationSetOptions)
    -> AWS.Request DescribeConfigurationSetResponse
describeConfigurationSet configurationSetName setOptions =
  let
    options = setOptions (DescribeConfigurationSetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConfigurationSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConfigurationSetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConfigurationSet request
-}
type alias DescribeConfigurationSetOptions =
    { configurationSetAttributeNames : Maybe (List ConfigurationSetAttribute)
    }



{-| <p>Returns the details of the specified receipt rule.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`
* `ruleName` __:__ `String`


-}
describeReceiptRule :
    String
    -> String
    -> AWS.Request DescribeReceiptRuleResponse
describeReceiptRule ruleSetName ruleName =
    AWS.Http.unsignedRequest
        "DescribeReceiptRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReceiptRuleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the details of the specified receipt rule set.</p> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`


-}
describeReceiptRuleSet :
    String
    -> AWS.Request DescribeReceiptRuleSetResponse
describeReceiptRuleSet ruleSetName =
    AWS.Http.unsignedRequest
        "DescribeReceiptRuleSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReceiptRuleSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the current status of Easy DKIM signing for an entity. For domain name identities, this action also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published.</p> <p>This action takes a list of identities as input and returns the following information for each:</p> <ul> <li> <p>Whether Easy DKIM signing is enabled or disabled.</p> </li> <li> <p>A set of DKIM tokens that represent the identity. If the identity is an email address, the tokens represent the domain of that address.</p> </li> <li> <p>Whether Amazon SES has successfully verified the DKIM tokens published in the domain's DNS. This information is only returned for domain name identities, not for email addresses.</p> </li> </ul> <p>This action is throttled at one request per second and can only get DKIM attributes for up to 100 identities at a time.</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>

__Required Parameters__

* `identities` __:__ `(List String)`


-}
getIdentityDkimAttributes :
    (List String)
    -> AWS.Request GetIdentityDkimAttributesResponse
getIdentityDkimAttributes identities =
    AWS.Http.unsignedRequest
        "GetIdentityDkimAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIdentityDkimAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the custom MAIL FROM attributes for a list of identities (email addresses and/or domains).</p> <p>This action is throttled at one request per second and can only get custom MAIL FROM attributes for up to 100 identities at a time.</p>

__Required Parameters__

* `identities` __:__ `(List String)`


-}
getIdentityMailFromDomainAttributes :
    (List String)
    -> AWS.Request GetIdentityMailFromDomainAttributesResponse
getIdentityMailFromDomainAttributes identities =
    AWS.Http.unsignedRequest
        "GetIdentityMailFromDomainAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIdentityMailFromDomainAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes.</p> <p>This action is throttled at one request per second and can only get notification attributes for up to 100 identities at a time.</p> <p>For more information about using notifications with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

__Required Parameters__

* `identities` __:__ `(List String)`


-}
getIdentityNotificationAttributes :
    (List String)
    -> AWS.Request GetIdentityNotificationAttributesResponse
getIdentityNotificationAttributes identities =
    AWS.Http.unsignedRequest
        "GetIdentityNotificationAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIdentityNotificationAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the requested sending authorization policies for the given identity (an email address or a domain). The policies are returned as a map of policy names to policy contents. You can retrieve a maximum of 20 policies at a time.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `identity` __:__ `String`
* `policyNames` __:__ `(List String)`


-}
getIdentityPolicies :
    String
    -> (List String)
    -> AWS.Request GetIdentityPoliciesResponse
getIdentityPolicies identity policyNames =
    AWS.Http.unsignedRequest
        "GetIdentityPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIdentityPoliciesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity.</p> <p>This action is throttled at one request per second and can only get verification attributes for up to 100 identities at a time.</p>

__Required Parameters__

* `identities` __:__ `(List String)`


-}
getIdentityVerificationAttributes :
    (List String)
    -> AWS.Request GetIdentityVerificationAttributesResponse
getIdentityVerificationAttributes identities =
    AWS.Http.unsignedRequest
        "GetIdentityVerificationAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIdentityVerificationAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the user's current sending limits.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
getSendQuota :
    AWS.Request GetSendQuotaResponse
getSendQuota =
    AWS.Http.unsignedRequest
        "GetSendQuota"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSendQuotaResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the user's sending statistics. The result is a list of data points, representing the last two weeks of sending activity.</p> <p>Each data point in the list contains statistics for a 15-minute interval.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
getSendStatistics :
    AWS.Request GetSendStatisticsResponse
getSendStatistics =
    AWS.Http.unsignedRequest
        "GetSendStatistics"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSendStatisticsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the configuration sets associated with your AWS account.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second and can return up to 50 configuration sets at a time.</p>

__Required Parameters__



-}
listConfigurationSets :
    (ListConfigurationSetsOptions -> ListConfigurationSetsOptions)
    -> AWS.Request ListConfigurationSetsResponse
listConfigurationSets setOptions =
  let
    options = setOptions (ListConfigurationSetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListConfigurationSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listConfigurationSetsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listConfigurationSets request
-}
type alias ListConfigurationSetsOptions =
    { nextToken : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Returns a list containing all of the identities (email addresses and domains) for your AWS account, regardless of verification status.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
listIdentities :
    (ListIdentitiesOptions -> ListIdentitiesOptions)
    -> AWS.Request ListIdentitiesResponse
listIdentities setOptions =
  let
    options = setOptions (ListIdentitiesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListIdentities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listIdentitiesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listIdentities request
-}
type alias ListIdentitiesOptions =
    { identityType : Maybe IdentityType
    , nextToken : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain). This API returns only a list. If you want the actual policy content, you can use <code>GetIdentityPolicies</code>.</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `identity` __:__ `String`


-}
listIdentityPolicies :
    String
    -> AWS.Request ListIdentityPoliciesResponse
listIdentityPolicies identity =
    AWS.Http.unsignedRequest
        "ListIdentityPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listIdentityPoliciesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the IP address filters associated with your AWS account.</p> <p>For information about managing IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-ip-filters.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
listReceiptFilters :
    AWS.Request ListReceiptFiltersResponse
listReceiptFilters =
    AWS.Http.unsignedRequest
        "ListReceiptFilters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listReceiptFiltersResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the receipt rule sets that exist under your AWS account. If there are additional receipt rule sets to be retrieved, you will receive a <code>NextToken</code> that you can provide to the next call to <code>ListReceiptRuleSets</code> to retrieve the additional entries.</p> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
listReceiptRuleSets :
    (ListReceiptRuleSetsOptions -> ListReceiptRuleSetsOptions)
    -> AWS.Request ListReceiptRuleSetsResponse
listReceiptRuleSets setOptions =
  let
    options = setOptions (ListReceiptRuleSetsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListReceiptRuleSets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listReceiptRuleSetsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listReceiptRuleSets request
-}
type alias ListReceiptRuleSetsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list containing all of the email addresses that have been verified.</p> <important> <p>The ListVerifiedEmailAddresses action is deprecated as of the May 15, 2012 release of Domain Verification. The ListIdentities action is now preferred.</p> </important> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
listVerifiedEmailAddresses :
    AWS.Request ListVerifiedEmailAddressesResponse
listVerifiedEmailAddresses =
    AWS.Http.unsignedRequest
        "ListVerifiedEmailAddresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listVerifiedEmailAddressesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Adds or updates a sending authorization policy for the specified identity (an email address or a domain).</p> <note> <p>This API is for the identity owner only. If you have not verified the identity, this API will return an error.</p> </note> <p>Sending authorization is a feature that enables an identity owner to authorize other senders to use its identities. For information about using sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `identity` __:__ `String`
* `policyName` __:__ `String`
* `policy` __:__ `String`


-}
putIdentityPolicy :
    String
    -> String
    -> String
    -> AWS.Request PutIdentityPolicyResponse
putIdentityPolicy identity policyName policy =
    AWS.Http.unsignedRequest
        "PutIdentityPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putIdentityPolicyResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Reorders the receipt rules within a receipt rule set.</p> <note> <p>All of the rules in the rule set must be represented in this request. That is, this API will return an error if the reorder request doesn't explicitly position all of the rules.</p> </note> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`
* `ruleNames` __:__ `(List String)`


-}
reorderReceiptRuleSet :
    String
    -> (List String)
    -> AWS.Request ReorderReceiptRuleSetResponse
reorderReceiptRuleSet ruleSetName ruleNames =
    AWS.Http.unsignedRequest
        "ReorderReceiptRuleSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reorderReceiptRuleSetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Generates and sends a bounce message to the sender of an email you received through Amazon SES. You can only use this API on an email up to 24 hours after you receive it.</p> <note> <p>You cannot use this API to send generic bounces for mail that was not received by Amazon SES.</p> </note> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `originalMessageId` __:__ `String`
* `bounceSender` __:__ `String`
* `bouncedRecipientInfoList` __:__ `(List BouncedRecipientInfo)`


-}
sendBounce :
    String
    -> String
    -> (List BouncedRecipientInfo)
    -> (SendBounceOptions -> SendBounceOptions)
    -> AWS.Request SendBounceResponse
sendBounce originalMessageId bounceSender bouncedRecipientInfoList setOptions =
  let
    options = setOptions (SendBounceOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SendBounce"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendBounceResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a sendBounce request
-}
type alias SendBounceOptions =
    { explanation : Maybe String
    , messageDsn : Maybe MessageDsn
    , bounceSenderArn : Maybe String
    }



{-| <p>Composes an email message based on input data, and then immediately queues the message for sending.</p> <p>There are several important points to know about <code>SendEmail</code>:</p> <ul> <li> <p>You can only send email from verified email addresses and domains; otherwise, you will get an "Email address not verified" error. If your account is still in the Amazon SES sandbox, you must also verify every recipient email address except for the recipients provided by the Amazon SES mailbox simulator. For more information, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p> </li> <li> <p>The total size of the message cannot exceed 10 MB. This includes any attachments that are part of the message.</p> </li> <li> <p>Amazon SES has a limit on the total number of recipients per message. The combined number of To:, CC: and BCC: email addresses cannot exceed 50. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call Amazon SES repeatedly to send the message to each group.</p> </li> <li> <p>For every message that you send, the total number of recipients (To:, CC: and BCC:) is counted against your sending quota - the maximum number of emails you can send in a 24-hour period. For information about your sending quota, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Amazon SES Developer Guide</a>.</p> </li> </ul>

__Required Parameters__

* `source` __:__ `String`
* `destination` __:__ `Destination`
* `message` __:__ `Message`


-}
sendEmail :
    String
    -> Destination
    -> Message
    -> (SendEmailOptions -> SendEmailOptions)
    -> AWS.Request SendEmailResponse
sendEmail source destination message setOptions =
  let
    options = setOptions (SendEmailOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SendEmail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendEmailResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a sendEmail request
-}
type alias SendEmailOptions =
    { replyToAddresses : Maybe (List String)
    , returnPath : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    }



{-| <p>Sends an email message, with header and content specified by the client. The <code>SendRawEmail</code> action is useful for sending multipart MIME emails. The raw text of the message must comply with Internet email standards; otherwise, the message cannot be sent. </p> <p>There are several important points to know about <code>SendRawEmail</code>:</p> <ul> <li> <p>You can only send email from verified email addresses and domains; otherwise, you will get an "Email address not verified" error. If your account is still in the Amazon SES sandbox, you must also verify every recipient email address except for the recipients provided by the Amazon SES mailbox simulator. For more information, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p> </li> <li> <p>The total size of the message cannot exceed 10 MB. This includes any attachments that are part of the message.</p> </li> <li> <p>Amazon SES has a limit on the total number of recipients per message. The combined number of To:, CC: and BCC: email addresses cannot exceed 50. If you need to send an email message to a larger audience, you can divide your recipient list into groups of 50 or fewer, and then call Amazon SES repeatedly to send the message to each group.</p> </li> <li> <p>The To:, CC:, and BCC: headers in the raw message can contain a group list. Note that each recipient in a group list counts towards the 50-recipient limit.</p> </li> <li> <p>Amazon SES overrides any Message-ID and Date headers you provide.</p> </li> <li> <p>For every message that you send, the total number of recipients (To:, CC: and BCC:) is counted against your sending quota - the maximum number of emails you can send in a 24-hour period. For information about your sending quota, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/manage-sending-limits.html">Amazon SES Developer Guide</a>.</p> </li> <li> <p>If you are using sending authorization to send on behalf of another user, <code>SendRawEmail</code> enables you to specify the cross-account identity for the email's "Source," "From," and "Return-Path" parameters in one of two ways: you can pass optional parameters <code>SourceArn</code>, <code>FromArn</code>, and/or <code>ReturnPathArn</code> to the API, or you can include the following X-headers in the header of your raw email:</p> <ul> <li> <p> <code>X-SES-SOURCE-ARN</code> </p> </li> <li> <p> <code>X-SES-FROM-ARN</code> </p> </li> <li> <p> <code>X-SES-RETURN-PATH-ARN</code> </p> </li> </ul> <important> <p>Do not include these X-headers in the DKIM signature, because they are removed by Amazon SES before sending the email.</p> </important> <p>For the most common sending authorization use case, we recommend that you specify the <code>SourceIdentityArn</code> and do not specify either the <code>FromIdentityArn</code> or <code>ReturnPathIdentityArn</code>. (The same note applies to the corresponding X-headers.) If you only specify the <code>SourceIdentityArn</code>, Amazon SES will simply set the "From" address and the "Return Path" address to the identity specified in <code>SourceIdentityArn</code>. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> </li> </ul>

__Required Parameters__

* `rawMessage` __:__ `RawMessage`


-}
sendRawEmail :
    RawMessage
    -> (SendRawEmailOptions -> SendRawEmailOptions)
    -> AWS.Request SendRawEmailResponse
sendRawEmail rawMessage setOptions =
  let
    options = setOptions (SendRawEmailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SendRawEmail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendRawEmailResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a sendRawEmail request
-}
type alias SendRawEmailOptions =
    { source : Maybe String
    , destinations : Maybe (List String)
    , fromArn : Maybe String
    , sourceArn : Maybe String
    , returnPathArn : Maybe String
    , tags : Maybe (List MessageTag)
    , configurationSetName : Maybe String
    }



{-| <p>Sets the specified receipt rule set as the active receipt rule set.</p> <note> <p>To disable your email-receiving through Amazon SES completely, you can call this API with RuleSetName set to null.</p> </note> <p>For information about managing receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rule-sets.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__



-}
setActiveReceiptRuleSet :
    (SetActiveReceiptRuleSetOptions -> SetActiveReceiptRuleSetOptions)
    -> AWS.Request SetActiveReceiptRuleSetResponse
setActiveReceiptRuleSet setOptions =
  let
    options = setOptions (SetActiveReceiptRuleSetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetActiveReceiptRuleSet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setActiveReceiptRuleSetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a setActiveReceiptRuleSet request
-}
type alias SetActiveReceiptRuleSetOptions =
    { ruleSetName : Maybe String
    }



{-| <p>Enables or disables Easy DKIM signing of email sent from an identity:</p> <ul> <li> <p>If Easy DKIM signing is enabled for a domain name identity (e.g., <code>example.com</code>), then Amazon SES will DKIM-sign all email sent by addresses under that domain name (e.g., <code>user@example.com</code>).</p> </li> <li> <p>If Easy DKIM signing is enabled for an email address, then Amazon SES will DKIM-sign all email sent by that email address.</p> </li> </ul> <p>For email addresses (e.g., <code>user@example.com</code>), you can only enable Easy DKIM signing if the corresponding domain (e.g., <code>example.com</code>) has been set up for Easy DKIM using the AWS Console or the <code>VerifyDomainDkim</code> action.</p> <p>This action is throttled at one request per second.</p> <p>For more information about Easy DKIM signing, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>

__Required Parameters__

* `identity` __:__ `String`
* `dkimEnabled` __:__ `Bool`


-}
setIdentityDkimEnabled :
    String
    -> Bool
    -> AWS.Request SetIdentityDkimEnabledResponse
setIdentityDkimEnabled identity dkimEnabled =
    AWS.Http.unsignedRequest
        "SetIdentityDkimEnabled"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setIdentityDkimEnabledResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email. Feedback forwarding can only be disabled when Amazon Simple Notification Service (Amazon SNS) topics are specified for both bounces and complaints.</p> <note> <p>Feedback forwarding does not apply to delivery notifications. Delivery notifications are only available through Amazon SNS.</p> </note> <p>This action is throttled at one request per second.</p> <p>For more information about using notifications with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

__Required Parameters__

* `identity` __:__ `String`
* `forwardingEnabled` __:__ `Bool`


-}
setIdentityFeedbackForwardingEnabled :
    String
    -> Bool
    -> AWS.Request SetIdentityFeedbackForwardingEnabledResponse
setIdentityFeedbackForwardingEnabled identity forwardingEnabled =
    AWS.Http.unsignedRequest
        "SetIdentityFeedbackForwardingEnabled"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setIdentityFeedbackForwardingEnabledResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type.</p> <p>This action is throttled at one request per second.</p> <p>For more information about using notifications with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

__Required Parameters__

* `identity` __:__ `String`
* `notificationType` __:__ `NotificationType`
* `enabled` __:__ `Bool`


-}
setIdentityHeadersInNotificationsEnabled :
    String
    -> NotificationType
    -> Bool
    -> AWS.Request SetIdentityHeadersInNotificationsEnabledResponse
setIdentityHeadersInNotificationsEnabled identity notificationType enabled =
    AWS.Http.unsignedRequest
        "SetIdentityHeadersInNotificationsEnabled"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setIdentityHeadersInNotificationsEnabledResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain).</p> <important> <p>To send emails using the specified MAIL FROM domain, you must add an MX record to your MAIL FROM domain's DNS settings. If you want your emails to pass Sender Policy Framework (SPF) checks, you must also add or update an SPF record. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-set.html">Amazon SES Developer Guide</a>.</p> </important> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `identity` __:__ `String`


-}
setIdentityMailFromDomain :
    String
    -> (SetIdentityMailFromDomainOptions -> SetIdentityMailFromDomainOptions)
    -> AWS.Request SetIdentityMailFromDomainResponse
setIdentityMailFromDomain identity setOptions =
  let
    options = setOptions (SetIdentityMailFromDomainOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SetIdentityMailFromDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setIdentityMailFromDomainResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a setIdentityMailFromDomain request
-}
type alias SetIdentityMailFromDomainOptions =
    { mailFromDomain : Maybe String
    , behaviorOnMXFailure : Maybe BehaviorOnMXFailure
    }



{-| <p>Given an identity (an email address or a domain), sets the Amazon Simple Notification Service (Amazon SNS) topic to which Amazon SES will publish bounce, complaint, and/or delivery notifications for emails sent with that identity as the <code>Source</code>.</p> <note> <p>Unless feedback forwarding is enabled, you must specify Amazon SNS topics for bounce and complaint notifications. For more information, see <code>SetIdentityFeedbackForwardingEnabled</code>.</p> </note> <p>This action is throttled at one request per second.</p> <p>For more information about feedback notification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>

__Required Parameters__

* `identity` __:__ `String`
* `notificationType` __:__ `NotificationType`


-}
setIdentityNotificationTopic :
    String
    -> NotificationType
    -> (SetIdentityNotificationTopicOptions -> SetIdentityNotificationTopicOptions)
    -> AWS.Request SetIdentityNotificationTopicResponse
setIdentityNotificationTopic identity notificationType setOptions =
  let
    options = setOptions (SetIdentityNotificationTopicOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetIdentityNotificationTopic"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setIdentityNotificationTopicResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a setIdentityNotificationTopic request
-}
type alias SetIdentityNotificationTopicOptions =
    { snsTopic : Maybe String
    }



{-| <p>Sets the position of the specified receipt rule in the receipt rule set.</p> <p>For information about managing receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`
* `ruleName` __:__ `String`


-}
setReceiptRulePosition :
    String
    -> String
    -> (SetReceiptRulePositionOptions -> SetReceiptRulePositionOptions)
    -> AWS.Request SetReceiptRulePositionResponse
setReceiptRulePosition ruleSetName ruleName setOptions =
  let
    options = setOptions (SetReceiptRulePositionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetReceiptRulePosition"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setReceiptRulePositionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a setReceiptRulePosition request
-}
type alias SetReceiptRulePositionOptions =
    { after : Maybe String
    }



{-| <p>Updates the event destination of a configuration set.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.</p> </note> <p>Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch or Amazon Kinesis Firehose. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `configurationSetName` __:__ `String`
* `eventDestination` __:__ `EventDestination`


-}
updateConfigurationSetEventDestination :
    String
    -> EventDestination
    -> AWS.Request UpdateConfigurationSetEventDestinationResponse
updateConfigurationSetEventDestination configurationSetName eventDestination =
    AWS.Http.unsignedRequest
        "UpdateConfigurationSetEventDestination"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateConfigurationSetEventDestinationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates a receipt rule.</p> <p>For information about managing receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-managing-receipt-rules.html">Amazon SES Developer Guide</a>.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `ruleSetName` __:__ `String`
* `rule` __:__ `ReceiptRule`


-}
updateReceiptRule :
    String
    -> ReceiptRule
    -> AWS.Request UpdateReceiptRuleResponse
updateReceiptRule ruleSetName rule =
    AWS.Http.unsignedRequest
        "UpdateReceiptRule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateReceiptRuleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a set of DKIM tokens for a domain. DKIM <i>tokens</i> are character strings that represent your domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain.</p> <p>This action is throttled at one request per second.</p> <p>To enable or disable Easy DKIM signing for a domain, use the <code>SetIdentityDkimEnabled</code> action.</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>

__Required Parameters__

* `domain` __:__ `String`


-}
verifyDomainDkim :
    String
    -> AWS.Request VerifyDomainDkimResponse
verifyDomainDkim domain =
    AWS.Http.unsignedRequest
        "VerifyDomainDkim"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        verifyDomainDkimResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Verifies a domain.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `domain` __:__ `String`


-}
verifyDomainIdentity :
    String
    -> AWS.Request VerifyDomainIdentityResponse
verifyDomainIdentity domain =
    AWS.Http.unsignedRequest
        "VerifyDomainIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        verifyDomainIdentityResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Verifies an email address. This action causes a confirmation email message to be sent to the specified address.</p> <important> <p>The VerifyEmailAddress action is deprecated as of the May 15, 2012 release of Domain Verification. The VerifyEmailIdentity action is now preferred.</p> </important> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `emailAddress` __:__ `String`


-}
verifyEmailAddress :
    String
    -> AWS.Request ()
verifyEmailAddress emailAddress =
    AWS.Http.unsignedRequest
        "VerifyEmailAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Verifies an email address. This action causes a confirmation email message to be sent to the specified address.</p> <p>This action is throttled at one request per second.</p>

__Required Parameters__

* `emailAddress` __:__ `String`


-}
verifyEmailIdentity :
    String
    -> AWS.Request VerifyEmailIdentityResponse
verifyEmailIdentity emailAddress =
    AWS.Http.unsignedRequest
        "VerifyEmailIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        verifyEmailIdentityResponseDecoder
        |> AWS.UnsignedRequest




{-| <p>When included in a receipt rule, this action adds a header to the received email.</p> <p>For information about adding a header using a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html">Amazon SES Developer Guide</a>.</p>
-}
type alias AddHeaderAction =
    { headerName : String
    , headerValue : String
    }



addHeaderActionDecoder : JD.Decoder AddHeaderAction
addHeaderActionDecoder =
    JDP.decode AddHeaderAction
        |> JDP.required "headerName" JD.string
        |> JDP.required "headerValue" JD.string




{-| <p>Indicates that a resource could not be created because of a naming conflict.</p>
-}
type alias AlreadyExistsException =
    { name : Maybe String
    }



alreadyExistsExceptionDecoder : JD.Decoder AlreadyExistsException
alreadyExistsExceptionDecoder =
    JDP.decode AlreadyExistsException
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| One of

* `BehaviorOnMXFailure_UseDefaultValue`
* `BehaviorOnMXFailure_RejectMessage`

-}
type BehaviorOnMXFailure
    = BehaviorOnMXFailure_UseDefaultValue
    | BehaviorOnMXFailure_RejectMessage



behaviorOnMXFailureDecoder : JD.Decoder BehaviorOnMXFailure
behaviorOnMXFailureDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UseDefaultValue" ->
                        JD.succeed BehaviorOnMXFailure_UseDefaultValue

                    "RejectMessage" ->
                        JD.succeed BehaviorOnMXFailure_RejectMessage


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the body of the message. You can specify text, HTML, or both. If you use both, then the message should display correctly in the widest variety of email clients.</p>
-}
type alias Body =
    { text : Maybe Content
    , html : Maybe Content
    }



bodyDecoder : JD.Decoder Body
bodyDecoder =
    JDP.decode Body
        |> JDP.optional "text" (JD.nullable contentDecoder) Nothing
        |> JDP.optional "html" (JD.nullable contentDecoder) Nothing




{-| <p>When included in a receipt rule, this action rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about sending a bounce message in response to a received email, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html">Amazon SES Developer Guide</a>.</p>
-}
type alias BounceAction =
    { topicArn : Maybe String
    , smtpReplyCode : String
    , statusCode : Maybe String
    , message : String
    , sender : String
    }



bounceActionDecoder : JD.Decoder BounceAction
bounceActionDecoder =
    JDP.decode BounceAction
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing
        |> JDP.required "smtpReplyCode" JD.string
        |> JDP.optional "statusCode" (JD.nullable JD.string) Nothing
        |> JDP.required "message" JD.string
        |> JDP.required "sender" JD.string




{-| One of

* `BounceType_DoesNotExist`
* `BounceType_MessageTooLarge`
* `BounceType_ExceededQuota`
* `BounceType_ContentRejected`
* `BounceType_Undefined`
* `BounceType_TemporaryFailure`

-}
type BounceType
    = BounceType_DoesNotExist
    | BounceType_MessageTooLarge
    | BounceType_ExceededQuota
    | BounceType_ContentRejected
    | BounceType_Undefined
    | BounceType_TemporaryFailure



bounceTypeDecoder : JD.Decoder BounceType
bounceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DoesNotExist" ->
                        JD.succeed BounceType_DoesNotExist

                    "MessageTooLarge" ->
                        JD.succeed BounceType_MessageTooLarge

                    "ExceededQuota" ->
                        JD.succeed BounceType_ExceededQuota

                    "ContentRejected" ->
                        JD.succeed BounceType_ContentRejected

                    "Undefined" ->
                        JD.succeed BounceType_Undefined

                    "TemporaryFailure" ->
                        JD.succeed BounceType_TemporaryFailure


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-}
type alias BouncedRecipientInfo =
    { recipient : String
    , recipientArn : Maybe String
    , bounceType : Maybe BounceType
    , recipientDsnFields : Maybe RecipientDsnFields
    }



bouncedRecipientInfoDecoder : JD.Decoder BouncedRecipientInfo
bouncedRecipientInfoDecoder =
    JDP.decode BouncedRecipientInfo
        |> JDP.required "recipient" JD.string
        |> JDP.optional "recipientArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "bounceType" (JD.nullable bounceTypeDecoder) Nothing
        |> JDP.optional "recipientDsnFields" (JD.nullable recipientDsnFieldsDecoder) Nothing




{-| <p>Indicates that the delete operation could not be completed.</p>
-}
type alias CannotDeleteException =
    { name : Maybe String
    }



cannotDeleteExceptionDecoder : JD.Decoder CannotDeleteException
cannotDeleteExceptionDecoder =
    JDP.decode CannotDeleteException
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cloneReceiptRuleSet
-}
type alias CloneReceiptRuleSetResponse =
    { 
    }



cloneReceiptRuleSetResponseDecoder : JD.Decoder CloneReceiptRuleSetResponse
cloneReceiptRuleSetResponseDecoder =
    JDP.decode CloneReceiptRuleSetResponse



{-| <p>Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.</p> <p>Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-}
type alias CloudWatchDestination =
    { dimensionConfigurations : (List CloudWatchDimensionConfiguration)
    }



cloudWatchDestinationDecoder : JD.Decoder CloudWatchDestination
cloudWatchDestinationDecoder =
    JDP.decode CloudWatchDestination
        |> JDP.required "dimensionConfigurations" (JD.list cloudWatchDimensionConfigurationDecoder)




{-| <p>Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.</p> <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-}
type alias CloudWatchDimensionConfiguration =
    { dimensionName : String
    , dimensionValueSource : DimensionValueSource
    , defaultDimensionValue : String
    }



cloudWatchDimensionConfigurationDecoder : JD.Decoder CloudWatchDimensionConfiguration
cloudWatchDimensionConfigurationDecoder =
    JDP.decode CloudWatchDimensionConfiguration
        |> JDP.required "dimensionName" JD.string
        |> JDP.required "dimensionValueSource" dimensionValueSourceDecoder
        |> JDP.required "defaultDimensionValue" JD.string




{-| <p>The name of the configuration set.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-}
type alias ConfigurationSet =
    { name : String
    }



configurationSetDecoder : JD.Decoder ConfigurationSet
configurationSetDecoder =
    JDP.decode ConfigurationSet
        |> JDP.required "name" JD.string




{-| <p>Indicates that the configuration set could not be created because of a naming conflict.</p>
-}
type alias ConfigurationSetAlreadyExistsException =
    { configurationSetName : Maybe String
    }



configurationSetAlreadyExistsExceptionDecoder : JD.Decoder ConfigurationSetAlreadyExistsException
configurationSetAlreadyExistsExceptionDecoder =
    JDP.decode ConfigurationSetAlreadyExistsException
        |> JDP.optional "configurationSetName" (JD.nullable JD.string) Nothing




{-| One of

* `ConfigurationSetAttribute_eventDestinations`

-}
type ConfigurationSetAttribute
    = ConfigurationSetAttribute_eventDestinations



configurationSetAttributeDecoder : JD.Decoder ConfigurationSetAttribute
configurationSetAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "eventDestinations" ->
                        JD.succeed ConfigurationSetAttribute_eventDestinations


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates that the configuration set does not exist.</p>
-}
type alias ConfigurationSetDoesNotExistException =
    { configurationSetName : Maybe String
    }



configurationSetDoesNotExistExceptionDecoder : JD.Decoder ConfigurationSetDoesNotExistException
configurationSetDoesNotExistExceptionDecoder =
    JDP.decode ConfigurationSetDoesNotExistException
        |> JDP.optional "configurationSetName" (JD.nullable JD.string) Nothing




{-| <p>Represents textual data, plus an optional character set specification.</p> <p>By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol. If the text must contain any other characters, then you must also specify a character set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.</p>
-}
type alias Content =
    { data : String
    , charset : Maybe String
    }



contentDecoder : JD.Decoder Content
contentDecoder =
    JDP.decode Content
        |> JDP.required "data" JD.string
        |> JDP.optional "charset" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createConfigurationSetEventDestination
-}
type alias CreateConfigurationSetEventDestinationResponse =
    { 
    }



createConfigurationSetEventDestinationResponseDecoder : JD.Decoder CreateConfigurationSetEventDestinationResponse
createConfigurationSetEventDestinationResponseDecoder =
    JDP.decode CreateConfigurationSetEventDestinationResponse



{-| Type of HTTP response from createConfigurationSet
-}
type alias CreateConfigurationSetResponse =
    { 
    }



createConfigurationSetResponseDecoder : JD.Decoder CreateConfigurationSetResponse
createConfigurationSetResponseDecoder =
    JDP.decode CreateConfigurationSetResponse



{-| Type of HTTP response from createReceiptFilter
-}
type alias CreateReceiptFilterResponse =
    { 
    }



createReceiptFilterResponseDecoder : JD.Decoder CreateReceiptFilterResponse
createReceiptFilterResponseDecoder =
    JDP.decode CreateReceiptFilterResponse



{-| Type of HTTP response from createReceiptRule
-}
type alias CreateReceiptRuleResponse =
    { 
    }



createReceiptRuleResponseDecoder : JD.Decoder CreateReceiptRuleResponse
createReceiptRuleResponseDecoder =
    JDP.decode CreateReceiptRuleResponse



{-| Type of HTTP response from createReceiptRuleSet
-}
type alias CreateReceiptRuleSetResponse =
    { 
    }



createReceiptRuleSetResponseDecoder : JD.Decoder CreateReceiptRuleSetResponse
createReceiptRuleSetResponseDecoder =
    JDP.decode CreateReceiptRuleSetResponse



{-| One of

* `CustomMailFromStatus_Pending`
* `CustomMailFromStatus_Success`
* `CustomMailFromStatus_Failed`
* `CustomMailFromStatus_TemporaryFailure`

-}
type CustomMailFromStatus
    = CustomMailFromStatus_Pending
    | CustomMailFromStatus_Success
    | CustomMailFromStatus_Failed
    | CustomMailFromStatus_TemporaryFailure



customMailFromStatusDecoder : JD.Decoder CustomMailFromStatus
customMailFromStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed CustomMailFromStatus_Pending

                    "Success" ->
                        JD.succeed CustomMailFromStatus_Success

                    "Failed" ->
                        JD.succeed CustomMailFromStatus_Failed

                    "TemporaryFailure" ->
                        JD.succeed CustomMailFromStatus_TemporaryFailure


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from deleteConfigurationSetEventDestination
-}
type alias DeleteConfigurationSetEventDestinationResponse =
    { 
    }



deleteConfigurationSetEventDestinationResponseDecoder : JD.Decoder DeleteConfigurationSetEventDestinationResponse
deleteConfigurationSetEventDestinationResponseDecoder =
    JDP.decode DeleteConfigurationSetEventDestinationResponse



{-| Type of HTTP response from deleteConfigurationSet
-}
type alias DeleteConfigurationSetResponse =
    { 
    }



deleteConfigurationSetResponseDecoder : JD.Decoder DeleteConfigurationSetResponse
deleteConfigurationSetResponseDecoder =
    JDP.decode DeleteConfigurationSetResponse



{-| Type of HTTP response from deleteIdentityPolicy
-}
type alias DeleteIdentityPolicyResponse =
    { 
    }



deleteIdentityPolicyResponseDecoder : JD.Decoder DeleteIdentityPolicyResponse
deleteIdentityPolicyResponseDecoder =
    JDP.decode DeleteIdentityPolicyResponse



{-| Type of HTTP response from deleteIdentity
-}
type alias DeleteIdentityResponse =
    { 
    }



deleteIdentityResponseDecoder : JD.Decoder DeleteIdentityResponse
deleteIdentityResponseDecoder =
    JDP.decode DeleteIdentityResponse



{-| Type of HTTP response from deleteReceiptFilter
-}
type alias DeleteReceiptFilterResponse =
    { 
    }



deleteReceiptFilterResponseDecoder : JD.Decoder DeleteReceiptFilterResponse
deleteReceiptFilterResponseDecoder =
    JDP.decode DeleteReceiptFilterResponse



{-| Type of HTTP response from deleteReceiptRule
-}
type alias DeleteReceiptRuleResponse =
    { 
    }



deleteReceiptRuleResponseDecoder : JD.Decoder DeleteReceiptRuleResponse
deleteReceiptRuleResponseDecoder =
    JDP.decode DeleteReceiptRuleResponse



{-| Type of HTTP response from deleteReceiptRuleSet
-}
type alias DeleteReceiptRuleSetResponse =
    { 
    }



deleteReceiptRuleSetResponseDecoder : JD.Decoder DeleteReceiptRuleSetResponse
deleteReceiptRuleSetResponseDecoder =
    JDP.decode DeleteReceiptRuleSetResponse



{-| Type of HTTP response from describeActiveReceiptRuleSet
-}
type alias DescribeActiveReceiptRuleSetResponse =
    { metadata : Maybe ReceiptRuleSetMetadata
    , rules : Maybe (List ReceiptRule)
    }



describeActiveReceiptRuleSetResponseDecoder : JD.Decoder DescribeActiveReceiptRuleSetResponse
describeActiveReceiptRuleSetResponseDecoder =
    JDP.decode DescribeActiveReceiptRuleSetResponse
        |> JDP.optional "metadata" (JD.nullable receiptRuleSetMetadataDecoder) Nothing
        |> JDP.optional "rules" (JD.nullable (JD.list receiptRuleDecoder)) Nothing




{-| Type of HTTP response from describeConfigurationSet
-}
type alias DescribeConfigurationSetResponse =
    { configurationSet : Maybe ConfigurationSet
    , eventDestinations : Maybe (List EventDestination)
    }



describeConfigurationSetResponseDecoder : JD.Decoder DescribeConfigurationSetResponse
describeConfigurationSetResponseDecoder =
    JDP.decode DescribeConfigurationSetResponse
        |> JDP.optional "configurationSet" (JD.nullable configurationSetDecoder) Nothing
        |> JDP.optional "eventDestinations" (JD.nullable (JD.list eventDestinationDecoder)) Nothing




{-| Type of HTTP response from describeReceiptRule
-}
type alias DescribeReceiptRuleResponse =
    { rule : Maybe ReceiptRule
    }



describeReceiptRuleResponseDecoder : JD.Decoder DescribeReceiptRuleResponse
describeReceiptRuleResponseDecoder =
    JDP.decode DescribeReceiptRuleResponse
        |> JDP.optional "rule" (JD.nullable receiptRuleDecoder) Nothing




{-| Type of HTTP response from describeReceiptRuleSet
-}
type alias DescribeReceiptRuleSetResponse =
    { metadata : Maybe ReceiptRuleSetMetadata
    , rules : Maybe (List ReceiptRule)
    }



describeReceiptRuleSetResponseDecoder : JD.Decoder DescribeReceiptRuleSetResponse
describeReceiptRuleSetResponseDecoder =
    JDP.decode DescribeReceiptRuleSetResponse
        |> JDP.optional "metadata" (JD.nullable receiptRuleSetMetadataDecoder) Nothing
        |> JDP.optional "rules" (JD.nullable (JD.list receiptRuleDecoder)) Nothing




{-| <p>Represents the destination of the message, consisting of To:, CC:, and BCC: fields.</p> <p> By default, the string must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>. For more information, see <a href="http://tools.ietf.org/html/rfc2047">RFC 2047</a>. </p>
-}
type alias Destination =
    { toAddresses : Maybe (List String)
    , ccAddresses : Maybe (List String)
    , bccAddresses : Maybe (List String)
    }



destinationDecoder : JD.Decoder Destination
destinationDecoder =
    JDP.decode Destination
        |> JDP.optional "toAddresses" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "ccAddresses" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "bccAddresses" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `DimensionValueSource_messageTag`
* `DimensionValueSource_emailHeader`

-}
type DimensionValueSource
    = DimensionValueSource_messageTag
    | DimensionValueSource_emailHeader



dimensionValueSourceDecoder : JD.Decoder DimensionValueSource
dimensionValueSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "messageTag" ->
                        JD.succeed DimensionValueSource_messageTag

                    "emailHeader" ->
                        JD.succeed DimensionValueSource_emailHeader


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DsnAction_failed`
* `DsnAction_delayed`
* `DsnAction_delivered`
* `DsnAction_relayed`
* `DsnAction_expanded`

-}
type DsnAction
    = DsnAction_failed
    | DsnAction_delayed
    | DsnAction_delivered
    | DsnAction_relayed
    | DsnAction_expanded



dsnActionDecoder : JD.Decoder DsnAction
dsnActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "failed" ->
                        JD.succeed DsnAction_failed

                    "delayed" ->
                        JD.succeed DsnAction_delayed

                    "delivered" ->
                        JD.succeed DsnAction_delivered

                    "relayed" ->
                        JD.succeed DsnAction_relayed

                    "expanded" ->
                        JD.succeed DsnAction_expanded


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about the event destination to which the specified email sending events are published.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.</p> </note> <p>Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch or Amazon Kinesis Firehose. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-}
type alias EventDestination =
    { name : String
    , enabled : Maybe Bool
    , matchingEventTypes : (List EventType)
    , kinesisFirehoseDestination : Maybe KinesisFirehoseDestination
    , cloudWatchDestination : Maybe CloudWatchDestination
    }



eventDestinationDecoder : JD.Decoder EventDestination
eventDestinationDecoder =
    JDP.decode EventDestination
        |> JDP.required "name" JD.string
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.required "matchingEventTypes" (JD.list eventTypeDecoder)
        |> JDP.optional "kinesisFirehoseDestination" (JD.nullable kinesisFirehoseDestinationDecoder) Nothing
        |> JDP.optional "cloudWatchDestination" (JD.nullable cloudWatchDestinationDecoder) Nothing




{-| <p>Indicates that the event destination could not be created because of a naming conflict.</p>
-}
type alias EventDestinationAlreadyExistsException =
    { configurationSetName : Maybe String
    , eventDestinationName : Maybe String
    }



eventDestinationAlreadyExistsExceptionDecoder : JD.Decoder EventDestinationAlreadyExistsException
eventDestinationAlreadyExistsExceptionDecoder =
    JDP.decode EventDestinationAlreadyExistsException
        |> JDP.optional "configurationSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventDestinationName" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the event destination does not exist.</p>
-}
type alias EventDestinationDoesNotExistException =
    { configurationSetName : Maybe String
    , eventDestinationName : Maybe String
    }



eventDestinationDoesNotExistExceptionDecoder : JD.Decoder EventDestinationDoesNotExistException
eventDestinationDoesNotExistExceptionDecoder =
    JDP.decode EventDestinationDoesNotExistException
        |> JDP.optional "configurationSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventDestinationName" (JD.nullable JD.string) Nothing




{-| One of

* `EventType_send`
* `EventType_reject`
* `EventType_bounce`
* `EventType_complaint`
* `EventType_delivery`

-}
type EventType
    = EventType_send
    | EventType_reject
    | EventType_bounce
    | EventType_complaint
    | EventType_delivery



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "send" ->
                        JD.succeed EventType_send

                    "reject" ->
                        JD.succeed EventType_reject

                    "bounce" ->
                        JD.succeed EventType_bounce

                    "complaint" ->
                        JD.succeed EventType_complaint

                    "delivery" ->
                        JD.succeed EventType_delivery


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Additional X-headers to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-}
type alias ExtensionField =
    { name : String
    , value : String
    }



extensionFieldDecoder : JD.Decoder ExtensionField
extensionFieldDecoder =
    JDP.decode ExtensionField
        |> JDP.required "name" JD.string
        |> JDP.required "value" JD.string




{-| Type of HTTP response from getIdentityDkimAttributes
-}
type alias GetIdentityDkimAttributesResponse =
    { dkimAttributes : (Dict String IdentityDkimAttributes)
    }



getIdentityDkimAttributesResponseDecoder : JD.Decoder GetIdentityDkimAttributesResponse
getIdentityDkimAttributesResponseDecoder =
    JDP.decode GetIdentityDkimAttributesResponse
        |> JDP.required "dkimAttributes" (JD.dict identityDkimAttributesDecoder)




{-| Type of HTTP response from getIdentityMailFromDomainAttributes
-}
type alias GetIdentityMailFromDomainAttributesResponse =
    { mailFromDomainAttributes : (Dict String IdentityMailFromDomainAttributes)
    }



getIdentityMailFromDomainAttributesResponseDecoder : JD.Decoder GetIdentityMailFromDomainAttributesResponse
getIdentityMailFromDomainAttributesResponseDecoder =
    JDP.decode GetIdentityMailFromDomainAttributesResponse
        |> JDP.required "mailFromDomainAttributes" (JD.dict identityMailFromDomainAttributesDecoder)




{-| Type of HTTP response from getIdentityNotificationAttributes
-}
type alias GetIdentityNotificationAttributesResponse =
    { notificationAttributes : (Dict String IdentityNotificationAttributes)
    }



getIdentityNotificationAttributesResponseDecoder : JD.Decoder GetIdentityNotificationAttributesResponse
getIdentityNotificationAttributesResponseDecoder =
    JDP.decode GetIdentityNotificationAttributesResponse
        |> JDP.required "notificationAttributes" (JD.dict identityNotificationAttributesDecoder)




{-| Type of HTTP response from getIdentityPolicies
-}
type alias GetIdentityPoliciesResponse =
    { policies : (Dict String String)
    }



getIdentityPoliciesResponseDecoder : JD.Decoder GetIdentityPoliciesResponse
getIdentityPoliciesResponseDecoder =
    JDP.decode GetIdentityPoliciesResponse
        |> JDP.required "policies" (JD.dict JD.string)




{-| Type of HTTP response from getIdentityVerificationAttributes
-}
type alias GetIdentityVerificationAttributesResponse =
    { verificationAttributes : (Dict String IdentityVerificationAttributes)
    }



getIdentityVerificationAttributesResponseDecoder : JD.Decoder GetIdentityVerificationAttributesResponse
getIdentityVerificationAttributesResponseDecoder =
    JDP.decode GetIdentityVerificationAttributesResponse
        |> JDP.required "verificationAttributes" (JD.dict identityVerificationAttributesDecoder)




{-| Type of HTTP response from getSendQuota
-}
type alias GetSendQuotaResponse =
    { max24HourSend : Maybe Float
    , maxSendRate : Maybe Float
    , sentLast24Hours : Maybe Float
    }



getSendQuotaResponseDecoder : JD.Decoder GetSendQuotaResponse
getSendQuotaResponseDecoder =
    JDP.decode GetSendQuotaResponse
        |> JDP.optional "max24HourSend" (JD.nullable JD.float) Nothing
        |> JDP.optional "maxSendRate" (JD.nullable JD.float) Nothing
        |> JDP.optional "sentLast24Hours" (JD.nullable JD.float) Nothing




{-| Type of HTTP response from getSendStatistics
-}
type alias GetSendStatisticsResponse =
    { sendDataPoints : Maybe (List SendDataPoint)
    }



getSendStatisticsResponseDecoder : JD.Decoder GetSendStatisticsResponse
getSendStatisticsResponseDecoder =
    JDP.decode GetSendStatisticsResponse
        |> JDP.optional "sendDataPoints" (JD.nullable (JD.list sendDataPointDecoder)) Nothing




{-| <p>Represents the DKIM attributes of a verified email address or a domain.</p>
-}
type alias IdentityDkimAttributes =
    { dkimEnabled : Bool
    , dkimVerificationStatus : VerificationStatus
    , dkimTokens : Maybe (List String)
    }



identityDkimAttributesDecoder : JD.Decoder IdentityDkimAttributes
identityDkimAttributesDecoder =
    JDP.decode IdentityDkimAttributes
        |> JDP.required "dkimEnabled" JD.bool
        |> JDP.required "dkimVerificationStatus" verificationStatusDecoder
        |> JDP.optional "dkimTokens" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Represents the custom MAIL FROM domain attributes of a verified identity (email address or domain).</p>
-}
type alias IdentityMailFromDomainAttributes =
    { mailFromDomain : String
    , mailFromDomainStatus : CustomMailFromStatus
    , behaviorOnMXFailure : BehaviorOnMXFailure
    }



identityMailFromDomainAttributesDecoder : JD.Decoder IdentityMailFromDomainAttributes
identityMailFromDomainAttributesDecoder =
    JDP.decode IdentityMailFromDomainAttributes
        |> JDP.required "mailFromDomain" JD.string
        |> JDP.required "mailFromDomainStatus" customMailFromStatusDecoder
        |> JDP.required "behaviorOnMXFailure" behaviorOnMXFailureDecoder




{-| <p>Represents the notification attributes of an identity, including whether an identity has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications, and whether feedback forwarding is enabled for bounce and complaint notifications.</p>
-}
type alias IdentityNotificationAttributes =
    { bounceTopic : String
    , complaintTopic : String
    , deliveryTopic : String
    , forwardingEnabled : Bool
    , headersInBounceNotificationsEnabled : Maybe Bool
    , headersInComplaintNotificationsEnabled : Maybe Bool
    , headersInDeliveryNotificationsEnabled : Maybe Bool
    }



identityNotificationAttributesDecoder : JD.Decoder IdentityNotificationAttributes
identityNotificationAttributesDecoder =
    JDP.decode IdentityNotificationAttributes
        |> JDP.required "bounceTopic" JD.string
        |> JDP.required "complaintTopic" JD.string
        |> JDP.required "deliveryTopic" JD.string
        |> JDP.required "forwardingEnabled" JD.bool
        |> JDP.optional "headersInBounceNotificationsEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "headersInComplaintNotificationsEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "headersInDeliveryNotificationsEnabled" (JD.nullable JD.bool) Nothing




{-| One of

* `IdentityType_EmailAddress`
* `IdentityType_Domain`

-}
type IdentityType
    = IdentityType_EmailAddress
    | IdentityType_Domain



identityTypeDecoder : JD.Decoder IdentityType
identityTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EmailAddress" ->
                        JD.succeed IdentityType_EmailAddress

                    "Domain" ->
                        JD.succeed IdentityType_Domain


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the verification attributes of a single identity.</p>
-}
type alias IdentityVerificationAttributes =
    { verificationStatus : VerificationStatus
    , verificationToken : Maybe String
    }



identityVerificationAttributesDecoder : JD.Decoder IdentityVerificationAttributes
identityVerificationAttributesDecoder =
    JDP.decode IdentityVerificationAttributes
        |> JDP.required "verificationStatus" verificationStatusDecoder
        |> JDP.optional "verificationToken" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.</p>
-}
type alias InvalidCloudWatchDestinationException =
    { configurationSetName : Maybe String
    , eventDestinationName : Maybe String
    }



invalidCloudWatchDestinationExceptionDecoder : JD.Decoder InvalidCloudWatchDestinationException
invalidCloudWatchDestinationExceptionDecoder =
    JDP.decode InvalidCloudWatchDestinationException
        |> JDP.optional "configurationSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventDestinationName" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the configuration set is invalid. See the error message for details.</p>
-}
type alias InvalidConfigurationSetException =
    { 
    }



invalidConfigurationSetExceptionDecoder : JD.Decoder InvalidConfigurationSetException
invalidConfigurationSetExceptionDecoder =
    JDP.decode InvalidConfigurationSetException



{-| <p>Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.</p>
-}
type alias InvalidFirehoseDestinationException =
    { configurationSetName : Maybe String
    , eventDestinationName : Maybe String
    }



invalidFirehoseDestinationExceptionDecoder : JD.Decoder InvalidFirehoseDestinationException
invalidFirehoseDestinationExceptionDecoder =
    JDP.decode InvalidFirehoseDestinationException
        |> JDP.optional "configurationSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventDestinationName" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could not execute the provided function, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
-}
type alias InvalidLambdaFunctionException =
    { functionArn : Maybe String
    }



invalidLambdaFunctionExceptionDecoder : JD.Decoder InvalidLambdaFunctionException
invalidLambdaFunctionExceptionDecoder =
    JDP.decode InvalidLambdaFunctionException
        |> JDP.optional "functionArn" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the provided policy is invalid. Check the error stack for more information about what caused the error.</p>
-}
type alias InvalidPolicyException =
    { 
    }



invalidPolicyExceptionDecoder : JD.Decoder InvalidPolicyException
invalidPolicyExceptionDecoder =
    JDP.decode InvalidPolicyException



{-| <p>Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or that Amazon SES could not publish to the bucket, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
-}
type alias InvalidS3ConfigurationException =
    { bucket : Maybe String
    }



invalidS3ConfigurationExceptionDecoder : JD.Decoder InvalidS3ConfigurationException
invalidS3ConfigurationExceptionDecoder =
    JDP.decode InvalidS3ConfigurationException
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not publish to the topic, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
-}
type alias InvalidSnsTopicException =
    { topic : Maybe String
    }



invalidSnsTopicExceptionDecoder : JD.Decoder InvalidSnsTopicException
invalidSnsTopicExceptionDecoder =
    JDP.decode InvalidSnsTopicException
        |> JDP.optional "topic" (JD.nullable JD.string) Nothing




{-| One of

* `InvocationType_Event`
* `InvocationType_RequestResponse`

-}
type InvocationType
    = InvocationType_Event
    | InvocationType_RequestResponse



invocationTypeDecoder : JD.Decoder InvocationType
invocationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Event" ->
                        JD.succeed InvocationType_Event

                    "RequestResponse" ->
                        JD.succeed InvocationType_RequestResponse


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.</p> <p>Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-}
type alias KinesisFirehoseDestination =
    { iAMRoleARN : String
    , deliveryStreamARN : String
    }



kinesisFirehoseDestinationDecoder : JD.Decoder KinesisFirehoseDestination
kinesisFirehoseDestinationDecoder =
    JDP.decode KinesisFirehoseDestination
        |> JDP.required "iAMRoleARN" JD.string
        |> JDP.required "deliveryStreamARN" JD.string




{-| <p>When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <p>For information about using AWS Lambda actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html">Amazon SES Developer Guide</a>.</p>
-}
type alias LambdaAction =
    { topicArn : Maybe String
    , functionArn : String
    , invocationType : Maybe InvocationType
    }



lambdaActionDecoder : JD.Decoder LambdaAction
lambdaActionDecoder =
    JDP.decode LambdaAction
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing
        |> JDP.required "functionArn" JD.string
        |> JDP.optional "invocationType" (JD.nullable invocationTypeDecoder) Nothing




{-| <p>Indicates that a resource could not be created because of service limits. For a list of Amazon SES limits, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/limits.html">Amazon SES Developer Guide</a>.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listConfigurationSets
-}
type alias ListConfigurationSetsResponse =
    { configurationSets : Maybe (List ConfigurationSet)
    , nextToken : Maybe String
    }



listConfigurationSetsResponseDecoder : JD.Decoder ListConfigurationSetsResponse
listConfigurationSetsResponseDecoder =
    JDP.decode ListConfigurationSetsResponse
        |> JDP.optional "configurationSets" (JD.nullable (JD.list configurationSetDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listIdentities
-}
type alias ListIdentitiesResponse =
    { identities : (List String)
    , nextToken : Maybe String
    }



listIdentitiesResponseDecoder : JD.Decoder ListIdentitiesResponse
listIdentitiesResponseDecoder =
    JDP.decode ListIdentitiesResponse
        |> JDP.required "identities" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listIdentityPolicies
-}
type alias ListIdentityPoliciesResponse =
    { policyNames : (List String)
    }



listIdentityPoliciesResponseDecoder : JD.Decoder ListIdentityPoliciesResponse
listIdentityPoliciesResponseDecoder =
    JDP.decode ListIdentityPoliciesResponse
        |> JDP.required "policyNames" (JD.list JD.string)




{-| Type of HTTP response from listReceiptFilters
-}
type alias ListReceiptFiltersResponse =
    { filters : Maybe (List ReceiptFilter)
    }



listReceiptFiltersResponseDecoder : JD.Decoder ListReceiptFiltersResponse
listReceiptFiltersResponseDecoder =
    JDP.decode ListReceiptFiltersResponse
        |> JDP.optional "filters" (JD.nullable (JD.list receiptFilterDecoder)) Nothing




{-| Type of HTTP response from listReceiptRuleSets
-}
type alias ListReceiptRuleSetsResponse =
    { ruleSets : Maybe (List ReceiptRuleSetMetadata)
    , nextToken : Maybe String
    }



listReceiptRuleSetsResponseDecoder : JD.Decoder ListReceiptRuleSetsResponse
listReceiptRuleSetsResponseDecoder =
    JDP.decode ListReceiptRuleSetsResponse
        |> JDP.optional "ruleSets" (JD.nullable (JD.list receiptRuleSetMetadataDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listVerifiedEmailAddresses
-}
type alias ListVerifiedEmailAddressesResponse =
    { verifiedEmailAddresses : Maybe (List String)
    }



listVerifiedEmailAddressesResponseDecoder : JD.Decoder ListVerifiedEmailAddressesResponse
listVerifiedEmailAddressesResponseDecoder =
    JDP.decode ListVerifiedEmailAddressesResponse
        |> JDP.optional "verifiedEmailAddresses" (JD.nullable (JD.list JD.string)) Nothing




{-| <p> Indicates that the message could not be sent because Amazon SES could not read the MX record required to use the specified MAIL FROM domain. For information about editing the custom MAIL FROM domain settings for an identity, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html">Amazon SES Developer Guide</a>.</p>
-}
type alias MailFromDomainNotVerifiedException =
    { 
    }



mailFromDomainNotVerifiedExceptionDecoder : JD.Decoder MailFromDomainNotVerifiedException
mailFromDomainNotVerifiedExceptionDecoder =
    JDP.decode MailFromDomainNotVerifiedException



{-| <p>Represents the message to be sent, composed of a subject and a body.</p>
-}
type alias Message =
    { subject : Content
    , body : Body
    }



messageDecoder : JD.Decoder Message
messageDecoder =
    JDP.decode Message
        |> JDP.required "subject" contentDecoder
        |> JDP.required "body" bodyDecoder




{-| <p>Message-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-}
type alias MessageDsn =
    { reportingMta : String
    , arrivalDate : Maybe Date
    , extensionFields : Maybe (List ExtensionField)
    }



messageDsnDecoder : JD.Decoder MessageDsn
messageDsnDecoder =
    JDP.decode MessageDsn
        |> JDP.required "reportingMta" JD.string
        |> JDP.optional "arrivalDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "extensionFields" (JD.nullable (JD.list extensionFieldDecoder)) Nothing




{-| <p>Indicates that the action failed, and the message could not be sent. Check the error stack for more information about what caused the error.</p>
-}
type alias MessageRejected =
    { 
    }



messageRejectedDecoder : JD.Decoder MessageRejected
messageRejectedDecoder =
    JDP.decode MessageRejected



{-| <p>Contains the name and value of a tag that you can provide to <code>SendEmail</code> or <code>SendRawEmail</code> to apply to an email.</p> <p>Message tags, which you use with configuration sets, enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-}
type alias MessageTag =
    { name : String
    , value : String
    }



messageTagDecoder : JD.Decoder MessageTag
messageTagDecoder =
    JDP.decode MessageTag
        |> JDP.required "name" JD.string
        |> JDP.required "value" JD.string




{-| One of

* `NotificationType_Bounce`
* `NotificationType_Complaint`
* `NotificationType_Delivery`

-}
type NotificationType
    = NotificationType_Bounce
    | NotificationType_Complaint
    | NotificationType_Delivery



notificationTypeDecoder : JD.Decoder NotificationType
notificationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Bounce" ->
                        JD.succeed NotificationType_Bounce

                    "Complaint" ->
                        JD.succeed NotificationType_Complaint

                    "Delivery" ->
                        JD.succeed NotificationType_Delivery


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putIdentityPolicy
-}
type alias PutIdentityPolicyResponse =
    { 
    }



putIdentityPolicyResponseDecoder : JD.Decoder PutIdentityPolicyResponse
putIdentityPolicyResponseDecoder =
    JDP.decode PutIdentityPolicyResponse



{-| <p>Represents the raw data of the message.</p>
-}
type alias RawMessage =
    { data : String
    }



rawMessageDecoder : JD.Decoder RawMessage
rawMessageDecoder =
    JDP.decode RawMessage
        |> JDP.required "data" JD.string




{-| <p>An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>
-}
type alias ReceiptAction =
    { s3Action : Maybe S3Action
    , bounceAction : Maybe BounceAction
    , workmailAction : Maybe WorkmailAction
    , lambdaAction : Maybe LambdaAction
    , stopAction : Maybe StopAction
    , addHeaderAction : Maybe AddHeaderAction
    , sNSAction : Maybe SNSAction
    }



receiptActionDecoder : JD.Decoder ReceiptAction
receiptActionDecoder =
    JDP.decode ReceiptAction
        |> JDP.optional "s3Action" (JD.nullable s3ActionDecoder) Nothing
        |> JDP.optional "bounceAction" (JD.nullable bounceActionDecoder) Nothing
        |> JDP.optional "workmailAction" (JD.nullable workmailActionDecoder) Nothing
        |> JDP.optional "lambdaAction" (JD.nullable lambdaActionDecoder) Nothing
        |> JDP.optional "stopAction" (JD.nullable stopActionDecoder) Nothing
        |> JDP.optional "addHeaderAction" (JD.nullable addHeaderActionDecoder) Nothing
        |> JDP.optional "sNSAction" (JD.nullable sNSActionDecoder) Nothing




{-| <p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
-}
type alias ReceiptFilter =
    { name : String
    , ipFilter : ReceiptIpFilter
    }



receiptFilterDecoder : JD.Decoder ReceiptFilter
receiptFilterDecoder =
    JDP.decode ReceiptFilter
        |> JDP.required "name" JD.string
        |> JDP.required "ipFilter" receiptIpFilterDecoder




{-| One of

* `ReceiptFilterPolicy_Block`
* `ReceiptFilterPolicy_Allow`

-}
type ReceiptFilterPolicy
    = ReceiptFilterPolicy_Block
    | ReceiptFilterPolicy_Allow



receiptFilterPolicyDecoder : JD.Decoder ReceiptFilterPolicy
receiptFilterPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Block" ->
                        JD.succeed ReceiptFilterPolicy_Block

                    "Allow" ->
                        JD.succeed ReceiptFilterPolicy_Allow


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
-}
type alias ReceiptIpFilter =
    { policy : ReceiptFilterPolicy
    , cidr : String
    }



receiptIpFilterDecoder : JD.Decoder ReceiptIpFilter
receiptIpFilterDecoder =
    JDP.decode ReceiptIpFilter
        |> JDP.required "policy" receiptFilterPolicyDecoder
        |> JDP.required "cidr" JD.string




{-| <p>Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.</p> <p>Each receipt rule defines a set of email addresses or domains to which it applies. If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>
-}
type alias ReceiptRule =
    { name : String
    , enabled : Maybe Bool
    , tlsPolicy : Maybe TlsPolicy
    , recipients : Maybe (List String)
    , actions : Maybe (List ReceiptAction)
    , scanEnabled : Maybe Bool
    }



receiptRuleDecoder : JD.Decoder ReceiptRule
receiptRuleDecoder =
    JDP.decode ReceiptRule
        |> JDP.required "name" JD.string
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "tlsPolicy" (JD.nullable tlsPolicyDecoder) Nothing
        |> JDP.optional "recipients" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "actions" (JD.nullable (JD.list receiptActionDecoder)) Nothing
        |> JDP.optional "scanEnabled" (JD.nullable JD.bool) Nothing




{-| <p>Information about a receipt rule set.</p> <p>A receipt rule set is a collection of rules that specify what Amazon SES should do with mail it receives on behalf of your account's verified domains.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p>
-}
type alias ReceiptRuleSetMetadata =
    { name : Maybe String
    , createdTimestamp : Maybe Date
    }



receiptRuleSetMetadataDecoder : JD.Decoder ReceiptRuleSetMetadata
receiptRuleSetMetadataDecoder =
    JDP.decode ReceiptRuleSetMetadata
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdTimestamp" (JD.nullable JDX.date) Nothing




{-| <p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-}
type alias RecipientDsnFields =
    { finalRecipient : Maybe String
    , action : DsnAction
    , remoteMta : Maybe String
    , status : String
    , diagnosticCode : Maybe String
    , lastAttemptDate : Maybe Date
    , extensionFields : Maybe (List ExtensionField)
    }



recipientDsnFieldsDecoder : JD.Decoder RecipientDsnFields
recipientDsnFieldsDecoder =
    JDP.decode RecipientDsnFields
        |> JDP.optional "finalRecipient" (JD.nullable JD.string) Nothing
        |> JDP.required "action" dsnActionDecoder
        |> JDP.optional "remoteMta" (JD.nullable JD.string) Nothing
        |> JDP.required "status" JD.string
        |> JDP.optional "diagnosticCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastAttemptDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "extensionFields" (JD.nullable (JD.list extensionFieldDecoder)) Nothing




{-| Type of HTTP response from reorderReceiptRuleSet
-}
type alias ReorderReceiptRuleSetResponse =
    { 
    }



reorderReceiptRuleSetResponseDecoder : JD.Decoder ReorderReceiptRuleSetResponse
reorderReceiptRuleSetResponseDecoder =
    JDP.decode ReorderReceiptRuleSetResponse



{-| <p>Indicates that the provided receipt rule does not exist.</p>
-}
type alias RuleDoesNotExistException =
    { name : Maybe String
    }



ruleDoesNotExistExceptionDecoder : JD.Decoder RuleDoesNotExistException
ruleDoesNotExistExceptionDecoder =
    JDP.decode RuleDoesNotExistException
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the provided receipt rule set does not exist.</p>
-}
type alias RuleSetDoesNotExistException =
    { name : Maybe String
    }



ruleSetDoesNotExistExceptionDecoder : JD.Decoder RuleSetDoesNotExistException
ruleSetDoesNotExistExceptionDecoder =
    JDP.decode RuleSetDoesNotExistException
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <note> <p>When you save your emails to an Amazon S3 bucket, the maximum email size (including headers) is 30 MB. Emails larger than that will bounce.</p> </note> <p>For information about specifying Amazon S3 actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html">Amazon SES Developer Guide</a>.</p>
-}
type alias S3Action =
    { topicArn : Maybe String
    , bucketName : String
    , objectKeyPrefix : Maybe String
    , kmsKeyArn : Maybe String
    }



s3ActionDecoder : JD.Decoder S3Action
s3ActionDecoder =
    JDP.decode S3Action
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing
        |> JDP.required "bucketName" JD.string
        |> JDP.optional "objectKeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyArn" (JD.nullable JD.string) Nothing




{-| <p>When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS notifications. Amazon SNS notifications for all other actions simply provide information about the email. They do not include the email content itself.</p> <p>If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a policy to the topic to give Amazon SES permissions to access it. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <important> <p>You can only publish emails that are 150 KB or less (including the header) to Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use the S3 action instead.</p> </important> <p>For information about using a receipt rule to publish an Amazon SNS notification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html">Amazon SES Developer Guide</a>.</p>
-}
type alias SNSAction =
    { topicArn : String
    , encoding : Maybe SNSActionEncoding
    }



sNSActionDecoder : JD.Decoder SNSAction
sNSActionDecoder =
    JDP.decode SNSAction
        |> JDP.required "topicArn" JD.string
        |> JDP.optional "encoding" (JD.nullable sNSActionEncodingDecoder) Nothing




{-| One of

* `SNSActionEncoding_UTF-8`
* `SNSActionEncoding_Base64`

-}
type SNSActionEncoding
    = SNSActionEncoding_UTF_8
    | SNSActionEncoding_Base64



sNSActionEncodingDecoder : JD.Decoder SNSActionEncoding
sNSActionEncodingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UTF_8" ->
                        JD.succeed SNSActionEncoding_UTF_8

                    "Base64" ->
                        JD.succeed SNSActionEncoding_Base64


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from sendBounce
-}
type alias SendBounceResponse =
    { messageId : Maybe String
    }



sendBounceResponseDecoder : JD.Decoder SendBounceResponse
sendBounceResponseDecoder =
    JDP.decode SendBounceResponse
        |> JDP.optional "messageId" (JD.nullable JD.string) Nothing




{-| <p>Represents sending statistics data. Each <code>SendDataPoint</code> contains statistics for a 15-minute period of sending activity. </p>
-}
type alias SendDataPoint =
    { timestamp : Maybe Date
    , deliveryAttempts : Maybe Int
    , bounces : Maybe Int
    , complaints : Maybe Int
    , rejects : Maybe Int
    }



sendDataPointDecoder : JD.Decoder SendDataPoint
sendDataPointDecoder =
    JDP.decode SendDataPoint
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deliveryAttempts" (JD.nullable JD.int) Nothing
        |> JDP.optional "bounces" (JD.nullable JD.int) Nothing
        |> JDP.optional "complaints" (JD.nullable JD.int) Nothing
        |> JDP.optional "rejects" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from sendEmail
-}
type alias SendEmailResponse =
    { messageId : String
    }



sendEmailResponseDecoder : JD.Decoder SendEmailResponse
sendEmailResponseDecoder =
    JDP.decode SendEmailResponse
        |> JDP.required "messageId" JD.string




{-| Type of HTTP response from sendRawEmail
-}
type alias SendRawEmailResponse =
    { messageId : String
    }



sendRawEmailResponseDecoder : JD.Decoder SendRawEmailResponse
sendRawEmailResponseDecoder =
    JDP.decode SendRawEmailResponse
        |> JDP.required "messageId" JD.string




{-| Type of HTTP response from setActiveReceiptRuleSet
-}
type alias SetActiveReceiptRuleSetResponse =
    { 
    }



setActiveReceiptRuleSetResponseDecoder : JD.Decoder SetActiveReceiptRuleSetResponse
setActiveReceiptRuleSetResponseDecoder =
    JDP.decode SetActiveReceiptRuleSetResponse



{-| Type of HTTP response from setIdentityDkimEnabled
-}
type alias SetIdentityDkimEnabledResponse =
    { 
    }



setIdentityDkimEnabledResponseDecoder : JD.Decoder SetIdentityDkimEnabledResponse
setIdentityDkimEnabledResponseDecoder =
    JDP.decode SetIdentityDkimEnabledResponse



{-| Type of HTTP response from setIdentityFeedbackForwardingEnabled
-}
type alias SetIdentityFeedbackForwardingEnabledResponse =
    { 
    }



setIdentityFeedbackForwardingEnabledResponseDecoder : JD.Decoder SetIdentityFeedbackForwardingEnabledResponse
setIdentityFeedbackForwardingEnabledResponseDecoder =
    JDP.decode SetIdentityFeedbackForwardingEnabledResponse



{-| Type of HTTP response from setIdentityHeadersInNotificationsEnabled
-}
type alias SetIdentityHeadersInNotificationsEnabledResponse =
    { 
    }



setIdentityHeadersInNotificationsEnabledResponseDecoder : JD.Decoder SetIdentityHeadersInNotificationsEnabledResponse
setIdentityHeadersInNotificationsEnabledResponseDecoder =
    JDP.decode SetIdentityHeadersInNotificationsEnabledResponse



{-| Type of HTTP response from setIdentityMailFromDomain
-}
type alias SetIdentityMailFromDomainResponse =
    { 
    }



setIdentityMailFromDomainResponseDecoder : JD.Decoder SetIdentityMailFromDomainResponse
setIdentityMailFromDomainResponseDecoder =
    JDP.decode SetIdentityMailFromDomainResponse



{-| Type of HTTP response from setIdentityNotificationTopic
-}
type alias SetIdentityNotificationTopicResponse =
    { 
    }



setIdentityNotificationTopicResponseDecoder : JD.Decoder SetIdentityNotificationTopicResponse
setIdentityNotificationTopicResponseDecoder =
    JDP.decode SetIdentityNotificationTopicResponse



{-| Type of HTTP response from setReceiptRulePosition
-}
type alias SetReceiptRulePositionResponse =
    { 
    }



setReceiptRulePositionResponseDecoder : JD.Decoder SetReceiptRulePositionResponse
setReceiptRulePositionResponseDecoder =
    JDP.decode SetReceiptRulePositionResponse



{-| <p>When included in a receipt rule, this action terminates the evaluation of the receipt rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about setting a stop action in a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html">Amazon SES Developer Guide</a>.</p>
-}
type alias StopAction =
    { scope : StopScope
    , topicArn : Maybe String
    }



stopActionDecoder : JD.Decoder StopAction
stopActionDecoder =
    JDP.decode StopAction
        |> JDP.required "scope" stopScopeDecoder
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing




{-| One of

* `StopScope_RuleSet`

-}
type StopScope
    = StopScope_RuleSet



stopScopeDecoder : JD.Decoder StopScope
stopScopeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RuleSet" ->
                        JD.succeed StopScope_RuleSet


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `TlsPolicy_Require`
* `TlsPolicy_Optional`

-}
type TlsPolicy
    = TlsPolicy_Require
    | TlsPolicy_Optional



tlsPolicyDecoder : JD.Decoder TlsPolicy
tlsPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Require" ->
                        JD.succeed TlsPolicy_Require

                    "Optional" ->
                        JD.succeed TlsPolicy_Optional


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from updateConfigurationSetEventDestination
-}
type alias UpdateConfigurationSetEventDestinationResponse =
    { 
    }



updateConfigurationSetEventDestinationResponseDecoder : JD.Decoder UpdateConfigurationSetEventDestinationResponse
updateConfigurationSetEventDestinationResponseDecoder =
    JDP.decode UpdateConfigurationSetEventDestinationResponse



{-| Type of HTTP response from updateReceiptRule
-}
type alias UpdateReceiptRuleResponse =
    { 
    }



updateReceiptRuleResponseDecoder : JD.Decoder UpdateReceiptRuleResponse
updateReceiptRuleResponseDecoder =
    JDP.decode UpdateReceiptRuleResponse



{-| One of

* `VerificationStatus_Pending`
* `VerificationStatus_Success`
* `VerificationStatus_Failed`
* `VerificationStatus_TemporaryFailure`
* `VerificationStatus_NotStarted`

-}
type VerificationStatus
    = VerificationStatus_Pending
    | VerificationStatus_Success
    | VerificationStatus_Failed
    | VerificationStatus_TemporaryFailure
    | VerificationStatus_NotStarted



verificationStatusDecoder : JD.Decoder VerificationStatus
verificationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed VerificationStatus_Pending

                    "Success" ->
                        JD.succeed VerificationStatus_Success

                    "Failed" ->
                        JD.succeed VerificationStatus_Failed

                    "TemporaryFailure" ->
                        JD.succeed VerificationStatus_TemporaryFailure

                    "NotStarted" ->
                        JD.succeed VerificationStatus_NotStarted


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from verifyDomainDkim
-}
type alias VerifyDomainDkimResponse =
    { dkimTokens : (List String)
    }



verifyDomainDkimResponseDecoder : JD.Decoder VerifyDomainDkimResponse
verifyDomainDkimResponseDecoder =
    JDP.decode VerifyDomainDkimResponse
        |> JDP.required "dkimTokens" (JD.list JD.string)




{-| Type of HTTP response from verifyDomainIdentity
-}
type alias VerifyDomainIdentityResponse =
    { verificationToken : String
    }



verifyDomainIdentityResponseDecoder : JD.Decoder VerifyDomainIdentityResponse
verifyDomainIdentityResponseDecoder =
    JDP.decode VerifyDomainIdentityResponse
        |> JDP.required "verificationToken" JD.string




{-| Type of HTTP response from verifyEmailIdentity
-}
type alias VerifyEmailIdentityResponse =
    { 
    }



verifyEmailIdentityResponseDecoder : JD.Decoder VerifyEmailIdentityResponse
verifyEmailIdentityResponseDecoder =
    JDP.decode VerifyEmailIdentityResponse



{-| <p>When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action directly because Amazon WorkMail adds the rule automatically during its setup procedure.</p> <p>For information using a receipt rule to call Amazon WorkMail, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html">Amazon SES Developer Guide</a>.</p>
-}
type alias WorkmailAction =
    { topicArn : Maybe String
    , organizationArn : String
    }



workmailActionDecoder : JD.Decoder WorkmailAction
workmailActionDecoder =
    JDP.decode WorkmailAction
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing
        |> JDP.required "organizationArn" JD.string




