module AWS.Services.SNS
    exposing
        ( config
        , addPermission
        , checkIfPhoneNumberIsOptedOut
        , confirmSubscription
        , ConfirmSubscriptionOptions
        , createPlatformApplication
        , createPlatformEndpoint
        , CreatePlatformEndpointOptions
        , createTopic
        , deleteEndpoint
        , deletePlatformApplication
        , deleteTopic
        , getEndpointAttributes
        , getPlatformApplicationAttributes
        , getSMSAttributes
        , GetSMSAttributesOptions
        , getSubscriptionAttributes
        , getTopicAttributes
        , listEndpointsByPlatformApplication
        , ListEndpointsByPlatformApplicationOptions
        , listPhoneNumbersOptedOut
        , ListPhoneNumbersOptedOutOptions
        , listPlatformApplications
        , ListPlatformApplicationsOptions
        , listSubscriptions
        , ListSubscriptionsOptions
        , listSubscriptionsByTopic
        , ListSubscriptionsByTopicOptions
        , listTopics
        , ListTopicsOptions
        , optInPhoneNumber
        , publish
        , PublishOptions
        , removePermission
        , setEndpointAttributes
        , setPlatformApplicationAttributes
        , setSMSAttributes
        , setSubscriptionAttributes
        , SetSubscriptionAttributesOptions
        , setTopicAttributes
        , SetTopicAttributesOptions
        , subscribe
        , SubscribeOptions
        , unsubscribe
        , AuthorizationErrorException
        , CheckIfPhoneNumberIsOptedOutResponse
        , ConfirmSubscriptionResponse
        , CreateEndpointResponse
        , CreatePlatformApplicationResponse
        , CreateTopicResponse
        , Endpoint
        , EndpointDisabledException
        , GetEndpointAttributesResponse
        , GetPlatformApplicationAttributesResponse
        , GetSMSAttributesResponse
        , GetSubscriptionAttributesResponse
        , GetTopicAttributesResponse
        , InternalErrorException
        , InvalidParameterException
        , InvalidParameterValueException
        , ListEndpointsByPlatformApplicationResponse
        , ListPhoneNumbersOptedOutResponse
        , ListPlatformApplicationsResponse
        , ListSubscriptionsByTopicResponse
        , ListSubscriptionsResponse
        , ListTopicsResponse
        , MessageAttributeValue
        , NotFoundException
        , OptInPhoneNumberResponse
        , PlatformApplication
        , PlatformApplicationDisabledException
        , PublishResponse
        , SetSMSAttributesResponse
        , SubscribeResponse
        , Subscription
        , SubscriptionLimitExceededException
        , ThrottledException
        , Topic
        , TopicLimitExceededException
        )

