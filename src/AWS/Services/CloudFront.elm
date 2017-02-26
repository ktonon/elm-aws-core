module AWS.Services.CloudFront
    exposing
        ( config
        , createCloudFrontOriginAccessIdentity
        , createDistribution
        , createDistributionWithTags
        , createInvalidation
        , createStreamingDistribution
        , createStreamingDistributionWithTags
        , deleteCloudFrontOriginAccessIdentity
        , DeleteCloudFrontOriginAccessIdentityOptions
        , deleteDistribution
        , DeleteDistributionOptions
        , deleteStreamingDistribution
        , DeleteStreamingDistributionOptions
        , getCloudFrontOriginAccessIdentity
        , getCloudFrontOriginAccessIdentityConfig
        , getDistribution
        , getDistributionConfig
        , getInvalidation
        , getStreamingDistribution
        , getStreamingDistributionConfig
        , listCloudFrontOriginAccessIdentities
        , ListCloudFrontOriginAccessIdentitiesOptions
        , listDistributions
        , ListDistributionsOptions
        , listDistributionsByWebACLId
        , ListDistributionsByWebACLIdOptions
        , listInvalidations
        , ListInvalidationsOptions
        , listStreamingDistributions
        , ListStreamingDistributionsOptions
        , listTagsForResource
        , tagResource
        , untagResource
        , updateCloudFrontOriginAccessIdentity
        , UpdateCloudFrontOriginAccessIdentityOptions
        , updateDistribution
        , UpdateDistributionOptions
        , updateStreamingDistribution
        , UpdateStreamingDistributionOptions
        , AccessDenied
        , ActiveTrustedSigners
        , Aliases
        , AllowedMethods
        , BatchTooLarge
        , CNAMEAlreadyExists
        , CacheBehavior
        , CacheBehaviors
        , CachedMethods
        , CertificateSource(..)
        , CloudFrontOriginAccessIdentity
        , CloudFrontOriginAccessIdentityAlreadyExists
        , CloudFrontOriginAccessIdentityConfig
        , CloudFrontOriginAccessIdentityInUse
        , CloudFrontOriginAccessIdentityList
        , CloudFrontOriginAccessIdentitySummary
        , CookieNames
        , CookiePreference
        , CreateCloudFrontOriginAccessIdentityResult
        , CreateDistributionResult
        , CreateDistributionWithTagsResult
        , CreateInvalidationResult
        , CreateStreamingDistributionResult
        , CreateStreamingDistributionWithTagsResult
        , CustomErrorResponse
        , CustomErrorResponses
        , CustomHeaders
        , CustomOriginConfig
        , DefaultCacheBehavior
        , Distribution
        , DistributionAlreadyExists
        , DistributionConfig
        , DistributionConfigWithTags
        , DistributionList
        , DistributionNotDisabled
        , DistributionSummary
        , EventType(..)
        , ForwardedValues
        , GeoRestriction
        , GeoRestrictionType(..)
        , GetCloudFrontOriginAccessIdentityConfigResult
        , GetCloudFrontOriginAccessIdentityResult
        , GetDistributionConfigResult
        , GetDistributionResult
        , GetInvalidationResult
        , GetStreamingDistributionConfigResult
        , GetStreamingDistributionResult
        , Headers
        , HttpVersion(..)
        , IllegalUpdate
        , InconsistentQuantities
        , InvalidArgument
        , InvalidDefaultRootObject
        , InvalidErrorCode
        , InvalidForwardCookies
        , InvalidGeoRestrictionParameter
        , InvalidHeadersForS3Origin
        , InvalidIfMatchVersion
        , InvalidLambdaFunctionAssociation
        , InvalidLocationCode
        , InvalidMinimumProtocolVersion
        , InvalidOrigin
        , InvalidOriginAccessIdentity
        , InvalidProtocolSettings
        , InvalidQueryStringParameters
        , InvalidRelativePath
        , InvalidRequiredProtocol
        , InvalidResponseCode
        , InvalidTTLOrder
        , InvalidTagging
        , InvalidViewerCertificate
        , InvalidWebACLId
        , Invalidation
        , InvalidationBatch
        , InvalidationList
        , InvalidationSummary
        , ItemSelection(..)
        , KeyPairIds
        , LambdaFunctionAssociation
        , LambdaFunctionAssociations
        , ListCloudFrontOriginAccessIdentitiesResult
        , ListDistributionsByWebACLIdResult
        , ListDistributionsResult
        , ListInvalidationsResult
        , ListStreamingDistributionsResult
        , ListTagsForResourceResult
        , LoggingConfig
        , Method(..)
        , MinimumProtocolVersion(..)
        , MissingBody
        , NoSuchCloudFrontOriginAccessIdentity
        , NoSuchDistribution
        , NoSuchInvalidation
        , NoSuchOrigin
        , NoSuchResource
        , NoSuchStreamingDistribution
        , Origin
        , OriginCustomHeader
        , OriginProtocolPolicy(..)
        , OriginSslProtocols
        , Origins
        , Paths
        , PreconditionFailed
        , PriceClass(..)
        , QueryStringCacheKeys
        , Restrictions
        , S3Origin
        , S3OriginConfig
        , SSLSupportMethod(..)
        , Signer
        , SslProtocol(..)
        , StreamingDistribution
        , StreamingDistributionAlreadyExists
        , StreamingDistributionConfig
        , StreamingDistributionConfigWithTags
        , StreamingDistributionList
        , StreamingDistributionNotDisabled
        , StreamingDistributionSummary
        , StreamingLoggingConfig
        , Tag
        , TagKeys
        , Tags
        , TooManyCacheBehaviors
        , TooManyCertificates
        , TooManyCloudFrontOriginAccessIdentities
        , TooManyCookieNamesInWhiteList
        , TooManyDistributionCNAMEs
        , TooManyDistributions
        , TooManyDistributionsWithLambdaAssociations
        , TooManyHeadersInForwardedValues
        , TooManyInvalidationsInProgress
        , TooManyLambdaFunctionAssociations
        , TooManyOriginCustomHeaders
        , TooManyOrigins
        , TooManyQueryStringParameters
        , TooManyStreamingDistributionCNAMEs
        , TooManyStreamingDistributions
        , TooManyTrustedSigners
        , TrustedSignerDoesNotExist
        , TrustedSigners
        , UpdateCloudFrontOriginAccessIdentityResult
        , UpdateDistributionResult
        , UpdateStreamingDistributionResult
        , ViewerCertificate
        , ViewerProtocolPolicy(..)
        )

