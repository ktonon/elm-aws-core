module AWS.Services.StorageGateway
    exposing
        ( config
        , activateGateway
        , ActivateGatewayOptions
        , addCache
        , addTagsToResource
        , addUploadBuffer
        , addWorkingStorage
        , cancelArchival
        , cancelRetrieval
        , createCachediSCSIVolume
        , CreateCachediSCSIVolumeOptions
        , createNFSFileShare
        , CreateNFSFileShareOptions
        , createSnapshot
        , createSnapshotFromVolumeRecoveryPoint
        , createStorediSCSIVolume
        , CreateStorediSCSIVolumeOptions
        , createTapeWithBarcode
        , createTapes
        , deleteBandwidthRateLimit
        , deleteChapCredentials
        , deleteFileShare
        , deleteGateway
        , deleteSnapshotSchedule
        , deleteTape
        , deleteTapeArchive
        , deleteVolume
        , describeBandwidthRateLimit
        , describeCache
        , describeCachediSCSIVolumes
        , describeChapCredentials
        , describeGatewayInformation
        , describeMaintenanceStartTime
        , describeNFSFileShares
        , describeSnapshotSchedule
        , describeStorediSCSIVolumes
        , describeTapeArchives
        , DescribeTapeArchivesOptions
        , describeTapeRecoveryPoints
        , DescribeTapeRecoveryPointsOptions
        , describeTapes
        , DescribeTapesOptions
        , describeUploadBuffer
        , describeVTLDevices
        , DescribeVTLDevicesOptions
        , describeWorkingStorage
        , disableGateway
        , listFileShares
        , ListFileSharesOptions
        , listGateways
        , ListGatewaysOptions
        , listLocalDisks
        , listTagsForResource
        , ListTagsForResourceOptions
        , listTapes
        , ListTapesOptions
        , listVolumeInitiators
        , listVolumeRecoveryPoints
        , listVolumes
        , ListVolumesOptions
        , removeTagsFromResource
        , resetCache
        , retrieveTapeArchive
        , retrieveTapeRecoveryPoint
        , setLocalConsolePassword
        , shutdownGateway
        , startGateway
        , updateBandwidthRateLimit
        , UpdateBandwidthRateLimitOptions
        , updateChapCredentials
        , UpdateChapCredentialsOptions
        , updateGatewayInformation
        , UpdateGatewayInformationOptions
        , updateGatewaySoftwareNow
        , updateMaintenanceStartTime
        , updateNFSFileShare
        , UpdateNFSFileShareOptions
        , updateSnapshotSchedule
        , UpdateSnapshotScheduleOptions
        , updateVTLDeviceType
        , ActivateGatewayOutput
        , AddCacheOutput
        , AddTagsToResourceOutput
        , AddUploadBufferOutput
        , AddWorkingStorageOutput
        , CachediSCSIVolume
        , CancelArchivalOutput
        , CancelRetrievalOutput
        , ChapInfo
        , CreateCachediSCSIVolumeOutput
        , CreateNFSFileShareOutput
        , CreateSnapshotFromVolumeRecoveryPointOutput
        , CreateSnapshotOutput
        , CreateStorediSCSIVolumeOutput
        , CreateTapeWithBarcodeOutput
        , CreateTapesOutput
        , DeleteBandwidthRateLimitOutput
        , DeleteChapCredentialsOutput
        , DeleteFileShareOutput
        , DeleteGatewayOutput
        , DeleteSnapshotScheduleOutput
        , DeleteTapeArchiveOutput
        , DeleteTapeOutput
        , DeleteVolumeOutput
        , DescribeBandwidthRateLimitOutput
        , DescribeCacheOutput
        , DescribeCachediSCSIVolumesOutput
        , DescribeChapCredentialsOutput
        , DescribeGatewayInformationOutput
        , DescribeMaintenanceStartTimeOutput
        , DescribeNFSFileSharesOutput
        , DescribeSnapshotScheduleOutput
        , DescribeStorediSCSIVolumesOutput
        , DescribeTapeArchivesOutput
        , DescribeTapeRecoveryPointsOutput
        , DescribeTapesOutput
        , DescribeUploadBufferOutput
        , DescribeVTLDevicesOutput
        , DescribeWorkingStorageOutput
        , DeviceiSCSIAttributes
        , DisableGatewayOutput
        , Disk
        , ErrorCode(..)
        , FileShareInfo
        , GatewayInfo
        , InternalServerError
        , InvalidGatewayRequestException
        , ListFileSharesOutput
        , ListGatewaysOutput
        , ListLocalDisksOutput
        , ListTagsForResourceOutput
        , ListTapesOutput
        , ListVolumeInitiatorsOutput
        , ListVolumeRecoveryPointsOutput
        , ListVolumesOutput
        , NFSFileShareDefaults
        , NFSFileShareInfo
        , NetworkInterface
        , RemoveTagsFromResourceOutput
        , ResetCacheOutput
        , RetrieveTapeArchiveOutput
        , RetrieveTapeRecoveryPointOutput
        , ServiceUnavailableError
        , SetLocalConsolePasswordOutput
        , ShutdownGatewayOutput
        , StartGatewayOutput
        , StorageGatewayError
        , StorediSCSIVolume
        , Tag
        , Tape
        , TapeArchive
        , TapeInfo
        , TapeRecoveryPointInfo
        , UpdateBandwidthRateLimitOutput
        , UpdateChapCredentialsOutput
        , UpdateGatewayInformationOutput
        , UpdateGatewaySoftwareNowOutput
        , UpdateMaintenanceStartTimeOutput
        , UpdateNFSFileShareOutput
        , UpdateSnapshotScheduleOutput
        , UpdateVTLDeviceTypeOutput
        , VTLDevice
        , VolumeInfo
        , VolumeRecoveryPointInfo
        , VolumeiSCSIAttributes
        )

