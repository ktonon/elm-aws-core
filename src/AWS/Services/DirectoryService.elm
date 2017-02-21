module AWS.Services.DirectoryService
    exposing
        ( config
        , addIpRoutes
        , AddIpRoutesOptions
        , addTagsToResource
        , cancelSchemaExtension
        , connectDirectory
        , ConnectDirectoryOptions
        , createAlias
        , createComputer
        , CreateComputerOptions
        , createConditionalForwarder
        , createDirectory
        , CreateDirectoryOptions
        , createMicrosoftAD
        , CreateMicrosoftADOptions
        , createSnapshot
        , CreateSnapshotOptions
        , createTrust
        , CreateTrustOptions
        , deleteConditionalForwarder
        , deleteDirectory
        , deleteSnapshot
        , deleteTrust
        , DeleteTrustOptions
        , deregisterEventTopic
        , describeConditionalForwarders
        , DescribeConditionalForwardersOptions
        , describeDirectories
        , DescribeDirectoriesOptions
        , describeEventTopics
        , DescribeEventTopicsOptions
        , describeSnapshots
        , DescribeSnapshotsOptions
        , describeTrusts
        , DescribeTrustsOptions
        , disableRadius
        , disableSso
        , DisableSsoOptions
        , enableRadius
        , enableSso
        , EnableSsoOptions
        , getDirectoryLimits
        , getSnapshotLimits
        , listIpRoutes
        , ListIpRoutesOptions
        , listSchemaExtensions
        , ListSchemaExtensionsOptions
        , listTagsForResource
        , ListTagsForResourceOptions
        , registerEventTopic
        , removeIpRoutes
        , removeTagsFromResource
        , restoreFromSnapshot
        , startSchemaExtension
        , updateConditionalForwarder
        , updateRadius
        , verifyTrust
        , AddIpRoutesResult
        , AddTagsToResourceResult
        , Attribute
        , AuthenticationFailedException
        , CancelSchemaExtensionResult
        , ClientException
        , Computer
        , ConditionalForwarder
        , ConnectDirectoryResult
        , CreateAliasResult
        , CreateComputerResult
        , CreateConditionalForwarderResult
        , CreateDirectoryResult
        , CreateMicrosoftADResult
        , CreateSnapshotResult
        , CreateTrustResult
        , DeleteConditionalForwarderResult
        , DeleteDirectoryResult
        , DeleteSnapshotResult
        , DeleteTrustResult
        , DeregisterEventTopicResult
        , DescribeConditionalForwardersResult
        , DescribeDirectoriesResult
        , DescribeEventTopicsResult
        , DescribeSnapshotsResult
        , DescribeTrustsResult
        , DirectoryConnectSettings
        , DirectoryConnectSettingsDescription
        , DirectoryDescription
        , DirectoryLimitExceededException
        , DirectoryLimits
        , DirectorySize(..)
        , DirectoryStage(..)
        , DirectoryType(..)
        , DirectoryUnavailableException
        , DirectoryVpcSettings
        , DirectoryVpcSettingsDescription
        , DisableRadiusResult
        , DisableSsoResult
        , EnableRadiusResult
        , EnableSsoResult
        , EntityAlreadyExistsException
        , EntityDoesNotExistException
        , EventTopic
        , GetDirectoryLimitsResult
        , GetSnapshotLimitsResult
        , InsufficientPermissionsException
        , InvalidNextTokenException
        , InvalidParameterException
        , IpRoute
        , IpRouteInfo
        , IpRouteLimitExceededException
        , IpRouteStatusMsg(..)
        , ListIpRoutesResult
        , ListSchemaExtensionsResult
        , ListTagsForResourceResult
        , RadiusAuthenticationProtocol(..)
        , RadiusSettings
        , RadiusStatus(..)
        , RegisterEventTopicResult
        , RemoveIpRoutesResult
        , RemoveTagsFromResourceResult
        , ReplicationScope(..)
        , RestoreFromSnapshotResult
        , SchemaExtensionInfo
        , SchemaExtensionStatus(..)
        , ServiceException
        , Snapshot
        , SnapshotLimitExceededException
        , SnapshotLimits
        , SnapshotStatus(..)
        , SnapshotType(..)
        , StartSchemaExtensionResult
        , Tag
        , TagLimitExceededException
        , TopicStatus(..)
        , Trust
        , TrustDirection(..)
        , TrustState(..)
        , TrustType(..)
        , UnsupportedOperationException
        , UpdateConditionalForwarderResult
        , UpdateRadiusResult
        , VerifyTrustResult
        )