{-| <fullname>Amazon Simple Notification Service</fullname> <p>Amazon Simple Notification Service (Amazon SNS) is a web service that enables you to build distributed web-enabled applications. Applications can use Amazon SNS to easily push real-time notification messages to interested subscribers over multiple delivery protocols. For more information about this product see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. For detailed information about Amazon SNS features and their associated API calls, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/">Amazon SNS Developer Guide</a>. </p> <p>We also provide SDKs that enable you to access Amazon SNS from your preferred programming language. The SDKs contain functionality that automatically takes care of tasks such as: cryptographically signing your service requests, retrying requests, and handling error responses. For a list of available SDKs, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>. </p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Exceptions](#exceptions)

## Operations

* [addPermission](#addPermission)
* [checkIfPhoneNumberIsOptedOut](#checkIfPhoneNumberIsOptedOut)
* [confirmSubscription](#confirmSubscription)
* [ConfirmSubscriptionOptions](#ConfirmSubscriptionOptions)
* [createPlatformApplication](#createPlatformApplication)
* [createPlatformEndpoint](#createPlatformEndpoint)
* [CreatePlatformEndpointOptions](#CreatePlatformEndpointOptions)
* [createTopic](#createTopic)
* [deleteEndpoint](#deleteEndpoint)
* [deletePlatformApplication](#deletePlatformApplication)
* [deleteTopic](#deleteTopic)
* [getEndpointAttributes](#getEndpointAttributes)
* [getPlatformApplicationAttributes](#getPlatformApplicationAttributes)
* [getSMSAttributes](#getSMSAttributes)
* [GetSMSAttributesOptions](#GetSMSAttributesOptions)
* [getSubscriptionAttributes](#getSubscriptionAttributes)
* [getTopicAttributes](#getTopicAttributes)
* [listEndpointsByPlatformApplication](#listEndpointsByPlatformApplication)
* [ListEndpointsByPlatformApplicationOptions](#ListEndpointsByPlatformApplicationOptions)
* [listPhoneNumbersOptedOut](#listPhoneNumbersOptedOut)
* [ListPhoneNumbersOptedOutOptions](#ListPhoneNumbersOptedOutOptions)
* [listPlatformApplications](#listPlatformApplications)
* [ListPlatformApplicationsOptions](#ListPlatformApplicationsOptions)
* [listSubscriptions](#listSubscriptions)
* [ListSubscriptionsOptions](#ListSubscriptionsOptions)
* [listSubscriptionsByTopic](#listSubscriptionsByTopic)
* [ListSubscriptionsByTopicOptions](#ListSubscriptionsByTopicOptions)
* [listTopics](#listTopics)
* [ListTopicsOptions](#ListTopicsOptions)
* [optInPhoneNumber](#optInPhoneNumber)
* [publish](#publish)
* [PublishOptions](#PublishOptions)
* [removePermission](#removePermission)
* [setEndpointAttributes](#setEndpointAttributes)
* [setPlatformApplicationAttributes](#setPlatformApplicationAttributes)
* [setSMSAttributes](#setSMSAttributes)
* [setSubscriptionAttributes](#setSubscriptionAttributes)
* [SetSubscriptionAttributesOptions](#SetSubscriptionAttributesOptions)
* [setTopicAttributes](#setTopicAttributes)
* [SetTopicAttributesOptions](#SetTopicAttributesOptions)
* [subscribe](#subscribe)
* [SubscribeOptions](#SubscribeOptions)
* [unsubscribe](#unsubscribe)


@docs addPermission,checkIfPhoneNumberIsOptedOut,confirmSubscription,ConfirmSubscriptionOptions,createPlatformApplication,createPlatformEndpoint,CreatePlatformEndpointOptions,createTopic,deleteEndpoint,deletePlatformApplication,deleteTopic,getEndpointAttributes,getPlatformApplicationAttributes,getSMSAttributes,GetSMSAttributesOptions,getSubscriptionAttributes,getTopicAttributes,listEndpointsByPlatformApplication,ListEndpointsByPlatformApplicationOptions,listPhoneNumbersOptedOut,ListPhoneNumbersOptedOutOptions,listPlatformApplications,ListPlatformApplicationsOptions,listSubscriptions,ListSubscriptionsOptions,listSubscriptionsByTopic,ListSubscriptionsByTopicOptions,listTopics,ListTopicsOptions,optInPhoneNumber,publish,PublishOptions,removePermission,setEndpointAttributes,setPlatformApplicationAttributes,setSMSAttributes,setSubscriptionAttributes,SetSubscriptionAttributesOptions,setTopicAttributes,SetTopicAttributesOptions,subscribe,SubscribeOptions,unsubscribe

## Responses

* [CheckIfPhoneNumberIsOptedOutResponse](#CheckIfPhoneNumberIsOptedOutResponse)
* [ConfirmSubscriptionResponse](#ConfirmSubscriptionResponse)
* [CreateEndpointResponse](#CreateEndpointResponse)
* [CreatePlatformApplicationResponse](#CreatePlatformApplicationResponse)
* [CreateTopicResponse](#CreateTopicResponse)
* [GetEndpointAttributesResponse](#GetEndpointAttributesResponse)
* [GetPlatformApplicationAttributesResponse](#GetPlatformApplicationAttributesResponse)
* [GetSMSAttributesResponse](#GetSMSAttributesResponse)
* [GetSubscriptionAttributesResponse](#GetSubscriptionAttributesResponse)
* [GetTopicAttributesResponse](#GetTopicAttributesResponse)
* [ListEndpointsByPlatformApplicationResponse](#ListEndpointsByPlatformApplicationResponse)
* [ListPhoneNumbersOptedOutResponse](#ListPhoneNumbersOptedOutResponse)
* [ListPlatformApplicationsResponse](#ListPlatformApplicationsResponse)
* [ListSubscriptionsByTopicResponse](#ListSubscriptionsByTopicResponse)
* [ListSubscriptionsResponse](#ListSubscriptionsResponse)
* [ListTopicsResponse](#ListTopicsResponse)
* [OptInPhoneNumberResponse](#OptInPhoneNumberResponse)
* [PublishResponse](#PublishResponse)
* [SetSMSAttributesResponse](#SetSMSAttributesResponse)
* [SubscribeResponse](#SubscribeResponse)


@docs CheckIfPhoneNumberIsOptedOutResponse,ConfirmSubscriptionResponse,CreateEndpointResponse,CreatePlatformApplicationResponse,CreateTopicResponse,GetEndpointAttributesResponse,GetPlatformApplicationAttributesResponse,GetSMSAttributesResponse,GetSubscriptionAttributesResponse,GetTopicAttributesResponse,ListEndpointsByPlatformApplicationResponse,ListPhoneNumbersOptedOutResponse,ListPlatformApplicationsResponse,ListSubscriptionsByTopicResponse,ListSubscriptionsResponse,ListTopicsResponse,OptInPhoneNumberResponse,PublishResponse,SetSMSAttributesResponse,SubscribeResponse

## Records

* [Endpoint](#Endpoint)
* [MessageAttributeValue](#MessageAttributeValue)
* [PlatformApplication](#PlatformApplication)
* [Subscription](#Subscription)
* [Topic](#Topic)


@docs Endpoint,MessageAttributeValue,PlatformApplication,Subscription,Topic

## Exceptions

* [AuthorizationErrorException](#AuthorizationErrorException)
* [EndpointDisabledException](#EndpointDisabledException)
* [InternalErrorException](#InternalErrorException)
* [InvalidParameterException](#InvalidParameterException)
* [InvalidParameterValueException](#InvalidParameterValueException)
* [NotFoundException](#NotFoundException)
* [PlatformApplicationDisabledException](#PlatformApplicationDisabledException)
* [SubscriptionLimitExceededException](#SubscriptionLimitExceededException)
* [ThrottledException](#ThrottledException)
* [TopicLimitExceededException](#TopicLimitExceededException)


@docs AuthorizationErrorException,EndpointDisabledException,InternalErrorException,InvalidParameterException,InvalidParameterValueException,NotFoundException,PlatformApplicationDisabledException,SubscriptionLimitExceededException,ThrottledException,TopicLimitExceededException

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "sns"
        "2010-03-31"
        "undefined"
        "AWSSNS_20100331."
        "sns.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions.</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `label` __:__ `String`
* `aWSAccountId` __:__ `(List String)`
* `actionName` __:__ `(List String)`


-}
addPermission :
    String
    -> String
    -> (List String)
    -> (List String)
    -> AWS.Request ()
addPermission topicArn label aWSAccountId actionName =
    AWS.Http.unsignedRequest
        "AddPermission"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account. You cannot send SMS messages to a number that is opted out.</p> <p>To resume sending messages, you can opt in the number by using the <code>OptInPhoneNumber</code> action.</p>

__Required Parameters__

* `phoneNumber` __:__ `String`


-}
checkIfPhoneNumberIsOptedOut :
    String
    -> AWS.Request CheckIfPhoneNumberIsOptedOutResponse
checkIfPhoneNumberIsOptedOut phoneNumber =
    AWS.Http.unsignedRequest
        "CheckIfPhoneNumberIsOptedOut"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        checkIfPhoneNumberIsOptedOutResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the action creates a new subscription and returns its Amazon Resource Name (ARN). This call requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is set to "true".</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `token` __:__ `String`


-}
confirmSubscription :
    String
    -> String
    -> (ConfirmSubscriptionOptions -> ConfirmSubscriptionOptions)
    -> AWS.Request ConfirmSubscriptionResponse
confirmSubscription topicArn token setOptions =
  let
    options = setOptions (ConfirmSubscriptionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ConfirmSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmSubscriptionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a confirmSubscription request
-}
type alias ConfirmSubscriptionOptions =
    { authenticateOnUnsubscribe : Maybe String
    }



{-| <p>Creates a platform application object for one of the supported push notification services, such as APNS and GCM, to which devices and mobile apps may register. You must specify PlatformPrincipal and PlatformCredential attributes when using the <code>CreatePlatformApplication</code> action. The PlatformPrincipal is received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is "SSL certificate". For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id". The PlatformCredential is also received from the notification service. For WNS, PlatformPrincipal is "Package Security Identifier". For MPNS, PlatformPrincipal is "TLS certificate". For Baidu, PlatformPrincipal is "API key".</p> <p>For APNS/APNS_SANDBOX, PlatformCredential is "private key". For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret". For WNS, PlatformCredential is "secret key". For MPNS, PlatformCredential is "private key". For Baidu, PlatformCredential is "secret key". The PlatformApplicationArn that is returned when using <code>CreatePlatformApplication</code> is then used as an attribute for the <code>CreatePlatformEndpoint</code> action. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For more information about obtaining the PlatformPrincipal and PlatformCredential for each of the supported push notification services, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-apns.html">Getting Started with Apple Push Notification Service</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-adm.html">Getting Started with Amazon Device Messaging</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-baidu.html">Getting Started with Baidu Cloud Push</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-gcm.html">Getting Started with Google Cloud Messaging for Android</a>, <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-mpns.html">Getting Started with MPNS</a>, or <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-wns.html">Getting Started with WNS</a>. </p>

__Required Parameters__

* `name` __:__ `String`
* `platform` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}
createPlatformApplication :
    String
    -> String
    -> (Dict String String)
    -> AWS.Request CreatePlatformApplicationResponse
createPlatformApplication name platform attributes =
    AWS.Http.unsignedRequest
        "CreatePlatformApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPlatformApplicationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS. <code>CreatePlatformEndpoint</code> requires the PlatformApplicationArn that is returned from <code>CreatePlatformApplication</code>. The EndpointArn that is returned when using <code>CreatePlatformEndpoint</code> can then be used by the <code>Publish</code> action to send a message to a mobile app or by the <code>Subscribe</code> action for subscription to a topic. The <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester already owns an endpoint with the same device token and attributes, that endpoint's ARN is returned without creating a new endpoint. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be provided: ChannelId and UserId. The token field must also contain the ChannelId. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint for Baidu</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`
* `token` __:__ `String`


-}
createPlatformEndpoint :
    String
    -> String
    -> (CreatePlatformEndpointOptions -> CreatePlatformEndpointOptions)
    -> AWS.Request CreateEndpointResponse
createPlatformEndpoint platformApplicationArn token setOptions =
  let
    options = setOptions (CreatePlatformEndpointOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePlatformEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createEndpointResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createPlatformEndpoint request
-}
type alias CreatePlatformEndpointOptions =
    { customUserData : Maybe String
    , attributes : Maybe (Dict String String)
    }



{-| <p>Creates a topic to which notifications can be published. Users can create at most 100,000 topics. For more information, see <a href="http://aws.amazon.com/sns/">http://aws.amazon.com/sns</a>. This action is idempotent, so if the requester already owns a topic with the specified name, that topic's ARN is returned without creating a new topic.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createTopic :
    String
    -> AWS.Request CreateTopicResponse
createTopic name =
    AWS.Http.unsignedRequest
        "CreateTopic"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTopicResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is idempotent. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p> <p>When you delete an endpoint that is also subscribed to a topic, then you must also unsubscribe the endpoint from the topic.</p>

__Required Parameters__

* `endpointArn` __:__ `String`


-}
deleteEndpoint :
    String
    -> AWS.Request ()
deleteEndpoint endpointArn =
    AWS.Http.unsignedRequest
        "DeleteEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a platform application object for one of the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`


-}
deletePlatformApplication :
    String
    -> AWS.Request ()
deletePlatformApplication platformApplicationArn =
    AWS.Http.unsignedRequest
        "DeletePlatformApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some messages previously sent to the topic from being delivered to subscribers. This action is idempotent, so deleting a topic that does not exist does not result in an error.</p>

__Required Parameters__

* `topicArn` __:__ `String`


-}
deleteTopic :
    String
    -> AWS.Request ()
deleteTopic topicArn =
    AWS.Http.unsignedRequest
        "DeleteTopic"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `endpointArn` __:__ `String`


-}
getEndpointAttributes :
    String
    -> AWS.Request GetEndpointAttributesResponse
getEndpointAttributes endpointArn =
    AWS.Http.unsignedRequest
        "GetEndpointAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getEndpointAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`


-}
getPlatformApplicationAttributes :
    String
    -> AWS.Request GetPlatformApplicationAttributesResponse
getPlatformApplicationAttributes platformApplicationArn =
    AWS.Http.unsignedRequest
        "GetPlatformApplicationAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPlatformApplicationAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the settings for sending SMS messages from your account.</p> <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>

__Required Parameters__



-}
getSMSAttributes :
    (GetSMSAttributesOptions -> GetSMSAttributesOptions)
    -> AWS.Request GetSMSAttributesResponse
getSMSAttributes setOptions =
  let
    options = setOptions (GetSMSAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetSMSAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSMSAttributesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getSMSAttributes request
-}
type alias GetSMSAttributesOptions =
    { attributes : Maybe (List String)
    }



{-| <p>Returns all of the properties of a subscription.</p>

__Required Parameters__

* `subscriptionArn` __:__ `String`


-}
getSubscriptionAttributes :
    String
    -> AWS.Request GetSubscriptionAttributesResponse
getSubscriptionAttributes subscriptionArn =
    AWS.Http.unsignedRequest
        "GetSubscriptionAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSubscriptionAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns all of the properties of a topic. Topic properties returned might differ based on the authorization of the user.</p>

__Required Parameters__

* `topicArn` __:__ `String`


-}
getTopicAttributes :
    String
    -> AWS.Request GetTopicAttributesResponse
getTopicAttributes topicArn =
    AWS.Http.unsignedRequest
        "GetTopicAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getTopicAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS. The results for <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited list of endpoints, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListEndpointsByPlatformApplication</code> again using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`


-}
listEndpointsByPlatformApplication :
    String
    -> (ListEndpointsByPlatformApplicationOptions -> ListEndpointsByPlatformApplicationOptions)
    -> AWS.Request ListEndpointsByPlatformApplicationResponse
listEndpointsByPlatformApplication platformApplicationArn setOptions =
  let
    options = setOptions (ListEndpointsByPlatformApplicationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListEndpointsByPlatformApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listEndpointsByPlatformApplicationResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listEndpointsByPlatformApplication request
-}
type alias ListEndpointsByPlatformApplicationOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them.</p> <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page returns up to 100 phone numbers. If additional phone numbers are available after the first page of results, then a <code>NextToken</code> string will be returned. To receive the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the <code>NextToken</code> string received from the previous call. When there are no more records to return, <code>NextToken</code> will be null.</p>

__Required Parameters__



-}
listPhoneNumbersOptedOut :
    (ListPhoneNumbersOptedOutOptions -> ListPhoneNumbersOptedOutOptions)
    -> AWS.Request ListPhoneNumbersOptedOutResponse
listPhoneNumbersOptedOut setOptions =
  let
    options = setOptions (ListPhoneNumbersOptedOutOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPhoneNumbersOptedOut"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPhoneNumbersOptedOutResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPhoneNumbersOptedOut request
-}
type alias ListPhoneNumbersOptedOutOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists the platform application objects for the supported push notification services, such as APNS and GCM. The results for <code>ListPlatformApplications</code> are paginated and return a limited list of applications, up to 100. If additional records are available after the first page results, then a NextToken string will be returned. To receive the next page, you call <code>ListPlatformApplications</code> using the NextToken string received from the previous call. When there are no more records to return, NextToken will be null. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__



-}
listPlatformApplications :
    (ListPlatformApplicationsOptions -> ListPlatformApplicationsOptions)
    -> AWS.Request ListPlatformApplicationsResponse
listPlatformApplications setOptions =
  let
    options = setOptions (ListPlatformApplicationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPlatformApplications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPlatformApplicationsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPlatformApplications request
-}
type alias ListPlatformApplicationsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list of the requester's subscriptions. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptions</code> call to get further results.</p>

__Required Parameters__



-}
listSubscriptions :
    (ListSubscriptionsOptions -> ListSubscriptionsOptions)
    -> AWS.Request ListSubscriptionsResponse
listSubscriptions setOptions =
  let
    options = setOptions (ListSubscriptionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSubscriptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSubscriptionsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listSubscriptions request
-}
type alias ListSubscriptionsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list of the subscriptions to a specific topic. Each call returns a limited list of subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListSubscriptionsByTopic</code> call to get further results.</p>

__Required Parameters__

* `topicArn` __:__ `String`


-}
listSubscriptionsByTopic :
    String
    -> (ListSubscriptionsByTopicOptions -> ListSubscriptionsByTopicOptions)
    -> AWS.Request ListSubscriptionsByTopicResponse
listSubscriptionsByTopic topicArn setOptions =
  let
    options = setOptions (ListSubscriptionsByTopicOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSubscriptionsByTopic"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSubscriptionsByTopicResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listSubscriptionsByTopic request
-}
type alias ListSubscriptionsByTopicOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list of the requester's topics. Each call returns a limited list of topics, up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get further results.</p>

__Required Parameters__



-}
listTopics :
    (ListTopicsOptions -> ListTopicsOptions)
    -> AWS.Request ListTopicsResponse
listTopics setOptions =
  let
    options = setOptions (ListTopicsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTopics"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTopicsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listTopics request
-}
type alias ListTopicsOptions =
    { nextToken : Maybe String
    }



{-| <p>Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number.</p> <p>You can opt in a phone number only once every 30 days.</p>

__Required Parameters__

* `phoneNumber` __:__ `String`


-}
optInPhoneNumber :
    String
    -> AWS.Request OptInPhoneNumberResponse
optInPhoneNumber phoneNumber =
    AWS.Http.unsignedRequest
        "OptInPhoneNumber"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        optInPhoneNumberResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Sends a message to all of a topic's subscribed endpoints. When a <code>messageId</code> is returned, the message has been saved and Amazon SNS will attempt to deliver it to the topic's subscribers shortly. The format of the outgoing message to each subscribed endpoint depends on the notification protocol.</p> <p>To use the <code>Publish</code> action for sending a message to a mobile endpoint, such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for the TargetArn parameter. The EndpointArn is returned when making a call with the <code>CreatePlatformEndpoint</code> action. </p> <p>For more information about formatting messages, see <a href="http://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>

__Required Parameters__

* `message` __:__ `String`


-}
publish :
    String
    -> (PublishOptions -> PublishOptions)
    -> AWS.Request PublishResponse
publish message setOptions =
  let
    options = setOptions (PublishOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "Publish"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        publishResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a publish request
-}
type alias PublishOptions =
    { topicArn : Maybe String
    , targetArn : Maybe String
    , phoneNumber : Maybe String
    , subject : Maybe String
    , messageStructure : Maybe String
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    }



{-| <p>Removes a statement from a topic's access control policy.</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `label` __:__ `String`


-}
removePermission :
    String
    -> String
    -> AWS.Request ()
removePermission topicArn label =
    AWS.Http.unsignedRequest
        "RemovePermission"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>

__Required Parameters__

* `endpointArn` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}
setEndpointAttributes :
    String
    -> (Dict String String)
    -> AWS.Request ()
setEndpointAttributes endpointArn attributes =
    AWS.Http.unsignedRequest
        "SetEndpointAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring attributes for message delivery status, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for Message Delivery Status</a>. </p>

__Required Parameters__

* `platformApplicationArn` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}
setPlatformApplicationAttributes :
    String
    -> (Dict String String)
    -> AWS.Request ()
setPlatformApplicationAttributes platformApplicationArn attributes =
    AWS.Http.unsignedRequest
        "SetPlatformApplicationAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports.</p> <p>You can override some of these settings for a single message when you use the <code>Publish</code> action with the <code>MessageAttributes.entry.N</code> parameter. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Sending an SMS Message</a> in the <i>Amazon SNS Developer Guide</i>.</p>

__Required Parameters__

* `attributes` __:__ `(Dict String String)`


-}
setSMSAttributes :
    (Dict String String)
    -> AWS.Request SetSMSAttributesResponse
setSMSAttributes attributes =
    AWS.Http.unsignedRequest
        "SetSMSAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setSMSAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Allows a subscription owner to set an attribute of the topic to a new value.</p>

__Required Parameters__

* `subscriptionArn` __:__ `String`
* `attributeName` __:__ `String`


-}
setSubscriptionAttributes :
    String
    -> String
    -> (SetSubscriptionAttributesOptions -> SetSubscriptionAttributesOptions)
    -> AWS.Request ()
setSubscriptionAttributes subscriptionArn attributeName setOptions =
  let
    options = setOptions (SetSubscriptionAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetSubscriptionAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setSubscriptionAttributes request
-}
type alias SetSubscriptionAttributesOptions =
    { attributeValue : Maybe String
    }



{-| <p>Allows a topic owner to set an attribute of the topic to a new value.</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `attributeName` __:__ `String`


-}
setTopicAttributes :
    String
    -> String
    -> (SetTopicAttributesOptions -> SetTopicAttributesOptions)
    -> AWS.Request ()
setTopicAttributes topicArn attributeName setOptions =
  let
    options = setOptions (SetTopicAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetTopicAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setTopicAttributes request
-}
type alias SetTopicAttributesOptions =
    { attributeValue : Maybe String
    }



{-| <p>Prepares to subscribe an endpoint by sending the endpoint a confirmation message. To actually create a subscription, the endpoint owner must call the <code>ConfirmSubscription</code> action with the token from the confirmation message. Confirmation tokens are valid for three days.</p>

__Required Parameters__

* `topicArn` __:__ `String`
* `protocol` __:__ `String`


-}
subscribe :
    String
    -> String
    -> (SubscribeOptions -> SubscribeOptions)
    -> AWS.Request SubscribeResponse
subscribe topicArn protocol setOptions =
  let
    options = setOptions (SubscribeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "Subscribe"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        subscribeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a subscribe request
-}
type alias SubscribeOptions =
    { endpoint : Maybe String
    }



{-| <p>Deletes a subscription. If the subscription requires authentication for deletion, only the owner of the subscription or the topic's owner can unsubscribe, and an AWS signature is required. If the <code>Unsubscribe</code> call does not require authentication and the requester is not the subscription owner, a final cancellation message is delivered to the endpoint, so that the endpoint owner can easily resubscribe to the topic if the <code>Unsubscribe</code> request was unintended.</p>

__Required Parameters__

* `subscriptionArn` __:__ `String`


-}
unsubscribe :
    String
    -> AWS.Request ()
unsubscribe subscriptionArn =
    AWS.Http.unsignedRequest
        "Unsubscribe"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest




{-| <p>Indicates that the user has been denied access to the requested resource.</p>
-}
type alias AuthorizationErrorException =
    { message : Maybe String
    }



authorizationErrorExceptionDecoder : JD.Decoder AuthorizationErrorException
authorizationErrorExceptionDecoder =
    JDP.decode AuthorizationErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from checkIfPhoneNumberIsOptedOut
-}
type alias CheckIfPhoneNumberIsOptedOutResponse =
    { isOptedOut : Maybe Bool
    }



checkIfPhoneNumberIsOptedOutResponseDecoder : JD.Decoder CheckIfPhoneNumberIsOptedOutResponse
checkIfPhoneNumberIsOptedOutResponseDecoder =
    JDP.decode CheckIfPhoneNumberIsOptedOutResponse
        |> JDP.optional "isOptedOut" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from confirmSubscription
-}
type alias ConfirmSubscriptionResponse =
    { subscriptionArn : Maybe String
    }



confirmSubscriptionResponseDecoder : JD.Decoder ConfirmSubscriptionResponse
confirmSubscriptionResponseDecoder =
    JDP.decode ConfirmSubscriptionResponse
        |> JDP.optional "subscriptionArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createEndpoint
-}
type alias CreateEndpointResponse =
    { endpointArn : Maybe String
    }



createEndpointResponseDecoder : JD.Decoder CreateEndpointResponse
createEndpointResponseDecoder =
    JDP.decode CreateEndpointResponse
        |> JDP.optional "endpointArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createPlatformApplication
-}
type alias CreatePlatformApplicationResponse =
    { platformApplicationArn : Maybe String
    }



createPlatformApplicationResponseDecoder : JD.Decoder CreatePlatformApplicationResponse
createPlatformApplicationResponseDecoder =
    JDP.decode CreatePlatformApplicationResponse
        |> JDP.optional "platformApplicationArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createTopic
-}
type alias CreateTopicResponse =
    { topicArn : Maybe String
    }



createTopicResponseDecoder : JD.Decoder CreateTopicResponse
createTopicResponseDecoder =
    JDP.decode CreateTopicResponse
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing




{-| <p>Endpoint for mobile app and device.</p>
-}
type alias Endpoint =
    { endpointArn : Maybe String
    , attributes : Maybe (Dict String String)
    }



endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JDP.decode Endpoint
        |> JDP.optional "endpointArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Exception error indicating endpoint disabled.</p>
-}
type alias EndpointDisabledException =
    { message : Maybe String
    }



endpointDisabledExceptionDecoder : JD.Decoder EndpointDisabledException
endpointDisabledExceptionDecoder =
    JDP.decode EndpointDisabledException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getEndpointAttributes
-}
type alias GetEndpointAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getEndpointAttributesResponseDecoder : JD.Decoder GetEndpointAttributesResponse
getEndpointAttributesResponseDecoder =
    JDP.decode GetEndpointAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from getPlatformApplicationAttributes
-}
type alias GetPlatformApplicationAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getPlatformApplicationAttributesResponseDecoder : JD.Decoder GetPlatformApplicationAttributesResponse
getPlatformApplicationAttributesResponseDecoder =
    JDP.decode GetPlatformApplicationAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from getSMSAttributes
-}
type alias GetSMSAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getSMSAttributesResponseDecoder : JD.Decoder GetSMSAttributesResponse
getSMSAttributesResponseDecoder =
    JDP.decode GetSMSAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from getSubscriptionAttributes
-}
type alias GetSubscriptionAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getSubscriptionAttributesResponseDecoder : JD.Decoder GetSubscriptionAttributesResponse
getSubscriptionAttributesResponseDecoder =
    JDP.decode GetSubscriptionAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from getTopicAttributes
-}
type alias GetTopicAttributesResponse =
    { attributes : Maybe (Dict String String)
    }



getTopicAttributesResponseDecoder : JD.Decoder GetTopicAttributesResponse
getTopicAttributesResponseDecoder =
    JDP.decode GetTopicAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Indicates an internal service error.</p>
-}
type alias InternalErrorException =
    { message : Maybe String
    }



internalErrorExceptionDecoder : JD.Decoder InternalErrorException
internalErrorExceptionDecoder =
    JDP.decode InternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that a request parameter does not comply with the associated constraints.</p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that a request parameter does not comply with the associated constraints.</p>
-}
type alias InvalidParameterValueException =
    { message : Maybe String
    }



invalidParameterValueExceptionDecoder : JD.Decoder InvalidParameterValueException
invalidParameterValueExceptionDecoder =
    JDP.decode InvalidParameterValueException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listEndpointsByPlatformApplication
-}
type alias ListEndpointsByPlatformApplicationResponse =
    { endpoints : Maybe (List Endpoint)
    , nextToken : Maybe String
    }



listEndpointsByPlatformApplicationResponseDecoder : JD.Decoder ListEndpointsByPlatformApplicationResponse
listEndpointsByPlatformApplicationResponseDecoder =
    JDP.decode ListEndpointsByPlatformApplicationResponse
        |> JDP.optional "endpoints" (JD.nullable (JD.list endpointDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPhoneNumbersOptedOut
-}
type alias ListPhoneNumbersOptedOutResponse =
    { phoneNumbers : Maybe (List String)
    , nextToken : Maybe String
    }



listPhoneNumbersOptedOutResponseDecoder : JD.Decoder ListPhoneNumbersOptedOutResponse
listPhoneNumbersOptedOutResponseDecoder =
    JDP.decode ListPhoneNumbersOptedOutResponse
        |> JDP.optional "phoneNumbers" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPlatformApplications
-}
type alias ListPlatformApplicationsResponse =
    { platformApplications : Maybe (List PlatformApplication)
    , nextToken : Maybe String
    }



listPlatformApplicationsResponseDecoder : JD.Decoder ListPlatformApplicationsResponse
listPlatformApplicationsResponseDecoder =
    JDP.decode ListPlatformApplicationsResponse
        |> JDP.optional "platformApplications" (JD.nullable (JD.list platformApplicationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listSubscriptionsByTopic
-}
type alias ListSubscriptionsByTopicResponse =
    { subscriptions : Maybe (List Subscription)
    , nextToken : Maybe String
    }



listSubscriptionsByTopicResponseDecoder : JD.Decoder ListSubscriptionsByTopicResponse
listSubscriptionsByTopicResponseDecoder =
    JDP.decode ListSubscriptionsByTopicResponse
        |> JDP.optional "subscriptions" (JD.nullable (JD.list subscriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listSubscriptions
-}
type alias ListSubscriptionsResponse =
    { subscriptions : Maybe (List Subscription)
    , nextToken : Maybe String
    }



listSubscriptionsResponseDecoder : JD.Decoder ListSubscriptionsResponse
listSubscriptionsResponseDecoder =
    JDP.decode ListSubscriptionsResponse
        |> JDP.optional "subscriptions" (JD.nullable (JD.list subscriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTopics
-}
type alias ListTopicsResponse =
    { topics : Maybe (List Topic)
    , nextToken : Maybe String
    }



listTopicsResponseDecoder : JD.Decoder ListTopicsResponse
listTopicsResponseDecoder =
    JDP.decode ListTopicsResponse
        |> JDP.optional "topics" (JD.nullable (JD.list topicDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The user-specified message attribute value. For string data types, the value attribute has the same restrictions on the content as the message body. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a>.</p> <p>Name, type, and value must not be empty or null. In addition, the message body should not be empty or null. All parts of the message attribute, including name, type, and value, are included in the message size restriction, which is currently 256 KB (262,144 bytes). For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html">Using Amazon SNS Message Attributes</a>.</p>
-}
type alias MessageAttributeValue =
    { dataType : String
    , stringValue : Maybe String
    , binaryValue : Maybe String
    }



messageAttributeValueDecoder : JD.Decoder MessageAttributeValue
messageAttributeValueDecoder =
    JDP.decode MessageAttributeValue
        |> JDP.required "dataType" JD.string
        |> JDP.optional "stringValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "binaryValue" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the requested resource does not exist.</p>
-}
type alias NotFoundException =
    { message : Maybe String
    }



notFoundExceptionDecoder : JD.Decoder NotFoundException
notFoundExceptionDecoder =
    JDP.decode NotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from optInPhoneNumber
-}
type alias OptInPhoneNumberResponse =
    { 
    }



optInPhoneNumberResponseDecoder : JD.Decoder OptInPhoneNumberResponse
optInPhoneNumberResponseDecoder =
    JDP.decode OptInPhoneNumberResponse



{-| <p>Platform application object.</p>
-}
type alias PlatformApplication =
    { platformApplicationArn : Maybe String
    , attributes : Maybe (Dict String String)
    }



platformApplicationDecoder : JD.Decoder PlatformApplication
platformApplicationDecoder =
    JDP.decode PlatformApplication
        |> JDP.optional "platformApplicationArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Exception error indicating platform application disabled.</p>
-}
type alias PlatformApplicationDisabledException =
    { message : Maybe String
    }



platformApplicationDisabledExceptionDecoder : JD.Decoder PlatformApplicationDisabledException
platformApplicationDisabledExceptionDecoder =
    JDP.decode PlatformApplicationDisabledException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from publish
-}
type alias PublishResponse =
    { messageId : Maybe String
    }



publishResponseDecoder : JD.Decoder PublishResponse
publishResponseDecoder =
    JDP.decode PublishResponse
        |> JDP.optional "messageId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from setSMSAttributes
-}
type alias SetSMSAttributesResponse =
    { 
    }



setSMSAttributesResponseDecoder : JD.Decoder SetSMSAttributesResponse
setSMSAttributesResponseDecoder =
    JDP.decode SetSMSAttributesResponse



{-| Type of HTTP response from subscribe
-}
type alias SubscribeResponse =
    { subscriptionArn : Maybe String
    }



subscribeResponseDecoder : JD.Decoder SubscribeResponse
subscribeResponseDecoder =
    JDP.decode SubscribeResponse
        |> JDP.optional "subscriptionArn" (JD.nullable JD.string) Nothing




{-| <p>A wrapper type for the attributes of an Amazon SNS subscription.</p>
-}
type alias Subscription =
    { subscriptionArn : Maybe String
    , owner : Maybe String
    , protocol : Maybe String
    , endpoint : Maybe String
    , topicArn : Maybe String
    }



subscriptionDecoder : JD.Decoder Subscription
subscriptionDecoder =
    JDP.decode Subscription
        |> JDP.optional "subscriptionArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "owner" (JD.nullable JD.string) Nothing
        |> JDP.optional "protocol" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the customer already owns the maximum allowed number of subscriptions.</p>
-}
type alias SubscriptionLimitExceededException =
    { message : Maybe String
    }



subscriptionLimitExceededExceptionDecoder : JD.Decoder SubscriptionLimitExceededException
subscriptionLimitExceededExceptionDecoder =
    JDP.decode SubscriptionLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the rate at which requests have been submitted for this action exceeds the limit for your account.</p>
-}
type alias ThrottledException =
    { message : Maybe String
    }



throttledExceptionDecoder : JD.Decoder ThrottledException
throttledExceptionDecoder =
    JDP.decode ThrottledException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's attributes, use <code>GetTopicAttributes</code>.</p>
-}
type alias Topic =
    { topicArn : Maybe String
    }



topicDecoder : JD.Decoder Topic
topicDecoder =
    JDP.decode Topic
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the customer already owns the maximum allowed number of topics.</p>
-}
type alias TopicLimitExceededException =
    { message : Maybe String
    }



topicLimitExceededExceptionDecoder : JD.Decoder TopicLimitExceededException
topicLimitExceededExceptionDecoder =
    JDP.decode TopicLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