{-| <fullname>AWS Storage Gateway Service</fullname> <p>AWS Storage Gateway is the service that connects an on-premises software appliance with cloud-based storage to provide seamless and secure integration between an organization's on-premises IT environment and AWS's storage infrastructure. The service enables you to securely upload data to the AWS cloud for cost effective backup and rapid disaster recovery.</p> <p>Use the following links to get started using the <i>AWS Storage Gateway Service API Reference</i>:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders">AWS Storage Gateway Required Request Headers</a>: Describes the required headers that you must send with every POST request to AWS Storage Gateway.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests">Signing Requests</a>: AWS Storage Gateway requires that you authenticate every request you send; this topic describes how sign such a request.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses">Error Responses</a>: Provides reference information about AWS Storage Gateway errors.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html">Operations in AWS Storage Gateway</a>: Contains detailed descriptions of all AWS Storage Gateway operations, their request parameters, response elements, possible errors, and examples of requests and responses.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/index.html?rande.html">AWS Storage Gateway Regions and Endpoints</a>: Provides a list of each of the s and endpoints available for use with AWS Storage Gateway.</p> </li> </ul> <note> <p>AWS Storage Gateway resource IDs are in uppercase. When you use these resource IDs with the Amazon EC2 API, EC2 expects resource IDs in lowercase. You must change your resource ID to lowercase to use it with the EC2 API. For example, in Storage Gateway the ID for a volume might be <code>vol-1122AABB</code>. When you use this ID with the EC2 API, you must change it to <code>vol-1122aabb</code>. Otherwise, the EC2 API might not behave as expected.</p> </note> <important> <p>IDs for Storage Gateway volumes and Amazon EBS snapshots created from gateway volumes are changing to a longer format. Starting in December 2016, all new volumes and snapshots will be created with a 17-character string. Starting in April 2016, you will be able to use these longer IDs so you can test your systems with the new format. For more information, see <a href="https://aws.amazon.com/ec2/faqs/#longer-ids">Longer EC2 and EBS Resource IDs</a>.</p> <p> For example, a volume ARN with the longer volume ID format will look like this:</p> <p> <code>arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG</code>.</p> <p>A snapshot ID with the longer ID format will look like this: <code>snap-78e226633445566ee</code>.</p> <p>For more information, see <a href="https://forums.aws.amazon.com/ann.jspa?annID=3557">Announcement: Heads-up – Longer AWS Storage Gateway volume and snapshot IDs coming in 2016</a>.</p> </important>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [activateGateway](#activateGateway)
* [ActivateGatewayOptions](#ActivateGatewayOptions)
* [addCache](#addCache)
* [addTagsToResource](#addTagsToResource)
* [addUploadBuffer](#addUploadBuffer)
* [addWorkingStorage](#addWorkingStorage)
* [cancelArchival](#cancelArchival)
* [cancelRetrieval](#cancelRetrieval)
* [createCachediSCSIVolume](#createCachediSCSIVolume)
* [CreateCachediSCSIVolumeOptions](#CreateCachediSCSIVolumeOptions)
* [createNFSFileShare](#createNFSFileShare)
* [CreateNFSFileShareOptions](#CreateNFSFileShareOptions)
* [createSnapshot](#createSnapshot)
* [createSnapshotFromVolumeRecoveryPoint](#createSnapshotFromVolumeRecoveryPoint)
* [createStorediSCSIVolume](#createStorediSCSIVolume)
* [CreateStorediSCSIVolumeOptions](#CreateStorediSCSIVolumeOptions)
* [createTapeWithBarcode](#createTapeWithBarcode)
* [createTapes](#createTapes)
* [deleteBandwidthRateLimit](#deleteBandwidthRateLimit)
* [deleteChapCredentials](#deleteChapCredentials)
* [deleteFileShare](#deleteFileShare)
* [deleteGateway](#deleteGateway)
* [deleteSnapshotSchedule](#deleteSnapshotSchedule)
* [deleteTape](#deleteTape)
* [deleteTapeArchive](#deleteTapeArchive)
* [deleteVolume](#deleteVolume)
* [describeBandwidthRateLimit](#describeBandwidthRateLimit)
* [describeCache](#describeCache)
* [describeCachediSCSIVolumes](#describeCachediSCSIVolumes)
* [describeChapCredentials](#describeChapCredentials)
* [describeGatewayInformation](#describeGatewayInformation)
* [describeMaintenanceStartTime](#describeMaintenanceStartTime)
* [describeNFSFileShares](#describeNFSFileShares)
* [describeSnapshotSchedule](#describeSnapshotSchedule)
* [describeStorediSCSIVolumes](#describeStorediSCSIVolumes)
* [describeTapeArchives](#describeTapeArchives)
* [DescribeTapeArchivesOptions](#DescribeTapeArchivesOptions)
* [describeTapeRecoveryPoints](#describeTapeRecoveryPoints)
* [DescribeTapeRecoveryPointsOptions](#DescribeTapeRecoveryPointsOptions)
* [describeTapes](#describeTapes)
* [DescribeTapesOptions](#DescribeTapesOptions)
* [describeUploadBuffer](#describeUploadBuffer)
* [describeVTLDevices](#describeVTLDevices)
* [DescribeVTLDevicesOptions](#DescribeVTLDevicesOptions)
* [describeWorkingStorage](#describeWorkingStorage)
* [disableGateway](#disableGateway)
* [listFileShares](#listFileShares)
* [ListFileSharesOptions](#ListFileSharesOptions)
* [listGateways](#listGateways)
* [ListGatewaysOptions](#ListGatewaysOptions)
* [listLocalDisks](#listLocalDisks)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [listTapes](#listTapes)
* [ListTapesOptions](#ListTapesOptions)
* [listVolumeInitiators](#listVolumeInitiators)
* [listVolumeRecoveryPoints](#listVolumeRecoveryPoints)
* [listVolumes](#listVolumes)
* [ListVolumesOptions](#ListVolumesOptions)
* [removeTagsFromResource](#removeTagsFromResource)
* [resetCache](#resetCache)
* [retrieveTapeArchive](#retrieveTapeArchive)
* [retrieveTapeRecoveryPoint](#retrieveTapeRecoveryPoint)
* [setLocalConsolePassword](#setLocalConsolePassword)
* [shutdownGateway](#shutdownGateway)
* [startGateway](#startGateway)
* [updateBandwidthRateLimit](#updateBandwidthRateLimit)
* [UpdateBandwidthRateLimitOptions](#UpdateBandwidthRateLimitOptions)
* [updateChapCredentials](#updateChapCredentials)
* [UpdateChapCredentialsOptions](#UpdateChapCredentialsOptions)
* [updateGatewayInformation](#updateGatewayInformation)
* [UpdateGatewayInformationOptions](#UpdateGatewayInformationOptions)
* [updateGatewaySoftwareNow](#updateGatewaySoftwareNow)
* [updateMaintenanceStartTime](#updateMaintenanceStartTime)
* [updateNFSFileShare](#updateNFSFileShare)
* [UpdateNFSFileShareOptions](#UpdateNFSFileShareOptions)
* [updateSnapshotSchedule](#updateSnapshotSchedule)
* [UpdateSnapshotScheduleOptions](#UpdateSnapshotScheduleOptions)
* [updateVTLDeviceType](#updateVTLDeviceType)


@docs activateGateway,ActivateGatewayOptions,addCache,addTagsToResource,addUploadBuffer,addWorkingStorage,cancelArchival,cancelRetrieval,createCachediSCSIVolume,CreateCachediSCSIVolumeOptions,createNFSFileShare,CreateNFSFileShareOptions,createSnapshot,createSnapshotFromVolumeRecoveryPoint,createStorediSCSIVolume,CreateStorediSCSIVolumeOptions,createTapeWithBarcode,createTapes,deleteBandwidthRateLimit,deleteChapCredentials,deleteFileShare,deleteGateway,deleteSnapshotSchedule,deleteTape,deleteTapeArchive,deleteVolume,describeBandwidthRateLimit,describeCache,describeCachediSCSIVolumes,describeChapCredentials,describeGatewayInformation,describeMaintenanceStartTime,describeNFSFileShares,describeSnapshotSchedule,describeStorediSCSIVolumes,describeTapeArchives,DescribeTapeArchivesOptions,describeTapeRecoveryPoints,DescribeTapeRecoveryPointsOptions,describeTapes,DescribeTapesOptions,describeUploadBuffer,describeVTLDevices,DescribeVTLDevicesOptions,describeWorkingStorage,disableGateway,listFileShares,ListFileSharesOptions,listGateways,ListGatewaysOptions,listLocalDisks,listTagsForResource,ListTagsForResourceOptions,listTapes,ListTapesOptions,listVolumeInitiators,listVolumeRecoveryPoints,listVolumes,ListVolumesOptions,removeTagsFromResource,resetCache,retrieveTapeArchive,retrieveTapeRecoveryPoint,setLocalConsolePassword,shutdownGateway,startGateway,updateBandwidthRateLimit,UpdateBandwidthRateLimitOptions,updateChapCredentials,UpdateChapCredentialsOptions,updateGatewayInformation,UpdateGatewayInformationOptions,updateGatewaySoftwareNow,updateMaintenanceStartTime,updateNFSFileShare,UpdateNFSFileShareOptions,updateSnapshotSchedule,UpdateSnapshotScheduleOptions,updateVTLDeviceType

## Responses

* [ActivateGatewayOutput](#ActivateGatewayOutput)
* [AddCacheOutput](#AddCacheOutput)
* [AddTagsToResourceOutput](#AddTagsToResourceOutput)
* [AddUploadBufferOutput](#AddUploadBufferOutput)
* [AddWorkingStorageOutput](#AddWorkingStorageOutput)
* [CancelArchivalOutput](#CancelArchivalOutput)
* [CancelRetrievalOutput](#CancelRetrievalOutput)
* [CreateCachediSCSIVolumeOutput](#CreateCachediSCSIVolumeOutput)
* [CreateNFSFileShareOutput](#CreateNFSFileShareOutput)
* [CreateSnapshotFromVolumeRecoveryPointOutput](#CreateSnapshotFromVolumeRecoveryPointOutput)
* [CreateSnapshotOutput](#CreateSnapshotOutput)
* [CreateStorediSCSIVolumeOutput](#CreateStorediSCSIVolumeOutput)
* [CreateTapeWithBarcodeOutput](#CreateTapeWithBarcodeOutput)
* [CreateTapesOutput](#CreateTapesOutput)
* [DeleteBandwidthRateLimitOutput](#DeleteBandwidthRateLimitOutput)
* [DeleteChapCredentialsOutput](#DeleteChapCredentialsOutput)
* [DeleteFileShareOutput](#DeleteFileShareOutput)
* [DeleteGatewayOutput](#DeleteGatewayOutput)
* [DeleteSnapshotScheduleOutput](#DeleteSnapshotScheduleOutput)
* [DeleteTapeArchiveOutput](#DeleteTapeArchiveOutput)
* [DeleteTapeOutput](#DeleteTapeOutput)
* [DeleteVolumeOutput](#DeleteVolumeOutput)
* [DescribeBandwidthRateLimitOutput](#DescribeBandwidthRateLimitOutput)
* [DescribeCacheOutput](#DescribeCacheOutput)
* [DescribeCachediSCSIVolumesOutput](#DescribeCachediSCSIVolumesOutput)
* [DescribeChapCredentialsOutput](#DescribeChapCredentialsOutput)
* [DescribeGatewayInformationOutput](#DescribeGatewayInformationOutput)
* [DescribeMaintenanceStartTimeOutput](#DescribeMaintenanceStartTimeOutput)
* [DescribeNFSFileSharesOutput](#DescribeNFSFileSharesOutput)
* [DescribeSnapshotScheduleOutput](#DescribeSnapshotScheduleOutput)
* [DescribeStorediSCSIVolumesOutput](#DescribeStorediSCSIVolumesOutput)
* [DescribeTapeArchivesOutput](#DescribeTapeArchivesOutput)
* [DescribeTapeRecoveryPointsOutput](#DescribeTapeRecoveryPointsOutput)
* [DescribeTapesOutput](#DescribeTapesOutput)
* [DescribeUploadBufferOutput](#DescribeUploadBufferOutput)
* [DescribeVTLDevicesOutput](#DescribeVTLDevicesOutput)
* [DescribeWorkingStorageOutput](#DescribeWorkingStorageOutput)
* [DisableGatewayOutput](#DisableGatewayOutput)
* [ListFileSharesOutput](#ListFileSharesOutput)
* [ListGatewaysOutput](#ListGatewaysOutput)
* [ListLocalDisksOutput](#ListLocalDisksOutput)
* [ListTagsForResourceOutput](#ListTagsForResourceOutput)
* [ListTapesOutput](#ListTapesOutput)
* [ListVolumeInitiatorsOutput](#ListVolumeInitiatorsOutput)
* [ListVolumeRecoveryPointsOutput](#ListVolumeRecoveryPointsOutput)
* [ListVolumesOutput](#ListVolumesOutput)
* [RemoveTagsFromResourceOutput](#RemoveTagsFromResourceOutput)
* [ResetCacheOutput](#ResetCacheOutput)
* [RetrieveTapeArchiveOutput](#RetrieveTapeArchiveOutput)
* [RetrieveTapeRecoveryPointOutput](#RetrieveTapeRecoveryPointOutput)
* [SetLocalConsolePasswordOutput](#SetLocalConsolePasswordOutput)
* [ShutdownGatewayOutput](#ShutdownGatewayOutput)
* [StartGatewayOutput](#StartGatewayOutput)
* [UpdateBandwidthRateLimitOutput](#UpdateBandwidthRateLimitOutput)
* [UpdateChapCredentialsOutput](#UpdateChapCredentialsOutput)
* [UpdateGatewayInformationOutput](#UpdateGatewayInformationOutput)
* [UpdateGatewaySoftwareNowOutput](#UpdateGatewaySoftwareNowOutput)
* [UpdateMaintenanceStartTimeOutput](#UpdateMaintenanceStartTimeOutput)
* [UpdateNFSFileShareOutput](#UpdateNFSFileShareOutput)
* [UpdateSnapshotScheduleOutput](#UpdateSnapshotScheduleOutput)
* [UpdateVTLDeviceTypeOutput](#UpdateVTLDeviceTypeOutput)


@docs ActivateGatewayOutput,AddCacheOutput,AddTagsToResourceOutput,AddUploadBufferOutput,AddWorkingStorageOutput,CancelArchivalOutput,CancelRetrievalOutput,CreateCachediSCSIVolumeOutput,CreateNFSFileShareOutput,CreateSnapshotFromVolumeRecoveryPointOutput,CreateSnapshotOutput,CreateStorediSCSIVolumeOutput,CreateTapeWithBarcodeOutput,CreateTapesOutput,DeleteBandwidthRateLimitOutput,DeleteChapCredentialsOutput,DeleteFileShareOutput,DeleteGatewayOutput,DeleteSnapshotScheduleOutput,DeleteTapeArchiveOutput,DeleteTapeOutput,DeleteVolumeOutput,DescribeBandwidthRateLimitOutput,DescribeCacheOutput,DescribeCachediSCSIVolumesOutput,DescribeChapCredentialsOutput,DescribeGatewayInformationOutput,DescribeMaintenanceStartTimeOutput,DescribeNFSFileSharesOutput,DescribeSnapshotScheduleOutput,DescribeStorediSCSIVolumesOutput,DescribeTapeArchivesOutput,DescribeTapeRecoveryPointsOutput,DescribeTapesOutput,DescribeUploadBufferOutput,DescribeVTLDevicesOutput,DescribeWorkingStorageOutput,DisableGatewayOutput,ListFileSharesOutput,ListGatewaysOutput,ListLocalDisksOutput,ListTagsForResourceOutput,ListTapesOutput,ListVolumeInitiatorsOutput,ListVolumeRecoveryPointsOutput,ListVolumesOutput,RemoveTagsFromResourceOutput,ResetCacheOutput,RetrieveTapeArchiveOutput,RetrieveTapeRecoveryPointOutput,SetLocalConsolePasswordOutput,ShutdownGatewayOutput,StartGatewayOutput,UpdateBandwidthRateLimitOutput,UpdateChapCredentialsOutput,UpdateGatewayInformationOutput,UpdateGatewaySoftwareNowOutput,UpdateMaintenanceStartTimeOutput,UpdateNFSFileShareOutput,UpdateSnapshotScheduleOutput,UpdateVTLDeviceTypeOutput

## Records

* [CachediSCSIVolume](#CachediSCSIVolume)
* [ChapInfo](#ChapInfo)
* [DeviceiSCSIAttributes](#DeviceiSCSIAttributes)
* [Disk](#Disk)
* [FileShareInfo](#FileShareInfo)
* [GatewayInfo](#GatewayInfo)
* [NFSFileShareDefaults](#NFSFileShareDefaults)
* [NFSFileShareInfo](#NFSFileShareInfo)
* [NetworkInterface](#NetworkInterface)
* [StorageGatewayError](#StorageGatewayError)
* [StorediSCSIVolume](#StorediSCSIVolume)
* [Tag](#Tag)
* [Tape](#Tape)
* [TapeArchive](#TapeArchive)
* [TapeInfo](#TapeInfo)
* [TapeRecoveryPointInfo](#TapeRecoveryPointInfo)
* [VTLDevice](#VTLDevice)
* [VolumeInfo](#VolumeInfo)
* [VolumeRecoveryPointInfo](#VolumeRecoveryPointInfo)
* [VolumeiSCSIAttributes](#VolumeiSCSIAttributes)


@docs CachediSCSIVolume,ChapInfo,DeviceiSCSIAttributes,Disk,FileShareInfo,GatewayInfo,NFSFileShareDefaults,NFSFileShareInfo,NetworkInterface,StorageGatewayError,StorediSCSIVolume,Tag,Tape,TapeArchive,TapeInfo,TapeRecoveryPointInfo,VTLDevice,VolumeInfo,VolumeRecoveryPointInfo,VolumeiSCSIAttributes

## Unions

* [ErrorCode](#ErrorCode)


@docs ErrorCode

## Exceptions

* [InternalServerError](#InternalServerError)
* [InvalidGatewayRequestException](#InvalidGatewayRequestException)
* [ServiceUnavailableError](#ServiceUnavailableError)


@docs InternalServerError,InvalidGatewayRequestException,ServiceUnavailableError

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "storagegateway"
        "2013-06-30"
        "1.1"
        "AWSSTORAGEGATEWAY_20130630."
        "storagegateway.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Activates the gateway you previously deployed on your host. For more information, see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/GettingStartedActivateGateway-common.html"> Activate the AWS Storage Gateway</a>. In the activation process, you specify information such as the you want to use for storing snapshots, the time zone for scheduled snapshots the gateway snapshot schedule window, an activation key, and a name for your gateway. The activation process also associates your gateway with your account; for more information, see <a>UpdateGatewayInformation</a>.</p> <note> <p>You must turn on the gateway VM before you can activate your gateway.</p> </note>

__Required Parameters__

* `activationKey` __:__ `String`
* `gatewayName` __:__ `String`
* `gatewayTimezone` __:__ `String`
* `gatewayRegion` __:__ `String`


-}
activateGateway :
    String
    -> String
    -> String
    -> String
    -> (ActivateGatewayOptions -> ActivateGatewayOptions)
    -> AWS.Http.UnsignedRequest ActivateGatewayOutput
activateGateway activationKey gatewayName gatewayTimezone gatewayRegion setOptions =
  let
    options = setOptions (ActivateGatewayOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ActivateGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        activateGatewayOutputDecoder


{-| Options for a activateGateway request
-}
type alias ActivateGatewayOptions =
    { gatewayType : Maybe String
    , tapeDriveType : Maybe String
    , mediumChangerType : Maybe String
    }



{-| <p>Configures one or more gateway local disks as cache for a cached-volume gateway. This operation is supported only for the gateway-cached volume architecture (see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html">Storage Gateway Concepts</a>).</p> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add cache, and one or more disk IDs that you want to configure as cache.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `diskIds` __:__ `(List String)`


-}
addCache :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest AddCacheOutput
addCache gatewayARN diskIds =
    AWS.Http.unsignedRequest
        "AddCache"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addCacheOutputDecoder



{-| <p>Adds one or more tags to the specified resource. You use tags to add metadata to resources, which you can use to categorize these resources. For example, you can categorize resources by purpose, owner, environment, or team. Each tag consists of a key and a value, which you define. You can add tags to the following AWS Storage Gateway resources:</p> <ul> <li> <p>Storage gateways of all types</p> </li> </ul> <ul> <li> <p>Storage Volumes</p> </li> </ul> <ul> <li> <p>Virtual Tapes</p> </li> </ul> <p>You can create a maximum of 10 tags for each resource. Virtual tapes and storage volumes that are recovered to a new gateway maintain their tags.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTagsToResource :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest AddTagsToResourceOutput
addTagsToResource resourceARN tags =
    AWS.Http.unsignedRequest
        "AddTagsToResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsToResourceOutputDecoder



{-| <p>Configures one or more gateway local disks as upload buffer for a specified gateway. This operation is supported for both the gateway-stored and gateway-cached volume architectures.</p> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add upload buffer, and one or more disk IDs that you want to configure as upload buffer.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `diskIds` __:__ `(List String)`


-}
addUploadBuffer :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest AddUploadBufferOutput
addUploadBuffer gatewayARN diskIds =
    AWS.Http.unsignedRequest
        "AddUploadBuffer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addUploadBufferOutputDecoder



{-| <p>Configures one or more gateway local disks as working storage for a gateway. This operation is supported only for the gateway-stored volume architecture. This operation is deprecated in cached-volumes API version 20120630. Use <a>AddUploadBuffer</a> instead.</p> <note> <p>Working storage is also referred to as upload buffer. You can also use the <a>AddUploadBuffer</a> operation to add upload buffer to a stored-volume gateway.</p> </note> <p>In the request, you specify the gateway Amazon Resource Name (ARN) to which you want to add working storage, and one or more disk IDs that you want to configure as working storage.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `diskIds` __:__ `(List String)`


-}
addWorkingStorage :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest AddWorkingStorageOutput
addWorkingStorage gatewayARN diskIds =
    AWS.Http.unsignedRequest
        "AddWorkingStorage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addWorkingStorageOutputDecoder



{-| <p>Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `tapeARN` __:__ `String`


-}
cancelArchival :
    String
    -> String
    -> AWS.Http.UnsignedRequest CancelArchivalOutput
cancelArchival gatewayARN tapeARN =
    AWS.Http.unsignedRequest
        "CancelArchival"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelArchivalOutputDecoder



{-| <p>Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated. The virtual tape is returned to the VTS.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `tapeARN` __:__ `String`


-}
cancelRetrieval :
    String
    -> String
    -> AWS.Http.UnsignedRequest CancelRetrievalOutput
cancelRetrieval gatewayARN tapeARN =
    AWS.Http.unsignedRequest
        "CancelRetrieval"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelRetrievalOutputDecoder



{-| <p>Creates a cached volume on a specified cached gateway. This operation is supported only for the gateway-cached volume architecture.</p> <note> <p>Cache storage must be allocated to the gateway before you can create a cached volume. Use the <a>AddCache</a> operation to add cache storage to a gateway. </p> </note> <p>In the request, you must specify the gateway, size of the volume in bytes, the iSCSI target name, an IP address on which to expose the target, and a unique client token. In response, AWS Storage Gateway creates the volume and returns information about it. This information includes the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.</p> <p>Optionally, you can provide the ARN for an existing volume as the <code>SourceVolumeARN</code> for this cached volume, which creates an exact copy of the existing volume’s latest recovery point. The <code>VolumeSizeInBytes</code> value must be equal to or larger than the size of the copied volume, in bytes.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `volumeSizeInBytes` __:__ `Int`
* `targetName` __:__ `String`
* `networkInterfaceId` __:__ `String`
* `clientToken` __:__ `String`


-}
createCachediSCSIVolume :
    String
    -> Int
    -> String
    -> String
    -> String
    -> (CreateCachediSCSIVolumeOptions -> CreateCachediSCSIVolumeOptions)
    -> AWS.Http.UnsignedRequest CreateCachediSCSIVolumeOutput
createCachediSCSIVolume gatewayARN volumeSizeInBytes targetName networkInterfaceId clientToken setOptions =
  let
    options = setOptions (CreateCachediSCSIVolumeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCachediSCSIVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCachediSCSIVolumeOutputDecoder


{-| Options for a createCachediSCSIVolume request
-}
type alias CreateCachediSCSIVolumeOptions =
    { snapshotId : Maybe String
    , sourceVolumeARN : Maybe String
    }



{-| <p>Creates a file share on an existing file gateway. In Storage Gateway, a file share is a file system mount point backed by Amazon S3 cloud storage. Storage Gateway exposes file shares using a Network File System (NFS) interface.</p>

__Required Parameters__

* `clientToken` __:__ `String`
* `gatewayARN` __:__ `String`
* `role` __:__ `String`
* `locationARN` __:__ `String`


-}
createNFSFileShare :
    String
    -> String
    -> String
    -> String
    -> (CreateNFSFileShareOptions -> CreateNFSFileShareOptions)
    -> AWS.Http.UnsignedRequest CreateNFSFileShareOutput
createNFSFileShare clientToken gatewayARN role locationARN setOptions =
  let
    options = setOptions (CreateNFSFileShareOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateNFSFileShare"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createNFSFileShareOutputDecoder


{-| Options for a createNFSFileShare request
-}
type alias CreateNFSFileShareOptions =
    { nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , defaultStorageClass : Maybe String
    }



{-| <p>Initiates a snapshot of a volume.</p> <p>AWS Storage Gateway provides the ability to back up point-in-time snapshots of your data to Amazon Simple Storage (S3) for durable off-site recovery, as well as import the data to an Amazon Elastic Block Store (EBS) volume in Amazon Elastic Compute Cloud (EC2). You can take snapshots of your gateway volume on a scheduled or ad-hoc basis. This API enables you to take ad-hoc snapshot. For more information, see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html">Working With Snapshots in the AWS Storage Gateway Console</a>.</p> <p>In the CreateSnapshot request you identify the volume by providing its Amazon Resource Name (ARN). You must also provide description for the snapshot. When AWS Storage Gateway takes the snapshot of specified volume, the snapshot and description appears in the AWS Storage Gateway Console. In response, AWS Storage Gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information, see DescribeSnapshots or DeleteSnapshot in the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Operations.html">EC2 API reference</a>.</p> </note> <important> <p>Volume and snapshot IDs are changing to a longer length ID format. For more information, see the important note on the <a href="http://docs.aws.amazon.com/storagegateway/latest/APIReference/Welcome.html">Welcome</a> page.</p> </important>

__Required Parameters__

* `volumeARN` __:__ `String`
* `snapshotDescription` __:__ `String`


-}
createSnapshot :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateSnapshotOutput
createSnapshot volumeARN snapshotDescription =
    AWS.Http.unsignedRequest
        "CreateSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSnapshotOutputDecoder



{-| <p>Initiates a snapshot of a gateway from a volume recovery point. This operation is supported only for the gateway-cached volume architecture.</p> <p>A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To get a list of volume recovery point for gateway-cached volumes, use <a>ListVolumeRecoveryPoints</a>.</p> <p>In the <code>CreateSnapshotFromVolumeRecoveryPoint</code> request, you identify the volume by providing its Amazon Resource Name (ARN). You must also provide a description for the snapshot. When AWS Storage Gateway takes a snapshot of the specified volume, the snapshot and its description appear in the AWS Storage Gateway console. In response, AWS Storage Gateway returns you a snapshot ID. You can use this snapshot ID to check the snapshot progress or later use it when you want to create a volume from a snapshot.</p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. For more information, in <i>Amazon Elastic Compute Cloud API Reference</i>.</p> </note>

__Required Parameters__

* `volumeARN` __:__ `String`
* `snapshotDescription` __:__ `String`


-}
createSnapshotFromVolumeRecoveryPoint :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateSnapshotFromVolumeRecoveryPointOutput
createSnapshotFromVolumeRecoveryPoint volumeARN snapshotDescription =
    AWS.Http.unsignedRequest
        "CreateSnapshotFromVolumeRecoveryPoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSnapshotFromVolumeRecoveryPointOutputDecoder



{-| <p>Creates a volume on a specified gateway. This operation is supported only for the gateway-stored volume architecture.</p> <p>The size of the volume to create is inferred from the disk size. You can choose to preserve existing data on the disk, create volume from an existing snapshot, or create an empty volume. If you choose to create an empty gateway volume, then any existing data on the disk is erased.</p> <p>In the request you must specify the gateway and the disk information on which you are creating the volume. In response, AWS Storage Gateway creates the volume and returns volume information such as the volume Amazon Resource Name (ARN), its size, and the iSCSI target ARN that initiators can use to connect to the volume target.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `diskId` __:__ `String`
* `preserveExistingData` __:__ `Bool`
* `targetName` __:__ `String`
* `networkInterfaceId` __:__ `String`


-}
createStorediSCSIVolume :
    String
    -> String
    -> Bool
    -> String
    -> String
    -> (CreateStorediSCSIVolumeOptions -> CreateStorediSCSIVolumeOptions)
    -> AWS.Http.UnsignedRequest CreateStorediSCSIVolumeOutput
createStorediSCSIVolume gatewayARN diskId preserveExistingData targetName networkInterfaceId setOptions =
  let
    options = setOptions (CreateStorediSCSIVolumeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateStorediSCSIVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createStorediSCSIVolumeOutputDecoder


{-| Options for a createStorediSCSIVolume request
-}
type alias CreateStorediSCSIVolumeOptions =
    { snapshotId : Maybe String
    }



{-| <p>Creates a virtual tape by using your own barcode. You write data to the virtual tape and then archive the tape.</p> <note> <p>Cache storage must be allocated to the gateway before you can create a virtual tape. Use the <a>AddCache</a> operation to add cache storage to a gateway.</p> </note>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `tapeSizeInBytes` __:__ `Int`
* `tapeBarcode` __:__ `String`


-}
createTapeWithBarcode :
    String
    -> Int
    -> String
    -> AWS.Http.UnsignedRequest CreateTapeWithBarcodeOutput
createTapeWithBarcode gatewayARN tapeSizeInBytes tapeBarcode =
    AWS.Http.unsignedRequest
        "CreateTapeWithBarcode"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTapeWithBarcodeOutputDecoder



{-| <p>Creates one or more virtual tapes. You write data to the virtual tapes and then archive the tapes.</p> <note> <p>Cache storage must be allocated to the gateway before you can create virtual tapes. Use the <a>AddCache</a> operation to add cache storage to a gateway. </p> </note>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `tapeSizeInBytes` __:__ `Int`
* `clientToken` __:__ `String`
* `numTapesToCreate` __:__ `Int`
* `tapeBarcodePrefix` __:__ `String`


-}
createTapes :
    String
    -> Int
    -> String
    -> Int
    -> String
    -> AWS.Http.UnsignedRequest CreateTapesOutput
createTapes gatewayARN tapeSizeInBytes clientToken numTapesToCreate tapeBarcodePrefix =
    AWS.Http.unsignedRequest
        "CreateTapes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTapesOutputDecoder



{-| <p>Deletes the bandwidth rate limits of a gateway. You can delete either the upload and download bandwidth rate limit, or you can delete both. If you delete only one of the limits, the other limit remains unchanged. To specify which gateway to work with, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `bandwidthType` __:__ `String`


-}
deleteBandwidthRateLimit :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteBandwidthRateLimitOutput
deleteBandwidthRateLimit gatewayARN bandwidthType =
    AWS.Http.unsignedRequest
        "DeleteBandwidthRateLimit"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteBandwidthRateLimitOutputDecoder



{-| <p>Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair.</p>

__Required Parameters__

* `targetARN` __:__ `String`
* `initiatorName` __:__ `String`


-}
deleteChapCredentials :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteChapCredentialsOutput
deleteChapCredentials targetARN initiatorName =
    AWS.Http.unsignedRequest
        "DeleteChapCredentials"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteChapCredentialsOutputDecoder



{-| <p>Deletes a file share from a file gateway.</p>

__Required Parameters__

* `fileShareARN` __:__ `String`


-}
deleteFileShare :
    String
    -> AWS.Http.UnsignedRequest DeleteFileShareOutput
deleteFileShare fileShareARN =
    AWS.Http.unsignedRequest
        "DeleteFileShare"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteFileShareOutputDecoder



{-| <p>Deletes a gateway. To specify which gateway to delete, use the Amazon Resource Name (ARN) of the gateway in your request. The operation deletes the gateway; however, it does not delete the gateway virtual machine (VM) from your host computer.</p> <p>After you delete a gateway, you cannot reactivate it. Completed snapshots of the gateway volumes are not deleted upon deleting the gateway, however, pending snapshots will not complete. After you delete a gateway, your next step is to remove it from your environment.</p> <important> <p>You no longer pay software charges after the gateway is deleted; however, your existing Amazon EBS snapshots persist and you will continue to be billed for these snapshots. You can choose to remove all remaining Amazon EBS snapshots by canceling your Amazon EC2 subscription.  If you prefer not to cancel your Amazon EC2 subscription, you can delete your snapshots using the Amazon EC2 console. For more information, see the <a href="http://aws.amazon.com/storagegateway"> AWS Storage Gateway Detail Page</a>. </p> </important>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
deleteGateway :
    String
    -> AWS.Http.UnsignedRequest DeleteGatewayOutput
deleteGateway gatewayARN =
    AWS.Http.unsignedRequest
        "DeleteGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteGatewayOutputDecoder



{-| <p>Deletes a snapshot of a volume.</p> <p>You can take snapshots of your gateway volumes on a scheduled or ad hoc basis. This API action enables you to delete a snapshot schedule for a volume. For more information, see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/WorkingWithSnapshots.html">Working with Snapshots</a>. In the <code>DeleteSnapshotSchedule</code> request, you identify the volume by providing its Amazon Resource Name (ARN). </p> <note> <p>To list or delete a snapshot, you must use the Amazon EC2 API. in <i>Amazon Elastic Compute Cloud API Reference</i>.</p> </note>

__Required Parameters__

* `volumeARN` __:__ `String`


-}
deleteSnapshotSchedule :
    String
    -> AWS.Http.UnsignedRequest DeleteSnapshotScheduleOutput
deleteSnapshotSchedule volumeARN =
    AWS.Http.unsignedRequest
        "DeleteSnapshotSchedule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSnapshotScheduleOutputDecoder



{-| <p>Deletes the specified virtual tape.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `tapeARN` __:__ `String`


-}
deleteTape :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteTapeOutput
deleteTape gatewayARN tapeARN =
    AWS.Http.unsignedRequest
        "DeleteTape"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTapeOutputDecoder



{-| <p>Deletes the specified virtual tape from the virtual tape shelf (VTS).</p>

__Required Parameters__

* `tapeARN` __:__ `String`


-}
deleteTapeArchive :
    String
    -> AWS.Http.UnsignedRequest DeleteTapeArchiveOutput
deleteTapeArchive tapeARN =
    AWS.Http.unsignedRequest
        "DeleteTapeArchive"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTapeArchiveOutputDecoder



{-| <p>Deletes the specified gateway volume that you previously created using the <a>CreateCachediSCSIVolume</a> or <a>CreateStorediSCSIVolume</a> API. For gateway-stored volumes, the local disk that was configured as the storage volume is not deleted. You can reuse the local disk to create another storage volume. </p> <p>Before you delete a gateway volume, make sure there are no iSCSI connections to the volume you are deleting. You should also make sure there is no snapshot in progress. You can use the Amazon Elastic Compute Cloud (Amazon EC2) API to query snapshots on the volume you are deleting and check the snapshot status. For more information, go to <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeSnapshots.html">DescribeSnapshots</a> in the <i>Amazon Elastic Compute Cloud API Reference</i>.</p> <p>In the request, you must provide the Amazon Resource Name (ARN) of the storage volume you want to delete.</p>

__Required Parameters__

* `volumeARN` __:__ `String`


-}
deleteVolume :
    String
    -> AWS.Http.UnsignedRequest DeleteVolumeOutput
deleteVolume volumeARN =
    AWS.Http.unsignedRequest
        "DeleteVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteVolumeOutputDecoder



{-| <p>Returns the bandwidth rate limits of a gateway. By default, these limits are not set, which means no bandwidth rate limiting is in effect.</p> <p>This operation only returns a value for a bandwidth rate limit only if the limit is set. If no limits are set for the gateway, then this operation returns only the gateway ARN in the response body. To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeBandwidthRateLimit :
    String
    -> AWS.Http.UnsignedRequest DescribeBandwidthRateLimitOutput
describeBandwidthRateLimit gatewayARN =
    AWS.Http.unsignedRequest
        "DescribeBandwidthRateLimit"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeBandwidthRateLimitOutputDecoder



{-| <p>Returns information about the cache of a gateway. This operation is supported only for the gateway-cached volume architecture.</p> <p>The response includes disk IDs that are configured as cache, and it includes the amount of cache allocated and used.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeCache :
    String
    -> AWS.Http.UnsignedRequest DescribeCacheOutput
describeCache gatewayARN =
    AWS.Http.unsignedRequest
        "DescribeCache"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCacheOutputDecoder



{-| <p>Returns a description of the gateway volumes specified in the request. This operation is supported only for the gateway-cached volume architecture.</p> <p>The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume Amazon Resource Name (ARN).</p>

__Required Parameters__

* `volumeARNs` __:__ `(List String)`


-}
describeCachediSCSIVolumes :
    (List String)
    -> AWS.Http.UnsignedRequest DescribeCachediSCSIVolumesOutput
describeCachediSCSIVolumes volumeARNs =
    AWS.Http.unsignedRequest
        "DescribeCachediSCSIVolumes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCachediSCSIVolumesOutputDecoder



{-| <p>Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair.</p>

__Required Parameters__

* `targetARN` __:__ `String`


-}
describeChapCredentials :
    String
    -> AWS.Http.UnsignedRequest DescribeChapCredentialsOutput
describeChapCredentials targetARN =
    AWS.Http.unsignedRequest
        "DescribeChapCredentials"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeChapCredentialsOutputDecoder



{-| <p>Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not). To specify which gateway to describe, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeGatewayInformation :
    String
    -> AWS.Http.UnsignedRequest DescribeGatewayInformationOutput
describeGatewayInformation gatewayARN =
    AWS.Http.unsignedRequest
        "DescribeGatewayInformation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeGatewayInformationOutputDecoder



{-| <p>Returns your gateway's weekly maintenance start time including the day and time of the week. Note that values are in terms of the gateway's time zone.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeMaintenanceStartTime :
    String
    -> AWS.Http.UnsignedRequest DescribeMaintenanceStartTimeOutput
describeMaintenanceStartTime gatewayARN =
    AWS.Http.unsignedRequest
        "DescribeMaintenanceStartTime"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMaintenanceStartTimeOutputDecoder



{-| <p>Gets a description for one or more file shares from a file gateway.</p>

__Required Parameters__

* `fileShareARNList` __:__ `(List String)`


-}
describeNFSFileShares :
    (List String)
    -> AWS.Http.UnsignedRequest DescribeNFSFileSharesOutput
describeNFSFileShares fileShareARNList =
    AWS.Http.unsignedRequest
        "DescribeNFSFileShares"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNFSFileSharesOutputDecoder



{-| <p>Describes the snapshot schedule for the specified gateway volume. The snapshot schedule information includes intervals at which snapshots are automatically initiated on the volume.</p>

__Required Parameters__

* `volumeARN` __:__ `String`


-}
describeSnapshotSchedule :
    String
    -> AWS.Http.UnsignedRequest DescribeSnapshotScheduleOutput
describeSnapshotSchedule volumeARN =
    AWS.Http.unsignedRequest
        "DescribeSnapshotSchedule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSnapshotScheduleOutputDecoder



{-| <p>Returns the description of the gateway volumes specified in the request. The list of gateway volumes in the request must be from one gateway. In the response Amazon Storage Gateway returns volume information sorted by volume ARNs.</p>

__Required Parameters__

* `volumeARNs` __:__ `(List String)`


-}
describeStorediSCSIVolumes :
    (List String)
    -> AWS.Http.UnsignedRequest DescribeStorediSCSIVolumesOutput
describeStorediSCSIVolumes volumeARNs =
    AWS.Http.unsignedRequest
        "DescribeStorediSCSIVolumes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStorediSCSIVolumesOutputDecoder



{-| <p>Returns a description of specified virtual tapes in the virtual tape shelf (VTS).</p> <p>If a specific <code>TapeARN</code> is not specified, AWS Storage Gateway returns a description of all virtual tapes found in the VTS associated with your account.</p>

__Required Parameters__



-}
describeTapeArchives :
    (DescribeTapeArchivesOptions -> DescribeTapeArchivesOptions)
    -> AWS.Http.UnsignedRequest DescribeTapeArchivesOutput
describeTapeArchives setOptions =
  let
    options = setOptions (DescribeTapeArchivesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTapeArchives"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTapeArchivesOutputDecoder


{-| Options for a describeTapeArchives request
-}
type alias DescribeTapeArchivesOptions =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns a list of virtual tape recovery points that are available for the specified gateway-VTL.</p> <p>A recovery point is a point-in-time view of a virtual tape at which all the data on the virtual tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeTapeRecoveryPoints :
    String
    -> (DescribeTapeRecoveryPointsOptions -> DescribeTapeRecoveryPointsOptions)
    -> AWS.Http.UnsignedRequest DescribeTapeRecoveryPointsOutput
describeTapeRecoveryPoints gatewayARN setOptions =
  let
    options = setOptions (DescribeTapeRecoveryPointsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTapeRecoveryPoints"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTapeRecoveryPointsOutputDecoder


{-| Options for a describeTapeRecoveryPoints request
-}
type alias DescribeTapeRecoveryPointsOptions =
    { marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes. If a <code>TapeARN</code> is not specified, returns a description of all virtual tapes associated with the specified gateway.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeTapes :
    String
    -> (DescribeTapesOptions -> DescribeTapesOptions)
    -> AWS.Http.UnsignedRequest DescribeTapesOutput
describeTapes gatewayARN setOptions =
  let
    options = setOptions (DescribeTapesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTapes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTapesOutputDecoder


{-| Options for a describeTapes request
-}
type alias DescribeTapesOptions =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns information about the upload buffer of a gateway. This operation is supported for both the gateway-stored and gateway-cached volume architectures.</p> <p>The response includes disk IDs that are configured as upload buffer space, and it includes the amount of upload buffer space allocated and used.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeUploadBuffer :
    String
    -> AWS.Http.UnsignedRequest DescribeUploadBufferOutput
describeUploadBuffer gatewayARN =
    AWS.Http.unsignedRequest
        "DescribeUploadBuffer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeUploadBufferOutputDecoder



{-| <p>Returns a description of virtual tape library (VTL) devices for the specified gateway. In the response, AWS Storage Gateway returns VTL device information.</p> <p>The list of VTL devices must be from one gateway.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeVTLDevices :
    String
    -> (DescribeVTLDevicesOptions -> DescribeVTLDevicesOptions)
    -> AWS.Http.UnsignedRequest DescribeVTLDevicesOutput
describeVTLDevices gatewayARN setOptions =
  let
    options = setOptions (DescribeVTLDevicesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVTLDevices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVTLDevicesOutputDecoder


{-| Options for a describeVTLDevices request
-}
type alias DescribeVTLDevicesOptions =
    { vTLDeviceARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns information about the working storage of a gateway. This operation is supported only for the gateway-stored volume architecture. This operation is deprecated in cached-volumes API version (20120630). Use DescribeUploadBuffer instead.</p> <note> <p>Working storage is also referred to as upload buffer. You can also use the DescribeUploadBuffer operation to add upload buffer to a stored-volume gateway.</p> </note> <p>The response includes disk IDs that are configured as working storage, and it includes the amount of working storage allocated and used.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
describeWorkingStorage :
    String
    -> AWS.Http.UnsignedRequest DescribeWorkingStorageOutput
describeWorkingStorage gatewayARN =
    AWS.Http.unsignedRequest
        "DescribeWorkingStorage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeWorkingStorageOutputDecoder



{-| <p>Disables a gateway when the gateway is no longer functioning. For example, if your gateway VM is damaged, you can disable the gateway so you can recover virtual tapes.</p> <p>Use this operation for a gateway-VTL that is not reachable or not functioning.</p> <important> <p>Once a gateway is disabled it cannot be enabled.</p> </important>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
disableGateway :
    String
    -> AWS.Http.UnsignedRequest DisableGatewayOutput
disableGateway gatewayARN =
    AWS.Http.unsignedRequest
        "DisableGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableGatewayOutputDecoder



{-| <p>Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account. </p>

__Required Parameters__



-}
listFileShares :
    (ListFileSharesOptions -> ListFileSharesOptions)
    -> AWS.Http.UnsignedRequest ListFileSharesOutput
listFileShares setOptions =
  let
    options = setOptions (ListFileSharesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListFileShares"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listFileSharesOutputDecoder


{-| Options for a listFileShares request
-}
type alias ListFileSharesOptions =
    { gatewayARN : Maybe String
    , limit : Maybe Int
    , marker : Maybe String
    }



{-| <p>Lists gateways owned by an AWS account in a region specified in the request. The returned list is ordered by gateway Amazon Resource Name (ARN).</p> <p>By default, the operation returns a maximum of 100 gateways. This operation supports pagination that allows you to optionally reduce the number of gateways returned in a response.</p> <p>If you have more gateways than are returned in a response (that is, the response returns only a truncated list of your gateways), the response contains a marker that you can specify in your next request to fetch the next page of gateways.</p>

__Required Parameters__



-}
listGateways :
    (ListGatewaysOptions -> ListGatewaysOptions)
    -> AWS.Http.UnsignedRequest ListGatewaysOutput
listGateways setOptions =
  let
    options = setOptions (ListGatewaysOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListGateways"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listGatewaysOutputDecoder


{-| Options for a listGateways request
-}
type alias ListGatewaysOptions =
    { marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Returns a list of the gateway's local disks. To specify which gateway to describe, you use the Amazon Resource Name (ARN) of the gateway in the body of the request.</p> <p>The request returns a list of all disks, specifying which are configured as working storage, cache storage, or stored volume or not configured at all. The response includes a <code>DiskStatus</code> field. This field can have a value of present (the disk is available to use), missing (the disk is no longer connected to the gateway), or mismatch (the disk node is occupied by a disk that has incorrect metadata or the disk content is corrupted). </p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
listLocalDisks :
    String
    -> AWS.Http.UnsignedRequest ListLocalDisksOutput
listLocalDisks gatewayARN =
    AWS.Http.unsignedRequest
        "ListLocalDisks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listLocalDisksOutputDecoder



{-| <p>Lists the tags that have been added to the specified resource.</p>

__Required Parameters__

* `resourceARN` __:__ `String`


-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Http.UnsignedRequest ListTagsForResourceOutput
listTagsForResource resourceARN setOptions =
  let
    options = setOptions (ListTagsForResourceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForResourceOutputDecoder


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS). You specify the tapes to list by specifying one or more tape Amazon Resource Names (ARNs). If you don't specify a tape ARN, the operation lists all virtual tapes in both your VTL and VTS.</p> <p>This operation supports pagination. By default, the operation returns a maximum of up to 100 tapes. You can optionally specify the <code>Limit</code> parameter in the body to limit the number of tapes in the response. If the number of tapes returned in the response is truncated, the response includes a <code>Marker</code> element that you can use in your subsequent request to retrieve the next set of tapes.</p>

__Required Parameters__



-}
listTapes :
    (ListTapesOptions -> ListTapesOptions)
    -> AWS.Http.UnsignedRequest ListTapesOutput
listTapes setOptions =
  let
    options = setOptions (ListTapesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTapes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTapesOutputDecoder


{-| Options for a listTapes request
-}
type alias ListTapesOptions =
    { tapeARNs : Maybe (List String)
    , marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists iSCSI initiators that are connected to a volume. You can use this operation to determine whether a volume is being used or not.</p>

__Required Parameters__

* `volumeARN` __:__ `String`


-}
listVolumeInitiators :
    String
    -> AWS.Http.UnsignedRequest ListVolumeInitiatorsOutput
listVolumeInitiators volumeARN =
    AWS.Http.unsignedRequest
        "ListVolumeInitiators"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listVolumeInitiatorsOutputDecoder



{-| <p>Lists the recovery points for a specified gateway. This operation is supported only for the gateway-cached volume architecture.</p> <p>Each gateway-cached volume has one recovery point. A volume recovery point is a point in time at which all data of the volume is consistent and from which you can create a snapshot. To create a snapshot from a volume recovery point use the <a>CreateSnapshotFromVolumeRecoveryPoint</a> operation.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
listVolumeRecoveryPoints :
    String
    -> AWS.Http.UnsignedRequest ListVolumeRecoveryPointsOutput
listVolumeRecoveryPoints gatewayARN =
    AWS.Http.unsignedRequest
        "ListVolumeRecoveryPoints"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listVolumeRecoveryPointsOutputDecoder



{-| <p>Lists the iSCSI stored volumes of a gateway. Results are sorted by volume ARN. The response includes only the volume ARNs. If you want additional volume information, use the <a>DescribeStorediSCSIVolumes</a> or the <a>DescribeCachediSCSIVolumes</a> API.</p> <p>The operation supports pagination. By default, the operation returns a maximum of up to 100 volumes. You can optionally specify the <code>Limit</code> field in the body to limit the number of volumes in the response. If the number of volumes returned in the response is truncated, the response includes a Marker field. You can use this Marker value in your subsequent request to retrieve the next set of volumes.</p>

__Required Parameters__



-}
listVolumes :
    (ListVolumesOptions -> ListVolumesOptions)
    -> AWS.Http.UnsignedRequest ListVolumesOutput
listVolumes setOptions =
  let
    options = setOptions (ListVolumesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListVolumes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listVolumesOutputDecoder


{-| Options for a listVolumes request
-}
type alias ListVolumesOptions =
    { gatewayARN : Maybe String
    , marker : Maybe String
    , limit : Maybe Int
    }



{-| <p>Removes one or more tags from the specified resource.</p>

__Required Parameters__

* `resourceARN` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTagsFromResource :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest RemoveTagsFromResourceOutput
removeTagsFromResource resourceARN tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTagsFromResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsFromResourceOutputDecoder



{-| <p>Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage. If your cache disk encounters a error, the gateway prevents read and write operations on virtual tapes in the gateway. For example, an error can occur when a disk is corrupted or removed from the gateway. When a cache is reset, the gateway loses its cache storage. At this point you can reconfigure the disks as cache disks.</p> <important> <p>If the cache disk you are resetting contains data that has not been uploaded to Amazon S3 yet, that data can be lost. After you reset cache disks, there will be no configured cache disks left in the gateway, so you must configure at least one new cache disk for your gateway to function properly.</p> </important>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
resetCache :
    String
    -> AWS.Http.UnsignedRequest ResetCacheOutput
resetCache gatewayARN =
    AWS.Http.unsignedRequest
        "ResetCache"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resetCacheOutputDecoder



{-| <p>Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a gateway-VTL. Virtual tapes archived in the VTS are not associated with any gateway. However after a tape is retrieved, it is associated with a gateway, even though it is also listed in the VTS.</p> <p>Once a tape is successfully retrieved to a gateway, it cannot be retrieved again to another gateway. You must archive the tape again before you can retrieve it to another gateway.</p>

__Required Parameters__

* `tapeARN` __:__ `String`
* `gatewayARN` __:__ `String`


-}
retrieveTapeArchive :
    String
    -> String
    -> AWS.Http.UnsignedRequest RetrieveTapeArchiveOutput
retrieveTapeArchive tapeARN gatewayARN =
    AWS.Http.unsignedRequest
        "RetrieveTapeArchive"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        retrieveTapeArchiveOutputDecoder



{-| <p>Retrieves the recovery point for the specified virtual tape.</p> <p>A recovery point is a point in time view of a virtual tape at which all the data on the tape is consistent. If your gateway crashes, virtual tapes that have recovery points can be recovered to a new gateway.</p> <note> <p>The virtual tape can be retrieved to only one gateway. The retrieved tape is read-only. The virtual tape can be retrieved to only a gateway-VTL. There is no charge for retrieving recovery points.</p> </note>

__Required Parameters__

* `tapeARN` __:__ `String`
* `gatewayARN` __:__ `String`


-}
retrieveTapeRecoveryPoint :
    String
    -> String
    -> AWS.Http.UnsignedRequest RetrieveTapeRecoveryPointOutput
retrieveTapeRecoveryPoint tapeARN gatewayARN =
    AWS.Http.unsignedRequest
        "RetrieveTapeRecoveryPoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        retrieveTapeRecoveryPointOutputDecoder



{-| <p>Sets the password for your VM local console. When you log in to the local console for the first time, you log in to the VM with the default credentials. We recommend that you set a new password. You don't need to know the default password to set a new password.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `localConsolePassword` __:__ `String`


-}
setLocalConsolePassword :
    String
    -> String
    -> AWS.Http.UnsignedRequest SetLocalConsolePasswordOutput
setLocalConsolePassword gatewayARN localConsolePassword =
    AWS.Http.unsignedRequest
        "SetLocalConsolePassword"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setLocalConsolePasswordOutputDecoder



{-| <p>Shuts down a gateway. To specify which gateway to shut down, use the Amazon Resource Name (ARN) of the gateway in the body of your request.</p> <p>The operation shuts down the gateway service component running in the storage gateway's virtual machine (VM) and not the VM.</p> <note> <p>If you want to shut down the VM, it is recommended that you first shut down the gateway component in the VM to avoid unpredictable conditions.</p> </note> <p>After the gateway is shutdown, you cannot call any other API except <a>StartGateway</a>, <a>DescribeGatewayInformation</a>, and <a>ListGateways</a>. For more information, see <a>ActivateGateway</a>. Your applications cannot read from or write to the gateway's storage volumes, and there are no snapshots taken.</p> <note> <p>When you make a shutdown request, you will get a <code>200 OK</code> success response immediately. However, it might take some time for the gateway to shut down. You can call the <a>DescribeGatewayInformation</a> API to check the status. For more information, see <a>ActivateGateway</a>.</p> </note> <p>If do not intend to use the gateway again, you must delete the gateway (using <a>DeleteGateway</a>) to no longer pay software charges associated with the gateway.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
shutdownGateway :
    String
    -> AWS.Http.UnsignedRequest ShutdownGatewayOutput
shutdownGateway gatewayARN =
    AWS.Http.unsignedRequest
        "ShutdownGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        shutdownGatewayOutputDecoder



{-| <p>Starts a gateway that you previously shut down (see <a>ShutdownGateway</a>). After the gateway starts, you can then make other API calls, your applications can read from or write to the gateway's storage volumes and you will be able to take snapshot backups.</p> <note> <p>When you make a request, you will get a 200 OK success response immediately. However, it might take some time for the gateway to be ready. You should call <a>DescribeGatewayInformation</a> and check the status before making any additional API calls. For more information, see <a>ActivateGateway</a>.</p> </note> <p>To specify which gateway to start, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
startGateway :
    String
    -> AWS.Http.UnsignedRequest StartGatewayOutput
startGateway gatewayARN =
    AWS.Http.unsignedRequest
        "StartGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startGatewayOutputDecoder



{-| <p>Updates the bandwidth rate limits of a gateway. You can update both the upload and download bandwidth rate limit or specify only one of the two. If you don't set a bandwidth rate limit, the existing rate limit remains.</p> <p>By default, a gateway's bandwidth rate limits are not set. If you don't set any limit, the gateway does not have any limitations on its bandwidth usage and could potentially use the maximum available bandwidth.</p> <p>To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
updateBandwidthRateLimit :
    String
    -> (UpdateBandwidthRateLimitOptions -> UpdateBandwidthRateLimitOptions)
    -> AWS.Http.UnsignedRequest UpdateBandwidthRateLimitOutput
updateBandwidthRateLimit gatewayARN setOptions =
  let
    options = setOptions (UpdateBandwidthRateLimitOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateBandwidthRateLimit"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateBandwidthRateLimitOutputDecoder


{-| Options for a updateBandwidthRateLimit request
-}
type alias UpdateBandwidthRateLimitOptions =
    { averageUploadRateLimitInBitsPerSec : Maybe Int
    , averageDownloadRateLimitInBitsPerSec : Maybe Int
    }



{-| <p>Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target. By default, a gateway does not have CHAP enabled; however, for added security, you might use it.</p> <important> <p>When you update CHAP credentials, all existing connections on the target are closed and initiators must reconnect with the new credentials.</p> </important>

__Required Parameters__

* `targetARN` __:__ `String`
* `secretToAuthenticateInitiator` __:__ `String`
* `initiatorName` __:__ `String`


-}
updateChapCredentials :
    String
    -> String
    -> String
    -> (UpdateChapCredentialsOptions -> UpdateChapCredentialsOptions)
    -> AWS.Http.UnsignedRequest UpdateChapCredentialsOutput
updateChapCredentials targetARN secretToAuthenticateInitiator initiatorName setOptions =
  let
    options = setOptions (UpdateChapCredentialsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateChapCredentials"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateChapCredentialsOutputDecoder


{-| Options for a updateChapCredentials request
-}
type alias UpdateChapCredentialsOptions =
    { secretToAuthenticateTarget : Maybe String
    }



{-| <p>Updates a gateway's metadata, which includes the gateway's name and time zone. To specify which gateway to update, use the Amazon Resource Name (ARN) of the gateway in your request.</p> <note> <p>For Gateways activated after September 2, 2015, the gateway's ARN contains the gateway ID rather than the gateway name. However, changing the name of the gateway has no effect on the gateway's ARN.</p> </note>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
updateGatewayInformation :
    String
    -> (UpdateGatewayInformationOptions -> UpdateGatewayInformationOptions)
    -> AWS.Http.UnsignedRequest UpdateGatewayInformationOutput
updateGatewayInformation gatewayARN setOptions =
  let
    options = setOptions (UpdateGatewayInformationOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateGatewayInformation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateGatewayInformationOutputDecoder


{-| Options for a updateGatewayInformation request
-}
type alias UpdateGatewayInformationOptions =
    { gatewayName : Maybe String
    , gatewayTimezone : Maybe String
    }



{-| <p>Updates the gateway virtual machine (VM) software. The request immediately triggers the software update.</p> <note> <p>When you make this request, you get a <code>200 OK</code> success response immediately. However, it might take some time for the update to complete. You can call <a>DescribeGatewayInformation</a> to verify the gateway is in the <code>STATE_RUNNING</code> state.</p> </note> <important> <p>A software update forces a system restart of your gateway. You can minimize the chance of any disruption to your applications by increasing your iSCSI Initiators' timeouts. For more information about increasing iSCSI Initiator timeouts for Windows and Linux, see <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorWindowsClient.html#CustomizeWindowsiSCSISettings">Customizing Your Windows iSCSI Settings</a> and <a href="http://docs.aws.amazon.com/storagegateway/latest/userguide/ConfiguringiSCSIClientInitiatorRedHatClient.html#CustomizeLinuxiSCSISettings">Customizing Your Linux iSCSI Settings</a>, respectively.</p> </important>

__Required Parameters__

* `gatewayARN` __:__ `String`


-}
updateGatewaySoftwareNow :
    String
    -> AWS.Http.UnsignedRequest UpdateGatewaySoftwareNowOutput
updateGatewaySoftwareNow gatewayARN =
    AWS.Http.unsignedRequest
        "UpdateGatewaySoftwareNow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateGatewaySoftwareNowOutputDecoder



{-| <p>Updates a gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone.</p>

__Required Parameters__

* `gatewayARN` __:__ `String`
* `hourOfDay` __:__ `Int`
* `minuteOfHour` __:__ `Int`
* `dayOfWeek` __:__ `Int`


-}
updateMaintenanceStartTime :
    String
    -> Int
    -> Int
    -> Int
    -> AWS.Http.UnsignedRequest UpdateMaintenanceStartTimeOutput
updateMaintenanceStartTime gatewayARN hourOfDay minuteOfHour dayOfWeek =
    AWS.Http.unsignedRequest
        "UpdateMaintenanceStartTime"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateMaintenanceStartTimeOutputDecoder



{-| <p>Updates a file share. </p> <note> <p>To leave a file share field unchanged, set the corresponding input field to null.</p> </note>

__Required Parameters__

* `fileShareARN` __:__ `String`


-}
updateNFSFileShare :
    String
    -> (UpdateNFSFileShareOptions -> UpdateNFSFileShareOptions)
    -> AWS.Http.UnsignedRequest UpdateNFSFileShareOutput
updateNFSFileShare fileShareARN setOptions =
  let
    options = setOptions (UpdateNFSFileShareOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateNFSFileShare"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateNFSFileShareOutputDecoder


{-| Options for a updateNFSFileShare request
-}
type alias UpdateNFSFileShareOptions =
    { kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , defaultStorageClass : Maybe String
    }



{-| <p>Updates a snapshot schedule configured for a gateway volume.</p> <p>The default snapshot schedule for volume is once every 24 hours, starting at the creation time of the volume. You can use this API to change the snapshot schedule configured for the volume.</p> <p>In the request you must identify the gateway volume whose snapshot schedule you want to update, and the schedule information, including when you want the snapshot to begin on a day and the frequency (in hours) of snapshots.</p>

__Required Parameters__

* `volumeARN` __:__ `String`
* `startAt` __:__ `Int`
* `recurrenceInHours` __:__ `Int`


-}
updateSnapshotSchedule :
    String
    -> Int
    -> Int
    -> (UpdateSnapshotScheduleOptions -> UpdateSnapshotScheduleOptions)
    -> AWS.Http.UnsignedRequest UpdateSnapshotScheduleOutput
updateSnapshotSchedule volumeARN startAt recurrenceInHours setOptions =
  let
    options = setOptions (UpdateSnapshotScheduleOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateSnapshotSchedule"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateSnapshotScheduleOutputDecoder


{-| Options for a updateSnapshotSchedule request
-}
type alias UpdateSnapshotScheduleOptions =
    { description : Maybe String
    }



{-| <p>Updates the type of medium changer in a gateway-VTL. When you activate a gateway-VTL, you select a medium changer type for the gateway-VTL. This operation enables you to select a different type of medium changer after a gateway-VTL is activated.</p>

__Required Parameters__

* `vTLDeviceARN` __:__ `String`
* `deviceType` __:__ `String`


-}
updateVTLDeviceType :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateVTLDeviceTypeOutput
updateVTLDeviceType vTLDeviceARN deviceType =
    AWS.Http.unsignedRequest
        "UpdateVTLDeviceType"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateVTLDeviceTypeOutputDecoder




{-| Type of HTTP response from activateGatew
-}
type alias ActivateGatewayOutput =
    { gatewayARN : Maybe String
    }



activateGatewayOutputDecoder : JD.Decoder ActivateGatewayOutput
activateGatewayOutputDecoder =
    JDP.decode ActivateGatewayOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from addCac
-}
type alias AddCacheOutput =
    { gatewayARN : Maybe String
    }



addCacheOutputDecoder : JD.Decoder AddCacheOutput
addCacheOutputDecoder =
    JDP.decode AddCacheOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from addTagsToResour
-}
type alias AddTagsToResourceOutput =
    { resourceARN : Maybe String
    }



addTagsToResourceOutputDecoder : JD.Decoder AddTagsToResourceOutput
addTagsToResourceOutputDecoder =
    JDP.decode AddTagsToResourceOutput
        |> JDP.optional "resourceARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from addUploadBuff
-}
type alias AddUploadBufferOutput =
    { gatewayARN : Maybe String
    }



addUploadBufferOutputDecoder : JD.Decoder AddUploadBufferOutput
addUploadBufferOutputDecoder =
    JDP.decode AddUploadBufferOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from addWorkingStora
-}
type alias AddWorkingStorageOutput =
    { gatewayARN : Maybe String
    }



addWorkingStorageOutputDecoder : JD.Decoder AddWorkingStorageOutput
addWorkingStorageOutputDecoder =
    JDP.decode AddWorkingStorageOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| <p>Describes an iSCSI cached volume.</p>
-}
type alias CachediSCSIVolume =
    { volumeARN : Maybe String
    , volumeId : Maybe String
    , volumeType : Maybe String
    , volumeStatus : Maybe String
    , volumeSizeInBytes : Maybe Int
    , volumeProgress : Maybe Float
    , sourceSnapshotId : Maybe String
    , volumeiSCSIAttributes : Maybe VolumeiSCSIAttributes
    , createdDate : Maybe Date
    }



cachediSCSIVolumeDecoder : JD.Decoder CachediSCSIVolume
cachediSCSIVolumeDecoder =
    JDP.decode CachediSCSIVolume
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumeProgress" (JD.nullable JD.float) Nothing
        |> JDP.optional "sourceSnapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeiSCSIAttributes" (JD.nullable volumeiSCSIAttributesDecoder) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from cancelArchiv
-}
type alias CancelArchivalOutput =
    { tapeARN : Maybe String
    }



cancelArchivalOutputDecoder : JD.Decoder CancelArchivalOutput
cancelArchivalOutputDecoder =
    JDP.decode CancelArchivalOutput
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cancelRetriev
-}
type alias CancelRetrievalOutput =
    { tapeARN : Maybe String
    }



cancelRetrievalOutputDecoder : JD.Decoder CancelRetrievalOutput
cancelRetrievalOutputDecoder =
    JDP.decode CancelRetrievalOutput
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing




{-| <p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports authentication between your gateway and iSCSI initiators.</p>
-}
type alias ChapInfo =
    { targetARN : Maybe String
    , secretToAuthenticateInitiator : Maybe String
    , initiatorName : Maybe String
    , secretToAuthenticateTarget : Maybe String
    }



chapInfoDecoder : JD.Decoder ChapInfo
chapInfoDecoder =
    JDP.decode ChapInfo
        |> JDP.optional "targetARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "secretToAuthenticateInitiator" (JD.nullable JD.string) Nothing
        |> JDP.optional "initiatorName" (JD.nullable JD.string) Nothing
        |> JDP.optional "secretToAuthenticateTarget" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createCachediSCSIVolu
-}
type alias CreateCachediSCSIVolumeOutput =
    { volumeARN : Maybe String
    , targetARN : Maybe String
    }



createCachediSCSIVolumeOutputDecoder : JD.Decoder CreateCachediSCSIVolumeOutput
createCachediSCSIVolumeOutputDecoder =
    JDP.decode CreateCachediSCSIVolumeOutput
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createNFSFileSha
-}
type alias CreateNFSFileShareOutput =
    { fileShareARN : Maybe String
    }



createNFSFileShareOutputDecoder : JD.Decoder CreateNFSFileShareOutput
createNFSFileShareOutputDecoder =
    JDP.decode CreateNFSFileShareOutput
        |> JDP.optional "fileShareARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSnapshotFromVolumeRecoveryPoi
-}
type alias CreateSnapshotFromVolumeRecoveryPointOutput =
    { snapshotId : Maybe String
    , volumeARN : Maybe String
    , volumeRecoveryPointTime : Maybe String
    }



createSnapshotFromVolumeRecoveryPointOutputDecoder : JD.Decoder CreateSnapshotFromVolumeRecoveryPointOutput
createSnapshotFromVolumeRecoveryPointOutputDecoder =
    JDP.decode CreateSnapshotFromVolumeRecoveryPointOutput
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeRecoveryPointTime" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSnapsh
-}
type alias CreateSnapshotOutput =
    { volumeARN : Maybe String
    , snapshotId : Maybe String
    }



createSnapshotOutputDecoder : JD.Decoder CreateSnapshotOutput
createSnapshotOutputDecoder =
    JDP.decode CreateSnapshotOutput
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createStorediSCSIVolu
-}
type alias CreateStorediSCSIVolumeOutput =
    { volumeARN : Maybe String
    , volumeSizeInBytes : Maybe Int
    , targetARN : Maybe String
    }



createStorediSCSIVolumeOutputDecoder : JD.Decoder CreateStorediSCSIVolumeOutput
createStorediSCSIVolumeOutputDecoder =
    JDP.decode CreateStorediSCSIVolumeOutput
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "targetARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createTapeWithBarco
-}
type alias CreateTapeWithBarcodeOutput =
    { tapeARN : Maybe String
    }



createTapeWithBarcodeOutputDecoder : JD.Decoder CreateTapeWithBarcodeOutput
createTapeWithBarcodeOutputDecoder =
    JDP.decode CreateTapeWithBarcodeOutput
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createTap
-}
type alias CreateTapesOutput =
    { tapeARNs : Maybe (List String)
    }



createTapesOutputDecoder : JD.Decoder CreateTapesOutput
createTapesOutputDecoder =
    JDP.decode CreateTapesOutput
        |> JDP.optional "tapeARNs" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from deleteBandwidthRateLim
-}
type alias DeleteBandwidthRateLimitOutput =
    { gatewayARN : Maybe String
    }



deleteBandwidthRateLimitOutputDecoder : JD.Decoder DeleteBandwidthRateLimitOutput
deleteBandwidthRateLimitOutputDecoder =
    JDP.decode DeleteBandwidthRateLimitOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteChapCredentia
-}
type alias DeleteChapCredentialsOutput =
    { targetARN : Maybe String
    , initiatorName : Maybe String
    }



deleteChapCredentialsOutputDecoder : JD.Decoder DeleteChapCredentialsOutput
deleteChapCredentialsOutputDecoder =
    JDP.decode DeleteChapCredentialsOutput
        |> JDP.optional "targetARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "initiatorName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteFileSha
-}
type alias DeleteFileShareOutput =
    { fileShareARN : Maybe String
    }



deleteFileShareOutputDecoder : JD.Decoder DeleteFileShareOutput
deleteFileShareOutputDecoder =
    JDP.decode DeleteFileShareOutput
        |> JDP.optional "fileShareARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteGatew
-}
type alias DeleteGatewayOutput =
    { gatewayARN : Maybe String
    }



deleteGatewayOutputDecoder : JD.Decoder DeleteGatewayOutput
deleteGatewayOutputDecoder =
    JDP.decode DeleteGatewayOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteSnapshotSchedu
-}
type alias DeleteSnapshotScheduleOutput =
    { volumeARN : Maybe String
    }



deleteSnapshotScheduleOutputDecoder : JD.Decoder DeleteSnapshotScheduleOutput
deleteSnapshotScheduleOutputDecoder =
    JDP.decode DeleteSnapshotScheduleOutput
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteTapeArchi
-}
type alias DeleteTapeArchiveOutput =
    { tapeARN : Maybe String
    }



deleteTapeArchiveOutputDecoder : JD.Decoder DeleteTapeArchiveOutput
deleteTapeArchiveOutputDecoder =
    JDP.decode DeleteTapeArchiveOutput
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteTa
-}
type alias DeleteTapeOutput =
    { tapeARN : Maybe String
    }



deleteTapeOutputDecoder : JD.Decoder DeleteTapeOutput
deleteTapeOutputDecoder =
    JDP.decode DeleteTapeOutput
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteVolu
-}
type alias DeleteVolumeOutput =
    { volumeARN : Maybe String
    }



deleteVolumeOutputDecoder : JD.Decoder DeleteVolumeOutput
deleteVolumeOutputDecoder =
    JDP.decode DeleteVolumeOutput
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeBandwidthRateLim
-}
type alias DescribeBandwidthRateLimitOutput =
    { gatewayARN : Maybe String
    , averageUploadRateLimitInBitsPerSec : Maybe Int
    , averageDownloadRateLimitInBitsPerSec : Maybe Int
    }



describeBandwidthRateLimitOutputDecoder : JD.Decoder DescribeBandwidthRateLimitOutput
describeBandwidthRateLimitOutputDecoder =
    JDP.decode DescribeBandwidthRateLimitOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "averageUploadRateLimitInBitsPerSec" (JD.nullable JD.int) Nothing
        |> JDP.optional "averageDownloadRateLimitInBitsPerSec" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describeCac
-}
type alias DescribeCacheOutput =
    { gatewayARN : Maybe String
    , diskIds : Maybe (List String)
    , cacheAllocatedInBytes : Maybe Int
    , cacheUsedPercentage : Maybe Float
    , cacheDirtyPercentage : Maybe Float
    , cacheHitPercentage : Maybe Float
    , cacheMissPercentage : Maybe Float
    }



describeCacheOutputDecoder : JD.Decoder DescribeCacheOutput
describeCacheOutputDecoder =
    JDP.decode DescribeCacheOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "cacheAllocatedInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "cacheUsedPercentage" (JD.nullable JD.float) Nothing
        |> JDP.optional "cacheDirtyPercentage" (JD.nullable JD.float) Nothing
        |> JDP.optional "cacheHitPercentage" (JD.nullable JD.float) Nothing
        |> JDP.optional "cacheMissPercentage" (JD.nullable JD.float) Nothing




{-| Type of HTTP response from describeCachediSCSIVolum
-}
type alias DescribeCachediSCSIVolumesOutput =
    { cachediSCSIVolumes : Maybe (List CachediSCSIVolume)
    }



describeCachediSCSIVolumesOutputDecoder : JD.Decoder DescribeCachediSCSIVolumesOutput
describeCachediSCSIVolumesOutputDecoder =
    JDP.decode DescribeCachediSCSIVolumesOutput
        |> JDP.optional "cachediSCSIVolumes" (JD.nullable (JD.list cachediSCSIVolumeDecoder)) Nothing




{-| Type of HTTP response from describeChapCredentia
-}
type alias DescribeChapCredentialsOutput =
    { chapCredentials : Maybe (List ChapInfo)
    }



describeChapCredentialsOutputDecoder : JD.Decoder DescribeChapCredentialsOutput
describeChapCredentialsOutputDecoder =
    JDP.decode DescribeChapCredentialsOutput
        |> JDP.optional "chapCredentials" (JD.nullable (JD.list chapInfoDecoder)) Nothing




{-| Type of HTTP response from describeGatewayInformati
-}
type alias DescribeGatewayInformationOutput =
    { gatewayARN : Maybe String
    , gatewayId : Maybe String
    , gatewayName : Maybe String
    , gatewayTimezone : Maybe String
    , gatewayState : Maybe String
    , gatewayNetworkInterfaces : Maybe (List NetworkInterface)
    , gatewayType : Maybe String
    , nextUpdateAvailabilityDate : Maybe String
    , lastSoftwareUpdate : Maybe String
    }



describeGatewayInformationOutputDecoder : JD.Decoder DescribeGatewayInformationOutput
describeGatewayInformationOutputDecoder =
    JDP.decode DescribeGatewayInformationOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayTimezone" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayState" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayNetworkInterfaces" (JD.nullable (JD.list networkInterfaceDecoder)) Nothing
        |> JDP.optional "gatewayType" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextUpdateAvailabilityDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastSoftwareUpdate" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMaintenanceStartTi
-}
type alias DescribeMaintenanceStartTimeOutput =
    { gatewayARN : Maybe String
    , hourOfDay : Maybe Int
    , minuteOfHour : Maybe Int
    , dayOfWeek : Maybe Int
    , timezone : Maybe String
    }



describeMaintenanceStartTimeOutputDecoder : JD.Decoder DescribeMaintenanceStartTimeOutput
describeMaintenanceStartTimeOutputDecoder =
    JDP.decode DescribeMaintenanceStartTimeOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "hourOfDay" (JD.nullable JD.int) Nothing
        |> JDP.optional "minuteOfHour" (JD.nullable JD.int) Nothing
        |> JDP.optional "dayOfWeek" (JD.nullable JD.int) Nothing
        |> JDP.optional "timezone" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeNFSFileShar
-}
type alias DescribeNFSFileSharesOutput =
    { nFSFileShareInfoList : Maybe (List NFSFileShareInfo)
    }



describeNFSFileSharesOutputDecoder : JD.Decoder DescribeNFSFileSharesOutput
describeNFSFileSharesOutputDecoder =
    JDP.decode DescribeNFSFileSharesOutput
        |> JDP.optional "nFSFileShareInfoList" (JD.nullable (JD.list nFSFileShareInfoDecoder)) Nothing




{-| Type of HTTP response from describeSnapshotSchedu
-}
type alias DescribeSnapshotScheduleOutput =
    { volumeARN : Maybe String
    , startAt : Maybe Int
    , recurrenceInHours : Maybe Int
    , description : Maybe String
    , timezone : Maybe String
    }



describeSnapshotScheduleOutputDecoder : JD.Decoder DescribeSnapshotScheduleOutput
describeSnapshotScheduleOutputDecoder =
    JDP.decode DescribeSnapshotScheduleOutput
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "startAt" (JD.nullable JD.int) Nothing
        |> JDP.optional "recurrenceInHours" (JD.nullable JD.int) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "timezone" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeStorediSCSIVolum
-}
type alias DescribeStorediSCSIVolumesOutput =
    { storediSCSIVolumes : Maybe (List StorediSCSIVolume)
    }



describeStorediSCSIVolumesOutputDecoder : JD.Decoder DescribeStorediSCSIVolumesOutput
describeStorediSCSIVolumesOutputDecoder =
    JDP.decode DescribeStorediSCSIVolumesOutput
        |> JDP.optional "storediSCSIVolumes" (JD.nullable (JD.list storediSCSIVolumeDecoder)) Nothing




{-| Type of HTTP response from describeTapeArchiv
-}
type alias DescribeTapeArchivesOutput =
    { tapeArchives : Maybe (List TapeArchive)
    , marker : Maybe String
    }



describeTapeArchivesOutputDecoder : JD.Decoder DescribeTapeArchivesOutput
describeTapeArchivesOutputDecoder =
    JDP.decode DescribeTapeArchivesOutput
        |> JDP.optional "tapeArchives" (JD.nullable (JD.list tapeArchiveDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTapeRecoveryPoin
-}
type alias DescribeTapeRecoveryPointsOutput =
    { gatewayARN : Maybe String
    , tapeRecoveryPointInfos : Maybe (List TapeRecoveryPointInfo)
    , marker : Maybe String
    }



describeTapeRecoveryPointsOutputDecoder : JD.Decoder DescribeTapeRecoveryPointsOutput
describeTapeRecoveryPointsOutputDecoder =
    JDP.decode DescribeTapeRecoveryPointsOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeRecoveryPointInfos" (JD.nullable (JD.list tapeRecoveryPointInfoDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTap
-}
type alias DescribeTapesOutput =
    { tapes : Maybe (List Tape)
    , marker : Maybe String
    }



describeTapesOutputDecoder : JD.Decoder DescribeTapesOutput
describeTapesOutputDecoder =
    JDP.decode DescribeTapesOutput
        |> JDP.optional "tapes" (JD.nullable (JD.list tapeDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeUploadBuff
-}
type alias DescribeUploadBufferOutput =
    { gatewayARN : Maybe String
    , diskIds : Maybe (List String)
    , uploadBufferUsedInBytes : Maybe Int
    , uploadBufferAllocatedInBytes : Maybe Int
    }



describeUploadBufferOutputDecoder : JD.Decoder DescribeUploadBufferOutput
describeUploadBufferOutputDecoder =
    JDP.decode DescribeUploadBufferOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "uploadBufferUsedInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "uploadBufferAllocatedInBytes" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describeVTLDevic
-}
type alias DescribeVTLDevicesOutput =
    { gatewayARN : Maybe String
    , vTLDevices : Maybe (List VTLDevice)
    , marker : Maybe String
    }



describeVTLDevicesOutputDecoder : JD.Decoder DescribeVTLDevicesOutput
describeVTLDevicesOutputDecoder =
    JDP.decode DescribeVTLDevicesOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "vTLDevices" (JD.nullable (JD.list vTLDeviceDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeWorkingStora
-}
type alias DescribeWorkingStorageOutput =
    { gatewayARN : Maybe String
    , diskIds : Maybe (List String)
    , workingStorageUsedInBytes : Maybe Int
    , workingStorageAllocatedInBytes : Maybe Int
    }



describeWorkingStorageOutputDecoder : JD.Decoder DescribeWorkingStorageOutput
describeWorkingStorageOutputDecoder =
    JDP.decode DescribeWorkingStorageOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "workingStorageUsedInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "workingStorageAllocatedInBytes" (JD.nullable JD.int) Nothing




{-| <p>Lists iSCSI information about a VTL device.</p>
-}
type alias DeviceiSCSIAttributes =
    { targetARN : Maybe String
    , networkInterfaceId : Maybe String
    , networkInterfacePort : Maybe Int
    , chapEnabled : Maybe Bool
    }



deviceiSCSIAttributesDecoder : JD.Decoder DeviceiSCSIAttributes
deviceiSCSIAttributesDecoder =
    JDP.decode DeviceiSCSIAttributes
        |> JDP.optional "targetARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfacePort" (JD.nullable JD.int) Nothing
        |> JDP.optional "chapEnabled" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from disableGatew
-}
type alias DisableGatewayOutput =
    { gatewayARN : Maybe String
    }



disableGatewayOutputDecoder : JD.Decoder DisableGatewayOutput
disableGatewayOutputDecoder =
    JDP.decode DisableGatewayOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias Disk =
    { diskId : Maybe String
    , diskPath : Maybe String
    , diskNode : Maybe String
    , diskStatus : Maybe String
    , diskSizeInBytes : Maybe Int
    , diskAllocationType : Maybe String
    , diskAllocationResource : Maybe String
    }



diskDecoder : JD.Decoder Disk
diskDecoder =
    JDP.decode Disk
        |> JDP.optional "diskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskPath" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskNode" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "diskAllocationType" (JD.nullable JD.string) Nothing
        |> JDP.optional "diskAllocationResource" (JD.nullable JD.string) Nothing




{-| One of

* `ErrorCode_ActivationKeyExpired`
* `ErrorCode_ActivationKeyInvalid`
* `ErrorCode_ActivationKeyNotFound`
* `ErrorCode_GatewayInternalError`
* `ErrorCode_GatewayNotConnected`
* `ErrorCode_GatewayNotFound`
* `ErrorCode_GatewayProxyNetworkConnectionBusy`
* `ErrorCode_AuthenticationFailure`
* `ErrorCode_BandwidthThrottleScheduleNotFound`
* `ErrorCode_Blocked`
* `ErrorCode_CannotExportSnapshot`
* `ErrorCode_ChapCredentialNotFound`
* `ErrorCode_DiskAlreadyAllocated`
* `ErrorCode_DiskDoesNotExist`
* `ErrorCode_DiskSizeGreaterThanVolumeMaxSize`
* `ErrorCode_DiskSizeLessThanVolumeSize`
* `ErrorCode_DiskSizeNotGigAligned`
* `ErrorCode_DuplicateCertificateInfo`
* `ErrorCode_DuplicateSchedule`
* `ErrorCode_EndpointNotFound`
* `ErrorCode_IAMNotSupported`
* `ErrorCode_InitiatorInvalid`
* `ErrorCode_InitiatorNotFound`
* `ErrorCode_InternalError`
* `ErrorCode_InvalidGateway`
* `ErrorCode_InvalidEndpoint`
* `ErrorCode_InvalidParameters`
* `ErrorCode_InvalidSchedule`
* `ErrorCode_LocalStorageLimitExceeded`
* `ErrorCode_LunAlreadyAllocated `
* `ErrorCode_LunInvalid`
* `ErrorCode_MaximumContentLengthExceeded`
* `ErrorCode_MaximumTapeCartridgeCountExceeded`
* `ErrorCode_MaximumVolumeCountExceeded`
* `ErrorCode_NetworkConfigurationChanged`
* `ErrorCode_NoDisksAvailable`
* `ErrorCode_NotImplemented`
* `ErrorCode_NotSupported`
* `ErrorCode_OperationAborted`
* `ErrorCode_OutdatedGateway`
* `ErrorCode_ParametersNotImplemented`
* `ErrorCode_RegionInvalid`
* `ErrorCode_RequestTimeout`
* `ErrorCode_ServiceUnavailable`
* `ErrorCode_SnapshotDeleted`
* `ErrorCode_SnapshotIdInvalid`
* `ErrorCode_SnapshotInProgress`
* `ErrorCode_SnapshotNotFound`
* `ErrorCode_SnapshotScheduleNotFound`
* `ErrorCode_StagingAreaFull`
* `ErrorCode_StorageFailure`
* `ErrorCode_TapeCartridgeNotFound`
* `ErrorCode_TargetAlreadyExists`
* `ErrorCode_TargetInvalid`
* `ErrorCode_TargetNotFound`
* `ErrorCode_UnauthorizedOperation`
* `ErrorCode_VolumeAlreadyExists`
* `ErrorCode_VolumeIdInvalid`
* `ErrorCode_VolumeInUse`
* `ErrorCode_VolumeNotFound`
* `ErrorCode_VolumeNotReady`

-}
type ErrorCode
    = ErrorCode_ActivationKeyExpired
    | ErrorCode_ActivationKeyInvalid
    | ErrorCode_ActivationKeyNotFound
    | ErrorCode_GatewayInternalError
    | ErrorCode_GatewayNotConnected
    | ErrorCode_GatewayNotFound
    | ErrorCode_GatewayProxyNetworkConnectionBusy
    | ErrorCode_AuthenticationFailure
    | ErrorCode_BandwidthThrottleScheduleNotFound
    | ErrorCode_Blocked
    | ErrorCode_CannotExportSnapshot
    | ErrorCode_ChapCredentialNotFound
    | ErrorCode_DiskAlreadyAllocated
    | ErrorCode_DiskDoesNotExist
    | ErrorCode_DiskSizeGreaterThanVolumeMaxSize
    | ErrorCode_DiskSizeLessThanVolumeSize
    | ErrorCode_DiskSizeNotGigAligned
    | ErrorCode_DuplicateCertificateInfo
    | ErrorCode_DuplicateSchedule
    | ErrorCode_EndpointNotFound
    | ErrorCode_IAMNotSupported
    | ErrorCode_InitiatorInvalid
    | ErrorCode_InitiatorNotFound
    | ErrorCode_InternalError
    | ErrorCode_InvalidGateway
    | ErrorCode_InvalidEndpoint
    | ErrorCode_InvalidParameters
    | ErrorCode_InvalidSchedule
    | ErrorCode_LocalStorageLimitExceeded
    | ErrorCode_LunAlreadyAllocated_
    | ErrorCode_LunInvalid
    | ErrorCode_MaximumContentLengthExceeded
    | ErrorCode_MaximumTapeCartridgeCountExceeded
    | ErrorCode_MaximumVolumeCountExceeded
    | ErrorCode_NetworkConfigurationChanged
    | ErrorCode_NoDisksAvailable
    | ErrorCode_NotImplemented
    | ErrorCode_NotSupported
    | ErrorCode_OperationAborted
    | ErrorCode_OutdatedGateway
    | ErrorCode_ParametersNotImplemented
    | ErrorCode_RegionInvalid
    | ErrorCode_RequestTimeout
    | ErrorCode_ServiceUnavailable
    | ErrorCode_SnapshotDeleted
    | ErrorCode_SnapshotIdInvalid
    | ErrorCode_SnapshotInProgress
    | ErrorCode_SnapshotNotFound
    | ErrorCode_SnapshotScheduleNotFound
    | ErrorCode_StagingAreaFull
    | ErrorCode_StorageFailure
    | ErrorCode_TapeCartridgeNotFound
    | ErrorCode_TargetAlreadyExists
    | ErrorCode_TargetInvalid
    | ErrorCode_TargetNotFound
    | ErrorCode_UnauthorizedOperation
    | ErrorCode_VolumeAlreadyExists
    | ErrorCode_VolumeIdInvalid
    | ErrorCode_VolumeInUse
    | ErrorCode_VolumeNotFound
    | ErrorCode_VolumeNotReady



errorCodeDecoder : JD.Decoder ErrorCode
errorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ActivationKeyExpired" ->
                        JD.succeed ErrorCode_ActivationKeyExpired

                    "ActivationKeyInvalid" ->
                        JD.succeed ErrorCode_ActivationKeyInvalid

                    "ActivationKeyNotFound" ->
                        JD.succeed ErrorCode_ActivationKeyNotFound

                    "GatewayInternalError" ->
                        JD.succeed ErrorCode_GatewayInternalError

                    "GatewayNotConnected" ->
                        JD.succeed ErrorCode_GatewayNotConnected

                    "GatewayNotFound" ->
                        JD.succeed ErrorCode_GatewayNotFound

                    "GatewayProxyNetworkConnectionBusy" ->
                        JD.succeed ErrorCode_GatewayProxyNetworkConnectionBusy

                    "AuthenticationFailure" ->
                        JD.succeed ErrorCode_AuthenticationFailure

                    "BandwidthThrottleScheduleNotFound" ->
                        JD.succeed ErrorCode_BandwidthThrottleScheduleNotFound

                    "Blocked" ->
                        JD.succeed ErrorCode_Blocked

                    "CannotExportSnapshot" ->
                        JD.succeed ErrorCode_CannotExportSnapshot

                    "ChapCredentialNotFound" ->
                        JD.succeed ErrorCode_ChapCredentialNotFound

                    "DiskAlreadyAllocated" ->
                        JD.succeed ErrorCode_DiskAlreadyAllocated

                    "DiskDoesNotExist" ->
                        JD.succeed ErrorCode_DiskDoesNotExist

                    "DiskSizeGreaterThanVolumeMaxSize" ->
                        JD.succeed ErrorCode_DiskSizeGreaterThanVolumeMaxSize

                    "DiskSizeLessThanVolumeSize" ->
                        JD.succeed ErrorCode_DiskSizeLessThanVolumeSize

                    "DiskSizeNotGigAligned" ->
                        JD.succeed ErrorCode_DiskSizeNotGigAligned

                    "DuplicateCertificateInfo" ->
                        JD.succeed ErrorCode_DuplicateCertificateInfo

                    "DuplicateSchedule" ->
                        JD.succeed ErrorCode_DuplicateSchedule

                    "EndpointNotFound" ->
                        JD.succeed ErrorCode_EndpointNotFound

                    "IAMNotSupported" ->
                        JD.succeed ErrorCode_IAMNotSupported

                    "InitiatorInvalid" ->
                        JD.succeed ErrorCode_InitiatorInvalid

                    "InitiatorNotFound" ->
                        JD.succeed ErrorCode_InitiatorNotFound

                    "InternalError" ->
                        JD.succeed ErrorCode_InternalError

                    "InvalidGateway" ->
                        JD.succeed ErrorCode_InvalidGateway

                    "InvalidEndpoint" ->
                        JD.succeed ErrorCode_InvalidEndpoint

                    "InvalidParameters" ->
                        JD.succeed ErrorCode_InvalidParameters

                    "InvalidSchedule" ->
                        JD.succeed ErrorCode_InvalidSchedule

                    "LocalStorageLimitExceeded" ->
                        JD.succeed ErrorCode_LocalStorageLimitExceeded

                    "LunAlreadyAllocated_" ->
                        JD.succeed ErrorCode_LunAlreadyAllocated_

                    "LunInvalid" ->
                        JD.succeed ErrorCode_LunInvalid

                    "MaximumContentLengthExceeded" ->
                        JD.succeed ErrorCode_MaximumContentLengthExceeded

                    "MaximumTapeCartridgeCountExceeded" ->
                        JD.succeed ErrorCode_MaximumTapeCartridgeCountExceeded

                    "MaximumVolumeCountExceeded" ->
                        JD.succeed ErrorCode_MaximumVolumeCountExceeded

                    "NetworkConfigurationChanged" ->
                        JD.succeed ErrorCode_NetworkConfigurationChanged

                    "NoDisksAvailable" ->
                        JD.succeed ErrorCode_NoDisksAvailable

                    "NotImplemented" ->
                        JD.succeed ErrorCode_NotImplemented

                    "NotSupported" ->
                        JD.succeed ErrorCode_NotSupported

                    "OperationAborted" ->
                        JD.succeed ErrorCode_OperationAborted

                    "OutdatedGateway" ->
                        JD.succeed ErrorCode_OutdatedGateway

                    "ParametersNotImplemented" ->
                        JD.succeed ErrorCode_ParametersNotImplemented

                    "RegionInvalid" ->
                        JD.succeed ErrorCode_RegionInvalid

                    "RequestTimeout" ->
                        JD.succeed ErrorCode_RequestTimeout

                    "ServiceUnavailable" ->
                        JD.succeed ErrorCode_ServiceUnavailable

                    "SnapshotDeleted" ->
                        JD.succeed ErrorCode_SnapshotDeleted

                    "SnapshotIdInvalid" ->
                        JD.succeed ErrorCode_SnapshotIdInvalid

                    "SnapshotInProgress" ->
                        JD.succeed ErrorCode_SnapshotInProgress

                    "SnapshotNotFound" ->
                        JD.succeed ErrorCode_SnapshotNotFound

                    "SnapshotScheduleNotFound" ->
                        JD.succeed ErrorCode_SnapshotScheduleNotFound

                    "StagingAreaFull" ->
                        JD.succeed ErrorCode_StagingAreaFull

                    "StorageFailure" ->
                        JD.succeed ErrorCode_StorageFailure

                    "TapeCartridgeNotFound" ->
                        JD.succeed ErrorCode_TapeCartridgeNotFound

                    "TargetAlreadyExists" ->
                        JD.succeed ErrorCode_TargetAlreadyExists

                    "TargetInvalid" ->
                        JD.succeed ErrorCode_TargetInvalid

                    "TargetNotFound" ->
                        JD.succeed ErrorCode_TargetNotFound

                    "UnauthorizedOperation" ->
                        JD.succeed ErrorCode_UnauthorizedOperation

                    "VolumeAlreadyExists" ->
                        JD.succeed ErrorCode_VolumeAlreadyExists

                    "VolumeIdInvalid" ->
                        JD.succeed ErrorCode_VolumeIdInvalid

                    "VolumeInUse" ->
                        JD.succeed ErrorCode_VolumeInUse

                    "VolumeNotFound" ->
                        JD.succeed ErrorCode_VolumeNotFound

                    "VolumeNotReady" ->
                        JD.succeed ErrorCode_VolumeNotReady


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a file share.</p>
-}
type alias FileShareInfo =
    { fileShareARN : Maybe String
    , fileShareId : Maybe String
    , fileShareStatus : Maybe String
    , gatewayARN : Maybe String
    }



fileShareInfoDecoder : JD.Decoder FileShareInfo
fileShareInfoDecoder =
    JDP.decode FileShareInfo
        |> JDP.optional "fileShareARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileShareId" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileShareStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| <p>Describes a gateway object.</p>
-}
type alias GatewayInfo =
    { gatewayId : Maybe String
    , gatewayARN : Maybe String
    , gatewayType : Maybe String
    , gatewayOperationalState : Maybe String
    , gatewayName : Maybe String
    }



gatewayInfoDecoder : JD.Decoder GatewayInfo
gatewayInfoDecoder =
    JDP.decode GatewayInfo
        |> JDP.optional "gatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayType" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayOperationalState" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayName" (JD.nullable JD.string) Nothing




{-| <p>An internal server error has occurred during the request. For more information, see the error and message fields.</p>
-}
type alias InternalServerError =
    { message : Maybe String
    , error : Maybe StorageGatewayError
    }



internalServerErrorDecoder : JD.Decoder InternalServerError
internalServerErrorDecoder =
    JDP.decode InternalServerError
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "error" (JD.nullable storageGatewayErrorDecoder) Nothing




{-| <p>An exception occurred because an invalid gateway request was issued to the service. For more information, see the error and message fields.</p>
-}
type alias InvalidGatewayRequestException =
    { message : Maybe String
    , error : Maybe StorageGatewayError
    }



invalidGatewayRequestExceptionDecoder : JD.Decoder InvalidGatewayRequestException
invalidGatewayRequestExceptionDecoder =
    JDP.decode InvalidGatewayRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "error" (JD.nullable storageGatewayErrorDecoder) Nothing




{-| Type of HTTP response from listFileShar
-}
type alias ListFileSharesOutput =
    { marker : Maybe String
    , nextMarker : Maybe String
    , fileShareInfoList : Maybe (List FileShareInfo)
    }



listFileSharesOutputDecoder : JD.Decoder ListFileSharesOutput
listFileSharesOutputDecoder =
    JDP.decode ListFileSharesOutput
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileShareInfoList" (JD.nullable (JD.list fileShareInfoDecoder)) Nothing




{-| Type of HTTP response from listGatewa
-}
type alias ListGatewaysOutput =
    { gateways : Maybe (List GatewayInfo)
    , marker : Maybe String
    }



listGatewaysOutputDecoder : JD.Decoder ListGatewaysOutput
listGatewaysOutputDecoder =
    JDP.decode ListGatewaysOutput
        |> JDP.optional "gateways" (JD.nullable (JD.list gatewayInfoDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listLocalDis
-}
type alias ListLocalDisksOutput =
    { gatewayARN : Maybe String
    , disks : Maybe (List Disk)
    }



listLocalDisksOutputDecoder : JD.Decoder ListLocalDisksOutput
listLocalDisksOutputDecoder =
    JDP.decode ListLocalDisksOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "disks" (JD.nullable (JD.list diskDecoder)) Nothing




{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceOutput =
    { resourceARN : Maybe String
    , marker : Maybe String
    , tags : Maybe (List Tag)
    }



listTagsForResourceOutputDecoder : JD.Decoder ListTagsForResourceOutput
listTagsForResourceOutputDecoder =
    JDP.decode ListTagsForResourceOutput
        |> JDP.optional "resourceARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from listTap
-}
type alias ListTapesOutput =
    { tapeInfos : Maybe (List TapeInfo)
    , marker : Maybe String
    }



listTapesOutputDecoder : JD.Decoder ListTapesOutput
listTapesOutputDecoder =
    JDP.decode ListTapesOutput
        |> JDP.optional "tapeInfos" (JD.nullable (JD.list tapeInfoDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listVolumeInitiato
-}
type alias ListVolumeInitiatorsOutput =
    { initiators : Maybe (List String)
    }



listVolumeInitiatorsOutputDecoder : JD.Decoder ListVolumeInitiatorsOutput
listVolumeInitiatorsOutputDecoder =
    JDP.decode ListVolumeInitiatorsOutput
        |> JDP.optional "initiators" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from listVolumeRecoveryPoin
-}
type alias ListVolumeRecoveryPointsOutput =
    { gatewayARN : Maybe String
    , volumeRecoveryPointInfos : Maybe (List VolumeRecoveryPointInfo)
    }



listVolumeRecoveryPointsOutputDecoder : JD.Decoder ListVolumeRecoveryPointsOutput
listVolumeRecoveryPointsOutputDecoder =
    JDP.decode ListVolumeRecoveryPointsOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeRecoveryPointInfos" (JD.nullable (JD.list volumeRecoveryPointInfoDecoder)) Nothing




{-| Type of HTTP response from listVolum
-}
type alias ListVolumesOutput =
    { gatewayARN : Maybe String
    , marker : Maybe String
    , volumeInfos : Maybe (List VolumeInfo)
    }



listVolumesOutputDecoder : JD.Decoder ListVolumesOutput
listVolumesOutputDecoder =
    JDP.decode ListVolumesOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeInfos" (JD.nullable (JD.list volumeInfoDecoder)) Nothing




{-| <p>Describes file share default values. Files and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions. </p>
-}
type alias NFSFileShareDefaults =
    { fileMode : Maybe String
    , directoryMode : Maybe String
    , groupId : Maybe Int
    , ownerId : Maybe Int
    }



nFSFileShareDefaultsDecoder : JD.Decoder NFSFileShareDefaults
nFSFileShareDefaultsDecoder =
    JDP.decode NFSFileShareDefaults
        |> JDP.optional "fileMode" (JD.nullable JD.string) Nothing
        |> JDP.optional "directoryMode" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupId" (JD.nullable JD.int) Nothing
        |> JDP.optional "ownerId" (JD.nullable JD.int) Nothing




{-| <p>The Unix file permissions and ownership information assigned, by default, to native S3 objects when Storage Gateway discovers them in S3 buckets.</p>
-}
type alias NFSFileShareInfo =
    { nFSFileShareDefaults : Maybe NFSFileShareDefaults
    , fileShareARN : Maybe String
    , fileShareId : Maybe String
    , fileShareStatus : Maybe String
    , gatewayARN : Maybe String
    , kMSEncrypted : Maybe Bool
    , kMSKey : Maybe String
    , path : Maybe String
    , role : Maybe String
    , locationARN : Maybe String
    , defaultStorageClass : Maybe String
    }



nFSFileShareInfoDecoder : JD.Decoder NFSFileShareInfo
nFSFileShareInfoDecoder =
    JDP.decode NFSFileShareInfo
        |> JDP.optional "nFSFileShareDefaults" (JD.nullable nFSFileShareDefaultsDecoder) Nothing
        |> JDP.optional "fileShareARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileShareId" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileShareStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "kMSEncrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kMSKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "role" (JD.nullable JD.string) Nothing
        |> JDP.optional "locationARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultStorageClass" (JD.nullable JD.string) Nothing




{-| <p>Describes a gateway's network interface.</p>
-}
type alias NetworkInterface =
    { ipv4Address : Maybe String
    , macAddress : Maybe String
    , ipv6Address : Maybe String
    }



networkInterfaceDecoder : JD.Decoder NetworkInterface
networkInterfaceDecoder =
    JDP.decode NetworkInterface
        |> JDP.optional "ipv4Address" (JD.nullable JD.string) Nothing
        |> JDP.optional "macAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6Address" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from removeTagsFromResour
-}
type alias RemoveTagsFromResourceOutput =
    { resourceARN : Maybe String
    }



removeTagsFromResourceOutputDecoder : JD.Decoder RemoveTagsFromResourceOutput
removeTagsFromResourceOutputDecoder =
    JDP.decode RemoveTagsFromResourceOutput
        |> JDP.optional "resourceARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from resetCac
-}
type alias ResetCacheOutput =
    { gatewayARN : Maybe String
    }



resetCacheOutputDecoder : JD.Decoder ResetCacheOutput
resetCacheOutputDecoder =
    JDP.decode ResetCacheOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from retrieveTapeArchi
-}
type alias RetrieveTapeArchiveOutput =
    { tapeARN : Maybe String
    }



retrieveTapeArchiveOutputDecoder : JD.Decoder RetrieveTapeArchiveOutput
retrieveTapeArchiveOutputDecoder =
    JDP.decode RetrieveTapeArchiveOutput
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from retrieveTapeRecoveryPoi
-}
type alias RetrieveTapeRecoveryPointOutput =
    { tapeARN : Maybe String
    }



retrieveTapeRecoveryPointOutputDecoder : JD.Decoder RetrieveTapeRecoveryPointOutput
retrieveTapeRecoveryPointOutputDecoder =
    JDP.decode RetrieveTapeRecoveryPointOutput
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing




{-| <p>An internal server error has occurred because the service is unavailable. For more information, see the error and message fields.</p>
-}
type alias ServiceUnavailableError =
    { message : Maybe String
    , error : Maybe StorageGatewayError
    }



serviceUnavailableErrorDecoder : JD.Decoder ServiceUnavailableError
serviceUnavailableErrorDecoder =
    JDP.decode ServiceUnavailableError
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "error" (JD.nullable storageGatewayErrorDecoder) Nothing




{-| Type of HTTP response from setLocalConsolePasswo
-}
type alias SetLocalConsolePasswordOutput =
    { gatewayARN : Maybe String
    }



setLocalConsolePasswordOutputDecoder : JD.Decoder SetLocalConsolePasswordOutput
setLocalConsolePasswordOutputDecoder =
    JDP.decode SetLocalConsolePasswordOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from shutdownGatew
-}
type alias ShutdownGatewayOutput =
    { gatewayARN : Maybe String
    }



shutdownGatewayOutputDecoder : JD.Decoder ShutdownGatewayOutput
shutdownGatewayOutputDecoder =
    JDP.decode ShutdownGatewayOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from startGatew
-}
type alias StartGatewayOutput =
    { gatewayARN : Maybe String
    }



startGatewayOutputDecoder : JD.Decoder StartGatewayOutput
startGatewayOutputDecoder =
    JDP.decode StartGatewayOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| <p>Provides additional information about an error that was returned by the service as an or. See the <code>errorCode</code> and <code>errorDetails</code> members for more information about the error.</p>
-}
type alias StorageGatewayError =
    { errorCode : Maybe ErrorCode
    , errorDetails : Maybe (Dict String String)
    }



storageGatewayErrorDecoder : JD.Decoder StorageGatewayError
storageGatewayErrorDecoder =
    JDP.decode StorageGatewayError
        |> JDP.optional "errorCode" (JD.nullable errorCodeDecoder) Nothing
        |> JDP.optional "errorDetails" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Describes an iSCSI stored volume.</p>
-}
type alias StorediSCSIVolume =
    { volumeARN : Maybe String
    , volumeId : Maybe String
    , volumeType : Maybe String
    , volumeStatus : Maybe String
    , volumeSizeInBytes : Maybe Int
    , volumeProgress : Maybe Float
    , volumeDiskId : Maybe String
    , sourceSnapshotId : Maybe String
    , preservedExistingData : Maybe Bool
    , volumeiSCSIAttributes : Maybe VolumeiSCSIAttributes
    , createdDate : Maybe Date
    }



storediSCSIVolumeDecoder : JD.Decoder StorediSCSIVolume
storediSCSIVolumeDecoder =
    JDP.decode StorediSCSIVolume
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumeProgress" (JD.nullable JD.float) Nothing
        |> JDP.optional "volumeDiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceSnapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "preservedExistingData" (JD.nullable JD.bool) Nothing
        |> JDP.optional "volumeiSCSIAttributes" (JD.nullable volumeiSCSIAttributesDecoder) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing




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




{-| <p>Describes a virtual tape object.</p>
-}
type alias Tape =
    { tapeARN : Maybe String
    , tapeBarcode : Maybe String
    , tapeCreatedDate : Maybe Date
    , tapeSizeInBytes : Maybe Int
    , tapeStatus : Maybe String
    , vTLDevice : Maybe String
    , progress : Maybe Float
    }



tapeDecoder : JD.Decoder Tape
tapeDecoder =
    JDP.decode Tape
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeBarcode" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeCreatedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "tapeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "tapeStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "vTLDevice" (JD.nullable JD.string) Nothing
        |> JDP.optional "progress" (JD.nullable JD.float) Nothing




{-| <p>Represents a virtual tape that is archived in the virtual tape shelf (VTS).</p>
-}
type alias TapeArchive =
    { tapeARN : Maybe String
    , tapeBarcode : Maybe String
    , tapeCreatedDate : Maybe Date
    , tapeSizeInBytes : Maybe Int
    , completionTime : Maybe Date
    , retrievedTo : Maybe String
    , tapeStatus : Maybe String
    }



tapeArchiveDecoder : JD.Decoder TapeArchive
tapeArchiveDecoder =
    JDP.decode TapeArchive
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeBarcode" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeCreatedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "tapeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "completionTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "retrievedTo" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeStatus" (JD.nullable JD.string) Nothing




{-| <p>Describes a virtual tape.</p>
-}
type alias TapeInfo =
    { tapeARN : Maybe String
    , tapeBarcode : Maybe String
    , tapeSizeInBytes : Maybe Int
    , tapeStatus : Maybe String
    , gatewayARN : Maybe String
    }



tapeInfoDecoder : JD.Decoder TapeInfo
tapeInfoDecoder =
    JDP.decode TapeInfo
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeBarcode" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "tapeStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| <p>Describes a recovery point.</p>
-}
type alias TapeRecoveryPointInfo =
    { tapeARN : Maybe String
    , tapeRecoveryPointTime : Maybe Date
    , tapeSizeInBytes : Maybe Int
    , tapeStatus : Maybe String
    }



tapeRecoveryPointInfoDecoder : JD.Decoder TapeRecoveryPointInfo
tapeRecoveryPointInfoDecoder =
    JDP.decode TapeRecoveryPointInfo
        |> JDP.optional "tapeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "tapeRecoveryPointTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "tapeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "tapeStatus" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateBandwidthRateLim
-}
type alias UpdateBandwidthRateLimitOutput =
    { gatewayARN : Maybe String
    }



updateBandwidthRateLimitOutputDecoder : JD.Decoder UpdateBandwidthRateLimitOutput
updateBandwidthRateLimitOutputDecoder =
    JDP.decode UpdateBandwidthRateLimitOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateChapCredentia
-}
type alias UpdateChapCredentialsOutput =
    { targetARN : Maybe String
    , initiatorName : Maybe String
    }



updateChapCredentialsOutputDecoder : JD.Decoder UpdateChapCredentialsOutput
updateChapCredentialsOutputDecoder =
    JDP.decode UpdateChapCredentialsOutput
        |> JDP.optional "targetARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "initiatorName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateGatewayInformati
-}
type alias UpdateGatewayInformationOutput =
    { gatewayARN : Maybe String
    , gatewayName : Maybe String
    }



updateGatewayInformationOutputDecoder : JD.Decoder UpdateGatewayInformationOutput
updateGatewayInformationOutputDecoder =
    JDP.decode UpdateGatewayInformationOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateGatewaySoftwareN
-}
type alias UpdateGatewaySoftwareNowOutput =
    { gatewayARN : Maybe String
    }



updateGatewaySoftwareNowOutputDecoder : JD.Decoder UpdateGatewaySoftwareNowOutput
updateGatewaySoftwareNowOutputDecoder =
    JDP.decode UpdateGatewaySoftwareNowOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateMaintenanceStartTi
-}
type alias UpdateMaintenanceStartTimeOutput =
    { gatewayARN : Maybe String
    }



updateMaintenanceStartTimeOutputDecoder : JD.Decoder UpdateMaintenanceStartTimeOutput
updateMaintenanceStartTimeOutputDecoder =
    JDP.decode UpdateMaintenanceStartTimeOutput
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateNFSFileSha
-}
type alias UpdateNFSFileShareOutput =
    { fileShareARN : Maybe String
    }



updateNFSFileShareOutputDecoder : JD.Decoder UpdateNFSFileShareOutput
updateNFSFileShareOutputDecoder =
    JDP.decode UpdateNFSFileShareOutput
        |> JDP.optional "fileShareARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateSnapshotSchedu
-}
type alias UpdateSnapshotScheduleOutput =
    { volumeARN : Maybe String
    }



updateSnapshotScheduleOutputDecoder : JD.Decoder UpdateSnapshotScheduleOutput
updateSnapshotScheduleOutputDecoder =
    JDP.decode UpdateSnapshotScheduleOutput
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateVTLDeviceTy
-}
type alias UpdateVTLDeviceTypeOutput =
    { vTLDeviceARN : Maybe String
    }



updateVTLDeviceTypeOutputDecoder : JD.Decoder UpdateVTLDeviceTypeOutput
updateVTLDeviceTypeOutputDecoder =
    JDP.decode UpdateVTLDeviceTypeOutput
        |> JDP.optional "vTLDeviceARN" (JD.nullable JD.string) Nothing




{-| <p>Represents a device object associated with a gateway-VTL.</p>
-}
type alias VTLDevice =
    { vTLDeviceARN : Maybe String
    , vTLDeviceType : Maybe String
    , vTLDeviceVendor : Maybe String
    , vTLDeviceProductIdentifier : Maybe String
    , deviceiSCSIAttributes : Maybe DeviceiSCSIAttributes
    }



vTLDeviceDecoder : JD.Decoder VTLDevice
vTLDeviceDecoder =
    JDP.decode VTLDevice
        |> JDP.optional "vTLDeviceARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "vTLDeviceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "vTLDeviceVendor" (JD.nullable JD.string) Nothing
        |> JDP.optional "vTLDeviceProductIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceiSCSIAttributes" (JD.nullable deviceiSCSIAttributesDecoder) Nothing




{-| <p>Describes a storage volume object.</p>
-}
type alias VolumeInfo =
    { volumeARN : Maybe String
    , volumeId : Maybe String
    , gatewayARN : Maybe String
    , gatewayId : Maybe String
    , volumeType : Maybe String
    , volumeSizeInBytes : Maybe Int
    }



volumeInfoDecoder : JD.Decoder VolumeInfo
volumeInfoDecoder =
    JDP.decode VolumeInfo
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSizeInBytes" (JD.nullable JD.int) Nothing




{-| undefined
-}
type alias VolumeRecoveryPointInfo =
    { volumeARN : Maybe String
    , volumeSizeInBytes : Maybe Int
    , volumeUsageInBytes : Maybe Int
    , volumeRecoveryPointTime : Maybe String
    }



volumeRecoveryPointInfoDecoder : JD.Decoder VolumeRecoveryPointInfo
volumeRecoveryPointInfoDecoder =
    JDP.decode VolumeRecoveryPointInfo
        |> JDP.optional "volumeARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumeUsageInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "volumeRecoveryPointTime" (JD.nullable JD.string) Nothing




{-| <p>Lists iSCSI information about a volume.</p>
-}
type alias VolumeiSCSIAttributes =
    { targetARN : Maybe String
    , networkInterfaceId : Maybe String
    , networkInterfacePort : Maybe Int
    , lunNumber : Maybe Int
    , chapEnabled : Maybe Bool
    }



volumeiSCSIAttributesDecoder : JD.Decoder VolumeiSCSIAttributes
volumeiSCSIAttributesDecoder =
    JDP.decode VolumeiSCSIAttributes
        |> JDP.optional "targetARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfacePort" (JD.nullable JD.int) Nothing
        |> JDP.optional "lunNumber" (JD.nullable JD.int) Nothing
        |> JDP.optional "chapEnabled" (JD.nullable JD.bool) Nothing