{-| <fullname>AWS Directory Service</fullname> <p>AWS Directory Service is a web service that makes it easy for you to setup and run directories in the AWS cloud, or connect your AWS resources with an existing on-premises Microsoft Active Directory. This guide provides detailed information about AWS Directory Service operations, data types, parameters, and errors. For information about AWS Directory Services features, see <a href="https://aws.amazon.com/directoryservice/">AWS Directory Service</a> and the <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html">AWS Directory Service Administration Guide</a>.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS Directory Service and other AWS services. For more information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addIpRoutes](#addIpRoutes)
* [AddIpRoutesOptions](#AddIpRoutesOptions)
* [addTagsToResource](#addTagsToResource)
* [cancelSchemaExtension](#cancelSchemaExtension)
* [connectDirectory](#connectDirectory)
* [ConnectDirectoryOptions](#ConnectDirectoryOptions)
* [createAlias](#createAlias)
* [createComputer](#createComputer)
* [CreateComputerOptions](#CreateComputerOptions)
* [createConditionalForwarder](#createConditionalForwarder)
* [createDirectory](#createDirectory)
* [CreateDirectoryOptions](#CreateDirectoryOptions)
* [createMicrosoftAD](#createMicrosoftAD)
* [CreateMicrosoftADOptions](#CreateMicrosoftADOptions)
* [createSnapshot](#createSnapshot)
* [CreateSnapshotOptions](#CreateSnapshotOptions)
* [createTrust](#createTrust)
* [CreateTrustOptions](#CreateTrustOptions)
* [deleteConditionalForwarder](#deleteConditionalForwarder)
* [deleteDirectory](#deleteDirectory)
* [deleteSnapshot](#deleteSnapshot)
* [deleteTrust](#deleteTrust)
* [DeleteTrustOptions](#DeleteTrustOptions)
* [deregisterEventTopic](#deregisterEventTopic)
* [describeConditionalForwarders](#describeConditionalForwarders)
* [DescribeConditionalForwardersOptions](#DescribeConditionalForwardersOptions)
* [describeDirectories](#describeDirectories)
* [DescribeDirectoriesOptions](#DescribeDirectoriesOptions)
* [describeEventTopics](#describeEventTopics)
* [DescribeEventTopicsOptions](#DescribeEventTopicsOptions)
* [describeSnapshots](#describeSnapshots)
* [DescribeSnapshotsOptions](#DescribeSnapshotsOptions)
* [describeTrusts](#describeTrusts)
* [DescribeTrustsOptions](#DescribeTrustsOptions)
* [disableRadius](#disableRadius)
* [disableSso](#disableSso)
* [DisableSsoOptions](#DisableSsoOptions)
* [enableRadius](#enableRadius)
* [enableSso](#enableSso)
* [EnableSsoOptions](#EnableSsoOptions)
* [getDirectoryLimits](#getDirectoryLimits)
* [getSnapshotLimits](#getSnapshotLimits)
* [listIpRoutes](#listIpRoutes)
* [ListIpRoutesOptions](#ListIpRoutesOptions)
* [listSchemaExtensions](#listSchemaExtensions)
* [ListSchemaExtensionsOptions](#ListSchemaExtensionsOptions)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [registerEventTopic](#registerEventTopic)
* [removeIpRoutes](#removeIpRoutes)
* [removeTagsFromResource](#removeTagsFromResource)
* [restoreFromSnapshot](#restoreFromSnapshot)
* [startSchemaExtension](#startSchemaExtension)
* [updateConditionalForwarder](#updateConditionalForwarder)
* [updateRadius](#updateRadius)
* [verifyTrust](#verifyTrust)


@docs addIpRoutes,AddIpRoutesOptions,addTagsToResource,cancelSchemaExtension,connectDirectory,ConnectDirectoryOptions,createAlias,createComputer,CreateComputerOptions,createConditionalForwarder,createDirectory,CreateDirectoryOptions,createMicrosoftAD,CreateMicrosoftADOptions,createSnapshot,CreateSnapshotOptions,createTrust,CreateTrustOptions,deleteConditionalForwarder,deleteDirectory,deleteSnapshot,deleteTrust,DeleteTrustOptions,deregisterEventTopic,describeConditionalForwarders,DescribeConditionalForwardersOptions,describeDirectories,DescribeDirectoriesOptions,describeEventTopics,DescribeEventTopicsOptions,describeSnapshots,DescribeSnapshotsOptions,describeTrusts,DescribeTrustsOptions,disableRadius,disableSso,DisableSsoOptions,enableRadius,enableSso,EnableSsoOptions,getDirectoryLimits,getSnapshotLimits,listIpRoutes,ListIpRoutesOptions,listSchemaExtensions,ListSchemaExtensionsOptions,listTagsForResource,ListTagsForResourceOptions,registerEventTopic,removeIpRoutes,removeTagsFromResource,restoreFromSnapshot,startSchemaExtension,updateConditionalForwarder,updateRadius,verifyTrust

## Responses

* [AddIpRoutesResult](#AddIpRoutesResult)
* [AddTagsToResourceResult](#AddTagsToResourceResult)
* [CancelSchemaExtensionResult](#CancelSchemaExtensionResult)
* [ConnectDirectoryResult](#ConnectDirectoryResult)
* [CreateAliasResult](#CreateAliasResult)
* [CreateComputerResult](#CreateComputerResult)
* [CreateConditionalForwarderResult](#CreateConditionalForwarderResult)
* [CreateDirectoryResult](#CreateDirectoryResult)
* [CreateMicrosoftADResult](#CreateMicrosoftADResult)
* [CreateSnapshotResult](#CreateSnapshotResult)
* [CreateTrustResult](#CreateTrustResult)
* [DeleteConditionalForwarderResult](#DeleteConditionalForwarderResult)
* [DeleteDirectoryResult](#DeleteDirectoryResult)
* [DeleteSnapshotResult](#DeleteSnapshotResult)
* [DeleteTrustResult](#DeleteTrustResult)
* [DeregisterEventTopicResult](#DeregisterEventTopicResult)
* [DescribeConditionalForwardersResult](#DescribeConditionalForwardersResult)
* [DescribeDirectoriesResult](#DescribeDirectoriesResult)
* [DescribeEventTopicsResult](#DescribeEventTopicsResult)
* [DescribeSnapshotsResult](#DescribeSnapshotsResult)
* [DescribeTrustsResult](#DescribeTrustsResult)
* [DisableRadiusResult](#DisableRadiusResult)
* [DisableSsoResult](#DisableSsoResult)
* [EnableRadiusResult](#EnableRadiusResult)
* [EnableSsoResult](#EnableSsoResult)
* [GetDirectoryLimitsResult](#GetDirectoryLimitsResult)
* [GetSnapshotLimitsResult](#GetSnapshotLimitsResult)
* [ListIpRoutesResult](#ListIpRoutesResult)
* [ListSchemaExtensionsResult](#ListSchemaExtensionsResult)
* [ListTagsForResourceResult](#ListTagsForResourceResult)
* [RegisterEventTopicResult](#RegisterEventTopicResult)
* [RemoveIpRoutesResult](#RemoveIpRoutesResult)
* [RemoveTagsFromResourceResult](#RemoveTagsFromResourceResult)
* [RestoreFromSnapshotResult](#RestoreFromSnapshotResult)
* [StartSchemaExtensionResult](#StartSchemaExtensionResult)
* [UpdateConditionalForwarderResult](#UpdateConditionalForwarderResult)
* [UpdateRadiusResult](#UpdateRadiusResult)
* [VerifyTrustResult](#VerifyTrustResult)


@docs AddIpRoutesResult,AddTagsToResourceResult,CancelSchemaExtensionResult,ConnectDirectoryResult,CreateAliasResult,CreateComputerResult,CreateConditionalForwarderResult,CreateDirectoryResult,CreateMicrosoftADResult,CreateSnapshotResult,CreateTrustResult,DeleteConditionalForwarderResult,DeleteDirectoryResult,DeleteSnapshotResult,DeleteTrustResult,DeregisterEventTopicResult,DescribeConditionalForwardersResult,DescribeDirectoriesResult,DescribeEventTopicsResult,DescribeSnapshotsResult,DescribeTrustsResult,DisableRadiusResult,DisableSsoResult,EnableRadiusResult,EnableSsoResult,GetDirectoryLimitsResult,GetSnapshotLimitsResult,ListIpRoutesResult,ListSchemaExtensionsResult,ListTagsForResourceResult,RegisterEventTopicResult,RemoveIpRoutesResult,RemoveTagsFromResourceResult,RestoreFromSnapshotResult,StartSchemaExtensionResult,UpdateConditionalForwarderResult,UpdateRadiusResult,VerifyTrustResult

## Records

* [Attribute](#Attribute)
* [Computer](#Computer)
* [ConditionalForwarder](#ConditionalForwarder)
* [DirectoryConnectSettings](#DirectoryConnectSettings)
* [DirectoryConnectSettingsDescription](#DirectoryConnectSettingsDescription)
* [DirectoryDescription](#DirectoryDescription)
* [DirectoryLimits](#DirectoryLimits)
* [DirectoryVpcSettings](#DirectoryVpcSettings)
* [DirectoryVpcSettingsDescription](#DirectoryVpcSettingsDescription)
* [EventTopic](#EventTopic)
* [IpRoute](#IpRoute)
* [IpRouteInfo](#IpRouteInfo)
* [RadiusSettings](#RadiusSettings)
* [SchemaExtensionInfo](#SchemaExtensionInfo)
* [Snapshot](#Snapshot)
* [SnapshotLimits](#SnapshotLimits)
* [Tag](#Tag)
* [Trust](#Trust)


@docs Attribute,Computer,ConditionalForwarder,DirectoryConnectSettings,DirectoryConnectSettingsDescription,DirectoryDescription,DirectoryLimits,DirectoryVpcSettings,DirectoryVpcSettingsDescription,EventTopic,IpRoute,IpRouteInfo,RadiusSettings,SchemaExtensionInfo,Snapshot,SnapshotLimits,Tag,Trust

## Unions

* [DirectorySize](#DirectorySize)
* [DirectoryStage](#DirectoryStage)
* [DirectoryType](#DirectoryType)
* [IpRouteStatusMsg](#IpRouteStatusMsg)
* [RadiusAuthenticationProtocol](#RadiusAuthenticationProtocol)
* [RadiusStatus](#RadiusStatus)
* [ReplicationScope](#ReplicationScope)
* [SchemaExtensionStatus](#SchemaExtensionStatus)
* [SnapshotStatus](#SnapshotStatus)
* [SnapshotType](#SnapshotType)
* [TopicStatus](#TopicStatus)
* [TrustDirection](#TrustDirection)
* [TrustState](#TrustState)
* [TrustType](#TrustType)


@docs DirectorySize,DirectoryStage,DirectoryType,IpRouteStatusMsg,RadiusAuthenticationProtocol,RadiusStatus,ReplicationScope,SchemaExtensionStatus,SnapshotStatus,SnapshotType,TopicStatus,TrustDirection,TrustState,TrustType

## Exceptions

* [AuthenticationFailedException](#AuthenticationFailedException)
* [ClientException](#ClientException)
* [DirectoryLimitExceededException](#DirectoryLimitExceededException)
* [DirectoryUnavailableException](#DirectoryUnavailableException)
* [EntityAlreadyExistsException](#EntityAlreadyExistsException)
* [EntityDoesNotExistException](#EntityDoesNotExistException)
* [InsufficientPermissionsException](#InsufficientPermissionsException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidParameterException](#InvalidParameterException)
* [IpRouteLimitExceededException](#IpRouteLimitExceededException)
* [ServiceException](#ServiceException)
* [SnapshotLimitExceededException](#SnapshotLimitExceededException)
* [TagLimitExceededException](#TagLimitExceededException)
* [UnsupportedOperationException](#UnsupportedOperationException)


@docs AuthenticationFailedException,ClientException,DirectoryLimitExceededException,DirectoryUnavailableException,EntityAlreadyExistsException,EntityDoesNotExistException,InsufficientPermissionsException,InvalidNextTokenException,InvalidParameterException,IpRouteLimitExceededException,ServiceException,SnapshotLimitExceededException,TagLimitExceededException,UnsupportedOperationException

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
        "ds"
        "2015-04-16"
        "1.1"
        "AWSDS_20150416."
        "ds.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. <i>AddIpRoutes</i> adds this address block. You can also use <i>AddIpRoutes</i> to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC. </p> <p>Before you call <i>AddIpRoutes</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>AddIpRoutes</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `ipRoutes` __:__ `(List IpRoute)`


-}
addIpRoutes :
    String
    -> (List IpRoute)
    -> (AddIpRoutesOptions -> AddIpRoutesOptions)
    -> AWS.Http.UnsignedRequest AddIpRoutesResult
addIpRoutes directoryId ipRoutes setOptions =
  let
    options = setOptions (AddIpRoutesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AddIpRoutes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addIpRoutesResultDecoder


{-| Options for a addIpRoutes request
-}
type alias AddIpRoutesOptions =
    { updateSecurityGroupForDirectoryControllers : Maybe Bool
    }



{-| <p>Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTagsToResource :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest AddTagsToResourceResult
addTagsToResource resourceId tags =
    AWS.Http.unsignedRequest
        "AddTagsToResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsToResourceResultDecoder



{-| <p>Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; <code>Initializing</code>, <code>CreatingSnapshot</code>, and <code>UpdatingSchema</code>.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `schemaExtensionId` __:__ `String`


-}
cancelSchemaExtension :
    String
    -> String
    -> AWS.Http.UnsignedRequest CancelSchemaExtensionResult
cancelSchemaExtension directoryId schemaExtensionId =
    AWS.Http.unsignedRequest
        "CancelSchemaExtension"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelSchemaExtensionResultDecoder



{-| <p>Creates an AD Connector to connect to an on-premises directory.</p> <p>Before you call <i>ConnectDirectory</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>ConnectDirectory</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `password` __:__ `String`
* `size` __:__ `DirectorySize`
* `connectSettings` __:__ `DirectoryConnectSettings`


-}
connectDirectory :
    String
    -> String
    -> DirectorySize
    -> DirectoryConnectSettings
    -> (ConnectDirectoryOptions -> ConnectDirectoryOptions)
    -> AWS.Http.UnsignedRequest ConnectDirectoryResult
connectDirectory name password size connectSettings setOptions =
  let
    options = setOptions (ConnectDirectoryOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ConnectDirectory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        connectDirectoryResultDecoder


{-| Options for a connectDirectory request
-}
type alias ConnectDirectoryOptions =
    { shortName : Maybe String
    , description : Maybe String
    }



{-| <p>Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as <code>http://&lt;alias&gt;.awsapps.com</code>.</p> <important> <p>After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.</p> </important>

__Required Parameters__

* `directoryId` __:__ `String`
* `alias` __:__ `String`


-}
createAlias :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateAliasResult
createAlias directoryId alias =
    AWS.Http.unsignedRequest
        "CreateAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAliasResultDecoder



{-| <p>Creates a computer account in the specified directory, and joins the computer to the directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `computerName` __:__ `String`
* `password` __:__ `String`


-}
createComputer :
    String
    -> String
    -> String
    -> (CreateComputerOptions -> CreateComputerOptions)
    -> AWS.Http.UnsignedRequest CreateComputerResult
createComputer directoryId computerName password setOptions =
  let
    options = setOptions (CreateComputerOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateComputer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createComputerResultDecoder


{-| Options for a createComputer request
-}
type alias CreateComputerOptions =
    { organizationalUnitDistinguishedName : Maybe String
    , computerAttributes : Maybe (List Attribute)
    }



{-| <p>Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `remoteDomainName` __:__ `String`
* `dnsIpAddrs` __:__ `(List String)`


-}
createConditionalForwarder :
    String
    -> String
    -> (List String)
    -> AWS.Http.UnsignedRequest CreateConditionalForwarderResult
createConditionalForwarder directoryId remoteDomainName dnsIpAddrs =
    AWS.Http.unsignedRequest
        "CreateConditionalForwarder"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createConditionalForwarderResultDecoder



{-| <p>Creates a Simple AD directory.</p> <p>Before you call <i>CreateDirectory</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>CreateDirectory</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `password` __:__ `String`
* `size` __:__ `DirectorySize`


-}
createDirectory :
    String
    -> String
    -> DirectorySize
    -> (CreateDirectoryOptions -> CreateDirectoryOptions)
    -> AWS.Http.UnsignedRequest CreateDirectoryResult
createDirectory name password size setOptions =
  let
    options = setOptions (CreateDirectoryOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDirectory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDirectoryResultDecoder


{-| Options for a createDirectory request
-}
type alias CreateDirectoryOptions =
    { shortName : Maybe String
    , description : Maybe String
    , vpcSettings : Maybe DirectoryVpcSettings
    }



{-| <p>Creates a Microsoft AD in the AWS cloud.</p> <p>Before you call <i>CreateMicrosoftAD</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>CreateMicrosoftAD</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `password` __:__ `String`
* `vpcSettings` __:__ `DirectoryVpcSettings`


-}
createMicrosoftAD :
    String
    -> String
    -> DirectoryVpcSettings
    -> (CreateMicrosoftADOptions -> CreateMicrosoftADOptions)
    -> AWS.Http.UnsignedRequest CreateMicrosoftADResult
createMicrosoftAD name password vpcSettings setOptions =
  let
    options = setOptions (CreateMicrosoftADOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateMicrosoftAD"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createMicrosoftADResultDecoder


{-| Options for a createMicrosoftAD request
-}
type alias CreateMicrosoftADOptions =
    { shortName : Maybe String
    , description : Maybe String
    }



{-| <p>Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.</p> <note> <p>You cannot take snapshots of AD Connector directories.</p> </note>

__Required Parameters__

* `directoryId` __:__ `String`


-}
createSnapshot :
    String
    -> (CreateSnapshotOptions -> CreateSnapshotOptions)
    -> AWS.Http.UnsignedRequest CreateSnapshotResult
createSnapshot directoryId setOptions =
  let
    options = setOptions (CreateSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSnapshotResultDecoder


{-| Options for a createSnapshot request
-}
type alias CreateSnapshotOptions =
    { name : Maybe String
    }



{-| <p>AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your Microsoft AD in the AWS cloud, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials.</p> <p>This action initiates the creation of the AWS side of a trust relationship between a Microsoft AD in the AWS cloud and an external domain.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `remoteDomainName` __:__ `String`
* `trustPassword` __:__ `String`
* `trustDirection` __:__ `TrustDirection`


-}
createTrust :
    String
    -> String
    -> String
    -> TrustDirection
    -> (CreateTrustOptions -> CreateTrustOptions)
    -> AWS.Http.UnsignedRequest CreateTrustResult
createTrust directoryId remoteDomainName trustPassword trustDirection setOptions =
  let
    options = setOptions (CreateTrustOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateTrust"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTrustResultDecoder


{-| Options for a createTrust request
-}
type alias CreateTrustOptions =
    { trustType : Maybe TrustType
    , conditionalForwarderIpAddrs : Maybe (List String)
    }



{-| <p>Deletes a conditional forwarder that has been set up for your AWS directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `remoteDomainName` __:__ `String`


-}
deleteConditionalForwarder :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteConditionalForwarderResult
deleteConditionalForwarder directoryId remoteDomainName =
    AWS.Http.unsignedRequest
        "DeleteConditionalForwarder"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteConditionalForwarderResultDecoder



{-| <p>Deletes an AWS Directory Service directory.</p> <p>Before you call <i>DeleteDirectory</i>, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the <i>DeleteDirectory</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
deleteDirectory :
    String
    -> AWS.Http.UnsignedRequest DeleteDirectoryResult
deleteDirectory directoryId =
    AWS.Http.unsignedRequest
        "DeleteDirectory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDirectoryResultDecoder



{-| <p>Deletes a directory snapshot.</p>

__Required Parameters__

* `snapshotId` __:__ `String`


-}
deleteSnapshot :
    String
    -> AWS.Http.UnsignedRequest DeleteSnapshotResult
deleteSnapshot snapshotId =
    AWS.Http.unsignedRequest
        "DeleteSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSnapshotResultDecoder



{-| <p>Deletes an existing trust relationship between your Microsoft AD in the AWS cloud and an external domain.</p>

__Required Parameters__

* `trustId` __:__ `String`


-}
deleteTrust :
    String
    -> (DeleteTrustOptions -> DeleteTrustOptions)
    -> AWS.Http.UnsignedRequest DeleteTrustResult
deleteTrust trustId setOptions =
  let
    options = setOptions (DeleteTrustOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteTrust"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTrustResultDecoder


{-| Options for a deleteTrust request
-}
type alias DeleteTrustOptions =
    { deleteAssociatedConditionalForwarder : Maybe Bool
    }



{-| <p>Removes the specified directory as a publisher to the specified SNS topic.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `topicName` __:__ `String`


-}
deregisterEventTopic :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeregisterEventTopicResult
deregisterEventTopic directoryId topicName =
    AWS.Http.unsignedRequest
        "DeregisterEventTopic"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterEventTopicResultDecoder



{-| <p>Obtains information about the conditional forwarders for this account.</p> <p>If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
describeConditionalForwarders :
    String
    -> (DescribeConditionalForwardersOptions -> DescribeConditionalForwardersOptions)
    -> AWS.Http.UnsignedRequest DescribeConditionalForwardersResult
describeConditionalForwarders directoryId setOptions =
  let
    options = setOptions (DescribeConditionalForwardersOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConditionalForwarders"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConditionalForwardersResultDecoder


{-| Options for a describeConditionalForwarders request
-}
type alias DescribeConditionalForwardersOptions =
    { remoteDomainNames : Maybe (List String)
    }



{-| <p>Obtains information about the directories that belong to this account.</p> <p>You can retrieve information about specific directories by passing the directory identifiers in the <i>DirectoryIds</i> parameter. Otherwise, all directories that belong to the current account are returned.</p> <p>This operation supports pagination with the use of the <i>NextToken</i> request and response parameters. If more results are available, the <i>DescribeDirectoriesResult.NextToken</i> member contains a token that you pass in the next call to <a>DescribeDirectories</a> to retrieve the next set of items.</p> <p>You can also specify a maximum number of return results with the <i>Limit</i> parameter.</p>

__Required Parameters__



-}
describeDirectories :
    (DescribeDirectoriesOptions -> DescribeDirectoriesOptions)
    -> AWS.Http.UnsignedRequest DescribeDirectoriesResult
describeDirectories setOptions =
  let
    options = setOptions (DescribeDirectoriesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDirectories"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDirectoriesResultDecoder


{-| Options for a describeDirectories request
-}
type alias DescribeDirectoriesOptions =
    { directoryIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Obtains information about which SNS topics receive status messages from the specified directory.</p> <p>If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.</p>

__Required Parameters__



-}
describeEventTopics :
    (DescribeEventTopicsOptions -> DescribeEventTopicsOptions)
    -> AWS.Http.UnsignedRequest DescribeEventTopicsResult
describeEventTopics setOptions =
  let
    options = setOptions (DescribeEventTopicsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventTopics"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEventTopicsResultDecoder


{-| Options for a describeEventTopics request
-}
type alias DescribeEventTopicsOptions =
    { directoryId : Maybe String
    , topicNames : Maybe (List String)
    }



{-| <p>Obtains information about the directory snapshots that belong to this account.</p> <p>This operation supports pagination with the use of the <i>NextToken</i> request and response parameters. If more results are available, the <i>DescribeSnapshots.NextToken</i> member contains a token that you pass in the next call to <a>DescribeSnapshots</a> to retrieve the next set of items.</p> <p>You can also specify a maximum number of return results with the <i>Limit</i> parameter.</p>

__Required Parameters__



-}
describeSnapshots :
    (DescribeSnapshotsOptions -> DescribeSnapshotsOptions)
    -> AWS.Http.UnsignedRequest DescribeSnapshotsResult
describeSnapshots setOptions =
  let
    options = setOptions (DescribeSnapshotsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSnapshots"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSnapshotsResultDecoder


{-| Options for a describeSnapshots request
-}
type alias DescribeSnapshotsOptions =
    { directoryId : Maybe String
    , snapshotIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Obtains information about the trust relationships for this account.</p> <p>If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.</p>

__Required Parameters__



-}
describeTrusts :
    (DescribeTrustsOptions -> DescribeTrustsOptions)
    -> AWS.Http.UnsignedRequest DescribeTrustsResult
describeTrusts setOptions =
  let
    options = setOptions (DescribeTrustsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTrusts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTrustsResultDecoder


{-| Options for a describeTrusts request
-}
type alias DescribeTrustsOptions =
    { directoryId : Maybe String
    , trustIds : Maybe (List String)
    , nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
disableRadius :
    String
    -> AWS.Http.UnsignedRequest DisableRadiusResult
disableRadius directoryId =
    AWS.Http.unsignedRequest
        "DisableRadius"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableRadiusResultDecoder



{-| <p>Disables single-sign on for a directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
disableSso :
    String
    -> (DisableSsoOptions -> DisableSsoOptions)
    -> AWS.Http.UnsignedRequest DisableSsoResult
disableSso directoryId setOptions =
  let
    options = setOptions (DisableSsoOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DisableSso"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableSsoResultDecoder


{-| Options for a disableSso request
-}
type alias DisableSsoOptions =
    { userName : Maybe String
    , password : Maybe String
    }



{-| <p>Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `radiusSettings` __:__ `RadiusSettings`


-}
enableRadius :
    String
    -> RadiusSettings
    -> AWS.Http.UnsignedRequest EnableRadiusResult
enableRadius directoryId radiusSettings =
    AWS.Http.unsignedRequest
        "EnableRadius"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enableRadiusResultDecoder



{-| <p>Enables single sign-on for a directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
enableSso :
    String
    -> (EnableSsoOptions -> EnableSsoOptions)
    -> AWS.Http.UnsignedRequest EnableSsoResult
enableSso directoryId setOptions =
  let
    options = setOptions (EnableSsoOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "EnableSso"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enableSsoResultDecoder


{-| Options for a enableSso request
-}
type alias EnableSsoOptions =
    { userName : Maybe String
    , password : Maybe String
    }



{-| <p>Obtains directory limit information for the current region.</p>

__Required Parameters__



-}
getDirectoryLimits :
    AWS.Http.UnsignedRequest GetDirectoryLimitsResult
getDirectoryLimits =
    AWS.Http.unsignedRequest
        "GetDirectoryLimits"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDirectoryLimitsResultDecoder



{-| <p>Obtains the manual snapshot limits for a directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
getSnapshotLimits :
    String
    -> AWS.Http.UnsignedRequest GetSnapshotLimitsResult
getSnapshotLimits directoryId =
    AWS.Http.unsignedRequest
        "GetSnapshotLimits"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSnapshotLimitsResultDecoder



{-| <p>Lists the address blocks that you have added to a directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
listIpRoutes :
    String
    -> (ListIpRoutesOptions -> ListIpRoutesOptions)
    -> AWS.Http.UnsignedRequest ListIpRoutesResult
listIpRoutes directoryId setOptions =
  let
    options = setOptions (ListIpRoutesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListIpRoutes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listIpRoutesResultDecoder


{-| Options for a listIpRoutes request
-}
type alias ListIpRoutesOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists all schema extensions applied to a Microsoft AD Directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`


-}
listSchemaExtensions :
    String
    -> (ListSchemaExtensionsOptions -> ListSchemaExtensionsOptions)
    -> AWS.Http.UnsignedRequest ListSchemaExtensionsResult
listSchemaExtensions directoryId setOptions =
  let
    options = setOptions (ListSchemaExtensionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSchemaExtensions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSchemaExtensionsResultDecoder


{-| Options for a listSchemaExtensions request
-}
type alias ListSchemaExtensionsOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists all tags on a directory.</p>

__Required Parameters__

* `resourceId` __:__ `String`


-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Http.UnsignedRequest ListTagsForResourceResult
listTagsForResource resourceId setOptions =
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
        listTagsForResourceResultDecoder


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { nextToken : Maybe String
    , limit : Maybe Int
    }



{-| <p>Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `topicName` __:__ `String`


-}
registerEventTopic :
    String
    -> String
    -> AWS.Http.UnsignedRequest RegisterEventTopicResult
registerEventTopic directoryId topicName =
    AWS.Http.unsignedRequest
        "RegisterEventTopic"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerEventTopicResultDecoder



{-| <p>Removes IP address blocks from a directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `cidrIps` __:__ `(List String)`


-}
removeIpRoutes :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest RemoveIpRoutesResult
removeIpRoutes directoryId cidrIps =
    AWS.Http.unsignedRequest
        "RemoveIpRoutes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeIpRoutesResultDecoder



{-| <p>Removes tags from a directory.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTagsFromResource :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest RemoveTagsFromResourceResult
removeTagsFromResource resourceId tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTagsFromResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsFromResourceResultDecoder



{-| <p>Restores a directory using an existing directory snapshot.</p> <p>When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.</p> <p>This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the <a>DescribeDirectories</a> operation with the directory identifier. When the <b>DirectoryDescription.Stage</b> value changes to <code>Active</code>, the restore operation is complete.</p>

__Required Parameters__

* `snapshotId` __:__ `String`


-}
restoreFromSnapshot :
    String
    -> AWS.Http.UnsignedRequest RestoreFromSnapshotResult
restoreFromSnapshot snapshotId =
    AWS.Http.unsignedRequest
        "RestoreFromSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreFromSnapshotResultDecoder



{-| <p>Applies a schema extension to a Microsoft AD directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `createSnapshotBeforeSchemaExtension` __:__ `Bool`
* `ldifContent` __:__ `String`
* `description` __:__ `String`


-}
startSchemaExtension :
    String
    -> Bool
    -> String
    -> String
    -> AWS.Http.UnsignedRequest StartSchemaExtensionResult
startSchemaExtension directoryId createSnapshotBeforeSchemaExtension ldifContent description =
    AWS.Http.unsignedRequest
        "StartSchemaExtension"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startSchemaExtensionResultDecoder



{-| <p>Updates a conditional forwarder that has been set up for your AWS directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `remoteDomainName` __:__ `String`
* `dnsIpAddrs` __:__ `(List String)`


-}
updateConditionalForwarder :
    String
    -> String
    -> (List String)
    -> AWS.Http.UnsignedRequest UpdateConditionalForwarderResult
updateConditionalForwarder directoryId remoteDomainName dnsIpAddrs =
    AWS.Http.unsignedRequest
        "UpdateConditionalForwarder"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateConditionalForwarderResultDecoder



{-| <p>Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector directory.</p>

__Required Parameters__

* `directoryId` __:__ `String`
* `radiusSettings` __:__ `RadiusSettings`


-}
updateRadius :
    String
    -> RadiusSettings
    -> AWS.Http.UnsignedRequest UpdateRadiusResult
updateRadius directoryId radiusSettings =
    AWS.Http.unsignedRequest
        "UpdateRadius"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateRadiusResultDecoder



{-| <p>AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships.</p> <p>This action verifies a trust relationship between your Microsoft AD in the AWS cloud and an external domain.</p>

__Required Parameters__

* `trustId` __:__ `String`


-}
verifyTrust :
    String
    -> AWS.Http.UnsignedRequest VerifyTrustResult
verifyTrust trustId =
    AWS.Http.unsignedRequest
        "VerifyTrust"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        verifyTrustResultDecoder




{-| Type of HTTP response from addIpRout
-}
type alias AddIpRoutesResult =
    { 
    }



addIpRoutesResultDecoder : JD.Decoder AddIpRoutesResult
addIpRoutesResultDecoder =
    JDP.decode AddIpRoutesResult



{-| Type of HTTP response from addTagsToResour
-}
type alias AddTagsToResourceResult =
    { 
    }



addTagsToResourceResultDecoder : JD.Decoder AddTagsToResourceResult
addTagsToResourceResultDecoder =
    JDP.decode AddTagsToResourceResult



{-| <p>Represents a named directory attribute.</p>
-}
type alias Attribute =
    { name : Maybe String
    , value : Maybe String
    }



attributeDecoder : JD.Decoder Attribute
attributeDecoder =
    JDP.decode Attribute
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>An authentication error occurred.</p>
-}
type alias AuthenticationFailedException =
    { message : Maybe String
    , requestId : Maybe String
    }



authenticationFailedExceptionDecoder : JD.Decoder AuthenticationFailedException
authenticationFailedExceptionDecoder =
    JDP.decode AuthenticationFailedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cancelSchemaExtensi
-}
type alias CancelSchemaExtensionResult =
    { 
    }



cancelSchemaExtensionResultDecoder : JD.Decoder CancelSchemaExtensionResult
cancelSchemaExtensionResultDecoder =
    JDP.decode CancelSchemaExtensionResult



{-| <p>A client exception has occurred.</p>
-}
type alias ClientException =
    { message : Maybe String
    , requestId : Maybe String
    }



clientExceptionDecoder : JD.Decoder ClientException
clientExceptionDecoder =
    JDP.decode ClientException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a computer account in a directory.</p>
-}
type alias Computer =
    { computerId : Maybe String
    , computerName : Maybe String
    , computerAttributes : Maybe (List Attribute)
    }



computerDecoder : JD.Decoder Computer
computerDecoder =
    JDP.decode Computer
        |> JDP.optional "computerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "computerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "computerAttributes" (JD.nullable (JD.list attributeDecoder)) Nothing




{-| <p>Points to a remote domain with which you are setting up a trust relationship. Conditional forwarders are required in order to set up a trust relationship with another domain.</p>
-}
type alias ConditionalForwarder =
    { remoteDomainName : Maybe String
    , dnsIpAddrs : Maybe (List String)
    , replicationScope : Maybe ReplicationScope
    }



conditionalForwarderDecoder : JD.Decoder ConditionalForwarder
conditionalForwarderDecoder =
    JDP.decode ConditionalForwarder
        |> JDP.optional "remoteDomainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dnsIpAddrs" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "replicationScope" (JD.nullable replicationScopeDecoder) Nothing




{-| Type of HTTP response from connectDirecto
-}
type alias ConnectDirectoryResult =
    { directoryId : Maybe String
    }



connectDirectoryResultDecoder : JD.Decoder ConnectDirectoryResult
connectDirectoryResultDecoder =
    JDP.decode ConnectDirectoryResult
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createAli
-}
type alias CreateAliasResult =
    { directoryId : Maybe String
    , alias : Maybe String
    }



createAliasResultDecoder : JD.Decoder CreateAliasResult
createAliasResultDecoder =
    JDP.decode CreateAliasResult
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "alias" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createComput
-}
type alias CreateComputerResult =
    { computer : Maybe Computer
    }



createComputerResultDecoder : JD.Decoder CreateComputerResult
createComputerResultDecoder =
    JDP.decode CreateComputerResult
        |> JDP.optional "computer" (JD.nullable computerDecoder) Nothing




{-| Type of HTTP response from createConditionalForward
-}
type alias CreateConditionalForwarderResult =
    { 
    }



createConditionalForwarderResultDecoder : JD.Decoder CreateConditionalForwarderResult
createConditionalForwarderResultDecoder =
    JDP.decode CreateConditionalForwarderResult



{-| Type of HTTP response from createDirecto
-}
type alias CreateDirectoryResult =
    { directoryId : Maybe String
    }



createDirectoryResultDecoder : JD.Decoder CreateDirectoryResult
createDirectoryResultDecoder =
    JDP.decode CreateDirectoryResult
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createMicrosoft
-}
type alias CreateMicrosoftADResult =
    { directoryId : Maybe String
    }



createMicrosoftADResultDecoder : JD.Decoder CreateMicrosoftADResult
createMicrosoftADResultDecoder =
    JDP.decode CreateMicrosoftADResult
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSnapsh
-}
type alias CreateSnapshotResult =
    { snapshotId : Maybe String
    }



createSnapshotResultDecoder : JD.Decoder CreateSnapshotResult
createSnapshotResultDecoder =
    JDP.decode CreateSnapshotResult
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createTru
-}
type alias CreateTrustResult =
    { trustId : Maybe String
    }



createTrustResultDecoder : JD.Decoder CreateTrustResult
createTrustResultDecoder =
    JDP.decode CreateTrustResult
        |> JDP.optional "trustId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteConditionalForward
-}
type alias DeleteConditionalForwarderResult =
    { 
    }



deleteConditionalForwarderResultDecoder : JD.Decoder DeleteConditionalForwarderResult
deleteConditionalForwarderResultDecoder =
    JDP.decode DeleteConditionalForwarderResult



{-| Type of HTTP response from deleteDirecto
-}
type alias DeleteDirectoryResult =
    { directoryId : Maybe String
    }



deleteDirectoryResultDecoder : JD.Decoder DeleteDirectoryResult
deleteDirectoryResultDecoder =
    JDP.decode DeleteDirectoryResult
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteSnapsh
-}
type alias DeleteSnapshotResult =
    { snapshotId : Maybe String
    }



deleteSnapshotResultDecoder : JD.Decoder DeleteSnapshotResult
deleteSnapshotResultDecoder =
    JDP.decode DeleteSnapshotResult
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteTru
-}
type alias DeleteTrustResult =
    { trustId : Maybe String
    }



deleteTrustResultDecoder : JD.Decoder DeleteTrustResult
deleteTrustResultDecoder =
    JDP.decode DeleteTrustResult
        |> JDP.optional "trustId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deregisterEventTop
-}
type alias DeregisterEventTopicResult =
    { 
    }



deregisterEventTopicResultDecoder : JD.Decoder DeregisterEventTopicResult
deregisterEventTopicResultDecoder =
    JDP.decode DeregisterEventTopicResult



{-| Type of HTTP response from describeConditionalForwarde
-}
type alias DescribeConditionalForwardersResult =
    { conditionalForwarders : Maybe (List ConditionalForwarder)
    }



describeConditionalForwardersResultDecoder : JD.Decoder DescribeConditionalForwardersResult
describeConditionalForwardersResultDecoder =
    JDP.decode DescribeConditionalForwardersResult
        |> JDP.optional "conditionalForwarders" (JD.nullable (JD.list conditionalForwarderDecoder)) Nothing




{-| Type of HTTP response from describeDirectori
-}
type alias DescribeDirectoriesResult =
    { directoryDescriptions : Maybe (List DirectoryDescription)
    , nextToken : Maybe String
    }



describeDirectoriesResultDecoder : JD.Decoder DescribeDirectoriesResult
describeDirectoriesResultDecoder =
    JDP.decode DescribeDirectoriesResult
        |> JDP.optional "directoryDescriptions" (JD.nullable (JD.list directoryDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEventTopi
-}
type alias DescribeEventTopicsResult =
    { eventTopics : Maybe (List EventTopic)
    }



describeEventTopicsResultDecoder : JD.Decoder DescribeEventTopicsResult
describeEventTopicsResultDecoder =
    JDP.decode DescribeEventTopicsResult
        |> JDP.optional "eventTopics" (JD.nullable (JD.list eventTopicDecoder)) Nothing




{-| Type of HTTP response from describeSnapsho
-}
type alias DescribeSnapshotsResult =
    { snapshots : Maybe (List Snapshot)
    , nextToken : Maybe String
    }



describeSnapshotsResultDecoder : JD.Decoder DescribeSnapshotsResult
describeSnapshotsResultDecoder =
    JDP.decode DescribeSnapshotsResult
        |> JDP.optional "snapshots" (JD.nullable (JD.list snapshotDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTrus
-}
type alias DescribeTrustsResult =
    { trusts : Maybe (List Trust)
    , nextToken : Maybe String
    }



describeTrustsResultDecoder : JD.Decoder DescribeTrustsResult
describeTrustsResultDecoder =
    JDP.decode DescribeTrustsResult
        |> JDP.optional "trusts" (JD.nullable (JD.list trustDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Contains information for the <a>ConnectDirectory</a> operation when an AD Connector directory is being created.</p>
-}
type alias DirectoryConnectSettings =
    { vpcId : String
    , subnetIds : (List String)
    , customerDnsIps : (List String)
    , customerUserName : String
    }



directoryConnectSettingsDecoder : JD.Decoder DirectoryConnectSettings
directoryConnectSettingsDecoder =
    JDP.decode DirectoryConnectSettings
        |> JDP.required "vpcId" JD.string
        |> JDP.required "subnetIds" (JD.list JD.string)
        |> JDP.required "customerDnsIps" (JD.list JD.string)
        |> JDP.required "customerUserName" JD.string




{-| <p>Contains information about an AD Connector directory.</p>
-}
type alias DirectoryConnectSettingsDescription =
    { vpcId : Maybe String
    , subnetIds : Maybe (List String)
    , customerUserName : Maybe String
    , securityGroupId : Maybe String
    , availabilityZones : Maybe (List String)
    , connectIps : Maybe (List String)
    }



directoryConnectSettingsDescriptionDecoder : JD.Decoder DirectoryConnectSettingsDescription
directoryConnectSettingsDescriptionDecoder =
    JDP.decode DirectoryConnectSettingsDescription
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "customerUserName" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "connectIps" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Contains information about an AWS Directory Service directory.</p>
-}
type alias DirectoryDescription =
    { directoryId : Maybe String
    , name : Maybe String
    , shortName : Maybe String
    , size : Maybe DirectorySize
    , alias : Maybe String
    , accessUrl : Maybe String
    , description : Maybe String
    , dnsIpAddrs : Maybe (List String)
    , stage : Maybe DirectoryStage
    , launchTime : Maybe Date
    , stageLastUpdatedDateTime : Maybe Date
    , type_ : Maybe DirectoryType
    , vpcSettings : Maybe DirectoryVpcSettingsDescription
    , connectSettings : Maybe DirectoryConnectSettingsDescription
    , radiusSettings : Maybe RadiusSettings
    , radiusStatus : Maybe RadiusStatus
    , stageReason : Maybe String
    , ssoEnabled : Maybe Bool
    }



directoryDescriptionDecoder : JD.Decoder DirectoryDescription
directoryDescriptionDecoder =
    JDP.decode DirectoryDescription
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "shortName" (JD.nullable JD.string) Nothing
        |> JDP.optional "size" (JD.nullable directorySizeDecoder) Nothing
        |> JDP.optional "alias" (JD.nullable JD.string) Nothing
        |> JDP.optional "accessUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "dnsIpAddrs" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "stage" (JD.nullable directoryStageDecoder) Nothing
        |> JDP.optional "launchTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stageLastUpdatedDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "type_" (JD.nullable directoryTypeDecoder) Nothing
        |> JDP.optional "vpcSettings" (JD.nullable directoryVpcSettingsDescriptionDecoder) Nothing
        |> JDP.optional "connectSettings" (JD.nullable directoryConnectSettingsDescriptionDecoder) Nothing
        |> JDP.optional "radiusSettings" (JD.nullable radiusSettingsDecoder) Nothing
        |> JDP.optional "radiusStatus" (JD.nullable radiusStatusDecoder) Nothing
        |> JDP.optional "stageReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "ssoEnabled" (JD.nullable JD.bool) Nothing




{-| <p>The maximum number of directories in the region has been reached. You can use the <a>GetDirectoryLimits</a> operation to determine your directory limits in the region.</p>
-}
type alias DirectoryLimitExceededException =
    { message : Maybe String
    , requestId : Maybe String
    }



directoryLimitExceededExceptionDecoder : JD.Decoder DirectoryLimitExceededException
directoryLimitExceededExceptionDecoder =
    JDP.decode DirectoryLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>Contains directory limit information for a region.</p>
-}
type alias DirectoryLimits =
    { cloudOnlyDirectoriesLimit : Maybe Int
    , cloudOnlyDirectoriesCurrentCount : Maybe Int
    , cloudOnlyDirectoriesLimitReached : Maybe Bool
    , cloudOnlyMicrosoftADLimit : Maybe Int
    , cloudOnlyMicrosoftADCurrentCount : Maybe Int
    , cloudOnlyMicrosoftADLimitReached : Maybe Bool
    , connectedDirectoriesLimit : Maybe Int
    , connectedDirectoriesCurrentCount : Maybe Int
    , connectedDirectoriesLimitReached : Maybe Bool
    }



directoryLimitsDecoder : JD.Decoder DirectoryLimits
directoryLimitsDecoder =
    JDP.decode DirectoryLimits
        |> JDP.optional "cloudOnlyDirectoriesLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "cloudOnlyDirectoriesCurrentCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "cloudOnlyDirectoriesLimitReached" (JD.nullable JD.bool) Nothing
        |> JDP.optional "cloudOnlyMicrosoftADLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "cloudOnlyMicrosoftADCurrentCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "cloudOnlyMicrosoftADLimitReached" (JD.nullable JD.bool) Nothing
        |> JDP.optional "connectedDirectoriesLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "connectedDirectoriesCurrentCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "connectedDirectoriesLimitReached" (JD.nullable JD.bool) Nothing




{-| One of

* `DirectorySize_Small`
* `DirectorySize_Large`

-}
type DirectorySize
    = DirectorySize_Small
    | DirectorySize_Large



directorySizeDecoder : JD.Decoder DirectorySize
directorySizeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Small" ->
                        JD.succeed DirectorySize_Small

                    "Large" ->
                        JD.succeed DirectorySize_Large


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DirectoryStage_Requested`
* `DirectoryStage_Creating`
* `DirectoryStage_Created`
* `DirectoryStage_Active`
* `DirectoryStage_Inoperable`
* `DirectoryStage_Impaired`
* `DirectoryStage_Restoring`
* `DirectoryStage_RestoreFailed`
* `DirectoryStage_Deleting`
* `DirectoryStage_Deleted`
* `DirectoryStage_Failed`

-}
type DirectoryStage
    = DirectoryStage_Requested
    | DirectoryStage_Creating
    | DirectoryStage_Created
    | DirectoryStage_Active
    | DirectoryStage_Inoperable
    | DirectoryStage_Impaired
    | DirectoryStage_Restoring
    | DirectoryStage_RestoreFailed
    | DirectoryStage_Deleting
    | DirectoryStage_Deleted
    | DirectoryStage_Failed



directoryStageDecoder : JD.Decoder DirectoryStage
directoryStageDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Requested" ->
                        JD.succeed DirectoryStage_Requested

                    "Creating" ->
                        JD.succeed DirectoryStage_Creating

                    "Created" ->
                        JD.succeed DirectoryStage_Created

                    "Active" ->
                        JD.succeed DirectoryStage_Active

                    "Inoperable" ->
                        JD.succeed DirectoryStage_Inoperable

                    "Impaired" ->
                        JD.succeed DirectoryStage_Impaired

                    "Restoring" ->
                        JD.succeed DirectoryStage_Restoring

                    "RestoreFailed" ->
                        JD.succeed DirectoryStage_RestoreFailed

                    "Deleting" ->
                        JD.succeed DirectoryStage_Deleting

                    "Deleted" ->
                        JD.succeed DirectoryStage_Deleted

                    "Failed" ->
                        JD.succeed DirectoryStage_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DirectoryType_SimpleAD`
* `DirectoryType_ADConnector`
* `DirectoryType_MicrosoftAD`

-}
type DirectoryType
    = DirectoryType_SimpleAD
    | DirectoryType_ADConnector
    | DirectoryType_MicrosoftAD



directoryTypeDecoder : JD.Decoder DirectoryType
directoryTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SimpleAD" ->
                        JD.succeed DirectoryType_SimpleAD

                    "ADConnector" ->
                        JD.succeed DirectoryType_ADConnector

                    "MicrosoftAD" ->
                        JD.succeed DirectoryType_MicrosoftAD


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified directory is unavailable or could not be found.</p>
-}
type alias DirectoryUnavailableException =
    { message : Maybe String
    , requestId : Maybe String
    }



directoryUnavailableExceptionDecoder : JD.Decoder DirectoryUnavailableException
directoryUnavailableExceptionDecoder =
    JDP.decode DirectoryUnavailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
-}
type alias DirectoryVpcSettings =
    { vpcId : String
    , subnetIds : (List String)
    }



directoryVpcSettingsDecoder : JD.Decoder DirectoryVpcSettings
directoryVpcSettingsDecoder =
    JDP.decode DirectoryVpcSettings
        |> JDP.required "vpcId" JD.string
        |> JDP.required "subnetIds" (JD.list JD.string)




{-| <p>Contains information about the directory.</p>
-}
type alias DirectoryVpcSettingsDescription =
    { vpcId : Maybe String
    , subnetIds : Maybe (List String)
    , securityGroupId : Maybe String
    , availabilityZones : Maybe (List String)
    }



directoryVpcSettingsDescriptionDecoder : JD.Decoder DirectoryVpcSettingsDescription
directoryVpcSettingsDescriptionDecoder =
    JDP.decode DirectoryVpcSettingsDescription
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "securityGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from disableRadi
-}
type alias DisableRadiusResult =
    { 
    }



disableRadiusResultDecoder : JD.Decoder DisableRadiusResult
disableRadiusResultDecoder =
    JDP.decode DisableRadiusResult



{-| Type of HTTP response from disableS
-}
type alias DisableSsoResult =
    { 
    }



disableSsoResultDecoder : JD.Decoder DisableSsoResult
disableSsoResultDecoder =
    JDP.decode DisableSsoResult



{-| Type of HTTP response from enableRadi
-}
type alias EnableRadiusResult =
    { 
    }



enableRadiusResultDecoder : JD.Decoder EnableRadiusResult
enableRadiusResultDecoder =
    JDP.decode EnableRadiusResult



{-| Type of HTTP response from enableS
-}
type alias EnableSsoResult =
    { 
    }



enableSsoResultDecoder : JD.Decoder EnableSsoResult
enableSsoResultDecoder =
    JDP.decode EnableSsoResult



{-| <p>The specified entity already exists.</p>
-}
type alias EntityAlreadyExistsException =
    { message : Maybe String
    , requestId : Maybe String
    }



entityAlreadyExistsExceptionDecoder : JD.Decoder EntityAlreadyExistsException
entityAlreadyExistsExceptionDecoder =
    JDP.decode EntityAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>The specified entity could not be found.</p>
-}
type alias EntityDoesNotExistException =
    { message : Maybe String
    , requestId : Maybe String
    }



entityDoesNotExistExceptionDecoder : JD.Decoder EntityDoesNotExistException
entityDoesNotExistExceptionDecoder =
    JDP.decode EntityDoesNotExistException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>Information about SNS topic and AWS Directory Service directory associations.</p>
-}
type alias EventTopic =
    { directoryId : Maybe String
    , topicName : Maybe String
    , topicArn : Maybe String
    , createdDateTime : Maybe Date
    , status : Maybe TopicStatus
    }



eventTopicDecoder : JD.Decoder EventTopic
eventTopicDecoder =
    JDP.decode EventTopic
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "topicName" (JD.nullable JD.string) Nothing
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable topicStatusDecoder) Nothing




{-| Type of HTTP response from getDirectoryLimi
-}
type alias GetDirectoryLimitsResult =
    { directoryLimits : Maybe DirectoryLimits
    }



getDirectoryLimitsResultDecoder : JD.Decoder GetDirectoryLimitsResult
getDirectoryLimitsResultDecoder =
    JDP.decode GetDirectoryLimitsResult
        |> JDP.optional "directoryLimits" (JD.nullable directoryLimitsDecoder) Nothing




{-| Type of HTTP response from getSnapshotLimi
-}
type alias GetSnapshotLimitsResult =
    { snapshotLimits : Maybe SnapshotLimits
    }



getSnapshotLimitsResultDecoder : JD.Decoder GetSnapshotLimitsResult
getSnapshotLimitsResultDecoder =
    JDP.decode GetSnapshotLimitsResult
        |> JDP.optional "snapshotLimits" (JD.nullable snapshotLimitsDecoder) Nothing




{-| <p>The account does not have sufficient permission to perform the operation.</p>
-}
type alias InsufficientPermissionsException =
    { message : Maybe String
    , requestId : Maybe String
    }



insufficientPermissionsExceptionDecoder : JD.Decoder InsufficientPermissionsException
insufficientPermissionsExceptionDecoder =
    JDP.decode InsufficientPermissionsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>The <i>NextToken</i> value is not valid.</p>
-}
type alias InvalidNextTokenException =
    { message : Maybe String
    , requestId : Maybe String
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>One or more parameters are not valid.</p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    , requestId : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>IP address block. This is often the address block of the DNS server used for your on-premises domain. </p>
-}
type alias IpRoute =
    { cidrIp : Maybe String
    , description : Maybe String
    }



ipRouteDecoder : JD.Decoder IpRoute
ipRouteDecoder =
    JDP.decode IpRoute
        |> JDP.optional "cidrIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Information about one or more IP address blocks.</p>
-}
type alias IpRouteInfo =
    { directoryId : Maybe String
    , cidrIp : Maybe String
    , ipRouteStatusMsg : Maybe IpRouteStatusMsg
    , addedDateTime : Maybe Date
    , ipRouteStatusReason : Maybe String
    , description : Maybe String
    }



ipRouteInfoDecoder : JD.Decoder IpRouteInfo
ipRouteInfoDecoder =
    JDP.decode IpRouteInfo
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cidrIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipRouteStatusMsg" (JD.nullable ipRouteStatusMsgDecoder) Nothing
        |> JDP.optional "addedDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "ipRouteStatusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>The maximum allowed number of IP addresses was exceeded. The default limit is 100 IP address blocks.</p>
-}
type alias IpRouteLimitExceededException =
    { message : Maybe String
    , requestId : Maybe String
    }



ipRouteLimitExceededExceptionDecoder : JD.Decoder IpRouteLimitExceededException
ipRouteLimitExceededExceptionDecoder =
    JDP.decode IpRouteLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| One of

* `IpRouteStatusMsg_Adding`
* `IpRouteStatusMsg_Added`
* `IpRouteStatusMsg_Removing`
* `IpRouteStatusMsg_Removed`
* `IpRouteStatusMsg_AddFailed`
* `IpRouteStatusMsg_RemoveFailed`

-}
type IpRouteStatusMsg
    = IpRouteStatusMsg_Adding
    | IpRouteStatusMsg_Added
    | IpRouteStatusMsg_Removing
    | IpRouteStatusMsg_Removed
    | IpRouteStatusMsg_AddFailed
    | IpRouteStatusMsg_RemoveFailed



ipRouteStatusMsgDecoder : JD.Decoder IpRouteStatusMsg
ipRouteStatusMsgDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Adding" ->
                        JD.succeed IpRouteStatusMsg_Adding

                    "Added" ->
                        JD.succeed IpRouteStatusMsg_Added

                    "Removing" ->
                        JD.succeed IpRouteStatusMsg_Removing

                    "Removed" ->
                        JD.succeed IpRouteStatusMsg_Removed

                    "AddFailed" ->
                        JD.succeed IpRouteStatusMsg_AddFailed

                    "RemoveFailed" ->
                        JD.succeed IpRouteStatusMsg_RemoveFailed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from listIpRout
-}
type alias ListIpRoutesResult =
    { ipRoutesInfo : Maybe (List IpRouteInfo)
    , nextToken : Maybe String
    }



listIpRoutesResultDecoder : JD.Decoder ListIpRoutesResult
listIpRoutesResultDecoder =
    JDP.decode ListIpRoutesResult
        |> JDP.optional "ipRoutesInfo" (JD.nullable (JD.list ipRouteInfoDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listSchemaExtensio
-}
type alias ListSchemaExtensionsResult =
    { schemaExtensionsInfo : Maybe (List SchemaExtensionInfo)
    , nextToken : Maybe String
    }



listSchemaExtensionsResultDecoder : JD.Decoder ListSchemaExtensionsResult
listSchemaExtensionsResultDecoder =
    JDP.decode ListSchemaExtensionsResult
        |> JDP.optional "schemaExtensionsInfo" (JD.nullable (JD.list schemaExtensionInfoDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceResult =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }



listTagsForResourceResultDecoder : JD.Decoder ListTagsForResourceResult
listTagsForResourceResultDecoder =
    JDP.decode ListTagsForResourceResult
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| One of

* `RadiusAuthenticationProtocol_PAP`
* `RadiusAuthenticationProtocol_CHAP`
* `RadiusAuthenticationProtocol_MS-CHAPv1`
* `RadiusAuthenticationProtocol_MS-CHAPv2`

-}
type RadiusAuthenticationProtocol
    = RadiusAuthenticationProtocol_PAP
    | RadiusAuthenticationProtocol_CHAP
    | RadiusAuthenticationProtocol_MS_CHAPv1
    | RadiusAuthenticationProtocol_MS_CHAPv2



radiusAuthenticationProtocolDecoder : JD.Decoder RadiusAuthenticationProtocol
radiusAuthenticationProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PAP" ->
                        JD.succeed RadiusAuthenticationProtocol_PAP

                    "CHAP" ->
                        JD.succeed RadiusAuthenticationProtocol_CHAP

                    "MS_CHAPv1" ->
                        JD.succeed RadiusAuthenticationProtocol_MS_CHAPv1

                    "MS_CHAPv2" ->
                        JD.succeed RadiusAuthenticationProtocol_MS_CHAPv2


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about a Remote Authentication Dial In User Service (RADIUS) server.</p>
-}
type alias RadiusSettings =
    { radiusServers : Maybe (List String)
    , radiusPort : Maybe Int
    , radiusTimeout : Maybe Int
    , radiusRetries : Maybe Int
    , sharedSecret : Maybe String
    , authenticationProtocol : Maybe RadiusAuthenticationProtocol
    , displayLabel : Maybe String
    , useSameUsername : Maybe Bool
    }



radiusSettingsDecoder : JD.Decoder RadiusSettings
radiusSettingsDecoder =
    JDP.decode RadiusSettings
        |> JDP.optional "radiusServers" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "radiusPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "radiusTimeout" (JD.nullable JD.int) Nothing
        |> JDP.optional "radiusRetries" (JD.nullable JD.int) Nothing
        |> JDP.optional "sharedSecret" (JD.nullable JD.string) Nothing
        |> JDP.optional "authenticationProtocol" (JD.nullable radiusAuthenticationProtocolDecoder) Nothing
        |> JDP.optional "displayLabel" (JD.nullable JD.string) Nothing
        |> JDP.optional "useSameUsername" (JD.nullable JD.bool) Nothing




{-| One of

* `RadiusStatus_Creating`
* `RadiusStatus_Completed`
* `RadiusStatus_Failed`

-}
type RadiusStatus
    = RadiusStatus_Creating
    | RadiusStatus_Completed
    | RadiusStatus_Failed



radiusStatusDecoder : JD.Decoder RadiusStatus
radiusStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed RadiusStatus_Creating

                    "Completed" ->
                        JD.succeed RadiusStatus_Completed

                    "Failed" ->
                        JD.succeed RadiusStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from registerEventTop
-}
type alias RegisterEventTopicResult =
    { 
    }



registerEventTopicResultDecoder : JD.Decoder RegisterEventTopicResult
registerEventTopicResultDecoder =
    JDP.decode RegisterEventTopicResult



{-| Type of HTTP response from removeIpRout
-}
type alias RemoveIpRoutesResult =
    { 
    }



removeIpRoutesResultDecoder : JD.Decoder RemoveIpRoutesResult
removeIpRoutesResultDecoder =
    JDP.decode RemoveIpRoutesResult



{-| Type of HTTP response from removeTagsFromResour
-}
type alias RemoveTagsFromResourceResult =
    { 
    }



removeTagsFromResourceResultDecoder : JD.Decoder RemoveTagsFromResourceResult
removeTagsFromResourceResultDecoder =
    JDP.decode RemoveTagsFromResourceResult



{-| One of

* `ReplicationScope_Domain`

-}
type ReplicationScope
    = ReplicationScope_Domain



replicationScopeDecoder : JD.Decoder ReplicationScope
replicationScopeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Domain" ->
                        JD.succeed ReplicationScope_Domain


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from restoreFromSnapsh
-}
type alias RestoreFromSnapshotResult =
    { 
    }



restoreFromSnapshotResultDecoder : JD.Decoder RestoreFromSnapshotResult
restoreFromSnapshotResultDecoder =
    JDP.decode RestoreFromSnapshotResult



{-| <p>Information about a schema extension.</p>
-}
type alias SchemaExtensionInfo =
    { directoryId : Maybe String
    , schemaExtensionId : Maybe String
    , description : Maybe String
    , schemaExtensionStatus : Maybe SchemaExtensionStatus
    , schemaExtensionStatusReason : Maybe String
    , startDateTime : Maybe Date
    , endDateTime : Maybe Date
    }



schemaExtensionInfoDecoder : JD.Decoder SchemaExtensionInfo
schemaExtensionInfoDecoder =
    JDP.decode SchemaExtensionInfo
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "schemaExtensionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "schemaExtensionStatus" (JD.nullable schemaExtensionStatusDecoder) Nothing
        |> JDP.optional "schemaExtensionStatusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "startDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endDateTime" (JD.nullable JDX.date) Nothing




{-| One of

* `SchemaExtensionStatus_Initializing`
* `SchemaExtensionStatus_CreatingSnapshot`
* `SchemaExtensionStatus_UpdatingSchema`
* `SchemaExtensionStatus_Replicating`
* `SchemaExtensionStatus_CancelInProgress`
* `SchemaExtensionStatus_RollbackInProgress`
* `SchemaExtensionStatus_Cancelled`
* `SchemaExtensionStatus_Failed`
* `SchemaExtensionStatus_Completed`

-}
type SchemaExtensionStatus
    = SchemaExtensionStatus_Initializing
    | SchemaExtensionStatus_CreatingSnapshot
    | SchemaExtensionStatus_UpdatingSchema
    | SchemaExtensionStatus_Replicating
    | SchemaExtensionStatus_CancelInProgress
    | SchemaExtensionStatus_RollbackInProgress
    | SchemaExtensionStatus_Cancelled
    | SchemaExtensionStatus_Failed
    | SchemaExtensionStatus_Completed



schemaExtensionStatusDecoder : JD.Decoder SchemaExtensionStatus
schemaExtensionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Initializing" ->
                        JD.succeed SchemaExtensionStatus_Initializing

                    "CreatingSnapshot" ->
                        JD.succeed SchemaExtensionStatus_CreatingSnapshot

                    "UpdatingSchema" ->
                        JD.succeed SchemaExtensionStatus_UpdatingSchema

                    "Replicating" ->
                        JD.succeed SchemaExtensionStatus_Replicating

                    "CancelInProgress" ->
                        JD.succeed SchemaExtensionStatus_CancelInProgress

                    "RollbackInProgress" ->
                        JD.succeed SchemaExtensionStatus_RollbackInProgress

                    "Cancelled" ->
                        JD.succeed SchemaExtensionStatus_Cancelled

                    "Failed" ->
                        JD.succeed SchemaExtensionStatus_Failed

                    "Completed" ->
                        JD.succeed SchemaExtensionStatus_Completed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An exception has occurred in AWS Directory Service.</p>
-}
type alias ServiceException =
    { message : Maybe String
    , requestId : Maybe String
    }



serviceExceptionDecoder : JD.Decoder ServiceException
serviceExceptionDecoder =
    JDP.decode ServiceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>Describes a directory snapshot.</p>
-}
type alias Snapshot =
    { directoryId : Maybe String
    , snapshotId : Maybe String
    , type_ : Maybe SnapshotType
    , name : Maybe String
    , status : Maybe SnapshotStatus
    , startTime : Maybe Date
    }



snapshotDecoder : JD.Decoder Snapshot
snapshotDecoder =
    JDP.decode Snapshot
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable snapshotTypeDecoder) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable snapshotStatusDecoder) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing




{-| <p>The maximum number of manual snapshots for the directory has been reached. You can use the <a>GetSnapshotLimits</a> operation to determine the snapshot limits for a directory.</p>
-}
type alias SnapshotLimitExceededException =
    { message : Maybe String
    , requestId : Maybe String
    }



snapshotLimitExceededExceptionDecoder : JD.Decoder SnapshotLimitExceededException
snapshotLimitExceededExceptionDecoder =
    JDP.decode SnapshotLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| <p>Contains manual snapshot limit information for a directory.</p>
-}
type alias SnapshotLimits =
    { manualSnapshotsLimit : Maybe Int
    , manualSnapshotsCurrentCount : Maybe Int
    , manualSnapshotsLimitReached : Maybe Bool
    }



snapshotLimitsDecoder : JD.Decoder SnapshotLimits
snapshotLimitsDecoder =
    JDP.decode SnapshotLimits
        |> JDP.optional "manualSnapshotsLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "manualSnapshotsCurrentCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "manualSnapshotsLimitReached" (JD.nullable JD.bool) Nothing




{-| One of

* `SnapshotStatus_Creating`
* `SnapshotStatus_Completed`
* `SnapshotStatus_Failed`

-}
type SnapshotStatus
    = SnapshotStatus_Creating
    | SnapshotStatus_Completed
    | SnapshotStatus_Failed



snapshotStatusDecoder : JD.Decoder SnapshotStatus
snapshotStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed SnapshotStatus_Creating

                    "Completed" ->
                        JD.succeed SnapshotStatus_Completed

                    "Failed" ->
                        JD.succeed SnapshotStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `SnapshotType_Auto`
* `SnapshotType_Manual`

-}
type SnapshotType
    = SnapshotType_Auto
    | SnapshotType_Manual



snapshotTypeDecoder : JD.Decoder SnapshotType
snapshotTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Auto" ->
                        JD.succeed SnapshotType_Auto

                    "Manual" ->
                        JD.succeed SnapshotType_Manual


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from startSchemaExtensi
-}
type alias StartSchemaExtensionResult =
    { schemaExtensionId : Maybe String
    }



startSchemaExtensionResultDecoder : JD.Decoder StartSchemaExtensionResult
startSchemaExtensionResultDecoder =
    JDP.decode StartSchemaExtensionResult
        |> JDP.optional "schemaExtensionId" (JD.nullable JD.string) Nothing




{-| <p>Metadata assigned to a directory consisting of a key-value pair.</p>
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




{-| <p>The maximum allowed number of tags was exceeded.</p>
-}
type alias TagLimitExceededException =
    { message : Maybe String
    , requestId : Maybe String
    }



tagLimitExceededExceptionDecoder : JD.Decoder TagLimitExceededException
tagLimitExceededExceptionDecoder =
    JDP.decode TagLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| One of

* `TopicStatus_Registered`
* `TopicStatus_Topic not found`
* `TopicStatus_Failed`
* `TopicStatus_Deleted`

-}
type TopicStatus
    = TopicStatus_Registered
    | TopicStatus_Topic_not_found
    | TopicStatus_Failed
    | TopicStatus_Deleted



topicStatusDecoder : JD.Decoder TopicStatus
topicStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Registered" ->
                        JD.succeed TopicStatus_Registered

                    "Topic_not_found" ->
                        JD.succeed TopicStatus_Topic_not_found

                    "Failed" ->
                        JD.succeed TopicStatus_Failed

                    "Deleted" ->
                        JD.succeed TopicStatus_Deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a trust relationship between an Microsoft AD in the AWS cloud and an external domain.</p>
-}
type alias Trust =
    { directoryId : Maybe String
    , trustId : Maybe String
    , remoteDomainName : Maybe String
    , trustType : Maybe TrustType
    , trustDirection : Maybe TrustDirection
    , trustState : Maybe TrustState
    , createdDateTime : Maybe Date
    , lastUpdatedDateTime : Maybe Date
    , stateLastUpdatedDateTime : Maybe Date
    , trustStateReason : Maybe String
    }



trustDecoder : JD.Decoder Trust
trustDecoder =
    JDP.decode Trust
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "trustId" (JD.nullable JD.string) Nothing
        |> JDP.optional "remoteDomainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "trustType" (JD.nullable trustTypeDecoder) Nothing
        |> JDP.optional "trustDirection" (JD.nullable trustDirectionDecoder) Nothing
        |> JDP.optional "trustState" (JD.nullable trustStateDecoder) Nothing
        |> JDP.optional "createdDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stateLastUpdatedDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "trustStateReason" (JD.nullable JD.string) Nothing




{-| One of

* `TrustDirection_One-Way: Outgoing`
* `TrustDirection_One-Way: Incoming`
* `TrustDirection_Two-Way`

-}
type TrustDirection
    = TrustDirection_One_Way_Outgoing
    | TrustDirection_One_Way_Incoming
    | TrustDirection_Two_Way



trustDirectionDecoder : JD.Decoder TrustDirection
trustDirectionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "One_Way_Outgoing" ->
                        JD.succeed TrustDirection_One_Way_Outgoing

                    "One_Way_Incoming" ->
                        JD.succeed TrustDirection_One_Way_Incoming

                    "Two_Way" ->
                        JD.succeed TrustDirection_Two_Way


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `TrustState_Creating`
* `TrustState_Created`
* `TrustState_Verifying`
* `TrustState_VerifyFailed`
* `TrustState_Verified`
* `TrustState_Deleting`
* `TrustState_Deleted`
* `TrustState_Failed`

-}
type TrustState
    = TrustState_Creating
    | TrustState_Created
    | TrustState_Verifying
    | TrustState_VerifyFailed
    | TrustState_Verified
    | TrustState_Deleting
    | TrustState_Deleted
    | TrustState_Failed



trustStateDecoder : JD.Decoder TrustState
trustStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed TrustState_Creating

                    "Created" ->
                        JD.succeed TrustState_Created

                    "Verifying" ->
                        JD.succeed TrustState_Verifying

                    "VerifyFailed" ->
                        JD.succeed TrustState_VerifyFailed

                    "Verified" ->
                        JD.succeed TrustState_Verified

                    "Deleting" ->
                        JD.succeed TrustState_Deleting

                    "Deleted" ->
                        JD.succeed TrustState_Deleted

                    "Failed" ->
                        JD.succeed TrustState_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `TrustType_Forest`

-}
type TrustType
    = TrustType_Forest



trustTypeDecoder : JD.Decoder TrustType
trustTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Forest" ->
                        JD.succeed TrustType_Forest


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The operation is not supported.</p>
-}
type alias UnsupportedOperationException =
    { message : Maybe String
    , requestId : Maybe String
    }



unsupportedOperationExceptionDecoder : JD.Decoder UnsupportedOperationException
unsupportedOperationExceptionDecoder =
    JDP.decode UnsupportedOperationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateConditionalForward
-}
type alias UpdateConditionalForwarderResult =
    { 
    }



updateConditionalForwarderResultDecoder : JD.Decoder UpdateConditionalForwarderResult
updateConditionalForwarderResultDecoder =
    JDP.decode UpdateConditionalForwarderResult



{-| Type of HTTP response from updateRadi
-}
type alias UpdateRadiusResult =
    { 
    }



updateRadiusResultDecoder : JD.Decoder UpdateRadiusResult
updateRadiusResultDecoder =
    JDP.decode UpdateRadiusResult



{-| Type of HTTP response from verifyTru
-}
type alias VerifyTrustResult =
    { trustId : Maybe String
    }



verifyTrustResultDecoder : JD.Decoder VerifyTrustResult
verifyTrustResultDecoder =
    JDP.decode VerifyTrustResult
        |> JDP.optional "trustId" (JD.nullable JD.string) Nothing




