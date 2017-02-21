module AWS.Services.Route53
    exposing
        ( config
        , associateVPCWithHostedZone
        , AssociateVPCWithHostedZoneOptions
        , changeResourceRecordSets
        , changeTagsForResource
        , ChangeTagsForResourceOptions
        , createHealthCheck
        , createHostedZone
        , CreateHostedZoneOptions
        , createReusableDelegationSet
        , CreateReusableDelegationSetOptions
        , createTrafficPolicy
        , CreateTrafficPolicyOptions
        , createTrafficPolicyInstance
        , createTrafficPolicyVersion
        , CreateTrafficPolicyVersionOptions
        , createVPCAssociationAuthorization
        , deleteHealthCheck
        , deleteHostedZone
        , deleteReusableDelegationSet
        , deleteTrafficPolicy
        , deleteTrafficPolicyInstance
        , deleteVPCAssociationAuthorization
        , disassociateVPCFromHostedZone
        , DisassociateVPCFromHostedZoneOptions
        , getChange
        , getCheckerIpRanges
        , getGeoLocation
        , GetGeoLocationOptions
        , getHealthCheck
        , getHealthCheckCount
        , getHealthCheckLastFailureReason
        , getHealthCheckStatus
        , getHostedZone
        , getHostedZoneCount
        , getReusableDelegationSet
        , getTrafficPolicy
        , getTrafficPolicyInstance
        , getTrafficPolicyInstanceCount
        , listGeoLocations
        , ListGeoLocationsOptions
        , listHealthChecks
        , ListHealthChecksOptions
        , listHostedZones
        , ListHostedZonesOptions
        , listHostedZonesByName
        , ListHostedZonesByNameOptions
        , listResourceRecordSets
        , ListResourceRecordSetsOptions
        , listReusableDelegationSets
        , ListReusableDelegationSetsOptions
        , listTagsForResource
        , listTagsForResources
        , listTrafficPolicies
        , ListTrafficPoliciesOptions
        , listTrafficPolicyInstances
        , ListTrafficPolicyInstancesOptions
        , listTrafficPolicyInstancesByHostedZone
        , ListTrafficPolicyInstancesByHostedZoneOptions
        , listTrafficPolicyInstancesByPolicy
        , ListTrafficPolicyInstancesByPolicyOptions
        , listTrafficPolicyVersions
        , ListTrafficPolicyVersionsOptions
        , listVPCAssociationAuthorizations
        , ListVPCAssociationAuthorizationsOptions
        , testDNSAnswer
        , TestDNSAnswerOptions
        , updateHealthCheck
        , UpdateHealthCheckOptions
        , updateHostedZoneComment
        , UpdateHostedZoneCommentOptions
        , updateTrafficPolicyComment
        , updateTrafficPolicyInstance
        , AlarmIdentifier
        , AliasTarget
        , AssociateVPCWithHostedZoneResponse
        , Change
        , ChangeAction(..)
        , ChangeBatch
        , ChangeInfo
        , ChangeResourceRecordSetsResponse
        , ChangeStatus(..)
        , ChangeTagsForResourceResponse
        , CloudWatchAlarmConfiguration
        , CloudWatchRegion(..)
        , ComparisonOperator(..)
        , ConcurrentModification
        , ConflictingDomainExists
        , ConflictingTypes
        , CreateHealthCheckResponse
        , CreateHostedZoneResponse
        , CreateReusableDelegationSetResponse
        , CreateTrafficPolicyInstanceResponse
        , CreateTrafficPolicyResponse
        , CreateTrafficPolicyVersionResponse
        , CreateVPCAssociationAuthorizationResponse
        , DelegationSet
        , DelegationSetAlreadyCreated
        , DelegationSetAlreadyReusable
        , DelegationSetInUse
        , DelegationSetNotAvailable
        , DelegationSetNotReusable
        , DeleteHealthCheckResponse
        , DeleteHostedZoneResponse
        , DeleteReusableDelegationSetResponse
        , DeleteTrafficPolicyInstanceResponse
        , DeleteTrafficPolicyResponse
        , DeleteVPCAssociationAuthorizationResponse
        , Dimension
        , DisassociateVPCFromHostedZoneResponse
        , GeoLocation
        , GeoLocationDetails
        , GetChangeResponse
        , GetCheckerIpRangesResponse
        , GetGeoLocationResponse
        , GetHealthCheckCountResponse
        , GetHealthCheckLastFailureReasonResponse
        , GetHealthCheckResponse
        , GetHealthCheckStatusResponse
        , GetHostedZoneCountResponse
        , GetHostedZoneResponse
        , GetReusableDelegationSetResponse
        , GetTrafficPolicyInstanceCountResponse
        , GetTrafficPolicyInstanceResponse
        , GetTrafficPolicyResponse
        , HealthCheck
        , HealthCheckAlreadyExists
        , HealthCheckConfig
        , HealthCheckInUse
        , HealthCheckObservation
        , HealthCheckRegion(..)
        , HealthCheckType(..)
        , HealthCheckVersionMismatch
        , HostedZone
        , HostedZoneAlreadyExists
        , HostedZoneConfig
        , HostedZoneNotEmpty
        , HostedZoneNotFound
        , IncompatibleVersion
        , InsufficientDataHealthStatus(..)
        , InvalidArgument
        , InvalidChangeBatch
        , InvalidDomainName
        , InvalidInput
        , InvalidPaginationToken
        , InvalidTrafficPolicyDocument
        , InvalidVPCId
        , LastVPCAssociation
        , LimitsExceeded
        , ListGeoLocationsResponse
        , ListHealthChecksResponse
        , ListHostedZonesByNameResponse
        , ListHostedZonesResponse
        , ListResourceRecordSetsResponse
        , ListReusableDelegationSetsResponse
        , ListTagsForResourceResponse
        , ListTagsForResourcesResponse
        , ListTrafficPoliciesResponse
        , ListTrafficPolicyInstancesByHostedZoneResponse
        , ListTrafficPolicyInstancesByPolicyResponse
        , ListTrafficPolicyInstancesResponse
        , ListTrafficPolicyVersionsResponse
        , ListVPCAssociationAuthorizationsResponse
        , NoSuchChange
        , NoSuchDelegationSet
        , NoSuchGeoLocation
        , NoSuchHealthCheck
        , NoSuchHostedZone
        , NoSuchTrafficPolicy
        , NoSuchTrafficPolicyInstance
        , NotAuthorizedException
        , PriorRequestNotComplete
        , PublicZoneVPCAssociation
        , RRType(..)
        , ResourceRecord
        , ResourceRecordSet
        , ResourceRecordSetFailover(..)
        , ResourceRecordSetRegion(..)
        , ResourceTagSet
        , Statistic(..)
        , StatusReport
        , Tag
        , TagResourceType(..)
        , TestDNSAnswerResponse
        , ThrottlingException
        , TooManyHealthChecks
        , TooManyHostedZones
        , TooManyTrafficPolicies
        , TooManyTrafficPolicyInstances
        , TooManyVPCAssociationAuthorizations
        , TrafficPolicy
        , TrafficPolicyAlreadyExists
        , TrafficPolicyInUse
        , TrafficPolicyInstance
        , TrafficPolicyInstanceAlreadyExists
        , TrafficPolicySummary
        , UpdateHealthCheckResponse
        , UpdateHostedZoneCommentResponse
        , UpdateTrafficPolicyCommentResponse
        , UpdateTrafficPolicyInstanceResponse
        , VPC
        , VPCAssociationAuthorizationNotFound
        , VPCAssociationNotFound
        , VPCRegion(..)
        )

