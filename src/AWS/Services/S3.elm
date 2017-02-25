module AWS.Services.S3
    exposing
        ( config
        , abortMultipartUpload
        , AbortMultipartUploadOptions
        , completeMultipartUpload
        , CompleteMultipartUploadOptions
        , copyObject
        , CopyObjectOptions
        , createBucket
        , CreateBucketOptions
        , createMultipartUpload
        , CreateMultipartUploadOptions
        , deleteBucket
        , deleteBucketAnalyticsConfiguration
        , deleteBucketCors
        , deleteBucketInventoryConfiguration
        , deleteBucketLifecycle
        , deleteBucketMetricsConfiguration
        , deleteBucketPolicy
        , deleteBucketReplication
        , deleteBucketTagging
        , deleteBucketWebsite
        , deleteObject
        , DeleteObjectOptions
        , deleteObjectTagging
        , DeleteObjectTaggingOptions
        , deleteObjects
        , DeleteObjectsOptions
        , getBucketAccelerateConfiguration
        , getBucketAcl
        , getBucketAnalyticsConfiguration
        , getBucketCors
        , getBucketInventoryConfiguration
        , getBucketLifecycle
        , getBucketLifecycleConfiguration
        , getBucketLocation
        , getBucketLogging
        , getBucketMetricsConfiguration
        , getBucketNotification
        , getBucketNotificationConfiguration
        , getBucketPolicy
        , getBucketReplication
        , getBucketRequestPayment
        , getBucketTagging
        , getBucketVersioning
        , getBucketWebsite
        , getObject
        , GetObjectOptions
        , getObjectAcl
        , GetObjectAclOptions
        , getObjectTagging
        , GetObjectTaggingOptions
        , getObjectTorrent
        , GetObjectTorrentOptions
        , headBucket
        , headObject
        , HeadObjectOptions
        , listBucketAnalyticsConfigurations
        , ListBucketAnalyticsConfigurationsOptions
        , listBucketInventoryConfigurations
        , ListBucketInventoryConfigurationsOptions
        , listBucketMetricsConfigurations
        , ListBucketMetricsConfigurationsOptions
        , listBuckets
        , listMultipartUploads
        , ListMultipartUploadsOptions
        , listObjectVersions
        , ListObjectVersionsOptions
        , listObjects
        , ListObjectsOptions
        , listObjectsV2
        , ListObjectsV2Options
        , listParts
        , ListPartsOptions
        , putBucketAccelerateConfiguration
        , putBucketAcl
        , PutBucketAclOptions
        , putBucketAnalyticsConfiguration
        , putBucketCors
        , PutBucketCorsOptions
        , putBucketInventoryConfiguration
        , putBucketLifecycle
        , PutBucketLifecycleOptions
        , putBucketLifecycleConfiguration
        , PutBucketLifecycleConfigurationOptions
        , putBucketLogging
        , PutBucketLoggingOptions
        , putBucketMetricsConfiguration
        , putBucketNotification
        , PutBucketNotificationOptions
        , putBucketNotificationConfiguration
        , putBucketPolicy
        , PutBucketPolicyOptions
        , putBucketReplication
        , PutBucketReplicationOptions
        , putBucketRequestPayment
        , PutBucketRequestPaymentOptions
        , putBucketTagging
        , PutBucketTaggingOptions
        , putBucketVersioning
        , PutBucketVersioningOptions
        , putBucketWebsite
        , PutBucketWebsiteOptions
        , putObject
        , PutObjectOptions
        , putObjectAcl
        , PutObjectAclOptions
        , putObjectTagging
        , PutObjectTaggingOptions
        , restoreObject
        , RestoreObjectOptions
        , uploadPart
        , UploadPartOptions
        , uploadPartCopy
        , UploadPartCopyOptions
        , AbortIncompleteMultipartUpload
        , AbortMultipartUploadOutput
        , AccelerateConfiguration
        , AccessControlPolicy
        , AnalyticsAndOperator
        , AnalyticsConfiguration
        , AnalyticsExportDestination
        , AnalyticsFilter
        , AnalyticsS3BucketDestination
        , AnalyticsS3ExportFileFormat(..)
        , Bucket
        , BucketAccelerateStatus(..)
        , BucketAlreadyExists
        , BucketAlreadyOwnedByYou
        , BucketCannedACL(..)
        , BucketLifecycleConfiguration
        , BucketLocationConstraint(..)
        , BucketLoggingStatus
        , BucketLogsPermission(..)
        , BucketVersioningStatus(..)
        , CORSConfiguration
        , CORSRule
        , CloudFunctionConfiguration
        , CommonPrefix
        , CompleteMultipartUploadOutput
        , CompletedMultipartUpload
        , CompletedPart
        , Condition
        , CopyObjectOutput
        , CopyObjectResult
        , CopyPartResult
        , CreateBucketConfiguration
        , CreateBucketOutput
        , CreateMultipartUploadOutput
        , Delete
        , DeleteMarkerEntry
        , DeleteObjectOutput
        , DeleteObjectTaggingOutput
        , DeleteObjectsOutput
        , DeletedObject
        , Destination
        , EncodingType(..)
        , Error
        , ErrorDocument
        , Event(..)
        , ExpirationStatus(..)
        , FilterRule
        , FilterRuleName(..)
        , GetBucketAccelerateConfigurationOutput
        , GetBucketAclOutput
        , GetBucketAnalyticsConfigurationOutput
        , GetBucketCorsOutput
        , GetBucketInventoryConfigurationOutput
        , GetBucketLifecycleConfigurationOutput
        , GetBucketLifecycleOutput
        , GetBucketLocationOutput
        , GetBucketLoggingOutput
        , GetBucketMetricsConfigurationOutput
        , GetBucketPolicyOutput
        , GetBucketReplicationOutput
        , GetBucketRequestPaymentOutput
        , GetBucketTaggingOutput
        , GetBucketVersioningOutput
        , GetBucketWebsiteOutput
        , GetObjectAclOutput
        , GetObjectOutput
        , GetObjectTaggingOutput
        , GetObjectTorrentOutput
        , GlacierJobParameters
        , Grant
        , Grantee
        , HeadObjectOutput
        , IndexDocument
        , Initiator
        , InventoryConfiguration
        , InventoryDestination
        , InventoryFilter
        , InventoryFormat(..)
        , InventoryFrequency(..)
        , InventoryIncludedObjectVersions(..)
        , InventoryOptionalField(..)
        , InventoryS3BucketDestination
        , InventorySchedule
        , LambdaFunctionConfiguration
        , LifecycleConfiguration
        , LifecycleExpiration
        , LifecycleRule
        , LifecycleRuleAndOperator
        , LifecycleRuleFilter
        , ListBucketAnalyticsConfigurationsOutput
        , ListBucketInventoryConfigurationsOutput
        , ListBucketMetricsConfigurationsOutput
        , ListBucketsOutput
        , ListMultipartUploadsOutput
        , ListObjectVersionsOutput
        , ListObjectsOutput
        , ListObjectsV2Output
        , ListPartsOutput
        , LoggingEnabled
        , MFADelete(..)
        , MFADeleteStatus(..)
        , MetadataDirective(..)
        , MetricsAndOperator
        , MetricsConfiguration
        , MetricsFilter
        , MultipartUpload
        , NoSuchBucket
        , NoSuchKey
        , NoSuchUpload
        , NoncurrentVersionExpiration
        , NoncurrentVersionTransition
        , NotificationConfiguration
        , NotificationConfigurationDeprecated
        , NotificationConfigurationFilter
        , Object
        , ObjectAlreadyInActiveTierError
        , ObjectCannedACL(..)
        , ObjectIdentifier
        , ObjectNotInActiveTierError
        , ObjectStorageClass(..)
        , ObjectVersion
        , ObjectVersionStorageClass(..)
        , Owner
        , Part
        , Payer(..)
        , Permission(..)
        , Protocol(..)
        , PutObjectAclOutput
        , PutObjectOutput
        , PutObjectTaggingOutput
        , QueueConfiguration
        , QueueConfigurationDeprecated
        , Redirect
        , RedirectAllRequestsTo
        , ReplicationConfiguration
        , ReplicationRule
        , ReplicationRuleStatus(..)
        , ReplicationStatus(..)
        , RequestCharged(..)
        , RequestPayer(..)
        , RequestPaymentConfiguration
        , RestoreObjectOutput
        , RestoreRequest
        , RoutingRule
        , Rule
        , S3KeyFilter
        , ServerSideEncryption(..)
        , StorageClass(..)
        , StorageClassAnalysis
        , StorageClassAnalysisDataExport
        , StorageClassAnalysisSchemaVersion(..)
        , Tag
        , Tagging
        , TaggingDirective(..)
        , TargetGrant
        , Tier(..)
        , TopicConfiguration
        , TopicConfigurationDeprecated
        , Transition
        , TransitionStorageClass(..)
        , Type(..)
        , UploadPartCopyOutput
        , UploadPartOutput
        , VersioningConfiguration
        , WebsiteConfiguration
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

* [abortMultipartUpload](#abortMultipartUpload)
* [AbortMultipartUploadOptions](#AbortMultipartUploadOptions)
* [completeMultipartUpload](#completeMultipartUpload)
* [CompleteMultipartUploadOptions](#CompleteMultipartUploadOptions)
* [copyObject](#copyObject)
* [CopyObjectOptions](#CopyObjectOptions)
* [createBucket](#createBucket)
* [CreateBucketOptions](#CreateBucketOptions)
* [createMultipartUpload](#createMultipartUpload)
* [CreateMultipartUploadOptions](#CreateMultipartUploadOptions)
* [deleteBucket](#deleteBucket)
* [deleteBucketAnalyticsConfiguration](#deleteBucketAnalyticsConfiguration)
* [deleteBucketCors](#deleteBucketCors)
* [deleteBucketInventoryConfiguration](#deleteBucketInventoryConfiguration)
* [deleteBucketLifecycle](#deleteBucketLifecycle)
* [deleteBucketMetricsConfiguration](#deleteBucketMetricsConfiguration)
* [deleteBucketPolicy](#deleteBucketPolicy)
* [deleteBucketReplication](#deleteBucketReplication)
* [deleteBucketTagging](#deleteBucketTagging)
* [deleteBucketWebsite](#deleteBucketWebsite)
* [deleteObject](#deleteObject)
* [DeleteObjectOptions](#DeleteObjectOptions)
* [deleteObjectTagging](#deleteObjectTagging)
* [DeleteObjectTaggingOptions](#DeleteObjectTaggingOptions)
* [deleteObjects](#deleteObjects)
* [DeleteObjectsOptions](#DeleteObjectsOptions)
* [getBucketAccelerateConfiguration](#getBucketAccelerateConfiguration)
* [getBucketAcl](#getBucketAcl)
* [getBucketAnalyticsConfiguration](#getBucketAnalyticsConfiguration)
* [getBucketCors](#getBucketCors)
* [getBucketInventoryConfiguration](#getBucketInventoryConfiguration)
* [getBucketLifecycle](#getBucketLifecycle)
* [getBucketLifecycleConfiguration](#getBucketLifecycleConfiguration)
* [getBucketLocation](#getBucketLocation)
* [getBucketLogging](#getBucketLogging)
* [getBucketMetricsConfiguration](#getBucketMetricsConfiguration)
* [getBucketNotification](#getBucketNotification)
* [getBucketNotificationConfiguration](#getBucketNotificationConfiguration)
* [getBucketPolicy](#getBucketPolicy)
* [getBucketReplication](#getBucketReplication)
* [getBucketRequestPayment](#getBucketRequestPayment)
* [getBucketTagging](#getBucketTagging)
* [getBucketVersioning](#getBucketVersioning)
* [getBucketWebsite](#getBucketWebsite)
* [getObject](#getObject)
* [GetObjectOptions](#GetObjectOptions)
* [getObjectAcl](#getObjectAcl)
* [GetObjectAclOptions](#GetObjectAclOptions)
* [getObjectTagging](#getObjectTagging)
* [GetObjectTaggingOptions](#GetObjectTaggingOptions)
* [getObjectTorrent](#getObjectTorrent)
* [GetObjectTorrentOptions](#GetObjectTorrentOptions)
* [headBucket](#headBucket)
* [headObject](#headObject)
* [HeadObjectOptions](#HeadObjectOptions)
* [listBucketAnalyticsConfigurations](#listBucketAnalyticsConfigurations)
* [ListBucketAnalyticsConfigurationsOptions](#ListBucketAnalyticsConfigurationsOptions)
* [listBucketInventoryConfigurations](#listBucketInventoryConfigurations)
* [ListBucketInventoryConfigurationsOptions](#ListBucketInventoryConfigurationsOptions)
* [listBucketMetricsConfigurations](#listBucketMetricsConfigurations)
* [ListBucketMetricsConfigurationsOptions](#ListBucketMetricsConfigurationsOptions)
* [listBuckets](#listBuckets)
* [listMultipartUploads](#listMultipartUploads)
* [ListMultipartUploadsOptions](#ListMultipartUploadsOptions)
* [listObjectVersions](#listObjectVersions)
* [ListObjectVersionsOptions](#ListObjectVersionsOptions)
* [listObjects](#listObjects)
* [ListObjectsOptions](#ListObjectsOptions)
* [listObjectsV2](#listObjectsV2)
* [ListObjectsV2Options](#ListObjectsV2Options)
* [listParts](#listParts)
* [ListPartsOptions](#ListPartsOptions)
* [putBucketAccelerateConfiguration](#putBucketAccelerateConfiguration)
* [putBucketAcl](#putBucketAcl)
* [PutBucketAclOptions](#PutBucketAclOptions)
* [putBucketAnalyticsConfiguration](#putBucketAnalyticsConfiguration)
* [putBucketCors](#putBucketCors)
* [PutBucketCorsOptions](#PutBucketCorsOptions)
* [putBucketInventoryConfiguration](#putBucketInventoryConfiguration)
* [putBucketLifecycle](#putBucketLifecycle)
* [PutBucketLifecycleOptions](#PutBucketLifecycleOptions)
* [putBucketLifecycleConfiguration](#putBucketLifecycleConfiguration)
* [PutBucketLifecycleConfigurationOptions](#PutBucketLifecycleConfigurationOptions)
* [putBucketLogging](#putBucketLogging)
* [PutBucketLoggingOptions](#PutBucketLoggingOptions)
* [putBucketMetricsConfiguration](#putBucketMetricsConfiguration)
* [putBucketNotification](#putBucketNotification)
* [PutBucketNotificationOptions](#PutBucketNotificationOptions)
* [putBucketNotificationConfiguration](#putBucketNotificationConfiguration)
* [putBucketPolicy](#putBucketPolicy)
* [PutBucketPolicyOptions](#PutBucketPolicyOptions)
* [putBucketReplication](#putBucketReplication)
* [PutBucketReplicationOptions](#PutBucketReplicationOptions)
* [putBucketRequestPayment](#putBucketRequestPayment)
* [PutBucketRequestPaymentOptions](#PutBucketRequestPaymentOptions)
* [putBucketTagging](#putBucketTagging)
* [PutBucketTaggingOptions](#PutBucketTaggingOptions)
* [putBucketVersioning](#putBucketVersioning)
* [PutBucketVersioningOptions](#PutBucketVersioningOptions)
* [putBucketWebsite](#putBucketWebsite)
* [PutBucketWebsiteOptions](#PutBucketWebsiteOptions)
* [putObject](#putObject)
* [PutObjectOptions](#PutObjectOptions)
* [putObjectAcl](#putObjectAcl)
* [PutObjectAclOptions](#PutObjectAclOptions)
* [putObjectTagging](#putObjectTagging)
* [PutObjectTaggingOptions](#PutObjectTaggingOptions)
* [restoreObject](#restoreObject)
* [RestoreObjectOptions](#RestoreObjectOptions)
* [uploadPart](#uploadPart)
* [UploadPartOptions](#UploadPartOptions)
* [uploadPartCopy](#uploadPartCopy)
* [UploadPartCopyOptions](#UploadPartCopyOptions)


@docs abortMultipartUpload,AbortMultipartUploadOptions,completeMultipartUpload,CompleteMultipartUploadOptions,copyObject,CopyObjectOptions,createBucket,CreateBucketOptions,createMultipartUpload,CreateMultipartUploadOptions,deleteBucket,deleteBucketAnalyticsConfiguration,deleteBucketCors,deleteBucketInventoryConfiguration,deleteBucketLifecycle,deleteBucketMetricsConfiguration,deleteBucketPolicy,deleteBucketReplication,deleteBucketTagging,deleteBucketWebsite,deleteObject,DeleteObjectOptions,deleteObjectTagging,DeleteObjectTaggingOptions,deleteObjects,DeleteObjectsOptions,getBucketAccelerateConfiguration,getBucketAcl,getBucketAnalyticsConfiguration,getBucketCors,getBucketInventoryConfiguration,getBucketLifecycle,getBucketLifecycleConfiguration,getBucketLocation,getBucketLogging,getBucketMetricsConfiguration,getBucketNotification,getBucketNotificationConfiguration,getBucketPolicy,getBucketReplication,getBucketRequestPayment,getBucketTagging,getBucketVersioning,getBucketWebsite,getObject,GetObjectOptions,getObjectAcl,GetObjectAclOptions,getObjectTagging,GetObjectTaggingOptions,getObjectTorrent,GetObjectTorrentOptions,headBucket,headObject,HeadObjectOptions,listBucketAnalyticsConfigurations,ListBucketAnalyticsConfigurationsOptions,listBucketInventoryConfigurations,ListBucketInventoryConfigurationsOptions,listBucketMetricsConfigurations,ListBucketMetricsConfigurationsOptions,listBuckets,listMultipartUploads,ListMultipartUploadsOptions,listObjectVersions,ListObjectVersionsOptions,listObjects,ListObjectsOptions,listObjectsV2,ListObjectsV2Options,listParts,ListPartsOptions,putBucketAccelerateConfiguration,putBucketAcl,PutBucketAclOptions,putBucketAnalyticsConfiguration,putBucketCors,PutBucketCorsOptions,putBucketInventoryConfiguration,putBucketLifecycle,PutBucketLifecycleOptions,putBucketLifecycleConfiguration,PutBucketLifecycleConfigurationOptions,putBucketLogging,PutBucketLoggingOptions,putBucketMetricsConfiguration,putBucketNotification,PutBucketNotificationOptions,putBucketNotificationConfiguration,putBucketPolicy,PutBucketPolicyOptions,putBucketReplication,PutBucketReplicationOptions,putBucketRequestPayment,PutBucketRequestPaymentOptions,putBucketTagging,PutBucketTaggingOptions,putBucketVersioning,PutBucketVersioningOptions,putBucketWebsite,PutBucketWebsiteOptions,putObject,PutObjectOptions,putObjectAcl,PutObjectAclOptions,putObjectTagging,PutObjectTaggingOptions,restoreObject,RestoreObjectOptions,uploadPart,UploadPartOptions,uploadPartCopy,UploadPartCopyOptions

## Responses

* [AbortMultipartUploadOutput](#AbortMultipartUploadOutput)
* [CompleteMultipartUploadOutput](#CompleteMultipartUploadOutput)
* [CopyObjectOutput](#CopyObjectOutput)
* [CreateBucketOutput](#CreateBucketOutput)
* [CreateMultipartUploadOutput](#CreateMultipartUploadOutput)
* [DeleteObjectOutput](#DeleteObjectOutput)
* [DeleteObjectTaggingOutput](#DeleteObjectTaggingOutput)
* [DeleteObjectsOutput](#DeleteObjectsOutput)
* [GetBucketAccelerateConfigurationOutput](#GetBucketAccelerateConfigurationOutput)
* [GetBucketAclOutput](#GetBucketAclOutput)
* [GetBucketAnalyticsConfigurationOutput](#GetBucketAnalyticsConfigurationOutput)
* [GetBucketCorsOutput](#GetBucketCorsOutput)
* [GetBucketInventoryConfigurationOutput](#GetBucketInventoryConfigurationOutput)
* [GetBucketLifecycleConfigurationOutput](#GetBucketLifecycleConfigurationOutput)
* [GetBucketLifecycleOutput](#GetBucketLifecycleOutput)
* [GetBucketLocationOutput](#GetBucketLocationOutput)
* [GetBucketLoggingOutput](#GetBucketLoggingOutput)
* [GetBucketMetricsConfigurationOutput](#GetBucketMetricsConfigurationOutput)
* [GetBucketPolicyOutput](#GetBucketPolicyOutput)
* [GetBucketReplicationOutput](#GetBucketReplicationOutput)
* [GetBucketRequestPaymentOutput](#GetBucketRequestPaymentOutput)
* [GetBucketTaggingOutput](#GetBucketTaggingOutput)
* [GetBucketVersioningOutput](#GetBucketVersioningOutput)
* [GetBucketWebsiteOutput](#GetBucketWebsiteOutput)
* [GetObjectAclOutput](#GetObjectAclOutput)
* [GetObjectOutput](#GetObjectOutput)
* [GetObjectTaggingOutput](#GetObjectTaggingOutput)
* [GetObjectTorrentOutput](#GetObjectTorrentOutput)
* [HeadObjectOutput](#HeadObjectOutput)
* [ListBucketAnalyticsConfigurationsOutput](#ListBucketAnalyticsConfigurationsOutput)
* [ListBucketInventoryConfigurationsOutput](#ListBucketInventoryConfigurationsOutput)
* [ListBucketMetricsConfigurationsOutput](#ListBucketMetricsConfigurationsOutput)
* [ListBucketsOutput](#ListBucketsOutput)
* [ListMultipartUploadsOutput](#ListMultipartUploadsOutput)
* [ListObjectVersionsOutput](#ListObjectVersionsOutput)
* [ListObjectsOutput](#ListObjectsOutput)
* [ListObjectsV2Output](#ListObjectsV2Output)
* [ListPartsOutput](#ListPartsOutput)
* [NotificationConfiguration](#NotificationConfiguration)
* [NotificationConfigurationDeprecated](#NotificationConfigurationDeprecated)
* [PutObjectAclOutput](#PutObjectAclOutput)
* [PutObjectOutput](#PutObjectOutput)
* [PutObjectTaggingOutput](#PutObjectTaggingOutput)
* [RestoreObjectOutput](#RestoreObjectOutput)
* [UploadPartCopyOutput](#UploadPartCopyOutput)
* [UploadPartOutput](#UploadPartOutput)


@docs AbortMultipartUploadOutput,CompleteMultipartUploadOutput,CopyObjectOutput,CreateBucketOutput,CreateMultipartUploadOutput,DeleteObjectOutput,DeleteObjectTaggingOutput,DeleteObjectsOutput,GetBucketAccelerateConfigurationOutput,GetBucketAclOutput,GetBucketAnalyticsConfigurationOutput,GetBucketCorsOutput,GetBucketInventoryConfigurationOutput,GetBucketLifecycleConfigurationOutput,GetBucketLifecycleOutput,GetBucketLocationOutput,GetBucketLoggingOutput,GetBucketMetricsConfigurationOutput,GetBucketPolicyOutput,GetBucketReplicationOutput,GetBucketRequestPaymentOutput,GetBucketTaggingOutput,GetBucketVersioningOutput,GetBucketWebsiteOutput,GetObjectAclOutput,GetObjectOutput,GetObjectTaggingOutput,GetObjectTorrentOutput,HeadObjectOutput,ListBucketAnalyticsConfigurationsOutput,ListBucketInventoryConfigurationsOutput,ListBucketMetricsConfigurationsOutput,ListBucketsOutput,ListMultipartUploadsOutput,ListObjectVersionsOutput,ListObjectsOutput,ListObjectsV2Output,ListPartsOutput,NotificationConfiguration,NotificationConfigurationDeprecated,PutObjectAclOutput,PutObjectOutput,PutObjectTaggingOutput,RestoreObjectOutput,UploadPartCopyOutput,UploadPartOutput

## Records

* [AbortIncompleteMultipartUpload](#AbortIncompleteMultipartUpload)
* [AccelerateConfiguration](#AccelerateConfiguration)
* [AccessControlPolicy](#AccessControlPolicy)
* [AnalyticsAndOperator](#AnalyticsAndOperator)
* [AnalyticsConfiguration](#AnalyticsConfiguration)
* [AnalyticsExportDestination](#AnalyticsExportDestination)
* [AnalyticsFilter](#AnalyticsFilter)
* [AnalyticsS3BucketDestination](#AnalyticsS3BucketDestination)
* [Bucket](#Bucket)
* [BucketLifecycleConfiguration](#BucketLifecycleConfiguration)
* [BucketLoggingStatus](#BucketLoggingStatus)
* [CORSConfiguration](#CORSConfiguration)
* [CORSRule](#CORSRule)
* [CloudFunctionConfiguration](#CloudFunctionConfiguration)
* [CommonPrefix](#CommonPrefix)
* [CompletedMultipartUpload](#CompletedMultipartUpload)
* [CompletedPart](#CompletedPart)
* [Condition](#Condition)
* [CopyObjectResult](#CopyObjectResult)
* [CopyPartResult](#CopyPartResult)
* [CreateBucketConfiguration](#CreateBucketConfiguration)
* [Delete](#Delete)
* [DeleteMarkerEntry](#DeleteMarkerEntry)
* [DeletedObject](#DeletedObject)
* [Destination](#Destination)
* [Error](#Error)
* [ErrorDocument](#ErrorDocument)
* [FilterRule](#FilterRule)
* [GlacierJobParameters](#GlacierJobParameters)
* [Grant](#Grant)
* [Grantee](#Grantee)
* [IndexDocument](#IndexDocument)
* [Initiator](#Initiator)
* [InventoryConfiguration](#InventoryConfiguration)
* [InventoryDestination](#InventoryDestination)
* [InventoryFilter](#InventoryFilter)
* [InventoryS3BucketDestination](#InventoryS3BucketDestination)
* [InventorySchedule](#InventorySchedule)
* [LambdaFunctionConfiguration](#LambdaFunctionConfiguration)
* [LifecycleConfiguration](#LifecycleConfiguration)
* [LifecycleExpiration](#LifecycleExpiration)
* [LifecycleRule](#LifecycleRule)
* [LifecycleRuleAndOperator](#LifecycleRuleAndOperator)
* [LifecycleRuleFilter](#LifecycleRuleFilter)
* [LoggingEnabled](#LoggingEnabled)
* [MetricsAndOperator](#MetricsAndOperator)
* [MetricsConfiguration](#MetricsConfiguration)
* [MetricsFilter](#MetricsFilter)
* [MultipartUpload](#MultipartUpload)
* [NoncurrentVersionExpiration](#NoncurrentVersionExpiration)
* [NoncurrentVersionTransition](#NoncurrentVersionTransition)
* [NotificationConfigurationFilter](#NotificationConfigurationFilter)
* [Object](#Object)
* [ObjectIdentifier](#ObjectIdentifier)
* [ObjectVersion](#ObjectVersion)
* [Owner](#Owner)
* [Part](#Part)
* [QueueConfiguration](#QueueConfiguration)
* [QueueConfigurationDeprecated](#QueueConfigurationDeprecated)
* [Redirect](#Redirect)
* [RedirectAllRequestsTo](#RedirectAllRequestsTo)
* [ReplicationConfiguration](#ReplicationConfiguration)
* [ReplicationRule](#ReplicationRule)
* [RequestPaymentConfiguration](#RequestPaymentConfiguration)
* [RestoreRequest](#RestoreRequest)
* [RoutingRule](#RoutingRule)
* [Rule](#Rule)
* [S3KeyFilter](#S3KeyFilter)
* [StorageClassAnalysis](#StorageClassAnalysis)
* [StorageClassAnalysisDataExport](#StorageClassAnalysisDataExport)
* [Tag](#Tag)
* [Tagging](#Tagging)
* [TargetGrant](#TargetGrant)
* [TopicConfiguration](#TopicConfiguration)
* [TopicConfigurationDeprecated](#TopicConfigurationDeprecated)
* [Transition](#Transition)
* [VersioningConfiguration](#VersioningConfiguration)
* [WebsiteConfiguration](#WebsiteConfiguration)


@docs AbortIncompleteMultipartUpload,AccelerateConfiguration,AccessControlPolicy,AnalyticsAndOperator,AnalyticsConfiguration,AnalyticsExportDestination,AnalyticsFilter,AnalyticsS3BucketDestination,Bucket,BucketLifecycleConfiguration,BucketLoggingStatus,CORSConfiguration,CORSRule,CloudFunctionConfiguration,CommonPrefix,CompletedMultipartUpload,CompletedPart,Condition,CopyObjectResult,CopyPartResult,CreateBucketConfiguration,Delete,DeleteMarkerEntry,DeletedObject,Destination,Error,ErrorDocument,FilterRule,GlacierJobParameters,Grant,Grantee,IndexDocument,Initiator,InventoryConfiguration,InventoryDestination,InventoryFilter,InventoryS3BucketDestination,InventorySchedule,LambdaFunctionConfiguration,LifecycleConfiguration,LifecycleExpiration,LifecycleRule,LifecycleRuleAndOperator,LifecycleRuleFilter,LoggingEnabled,MetricsAndOperator,MetricsConfiguration,MetricsFilter,MultipartUpload,NoncurrentVersionExpiration,NoncurrentVersionTransition,NotificationConfigurationFilter,Object,ObjectIdentifier,ObjectVersion,Owner,Part,QueueConfiguration,QueueConfigurationDeprecated,Redirect,RedirectAllRequestsTo,ReplicationConfiguration,ReplicationRule,RequestPaymentConfiguration,RestoreRequest,RoutingRule,Rule,S3KeyFilter,StorageClassAnalysis,StorageClassAnalysisDataExport,Tag,Tagging,TargetGrant,TopicConfiguration,TopicConfigurationDeprecated,Transition,VersioningConfiguration,WebsiteConfiguration

## Unions

* [AnalyticsS3ExportFileFormat](#AnalyticsS3ExportFileFormat)
* [BucketAccelerateStatus](#BucketAccelerateStatus)
* [BucketCannedACL](#BucketCannedACL)
* [BucketLocationConstraint](#BucketLocationConstraint)
* [BucketLogsPermission](#BucketLogsPermission)
* [BucketVersioningStatus](#BucketVersioningStatus)
* [EncodingType](#EncodingType)
* [Event](#Event)
* [ExpirationStatus](#ExpirationStatus)
* [FilterRuleName](#FilterRuleName)
* [InventoryFormat](#InventoryFormat)
* [InventoryFrequency](#InventoryFrequency)
* [InventoryIncludedObjectVersions](#InventoryIncludedObjectVersions)
* [InventoryOptionalField](#InventoryOptionalField)
* [MFADelete](#MFADelete)
* [MFADeleteStatus](#MFADeleteStatus)
* [MetadataDirective](#MetadataDirective)
* [ObjectCannedACL](#ObjectCannedACL)
* [ObjectStorageClass](#ObjectStorageClass)
* [ObjectVersionStorageClass](#ObjectVersionStorageClass)
* [Payer](#Payer)
* [Permission](#Permission)
* [Protocol](#Protocol)
* [ReplicationRuleStatus](#ReplicationRuleStatus)
* [ReplicationStatus](#ReplicationStatus)
* [RequestCharged](#RequestCharged)
* [RequestPayer](#RequestPayer)
* [ServerSideEncryption](#ServerSideEncryption)
* [StorageClass](#StorageClass)
* [StorageClassAnalysisSchemaVersion](#StorageClassAnalysisSchemaVersion)
* [TaggingDirective](#TaggingDirective)
* [Tier](#Tier)
* [TransitionStorageClass](#TransitionStorageClass)
* [Type](#Type)


@docs AnalyticsS3ExportFileFormat,BucketAccelerateStatus,BucketCannedACL,BucketLocationConstraint,BucketLogsPermission,BucketVersioningStatus,EncodingType,Event,ExpirationStatus,FilterRuleName,InventoryFormat,InventoryFrequency,InventoryIncludedObjectVersions,InventoryOptionalField,MFADelete,MFADeleteStatus,MetadataDirective,ObjectCannedACL,ObjectStorageClass,ObjectVersionStorageClass,Payer,Permission,Protocol,ReplicationRuleStatus,ReplicationStatus,RequestCharged,RequestPayer,ServerSideEncryption,StorageClass,StorageClassAnalysisSchemaVersion,TaggingDirective,Tier,TransitionStorageClass,Type

## Exceptions

* [BucketAlreadyExists](#BucketAlreadyExists)
* [BucketAlreadyOwnedByYou](#BucketAlreadyOwnedByYou)
* [NoSuchBucket](#NoSuchBucket)
* [NoSuchKey](#NoSuchKey)
* [NoSuchUpload](#NoSuchUpload)
* [ObjectAlreadyInActiveTierError](#ObjectAlreadyInActiveTierError)
* [ObjectNotInActiveTierError](#ObjectNotInActiveTierError)


@docs BucketAlreadyExists,BucketAlreadyOwnedByYou,NoSuchBucket,NoSuchKey,NoSuchUpload,ObjectAlreadyInActiveTierError,ObjectNotInActiveTierError

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
        "s3"
        "2006-03-01"
        "undefined"
        "AWSS3_20060301."
        "s3.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Aborts a multipart upload.</p><p>To verify that all parts have been removed, so you don't get charged for the part storage, you should call the List Parts operation and ensure the parts list is empty.</p>

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`
* `uploadId` __:__ `String`


-}
abortMultipartUpload :
    String
    -> String
    -> String
    -> (AbortMultipartUploadOptions -> AbortMultipartUploadOptions)
    -> AWS.Request AbortMultipartUploadOutput
abortMultipartUpload bucket key uploadId setOptions =
  let
    options = setOptions (AbortMultipartUploadOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AbortMultipartUpload"
        "DELETE"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        abortMultipartUploadOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a abortMultipartUpload request
-}
type alias AbortMultipartUploadOptions =
    { requestPayer : Maybe RequestPayer
    }



{-| Completes a multipart upload by assembling previously uploaded parts.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`
* `uploadId` __:__ `String`


-}
completeMultipartUpload :
    String
    -> String
    -> String
    -> (CompleteMultipartUploadOptions -> CompleteMultipartUploadOptions)
    -> AWS.Request CompleteMultipartUploadOutput
completeMultipartUpload bucket key uploadId setOptions =
  let
    options = setOptions (CompleteMultipartUploadOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CompleteMultipartUpload"
        "POST"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        completeMultipartUploadOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a completeMultipartUpload request
-}
type alias CompleteMultipartUploadOptions =
    { multipartUpload : Maybe CompletedMultipartUpload
    , requestPayer : Maybe RequestPayer
    }



{-| Creates a copy of an object that is already stored in Amazon S3.

__Required Parameters__

* `bucket` __:__ `String`
* `copySource` __:__ `String`
* `key` __:__ `String`


-}
copyObject :
    String
    -> String
    -> String
    -> (CopyObjectOptions -> CopyObjectOptions)
    -> AWS.Request CopyObjectOutput
copyObject bucket copySource key setOptions =
  let
    options = setOptions (CopyObjectOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyObject"
        "PUT"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        copyObjectOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a copyObject request
-}
type alias CopyObjectOptions =
    { aCL : Maybe ObjectCannedACL
    , cacheControl : Maybe String
    , contentDisposition : Maybe String
    , contentEncoding : Maybe String
    , contentLanguage : Maybe String
    , contentType : Maybe String
    , copySourceIfMatch : Maybe String
    , copySourceIfModifiedSince : Maybe Date
    , copySourceIfNoneMatch : Maybe String
    , copySourceIfUnmodifiedSince : Maybe Date
    , expires : Maybe Date
    , grantFullControl : Maybe String
    , grantRead : Maybe String
    , grantReadACP : Maybe String
    , grantWriteACP : Maybe String
    , metadata : Maybe (Dict String String)
    , metadataDirective : Maybe MetadataDirective
    , taggingDirective : Maybe TaggingDirective
    , serverSideEncryption : Maybe ServerSideEncryption
    , storageClass : Maybe StorageClass
    , websiteRedirectLocation : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKey : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , copySourceSSECustomerAlgorithm : Maybe String
    , copySourceSSECustomerKey : Maybe String
    , copySourceSSECustomerKeyMD5 : Maybe String
    , requestPayer : Maybe RequestPayer
    , tagging : Maybe String
    }



{-| Creates a new bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
createBucket :
    String
    -> (CreateBucketOptions -> CreateBucketOptions)
    -> AWS.Request CreateBucketOutput
createBucket bucket setOptions =
  let
    options = setOptions (CreateBucketOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateBucket"
        "PUT"
        ("/" ++ bucket ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        createBucketOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createBucket request
-}
type alias CreateBucketOptions =
    { aCL : Maybe BucketCannedACL
    , createBucketConfiguration : Maybe CreateBucketConfiguration
    , grantFullControl : Maybe String
    , grantRead : Maybe String
    , grantReadACP : Maybe String
    , grantWrite : Maybe String
    , grantWriteACP : Maybe String
    }



{-| <p>Initiates a multipart upload and returns an upload ID.</p><p><b>Note:</b> After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.</p>

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
createMultipartUpload :
    String
    -> String
    -> (CreateMultipartUploadOptions -> CreateMultipartUploadOptions)
    -> AWS.Request CreateMultipartUploadOutput
createMultipartUpload bucket key setOptions =
  let
    options = setOptions (CreateMultipartUploadOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateMultipartUpload"
        "POST"
        ("/" ++ bucket ++ "/" ++ key ++ "?uploads")
        (AWS.Http.JsonBody
            JE.null
        )
        createMultipartUploadOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createMultipartUpload request
-}
type alias CreateMultipartUploadOptions =
    { aCL : Maybe ObjectCannedACL
    , cacheControl : Maybe String
    , contentDisposition : Maybe String
    , contentEncoding : Maybe String
    , contentLanguage : Maybe String
    , contentType : Maybe String
    , expires : Maybe Date
    , grantFullControl : Maybe String
    , grantRead : Maybe String
    , grantReadACP : Maybe String
    , grantWriteACP : Maybe String
    , metadata : Maybe (Dict String String)
    , serverSideEncryption : Maybe ServerSideEncryption
    , storageClass : Maybe StorageClass
    , websiteRedirectLocation : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKey : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestPayer : Maybe RequestPayer
    }



{-| Deletes the bucket. All objects (including all object versions and Delete Markers) in the bucket must be deleted before the bucket itself can be deleted.

__Required Parameters__

* `bucket` __:__ `String`


-}
deleteBucket :
    String
    -> AWS.Request ()
deleteBucket bucket =
    AWS.Http.unsignedRequest
        "DeleteBucket"
        "DELETE"
        ("/" ++ bucket ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes an analytics configuration for the bucket (specified by the analytics configuration ID).

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`


-}
deleteBucketAnalyticsConfiguration :
    String
    -> String
    -> AWS.Request ()
deleteBucketAnalyticsConfiguration bucket id =
    AWS.Http.unsignedRequest
        "DeleteBucketAnalyticsConfiguration"
        "DELETE"
        ("/" ++ bucket ++ "?analytics")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes the cors configuration information set for the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
deleteBucketCors :
    String
    -> AWS.Request ()
deleteBucketCors bucket =
    AWS.Http.unsignedRequest
        "DeleteBucketCors"
        "DELETE"
        ("/" ++ bucket ++ "?cors")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes an inventory configuration (identified by the inventory ID) from the bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`


-}
deleteBucketInventoryConfiguration :
    String
    -> String
    -> AWS.Request ()
deleteBucketInventoryConfiguration bucket id =
    AWS.Http.unsignedRequest
        "DeleteBucketInventoryConfiguration"
        "DELETE"
        ("/" ++ bucket ++ "?inventory")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes the lifecycle configuration from the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
deleteBucketLifecycle :
    String
    -> AWS.Request ()
deleteBucketLifecycle bucket =
    AWS.Http.unsignedRequest
        "DeleteBucketLifecycle"
        "DELETE"
        ("/" ++ bucket ++ "?lifecycle")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes a metrics configuration (specified by the metrics configuration ID) from the bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`


-}
deleteBucketMetricsConfiguration :
    String
    -> String
    -> AWS.Request ()
deleteBucketMetricsConfiguration bucket id =
    AWS.Http.unsignedRequest
        "DeleteBucketMetricsConfiguration"
        "DELETE"
        ("/" ++ bucket ++ "?metrics")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes the policy from the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
deleteBucketPolicy :
    String
    -> AWS.Request ()
deleteBucketPolicy bucket =
    AWS.Http.unsignedRequest
        "DeleteBucketPolicy"
        "DELETE"
        ("/" ++ bucket ++ "?policy")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes the replication configuration from the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
deleteBucketReplication :
    String
    -> AWS.Request ()
deleteBucketReplication bucket =
    AWS.Http.unsignedRequest
        "DeleteBucketReplication"
        "DELETE"
        ("/" ++ bucket ++ "?replication")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deletes the tags from the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
deleteBucketTagging :
    String
    -> AWS.Request ()
deleteBucketTagging bucket =
    AWS.Http.unsignedRequest
        "DeleteBucketTagging"
        "DELETE"
        ("/" ++ bucket ++ "?tagging")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| This operation removes the website configuration from the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
deleteBucketWebsite :
    String
    -> AWS.Request ()
deleteBucketWebsite bucket =
    AWS.Http.unsignedRequest
        "DeleteBucketWebsite"
        "DELETE"
        ("/" ++ bucket ++ "?website")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object. If there isn't a null version, Amazon S3 does not remove any objects.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
deleteObject :
    String
    -> String
    -> (DeleteObjectOptions -> DeleteObjectOptions)
    -> AWS.Request DeleteObjectOutput
deleteObject bucket key setOptions =
  let
    options = setOptions (DeleteObjectOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteObject"
        "DELETE"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteObjectOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteObject request
-}
type alias DeleteObjectOptions =
    { mFA : Maybe String
    , versionId : Maybe String
    , requestPayer : Maybe RequestPayer
    }



{-| Removes the tag-set from an existing object.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
deleteObjectTagging :
    String
    -> String
    -> (DeleteObjectTaggingOptions -> DeleteObjectTaggingOptions)
    -> AWS.Request DeleteObjectTaggingOutput
deleteObjectTagging bucket key setOptions =
  let
    options = setOptions (DeleteObjectTaggingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteObjectTagging"
        "DELETE"
        ("/" ++ bucket ++ "/" ++ key ++ "?tagging")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteObjectTaggingOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteObjectTagging request
-}
type alias DeleteObjectTaggingOptions =
    { versionId : Maybe String
    }



{-| This operation enables you to delete multiple objects from a bucket using a single HTTP request. You may specify up to 1000 keys.

__Required Parameters__

* `bucket` __:__ `String`
* `delete` __:__ `Delete`


-}
deleteObjects :
    String
    -> Delete
    -> (DeleteObjectsOptions -> DeleteObjectsOptions)
    -> AWS.Request DeleteObjectsOutput
deleteObjects bucket delete setOptions =
  let
    options = setOptions (DeleteObjectsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteObjects"
        "POST"
        ("/" ++ bucket ++ "?delete")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteObjectsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteObjects request
-}
type alias DeleteObjectsOptions =
    { mFA : Maybe String
    , requestPayer : Maybe RequestPayer
    }



{-| Returns the accelerate configuration of a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketAccelerateConfiguration :
    String
    -> AWS.Request GetBucketAccelerateConfigurationOutput
getBucketAccelerateConfiguration bucket =
    AWS.Http.unsignedRequest
        "GetBucketAccelerateConfiguration"
        "GET"
        ("/" ++ bucket ++ "?accelerate")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketAccelerateConfigurationOutputDecoder
        |> AWS.UnsignedRequest



{-| Gets the access control policy for the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketAcl :
    String
    -> AWS.Request GetBucketAclOutput
getBucketAcl bucket =
    AWS.Http.unsignedRequest
        "GetBucketAcl"
        "GET"
        ("/" ++ bucket ++ "?acl")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketAclOutputDecoder
        |> AWS.UnsignedRequest



{-| Gets an analytics configuration for the bucket (specified by the analytics configuration ID).

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`


-}
getBucketAnalyticsConfiguration :
    String
    -> String
    -> AWS.Request GetBucketAnalyticsConfigurationOutput
getBucketAnalyticsConfiguration bucket id =
    AWS.Http.unsignedRequest
        "GetBucketAnalyticsConfiguration"
        "GET"
        ("/" ++ bucket ++ "?analytics")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketAnalyticsConfigurationOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the cors configuration for the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketCors :
    String
    -> AWS.Request GetBucketCorsOutput
getBucketCors bucket =
    AWS.Http.unsignedRequest
        "GetBucketCors"
        "GET"
        ("/" ++ bucket ++ "?cors")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketCorsOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns an inventory configuration (identified by the inventory ID) from the bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`


-}
getBucketInventoryConfiguration :
    String
    -> String
    -> AWS.Request GetBucketInventoryConfigurationOutput
getBucketInventoryConfiguration bucket id =
    AWS.Http.unsignedRequest
        "GetBucketInventoryConfiguration"
        "GET"
        ("/" ++ bucket ++ "?inventory")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketInventoryConfigurationOutputDecoder
        |> AWS.UnsignedRequest



{-| Deprecated, see the GetBucketLifecycleConfiguration operation.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketLifecycle :
    String
    -> AWS.Request GetBucketLifecycleOutput
getBucketLifecycle bucket =
    AWS.Http.unsignedRequest
        "GetBucketLifecycle"
        "GET"
        ("/" ++ bucket ++ "?lifecycle")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketLifecycleOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the lifecycle configuration information set on the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketLifecycleConfiguration :
    String
    -> AWS.Request GetBucketLifecycleConfigurationOutput
getBucketLifecycleConfiguration bucket =
    AWS.Http.unsignedRequest
        "GetBucketLifecycleConfiguration"
        "GET"
        ("/" ++ bucket ++ "?lifecycle")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketLifecycleConfigurationOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the region the bucket resides in.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketLocation :
    String
    -> AWS.Request GetBucketLocationOutput
getBucketLocation bucket =
    AWS.Http.unsignedRequest
        "GetBucketLocation"
        "GET"
        ("/" ++ bucket ++ "?location")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketLocationOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the logging status of a bucket and the permissions users have to view and modify that status. To use GET, you must be the bucket owner.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketLogging :
    String
    -> AWS.Request GetBucketLoggingOutput
getBucketLogging bucket =
    AWS.Http.unsignedRequest
        "GetBucketLogging"
        "GET"
        ("/" ++ bucket ++ "?logging")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketLoggingOutputDecoder
        |> AWS.UnsignedRequest



{-| Gets a metrics configuration (specified by the metrics configuration ID) from the bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`


-}
getBucketMetricsConfiguration :
    String
    -> String
    -> AWS.Request GetBucketMetricsConfigurationOutput
getBucketMetricsConfiguration bucket id =
    AWS.Http.unsignedRequest
        "GetBucketMetricsConfiguration"
        "GET"
        ("/" ++ bucket ++ "?metrics")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketMetricsConfigurationOutputDecoder
        |> AWS.UnsignedRequest



{-| Deprecated, see the GetBucketNotificationConfiguration operation.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketNotification :
    String
    -> AWS.Request NotificationConfigurationDeprecated
getBucketNotification bucket =
    AWS.Http.unsignedRequest
        "GetBucketNotification"
        "GET"
        ("/" ++ bucket ++ "?notification")
        (AWS.Http.QueryParams
            [
            ]
        )
        notificationConfigurationDeprecatedDecoder
        |> AWS.UnsignedRequest



{-| Returns the notification configuration of a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketNotificationConfiguration :
    String
    -> AWS.Request NotificationConfiguration
getBucketNotificationConfiguration bucket =
    AWS.Http.unsignedRequest
        "GetBucketNotificationConfiguration"
        "GET"
        ("/" ++ bucket ++ "?notification")
        (AWS.Http.QueryParams
            [
            ]
        )
        notificationConfigurationDecoder
        |> AWS.UnsignedRequest



{-| Returns the policy of a specified bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketPolicy :
    String
    -> AWS.Request GetBucketPolicyOutput
getBucketPolicy bucket =
    AWS.Http.unsignedRequest
        "GetBucketPolicy"
        "GET"
        ("/" ++ bucket ++ "?policy")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketPolicyOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the replication configuration of a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketReplication :
    String
    -> AWS.Request GetBucketReplicationOutput
getBucketReplication bucket =
    AWS.Http.unsignedRequest
        "GetBucketReplication"
        "GET"
        ("/" ++ bucket ++ "?replication")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketReplicationOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the request payment configuration of a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketRequestPayment :
    String
    -> AWS.Request GetBucketRequestPaymentOutput
getBucketRequestPayment bucket =
    AWS.Http.unsignedRequest
        "GetBucketRequestPayment"
        "GET"
        ("/" ++ bucket ++ "?requestPayment")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketRequestPaymentOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the tag set associated with the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketTagging :
    String
    -> AWS.Request GetBucketTaggingOutput
getBucketTagging bucket =
    AWS.Http.unsignedRequest
        "GetBucketTagging"
        "GET"
        ("/" ++ bucket ++ "?tagging")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketTaggingOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the versioning state of a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketVersioning :
    String
    -> AWS.Request GetBucketVersioningOutput
getBucketVersioning bucket =
    AWS.Http.unsignedRequest
        "GetBucketVersioning"
        "GET"
        ("/" ++ bucket ++ "?versioning")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketVersioningOutputDecoder
        |> AWS.UnsignedRequest



{-| Returns the website configuration for a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
getBucketWebsite :
    String
    -> AWS.Request GetBucketWebsiteOutput
getBucketWebsite bucket =
    AWS.Http.unsignedRequest
        "GetBucketWebsite"
        "GET"
        ("/" ++ bucket ++ "?website")
        (AWS.Http.QueryParams
            [
            ]
        )
        getBucketWebsiteOutputDecoder
        |> AWS.UnsignedRequest



{-| Retrieves objects from Amazon S3.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
getObject :
    String
    -> String
    -> (GetObjectOptions -> GetObjectOptions)
    -> AWS.Request GetObjectOutput
getObject bucket key setOptions =
  let
    options = setOptions (GetObjectOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetObject"
        "GET"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getObjectOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getObject request
-}
type alias GetObjectOptions =
    { ifMatch : Maybe String
    , ifModifiedSince : Maybe Date
    , ifNoneMatch : Maybe String
    , ifUnmodifiedSince : Maybe Date
    , range : Maybe String
    , responseCacheControl : Maybe String
    , responseContentDisposition : Maybe String
    , responseContentEncoding : Maybe String
    , responseContentLanguage : Maybe String
    , responseContentType : Maybe String
    , responseExpires : Maybe Date
    , versionId : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKey : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , requestPayer : Maybe RequestPayer
    , partNumber : Maybe Int
    }



{-| Returns the access control list (ACL) of an object.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
getObjectAcl :
    String
    -> String
    -> (GetObjectAclOptions -> GetObjectAclOptions)
    -> AWS.Request GetObjectAclOutput
getObjectAcl bucket key setOptions =
  let
    options = setOptions (GetObjectAclOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetObjectAcl"
        "GET"
        ("/" ++ bucket ++ "/" ++ key ++ "?acl")
        (AWS.Http.QueryParams
            [
            ]
        )
        getObjectAclOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getObjectAcl request
-}
type alias GetObjectAclOptions =
    { versionId : Maybe String
    , requestPayer : Maybe RequestPayer
    }



{-| Returns the tag-set of an object.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
getObjectTagging :
    String
    -> String
    -> (GetObjectTaggingOptions -> GetObjectTaggingOptions)
    -> AWS.Request GetObjectTaggingOutput
getObjectTagging bucket key setOptions =
  let
    options = setOptions (GetObjectTaggingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetObjectTagging"
        "GET"
        ("/" ++ bucket ++ "/" ++ key ++ "?tagging")
        (AWS.Http.QueryParams
            [
            ]
        )
        getObjectTaggingOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getObjectTagging request
-}
type alias GetObjectTaggingOptions =
    { versionId : Maybe String
    }



{-| Return torrent files from a bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
getObjectTorrent :
    String
    -> String
    -> (GetObjectTorrentOptions -> GetObjectTorrentOptions)
    -> AWS.Request GetObjectTorrentOutput
getObjectTorrent bucket key setOptions =
  let
    options = setOptions (GetObjectTorrentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetObjectTorrent"
        "GET"
        ("/" ++ bucket ++ "/" ++ key ++ "?torrent")
        (AWS.Http.QueryParams
            [
            ]
        )
        getObjectTorrentOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getObjectTorrent request
-}
type alias GetObjectTorrentOptions =
    { requestPayer : Maybe RequestPayer
    }



{-| This operation is useful to determine if a bucket exists and you have permission to access it.

__Required Parameters__

* `bucket` __:__ `String`


-}
headBucket :
    String
    -> AWS.Request ()
headBucket bucket =
    AWS.Http.unsignedRequest
        "HeadBucket"
        "HEAD"
        ("/" ++ bucket ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| The HEAD operation retrieves metadata from an object without returning the object itself. This operation is useful if you're only interested in an object's metadata. To use HEAD, you must have READ access to the object.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
headObject :
    String
    -> String
    -> (HeadObjectOptions -> HeadObjectOptions)
    -> AWS.Request HeadObjectOutput
headObject bucket key setOptions =
  let
    options = setOptions (HeadObjectOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "HeadObject"
        "HEAD"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        headObjectOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a headObject request
-}
type alias HeadObjectOptions =
    { ifMatch : Maybe String
    , ifModifiedSince : Maybe Date
    , ifNoneMatch : Maybe String
    , ifUnmodifiedSince : Maybe Date
    , range : Maybe String
    , versionId : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKey : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , requestPayer : Maybe RequestPayer
    , partNumber : Maybe Int
    }



{-| Lists the analytics configurations for the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
listBucketAnalyticsConfigurations :
    String
    -> (ListBucketAnalyticsConfigurationsOptions -> ListBucketAnalyticsConfigurationsOptions)
    -> AWS.Request ListBucketAnalyticsConfigurationsOutput
listBucketAnalyticsConfigurations bucket setOptions =
  let
    options = setOptions (ListBucketAnalyticsConfigurationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListBucketAnalyticsConfigurations"
        "GET"
        ("/" ++ bucket ++ "?analytics")
        (AWS.Http.QueryParams
            [
            ]
        )
        listBucketAnalyticsConfigurationsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listBucketAnalyticsConfigurations request
-}
type alias ListBucketAnalyticsConfigurationsOptions =
    { continuationToken : Maybe String
    }



{-| Returns a list of inventory configurations for the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
listBucketInventoryConfigurations :
    String
    -> (ListBucketInventoryConfigurationsOptions -> ListBucketInventoryConfigurationsOptions)
    -> AWS.Request ListBucketInventoryConfigurationsOutput
listBucketInventoryConfigurations bucket setOptions =
  let
    options = setOptions (ListBucketInventoryConfigurationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListBucketInventoryConfigurations"
        "GET"
        ("/" ++ bucket ++ "?inventory")
        (AWS.Http.QueryParams
            [
            ]
        )
        listBucketInventoryConfigurationsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listBucketInventoryConfigurations request
-}
type alias ListBucketInventoryConfigurationsOptions =
    { continuationToken : Maybe String
    }



{-| Lists the metrics configurations for the bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
listBucketMetricsConfigurations :
    String
    -> (ListBucketMetricsConfigurationsOptions -> ListBucketMetricsConfigurationsOptions)
    -> AWS.Request ListBucketMetricsConfigurationsOutput
listBucketMetricsConfigurations bucket setOptions =
  let
    options = setOptions (ListBucketMetricsConfigurationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListBucketMetricsConfigurations"
        "GET"
        ("/" ++ bucket ++ "?metrics")
        (AWS.Http.QueryParams
            [
            ]
        )
        listBucketMetricsConfigurationsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listBucketMetricsConfigurations request
-}
type alias ListBucketMetricsConfigurationsOptions =
    { continuationToken : Maybe String
    }



{-| Returns a list of all buckets owned by the authenticated sender of the request.

__Required Parameters__



-}
listBuckets :
    AWS.Request ListBucketsOutput
listBuckets =
    AWS.Http.unsignedRequest
        "ListBuckets"
        "GET"
        "/"
        (AWS.Http.QueryParams
            [
            ]
        )
        listBucketsOutputDecoder
        |> AWS.UnsignedRequest



{-| This operation lists in-progress multipart uploads.

__Required Parameters__

* `bucket` __:__ `String`


-}
listMultipartUploads :
    String
    -> (ListMultipartUploadsOptions -> ListMultipartUploadsOptions)
    -> AWS.Request ListMultipartUploadsOutput
listMultipartUploads bucket setOptions =
  let
    options = setOptions (ListMultipartUploadsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListMultipartUploads"
        "GET"
        ("/" ++ bucket ++ "?uploads")
        (AWS.Http.QueryParams
            [
            ]
        )
        listMultipartUploadsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listMultipartUploads request
-}
type alias ListMultipartUploadsOptions =
    { delimiter : Maybe String
    , encodingType : Maybe EncodingType
    , keyMarker : Maybe String
    , maxUploads : Maybe Int
    , prefix : Maybe String
    , uploadIdMarker : Maybe String
    }



{-| Returns metadata about all of the versions of objects in a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
listObjectVersions :
    String
    -> (ListObjectVersionsOptions -> ListObjectVersionsOptions)
    -> AWS.Request ListObjectVersionsOutput
listObjectVersions bucket setOptions =
  let
    options = setOptions (ListObjectVersionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListObjectVersions"
        "GET"
        ("/" ++ bucket ++ "?versions")
        (AWS.Http.QueryParams
            [
            ]
        )
        listObjectVersionsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listObjectVersions request
-}
type alias ListObjectVersionsOptions =
    { delimiter : Maybe String
    , encodingType : Maybe EncodingType
    , keyMarker : Maybe String
    , maxKeys : Maybe Int
    , prefix : Maybe String
    , versionIdMarker : Maybe String
    }



{-| Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket.

__Required Parameters__

* `bucket` __:__ `String`


-}
listObjects :
    String
    -> (ListObjectsOptions -> ListObjectsOptions)
    -> AWS.Request ListObjectsOutput
listObjects bucket setOptions =
  let
    options = setOptions (ListObjectsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListObjects"
        "GET"
        ("/" ++ bucket ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listObjectsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listObjects request
-}
type alias ListObjectsOptions =
    { delimiter : Maybe String
    , encodingType : Maybe EncodingType
    , marker : Maybe String
    , maxKeys : Maybe Int
    , prefix : Maybe String
    , requestPayer : Maybe RequestPayer
    }



{-| Returns some or all (up to 1000) of the objects in a bucket. You can use the request parameters as selection criteria to return a subset of the objects in a bucket. Note: ListObjectsV2 is the revised List Objects API and we recommend you use this revised API for new application development.

__Required Parameters__

* `bucket` __:__ `String`


-}
listObjectsV2 :
    String
    -> (ListObjectsV2Options -> ListObjectsV2Options)
    -> AWS.Request ListObjectsV2Output
listObjectsV2 bucket setOptions =
  let
    options = setOptions (ListObjectsV2Options Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListObjectsV2"
        "GET"
        ("/" ++ bucket ++ "?list-type=2")
        (AWS.Http.QueryParams
            [
            ]
        )
        listObjectsV2OutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listObjectsV2 request
-}
type alias ListObjectsV2Options =
    { delimiter : Maybe String
    , encodingType : Maybe EncodingType
    , maxKeys : Maybe Int
    , prefix : Maybe String
    , continuationToken : Maybe String
    , fetchOwner : Maybe Bool
    , startAfter : Maybe String
    , requestPayer : Maybe RequestPayer
    }



{-| Lists the parts that have been uploaded for a specific multipart upload.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`
* `uploadId` __:__ `String`


-}
listParts :
    String
    -> String
    -> String
    -> (ListPartsOptions -> ListPartsOptions)
    -> AWS.Request ListPartsOutput
listParts bucket key uploadId setOptions =
  let
    options = setOptions (ListPartsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListParts"
        "GET"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listPartsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listParts request
-}
type alias ListPartsOptions =
    { maxParts : Maybe Int
    , partNumberMarker : Maybe Int
    , requestPayer : Maybe RequestPayer
    }



{-| Sets the accelerate configuration of an existing bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `accelerateConfiguration` __:__ `AccelerateConfiguration`


-}
putBucketAccelerateConfiguration :
    String
    -> AccelerateConfiguration
    -> AWS.Request ()
putBucketAccelerateConfiguration bucket accelerateConfiguration =
    AWS.Http.unsignedRequest
        "PutBucketAccelerateConfiguration"
        "PUT"
        ("/" ++ bucket ++ "?accelerate")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Sets the permissions on a bucket using access control lists (ACL).

__Required Parameters__

* `bucket` __:__ `String`


-}
putBucketAcl :
    String
    -> (PutBucketAclOptions -> PutBucketAclOptions)
    -> AWS.Request ()
putBucketAcl bucket setOptions =
  let
    options = setOptions (PutBucketAclOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketAcl"
        "PUT"
        ("/" ++ bucket ++ "?acl")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketAcl request
-}
type alias PutBucketAclOptions =
    { aCL : Maybe BucketCannedACL
    , accessControlPolicy : Maybe AccessControlPolicy
    , contentMD5 : Maybe String
    , grantFullControl : Maybe String
    , grantRead : Maybe String
    , grantReadACP : Maybe String
    , grantWrite : Maybe String
    , grantWriteACP : Maybe String
    }



{-| Sets an analytics configuration for the bucket (specified by the analytics configuration ID).

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`
* `analyticsConfiguration` __:__ `AnalyticsConfiguration`


-}
putBucketAnalyticsConfiguration :
    String
    -> String
    -> AnalyticsConfiguration
    -> AWS.Request ()
putBucketAnalyticsConfiguration bucket id analyticsConfiguration =
    AWS.Http.unsignedRequest
        "PutBucketAnalyticsConfiguration"
        "PUT"
        ("/" ++ bucket ++ "?analytics")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Sets the cors configuration for a bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `cORSConfiguration` __:__ `CORSConfiguration`


-}
putBucketCors :
    String
    -> CORSConfiguration
    -> (PutBucketCorsOptions -> PutBucketCorsOptions)
    -> AWS.Request ()
putBucketCors bucket cORSConfiguration setOptions =
  let
    options = setOptions (PutBucketCorsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketCors"
        "PUT"
        ("/" ++ bucket ++ "?cors")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketCors request
-}
type alias PutBucketCorsOptions =
    { contentMD5 : Maybe String
    }



{-| Adds an inventory configuration (identified by the inventory ID) from the bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`
* `inventoryConfiguration` __:__ `InventoryConfiguration`


-}
putBucketInventoryConfiguration :
    String
    -> String
    -> InventoryConfiguration
    -> AWS.Request ()
putBucketInventoryConfiguration bucket id inventoryConfiguration =
    AWS.Http.unsignedRequest
        "PutBucketInventoryConfiguration"
        "PUT"
        ("/" ++ bucket ++ "?inventory")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deprecated, see the PutBucketLifecycleConfiguration operation.

__Required Parameters__

* `bucket` __:__ `String`


-}
putBucketLifecycle :
    String
    -> (PutBucketLifecycleOptions -> PutBucketLifecycleOptions)
    -> AWS.Request ()
putBucketLifecycle bucket setOptions =
  let
    options = setOptions (PutBucketLifecycleOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketLifecycle"
        "PUT"
        ("/" ++ bucket ++ "?lifecycle")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketLifecycle request
-}
type alias PutBucketLifecycleOptions =
    { contentMD5 : Maybe String
    , lifecycleConfiguration : Maybe LifecycleConfiguration
    }



{-| Sets lifecycle configuration for your bucket. If a lifecycle configuration exists, it replaces it.

__Required Parameters__

* `bucket` __:__ `String`


-}
putBucketLifecycleConfiguration :
    String
    -> (PutBucketLifecycleConfigurationOptions -> PutBucketLifecycleConfigurationOptions)
    -> AWS.Request ()
putBucketLifecycleConfiguration bucket setOptions =
  let
    options = setOptions (PutBucketLifecycleConfigurationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketLifecycleConfiguration"
        "PUT"
        ("/" ++ bucket ++ "?lifecycle")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketLifecycleConfiguration request
-}
type alias PutBucketLifecycleConfigurationOptions =
    { lifecycleConfiguration : Maybe BucketLifecycleConfiguration
    }



{-| Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging parameters. To set the logging status of a bucket, you must be the bucket owner.

__Required Parameters__

* `bucket` __:__ `String`
* `bucketLoggingStatus` __:__ `BucketLoggingStatus`


-}
putBucketLogging :
    String
    -> BucketLoggingStatus
    -> (PutBucketLoggingOptions -> PutBucketLoggingOptions)
    -> AWS.Request ()
putBucketLogging bucket bucketLoggingStatus setOptions =
  let
    options = setOptions (PutBucketLoggingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketLogging"
        "PUT"
        ("/" ++ bucket ++ "?logging")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketLogging request
-}
type alias PutBucketLoggingOptions =
    { contentMD5 : Maybe String
    }



{-| Sets a metrics configuration (specified by the metrics configuration ID) for the bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `id` __:__ `String`
* `metricsConfiguration` __:__ `MetricsConfiguration`


-}
putBucketMetricsConfiguration :
    String
    -> String
    -> MetricsConfiguration
    -> AWS.Request ()
putBucketMetricsConfiguration bucket id metricsConfiguration =
    AWS.Http.unsignedRequest
        "PutBucketMetricsConfiguration"
        "PUT"
        ("/" ++ bucket ++ "?metrics")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Deprecated, see the PutBucketNotificationConfiguraiton operation.

__Required Parameters__

* `bucket` __:__ `String`
* `notificationConfiguration` __:__ `NotificationConfigurationDeprecated`


-}
putBucketNotification :
    String
    -> NotificationConfigurationDeprecated
    -> (PutBucketNotificationOptions -> PutBucketNotificationOptions)
    -> AWS.Request ()
putBucketNotification bucket notificationConfiguration setOptions =
  let
    options = setOptions (PutBucketNotificationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketNotification"
        "PUT"
        ("/" ++ bucket ++ "?notification")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketNotification request
-}
type alias PutBucketNotificationOptions =
    { contentMD5 : Maybe String
    }



{-| Enables notifications of specified events for a bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `notificationConfiguration` __:__ `NotificationConfiguration`


-}
putBucketNotificationConfiguration :
    String
    -> NotificationConfiguration
    -> AWS.Request ()
putBucketNotificationConfiguration bucket notificationConfiguration =
    AWS.Http.unsignedRequest
        "PutBucketNotificationConfiguration"
        "PUT"
        ("/" ++ bucket ++ "?notification")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| Replaces a policy on a bucket. If the bucket already has a policy, the one in this request completely replaces it.

__Required Parameters__

* `bucket` __:__ `String`
* `policy` __:__ `String`


-}
putBucketPolicy :
    String
    -> String
    -> (PutBucketPolicyOptions -> PutBucketPolicyOptions)
    -> AWS.Request ()
putBucketPolicy bucket policy setOptions =
  let
    options = setOptions (PutBucketPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketPolicy"
        "PUT"
        ("/" ++ bucket ++ "?policy")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketPolicy request
-}
type alias PutBucketPolicyOptions =
    { contentMD5 : Maybe String
    }



{-| Creates a new replication configuration (or replaces an existing one, if present).

__Required Parameters__

* `bucket` __:__ `String`
* `replicationConfiguration` __:__ `ReplicationConfiguration`


-}
putBucketReplication :
    String
    -> ReplicationConfiguration
    -> (PutBucketReplicationOptions -> PutBucketReplicationOptions)
    -> AWS.Request ()
putBucketReplication bucket replicationConfiguration setOptions =
  let
    options = setOptions (PutBucketReplicationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketReplication"
        "PUT"
        ("/" ++ bucket ++ "?replication")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketReplication request
-}
type alias PutBucketReplicationOptions =
    { contentMD5 : Maybe String
    }



{-| Sets the request payment configuration for a bucket. By default, the bucket owner pays for downloads from the bucket. This configuration parameter enables the bucket owner (only) to specify that the person requesting the download will be charged for the download. Documentation on requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html

__Required Parameters__

* `bucket` __:__ `String`
* `requestPaymentConfiguration` __:__ `RequestPaymentConfiguration`


-}
putBucketRequestPayment :
    String
    -> RequestPaymentConfiguration
    -> (PutBucketRequestPaymentOptions -> PutBucketRequestPaymentOptions)
    -> AWS.Request ()
putBucketRequestPayment bucket requestPaymentConfiguration setOptions =
  let
    options = setOptions (PutBucketRequestPaymentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketRequestPayment"
        "PUT"
        ("/" ++ bucket ++ "?requestPayment")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketRequestPayment request
-}
type alias PutBucketRequestPaymentOptions =
    { contentMD5 : Maybe String
    }



{-| Sets the tags for a bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `tagging` __:__ `Tagging`


-}
putBucketTagging :
    String
    -> Tagging
    -> (PutBucketTaggingOptions -> PutBucketTaggingOptions)
    -> AWS.Request ()
putBucketTagging bucket tagging setOptions =
  let
    options = setOptions (PutBucketTaggingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketTagging"
        "PUT"
        ("/" ++ bucket ++ "?tagging")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketTagging request
-}
type alias PutBucketTaggingOptions =
    { contentMD5 : Maybe String
    }



{-| Sets the versioning state of an existing bucket. To set the versioning state, you must be the bucket owner.

__Required Parameters__

* `bucket` __:__ `String`
* `versioningConfiguration` __:__ `VersioningConfiguration`


-}
putBucketVersioning :
    String
    -> VersioningConfiguration
    -> (PutBucketVersioningOptions -> PutBucketVersioningOptions)
    -> AWS.Request ()
putBucketVersioning bucket versioningConfiguration setOptions =
  let
    options = setOptions (PutBucketVersioningOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketVersioning"
        "PUT"
        ("/" ++ bucket ++ "?versioning")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketVersioning request
-}
type alias PutBucketVersioningOptions =
    { contentMD5 : Maybe String
    , mFA : Maybe String
    }



{-| Set the website configuration for a bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `websiteConfiguration` __:__ `WebsiteConfiguration`


-}
putBucketWebsite :
    String
    -> WebsiteConfiguration
    -> (PutBucketWebsiteOptions -> PutBucketWebsiteOptions)
    -> AWS.Request ()
putBucketWebsite bucket websiteConfiguration setOptions =
  let
    options = setOptions (PutBucketWebsiteOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutBucketWebsite"
        "PUT"
        ("/" ++ bucket ++ "?website")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putBucketWebsite request
-}
type alias PutBucketWebsiteOptions =
    { contentMD5 : Maybe String
    }



{-| Adds an object to a bucket.

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
putObject :
    String
    -> String
    -> (PutObjectOptions -> PutObjectOptions)
    -> AWS.Request PutObjectOutput
putObject bucket key setOptions =
  let
    options = setOptions (PutObjectOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutObject"
        "PUT"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        putObjectOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a putObject request
-}
type alias PutObjectOptions =
    { aCL : Maybe ObjectCannedACL
    , body : Maybe String
    , cacheControl : Maybe String
    , contentDisposition : Maybe String
    , contentEncoding : Maybe String
    , contentLanguage : Maybe String
    , contentLength : Maybe Int
    , contentMD5 : Maybe String
    , contentType : Maybe String
    , expires : Maybe Date
    , grantFullControl : Maybe String
    , grantRead : Maybe String
    , grantReadACP : Maybe String
    , grantWriteACP : Maybe String
    , metadata : Maybe (Dict String String)
    , serverSideEncryption : Maybe ServerSideEncryption
    , storageClass : Maybe StorageClass
    , websiteRedirectLocation : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKey : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestPayer : Maybe RequestPayer
    , tagging : Maybe String
    }



{-| uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a bucket

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
putObjectAcl :
    String
    -> String
    -> (PutObjectAclOptions -> PutObjectAclOptions)
    -> AWS.Request PutObjectAclOutput
putObjectAcl bucket key setOptions =
  let
    options = setOptions (PutObjectAclOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutObjectAcl"
        "PUT"
        ("/" ++ bucket ++ "/" ++ key ++ "?acl")
        (AWS.Http.JsonBody
            JE.null
        )
        putObjectAclOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a putObjectAcl request
-}
type alias PutObjectAclOptions =
    { aCL : Maybe ObjectCannedACL
    , accessControlPolicy : Maybe AccessControlPolicy
    , contentMD5 : Maybe String
    , grantFullControl : Maybe String
    , grantRead : Maybe String
    , grantReadACP : Maybe String
    , grantWrite : Maybe String
    , grantWriteACP : Maybe String
    , requestPayer : Maybe RequestPayer
    , versionId : Maybe String
    }



{-| Sets the supplied tag-set to an object that already exists in a bucket

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`
* `tagging` __:__ `Tagging`


-}
putObjectTagging :
    String
    -> String
    -> Tagging
    -> (PutObjectTaggingOptions -> PutObjectTaggingOptions)
    -> AWS.Request PutObjectTaggingOutput
putObjectTagging bucket key tagging setOptions =
  let
    options = setOptions (PutObjectTaggingOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutObjectTagging"
        "PUT"
        ("/" ++ bucket ++ "/" ++ key ++ "?tagging")
        (AWS.Http.JsonBody
            JE.null
        )
        putObjectTaggingOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a putObjectTagging request
-}
type alias PutObjectTaggingOptions =
    { versionId : Maybe String
    , contentMD5 : Maybe String
    }



{-| Restores an archived copy of an object back into Amazon S3

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`


-}
restoreObject :
    String
    -> String
    -> (RestoreObjectOptions -> RestoreObjectOptions)
    -> AWS.Request RestoreObjectOutput
restoreObject bucket key setOptions =
  let
    options = setOptions (RestoreObjectOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreObject"
        "POST"
        ("/" ++ bucket ++ "/" ++ key ++ "?restore")
        (AWS.Http.JsonBody
            JE.null
        )
        restoreObjectOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a restoreObject request
-}
type alias RestoreObjectOptions =
    { versionId : Maybe String
    , restoreRequest : Maybe RestoreRequest
    , requestPayer : Maybe RequestPayer
    }



{-| <p>Uploads a part in a multipart upload.</p><p><b>Note:</b> After you initiate multipart upload and upload one or more parts, you must either complete or abort multipart upload in order to stop getting charged for storage of the uploaded parts. Only after you either complete or abort multipart upload, Amazon S3 frees up the parts storage and stops charging you for the parts storage.</p>

__Required Parameters__

* `bucket` __:__ `String`
* `key` __:__ `String`
* `partNumber` __:__ `Int`
* `uploadId` __:__ `String`


-}
uploadPart :
    String
    -> String
    -> Int
    -> String
    -> (UploadPartOptions -> UploadPartOptions)
    -> AWS.Request UploadPartOutput
uploadPart bucket key partNumber uploadId setOptions =
  let
    options = setOptions (UploadPartOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UploadPart"
        "PUT"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        uploadPartOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a uploadPart request
-}
type alias UploadPartOptions =
    { body : Maybe String
    , contentLength : Maybe Int
    , contentMD5 : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKey : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , requestPayer : Maybe RequestPayer
    }



{-| Uploads a part by copying data from an existing object as data source.

__Required Parameters__

* `bucket` __:__ `String`
* `copySource` __:__ `String`
* `key` __:__ `String`
* `partNumber` __:__ `Int`
* `uploadId` __:__ `String`


-}
uploadPartCopy :
    String
    -> String
    -> String
    -> Int
    -> String
    -> (UploadPartCopyOptions -> UploadPartCopyOptions)
    -> AWS.Request UploadPartCopyOutput
uploadPartCopy bucket copySource key partNumber uploadId setOptions =
  let
    options = setOptions (UploadPartCopyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UploadPartCopy"
        "PUT"
        ("/" ++ bucket ++ "/" ++ key ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        uploadPartCopyOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a uploadPartCopy request
-}
type alias UploadPartCopyOptions =
    { copySourceIfMatch : Maybe String
    , copySourceIfModifiedSince : Maybe Date
    , copySourceIfNoneMatch : Maybe String
    , copySourceIfUnmodifiedSince : Maybe Date
    , copySourceRange : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKey : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , copySourceSSECustomerAlgorithm : Maybe String
    , copySourceSSECustomerKey : Maybe String
    , copySourceSSECustomerKeyMD5 : Maybe String
    , requestPayer : Maybe RequestPayer
    }




{-| Specifies the days since the initiation of an Incomplete Multipart Upload that Lifecycle will wait before permanently removing all parts of the upload.
-}
type alias AbortIncompleteMultipartUpload =
    { daysAfterInitiation : Maybe Int
    }



abortIncompleteMultipartUploadDecoder : JD.Decoder AbortIncompleteMultipartUpload
abortIncompleteMultipartUploadDecoder =
    JDP.decode AbortIncompleteMultipartUpload
        |> JDP.optional "daysAfterInitiation" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from abortMultipartUplo
-}
type alias AbortMultipartUploadOutput =
    { requestCharged : Maybe RequestCharged
    }



abortMultipartUploadOutputDecoder : JD.Decoder AbortMultipartUploadOutput
abortMultipartUploadOutputDecoder =
    JDP.decode AbortMultipartUploadOutput
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias AccelerateConfiguration =
    { status : Maybe BucketAccelerateStatus
    }



accelerateConfigurationDecoder : JD.Decoder AccelerateConfiguration
accelerateConfigurationDecoder =
    JDP.decode AccelerateConfiguration
        |> JDP.optional "status" (JD.nullable bucketAccelerateStatusDecoder) Nothing




{-| undefined
-}
type alias AccessControlPolicy =
    { grants : Maybe (List Grant)
    , owner : Maybe Owner
    }



accessControlPolicyDecoder : JD.Decoder AccessControlPolicy
accessControlPolicyDecoder =
    JDP.decode AccessControlPolicy
        |> JDP.optional "grants" (JD.nullable (JD.list grantDecoder)) Nothing
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing




{-| undefined
-}
type alias AnalyticsAndOperator =
    { prefix : Maybe String
    , tags : Maybe (List Tag)
    }



analyticsAndOperatorDecoder : JD.Decoder AnalyticsAndOperator
analyticsAndOperatorDecoder =
    JDP.decode AnalyticsAndOperator
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| undefined
-}
type alias AnalyticsConfiguration =
    { id : String
    , filter : Maybe AnalyticsFilter
    , storageClassAnalysis : StorageClassAnalysis
    }



analyticsConfigurationDecoder : JD.Decoder AnalyticsConfiguration
analyticsConfigurationDecoder =
    JDP.decode AnalyticsConfiguration
        |> JDP.required "id" JD.string
        |> JDP.optional "filter" (JD.nullable analyticsFilterDecoder) Nothing
        |> JDP.required "storageClassAnalysis" storageClassAnalysisDecoder




{-| undefined
-}
type alias AnalyticsExportDestination =
    { s3BucketDestination : AnalyticsS3BucketDestination
    }



analyticsExportDestinationDecoder : JD.Decoder AnalyticsExportDestination
analyticsExportDestinationDecoder =
    JDP.decode AnalyticsExportDestination
        |> JDP.required "s3BucketDestination" analyticsS3BucketDestinationDecoder




{-| undefined
-}
type alias AnalyticsFilter =
    { prefix : Maybe String
    , tag : Maybe Tag
    , and : Maybe AnalyticsAndOperator
    }



analyticsFilterDecoder : JD.Decoder AnalyticsFilter
analyticsFilterDecoder =
    JDP.decode AnalyticsFilter
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "tag" (JD.nullable tagDecoder) Nothing
        |> JDP.optional "and" (JD.nullable analyticsAndOperatorDecoder) Nothing




{-| undefined
-}
type alias AnalyticsS3BucketDestination =
    { format : AnalyticsS3ExportFileFormat
    , bucketAccountId : Maybe String
    , bucket : String
    , prefix : Maybe String
    }



analyticsS3BucketDestinationDecoder : JD.Decoder AnalyticsS3BucketDestination
analyticsS3BucketDestinationDecoder =
    JDP.decode AnalyticsS3BucketDestination
        |> JDP.required "format" analyticsS3ExportFileFormatDecoder
        |> JDP.optional "bucketAccountId" (JD.nullable JD.string) Nothing
        |> JDP.required "bucket" JD.string
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing




{-| One of

* `AnalyticsS3ExportFileFormat_CSV`

-}
type AnalyticsS3ExportFileFormat
    = AnalyticsS3ExportFileFormat_CSV



analyticsS3ExportFileFormatDecoder : JD.Decoder AnalyticsS3ExportFileFormat
analyticsS3ExportFileFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CSV" ->
                        JD.succeed AnalyticsS3ExportFileFormat_CSV


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias Bucket =
    { name : Maybe String
    , creationDate : Maybe Date
    }



bucketDecoder : JD.Decoder Bucket
bucketDecoder =
    JDP.decode Bucket
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing




{-| One of

* `BucketAccelerateStatus_Enabled`
* `BucketAccelerateStatus_Suspended`

-}
type BucketAccelerateStatus
    = BucketAccelerateStatus_Enabled
    | BucketAccelerateStatus_Suspended



bucketAccelerateStatusDecoder : JD.Decoder BucketAccelerateStatus
bucketAccelerateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed BucketAccelerateStatus_Enabled

                    "Suspended" ->
                        JD.succeed BucketAccelerateStatus_Suspended


                    _ ->
                        JD.fail "bad thing"
            )



{-| The requested bucket name is not available. The bucket namespace is shared by all users of the system. Please select a different name and try again.
-}
type alias BucketAlreadyExists =
    { 
    }



bucketAlreadyExistsDecoder : JD.Decoder BucketAlreadyExists
bucketAlreadyExistsDecoder =
    JDP.decode BucketAlreadyExists



{-| undefined
-}
type alias BucketAlreadyOwnedByYou =
    { 
    }



bucketAlreadyOwnedByYouDecoder : JD.Decoder BucketAlreadyOwnedByYou
bucketAlreadyOwnedByYouDecoder =
    JDP.decode BucketAlreadyOwnedByYou



{-| One of

* `BucketCannedACL_private`
* `BucketCannedACL_public-read`
* `BucketCannedACL_public-read-write`
* `BucketCannedACL_authenticated-read`

-}
type BucketCannedACL
    = BucketCannedACL_private
    | BucketCannedACL_public_read
    | BucketCannedACL_public_read_write
    | BucketCannedACL_authenticated_read



bucketCannedACLDecoder : JD.Decoder BucketCannedACL
bucketCannedACLDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "private" ->
                        JD.succeed BucketCannedACL_private

                    "public_read" ->
                        JD.succeed BucketCannedACL_public_read

                    "public_read_write" ->
                        JD.succeed BucketCannedACL_public_read_write

                    "authenticated_read" ->
                        JD.succeed BucketCannedACL_authenticated_read


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias BucketLifecycleConfiguration =
    { rules : (List LifecycleRule)
    }



bucketLifecycleConfigurationDecoder : JD.Decoder BucketLifecycleConfiguration
bucketLifecycleConfigurationDecoder =
    JDP.decode BucketLifecycleConfiguration
        |> JDP.required "rules" (JD.list lifecycleRuleDecoder)




{-| One of

* `BucketLocationConstraint_EU`
* `BucketLocationConstraint_eu-west-1`
* `BucketLocationConstraint_us-west-1`
* `BucketLocationConstraint_us-west-2`
* `BucketLocationConstraint_ap-south-1`
* `BucketLocationConstraint_ap-southeast-1`
* `BucketLocationConstraint_ap-southeast-2`
* `BucketLocationConstraint_ap-northeast-1`
* `BucketLocationConstraint_sa-east-1`
* `BucketLocationConstraint_cn-north-1`
* `BucketLocationConstraint_eu-central-1`

-}
type BucketLocationConstraint
    = BucketLocationConstraint_EU
    | BucketLocationConstraint_eu_west_1
    | BucketLocationConstraint_us_west_1
    | BucketLocationConstraint_us_west_2
    | BucketLocationConstraint_ap_south_1
    | BucketLocationConstraint_ap_southeast_1
    | BucketLocationConstraint_ap_southeast_2
    | BucketLocationConstraint_ap_northeast_1
    | BucketLocationConstraint_sa_east_1
    | BucketLocationConstraint_cn_north_1
    | BucketLocationConstraint_eu_central_1



bucketLocationConstraintDecoder : JD.Decoder BucketLocationConstraint
bucketLocationConstraintDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EU" ->
                        JD.succeed BucketLocationConstraint_EU

                    "eu_west_1" ->
                        JD.succeed BucketLocationConstraint_eu_west_1

                    "us_west_1" ->
                        JD.succeed BucketLocationConstraint_us_west_1

                    "us_west_2" ->
                        JD.succeed BucketLocationConstraint_us_west_2

                    "ap_south_1" ->
                        JD.succeed BucketLocationConstraint_ap_south_1

                    "ap_southeast_1" ->
                        JD.succeed BucketLocationConstraint_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed BucketLocationConstraint_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed BucketLocationConstraint_ap_northeast_1

                    "sa_east_1" ->
                        JD.succeed BucketLocationConstraint_sa_east_1

                    "cn_north_1" ->
                        JD.succeed BucketLocationConstraint_cn_north_1

                    "eu_central_1" ->
                        JD.succeed BucketLocationConstraint_eu_central_1


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias BucketLoggingStatus =
    { loggingEnabled : Maybe LoggingEnabled
    }



bucketLoggingStatusDecoder : JD.Decoder BucketLoggingStatus
bucketLoggingStatusDecoder =
    JDP.decode BucketLoggingStatus
        |> JDP.optional "loggingEnabled" (JD.nullable loggingEnabledDecoder) Nothing




{-| One of

* `BucketLogsPermission_FULL_CONTROL`
* `BucketLogsPermission_READ`
* `BucketLogsPermission_WRITE`

-}
type BucketLogsPermission
    = BucketLogsPermission_FULL_CONTROL
    | BucketLogsPermission_READ
    | BucketLogsPermission_WRITE



bucketLogsPermissionDecoder : JD.Decoder BucketLogsPermission
bucketLogsPermissionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FULL_CONTROL" ->
                        JD.succeed BucketLogsPermission_FULL_CONTROL

                    "READ" ->
                        JD.succeed BucketLogsPermission_READ

                    "WRITE" ->
                        JD.succeed BucketLogsPermission_WRITE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `BucketVersioningStatus_Enabled`
* `BucketVersioningStatus_Suspended`

-}
type BucketVersioningStatus
    = BucketVersioningStatus_Enabled
    | BucketVersioningStatus_Suspended



bucketVersioningStatusDecoder : JD.Decoder BucketVersioningStatus
bucketVersioningStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed BucketVersioningStatus_Enabled

                    "Suspended" ->
                        JD.succeed BucketVersioningStatus_Suspended


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias CORSConfiguration =
    { cORSRules : (List CORSRule)
    }



cORSConfigurationDecoder : JD.Decoder CORSConfiguration
cORSConfigurationDecoder =
    JDP.decode CORSConfiguration
        |> JDP.required "cORSRules" (JD.list cORSRuleDecoder)




{-| undefined
-}
type alias CORSRule =
    { allowedHeaders : Maybe (List String)
    , allowedMethods : (List String)
    , allowedOrigins : (List String)
    , exposeHeaders : Maybe (List String)
    , maxAgeSeconds : Maybe Int
    }



cORSRuleDecoder : JD.Decoder CORSRule
cORSRuleDecoder =
    JDP.decode CORSRule
        |> JDP.optional "allowedHeaders" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.required "allowedMethods" (JD.list JD.string)
        |> JDP.required "allowedOrigins" (JD.list JD.string)
        |> JDP.optional "exposeHeaders" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "maxAgeSeconds" (JD.nullable JD.int) Nothing




{-| undefined
-}
type alias CloudFunctionConfiguration =
    { id : Maybe String
    , event : Maybe Event
    , events : Maybe (List Event)
    , cloudFunction : Maybe String
    , invocationRole : Maybe String
    }



cloudFunctionConfigurationDecoder : JD.Decoder CloudFunctionConfiguration
cloudFunctionConfigurationDecoder =
    JDP.decode CloudFunctionConfiguration
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "event" (JD.nullable eventDecoder) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list eventDecoder)) Nothing
        |> JDP.optional "cloudFunction" (JD.nullable JD.string) Nothing
        |> JDP.optional "invocationRole" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias CommonPrefix =
    { prefix : Maybe String
    }



commonPrefixDecoder : JD.Decoder CommonPrefix
commonPrefixDecoder =
    JDP.decode CommonPrefix
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from completeMultipartUplo
-}
type alias CompleteMultipartUploadOutput =
    { location : Maybe String
    , bucket : Maybe String
    , key : Maybe String
    , expiration : Maybe String
    , eTag : Maybe String
    , serverSideEncryption : Maybe ServerSideEncryption
    , versionId : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestCharged : Maybe RequestCharged
    }



completeMultipartUploadOutputDecoder : JD.Decoder CompleteMultipartUploadOutput
completeMultipartUploadOutputDecoder =
    JDP.decode CompleteMultipartUploadOutput
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiration" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias CompletedMultipartUpload =
    { parts : Maybe (List CompletedPart)
    }



completedMultipartUploadDecoder : JD.Decoder CompletedMultipartUpload
completedMultipartUploadDecoder =
    JDP.decode CompletedMultipartUpload
        |> JDP.optional "parts" (JD.nullable (JD.list completedPartDecoder)) Nothing




{-| undefined
-}
type alias CompletedPart =
    { eTag : Maybe String
    , partNumber : Maybe Int
    }



completedPartDecoder : JD.Decoder CompletedPart
completedPartDecoder =
    JDP.decode CompletedPart
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "partNumber" (JD.nullable JD.int) Nothing




{-| undefined
-}
type alias Condition =
    { httpErrorCodeReturnedEquals : Maybe String
    , keyPrefixEquals : Maybe String
    }



conditionDecoder : JD.Decoder Condition
conditionDecoder =
    JDP.decode Condition
        |> JDP.optional "httpErrorCodeReturnedEquals" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyPrefixEquals" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from copyObje
-}
type alias CopyObjectOutput =
    { copyObjectResult : Maybe CopyObjectResult
    , expiration : Maybe String
    , copySourceVersionId : Maybe String
    , versionId : Maybe String
    , serverSideEncryption : Maybe ServerSideEncryption
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestCharged : Maybe RequestCharged
    }



copyObjectOutputDecoder : JD.Decoder CopyObjectOutput
copyObjectOutputDecoder =
    JDP.decode CopyObjectOutput
        |> JDP.optional "copyObjectResult" (JD.nullable copyObjectResultDecoder) Nothing
        |> JDP.optional "expiration" (JD.nullable JD.string) Nothing
        |> JDP.optional "copySourceVersionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "sSECustomerAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerKeyMD5" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias CopyObjectResult =
    { eTag : Maybe String
    , lastModified : Maybe Date
    }



copyObjectResultDecoder : JD.Decoder CopyObjectResult
copyObjectResultDecoder =
    JDP.decode CopyObjectResult
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing




{-| undefined
-}
type alias CopyPartResult =
    { eTag : Maybe String
    , lastModified : Maybe Date
    }



copyPartResultDecoder : JD.Decoder CopyPartResult
copyPartResultDecoder =
    JDP.decode CopyPartResult
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing




{-| undefined
-}
type alias CreateBucketConfiguration =
    { locationConstraint : Maybe BucketLocationConstraint
    }



createBucketConfigurationDecoder : JD.Decoder CreateBucketConfiguration
createBucketConfigurationDecoder =
    JDP.decode CreateBucketConfiguration
        |> JDP.optional "locationConstraint" (JD.nullable bucketLocationConstraintDecoder) Nothing




{-| Type of HTTP response from createBuck
-}
type alias CreateBucketOutput =
    { location : Maybe String
    }



createBucketOutputDecoder : JD.Decoder CreateBucketOutput
createBucketOutputDecoder =
    JDP.decode CreateBucketOutput
        |> JDP.optional "location" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createMultipartUplo
-}
type alias CreateMultipartUploadOutput =
    { abortDate : Maybe Date
    , abortRuleId : Maybe String
    , bucket : Maybe String
    , key : Maybe String
    , uploadId : Maybe String
    , serverSideEncryption : Maybe ServerSideEncryption
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestCharged : Maybe RequestCharged
    }



createMultipartUploadOutputDecoder : JD.Decoder CreateMultipartUploadOutput
createMultipartUploadOutputDecoder =
    JDP.decode CreateMultipartUploadOutput
        |> JDP.optional "abortDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "abortRuleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "sSECustomerAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerKeyMD5" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias Delete =
    { objects : (List ObjectIdentifier)
    , quiet : Maybe Bool
    }



deleteDecoder : JD.Decoder Delete
deleteDecoder =
    JDP.decode Delete
        |> JDP.required "objects" (JD.list objectIdentifierDecoder)
        |> JDP.optional "quiet" (JD.nullable JD.bool) Nothing




{-| undefined
-}
type alias DeleteMarkerEntry =
    { owner : Maybe Owner
    , key : Maybe String
    , versionId : Maybe String
    , isLatest : Maybe Bool
    , lastModified : Maybe Date
    }



deleteMarkerEntryDecoder : JD.Decoder DeleteMarkerEntry
deleteMarkerEntryDecoder =
    JDP.decode DeleteMarkerEntry
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isLatest" (JD.nullable JD.bool) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from deleteObje
-}
type alias DeleteObjectOutput =
    { deleteMarker : Maybe Bool
    , versionId : Maybe String
    , requestCharged : Maybe RequestCharged
    }



deleteObjectOutputDecoder : JD.Decoder DeleteObjectOutput
deleteObjectOutputDecoder =
    JDP.decode DeleteObjectOutput
        |> JDP.optional "deleteMarker" (JD.nullable JD.bool) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| Type of HTTP response from deleteObjectTaggi
-}
type alias DeleteObjectTaggingOutput =
    { versionId : Maybe String
    }



deleteObjectTaggingOutputDecoder : JD.Decoder DeleteObjectTaggingOutput
deleteObjectTaggingOutputDecoder =
    JDP.decode DeleteObjectTaggingOutput
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteObjec
-}
type alias DeleteObjectsOutput =
    { deleted : Maybe (List DeletedObject)
    , requestCharged : Maybe RequestCharged
    , errors : Maybe (List Error)
    }



deleteObjectsOutputDecoder : JD.Decoder DeleteObjectsOutput
deleteObjectsOutputDecoder =
    JDP.decode DeleteObjectsOutput
        |> JDP.optional "deleted" (JD.nullable (JD.list deletedObjectDecoder)) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing
        |> JDP.optional "errors" (JD.nullable (JD.list errorDecoder)) Nothing




{-| undefined
-}
type alias DeletedObject =
    { key : Maybe String
    , versionId : Maybe String
    , deleteMarker : Maybe Bool
    , deleteMarkerVersionId : Maybe String
    }



deletedObjectDecoder : JD.Decoder DeletedObject
deletedObjectDecoder =
    JDP.decode DeletedObject
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deleteMarker" (JD.nullable JD.bool) Nothing
        |> JDP.optional "deleteMarkerVersionId" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias Destination =
    { bucket : String
    , storageClass : Maybe StorageClass
    }



destinationDecoder : JD.Decoder Destination
destinationDecoder =
    JDP.decode Destination
        |> JDP.required "bucket" JD.string
        |> JDP.optional "storageClass" (JD.nullable storageClassDecoder) Nothing




{-| One of

* `EncodingType_url`

-}
type EncodingType
    = EncodingType_url



encodingTypeDecoder : JD.Decoder EncodingType
encodingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "url" ->
                        JD.succeed EncodingType_url


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias Error =
    { key : Maybe String
    , versionId : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



errorDecoder : JD.Decoder Error
errorDecoder =
    JDP.decode Error
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias ErrorDocument =
    { key : String
    }



errorDocumentDecoder : JD.Decoder ErrorDocument
errorDocumentDecoder =
    JDP.decode ErrorDocument
        |> JDP.required "key" JD.string




{-| One of

* `Event_s3:ReducedRedundancyLostObject`
* `Event_s3:ObjectCreated:*`
* `Event_s3:ObjectCreated:Put`
* `Event_s3:ObjectCreated:Post`
* `Event_s3:ObjectCreated:Copy`
* `Event_s3:ObjectCreated:CompleteMultipartUpload`
* `Event_s3:ObjectRemoved:*`
* `Event_s3:ObjectRemoved:Delete`
* `Event_s3:ObjectRemoved:DeleteMarkerCreated`

-}
type Event
    = Event_s3_ReducedRedundancyLostObject
    | Event_s3_ObjectCreated_
    | Event_s3_ObjectCreated_Put
    | Event_s3_ObjectCreated_Post
    | Event_s3_ObjectCreated_Copy
    | Event_s3_ObjectCreated_CompleteMultipartUpload
    | Event_s3_ObjectRemoved_
    | Event_s3_ObjectRemoved_Delete
    | Event_s3_ObjectRemoved_DeleteMarkerCreated



eventDecoder : JD.Decoder Event
eventDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "s3_ReducedRedundancyLostObject" ->
                        JD.succeed Event_s3_ReducedRedundancyLostObject

                    "s3_ObjectCreated_" ->
                        JD.succeed Event_s3_ObjectCreated_

                    "s3_ObjectCreated_Put" ->
                        JD.succeed Event_s3_ObjectCreated_Put

                    "s3_ObjectCreated_Post" ->
                        JD.succeed Event_s3_ObjectCreated_Post

                    "s3_ObjectCreated_Copy" ->
                        JD.succeed Event_s3_ObjectCreated_Copy

                    "s3_ObjectCreated_CompleteMultipartUpload" ->
                        JD.succeed Event_s3_ObjectCreated_CompleteMultipartUpload

                    "s3_ObjectRemoved_" ->
                        JD.succeed Event_s3_ObjectRemoved_

                    "s3_ObjectRemoved_Delete" ->
                        JD.succeed Event_s3_ObjectRemoved_Delete

                    "s3_ObjectRemoved_DeleteMarkerCreated" ->
                        JD.succeed Event_s3_ObjectRemoved_DeleteMarkerCreated


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ExpirationStatus_Enabled`
* `ExpirationStatus_Disabled`

-}
type ExpirationStatus
    = ExpirationStatus_Enabled
    | ExpirationStatus_Disabled



expirationStatusDecoder : JD.Decoder ExpirationStatus
expirationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed ExpirationStatus_Enabled

                    "Disabled" ->
                        JD.succeed ExpirationStatus_Disabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| Container for key value pair that defines the criteria for the filter rule.
-}
type alias FilterRule =
    { name : Maybe FilterRuleName
    , value : Maybe String
    }



filterRuleDecoder : JD.Decoder FilterRule
filterRuleDecoder =
    JDP.decode FilterRule
        |> JDP.optional "name" (JD.nullable filterRuleNameDecoder) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| One of

* `FilterRuleName_prefix`
* `FilterRuleName_suffix`

-}
type FilterRuleName
    = FilterRuleName_prefix
    | FilterRuleName_suffix



filterRuleNameDecoder : JD.Decoder FilterRuleName
filterRuleNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "prefix" ->
                        JD.succeed FilterRuleName_prefix

                    "suffix" ->
                        JD.succeed FilterRuleName_suffix


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getBucketAccelerateConfigurati
-}
type alias GetBucketAccelerateConfigurationOutput =
    { status : Maybe BucketAccelerateStatus
    }



getBucketAccelerateConfigurationOutputDecoder : JD.Decoder GetBucketAccelerateConfigurationOutput
getBucketAccelerateConfigurationOutputDecoder =
    JDP.decode GetBucketAccelerateConfigurationOutput
        |> JDP.optional "status" (JD.nullable bucketAccelerateStatusDecoder) Nothing




{-| Type of HTTP response from getBucketA
-}
type alias GetBucketAclOutput =
    { owner : Maybe Owner
    , grants : Maybe (List Grant)
    }



getBucketAclOutputDecoder : JD.Decoder GetBucketAclOutput
getBucketAclOutputDecoder =
    JDP.decode GetBucketAclOutput
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing
        |> JDP.optional "grants" (JD.nullable (JD.list grantDecoder)) Nothing




{-| Type of HTTP response from getBucketAnalyticsConfigurati
-}
type alias GetBucketAnalyticsConfigurationOutput =
    { analyticsConfiguration : Maybe AnalyticsConfiguration
    }



getBucketAnalyticsConfigurationOutputDecoder : JD.Decoder GetBucketAnalyticsConfigurationOutput
getBucketAnalyticsConfigurationOutputDecoder =
    JDP.decode GetBucketAnalyticsConfigurationOutput
        |> JDP.optional "analyticsConfiguration" (JD.nullable analyticsConfigurationDecoder) Nothing




{-| Type of HTTP response from getBucketCo
-}
type alias GetBucketCorsOutput =
    { cORSRules : Maybe (List CORSRule)
    }



getBucketCorsOutputDecoder : JD.Decoder GetBucketCorsOutput
getBucketCorsOutputDecoder =
    JDP.decode GetBucketCorsOutput
        |> JDP.optional "cORSRules" (JD.nullable (JD.list cORSRuleDecoder)) Nothing




{-| Type of HTTP response from getBucketInventoryConfigurati
-}
type alias GetBucketInventoryConfigurationOutput =
    { inventoryConfiguration : Maybe InventoryConfiguration
    }



getBucketInventoryConfigurationOutputDecoder : JD.Decoder GetBucketInventoryConfigurationOutput
getBucketInventoryConfigurationOutputDecoder =
    JDP.decode GetBucketInventoryConfigurationOutput
        |> JDP.optional "inventoryConfiguration" (JD.nullable inventoryConfigurationDecoder) Nothing




{-| Type of HTTP response from getBucketLifecycleConfigurati
-}
type alias GetBucketLifecycleConfigurationOutput =
    { rules : Maybe (List LifecycleRule)
    }



getBucketLifecycleConfigurationOutputDecoder : JD.Decoder GetBucketLifecycleConfigurationOutput
getBucketLifecycleConfigurationOutputDecoder =
    JDP.decode GetBucketLifecycleConfigurationOutput
        |> JDP.optional "rules" (JD.nullable (JD.list lifecycleRuleDecoder)) Nothing




{-| Type of HTTP response from getBucketLifecyc
-}
type alias GetBucketLifecycleOutput =
    { rules : Maybe (List Rule)
    }



getBucketLifecycleOutputDecoder : JD.Decoder GetBucketLifecycleOutput
getBucketLifecycleOutputDecoder =
    JDP.decode GetBucketLifecycleOutput
        |> JDP.optional "rules" (JD.nullable (JD.list ruleDecoder)) Nothing




{-| Type of HTTP response from getBucketLocati
-}
type alias GetBucketLocationOutput =
    { locationConstraint : Maybe BucketLocationConstraint
    }



getBucketLocationOutputDecoder : JD.Decoder GetBucketLocationOutput
getBucketLocationOutputDecoder =
    JDP.decode GetBucketLocationOutput
        |> JDP.optional "locationConstraint" (JD.nullable bucketLocationConstraintDecoder) Nothing




{-| Type of HTTP response from getBucketLoggi
-}
type alias GetBucketLoggingOutput =
    { loggingEnabled : Maybe LoggingEnabled
    }



getBucketLoggingOutputDecoder : JD.Decoder GetBucketLoggingOutput
getBucketLoggingOutputDecoder =
    JDP.decode GetBucketLoggingOutput
        |> JDP.optional "loggingEnabled" (JD.nullable loggingEnabledDecoder) Nothing




{-| Type of HTTP response from getBucketMetricsConfigurati
-}
type alias GetBucketMetricsConfigurationOutput =
    { metricsConfiguration : Maybe MetricsConfiguration
    }



getBucketMetricsConfigurationOutputDecoder : JD.Decoder GetBucketMetricsConfigurationOutput
getBucketMetricsConfigurationOutputDecoder =
    JDP.decode GetBucketMetricsConfigurationOutput
        |> JDP.optional "metricsConfiguration" (JD.nullable metricsConfigurationDecoder) Nothing




{-| Type of HTTP response from getBucketPoli
-}
type alias GetBucketPolicyOutput =
    { policy : Maybe String
    }



getBucketPolicyOutputDecoder : JD.Decoder GetBucketPolicyOutput
getBucketPolicyOutputDecoder =
    JDP.decode GetBucketPolicyOutput
        |> JDP.optional "policy" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getBucketReplicati
-}
type alias GetBucketReplicationOutput =
    { replicationConfiguration : Maybe ReplicationConfiguration
    }



getBucketReplicationOutputDecoder : JD.Decoder GetBucketReplicationOutput
getBucketReplicationOutputDecoder =
    JDP.decode GetBucketReplicationOutput
        |> JDP.optional "replicationConfiguration" (JD.nullable replicationConfigurationDecoder) Nothing




{-| Type of HTTP response from getBucketRequestPayme
-}
type alias GetBucketRequestPaymentOutput =
    { payer : Maybe Payer
    }



getBucketRequestPaymentOutputDecoder : JD.Decoder GetBucketRequestPaymentOutput
getBucketRequestPaymentOutputDecoder =
    JDP.decode GetBucketRequestPaymentOutput
        |> JDP.optional "payer" (JD.nullable payerDecoder) Nothing




{-| Type of HTTP response from getBucketTaggi
-}
type alias GetBucketTaggingOutput =
    { tagSet : (List Tag)
    }



getBucketTaggingOutputDecoder : JD.Decoder GetBucketTaggingOutput
getBucketTaggingOutputDecoder =
    JDP.decode GetBucketTaggingOutput
        |> JDP.required "tagSet" (JD.list tagDecoder)




{-| Type of HTTP response from getBucketVersioni
-}
type alias GetBucketVersioningOutput =
    { status : Maybe BucketVersioningStatus
    , mFADelete : Maybe MFADeleteStatus
    }



getBucketVersioningOutputDecoder : JD.Decoder GetBucketVersioningOutput
getBucketVersioningOutputDecoder =
    JDP.decode GetBucketVersioningOutput
        |> JDP.optional "status" (JD.nullable bucketVersioningStatusDecoder) Nothing
        |> JDP.optional "mFADelete" (JD.nullable mFADeleteStatusDecoder) Nothing




{-| Type of HTTP response from getBucketWebsi
-}
type alias GetBucketWebsiteOutput =
    { redirectAllRequestsTo : Maybe RedirectAllRequestsTo
    , indexDocument : Maybe IndexDocument
    , errorDocument : Maybe ErrorDocument
    , routingRules : Maybe (List RoutingRule)
    }



getBucketWebsiteOutputDecoder : JD.Decoder GetBucketWebsiteOutput
getBucketWebsiteOutputDecoder =
    JDP.decode GetBucketWebsiteOutput
        |> JDP.optional "redirectAllRequestsTo" (JD.nullable redirectAllRequestsToDecoder) Nothing
        |> JDP.optional "indexDocument" (JD.nullable indexDocumentDecoder) Nothing
        |> JDP.optional "errorDocument" (JD.nullable errorDocumentDecoder) Nothing
        |> JDP.optional "routingRules" (JD.nullable (JD.list routingRuleDecoder)) Nothing




{-| Type of HTTP response from getObjectA
-}
type alias GetObjectAclOutput =
    { owner : Maybe Owner
    , grants : Maybe (List Grant)
    , requestCharged : Maybe RequestCharged
    }



getObjectAclOutputDecoder : JD.Decoder GetObjectAclOutput
getObjectAclOutputDecoder =
    JDP.decode GetObjectAclOutput
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing
        |> JDP.optional "grants" (JD.nullable (JD.list grantDecoder)) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| Type of HTTP response from getObje
-}
type alias GetObjectOutput =
    { body : Maybe String
    , deleteMarker : Maybe Bool
    , acceptRanges : Maybe String
    , expiration : Maybe String
    , restore : Maybe String
    , lastModified : Maybe Date
    , contentLength : Maybe Int
    , eTag : Maybe String
    , missingMeta : Maybe Int
    , versionId : Maybe String
    , cacheControl : Maybe String
    , contentDisposition : Maybe String
    , contentEncoding : Maybe String
    , contentLanguage : Maybe String
    , contentRange : Maybe String
    , contentType : Maybe String
    , expires : Maybe Date
    , websiteRedirectLocation : Maybe String
    , serverSideEncryption : Maybe ServerSideEncryption
    , metadata : Maybe (Dict String String)
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , storageClass : Maybe StorageClass
    , requestCharged : Maybe RequestCharged
    , replicationStatus : Maybe ReplicationStatus
    , partsCount : Maybe Int
    , tagCount : Maybe Int
    }



getObjectOutputDecoder : JD.Decoder GetObjectOutput
getObjectOutputDecoder =
    JDP.decode GetObjectOutput
        |> JDP.optional "body" (JD.nullable JD.string) Nothing
        |> JDP.optional "deleteMarker" (JD.nullable JD.bool) Nothing
        |> JDP.optional "acceptRanges" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiration" (JD.nullable JD.string) Nothing
        |> JDP.optional "restore" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing
        |> JDP.optional "contentLength" (JD.nullable JD.int) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "missingMeta" (JD.nullable JD.int) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheControl" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentDisposition" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentEncoding" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentLanguage" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentRange" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "expires" (JD.nullable JDX.date) Nothing
        |> JDP.optional "websiteRedirectLocation" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "metadata" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "sSECustomerAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerKeyMD5" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageClass" (JD.nullable storageClassDecoder) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing
        |> JDP.optional "replicationStatus" (JD.nullable replicationStatusDecoder) Nothing
        |> JDP.optional "partsCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "tagCount" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from getObjectTaggi
-}
type alias GetObjectTaggingOutput =
    { versionId : Maybe String
    , tagSet : (List Tag)
    }



getObjectTaggingOutputDecoder : JD.Decoder GetObjectTaggingOutput
getObjectTaggingOutputDecoder =
    JDP.decode GetObjectTaggingOutput
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.required "tagSet" (JD.list tagDecoder)




{-| Type of HTTP response from getObjectTorre
-}
type alias GetObjectTorrentOutput =
    { body : Maybe String
    , requestCharged : Maybe RequestCharged
    }



getObjectTorrentOutputDecoder : JD.Decoder GetObjectTorrentOutput
getObjectTorrentOutputDecoder =
    JDP.decode GetObjectTorrentOutput
        |> JDP.optional "body" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias GlacierJobParameters =
    { tier : Tier
    }



glacierJobParametersDecoder : JD.Decoder GlacierJobParameters
glacierJobParametersDecoder =
    JDP.decode GlacierJobParameters
        |> JDP.required "tier" tierDecoder




{-| undefined
-}
type alias Grant =
    { grantee : Maybe Grantee
    , permission : Maybe Permission
    }



grantDecoder : JD.Decoder Grant
grantDecoder =
    JDP.decode Grant
        |> JDP.optional "grantee" (JD.nullable granteeDecoder) Nothing
        |> JDP.optional "permission" (JD.nullable permissionDecoder) Nothing




{-| undefined
-}
type alias Grantee =
    { displayName : Maybe String
    , emailAddress : Maybe String
    , iD : Maybe String
    , type_ : Type
    , uRI : Maybe String
    }



granteeDecoder : JD.Decoder Grantee
granteeDecoder =
    JDP.decode Grantee
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "emailAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "iD" (JD.nullable JD.string) Nothing
        |> JDP.required "type_" typeDecoder
        |> JDP.optional "uRI" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from headObje
-}
type alias HeadObjectOutput =
    { deleteMarker : Maybe Bool
    , acceptRanges : Maybe String
    , expiration : Maybe String
    , restore : Maybe String
    , lastModified : Maybe Date
    , contentLength : Maybe Int
    , eTag : Maybe String
    , missingMeta : Maybe Int
    , versionId : Maybe String
    , cacheControl : Maybe String
    , contentDisposition : Maybe String
    , contentEncoding : Maybe String
    , contentLanguage : Maybe String
    , contentType : Maybe String
    , expires : Maybe Date
    , websiteRedirectLocation : Maybe String
    , serverSideEncryption : Maybe ServerSideEncryption
    , metadata : Maybe (Dict String String)
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , storageClass : Maybe StorageClass
    , requestCharged : Maybe RequestCharged
    , replicationStatus : Maybe ReplicationStatus
    , partsCount : Maybe Int
    }



headObjectOutputDecoder : JD.Decoder HeadObjectOutput
headObjectOutputDecoder =
    JDP.decode HeadObjectOutput
        |> JDP.optional "deleteMarker" (JD.nullable JD.bool) Nothing
        |> JDP.optional "acceptRanges" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiration" (JD.nullable JD.string) Nothing
        |> JDP.optional "restore" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing
        |> JDP.optional "contentLength" (JD.nullable JD.int) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "missingMeta" (JD.nullable JD.int) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheControl" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentDisposition" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentEncoding" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentLanguage" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "expires" (JD.nullable JDX.date) Nothing
        |> JDP.optional "websiteRedirectLocation" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "metadata" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "sSECustomerAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerKeyMD5" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageClass" (JD.nullable storageClassDecoder) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing
        |> JDP.optional "replicationStatus" (JD.nullable replicationStatusDecoder) Nothing
        |> JDP.optional "partsCount" (JD.nullable JD.int) Nothing




{-| undefined
-}
type alias IndexDocument =
    { suffix : String
    }



indexDocumentDecoder : JD.Decoder IndexDocument
indexDocumentDecoder =
    JDP.decode IndexDocument
        |> JDP.required "suffix" JD.string




{-| undefined
-}
type alias Initiator =
    { iD : Maybe String
    , displayName : Maybe String
    }



initiatorDecoder : JD.Decoder Initiator
initiatorDecoder =
    JDP.decode Initiator
        |> JDP.optional "iD" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InventoryConfiguration =
    { destination : InventoryDestination
    , isEnabled : Bool
    , filter : Maybe InventoryFilter
    , id : String
    , includedObjectVersions : InventoryIncludedObjectVersions
    , optionalFields : Maybe (List InventoryOptionalField)
    , schedule : InventorySchedule
    }



inventoryConfigurationDecoder : JD.Decoder InventoryConfiguration
inventoryConfigurationDecoder =
    JDP.decode InventoryConfiguration
        |> JDP.required "destination" inventoryDestinationDecoder
        |> JDP.required "isEnabled" JD.bool
        |> JDP.optional "filter" (JD.nullable inventoryFilterDecoder) Nothing
        |> JDP.required "id" JD.string
        |> JDP.required "includedObjectVersions" inventoryIncludedObjectVersionsDecoder
        |> JDP.optional "optionalFields" (JD.nullable (JD.list inventoryOptionalFieldDecoder)) Nothing
        |> JDP.required "schedule" inventoryScheduleDecoder




{-| undefined
-}
type alias InventoryDestination =
    { s3BucketDestination : InventoryS3BucketDestination
    }



inventoryDestinationDecoder : JD.Decoder InventoryDestination
inventoryDestinationDecoder =
    JDP.decode InventoryDestination
        |> JDP.required "s3BucketDestination" inventoryS3BucketDestinationDecoder




{-| undefined
-}
type alias InventoryFilter =
    { prefix : String
    }



inventoryFilterDecoder : JD.Decoder InventoryFilter
inventoryFilterDecoder =
    JDP.decode InventoryFilter
        |> JDP.required "prefix" JD.string




{-| One of

* `InventoryFormat_CSV`

-}
type InventoryFormat
    = InventoryFormat_CSV



inventoryFormatDecoder : JD.Decoder InventoryFormat
inventoryFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CSV" ->
                        JD.succeed InventoryFormat_CSV


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `InventoryFrequency_Daily`
* `InventoryFrequency_Weekly`

-}
type InventoryFrequency
    = InventoryFrequency_Daily
    | InventoryFrequency_Weekly



inventoryFrequencyDecoder : JD.Decoder InventoryFrequency
inventoryFrequencyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Daily" ->
                        JD.succeed InventoryFrequency_Daily

                    "Weekly" ->
                        JD.succeed InventoryFrequency_Weekly


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `InventoryIncludedObjectVersions_All`
* `InventoryIncludedObjectVersions_Current`

-}
type InventoryIncludedObjectVersions
    = InventoryIncludedObjectVersions_All
    | InventoryIncludedObjectVersions_Current



inventoryIncludedObjectVersionsDecoder : JD.Decoder InventoryIncludedObjectVersions
inventoryIncludedObjectVersionsDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "All" ->
                        JD.succeed InventoryIncludedObjectVersions_All

                    "Current" ->
                        JD.succeed InventoryIncludedObjectVersions_Current


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `InventoryOptionalField_Size`
* `InventoryOptionalField_LastModifiedDate`
* `InventoryOptionalField_StorageClass`
* `InventoryOptionalField_ETag`
* `InventoryOptionalField_IsMultipartUploaded`
* `InventoryOptionalField_ReplicationStatus`

-}
type InventoryOptionalField
    = InventoryOptionalField_Size
    | InventoryOptionalField_LastModifiedDate
    | InventoryOptionalField_StorageClass
    | InventoryOptionalField_ETag
    | InventoryOptionalField_IsMultipartUploaded
    | InventoryOptionalField_ReplicationStatus



inventoryOptionalFieldDecoder : JD.Decoder InventoryOptionalField
inventoryOptionalFieldDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Size" ->
                        JD.succeed InventoryOptionalField_Size

                    "LastModifiedDate" ->
                        JD.succeed InventoryOptionalField_LastModifiedDate

                    "StorageClass" ->
                        JD.succeed InventoryOptionalField_StorageClass

                    "ETag" ->
                        JD.succeed InventoryOptionalField_ETag

                    "IsMultipartUploaded" ->
                        JD.succeed InventoryOptionalField_IsMultipartUploaded

                    "ReplicationStatus" ->
                        JD.succeed InventoryOptionalField_ReplicationStatus


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias InventoryS3BucketDestination =
    { accountId : Maybe String
    , bucket : String
    , format : InventoryFormat
    , prefix : Maybe String
    }



inventoryS3BucketDestinationDecoder : JD.Decoder InventoryS3BucketDestination
inventoryS3BucketDestinationDecoder =
    JDP.decode InventoryS3BucketDestination
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing
        |> JDP.required "bucket" JD.string
        |> JDP.required "format" inventoryFormatDecoder
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InventorySchedule =
    { frequency : InventoryFrequency
    }



inventoryScheduleDecoder : JD.Decoder InventorySchedule
inventoryScheduleDecoder =
    JDP.decode InventorySchedule
        |> JDP.required "frequency" inventoryFrequencyDecoder




{-| Container for specifying the AWS Lambda notification configuration.
-}
type alias LambdaFunctionConfiguration =
    { id : Maybe String
    , lambdaFunctionArn : String
    , events : (List Event)
    , filter : Maybe NotificationConfigurationFilter
    }



lambdaFunctionConfigurationDecoder : JD.Decoder LambdaFunctionConfiguration
lambdaFunctionConfigurationDecoder =
    JDP.decode LambdaFunctionConfiguration
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.required "lambdaFunctionArn" JD.string
        |> JDP.required "events" (JD.list eventDecoder)
        |> JDP.optional "filter" (JD.nullable notificationConfigurationFilterDecoder) Nothing




{-| undefined
-}
type alias LifecycleConfiguration =
    { rules : (List Rule)
    }



lifecycleConfigurationDecoder : JD.Decoder LifecycleConfiguration
lifecycleConfigurationDecoder =
    JDP.decode LifecycleConfiguration
        |> JDP.required "rules" (JD.list ruleDecoder)




{-| undefined
-}
type alias LifecycleExpiration =
    { date : Maybe Date
    , days : Maybe Int
    , expiredObjectDeleteMarker : Maybe Bool
    }



lifecycleExpirationDecoder : JD.Decoder LifecycleExpiration
lifecycleExpirationDecoder =
    JDP.decode LifecycleExpiration
        |> JDP.optional "date" (JD.nullable JDX.date) Nothing
        |> JDP.optional "days" (JD.nullable JD.int) Nothing
        |> JDP.optional "expiredObjectDeleteMarker" (JD.nullable JD.bool) Nothing




{-| undefined
-}
type alias LifecycleRule =
    { expiration : Maybe LifecycleExpiration
    , iD : Maybe String
    , prefix : Maybe String
    , filter : Maybe LifecycleRuleFilter
    , status : ExpirationStatus
    , transitions : Maybe (List Transition)
    , noncurrentVersionTransitions : Maybe (List NoncurrentVersionTransition)
    , noncurrentVersionExpiration : Maybe NoncurrentVersionExpiration
    , abortIncompleteMultipartUpload : Maybe AbortIncompleteMultipartUpload
    }



lifecycleRuleDecoder : JD.Decoder LifecycleRule
lifecycleRuleDecoder =
    JDP.decode LifecycleRule
        |> JDP.optional "expiration" (JD.nullable lifecycleExpirationDecoder) Nothing
        |> JDP.optional "iD" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "filter" (JD.nullable lifecycleRuleFilterDecoder) Nothing
        |> JDP.required "status" expirationStatusDecoder
        |> JDP.optional "transitions" (JD.nullable (JD.list transitionDecoder)) Nothing
        |> JDP.optional "noncurrentVersionTransitions" (JD.nullable (JD.list noncurrentVersionTransitionDecoder)) Nothing
        |> JDP.optional "noncurrentVersionExpiration" (JD.nullable noncurrentVersionExpirationDecoder) Nothing
        |> JDP.optional "abortIncompleteMultipartUpload" (JD.nullable abortIncompleteMultipartUploadDecoder) Nothing




{-| This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The Lifecycle Rule will apply to any object matching all of the predicates configured inside the And operator.
-}
type alias LifecycleRuleAndOperator =
    { prefix : Maybe String
    , tags : Maybe (List Tag)
    }



lifecycleRuleAndOperatorDecoder : JD.Decoder LifecycleRuleAndOperator
lifecycleRuleAndOperatorDecoder =
    JDP.decode LifecycleRuleAndOperator
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| The Filter is used to identify objects that a Lifecycle Rule applies to. A Filter must have exactly one of Prefix, Tag, or And specified.
-}
type alias LifecycleRuleFilter =
    { prefix : Maybe String
    , tag : Maybe Tag
    , and : Maybe LifecycleRuleAndOperator
    }



lifecycleRuleFilterDecoder : JD.Decoder LifecycleRuleFilter
lifecycleRuleFilterDecoder =
    JDP.decode LifecycleRuleFilter
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "tag" (JD.nullable tagDecoder) Nothing
        |> JDP.optional "and" (JD.nullable lifecycleRuleAndOperatorDecoder) Nothing




{-| Type of HTTP response from listBucketAnalyticsConfiguratio
-}
type alias ListBucketAnalyticsConfigurationsOutput =
    { isTruncated : Maybe Bool
    , continuationToken : Maybe String
    , nextContinuationToken : Maybe String
    , analyticsConfigurationList : Maybe (List AnalyticsConfiguration)
    }



listBucketAnalyticsConfigurationsOutputDecoder : JD.Decoder ListBucketAnalyticsConfigurationsOutput
listBucketAnalyticsConfigurationsOutputDecoder =
    JDP.decode ListBucketAnalyticsConfigurationsOutput
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "continuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextContinuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "analyticsConfigurationList" (JD.nullable (JD.list analyticsConfigurationDecoder)) Nothing




{-| Type of HTTP response from listBucketInventoryConfiguratio
-}
type alias ListBucketInventoryConfigurationsOutput =
    { continuationToken : Maybe String
    , inventoryConfigurationList : Maybe (List InventoryConfiguration)
    , isTruncated : Maybe Bool
    , nextContinuationToken : Maybe String
    }



listBucketInventoryConfigurationsOutputDecoder : JD.Decoder ListBucketInventoryConfigurationsOutput
listBucketInventoryConfigurationsOutputDecoder =
    JDP.decode ListBucketInventoryConfigurationsOutput
        |> JDP.optional "continuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "inventoryConfigurationList" (JD.nullable (JD.list inventoryConfigurationDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "nextContinuationToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listBucketMetricsConfiguratio
-}
type alias ListBucketMetricsConfigurationsOutput =
    { isTruncated : Maybe Bool
    , continuationToken : Maybe String
    , nextContinuationToken : Maybe String
    , metricsConfigurationList : Maybe (List MetricsConfiguration)
    }



listBucketMetricsConfigurationsOutputDecoder : JD.Decoder ListBucketMetricsConfigurationsOutput
listBucketMetricsConfigurationsOutputDecoder =
    JDP.decode ListBucketMetricsConfigurationsOutput
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "continuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextContinuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "metricsConfigurationList" (JD.nullable (JD.list metricsConfigurationDecoder)) Nothing




{-| Type of HTTP response from listBucke
-}
type alias ListBucketsOutput =
    { buckets : Maybe (List Bucket)
    , owner : Maybe Owner
    }



listBucketsOutputDecoder : JD.Decoder ListBucketsOutput
listBucketsOutputDecoder =
    JDP.decode ListBucketsOutput
        |> JDP.optional "buckets" (JD.nullable (JD.list bucketDecoder)) Nothing
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing




{-| Type of HTTP response from listMultipartUploa
-}
type alias ListMultipartUploadsOutput =
    { bucket : Maybe String
    , keyMarker : Maybe String
    , uploadIdMarker : Maybe String
    , nextKeyMarker : Maybe String
    , prefix : Maybe String
    , delimiter : Maybe String
    , nextUploadIdMarker : Maybe String
    , maxUploads : Maybe Int
    , isTruncated : Maybe Bool
    , uploads : Maybe (List MultipartUpload)
    , commonPrefixes : Maybe (List CommonPrefix)
    , encodingType : Maybe EncodingType
    }



listMultipartUploadsOutputDecoder : JD.Decoder ListMultipartUploadsOutput
listMultipartUploadsOutputDecoder =
    JDP.decode ListMultipartUploadsOutput
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadIdMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextKeyMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "delimiter" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextUploadIdMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxUploads" (JD.nullable JD.int) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "uploads" (JD.nullable (JD.list multipartUploadDecoder)) Nothing
        |> JDP.optional "commonPrefixes" (JD.nullable (JD.list commonPrefixDecoder)) Nothing
        |> JDP.optional "encodingType" (JD.nullable encodingTypeDecoder) Nothing




{-| Type of HTTP response from listObjectVersio
-}
type alias ListObjectVersionsOutput =
    { isTruncated : Maybe Bool
    , keyMarker : Maybe String
    , versionIdMarker : Maybe String
    , nextKeyMarker : Maybe String
    , nextVersionIdMarker : Maybe String
    , versions : Maybe (List ObjectVersion)
    , deleteMarkers : Maybe (List DeleteMarkerEntry)
    , name : Maybe String
    , prefix : Maybe String
    , delimiter : Maybe String
    , maxKeys : Maybe Int
    , commonPrefixes : Maybe (List CommonPrefix)
    , encodingType : Maybe EncodingType
    }



listObjectVersionsOutputDecoder : JD.Decoder ListObjectVersionsOutput
listObjectVersionsOutputDecoder =
    JDP.decode ListObjectVersionsOutput
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "keyMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionIdMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextKeyMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextVersionIdMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "versions" (JD.nullable (JD.list objectVersionDecoder)) Nothing
        |> JDP.optional "deleteMarkers" (JD.nullable (JD.list deleteMarkerEntryDecoder)) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "delimiter" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxKeys" (JD.nullable JD.int) Nothing
        |> JDP.optional "commonPrefixes" (JD.nullable (JD.list commonPrefixDecoder)) Nothing
        |> JDP.optional "encodingType" (JD.nullable encodingTypeDecoder) Nothing




{-| Type of HTTP response from listObjec
-}
type alias ListObjectsOutput =
    { isTruncated : Maybe Bool
    , marker : Maybe String
    , nextMarker : Maybe String
    , contents : Maybe (List Object)
    , name : Maybe String
    , prefix : Maybe String
    , delimiter : Maybe String
    , maxKeys : Maybe Int
    , commonPrefixes : Maybe (List CommonPrefix)
    , encodingType : Maybe EncodingType
    }



listObjectsOutputDecoder : JD.Decoder ListObjectsOutput
listObjectsOutputDecoder =
    JDP.decode ListObjectsOutput
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "contents" (JD.nullable (JD.list objectDecoder)) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "delimiter" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxKeys" (JD.nullable JD.int) Nothing
        |> JDP.optional "commonPrefixes" (JD.nullable (JD.list commonPrefixDecoder)) Nothing
        |> JDP.optional "encodingType" (JD.nullable encodingTypeDecoder) Nothing




{-| Type of HTTP response from listObjects
-}
type alias ListObjectsV2Output =
    { isTruncated : Maybe Bool
    , contents : Maybe (List Object)
    , name : Maybe String
    , prefix : Maybe String
    , delimiter : Maybe String
    , maxKeys : Maybe Int
    , commonPrefixes : Maybe (List CommonPrefix)
    , encodingType : Maybe EncodingType
    , keyCount : Maybe Int
    , continuationToken : Maybe String
    , nextContinuationToken : Maybe String
    , startAfter : Maybe String
    }



listObjectsV2OutputDecoder : JD.Decoder ListObjectsV2Output
listObjectsV2OutputDecoder =
    JDP.decode ListObjectsV2Output
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "contents" (JD.nullable (JD.list objectDecoder)) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "delimiter" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxKeys" (JD.nullable JD.int) Nothing
        |> JDP.optional "commonPrefixes" (JD.nullable (JD.list commonPrefixDecoder)) Nothing
        |> JDP.optional "encodingType" (JD.nullable encodingTypeDecoder) Nothing
        |> JDP.optional "keyCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "continuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextContinuationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "startAfter" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPar
-}
type alias ListPartsOutput =
    { abortDate : Maybe Date
    , abortRuleId : Maybe String
    , bucket : Maybe String
    , key : Maybe String
    , uploadId : Maybe String
    , partNumberMarker : Maybe Int
    , nextPartNumberMarker : Maybe Int
    , maxParts : Maybe Int
    , isTruncated : Maybe Bool
    , parts : Maybe (List Part)
    , initiator : Maybe Initiator
    , owner : Maybe Owner
    , storageClass : Maybe StorageClass
    , requestCharged : Maybe RequestCharged
    }



listPartsOutputDecoder : JD.Decoder ListPartsOutput
listPartsOutputDecoder =
    JDP.decode ListPartsOutput
        |> JDP.optional "abortDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "abortRuleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "partNumberMarker" (JD.nullable JD.int) Nothing
        |> JDP.optional "nextPartNumberMarker" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxParts" (JD.nullable JD.int) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "parts" (JD.nullable (JD.list partDecoder)) Nothing
        |> JDP.optional "initiator" (JD.nullable initiatorDecoder) Nothing
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing
        |> JDP.optional "storageClass" (JD.nullable storageClassDecoder) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias LoggingEnabled =
    { targetBucket : Maybe String
    , targetGrants : Maybe (List TargetGrant)
    , targetPrefix : Maybe String
    }



loggingEnabledDecoder : JD.Decoder LoggingEnabled
loggingEnabledDecoder =
    JDP.decode LoggingEnabled
        |> JDP.optional "targetBucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetGrants" (JD.nullable (JD.list targetGrantDecoder)) Nothing
        |> JDP.optional "targetPrefix" (JD.nullable JD.string) Nothing




{-| One of

* `MFADelete_Enabled`
* `MFADelete_Disabled`

-}
type MFADelete
    = MFADelete_Enabled
    | MFADelete_Disabled



mFADeleteDecoder : JD.Decoder MFADelete
mFADeleteDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed MFADelete_Enabled

                    "Disabled" ->
                        JD.succeed MFADelete_Disabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `MFADeleteStatus_Enabled`
* `MFADeleteStatus_Disabled`

-}
type MFADeleteStatus
    = MFADeleteStatus_Enabled
    | MFADeleteStatus_Disabled



mFADeleteStatusDecoder : JD.Decoder MFADeleteStatus
mFADeleteStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed MFADeleteStatus_Enabled

                    "Disabled" ->
                        JD.succeed MFADeleteStatus_Disabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `MetadataDirective_COPY`
* `MetadataDirective_REPLACE`

-}
type MetadataDirective
    = MetadataDirective_COPY
    | MetadataDirective_REPLACE



metadataDirectiveDecoder : JD.Decoder MetadataDirective
metadataDirectiveDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COPY" ->
                        JD.succeed MetadataDirective_COPY

                    "REPLACE" ->
                        JD.succeed MetadataDirective_REPLACE


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias MetricsAndOperator =
    { prefix : Maybe String
    , tags : Maybe (List Tag)
    }



metricsAndOperatorDecoder : JD.Decoder MetricsAndOperator
metricsAndOperatorDecoder =
    JDP.decode MetricsAndOperator
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| undefined
-}
type alias MetricsConfiguration =
    { id : String
    , filter : Maybe MetricsFilter
    }



metricsConfigurationDecoder : JD.Decoder MetricsConfiguration
metricsConfigurationDecoder =
    JDP.decode MetricsConfiguration
        |> JDP.required "id" JD.string
        |> JDP.optional "filter" (JD.nullable metricsFilterDecoder) Nothing




{-| undefined
-}
type alias MetricsFilter =
    { prefix : Maybe String
    , tag : Maybe Tag
    , and : Maybe MetricsAndOperator
    }



metricsFilterDecoder : JD.Decoder MetricsFilter
metricsFilterDecoder =
    JDP.decode MetricsFilter
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "tag" (JD.nullable tagDecoder) Nothing
        |> JDP.optional "and" (JD.nullable metricsAndOperatorDecoder) Nothing




{-| undefined
-}
type alias MultipartUpload =
    { uploadId : Maybe String
    , key : Maybe String
    , initiated : Maybe Date
    , storageClass : Maybe StorageClass
    , owner : Maybe Owner
    , initiator : Maybe Initiator
    }



multipartUploadDecoder : JD.Decoder MultipartUpload
multipartUploadDecoder =
    JDP.decode MultipartUpload
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "initiated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "storageClass" (JD.nullable storageClassDecoder) Nothing
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing
        |> JDP.optional "initiator" (JD.nullable initiatorDecoder) Nothing




{-| The specified bucket does not exist.
-}
type alias NoSuchBucket =
    { 
    }



noSuchBucketDecoder : JD.Decoder NoSuchBucket
noSuchBucketDecoder =
    JDP.decode NoSuchBucket



{-| The specified key does not exist.
-}
type alias NoSuchKey =
    { 
    }



noSuchKeyDecoder : JD.Decoder NoSuchKey
noSuchKeyDecoder =
    JDP.decode NoSuchKey



{-| The specified multipart upload does not exist.
-}
type alias NoSuchUpload =
    { 
    }



noSuchUploadDecoder : JD.Decoder NoSuchUpload
noSuchUploadDecoder =
    JDP.decode NoSuchUpload



{-| Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in the object's lifetime.
-}
type alias NoncurrentVersionExpiration =
    { noncurrentDays : Maybe Int
    }



noncurrentVersionExpirationDecoder : JD.Decoder NoncurrentVersionExpiration
noncurrentVersionExpirationDecoder =
    JDP.decode NoncurrentVersionExpiration
        |> JDP.optional "noncurrentDays" (JD.nullable JD.int) Nothing




{-| Container for the transition rule that describes when noncurrent objects transition to the STANDARD_IA or GLACIER storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the STANDARD_IA or GLACIER storage class at a specific period in the object's lifetime.
-}
type alias NoncurrentVersionTransition =
    { noncurrentDays : Maybe Int
    , storageClass : Maybe TransitionStorageClass
    }



noncurrentVersionTransitionDecoder : JD.Decoder NoncurrentVersionTransition
noncurrentVersionTransitionDecoder =
    JDP.decode NoncurrentVersionTransition
        |> JDP.optional "noncurrentDays" (JD.nullable JD.int) Nothing
        |> JDP.optional "storageClass" (JD.nullable transitionStorageClassDecoder) Nothing




{-| Type of HTTP response from notificationConfi
-}
type alias NotificationConfiguration =
    { topicConfigurations : Maybe (List TopicConfiguration)
    , queueConfigurations : Maybe (List QueueConfiguration)
    , lambdaFunctionConfigurations : Maybe (List LambdaFunctionConfiguration)
    }



notificationConfigurationDecoder : JD.Decoder NotificationConfiguration
notificationConfigurationDecoder =
    JDP.decode NotificationConfiguration
        |> JDP.optional "topicConfigurations" (JD.nullable (JD.list topicConfigurationDecoder)) Nothing
        |> JDP.optional "queueConfigurations" (JD.nullable (JD.list queueConfigurationDecoder)) Nothing
        |> JDP.optional "lambdaFunctionConfigurations" (JD.nullable (JD.list lambdaFunctionConfigurationDecoder)) Nothing




{-| Type of HTTP response from notificationConfigurationDe
-}
type alias NotificationConfigurationDeprecated =
    { topicConfiguration : Maybe TopicConfigurationDeprecated
    , queueConfiguration : Maybe QueueConfigurationDeprecated
    , cloudFunctionConfiguration : Maybe CloudFunctionConfiguration
    }



notificationConfigurationDeprecatedDecoder : JD.Decoder NotificationConfigurationDeprecated
notificationConfigurationDeprecatedDecoder =
    JDP.decode NotificationConfigurationDeprecated
        |> JDP.optional "topicConfiguration" (JD.nullable topicConfigurationDeprecatedDecoder) Nothing
        |> JDP.optional "queueConfiguration" (JD.nullable queueConfigurationDeprecatedDecoder) Nothing
        |> JDP.optional "cloudFunctionConfiguration" (JD.nullable cloudFunctionConfigurationDecoder) Nothing




{-| Container for object key name filtering rules. For information about key name filtering, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the Amazon Simple Storage Service Developer Guide.
-}
type alias NotificationConfigurationFilter =
    { key : Maybe S3KeyFilter
    }



notificationConfigurationFilterDecoder : JD.Decoder NotificationConfigurationFilter
notificationConfigurationFilterDecoder =
    JDP.decode NotificationConfigurationFilter
        |> JDP.optional "key" (JD.nullable s3KeyFilterDecoder) Nothing




{-| undefined
-}
type alias Object =
    { key : Maybe String
    , lastModified : Maybe Date
    , eTag : Maybe String
    , size : Maybe Int
    , storageClass : Maybe ObjectStorageClass
    , owner : Maybe Owner
    }



objectDecoder : JD.Decoder Object
objectDecoder =
    JDP.decode Object
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing
        |> JDP.optional "storageClass" (JD.nullable objectStorageClassDecoder) Nothing
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing




{-| This operation is not allowed against this storage tier
-}
type alias ObjectAlreadyInActiveTierError =
    { 
    }



objectAlreadyInActiveTierErrorDecoder : JD.Decoder ObjectAlreadyInActiveTierError
objectAlreadyInActiveTierErrorDecoder =
    JDP.decode ObjectAlreadyInActiveTierError



{-| One of

* `ObjectCannedACL_private`
* `ObjectCannedACL_public-read`
* `ObjectCannedACL_public-read-write`
* `ObjectCannedACL_authenticated-read`
* `ObjectCannedACL_aws-exec-read`
* `ObjectCannedACL_bucket-owner-read`
* `ObjectCannedACL_bucket-owner-full-control`

-}
type ObjectCannedACL
    = ObjectCannedACL_private
    | ObjectCannedACL_public_read
    | ObjectCannedACL_public_read_write
    | ObjectCannedACL_authenticated_read
    | ObjectCannedACL_aws_exec_read
    | ObjectCannedACL_bucket_owner_read
    | ObjectCannedACL_bucket_owner_full_control



objectCannedACLDecoder : JD.Decoder ObjectCannedACL
objectCannedACLDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "private" ->
                        JD.succeed ObjectCannedACL_private

                    "public_read" ->
                        JD.succeed ObjectCannedACL_public_read

                    "public_read_write" ->
                        JD.succeed ObjectCannedACL_public_read_write

                    "authenticated_read" ->
                        JD.succeed ObjectCannedACL_authenticated_read

                    "aws_exec_read" ->
                        JD.succeed ObjectCannedACL_aws_exec_read

                    "bucket_owner_read" ->
                        JD.succeed ObjectCannedACL_bucket_owner_read

                    "bucket_owner_full_control" ->
                        JD.succeed ObjectCannedACL_bucket_owner_full_control


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias ObjectIdentifier =
    { key : String
    , versionId : Maybe String
    }



objectIdentifierDecoder : JD.Decoder ObjectIdentifier
objectIdentifierDecoder =
    JDP.decode ObjectIdentifier
        |> JDP.required "key" JD.string
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing




{-| The source object of the COPY operation is not in the active tier and is only stored in Amazon Glacier.
-}
type alias ObjectNotInActiveTierError =
    { 
    }



objectNotInActiveTierErrorDecoder : JD.Decoder ObjectNotInActiveTierError
objectNotInActiveTierErrorDecoder =
    JDP.decode ObjectNotInActiveTierError



{-| One of

* `ObjectStorageClass_STANDARD`
* `ObjectStorageClass_REDUCED_REDUNDANCY`
* `ObjectStorageClass_GLACIER`

-}
type ObjectStorageClass
    = ObjectStorageClass_STANDARD
    | ObjectStorageClass_REDUCED_REDUNDANCY
    | ObjectStorageClass_GLACIER



objectStorageClassDecoder : JD.Decoder ObjectStorageClass
objectStorageClassDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STANDARD" ->
                        JD.succeed ObjectStorageClass_STANDARD

                    "REDUCED_REDUNDANCY" ->
                        JD.succeed ObjectStorageClass_REDUCED_REDUNDANCY

                    "GLACIER" ->
                        JD.succeed ObjectStorageClass_GLACIER


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias ObjectVersion =
    { eTag : Maybe String
    , size : Maybe Int
    , storageClass : Maybe ObjectVersionStorageClass
    , key : Maybe String
    , versionId : Maybe String
    , isLatest : Maybe Bool
    , lastModified : Maybe Date
    , owner : Maybe Owner
    }



objectVersionDecoder : JD.Decoder ObjectVersion
objectVersionDecoder =
    JDP.decode ObjectVersion
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing
        |> JDP.optional "storageClass" (JD.nullable objectVersionStorageClassDecoder) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isLatest" (JD.nullable JD.bool) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing
        |> JDP.optional "owner" (JD.nullable ownerDecoder) Nothing




{-| One of

* `ObjectVersionStorageClass_STANDARD`

-}
type ObjectVersionStorageClass
    = ObjectVersionStorageClass_STANDARD



objectVersionStorageClassDecoder : JD.Decoder ObjectVersionStorageClass
objectVersionStorageClassDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STANDARD" ->
                        JD.succeed ObjectVersionStorageClass_STANDARD


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias Owner =
    { displayName : Maybe String
    , iD : Maybe String
    }



ownerDecoder : JD.Decoder Owner
ownerDecoder =
    JDP.decode Owner
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "iD" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias Part =
    { partNumber : Maybe Int
    , lastModified : Maybe Date
    , eTag : Maybe String
    , size : Maybe Int
    }



partDecoder : JD.Decoder Part
partDecoder =
    JDP.decode Part
        |> JDP.optional "partNumber" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing




{-| One of

* `Payer_Requester`
* `Payer_BucketOwner`

-}
type Payer
    = Payer_Requester
    | Payer_BucketOwner



payerDecoder : JD.Decoder Payer
payerDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Requester" ->
                        JD.succeed Payer_Requester

                    "BucketOwner" ->
                        JD.succeed Payer_BucketOwner


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Permission_FULL_CONTROL`
* `Permission_WRITE`
* `Permission_WRITE_ACP`
* `Permission_READ`
* `Permission_READ_ACP`

-}
type Permission
    = Permission_FULL_CONTROL
    | Permission_WRITE
    | Permission_WRITE_ACP
    | Permission_READ
    | Permission_READ_ACP



permissionDecoder : JD.Decoder Permission
permissionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FULL_CONTROL" ->
                        JD.succeed Permission_FULL_CONTROL

                    "WRITE" ->
                        JD.succeed Permission_WRITE

                    "WRITE_ACP" ->
                        JD.succeed Permission_WRITE_ACP

                    "READ" ->
                        JD.succeed Permission_READ

                    "READ_ACP" ->
                        JD.succeed Permission_READ_ACP


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Protocol_http`
* `Protocol_https`

-}
type Protocol
    = Protocol_http
    | Protocol_https



protocolDecoder : JD.Decoder Protocol
protocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "http" ->
                        JD.succeed Protocol_http

                    "https" ->
                        JD.succeed Protocol_https


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putObjectA
-}
type alias PutObjectAclOutput =
    { requestCharged : Maybe RequestCharged
    }



putObjectAclOutputDecoder : JD.Decoder PutObjectAclOutput
putObjectAclOutputDecoder =
    JDP.decode PutObjectAclOutput
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| Type of HTTP response from putObje
-}
type alias PutObjectOutput =
    { expiration : Maybe String
    , eTag : Maybe String
    , serverSideEncryption : Maybe ServerSideEncryption
    , versionId : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestCharged : Maybe RequestCharged
    }



putObjectOutputDecoder : JD.Decoder PutObjectOutput
putObjectOutputDecoder =
    JDP.decode PutObjectOutput
        |> JDP.optional "expiration" (JD.nullable JD.string) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerKeyMD5" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| Type of HTTP response from putObjectTaggi
-}
type alias PutObjectTaggingOutput =
    { versionId : Maybe String
    }



putObjectTaggingOutputDecoder : JD.Decoder PutObjectTaggingOutput
putObjectTaggingOutputDecoder =
    JDP.decode PutObjectTaggingOutput
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing




{-| Container for specifying an configuration when you want Amazon S3 to publish events to an Amazon Simple Queue Service (Amazon SQS) queue.
-}
type alias QueueConfiguration =
    { id : Maybe String
    , queueArn : String
    , events : (List Event)
    , filter : Maybe NotificationConfigurationFilter
    }



queueConfigurationDecoder : JD.Decoder QueueConfiguration
queueConfigurationDecoder =
    JDP.decode QueueConfiguration
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.required "queueArn" JD.string
        |> JDP.required "events" (JD.list eventDecoder)
        |> JDP.optional "filter" (JD.nullable notificationConfigurationFilterDecoder) Nothing




{-| undefined
-}
type alias QueueConfigurationDeprecated =
    { id : Maybe String
    , event : Maybe Event
    , events : Maybe (List Event)
    , queue : Maybe String
    }



queueConfigurationDeprecatedDecoder : JD.Decoder QueueConfigurationDeprecated
queueConfigurationDeprecatedDecoder =
    JDP.decode QueueConfigurationDeprecated
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "event" (JD.nullable eventDecoder) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list eventDecoder)) Nothing
        |> JDP.optional "queue" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias Redirect =
    { hostName : Maybe String
    , httpRedirectCode : Maybe String
    , protocol : Maybe Protocol
    , replaceKeyPrefixWith : Maybe String
    , replaceKeyWith : Maybe String
    }



redirectDecoder : JD.Decoder Redirect
redirectDecoder =
    JDP.decode Redirect
        |> JDP.optional "hostName" (JD.nullable JD.string) Nothing
        |> JDP.optional "httpRedirectCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "protocol" (JD.nullable protocolDecoder) Nothing
        |> JDP.optional "replaceKeyPrefixWith" (JD.nullable JD.string) Nothing
        |> JDP.optional "replaceKeyWith" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias RedirectAllRequestsTo =
    { hostName : String
    , protocol : Maybe Protocol
    }



redirectAllRequestsToDecoder : JD.Decoder RedirectAllRequestsTo
redirectAllRequestsToDecoder =
    JDP.decode RedirectAllRequestsTo
        |> JDP.required "hostName" JD.string
        |> JDP.optional "protocol" (JD.nullable protocolDecoder) Nothing




{-| Container for replication rules. You can add as many as 1,000 rules. Total replication configuration size can be up to 2 MB.
-}
type alias ReplicationConfiguration =
    { role : String
    , rules : (List ReplicationRule)
    }



replicationConfigurationDecoder : JD.Decoder ReplicationConfiguration
replicationConfigurationDecoder =
    JDP.decode ReplicationConfiguration
        |> JDP.required "role" JD.string
        |> JDP.required "rules" (JD.list replicationRuleDecoder)




{-| undefined
-}
type alias ReplicationRule =
    { iD : Maybe String
    , prefix : String
    , status : ReplicationRuleStatus
    , destination : Destination
    }



replicationRuleDecoder : JD.Decoder ReplicationRule
replicationRuleDecoder =
    JDP.decode ReplicationRule
        |> JDP.optional "iD" (JD.nullable JD.string) Nothing
        |> JDP.required "prefix" JD.string
        |> JDP.required "status" replicationRuleStatusDecoder
        |> JDP.required "destination" destinationDecoder




{-| One of

* `ReplicationRuleStatus_Enabled`
* `ReplicationRuleStatus_Disabled`

-}
type ReplicationRuleStatus
    = ReplicationRuleStatus_Enabled
    | ReplicationRuleStatus_Disabled



replicationRuleStatusDecoder : JD.Decoder ReplicationRuleStatus
replicationRuleStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed ReplicationRuleStatus_Enabled

                    "Disabled" ->
                        JD.succeed ReplicationRuleStatus_Disabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ReplicationStatus_COMPLETE`
* `ReplicationStatus_PENDING`
* `ReplicationStatus_FAILED`
* `ReplicationStatus_REPLICA`

-}
type ReplicationStatus
    = ReplicationStatus_COMPLETE
    | ReplicationStatus_PENDING
    | ReplicationStatus_FAILED
    | ReplicationStatus_REPLICA



replicationStatusDecoder : JD.Decoder ReplicationStatus
replicationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COMPLETE" ->
                        JD.succeed ReplicationStatus_COMPLETE

                    "PENDING" ->
                        JD.succeed ReplicationStatus_PENDING

                    "FAILED" ->
                        JD.succeed ReplicationStatus_FAILED

                    "REPLICA" ->
                        JD.succeed ReplicationStatus_REPLICA


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `RequestCharged_requester`

-}
type RequestCharged
    = RequestCharged_requester



requestChargedDecoder : JD.Decoder RequestCharged
requestChargedDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "requester" ->
                        JD.succeed RequestCharged_requester


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `RequestPayer_requester`

-}
type RequestPayer
    = RequestPayer_requester



requestPayerDecoder : JD.Decoder RequestPayer
requestPayerDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "requester" ->
                        JD.succeed RequestPayer_requester


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias RequestPaymentConfiguration =
    { payer : Payer
    }



requestPaymentConfigurationDecoder : JD.Decoder RequestPaymentConfiguration
requestPaymentConfigurationDecoder =
    JDP.decode RequestPaymentConfiguration
        |> JDP.required "payer" payerDecoder




{-| Type of HTTP response from restoreObje
-}
type alias RestoreObjectOutput =
    { requestCharged : Maybe RequestCharged
    }



restoreObjectOutputDecoder : JD.Decoder RestoreObjectOutput
restoreObjectOutputDecoder =
    JDP.decode RestoreObjectOutput
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias RestoreRequest =
    { days : Int
    , glacierJobParameters : Maybe GlacierJobParameters
    }



restoreRequestDecoder : JD.Decoder RestoreRequest
restoreRequestDecoder =
    JDP.decode RestoreRequest
        |> JDP.required "days" JD.int
        |> JDP.optional "glacierJobParameters" (JD.nullable glacierJobParametersDecoder) Nothing




{-| undefined
-}
type alias RoutingRule =
    { condition : Maybe Condition
    , redirect : Redirect
    }



routingRuleDecoder : JD.Decoder RoutingRule
routingRuleDecoder =
    JDP.decode RoutingRule
        |> JDP.optional "condition" (JD.nullable conditionDecoder) Nothing
        |> JDP.required "redirect" redirectDecoder




{-| undefined
-}
type alias Rule =
    { expiration : Maybe LifecycleExpiration
    , iD : Maybe String
    , prefix : String
    , status : ExpirationStatus
    , transition : Maybe Transition
    , noncurrentVersionTransition : Maybe NoncurrentVersionTransition
    , noncurrentVersionExpiration : Maybe NoncurrentVersionExpiration
    , abortIncompleteMultipartUpload : Maybe AbortIncompleteMultipartUpload
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JDP.decode Rule
        |> JDP.optional "expiration" (JD.nullable lifecycleExpirationDecoder) Nothing
        |> JDP.optional "iD" (JD.nullable JD.string) Nothing
        |> JDP.required "prefix" JD.string
        |> JDP.required "status" expirationStatusDecoder
        |> JDP.optional "transition" (JD.nullable transitionDecoder) Nothing
        |> JDP.optional "noncurrentVersionTransition" (JD.nullable noncurrentVersionTransitionDecoder) Nothing
        |> JDP.optional "noncurrentVersionExpiration" (JD.nullable noncurrentVersionExpirationDecoder) Nothing
        |> JDP.optional "abortIncompleteMultipartUpload" (JD.nullable abortIncompleteMultipartUploadDecoder) Nothing




{-| Container for object key name prefix and suffix filtering rules.
-}
type alias S3KeyFilter =
    { filterRules : Maybe (List FilterRule)
    }



s3KeyFilterDecoder : JD.Decoder S3KeyFilter
s3KeyFilterDecoder =
    JDP.decode S3KeyFilter
        |> JDP.optional "filterRules" (JD.nullable (JD.list filterRuleDecoder)) Nothing




{-| One of

* `ServerSideEncryption_AES256`
* `ServerSideEncryption_aws:kms`

-}
type ServerSideEncryption
    = ServerSideEncryption_AES256
    | ServerSideEncryption_aws_kms



serverSideEncryptionDecoder : JD.Decoder ServerSideEncryption
serverSideEncryptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AES256" ->
                        JD.succeed ServerSideEncryption_AES256

                    "aws_kms" ->
                        JD.succeed ServerSideEncryption_aws_kms


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `StorageClass_STANDARD`
* `StorageClass_REDUCED_REDUNDANCY`
* `StorageClass_STANDARD_IA`

-}
type StorageClass
    = StorageClass_STANDARD
    | StorageClass_REDUCED_REDUNDANCY
    | StorageClass_STANDARD_IA



storageClassDecoder : JD.Decoder StorageClass
storageClassDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STANDARD" ->
                        JD.succeed StorageClass_STANDARD

                    "REDUCED_REDUNDANCY" ->
                        JD.succeed StorageClass_REDUCED_REDUNDANCY

                    "STANDARD_IA" ->
                        JD.succeed StorageClass_STANDARD_IA


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias StorageClassAnalysis =
    { dataExport : Maybe StorageClassAnalysisDataExport
    }



storageClassAnalysisDecoder : JD.Decoder StorageClassAnalysis
storageClassAnalysisDecoder =
    JDP.decode StorageClassAnalysis
        |> JDP.optional "dataExport" (JD.nullable storageClassAnalysisDataExportDecoder) Nothing




{-| undefined
-}
type alias StorageClassAnalysisDataExport =
    { outputSchemaVersion : StorageClassAnalysisSchemaVersion
    , destination : AnalyticsExportDestination
    }



storageClassAnalysisDataExportDecoder : JD.Decoder StorageClassAnalysisDataExport
storageClassAnalysisDataExportDecoder =
    JDP.decode StorageClassAnalysisDataExport
        |> JDP.required "outputSchemaVersion" storageClassAnalysisSchemaVersionDecoder
        |> JDP.required "destination" analyticsExportDestinationDecoder




{-| One of

* `StorageClassAnalysisSchemaVersion_V_1`

-}
type StorageClassAnalysisSchemaVersion
    = StorageClassAnalysisSchemaVersion_V_1



storageClassAnalysisSchemaVersionDecoder : JD.Decoder StorageClassAnalysisSchemaVersion
storageClassAnalysisSchemaVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "V_1" ->
                        JD.succeed StorageClassAnalysisSchemaVersion_V_1


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias Tag =
    { key : String
    , value : String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.required "value" JD.string




{-| undefined
-}
type alias Tagging =
    { tagSet : (List Tag)
    }



taggingDecoder : JD.Decoder Tagging
taggingDecoder =
    JDP.decode Tagging
        |> JDP.required "tagSet" (JD.list tagDecoder)




{-| One of

* `TaggingDirective_COPY`
* `TaggingDirective_REPLACE`

-}
type TaggingDirective
    = TaggingDirective_COPY
    | TaggingDirective_REPLACE



taggingDirectiveDecoder : JD.Decoder TaggingDirective
taggingDirectiveDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "COPY" ->
                        JD.succeed TaggingDirective_COPY

                    "REPLACE" ->
                        JD.succeed TaggingDirective_REPLACE


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias TargetGrant =
    { grantee : Maybe Grantee
    , permission : Maybe BucketLogsPermission
    }



targetGrantDecoder : JD.Decoder TargetGrant
targetGrantDecoder =
    JDP.decode TargetGrant
        |> JDP.optional "grantee" (JD.nullable granteeDecoder) Nothing
        |> JDP.optional "permission" (JD.nullable bucketLogsPermissionDecoder) Nothing




{-| One of

* `Tier_Standard`
* `Tier_Bulk`
* `Tier_Expedited`

-}
type Tier
    = Tier_Standard
    | Tier_Bulk
    | Tier_Expedited



tierDecoder : JD.Decoder Tier
tierDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Standard" ->
                        JD.succeed Tier_Standard

                    "Bulk" ->
                        JD.succeed Tier_Bulk

                    "Expedited" ->
                        JD.succeed Tier_Expedited


                    _ ->
                        JD.fail "bad thing"
            )



{-| Container for specifying the configuration when you want Amazon S3 to publish events to an Amazon Simple Notification Service (Amazon SNS) topic.
-}
type alias TopicConfiguration =
    { id : Maybe String
    , topicArn : String
    , events : (List Event)
    , filter : Maybe NotificationConfigurationFilter
    }



topicConfigurationDecoder : JD.Decoder TopicConfiguration
topicConfigurationDecoder =
    JDP.decode TopicConfiguration
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.required "topicArn" JD.string
        |> JDP.required "events" (JD.list eventDecoder)
        |> JDP.optional "filter" (JD.nullable notificationConfigurationFilterDecoder) Nothing




{-| undefined
-}
type alias TopicConfigurationDeprecated =
    { id : Maybe String
    , events : Maybe (List Event)
    , event : Maybe Event
    , topic : Maybe String
    }



topicConfigurationDeprecatedDecoder : JD.Decoder TopicConfigurationDeprecated
topicConfigurationDeprecatedDecoder =
    JDP.decode TopicConfigurationDeprecated
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list eventDecoder)) Nothing
        |> JDP.optional "event" (JD.nullable eventDecoder) Nothing
        |> JDP.optional "topic" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias Transition =
    { date : Maybe Date
    , days : Maybe Int
    , storageClass : Maybe TransitionStorageClass
    }



transitionDecoder : JD.Decoder Transition
transitionDecoder =
    JDP.decode Transition
        |> JDP.optional "date" (JD.nullable JDX.date) Nothing
        |> JDP.optional "days" (JD.nullable JD.int) Nothing
        |> JDP.optional "storageClass" (JD.nullable transitionStorageClassDecoder) Nothing




{-| One of

* `TransitionStorageClass_GLACIER`
* `TransitionStorageClass_STANDARD_IA`

-}
type TransitionStorageClass
    = TransitionStorageClass_GLACIER
    | TransitionStorageClass_STANDARD_IA



transitionStorageClassDecoder : JD.Decoder TransitionStorageClass
transitionStorageClassDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GLACIER" ->
                        JD.succeed TransitionStorageClass_GLACIER

                    "STANDARD_IA" ->
                        JD.succeed TransitionStorageClass_STANDARD_IA


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Type_CanonicalUser`
* `Type_AmazonCustomerByEmail`
* `Type_Group`

-}
type Type
    = Type_CanonicalUser
    | Type_AmazonCustomerByEmail
    | Type_Group



typeDecoder : JD.Decoder Type
typeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CanonicalUser" ->
                        JD.succeed Type_CanonicalUser

                    "AmazonCustomerByEmail" ->
                        JD.succeed Type_AmazonCustomerByEmail

                    "Group" ->
                        JD.succeed Type_Group


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from uploadPartCo
-}
type alias UploadPartCopyOutput =
    { copySourceVersionId : Maybe String
    , copyPartResult : Maybe CopyPartResult
    , serverSideEncryption : Maybe ServerSideEncryption
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestCharged : Maybe RequestCharged
    }



uploadPartCopyOutputDecoder : JD.Decoder UploadPartCopyOutput
uploadPartCopyOutputDecoder =
    JDP.decode UploadPartCopyOutput
        |> JDP.optional "copySourceVersionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "copyPartResult" (JD.nullable copyPartResultDecoder) Nothing
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "sSECustomerAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerKeyMD5" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| Type of HTTP response from uploadPa
-}
type alias UploadPartOutput =
    { serverSideEncryption : Maybe ServerSideEncryption
    , eTag : Maybe String
    , sSECustomerAlgorithm : Maybe String
    , sSECustomerKeyMD5 : Maybe String
    , sSEKMSKeyId : Maybe String
    , requestCharged : Maybe RequestCharged
    }



uploadPartOutputDecoder : JD.Decoder UploadPartOutput
uploadPartOutputDecoder =
    JDP.decode UploadPartOutput
        |> JDP.optional "serverSideEncryption" (JD.nullable serverSideEncryptionDecoder) Nothing
        |> JDP.optional "eTag" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSECustomerKeyMD5" (JD.nullable JD.string) Nothing
        |> JDP.optional "sSEKMSKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestCharged" (JD.nullable requestChargedDecoder) Nothing




{-| undefined
-}
type alias VersioningConfiguration =
    { mFADelete : Maybe MFADelete
    , status : Maybe BucketVersioningStatus
    }



versioningConfigurationDecoder : JD.Decoder VersioningConfiguration
versioningConfigurationDecoder =
    JDP.decode VersioningConfiguration
        |> JDP.optional "mFADelete" (JD.nullable mFADeleteDecoder) Nothing
        |> JDP.optional "status" (JD.nullable bucketVersioningStatusDecoder) Nothing




{-| undefined
-}
type alias WebsiteConfiguration =
    { errorDocument : Maybe ErrorDocument
    , indexDocument : Maybe IndexDocument
    , redirectAllRequestsTo : Maybe RedirectAllRequestsTo
    , routingRules : Maybe (List RoutingRule)
    }



websiteConfigurationDecoder : JD.Decoder WebsiteConfiguration
websiteConfigurationDecoder =
    JDP.decode WebsiteConfiguration
        |> JDP.optional "errorDocument" (JD.nullable errorDocumentDecoder) Nothing
        |> JDP.optional "indexDocument" (JD.nullable indexDocumentDecoder) Nothing
        |> JDP.optional "redirectAllRequestsTo" (JD.nullable redirectAllRequestsToDecoder) Nothing
        |> JDP.optional "routingRules" (JD.nullable (JD.list routingRuleDecoder)) Nothing