{-| <fullname>Amazon CloudFront</fullname> <p>This is the <i>Amazon CloudFront API Reference</i>. This guide is for developers who need detailed information about the CloudFront API actions, data types, and errors. For detailed information about CloudFront features and their associated API calls, see the <i>Amazon CloudFront Developer Guide</i>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createCloudFrontOriginAccessIdentity](#createCloudFrontOriginAccessIdentity)
* [createDistribution](#createDistribution)
* [createDistributionWithTags](#createDistributionWithTags)
* [createInvalidation](#createInvalidation)
* [createStreamingDistribution](#createStreamingDistribution)
* [createStreamingDistributionWithTags](#createStreamingDistributionWithTags)
* [deleteCloudFrontOriginAccessIdentity](#deleteCloudFrontOriginAccessIdentity)
* [DeleteCloudFrontOriginAccessIdentityOptions](#DeleteCloudFrontOriginAccessIdentityOptions)
* [deleteDistribution](#deleteDistribution)
* [DeleteDistributionOptions](#DeleteDistributionOptions)
* [deleteStreamingDistribution](#deleteStreamingDistribution)
* [DeleteStreamingDistributionOptions](#DeleteStreamingDistributionOptions)
* [getCloudFrontOriginAccessIdentity](#getCloudFrontOriginAccessIdentity)
* [getCloudFrontOriginAccessIdentityConfig](#getCloudFrontOriginAccessIdentityConfig)
* [getDistribution](#getDistribution)
* [getDistributionConfig](#getDistributionConfig)
* [getInvalidation](#getInvalidation)
* [getStreamingDistribution](#getStreamingDistribution)
* [getStreamingDistributionConfig](#getStreamingDistributionConfig)
* [listCloudFrontOriginAccessIdentities](#listCloudFrontOriginAccessIdentities)
* [ListCloudFrontOriginAccessIdentitiesOptions](#ListCloudFrontOriginAccessIdentitiesOptions)
* [listDistributions](#listDistributions)
* [ListDistributionsOptions](#ListDistributionsOptions)
* [listDistributionsByWebACLId](#listDistributionsByWebACLId)
* [ListDistributionsByWebACLIdOptions](#ListDistributionsByWebACLIdOptions)
* [listInvalidations](#listInvalidations)
* [ListInvalidationsOptions](#ListInvalidationsOptions)
* [listStreamingDistributions](#listStreamingDistributions)
* [ListStreamingDistributionsOptions](#ListStreamingDistributionsOptions)
* [listTagsForResource](#listTagsForResource)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateCloudFrontOriginAccessIdentity](#updateCloudFrontOriginAccessIdentity)
* [UpdateCloudFrontOriginAccessIdentityOptions](#UpdateCloudFrontOriginAccessIdentityOptions)
* [updateDistribution](#updateDistribution)
* [UpdateDistributionOptions](#UpdateDistributionOptions)
* [updateStreamingDistribution](#updateStreamingDistribution)
* [UpdateStreamingDistributionOptions](#UpdateStreamingDistributionOptions)


@docs createCloudFrontOriginAccessIdentity,createDistribution,createDistributionWithTags,createInvalidation,createStreamingDistribution,createStreamingDistributionWithTags,deleteCloudFrontOriginAccessIdentity,DeleteCloudFrontOriginAccessIdentityOptions,deleteDistribution,DeleteDistributionOptions,deleteStreamingDistribution,DeleteStreamingDistributionOptions,getCloudFrontOriginAccessIdentity,getCloudFrontOriginAccessIdentityConfig,getDistribution,getDistributionConfig,getInvalidation,getStreamingDistribution,getStreamingDistributionConfig,listCloudFrontOriginAccessIdentities,ListCloudFrontOriginAccessIdentitiesOptions,listDistributions,ListDistributionsOptions,listDistributionsByWebACLId,ListDistributionsByWebACLIdOptions,listInvalidations,ListInvalidationsOptions,listStreamingDistributions,ListStreamingDistributionsOptions,listTagsForResource,tagResource,untagResource,updateCloudFrontOriginAccessIdentity,UpdateCloudFrontOriginAccessIdentityOptions,updateDistribution,UpdateDistributionOptions,updateStreamingDistribution,UpdateStreamingDistributionOptions

## Responses

* [CreateCloudFrontOriginAccessIdentityResult](#CreateCloudFrontOriginAccessIdentityResult)
* [CreateDistributionResult](#CreateDistributionResult)
* [CreateDistributionWithTagsResult](#CreateDistributionWithTagsResult)
* [CreateInvalidationResult](#CreateInvalidationResult)
* [CreateStreamingDistributionResult](#CreateStreamingDistributionResult)
* [CreateStreamingDistributionWithTagsResult](#CreateStreamingDistributionWithTagsResult)
* [GetCloudFrontOriginAccessIdentityConfigResult](#GetCloudFrontOriginAccessIdentityConfigResult)
* [GetCloudFrontOriginAccessIdentityResult](#GetCloudFrontOriginAccessIdentityResult)
* [GetDistributionConfigResult](#GetDistributionConfigResult)
* [GetDistributionResult](#GetDistributionResult)
* [GetInvalidationResult](#GetInvalidationResult)
* [GetStreamingDistributionConfigResult](#GetStreamingDistributionConfigResult)
* [GetStreamingDistributionResult](#GetStreamingDistributionResult)
* [ListCloudFrontOriginAccessIdentitiesResult](#ListCloudFrontOriginAccessIdentitiesResult)
* [ListDistributionsByWebACLIdResult](#ListDistributionsByWebACLIdResult)
* [ListDistributionsResult](#ListDistributionsResult)
* [ListInvalidationsResult](#ListInvalidationsResult)
* [ListStreamingDistributionsResult](#ListStreamingDistributionsResult)
* [ListTagsForResourceResult](#ListTagsForResourceResult)
* [UpdateCloudFrontOriginAccessIdentityResult](#UpdateCloudFrontOriginAccessIdentityResult)
* [UpdateDistributionResult](#UpdateDistributionResult)
* [UpdateStreamingDistributionResult](#UpdateStreamingDistributionResult)


@docs CreateCloudFrontOriginAccessIdentityResult,CreateDistributionResult,CreateDistributionWithTagsResult,CreateInvalidationResult,CreateStreamingDistributionResult,CreateStreamingDistributionWithTagsResult,GetCloudFrontOriginAccessIdentityConfigResult,GetCloudFrontOriginAccessIdentityResult,GetDistributionConfigResult,GetDistributionResult,GetInvalidationResult,GetStreamingDistributionConfigResult,GetStreamingDistributionResult,ListCloudFrontOriginAccessIdentitiesResult,ListDistributionsByWebACLIdResult,ListDistributionsResult,ListInvalidationsResult,ListStreamingDistributionsResult,ListTagsForResourceResult,UpdateCloudFrontOriginAccessIdentityResult,UpdateDistributionResult,UpdateStreamingDistributionResult

## Records

* [ActiveTrustedSigners](#ActiveTrustedSigners)
* [Aliases](#Aliases)
* [AllowedMethods](#AllowedMethods)
* [CacheBehavior](#CacheBehavior)
* [CacheBehaviors](#CacheBehaviors)
* [CachedMethods](#CachedMethods)
* [CloudFrontOriginAccessIdentity](#CloudFrontOriginAccessIdentity)
* [CloudFrontOriginAccessIdentityConfig](#CloudFrontOriginAccessIdentityConfig)
* [CloudFrontOriginAccessIdentityList](#CloudFrontOriginAccessIdentityList)
* [CloudFrontOriginAccessIdentitySummary](#CloudFrontOriginAccessIdentitySummary)
* [CookieNames](#CookieNames)
* [CookiePreference](#CookiePreference)
* [CustomErrorResponse](#CustomErrorResponse)
* [CustomErrorResponses](#CustomErrorResponses)
* [CustomHeaders](#CustomHeaders)
* [CustomOriginConfig](#CustomOriginConfig)
* [DefaultCacheBehavior](#DefaultCacheBehavior)
* [Distribution](#Distribution)
* [DistributionConfig](#DistributionConfig)
* [DistributionConfigWithTags](#DistributionConfigWithTags)
* [DistributionList](#DistributionList)
* [DistributionSummary](#DistributionSummary)
* [ForwardedValues](#ForwardedValues)
* [GeoRestriction](#GeoRestriction)
* [Headers](#Headers)
* [Invalidation](#Invalidation)
* [InvalidationBatch](#InvalidationBatch)
* [InvalidationList](#InvalidationList)
* [InvalidationSummary](#InvalidationSummary)
* [KeyPairIds](#KeyPairIds)
* [LambdaFunctionAssociation](#LambdaFunctionAssociation)
* [LambdaFunctionAssociations](#LambdaFunctionAssociations)
* [LoggingConfig](#LoggingConfig)
* [Origin](#Origin)
* [OriginCustomHeader](#OriginCustomHeader)
* [OriginSslProtocols](#OriginSslProtocols)
* [Origins](#Origins)
* [Paths](#Paths)
* [QueryStringCacheKeys](#QueryStringCacheKeys)
* [Restrictions](#Restrictions)
* [S3Origin](#S3Origin)
* [S3OriginConfig](#S3OriginConfig)
* [Signer](#Signer)
* [StreamingDistribution](#StreamingDistribution)
* [StreamingDistributionConfig](#StreamingDistributionConfig)
* [StreamingDistributionConfigWithTags](#StreamingDistributionConfigWithTags)
* [StreamingDistributionList](#StreamingDistributionList)
* [StreamingDistributionSummary](#StreamingDistributionSummary)
* [StreamingLoggingConfig](#StreamingLoggingConfig)
* [Tag](#Tag)
* [TagKeys](#TagKeys)
* [Tags](#Tags)
* [TrustedSigners](#TrustedSigners)
* [ViewerCertificate](#ViewerCertificate)


@docs ActiveTrustedSigners,Aliases,AllowedMethods,CacheBehavior,CacheBehaviors,CachedMethods,CloudFrontOriginAccessIdentity,CloudFrontOriginAccessIdentityConfig,CloudFrontOriginAccessIdentityList,CloudFrontOriginAccessIdentitySummary,CookieNames,CookiePreference,CustomErrorResponse,CustomErrorResponses,CustomHeaders,CustomOriginConfig,DefaultCacheBehavior,Distribution,DistributionConfig,DistributionConfigWithTags,DistributionList,DistributionSummary,ForwardedValues,GeoRestriction,Headers,Invalidation,InvalidationBatch,InvalidationList,InvalidationSummary,KeyPairIds,LambdaFunctionAssociation,LambdaFunctionAssociations,LoggingConfig,Origin,OriginCustomHeader,OriginSslProtocols,Origins,Paths,QueryStringCacheKeys,Restrictions,S3Origin,S3OriginConfig,Signer,StreamingDistribution,StreamingDistributionConfig,StreamingDistributionConfigWithTags,StreamingDistributionList,StreamingDistributionSummary,StreamingLoggingConfig,Tag,TagKeys,Tags,TrustedSigners,ViewerCertificate

## Unions

* [CertificateSource](#CertificateSource)
* [EventType](#EventType)
* [GeoRestrictionType](#GeoRestrictionType)
* [HttpVersion](#HttpVersion)
* [ItemSelection](#ItemSelection)
* [Method](#Method)
* [MinimumProtocolVersion](#MinimumProtocolVersion)
* [OriginProtocolPolicy](#OriginProtocolPolicy)
* [PriceClass](#PriceClass)
* [SSLSupportMethod](#SSLSupportMethod)
* [SslProtocol](#SslProtocol)
* [ViewerProtocolPolicy](#ViewerProtocolPolicy)


@docs CertificateSource,EventType,GeoRestrictionType,HttpVersion,ItemSelection,Method,MinimumProtocolVersion,OriginProtocolPolicy,PriceClass,SSLSupportMethod,SslProtocol,ViewerProtocolPolicy

## Exceptions

* [AccessDenied](#AccessDenied)
* [BatchTooLarge](#BatchTooLarge)
* [CNAMEAlreadyExists](#CNAMEAlreadyExists)
* [CloudFrontOriginAccessIdentityAlreadyExists](#CloudFrontOriginAccessIdentityAlreadyExists)
* [CloudFrontOriginAccessIdentityInUse](#CloudFrontOriginAccessIdentityInUse)
* [DistributionAlreadyExists](#DistributionAlreadyExists)
* [DistributionNotDisabled](#DistributionNotDisabled)
* [IllegalUpdate](#IllegalUpdate)
* [InconsistentQuantities](#InconsistentQuantities)
* [InvalidArgument](#InvalidArgument)
* [InvalidDefaultRootObject](#InvalidDefaultRootObject)
* [InvalidErrorCode](#InvalidErrorCode)
* [InvalidForwardCookies](#InvalidForwardCookies)
* [InvalidGeoRestrictionParameter](#InvalidGeoRestrictionParameter)
* [InvalidHeadersForS3Origin](#InvalidHeadersForS3Origin)
* [InvalidIfMatchVersion](#InvalidIfMatchVersion)
* [InvalidLambdaFunctionAssociation](#InvalidLambdaFunctionAssociation)
* [InvalidLocationCode](#InvalidLocationCode)
* [InvalidMinimumProtocolVersion](#InvalidMinimumProtocolVersion)
* [InvalidOrigin](#InvalidOrigin)
* [InvalidOriginAccessIdentity](#InvalidOriginAccessIdentity)
* [InvalidProtocolSettings](#InvalidProtocolSettings)
* [InvalidQueryStringParameters](#InvalidQueryStringParameters)
* [InvalidRelativePath](#InvalidRelativePath)
* [InvalidRequiredProtocol](#InvalidRequiredProtocol)
* [InvalidResponseCode](#InvalidResponseCode)
* [InvalidTTLOrder](#InvalidTTLOrder)
* [InvalidTagging](#InvalidTagging)
* [InvalidViewerCertificate](#InvalidViewerCertificate)
* [InvalidWebACLId](#InvalidWebACLId)
* [MissingBody](#MissingBody)
* [NoSuchCloudFrontOriginAccessIdentity](#NoSuchCloudFrontOriginAccessIdentity)
* [NoSuchDistribution](#NoSuchDistribution)
* [NoSuchInvalidation](#NoSuchInvalidation)
* [NoSuchOrigin](#NoSuchOrigin)
* [NoSuchResource](#NoSuchResource)
* [NoSuchStreamingDistribution](#NoSuchStreamingDistribution)
* [PreconditionFailed](#PreconditionFailed)
* [StreamingDistributionAlreadyExists](#StreamingDistributionAlreadyExists)
* [StreamingDistributionNotDisabled](#StreamingDistributionNotDisabled)
* [TooManyCacheBehaviors](#TooManyCacheBehaviors)
* [TooManyCertificates](#TooManyCertificates)
* [TooManyCloudFrontOriginAccessIdentities](#TooManyCloudFrontOriginAccessIdentities)
* [TooManyCookieNamesInWhiteList](#TooManyCookieNamesInWhiteList)
* [TooManyDistributionCNAMEs](#TooManyDistributionCNAMEs)
* [TooManyDistributions](#TooManyDistributions)
* [TooManyDistributionsWithLambdaAssociations](#TooManyDistributionsWithLambdaAssociations)
* [TooManyHeadersInForwardedValues](#TooManyHeadersInForwardedValues)
* [TooManyInvalidationsInProgress](#TooManyInvalidationsInProgress)
* [TooManyLambdaFunctionAssociations](#TooManyLambdaFunctionAssociations)
* [TooManyOriginCustomHeaders](#TooManyOriginCustomHeaders)
* [TooManyOrigins](#TooManyOrigins)
* [TooManyQueryStringParameters](#TooManyQueryStringParameters)
* [TooManyStreamingDistributionCNAMEs](#TooManyStreamingDistributionCNAMEs)
* [TooManyStreamingDistributions](#TooManyStreamingDistributions)
* [TooManyTrustedSigners](#TooManyTrustedSigners)
* [TrustedSignerDoesNotExist](#TrustedSignerDoesNotExist)


@docs AccessDenied,BatchTooLarge,CNAMEAlreadyExists,CloudFrontOriginAccessIdentityAlreadyExists,CloudFrontOriginAccessIdentityInUse,DistributionAlreadyExists,DistributionNotDisabled,IllegalUpdate,InconsistentQuantities,InvalidArgument,InvalidDefaultRootObject,InvalidErrorCode,InvalidForwardCookies,InvalidGeoRestrictionParameter,InvalidHeadersForS3Origin,InvalidIfMatchVersion,InvalidLambdaFunctionAssociation,InvalidLocationCode,InvalidMinimumProtocolVersion,InvalidOrigin,InvalidOriginAccessIdentity,InvalidProtocolSettings,InvalidQueryStringParameters,InvalidRelativePath,InvalidRequiredProtocol,InvalidResponseCode,InvalidTTLOrder,InvalidTagging,InvalidViewerCertificate,InvalidWebACLId,MissingBody,NoSuchCloudFrontOriginAccessIdentity,NoSuchDistribution,NoSuchInvalidation,NoSuchOrigin,NoSuchResource,NoSuchStreamingDistribution,PreconditionFailed,StreamingDistributionAlreadyExists,StreamingDistributionNotDisabled,TooManyCacheBehaviors,TooManyCertificates,TooManyCloudFrontOriginAccessIdentities,TooManyCookieNamesInWhiteList,TooManyDistributionCNAMEs,TooManyDistributions,TooManyDistributionsWithLambdaAssociations,TooManyHeadersInForwardedValues,TooManyInvalidationsInProgress,TooManyLambdaFunctionAssociations,TooManyOriginCustomHeaders,TooManyOrigins,TooManyQueryStringParameters,TooManyStreamingDistributionCNAMEs,TooManyStreamingDistributions,TooManyTrustedSigners,TrustedSignerDoesNotExist

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
        "cloudfront"
        "2016-11-25"
        "undefined"
        "AWSCLOUDFRONT_20161125."
        "cloudfront.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates a new origin access identity. If you're using Amazon S3 for your origin, you can use an origin access identity to require users to access your content using a CloudFront URL instead of the Amazon S3 URL. For more information about how to use origin access identities, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

__Required Parameters__

* `cloudFrontOriginAccessIdentityConfig` __:__ `CloudFrontOriginAccessIdentityConfig`


-}
createCloudFrontOriginAccessIdentity :
    CloudFrontOriginAccessIdentityConfig
    -> AWS.Request CreateCloudFrontOriginAccessIdentityResult
createCloudFrontOriginAccessIdentity cloudFrontOriginAccessIdentityConfig =
    AWS.Http.unsignedRequest
        "CreateCloudFrontOriginAccessIdentity"
        "POST"
        "/2016-11-25/origin-access-identity/cloudfront"
        (AWS.Http.JsonBody
            JE.null
        )
        createCloudFrontOriginAccessIdentityResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new web distribution. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/distribution</code>/<code>distribution ID</code> resource.</p>

__Required Parameters__

* `distributionConfig` __:__ `DistributionConfig`


-}
createDistribution :
    DistributionConfig
    -> AWS.Request CreateDistributionResult
createDistribution distributionConfig =
    AWS.Http.unsignedRequest
        "CreateDistribution"
        "POST"
        "/2016-11-25/distribution"
        (AWS.Http.JsonBody
            JE.null
        )
        createDistributionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Create a new distribution with tags.</p>

__Required Parameters__

* `distributionConfigWithTags` __:__ `DistributionConfigWithTags`


-}
createDistributionWithTags :
    DistributionConfigWithTags
    -> AWS.Request CreateDistributionWithTagsResult
createDistributionWithTags distributionConfigWithTags =
    AWS.Http.unsignedRequest
        "CreateDistributionWithTags"
        "POST"
        "/2016-11-25/distribution?WithTags"
        (AWS.Http.JsonBody
            JE.null
        )
        createDistributionWithTagsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Create a new invalidation. </p>

__Required Parameters__

* `distributionId` __:__ `String`
* `invalidationBatch` __:__ `InvalidationBatch`


-}
createInvalidation :
    String
    -> InvalidationBatch
    -> AWS.Request CreateInvalidationResult
createInvalidation distributionId invalidationBatch =
    AWS.Http.unsignedRequest
        "CreateInvalidation"
        "POST"
        ("/2016-11-25/distribution/" ++ distributionId ++ "/invalidation")
        (AWS.Http.JsonBody
            JE.null
        )
        createInvalidationResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new RMTP distribution. An RTMP distribution is similar to a web distribution, but an RTMP distribution streams media files using the Adobe Real-Time Messaging Protocol (RTMP) instead of serving files using HTTP. </p> <p>To create a new web distribution, submit a <code>POST</code> request to the <i>CloudFront API version</i>/distribution resource. The request body must include a document with a <i>StreamingDistributionConfig</i> element. The response echoes the <code>StreamingDistributionConfig</code> element and returns other information about the RTMP distribution.</p> <p>To get the status of your request, use the <i>GET StreamingDistribution</i> API action. When the value of <code>Enabled</code> is <code>true</code> and the value of <code>Status</code> is <code>Deployed</code>, your distribution is ready. A distribution usually deploys in less than 15 minutes.</p> <p>For more information about web distributions, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-rtmp.html">Working with RTMP Distributions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <important> <p>Beginning with the 2012-05-05 version of the CloudFront API, we made substantial changes to the format of the XML document that you include in the request body when you create or update a web distribution or an RTMP distribution, and when you invalidate objects. With previous versions of the API, we discovered that it was too easy to accidentally delete one or more values for an element that accepts multiple values, for example, CNAMEs and trusted signers. Our changes for the 2012-05-05 release are intended to prevent these accidental deletions and to notify you when there's a mismatch between the number of values you say you're specifying in the <code>Quantity</code> element and the number of values specified.</p> </important>

__Required Parameters__

* `streamingDistributionConfig` __:__ `StreamingDistributionConfig`


-}
createStreamingDistribution :
    StreamingDistributionConfig
    -> AWS.Request CreateStreamingDistributionResult
createStreamingDistribution streamingDistributionConfig =
    AWS.Http.unsignedRequest
        "CreateStreamingDistribution"
        "POST"
        "/2016-11-25/streaming-distribution"
        (AWS.Http.JsonBody
            JE.null
        )
        createStreamingDistributionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Create a new streaming distribution with tags.</p>

__Required Parameters__

* `streamingDistributionConfigWithTags` __:__ `StreamingDistributionConfigWithTags`


-}
createStreamingDistributionWithTags :
    StreamingDistributionConfigWithTags
    -> AWS.Request CreateStreamingDistributionWithTagsResult
createStreamingDistributionWithTags streamingDistributionConfigWithTags =
    AWS.Http.unsignedRequest
        "CreateStreamingDistributionWithTags"
        "POST"
        "/2016-11-25/streaming-distribution?WithTags"
        (AWS.Http.JsonBody
            JE.null
        )
        createStreamingDistributionWithTagsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Delete an origin access identity. </p>

__Required Parameters__

* `id` __:__ `String`


-}
deleteCloudFrontOriginAccessIdentity :
    String
    -> (DeleteCloudFrontOriginAccessIdentityOptions -> DeleteCloudFrontOriginAccessIdentityOptions)
    -> AWS.Request ()
deleteCloudFrontOriginAccessIdentity id setOptions =
  let
    options = setOptions (DeleteCloudFrontOriginAccessIdentityOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteCloudFrontOriginAccessIdentity"
        "DELETE"
        ("/2016-11-25/origin-access-identity/cloudfront/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteCloudFrontOriginAccessIdentity request
-}
type alias DeleteCloudFrontOriginAccessIdentityOptions =
    { ifMatch : Maybe String
    }



{-| <p>Delete a distribution. </p>

__Required Parameters__

* `id` __:__ `String`


-}
deleteDistribution :
    String
    -> (DeleteDistributionOptions -> DeleteDistributionOptions)
    -> AWS.Request ()
deleteDistribution id setOptions =
  let
    options = setOptions (DeleteDistributionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteDistribution"
        "DELETE"
        ("/2016-11-25/distribution/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteDistribution request
-}
type alias DeleteDistributionOptions =
    { ifMatch : Maybe String
    }



{-| <p>Delete a streaming distribution. To delete an RTMP distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete an RTMP distribution using the CloudFront API</b>:</p> <ol> <li> <p>Disable the RTMP distribution.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution. </p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Streaming Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Streaming Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Then set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Streaming Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Streaming Distribution Config</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Streaming Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Streaming Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to your <code>DELETE Streaming Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>

__Required Parameters__

* `id` __:__ `String`


-}
deleteStreamingDistribution :
    String
    -> (DeleteStreamingDistributionOptions -> DeleteStreamingDistributionOptions)
    -> AWS.Request ()
deleteStreamingDistribution id setOptions =
  let
    options = setOptions (DeleteStreamingDistributionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteStreamingDistribution"
        "DELETE"
        ("/2016-11-25/streaming-distribution/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteStreamingDistribution request
-}
type alias DeleteStreamingDistributionOptions =
    { ifMatch : Maybe String
    }



{-| <p>Get the information about an origin access identity. </p>

__Required Parameters__

* `id` __:__ `String`


-}
getCloudFrontOriginAccessIdentity :
    String
    -> AWS.Request GetCloudFrontOriginAccessIdentityResult
getCloudFrontOriginAccessIdentity id =
    AWS.Http.unsignedRequest
        "GetCloudFrontOriginAccessIdentity"
        "GET"
        ("/2016-11-25/origin-access-identity/cloudfront/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getCloudFrontOriginAccessIdentityResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Get the configuration information about an origin access identity. </p>

__Required Parameters__

* `id` __:__ `String`


-}
getCloudFrontOriginAccessIdentityConfig :
    String
    -> AWS.Request GetCloudFrontOriginAccessIdentityConfigResult
getCloudFrontOriginAccessIdentityConfig id =
    AWS.Http.unsignedRequest
        "GetCloudFrontOriginAccessIdentityConfig"
        "GET"
        ("/2016-11-25/origin-access-identity/cloudfront/" ++ id ++ "/config")
        (AWS.Http.QueryParams
            [
            ]
        )
        getCloudFrontOriginAccessIdentityConfigResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Get the information about a distribution. </p>

__Required Parameters__

* `id` __:__ `String`


-}
getDistribution :
    String
    -> AWS.Request GetDistributionResult
getDistribution id =
    AWS.Http.unsignedRequest
        "GetDistribution"
        "GET"
        ("/2016-11-25/distribution/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getDistributionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Get the configuration information about a distribution. </p>

__Required Parameters__

* `id` __:__ `String`


-}
getDistributionConfig :
    String
    -> AWS.Request GetDistributionConfigResult
getDistributionConfig id =
    AWS.Http.unsignedRequest
        "GetDistributionConfig"
        "GET"
        ("/2016-11-25/distribution/" ++ id ++ "/config")
        (AWS.Http.QueryParams
            [
            ]
        )
        getDistributionConfigResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Get the information about an invalidation. </p>

__Required Parameters__

* `distributionId` __:__ `String`
* `id` __:__ `String`


-}
getInvalidation :
    String
    -> String
    -> AWS.Request GetInvalidationResult
getInvalidation distributionId id =
    AWS.Http.unsignedRequest
        "GetInvalidation"
        "GET"
        ("/2016-11-25/distribution/" ++ distributionId ++ "/invalidation/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getInvalidationResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about a specified RTMP distribution, including the distribution configuration.</p>

__Required Parameters__

* `id` __:__ `String`


-}
getStreamingDistribution :
    String
    -> AWS.Request GetStreamingDistributionResult
getStreamingDistribution id =
    AWS.Http.unsignedRequest
        "GetStreamingDistribution"
        "GET"
        ("/2016-11-25/streaming-distribution/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getStreamingDistributionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Get the configuration information about a streaming distribution. </p>

__Required Parameters__

* `id` __:__ `String`


-}
getStreamingDistributionConfig :
    String
    -> AWS.Request GetStreamingDistributionConfigResult
getStreamingDistributionConfig id =
    AWS.Http.unsignedRequest
        "GetStreamingDistributionConfig"
        "GET"
        ("/2016-11-25/streaming-distribution/" ++ id ++ "/config")
        (AWS.Http.QueryParams
            [
            ]
        )
        getStreamingDistributionConfigResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists origin access identities.</p>

__Required Parameters__



-}
listCloudFrontOriginAccessIdentities :
    (ListCloudFrontOriginAccessIdentitiesOptions -> ListCloudFrontOriginAccessIdentitiesOptions)
    -> AWS.Request ListCloudFrontOriginAccessIdentitiesResult
listCloudFrontOriginAccessIdentities setOptions =
  let
    options = setOptions (ListCloudFrontOriginAccessIdentitiesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCloudFrontOriginAccessIdentities"
        "GET"
        "/2016-11-25/origin-access-identity/cloudfront"
        (AWS.Http.QueryParams
            [
            ]
        )
        listCloudFrontOriginAccessIdentitiesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listCloudFrontOriginAccessIdentities request
-}
type alias ListCloudFrontOriginAccessIdentitiesOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>List distributions. </p>

__Required Parameters__



-}
listDistributions :
    (ListDistributionsOptions -> ListDistributionsOptions)
    -> AWS.Request ListDistributionsResult
listDistributions setOptions =
  let
    options = setOptions (ListDistributionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDistributions"
        "GET"
        "/2016-11-25/distribution"
        (AWS.Http.QueryParams
            [
            ]
        )
        listDistributionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDistributions request
-}
type alias ListDistributionsOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>List the distributions that are associated with a specified AWS WAF web ACL. </p>

__Required Parameters__

* `webACLId` __:__ `String`


-}
listDistributionsByWebACLId :
    String
    -> (ListDistributionsByWebACLIdOptions -> ListDistributionsByWebACLIdOptions)
    -> AWS.Request ListDistributionsByWebACLIdResult
listDistributionsByWebACLId webACLId setOptions =
  let
    options = setOptions (ListDistributionsByWebACLIdOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDistributionsByWebACLId"
        "GET"
        ("/2016-11-25/distributionsByWebACLId/" ++ webACLId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listDistributionsByWebACLIdResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDistributionsByWebACLId request
-}
type alias ListDistributionsByWebACLIdOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>Lists invalidation batches. </p>

__Required Parameters__

* `distributionId` __:__ `String`


-}
listInvalidations :
    String
    -> (ListInvalidationsOptions -> ListInvalidationsOptions)
    -> AWS.Request ListInvalidationsResult
listInvalidations distributionId setOptions =
  let
    options = setOptions (ListInvalidationsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListInvalidations"
        "GET"
        ("/2016-11-25/distribution/" ++ distributionId ++ "/invalidation")
        (AWS.Http.QueryParams
            [
            ]
        )
        listInvalidationsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listInvalidations request
-}
type alias ListInvalidationsOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>List streaming distributions. </p>

__Required Parameters__



-}
listStreamingDistributions :
    (ListStreamingDistributionsOptions -> ListStreamingDistributionsOptions)
    -> AWS.Request ListStreamingDistributionsResult
listStreamingDistributions setOptions =
  let
    options = setOptions (ListStreamingDistributionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListStreamingDistributions"
        "GET"
        "/2016-11-25/streaming-distribution"
        (AWS.Http.QueryParams
            [
            ]
        )
        listStreamingDistributionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listStreamingDistributions request
-}
type alias ListStreamingDistributionsOptions =
    { marker : Maybe String
    , maxItems : Maybe String
    }



{-| <p>List tags for a CloudFront resource.</p>

__Required Parameters__

* `resource` __:__ `String`


-}
listTagsForResource :
    String
    -> AWS.Request ListTagsForResourceResult
listTagsForResource resource =
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "GET"
        "/2016-11-25/tagging"
        (AWS.Http.QueryParams
            [
            ]
        )
        listTagsForResourceResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Add tags to a CloudFront resource.</p>

__Required Parameters__

* `resource` __:__ `String`
* `tags` __:__ `Tags`


-}
tagResource :
    String
    -> Tags
    -> AWS.Request ()
tagResource resource tags =
    AWS.Http.unsignedRequest
        "TagResource"
        "POST"
        "/2016-11-25/tagging?Operation=Tag"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Remove tags from a CloudFront resource.</p>

__Required Parameters__

* `resource` __:__ `String`
* `tagKeys` __:__ `TagKeys`


-}
untagResource :
    String
    -> TagKeys
    -> AWS.Request ()
untagResource resource tagKeys =
    AWS.Http.unsignedRequest
        "UntagResource"
        "POST"
        "/2016-11-25/tagging?Operation=Untag"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Update an origin access identity. </p>

__Required Parameters__

* `cloudFrontOriginAccessIdentityConfig` __:__ `CloudFrontOriginAccessIdentityConfig`
* `id` __:__ `String`


-}
updateCloudFrontOriginAccessIdentity :
    CloudFrontOriginAccessIdentityConfig
    -> String
    -> (UpdateCloudFrontOriginAccessIdentityOptions -> UpdateCloudFrontOriginAccessIdentityOptions)
    -> AWS.Request UpdateCloudFrontOriginAccessIdentityResult
updateCloudFrontOriginAccessIdentity cloudFrontOriginAccessIdentityConfig id setOptions =
  let
    options = setOptions (UpdateCloudFrontOriginAccessIdentityOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateCloudFrontOriginAccessIdentity"
        "PUT"
        ("/2016-11-25/origin-access-identity/cloudfront/" ++ id ++ "/config")
        (AWS.Http.JsonBody
            JE.null
        )
        updateCloudFrontOriginAccessIdentityResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateCloudFrontOriginAccessIdentity request
-}
type alias UpdateCloudFrontOriginAccessIdentityOptions =
    { ifMatch : Maybe String
    }



{-| <p>Update a distribution. </p>

__Required Parameters__

* `distributionConfig` __:__ `DistributionConfig`
* `id` __:__ `String`


-}
updateDistribution :
    DistributionConfig
    -> String
    -> (UpdateDistributionOptions -> UpdateDistributionOptions)
    -> AWS.Request UpdateDistributionResult
updateDistribution distributionConfig id setOptions =
  let
    options = setOptions (UpdateDistributionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDistribution"
        "PUT"
        ("/2016-11-25/distribution/" ++ id ++ "/config")
        (AWS.Http.JsonBody
            JE.null
        )
        updateDistributionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateDistribution request
-}
type alias UpdateDistributionOptions =
    { ifMatch : Maybe String
    }



{-| <p>Update a streaming distribution. </p>

__Required Parameters__

* `streamingDistributionConfig` __:__ `StreamingDistributionConfig`
* `id` __:__ `String`


-}
updateStreamingDistribution :
    StreamingDistributionConfig
    -> String
    -> (UpdateStreamingDistributionOptions -> UpdateStreamingDistributionOptions)
    -> AWS.Request UpdateStreamingDistributionResult
updateStreamingDistribution streamingDistributionConfig id setOptions =
  let
    options = setOptions (UpdateStreamingDistributionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateStreamingDistribution"
        "PUT"
        ("/2016-11-25/streaming-distribution/" ++ id ++ "/config")
        (AWS.Http.JsonBody
            JE.null
        )
        updateStreamingDistributionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateStreamingDistribution request
-}
type alias UpdateStreamingDistributionOptions =
    { ifMatch : Maybe String
    }




{-| <p>Access denied.</p>
-}
type alias AccessDenied =
    { message : Maybe String
    }



accessDeniedDecoder : JD.Decoder AccessDenied
accessDeniedDecoder =
    JDP.decode AccessDenied
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that lists the AWS accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the AWS account number of the trusted signer or <code>self</code> if the signer is the AWS account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's AWS account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias ActiveTrustedSigners =
    { enabled : Bool
    , quantity : Int
    , items : Maybe (List Signer)
    }



activeTrustedSignersDecoder : JD.Decoder ActiveTrustedSigners
activeTrustedSignersDecoder =
    JDP.decode ActiveTrustedSigners
        |> JDP.required "enabled" JD.bool
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list signerDecoder)) Nothing




{-| <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution. </p>
-}
type alias Aliases =
    { quantity : Int
    , items : Maybe (List String)
    }



aliasesDecoder : JD.Decoder Aliases
aliasesDecoder =
    JDP.decode Aliases
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>
-}
type alias AllowedMethods =
    { quantity : Int
    , items : (List Method)
    , cachedMethods : Maybe CachedMethods
    }



allowedMethodsDecoder : JD.Decoder AllowedMethods
allowedMethodsDecoder =
    JDP.decode AllowedMethods
        |> JDP.required "quantity" JD.int
        |> JDP.required "items" (JD.list methodDecoder)
        |> JDP.optional "cachedMethods" (JD.nullable cachedMethodsDecoder) Nothing




{-| undefined
-}
type alias BatchTooLarge =
    { message : Maybe String
    }



batchTooLargeDecoder : JD.Decoder BatchTooLarge
batchTooLargeDecoder =
    JDP.decode BatchTooLarge
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias CNAMEAlreadyExists =
    { message : Maybe String
    }



cNAMEAlreadyExistsDecoder : JD.Decoder CNAMEAlreadyExists
cNAMEAlreadyExistsDecoder =
    JDP.decode CNAMEAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to distribute objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current limit on the number of cache behaviors that you can add to a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't include an empty <code>CacheBehavior</code> element, or CloudFront returns a <code>MalformedXML</code> error.</p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <p>For more information about cache behaviors, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behaviors</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias CacheBehavior =
    { pathPattern : String
    , targetOriginId : String
    , forwardedValues : ForwardedValues
    , trustedSigners : TrustedSigners
    , viewerProtocolPolicy : ViewerProtocolPolicy
    , minTTL : Int
    , allowedMethods : Maybe AllowedMethods
    , smoothStreaming : Maybe Bool
    , defaultTTL : Maybe Int
    , maxTTL : Maybe Int
    , compress : Maybe Bool
    , lambdaFunctionAssociations : Maybe LambdaFunctionAssociations
    }



cacheBehaviorDecoder : JD.Decoder CacheBehavior
cacheBehaviorDecoder =
    JDP.decode CacheBehavior
        |> JDP.required "pathPattern" JD.string
        |> JDP.required "targetOriginId" JD.string
        |> JDP.required "forwardedValues" forwardedValuesDecoder
        |> JDP.required "trustedSigners" trustedSignersDecoder
        |> JDP.required "viewerProtocolPolicy" viewerProtocolPolicyDecoder
        |> JDP.required "minTTL" JD.int
        |> JDP.optional "allowedMethods" (JD.nullable allowedMethodsDecoder) Nothing
        |> JDP.optional "smoothStreaming" (JD.nullable JD.bool) Nothing
        |> JDP.optional "defaultTTL" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxTTL" (JD.nullable JD.int) Nothing
        |> JDP.optional "compress" (JD.nullable JD.bool) Nothing
        |> JDP.optional "lambdaFunctionAssociations" (JD.nullable lambdaFunctionAssociationsDecoder) Nothing




{-| <p>A complex type that contains zero or more <code>CacheBehavior</code> elements. </p>
-}
type alias CacheBehaviors =
    { quantity : Int
    , items : Maybe (List CacheBehavior)
    }



cacheBehaviorsDecoder : JD.Decoder CacheBehaviors
cacheBehaviorsDecoder =
    JDP.decode CacheBehaviors
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list cacheBehaviorDecoder)) Nothing




{-| <p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly. </p>
-}
type alias CachedMethods =
    { quantity : Int
    , items : (List Method)
    }



cachedMethodsDecoder : JD.Decoder CachedMethods
cachedMethodsDecoder =
    JDP.decode CachedMethods
        |> JDP.required "quantity" JD.int
        |> JDP.required "items" (JD.list methodDecoder)




{-| One of

* `CertificateSource_cloudfront`
* `CertificateSource_iam`
* `CertificateSource_acm`

-}
type CertificateSource
    = CertificateSource_cloudfront
    | CertificateSource_iam
    | CertificateSource_acm



certificateSourceDecoder : JD.Decoder CertificateSource
certificateSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "cloudfront" ->
                        JD.succeed CertificateSource_cloudfront

                    "iam" ->
                        JD.succeed CertificateSource_iam

                    "acm" ->
                        JD.succeed CertificateSource_acm


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>CloudFront origin access identity.</p>
-}
type alias CloudFrontOriginAccessIdentity =
    { id : String
    , s3CanonicalUserId : String
    , cloudFrontOriginAccessIdentityConfig : Maybe CloudFrontOriginAccessIdentityConfig
    }



cloudFrontOriginAccessIdentityDecoder : JD.Decoder CloudFrontOriginAccessIdentity
cloudFrontOriginAccessIdentityDecoder =
    JDP.decode CloudFrontOriginAccessIdentity
        |> JDP.required "id" JD.string
        |> JDP.required "s3CanonicalUserId" JD.string
        |> JDP.optional "cloudFrontOriginAccessIdentityConfig" (JD.nullable cloudFrontOriginAccessIdentityConfigDecoder) Nothing




{-| <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
-}
type alias CloudFrontOriginAccessIdentityAlreadyExists =
    { message : Maybe String
    }



cloudFrontOriginAccessIdentityAlreadyExistsDecoder : JD.Decoder CloudFrontOriginAccessIdentityAlreadyExists
cloudFrontOriginAccessIdentityAlreadyExistsDecoder =
    JDP.decode CloudFrontOriginAccessIdentityAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource. </p>
-}
type alias CloudFrontOriginAccessIdentityConfig =
    { callerReference : String
    , comment : String
    }



cloudFrontOriginAccessIdentityConfigDecoder : JD.Decoder CloudFrontOriginAccessIdentityConfig
cloudFrontOriginAccessIdentityConfigDecoder =
    JDP.decode CloudFrontOriginAccessIdentityConfig
        |> JDP.required "callerReference" JD.string
        |> JDP.required "comment" JD.string




{-| undefined
-}
type alias CloudFrontOriginAccessIdentityInUse =
    { message : Maybe String
    }



cloudFrontOriginAccessIdentityInUseDecoder : JD.Decoder CloudFrontOriginAccessIdentityInUse
cloudFrontOriginAccessIdentityInUseDecoder =
    JDP.decode CloudFrontOriginAccessIdentityInUse
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
-}
type alias CloudFrontOriginAccessIdentityList =
    { marker : String
    , nextMarker : Maybe String
    , maxItems : Int
    , isTruncated : Bool
    , quantity : Int
    , items : Maybe (List CloudFrontOriginAccessIdentitySummary)
    }



cloudFrontOriginAccessIdentityListDecoder : JD.Decoder CloudFrontOriginAccessIdentityList
cloudFrontOriginAccessIdentityListDecoder =
    JDP.decode CloudFrontOriginAccessIdentityList
        |> JDP.required "marker" JD.string
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.int
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list cloudFrontOriginAccessIdentitySummaryDecoder)) Nothing




{-| <p>Summary of the information about a CloudFront origin access identity.</p>
-}
type alias CloudFrontOriginAccessIdentitySummary =
    { id : String
    , s3CanonicalUserId : String
    , comment : String
    }



cloudFrontOriginAccessIdentitySummaryDecoder : JD.Decoder CloudFrontOriginAccessIdentitySummary
cloudFrontOriginAccessIdentitySummaryDecoder =
    JDP.decode CloudFrontOriginAccessIdentitySummary
        |> JDP.required "id" JD.string
        |> JDP.required "s3CanonicalUserId" JD.string
        |> JDP.required "comment" JD.string




{-| <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias CookieNames =
    { quantity : Int
    , items : Maybe (List String)
    }



cookieNamesDecoder : JD.Decoder CookieNames
cookieNamesDecoder =
    JDP.decode CookieNames
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias CookiePreference =
    { forward : ItemSelection
    , whitelistedNames : Maybe CookieNames
    }



cookiePreferenceDecoder : JD.Decoder CookiePreference
cookiePreferenceDecoder =
    JDP.decode CookiePreference
        |> JDP.required "forward" itemSelectionDecoder
        |> JDP.optional "whitelistedNames" (JD.nullable cookieNamesDecoder) Nothing




{-| Type of HTTP response from createCloudFrontOriginAccessIdenti
-}
type alias CreateCloudFrontOriginAccessIdentityResult =
    { cloudFrontOriginAccessIdentity : Maybe CloudFrontOriginAccessIdentity
    , location : Maybe String
    , eTag : Maybe String
    }



createCloudFrontOriginAccessIdentityResultDecoder : JD.Decoder CreateCloudFrontOriginAccessIdentityResult
createCloudFrontOriginAccessIdentityResultDecoder =
    JDP.decode CreateCloudFrontOriginAccessIdentityResult
        |> JDP.optional "cloudFrontOriginAccessIdentity" (JD.nullable cloudFrontOriginAccessIdentityDecoder) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDistributi
-}
type alias CreateDistributionResult =
    { distribution : Maybe Distribution
    , location : Maybe String
    , eTag : Maybe String
    }



createDistributionResultDecoder : JD.Decoder CreateDistributionResult
createDistributionResultDecoder =
    JDP.decode CreateDistributionResult
        |> JDP.optional "distribution" (JD.nullable distributionDecoder) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createDistributionWithTa
-}
type alias CreateDistributionWithTagsResult =
    { distribution : Maybe Distribution
    , location : Maybe String
    , eTag : Maybe String
    }



createDistributionWithTagsResultDecoder : JD.Decoder CreateDistributionWithTagsResult
createDistributionWithTagsResultDecoder =
    JDP.decode CreateDistributionWithTagsResult
        |> JDP.optional "distribution" (JD.nullable distributionDecoder) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createInvalidati
-}
type alias CreateInvalidationResult =
    { location : Maybe String
    , invalidation : Maybe Invalidation
    }



createInvalidationResultDecoder : JD.Decoder CreateInvalidationResult
createInvalidationResultDecoder =
    JDP.decode CreateInvalidationResult
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "invalidation" (JD.nullable invalidationDecoder) Nothing




{-| Type of HTTP response from createStreamingDistributi
-}
type alias CreateStreamingDistributionResult =
    { streamingDistribution : Maybe StreamingDistribution
    , location : Maybe String
    , eTag : Maybe String
    }



createStreamingDistributionResultDecoder : JD.Decoder CreateStreamingDistributionResult
createStreamingDistributionResultDecoder =
    JDP.decode CreateStreamingDistributionResult
        |> JDP.optional "streamingDistribution" (JD.nullable streamingDistributionDecoder) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createStreamingDistributionWithTa
-}
type alias CreateStreamingDistributionWithTagsResult =
    { streamingDistribution : Maybe StreamingDistribution
    , location : Maybe String
    , eTag : Maybe String
    }



createStreamingDistributionWithTagsResultDecoder : JD.Decoder CreateStreamingDistributionWithTagsResult
createStreamingDistributionWithTagsResultDecoder =
    JDP.decode CreateStreamingDistributionWithTagsResult
        |> JDP.optional "streamingDistribution" (JD.nullable streamingDistributionDecoder) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer. </p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias CustomErrorResponse =
    { errorCode : Int
    , responsePagePath : Maybe String
    , responseCode : Maybe String
    , errorCachingMinTTL : Maybe Int
    }



customErrorResponseDecoder : JD.Decoder CustomErrorResponse
customErrorResponseDecoder =
    JDP.decode CustomErrorResponse
        |> JDP.required "errorCode" JD.int
        |> JDP.optional "responsePagePath" (JD.nullable JD.string) Nothing
        |> JDP.optional "responseCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCachingMinTTL" (JD.nullable JD.int) Nothing




{-| <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias CustomErrorResponses =
    { quantity : Int
    , items : Maybe (List CustomErrorResponse)
    }



customErrorResponsesDecoder : JD.Decoder CustomErrorResponses
customErrorResponsesDecoder =
    JDP.decode CustomErrorResponses
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list customErrorResponseDecoder)) Nothing




{-| <p>A complex type that contains the list of Custom Headers for each origin. </p>
-}
type alias CustomHeaders =
    { quantity : Int
    , items : Maybe (List OriginCustomHeader)
    }



customHeadersDecoder : JD.Decoder CustomHeaders
customHeadersDecoder =
    JDP.decode CustomHeaders
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list originCustomHeaderDecoder)) Nothing




{-| <p>A customer origin.</p>
-}
type alias CustomOriginConfig =
    { hTTPPort : Int
    , hTTPSPort : Int
    , originProtocolPolicy : OriginProtocolPolicy
    , originSslProtocols : Maybe OriginSslProtocols
    }



customOriginConfigDecoder : JD.Decoder CustomOriginConfig
customOriginConfigDecoder =
    JDP.decode CustomOriginConfig
        |> JDP.required "hTTPPort" JD.int
        |> JDP.required "hTTPSPort" JD.int
        |> JDP.required "originProtocolPolicy" originProtocolPolicyDecoder
        |> JDP.optional "originSslProtocols" (JD.nullable originSslProtocolsDecoder) Nothing




{-| <p>A complex type that describes the default cache behavior if you do not specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
-}
type alias DefaultCacheBehavior =
    { targetOriginId : String
    , forwardedValues : ForwardedValues
    , trustedSigners : TrustedSigners
    , viewerProtocolPolicy : ViewerProtocolPolicy
    , minTTL : Int
    , allowedMethods : Maybe AllowedMethods
    , smoothStreaming : Maybe Bool
    , defaultTTL : Maybe Int
    , maxTTL : Maybe Int
    , compress : Maybe Bool
    , lambdaFunctionAssociations : Maybe LambdaFunctionAssociations
    }



defaultCacheBehaviorDecoder : JD.Decoder DefaultCacheBehavior
defaultCacheBehaviorDecoder =
    JDP.decode DefaultCacheBehavior
        |> JDP.required "targetOriginId" JD.string
        |> JDP.required "forwardedValues" forwardedValuesDecoder
        |> JDP.required "trustedSigners" trustedSignersDecoder
        |> JDP.required "viewerProtocolPolicy" viewerProtocolPolicyDecoder
        |> JDP.required "minTTL" JD.int
        |> JDP.optional "allowedMethods" (JD.nullable allowedMethodsDecoder) Nothing
        |> JDP.optional "smoothStreaming" (JD.nullable JD.bool) Nothing
        |> JDP.optional "defaultTTL" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxTTL" (JD.nullable JD.int) Nothing
        |> JDP.optional "compress" (JD.nullable JD.bool) Nothing
        |> JDP.optional "lambdaFunctionAssociations" (JD.nullable lambdaFunctionAssociationsDecoder) Nothing




{-| <p>The distribution's information.</p>
-}
type alias Distribution =
    { id : String
    , aRN : String
    , status : String
    , lastModifiedTime : Date
    , inProgressInvalidationBatches : Int
    , domainName : String
    , activeTrustedSigners : ActiveTrustedSigners
    , distributionConfig : DistributionConfig
    }



distributionDecoder : JD.Decoder Distribution
distributionDecoder =
    JDP.decode Distribution
        |> JDP.required "id" JD.string
        |> JDP.required "aRN" JD.string
        |> JDP.required "status" JD.string
        |> JDP.required "lastModifiedTime" JDX.date
        |> JDP.required "inProgressInvalidationBatches" JD.int
        |> JDP.required "domainName" JD.string
        |> JDP.required "activeTrustedSigners" activeTrustedSignersDecoder
        |> JDP.required "distributionConfig" distributionConfigDecoder




{-| <p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>
-}
type alias DistributionAlreadyExists =
    { message : Maybe String
    }



distributionAlreadyExistsDecoder : JD.Decoder DistributionAlreadyExists
distributionAlreadyExistsDecoder =
    JDP.decode DistributionAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A distribution configuration.</p>
-}
type alias DistributionConfig =
    { callerReference : String
    , aliases : Maybe Aliases
    , defaultRootObject : Maybe String
    , origins : Origins
    , defaultCacheBehavior : DefaultCacheBehavior
    , cacheBehaviors : Maybe CacheBehaviors
    , customErrorResponses : Maybe CustomErrorResponses
    , comment : String
    , logging : Maybe LoggingConfig
    , priceClass : Maybe PriceClass
    , enabled : Bool
    , viewerCertificate : Maybe ViewerCertificate
    , restrictions : Maybe Restrictions
    , webACLId : Maybe String
    , httpVersion : Maybe HttpVersion
    , isIPV6Enabled : Maybe Bool
    }



distributionConfigDecoder : JD.Decoder DistributionConfig
distributionConfigDecoder =
    JDP.decode DistributionConfig
        |> JDP.required "callerReference" JD.string
        |> JDP.optional "aliases" (JD.nullable aliasesDecoder) Nothing
        |> JDP.optional "defaultRootObject" (JD.nullable JD.string) Nothing
        |> JDP.required "origins" originsDecoder
        |> JDP.required "defaultCacheBehavior" defaultCacheBehaviorDecoder
        |> JDP.optional "cacheBehaviors" (JD.nullable cacheBehaviorsDecoder) Nothing
        |> JDP.optional "customErrorResponses" (JD.nullable customErrorResponsesDecoder) Nothing
        |> JDP.required "comment" JD.string
        |> JDP.optional "logging" (JD.nullable loggingConfigDecoder) Nothing
        |> JDP.optional "priceClass" (JD.nullable priceClassDecoder) Nothing
        |> JDP.required "enabled" JD.bool
        |> JDP.optional "viewerCertificate" (JD.nullable viewerCertificateDecoder) Nothing
        |> JDP.optional "restrictions" (JD.nullable restrictionsDecoder) Nothing
        |> JDP.optional "webACLId" (JD.nullable JD.string) Nothing
        |> JDP.optional "httpVersion" (JD.nullable httpVersionDecoder) Nothing
        |> JDP.optional "isIPV6Enabled" (JD.nullable JD.bool) Nothing




{-| <p>A distribution Configuration and a list of tags to be associated with the distribution.</p>
-}
type alias DistributionConfigWithTags =
    { distributionConfig : DistributionConfig
    , tags : Tags
    }



distributionConfigWithTagsDecoder : JD.Decoder DistributionConfigWithTags
distributionConfigWithTagsDecoder =
    JDP.decode DistributionConfigWithTags
        |> JDP.required "distributionConfig" distributionConfigDecoder
        |> JDP.required "tags" tagsDecoder




{-| <p>A distribution list.</p>
-}
type alias DistributionList =
    { marker : String
    , nextMarker : Maybe String
    , maxItems : Int
    , isTruncated : Bool
    , quantity : Int
    , items : Maybe (List DistributionSummary)
    }



distributionListDecoder : JD.Decoder DistributionList
distributionListDecoder =
    JDP.decode DistributionList
        |> JDP.required "marker" JD.string
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.int
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list distributionSummaryDecoder)) Nothing




{-| undefined
-}
type alias DistributionNotDisabled =
    { message : Maybe String
    }



distributionNotDisabledDecoder : JD.Decoder DistributionNotDisabled
distributionNotDisabledDecoder =
    JDP.decode DistributionNotDisabled
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A summary of the information about a CloudFront distribution.</p>
-}
type alias DistributionSummary =
    { id : String
    , aRN : String
    , status : String
    , lastModifiedTime : Date
    , domainName : String
    , aliases : Aliases
    , origins : Origins
    , defaultCacheBehavior : DefaultCacheBehavior
    , cacheBehaviors : CacheBehaviors
    , customErrorResponses : CustomErrorResponses
    , comment : String
    , priceClass : PriceClass
    , enabled : Bool
    , viewerCertificate : ViewerCertificate
    , restrictions : Restrictions
    , webACLId : String
    , httpVersion : HttpVersion
    , isIPV6Enabled : Bool
    }



distributionSummaryDecoder : JD.Decoder DistributionSummary
distributionSummaryDecoder =
    JDP.decode DistributionSummary
        |> JDP.required "id" JD.string
        |> JDP.required "aRN" JD.string
        |> JDP.required "status" JD.string
        |> JDP.required "lastModifiedTime" JDX.date
        |> JDP.required "domainName" JD.string
        |> JDP.required "aliases" aliasesDecoder
        |> JDP.required "origins" originsDecoder
        |> JDP.required "defaultCacheBehavior" defaultCacheBehaviorDecoder
        |> JDP.required "cacheBehaviors" cacheBehaviorsDecoder
        |> JDP.required "customErrorResponses" customErrorResponsesDecoder
        |> JDP.required "comment" JD.string
        |> JDP.required "priceClass" priceClassDecoder
        |> JDP.required "enabled" JD.bool
        |> JDP.required "viewerCertificate" viewerCertificateDecoder
        |> JDP.required "restrictions" restrictionsDecoder
        |> JDP.required "webACLId" JD.string
        |> JDP.required "httpVersion" httpVersionDecoder
        |> JDP.required "isIPV6Enabled" JD.bool




{-| One of

* `EventType_viewer-request`
* `EventType_viewer-response`
* `EventType_origin-request`
* `EventType_origin-response`

-}
type EventType
    = EventType_viewer_request
    | EventType_viewer_response
    | EventType_origin_request
    | EventType_origin_response



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "viewer_request" ->
                        JD.succeed EventType_viewer_request

                    "viewer_response" ->
                        JD.succeed EventType_viewer_response

                    "origin_request" ->
                        JD.succeed EventType_origin_request

                    "origin_response" ->
                        JD.succeed EventType_origin_response


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A complex type that specifies how CloudFront handles query strings and cookies.</p>
-}
type alias ForwardedValues =
    { queryString : Bool
    , cookies : CookiePreference
    , headers : Maybe Headers
    , queryStringCacheKeys : Maybe QueryStringCacheKeys
    }



forwardedValuesDecoder : JD.Decoder ForwardedValues
forwardedValuesDecoder =
    JDP.decode ForwardedValues
        |> JDP.required "queryString" JD.bool
        |> JDP.required "cookies" cookiePreferenceDecoder
        |> JDP.optional "headers" (JD.nullable headersDecoder) Nothing
        |> JDP.optional "queryStringCacheKeys" (JD.nullable queryStringCacheKeysDecoder) Nothing




{-| <p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>
-}
type alias GeoRestriction =
    { restrictionType : GeoRestrictionType
    , quantity : Int
    , items : Maybe (List String)
    }



geoRestrictionDecoder : JD.Decoder GeoRestriction
geoRestrictionDecoder =
    JDP.decode GeoRestriction
        |> JDP.required "restrictionType" geoRestrictionTypeDecoder
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `GeoRestrictionType_blacklist`
* `GeoRestrictionType_whitelist`
* `GeoRestrictionType_none`

-}
type GeoRestrictionType
    = GeoRestrictionType_blacklist
    | GeoRestrictionType_whitelist
    | GeoRestrictionType_none



geoRestrictionTypeDecoder : JD.Decoder GeoRestrictionType
geoRestrictionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "blacklist" ->
                        JD.succeed GeoRestrictionType_blacklist

                    "whitelist" ->
                        JD.succeed GeoRestrictionType_whitelist

                    "none" ->
                        JD.succeed GeoRestrictionType_none


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getCloudFrontOriginAccessIdentityConf
-}
type alias GetCloudFrontOriginAccessIdentityConfigResult =
    { cloudFrontOriginAccessIdentityConfig : Maybe CloudFrontOriginAccessIdentityConfig
    , eTag : Maybe String
    }



getCloudFrontOriginAccessIdentityConfigResultDecoder : JD.Decoder GetCloudFrontOriginAccessIdentityConfigResult
getCloudFrontOriginAccessIdentityConfigResultDecoder =
    JDP.decode GetCloudFrontOriginAccessIdentityConfigResult
        |> JDP.optional "cloudFrontOriginAccessIdentityConfig" (JD.nullable cloudFrontOriginAccessIdentityConfigDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getCloudFrontOriginAccessIdenti
-}
type alias GetCloudFrontOriginAccessIdentityResult =
    { cloudFrontOriginAccessIdentity : Maybe CloudFrontOriginAccessIdentity
    , eTag : Maybe String
    }



getCloudFrontOriginAccessIdentityResultDecoder : JD.Decoder GetCloudFrontOriginAccessIdentityResult
getCloudFrontOriginAccessIdentityResultDecoder =
    JDP.decode GetCloudFrontOriginAccessIdentityResult
        |> JDP.optional "cloudFrontOriginAccessIdentity" (JD.nullable cloudFrontOriginAccessIdentityDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getDistributionConf
-}
type alias GetDistributionConfigResult =
    { distributionConfig : Maybe DistributionConfig
    , eTag : Maybe String
    }



getDistributionConfigResultDecoder : JD.Decoder GetDistributionConfigResult
getDistributionConfigResultDecoder =
    JDP.decode GetDistributionConfigResult
        |> JDP.optional "distributionConfig" (JD.nullable distributionConfigDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getDistributi
-}
type alias GetDistributionResult =
    { distribution : Maybe Distribution
    , eTag : Maybe String
    }



getDistributionResultDecoder : JD.Decoder GetDistributionResult
getDistributionResultDecoder =
    JDP.decode GetDistributionResult
        |> JDP.optional "distribution" (JD.nullable distributionDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getInvalidati
-}
type alias GetInvalidationResult =
    { invalidation : Maybe Invalidation
    }



getInvalidationResultDecoder : JD.Decoder GetInvalidationResult
getInvalidationResultDecoder =
    JDP.decode GetInvalidationResult
        |> JDP.optional "invalidation" (JD.nullable invalidationDecoder) Nothing




{-| Type of HTTP response from getStreamingDistributionConf
-}
type alias GetStreamingDistributionConfigResult =
    { streamingDistributionConfig : Maybe StreamingDistributionConfig
    , eTag : Maybe String
    }



getStreamingDistributionConfigResultDecoder : JD.Decoder GetStreamingDistributionConfigResult
getStreamingDistributionConfigResultDecoder =
    JDP.decode GetStreamingDistributionConfigResult
        |> JDP.optional "streamingDistributionConfig" (JD.nullable streamingDistributionConfigDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getStreamingDistributi
-}
type alias GetStreamingDistributionResult =
    { streamingDistribution : Maybe StreamingDistribution
    , eTag : Maybe String
    }



getStreamingDistributionResultDecoder : JD.Decoder GetStreamingDistributionResult
getStreamingDistributionResultDecoder =
    JDP.decode GetStreamingDistributionResult
        |> JDP.optional "streamingDistribution" (JD.nullable streamingDistributionDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| <p>A complex type that specifies the headers that you want CloudFront to forward to the origin for this cache behavior.</p> <p>For the headers that you specify, CloudFront also caches separate versions of a specified object based on the header values in viewer requests. For example, suppose viewer requests for <code>logo.jpg</code> contain a custom <code>Product</code> header that has a value of either <code>Acme</code> or <code>Apex</code>, and you configure CloudFront to cache your content based on values in the <code>Product</code> header. CloudFront forwards the <code>Product</code> header to the origin and caches the response from the origin once for each header value. For more information about caching based on header values, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html">How CloudFront Forwards and Caches Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias Headers =
    { quantity : Int
    , items : Maybe (List String)
    }



headersDecoder : JD.Decoder Headers
headersDecoder =
    JDP.decode Headers
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `HttpVersion_http1.1`
* `HttpVersion_http2`

-}
type HttpVersion
    = HttpVersion_http1_1
    | HttpVersion_http2



httpVersionDecoder : JD.Decoder HttpVersion
httpVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "http1_1" ->
                        JD.succeed HttpVersion_http1_1

                    "http2" ->
                        JD.succeed HttpVersion_http2


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Origin and <code>CallerReference</code> cannot be updated. </p>
-}
type alias IllegalUpdate =
    { message : Maybe String
    }



illegalUpdateDecoder : JD.Decoder IllegalUpdate
illegalUpdateDecoder =
    JDP.decode IllegalUpdate
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The value of <code>Quantity</code> and the size of <code>Items</code> do not match.</p>
-}
type alias InconsistentQuantities =
    { message : Maybe String
    }



inconsistentQuantitiesDecoder : JD.Decoder InconsistentQuantities
inconsistentQuantitiesDecoder =
    JDP.decode InconsistentQuantities
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The argument is invalid.</p>
-}
type alias InvalidArgument =
    { message : Maybe String
    }



invalidArgumentDecoder : JD.Decoder InvalidArgument
invalidArgumentDecoder =
    JDP.decode InvalidArgument
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The default root object file name is too big or contains an invalid character.</p>
-}
type alias InvalidDefaultRootObject =
    { message : Maybe String
    }



invalidDefaultRootObjectDecoder : JD.Decoder InvalidDefaultRootObject
invalidDefaultRootObjectDecoder =
    JDP.decode InvalidDefaultRootObject
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidErrorCode =
    { message : Maybe String
    }



invalidErrorCodeDecoder : JD.Decoder InvalidErrorCode
invalidErrorCodeDecoder =
    JDP.decode InvalidErrorCode
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code> list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>
-}
type alias InvalidForwardCookies =
    { message : Maybe String
    }



invalidForwardCookiesDecoder : JD.Decoder InvalidForwardCookies
invalidForwardCookiesDecoder =
    JDP.decode InvalidForwardCookies
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidGeoRestrictionParameter =
    { message : Maybe String
    }



invalidGeoRestrictionParameterDecoder : JD.Decoder InvalidGeoRestrictionParameter
invalidGeoRestrictionParameterDecoder =
    JDP.decode InvalidGeoRestrictionParameter
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidHeadersForS3Origin =
    { message : Maybe String
    }



invalidHeadersForS3OriginDecoder : JD.Decoder InvalidHeadersForS3Origin
invalidHeadersForS3OriginDecoder =
    JDP.decode InvalidHeadersForS3Origin
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The <code>If-Match</code> version is missing or not valid for the distribution.</p>
-}
type alias InvalidIfMatchVersion =
    { message : Maybe String
    }



invalidIfMatchVersionDecoder : JD.Decoder InvalidIfMatchVersion
invalidIfMatchVersionDecoder =
    JDP.decode InvalidIfMatchVersion
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified Lambda function association is invalid.</p>
-}
type alias InvalidLambdaFunctionAssociation =
    { message : Maybe String
    }



invalidLambdaFunctionAssociationDecoder : JD.Decoder InvalidLambdaFunctionAssociation
invalidLambdaFunctionAssociationDecoder =
    JDP.decode InvalidLambdaFunctionAssociation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidLocationCode =
    { message : Maybe String
    }



invalidLocationCodeDecoder : JD.Decoder InvalidLocationCode
invalidLocationCodeDecoder =
    JDP.decode InvalidLocationCode
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidMinimumProtocolVersion =
    { message : Maybe String
    }



invalidMinimumProtocolVersionDecoder : JD.Decoder InvalidMinimumProtocolVersion
invalidMinimumProtocolVersionDecoder =
    JDP.decode InvalidMinimumProtocolVersion
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>
-}
type alias InvalidOrigin =
    { message : Maybe String
    }



invalidOriginDecoder : JD.Decoder InvalidOrigin
invalidOriginDecoder =
    JDP.decode InvalidOrigin
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The origin access identity is not valid or doesn't exist.</p>
-}
type alias InvalidOriginAccessIdentity =
    { message : Maybe String
    }



invalidOriginAccessIdentityDecoder : JD.Decoder InvalidOriginAccessIdentity
invalidOriginAccessIdentityDecoder =
    JDP.decode InvalidOriginAccessIdentity
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).</p>
-}
type alias InvalidProtocolSettings =
    { message : Maybe String
    }



invalidProtocolSettingsDecoder : JD.Decoder InvalidProtocolSettings
invalidProtocolSettingsDecoder =
    JDP.decode InvalidProtocolSettings
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidQueryStringParameters =
    { message : Maybe String
    }



invalidQueryStringParametersDecoder : JD.Decoder InvalidQueryStringParameters
invalidQueryStringParametersDecoder =
    JDP.decode InvalidQueryStringParameters
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>
-}
type alias InvalidRelativePath =
    { message : Maybe String
    }



invalidRelativePathDecoder : JD.Decoder InvalidRelativePath
invalidRelativePathDecoder =
    JDP.decode InvalidRelativePath
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the <code>RequiredProtocols</code> element from your distribution configuration.</p>
-}
type alias InvalidRequiredProtocol =
    { message : Maybe String
    }



invalidRequiredProtocolDecoder : JD.Decoder InvalidRequiredProtocol
invalidRequiredProtocolDecoder =
    JDP.decode InvalidRequiredProtocol
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidResponseCode =
    { message : Maybe String
    }



invalidResponseCodeDecoder : JD.Decoder InvalidResponseCode
invalidResponseCodeDecoder =
    JDP.decode InvalidResponseCode
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidTTLOrder =
    { message : Maybe String
    }



invalidTTLOrderDecoder : JD.Decoder InvalidTTLOrder
invalidTTLOrderDecoder =
    JDP.decode InvalidTTLOrder
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidTagging =
    { message : Maybe String
    }



invalidTaggingDecoder : JD.Decoder InvalidTagging
invalidTaggingDecoder =
    JDP.decode InvalidTagging
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidViewerCertificate =
    { message : Maybe String
    }



invalidViewerCertificateDecoder : JD.Decoder InvalidViewerCertificate
invalidViewerCertificateDecoder =
    JDP.decode InvalidViewerCertificate
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidWebACLId =
    { message : Maybe String
    }



invalidWebACLIdDecoder : JD.Decoder InvalidWebACLId
invalidWebACLIdDecoder =
    JDP.decode InvalidWebACLId
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An invalidation. </p>
-}
type alias Invalidation =
    { id : String
    , status : String
    , createTime : Date
    , invalidationBatch : InvalidationBatch
    }



invalidationDecoder : JD.Decoder Invalidation
invalidationDecoder =
    JDP.decode Invalidation
        |> JDP.required "id" JD.string
        |> JDP.required "status" JD.string
        |> JDP.required "createTime" JDX.date
        |> JDP.required "invalidationBatch" invalidationBatchDecoder




{-| <p>An invalidation batch.</p>
-}
type alias InvalidationBatch =
    { paths : Paths
    , callerReference : String
    }



invalidationBatchDecoder : JD.Decoder InvalidationBatch
invalidationBatchDecoder =
    JDP.decode InvalidationBatch
        |> JDP.required "paths" pathsDecoder
        |> JDP.required "callerReference" JD.string




{-| <p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
-}
type alias InvalidationList =
    { marker : String
    , nextMarker : Maybe String
    , maxItems : Int
    , isTruncated : Bool
    , quantity : Int
    , items : Maybe (List InvalidationSummary)
    }



invalidationListDecoder : JD.Decoder InvalidationList
invalidationListDecoder =
    JDP.decode InvalidationList
        |> JDP.required "marker" JD.string
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.int
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list invalidationSummaryDecoder)) Nothing




{-| <p>A summary of an invalidation request.</p>
-}
type alias InvalidationSummary =
    { id : String
    , createTime : Date
    , status : String
    }



invalidationSummaryDecoder : JD.Decoder InvalidationSummary
invalidationSummaryDecoder =
    JDP.decode InvalidationSummary
        |> JDP.required "id" JD.string
        |> JDP.required "createTime" JDX.date
        |> JDP.required "status" JD.string




{-| One of

* `ItemSelection_none`
* `ItemSelection_whitelist`
* `ItemSelection_all`

-}
type ItemSelection
    = ItemSelection_none
    | ItemSelection_whitelist
    | ItemSelection_all



itemSelectionDecoder : JD.Decoder ItemSelection
itemSelectionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed ItemSelection_none

                    "whitelist" ->
                        JD.succeed ItemSelection_whitelist

                    "all" ->
                        JD.succeed ItemSelection_all


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A complex type that lists the active CloudFront key pairs, if any, that are associated with <code>AwsAccountNumber</code>. </p> <p>For more information, see <a>ActiveTrustedSigners</a>.</p>
-}
type alias KeyPairIds =
    { quantity : Int
    , items : Maybe (List String)
    }



keyPairIdsDecoder : JD.Decoder KeyPairIds
keyPairIdsDecoder =
    JDP.decode KeyPairIds
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>A complex type that contains a Lambda function association.</p>
-}
type alias LambdaFunctionAssociation =
    { lambdaFunctionARN : Maybe String
    , eventType : Maybe EventType
    }



lambdaFunctionAssociationDecoder : JD.Decoder LambdaFunctionAssociation
lambdaFunctionAssociationDecoder =
    JDP.decode LambdaFunctionAssociation
        |> JDP.optional "lambdaFunctionARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventType" (JD.nullable eventTypeDecoder) Nothing




{-| <p>A complex type that specifies a list of Lambda functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with the Lambda function only once.</p> <p>If you don't want to invoke any Lambda functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>. </p>
-}
type alias LambdaFunctionAssociations =
    { quantity : Int
    , items : Maybe (List LambdaFunctionAssociation)
    }



lambdaFunctionAssociationsDecoder : JD.Decoder LambdaFunctionAssociations
lambdaFunctionAssociationsDecoder =
    JDP.decode LambdaFunctionAssociations
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list lambdaFunctionAssociationDecoder)) Nothing




{-| Type of HTTP response from listCloudFrontOriginAccessIdentiti
-}
type alias ListCloudFrontOriginAccessIdentitiesResult =
    { cloudFrontOriginAccessIdentityList : Maybe CloudFrontOriginAccessIdentityList
    }



listCloudFrontOriginAccessIdentitiesResultDecoder : JD.Decoder ListCloudFrontOriginAccessIdentitiesResult
listCloudFrontOriginAccessIdentitiesResultDecoder =
    JDP.decode ListCloudFrontOriginAccessIdentitiesResult
        |> JDP.optional "cloudFrontOriginAccessIdentityList" (JD.nullable cloudFrontOriginAccessIdentityListDecoder) Nothing




{-| Type of HTTP response from listDistributionsByWebACL
-}
type alias ListDistributionsByWebACLIdResult =
    { distributionList : Maybe DistributionList
    }



listDistributionsByWebACLIdResultDecoder : JD.Decoder ListDistributionsByWebACLIdResult
listDistributionsByWebACLIdResultDecoder =
    JDP.decode ListDistributionsByWebACLIdResult
        |> JDP.optional "distributionList" (JD.nullable distributionListDecoder) Nothing




{-| Type of HTTP response from listDistributio
-}
type alias ListDistributionsResult =
    { distributionList : Maybe DistributionList
    }



listDistributionsResultDecoder : JD.Decoder ListDistributionsResult
listDistributionsResultDecoder =
    JDP.decode ListDistributionsResult
        |> JDP.optional "distributionList" (JD.nullable distributionListDecoder) Nothing




{-| Type of HTTP response from listInvalidatio
-}
type alias ListInvalidationsResult =
    { invalidationList : Maybe InvalidationList
    }



listInvalidationsResultDecoder : JD.Decoder ListInvalidationsResult
listInvalidationsResultDecoder =
    JDP.decode ListInvalidationsResult
        |> JDP.optional "invalidationList" (JD.nullable invalidationListDecoder) Nothing




{-| Type of HTTP response from listStreamingDistributio
-}
type alias ListStreamingDistributionsResult =
    { streamingDistributionList : Maybe StreamingDistributionList
    }



listStreamingDistributionsResultDecoder : JD.Decoder ListStreamingDistributionsResult
listStreamingDistributionsResultDecoder =
    JDP.decode ListStreamingDistributionsResult
        |> JDP.optional "streamingDistributionList" (JD.nullable streamingDistributionListDecoder) Nothing




{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceResult =
    { tags : Tags
    }



listTagsForResourceResultDecoder : JD.Decoder ListTagsForResourceResult
listTagsForResourceResultDecoder =
    JDP.decode ListTagsForResourceResult
        |> JDP.required "tags" tagsDecoder




{-| <p>A complex type that controls whether access logs are written for the distribution.</p>
-}
type alias LoggingConfig =
    { enabled : Bool
    , includeCookies : Bool
    , bucket : String
    , prefix : String
    }



loggingConfigDecoder : JD.Decoder LoggingConfig
loggingConfigDecoder =
    JDP.decode LoggingConfig
        |> JDP.required "enabled" JD.bool
        |> JDP.required "includeCookies" JD.bool
        |> JDP.required "bucket" JD.string
        |> JDP.required "prefix" JD.string




{-| One of

* `Method_GET`
* `Method_HEAD`
* `Method_POST`
* `Method_PUT`
* `Method_PATCH`
* `Method_OPTIONS`
* `Method_DELETE`

-}
type Method
    = Method_GET
    | Method_HEAD
    | Method_POST
    | Method_PUT
    | Method_PATCH
    | Method_OPTIONS
    | Method_DELETE



methodDecoder : JD.Decoder Method
methodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GET" ->
                        JD.succeed Method_GET

                    "HEAD" ->
                        JD.succeed Method_HEAD

                    "POST" ->
                        JD.succeed Method_POST

                    "PUT" ->
                        JD.succeed Method_PUT

                    "PATCH" ->
                        JD.succeed Method_PATCH

                    "OPTIONS" ->
                        JD.succeed Method_OPTIONS

                    "DELETE" ->
                        JD.succeed Method_DELETE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `MinimumProtocolVersion_SSLv3`
* `MinimumProtocolVersion_TLSv1`

-}
type MinimumProtocolVersion
    = MinimumProtocolVersion_SSLv3
    | MinimumProtocolVersion_TLSv1



minimumProtocolVersionDecoder : JD.Decoder MinimumProtocolVersion
minimumProtocolVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SSLv3" ->
                        JD.succeed MinimumProtocolVersion_SSLv3

                    "TLSv1" ->
                        JD.succeed MinimumProtocolVersion_TLSv1


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>This operation requires a body. Ensure that the body is present and the Content-Type header is set.</p>
-}
type alias MissingBody =
    { message : Maybe String
    }



missingBodyDecoder : JD.Decoder MissingBody
missingBodyDecoder =
    JDP.decode MissingBody
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified origin access identity does not exist.</p>
-}
type alias NoSuchCloudFrontOriginAccessIdentity =
    { message : Maybe String
    }



noSuchCloudFrontOriginAccessIdentityDecoder : JD.Decoder NoSuchCloudFrontOriginAccessIdentity
noSuchCloudFrontOriginAccessIdentityDecoder =
    JDP.decode NoSuchCloudFrontOriginAccessIdentity
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified distribution does not exist.</p>
-}
type alias NoSuchDistribution =
    { message : Maybe String
    }



noSuchDistributionDecoder : JD.Decoder NoSuchDistribution
noSuchDistributionDecoder =
    JDP.decode NoSuchDistribution
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified invalidation does not exist.</p>
-}
type alias NoSuchInvalidation =
    { message : Maybe String
    }



noSuchInvalidationDecoder : JD.Decoder NoSuchInvalidation
noSuchInvalidationDecoder =
    JDP.decode NoSuchInvalidation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>No origin exists with the specified <code>Origin Id</code>. </p>
-}
type alias NoSuchOrigin =
    { message : Maybe String
    }



noSuchOriginDecoder : JD.Decoder NoSuchOrigin
noSuchOriginDecoder =
    JDP.decode NoSuchOrigin
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias NoSuchResource =
    { message : Maybe String
    }



noSuchResourceDecoder : JD.Decoder NoSuchResource
noSuchResourceDecoder =
    JDP.decode NoSuchResource
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified streaming distribution does not exist.</p>
-}
type alias NoSuchStreamingDistribution =
    { message : Maybe String
    }



noSuchStreamingDistributionDecoder : JD.Decoder NoSuchStreamingDistribution
noSuchStreamingDistributionDecoder =
    JDP.decode NoSuchStreamingDistribution
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that describes the Amazon S3 bucket or the HTTP server (for example, a web server) from which CloudFront gets your files. You must create at least one origin.</p> <p>For the current limit on the number of origins that you can create for a distribution, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront">Amazon CloudFront Limits</a> in the <i>AWS General Reference</i>.</p>
-}
type alias Origin =
    { id : String
    , domainName : String
    , originPath : Maybe String
    , customHeaders : Maybe CustomHeaders
    , s3OriginConfig : Maybe S3OriginConfig
    , customOriginConfig : Maybe CustomOriginConfig
    }



originDecoder : JD.Decoder Origin
originDecoder =
    JDP.decode Origin
        |> JDP.required "id" JD.string
        |> JDP.required "domainName" JD.string
        |> JDP.optional "originPath" (JD.nullable JD.string) Nothing
        |> JDP.optional "customHeaders" (JD.nullable customHeadersDecoder) Nothing
        |> JDP.optional "s3OriginConfig" (JD.nullable s3OriginConfigDecoder) Nothing
        |> JDP.optional "customOriginConfig" (JD.nullable customOriginConfigDecoder) Nothing




{-| <p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution. </p>
-}
type alias OriginCustomHeader =
    { headerName : String
    , headerValue : String
    }



originCustomHeaderDecoder : JD.Decoder OriginCustomHeader
originCustomHeaderDecoder =
    JDP.decode OriginCustomHeader
        |> JDP.required "headerName" JD.string
        |> JDP.required "headerValue" JD.string




{-| One of

* `OriginProtocolPolicy_http-only`
* `OriginProtocolPolicy_match-viewer`
* `OriginProtocolPolicy_https-only`

-}
type OriginProtocolPolicy
    = OriginProtocolPolicy_http_only
    | OriginProtocolPolicy_match_viewer
    | OriginProtocolPolicy_https_only



originProtocolPolicyDecoder : JD.Decoder OriginProtocolPolicy
originProtocolPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "http_only" ->
                        JD.succeed OriginProtocolPolicy_http_only

                    "match_viewer" ->
                        JD.succeed OriginProtocolPolicy_match_viewer

                    "https_only" ->
                        JD.succeed OriginProtocolPolicy_https_only


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin. </p>
-}
type alias OriginSslProtocols =
    { quantity : Int
    , items : (List SslProtocol)
    }



originSslProtocolsDecoder : JD.Decoder OriginSslProtocols
originSslProtocolsDecoder =
    JDP.decode OriginSslProtocols
        |> JDP.required "quantity" JD.int
        |> JDP.required "items" (JD.list sslProtocolDecoder)




{-| <p>A complex type that contains information about origins for this distribution. </p>
-}
type alias Origins =
    { quantity : Int
    , items : Maybe (List Origin)
    }



originsDecoder : JD.Decoder Origins
originsDecoder =
    JDP.decode Origins
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list originDecoder)) Nothing




{-| <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>. </p>
-}
type alias Paths =
    { quantity : Int
    , items : Maybe (List String)
    }



pathsDecoder : JD.Decoder Paths
pathsDecoder =
    JDP.decode Paths
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The precondition given in one or more of the request-header fields evaluated to <code>false</code>. </p>
-}
type alias PreconditionFailed =
    { message : Maybe String
    }



preconditionFailedDecoder : JD.Decoder PreconditionFailed
preconditionFailedDecoder =
    JDP.decode PreconditionFailed
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `PriceClass_PriceClass_100`
* `PriceClass_PriceClass_200`
* `PriceClass_PriceClass_All`

-}
type PriceClass
    = PriceClass_PriceClass_100
    | PriceClass_PriceClass_200
    | PriceClass_PriceClass_All



priceClassDecoder : JD.Decoder PriceClass
priceClassDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PriceClass_100" ->
                        JD.succeed PriceClass_PriceClass_100

                    "PriceClass_200" ->
                        JD.succeed PriceClass_PriceClass_200

                    "PriceClass_All" ->
                        JD.succeed PriceClass_PriceClass_All


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias QueryStringCacheKeys =
    { quantity : Int
    , items : Maybe (List String)
    }



queryStringCacheKeysDecoder : JD.Decoder QueryStringCacheKeys
queryStringCacheKeysDecoder =
    JDP.decode QueryStringCacheKeys
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>
-}
type alias Restrictions =
    { geoRestriction : GeoRestriction
    }



restrictionsDecoder : JD.Decoder Restrictions
restrictionsDecoder =
    JDP.decode Restrictions
        |> JDP.required "geoRestriction" geoRestrictionDecoder




{-| <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
-}
type alias S3Origin =
    { domainName : String
    , originAccessIdentity : String
    }



s3OriginDecoder : JD.Decoder S3Origin
s3OriginDecoder =
    JDP.decode S3Origin
        |> JDP.required "domainName" JD.string
        |> JDP.required "originAccessIdentity" JD.string




{-| <p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin, use the <code>CustomOriginConfig</code> element instead.</p>
-}
type alias S3OriginConfig =
    { originAccessIdentity : String
    }



s3OriginConfigDecoder : JD.Decoder S3OriginConfig
s3OriginConfigDecoder =
    JDP.decode S3OriginConfig
        |> JDP.required "originAccessIdentity" JD.string




{-| One of

* `SSLSupportMethod_sni-only`
* `SSLSupportMethod_vip`

-}
type SSLSupportMethod
    = SSLSupportMethod_sni_only
    | SSLSupportMethod_vip



sSLSupportMethodDecoder : JD.Decoder SSLSupportMethod
sSLSupportMethodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "sni_only" ->
                        JD.succeed SSLSupportMethod_sni_only

                    "vip" ->
                        JD.succeed SSLSupportMethod_vip


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A complex type that lists the AWS accounts that were included in the <code>TrustedSigners</code> complex type, as well as their active CloudFront key pair IDs, if any. </p>
-}
type alias Signer =
    { awsAccountNumber : Maybe String
    , keyPairIds : Maybe KeyPairIds
    }



signerDecoder : JD.Decoder Signer
signerDecoder =
    JDP.decode Signer
        |> JDP.optional "awsAccountNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyPairIds" (JD.nullable keyPairIdsDecoder) Nothing




{-| One of

* `SslProtocol_SSLv3`
* `SslProtocol_TLSv1`
* `SslProtocol_TLSv1.1`
* `SslProtocol_TLSv1.2`

-}
type SslProtocol
    = SslProtocol_SSLv3
    | SslProtocol_TLSv1
    | SslProtocol_TLSv1_1
    | SslProtocol_TLSv1_2



sslProtocolDecoder : JD.Decoder SslProtocol
sslProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SSLv3" ->
                        JD.succeed SslProtocol_SSLv3

                    "TLSv1" ->
                        JD.succeed SslProtocol_TLSv1

                    "TLSv1_1" ->
                        JD.succeed SslProtocol_TLSv1_1

                    "TLSv1_2" ->
                        JD.succeed SslProtocol_TLSv1_2


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A streaming distribution. </p>
-}
type alias StreamingDistribution =
    { id : String
    , aRN : String
    , status : String
    , lastModifiedTime : Maybe Date
    , domainName : String
    , activeTrustedSigners : ActiveTrustedSigners
    , streamingDistributionConfig : StreamingDistributionConfig
    }



streamingDistributionDecoder : JD.Decoder StreamingDistribution
streamingDistributionDecoder =
    JDP.decode StreamingDistribution
        |> JDP.required "id" JD.string
        |> JDP.required "aRN" JD.string
        |> JDP.required "status" JD.string
        |> JDP.optional "lastModifiedTime" (JD.nullable JDX.date) Nothing
        |> JDP.required "domainName" JD.string
        |> JDP.required "activeTrustedSigners" activeTrustedSignersDecoder
        |> JDP.required "streamingDistributionConfig" streamingDistributionConfigDecoder




{-| undefined
-}
type alias StreamingDistributionAlreadyExists =
    { message : Maybe String
    }



streamingDistributionAlreadyExistsDecoder : JD.Decoder StreamingDistributionAlreadyExists
streamingDistributionAlreadyExistsDecoder =
    JDP.decode StreamingDistributionAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The RTMP distribution's configuration information.</p>
-}
type alias StreamingDistributionConfig =
    { callerReference : String
    , s3Origin : S3Origin
    , aliases : Maybe Aliases
    , comment : String
    , logging : Maybe StreamingLoggingConfig
    , trustedSigners : TrustedSigners
    , priceClass : Maybe PriceClass
    , enabled : Bool
    }



streamingDistributionConfigDecoder : JD.Decoder StreamingDistributionConfig
streamingDistributionConfigDecoder =
    JDP.decode StreamingDistributionConfig
        |> JDP.required "callerReference" JD.string
        |> JDP.required "s3Origin" s3OriginDecoder
        |> JDP.optional "aliases" (JD.nullable aliasesDecoder) Nothing
        |> JDP.required "comment" JD.string
        |> JDP.optional "logging" (JD.nullable streamingLoggingConfigDecoder) Nothing
        |> JDP.required "trustedSigners" trustedSignersDecoder
        |> JDP.optional "priceClass" (JD.nullable priceClassDecoder) Nothing
        |> JDP.required "enabled" JD.bool




{-| <p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>
-}
type alias StreamingDistributionConfigWithTags =
    { streamingDistributionConfig : StreamingDistributionConfig
    , tags : Tags
    }



streamingDistributionConfigWithTagsDecoder : JD.Decoder StreamingDistributionConfigWithTags
streamingDistributionConfigWithTagsDecoder =
    JDP.decode StreamingDistributionConfigWithTags
        |> JDP.required "streamingDistributionConfig" streamingDistributionConfigDecoder
        |> JDP.required "tags" tagsDecoder




{-| <p>A streaming distribution list. </p>
-}
type alias StreamingDistributionList =
    { marker : String
    , nextMarker : Maybe String
    , maxItems : Int
    , isTruncated : Bool
    , quantity : Int
    , items : Maybe (List StreamingDistributionSummary)
    }



streamingDistributionListDecoder : JD.Decoder StreamingDistributionList
streamingDistributionListDecoder =
    JDP.decode StreamingDistributionList
        |> JDP.required "marker" JD.string
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.required "maxItems" JD.int
        |> JDP.required "isTruncated" JD.bool
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list streamingDistributionSummaryDecoder)) Nothing




{-| undefined
-}
type alias StreamingDistributionNotDisabled =
    { message : Maybe String
    }



streamingDistributionNotDisabledDecoder : JD.Decoder StreamingDistributionNotDisabled
streamingDistributionNotDisabledDecoder =
    JDP.decode StreamingDistributionNotDisabled
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p> A summary of the information for an Amazon CloudFront streaming distribution.</p>
-}
type alias StreamingDistributionSummary =
    { id : String
    , aRN : String
    , status : String
    , lastModifiedTime : Date
    , domainName : String
    , s3Origin : S3Origin
    , aliases : Aliases
    , trustedSigners : TrustedSigners
    , comment : String
    , priceClass : PriceClass
    , enabled : Bool
    }



streamingDistributionSummaryDecoder : JD.Decoder StreamingDistributionSummary
streamingDistributionSummaryDecoder =
    JDP.decode StreamingDistributionSummary
        |> JDP.required "id" JD.string
        |> JDP.required "aRN" JD.string
        |> JDP.required "status" JD.string
        |> JDP.required "lastModifiedTime" JDX.date
        |> JDP.required "domainName" JD.string
        |> JDP.required "s3Origin" s3OriginDecoder
        |> JDP.required "aliases" aliasesDecoder
        |> JDP.required "trustedSigners" trustedSignersDecoder
        |> JDP.required "comment" JD.string
        |> JDP.required "priceClass" priceClassDecoder
        |> JDP.required "enabled" JD.bool




{-| <p>A complex type that controls whether access logs are written for this streaming distribution.</p>
-}
type alias StreamingLoggingConfig =
    { enabled : Bool
    , bucket : String
    , prefix : String
    }



streamingLoggingConfigDecoder : JD.Decoder StreamingLoggingConfig
streamingLoggingConfigDecoder =
    JDP.decode StreamingLoggingConfig
        |> JDP.required "enabled" JD.bool
        |> JDP.required "bucket" JD.string
        |> JDP.required "prefix" JD.string




{-| <p> A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>
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




{-| <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-}
type alias TagKeys =
    { items : Maybe (List String)
    }



tagKeysDecoder : JD.Decoder TagKeys
tagKeysDecoder =
    JDP.decode TagKeys
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| <p> A complex type that contains zero or more <code>Tag</code> elements.</p>
-}
type alias Tags =
    { items : Maybe (List Tag)
    }



tagsDecoder : JD.Decoder Tags
tagsDecoder =
    JDP.decode Tags
        |> JDP.optional "items" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>You cannot create more cache behaviors for the distribution.</p>
-}
type alias TooManyCacheBehaviors =
    { message : Maybe String
    }



tooManyCacheBehaviorsDecoder : JD.Decoder TooManyCacheBehaviors
tooManyCacheBehaviorsDecoder =
    JDP.decode TooManyCacheBehaviors
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You cannot create anymore custom SSL/TLS certificates.</p>
-}
type alias TooManyCertificates =
    { message : Maybe String
    }



tooManyCertificatesDecoder : JD.Decoder TooManyCertificates
tooManyCertificatesDecoder =
    JDP.decode TooManyCertificates
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>
-}
type alias TooManyCloudFrontOriginAccessIdentities =
    { message : Maybe String
    }



tooManyCloudFrontOriginAccessIdentitiesDecoder : JD.Decoder TooManyCloudFrontOriginAccessIdentities
tooManyCloudFrontOriginAccessIdentitiesDecoder =
    JDP.decode TooManyCloudFrontOriginAccessIdentities
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>
-}
type alias TooManyCookieNamesInWhiteList =
    { message : Maybe String
    }



tooManyCookieNamesInWhiteListDecoder : JD.Decoder TooManyCookieNamesInWhiteList
tooManyCookieNamesInWhiteListDecoder =
    JDP.decode TooManyCookieNamesInWhiteList
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Your request contains more CNAMEs than are allowed per distribution.</p>
-}
type alias TooManyDistributionCNAMEs =
    { message : Maybe String
    }



tooManyDistributionCNAMEsDecoder : JD.Decoder TooManyDistributionCNAMEs
tooManyDistributionCNAMEsDecoder =
    JDP.decode TooManyDistributionCNAMEs
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>
-}
type alias TooManyDistributions =
    { message : Maybe String
    }



tooManyDistributionsDecoder : JD.Decoder TooManyDistributions
tooManyDistributionsDecoder =
    JDP.decode TooManyDistributions
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Processing your request would cause the maximum number of distributions with Lambda function associations per owner to be exceeded.</p>
-}
type alias TooManyDistributionsWithLambdaAssociations =
    { message : Maybe String
    }



tooManyDistributionsWithLambdaAssociationsDecoder : JD.Decoder TooManyDistributionsWithLambdaAssociations
tooManyDistributionsWithLambdaAssociationsDecoder =
    JDP.decode TooManyDistributionsWithLambdaAssociations
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias TooManyHeadersInForwardedValues =
    { message : Maybe String
    }



tooManyHeadersInForwardedValuesDecoder : JD.Decoder TooManyHeadersInForwardedValues
tooManyHeadersInForwardedValuesDecoder =
    JDP.decode TooManyHeadersInForwardedValues
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>
-}
type alias TooManyInvalidationsInProgress =
    { message : Maybe String
    }



tooManyInvalidationsInProgressDecoder : JD.Decoder TooManyInvalidationsInProgress
tooManyInvalidationsInProgressDecoder =
    JDP.decode TooManyInvalidationsInProgress
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Your request contains more Lambda function associations than are allowed per distribution.</p>
-}
type alias TooManyLambdaFunctionAssociations =
    { message : Maybe String
    }



tooManyLambdaFunctionAssociationsDecoder : JD.Decoder TooManyLambdaFunctionAssociations
tooManyLambdaFunctionAssociationsDecoder =
    JDP.decode TooManyLambdaFunctionAssociations
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias TooManyOriginCustomHeaders =
    { message : Maybe String
    }



tooManyOriginCustomHeadersDecoder : JD.Decoder TooManyOriginCustomHeaders
tooManyOriginCustomHeadersDecoder =
    JDP.decode TooManyOriginCustomHeaders
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You cannot create more origins for the distribution.</p>
-}
type alias TooManyOrigins =
    { message : Maybe String
    }



tooManyOriginsDecoder : JD.Decoder TooManyOrigins
tooManyOriginsDecoder =
    JDP.decode TooManyOrigins
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias TooManyQueryStringParameters =
    { message : Maybe String
    }



tooManyQueryStringParametersDecoder : JD.Decoder TooManyQueryStringParameters
tooManyQueryStringParametersDecoder =
    JDP.decode TooManyQueryStringParameters
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias TooManyStreamingDistributionCNAMEs =
    { message : Maybe String
    }



tooManyStreamingDistributionCNAMEsDecoder : JD.Decoder TooManyStreamingDistributionCNAMEs
tooManyStreamingDistributionCNAMEsDecoder =
    JDP.decode TooManyStreamingDistributionCNAMEs
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>
-}
type alias TooManyStreamingDistributions =
    { message : Maybe String
    }



tooManyStreamingDistributionsDecoder : JD.Decoder TooManyStreamingDistributions
tooManyStreamingDistributionsDecoder =
    JDP.decode TooManyStreamingDistributions
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Your request contains more trusted signers than are allowed per distribution.</p>
-}
type alias TooManyTrustedSigners =
    { message : Maybe String
    }



tooManyTrustedSignersDecoder : JD.Decoder TooManyTrustedSigners
tooManyTrustedSignersDecoder =
    JDP.decode TooManyTrustedSigners
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>One or more of your trusted signers do not exist.</p>
-}
type alias TrustedSignerDoesNotExist =
    { message : Maybe String
    }



trustedSignerDoesNotExistDecoder : JD.Decoder TrustedSignerDoesNotExist
trustedSignerDoesNotExistDecoder =
    JDP.decode TrustedSignerDoesNotExist
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A complex type that specifies the AWS accounts, if any, that you want to allow to create signed URLs for private content.</p> <p>If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>.</p> <p>To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information about updating the distribution configuration, see <a>DistributionConfig</a> .</p>
-}
type alias TrustedSigners =
    { enabled : Bool
    , quantity : Int
    , items : Maybe (List String)
    }



trustedSignersDecoder : JD.Decoder TrustedSigners
trustedSignersDecoder =
    JDP.decode TrustedSigners
        |> JDP.required "enabled" JD.bool
        |> JDP.required "quantity" JD.int
        |> JDP.optional "items" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from updateCloudFrontOriginAccessIdenti
-}
type alias UpdateCloudFrontOriginAccessIdentityResult =
    { cloudFrontOriginAccessIdentity : Maybe CloudFrontOriginAccessIdentity
    , eTag : Maybe String
    }



updateCloudFrontOriginAccessIdentityResultDecoder : JD.Decoder UpdateCloudFrontOriginAccessIdentityResult
updateCloudFrontOriginAccessIdentityResultDecoder =
    JDP.decode UpdateCloudFrontOriginAccessIdentityResult
        |> JDP.optional "cloudFrontOriginAccessIdentity" (JD.nullable cloudFrontOriginAccessIdentityDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateDistributi
-}
type alias UpdateDistributionResult =
    { distribution : Maybe Distribution
    , eTag : Maybe String
    }



updateDistributionResultDecoder : JD.Decoder UpdateDistributionResult
updateDistributionResultDecoder =
    JDP.decode UpdateDistributionResult
        |> JDP.optional "distribution" (JD.nullable distributionDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateStreamingDistributi
-}
type alias UpdateStreamingDistributionResult =
    { streamingDistribution : Maybe StreamingDistribution
    , eTag : Maybe String
    }



updateStreamingDistributionResultDecoder : JD.Decoder UpdateStreamingDistributionResult
updateStreamingDistributionResultDecoder =
    JDP.decode UpdateStreamingDistributionResult
        |> JDP.optional "streamingDistribution" (JD.nullable streamingDistributionDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing




{-| <p>A complex type that specifies the following:</p> <ul> <li> <p>Which SSL/TLS certificate to use when viewers request objects using HTTPS</p> </li> <li> <p>Whether you want CloudFront to use dedicated IP addresses or SNI when you're using alternate domain names in your object names</p> </li> <li> <p>The minimum protocol version that you want CloudFront to use when communicating with viewers</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html">Using an HTTPS Connection to Access Your Objects</a> in the <i>Amazon Amazon CloudFront Developer Guide</i>.</p>
-}
type alias ViewerCertificate =
    { cloudFrontDefaultCertificate : Maybe Bool
    , iAMCertificateId : Maybe String
    , aCMCertificateArn : Maybe String
    , sSLSupportMethod : Maybe SSLSupportMethod
    , minimumProtocolVersion : Maybe MinimumProtocolVersion
    , certificate : Maybe String
    , certificateSource : Maybe CertificateSource
    }



viewerCertificateDecoder : JD.Decoder ViewerCertificate
viewerCertificateDecoder =
    JDP.decode ViewerCertificate
        |> JDP.optional "cloudFrontDefaultCertificate" (JD.nullable JD.bool) Nothing
        |> JDP.optional "iAMCertificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "aCMCertificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSLSupportMethod" (JD.nullable sSLSupportMethodDecoder) Nothing
        |> JDP.optional "minimumProtocolVersion" (JD.nullable minimumProtocolVersionDecoder) Nothing
        |> JDP.optional "certificate" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateSource" (JD.nullable certificateSourceDecoder) Nothing




{-| One of

* `ViewerProtocolPolicy_allow-all`
* `ViewerProtocolPolicy_https-only`
* `ViewerProtocolPolicy_redirect-to-https`

-}
type ViewerProtocolPolicy
    = ViewerProtocolPolicy_allow_all
    | ViewerProtocolPolicy_https_only
    | ViewerProtocolPolicy_redirect_to_https



viewerProtocolPolicyDecoder : JD.Decoder ViewerProtocolPolicy
viewerProtocolPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "allow_all" ->
                        JD.succeed ViewerProtocolPolicy_allow_all

                    "https_only" ->
                        JD.succeed ViewerProtocolPolicy_https_only

                    "redirect_to_https" ->
                        JD.succeed ViewerProtocolPolicy_redirect_to_https


                    _ ->
                        JD.fail "bad thing"
            )



