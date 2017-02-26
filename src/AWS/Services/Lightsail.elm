module AWS.Services.Lightsail
    exposing
        ( config
        , allocateStaticIp
        , attachStaticIp
        , closeInstancePublicPorts
        , createDomain
        , createDomainEntry
        , createInstanceSnapshot
        , createInstances
        , CreateInstancesOptions
        , createInstancesFromSnapshot
        , CreateInstancesFromSnapshotOptions
        , createKeyPair
        , deleteDomain
        , deleteDomainEntry
        , deleteInstance
        , deleteInstanceSnapshot
        , deleteKeyPair
        , detachStaticIp
        , downloadDefaultKeyPair
        , getActiveNames
        , GetActiveNamesOptions
        , getBlueprints
        , GetBlueprintsOptions
        , getBundles
        , GetBundlesOptions
        , getDomain
        , getDomains
        , GetDomainsOptions
        , getInstance
        , getInstanceAccessDetails
        , GetInstanceAccessDetailsOptions
        , getInstanceMetricData
        , getInstancePortStates
        , getInstanceSnapshot
        , getInstanceSnapshots
        , GetInstanceSnapshotsOptions
        , getInstanceState
        , getInstances
        , GetInstancesOptions
        , getKeyPair
        , getKeyPairs
        , GetKeyPairsOptions
        , getOperation
        , getOperations
        , GetOperationsOptions
        , getOperationsForResource
        , GetOperationsForResourceOptions
        , getRegions
        , GetRegionsOptions
        , getStaticIp
        , getStaticIps
        , GetStaticIpsOptions
        , importKeyPair
        , isVpcPeered
        , openInstancePublicPorts
        , peerVpc
        , rebootInstance
        , releaseStaticIp
        , startInstance
        , stopInstance
        , unpeerVpc
        , updateDomainEntry
        , AccessDeniedException
        , AccessDirection(..)
        , AccountSetupInProgressException
        , AllocateStaticIpResult
        , AttachStaticIpResult
        , AvailabilityZone
        , Blueprint
        , BlueprintType(..)
        , Bundle
        , CloseInstancePublicPortsResult
        , CreateDomainEntryResult
        , CreateDomainResult
        , CreateInstanceSnapshotResult
        , CreateInstancesFromSnapshotResult
        , CreateInstancesResult
        , CreateKeyPairResult
        , DeleteDomainEntryResult
        , DeleteDomainResult
        , DeleteInstanceResult
        , DeleteInstanceSnapshotResult
        , DeleteKeyPairResult
        , DetachStaticIpResult
        , Disk
        , Domain
        , DomainEntry
        , DownloadDefaultKeyPairResult
        , GetActiveNamesResult
        , GetBlueprintsResult
        , GetBundlesResult
        , GetDomainResult
        , GetDomainsResult
        , GetInstanceAccessDetailsResult
        , GetInstanceMetricDataResult
        , GetInstancePortStatesResult
        , GetInstanceResult
        , GetInstanceSnapshotResult
        , GetInstanceSnapshotsResult
        , GetInstanceStateResult
        , GetInstancesResult
        , GetKeyPairResult
        , GetKeyPairsResult
        , GetOperationResult
        , GetOperationsForResourceResult
        , GetOperationsResult
        , GetRegionsResult
        , GetStaticIpResult
        , GetStaticIpsResult
        , ImportKeyPairResult
        , Instance
        , InstanceAccessDetails
        , InstanceAccessProtocol(..)
        , InstanceHardware
        , InstanceMetricName(..)
        , InstanceNetworking
        , InstancePortInfo
        , InstanceSnapshot
        , InstanceSnapshotState(..)
        , InstanceState
        , InvalidInputException
        , IsVpcPeeredResult
        , KeyPair
        , MetricDatapoint
        , MetricStatistic(..)
        , MetricUnit(..)
        , MonthlyTransfer
        , NetworkProtocol(..)
        , NotFoundException
        , OpenInstancePublicPortsResult
        , Operation
        , OperationFailureException
        , OperationStatus(..)
        , OperationType(..)
        , PeerVpcResult
        , PortAccessType(..)
        , PortInfo
        , PortState(..)
        , RebootInstanceResult
        , Region
        , RegionName(..)
        , ReleaseStaticIpResult
        , ResourceLocation
        , ResourceType(..)
        , ServiceException
        , StartInstanceResult
        , StaticIp
        , StopInstanceResult
        , UnauthenticatedException
        , UnpeerVpcResult
        , UpdateDomainEntryResult
        )