{-| undefined

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [associateVPCWithHostedZone](#associateVPCWithHostedZone)
* [AssociateVPCWithHostedZoneOptions](#AssociateVPCWithHostedZoneOptions)
* [changeResourceRecordSets](#changeResourceRecordSets)
* [changeTagsForResource](#changeTagsForResource)
* [ChangeTagsForResourceOptions](#ChangeTagsForResourceOptions)
* [createHealthCheck](#createHealthCheck)
* [createHostedZone](#createHostedZone)
* [CreateHostedZoneOptions](#CreateHostedZoneOptions)
* [createReusableDelegationSet](#createReusableDelegationSet)
* [CreateReusableDelegationSetOptions](#CreateReusableDelegationSetOptions)
* [createTrafficPolicy](#createTrafficPolicy)
* [CreateTrafficPolicyOptions](#CreateTrafficPolicyOptions)
* [createTrafficPolicyInstance](#createTrafficPolicyInstance)
* [createTrafficPolicyVersion](#createTrafficPolicyVersion)
* [CreateTrafficPolicyVersionOptions](#CreateTrafficPolicyVersionOptions)
* [createVPCAssociationAuthorization](#createVPCAssociationAuthorization)
* [deleteHealthCheck](#deleteHealthCheck)
* [deleteHostedZone](#deleteHostedZone)
* [deleteReusableDelegationSet](#deleteReusableDelegationSet)
* [deleteTrafficPolicy](#deleteTrafficPolicy)
* [deleteTrafficPolicyInstance](#deleteTrafficPolicyInstance)
* [deleteVPCAssociationAuthorization](#deleteVPCAssociationAuthorization)
* [disassociateVPCFromHostedZone](#disassociateVPCFromHostedZone)
* [DisassociateVPCFromHostedZoneOptions](#DisassociateVPCFromHostedZoneOptions)
* [getChange](#getChange)
* [getCheckerIpRanges](#getCheckerIpRanges)
* [getGeoLocation](#getGeoLocation)
* [GetGeoLocationOptions](#GetGeoLocationOptions)
* [getHealthCheck](#getHealthCheck)
* [getHealthCheckCount](#getHealthCheckCount)
* [getHealthCheckLastFailureReason](#getHealthCheckLastFailureReason)
* [getHealthCheckStatus](#getHealthCheckStatus)
* [getHostedZone](#getHostedZone)
* [getHostedZoneCount](#getHostedZoneCount)
* [getReusableDelegationSet](#getReusableDelegationSet)
* [getTrafficPolicy](#getTrafficPolicy)
* [getTrafficPolicyInstance](#getTrafficPolicyInstance)
* [getTrafficPolicyInstanceCount](#getTrafficPolicyInstanceCount)
* [listGeoLocations](#listGeoLocations)
* [ListGeoLocationsOptions](#ListGeoLocationsOptions)
* [listHealthChecks](#listHealthChecks)
* [ListHealthChecksOptions](#ListHealthChecksOptions)
* [listHostedZones](#listHostedZones)
* [ListHostedZonesOptions](#ListHostedZonesOptions)
* [listHostedZonesByName](#listHostedZonesByName)
* [ListHostedZonesByNameOptions](#ListHostedZonesByNameOptions)
* [listResourceRecordSets](#listResourceRecordSets)
* [ListResourceRecordSetsOptions](#ListResourceRecordSetsOptions)
* [listReusableDelegationSets](#listReusableDelegationSets)
* [ListReusableDelegationSetsOptions](#ListReusableDelegationSetsOptions)
* [listTagsForResource](#listTagsForResource)
* [listTagsForResources](#listTagsForResources)
* [listTrafficPolicies](#listTrafficPolicies)
* [ListTrafficPoliciesOptions](#ListTrafficPoliciesOptions)
* [listTrafficPolicyInstances](#listTrafficPolicyInstances)
* [ListTrafficPolicyInstancesOptions](#ListTrafficPolicyInstancesOptions)
* [listTrafficPolicyInstancesByHostedZone](#listTrafficPolicyInstancesByHostedZone)
* [ListTrafficPolicyInstancesByHostedZoneOptions](#ListTrafficPolicyInstancesByHostedZoneOptions)
* [listTrafficPolicyInstancesByPolicy](#listTrafficPolicyInstancesByPolicy)
* [ListTrafficPolicyInstancesByPolicyOptions](#ListTrafficPolicyInstancesByPolicyOptions)
* [listTrafficPolicyVersions](#listTrafficPolicyVersions)
* [ListTrafficPolicyVersionsOptions](#ListTrafficPolicyVersionsOptions)
* [listVPCAssociationAuthorizations](#listVPCAssociationAuthorizations)
* [ListVPCAssociationAuthorizationsOptions](#ListVPCAssociationAuthorizationsOptions)
* [testDNSAnswer](#testDNSAnswer)
* [TestDNSAnswerOptions](#TestDNSAnswerOptions)
* [updateHealthCheck](#updateHealthCheck)
* [UpdateHealthCheckOptions](#UpdateHealthCheckOptions)
* [updateHostedZoneComment](#updateHostedZoneComment)
* [UpdateHostedZoneCommentOptions](#UpdateHostedZoneCommentOptions)
* [updateTrafficPolicyComment](#updateTrafficPolicyComment)
* [updateTrafficPolicyInstance](#updateTrafficPolicyInstance)


@docs associateVPCWithHostedZone,AssociateVPCWithHostedZoneOptions,changeResourceRecordSets,changeTagsForResource,ChangeTagsForResourceOptions,createHealthCheck,createHostedZone,CreateHostedZoneOptions,createReusableDelegationSet,CreateReusableDelegationSetOptions,createTrafficPolicy,CreateTrafficPolicyOptions,createTrafficPolicyInstance,createTrafficPolicyVersion,CreateTrafficPolicyVersionOptions,createVPCAssociationAuthorization,deleteHealthCheck,deleteHostedZone,deleteReusableDelegationSet,deleteTrafficPolicy,deleteTrafficPolicyInstance,deleteVPCAssociationAuthorization,disassociateVPCFromHostedZone,DisassociateVPCFromHostedZoneOptions,getChange,getCheckerIpRanges,getGeoLocation,GetGeoLocationOptions,getHealthCheck,getHealthCheckCount,getHealthCheckLastFailureReason,getHealthCheckStatus,getHostedZone,getHostedZoneCount,getReusableDelegationSet,getTrafficPolicy,getTrafficPolicyInstance,getTrafficPolicyInstanceCount,listGeoLocations,ListGeoLocationsOptions,listHealthChecks,ListHealthChecksOptions,listHostedZones,ListHostedZonesOptions,listHostedZonesByName,ListHostedZonesByNameOptions,listResourceRecordSets,ListResourceRecordSetsOptions,listReusableDelegationSets,ListReusableDelegationSetsOptions,listTagsForResource,listTagsForResources,listTrafficPolicies,ListTrafficPoliciesOptions,listTrafficPolicyInstances,ListTrafficPolicyInstancesOptions,listTrafficPolicyInstancesByHostedZone,ListTrafficPolicyInstancesByHostedZoneOptions,listTrafficPolicyInstancesByPolicy,ListTrafficPolicyInstancesByPolicyOptions,listTrafficPolicyVersions,ListTrafficPolicyVersionsOptions,listVPCAssociationAuthorizations,ListVPCAssociationAuthorizationsOptions,testDNSAnswer,TestDNSAnswerOptions,updateHealthCheck,UpdateHealthCheckOptions,updateHostedZoneComment,UpdateHostedZoneCommentOptions,updateTrafficPolicyComment,updateTrafficPolicyInstance

## Responses

* [AssociateVPCWithHostedZoneResponse](#AssociateVPCWithHostedZoneResponse)
* [ChangeResourceRecordSetsResponse](#ChangeResourceRecordSetsResponse)
* [ChangeTagsForResourceResponse](#ChangeTagsForResourceResponse)
* [CreateHealthCheckResponse](#CreateHealthCheckResponse)
* [CreateHostedZoneResponse](#CreateHostedZoneResponse)
* [CreateReusableDelegationSetResponse](#CreateReusableDelegationSetResponse)
* [CreateTrafficPolicyInstanceResponse](#CreateTrafficPolicyInstanceResponse)
* [CreateTrafficPolicyResponse](#CreateTrafficPolicyResponse)
* [CreateTrafficPolicyVersionResponse](#CreateTrafficPolicyVersionResponse)
* [CreateVPCAssociationAuthorizationResponse](#CreateVPCAssociationAuthorizationResponse)
* [DeleteHealthCheckResponse](#DeleteHealthCheckResponse)
* [DeleteHostedZoneResponse](#DeleteHostedZoneResponse)
* [DeleteReusableDelegationSetResponse](#DeleteReusableDelegationSetResponse)
* [DeleteTrafficPolicyInstanceResponse](#DeleteTrafficPolicyInstanceResponse)
* [DeleteTrafficPolicyResponse](#DeleteTrafficPolicyResponse)
* [DeleteVPCAssociationAuthorizationResponse](#DeleteVPCAssociationAuthorizationResponse)
* [DisassociateVPCFromHostedZoneResponse](#DisassociateVPCFromHostedZoneResponse)
* [GetChangeResponse](#GetChangeResponse)
* [GetCheckerIpRangesResponse](#GetCheckerIpRangesResponse)
* [GetGeoLocationResponse](#GetGeoLocationResponse)
* [GetHealthCheckCountResponse](#GetHealthCheckCountResponse)
* [GetHealthCheckLastFailureReasonResponse](#GetHealthCheckLastFailureReasonResponse)
* [GetHealthCheckResponse](#GetHealthCheckResponse)
* [GetHealthCheckStatusResponse](#GetHealthCheckStatusResponse)
* [GetHostedZoneCountResponse](#GetHostedZoneCountResponse)
* [GetHostedZoneResponse](#GetHostedZoneResponse)
* [GetReusableDelegationSetResponse](#GetReusableDelegationSetResponse)
* [GetTrafficPolicyInstanceCountResponse](#GetTrafficPolicyInstanceCountResponse)
* [GetTrafficPolicyInstanceResponse](#GetTrafficPolicyInstanceResponse)
* [GetTrafficPolicyResponse](#GetTrafficPolicyResponse)
* [ListGeoLocationsResponse](#ListGeoLocationsResponse)
* [ListHealthChecksResponse](#ListHealthChecksResponse)
* [ListHostedZonesByNameResponse](#ListHostedZonesByNameResponse)
* [ListHostedZonesResponse](#ListHostedZonesResponse)
* [ListResourceRecordSetsResponse](#ListResourceRecordSetsResponse)
* [ListReusableDelegationSetsResponse](#ListReusableDelegationSetsResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ListTagsForResourcesResponse](#ListTagsForResourcesResponse)
* [ListTrafficPoliciesResponse](#ListTrafficPoliciesResponse)
* [ListTrafficPolicyInstancesByHostedZoneResponse](#ListTrafficPolicyInstancesByHostedZoneResponse)
* [ListTrafficPolicyInstancesByPolicyResponse](#ListTrafficPolicyInstancesByPolicyResponse)
* [ListTrafficPolicyInstancesResponse](#ListTrafficPolicyInstancesResponse)
* [ListTrafficPolicyVersionsResponse](#ListTrafficPolicyVersionsResponse)
* [ListVPCAssociationAuthorizationsResponse](#ListVPCAssociationAuthorizationsResponse)
* [TestDNSAnswerResponse](#TestDNSAnswerResponse)
* [UpdateHealthCheckResponse](#UpdateHealthCheckResponse)
* [UpdateHostedZoneCommentResponse](#UpdateHostedZoneCommentResponse)
* [UpdateTrafficPolicyCommentResponse](#UpdateTrafficPolicyCommentResponse)
* [UpdateTrafficPolicyInstanceResponse](#UpdateTrafficPolicyInstanceResponse)


@docs AssociateVPCWithHostedZoneResponse,ChangeResourceRecordSetsResponse,ChangeTagsForResourceResponse,CreateHealthCheckResponse,CreateHostedZoneResponse,CreateReusableDelegationSetResponse,CreateTrafficPolicyInstanceResponse,CreateTrafficPolicyResponse,CreateTrafficPolicyVersionResponse,CreateVPCAssociationAuthorizationResponse,DeleteHealthCheckResponse,DeleteHostedZoneResponse,DeleteReusableDelegationSetResponse,DeleteTrafficPolicyInstanceResponse,DeleteTrafficPolicyResponse,DeleteVPCAssociationAuthorizationResponse,DisassociateVPCFromHostedZoneResponse,GetChangeResponse,GetCheckerIpRangesResponse,GetGeoLocationResponse,GetHealthCheckCountResponse,GetHealthCheckLastFailureReasonResponse,GetHealthCheckResponse,GetHealthCheckStatusResponse,GetHostedZoneCountResponse,GetHostedZoneResponse,GetReusableDelegationSetResponse,GetTrafficPolicyInstanceCountResponse,GetTrafficPolicyInstanceResponse,GetTrafficPolicyResponse,ListGeoLocationsResponse,ListHealthChecksResponse,ListHostedZonesByNameResponse,ListHostedZonesResponse,ListResourceRecordSetsResponse,ListReusableDelegationSetsResponse,ListTagsForResourceResponse,ListTagsForResourcesResponse,ListTrafficPoliciesResponse,ListTrafficPolicyInstancesByHostedZoneResponse,ListTrafficPolicyInstancesByPolicyResponse,ListTrafficPolicyInstancesResponse,ListTrafficPolicyVersionsResponse,ListVPCAssociationAuthorizationsResponse,TestDNSAnswerResponse,UpdateHealthCheckResponse,UpdateHostedZoneCommentResponse,UpdateTrafficPolicyCommentResponse,UpdateTrafficPolicyInstanceResponse

## Records

* [AlarmIdentifier](#AlarmIdentifier)
* [AliasTarget](#AliasTarget)
* [Change](#Change)
* [ChangeBatch](#ChangeBatch)
* [ChangeInfo](#ChangeInfo)
* [CloudWatchAlarmConfiguration](#CloudWatchAlarmConfiguration)
* [DelegationSet](#DelegationSet)
* [Dimension](#Dimension)
* [GeoLocation](#GeoLocation)
* [GeoLocationDetails](#GeoLocationDetails)
* [HealthCheck](#HealthCheck)
* [HealthCheckConfig](#HealthCheckConfig)
* [HealthCheckObservation](#HealthCheckObservation)
* [HostedZone](#HostedZone)
* [HostedZoneConfig](#HostedZoneConfig)
* [ResourceRecord](#ResourceRecord)
* [ResourceRecordSet](#ResourceRecordSet)
* [ResourceTagSet](#ResourceTagSet)
* [StatusReport](#StatusReport)
* [Tag](#Tag)
* [TrafficPolicy](#TrafficPolicy)
* [TrafficPolicyInstance](#TrafficPolicyInstance)
* [TrafficPolicySummary](#TrafficPolicySummary)
* [VPC](#VPC)


@docs AlarmIdentifier,AliasTarget,Change,ChangeBatch,ChangeInfo,CloudWatchAlarmConfiguration,DelegationSet,Dimension,GeoLocation,GeoLocationDetails,HealthCheck,HealthCheckConfig,HealthCheckObservation,HostedZone,HostedZoneConfig,ResourceRecord,ResourceRecordSet,ResourceTagSet,StatusReport,Tag,TrafficPolicy,TrafficPolicyInstance,TrafficPolicySummary,VPC

## Unions

* [ChangeAction](#ChangeAction)
* [ChangeStatus](#ChangeStatus)
* [CloudWatchRegion](#CloudWatchRegion)
* [ComparisonOperator](#ComparisonOperator)
* [HealthCheckRegion](#HealthCheckRegion)
* [HealthCheckType](#HealthCheckType)
* [InsufficientDataHealthStatus](#InsufficientDataHealthStatus)
* [RRType](#RRType)
* [ResourceRecordSetFailover](#ResourceRecordSetFailover)
* [ResourceRecordSetRegion](#ResourceRecordSetRegion)
* [Statistic](#Statistic)
* [TagResourceType](#TagResourceType)
* [VPCRegion](#VPCRegion)


@docs ChangeAction,ChangeStatus,CloudWatchRegion,ComparisonOperator,HealthCheckRegion,HealthCheckType,InsufficientDataHealthStatus,RRType,ResourceRecordSetFailover,ResourceRecordSetRegion,Statistic,TagResourceType,VPCRegion

## Exceptions

* [ConcurrentModification](#ConcurrentModification)
* [ConflictingDomainExists](#ConflictingDomainExists)
* [ConflictingTypes](#ConflictingTypes)
* [DelegationSetAlreadyCreated](#DelegationSetAlreadyCreated)
* [DelegationSetAlreadyReusable](#DelegationSetAlreadyReusable)
* [DelegationSetInUse](#DelegationSetInUse)
* [DelegationSetNotAvailable](#DelegationSetNotAvailable)
* [DelegationSetNotReusable](#DelegationSetNotReusable)
* [HealthCheckAlreadyExists](#HealthCheckAlreadyExists)
* [HealthCheckInUse](#HealthCheckInUse)
* [HealthCheckVersionMismatch](#HealthCheckVersionMismatch)
* [HostedZoneAlreadyExists](#HostedZoneAlreadyExists)
* [HostedZoneNotEmpty](#HostedZoneNotEmpty)
* [HostedZoneNotFound](#HostedZoneNotFound)
* [IncompatibleVersion](#IncompatibleVersion)
* [InvalidArgument](#InvalidArgument)
* [InvalidChangeBatch](#InvalidChangeBatch)
* [InvalidDomainName](#InvalidDomainName)
* [InvalidInput](#InvalidInput)
* [InvalidPaginationToken](#InvalidPaginationToken)
* [InvalidTrafficPolicyDocument](#InvalidTrafficPolicyDocument)
* [InvalidVPCId](#InvalidVPCId)
* [LastVPCAssociation](#LastVPCAssociation)
* [LimitsExceeded](#LimitsExceeded)
* [NoSuchChange](#NoSuchChange)
* [NoSuchDelegationSet](#NoSuchDelegationSet)
* [NoSuchGeoLocation](#NoSuchGeoLocation)
* [NoSuchHealthCheck](#NoSuchHealthCheck)
* [NoSuchHostedZone](#NoSuchHostedZone)
* [NoSuchTrafficPolicy](#NoSuchTrafficPolicy)
* [NoSuchTrafficPolicyInstance](#NoSuchTrafficPolicyInstance)
* [NotAuthorizedException](#NotAuthorizedException)
* [PriorRequestNotComplete](#PriorRequestNotComplete)
* [PublicZoneVPCAssociation](#PublicZoneVPCAssociation)
* [ThrottlingException](#ThrottlingException)
* [TooManyHealthChecks](#TooManyHealthChecks)
* [TooManyHostedZones](#TooManyHostedZones)
* [TooManyTrafficPolicies](#TooManyTrafficPolicies)
* [TooManyTrafficPolicyInstances](#TooManyTrafficPolicyInstances)
* [TooManyVPCAssociationAuthorizations](#TooManyVPCAssociationAuthorizations)
* [TrafficPolicyAlreadyExists](#TrafficPolicyAlreadyExists)
* [TrafficPolicyInUse](#TrafficPolicyInUse)
* [TrafficPolicyInstanceAlreadyExists](#TrafficPolicyInstanceAlreadyExists)
* [VPCAssociationAuthorizationNotFound](#VPCAssociationAuthorizationNotFound)
* [VPCAssociationNotFound](#VPCAssociationNotFound)


@docs ConcurrentModification,ConflictingDomainExists,ConflictingTypes,DelegationSetAlreadyCreated,DelegationSetAlreadyReusable,DelegationSetInUse,DelegationSetNotAvailable,DelegationSetNotReusable,HealthCheckAlreadyExists,HealthCheckInUse,HealthCheckVersionMismatch,HostedZoneAlreadyExists,HostedZoneNotEmpty,HostedZoneNotFound,IncompatibleVersion,InvalidArgument,InvalidChangeBatch,InvalidDomainName,InvalidInput,InvalidPaginationToken,InvalidTrafficPolicyDocument,InvalidVPCId,LastVPCAssociation,LimitsExceeded,NoSuchChange,NoSuchDelegationSet,NoSuchGeoLocation,NoSuchHealthCheck,NoSuchHostedZone,NoSuchTrafficPolicy,NoSuchTrafficPolicyInstance,NotAuthorizedException,PriorRequestNotComplete,PublicZoneVPCAssociation,ThrottlingException,TooManyHealthChecks,TooManyHostedZones,TooManyTrafficPolicies,TooManyTrafficPolicyInstances,TooManyVPCAssociationAuthorizations,TrafficPolicyAlreadyExists,TrafficPolicyInUse,TrafficPolicyInstanceAlreadyExists,VPCAssociationAuthorizationNotFound,VPCAssociationNotFound

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX
import AWS.Enum


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "route53"
        "2013-04-01"
        "undefined"
        "AWSROUTE53_20130401."
        "route53.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Associates an Amazon VPC with a private hosted zone. </p> <important> <p>To perform the association, the VPC and the private hosted zone must already exist. You can't convert a public hosted zone into a private hosted zone.</p> </important> <p>Send a <code>POST</code> request to the <code>/2013-04-01/hostedzone/<i>hosted zone ID</i>/associatevpc</code> resource. The request body must include a document with an <code>AssociateVPCWithHostedZoneRequest</code> element. The response contains a <code>ChangeInfo</code> data type that you can use to track the progress of the request. </p> <note> <p>If you want to associate a VPC that was created by using one AWS account with a private hosted zone that was created by using a different account, the AWS account that created the private hosted zone must first submit a <code>CreateVPCAssociationAuthorization</code> request. Then the account that created the VPC must submit an <code>AssociateVPCWithHostedZone</code> request.</p> </note>

__Required Parameters__

* `hostedZoneId` __:__ `String`
* `vPC` __:__ `VPC`


-}
associateVPCWithHostedZone :
    String
    -> VPC
    -> (AssociateVPCWithHostedZoneOptions -> AssociateVPCWithHostedZoneOptions)
    -> AWS.Http.UnsignedRequest AssociateVPCWithHostedZoneResponse
associateVPCWithHostedZone hostedZoneId vPC setOptions =
  let
    options = setOptions (AssociateVPCWithHostedZoneOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateVPCWithHostedZone"
        "POST"
        ("/2013-04-01/hostedzone/" ++ hostedZoneId ++ "/associatevpc")
        (AWS.Http.JsonBody
            JE.null
        )
        associateVPCWithHostedZoneResponseDecoder


{-| Options for a associateVPCWithHostedZone request
-}
type alias AssociateVPCWithHostedZoneOptions =
    { comment : Maybe String
    }



{-| <p>Create, change, update, or delete authoritative DNS information on all Amazon Route 53 servers. Send a <code>POST</code> request to: </p> <p> <code>/2013-04-01/hostedzone/<i>Amazon Route 53 hosted Zone ID</i>/rrset</code> resource. </p> <p>The request body must include a document with a <code>ChangeResourceRecordSetsRequest</code> element. The request body contains a list of change items, known as a change batch. Change batches are considered transactional changes. When using the Amazon Route 53 API to change resource record sets, Amazon Route 53 either makes all or none of the changes in a change batch request. This ensures that Amazon Route 53 never partially implements the intended changes to the resource record sets in a hosted zone. </p> <p>For example, a change batch request that deletes the <code>CNAME</code> record for www.example.com and creates an alias resource record set for www.example.com. Amazon Route 53 deletes the first resource record set and creates the second resource record set in a single operation. If either the <code>DELETE</code> or the <code>CREATE</code> action fails, then both changes (plus any other changes in the batch) fail, and the original <code>CNAME</code> record continues to exist.</p> <important> <p>Due to the nature of transactional changes, you can't delete the same resource record set more than once in a single change batch. If you attempt to delete the same change batch more than once, Amazon Route 53 returns an <code>InvalidChangeBatch</code> error.</p> </important> <note> <p>To create resource record sets for complex routing configurations, use either the traffic flow visual editor in the Amazon Route 53 console or the API actions for traffic policies and traffic policy instances. Save the configuration as a traffic policy, then associate the traffic policy with one or more domain names (such as example.com) or subdomain names (such as www.example.com), in the same hosted zone or in multiple hosted zones. You can roll back the updates if the new configuration isn't performing as expected. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/traffic-flow.html">Using Traffic Flow to Route DNS Traffic</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </note> <p>Use <code>ChangeResourceRecordsSetsRequest</code> to perform the following actions:</p> <ul> <li> <p> <code>CREATE</code>: Creates a resource record set that has the specified values.</p> </li> <li> <p> <code>DELETE</code>: Deletes an existing resource record set that has the specified values.</p> </li> <li> <p> <code>UPSERT</code>: If a resource record set does not already exist, AWS creates it. If a resource set does exist, Amazon Route 53 updates it with the values in the request. </p> </li> </ul> <p>The values that you need to include in the request depend on the type of resource record set that you're creating, deleting, or updating:</p> <p> <b>Basic resource record sets (excluding alias, failover, geolocation, latency, and weighted resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>TTL</code> </p> </li> </ul> <p> <b>Failover, geolocation, latency, or weighted resource record sets (excluding alias resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>TTL</code> </p> </li> <li> <p> <code>SetIdentifier</code> </p> </li> </ul> <p> <b>Alias resource record sets (including failover alias, geolocation alias, latency alias, and weighted alias resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>AliasTarget</code> (includes <code>DNSName</code>, <code>EvaluateTargetHealth</code>, and <code>HostedZoneId</code>)</p> </li> <li> <p> <code>SetIdentifier</code> (for failover, geolocation, latency, and weighted resource record sets)</p> </li> </ul> <p>When you submit a <code>ChangeResourceRecordSets</code> request, Amazon Route 53 propagates your changes to all of the Amazon Route 53 authoritative DNS servers. While your changes are propagating, <code>GetChange</code> returns a status of <code>PENDING</code>. When propagation is complete, <code>GetChange</code> returns a status of <code>INSYNC</code>. Changes generally propagate to all Amazon Route 53 name servers in a few minutes. In rare circumstances, propagation can take up to 30 minutes. For more information, see <a>GetChange</a> </p> <p>For information about the limits on a <code>ChangeResourceRecordSets</code> request, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html">Limits</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>

__Required Parameters__

* `hostedZoneId` __:__ `String`
* `changeBatch` __:__ `ChangeBatch`


-}
changeResourceRecordSets :
    String
    -> ChangeBatch
    -> AWS.Http.UnsignedRequest ChangeResourceRecordSetsResponse
changeResourceRecordSets hostedZoneId changeBatch =
    AWS.Http.unsignedRequest
        "ChangeResourceRecordSets"
        "POST"
        ("/2013-04-01/hostedzone/" ++ hostedZoneId ++ "/rrset/")
        (AWS.Http.JsonBody
            JE.null
        )
        changeResourceRecordSetsResponseDecoder



{-| <p>Adds, edits, or deletes tags for a health check or a hosted zone.</p> <p>For information about using tags for cost allocation, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>

__Required Parameters__

* `resourceType` __:__ `TagResourceType`
* `resourceId` __:__ `String`


-}
changeTagsForResource :
    TagResourceType
    -> String
    -> (ChangeTagsForResourceOptions -> ChangeTagsForResourceOptions)
    -> AWS.Http.UnsignedRequest ChangeTagsForResourceResponse
changeTagsForResource resourceType resourceId setOptions =
  let
    options = setOptions (ChangeTagsForResourceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ChangeTagsForResource"
        "POST"
        ("/2013-04-01/tags/" ++ (AWS.Enum.toString resourceType |> Result.withDefault "") ++ "/" ++ resourceId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        changeTagsForResourceResponseDecoder


{-| Options for a changeTagsForResource request
-}
type alias ChangeTagsForResourceOptions =
    { addTags : Maybe (List Tag)
    , removeTagKeys : Maybe (List String)
    }



{-| <p>Creates a new health check.</p> <p>To create a new health check, send a <code>POST</code> request to the <code>/2013-04-01/healthcheck</code> resource. The request body must include a document with a <code>CreateHealthCheckRequest</code> element. The response returns the <code>CreateHealthCheckResponse</code> element, containing the health check ID specified when adding health check to a resource record set. For information about adding health checks to resource record sets, see <a>ResourceRecordSet$HealthCheckId</a> in <a>ChangeResourceRecordSets</a>. </p> <p>If you are registering EC2 instances with an Elastic Load Balancing (ELB) load balancer, do not create Amazon Route 53 health checks for the EC2 instances. When you register an EC2 instance with a load balancer, you configure settings for an ELB health check, which performs a similar function to an Amazon Route 53 health check.</p> <p>You can associate health checks with failover resource record sets in a private hosted zone. Note the following:</p> <ul> <li> <p>Amazon Route 53 health checkers are outside the VPC. To check the health of an endpoint within a VPC by IP address, you must assign a public IP address to the instance in the VPC.</p> </li> <li> <p>You can configure a health checker to check the health of an external resource that the instance relies on, such as a database server.</p> </li> <li> <p>You can create a CloudWatch metric, associate an alarm with the metric, and then create a health check that is based on the state of the alarm. For example, you might create a CloudWatch metric that checks the status of the Amazon EC2 <code>StatusCheckFailed</code> metric, add an alarm to the metric, and then create a health check that is based on the state of the alarm. For information about creating CloudWatch metrics and alarms by using the CloudWatch console, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/WhatIsCloudWatch.html">Amazon CloudWatch User Guide</a>.</p> </li> </ul>

__Required Parameters__

* `callerReference` __:__ `String`
* `healthCheckConfig` __:__ `HealthCheckConfig`


-}
createHealthCheck :
    String
    -> HealthCheckConfig
    -> AWS.Http.UnsignedRequest CreateHealthCheckResponse
createHealthCheck callerReference healthCheckConfig =
    AWS.Http.unsignedRequest
        "CreateHealthCheck"
        "POST"
        "/2013-04-01/healthcheck"
        (AWS.Http.JsonBody
            JE.null
        )
        createHealthCheckResponseDecoder



{-| <p>Creates a new public hosted zone, used to specify how the Domain Name System (DNS) routes traffic on the Internet for a domain, such as example.com, and its subdomains. </p> <important> <p>Public hosted zones can't be converted to a private hosted zone or vice versa. Instead, create a new hosted zone with the same name and create new resource record sets.</p> </important> <p>Send a <code>POST</code> request to the <code>/2013-04-01/hostedzone</code> resource. The request body must include a document with a <code>CreateHostedZoneRequest</code> element. The response returns the <code>CreateHostedZoneResponse</code> element containing metadata about the hosted zone.</p> <p>Fore more information about charges for hosted zones, see <a href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.</p> <p>Note the following:</p> <ul> <li> <p>You can't create a hosted zone for a top-level domain (TLD).</p> </li> <li> <p>Amazon Route 53 automatically creates a default SOA record and four NS records for the zone. For more information about SOA and NS records, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html">NS and SOA Records that Amazon Route 53 Creates for a Hosted Zone</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> <li> <p>If your domain is registered with a registrar other than Amazon Route 53, you must update the name servers with your registrar to make Amazon Route 53 your DNS service. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/creating-migrating.html">Configuring Amazon Route 53 as your DNS Service</a> in the <i>Amazon Route 53 Developer's Guide</i>.</p> </li> </ul> <p>After creating a zone, its initial status is <code>PENDING</code>. This means that it is not yet available on all DNS servers. The status of the zone changes to <code>INSYNC</code> when the NS and SOA records are available on all Amazon Route 53 DNS servers. </p> <p>When trying to create a hosted zone using a reusable delegation set, specify an optional DelegationSetId, and Amazon Route 53 would assign those 4 NS records for the zone, instead of allotting a new one.</p>

__Required Parameters__

* `name` __:__ `String`
* `callerReference` __:__ `String`


-}
createHostedZone :
    String
    -> String
    -> (CreateHostedZoneOptions -> CreateHostedZoneOptions)
    -> AWS.Http.UnsignedRequest CreateHostedZoneResponse
createHostedZone name callerReference setOptions =
  let
    options = setOptions (CreateHostedZoneOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateHostedZone"
        "POST"
        "/2013-04-01/hostedzone"
        (AWS.Http.JsonBody
            JE.null
        )
        createHostedZoneResponseDecoder


{-| Options for a createHostedZone request
-}
type alias CreateHostedZoneOptions =
    { vPC : Maybe VPC
    , hostedZoneConfig : Maybe HostedZoneConfig
    , delegationSetId : Maybe String
    }



{-| <p>Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones. If a hosted zoned ID is specified, <code>CreateReusableDelegationSet</code> marks the delegation set associated with that zone as reusable</p> <p>Send a <code>POST</code> request to the <code>/2013-04-01/delegationset</code> resource. The request body must include a document with a <code>CreateReusableDelegationSetRequest</code> element.</p> <note> <p>A reusable delegation set can't be associated with a private hosted zone/</p> </note> <p>For more information, including a procedure on how to create and configure a reusable delegation set (also known as white label name servers), see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/white-label-name-servers.html">Configuring White Label Name Servers</a>.</p>

__Required Parameters__

* `callerReference` __:__ `String`


-}
createReusableDelegationSet :
    String
    -> (CreateReusableDelegationSetOptions -> CreateReusableDelegationSetOptions)
    -> AWS.Http.UnsignedRequest CreateReusableDelegationSetResponse
createReusableDelegationSet callerReference setOptions =
  let
    options = setOptions (CreateReusableDelegationSetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateReusableDelegationSet"
        "POST"
        "/2013-04-01/delegationset"
        (AWS.Http.JsonBody
            JE.null
        )
        createReusableDelegationSetResponseDecoder


{-| Options for a createReusableDelegationSet request
-}
type alias CreateReusableDelegationSetOptions =
    { hostedZoneId : Maybe String
    }



{-| <p>Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com).</p> <p>Send a <code>POST</code> request to the <code>/2013-04-01/trafficpolicy</code> resource. The request body must include a document with a <code>CreateTrafficPolicyRequest</code> element. The response includes the <code>CreateTrafficPolicyResponse</code> element, which contains information about the new traffic policy.</p>

__Required Parameters__

* `name` __:__ `String`
* `document` __:__ `String`


-}
createTrafficPolicy :
    String
    -> String
    -> (CreateTrafficPolicyOptions -> CreateTrafficPolicyOptions)
    -> AWS.Http.UnsignedRequest CreateTrafficPolicyResponse
createTrafficPolicy name document setOptions =
  let
    options = setOptions (CreateTrafficPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateTrafficPolicy"
        "POST"
        "/2013-04-01/trafficpolicy"
        (AWS.Http.JsonBody
            JE.null
        )
        createTrafficPolicyResponseDecoder


{-| Options for a createTrafficPolicy request
-}
type alias CreateTrafficPolicyOptions =
    { comment : Maybe String
    }



{-| <p>Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version. In addition, <code>CreateTrafficPolicyInstance</code> associates the resource record sets with a specified domain name (such as example.com) or subdomain name (such as www.example.com). Amazon Route 53 responds to DNS queries for the domain or subdomain name by using the resource record sets that <code>CreateTrafficPolicyInstance</code> created.</p> <p>Send a <code>POST</code> request to the <code>/2013-04-01/trafficpolicyinstance</code> resource. The request body must include a document with a <code>CreateTrafficPolicyRequest</code> element. The response returns the <code>CreateTrafficPolicyInstanceResponse</code> element, which contains information about the traffic policy instance.</p>

__Required Parameters__

* `hostedZoneId` __:__ `String`
* `name` __:__ `String`
* `tTL` __:__ `Int`
* `trafficPolicyId` __:__ `String`
* `trafficPolicyVersion` __:__ `Int`


-}
createTrafficPolicyInstance :
    String
    -> String
    -> Int
    -> String
    -> Int
    -> AWS.Http.UnsignedRequest CreateTrafficPolicyInstanceResponse
createTrafficPolicyInstance hostedZoneId name tTL trafficPolicyId trafficPolicyVersion =
    AWS.Http.unsignedRequest
        "CreateTrafficPolicyInstance"
        "POST"
        "/2013-04-01/trafficpolicyinstance"
        (AWS.Http.JsonBody
            JE.null
        )
        createTrafficPolicyInstanceResponseDecoder



{-| <p>Creates a new version of an existing traffic policy. When you create a new version of a traffic policy, you specify the ID of the traffic policy that you want to update and a JSON-formatted document that describes the new version. You use traffic policies to create multiple DNS resource record sets for one domain name (such as example.com) or one subdomain name (such as www.example.com). You can create a maximum of 1000 versions of a traffic policy. If you reach the limit and need to create another version, you'll need to start a new traffic policy.</p> <p>Send a <code>POST</code> request to the <code>/2013-04-01/trafficpolicy/</code> resource. The request body includes a document with a <code>CreateTrafficPolicyVersionRequest</code> element. The response returns the <code>CreateTrafficPolicyVersionResponse</code> element, which contains information about the new version of the traffic policy.</p>

__Required Parameters__

* `id` __:__ `String`
* `document` __:__ `String`


-}
createTrafficPolicyVersion :
    String
    -> String
    -> (CreateTrafficPolicyVersionOptions -> CreateTrafficPolicyVersionOptions)
    -> AWS.Http.UnsignedRequest CreateTrafficPolicyVersionResponse
createTrafficPolicyVersion id document setOptions =
  let
    options = setOptions (CreateTrafficPolicyVersionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateTrafficPolicyVersion"
        "POST"
        ("/2013-04-01/trafficpolicy/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        createTrafficPolicyVersionResponseDecoder


{-| Options for a createTrafficPolicyVersion request
-}
type alias CreateTrafficPolicyVersionOptions =
    { comment : Maybe String
    }



{-| <p>Authorizes the AWS account that created a specified VPC to submit an <code>AssociateVPCWithHostedZone</code> request to associate the VPC with a specified hosted zone that was created by a different account. To submit a <code>CreateVPCAssociationAuthorization</code> request, you must use the account that created the hosted zone. After you authorize the association, use the account that created the VPC to submit an <code>AssociateVPCWithHostedZone</code> request.</p> <note> <p>If you want to associate multiple VPCs that you created by using one account with a hosted zone that you created by using a different account, you must submit one authorization request for each VPC.</p> </note> <p>Send a <code>POST</code> request to the <code>/2013-04-01/hostedzone/<i>hosted zone ID</i>/authorizevpcassociation</code> resource. The request body must include a document with a <code>CreateVPCAssociationAuthorizationRequest</code> element. The response contains information about the authorization.</p>

__Required Parameters__

* `hostedZoneId` __:__ `String`
* `vPC` __:__ `VPC`


-}
createVPCAssociationAuthorization :
    String
    -> VPC
    -> AWS.Http.UnsignedRequest CreateVPCAssociationAuthorizationResponse
createVPCAssociationAuthorization hostedZoneId vPC =
    AWS.Http.unsignedRequest
        "CreateVPCAssociationAuthorization"
        "POST"
        ("/2013-04-01/hostedzone/" ++ hostedZoneId ++ "/authorizevpcassociation")
        (AWS.Http.JsonBody
            JE.null
        )
        createVPCAssociationAuthorizationResponseDecoder



{-| <p>Deletes a health check. Send a <code>DELETE</code> request to the <code>/2013-04-01/healthcheck/<i>health check ID</i> </code> resource.</p> <important> <p>Amazon Route 53 does not prevent you from deleting a health check even if the health check is associated with one or more resource record sets. If you delete a health check and you don't update the associated resource record sets, the future status of the health check can't be predicted and may change. This will affect the routing of DNS queries for your DNS failover configuration. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html#health-checks-deleting.html">Replacing and Deleting Health Checks</a> in the Amazon Route 53 Developer Guide.</p> </important>

__Required Parameters__

* `healthCheckId` __:__ `String`


-}
deleteHealthCheck :
    String
    -> AWS.Http.UnsignedRequest DeleteHealthCheckResponse
deleteHealthCheck healthCheckId =
    AWS.Http.unsignedRequest
        "DeleteHealthCheck"
        "DELETE"
        ("/2013-04-01/healthcheck/" ++ healthCheckId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteHealthCheckResponseDecoder



{-| <p>Deletes a hosted zone. Send a <code>DELETE</code> request to the <code>/<i>Amazon Route 53 API version</i>/hostedzone/<i>hosted zone ID</i> </code> resource.</p> <important> <p>Delete a hosted zone only if there are no resource record sets other than the default SOA record and NS resource record sets. If the hosted zone contains other resource record sets, delete them before deleting the hosted zone. If you try to delete a hosted zone that contains other resource record sets, Amazon Route 53 denies your request with a <code>HostedZoneNotEmpty</code> error. For information about deleting records from your hosted zone, see <a>ChangeResourceRecordSets</a>.</p> </important>

__Required Parameters__

* `id` __:__ `String`


-}
deleteHostedZone :
    String
    -> AWS.Http.UnsignedRequest DeleteHostedZoneResponse
deleteHostedZone id =
    AWS.Http.unsignedRequest
        "DeleteHostedZone"
        "DELETE"
        ("/2013-04-01/hostedzone/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteHostedZoneResponseDecoder



{-| <p>Deletes a reusable delegation set. Send a <code>DELETE</code> request to the <code>/2013-04-01/delegationset/<i>delegation set ID</i> </code> resource.</p> <important> <p> You can delete a reusable delegation set only if there are no associated hosted zones.</p> </important> <p>To verify that the reusable delegation set is not associated with any hosted zones, run the <a>GetReusableDelegationSet</a> action and specify the ID of the reusable delegation set that you want to delete.</p>

__Required Parameters__

* `id` __:__ `String`


-}
deleteReusableDelegationSet :
    String
    -> AWS.Http.UnsignedRequest DeleteReusableDelegationSetResponse
deleteReusableDelegationSet id =
    AWS.Http.unsignedRequest
        "DeleteReusableDelegationSet"
        "DELETE"
        ("/2013-04-01/delegationset/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReusableDelegationSetResponseDecoder



{-| <p>Deletes a traffic policy.</p> <p>Send a <code>DELETE</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicy</code> resource.</p>

__Required Parameters__

* `id` __:__ `String`
* `version` __:__ `Int`


-}
deleteTrafficPolicy :
    String
    -> Int
    -> AWS.Http.UnsignedRequest DeleteTrafficPolicyResponse
deleteTrafficPolicy id version =
    AWS.Http.unsignedRequest
        "DeleteTrafficPolicy"
        "DELETE"
        ("/2013-04-01/trafficpolicy/" ++ id ++ "/" ++ (toString version) ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTrafficPolicyResponseDecoder



{-| <p>Deletes a traffic policy instance and all of the resource record sets that Amazon Route 53 created when you created the instance.</p> <p>Send a <code>DELETE</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicy/<i>traffic policy instance ID</i> </code> resource.</p> <note> <p>In the Amazon Route 53 console, traffic policy instances are known as policy records.</p> </note>

__Required Parameters__

* `id` __:__ `String`


-}
deleteTrafficPolicyInstance :
    String
    -> AWS.Http.UnsignedRequest DeleteTrafficPolicyInstanceResponse
deleteTrafficPolicyInstance id =
    AWS.Http.unsignedRequest
        "DeleteTrafficPolicyInstance"
        "DELETE"
        ("/2013-04-01/trafficpolicyinstance/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTrafficPolicyInstanceResponseDecoder



{-| <p>Removes authorization to submit an <code>AssociateVPCWithHostedZone</code> request to associate a specified VPC with a hosted zone that was created by a different account. You must use the account that created the hosted zone to submit a <code>DeleteVPCAssociationAuthorization</code> request.</p> <important> <p>Sending this request only prevents the AWS account that created the VPC from associating the VPC with the Amazon Route 53 hosted zone in the future. If the VPC is already associated with the hosted zone, <code>DeleteVPCAssociationAuthorization</code> won't disassociate the VPC from the hosted zone. If you want to delete an existing association, use <code>DisassociateVPCFromHostedZone</code>.</p> </important> <p>Send a <code>DELETE</code> request to the <code>/2013-04-01/hostedzone/<i>hosted zone ID</i>/deauthorizevpcassociation</code> resource. The request body must include a document with a <code>DeleteVPCAssociationAuthorizationRequest</code> element.</p>

__Required Parameters__

* `hostedZoneId` __:__ `String`
* `vPC` __:__ `VPC`


-}
deleteVPCAssociationAuthorization :
    String
    -> VPC
    -> AWS.Http.UnsignedRequest DeleteVPCAssociationAuthorizationResponse
deleteVPCAssociationAuthorization hostedZoneId vPC =
    AWS.Http.unsignedRequest
        "DeleteVPCAssociationAuthorization"
        "POST"
        ("/2013-04-01/hostedzone/" ++ hostedZoneId ++ "/deauthorizevpcassociation")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteVPCAssociationAuthorizationResponseDecoder



{-| <p>Disassociates a VPC from a Amazon Route 53 private hosted zone. </p> <note> <p>You can't disassociate the last VPC from a private hosted zone.</p> </note> <p>Send a <code>POST</code> request to the <code>/2013-04-01/hostedzone/<i>hosted zone ID</i>/disassociatevpc</code> resource. The request body must include a document with a <code>DisassociateVPCFromHostedZoneRequest</code> element. The response includes a <code>DisassociateVPCFromHostedZoneResponse</code> element.</p> <important> <p>You can't disassociate a VPC from a private hosted zone when only one VPC is associated with the hosted zone. You also can't convert a private hosted zone into a public hosted zone.</p> </important>

__Required Parameters__

* `hostedZoneId` __:__ `String`
* `vPC` __:__ `VPC`


-}
disassociateVPCFromHostedZone :
    String
    -> VPC
    -> (DisassociateVPCFromHostedZoneOptions -> DisassociateVPCFromHostedZoneOptions)
    -> AWS.Http.UnsignedRequest DisassociateVPCFromHostedZoneResponse
disassociateVPCFromHostedZone hostedZoneId vPC setOptions =
  let
    options = setOptions (DisassociateVPCFromHostedZoneOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisassociateVPCFromHostedZone"
        "POST"
        ("/2013-04-01/hostedzone/" ++ hostedZoneId ++ "/disassociatevpc")
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateVPCFromHostedZoneResponseDecoder


{-| Options for a disassociateVPCFromHostedZone request
-}
type alias DisassociateVPCFromHostedZoneOptions =
    { comment : Maybe String
    }



{-| <p>Returns the current status of a change batch request. The status is one of the following values:</p> <ul> <li> <p> <code>PENDING</code> indicates that the changes in this request have not replicated to all Amazon Route 53 DNS servers. This is the initial status of all change batch requests.</p> </li> <li> <p> <code>INSYNC</code> indicates that the changes have replicated to all Amazon Route 53 DNS servers. </p> </li> </ul>

__Required Parameters__

* `id` __:__ `String`


-}
getChange :
    String
    -> AWS.Http.UnsignedRequest GetChangeResponse
getChange id =
    AWS.Http.unsignedRequest
        "GetChange"
        "GET"
        ("/2013-04-01/change/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getChangeResponseDecoder



{-| <p>Retrieves a list of the IP ranges used by Amazon Route 53 health checkers to check the health of your resources. Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/checkeripranges</code> resource. Use these IP addresses to configure router and firewall rules to allow health checkers to check the health of your resources.</p>

__Required Parameters__



-}
getCheckerIpRanges :
    AWS.Http.UnsignedRequest GetCheckerIpRangesResponse
getCheckerIpRanges =
    AWS.Http.unsignedRequest
        "GetCheckerIpRanges"
        "GET"
        "/2013-04-01/checkeripranges"
        (AWS.Http.QueryParams
            [
            ]
        )
        getCheckerIpRangesResponseDecoder



{-| <p>Retrieves a single geo location. Send a <code>GET</code> request to the <code>/2013-04-01/geolocation</code> resource with one of these options: continentcode | countrycode | countrycode and subdivisioncode.</p>

__Required Parameters__



-}
getGeoLocation :
    (GetGeoLocationOptions -> GetGeoLocationOptions)
    -> AWS.Http.UnsignedRequest GetGeoLocationResponse
getGeoLocation setOptions =
  let
    options = setOptions (GetGeoLocationOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetGeoLocation"
        "GET"
        "/2013-04-01/geolocation"
        (AWS.Http.QueryParams
            [
            ]
        )
        getGeoLocationResponseDecoder


{-| Options for a getGeoLocation request
-}
type alias GetGeoLocationOptions =
    { continentCode : Maybe String
    , countryCode : Maybe String
    , subdivisionCode : Maybe String
    }



{-| <p>Gets information about a specified health check. Send a <code>GET</code> request to the <code>/2013-04-01/healthcheck/<i>health check ID</i> </code> resource. For more information about using the console to perform this operation, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a> in the Amazon Route 53 Developer Guide.</p>

__Required Parameters__

* `healthCheckId` __:__ `String`


-}
getHealthCheck :
    String
    -> AWS.Http.UnsignedRequest GetHealthCheckResponse
getHealthCheck healthCheckId =
    AWS.Http.unsignedRequest
        "GetHealthCheck"
        "GET"
        ("/2013-04-01/healthcheck/" ++ healthCheckId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getHealthCheckResponseDecoder



{-| <p>To retrieve a count of all your health checks, send a <code>GET</code> request to the <code>/2013-04-01/healthcheckcount</code> resource.</p>

__Required Parameters__



-}
getHealthCheckCount :
    AWS.Http.UnsignedRequest GetHealthCheckCountResponse
getHealthCheckCount =
    AWS.Http.unsignedRequest
        "GetHealthCheckCount"
        "GET"
        "/2013-04-01/healthcheckcount"
        (AWS.Http.QueryParams
            [
            ]
        )
        getHealthCheckCountResponseDecoder



{-| <p>If you want to learn why a health check is currently failing or why it failed most recently (if at all), you can get the failure reason for the most recent failure. Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/healthcheck/<i>health check ID</i>/lastfailurereason</code> resource.</p>

__Required Parameters__

* `healthCheckId` __:__ `String`


-}
getHealthCheckLastFailureReason :
    String
    -> AWS.Http.UnsignedRequest GetHealthCheckLastFailureReasonResponse
getHealthCheckLastFailureReason healthCheckId =
    AWS.Http.unsignedRequest
        "GetHealthCheckLastFailureReason"
        "GET"
        ("/2013-04-01/healthcheck/" ++ healthCheckId ++ "/lastfailurereason")
        (AWS.Http.QueryParams
            [
            ]
        )
        getHealthCheckLastFailureReasonResponseDecoder



{-| <p>Gets status of a specified health check. Send a <code>GET</code> request to the <code>/2013-04-01/healthcheck/<i>health check ID</i>/status</code> resource. You can use this call to get a health check's current status. </p>

__Required Parameters__

* `healthCheckId` __:__ `String`


-}
getHealthCheckStatus :
    String
    -> AWS.Http.UnsignedRequest GetHealthCheckStatusResponse
getHealthCheckStatus healthCheckId =
    AWS.Http.unsignedRequest
        "GetHealthCheckStatus"
        "GET"
        ("/2013-04-01/healthcheck/" ++ healthCheckId ++ "/status")
        (AWS.Http.QueryParams
            [
            ]
        )
        getHealthCheckStatusResponseDecoder



{-| <p>Retrieves the delegation set for a hosted zone, including the four name servers assigned to the hosted zone. Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/hostedzone/<i>hosted zone ID</i> </code> resource. </p>

__Required Parameters__

* `id` __:__ `String`


-}
getHostedZone :
    String
    -> AWS.Http.UnsignedRequest GetHostedZoneResponse
getHostedZone id =
    AWS.Http.unsignedRequest
        "GetHostedZone"
        "GET"
        ("/2013-04-01/hostedzone/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getHostedZoneResponseDecoder



{-| <p>Retrieves a count of all your hosted zones. Send a <code>GET</code> request to the <code>/2013-04-01/hostedzonecount</code> resource.</p>

__Required Parameters__



-}
getHostedZoneCount :
    AWS.Http.UnsignedRequest GetHostedZoneCountResponse
getHostedZoneCount =
    AWS.Http.unsignedRequest
        "GetHostedZoneCount"
        "GET"
        "/2013-04-01/hostedzonecount"
        (AWS.Http.QueryParams
            [
            ]
        )
        getHostedZoneCountResponseDecoder



{-| <p>Retrieves the reusable delegation set. Send a <code>GET</code> request to the <code>/2013-04-01/delegationset/<i>delegation set ID</i> </code> resource.</p>

__Required Parameters__

* `id` __:__ `String`


-}
getReusableDelegationSet :
    String
    -> AWS.Http.UnsignedRequest GetReusableDelegationSetResponse
getReusableDelegationSet id =
    AWS.Http.unsignedRequest
        "GetReusableDelegationSet"
        "GET"
        ("/2013-04-01/delegationset/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getReusableDelegationSetResponseDecoder



{-| <p>Gets information about a specific traffic policy version.</p> <p>Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicy</code> resource.</p>

__Required Parameters__

* `id` __:__ `String`
* `version` __:__ `Int`


-}
getTrafficPolicy :
    String
    -> Int
    -> AWS.Http.UnsignedRequest GetTrafficPolicyResponse
getTrafficPolicy id version =
    AWS.Http.unsignedRequest
        "GetTrafficPolicy"
        "GET"
        ("/2013-04-01/trafficpolicy/" ++ id ++ "/" ++ (toString version) ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getTrafficPolicyResponseDecoder



{-| <p>Gets information about a specified traffic policy instance.</p> <p>Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicyinstance</code> resource.</p> <note> <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <note> <p>In the Amazon Route 53 console, traffic policy instances are known as policy records.</p> </note>

__Required Parameters__

* `id` __:__ `String`


-}
getTrafficPolicyInstance :
    String
    -> AWS.Http.UnsignedRequest GetTrafficPolicyInstanceResponse
getTrafficPolicyInstance id =
    AWS.Http.unsignedRequest
        "GetTrafficPolicyInstance"
        "GET"
        ("/2013-04-01/trafficpolicyinstance/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getTrafficPolicyInstanceResponseDecoder



{-| <p>Gets the number of traffic policy instances that are associated with the current AWS account.</p> <p>To get the number of traffic policy instances, send a <code>GET</code> request to the <code>/2013-04-01/trafficpolicyinstancecount</code> resource.</p>

__Required Parameters__



-}
getTrafficPolicyInstanceCount :
    AWS.Http.UnsignedRequest GetTrafficPolicyInstanceCountResponse
getTrafficPolicyInstanceCount =
    AWS.Http.unsignedRequest
        "GetTrafficPolicyInstanceCount"
        "GET"
        "/2013-04-01/trafficpolicyinstancecount"
        (AWS.Http.QueryParams
            [
            ]
        )
        getTrafficPolicyInstanceCountResponseDecoder



{-| <p>Retrieves a list of supported geo locations. Send a <code>GET</code> request to the <code>/2013-04-01/geolocations</code> resource. The response to this request includes a <code>GeoLocationDetailsList</code> element for each location that Amazon Route 53 supports.</p> <p>Countries are listed first, and continents are listed last. If Amazon Route 53 supports subdivisions for a country (for example, states or provinces), the subdivisions for that country are listed in alphabetical order immediately after the corresponding country. </p>

__Required Parameters__



-}
listGeoLocations :
    (ListGeoLocationsOptions -> ListGeoLocationsOptions)
    -> AWS.Http.UnsignedRequest ListGeoLocationsResponse
listGeoLocations setOptions =
  let
    options = setOptions (ListGeoLocationsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListGeoLocations"
        "GET"
        "/2013-04-01/geolocations"
        (AWS.Http.QueryParams
            [
            ]
        )
        listGeoLocationsResponseDecoder


{-| Options for a listGeoLocations request
-}
type alias ListGeoLocationsOptions =
    { startContinentCode : Maybe String
    , startCountryCode : Maybe String
    , startSubdivisionCode : Maybe String
    , maxItems : Maybe String
    }



{-| <p>Retrieve a list of your health checks. Send a <code>GET</code> request to the <code>/2013-04-01/healthcheck</code> resource. The response to this request includes a <code>HealthChecks</code> element with zero or more <code>HealthCheck</code> child elements. By default, the list of health checks is displayed on a single page. You can control the length of the page that is displayed by using the <code>MaxItems</code> parameter. You can use the <code>Marker</code> parameter to control the health check that the list begins with.</p> <p>For information about listing health checks using the Amazon Route 53 console, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a>.</p>

__Required Parameters__



-}
listHealthChecks :
    (ListHealthChecksOptions -> ListHealthChecksOptions)
    -> AWS.Http.UnsignedRequest ListHealthChecksResponse
listHealthChecks setOptions =
  let
    options = setOptions (ListHealthChecksOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListHealthChecks"
        "GET"
        "/2013-04-01/healthcheck"
        (AWS.Http.QueryParams
            [
            ]
        )
        listHealthChecksResponseDecoder


{-| Options for a listHealthChecks request
-}
type alias ListHealthChecksOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>To retrieve a list of your public and private hosted zones, send a <code>GET</code> request to the <code>/2013-04-01/hostedzone</code> resource. The response to this request includes a <code>HostedZones</code> child element for each hosted zone created by the current AWS account.</p> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of hosted zones, you can use the <code>maxitems</code> parameter to list them in groups of up to 100. The response includes four values that help navigate from one group of <code>maxitems</code> hosted zones to the next:</p> <ul> <li> <p> <code>MaxItems</code> is the value specified for the <code>maxitems</code> parameter in the request that produced the current response.</p> </li> <li> <p>If the value of <code>IsTruncated</code> in the response is true, there are more hosted zones associated with the current AWS account. </p> </li> <li> <p> <code>NextMarker</code> is the hosted zone ID of the next hosted zone that is associated with the current AWS account. If you want to list more hosted zones, make another call to <code>ListHostedZones</code>, and specify the value of the <code>NextMarker</code> element in the marker parameter. </p> <p>If <code>IsTruncated</code> is false, the <code>NextMarker</code> element is omitted from the response.</p> </li> <li> <p>If you're making the second or subsequent call to <code>ListHostedZones</code>, the <code>Marker</code> element matches the value that you specified in the <code>marker</code> parameter in the previous request.</p> </li> </ul>

__Required Parameters__



-}
listHostedZones :
    (ListHostedZonesOptions -> ListHostedZonesOptions)
    -> AWS.Http.UnsignedRequest ListHostedZonesResponse
listHostedZones setOptions =
  let
    options = setOptions (ListHostedZonesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListHostedZones"
        "GET"
        "/2013-04-01/hostedzone"
        (AWS.Http.QueryParams
            [
            ]
        )
        listHostedZonesResponseDecoder


{-| Options for a listHostedZones request
-}
type alias ListHostedZonesOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    , delegationSetId : Maybe String
    }



{-| <p>Retrieves a list of your hosted zones in lexicographic order. Send a <code>GET</code> request to the <code>/2013-04-01/hostedzonesbyname</code> resource. The response includes a <code>HostedZones</code> child element for each hosted zone created by the current AWS account. </p> <p> <code>ListHostedZonesByName</code> sorts hosted zones by name with the labels reversed. For example:</p> <ul> <li> <p> <code>com.example.www.</code> </p> </li> </ul> <p>Note the trailing dot, which can change the sort order in some circumstances.</p> <p>If the domain name includes escape characters or Punycode, <code>ListHostedZonesByName</code> alphabetizes the domain name using the escaped or Punycoded value, which is the format that Amazon Route 53 saves in its database. For example, to create a hosted zone for example.com, specify ex\344mple.com for the domain name. <code>ListHostedZonesByName</code> alphabetizes it as:</p> <ul> <li> <p> <code>com.ex\344mple.</code> </p> </li> </ul> <p>The labels are reversed and alphabetized using the escaped value. For more information about valid domain name formats, including internationalized domain names, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a> in the Amazon Route 53 Developer Guide.</p> <p>Amazon Route 53 returns up to 100 items in each response. If you have a lot of hosted zones, use the <code>MaxItems</code> parameter to list them in groups of up to 100. The response includes values that help navigate from one group of <code>MaxItems</code> hosted zones to the next:</p> <ul> <li> <p>The <code>DNSName</code> and <code>HostedZoneId</code> elements in the response contain the values, if any, specified for the <code>dnsname</code> and <code>hostedzoneid</code> parameters in the request that produced the current response.</p> </li> <li> <p>The <code>MaxItems</code> element in the response contains the value, if any, that you specified for the <code>maxitems</code> parameter in the request that produced the current response.</p> </li> <li> <p>If the value of <code>IsTruncated</code> in the response is true, there are more hosted zones associated with the current AWS account. </p> <p>If <code>IsTruncated</code> is false, this response includes the last hosted zone that is associated with the current account. The <code>NextDNSName</code> element and <code>NextHostedZoneId</code> elements are omitted from the response.</p> </li> <li> <p>The <code>NextDNSName</code> and <code>NextHostedZoneId</code> elements in the response contain the domain name and the hosted zone ID of the next hosted zone that is associated with the current AWS account. If you want to list more hosted zones, make another call to <code>ListHostedZonesByName</code>, and specify the value of <code>NextDNSName</code> and <code>NextHostedZoneId</code> in the <code>dnsname</code> and <code>hostedzoneid</code> parameters, respectively.</p> </li> </ul>

__Required Parameters__



-}
listHostedZonesByName :
    (ListHostedZonesByNameOptions -> ListHostedZonesByNameOptions)
    -> AWS.Http.UnsignedRequest ListHostedZonesByNameResponse
listHostedZonesByName setOptions =
  let
    options = setOptions (ListHostedZonesByNameOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListHostedZonesByName"
        "GET"
        "/2013-04-01/hostedzonesbyname"
        (AWS.Http.QueryParams
            [
            ]
        )
        listHostedZonesByNameResponseDecoder


{-| Options for a listHostedZonesByName request
-}
type alias ListHostedZonesByNameOptions =
    { dNSName : Maybe String
    , hostedZoneId : Maybe String
    , maxItems : Maybe String
    }



{-| <p>Lists the resource record sets in a specified hosted zone.</p> <p> <code>ListResourceRecordSets</code> returns up to 100 resource record sets at a time in ASCII order, beginning at a position specified by the <code>name</code> and <code>type</code> elements. The action sorts results first by DNS name with the labels reversed, for example:</p> <p> <code>com.example.www.</code> </p> <p>Note the trailing dot, which can change the sort order in some circumstances.</p> <p>When multiple records have the same DNS name, the action sorts results by the record type.</p> <p>You can use the name and type elements to adjust the beginning position of the list of resource record sets returned:</p> <dl> <dt>If you do not specify Name or Type</dt> <dd> <p>The results begin with the first resource record set that the hosted zone contains.</p> </dd> <dt>If you specify Name but not Type</dt> <dd> <p>The results begin with the first resource record set in the list whose name is greater than or equal to <code>Name</code>.</p> </dd> <dt>If you specify Type but not Name</dt> <dd> <p>Amazon Route 53 returns the <code>InvalidInput</code> error.</p> </dd> <dt>If you specify both Name and Type</dt> <dd> <p>The results begin with the first resource record set in the list whose name is greater than or equal to <code>Name</code>, and whose type is greater than or equal to <code>Type</code>.</p> </dd> </dl> <p>This action returns the most current version of the records. This includes records that are <code>PENDING</code>, and that are not yet available on all Amazon Route 53 DNS servers.</p> <p>To ensure that you get an accurate listing of the resource record sets for a hosted zone at a point in time, do not submit a <code>ChangeResourceRecordSets</code> request while you're paging through the results of a <code>ListResourceRecordSets</code> request. If you do, some pages may display results without the latest changes while other pages display results with the latest changes.</p>

__Required Parameters__

* `hostedZoneId` __:__ `String`


-}
listResourceRecordSets :
    String
    -> (ListResourceRecordSetsOptions -> ListResourceRecordSetsOptions)
    -> AWS.Http.UnsignedRequest ListResourceRecordSetsResponse
listResourceRecordSets hostedZoneId setOptions =
  let
    options = setOptions (ListResourceRecordSetsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListResourceRecordSets"
        "GET"
        ("/2013-04-01/hostedzone/" ++ hostedZoneId ++ "/rrset")
        (AWS.Http.QueryParams
            [
            ]
        )
        listResourceRecordSetsResponseDecoder


{-| Options for a listResourceRecordSets request
-}
type alias ListResourceRecordSetsOptions =
    { startRecordName : Maybe String
    , startRecordType : Maybe RRType
    , startRecordIdentifier : Maybe String
    , maxItems : Maybe String
    }



{-| <p>To retrieve a list of your reusable delegation sets, send a <code>GET</code> request to the <code>/2013-04-01/delegationset</code> resource. The response to this request includes a <code>DelegationSets</code> element with zero, one, or multiple <code>DelegationSet</code> child elements. By default, the list of delegation sets is displayed on a single page. You can control the length of the page that is displayed by using the <code>MaxItems</code> parameter. You can use the <code>Marker</code> parameter to control the delegation set that the list begins with. </p> <note> <p> Amazon Route 53 returns a maximum of 100 items. If you set MaxItems to a value greater than 100, Amazon Route 53 returns only the first 100.</p> </note>

__Required Parameters__



-}
listReusableDelegationSets :
    (ListReusableDelegationSetsOptions -> ListReusableDelegationSetsOptions)
    -> AWS.Http.UnsignedRequest ListReusableDelegationSetsResponse
listReusableDelegationSets setOptions =
  let
    options = setOptions (ListReusableDelegationSetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListReusableDelegationSets"
        "GET"
        "/2013-04-01/delegationset"
        (AWS.Http.QueryParams
            [
            ]
        )
        listReusableDelegationSetsResponseDecoder


{-| Options for a listReusableDelegationSets request
-}
type alias ListReusableDelegationSetsOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>Lists tags for one health check or hosted zone. </p> <p>For information about using tags for cost allocation, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>

__Required Parameters__

* `resourceType` __:__ `TagResourceType`
* `resourceId` __:__ `String`


-}
listTagsForResource :
    TagResourceType
    -> String
    -> AWS.Http.UnsignedRequest ListTagsForResourceResponse
listTagsForResource resourceType resourceId =
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "GET"
        ("/2013-04-01/tags/" ++ (AWS.Enum.toString resourceType |> Result.withDefault "") ++ "/" ++ resourceId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listTagsForResourceResponseDecoder



{-| <p>Lists tags for up to 10 health checks or hosted zones.</p> <p>For information about using tags for cost allocation, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Using Cost Allocation Tags</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p>

__Required Parameters__

* `resourceType` __:__ `TagResourceType`
* `resourceIds` __:__ `(List String)`


-}
listTagsForResources :
    TagResourceType
    -> (List String)
    -> AWS.Http.UnsignedRequest ListTagsForResourcesResponse
listTagsForResources resourceType resourceIds =
    AWS.Http.unsignedRequest
        "ListTagsForResources"
        "POST"
        ("/2013-04-01/tags/" ++ (AWS.Enum.toString resourceType |> Result.withDefault "") ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForResourcesResponseDecoder



{-| <p>Gets information about the latest version for every traffic policy that is associated with the current AWS account. Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicy</code> resource.</p> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policies, you can use the <code>maxitems</code> parameter to list them in groups of up to 100.</p> <p>The response includes three values that help you navigate from one group of <code>maxitems</code> traffic policies to the next:</p> <ul> <li> <p> <b>IsTruncated</b> </p> <p>If the value of <code>IsTruncated</code> in the response is <code>true</code>, there are more traffic policies associated with the current AWS account.</p> <p>If <code>IsTruncated</code> is <code>false</code>, this response includes the last traffic policy that is associated with the current account.</p> </li> <li> <p> <b>TrafficPolicyIdMarker</b> </p> <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyIdMarker</code> is the ID of the first traffic policy in the next group of <code>MaxItems</code> traffic policies. If you want to list more traffic policies, make another call to <code>ListTrafficPolicies</code>, and specify the value of the <code>TrafficPolicyIdMarker</code> element from the response in the <code>TrafficPolicyIdMarker</code> request parameter.</p> <p>If <code>IsTruncated</code> is <code>false</code>, the <code>TrafficPolicyIdMarker</code> element is omitted from the response.</p> </li> <li> <p> <b>MaxItems</b> </p> <p>The value that you specified for the <code>MaxItems</code> parameter in the request that produced the current response.</p> </li> </ul>

__Required Parameters__



-}
listTrafficPolicies :
    (ListTrafficPoliciesOptions -> ListTrafficPoliciesOptions)
    -> AWS.Http.UnsignedRequest ListTrafficPoliciesResponse
listTrafficPolicies setOptions =
  let
    options = setOptions (ListTrafficPoliciesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTrafficPolicies"
        "GET"
        "/2013-04-01/trafficpolicies"
        (AWS.Http.QueryParams
            [
            ]
        )
        listTrafficPoliciesResponseDecoder


{-| Options for a listTrafficPolicies request
-}
type alias ListTrafficPoliciesOptions =
    { trafficPolicyIdMarker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>Gets information about the traffic policy instances that you created by using the current AWS account.</p> <note> <p>After you submit an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <p>Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicyinstance</code> resource.</p> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the <code>MaxItems</code> parameter to list them in groups of up to 100.</p> <p>The response includes five values that help you navigate from one group of <code>MaxItems</code> traffic policy instances to the next:</p> <ul> <li> <p> <b>IsTruncated</b> </p> <p>If the value of <code>IsTruncated</code> in the response is <code>true</code>, there are more traffic policy instances associated with the current AWS account.</p> <p>If <code>IsTruncated</code> is <code>false</code>, this response includes the last traffic policy instance that is associated with the current account.</p> </li> <li> <p> <b>MaxItems</b> </p> <p>The value that you specified for the <code>MaxItems</code> parameter in the request that produced the current response.</p> </li> <li> <p> <b>HostedZoneIdMarker</b>, <b>TrafficPolicyInstanceNameMarker</b>, and <b>TrafficPolicyInstanceTypeMarker</b> </p> <p>If <code>IsTruncated</code> is <code>true</code>, these three values in the response represent the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances. To list more traffic policy instances, make another call to <code>ListTrafficPolicyInstances</code>, and specify these values in the corresponding request parameters.</p> <p>If <code>IsTruncated</code> is <code>false</code>, all three elements are omitted from the response.</p> </li> </ul>

__Required Parameters__



-}
listTrafficPolicyInstances :
    (ListTrafficPolicyInstancesOptions -> ListTrafficPolicyInstancesOptions)
    -> AWS.Http.UnsignedRequest ListTrafficPolicyInstancesResponse
listTrafficPolicyInstances setOptions =
  let
    options = setOptions (ListTrafficPolicyInstancesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTrafficPolicyInstances"
        "GET"
        "/2013-04-01/trafficpolicyinstances"
        (AWS.Http.QueryParams
            [
            ]
        )
        listTrafficPolicyInstancesResponseDecoder


{-| Options for a listTrafficPolicyInstances request
-}
type alias ListTrafficPolicyInstancesOptions =
    { hostedZoneIdMarker : Maybe String
    , trafficPolicyInstanceNameMarker : Maybe String
    , trafficPolicyInstanceTypeMarker : Maybe RRType
    , maxItems : Maybe String
    }



{-| <p>Gets information about the traffic policy instances that you created in a specified hosted zone.</p> <note> <p>After you submit an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <p>Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicyinstance</code> resource and include the ID of the hosted zone.</p> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the <code>MaxItems</code> parameter to list them in groups of up to 100.</p> <p>The response includes four values that help you navigate from one group of <code>MaxItems</code> traffic policy instances to the next:</p> <ul> <li> <p> <b>IsTruncated</b> </p> <p>If the value of <code/>IsTruncated in the response is <code>true</code>, there are more traffic policy instances associated with the current AWS account.</p> <p>If <code>IsTruncated</code> is <code>false</code>, this response includes the last traffic policy instance that is associated with the current account.</p> </li> <li> <p> <b>MaxItems</b> </p> <p>The value that you specified for the <code>MaxItems</code> parameter in the request that produced the current response.</p> </li> <li> <p> <b>TrafficPolicyInstanceNameMarker</b> and <b>TrafficPolicyInstanceTypeMarker</b> </p> <p>If <code>IsTruncated</code> is <code>true</code>, these two values in the response represent the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances. To list more traffic policy instances, make another call to <code>ListTrafficPolicyInstancesByHostedZone</code>, and specify these values in the corresponding request parameters.</p> <p>If <code>IsTruncated</code> is <code>false</code>, all three elements are omitted from the response.</p> </li> </ul>

__Required Parameters__

* `hostedZoneId` __:__ `String`


-}
listTrafficPolicyInstancesByHostedZone :
    String
    -> (ListTrafficPolicyInstancesByHostedZoneOptions -> ListTrafficPolicyInstancesByHostedZoneOptions)
    -> AWS.Http.UnsignedRequest ListTrafficPolicyInstancesByHostedZoneResponse
listTrafficPolicyInstancesByHostedZone hostedZoneId setOptions =
  let
    options = setOptions (ListTrafficPolicyInstancesByHostedZoneOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTrafficPolicyInstancesByHostedZone"
        "GET"
        "/2013-04-01/trafficpolicyinstances/hostedzone"
        (AWS.Http.QueryParams
            [
            ]
        )
        listTrafficPolicyInstancesByHostedZoneResponseDecoder


{-| Options for a listTrafficPolicyInstancesByHostedZone request
-}
type alias ListTrafficPolicyInstancesByHostedZoneOptions =
    { trafficPolicyInstanceNameMarker : Maybe String
    , trafficPolicyInstanceTypeMarker : Maybe RRType
    , maxItems : Maybe String
    }



{-| <p>Gets information about the traffic policy instances that you created by using a specify traffic policy version.</p> <note> <p>After you submit a <code>CreateTrafficPolicyInstance</code> or an <code>UpdateTrafficPolicyInstance</code> request, there's a brief delay while Amazon Route 53 creates the resource record sets that are specified in the traffic policy definition. For more information, see the <code>State</code> response element.</p> </note> <p>Send a <code>GET</code> request to the <code>/<i>Route 53 API version</i>/trafficpolicyinstance</code> resource and include the ID and version of the traffic policy.</p> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policy instances, you can use the <code>MaxItems</code> parameter to list them in groups of up to 100.</p> <p>The response includes five values that help you navigate from one group of <code>MaxItems</code> traffic policy instances to the next:</p> <ul> <li> <p> <b>IsTruncated</b> </p> <p>If the value of <code>IsTruncated</code> in the response is <code>true</code>, there are more traffic policy instances associated with the specified traffic policy.</p> <p>If <code>IsTruncated</code> is <code>false</code>, this response includes the last traffic policy instance that is associated with the specified traffic policy.</p> </li> <li> <p> <b>MaxItems</b> </p> <p>The value that you specified for the <code>MaxItems</code> parameter in the request that produced the current response.</p> </li> <li> <p> <b>HostedZoneIdMarker</b>, <b>TrafficPolicyInstanceNameMarker</b>, and <b>TrafficPolicyInstanceTypeMarker</b> </p> <p>If <code>IsTruncated</code> is <code>true</code>, these values in the response represent the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances. To list more traffic policy instances, make another call to <code>ListTrafficPolicyInstancesByPolicy</code>, and specify these values in the corresponding request parameters.</p> <p>If <code>IsTruncated</code> is <code>false</code>, all three elements are omitted from the response.</p> </li> </ul>

__Required Parameters__

* `trafficPolicyId` __:__ `String`
* `trafficPolicyVersion` __:__ `Int`


-}
listTrafficPolicyInstancesByPolicy :
    String
    -> Int
    -> (ListTrafficPolicyInstancesByPolicyOptions -> ListTrafficPolicyInstancesByPolicyOptions)
    -> AWS.Http.UnsignedRequest ListTrafficPolicyInstancesByPolicyResponse
listTrafficPolicyInstancesByPolicy trafficPolicyId trafficPolicyVersion setOptions =
  let
    options = setOptions (ListTrafficPolicyInstancesByPolicyOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTrafficPolicyInstancesByPolicy"
        "GET"
        "/2013-04-01/trafficpolicyinstances/trafficpolicy"
        (AWS.Http.QueryParams
            [
            ]
        )
        listTrafficPolicyInstancesByPolicyResponseDecoder


{-| Options for a listTrafficPolicyInstancesByPolicy request
-}
type alias ListTrafficPolicyInstancesByPolicyOptions =
    { hostedZoneIdMarker : Maybe String
    , trafficPolicyInstanceNameMarker : Maybe String
    , trafficPolicyInstanceTypeMarker : Maybe RRType
    , maxItems : Maybe String
    }



{-| <p>Gets information about all of the versions for a specified traffic policy.</p> <p>Send a <code>GET</code> request to the <code>/<i>Amazon Route 53 API version</i>/trafficpolicy</code> resource and specify the ID of the traffic policy for which you want to list versions.</p> <p>Amazon Route 53 returns a maximum of 100 items in each response. If you have a lot of traffic policies, you can use the <code>maxitems</code> parameter to list them in groups of up to 100.</p> <p>The response includes three values that help you navigate from one group of <code>maxitems</code> traffic policies to the next:</p> <ul> <li> <p> <b>IsTruncated</b> </p> <p>If the value of <code>IsTruncated</code> in the response is <code>true</code>, there are more traffic policy versions associated with the specified traffic policy.</p> <p>If <code>IsTruncated</code> is <code>false</code>, this response includes the last traffic policy version that is associated with the specified traffic policy.</p> </li> <li> <p> <b>TrafficPolicyVersionMarker</b> </p> <p>The ID of the next traffic policy version that is associated with the current AWS account. If you want to list more traffic policies, make another call to <code>ListTrafficPolicyVersions</code>, and specify the value of the <code>TrafficPolicyVersionMarker</code> element in the <code>TrafficPolicyVersionMarker</code> request parameter.</p> <p>If <code>IsTruncated</code> is <code>false</code>, Amazon Route 53 omits the <code>TrafficPolicyVersionMarker</code> element from the response.</p> </li> <li> <p> <b>MaxItems</b> </p> <p>The value that you specified for the <code>MaxItems</code> parameter in the request that produced the current response.</p> </li> </ul>

__Required Parameters__

* `id` __:__ `String`


-}
listTrafficPolicyVersions :
    String
    -> (ListTrafficPolicyVersionsOptions -> ListTrafficPolicyVersionsOptions)
    -> AWS.Http.UnsignedRequest ListTrafficPolicyVersionsResponse
listTrafficPolicyVersions id setOptions =
  let
    options = setOptions (ListTrafficPolicyVersionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTrafficPolicyVersions"
        "GET"
        ("/2013-04-01/trafficpolicies/" ++ id ++ "/versions")
        (AWS.Http.QueryParams
            [
            ]
        )
        listTrafficPolicyVersionsResponseDecoder


{-| Options for a listTrafficPolicyVersions request
-}
type alias ListTrafficPolicyVersionsOptions =
    { trafficPolicyVersionMarker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more <code>CreateVPCAssociationAuthorization</code> requests. </p> <p>Send a <code>GET</code> request to the <code>/2013-04-01/hostedzone/<i>hosted zone ID</i>/authorizevpcassociation</code> resource. The response to this request includes a <code>VPCs</code> element with a <code>VPC</code> child element for each VPC that can be associated with the hosted zone.</p> <p>Amazon Route 53 returns up to 50 VPCs per page. To return fewer VPCs per page, include the <code>MaxResults</code> parameter: </p> <p> <code>/2013-04-01/hostedzone/<i>hosted zone ID</i>/authorizevpcassociation?MaxItems=<i>VPCs per page</i> </code> </p> <p>If the response includes a <code>NextToken</code> element, there are more VPCs to list. To get the next page of VPCs, submit another <code>ListVPCAssociationAuthorizations</code> request, and include the value of the <code>NextToken</code> element from the response in the <code>NextToken</code> request parameter:</p> <p> <code>/2013-04-01/hostedzone/<i>hosted zone ID</i>/authorizevpcassociation?MaxItems=<i>VPCs per page</i>&amp;NextToken=<i/> </code> </p>

__Required Parameters__

* `hostedZoneId` __:__ `String`


-}
listVPCAssociationAuthorizations :
    String
    -> (ListVPCAssociationAuthorizationsOptions -> ListVPCAssociationAuthorizationsOptions)
    -> AWS.Http.UnsignedRequest ListVPCAssociationAuthorizationsResponse
listVPCAssociationAuthorizations hostedZoneId setOptions =
  let
    options = setOptions (ListVPCAssociationAuthorizationsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListVPCAssociationAuthorizations"
        "GET"
        ("/2013-04-01/hostedzone/" ++ hostedZoneId ++ "/authorizevpcassociation")
        (AWS.Http.QueryParams
            [
            ]
        )
        listVPCAssociationAuthorizationsResponseDecoder


{-| Options for a listVPCAssociationAuthorizations request
-}
type alias ListVPCAssociationAuthorizationsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe String
    }



{-| <p>Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>

__Required Parameters__

* `hostedZoneId` __:__ `String`
* `recordName` __:__ `String`
* `recordType` __:__ `RRType`


-}
testDNSAnswer :
    String
    -> String
    -> RRType
    -> (TestDNSAnswerOptions -> TestDNSAnswerOptions)
    -> AWS.Http.UnsignedRequest TestDNSAnswerResponse
testDNSAnswer hostedZoneId recordName recordType setOptions =
  let
    options = setOptions (TestDNSAnswerOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "TestDNSAnswer"
        "GET"
        "/2013-04-01/testdnsanswer"
        (AWS.Http.QueryParams
            [
            ]
        )
        testDNSAnswerResponseDecoder


{-| Options for a testDNSAnswer request
-}
type alias TestDNSAnswerOptions =
    { resolverIP : Maybe String
    , eDNS0ClientSubnetIP : Maybe String
    , eDNS0ClientSubnetMask : Maybe String
    }



{-| <p>Updates an existing health check.</p> <p>Send a <code>POST</code> request to the <code>/2013-04-01/healthcheck/<i>health check ID</i> </code> resource. The request body must include a document with an <code>UpdateHealthCheckRequest</code> element. For more information about updating health checks, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-creating-deleting.html">Creating, Updating, and Deleting Health Checks</a> in the Amazon Route 53 Developer Guide.</p>

__Required Parameters__

* `healthCheckId` __:__ `String`


-}
updateHealthCheck :
    String
    -> (UpdateHealthCheckOptions -> UpdateHealthCheckOptions)
    -> AWS.Http.UnsignedRequest UpdateHealthCheckResponse
updateHealthCheck healthCheckId setOptions =
  let
    options = setOptions (UpdateHealthCheckOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateHealthCheck"
        "POST"
        ("/2013-04-01/healthcheck/" ++ healthCheckId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        updateHealthCheckResponseDecoder


{-| Options for a updateHealthCheck request
-}
type alias UpdateHealthCheckOptions =
    { healthCheckVersion : Maybe Int
    , iPAddress : Maybe String
    , port_ : Maybe Int
    , resourcePath : Maybe String
    , fullyQualifiedDomainName : Maybe String
    , searchString : Maybe String
    , failureThreshold : Maybe Int
    , inverted : Maybe Bool
    , healthThreshold : Maybe Int
    , childHealthChecks : Maybe (List String)
    , enableSNI : Maybe Bool
    , regions : Maybe (List HealthCheckRegion)
    , alarmIdentifier : Maybe AlarmIdentifier
    , insufficientDataHealthStatus : Maybe InsufficientDataHealthStatus
    }



{-| <p>Updates the hosted zone comment. Send a <code>POST</code> request to the <code>/2013-04-01/hostedzone/<i>hosted zone ID</i> </code> resource. </p>

__Required Parameters__

* `id` __:__ `String`


-}
updateHostedZoneComment :
    String
    -> (UpdateHostedZoneCommentOptions -> UpdateHostedZoneCommentOptions)
    -> AWS.Http.UnsignedRequest UpdateHostedZoneCommentResponse
updateHostedZoneComment id setOptions =
  let
    options = setOptions (UpdateHostedZoneCommentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateHostedZoneComment"
        "POST"
        ("/2013-04-01/hostedzone/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        updateHostedZoneCommentResponseDecoder


{-| Options for a updateHostedZoneComment request
-}
type alias UpdateHostedZoneCommentOptions =
    { comment : Maybe String
    }



{-| <p>Updates the comment for a specified traffic policy version.</p> <p>Send a <code>POST</code> request to the <code>/2013-04-01/trafficpolicy/</code> resource.</p> <p>The request body must include a document with an <code>UpdateTrafficPolicyCommentRequest</code> element.</p>

__Required Parameters__

* `id` __:__ `String`
* `version` __:__ `Int`
* `comment` __:__ `String`


-}
updateTrafficPolicyComment :
    String
    -> Int
    -> String
    -> AWS.Http.UnsignedRequest UpdateTrafficPolicyCommentResponse
updateTrafficPolicyComment id version comment =
    AWS.Http.unsignedRequest
        "UpdateTrafficPolicyComment"
        "POST"
        ("/2013-04-01/trafficpolicy/" ++ id ++ "/" ++ (toString version) ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        updateTrafficPolicyCommentResponseDecoder



{-| <p>Updates the resource record sets in a specified hosted zone that were created based on the settings in a specified traffic policy version.</p> <p>Send a <code>POST</code> request to the <code>/2013-04-01/trafficpolicyinstance/<i>traffic policy ID</i> </code> resource. The request body must include a document with an <code>UpdateTrafficPolicyInstanceRequest</code> element.</p> <p>When you update a traffic policy instance, Amazon Route 53 continues to respond to DNS queries for the root resource record set name (such as example.com) while it replaces one group of resource record sets with another. Amazon Route 53 performs the following operations:</p> <ol> <li> <p>Amazon Route 53 creates a new group of resource record sets based on the specified traffic policy. This is true regardless of how substantial the differences are between the existing resource record sets and the new resource record sets. </p> </li> <li> <p>When all of the new resource record sets have been created, Amazon Route 53 starts to respond to DNS queries for the root resource record set name (such as example.com) by using the new resource record sets.</p> </li> <li> <p>Amazon Route 53 deletes the old group of resource record sets that are associated with the root resource record set name.</p> </li> </ol>

__Required Parameters__

* `id` __:__ `String`
* `tTL` __:__ `Int`
* `trafficPolicyId` __:__ `String`
* `trafficPolicyVersion` __:__ `Int`


-}
updateTrafficPolicyInstance :
    String
    -> Int
    -> String
    -> Int
    -> AWS.Http.UnsignedRequest UpdateTrafficPolicyInstanceResponse
updateTrafficPolicyInstance id tTL trafficPolicyId trafficPolicyVersion =
    AWS.Http.unsignedRequest
        "UpdateTrafficPolicyInstance"
        "POST"
        ("/2013-04-01/trafficpolicyinstance/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        updateTrafficPolicyInstanceResponseDecoder




{-| <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
-}
type alias AlarmIdentifier =
    { region : CloudWatchRegion
    , name : String
    }



alarmIdentifierDecoder : JD.Decoder AlarmIdentifier
alarmIdentifierDecoder =
    JDP.decode AlarmIdentifier
        |> JDP.required "region" cloudWatchRegionDecoder
        |> JDP.required "name" JD.string




{-| <p> <i>Alias resource record sets only:</i> Information about the CloudFront distribution, Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set that you're redirecting queries to. The Elastic Beanstalk environment must have a regionalized subdomain.</p> <p>When creating resource record sets for a private hosted zone, note the following:</p> <ul> <li> <p>Resource record sets can't be created for CloudFront distributions in a private hosted zone.</p> </li> <li> <p>Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.</p> </li> <li> <p>For information about creating failover resource record sets in a private hosted zone, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a>.</p> </li> </ul>
-}
type alias AliasTarget =
    { hostedZoneId : String
    , dNSName : String
    , evaluateTargetHealth : Bool
    }



aliasTargetDecoder : JD.Decoder AliasTarget
aliasTargetDecoder =
    JDP.decode AliasTarget
        |> JDP.required "hostedZoneId" JD.string
        |> JDP.required "dNSName" JD.string
        |> JDP.required "evaluateTargetHealth" JD.bool




{-| Type of HTTP response from associateVPCWithHostedZone
-}
type alias AssociateVPCWithHostedZoneResponse =
    { changeInfo : ChangeInfo
    }



associateVPCWithHostedZoneResponseDecoder : JD.Decoder AssociateVPCWithHostedZoneResponse
associateVPCWithHostedZoneResponseDecoder =
    JDP.decode AssociateVPCWithHostedZoneResponse
        |> JDP.required "changeInfo" changeInfoDecoder




{-| <p>The information for each resource record set that you want to change.</p>
-}
type alias Change =
    { action : ChangeAction
    , resourceRecordSet : ResourceRecordSet
    }



changeDecoder : JD.Decoder Change
changeDecoder =
    JDP.decode Change
        |> JDP.required "action" changeActionDecoder
        |> JDP.required "resourceRecordSet" resourceRecordSetDecoder




{-| One of

* `ChangeAction_CREATE`
* `ChangeAction_DELETE`
* `ChangeAction_UPSERT`

-}
type ChangeAction
    = ChangeAction_CREATE
    | ChangeAction_DELETE
    | ChangeAction_UPSERT



changeActionDecoder : JD.Decoder ChangeAction
changeActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE" ->
                        JD.succeed ChangeAction_CREATE

                    "DELETE" ->
                        JD.succeed ChangeAction_DELETE

                    "UPSERT" ->
                        JD.succeed ChangeAction_UPSERT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The information for a change request.</p>
-}
type alias ChangeBatch =
    { comment : Maybe String
    , changes : (List Change)
    }



changeBatchDecoder : JD.Decoder ChangeBatch
changeBatchDecoder =
    JDP.decode ChangeBatch
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing
        |> JDP.required "changes" (JD.list changeDecoder)




{-| <p>A complex type that describes change information about changes made to your hosted zone.</p>
-}
type alias ChangeInfo =
    { id : String
    , status : ChangeStatus
    , submittedAt : Date
    , comment : Maybe String
    }



changeInfoDecoder : JD.Decoder ChangeInfo
changeInfoDecoder =
    JDP.decode ChangeInfo
        |> JDP.required "id" JD.string
        |> JDP.required "status" changeStatusDecoder
        |> JDP.required "submittedAt" JDX.date
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from changeResourceRecordSets
-}
type alias ChangeResourceRecordSetsResponse =
    { changeInfo : ChangeInfo
    }



changeResourceRecordSetsResponseDecoder : JD.Decoder ChangeResourceRecordSetsResponse
changeResourceRecordSetsResponseDecoder =
    JDP.decode ChangeResourceRecordSetsResponse
        |> JDP.required "changeInfo" changeInfoDecoder




{-| One of

* `ChangeStatus_PENDING`
* `ChangeStatus_INSYNC`

-}
type ChangeStatus
    = ChangeStatus_PENDING
    | ChangeStatus_INSYNC



changeStatusDecoder : JD.Decoder ChangeStatus
changeStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ChangeStatus_PENDING

                    "INSYNC" ->
                        JD.succeed ChangeStatus_INSYNC


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from changeTagsForResource
-}
type alias ChangeTagsForResourceResponse =
    { 
    }



changeTagsForResourceResponseDecoder : JD.Decoder ChangeTagsForResourceResponse
changeTagsForResourceResponseDecoder =
    JDP.decode ChangeTagsForResourceResponse



{-| <p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>
-}
type alias CloudWatchAlarmConfiguration =
    { evaluationPeriods : Int
    , threshold : Float
    , comparisonOperator : ComparisonOperator
    , period : Int
    , metricName : String
    , namespace : String
    , statistic : Statistic
    , dimensions : Maybe (List Dimension)
    }



cloudWatchAlarmConfigurationDecoder : JD.Decoder CloudWatchAlarmConfiguration
cloudWatchAlarmConfigurationDecoder =
    JDP.decode CloudWatchAlarmConfiguration
        |> JDP.required "evaluationPeriods" JD.int
        |> JDP.required "threshold" JD.float
        |> JDP.required "comparisonOperator" comparisonOperatorDecoder
        |> JDP.required "period" JD.int
        |> JDP.required "metricName" JD.string
        |> JDP.required "namespace" JD.string
        |> JDP.required "statistic" statisticDecoder
        |> JDP.optional "dimensions" (JD.nullable (JD.list dimensionDecoder)) Nothing




{-| One of

* `CloudWatchRegion_us-east-1`
* `CloudWatchRegion_us-east-2`
* `CloudWatchRegion_us-west-1`
* `CloudWatchRegion_us-west-2`
* `CloudWatchRegion_ca-central-1`
* `CloudWatchRegion_eu-central-1`
* `CloudWatchRegion_eu-west-1`
* `CloudWatchRegion_eu-west-2`
* `CloudWatchRegion_ap-south-1`
* `CloudWatchRegion_ap-southeast-1`
* `CloudWatchRegion_ap-southeast-2`
* `CloudWatchRegion_ap-northeast-1`
* `CloudWatchRegion_ap-northeast-2`
* `CloudWatchRegion_sa-east-1`

-}
type CloudWatchRegion
    = CloudWatchRegion_us_east_1
    | CloudWatchRegion_us_east_2
    | CloudWatchRegion_us_west_1
    | CloudWatchRegion_us_west_2
    | CloudWatchRegion_ca_central_1
    | CloudWatchRegion_eu_central_1
    | CloudWatchRegion_eu_west_1
    | CloudWatchRegion_eu_west_2
    | CloudWatchRegion_ap_south_1
    | CloudWatchRegion_ap_southeast_1
    | CloudWatchRegion_ap_southeast_2
    | CloudWatchRegion_ap_northeast_1
    | CloudWatchRegion_ap_northeast_2
    | CloudWatchRegion_sa_east_1



cloudWatchRegionDecoder : JD.Decoder CloudWatchRegion
cloudWatchRegionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed CloudWatchRegion_us_east_1

                    "us_east_2" ->
                        JD.succeed CloudWatchRegion_us_east_2

                    "us_west_1" ->
                        JD.succeed CloudWatchRegion_us_west_1

                    "us_west_2" ->
                        JD.succeed CloudWatchRegion_us_west_2

                    "ca_central_1" ->
                        JD.succeed CloudWatchRegion_ca_central_1

                    "eu_central_1" ->
                        JD.succeed CloudWatchRegion_eu_central_1

                    "eu_west_1" ->
                        JD.succeed CloudWatchRegion_eu_west_1

                    "eu_west_2" ->
                        JD.succeed CloudWatchRegion_eu_west_2

                    "ap_south_1" ->
                        JD.succeed CloudWatchRegion_ap_south_1

                    "ap_southeast_1" ->
                        JD.succeed CloudWatchRegion_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed CloudWatchRegion_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed CloudWatchRegion_ap_northeast_1

                    "ap_northeast_2" ->
                        JD.succeed CloudWatchRegion_ap_northeast_2

                    "sa_east_1" ->
                        JD.succeed CloudWatchRegion_sa_east_1


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ComparisonOperator_GreaterThanOrEqualToThreshold`
* `ComparisonOperator_GreaterThanThreshold`
* `ComparisonOperator_LessThanThreshold`
* `ComparisonOperator_LessThanOrEqualToThreshold`

-}
type ComparisonOperator
    = ComparisonOperator_GreaterThanOrEqualToThreshold
    | ComparisonOperator_GreaterThanThreshold
    | ComparisonOperator_LessThanThreshold
    | ComparisonOperator_LessThanOrEqualToThreshold



comparisonOperatorDecoder : JD.Decoder ComparisonOperator
comparisonOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GreaterThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperator_GreaterThanOrEqualToThreshold

                    "GreaterThanThreshold" ->
                        JD.succeed ComparisonOperator_GreaterThanThreshold

                    "LessThanThreshold" ->
                        JD.succeed ComparisonOperator_LessThanThreshold

                    "LessThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperator_LessThanOrEqualToThreshold


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Another user submitted a request to update the object at the same time that you did. Retry the request. </p>
-}
type alias ConcurrentModification =
    { message : Maybe String
    }



concurrentModificationDecoder : JD.Decoder ConcurrentModification
concurrentModificationDecoder =
    JDP.decode ConcurrentModification
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.</p>
-}
type alias ConflictingDomainExists =
    { message : Maybe String
    }



conflictingDomainExistsDecoder : JD.Decoder ConflictingDomainExists
conflictingDomainExistsDecoder =
    JDP.decode ConflictingDomainExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type than the current type for the instance. You specified the type in the JSON document in the <code>CreateTrafficPolicy</code> or <code>CreateTrafficPolicyVersion</code>request. </p>
-}
type alias ConflictingTypes =
    { message : Maybe String
    }



conflictingTypesDecoder : JD.Decoder ConflictingTypes
conflictingTypesDecoder =
    JDP.decode ConflictingTypes
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createHealthCheck
-}
type alias CreateHealthCheckResponse =
    { healthCheck : HealthCheck
    , location : String
    }



createHealthCheckResponseDecoder : JD.Decoder CreateHealthCheckResponse
createHealthCheckResponseDecoder =
    JDP.decode CreateHealthCheckResponse
        |> JDP.required "healthCheck" healthCheckDecoder
        |> JDP.required "location" JD.string




{-| Type of HTTP response from createHostedZone
-}
type alias CreateHostedZoneResponse =
    { hostedZone : HostedZone
    , changeInfo : ChangeInfo
    , delegationSet : DelegationSet
    , vPC : Maybe VPC
    , location : String
    }



createHostedZoneResponseDecoder : JD.Decoder CreateHostedZoneResponse
createHostedZoneResponseDecoder =
    JDP.decode CreateHostedZoneResponse
        |> JDP.required "hostedZone" hostedZoneDecoder
        |> JDP.required "changeInfo" changeInfoDecoder
        |> JDP.required "delegationSet" delegationSetDecoder
        |> JDP.optional "vPC" (JD.nullable vPCDecoder) Nothing
        |> JDP.required "location" JD.string




{-| Type of HTTP response from createReusableDelegationSet
-}
type alias CreateReusableDelegationSetResponse =
    { delegationSet : DelegationSet
    , location : String
    }



createReusableDelegationSetResponseDecoder : JD.Decoder CreateReusableDelegationSetResponse
createReusableDelegationSetResponseDecoder =
    JDP.decode CreateReusableDelegationSetResponse
        |> JDP.required "delegationSet" delegationSetDecoder
        |> JDP.required "location" JD.string




{-| Type of HTTP response from createTrafficPolicyInstance
-}
type alias CreateTrafficPolicyInstanceResponse =
    { trafficPolicyInstance : TrafficPolicyInstance
    , location : String
    }



createTrafficPolicyInstanceResponseDecoder : JD.Decoder CreateTrafficPolicyInstanceResponse
createTrafficPolicyInstanceResponseDecoder =
    JDP.decode CreateTrafficPolicyInstanceResponse
        |> JDP.required "trafficPolicyInstance" trafficPolicyInstanceDecoder
        |> JDP.required "location" JD.string




{-| Type of HTTP response from createTrafficPolicy
-}
type alias CreateTrafficPolicyResponse =
    { trafficPolicy : TrafficPolicy
    , location : String
    }



createTrafficPolicyResponseDecoder : JD.Decoder CreateTrafficPolicyResponse
createTrafficPolicyResponseDecoder =
    JDP.decode CreateTrafficPolicyResponse
        |> JDP.required "trafficPolicy" trafficPolicyDecoder
        |> JDP.required "location" JD.string




{-| Type of HTTP response from createTrafficPolicyVersion
-}
type alias CreateTrafficPolicyVersionResponse =
    { trafficPolicy : TrafficPolicy
    , location : String
    }



createTrafficPolicyVersionResponseDecoder : JD.Decoder CreateTrafficPolicyVersionResponse
createTrafficPolicyVersionResponseDecoder =
    JDP.decode CreateTrafficPolicyVersionResponse
        |> JDP.required "trafficPolicy" trafficPolicyDecoder
        |> JDP.required "location" JD.string




{-| Type of HTTP response from createVPCAssociationAuthorization
-}
type alias CreateVPCAssociationAuthorizationResponse =
    { hostedZoneId : String
    , vPC : VPC
    }



createVPCAssociationAuthorizationResponseDecoder : JD.Decoder CreateVPCAssociationAuthorizationResponse
createVPCAssociationAuthorizationResponseDecoder =
    JDP.decode CreateVPCAssociationAuthorizationResponse
        |> JDP.required "hostedZoneId" JD.string
        |> JDP.required "vPC" vPCDecoder




{-| <p>A complex type that describes the name servers for this hosted zone.</p>
-}
type alias DelegationSet =
    { id : Maybe String
    , callerReference : Maybe String
    , nameServers : (List String)
    }



delegationSetDecoder : JD.Decoder DelegationSet
delegationSetDecoder =
    JDP.decode DelegationSet
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "callerReference" (JD.nullable JD.string) Nothing
        |> JDP.required "nameServers" (JD.list JD.string)




{-| <p>A delegation set with the same owner and caller reference combination has already been created.</p>
-}
type alias DelegationSetAlreadyCreated =
    { message : Maybe String
    }



delegationSetAlreadyCreatedDecoder : JD.Decoder DelegationSetAlreadyCreated
delegationSetAlreadyCreatedDecoder =
    JDP.decode DelegationSetAlreadyCreated
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified delegation set has already been marked as reusable.</p>
-}
type alias DelegationSetAlreadyReusable =
    { message : Maybe String
    }



delegationSetAlreadyReusableDecoder : JD.Decoder DelegationSetAlreadyReusable
delegationSetAlreadyReusableDecoder =
    JDP.decode DelegationSetAlreadyReusable
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set can be deleted.</p>
-}
type alias DelegationSetInUse =
    { message : Maybe String
    }



delegationSetInUseDecoder : JD.Decoder DelegationSetInUse
delegationSetInUseDecoder =
    JDP.decode DelegationSetInUse
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own the domain name and Amazon Route 53 generates this error, contact Customer Support.</p>
-}
type alias DelegationSetNotAvailable =
    { message : Maybe String
    }



delegationSetNotAvailableDecoder : JD.Decoder DelegationSetNotAvailable
delegationSetNotAvailableDecoder =
    JDP.decode DelegationSetNotAvailable
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A reusable delegation set with the specified ID does not exist.</p>
-}
type alias DelegationSetNotReusable =
    { message : Maybe String
    }



delegationSetNotReusableDecoder : JD.Decoder DelegationSetNotReusable
delegationSetNotReusableDecoder =
    JDP.decode DelegationSetNotReusable
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteHealthCheck
-}
type alias DeleteHealthCheckResponse =
    { 
    }



deleteHealthCheckResponseDecoder : JD.Decoder DeleteHealthCheckResponse
deleteHealthCheckResponseDecoder =
    JDP.decode DeleteHealthCheckResponse



{-| Type of HTTP response from deleteHostedZone
-}
type alias DeleteHostedZoneResponse =
    { changeInfo : ChangeInfo
    }



deleteHostedZoneResponseDecoder : JD.Decoder DeleteHostedZoneResponse
deleteHostedZoneResponseDecoder =
    JDP.decode DeleteHostedZoneResponse
        |> JDP.required "changeInfo" changeInfoDecoder




{-| Type of HTTP response from deleteReusableDelegationSet
-}
type alias DeleteReusableDelegationSetResponse =
    { 
    }



deleteReusableDelegationSetResponseDecoder : JD.Decoder DeleteReusableDelegationSetResponse
deleteReusableDelegationSetResponseDecoder =
    JDP.decode DeleteReusableDelegationSetResponse



{-| Type of HTTP response from deleteTrafficPolicyInstance
-}
type alias DeleteTrafficPolicyInstanceResponse =
    { 
    }



deleteTrafficPolicyInstanceResponseDecoder : JD.Decoder DeleteTrafficPolicyInstanceResponse
deleteTrafficPolicyInstanceResponseDecoder =
    JDP.decode DeleteTrafficPolicyInstanceResponse



{-| Type of HTTP response from deleteTrafficPolicy
-}
type alias DeleteTrafficPolicyResponse =
    { 
    }



deleteTrafficPolicyResponseDecoder : JD.Decoder DeleteTrafficPolicyResponse
deleteTrafficPolicyResponseDecoder =
    JDP.decode DeleteTrafficPolicyResponse



{-| Type of HTTP response from deleteVPCAssociationAuthorization
-}
type alias DeleteVPCAssociationAuthorizationResponse =
    { 
    }



deleteVPCAssociationAuthorizationResponseDecoder : JD.Decoder DeleteVPCAssociationAuthorizationResponse
deleteVPCAssociationAuthorizationResponseDecoder =
    JDP.decode DeleteVPCAssociationAuthorizationResponse



{-| <p>For the metric that the CloudWatch alarm is associated with, a complex type that contains information about one dimension.</p>
-}
type alias Dimension =
    { name : String
    , value : String
    }



dimensionDecoder : JD.Decoder Dimension
dimensionDecoder =
    JDP.decode Dimension
        |> JDP.required "name" JD.string
        |> JDP.required "value" JD.string




{-| Type of HTTP response from disassociateVPCFromHostedZone
-}
type alias DisassociateVPCFromHostedZoneResponse =
    { changeInfo : ChangeInfo
    }



disassociateVPCFromHostedZoneResponseDecoder : JD.Decoder DisassociateVPCFromHostedZoneResponse
disassociateVPCFromHostedZoneResponseDecoder =
    JDP.decode DisassociateVPCFromHostedZoneResponse
        |> JDP.required "changeInfo" changeInfoDecoder




{-| <p>A complex type that contains information about a geo location.</p>
-}
type alias GeoLocation =
    { continentCode : Maybe String
    , countryCode : Maybe String
    , subdivisionCode : Maybe String
    }



geoLocationDecoder : JD.Decoder GeoLocation
geoLocationDecoder =
    JDP.decode GeoLocation
        |> JDP.optional "continentCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "countryCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "subdivisionCode" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains the codes and full continent, country, and subdivision names for the specified <code>geolocation</code> code.</p>
-}
type alias GeoLocationDetails =
    { continentCode : Maybe String
    , continentName : Maybe String
    , countryCode : Maybe String
    , countryName : Maybe String
    , subdivisionCode : Maybe String
    , subdivisionName : Maybe String
    }



geoLocationDetailsDecoder : JD.Decoder GeoLocationDetails
geoLocationDetailsDecoder =
    JDP.decode GeoLocationDetails
        |> JDP.optional "continentCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "continentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "countryCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "countryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "subdivisionCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "subdivisionName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getChange
-}
type alias GetChangeResponse =
    { changeInfo : ChangeInfo
    }



getChangeResponseDecoder : JD.Decoder GetChangeResponse
getChangeResponseDecoder =
    JDP.decode GetChangeResponse
        |> JDP.required "changeInfo" changeInfoDecoder




{-| Type of HTTP response from getCheckerIpRanges
-}
type alias GetCheckerIpRangesResponse =
    { checkerIpRanges : (List String)
    }



getCheckerIpRangesResponseDecoder : JD.Decoder GetCheckerIpRangesResponse
getCheckerIpRangesResponseDecoder =
    JDP.decode GetCheckerIpRangesResponse
        |> JDP.required "checkerIpRanges" (JD.list JD.string)




{-| Type of HTTP response from getGeoLocation
-}
type alias GetGeoLocationResponse =
    { geoLocationDetails : GeoLocationDetails
    }



getGeoLocationResponseDecoder : JD.Decoder GetGeoLocationResponse
getGeoLocationResponseDecoder =
    JDP.decode GetGeoLocationResponse
        |> JDP.required "geoLocationDetails" geoLocationDetailsDecoder




{-| Type of HTTP response from getHealthCheckCount
-}
type alias GetHealthCheckCountResponse =
    { healthCheckCount : Int
    }



getHealthCheckCountResponseDecoder : JD.Decoder GetHealthCheckCountResponse
getHealthCheckCountResponseDecoder =
    JDP.decode GetHealthCheckCountResponse
        |> JDP.required "healthCheckCount" JD.int




{-| Type of HTTP response from getHealthCheckLastFailureReason
-}
type alias GetHealthCheckLastFailureReasonResponse =
    { healthCheckObservations : (List HealthCheckObservation)
    }



getHealthCheckLastFailureReasonResponseDecoder : JD.Decoder GetHealthCheckLastFailureReasonResponse
getHealthCheckLastFailureReasonResponseDecoder =
    JDP.decode GetHealthCheckLastFailureReasonResponse
        |> JDP.required "healthCheckObservations" (JD.list healthCheckObservationDecoder)




{-| Type of HTTP response from getHealthCheck
-}
type alias GetHealthCheckResponse =
    { healthCheck : HealthCheck
    }



getHealthCheckResponseDecoder : JD.Decoder GetHealthCheckResponse
getHealthCheckResponseDecoder =
    JDP.decode GetHealthCheckResponse
        |> JDP.required "healthCheck" healthCheckDecoder




{-| Type of HTTP response from getHealthCheckStatus
-}
type alias GetHealthCheckStatusResponse =
    { healthCheckObservations : (List HealthCheckObservation)
    }



getHealthCheckStatusResponseDecoder : JD.Decoder GetHealthCheckStatusResponse
getHealthCheckStatusResponseDecoder =
    JDP.decode GetHealthCheckStatusResponse
        |> JDP.required "healthCheckObservations" (JD.list healthCheckObservationDecoder)




{-| Type of HTTP response from getHostedZoneCount
-}
type alias GetHostedZoneCountResponse =
    { hostedZoneCount : Int
    }



getHostedZoneCountResponseDecoder : JD.Decoder GetHostedZoneCountResponse
getHostedZoneCountResponseDecoder =
    JDP.decode GetHostedZoneCountResponse
        |> JDP.required "hostedZoneCount" JD.int




{-| Type of HTTP response from getHostedZone
-}
type alias GetHostedZoneResponse =
    { hostedZone : HostedZone
    , delegationSet : Maybe DelegationSet
    , vPCs : Maybe (List VPC)
    }



getHostedZoneResponseDecoder : JD.Decoder GetHostedZoneResponse
getHostedZoneResponseDecoder =
    JDP.decode GetHostedZoneResponse
        |> JDP.required "hostedZone" hostedZoneDecoder
        |> JDP.optional "delegationSet" (JD.nullable delegationSetDecoder) Nothing
        |> JDP.optional "vPCs" (JD.nullable (JD.list vPCDecoder)) Nothing




{-| Type of HTTP response from getReusableDelegationSet
-}
type alias GetReusableDelegationSetResponse =
    { delegationSet : DelegationSet
    }



getReusableDelegationSetResponseDecoder : JD.Decoder GetReusableDelegationSetResponse
getReusableDelegationSetResponseDecoder =
    JDP.decode GetReusableDelegationSetResponse
        |> JDP.required "delegationSet" delegationSetDecoder




{-| Type of HTTP response from getTrafficPolicyInstanceCount
-}
type alias GetTrafficPolicyInstanceCountResponse =
    { trafficPolicyInstanceCount : Int
    }



getTrafficPolicyInstanceCountResponseDecoder : JD.Decoder GetTrafficPolicyInstanceCountResponse
getTrafficPolicyInstanceCountResponseDecoder =
    JDP.decode GetTrafficPolicyInstanceCountResponse
        |> JDP.required "trafficPolicyInstanceCount" JD.int




{-| Type of HTTP response from getTrafficPolicyInstance
-}
type alias GetTrafficPolicyInstanceResponse =
    { trafficPolicyInstance : TrafficPolicyInstance
    }



getTrafficPolicyInstanceResponseDecoder : JD.Decoder GetTrafficPolicyInstanceResponse
getTrafficPolicyInstanceResponseDecoder =
    JDP.decode GetTrafficPolicyInstanceResponse
        |> JDP.required "trafficPolicyInstance" trafficPolicyInstanceDecoder




{-| Type of HTTP response from getTrafficPolicy
-}
type alias GetTrafficPolicyResponse =
    { trafficPolicy : TrafficPolicy
    }



getTrafficPolicyResponseDecoder : JD.Decoder GetTrafficPolicyResponse
getTrafficPolicyResponseDecoder =
    JDP.decode GetTrafficPolicyResponse
        |> JDP.required "trafficPolicy" trafficPolicyDecoder




{-| <p>A complex type that contains information about one health check that is associated with the current AWS account.</p>
-}
type alias HealthCheck =
    { id : String
    , callerReference : String
    , healthCheckConfig : HealthCheckConfig
    , healthCheckVersion : Int
    , cloudWatchAlarmConfiguration : Maybe CloudWatchAlarmConfiguration
    }



healthCheckDecoder : JD.Decoder HealthCheck
healthCheckDecoder =
    JDP.decode HealthCheck
        |> JDP.required "id" JD.string
        |> JDP.required "callerReference" JD.string
        |> JDP.required "healthCheckConfig" healthCheckConfigDecoder
        |> JDP.required "healthCheckVersion" JD.int
        |> JDP.optional "cloudWatchAlarmConfiguration" (JD.nullable cloudWatchAlarmConfigurationDecoder) Nothing




{-| <p> The health check you're attempting to create already exists.</p> <p>Amazon Route 53 returns this error when a health check has already been created with the specified value for <code>CallerReference</code>.</p>
-}
type alias HealthCheckAlreadyExists =
    { message : Maybe String
    }



healthCheckAlreadyExistsDecoder : JD.Decoder HealthCheckAlreadyExists
healthCheckAlreadyExistsDecoder =
    JDP.decode HealthCheckAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains information about the health check.</p>
-}
type alias HealthCheckConfig =
    { iPAddress : Maybe String
    , port_ : Maybe Int
    , type_ : HealthCheckType
    , resourcePath : Maybe String
    , fullyQualifiedDomainName : Maybe String
    , searchString : Maybe String
    , requestInterval : Maybe Int
    , failureThreshold : Maybe Int
    , measureLatency : Maybe Bool
    , inverted : Maybe Bool
    , healthThreshold : Maybe Int
    , childHealthChecks : Maybe (List String)
    , enableSNI : Maybe Bool
    , regions : Maybe (List HealthCheckRegion)
    , alarmIdentifier : Maybe AlarmIdentifier
    , insufficientDataHealthStatus : Maybe InsufficientDataHealthStatus
    }



healthCheckConfigDecoder : JD.Decoder HealthCheckConfig
healthCheckConfigDecoder =
    JDP.decode HealthCheckConfig
        |> JDP.optional "iPAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.required "type_" healthCheckTypeDecoder
        |> JDP.optional "resourcePath" (JD.nullable JD.string) Nothing
        |> JDP.optional "fullyQualifiedDomainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "searchString" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestInterval" (JD.nullable JD.int) Nothing
        |> JDP.optional "failureThreshold" (JD.nullable JD.int) Nothing
        |> JDP.optional "measureLatency" (JD.nullable JD.bool) Nothing
        |> JDP.optional "inverted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "healthThreshold" (JD.nullable JD.int) Nothing
        |> JDP.optional "childHealthChecks" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "enableSNI" (JD.nullable JD.bool) Nothing
        |> JDP.optional "regions" (JD.nullable (JD.list healthCheckRegionDecoder)) Nothing
        |> JDP.optional "alarmIdentifier" (JD.nullable alarmIdentifierDecoder) Nothing
        |> JDP.optional "insufficientDataHealthStatus" (JD.nullable insufficientDataHealthStatusDecoder) Nothing




{-| <p>The health check ID for this health check is referenced in the <code>HealthCheckId</code> element in one of the resource record sets in one of the hosted zones that are owned by the current AWS account.</p>
-}
type alias HealthCheckInUse =
    { message : Maybe String
    }



healthCheckInUseDecoder : JD.Decoder HealthCheckInUse
healthCheckInUseDecoder =
    JDP.decode HealthCheckInUse
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker.</p>
-}
type alias HealthCheckObservation =
    { region : Maybe HealthCheckRegion
    , iPAddress : Maybe String
    , statusReport : Maybe StatusReport
    }



healthCheckObservationDecoder : JD.Decoder HealthCheckObservation
healthCheckObservationDecoder =
    JDP.decode HealthCheckObservation
        |> JDP.optional "region" (JD.nullable healthCheckRegionDecoder) Nothing
        |> JDP.optional "iPAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusReport" (JD.nullable statusReportDecoder) Nothing




{-| One of

* `HealthCheckRegion_us-east-1`
* `HealthCheckRegion_us-west-1`
* `HealthCheckRegion_us-west-2`
* `HealthCheckRegion_eu-west-1`
* `HealthCheckRegion_ap-southeast-1`
* `HealthCheckRegion_ap-southeast-2`
* `HealthCheckRegion_ap-northeast-1`
* `HealthCheckRegion_sa-east-1`

-}
type HealthCheckRegion
    = HealthCheckRegion_us_east_1
    | HealthCheckRegion_us_west_1
    | HealthCheckRegion_us_west_2
    | HealthCheckRegion_eu_west_1
    | HealthCheckRegion_ap_southeast_1
    | HealthCheckRegion_ap_southeast_2
    | HealthCheckRegion_ap_northeast_1
    | HealthCheckRegion_sa_east_1



healthCheckRegionDecoder : JD.Decoder HealthCheckRegion
healthCheckRegionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed HealthCheckRegion_us_east_1

                    "us_west_1" ->
                        JD.succeed HealthCheckRegion_us_west_1

                    "us_west_2" ->
                        JD.succeed HealthCheckRegion_us_west_2

                    "eu_west_1" ->
                        JD.succeed HealthCheckRegion_eu_west_1

                    "ap_southeast_1" ->
                        JD.succeed HealthCheckRegion_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed HealthCheckRegion_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed HealthCheckRegion_ap_northeast_1

                    "sa_east_1" ->
                        JD.succeed HealthCheckRegion_sa_east_1


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `HealthCheckType_HTTP`
* `HealthCheckType_HTTPS`
* `HealthCheckType_HTTP_STR_MATCH`
* `HealthCheckType_HTTPS_STR_MATCH`
* `HealthCheckType_TCP`
* `HealthCheckType_CALCULATED`
* `HealthCheckType_CLOUDWATCH_METRIC`

-}
type HealthCheckType
    = HealthCheckType_HTTP
    | HealthCheckType_HTTPS
    | HealthCheckType_HTTP_STR_MATCH
    | HealthCheckType_HTTPS_STR_MATCH
    | HealthCheckType_TCP
    | HealthCheckType_CALCULATED
    | HealthCheckType_CLOUDWATCH_METRIC



healthCheckTypeDecoder : JD.Decoder HealthCheckType
healthCheckTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HTTP" ->
                        JD.succeed HealthCheckType_HTTP

                    "HTTPS" ->
                        JD.succeed HealthCheckType_HTTPS

                    "HTTP_STR_MATCH" ->
                        JD.succeed HealthCheckType_HTTP_STR_MATCH

                    "HTTPS_STR_MATCH" ->
                        JD.succeed HealthCheckType_HTTPS_STR_MATCH

                    "TCP" ->
                        JD.succeed HealthCheckType_TCP

                    "CALCULATED" ->
                        JD.succeed HealthCheckType_CALCULATED

                    "CLOUDWATCH_METRIC" ->
                        JD.succeed HealthCheckType_CLOUDWATCH_METRIC


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The value of <code>HealthCheckVersion</code> in the request doesn't match the value of <code>HealthCheckVersion</code> in the health check.</p>
-}
type alias HealthCheckVersionMismatch =
    { message : Maybe String
    }



healthCheckVersionMismatchDecoder : JD.Decoder HealthCheckVersionMismatch
healthCheckVersionMismatchDecoder =
    JDP.decode HealthCheckVersionMismatch
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains general information about the hosted zone.</p>
-}
type alias HostedZone =
    { id : String
    , name : String
    , callerReference : String
    , config : Maybe HostedZoneConfig
    , resourceRecordSetCount : Maybe Int
    }



hostedZoneDecoder : JD.Decoder HostedZone
hostedZoneDecoder =
    JDP.decode HostedZone
        |> JDP.required "id" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "callerReference" JD.string
        |> JDP.optional "config" (JD.nullable hostedZoneConfigDecoder) Nothing
        |> JDP.optional "resourceRecordSetCount" (JD.nullable JD.int) Nothing




{-| <p>The hosted zone you are trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created with the specified <code>CallerReference</code>.</p>
-}
type alias HostedZoneAlreadyExists =
    { message : Maybe String
    }



hostedZoneAlreadyExistsDecoder : JD.Decoder HostedZoneAlreadyExists
hostedZoneAlreadyExistsDecoder =
    JDP.decode HostedZoneAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains an optional comment about your hosted zone. If you don't want to specify a comment, omit both the <code>HostedZoneConfig</code> and <code>Comment</code> elements.</p>
-}
type alias HostedZoneConfig =
    { comment : Maybe String
    , privateZone : Maybe Bool
    }



hostedZoneConfigDecoder : JD.Decoder HostedZoneConfig
hostedZoneConfigDecoder =
    JDP.decode HostedZoneConfig
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateZone" (JD.nullable JD.bool) Nothing




{-| <p>The hosted zone contains resource records that are not SOA or NS records.</p>
-}
type alias HostedZoneNotEmpty =
    { message : Maybe String
    }



hostedZoneNotEmptyDecoder : JD.Decoder HostedZoneNotEmpty
hostedZoneNotEmptyDecoder =
    JDP.decode HostedZoneNotEmpty
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified HostedZone can't be found.</p>
-}
type alias HostedZoneNotFound =
    { message : Maybe String
    }



hostedZoneNotFoundDecoder : JD.Decoder HostedZoneNotFound
hostedZoneNotFoundDecoder =
    JDP.decode HostedZoneNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The resource you are trying to access is unsupported on this Amazon Route 53 endpoint. Please consider using a newer endpoint or a tool that does so.</p>
-}
type alias IncompatibleVersion =
    { message : Maybe String
    }



incompatibleVersionDecoder : JD.Decoder IncompatibleVersion
incompatibleVersionDecoder =
    JDP.decode IncompatibleVersion
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `InsufficientDataHealthStatus_Healthy`
* `InsufficientDataHealthStatus_Unhealthy`
* `InsufficientDataHealthStatus_LastKnownStatus`

-}
type InsufficientDataHealthStatus
    = InsufficientDataHealthStatus_Healthy
    | InsufficientDataHealthStatus_Unhealthy
    | InsufficientDataHealthStatus_LastKnownStatus



insufficientDataHealthStatusDecoder : JD.Decoder InsufficientDataHealthStatus
insufficientDataHealthStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Healthy" ->
                        JD.succeed InsufficientDataHealthStatus_Healthy

                    "Unhealthy" ->
                        JD.succeed InsufficientDataHealthStatus_Unhealthy

                    "LastKnownStatus" ->
                        JD.succeed InsufficientDataHealthStatus_LastKnownStatus


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Parameter name and problem.</p>
-}
type alias InvalidArgument =
    { message : Maybe String
    }



invalidArgumentDecoder : JD.Decoder InvalidArgument
invalidArgumentDecoder =
    JDP.decode InvalidArgument
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception contains a list of messages that might contain one or more error messages. Each error message indicates one error in the change batch.</p>
-}
type alias InvalidChangeBatch =
    { messages : Maybe (List String)
    }



invalidChangeBatchDecoder : JD.Decoder InvalidChangeBatch
invalidChangeBatchDecoder =
    JDP.decode InvalidChangeBatch
        |> JDP.optional "messages" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The specified domain name is not valid.</p>
-}
type alias InvalidDomainName =
    { message : Maybe String
    }



invalidDomainNameDecoder : JD.Decoder InvalidDomainName
invalidDomainNameDecoder =
    JDP.decode InvalidDomainName
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The input is not valid.</p>
-}
type alias InvalidInput =
    { message : Maybe String
    }



invalidInputDecoder : JD.Decoder InvalidInput
invalidInputDecoder =
    JDP.decode InvalidInput
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidPaginationToken =
    { message : Maybe String
    }



invalidPaginationTokenDecoder : JD.Decoder InvalidPaginationToken
invalidPaginationTokenDecoder =
    JDP.decode InvalidPaginationToken
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The format of the traffic policy document that you specified in the <code>Document</code> element is invalid.</p>
-}
type alias InvalidTrafficPolicyDocument =
    { message : Maybe String
    }



invalidTrafficPolicyDocumentDecoder : JD.Decoder InvalidTrafficPolicyDocument
invalidTrafficPolicyDocumentDecoder =
    JDP.decode InvalidTrafficPolicyDocument
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.</p>
-}
type alias InvalidVPCId =
    { message : Maybe String
    }



invalidVPCIdDecoder : JD.Decoder InvalidVPCId
invalidVPCIdDecoder =
    JDP.decode InvalidVPCId
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.</p>
-}
type alias LastVPCAssociation =
    { message : Maybe String
    }



lastVPCAssociationDecoder : JD.Decoder LastVPCAssociation
lastVPCAssociationDecoder =
    JDP.decode LastVPCAssociation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The limits specified for a resource have been exceeded.</p>
-}
type alias LimitsExceeded =
    { message : Maybe String
    }



limitsExceededDecoder : JD.Decoder LimitsExceeded
limitsExceededDecoder =
    JDP.decode LimitsExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listGeoLocations
-}
type alias ListGeoLocationsResponse =
    { geoLocationDetailsList : (List GeoLocationDetails)
    , isTruncated : Bool
    , nextContinentCode : Maybe String
    , nextCountryCode : Maybe String
    , nextSubdivisionCode : Maybe String
    , maxItems : String
    }



listGeoLocationsResponseDecoder : JD.Decoder ListGeoLocationsResponse
listGeoLocationsResponseDecoder =
    JDP.decode ListGeoLocationsResponse
        |> JDP.required "geoLocationDetailsList" (JD.list geoLocationDetailsDecoder)
        |> JDP.required "isTruncated" JD.bool
        |> JDP.optional "nextContinentCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextCountryCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextSubdivisionCode" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listHealthChecks
-}
type alias ListHealthChecksResponse =
    { healthChecks : (List HealthCheck)
    , marker : String
    , isTruncated : Bool
    , nextMarker : Maybe String
    , maxItems : String
    }



listHealthChecksResponseDecoder : JD.Decoder ListHealthChecksResponse
listHealthChecksResponseDecoder =
    JDP.decode ListHealthChecksResponse
        |> JDP.required "healthChecks" (JD.list healthCheckDecoder)
        |> JDP.required "marker" JD.string
        |> JDP.required "isTruncated" JD.bool
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listHostedZonesByName
-}
type alias ListHostedZonesByNameResponse =
    { hostedZones : (List HostedZone)
    , dNSName : Maybe String
    , hostedZoneId : Maybe String
    , isTruncated : Bool
    , nextDNSName : Maybe String
    , nextHostedZoneId : Maybe String
    , maxItems : String
    }



listHostedZonesByNameResponseDecoder : JD.Decoder ListHostedZonesByNameResponse
listHostedZonesByNameResponseDecoder =
    JDP.decode ListHostedZonesByNameResponse
        |> JDP.required "hostedZones" (JD.list hostedZoneDecoder)
        |> JDP.optional "dNSName" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostedZoneId" (JD.nullable JD.string) Nothing
        |> JDP.required "isTruncated" JD.bool
        |> JDP.optional "nextDNSName" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextHostedZoneId" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listHostedZones
-}
type alias ListHostedZonesResponse =
    { hostedZones : (List HostedZone)
    , marker : String
    , isTruncated : Bool
    , nextMarker : Maybe String
    , maxItems : String
    }



listHostedZonesResponseDecoder : JD.Decoder ListHostedZonesResponse
listHostedZonesResponseDecoder =
    JDP.decode ListHostedZonesResponse
        |> JDP.required "hostedZones" (JD.list hostedZoneDecoder)
        |> JDP.required "marker" JD.string
        |> JDP.required "isTruncated" JD.bool
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listResourceRecordSets
-}
type alias ListResourceRecordSetsResponse =
    { resourceRecordSets : (List ResourceRecordSet)
    , isTruncated : Bool
    , nextRecordName : Maybe String
    , nextRecordType : Maybe RRType
    , nextRecordIdentifier : Maybe String
    , maxItems : String
    }



listResourceRecordSetsResponseDecoder : JD.Decoder ListResourceRecordSetsResponse
listResourceRecordSetsResponseDecoder =
    JDP.decode ListResourceRecordSetsResponse
        |> JDP.required "resourceRecordSets" (JD.list resourceRecordSetDecoder)
        |> JDP.required "isTruncated" JD.bool
        |> JDP.optional "nextRecordName" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextRecordType" (JD.nullable rRTypeDecoder) Nothing
        |> JDP.optional "nextRecordIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listReusableDelegationSets
-}
type alias ListReusableDelegationSetsResponse =
    { delegationSets : (List DelegationSet)
    , marker : String
    , isTruncated : Bool
    , nextMarker : Maybe String
    , maxItems : String
    }



listReusableDelegationSetsResponseDecoder : JD.Decoder ListReusableDelegationSetsResponse
listReusableDelegationSetsResponseDecoder =
    JDP.decode ListReusableDelegationSetsResponse
        |> JDP.required "delegationSets" (JD.list delegationSetDecoder)
        |> JDP.required "marker" JD.string
        |> JDP.required "isTruncated" JD.bool
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { resourceTagSet : ResourceTagSet
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JDP.decode ListTagsForResourceResponse
        |> JDP.required "resourceTagSet" resourceTagSetDecoder




{-| Type of HTTP response from listTagsForResources
-}
type alias ListTagsForResourcesResponse =
    { resourceTagSets : (List ResourceTagSet)
    }



listTagsForResourcesResponseDecoder : JD.Decoder ListTagsForResourcesResponse
listTagsForResourcesResponseDecoder =
    JDP.decode ListTagsForResourcesResponse
        |> JDP.required "resourceTagSets" (JD.list resourceTagSetDecoder)




{-| Type of HTTP response from listTrafficPolicies
-}
type alias ListTrafficPoliciesResponse =
    { trafficPolicySummaries : (List TrafficPolicySummary)
    , isTruncated : Bool
    , trafficPolicyIdMarker : String
    , maxItems : String
    }



listTrafficPoliciesResponseDecoder : JD.Decoder ListTrafficPoliciesResponse
listTrafficPoliciesResponseDecoder =
    JDP.decode ListTrafficPoliciesResponse
        |> JDP.required "trafficPolicySummaries" (JD.list trafficPolicySummaryDecoder)
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "trafficPolicyIdMarker" JD.string
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listTrafficPolicyInstancesByHostedZone
-}
type alias ListTrafficPolicyInstancesByHostedZoneResponse =
    { trafficPolicyInstances : (List TrafficPolicyInstance)
    , trafficPolicyInstanceNameMarker : Maybe String
    , trafficPolicyInstanceTypeMarker : Maybe RRType
    , isTruncated : Bool
    , maxItems : String
    }



listTrafficPolicyInstancesByHostedZoneResponseDecoder : JD.Decoder ListTrafficPolicyInstancesByHostedZoneResponse
listTrafficPolicyInstancesByHostedZoneResponseDecoder =
    JDP.decode ListTrafficPolicyInstancesByHostedZoneResponse
        |> JDP.required "trafficPolicyInstances" (JD.list trafficPolicyInstanceDecoder)
        |> JDP.optional "trafficPolicyInstanceNameMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "trafficPolicyInstanceTypeMarker" (JD.nullable rRTypeDecoder) Nothing
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listTrafficPolicyInstancesByPolicy
-}
type alias ListTrafficPolicyInstancesByPolicyResponse =
    { trafficPolicyInstances : (List TrafficPolicyInstance)
    , hostedZoneIdMarker : Maybe String
    , trafficPolicyInstanceNameMarker : Maybe String
    , trafficPolicyInstanceTypeMarker : Maybe RRType
    , isTruncated : Bool
    , maxItems : String
    }



listTrafficPolicyInstancesByPolicyResponseDecoder : JD.Decoder ListTrafficPolicyInstancesByPolicyResponse
listTrafficPolicyInstancesByPolicyResponseDecoder =
    JDP.decode ListTrafficPolicyInstancesByPolicyResponse
        |> JDP.required "trafficPolicyInstances" (JD.list trafficPolicyInstanceDecoder)
        |> JDP.optional "hostedZoneIdMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "trafficPolicyInstanceNameMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "trafficPolicyInstanceTypeMarker" (JD.nullable rRTypeDecoder) Nothing
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listTrafficPolicyInstances
-}
type alias ListTrafficPolicyInstancesResponse =
    { trafficPolicyInstances : (List TrafficPolicyInstance)
    , hostedZoneIdMarker : Maybe String
    , trafficPolicyInstanceNameMarker : Maybe String
    , trafficPolicyInstanceTypeMarker : Maybe RRType
    , isTruncated : Bool
    , maxItems : String
    }



listTrafficPolicyInstancesResponseDecoder : JD.Decoder ListTrafficPolicyInstancesResponse
listTrafficPolicyInstancesResponseDecoder =
    JDP.decode ListTrafficPolicyInstancesResponse
        |> JDP.required "trafficPolicyInstances" (JD.list trafficPolicyInstanceDecoder)
        |> JDP.optional "hostedZoneIdMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "trafficPolicyInstanceNameMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "trafficPolicyInstanceTypeMarker" (JD.nullable rRTypeDecoder) Nothing
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listTrafficPolicyVersions
-}
type alias ListTrafficPolicyVersionsResponse =
    { trafficPolicies : (List TrafficPolicy)
    , isTruncated : Bool
    , trafficPolicyVersionMarker : String
    , maxItems : String
    }



listTrafficPolicyVersionsResponseDecoder : JD.Decoder ListTrafficPolicyVersionsResponse
listTrafficPolicyVersionsResponseDecoder =
    JDP.decode ListTrafficPolicyVersionsResponse
        |> JDP.required "trafficPolicies" (JD.list trafficPolicyDecoder)
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "trafficPolicyVersionMarker" JD.string
        |> JDP.required "maxItems" JD.string




{-| Type of HTTP response from listVPCAssociationAuthorizations
-}
type alias ListVPCAssociationAuthorizationsResponse =
    { hostedZoneId : String
    , nextToken : Maybe String
    , vPCs : (List VPC)
    }



listVPCAssociationAuthorizationsResponseDecoder : JD.Decoder ListVPCAssociationAuthorizationsResponse
listVPCAssociationAuthorizationsResponseDecoder =
    JDP.decode ListVPCAssociationAuthorizationsResponse
        |> JDP.required "hostedZoneId" JD.string
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.required "vPCs" (JD.list vPCDecoder)




{-| <p>A change with the specified change ID does not exist.</p>
-}
type alias NoSuchChange =
    { message : Maybe String
    }



noSuchChangeDecoder : JD.Decoder NoSuchChange
noSuchChangeDecoder =
    JDP.decode NoSuchChange
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A reusable delegation set with the specified ID does not exist.</p>
-}
type alias NoSuchDelegationSet =
    { message : Maybe String
    }



noSuchDelegationSetDecoder : JD.Decoder NoSuchDelegationSet
noSuchDelegationSetDecoder =
    JDP.decode NoSuchDelegationSet
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Amazon Route 53 doesn't support the specified geolocation.</p>
-}
type alias NoSuchGeoLocation =
    { message : Maybe String
    }



noSuchGeoLocationDecoder : JD.Decoder NoSuchGeoLocation
noSuchGeoLocationDecoder =
    JDP.decode NoSuchGeoLocation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>No health check exists with the ID that you specified in the <code>DeleteHealthCheck</code> request.</p>
-}
type alias NoSuchHealthCheck =
    { message : Maybe String
    }



noSuchHealthCheckDecoder : JD.Decoder NoSuchHealthCheck
noSuchHealthCheckDecoder =
    JDP.decode NoSuchHealthCheck
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>No hosted zone exists with the ID that you specified.</p>
-}
type alias NoSuchHostedZone =
    { message : Maybe String
    }



noSuchHostedZoneDecoder : JD.Decoder NoSuchHostedZone
noSuchHostedZoneDecoder =
    JDP.decode NoSuchHostedZone
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>No traffic policy exists with the specified ID.</p>
-}
type alias NoSuchTrafficPolicy =
    { message : Maybe String
    }



noSuchTrafficPolicyDecoder : JD.Decoder NoSuchTrafficPolicy
noSuchTrafficPolicyDecoder =
    JDP.decode NoSuchTrafficPolicy
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>No traffic policy instance exists with the specified ID.</p>
-}
type alias NoSuchTrafficPolicyInstance =
    { message : Maybe String
    }



noSuchTrafficPolicyInstanceDecoder : JD.Decoder NoSuchTrafficPolicyInstance
noSuchTrafficPolicyInstanceDecoder =
    JDP.decode NoSuchTrafficPolicyInstance
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Associating the specified VPC with the specified hosted zone has not been authorized.</p>
-}
type alias NotAuthorizedException =
    { message : Maybe String
    }



notAuthorizedExceptionDecoder : JD.Decoder NotAuthorizedException
notAuthorizedExceptionDecoder =
    JDP.decode NotAuthorizedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an <code>HTTP 400 error</code> (<code>Bad request</code>). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.</p>
-}
type alias PriorRequestNotComplete =
    { message : Maybe String
    }



priorRequestNotCompleteDecoder : JD.Decoder PriorRequestNotComplete
priorRequestNotCompleteDecoder =
    JDP.decode PriorRequestNotComplete
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a VPC with a public hosted zone.</p>
-}
type alias PublicZoneVPCAssociation =
    { message : Maybe String
    }



publicZoneVPCAssociationDecoder : JD.Decoder PublicZoneVPCAssociation
publicZoneVPCAssociationDecoder =
    JDP.decode PublicZoneVPCAssociation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `RRType_SOA`
* `RRType_A`
* `RRType_TXT`
* `RRType_NS`
* `RRType_CNAME`
* `RRType_MX`
* `RRType_NAPTR`
* `RRType_PTR`
* `RRType_SRV`
* `RRType_SPF`
* `RRType_AAAA`

-}
type RRType
    = RRType_SOA
    | RRType_A
    | RRType_TXT
    | RRType_NS
    | RRType_CNAME
    | RRType_MX
    | RRType_NAPTR
    | RRType_PTR
    | RRType_SRV
    | RRType_SPF
    | RRType_AAAA



rRTypeDecoder : JD.Decoder RRType
rRTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SOA" ->
                        JD.succeed RRType_SOA

                    "A" ->
                        JD.succeed RRType_A

                    "TXT" ->
                        JD.succeed RRType_TXT

                    "NS" ->
                        JD.succeed RRType_NS

                    "CNAME" ->
                        JD.succeed RRType_CNAME

                    "MX" ->
                        JD.succeed RRType_MX

                    "NAPTR" ->
                        JD.succeed RRType_NAPTR

                    "PTR" ->
                        JD.succeed RRType_PTR

                    "SRV" ->
                        JD.succeed RRType_SRV

                    "SPF" ->
                        JD.succeed RRType_SPF

                    "AAAA" ->
                        JD.succeed RRType_AAAA


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information specific to the resource record.</p> <note> <p>If you are creating an alias resource record set, omit <code>ResourceRecord</code>.</p> </note>
-}
type alias ResourceRecord =
    { value : String
    }



resourceRecordDecoder : JD.Decoder ResourceRecord
resourceRecordDecoder =
    JDP.decode ResourceRecord
        |> JDP.required "value" JD.string




{-| <p>Information about the resource record set to create or delete.</p>
-}
type alias ResourceRecordSet =
    { name : String
    , type_ : RRType
    , setIdentifier : Maybe String
    , weight : Maybe Int
    , region : Maybe ResourceRecordSetRegion
    , geoLocation : Maybe GeoLocation
    , failover : Maybe ResourceRecordSetFailover
    , tTL : Maybe Int
    , resourceRecords : Maybe (List ResourceRecord)
    , aliasTarget : Maybe AliasTarget
    , healthCheckId : Maybe String
    , trafficPolicyInstanceId : Maybe String
    }



resourceRecordSetDecoder : JD.Decoder ResourceRecordSet
resourceRecordSetDecoder =
    JDP.decode ResourceRecordSet
        |> JDP.required "name" JD.string
        |> JDP.required "type_" rRTypeDecoder
        |> JDP.optional "setIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "weight" (JD.nullable JD.int) Nothing
        |> JDP.optional "region" (JD.nullable resourceRecordSetRegionDecoder) Nothing
        |> JDP.optional "geoLocation" (JD.nullable geoLocationDecoder) Nothing
        |> JDP.optional "failover" (JD.nullable resourceRecordSetFailoverDecoder) Nothing
        |> JDP.optional "tTL" (JD.nullable JD.int) Nothing
        |> JDP.optional "resourceRecords" (JD.nullable (JD.list resourceRecordDecoder)) Nothing
        |> JDP.optional "aliasTarget" (JD.nullable aliasTargetDecoder) Nothing
        |> JDP.optional "healthCheckId" (JD.nullable JD.string) Nothing
        |> JDP.optional "trafficPolicyInstanceId" (JD.nullable JD.string) Nothing




{-| One of

* `ResourceRecordSetFailover_PRIMARY`
* `ResourceRecordSetFailover_SECONDARY`

-}
type ResourceRecordSetFailover
    = ResourceRecordSetFailover_PRIMARY
    | ResourceRecordSetFailover_SECONDARY



resourceRecordSetFailoverDecoder : JD.Decoder ResourceRecordSetFailover
resourceRecordSetFailoverDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PRIMARY" ->
                        JD.succeed ResourceRecordSetFailover_PRIMARY

                    "SECONDARY" ->
                        JD.succeed ResourceRecordSetFailover_SECONDARY


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ResourceRecordSetRegion_us-east-1`
* `ResourceRecordSetRegion_us-east-2`
* `ResourceRecordSetRegion_us-west-1`
* `ResourceRecordSetRegion_us-west-2`
* `ResourceRecordSetRegion_ca-central-1`
* `ResourceRecordSetRegion_eu-west-1`
* `ResourceRecordSetRegion_eu-west-2`
* `ResourceRecordSetRegion_eu-central-1`
* `ResourceRecordSetRegion_ap-southeast-1`
* `ResourceRecordSetRegion_ap-southeast-2`
* `ResourceRecordSetRegion_ap-northeast-1`
* `ResourceRecordSetRegion_ap-northeast-2`
* `ResourceRecordSetRegion_sa-east-1`
* `ResourceRecordSetRegion_cn-north-1`
* `ResourceRecordSetRegion_ap-south-1`

-}
type ResourceRecordSetRegion
    = ResourceRecordSetRegion_us_east_1
    | ResourceRecordSetRegion_us_east_2
    | ResourceRecordSetRegion_us_west_1
    | ResourceRecordSetRegion_us_west_2
    | ResourceRecordSetRegion_ca_central_1
    | ResourceRecordSetRegion_eu_west_1
    | ResourceRecordSetRegion_eu_west_2
    | ResourceRecordSetRegion_eu_central_1
    | ResourceRecordSetRegion_ap_southeast_1
    | ResourceRecordSetRegion_ap_southeast_2
    | ResourceRecordSetRegion_ap_northeast_1
    | ResourceRecordSetRegion_ap_northeast_2
    | ResourceRecordSetRegion_sa_east_1
    | ResourceRecordSetRegion_cn_north_1
    | ResourceRecordSetRegion_ap_south_1



resourceRecordSetRegionDecoder : JD.Decoder ResourceRecordSetRegion
resourceRecordSetRegionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed ResourceRecordSetRegion_us_east_1

                    "us_east_2" ->
                        JD.succeed ResourceRecordSetRegion_us_east_2

                    "us_west_1" ->
                        JD.succeed ResourceRecordSetRegion_us_west_1

                    "us_west_2" ->
                        JD.succeed ResourceRecordSetRegion_us_west_2

                    "ca_central_1" ->
                        JD.succeed ResourceRecordSetRegion_ca_central_1

                    "eu_west_1" ->
                        JD.succeed ResourceRecordSetRegion_eu_west_1

                    "eu_west_2" ->
                        JD.succeed ResourceRecordSetRegion_eu_west_2

                    "eu_central_1" ->
                        JD.succeed ResourceRecordSetRegion_eu_central_1

                    "ap_southeast_1" ->
                        JD.succeed ResourceRecordSetRegion_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed ResourceRecordSetRegion_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed ResourceRecordSetRegion_ap_northeast_1

                    "ap_northeast_2" ->
                        JD.succeed ResourceRecordSetRegion_ap_northeast_2

                    "sa_east_1" ->
                        JD.succeed ResourceRecordSetRegion_sa_east_1

                    "cn_north_1" ->
                        JD.succeed ResourceRecordSetRegion_cn_north_1

                    "ap_south_1" ->
                        JD.succeed ResourceRecordSetRegion_ap_south_1


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A complex type containing a resource and its associated tags.</p>
-}
type alias ResourceTagSet =
    { resourceType : Maybe TagResourceType
    , resourceId : Maybe String
    , tags : Maybe (List Tag)
    }



resourceTagSetDecoder : JD.Decoder ResourceTagSet
resourceTagSetDecoder =
    JDP.decode ResourceTagSet
        |> JDP.optional "resourceType" (JD.nullable tagResourceTypeDecoder) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `Statistic_Average`
* `Statistic_Sum`
* `Statistic_SampleCount`
* `Statistic_Maximum`
* `Statistic_Minimum`

-}
type Statistic
    = Statistic_Average
    | Statistic_Sum
    | Statistic_SampleCount
    | Statistic_Maximum
    | Statistic_Minimum



statisticDecoder : JD.Decoder Statistic
statisticDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Average" ->
                        JD.succeed Statistic_Average

                    "Sum" ->
                        JD.succeed Statistic_Sum

                    "SampleCount" ->
                        JD.succeed Statistic_SampleCount

                    "Maximum" ->
                        JD.succeed Statistic_Maximum

                    "Minimum" ->
                        JD.succeed Statistic_Minimum


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A complex type that contains the status that one Amazon Route 53 health checker reports and the time of the health check.</p>
-}
type alias StatusReport =
    { status : Maybe String
    , checkedTime : Maybe Date
    }



statusReportDecoder : JD.Decoder StatusReport
statusReportDecoder =
    JDP.decode StatusReport
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "checkedTime" (JD.nullable JDX.date) Nothing




{-| <p>A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| One of

* `TagResourceType_healthcheck`
* `TagResourceType_hostedzone`

-}
type TagResourceType
    = TagResourceType_healthcheck
    | TagResourceType_hostedzone



tagResourceTypeDecoder : JD.Decoder TagResourceType
tagResourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "healthcheck" ->
                        JD.succeed TagResourceType_healthcheck

                    "hostedzone" ->
                        JD.succeed TagResourceType_hostedzone


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from testDNSAnswer
-}
type alias TestDNSAnswerResponse =
    { nameserver : String
    , recordName : String
    , recordType : RRType
    , recordData : (List String)
    , responseCode : String
    , protocol : String
    }



testDNSAnswerResponseDecoder : JD.Decoder TestDNSAnswerResponse
testDNSAnswerResponseDecoder =
    JDP.decode TestDNSAnswerResponse
        |> JDP.required "nameserver" JD.string
        |> JDP.required "recordName" JD.string
        |> JDP.required "recordType" rRTypeDecoder
        |> JDP.required "recordData" (JD.list JD.string)
        |> JDP.required "responseCode" JD.string
        |> JDP.required "protocol" JD.string




{-| <p></p>
-}
type alias ThrottlingException =
    { message : Maybe String
    }



throttlingExceptionDecoder : JD.Decoder ThrottlingException
throttlingExceptionDecoder =
    JDP.decode ThrottlingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You have reached the maximum number of active health checks for an AWS account. The default limit is 100. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
-}
type alias TooManyHealthChecks =
    { message : Maybe String
    }



tooManyHealthChecksDecoder : JD.Decoder TooManyHealthChecks
tooManyHealthChecksDecoder =
    JDP.decode TooManyHealthChecks
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This hosted zone can't be created because the hosted zone limit is exceeded. To request a limit increase, go to the Amazon Route 53 <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-}
type alias TooManyHostedZones =
    { message : Maybe String
    }



tooManyHostedZonesDecoder : JD.Decoder TooManyHostedZones
tooManyHostedZonesDecoder =
    JDP.decode TooManyHostedZones
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You've created the maximum number of traffic policies that can be created for the current AWS account. You can request an increase to the limit on the <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-}
type alias TooManyTrafficPolicies =
    { message : Maybe String
    }



tooManyTrafficPoliciesDecoder : JD.Decoder TooManyTrafficPolicies
tooManyTrafficPoliciesDecoder =
    JDP.decode TooManyTrafficPolicies
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You've created the maximum number of traffic policy instances that can be created for the current AWS account. You can request an increase to the limit on the <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-}
type alias TooManyTrafficPolicyInstances =
    { message : Maybe String
    }



tooManyTrafficPolicyInstancesDecoder : JD.Decoder TooManyTrafficPolicyInstances
tooManyTrafficPolicyInstancesDecoder =
    JDP.decode TooManyTrafficPolicyInstances
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You've created the maximum number of authorizations that can be created for the specified hosted zone. To authorize another VPC to be associated with the hosted zone, submit a <code>DeleteVPCAssociationAuthorization</code> request to remove an existing authorization. To get a list of existing authorizations, submit a <code>ListVPCAssociationAuthorizations</code> request.</p>
-}
type alias TooManyVPCAssociationAuthorizations =
    { message : Maybe String
    }



tooManyVPCAssociationAuthorizationsDecoder : JD.Decoder TooManyVPCAssociationAuthorizations
tooManyVPCAssociationAuthorizationsDecoder =
    JDP.decode TooManyVPCAssociationAuthorizations
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains settings for a traffic policy.</p>
-}
type alias TrafficPolicy =
    { id : String
    , version : Int
    , name : String
    , type_ : RRType
    , document : String
    , comment : Maybe String
    }



trafficPolicyDecoder : JD.Decoder TrafficPolicy
trafficPolicyDecoder =
    JDP.decode TrafficPolicy
        |> JDP.required "id" JD.string
        |> JDP.required "version" JD.int
        |> JDP.required "name" JD.string
        |> JDP.required "type_" rRTypeDecoder
        |> JDP.required "document" JD.string
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing




{-| <p>A traffic policy that has the same value for <code>Name</code> already exists.</p>
-}
type alias TrafficPolicyAlreadyExists =
    { message : Maybe String
    }



trafficPolicyAlreadyExistsDecoder : JD.Decoder TrafficPolicyAlreadyExists
trafficPolicyAlreadyExistsDecoder =
    JDP.decode TrafficPolicyAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>One or more traffic policy instances were created by using the specified traffic policy.</p>
-}
type alias TrafficPolicyInUse =
    { message : Maybe String
    }



trafficPolicyInUseDecoder : JD.Decoder TrafficPolicyInUse
trafficPolicyInUseDecoder =
    JDP.decode TrafficPolicyInUse
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains settings for the new traffic policy instance.</p>
-}
type alias TrafficPolicyInstance =
    { id : String
    , hostedZoneId : String
    , name : String
    , tTL : Int
    , state : String
    , message : String
    , trafficPolicyId : String
    , trafficPolicyVersion : Int
    , trafficPolicyType : RRType
    }



trafficPolicyInstanceDecoder : JD.Decoder TrafficPolicyInstance
trafficPolicyInstanceDecoder =
    JDP.decode TrafficPolicyInstance
        |> JDP.required "id" JD.string
        |> JDP.required "hostedZoneId" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "tTL" JD.int
        |> JDP.required "state" JD.string
        |> JDP.required "message" JD.string
        |> JDP.required "trafficPolicyId" JD.string
        |> JDP.required "trafficPolicyVersion" JD.int
        |> JDP.required "trafficPolicyType" rRTypeDecoder




{-| <p>Traffic policy instance with given Id already exists.</p>
-}
type alias TrafficPolicyInstanceAlreadyExists =
    { message : Maybe String
    }



trafficPolicyInstanceAlreadyExistsDecoder : JD.Decoder TrafficPolicyInstanceAlreadyExists
trafficPolicyInstanceAlreadyExistsDecoder =
    JDP.decode TrafficPolicyInstanceAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that contains information about the latest version of one traffic policy that is associated with the current AWS account.</p>
-}
type alias TrafficPolicySummary =
    { id : String
    , name : String
    , type_ : RRType
    , latestVersion : Int
    , trafficPolicyCount : Int
    }



trafficPolicySummaryDecoder : JD.Decoder TrafficPolicySummary
trafficPolicySummaryDecoder =
    JDP.decode TrafficPolicySummary
        |> JDP.required "id" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "type_" rRTypeDecoder
        |> JDP.required "latestVersion" JD.int
        |> JDP.required "trafficPolicyCount" JD.int




{-| Type of HTTP response from updateHealthCheck
-}
type alias UpdateHealthCheckResponse =
    { healthCheck : HealthCheck
    }



updateHealthCheckResponseDecoder : JD.Decoder UpdateHealthCheckResponse
updateHealthCheckResponseDecoder =
    JDP.decode UpdateHealthCheckResponse
        |> JDP.required "healthCheck" healthCheckDecoder




{-| Type of HTTP response from updateHostedZoneComment
-}
type alias UpdateHostedZoneCommentResponse =
    { hostedZone : HostedZone
    }



updateHostedZoneCommentResponseDecoder : JD.Decoder UpdateHostedZoneCommentResponse
updateHostedZoneCommentResponseDecoder =
    JDP.decode UpdateHostedZoneCommentResponse
        |> JDP.required "hostedZone" hostedZoneDecoder




{-| Type of HTTP response from updateTrafficPolicyComment
-}
type alias UpdateTrafficPolicyCommentResponse =
    { trafficPolicy : TrafficPolicy
    }



updateTrafficPolicyCommentResponseDecoder : JD.Decoder UpdateTrafficPolicyCommentResponse
updateTrafficPolicyCommentResponseDecoder =
    JDP.decode UpdateTrafficPolicyCommentResponse
        |> JDP.required "trafficPolicy" trafficPolicyDecoder




{-| Type of HTTP response from updateTrafficPolicyInstance
-}
type alias UpdateTrafficPolicyInstanceResponse =
    { trafficPolicyInstance : TrafficPolicyInstance
    }



updateTrafficPolicyInstanceResponseDecoder : JD.Decoder UpdateTrafficPolicyInstanceResponse
updateTrafficPolicyInstanceResponseDecoder =
    JDP.decode UpdateTrafficPolicyInstanceResponse
        |> JDP.required "trafficPolicyInstance" trafficPolicyInstanceDecoder




{-| <p>A complex type that contains information about an Amazon VPC that is associated with a private hosted zone.</p>
-}
type alias VPC =
    { vPCRegion : Maybe VPCRegion
    , vPCId : Maybe String
    }



vPCDecoder : JD.Decoder VPC
vPCDecoder =
    JDP.decode VPC
        |> JDP.optional "vPCRegion" (JD.nullable vPCRegionDecoder) Nothing
        |> JDP.optional "vPCId" (JD.nullable JD.string) Nothing




{-| <p>The VPC that you specified is not authorized to be associated with the hosted zone.</p>
-}
type alias VPCAssociationAuthorizationNotFound =
    { message : Maybe String
    }



vPCAssociationAuthorizationNotFoundDecoder : JD.Decoder VPCAssociationAuthorizationNotFound
vPCAssociationAuthorizationNotFoundDecoder =
    JDP.decode VPCAssociationAuthorizationNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified VPC and hosted zone are not currently associated.</p>
-}
type alias VPCAssociationNotFound =
    { message : Maybe String
    }



vPCAssociationNotFoundDecoder : JD.Decoder VPCAssociationNotFound
vPCAssociationNotFoundDecoder =
    JDP.decode VPCAssociationNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `VPCRegion_us-east-1`
* `VPCRegion_us-east-2`
* `VPCRegion_us-west-1`
* `VPCRegion_us-west-2`
* `VPCRegion_eu-west-1`
* `VPCRegion_eu-west-2`
* `VPCRegion_eu-central-1`
* `VPCRegion_ap-southeast-1`
* `VPCRegion_ap-southeast-2`
* `VPCRegion_ap-south-1`
* `VPCRegion_ap-northeast-1`
* `VPCRegion_ap-northeast-2`
* `VPCRegion_sa-east-1`
* `VPCRegion_ca-central-1`
* `VPCRegion_cn-north-1`

-}
type VPCRegion
    = VPCRegion_us_east_1
    | VPCRegion_us_east_2
    | VPCRegion_us_west_1
    | VPCRegion_us_west_2
    | VPCRegion_eu_west_1
    | VPCRegion_eu_west_2
    | VPCRegion_eu_central_1
    | VPCRegion_ap_southeast_1
    | VPCRegion_ap_southeast_2
    | VPCRegion_ap_south_1
    | VPCRegion_ap_northeast_1
    | VPCRegion_ap_northeast_2
    | VPCRegion_sa_east_1
    | VPCRegion_ca_central_1
    | VPCRegion_cn_north_1



vPCRegionDecoder : JD.Decoder VPCRegion
vPCRegionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed VPCRegion_us_east_1

                    "us_east_2" ->
                        JD.succeed VPCRegion_us_east_2

                    "us_west_1" ->
                        JD.succeed VPCRegion_us_west_1

                    "us_west_2" ->
                        JD.succeed VPCRegion_us_west_2

                    "eu_west_1" ->
                        JD.succeed VPCRegion_eu_west_1

                    "eu_west_2" ->
                        JD.succeed VPCRegion_eu_west_2

                    "eu_central_1" ->
                        JD.succeed VPCRegion_eu_central_1

                    "ap_southeast_1" ->
                        JD.succeed VPCRegion_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed VPCRegion_ap_southeast_2

                    "ap_south_1" ->
                        JD.succeed VPCRegion_ap_south_1

                    "ap_northeast_1" ->
                        JD.succeed VPCRegion_ap_northeast_1

                    "ap_northeast_2" ->
                        JD.succeed VPCRegion_ap_northeast_2

                    "sa_east_1" ->
                        JD.succeed VPCRegion_sa_east_1

                    "ca_central_1" ->
                        JD.succeed VPCRegion_ca_central_1

                    "cn_north_1" ->
                        JD.succeed VPCRegion_cn_north_1


                    _ ->
                        JD.fail "bad thing"
            )



