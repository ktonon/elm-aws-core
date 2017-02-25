module AWS.Services.Shield
    exposing
        ( config
        , createProtection
        , createSubscription
        , deleteProtection
        , deleteSubscription
        , describeAttack
        , describeProtection
        , describeSubscription
        , listAttacks
        , ListAttacksOptions
        , listProtections
        , ListProtectionsOptions
        , AttackDetail
        , AttackSummary
        , AttackVectorDescription
        , CreateProtectionResponse
        , CreateSubscriptionResponse
        , DeleteProtectionResponse
        , DeleteSubscriptionResponse
        , DescribeAttackResponse
        , DescribeProtectionResponse
        , DescribeSubscriptionResponse
        , InternalErrorException
        , InvalidOperationException
        , InvalidParameterException
        , InvalidResourceException
        , LimitsExceededException
        , ListAttacksResponse
        , ListProtectionsResponse
        , LockedSubscriptionException
        , Mitigation
        , OptimisticLockException
        , Protection
        , ResourceAlreadyExistsException
        , ResourceNotFoundException
        , SubResourceSummary
        , SubResourceType(..)
        , Subscription
        , SummarizedAttackVector
        , SummarizedCounter
        , TimeRange
        )

{-| <fullname>AWS Shield Advanced</fullname> <p>This is the <i>AWS Shield Advanced API Reference</i>. This guide is for developers who need detailed information about the AWS Shield Advanced API actions, data types, and errors. For detailed information about AWS WAF and AWS Shield Advanced features and an overview of how to use the AWS WAF and AWS Shield Advanced APIs, see the <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF and AWS Shield Developer Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createProtection](#createProtection)
* [createSubscription](#createSubscription)
* [deleteProtection](#deleteProtection)
* [deleteSubscription](#deleteSubscription)
* [describeAttack](#describeAttack)
* [describeProtection](#describeProtection)
* [describeSubscription](#describeSubscription)
* [listAttacks](#listAttacks)
* [ListAttacksOptions](#ListAttacksOptions)
* [listProtections](#listProtections)
* [ListProtectionsOptions](#ListProtectionsOptions)


@docs createProtection,createSubscription,deleteProtection,deleteSubscription,describeAttack,describeProtection,describeSubscription,listAttacks,ListAttacksOptions,listProtections,ListProtectionsOptions

## Responses

* [CreateProtectionResponse](#CreateProtectionResponse)
* [CreateSubscriptionResponse](#CreateSubscriptionResponse)
* [DeleteProtectionResponse](#DeleteProtectionResponse)
* [DeleteSubscriptionResponse](#DeleteSubscriptionResponse)
* [DescribeAttackResponse](#DescribeAttackResponse)
* [DescribeProtectionResponse](#DescribeProtectionResponse)
* [DescribeSubscriptionResponse](#DescribeSubscriptionResponse)
* [ListAttacksResponse](#ListAttacksResponse)
* [ListProtectionsResponse](#ListProtectionsResponse)


@docs CreateProtectionResponse,CreateSubscriptionResponse,DeleteProtectionResponse,DeleteSubscriptionResponse,DescribeAttackResponse,DescribeProtectionResponse,DescribeSubscriptionResponse,ListAttacksResponse,ListProtectionsResponse

## Records

* [AttackDetail](#AttackDetail)
* [AttackSummary](#AttackSummary)
* [AttackVectorDescription](#AttackVectorDescription)
* [Mitigation](#Mitigation)
* [Protection](#Protection)
* [SubResourceSummary](#SubResourceSummary)
* [Subscription](#Subscription)
* [SummarizedAttackVector](#SummarizedAttackVector)
* [SummarizedCounter](#SummarizedCounter)
* [TimeRange](#TimeRange)


@docs AttackDetail,AttackSummary,AttackVectorDescription,Mitigation,Protection,SubResourceSummary,Subscription,SummarizedAttackVector,SummarizedCounter,TimeRange

## Unions

* [SubResourceType](#SubResourceType)


@docs SubResourceType

## Exceptions

* [InternalErrorException](#InternalErrorException)
* [InvalidOperationException](#InvalidOperationException)
* [InvalidParameterException](#InvalidParameterException)
* [InvalidResourceException](#InvalidResourceException)
* [LimitsExceededException](#LimitsExceededException)
* [LockedSubscriptionException](#LockedSubscriptionException)
* [OptimisticLockException](#OptimisticLockException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs InternalErrorException,InvalidOperationException,InvalidParameterException,InvalidResourceException,LimitsExceededException,LockedSubscriptionException,OptimisticLockException,ResourceAlreadyExistsException,ResourceNotFoundException

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
        "shield"
        "2016-06-02"
        "1.1"
        "AWSSHIELD_20160602."
        "shield.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Enables AWS Shield Advanced for a specific AWS resource. The resource can be an Amazon CloudFront distribution, Elastic Load Balancing load balancer, or an Amazon Route 53 hosted zone.</p>

__Required Parameters__

* `name` __:__ `String`
* `resourceArn` __:__ `String`


-}
createProtection :
    String
    -> String
    -> AWS.Request CreateProtectionResponse
createProtection name resourceArn =
    AWS.Http.unsignedRequest
        "CreateProtection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createProtectionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Activates AWS Shield Advanced for an account.</p>

__Required Parameters__



-}
createSubscription :
    AWS.Request CreateSubscriptionResponse
createSubscription =
    AWS.Http.unsignedRequest
        "CreateSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSubscriptionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes an AWS Shield Advanced <a>Protection</a>.</p>

__Required Parameters__

* `protectionId` __:__ `String`


-}
deleteProtection :
    String
    -> AWS.Request DeleteProtectionResponse
deleteProtection protectionId =
    AWS.Http.unsignedRequest
        "DeleteProtection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteProtectionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes AWS Shield Advanced from an account.</p>

__Required Parameters__



-}
deleteSubscription :
    AWS.Request DeleteSubscriptionResponse
deleteSubscription =
    AWS.Http.unsignedRequest
        "DeleteSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSubscriptionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the details of a DDoS attack. </p>

__Required Parameters__

* `attackId` __:__ `String`


-}
describeAttack :
    String
    -> AWS.Request DescribeAttackResponse
describeAttack attackId =
    AWS.Http.unsignedRequest
        "DescribeAttack"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAttackResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the details of a <a>Protection</a> object.</p>

__Required Parameters__

* `protectionId` __:__ `String`


-}
describeProtection :
    String
    -> AWS.Request DescribeProtectionResponse
describeProtection protectionId =
    AWS.Http.unsignedRequest
        "DescribeProtection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeProtectionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Provides details about the AWS Shield Advanced subscription for an account.</p>

__Required Parameters__



-}
describeSubscription :
    AWS.Request DescribeSubscriptionResponse
describeSubscription =
    AWS.Http.unsignedRequest
        "DescribeSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSubscriptionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.</p>

__Required Parameters__



-}
listAttacks :
    (ListAttacksOptions -> ListAttacksOptions)
    -> AWS.Request ListAttacksResponse
listAttacks setOptions =
  let
    options = setOptions (ListAttacksOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAttacks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAttacksResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAttacks request
-}
type alias ListAttacksOptions =
    { resourceArns : Maybe (List String)
    , startTime : Maybe TimeRange
    , endTime : Maybe TimeRange
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists all <a>Protection</a> objects for the account.</p>

__Required Parameters__



-}
listProtections :
    (ListProtectionsOptions -> ListProtectionsOptions)
    -> AWS.Request ListProtectionsResponse
listProtections setOptions =
  let
    options = setOptions (ListProtectionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListProtections"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listProtectionsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listProtections request
-}
type alias ListProtectionsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }




{-| <p>The details of a DDoS attack.</p>
-}
type alias AttackDetail =
    { attackId : Maybe String
    , resourceArn : Maybe String
    , subResources : Maybe (List SubResourceSummary)
    , startTime : Maybe Date
    , endTime : Maybe Date
    , attackCounters : Maybe (List SummarizedCounter)
    , mitigations : Maybe (List Mitigation)
    }



attackDetailDecoder : JD.Decoder AttackDetail
attackDetailDecoder =
    JDP.decode AttackDetail
        |> JDP.optional "attackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "subResources" (JD.nullable (JD.list subResourceSummaryDecoder)) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "attackCounters" (JD.nullable (JD.list summarizedCounterDecoder)) Nothing
        |> JDP.optional "mitigations" (JD.nullable (JD.list mitigationDecoder)) Nothing




{-| <p>Summarizes all DDoS attacks for a specified time period.</p>
-}
type alias AttackSummary =
    { attackId : Maybe String
    , resourceArn : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    , attackVectors : Maybe (List AttackVectorDescription)
    }



attackSummaryDecoder : JD.Decoder AttackSummary
attackSummaryDecoder =
    JDP.decode AttackSummary
        |> JDP.optional "attackId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "attackVectors" (JD.nullable (JD.list attackVectorDescriptionDecoder)) Nothing




{-| <p>Describes the attack.</p>
-}
type alias AttackVectorDescription =
    { vectorType : String
    }



attackVectorDescriptionDecoder : JD.Decoder AttackVectorDescription
attackVectorDescriptionDecoder =
    JDP.decode AttackVectorDescription
        |> JDP.required "vectorType" JD.string




{-| Type of HTTP response from createProtection
-}
type alias CreateProtectionResponse =
    { protectionId : Maybe String
    }



createProtectionResponseDecoder : JD.Decoder CreateProtectionResponse
createProtectionResponseDecoder =
    JDP.decode CreateProtectionResponse
        |> JDP.optional "protectionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSubscription
-}
type alias CreateSubscriptionResponse =
    { 
    }



createSubscriptionResponseDecoder : JD.Decoder CreateSubscriptionResponse
createSubscriptionResponseDecoder =
    JDP.decode CreateSubscriptionResponse



{-| Type of HTTP response from deleteProtection
-}
type alias DeleteProtectionResponse =
    { 
    }



deleteProtectionResponseDecoder : JD.Decoder DeleteProtectionResponse
deleteProtectionResponseDecoder =
    JDP.decode DeleteProtectionResponse



{-| Type of HTTP response from deleteSubscription
-}
type alias DeleteSubscriptionResponse =
    { 
    }



deleteSubscriptionResponseDecoder : JD.Decoder DeleteSubscriptionResponse
deleteSubscriptionResponseDecoder =
    JDP.decode DeleteSubscriptionResponse



{-| Type of HTTP response from describeAttack
-}
type alias DescribeAttackResponse =
    { attack : Maybe AttackDetail
    }



describeAttackResponseDecoder : JD.Decoder DescribeAttackResponse
describeAttackResponseDecoder =
    JDP.decode DescribeAttackResponse
        |> JDP.optional "attack" (JD.nullable attackDetailDecoder) Nothing




{-| Type of HTTP response from describeProtection
-}
type alias DescribeProtectionResponse =
    { protection : Maybe Protection
    }



describeProtectionResponseDecoder : JD.Decoder DescribeProtectionResponse
describeProtectionResponseDecoder =
    JDP.decode DescribeProtectionResponse
        |> JDP.optional "protection" (JD.nullable protectionDecoder) Nothing




{-| Type of HTTP response from describeSubscription
-}
type alias DescribeSubscriptionResponse =
    { subscription : Maybe Subscription
    }



describeSubscriptionResponseDecoder : JD.Decoder DescribeSubscriptionResponse
describeSubscriptionResponseDecoder =
    JDP.decode DescribeSubscriptionResponse
        |> JDP.optional "subscription" (JD.nullable subscriptionDecoder) Nothing




{-| <p>Exception that indicates that a problem occurred with the service infrastructure. You can retry the request.</p>
-}
type alias InternalErrorException =
    { message : Maybe String
    }



internalErrorExceptionDecoder : JD.Decoder InternalErrorException
internalErrorExceptionDecoder =
    JDP.decode InternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Exception that indicates that the operation would not cause any change to occur.</p>
-}
type alias InvalidOperationException =
    { message : Maybe String
    }



invalidOperationExceptionDecoder : JD.Decoder InvalidOperationException
invalidOperationExceptionDecoder =
    JDP.decode InvalidOperationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Exception that indicates that the parameters passed to the API are invalid. </p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Exception that indicates that the resource is invalid. You might not have access to the resource, or the resource might not exist.</p>
-}
type alias InvalidResourceException =
    { message : Maybe String
    }



invalidResourceExceptionDecoder : JD.Decoder InvalidResourceException
invalidResourceExceptionDecoder =
    JDP.decode InvalidResourceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Exception that indicates that the operation would exceed a limit.</p>
-}
type alias LimitsExceededException =
    { message : Maybe String
    , type_ : Maybe String
    , limit : Maybe Int
    }



limitsExceededExceptionDecoder : JD.Decoder LimitsExceededException
limitsExceededExceptionDecoder =
    JDP.decode LimitsExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "limit" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from listAttacks
-}
type alias ListAttacksResponse =
    { attackSummaries : Maybe (List AttackSummary)
    , nextToken : Maybe String
    }



listAttacksResponseDecoder : JD.Decoder ListAttacksResponse
listAttacksResponseDecoder =
    JDP.decode ListAttacksResponse
        |> JDP.optional "attackSummaries" (JD.nullable (JD.list attackSummaryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listProtections
-}
type alias ListProtectionsResponse =
    { protections : Maybe (List Protection)
    , nextToken : Maybe String
    }



listProtectionsResponseDecoder : JD.Decoder ListProtectionsResponse
listProtectionsResponseDecoder =
    JDP.decode ListProtectionsResponse
        |> JDP.optional "protections" (JD.nullable (JD.list protectionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Exception that indicates that the subscription has been modified by another client. You can retry the request.</p>
-}
type alias LockedSubscriptionException =
    { message : Maybe String
    }



lockedSubscriptionExceptionDecoder : JD.Decoder LockedSubscriptionException
lockedSubscriptionExceptionDecoder =
    JDP.decode LockedSubscriptionException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The mitigation applied to a DDoS attack.</p>
-}
type alias Mitigation =
    { mitigationName : Maybe String
    }



mitigationDecoder : JD.Decoder Mitigation
mitigationDecoder =
    JDP.decode Mitigation
        |> JDP.optional "mitigationName" (JD.nullable JD.string) Nothing




{-| <p>Exception that indicates that the protection state has been modified by another client. You can retry the request.</p>
-}
type alias OptimisticLockException =
    { message : Maybe String
    }



optimisticLockExceptionDecoder : JD.Decoder OptimisticLockException
optimisticLockExceptionDecoder =
    JDP.decode OptimisticLockException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An object that represents a resource that is under DDoS protection.</p>
-}
type alias Protection =
    { id : Maybe String
    , name : Maybe String
    , resourceArn : Maybe String
    }



protectionDecoder : JD.Decoder Protection
protectionDecoder =
    JDP.decode Protection
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceArn" (JD.nullable JD.string) Nothing




{-| <p>Exception indicating the specified resource already exists.</p>
-}
type alias ResourceAlreadyExistsException =
    { message : Maybe String
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Exception indicating the specified resource does not exist.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The attack information for the specified SubResource.</p>
-}
type alias SubResourceSummary =
    { type_ : Maybe SubResourceType
    , id : Maybe String
    , attackVectors : Maybe (List SummarizedAttackVector)
    , counters : Maybe (List SummarizedCounter)
    }



subResourceSummaryDecoder : JD.Decoder SubResourceSummary
subResourceSummaryDecoder =
    JDP.decode SubResourceSummary
        |> JDP.optional "type_" (JD.nullable subResourceTypeDecoder) Nothing
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "attackVectors" (JD.nullable (JD.list summarizedAttackVectorDecoder)) Nothing
        |> JDP.optional "counters" (JD.nullable (JD.list summarizedCounterDecoder)) Nothing




{-| One of

* `SubResourceType_IP`
* `SubResourceType_URL`

-}
type SubResourceType
    = SubResourceType_IP
    | SubResourceType_URL



subResourceTypeDecoder : JD.Decoder SubResourceType
subResourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IP" ->
                        JD.succeed SubResourceType_IP

                    "URL" ->
                        JD.succeed SubResourceType_URL


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the AWS Shield Advanced subscription for an account.</p>
-}
type alias Subscription =
    { startTime : Maybe Date
    , timeCommitmentInSeconds : Maybe Int
    }



subscriptionDecoder : JD.Decoder Subscription
subscriptionDecoder =
    JDP.decode Subscription
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "timeCommitmentInSeconds" (JD.nullable JD.int) Nothing




{-| <p>A summary of information about the attack.</p>
-}
type alias SummarizedAttackVector =
    { vectorType : String
    , vectorCounters : Maybe (List SummarizedCounter)
    }



summarizedAttackVectorDecoder : JD.Decoder SummarizedAttackVector
summarizedAttackVectorDecoder =
    JDP.decode SummarizedAttackVector
        |> JDP.required "vectorType" JD.string
        |> JDP.optional "vectorCounters" (JD.nullable (JD.list summarizedCounterDecoder)) Nothing




{-| <p>The counter that describes a DDoS attack.</p>
-}
type alias SummarizedCounter =
    { name : Maybe String
    , max : Maybe Float
    , average : Maybe Float
    , sum : Maybe Float
    , n : Maybe Int
    , unit : Maybe String
    }



summarizedCounterDecoder : JD.Decoder SummarizedCounter
summarizedCounterDecoder =
    JDP.decode SummarizedCounter
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "max" (JD.nullable JD.float) Nothing
        |> JDP.optional "average" (JD.nullable JD.float) Nothing
        |> JDP.optional "sum" (JD.nullable JD.float) Nothing
        |> JDP.optional "n" (JD.nullable JD.int) Nothing
        |> JDP.optional "unit" (JD.nullable JD.string) Nothing




{-| <p>The time range.</p>
-}
type alias TimeRange =
    { fromInclusive : Maybe Date
    , toExclusive : Maybe Date
    }



timeRangeDecoder : JD.Decoder TimeRange
timeRangeDecoder =
    JDP.decode TimeRange
        |> JDP.optional "fromInclusive" (JD.nullable JDX.date) Nothing
        |> JDP.optional "toExclusive" (JD.nullable JDX.date) Nothing