{-| <p>Amazon Lightsail is the easiest way to get started with AWS for developers who just need virtual private servers. Lightsail includes everything you need to launch your project quickly - a virtual machine, SSD-based storage, data transfer, DNS management, and a static IP - for a low, predictable price. You manage those Lightsail servers through the Lightsail console or by using the API or command-line interface (CLI).</p> <p>For more information about Lightsail concepts and tasks, see the <a href="http://lightsail.aws.amazon.com/ls/docs">Lightsail Dev Guide</a>.</p> <p>To use the Lightsail API or the CLI, you will need to use AWS Identity and Access Management (IAM) to generate access keys. For details about how to set this up, see the <a href="http://lightsail.aws.amazon.com/ls/docs/how-to/articles/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli">Lightsail Dev Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [allocateStaticIp](#allocateStaticIp)
* [attachStaticIp](#attachStaticIp)
* [closeInstancePublicPorts](#closeInstancePublicPorts)
* [createDomain](#createDomain)
* [createDomainEntry](#createDomainEntry)
* [createInstanceSnapshot](#createInstanceSnapshot)
* [createInstances](#createInstances)
* [CreateInstancesOptions](#CreateInstancesOptions)
* [createInstancesFromSnapshot](#createInstancesFromSnapshot)
* [CreateInstancesFromSnapshotOptions](#CreateInstancesFromSnapshotOptions)
* [createKeyPair](#createKeyPair)
* [deleteDomain](#deleteDomain)
* [deleteDomainEntry](#deleteDomainEntry)
* [deleteInstance](#deleteInstance)
* [deleteInstanceSnapshot](#deleteInstanceSnapshot)
* [deleteKeyPair](#deleteKeyPair)
* [detachStaticIp](#detachStaticIp)
* [downloadDefaultKeyPair](#downloadDefaultKeyPair)
* [getActiveNames](#getActiveNames)
* [GetActiveNamesOptions](#GetActiveNamesOptions)
* [getBlueprints](#getBlueprints)
* [GetBlueprintsOptions](#GetBlueprintsOptions)
* [getBundles](#getBundles)
* [GetBundlesOptions](#GetBundlesOptions)
* [getDomain](#getDomain)
* [getDomains](#getDomains)
* [GetDomainsOptions](#GetDomainsOptions)
* [getInstance](#getInstance)
* [getInstanceAccessDetails](#getInstanceAccessDetails)
* [GetInstanceAccessDetailsOptions](#GetInstanceAccessDetailsOptions)
* [getInstanceMetricData](#getInstanceMetricData)
* [getInstancePortStates](#getInstancePortStates)
* [getInstanceSnapshot](#getInstanceSnapshot)
* [getInstanceSnapshots](#getInstanceSnapshots)
* [GetInstanceSnapshotsOptions](#GetInstanceSnapshotsOptions)
* [getInstanceState](#getInstanceState)
* [getInstances](#getInstances)
* [GetInstancesOptions](#GetInstancesOptions)
* [getKeyPair](#getKeyPair)
* [getKeyPairs](#getKeyPairs)
* [GetKeyPairsOptions](#GetKeyPairsOptions)
* [getOperation](#getOperation)
* [getOperations](#getOperations)
* [GetOperationsOptions](#GetOperationsOptions)
* [getOperationsForResource](#getOperationsForResource)
* [GetOperationsForResourceOptions](#GetOperationsForResourceOptions)
* [getRegions](#getRegions)
* [GetRegionsOptions](#GetRegionsOptions)
* [getStaticIp](#getStaticIp)
* [getStaticIps](#getStaticIps)
* [GetStaticIpsOptions](#GetStaticIpsOptions)
* [importKeyPair](#importKeyPair)
* [isVpcPeered](#isVpcPeered)
* [openInstancePublicPorts](#openInstancePublicPorts)
* [peerVpc](#peerVpc)
* [rebootInstance](#rebootInstance)
* [releaseStaticIp](#releaseStaticIp)
* [startInstance](#startInstance)
* [stopInstance](#stopInstance)
* [unpeerVpc](#unpeerVpc)
* [updateDomainEntry](#updateDomainEntry)


@docs allocateStaticIp,attachStaticIp,closeInstancePublicPorts,createDomain,createDomainEntry,createInstanceSnapshot,createInstances,CreateInstancesOptions,createInstancesFromSnapshot,CreateInstancesFromSnapshotOptions,createKeyPair,deleteDomain,deleteDomainEntry,deleteInstance,deleteInstanceSnapshot,deleteKeyPair,detachStaticIp,downloadDefaultKeyPair,getActiveNames,GetActiveNamesOptions,getBlueprints,GetBlueprintsOptions,getBundles,GetBundlesOptions,getDomain,getDomains,GetDomainsOptions,getInstance,getInstanceAccessDetails,GetInstanceAccessDetailsOptions,getInstanceMetricData,getInstancePortStates,getInstanceSnapshot,getInstanceSnapshots,GetInstanceSnapshotsOptions,getInstanceState,getInstances,GetInstancesOptions,getKeyPair,getKeyPairs,GetKeyPairsOptions,getOperation,getOperations,GetOperationsOptions,getOperationsForResource,GetOperationsForResourceOptions,getRegions,GetRegionsOptions,getStaticIp,getStaticIps,GetStaticIpsOptions,importKeyPair,isVpcPeered,openInstancePublicPorts,peerVpc,rebootInstance,releaseStaticIp,startInstance,stopInstance,unpeerVpc,updateDomainEntry

## Responses

* [AllocateStaticIpResult](#AllocateStaticIpResult)
* [AttachStaticIpResult](#AttachStaticIpResult)
* [CloseInstancePublicPortsResult](#CloseInstancePublicPortsResult)
* [CreateDomainEntryResult](#CreateDomainEntryResult)
* [CreateDomainResult](#CreateDomainResult)
* [CreateInstanceSnapshotResult](#CreateInstanceSnapshotResult)
* [CreateInstancesFromSnapshotResult](#CreateInstancesFromSnapshotResult)
* [CreateInstancesResult](#CreateInstancesResult)
* [CreateKeyPairResult](#CreateKeyPairResult)
* [DeleteDomainEntryResult](#DeleteDomainEntryResult)
* [DeleteDomainResult](#DeleteDomainResult)
* [DeleteInstanceResult](#DeleteInstanceResult)
* [DeleteInstanceSnapshotResult](#DeleteInstanceSnapshotResult)
* [DeleteKeyPairResult](#DeleteKeyPairResult)
* [DetachStaticIpResult](#DetachStaticIpResult)
* [DownloadDefaultKeyPairResult](#DownloadDefaultKeyPairResult)
* [GetActiveNamesResult](#GetActiveNamesResult)
* [GetBlueprintsResult](#GetBlueprintsResult)
* [GetBundlesResult](#GetBundlesResult)
* [GetDomainResult](#GetDomainResult)
* [GetDomainsResult](#GetDomainsResult)
* [GetInstanceAccessDetailsResult](#GetInstanceAccessDetailsResult)
* [GetInstanceMetricDataResult](#GetInstanceMetricDataResult)
* [GetInstancePortStatesResult](#GetInstancePortStatesResult)
* [GetInstanceResult](#GetInstanceResult)
* [GetInstanceSnapshotResult](#GetInstanceSnapshotResult)
* [GetInstanceSnapshotsResult](#GetInstanceSnapshotsResult)
* [GetInstanceStateResult](#GetInstanceStateResult)
* [GetInstancesResult](#GetInstancesResult)
* [GetKeyPairResult](#GetKeyPairResult)
* [GetKeyPairsResult](#GetKeyPairsResult)
* [GetOperationResult](#GetOperationResult)
* [GetOperationsForResourceResult](#GetOperationsForResourceResult)
* [GetOperationsResult](#GetOperationsResult)
* [GetRegionsResult](#GetRegionsResult)
* [GetStaticIpResult](#GetStaticIpResult)
* [GetStaticIpsResult](#GetStaticIpsResult)
* [ImportKeyPairResult](#ImportKeyPairResult)
* [IsVpcPeeredResult](#IsVpcPeeredResult)
* [OpenInstancePublicPortsResult](#OpenInstancePublicPortsResult)
* [PeerVpcResult](#PeerVpcResult)
* [RebootInstanceResult](#RebootInstanceResult)
* [ReleaseStaticIpResult](#ReleaseStaticIpResult)
* [StartInstanceResult](#StartInstanceResult)
* [StopInstanceResult](#StopInstanceResult)
* [UnpeerVpcResult](#UnpeerVpcResult)
* [UpdateDomainEntryResult](#UpdateDomainEntryResult)


@docs AllocateStaticIpResult,AttachStaticIpResult,CloseInstancePublicPortsResult,CreateDomainEntryResult,CreateDomainResult,CreateInstanceSnapshotResult,CreateInstancesFromSnapshotResult,CreateInstancesResult,CreateKeyPairResult,DeleteDomainEntryResult,DeleteDomainResult,DeleteInstanceResult,DeleteInstanceSnapshotResult,DeleteKeyPairResult,DetachStaticIpResult,DownloadDefaultKeyPairResult,GetActiveNamesResult,GetBlueprintsResult,GetBundlesResult,GetDomainResult,GetDomainsResult,GetInstanceAccessDetailsResult,GetInstanceMetricDataResult,GetInstancePortStatesResult,GetInstanceResult,GetInstanceSnapshotResult,GetInstanceSnapshotsResult,GetInstanceStateResult,GetInstancesResult,GetKeyPairResult,GetKeyPairsResult,GetOperationResult,GetOperationsForResourceResult,GetOperationsResult,GetRegionsResult,GetStaticIpResult,GetStaticIpsResult,ImportKeyPairResult,IsVpcPeeredResult,OpenInstancePublicPortsResult,PeerVpcResult,RebootInstanceResult,ReleaseStaticIpResult,StartInstanceResult,StopInstanceResult,UnpeerVpcResult,UpdateDomainEntryResult

## Records

* [AvailabilityZone](#AvailabilityZone)
* [Blueprint](#Blueprint)
* [Bundle](#Bundle)
* [Disk](#Disk)
* [Domain](#Domain)
* [DomainEntry](#DomainEntry)
* [Instance](#Instance)
* [InstanceAccessDetails](#InstanceAccessDetails)
* [InstanceHardware](#InstanceHardware)
* [InstanceNetworking](#InstanceNetworking)
* [InstancePortInfo](#InstancePortInfo)
* [InstanceSnapshot](#InstanceSnapshot)
* [InstanceState](#InstanceState)
* [KeyPair](#KeyPair)
* [MetricDatapoint](#MetricDatapoint)
* [MonthlyTransfer](#MonthlyTransfer)
* [Operation](#Operation)
* [PortInfo](#PortInfo)
* [Region](#Region)
* [ResourceLocation](#ResourceLocation)
* [StaticIp](#StaticIp)


@docs AvailabilityZone,Blueprint,Bundle,Disk,Domain,DomainEntry,Instance,InstanceAccessDetails,InstanceHardware,InstanceNetworking,InstancePortInfo,InstanceSnapshot,InstanceState,KeyPair,MetricDatapoint,MonthlyTransfer,Operation,PortInfo,Region,ResourceLocation,StaticIp

## Unions

* [AccessDirection](#AccessDirection)
* [BlueprintType](#BlueprintType)
* [InstanceAccessProtocol](#InstanceAccessProtocol)
* [InstanceMetricName](#InstanceMetricName)
* [InstanceSnapshotState](#InstanceSnapshotState)
* [MetricStatistic](#MetricStatistic)
* [MetricUnit](#MetricUnit)
* [NetworkProtocol](#NetworkProtocol)
* [OperationStatus](#OperationStatus)
* [OperationType](#OperationType)
* [PortAccessType](#PortAccessType)
* [PortState](#PortState)
* [RegionName](#RegionName)
* [ResourceType](#ResourceType)


@docs AccessDirection,BlueprintType,InstanceAccessProtocol,InstanceMetricName,InstanceSnapshotState,MetricStatistic,MetricUnit,NetworkProtocol,OperationStatus,OperationType,PortAccessType,PortState,RegionName,ResourceType

## Exceptions

* [AccessDeniedException](#AccessDeniedException)
* [AccountSetupInProgressException](#AccountSetupInProgressException)
* [InvalidInputException](#InvalidInputException)
* [NotFoundException](#NotFoundException)
* [OperationFailureException](#OperationFailureException)
* [ServiceException](#ServiceException)
* [UnauthenticatedException](#UnauthenticatedException)


@docs AccessDeniedException,AccountSetupInProgressException,InvalidInputException,NotFoundException,OperationFailureException,ServiceException,UnauthenticatedException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "lightsail"
        "2016-11-28"
        "1.1"
        "AWSLIGHTSAIL_20161128."
        "lightsail.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Allocates a static IP address.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}
allocateStaticIp :
    String
    -> AWS.Request AllocateStaticIpResult
allocateStaticIp staticIpName =
    AWS.Http.unsignedRequest
        "AllocateStaticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        allocateStaticIpResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Attaches a static IP address to a specific Amazon Lightsail instance.</p>

__Required Parameters__

* `staticIpName` __:__ `String`
* `instanceName` __:__ `String`


-}
attachStaticIp :
    String
    -> String
    -> AWS.Request AttachStaticIpResult
attachStaticIp staticIpName instanceName =
    AWS.Http.unsignedRequest
        "AttachStaticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        attachStaticIpResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Closes the public ports on a specific Amazon Lightsail instance.</p>

__Required Parameters__

* `portInfo` __:__ `PortInfo`
* `instanceName` __:__ `String`


-}
closeInstancePublicPorts :
    PortInfo
    -> String
    -> AWS.Request CloseInstancePublicPortsResult
closeInstancePublicPorts portInfo instanceName =
    AWS.Http.unsignedRequest
        "CloseInstancePublicPorts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        closeInstancePublicPortsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a domain resource for the specified domain (e.g., example.com).</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
createDomain :
    String
    -> AWS.Request CreateDomainResult
createDomain domainName =
    AWS.Http.unsignedRequest
        "CreateDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDomainResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates one of the following entry records associated with the domain: A record, CNAME record, TXT record, or MX record.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `domainEntry` __:__ `DomainEntry`


-}
createDomainEntry :
    String
    -> DomainEntry
    -> AWS.Request CreateDomainEntryResult
createDomainEntry domainName domainEntry =
    AWS.Http.unsignedRequest
        "CreateDomainEntry"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDomainEntryResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a snapshot of a specific virtual private server, or <i>instance</i>. You can use a snapshot to create a new instance that is based on that snapshot.</p>

__Required Parameters__

* `instanceSnapshotName` __:__ `String`
* `instanceName` __:__ `String`


-}
createInstanceSnapshot :
    String
    -> String
    -> AWS.Request CreateInstanceSnapshotResult
createInstanceSnapshot instanceSnapshotName instanceName =
    AWS.Http.unsignedRequest
        "CreateInstanceSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createInstanceSnapshotResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates one or more Amazon Lightsail virtual private servers, or <i>instances</i>.</p>

__Required Parameters__

* `instanceNames` __:__ `(List String)`
* `availabilityZone` __:__ `String`
* `blueprintId` __:__ `String`
* `bundleId` __:__ `String`


-}
createInstances :
    (List String)
    -> String
    -> String
    -> String
    -> (CreateInstancesOptions -> CreateInstancesOptions)
    -> AWS.Request CreateInstancesResult
createInstances instanceNames availabilityZone blueprintId bundleId setOptions =
  let
    options = setOptions (CreateInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createInstances request
-}
type alias CreateInstancesOptions =
    { customImageName : Maybe String
    , userData : Maybe String
    , keyPairName : Maybe String
    }



{-| <p>Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration.</p>

__Required Parameters__

* `instanceNames` __:__ `(List String)`
* `availabilityZone` __:__ `String`
* `instanceSnapshotName` __:__ `String`
* `bundleId` __:__ `String`


-}
createInstancesFromSnapshot :
    (List String)
    -> String
    -> String
    -> String
    -> (CreateInstancesFromSnapshotOptions -> CreateInstancesFromSnapshotOptions)
    -> AWS.Request CreateInstancesFromSnapshotResult
createInstancesFromSnapshot instanceNames availabilityZone instanceSnapshotName bundleId setOptions =
  let
    options = setOptions (CreateInstancesFromSnapshotOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateInstancesFromSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createInstancesFromSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createInstancesFromSnapshot request
-}
type alias CreateInstancesFromSnapshotOptions =
    { userData : Maybe String
    , keyPairName : Maybe String
    }



{-| <p>Creates sn SSH key pair.</p>

__Required Parameters__

* `keyPairName` __:__ `String`


-}
createKeyPair :
    String
    -> AWS.Request CreateKeyPairResult
createKeyPair keyPairName =
    AWS.Http.unsignedRequest
        "CreateKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createKeyPairResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified domain recordset and all of its domain records.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
deleteDomain :
    String
    -> AWS.Request DeleteDomainResult
deleteDomain domainName =
    AWS.Http.unsignedRequest
        "DeleteDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDomainResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a specific domain entry.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `domainEntry` __:__ `DomainEntry`


-}
deleteDomainEntry :
    String
    -> DomainEntry
    -> AWS.Request DeleteDomainEntryResult
deleteDomainEntry domainName domainEntry =
    AWS.Http.unsignedRequest
        "DeleteDomainEntry"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDomainEntryResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a specific Amazon Lightsail virtual private server, or <i>instance</i>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
deleteInstance :
    String
    -> AWS.Request DeleteInstanceResult
deleteInstance instanceName =
    AWS.Http.unsignedRequest
        "DeleteInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteInstanceResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a specific snapshot of a virtual private server (or <i>instance</i>).</p>

__Required Parameters__

* `instanceSnapshotName` __:__ `String`


-}
deleteInstanceSnapshot :
    String
    -> AWS.Request DeleteInstanceSnapshotResult
deleteInstanceSnapshot instanceSnapshotName =
    AWS.Http.unsignedRequest
        "DeleteInstanceSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteInstanceSnapshotResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a specific SSH key pair.</p>

__Required Parameters__

* `keyPairName` __:__ `String`


-}
deleteKeyPair :
    String
    -> AWS.Request DeleteKeyPairResult
deleteKeyPair keyPairName =
    AWS.Http.unsignedRequest
        "DeleteKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteKeyPairResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Detaches a static IP from the Amazon Lightsail instance to which it is attached.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}
detachStaticIp :
    String
    -> AWS.Request DetachStaticIpResult
detachStaticIp staticIpName =
    AWS.Http.unsignedRequest
        "DetachStaticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detachStaticIpResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Downloads the default SSH key pair from the user's account.</p>

__Required Parameters__



-}
downloadDefaultKeyPair :
    AWS.Request DownloadDefaultKeyPairResult
downloadDefaultKeyPair =
    AWS.Http.unsignedRequest
        "DownloadDefaultKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        downloadDefaultKeyPairResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the names of all active (not deleted) resources.</p>

__Required Parameters__



-}
getActiveNames :
    (GetActiveNamesOptions -> GetActiveNamesOptions)
    -> AWS.Request GetActiveNamesResult
getActiveNames setOptions =
  let
    options = setOptions (GetActiveNamesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetActiveNames"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getActiveNamesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getActiveNames request
-}
type alias GetActiveNamesOptions =
    { pageToken : Maybe String
    }



{-| <p>Returns the list of available instance images, or <i>blueprints</i>. You can use a blueprint to create a new virtual private server already running a specific operating system, as well as a preinstalled app or development stack. The software each instance is running depends on the blueprint image you choose.</p>

__Required Parameters__



-}
getBlueprints :
    (GetBlueprintsOptions -> GetBlueprintsOptions)
    -> AWS.Request GetBlueprintsResult
getBlueprints setOptions =
  let
    options = setOptions (GetBlueprintsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetBlueprints"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getBlueprintsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getBlueprints request
-}
type alias GetBlueprintsOptions =
    { includeInactive : Maybe Bool
    , pageToken : Maybe String
    }



{-| <p>Returns the list of bundles that are available for purchase. A bundle describes the specs for your virtual private server (or <i>instance</i>).</p>

__Required Parameters__



-}
getBundles :
    (GetBundlesOptions -> GetBundlesOptions)
    -> AWS.Request GetBundlesResult
getBundles setOptions =
  let
    options = setOptions (GetBundlesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetBundles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getBundlesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getBundles request
-}
type alias GetBundlesOptions =
    { includeInactive : Maybe Bool
    , pageToken : Maybe String
    }



{-| <p>Returns information about a specific domain recordset.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
getDomain :
    String
    -> AWS.Request GetDomainResult
getDomain domainName =
    AWS.Http.unsignedRequest
        "GetDomain"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDomainResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of all domains in the user's account.</p>

__Required Parameters__



-}
getDomains :
    (GetDomainsOptions -> GetDomainsOptions)
    -> AWS.Request GetDomainsResult
getDomains setOptions =
  let
    options = setOptions (GetDomainsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDomains"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDomainsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getDomains request
-}
type alias GetDomainsOptions =
    { pageToken : Maybe String
    }



{-| <p>Returns information about a specific Amazon Lightsail instance, which is a virtual private server.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
getInstance :
    String
    -> AWS.Request GetInstanceResult
getInstance instanceName =
    AWS.Http.unsignedRequest
        "GetInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns temporary SSH keys you can use to connect to a specific virtual private server, or <i>instance</i>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
getInstanceAccessDetails :
    String
    -> (GetInstanceAccessDetailsOptions -> GetInstanceAccessDetailsOptions)
    -> AWS.Request GetInstanceAccessDetailsResult
getInstanceAccessDetails instanceName setOptions =
  let
    options = setOptions (GetInstanceAccessDetailsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetInstanceAccessDetails"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceAccessDetailsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getInstanceAccessDetails request
-}
type alias GetInstanceAccessDetailsOptions =
    { protocol : Maybe InstanceAccessProtocol
    }



{-| <p>Returns the data points for the specified Amazon Lightsail instance metric, given an instance name.</p>

__Required Parameters__

* `instanceName` __:__ `String`
* `metricName` __:__ `InstanceMetricName`
* `period` __:__ `Int`
* `startTime` __:__ `Date`
* `endTime` __:__ `Date`
* `unit` __:__ `MetricUnit`
* `statistics` __:__ `(List MetricStatistic)`


-}
getInstanceMetricData :
    String
    -> InstanceMetricName
    -> Int
    -> Date
    -> Date
    -> MetricUnit
    -> (List MetricStatistic)
    -> AWS.Request GetInstanceMetricDataResult
getInstanceMetricData instanceName metricName period startTime endTime unit statistics =
    AWS.Http.unsignedRequest
        "GetInstanceMetricData"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceMetricDataResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the port states for a specific virtual private server, or <i>instance</i>.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
getInstancePortStates :
    String
    -> AWS.Request GetInstancePortStatesResult
getInstancePortStates instanceName =
    AWS.Http.unsignedRequest
        "GetInstancePortStates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstancePortStatesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about a specific instance snapshot.</p>

__Required Parameters__

* `instanceSnapshotName` __:__ `String`


-}
getInstanceSnapshot :
    String
    -> AWS.Request GetInstanceSnapshotResult
getInstanceSnapshot instanceSnapshotName =
    AWS.Http.unsignedRequest
        "GetInstanceSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceSnapshotResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns all instance snapshots for the user's account.</p>

__Required Parameters__



-}
getInstanceSnapshots :
    (GetInstanceSnapshotsOptions -> GetInstanceSnapshotsOptions)
    -> AWS.Request GetInstanceSnapshotsResult
getInstanceSnapshots setOptions =
  let
    options = setOptions (GetInstanceSnapshotsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetInstanceSnapshots"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceSnapshotsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getInstanceSnapshots request
-}
type alias GetInstanceSnapshotsOptions =
    { pageToken : Maybe String
    }



{-| <p>Returns the state of a specific instance. Works on one instance at a time.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
getInstanceState :
    String
    -> AWS.Request GetInstanceStateResult
getInstanceState instanceName =
    AWS.Http.unsignedRequest
        "GetInstanceState"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceStateResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about all Amazon Lightsail virtual private servers, or <i>instances</i>.</p>

__Required Parameters__



-}
getInstances :
    (GetInstancesOptions -> GetInstancesOptions)
    -> AWS.Request GetInstancesResult
getInstances setOptions =
  let
    options = setOptions (GetInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getInstances request
-}
type alias GetInstancesOptions =
    { pageToken : Maybe String
    }



{-| <p>Returns information about a specific key pair.</p>

__Required Parameters__

* `keyPairName` __:__ `String`


-}
getKeyPair :
    String
    -> AWS.Request GetKeyPairResult
getKeyPair keyPairName =
    AWS.Http.unsignedRequest
        "GetKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getKeyPairResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about all key pairs in the user's account.</p>

__Required Parameters__



-}
getKeyPairs :
    (GetKeyPairsOptions -> GetKeyPairsOptions)
    -> AWS.Request GetKeyPairsResult
getKeyPairs setOptions =
  let
    options = setOptions (GetKeyPairsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetKeyPairs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getKeyPairsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getKeyPairs request
-}
type alias GetKeyPairsOptions =
    { pageToken : Maybe String
    }



{-| <p>Returns information about a specific operation. Operations include events such as when you create an instance, allocate a static IP, attach a static IP, and so on.</p>

__Required Parameters__

* `operationId` __:__ `String`


-}
getOperation :
    String
    -> AWS.Request GetOperationResult
getOperation operationId =
    AWS.Http.unsignedRequest
        "GetOperation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOperationResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about all operations.</p> <p>Results are returned from oldest to newest, up to a maximum of 200. Results can be paged by making each subsequent call to <code>GetOperations</code> use the maximum (last) <code>statusChangedAt</code> value from the previous request.</p>

__Required Parameters__



-}
getOperations :
    (GetOperationsOptions -> GetOperationsOptions)
    -> AWS.Request GetOperationsResult
getOperations setOptions =
  let
    options = setOptions (GetOperationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetOperations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOperationsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getOperations request
-}
type alias GetOperationsOptions =
    { pageToken : Maybe String
    }



{-| <p>Gets operations for a specific resource (e.g., an instance or a static IP).</p>

__Required Parameters__

* `resourceName` __:__ `String`


-}
getOperationsForResource :
    String
    -> (GetOperationsForResourceOptions -> GetOperationsForResourceOptions)
    -> AWS.Request GetOperationsForResourceResult
getOperationsForResource resourceName setOptions =
  let
    options = setOptions (GetOperationsForResourceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetOperationsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOperationsForResourceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getOperationsForResource request
-}
type alias GetOperationsForResourceOptions =
    { pageToken : Maybe String
    }



{-| <p>Returns a list of all valid regions for Amazon Lightsail.</p>

__Required Parameters__



-}
getRegions :
    (GetRegionsOptions -> GetRegionsOptions)
    -> AWS.Request GetRegionsResult
getRegions setOptions =
  let
    options = setOptions (GetRegionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetRegions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRegionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getRegions request
-}
type alias GetRegionsOptions =
    { includeAvailabilityZones : Maybe Bool
    }



{-| <p>Returns information about a specific static IP.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}
getStaticIp :
    String
    -> AWS.Request GetStaticIpResult
getStaticIp staticIpName =
    AWS.Http.unsignedRequest
        "GetStaticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getStaticIpResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about all static IPs in the user's account.</p>

__Required Parameters__



-}
getStaticIps :
    (GetStaticIpsOptions -> GetStaticIpsOptions)
    -> AWS.Request GetStaticIpsResult
getStaticIps setOptions =
  let
    options = setOptions (GetStaticIpsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetStaticIps"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getStaticIpsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getStaticIps request
-}
type alias GetStaticIpsOptions =
    { pageToken : Maybe String
    }



{-| <p>Imports a public SSH key from a specific key pair.</p>

__Required Parameters__

* `keyPairName` __:__ `String`
* `publicKeyBase64` __:__ `String`


-}
importKeyPair :
    String
    -> String
    -> AWS.Request ImportKeyPairResult
importKeyPair keyPairName publicKeyBase64 =
    AWS.Http.unsignedRequest
        "ImportKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importKeyPairResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a Boolean value indicating whether your Lightsail VPC is peered.</p>

__Required Parameters__



-}
isVpcPeered :
    AWS.Request IsVpcPeeredResult
isVpcPeered =
    AWS.Http.unsignedRequest
        "IsVpcPeered"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        isVpcPeeredResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Adds public ports to an Amazon Lightsail instance.</p>

__Required Parameters__

* `portInfo` __:__ `PortInfo`
* `instanceName` __:__ `String`


-}
openInstancePublicPorts :
    PortInfo
    -> String
    -> AWS.Request OpenInstancePublicPortsResult
openInstancePublicPorts portInfo instanceName =
    AWS.Http.unsignedRequest
        "OpenInstancePublicPorts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        openInstancePublicPortsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Tries to peer the Lightsail VPC with the user's default VPC.</p>

__Required Parameters__



-}
peerVpc :
    AWS.Request PeerVpcResult
peerVpc =
    AWS.Http.unsignedRequest
        "PeerVpc"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        peerVpcResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Restarts a specific instance. When your Amazon Lightsail instance is finished rebooting, Lightsail assigns a new public IP address. To use the same IP address after restarting, create a static IP address and attach it to the instance.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
rebootInstance :
    String
    -> AWS.Request RebootInstanceResult
rebootInstance instanceName =
    AWS.Http.unsignedRequest
        "RebootInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rebootInstanceResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a specific static IP from your account.</p>

__Required Parameters__

* `staticIpName` __:__ `String`


-}
releaseStaticIp :
    String
    -> AWS.Request ReleaseStaticIpResult
releaseStaticIp staticIpName =
    AWS.Http.unsignedRequest
        "ReleaseStaticIp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        releaseStaticIpResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Starts a specific Amazon Lightsail instance from a stopped state. To restart an instance, use the reboot instance operation.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
startInstance :
    String
    -> AWS.Request StartInstanceResult
startInstance instanceName =
    AWS.Http.unsignedRequest
        "StartInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startInstanceResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Stops a specific Amazon Lightsail instance that is currently running.</p>

__Required Parameters__

* `instanceName` __:__ `String`


-}
stopInstance :
    String
    -> AWS.Request StopInstanceResult
stopInstance instanceName =
    AWS.Http.unsignedRequest
        "StopInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopInstanceResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Attempts to unpeer the Lightsail VPC from the user's default VPC.</p>

__Required Parameters__



-}
unpeerVpc :
    AWS.Request UnpeerVpcResult
unpeerVpc =
    AWS.Http.unsignedRequest
        "UnpeerVpc"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        unpeerVpcResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates a domain recordset after it is created.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `domainEntry` __:__ `DomainEntry`


-}
updateDomainEntry :
    String
    -> DomainEntry
    -> AWS.Request UpdateDomainEntryResult
updateDomainEntry domainName domainEntry =
    AWS.Http.unsignedRequest
        "UpdateDomainEntry"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDomainEntryResultDecoder
        |> AWS.UnsignedRequest




{-| <p>Lightsail throws this exception when the user cannot be authenticated or uses invalid credentials to access a resource.</p>
-}
type alias AccessDeniedException =
    { code : Maybe String
    , docs : Maybe String
    , message : Maybe String
    , tip : Maybe String
    }



accessDeniedExceptionDecoder : JD.Decoder AccessDeniedException
accessDeniedExceptionDecoder =
    JDP.decode AccessDeniedException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "docs" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "tip" (JD.nullable JD.string) Nothing




{-| One of

* `AccessDirection_inbound`
* `AccessDirection_outbound`

-}
type AccessDirection
    = AccessDirection_inbound
    | AccessDirection_outbound



accessDirectionDecoder : JD.Decoder AccessDirection
accessDirectionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "inbound" ->
                        JD.succeed AccessDirection_inbound

                    "outbound" ->
                        JD.succeed AccessDirection_outbound


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Lightsail throws this exception when an account is still in the setup in progress state.</p>
-}
type alias AccountSetupInProgressException =
    { code : Maybe String
    , docs : Maybe String
    , message : Maybe String
    , tip : Maybe String
    }



accountSetupInProgressExceptionDecoder : JD.Decoder AccountSetupInProgressException
accountSetupInProgressExceptionDecoder =
    JDP.decode AccountSetupInProgressException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "docs" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "tip" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from allocateStatic
-}
type alias AllocateStaticIpResult =
    { operations : Maybe (List Operation)
    }



allocateStaticIpResultDecoder : JD.Decoder AllocateStaticIpResult
allocateStaticIpResultDecoder =
    JDP.decode AllocateStaticIpResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| Type of HTTP response from attachStatic
-}
type alias AttachStaticIpResult =
    { operations : Maybe (List Operation)
    }



attachStaticIpResultDecoder : JD.Decoder AttachStaticIpResult
attachStaticIpResultDecoder =
    JDP.decode AttachStaticIpResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| <p>Describes an Availability Zone.</p>
-}
type alias AvailabilityZone =
    { zoneName : Maybe String
    , state : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JDP.decode AvailabilityZone
        |> JDP.optional "zoneName" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing




{-| <p>Describes a blueprint (a virtual private server image).</p>
-}
type alias Blueprint =
    { blueprintId : Maybe String
    , name : Maybe String
    , group : Maybe String
    , type_ : Maybe BlueprintType
    , description : Maybe String
    , isActive : Maybe Bool
    , minPower : Maybe Int
    , version : Maybe String
    , versionCode : Maybe String
    , productUrl : Maybe String
    , licenseUrl : Maybe String
    }



blueprintDecoder : JD.Decoder Blueprint
blueprintDecoder =
    JDP.decode Blueprint
        |> JDP.optional "blueprintId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "group" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable blueprintTypeDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "isActive" (JD.nullable JD.bool) Nothing
        |> JDP.optional "minPower" (JD.nullable JD.int) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "productUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseUrl" (JD.nullable JD.string) Nothing




{-| One of

* `BlueprintType_os`
* `BlueprintType_app`

-}
type BlueprintType
    = BlueprintType_os
    | BlueprintType_app



blueprintTypeDecoder : JD.Decoder BlueprintType
blueprintTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "os" ->
                        JD.succeed BlueprintType_os

                    "app" ->
                        JD.succeed BlueprintType_app


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a bundle, which is a set of specs describing your virtual private server (or <i>instance</i>).</p>
-}
type alias Bundle =
    { price : Maybe Float
    , cpuCount : Maybe Int
    , diskSizeInGb : Maybe Int
    , bundleId : Maybe String
    , instanceType : Maybe String
    , isActive : Maybe Bool
    , name : Maybe String
    , power : Maybe Int
    , ramSizeInGb : Maybe Float
    , transferPerMonthInGb : Maybe Int
    }



bundleDecoder : JD.Decoder Bundle
bundleDecoder =
    JDP.decode Bundle
        |> JDP.optional "price" (JD.nullable JD.float) Nothing
        |> JDP.optional "cpuCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "diskSizeInGb" (JD.nullable JD.int) Nothing
        |> JDP.optional "bundleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "isActive" (JD.nullable JD.bool) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "power" (JD.nullable JD.int) Nothing
        |> JDP.optional "ramSizeInGb" (JD.nullable JD.float) Nothing
        |> JDP.optional "transferPerMonthInGb" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from closeInstancePublicPor
-}
type alias CloseInstancePublicPortsResult =
    { operation : Maybe Operation
    }



closeInstancePublicPortsResultDecoder : JD.Decoder CloseInstancePublicPortsResult
closeInstancePublicPortsResultDecoder =
    JDP.decode CloseInstancePublicPortsResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from createDomainEnt
-}
type alias CreateDomainEntryResult =
    { operation : Maybe Operation
    }



createDomainEntryResultDecoder : JD.Decoder CreateDomainEntryResult
createDomainEntryResultDecoder =
    JDP.decode CreateDomainEntryResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from createDoma
-}
type alias CreateDomainResult =
    { operation : Maybe Operation
    }



createDomainResultDecoder : JD.Decoder CreateDomainResult
createDomainResultDecoder =
    JDP.decode CreateDomainResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from createInstanceSnapsh
-}
type alias CreateInstanceSnapshotResult =
    { operations : Maybe (List Operation)
    }



createInstanceSnapshotResultDecoder : JD.Decoder CreateInstanceSnapshotResult
createInstanceSnapshotResultDecoder =
    JDP.decode CreateInstanceSnapshotResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| Type of HTTP response from createInstancesFromSnapsh
-}
type alias CreateInstancesFromSnapshotResult =
    { operations : Maybe (List Operation)
    }



createInstancesFromSnapshotResultDecoder : JD.Decoder CreateInstancesFromSnapshotResult
createInstancesFromSnapshotResultDecoder =
    JDP.decode CreateInstancesFromSnapshotResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| Type of HTTP response from createInstanc
-}
type alias CreateInstancesResult =
    { operations : Maybe (List Operation)
    }



createInstancesResultDecoder : JD.Decoder CreateInstancesResult
createInstancesResultDecoder =
    JDP.decode CreateInstancesResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| Type of HTTP response from createKeyPa
-}
type alias CreateKeyPairResult =
    { keyPair : Maybe KeyPair
    , publicKeyBase64 : Maybe String
    , privateKeyBase64 : Maybe String
    , operation : Maybe Operation
    }



createKeyPairResultDecoder : JD.Decoder CreateKeyPairResult
createKeyPairResultDecoder =
    JDP.decode CreateKeyPairResult
        |> JDP.optional "keyPair" (JD.nullable keyPairDecoder) Nothing
        |> JDP.optional "publicKeyBase64" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateKeyBase64" (JD.nullable JD.string) Nothing
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from deleteDomainEnt
-}
type alias DeleteDomainEntryResult =
    { operation : Maybe Operation
    }



deleteDomainEntryResultDecoder : JD.Decoder DeleteDomainEntryResult
deleteDomainEntryResultDecoder =
    JDP.decode DeleteDomainEntryResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from deleteDoma
-}
type alias DeleteDomainResult =
    { operation : Maybe Operation
    }



deleteDomainResultDecoder : JD.Decoder DeleteDomainResult
deleteDomainResultDecoder =
    JDP.decode DeleteDomainResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from deleteInstan
-}
type alias DeleteInstanceResult =
    { operations : Maybe (List Operation)
    }



deleteInstanceResultDecoder : JD.Decoder DeleteInstanceResult
deleteInstanceResultDecoder =
    JDP.decode DeleteInstanceResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| Type of HTTP response from deleteInstanceSnapsh
-}
type alias DeleteInstanceSnapshotResult =
    { operations : Maybe (List Operation)
    }



deleteInstanceSnapshotResultDecoder : JD.Decoder DeleteInstanceSnapshotResult
deleteInstanceSnapshotResultDecoder =
    JDP.decode DeleteInstanceSnapshotResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| Type of HTTP response from deleteKeyPa
-}
type alias DeleteKeyPairResult =
    { operation : Maybe Operation
    }



deleteKeyPairResultDecoder : JD.Decoder DeleteKeyPairResult
deleteKeyPairResultDecoder =
    JDP.decode DeleteKeyPairResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from detachStatic
-}
type alias DetachStaticIpResult =
    { operations : Maybe (List Operation)
    }



detachStaticIpResultDecoder : JD.Decoder DetachStaticIpResult
detachStaticIpResultDecoder =
    JDP.decode DetachStaticIpResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| <p>Describes the hard disk (an SSD).</p>
-}
type alias Disk =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Date
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , sizeInGb : Maybe Int
    , gbInUse : Maybe Int
    , isSystemDisk : Maybe Bool
    , iops : Maybe Int
    , path : Maybe String
    , attachedTo : Maybe String
    , isAttached : Maybe Bool
    , attachmentState : Maybe String
    }



diskDecoder : JD.Decoder Disk
diskDecoder =
    JDP.decode Disk
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "location" (JD.nullable resourceLocationDecoder) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "sizeInGb" (JD.nullable JD.int) Nothing
        |> JDP.optional "gbInUse" (JD.nullable JD.int) Nothing
        |> JDP.optional "isSystemDisk" (JD.nullable JD.bool) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "attachedTo" (JD.nullable JD.string) Nothing
        |> JDP.optional "isAttached" (JD.nullable JD.bool) Nothing
        |> JDP.optional "attachmentState" (JD.nullable JD.string) Nothing




{-| <p>Describes a domain where you are storing recordsets in Lightsail.</p>
-}
type alias Domain =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Date
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , domainEntries : Maybe (List DomainEntry)
    }



domainDecoder : JD.Decoder Domain
domainDecoder =
    JDP.decode Domain
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "location" (JD.nullable resourceLocationDecoder) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "domainEntries" (JD.nullable (JD.list domainEntryDecoder)) Nothing




{-| <p>Describes a domain recordset entry.</p>
-}
type alias DomainEntry =
    { id : Maybe String
    , name : Maybe String
    , target : Maybe String
    , type_ : Maybe String
    , options : Maybe (Dict String String)
    }



domainEntryDecoder : JD.Decoder DomainEntry
domainEntryDecoder =
    JDP.decode DomainEntry
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "target" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "options" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from downloadDefaultKeyPa
-}
type alias DownloadDefaultKeyPairResult =
    { publicKeyBase64 : Maybe String
    , privateKeyBase64 : Maybe String
    }



downloadDefaultKeyPairResultDecoder : JD.Decoder DownloadDefaultKeyPairResult
downloadDefaultKeyPairResultDecoder =
    JDP.decode DownloadDefaultKeyPairResult
        |> JDP.optional "publicKeyBase64" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateKeyBase64" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getActiveNam
-}
type alias GetActiveNamesResult =
    { activeNames : Maybe (List String)
    , nextPageToken : Maybe String
    }



getActiveNamesResultDecoder : JD.Decoder GetActiveNamesResult
getActiveNamesResultDecoder =
    JDP.decode GetActiveNamesResult
        |> JDP.optional "activeNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getBlueprin
-}
type alias GetBlueprintsResult =
    { blueprints : Maybe (List Blueprint)
    , nextPageToken : Maybe String
    }



getBlueprintsResultDecoder : JD.Decoder GetBlueprintsResult
getBlueprintsResultDecoder =
    JDP.decode GetBlueprintsResult
        |> JDP.optional "blueprints" (JD.nullable (JD.list blueprintDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getBundl
-}
type alias GetBundlesResult =
    { bundles : Maybe (List Bundle)
    , nextPageToken : Maybe String
    }



getBundlesResultDecoder : JD.Decoder GetBundlesResult
getBundlesResultDecoder =
    JDP.decode GetBundlesResult
        |> JDP.optional "bundles" (JD.nullable (JD.list bundleDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getDoma
-}
type alias GetDomainResult =
    { domain : Maybe Domain
    }



getDomainResultDecoder : JD.Decoder GetDomainResult
getDomainResultDecoder =
    JDP.decode GetDomainResult
        |> JDP.optional "domain" (JD.nullable domainDecoder) Nothing




{-| Type of HTTP response from getDomai
-}
type alias GetDomainsResult =
    { domains : Maybe (List Domain)
    , nextPageToken : Maybe String
    }



getDomainsResultDecoder : JD.Decoder GetDomainsResult
getDomainsResultDecoder =
    JDP.decode GetDomainsResult
        |> JDP.optional "domains" (JD.nullable (JD.list domainDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getInstanceAccessDetai
-}
type alias GetInstanceAccessDetailsResult =
    { accessDetails : Maybe InstanceAccessDetails
    }



getInstanceAccessDetailsResultDecoder : JD.Decoder GetInstanceAccessDetailsResult
getInstanceAccessDetailsResultDecoder =
    JDP.decode GetInstanceAccessDetailsResult
        |> JDP.optional "accessDetails" (JD.nullable instanceAccessDetailsDecoder) Nothing




{-| Type of HTTP response from getInstanceMetricDa
-}
type alias GetInstanceMetricDataResult =
    { metricName : Maybe InstanceMetricName
    , metricData : Maybe (List MetricDatapoint)
    }



getInstanceMetricDataResultDecoder : JD.Decoder GetInstanceMetricDataResult
getInstanceMetricDataResultDecoder =
    JDP.decode GetInstanceMetricDataResult
        |> JDP.optional "metricName" (JD.nullable instanceMetricNameDecoder) Nothing
        |> JDP.optional "metricData" (JD.nullable (JD.list metricDatapointDecoder)) Nothing




{-| Type of HTTP response from getInstancePortStat
-}
type alias GetInstancePortStatesResult =
    { portStates : Maybe (List PortState)
    }



getInstancePortStatesResultDecoder : JD.Decoder GetInstancePortStatesResult
getInstancePortStatesResultDecoder =
    JDP.decode GetInstancePortStatesResult
        |> JDP.optional "portStates" (JD.nullable (JD.list portStateDecoder)) Nothing




{-| Type of HTTP response from getInstan
-}
type alias GetInstanceResult =
    { instance : Maybe Instance
    }



getInstanceResultDecoder : JD.Decoder GetInstanceResult
getInstanceResultDecoder =
    JDP.decode GetInstanceResult
        |> JDP.optional "instance" (JD.nullable instanceDecoder) Nothing




{-| Type of HTTP response from getInstanceSnapsh
-}
type alias GetInstanceSnapshotResult =
    { instanceSnapshot : Maybe InstanceSnapshot
    }



getInstanceSnapshotResultDecoder : JD.Decoder GetInstanceSnapshotResult
getInstanceSnapshotResultDecoder =
    JDP.decode GetInstanceSnapshotResult
        |> JDP.optional "instanceSnapshot" (JD.nullable instanceSnapshotDecoder) Nothing




{-| Type of HTTP response from getInstanceSnapsho
-}
type alias GetInstanceSnapshotsResult =
    { instanceSnapshots : Maybe (List InstanceSnapshot)
    , nextPageToken : Maybe String
    }



getInstanceSnapshotsResultDecoder : JD.Decoder GetInstanceSnapshotsResult
getInstanceSnapshotsResultDecoder =
    JDP.decode GetInstanceSnapshotsResult
        |> JDP.optional "instanceSnapshots" (JD.nullable (JD.list instanceSnapshotDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getInstanceSta
-}
type alias GetInstanceStateResult =
    { state : Maybe InstanceState
    }



getInstanceStateResultDecoder : JD.Decoder GetInstanceStateResult
getInstanceStateResultDecoder =
    JDP.decode GetInstanceStateResult
        |> JDP.optional "state" (JD.nullable instanceStateDecoder) Nothing




{-| Type of HTTP response from getInstanc
-}
type alias GetInstancesResult =
    { instances : Maybe (List Instance)
    , nextPageToken : Maybe String
    }



getInstancesResultDecoder : JD.Decoder GetInstancesResult
getInstancesResultDecoder =
    JDP.decode GetInstancesResult
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getKeyPa
-}
type alias GetKeyPairResult =
    { keyPair : Maybe KeyPair
    }



getKeyPairResultDecoder : JD.Decoder GetKeyPairResult
getKeyPairResultDecoder =
    JDP.decode GetKeyPairResult
        |> JDP.optional "keyPair" (JD.nullable keyPairDecoder) Nothing




{-| Type of HTTP response from getKeyPai
-}
type alias GetKeyPairsResult =
    { keyPairs : Maybe (List KeyPair)
    , nextPageToken : Maybe String
    }



getKeyPairsResultDecoder : JD.Decoder GetKeyPairsResult
getKeyPairsResultDecoder =
    JDP.decode GetKeyPairsResult
        |> JDP.optional "keyPairs" (JD.nullable (JD.list keyPairDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getOperati
-}
type alias GetOperationResult =
    { operation : Maybe Operation
    }



getOperationResultDecoder : JD.Decoder GetOperationResult
getOperationResultDecoder =
    JDP.decode GetOperationResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from getOperationsForResour
-}
type alias GetOperationsForResourceResult =
    { operations : Maybe (List Operation)
    , nextPageCount : Maybe String
    }



getOperationsForResourceResultDecoder : JD.Decoder GetOperationsForResourceResult
getOperationsForResourceResultDecoder =
    JDP.decode GetOperationsForResourceResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing
        |> JDP.optional "nextPageCount" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getOperatio
-}
type alias GetOperationsResult =
    { operations : Maybe (List Operation)
    , nextPageToken : Maybe String
    }



getOperationsResultDecoder : JD.Decoder GetOperationsResult
getOperationsResultDecoder =
    JDP.decode GetOperationsResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getRegio
-}
type alias GetRegionsResult =
    { regions : Maybe (List Region)
    }



getRegionsResultDecoder : JD.Decoder GetRegionsResult
getRegionsResultDecoder =
    JDP.decode GetRegionsResult
        |> JDP.optional "regions" (JD.nullable (JD.list regionDecoder)) Nothing




{-| Type of HTTP response from getStatic
-}
type alias GetStaticIpResult =
    { staticIp : Maybe StaticIp
    }



getStaticIpResultDecoder : JD.Decoder GetStaticIpResult
getStaticIpResultDecoder =
    JDP.decode GetStaticIpResult
        |> JDP.optional "staticIp" (JD.nullable staticIpDecoder) Nothing




{-| Type of HTTP response from getStaticI
-}
type alias GetStaticIpsResult =
    { staticIps : Maybe (List StaticIp)
    , nextPageToken : Maybe String
    }



getStaticIpsResultDecoder : JD.Decoder GetStaticIpsResult
getStaticIpsResultDecoder =
    JDP.decode GetStaticIpsResult
        |> JDP.optional "staticIps" (JD.nullable (JD.list staticIpDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from importKeyPa
-}
type alias ImportKeyPairResult =
    { operation : Maybe Operation
    }



importKeyPairResultDecoder : JD.Decoder ImportKeyPairResult
importKeyPairResultDecoder =
    JDP.decode ImportKeyPairResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| <p>Describes an instance (a virtual private server).</p>
-}
type alias Instance =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Date
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , blueprintId : Maybe String
    , blueprintName : Maybe String
    , bundleId : Maybe String
    , isStaticIp : Maybe Bool
    , privateIpAddress : Maybe String
    , publicIpAddress : Maybe String
    , ipv6Address : Maybe String
    , hardware : Maybe InstanceHardware
    , networking : Maybe InstanceNetworking
    , state : Maybe InstanceState
    , username : Maybe String
    , sshKeyName : Maybe String
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JDP.decode Instance
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "location" (JD.nullable resourceLocationDecoder) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "blueprintId" (JD.nullable JD.string) Nothing
        |> JDP.optional "blueprintName" (JD.nullable JD.string) Nothing
        |> JDP.optional "bundleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isStaticIp" (JD.nullable JD.bool) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6Address" (JD.nullable JD.string) Nothing
        |> JDP.optional "hardware" (JD.nullable instanceHardwareDecoder) Nothing
        |> JDP.optional "networking" (JD.nullable instanceNetworkingDecoder) Nothing
        |> JDP.optional "state" (JD.nullable instanceStateDecoder) Nothing
        |> JDP.optional "username" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshKeyName" (JD.nullable JD.string) Nothing




{-| <p>The parameters for gaining temporary access to one of your Amazon Lightsail instances.</p>
-}
type alias InstanceAccessDetails =
    { certKey : Maybe String
    , expiresAt : Maybe Date
    , ipAddress : Maybe String
    , password : Maybe String
    , privateKey : Maybe String
    , protocol : Maybe InstanceAccessProtocol
    , instanceName : Maybe String
    , username : Maybe String
    }



instanceAccessDetailsDecoder : JD.Decoder InstanceAccessDetails
instanceAccessDetailsDecoder =
    JDP.decode InstanceAccessDetails
        |> JDP.optional "certKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiresAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "password" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "protocol" (JD.nullable instanceAccessProtocolDecoder) Nothing
        |> JDP.optional "instanceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "username" (JD.nullable JD.string) Nothing




{-| One of

* `InstanceAccessProtocol_ssh`
* `InstanceAccessProtocol_rdp`

-}
type InstanceAccessProtocol
    = InstanceAccessProtocol_ssh
    | InstanceAccessProtocol_rdp



instanceAccessProtocolDecoder : JD.Decoder InstanceAccessProtocol
instanceAccessProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ssh" ->
                        JD.succeed InstanceAccessProtocol_ssh

                    "rdp" ->
                        JD.succeed InstanceAccessProtocol_rdp


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the hardware for the instance.</p>
-}
type alias InstanceHardware =
    { cpuCount : Maybe Int
    , disks : Maybe (List Disk)
    , ramSizeInGb : Maybe Float
    }



instanceHardwareDecoder : JD.Decoder InstanceHardware
instanceHardwareDecoder =
    JDP.decode InstanceHardware
        |> JDP.optional "cpuCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "disks" (JD.nullable (JD.list diskDecoder)) Nothing
        |> JDP.optional "ramSizeInGb" (JD.nullable JD.float) Nothing




{-| One of

* `InstanceMetricName_CPUUtilization`
* `InstanceMetricName_NetworkIn`
* `InstanceMetricName_NetworkOut`
* `InstanceMetricName_StatusCheckFailed`
* `InstanceMetricName_StatusCheckFailed_Instance`
* `InstanceMetricName_StatusCheckFailed_System`

-}
type InstanceMetricName
    = InstanceMetricName_CPUUtilization
    | InstanceMetricName_NetworkIn
    | InstanceMetricName_NetworkOut
    | InstanceMetricName_StatusCheckFailed
    | InstanceMetricName_StatusCheckFailed_Instance
    | InstanceMetricName_StatusCheckFailed_System



instanceMetricNameDecoder : JD.Decoder InstanceMetricName
instanceMetricNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CPUUtilization" ->
                        JD.succeed InstanceMetricName_CPUUtilization

                    "NetworkIn" ->
                        JD.succeed InstanceMetricName_NetworkIn

                    "NetworkOut" ->
                        JD.succeed InstanceMetricName_NetworkOut

                    "StatusCheckFailed" ->
                        JD.succeed InstanceMetricName_StatusCheckFailed

                    "StatusCheckFailed_Instance" ->
                        JD.succeed InstanceMetricName_StatusCheckFailed_Instance

                    "StatusCheckFailed_System" ->
                        JD.succeed InstanceMetricName_StatusCheckFailed_System


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes monthly data transfer rates and port information for an instance.</p>
-}
type alias InstanceNetworking =
    { monthlyTransfer : Maybe MonthlyTransfer
    , ports : Maybe (List InstancePortInfo)
    }



instanceNetworkingDecoder : JD.Decoder InstanceNetworking
instanceNetworkingDecoder =
    JDP.decode InstanceNetworking
        |> JDP.optional "monthlyTransfer" (JD.nullable monthlyTransferDecoder) Nothing
        |> JDP.optional "ports" (JD.nullable (JD.list instancePortInfoDecoder)) Nothing




{-| <p>Describes information about the instance ports.</p>
-}
type alias InstancePortInfo =
    { fromPort : Maybe Int
    , toPort : Maybe Int
    , protocol : Maybe NetworkProtocol
    , accessFrom : Maybe String
    , accessType : Maybe PortAccessType
    , commonName : Maybe String
    , accessDirection : Maybe AccessDirection
    }



instancePortInfoDecoder : JD.Decoder InstancePortInfo
instancePortInfoDecoder =
    JDP.decode InstancePortInfo
        |> JDP.optional "fromPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "toPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "protocol" (JD.nullable networkProtocolDecoder) Nothing
        |> JDP.optional "accessFrom" (JD.nullable JD.string) Nothing
        |> JDP.optional "accessType" (JD.nullable portAccessTypeDecoder) Nothing
        |> JDP.optional "commonName" (JD.nullable JD.string) Nothing
        |> JDP.optional "accessDirection" (JD.nullable accessDirectionDecoder) Nothing




{-| <p>Describes the snapshot of the virtual private server, or <i>instance</i>.</p>
-}
type alias InstanceSnapshot =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Date
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , state : Maybe InstanceSnapshotState
    , progress : Maybe String
    , fromInstanceName : Maybe String
    , fromInstanceArn : Maybe String
    , fromBlueprintId : Maybe String
    , fromBundleId : Maybe String
    , sizeInGb : Maybe Int
    }



instanceSnapshotDecoder : JD.Decoder InstanceSnapshot
instanceSnapshotDecoder =
    JDP.decode InstanceSnapshot
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "location" (JD.nullable resourceLocationDecoder) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "state" (JD.nullable instanceSnapshotStateDecoder) Nothing
        |> JDP.optional "progress" (JD.nullable JD.string) Nothing
        |> JDP.optional "fromInstanceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "fromInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "fromBlueprintId" (JD.nullable JD.string) Nothing
        |> JDP.optional "fromBundleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "sizeInGb" (JD.nullable JD.int) Nothing




{-| One of

* `InstanceSnapshotState_pending`
* `InstanceSnapshotState_error`
* `InstanceSnapshotState_available`

-}
type InstanceSnapshotState
    = InstanceSnapshotState_pending
    | InstanceSnapshotState_error
    | InstanceSnapshotState_available



instanceSnapshotStateDecoder : JD.Decoder InstanceSnapshotState
instanceSnapshotStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed InstanceSnapshotState_pending

                    "error" ->
                        JD.succeed InstanceSnapshotState_error

                    "available" ->
                        JD.succeed InstanceSnapshotState_available


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the virtual private server (or <i>instance</i>) status.</p>
-}
type alias InstanceState =
    { code : Maybe Int
    , name : Maybe String
    }



instanceStateDecoder : JD.Decoder InstanceState
instanceStateDecoder =
    JDP.decode InstanceState
        |> JDP.optional "code" (JD.nullable JD.int) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Lightsail throws this exception when user input does not conform to the validation rules of an input field.</p>
-}
type alias InvalidInputException =
    { code : Maybe String
    , docs : Maybe String
    , message : Maybe String
    , tip : Maybe String
    }



invalidInputExceptionDecoder : JD.Decoder InvalidInputException
invalidInputExceptionDecoder =
    JDP.decode InvalidInputException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "docs" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "tip" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from isVpcPeer
-}
type alias IsVpcPeeredResult =
    { isPeered : Maybe Bool
    }



isVpcPeeredResultDecoder : JD.Decoder IsVpcPeeredResult
isVpcPeeredResultDecoder =
    JDP.decode IsVpcPeeredResult
        |> JDP.optional "isPeered" (JD.nullable JD.bool) Nothing




{-| <p>Describes the SSH key pair.</p>
-}
type alias KeyPair =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Date
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , fingerprint : Maybe String
    }



keyPairDecoder : JD.Decoder KeyPair
keyPairDecoder =
    JDP.decode KeyPair
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "location" (JD.nullable resourceLocationDecoder) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "fingerprint" (JD.nullable JD.string) Nothing




{-| <p>Describes the metric data point.</p>
-}
type alias MetricDatapoint =
    { average : Maybe Float
    , maximum : Maybe Float
    , minimum : Maybe Float
    , sampleCount : Maybe Float
    , sum : Maybe Float
    , timestamp : Maybe Date
    , unit : Maybe MetricUnit
    }



metricDatapointDecoder : JD.Decoder MetricDatapoint
metricDatapointDecoder =
    JDP.decode MetricDatapoint
        |> JDP.optional "average" (JD.nullable JD.float) Nothing
        |> JDP.optional "maximum" (JD.nullable JD.float) Nothing
        |> JDP.optional "minimum" (JD.nullable JD.float) Nothing
        |> JDP.optional "sampleCount" (JD.nullable JD.float) Nothing
        |> JDP.optional "sum" (JD.nullable JD.float) Nothing
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "unit" (JD.nullable metricUnitDecoder) Nothing




{-| One of

* `MetricStatistic_Minimum`
* `MetricStatistic_Maximum`
* `MetricStatistic_Sum`
* `MetricStatistic_Average`
* `MetricStatistic_SampleCount`

-}
type MetricStatistic
    = MetricStatistic_Minimum
    | MetricStatistic_Maximum
    | MetricStatistic_Sum
    | MetricStatistic_Average
    | MetricStatistic_SampleCount



metricStatisticDecoder : JD.Decoder MetricStatistic
metricStatisticDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Minimum" ->
                        JD.succeed MetricStatistic_Minimum

                    "Maximum" ->
                        JD.succeed MetricStatistic_Maximum

                    "Sum" ->
                        JD.succeed MetricStatistic_Sum

                    "Average" ->
                        JD.succeed MetricStatistic_Average

                    "SampleCount" ->
                        JD.succeed MetricStatistic_SampleCount


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `MetricUnit_Seconds`
* `MetricUnit_Microseconds`
* `MetricUnit_Milliseconds`
* `MetricUnit_Bytes`
* `MetricUnit_Kilobytes`
* `MetricUnit_Megabytes`
* `MetricUnit_Gigabytes`
* `MetricUnit_Terabytes`
* `MetricUnit_Bits`
* `MetricUnit_Kilobits`
* `MetricUnit_Megabits`
* `MetricUnit_Gigabits`
* `MetricUnit_Terabits`
* `MetricUnit_Percent`
* `MetricUnit_Count`
* `MetricUnit_Bytes/Second`
* `MetricUnit_Kilobytes/Second`
* `MetricUnit_Megabytes/Second`
* `MetricUnit_Gigabytes/Second`
* `MetricUnit_Terabytes/Second`
* `MetricUnit_Bits/Second`
* `MetricUnit_Kilobits/Second`
* `MetricUnit_Megabits/Second`
* `MetricUnit_Gigabits/Second`
* `MetricUnit_Terabits/Second`
* `MetricUnit_Count/Second`
* `MetricUnit_None`

-}
type MetricUnit
    = MetricUnit_Seconds
    | MetricUnit_Microseconds
    | MetricUnit_Milliseconds
    | MetricUnit_Bytes
    | MetricUnit_Kilobytes
    | MetricUnit_Megabytes
    | MetricUnit_Gigabytes
    | MetricUnit_Terabytes
    | MetricUnit_Bits
    | MetricUnit_Kilobits
    | MetricUnit_Megabits
    | MetricUnit_Gigabits
    | MetricUnit_Terabits
    | MetricUnit_Percent
    | MetricUnit_Count
    | MetricUnit_Bytes_Second
    | MetricUnit_Kilobytes_Second
    | MetricUnit_Megabytes_Second
    | MetricUnit_Gigabytes_Second
    | MetricUnit_Terabytes_Second
    | MetricUnit_Bits_Second
    | MetricUnit_Kilobits_Second
    | MetricUnit_Megabits_Second
    | MetricUnit_Gigabits_Second
    | MetricUnit_Terabits_Second
    | MetricUnit_Count_Second
    | MetricUnit_None



metricUnitDecoder : JD.Decoder MetricUnit
metricUnitDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Seconds" ->
                        JD.succeed MetricUnit_Seconds

                    "Microseconds" ->
                        JD.succeed MetricUnit_Microseconds

                    "Milliseconds" ->
                        JD.succeed MetricUnit_Milliseconds

                    "Bytes" ->
                        JD.succeed MetricUnit_Bytes

                    "Kilobytes" ->
                        JD.succeed MetricUnit_Kilobytes

                    "Megabytes" ->
                        JD.succeed MetricUnit_Megabytes

                    "Gigabytes" ->
                        JD.succeed MetricUnit_Gigabytes

                    "Terabytes" ->
                        JD.succeed MetricUnit_Terabytes

                    "Bits" ->
                        JD.succeed MetricUnit_Bits

                    "Kilobits" ->
                        JD.succeed MetricUnit_Kilobits

                    "Megabits" ->
                        JD.succeed MetricUnit_Megabits

                    "Gigabits" ->
                        JD.succeed MetricUnit_Gigabits

                    "Terabits" ->
                        JD.succeed MetricUnit_Terabits

                    "Percent" ->
                        JD.succeed MetricUnit_Percent

                    "Count" ->
                        JD.succeed MetricUnit_Count

                    "Bytes_Second" ->
                        JD.succeed MetricUnit_Bytes_Second

                    "Kilobytes_Second" ->
                        JD.succeed MetricUnit_Kilobytes_Second

                    "Megabytes_Second" ->
                        JD.succeed MetricUnit_Megabytes_Second

                    "Gigabytes_Second" ->
                        JD.succeed MetricUnit_Gigabytes_Second

                    "Terabytes_Second" ->
                        JD.succeed MetricUnit_Terabytes_Second

                    "Bits_Second" ->
                        JD.succeed MetricUnit_Bits_Second

                    "Kilobits_Second" ->
                        JD.succeed MetricUnit_Kilobits_Second

                    "Megabits_Second" ->
                        JD.succeed MetricUnit_Megabits_Second

                    "Gigabits_Second" ->
                        JD.succeed MetricUnit_Gigabits_Second

                    "Terabits_Second" ->
                        JD.succeed MetricUnit_Terabits_Second

                    "Count_Second" ->
                        JD.succeed MetricUnit_Count_Second

                    "None" ->
                        JD.succeed MetricUnit_None


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the monthly data transfer in and out of your virtual private server (or <i>instance</i>).</p>
-}
type alias MonthlyTransfer =
    { gbPerMonthAllocated : Maybe Int
    }



monthlyTransferDecoder : JD.Decoder MonthlyTransfer
monthlyTransferDecoder =
    JDP.decode MonthlyTransfer
        |> JDP.optional "gbPerMonthAllocated" (JD.nullable JD.int) Nothing




{-| One of

* `NetworkProtocol_tcp`
* `NetworkProtocol_all`
* `NetworkProtocol_udp`

-}
type NetworkProtocol
    = NetworkProtocol_tcp
    | NetworkProtocol_all
    | NetworkProtocol_udp



networkProtocolDecoder : JD.Decoder NetworkProtocol
networkProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "tcp" ->
                        JD.succeed NetworkProtocol_tcp

                    "all" ->
                        JD.succeed NetworkProtocol_all

                    "udp" ->
                        JD.succeed NetworkProtocol_udp


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Lightsail throws this exception when it cannot find a resource.</p>
-}
type alias NotFoundException =
    { code : Maybe String
    , docs : Maybe String
    , message : Maybe String
    , tip : Maybe String
    }



notFoundExceptionDecoder : JD.Decoder NotFoundException
notFoundExceptionDecoder =
    JDP.decode NotFoundException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "docs" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "tip" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from openInstancePublicPor
-}
type alias OpenInstancePublicPortsResult =
    { operation : Maybe Operation
    }



openInstancePublicPortsResultDecoder : JD.Decoder OpenInstancePublicPortsResult
openInstancePublicPortsResultDecoder =
    JDP.decode OpenInstancePublicPortsResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| <p>Describes the API operation.</p>
-}
type alias Operation =
    { id : Maybe String
    , resourceName : Maybe String
    , resourceType : Maybe ResourceType
    , createdAt : Maybe Date
    , location : Maybe ResourceLocation
    , isTerminal : Maybe Bool
    , operationDetails : Maybe String
    , operationType : Maybe OperationType
    , status : Maybe OperationStatus
    , statusChangedAt : Maybe Date
    , errorCode : Maybe String
    , errorDetails : Maybe String
    }



operationDecoder : JD.Decoder Operation
operationDecoder =
    JDP.decode Operation
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "location" (JD.nullable resourceLocationDecoder) Nothing
        |> JDP.optional "isTerminal" (JD.nullable JD.bool) Nothing
        |> JDP.optional "operationDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "operationType" (JD.nullable operationTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable operationStatusDecoder) Nothing
        |> JDP.optional "statusChangedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorDetails" (JD.nullable JD.string) Nothing




{-| <p>Lightsail throws this exception when an operation fails to execute.</p>
-}
type alias OperationFailureException =
    { code : Maybe String
    , docs : Maybe String
    , message : Maybe String
    , tip : Maybe String
    }



operationFailureExceptionDecoder : JD.Decoder OperationFailureException
operationFailureExceptionDecoder =
    JDP.decode OperationFailureException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "docs" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "tip" (JD.nullable JD.string) Nothing




{-| One of

* `OperationStatus_NotStarted`
* `OperationStatus_Started`
* `OperationStatus_Failed`
* `OperationStatus_Completed`

-}
type OperationStatus
    = OperationStatus_NotStarted
    | OperationStatus_Started
    | OperationStatus_Failed
    | OperationStatus_Completed



operationStatusDecoder : JD.Decoder OperationStatus
operationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NotStarted" ->
                        JD.succeed OperationStatus_NotStarted

                    "Started" ->
                        JD.succeed OperationStatus_Started

                    "Failed" ->
                        JD.succeed OperationStatus_Failed

                    "Completed" ->
                        JD.succeed OperationStatus_Completed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `OperationType_DeleteInstance`
* `OperationType_CreateInstance`
* `OperationType_StopInstance`
* `OperationType_StartInstance`
* `OperationType_RebootInstance`
* `OperationType_OpenInstancePublicPorts`
* `OperationType_CloseInstancePublicPorts`
* `OperationType_AllocateStaticIp`
* `OperationType_ReleaseStaticIp`
* `OperationType_AttachStaticIp`
* `OperationType_DetachStaticIp`
* `OperationType_UpdateDomainEntry`
* `OperationType_DeleteDomainEntry`
* `OperationType_CreateDomain`
* `OperationType_DeleteDomain`
* `OperationType_CreateInstanceSnapshot`
* `OperationType_DeleteInstanceSnapshot`
* `OperationType_CreateInstancesFromSnapshot`

-}
type OperationType
    = OperationType_DeleteInstance
    | OperationType_CreateInstance
    | OperationType_StopInstance
    | OperationType_StartInstance
    | OperationType_RebootInstance
    | OperationType_OpenInstancePublicPorts
    | OperationType_CloseInstancePublicPorts
    | OperationType_AllocateStaticIp
    | OperationType_ReleaseStaticIp
    | OperationType_AttachStaticIp
    | OperationType_DetachStaticIp
    | OperationType_UpdateDomainEntry
    | OperationType_DeleteDomainEntry
    | OperationType_CreateDomain
    | OperationType_DeleteDomain
    | OperationType_CreateInstanceSnapshot
    | OperationType_DeleteInstanceSnapshot
    | OperationType_CreateInstancesFromSnapshot



operationTypeDecoder : JD.Decoder OperationType
operationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DeleteInstance" ->
                        JD.succeed OperationType_DeleteInstance

                    "CreateInstance" ->
                        JD.succeed OperationType_CreateInstance

                    "StopInstance" ->
                        JD.succeed OperationType_StopInstance

                    "StartInstance" ->
                        JD.succeed OperationType_StartInstance

                    "RebootInstance" ->
                        JD.succeed OperationType_RebootInstance

                    "OpenInstancePublicPorts" ->
                        JD.succeed OperationType_OpenInstancePublicPorts

                    "CloseInstancePublicPorts" ->
                        JD.succeed OperationType_CloseInstancePublicPorts

                    "AllocateStaticIp" ->
                        JD.succeed OperationType_AllocateStaticIp

                    "ReleaseStaticIp" ->
                        JD.succeed OperationType_ReleaseStaticIp

                    "AttachStaticIp" ->
                        JD.succeed OperationType_AttachStaticIp

                    "DetachStaticIp" ->
                        JD.succeed OperationType_DetachStaticIp

                    "UpdateDomainEntry" ->
                        JD.succeed OperationType_UpdateDomainEntry

                    "DeleteDomainEntry" ->
                        JD.succeed OperationType_DeleteDomainEntry

                    "CreateDomain" ->
                        JD.succeed OperationType_CreateDomain

                    "DeleteDomain" ->
                        JD.succeed OperationType_DeleteDomain

                    "CreateInstanceSnapshot" ->
                        JD.succeed OperationType_CreateInstanceSnapshot

                    "DeleteInstanceSnapshot" ->
                        JD.succeed OperationType_DeleteInstanceSnapshot

                    "CreateInstancesFromSnapshot" ->
                        JD.succeed OperationType_CreateInstancesFromSnapshot


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from peerV
-}
type alias PeerVpcResult =
    { operation : Maybe Operation
    }



peerVpcResultDecoder : JD.Decoder PeerVpcResult
peerVpcResultDecoder =
    JDP.decode PeerVpcResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| One of

* `PortAccessType_Public`
* `PortAccessType_Private`

-}
type PortAccessType
    = PortAccessType_Public
    | PortAccessType_Private



portAccessTypeDecoder : JD.Decoder PortAccessType
portAccessTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Public" ->
                        JD.succeed PortAccessType_Public

                    "Private" ->
                        JD.succeed PortAccessType_Private


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes information about the ports on your virtual private server (or <i>instance</i>).</p>
-}
type alias PortInfo =
    { fromPort : Maybe Int
    , toPort : Maybe Int
    , protocol : Maybe NetworkProtocol
    }



portInfoDecoder : JD.Decoder PortInfo
portInfoDecoder =
    JDP.decode PortInfo
        |> JDP.optional "fromPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "toPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "protocol" (JD.nullable networkProtocolDecoder) Nothing




{-| One of

* `PortState_open`
* `PortState_closed`

-}
type PortState
    = PortState_open
    | PortState_closed



portStateDecoder : JD.Decoder PortState
portStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "open" ->
                        JD.succeed PortState_open

                    "closed" ->
                        JD.succeed PortState_closed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from rebootInstan
-}
type alias RebootInstanceResult =
    { operations : Maybe (List Operation)
    }



rebootInstanceResultDecoder : JD.Decoder RebootInstanceResult
rebootInstanceResultDecoder =
    JDP.decode RebootInstanceResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| <p>Describes the AWS Region.</p>
-}
type alias Region =
    { continentCode : Maybe String
    , description : Maybe String
    , displayName : Maybe String
    , name : Maybe RegionName
    , availabilityZones : Maybe (List AvailabilityZone)
    }



regionDecoder : JD.Decoder Region
regionDecoder =
    JDP.decode Region
        |> JDP.optional "continentCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayName" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable regionNameDecoder) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list availabilityZoneDecoder)) Nothing




{-| One of

* `RegionName_us-east-1`
* `RegionName_us-west-1`
* `RegionName_us-west-2`
* `RegionName_eu-west-1`
* `RegionName_eu-central-1`
* `RegionName_ap-south-1`
* `RegionName_ap-southeast-1`
* `RegionName_ap-southeast-2`
* `RegionName_ap-northeast-1`
* `RegionName_ap-northeast-2`

-}
type RegionName
    = RegionName_us_east_1
    | RegionName_us_west_1
    | RegionName_us_west_2
    | RegionName_eu_west_1
    | RegionName_eu_central_1
    | RegionName_ap_south_1
    | RegionName_ap_southeast_1
    | RegionName_ap_southeast_2
    | RegionName_ap_northeast_1
    | RegionName_ap_northeast_2



regionNameDecoder : JD.Decoder RegionName
regionNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "us_east_1" ->
                        JD.succeed RegionName_us_east_1

                    "us_west_1" ->
                        JD.succeed RegionName_us_west_1

                    "us_west_2" ->
                        JD.succeed RegionName_us_west_2

                    "eu_west_1" ->
                        JD.succeed RegionName_eu_west_1

                    "eu_central_1" ->
                        JD.succeed RegionName_eu_central_1

                    "ap_south_1" ->
                        JD.succeed RegionName_ap_south_1

                    "ap_southeast_1" ->
                        JD.succeed RegionName_ap_southeast_1

                    "ap_southeast_2" ->
                        JD.succeed RegionName_ap_southeast_2

                    "ap_northeast_1" ->
                        JD.succeed RegionName_ap_northeast_1

                    "ap_northeast_2" ->
                        JD.succeed RegionName_ap_northeast_2


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from releaseStatic
-}
type alias ReleaseStaticIpResult =
    { operations : Maybe (List Operation)
    }



releaseStaticIpResultDecoder : JD.Decoder ReleaseStaticIpResult
releaseStaticIpResultDecoder =
    JDP.decode ReleaseStaticIpResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| <p>Describes the resource location.</p>
-}
type alias ResourceLocation =
    { availabilityZone : Maybe String
    , regionName : Maybe RegionName
    }



resourceLocationDecoder : JD.Decoder ResourceLocation
resourceLocationDecoder =
    JDP.decode ResourceLocation
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "regionName" (JD.nullable regionNameDecoder) Nothing




{-| One of

* `ResourceType_Instance`
* `ResourceType_StaticIp`
* `ResourceType_KeyPair`
* `ResourceType_InstanceSnapshot`
* `ResourceType_Domain`
* `ResourceType_PeeredVpc`

-}
type ResourceType
    = ResourceType_Instance
    | ResourceType_StaticIp
    | ResourceType_KeyPair
    | ResourceType_InstanceSnapshot
    | ResourceType_Domain
    | ResourceType_PeeredVpc



resourceTypeDecoder : JD.Decoder ResourceType
resourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Instance" ->
                        JD.succeed ResourceType_Instance

                    "StaticIp" ->
                        JD.succeed ResourceType_StaticIp

                    "KeyPair" ->
                        JD.succeed ResourceType_KeyPair

                    "InstanceSnapshot" ->
                        JD.succeed ResourceType_InstanceSnapshot

                    "Domain" ->
                        JD.succeed ResourceType_Domain

                    "PeeredVpc" ->
                        JD.succeed ResourceType_PeeredVpc


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A general service exception.</p>
-}
type alias ServiceException =
    { code : Maybe String
    , docs : Maybe String
    , message : Maybe String
    , tip : Maybe String
    }



serviceExceptionDecoder : JD.Decoder ServiceException
serviceExceptionDecoder =
    JDP.decode ServiceException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "docs" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "tip" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from startInstan
-}
type alias StartInstanceResult =
    { operations : Maybe (List Operation)
    }



startInstanceResultDecoder : JD.Decoder StartInstanceResult
startInstanceResultDecoder =
    JDP.decode StartInstanceResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| <p>Describes the static IP.</p>
-}
type alias StaticIp =
    { name : Maybe String
    , arn : Maybe String
    , supportCode : Maybe String
    , createdAt : Maybe Date
    , location : Maybe ResourceLocation
    , resourceType : Maybe ResourceType
    , ipAddress : Maybe String
    , attachedTo : Maybe String
    , isAttached : Maybe Bool
    }



staticIpDecoder : JD.Decoder StaticIp
staticIpDecoder =
    JDP.decode StaticIp
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "location" (JD.nullable resourceLocationDecoder) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "attachedTo" (JD.nullable JD.string) Nothing
        |> JDP.optional "isAttached" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from stopInstan
-}
type alias StopInstanceResult =
    { operations : Maybe (List Operation)
    }



stopInstanceResultDecoder : JD.Decoder StopInstanceResult
stopInstanceResultDecoder =
    JDP.decode StopInstanceResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




{-| <p>Lightsail throws this exception when the user has not been authenticated.</p>
-}
type alias UnauthenticatedException =
    { code : Maybe String
    , docs : Maybe String
    , message : Maybe String
    , tip : Maybe String
    }



unauthenticatedExceptionDecoder : JD.Decoder UnauthenticatedException
unauthenticatedExceptionDecoder =
    JDP.decode UnauthenticatedException
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "docs" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "tip" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from unpeerV
-}
type alias UnpeerVpcResult =
    { operation : Maybe Operation
    }



unpeerVpcResultDecoder : JD.Decoder UnpeerVpcResult
unpeerVpcResultDecoder =
    JDP.decode UnpeerVpcResult
        |> JDP.optional "operation" (JD.nullable operationDecoder) Nothing




{-| Type of HTTP response from updateDomainEnt
-}
type alias UpdateDomainEntryResult =
    { operations : Maybe (List Operation)
    }



updateDomainEntryResultDecoder : JD.Decoder UpdateDomainEntryResult
updateDomainEntryResultDecoder =
    JDP.decode UpdateDomainEntryResult
        |> JDP.optional "operations" (JD.nullable (JD.list operationDecoder)) Nothing




