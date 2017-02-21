module AWS.Services.DatabaseMigrationService
    exposing
        ( config
        , addTagsToResource
        , createEndpoint
        , CreateEndpointOptions
        , createReplicationInstance
        , CreateReplicationInstanceOptions
        , createReplicationSubnetGroup
        , CreateReplicationSubnetGroupOptions
        , createReplicationTask
        , CreateReplicationTaskOptions
        , deleteCertificate
        , deleteEndpoint
        , deleteReplicationInstance
        , deleteReplicationSubnetGroup
        , deleteReplicationTask
        , describeAccountAttributes
        , describeCertificates
        , DescribeCertificatesOptions
        , describeConnections
        , DescribeConnectionsOptions
        , describeEndpointTypes
        , DescribeEndpointTypesOptions
        , describeEndpoints
        , DescribeEndpointsOptions
        , describeOrderableReplicationInstances
        , DescribeOrderableReplicationInstancesOptions
        , describeRefreshSchemasStatus
        , describeReplicationInstances
        , DescribeReplicationInstancesOptions
        , describeReplicationSubnetGroups
        , DescribeReplicationSubnetGroupsOptions
        , describeReplicationTasks
        , DescribeReplicationTasksOptions
        , describeSchemas
        , DescribeSchemasOptions
        , describeTableStatistics
        , DescribeTableStatisticsOptions
        , importCertificate
        , ImportCertificateOptions
        , listTagsForResource
        , modifyEndpoint
        , ModifyEndpointOptions
        , modifyReplicationInstance
        , ModifyReplicationInstanceOptions
        , modifyReplicationSubnetGroup
        , ModifyReplicationSubnetGroupOptions
        , modifyReplicationTask
        , ModifyReplicationTaskOptions
        , refreshSchemas
        , removeTagsFromResource
        , startReplicationTask
        , StartReplicationTaskOptions
        , stopReplicationTask
        , testConnection
        , AccessDeniedFault
        , AccountQuota
        , AddTagsToResourceResponse
        , AvailabilityZone
        , Certificate
        , Connection
        , CreateEndpointResponse
        , CreateReplicationInstanceResponse
        , CreateReplicationSubnetGroupResponse
        , CreateReplicationTaskResponse
        , DeleteCertificateResponse
        , DeleteEndpointResponse
        , DeleteReplicationInstanceResponse
        , DeleteReplicationSubnetGroupResponse
        , DeleteReplicationTaskResponse
        , DescribeAccountAttributesResponse
        , DescribeCertificatesResponse
        , DescribeConnectionsResponse
        , DescribeEndpointTypesResponse
        , DescribeEndpointsResponse
        , DescribeOrderableReplicationInstancesResponse
        , DescribeRefreshSchemasStatusResponse
        , DescribeReplicationInstancesResponse
        , DescribeReplicationSubnetGroupsResponse
        , DescribeReplicationTasksResponse
        , DescribeSchemasResponse
        , DescribeTableStatisticsResponse
        , DmsSslModeValue(..)
        , Endpoint
        , Filter
        , ImportCertificateResponse
        , InsufficientResourceCapacityFault
        , InvalidCertificateFault
        , InvalidResourceStateFault
        , InvalidSubnet
        , KMSKeyNotAccessibleFault
        , ListTagsForResourceResponse
        , MigrationTypeValue(..)
        , ModifyEndpointResponse
        , ModifyReplicationInstanceResponse
        , ModifyReplicationSubnetGroupResponse
        , ModifyReplicationTaskResponse
        , OrderableReplicationInstance
        , RefreshSchemasResponse
        , RefreshSchemasStatus
        , RefreshSchemasStatusTypeValue(..)
        , RemoveTagsFromResourceResponse
        , ReplicationEndpointTypeValue(..)
        , ReplicationInstance
        , ReplicationPendingModifiedValues
        , ReplicationSubnetGroup
        , ReplicationSubnetGroupDoesNotCoverEnoughAZs
        , ReplicationTask
        , ReplicationTaskStats
        , ResourceAlreadyExistsFault
        , ResourceNotFoundFault
        , ResourceQuotaExceededFault
        , StartReplicationTaskResponse
        , StartReplicationTaskTypeValue(..)
        , StopReplicationTaskResponse
        , StorageQuotaExceededFault
        , Subnet
        , SubnetAlreadyInUse
        , SupportedEndpointType
        , TableStatistics
        , Tag
        , TestConnectionResponse
        , UpgradeDependencyFailureFault
        , VpcSecurityGroupMembership
        )

{-| <fullname>AWS Database Migration Service</fullname> <p>AWS Database Migration Service (AWS DMS) can migrate your data to and from the most widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as heterogeneous migrations between different database platforms, such as Oracle to MySQL or SQL Server to PostgreSQL.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToResource](#addTagsToResource)
* [createEndpoint](#createEndpoint)
* [CreateEndpointOptions](#CreateEndpointOptions)
* [createReplicationInstance](#createReplicationInstance)
* [CreateReplicationInstanceOptions](#CreateReplicationInstanceOptions)
* [createReplicationSubnetGroup](#createReplicationSubnetGroup)
* [CreateReplicationSubnetGroupOptions](#CreateReplicationSubnetGroupOptions)
* [createReplicationTask](#createReplicationTask)
* [CreateReplicationTaskOptions](#CreateReplicationTaskOptions)
* [deleteCertificate](#deleteCertificate)
* [deleteEndpoint](#deleteEndpoint)
* [deleteReplicationInstance](#deleteReplicationInstance)
* [deleteReplicationSubnetGroup](#deleteReplicationSubnetGroup)
* [deleteReplicationTask](#deleteReplicationTask)
* [describeAccountAttributes](#describeAccountAttributes)
* [describeCertificates](#describeCertificates)
* [DescribeCertificatesOptions](#DescribeCertificatesOptions)
* [describeConnections](#describeConnections)
* [DescribeConnectionsOptions](#DescribeConnectionsOptions)
* [describeEndpointTypes](#describeEndpointTypes)
* [DescribeEndpointTypesOptions](#DescribeEndpointTypesOptions)
* [describeEndpoints](#describeEndpoints)
* [DescribeEndpointsOptions](#DescribeEndpointsOptions)
* [describeOrderableReplicationInstances](#describeOrderableReplicationInstances)
* [DescribeOrderableReplicationInstancesOptions](#DescribeOrderableReplicationInstancesOptions)
* [describeRefreshSchemasStatus](#describeRefreshSchemasStatus)
* [describeReplicationInstances](#describeReplicationInstances)
* [DescribeReplicationInstancesOptions](#DescribeReplicationInstancesOptions)
* [describeReplicationSubnetGroups](#describeReplicationSubnetGroups)
* [DescribeReplicationSubnetGroupsOptions](#DescribeReplicationSubnetGroupsOptions)
* [describeReplicationTasks](#describeReplicationTasks)
* [DescribeReplicationTasksOptions](#DescribeReplicationTasksOptions)
* [describeSchemas](#describeSchemas)
* [DescribeSchemasOptions](#DescribeSchemasOptions)
* [describeTableStatistics](#describeTableStatistics)
* [DescribeTableStatisticsOptions](#DescribeTableStatisticsOptions)
* [importCertificate](#importCertificate)
* [ImportCertificateOptions](#ImportCertificateOptions)
* [listTagsForResource](#listTagsForResource)
* [modifyEndpoint](#modifyEndpoint)
* [ModifyEndpointOptions](#ModifyEndpointOptions)
* [modifyReplicationInstance](#modifyReplicationInstance)
* [ModifyReplicationInstanceOptions](#ModifyReplicationInstanceOptions)
* [modifyReplicationSubnetGroup](#modifyReplicationSubnetGroup)
* [ModifyReplicationSubnetGroupOptions](#ModifyReplicationSubnetGroupOptions)
* [modifyReplicationTask](#modifyReplicationTask)
* [ModifyReplicationTaskOptions](#ModifyReplicationTaskOptions)
* [refreshSchemas](#refreshSchemas)
* [removeTagsFromResource](#removeTagsFromResource)
* [startReplicationTask](#startReplicationTask)
* [StartReplicationTaskOptions](#StartReplicationTaskOptions)
* [stopReplicationTask](#stopReplicationTask)
* [testConnection](#testConnection)


@docs addTagsToResource,createEndpoint,CreateEndpointOptions,createReplicationInstance,CreateReplicationInstanceOptions,createReplicationSubnetGroup,CreateReplicationSubnetGroupOptions,createReplicationTask,CreateReplicationTaskOptions,deleteCertificate,deleteEndpoint,deleteReplicationInstance,deleteReplicationSubnetGroup,deleteReplicationTask,describeAccountAttributes,describeCertificates,DescribeCertificatesOptions,describeConnections,DescribeConnectionsOptions,describeEndpointTypes,DescribeEndpointTypesOptions,describeEndpoints,DescribeEndpointsOptions,describeOrderableReplicationInstances,DescribeOrderableReplicationInstancesOptions,describeRefreshSchemasStatus,describeReplicationInstances,DescribeReplicationInstancesOptions,describeReplicationSubnetGroups,DescribeReplicationSubnetGroupsOptions,describeReplicationTasks,DescribeReplicationTasksOptions,describeSchemas,DescribeSchemasOptions,describeTableStatistics,DescribeTableStatisticsOptions,importCertificate,ImportCertificateOptions,listTagsForResource,modifyEndpoint,ModifyEndpointOptions,modifyReplicationInstance,ModifyReplicationInstanceOptions,modifyReplicationSubnetGroup,ModifyReplicationSubnetGroupOptions,modifyReplicationTask,ModifyReplicationTaskOptions,refreshSchemas,removeTagsFromResource,startReplicationTask,StartReplicationTaskOptions,stopReplicationTask,testConnection

## Responses

* [AddTagsToResourceResponse](#AddTagsToResourceResponse)
* [CreateEndpointResponse](#CreateEndpointResponse)
* [CreateReplicationInstanceResponse](#CreateReplicationInstanceResponse)
* [CreateReplicationSubnetGroupResponse](#CreateReplicationSubnetGroupResponse)
* [CreateReplicationTaskResponse](#CreateReplicationTaskResponse)
* [DeleteCertificateResponse](#DeleteCertificateResponse)
* [DeleteEndpointResponse](#DeleteEndpointResponse)
* [DeleteReplicationInstanceResponse](#DeleteReplicationInstanceResponse)
* [DeleteReplicationSubnetGroupResponse](#DeleteReplicationSubnetGroupResponse)
* [DeleteReplicationTaskResponse](#DeleteReplicationTaskResponse)
* [DescribeAccountAttributesResponse](#DescribeAccountAttributesResponse)
* [DescribeCertificatesResponse](#DescribeCertificatesResponse)
* [DescribeConnectionsResponse](#DescribeConnectionsResponse)
* [DescribeEndpointTypesResponse](#DescribeEndpointTypesResponse)
* [DescribeEndpointsResponse](#DescribeEndpointsResponse)
* [DescribeOrderableReplicationInstancesResponse](#DescribeOrderableReplicationInstancesResponse)
* [DescribeRefreshSchemasStatusResponse](#DescribeRefreshSchemasStatusResponse)
* [DescribeReplicationInstancesResponse](#DescribeReplicationInstancesResponse)
* [DescribeReplicationSubnetGroupsResponse](#DescribeReplicationSubnetGroupsResponse)
* [DescribeReplicationTasksResponse](#DescribeReplicationTasksResponse)
* [DescribeSchemasResponse](#DescribeSchemasResponse)
* [DescribeTableStatisticsResponse](#DescribeTableStatisticsResponse)
* [ImportCertificateResponse](#ImportCertificateResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ModifyEndpointResponse](#ModifyEndpointResponse)
* [ModifyReplicationInstanceResponse](#ModifyReplicationInstanceResponse)
* [ModifyReplicationSubnetGroupResponse](#ModifyReplicationSubnetGroupResponse)
* [ModifyReplicationTaskResponse](#ModifyReplicationTaskResponse)
* [RefreshSchemasResponse](#RefreshSchemasResponse)
* [RemoveTagsFromResourceResponse](#RemoveTagsFromResourceResponse)
* [StartReplicationTaskResponse](#StartReplicationTaskResponse)
* [StopReplicationTaskResponse](#StopReplicationTaskResponse)
* [TestConnectionResponse](#TestConnectionResponse)


@docs AddTagsToResourceResponse,CreateEndpointResponse,CreateReplicationInstanceResponse,CreateReplicationSubnetGroupResponse,CreateReplicationTaskResponse,DeleteCertificateResponse,DeleteEndpointResponse,DeleteReplicationInstanceResponse,DeleteReplicationSubnetGroupResponse,DeleteReplicationTaskResponse,DescribeAccountAttributesResponse,DescribeCertificatesResponse,DescribeConnectionsResponse,DescribeEndpointTypesResponse,DescribeEndpointsResponse,DescribeOrderableReplicationInstancesResponse,DescribeRefreshSchemasStatusResponse,DescribeReplicationInstancesResponse,DescribeReplicationSubnetGroupsResponse,DescribeReplicationTasksResponse,DescribeSchemasResponse,DescribeTableStatisticsResponse,ImportCertificateResponse,ListTagsForResourceResponse,ModifyEndpointResponse,ModifyReplicationInstanceResponse,ModifyReplicationSubnetGroupResponse,ModifyReplicationTaskResponse,RefreshSchemasResponse,RemoveTagsFromResourceResponse,StartReplicationTaskResponse,StopReplicationTaskResponse,TestConnectionResponse

## Records

* [AccountQuota](#AccountQuota)
* [AvailabilityZone](#AvailabilityZone)
* [Certificate](#Certificate)
* [Connection](#Connection)
* [Endpoint](#Endpoint)
* [Filter](#Filter)
* [OrderableReplicationInstance](#OrderableReplicationInstance)
* [RefreshSchemasStatus](#RefreshSchemasStatus)
* [ReplicationInstance](#ReplicationInstance)
* [ReplicationPendingModifiedValues](#ReplicationPendingModifiedValues)
* [ReplicationSubnetGroup](#ReplicationSubnetGroup)
* [ReplicationTask](#ReplicationTask)
* [ReplicationTaskStats](#ReplicationTaskStats)
* [Subnet](#Subnet)
* [SupportedEndpointType](#SupportedEndpointType)
* [TableStatistics](#TableStatistics)
* [Tag](#Tag)
* [VpcSecurityGroupMembership](#VpcSecurityGroupMembership)


@docs AccountQuota,AvailabilityZone,Certificate,Connection,Endpoint,Filter,OrderableReplicationInstance,RefreshSchemasStatus,ReplicationInstance,ReplicationPendingModifiedValues,ReplicationSubnetGroup,ReplicationTask,ReplicationTaskStats,Subnet,SupportedEndpointType,TableStatistics,Tag,VpcSecurityGroupMembership

## Unions

* [DmsSslModeValue](#DmsSslModeValue)
* [MigrationTypeValue](#MigrationTypeValue)
* [RefreshSchemasStatusTypeValue](#RefreshSchemasStatusTypeValue)
* [ReplicationEndpointTypeValue](#ReplicationEndpointTypeValue)
* [StartReplicationTaskTypeValue](#StartReplicationTaskTypeValue)


@docs DmsSslModeValue,MigrationTypeValue,RefreshSchemasStatusTypeValue,ReplicationEndpointTypeValue,StartReplicationTaskTypeValue

## Exceptions

* [AccessDeniedFault](#AccessDeniedFault)
* [InsufficientResourceCapacityFault](#InsufficientResourceCapacityFault)
* [InvalidCertificateFault](#InvalidCertificateFault)
* [InvalidResourceStateFault](#InvalidResourceStateFault)
* [InvalidSubnet](#InvalidSubnet)
* [KMSKeyNotAccessibleFault](#KMSKeyNotAccessibleFault)
* [ReplicationSubnetGroupDoesNotCoverEnoughAZs](#ReplicationSubnetGroupDoesNotCoverEnoughAZs)
* [ResourceAlreadyExistsFault](#ResourceAlreadyExistsFault)
* [ResourceNotFoundFault](#ResourceNotFoundFault)
* [ResourceQuotaExceededFault](#ResourceQuotaExceededFault)
* [StorageQuotaExceededFault](#StorageQuotaExceededFault)
* [SubnetAlreadyInUse](#SubnetAlreadyInUse)
* [UpgradeDependencyFailureFault](#UpgradeDependencyFailureFault)


@docs AccessDeniedFault,InsufficientResourceCapacityFault,InvalidCertificateFault,InvalidResourceStateFault,InvalidSubnet,KMSKeyNotAccessibleFault,ReplicationSubnetGroupDoesNotCoverEnoughAZs,ResourceAlreadyExistsFault,ResourceNotFoundFault,ResourceQuotaExceededFault,StorageQuotaExceededFault,SubnetAlreadyInUse,UpgradeDependencyFailureFault

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
        "dms"
        "2016-01-01"
        "1.1"
        "AWSDMS_20160101."
        "dms.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Adds metadata tags to a DMS resource, including replication instance, endpoint, security group, and migration task. These tags can also be used with cost allocation reporting to track cost associated with DMS resources, or used in a Condition statement in an IAM policy for DMS.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTagsToResource :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest AddTagsToResourceResponse
addTagsToResource resourceArn tags =
    AWS.Http.unsignedRequest
        "AddTagsToResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsToResourceResponseDecoder



{-| <p>Creates an endpoint using the provided settings.</p>

__Required Parameters__

* `endpointIdentifier` __:__ `String`
* `endpointType` __:__ `ReplicationEndpointTypeValue`
* `engineName` __:__ `String`


-}
createEndpoint :
    String
    -> ReplicationEndpointTypeValue
    -> String
    -> (CreateEndpointOptions -> CreateEndpointOptions)
    -> AWS.Http.UnsignedRequest CreateEndpointResponse
createEndpoint endpointIdentifier endpointType engineName setOptions =
  let
    options = setOptions (CreateEndpointOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createEndpointResponseDecoder


{-| Options for a createEndpoint request
-}
type alias CreateEndpointOptions =
    { username : Maybe String
    , password : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    }



{-| <p>Creates the replication instance using the specified parameters.</p>

__Required Parameters__

* `replicationInstanceIdentifier` __:__ `String`
* `replicationInstanceClass` __:__ `String`


-}
createReplicationInstance :
    String
    -> String
    -> (CreateReplicationInstanceOptions -> CreateReplicationInstanceOptions)
    -> AWS.Http.UnsignedRequest CreateReplicationInstanceResponse
createReplicationInstance replicationInstanceIdentifier replicationInstanceClass setOptions =
  let
    options = setOptions (CreateReplicationInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateReplicationInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReplicationInstanceResponseDecoder


{-| Options for a createReplicationInstance request
-}
type alias CreateReplicationInstanceOptions =
    { allocatedStorage : Maybe Int
    , vpcSecurityGroupIds : Maybe (List String)
    , availabilityZone : Maybe String
    , replicationSubnetGroupIdentifier : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , publiclyAccessible : Maybe Bool
    }



{-| <p>Creates a replication subnet group given a list of the subnet IDs in a VPC.</p>

__Required Parameters__

* `replicationSubnetGroupIdentifier` __:__ `String`
* `replicationSubnetGroupDescription` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}
createReplicationSubnetGroup :
    String
    -> String
    -> (List String)
    -> (CreateReplicationSubnetGroupOptions -> CreateReplicationSubnetGroupOptions)
    -> AWS.Http.UnsignedRequest CreateReplicationSubnetGroupResponse
createReplicationSubnetGroup replicationSubnetGroupIdentifier replicationSubnetGroupDescription subnetIds setOptions =
  let
    options = setOptions (CreateReplicationSubnetGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateReplicationSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReplicationSubnetGroupResponseDecoder


{-| Options for a createReplicationSubnetGroup request
-}
type alias CreateReplicationSubnetGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a replication task using the specified parameters.</p>

__Required Parameters__

* `replicationTaskIdentifier` __:__ `String`
* `sourceEndpointArn` __:__ `String`
* `targetEndpointArn` __:__ `String`
* `replicationInstanceArn` __:__ `String`
* `migrationType` __:__ `MigrationTypeValue`
* `tableMappings` __:__ `String`


-}
createReplicationTask :
    String
    -> String
    -> String
    -> String
    -> MigrationTypeValue
    -> String
    -> (CreateReplicationTaskOptions -> CreateReplicationTaskOptions)
    -> AWS.Http.UnsignedRequest CreateReplicationTaskResponse
createReplicationTask replicationTaskIdentifier sourceEndpointArn targetEndpointArn replicationInstanceArn migrationType tableMappings setOptions =
  let
    options = setOptions (CreateReplicationTaskOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateReplicationTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReplicationTaskResponseDecoder


{-| Options for a createReplicationTask request
-}
type alias CreateReplicationTaskOptions =
    { replicationTaskSettings : Maybe String
    , cdcStartTime : Maybe Date
    , tags : Maybe (List Tag)
    }



{-| <p>Deletes the specified certificate. </p>

__Required Parameters__

* `certificateArn` __:__ `String`


-}
deleteCertificate :
    String
    -> AWS.Http.UnsignedRequest DeleteCertificateResponse
deleteCertificate certificateArn =
    AWS.Http.unsignedRequest
        "DeleteCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteCertificateResponseDecoder



{-| <p>Deletes the specified endpoint.</p> <note> <p>All tasks associated with the endpoint must be deleted before you can delete the endpoint.</p> </note> <p/>

__Required Parameters__

* `endpointArn` __:__ `String`


-}
deleteEndpoint :
    String
    -> AWS.Http.UnsignedRequest DeleteEndpointResponse
deleteEndpoint endpointArn =
    AWS.Http.unsignedRequest
        "DeleteEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteEndpointResponseDecoder



{-| <p>Deletes the specified replication instance.</p> <note> <p>You must delete any migration tasks that are associated with the replication instance before you can delete it.</p> </note> <p/>

__Required Parameters__

* `replicationInstanceArn` __:__ `String`


-}
deleteReplicationInstance :
    String
    -> AWS.Http.UnsignedRequest DeleteReplicationInstanceResponse
deleteReplicationInstance replicationInstanceArn =
    AWS.Http.unsignedRequest
        "DeleteReplicationInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReplicationInstanceResponseDecoder



{-| <p>Deletes a subnet group.</p>

__Required Parameters__

* `replicationSubnetGroupIdentifier` __:__ `String`


-}
deleteReplicationSubnetGroup :
    String
    -> AWS.Http.UnsignedRequest DeleteReplicationSubnetGroupResponse
deleteReplicationSubnetGroup replicationSubnetGroupIdentifier =
    AWS.Http.unsignedRequest
        "DeleteReplicationSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReplicationSubnetGroupResponseDecoder



{-| <p>Deletes the specified replication task.</p>

__Required Parameters__

* `replicationTaskArn` __:__ `String`


-}
deleteReplicationTask :
    String
    -> AWS.Http.UnsignedRequest DeleteReplicationTaskResponse
deleteReplicationTask replicationTaskArn =
    AWS.Http.unsignedRequest
        "DeleteReplicationTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReplicationTaskResponseDecoder



{-| <p>Lists all of the AWS DMS attributes for a customer account. The attributes include AWS DMS quotas for the account, such as the number of replication instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value.</p> <p>This command does not take any parameters.</p>

__Required Parameters__



-}
describeAccountAttributes :
    AWS.Http.UnsignedRequest DescribeAccountAttributesResponse
describeAccountAttributes =
    AWS.Http.unsignedRequest
        "DescribeAccountAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAccountAttributesResponseDecoder



{-| <p>Provides a description of the certificate.</p>

__Required Parameters__



-}
describeCertificates :
    (DescribeCertificatesOptions -> DescribeCertificatesOptions)
    -> AWS.Http.UnsignedRequest DescribeCertificatesResponse
describeCertificates setOptions =
  let
    options = setOptions (DescribeCertificatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCertificates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCertificatesResponseDecoder


{-| Options for a describeCertificates request
-}
type alias DescribeCertificatesOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Describes the status of the connections that have been made between the replication instance and an endpoint. Connections are created when you test an endpoint.</p>

__Required Parameters__



-}
describeConnections :
    (DescribeConnectionsOptions -> DescribeConnectionsOptions)
    -> AWS.Http.UnsignedRequest DescribeConnectionsResponse
describeConnections setOptions =
  let
    options = setOptions (DescribeConnectionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConnections"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConnectionsResponseDecoder


{-| Options for a describeConnections request
-}
type alias DescribeConnectionsOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about the type of endpoints available.</p>

__Required Parameters__



-}
describeEndpointTypes :
    (DescribeEndpointTypesOptions -> DescribeEndpointTypesOptions)
    -> AWS.Http.UnsignedRequest DescribeEndpointTypesResponse
describeEndpointTypes setOptions =
  let
    options = setOptions (DescribeEndpointTypesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEndpointTypes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEndpointTypesResponseDecoder


{-| Options for a describeEndpointTypes request
-}
type alias DescribeEndpointTypesOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about the endpoints for your account in the current region.</p>

__Required Parameters__



-}
describeEndpoints :
    (DescribeEndpointsOptions -> DescribeEndpointsOptions)
    -> AWS.Http.UnsignedRequest DescribeEndpointsResponse
describeEndpoints setOptions =
  let
    options = setOptions (DescribeEndpointsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEndpoints"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEndpointsResponseDecoder


{-| Options for a describeEndpoints request
-}
type alias DescribeEndpointsOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about the replication instance types that can be created in the specified region.</p>

__Required Parameters__



-}
describeOrderableReplicationInstances :
    (DescribeOrderableReplicationInstancesOptions -> DescribeOrderableReplicationInstancesOptions)
    -> AWS.Http.UnsignedRequest DescribeOrderableReplicationInstancesResponse
describeOrderableReplicationInstances setOptions =
  let
    options = setOptions (DescribeOrderableReplicationInstancesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeOrderableReplicationInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeOrderableReplicationInstancesResponseDecoder


{-| Options for a describeOrderableReplicationInstances request
-}
type alias DescribeOrderableReplicationInstancesOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the status of the RefreshSchemas operation.</p>

__Required Parameters__

* `endpointArn` __:__ `String`


-}
describeRefreshSchemasStatus :
    String
    -> AWS.Http.UnsignedRequest DescribeRefreshSchemasStatusResponse
describeRefreshSchemasStatus endpointArn =
    AWS.Http.unsignedRequest
        "DescribeRefreshSchemasStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRefreshSchemasStatusResponseDecoder



{-| <p>Returns information about replication instances for your account in the current region.</p>

__Required Parameters__



-}
describeReplicationInstances :
    (DescribeReplicationInstancesOptions -> DescribeReplicationInstancesOptions)
    -> AWS.Http.UnsignedRequest DescribeReplicationInstancesResponse
describeReplicationInstances setOptions =
  let
    options = setOptions (DescribeReplicationInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReplicationInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReplicationInstancesResponseDecoder


{-| Options for a describeReplicationInstances request
-}
type alias DescribeReplicationInstancesOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about the replication subnet groups.</p>

__Required Parameters__



-}
describeReplicationSubnetGroups :
    (DescribeReplicationSubnetGroupsOptions -> DescribeReplicationSubnetGroupsOptions)
    -> AWS.Http.UnsignedRequest DescribeReplicationSubnetGroupsResponse
describeReplicationSubnetGroups setOptions =
  let
    options = setOptions (DescribeReplicationSubnetGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReplicationSubnetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReplicationSubnetGroupsResponseDecoder


{-| Options for a describeReplicationSubnetGroups request
-}
type alias DescribeReplicationSubnetGroupsOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about replication tasks for your account in the current region.</p>

__Required Parameters__



-}
describeReplicationTasks :
    (DescribeReplicationTasksOptions -> DescribeReplicationTasksOptions)
    -> AWS.Http.UnsignedRequest DescribeReplicationTasksResponse
describeReplicationTasks setOptions =
  let
    options = setOptions (DescribeReplicationTasksOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReplicationTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReplicationTasksResponseDecoder


{-| Options for a describeReplicationTasks request
-}
type alias DescribeReplicationTasksOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about the schema for the specified endpoint.</p> <p/>

__Required Parameters__

* `endpointArn` __:__ `String`


-}
describeSchemas :
    String
    -> (DescribeSchemasOptions -> DescribeSchemasOptions)
    -> AWS.Http.UnsignedRequest DescribeSchemasResponse
describeSchemas endpointArn setOptions =
  let
    options = setOptions (DescribeSchemasOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSchemas"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSchemasResponseDecoder


{-| Options for a describeSchemas request
-}
type alias DescribeSchemasOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns table statistics on the database migration task, including table name, rows inserted, rows updated, and rows deleted.</p>

__Required Parameters__

* `replicationTaskArn` __:__ `String`


-}
describeTableStatistics :
    String
    -> (DescribeTableStatisticsOptions -> DescribeTableStatisticsOptions)
    -> AWS.Http.UnsignedRequest DescribeTableStatisticsResponse
describeTableStatistics replicationTaskArn setOptions =
  let
    options = setOptions (DescribeTableStatisticsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTableStatistics"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTableStatisticsResponseDecoder


{-| Options for a describeTableStatistics request
-}
type alias DescribeTableStatisticsOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Uploads the specified certificate.</p>

__Required Parameters__

* `certificateIdentifier` __:__ `String`


-}
importCertificate :
    String
    -> (ImportCertificateOptions -> ImportCertificateOptions)
    -> AWS.Http.UnsignedRequest ImportCertificateResponse
importCertificate certificateIdentifier setOptions =
  let
    options = setOptions (ImportCertificateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importCertificateResponseDecoder


{-| Options for a importCertificate request
-}
type alias ImportCertificateOptions =
    { certificatePem : Maybe String
    , certificateWallet : Maybe String
    }



{-| <p>Lists all tags for an AWS DMS resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}
listTagsForResource :
    String
    -> AWS.Http.UnsignedRequest ListTagsForResourceResponse
listTagsForResource resourceArn =
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForResourceResponseDecoder



{-| <p>Modifies the specified endpoint.</p>

__Required Parameters__

* `endpointArn` __:__ `String`


-}
modifyEndpoint :
    String
    -> (ModifyEndpointOptions -> ModifyEndpointOptions)
    -> AWS.Http.UnsignedRequest ModifyEndpointResponse
modifyEndpoint endpointArn setOptions =
  let
    options = setOptions (ModifyEndpointOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyEndpointResponseDecoder


{-| Options for a modifyEndpoint request
-}
type alias ModifyEndpointOptions =
    { endpointIdentifier : Maybe String
    , endpointType : Maybe ReplicationEndpointTypeValue
    , engineName : Maybe String
    , username : Maybe String
    , password : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    }



{-| <p>Modifies the replication instance to apply new settings. You can change one or more parameters by specifying these parameters and the new values in the request.</p> <p>Some settings are applied during the maintenance window.</p> <p/>

__Required Parameters__

* `replicationInstanceArn` __:__ `String`


-}
modifyReplicationInstance :
    String
    -> (ModifyReplicationInstanceOptions -> ModifyReplicationInstanceOptions)
    -> AWS.Http.UnsignedRequest ModifyReplicationInstanceResponse
modifyReplicationInstance replicationInstanceArn setOptions =
  let
    options = setOptions (ModifyReplicationInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyReplicationInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyReplicationInstanceResponseDecoder


{-| Options for a modifyReplicationInstance request
-}
type alias ModifyReplicationInstanceOptions =
    { allocatedStorage : Maybe Int
    , applyImmediately : Maybe Bool
    , replicationInstanceClass : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , allowMajorVersionUpgrade : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , replicationInstanceIdentifier : Maybe String
    }



{-| <p>Modifies the settings for the specified replication subnet group.</p>

__Required Parameters__

* `replicationSubnetGroupIdentifier` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}
modifyReplicationSubnetGroup :
    String
    -> (List String)
    -> (ModifyReplicationSubnetGroupOptions -> ModifyReplicationSubnetGroupOptions)
    -> AWS.Http.UnsignedRequest ModifyReplicationSubnetGroupResponse
modifyReplicationSubnetGroup replicationSubnetGroupIdentifier subnetIds setOptions =
  let
    options = setOptions (ModifyReplicationSubnetGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyReplicationSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyReplicationSubnetGroupResponseDecoder


{-| Options for a modifyReplicationSubnetGroup request
-}
type alias ModifyReplicationSubnetGroupOptions =
    { replicationSubnetGroupDescription : Maybe String
    }



{-| <p>Modifies the specified replication task.</p> <p>You can't modify the task endpoints. The task must be stopped before you can modify it. </p>

__Required Parameters__

* `replicationTaskArn` __:__ `String`


-}
modifyReplicationTask :
    String
    -> (ModifyReplicationTaskOptions -> ModifyReplicationTaskOptions)
    -> AWS.Http.UnsignedRequest ModifyReplicationTaskResponse
modifyReplicationTask replicationTaskArn setOptions =
  let
    options = setOptions (ModifyReplicationTaskOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyReplicationTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyReplicationTaskResponseDecoder


{-| Options for a modifyReplicationTask request
-}
type alias ModifyReplicationTaskOptions =
    { replicationTaskIdentifier : Maybe String
    , migrationType : Maybe MigrationTypeValue
    , tableMappings : Maybe String
    , replicationTaskSettings : Maybe String
    , cdcStartTime : Maybe Date
    }



{-| <p>Populates the schema for the specified endpoint. This is an asynchronous operation and can take several minutes. You can check the status of this operation by calling the DescribeRefreshSchemasStatus operation.</p>

__Required Parameters__

* `endpointArn` __:__ `String`
* `replicationInstanceArn` __:__ `String`


-}
refreshSchemas :
    String
    -> String
    -> AWS.Http.UnsignedRequest RefreshSchemasResponse
refreshSchemas endpointArn replicationInstanceArn =
    AWS.Http.unsignedRequest
        "RefreshSchemas"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        refreshSchemasResponseDecoder



{-| <p>Removes metadata tags from a DMS resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTagsFromResource :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest RemoveTagsFromResourceResponse
removeTagsFromResource resourceArn tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTagsFromResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsFromResourceResponseDecoder



{-| <p>Starts the replication task.</p>

__Required Parameters__

* `replicationTaskArn` __:__ `String`
* `startReplicationTaskType` __:__ `StartReplicationTaskTypeValue`


-}
startReplicationTask :
    String
    -> StartReplicationTaskTypeValue
    -> (StartReplicationTaskOptions -> StartReplicationTaskOptions)
    -> AWS.Http.UnsignedRequest StartReplicationTaskResponse
startReplicationTask replicationTaskArn startReplicationTaskType setOptions =
  let
    options = setOptions (StartReplicationTaskOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "StartReplicationTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startReplicationTaskResponseDecoder


{-| Options for a startReplicationTask request
-}
type alias StartReplicationTaskOptions =
    { cdcStartTime : Maybe Date
    }



{-| <p>Stops the replication task.</p> <p/>

__Required Parameters__

* `replicationTaskArn` __:__ `String`


-}
stopReplicationTask :
    String
    -> AWS.Http.UnsignedRequest StopReplicationTaskResponse
stopReplicationTask replicationTaskArn =
    AWS.Http.unsignedRequest
        "StopReplicationTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopReplicationTaskResponseDecoder



{-| <p>Tests the connection between the replication instance and the endpoint.</p>

__Required Parameters__

* `replicationInstanceArn` __:__ `String`
* `endpointArn` __:__ `String`


-}
testConnection :
    String
    -> String
    -> AWS.Http.UnsignedRequest TestConnectionResponse
testConnection replicationInstanceArn endpointArn =
    AWS.Http.unsignedRequest
        "TestConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        testConnectionResponseDecoder




{-| <p>AWS DMS was denied access to the endpoint.</p>
-}
type alias AccessDeniedFault =
    { message : Maybe String
    }



accessDeniedFaultDecoder : JD.Decoder AccessDeniedFault
accessDeniedFaultDecoder =
    JDP.decode AccessDeniedFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes a quota for an AWS account, for example, the number of replication instances allowed.</p>
-}
type alias AccountQuota =
    { accountQuotaName : Maybe String
    , used : Maybe Int
    , max : Maybe Int
    }



accountQuotaDecoder : JD.Decoder AccountQuota
accountQuotaDecoder =
    JDP.decode AccountQuota
        |> JDP.optional "accountQuotaName" (JD.nullable JD.string) Nothing
        |> JDP.optional "used" (JD.nullable JD.int) Nothing
        |> JDP.optional "max" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from addTagsToResource
-}
type alias AddTagsToResourceResponse =
    { 
    }



addTagsToResourceResponseDecoder : JD.Decoder AddTagsToResourceResponse
addTagsToResourceResponseDecoder =
    JDP.decode AddTagsToResourceResponse



{-| <p/>
-}
type alias AvailabilityZone =
    { name : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JDP.decode AvailabilityZone
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>The SSL certificate that can be used to encrypt connections between the endpoints and the replication instance.</p>
-}
type alias Certificate =
    { certificateIdentifier : Maybe String
    , certificateCreationDate : Maybe Date
    , certificatePem : Maybe String
    , certificateWallet : Maybe String
    , certificateArn : Maybe String
    , certificateOwner : Maybe String
    , validFromDate : Maybe Date
    , validToDate : Maybe Date
    , signingAlgorithm : Maybe String
    , keyLength : Maybe Int
    }



certificateDecoder : JD.Decoder Certificate
certificateDecoder =
    JDP.decode Certificate
        |> JDP.optional "certificateIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateCreationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "certificatePem" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateWallet" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateOwner" (JD.nullable JD.string) Nothing
        |> JDP.optional "validFromDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "validToDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "signingAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyLength" (JD.nullable JD.int) Nothing




{-| <p/>
-}
type alias Connection =
    { replicationInstanceArn : Maybe String
    , endpointArn : Maybe String
    , status : Maybe String
    , lastFailureMessage : Maybe String
    , endpointIdentifier : Maybe String
    , replicationInstanceIdentifier : Maybe String
    }



connectionDecoder : JD.Decoder Connection
connectionDecoder =
    JDP.decode Connection
        |> JDP.optional "replicationInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpointArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastFailureMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpointIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstanceIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createEndpoint
-}
type alias CreateEndpointResponse =
    { endpoint : Maybe Endpoint
    }



createEndpointResponseDecoder : JD.Decoder CreateEndpointResponse
createEndpointResponseDecoder =
    JDP.decode CreateEndpointResponse
        |> JDP.optional "endpoint" (JD.nullable endpointDecoder) Nothing




{-| Type of HTTP response from createReplicationInstance
-}
type alias CreateReplicationInstanceResponse =
    { replicationInstance : Maybe ReplicationInstance
    }



createReplicationInstanceResponseDecoder : JD.Decoder CreateReplicationInstanceResponse
createReplicationInstanceResponseDecoder =
    JDP.decode CreateReplicationInstanceResponse
        |> JDP.optional "replicationInstance" (JD.nullable replicationInstanceDecoder) Nothing




{-| Type of HTTP response from createReplicationSubnetGroup
-}
type alias CreateReplicationSubnetGroupResponse =
    { replicationSubnetGroup : Maybe ReplicationSubnetGroup
    }



createReplicationSubnetGroupResponseDecoder : JD.Decoder CreateReplicationSubnetGroupResponse
createReplicationSubnetGroupResponseDecoder =
    JDP.decode CreateReplicationSubnetGroupResponse
        |> JDP.optional "replicationSubnetGroup" (JD.nullable replicationSubnetGroupDecoder) Nothing




{-| Type of HTTP response from createReplicationTask
-}
type alias CreateReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }



createReplicationTaskResponseDecoder : JD.Decoder CreateReplicationTaskResponse
createReplicationTaskResponseDecoder =
    JDP.decode CreateReplicationTaskResponse
        |> JDP.optional "replicationTask" (JD.nullable replicationTaskDecoder) Nothing




{-| Type of HTTP response from deleteCertificate
-}
type alias DeleteCertificateResponse =
    { certificate : Maybe Certificate
    }



deleteCertificateResponseDecoder : JD.Decoder DeleteCertificateResponse
deleteCertificateResponseDecoder =
    JDP.decode DeleteCertificateResponse
        |> JDP.optional "certificate" (JD.nullable certificateDecoder) Nothing




{-| Type of HTTP response from deleteEndpoint
-}
type alias DeleteEndpointResponse =
    { endpoint : Maybe Endpoint
    }



deleteEndpointResponseDecoder : JD.Decoder DeleteEndpointResponse
deleteEndpointResponseDecoder =
    JDP.decode DeleteEndpointResponse
        |> JDP.optional "endpoint" (JD.nullable endpointDecoder) Nothing




{-| Type of HTTP response from deleteReplicationInstance
-}
type alias DeleteReplicationInstanceResponse =
    { replicationInstance : Maybe ReplicationInstance
    }



deleteReplicationInstanceResponseDecoder : JD.Decoder DeleteReplicationInstanceResponse
deleteReplicationInstanceResponseDecoder =
    JDP.decode DeleteReplicationInstanceResponse
        |> JDP.optional "replicationInstance" (JD.nullable replicationInstanceDecoder) Nothing




{-| Type of HTTP response from deleteReplicationSubnetGroup
-}
type alias DeleteReplicationSubnetGroupResponse =
    { 
    }



deleteReplicationSubnetGroupResponseDecoder : JD.Decoder DeleteReplicationSubnetGroupResponse
deleteReplicationSubnetGroupResponseDecoder =
    JDP.decode DeleteReplicationSubnetGroupResponse



{-| Type of HTTP response from deleteReplicationTask
-}
type alias DeleteReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }



deleteReplicationTaskResponseDecoder : JD.Decoder DeleteReplicationTaskResponse
deleteReplicationTaskResponseDecoder =
    JDP.decode DeleteReplicationTaskResponse
        |> JDP.optional "replicationTask" (JD.nullable replicationTaskDecoder) Nothing




{-| Type of HTTP response from describeAccountAttributes
-}
type alias DescribeAccountAttributesResponse =
    { accountQuotas : Maybe (List AccountQuota)
    }



describeAccountAttributesResponseDecoder : JD.Decoder DescribeAccountAttributesResponse
describeAccountAttributesResponseDecoder =
    JDP.decode DescribeAccountAttributesResponse
        |> JDP.optional "accountQuotas" (JD.nullable (JD.list accountQuotaDecoder)) Nothing




{-| Type of HTTP response from describeCertificates
-}
type alias DescribeCertificatesResponse =
    { marker : Maybe String
    , certificates : Maybe (List Certificate)
    }



describeCertificatesResponseDecoder : JD.Decoder DescribeCertificatesResponse
describeCertificatesResponseDecoder =
    JDP.decode DescribeCertificatesResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificates" (JD.nullable (JD.list certificateDecoder)) Nothing




{-| Type of HTTP response from describeConnections
-}
type alias DescribeConnectionsResponse =
    { marker : Maybe String
    , connections : Maybe (List Connection)
    }



describeConnectionsResponseDecoder : JD.Decoder DescribeConnectionsResponse
describeConnectionsResponseDecoder =
    JDP.decode DescribeConnectionsResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "connections" (JD.nullable (JD.list connectionDecoder)) Nothing




{-| Type of HTTP response from describeEndpointTypes
-}
type alias DescribeEndpointTypesResponse =
    { marker : Maybe String
    , supportedEndpointTypes : Maybe (List SupportedEndpointType)
    }



describeEndpointTypesResponseDecoder : JD.Decoder DescribeEndpointTypesResponse
describeEndpointTypesResponseDecoder =
    JDP.decode DescribeEndpointTypesResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportedEndpointTypes" (JD.nullable (JD.list supportedEndpointTypeDecoder)) Nothing




{-| Type of HTTP response from describeEndpoints
-}
type alias DescribeEndpointsResponse =
    { marker : Maybe String
    , endpoints : Maybe (List Endpoint)
    }



describeEndpointsResponseDecoder : JD.Decoder DescribeEndpointsResponse
describeEndpointsResponseDecoder =
    JDP.decode DescribeEndpointsResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpoints" (JD.nullable (JD.list endpointDecoder)) Nothing




{-| Type of HTTP response from describeOrderableReplicationInstances
-}
type alias DescribeOrderableReplicationInstancesResponse =
    { orderableReplicationInstances : Maybe (List OrderableReplicationInstance)
    , marker : Maybe String
    }



describeOrderableReplicationInstancesResponseDecoder : JD.Decoder DescribeOrderableReplicationInstancesResponse
describeOrderableReplicationInstancesResponseDecoder =
    JDP.decode DescribeOrderableReplicationInstancesResponse
        |> JDP.optional "orderableReplicationInstances" (JD.nullable (JD.list orderableReplicationInstanceDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeRefreshSchemasStatus
-}
type alias DescribeRefreshSchemasStatusResponse =
    { refreshSchemasStatus : Maybe RefreshSchemasStatus
    }



describeRefreshSchemasStatusResponseDecoder : JD.Decoder DescribeRefreshSchemasStatusResponse
describeRefreshSchemasStatusResponseDecoder =
    JDP.decode DescribeRefreshSchemasStatusResponse
        |> JDP.optional "refreshSchemasStatus" (JD.nullable refreshSchemasStatusDecoder) Nothing




{-| Type of HTTP response from describeReplicationInstances
-}
type alias DescribeReplicationInstancesResponse =
    { marker : Maybe String
    , replicationInstances : Maybe (List ReplicationInstance)
    }



describeReplicationInstancesResponseDecoder : JD.Decoder DescribeReplicationInstancesResponse
describeReplicationInstancesResponseDecoder =
    JDP.decode DescribeReplicationInstancesResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstances" (JD.nullable (JD.list replicationInstanceDecoder)) Nothing




{-| Type of HTTP response from describeReplicationSubnetGroups
-}
type alias DescribeReplicationSubnetGroupsResponse =
    { marker : Maybe String
    , replicationSubnetGroups : Maybe (List ReplicationSubnetGroup)
    }



describeReplicationSubnetGroupsResponseDecoder : JD.Decoder DescribeReplicationSubnetGroupsResponse
describeReplicationSubnetGroupsResponseDecoder =
    JDP.decode DescribeReplicationSubnetGroupsResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationSubnetGroups" (JD.nullable (JD.list replicationSubnetGroupDecoder)) Nothing




{-| Type of HTTP response from describeReplicationTasks
-}
type alias DescribeReplicationTasksResponse =
    { marker : Maybe String
    , replicationTasks : Maybe (List ReplicationTask)
    }



describeReplicationTasksResponseDecoder : JD.Decoder DescribeReplicationTasksResponse
describeReplicationTasksResponseDecoder =
    JDP.decode DescribeReplicationTasksResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationTasks" (JD.nullable (JD.list replicationTaskDecoder)) Nothing




{-| Type of HTTP response from describeSchemas
-}
type alias DescribeSchemasResponse =
    { marker : Maybe String
    , schemas : Maybe (List String)
    }



describeSchemasResponseDecoder : JD.Decoder DescribeSchemasResponse
describeSchemasResponseDecoder =
    JDP.decode DescribeSchemasResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "schemas" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from describeTableStatistics
-}
type alias DescribeTableStatisticsResponse =
    { replicationTaskArn : Maybe String
    , tableStatistics : Maybe (List TableStatistics)
    , marker : Maybe String
    }



describeTableStatisticsResponseDecoder : JD.Decoder DescribeTableStatisticsResponse
describeTableStatisticsResponseDecoder =
    JDP.decode DescribeTableStatisticsResponse
        |> JDP.optional "replicationTaskArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "tableStatistics" (JD.nullable (JD.list tableStatisticsDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| One of

* `DmsSslModeValue_none`
* `DmsSslModeValue_require`
* `DmsSslModeValue_verify-ca`
* `DmsSslModeValue_verify-full`

-}
type DmsSslModeValue
    = DmsSslModeValue_none
    | DmsSslModeValue_require
    | DmsSslModeValue_verify_ca
    | DmsSslModeValue_verify_full



dmsSslModeValueDecoder : JD.Decoder DmsSslModeValue
dmsSslModeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "none" ->
                        JD.succeed DmsSslModeValue_none

                    "require" ->
                        JD.succeed DmsSslModeValue_require

                    "verify_ca" ->
                        JD.succeed DmsSslModeValue_verify_ca

                    "verify_full" ->
                        JD.succeed DmsSslModeValue_verify_full


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p/>
-}
type alias Endpoint =
    { endpointIdentifier : Maybe String
    , endpointType : Maybe ReplicationEndpointTypeValue
    , engineName : Maybe String
    , username : Maybe String
    , serverName : Maybe String
    , port_ : Maybe Int
    , databaseName : Maybe String
    , extraConnectionAttributes : Maybe String
    , status : Maybe String
    , kmsKeyId : Maybe String
    , endpointArn : Maybe String
    , certificateArn : Maybe String
    , sslMode : Maybe DmsSslModeValue
    }



endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JDP.decode Endpoint
        |> JDP.optional "endpointIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpointType" (JD.nullable replicationEndpointTypeValueDecoder) Nothing
        |> JDP.optional "engineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "username" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverName" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "databaseName" (JD.nullable JD.string) Nothing
        |> JDP.optional "extraConnectionAttributes" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpointArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "sslMode" (JD.nullable dmsSslModeValueDecoder) Nothing




{-| <p/>
-}
type alias Filter =
    { name : String
    , values : (List String)
    }



filterDecoder : JD.Decoder Filter
filterDecoder =
    JDP.decode Filter
        |> JDP.required "name" JD.string
        |> JDP.required "values" (JD.list JD.string)




{-| Type of HTTP response from importCertificate
-}
type alias ImportCertificateResponse =
    { certificate : Maybe Certificate
    }



importCertificateResponseDecoder : JD.Decoder ImportCertificateResponse
importCertificateResponseDecoder =
    JDP.decode ImportCertificateResponse
        |> JDP.optional "certificate" (JD.nullable certificateDecoder) Nothing




{-| <p>There are not enough resources allocated to the database migration.</p>
-}
type alias InsufficientResourceCapacityFault =
    { message : Maybe String
    }



insufficientResourceCapacityFaultDecoder : JD.Decoder InsufficientResourceCapacityFault
insufficientResourceCapacityFaultDecoder =
    JDP.decode InsufficientResourceCapacityFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The certificate was not valid.</p>
-}
type alias InvalidCertificateFault =
    { message : Maybe String
    }



invalidCertificateFaultDecoder : JD.Decoder InvalidCertificateFault
invalidCertificateFaultDecoder =
    JDP.decode InvalidCertificateFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The resource is in a state that prevents it from being used for database migration.</p>
-}
type alias InvalidResourceStateFault =
    { message : Maybe String
    }



invalidResourceStateFaultDecoder : JD.Decoder InvalidResourceStateFault
invalidResourceStateFaultDecoder =
    JDP.decode InvalidResourceStateFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The subnet provided is invalid.</p>
-}
type alias InvalidSubnet =
    { message : Maybe String
    }



invalidSubnetDecoder : JD.Decoder InvalidSubnet
invalidSubnetDecoder =
    JDP.decode InvalidSubnet
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>AWS DMS cannot access the KMS key.</p>
-}
type alias KMSKeyNotAccessibleFault =
    { message : Maybe String
    }



kMSKeyNotAccessibleFaultDecoder : JD.Decoder KMSKeyNotAccessibleFault
kMSKeyNotAccessibleFaultDecoder =
    JDP.decode KMSKeyNotAccessibleFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tagList : Maybe (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JDP.decode ListTagsForResourceResponse
        |> JDP.optional "tagList" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `MigrationTypeValue_full-load`
* `MigrationTypeValue_cdc`
* `MigrationTypeValue_full-load-and-cdc`

-}
type MigrationTypeValue
    = MigrationTypeValue_full_load
    | MigrationTypeValue_cdc
    | MigrationTypeValue_full_load_and_cdc



migrationTypeValueDecoder : JD.Decoder MigrationTypeValue
migrationTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "full_load" ->
                        JD.succeed MigrationTypeValue_full_load

                    "cdc" ->
                        JD.succeed MigrationTypeValue_cdc

                    "full_load_and_cdc" ->
                        JD.succeed MigrationTypeValue_full_load_and_cdc


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from modifyEndpoint
-}
type alias ModifyEndpointResponse =
    { endpoint : Maybe Endpoint
    }



modifyEndpointResponseDecoder : JD.Decoder ModifyEndpointResponse
modifyEndpointResponseDecoder =
    JDP.decode ModifyEndpointResponse
        |> JDP.optional "endpoint" (JD.nullable endpointDecoder) Nothing




{-| Type of HTTP response from modifyReplicationInstance
-}
type alias ModifyReplicationInstanceResponse =
    { replicationInstance : Maybe ReplicationInstance
    }



modifyReplicationInstanceResponseDecoder : JD.Decoder ModifyReplicationInstanceResponse
modifyReplicationInstanceResponseDecoder =
    JDP.decode ModifyReplicationInstanceResponse
        |> JDP.optional "replicationInstance" (JD.nullable replicationInstanceDecoder) Nothing




{-| Type of HTTP response from modifyReplicationSubnetGroup
-}
type alias ModifyReplicationSubnetGroupResponse =
    { replicationSubnetGroup : Maybe ReplicationSubnetGroup
    }



modifyReplicationSubnetGroupResponseDecoder : JD.Decoder ModifyReplicationSubnetGroupResponse
modifyReplicationSubnetGroupResponseDecoder =
    JDP.decode ModifyReplicationSubnetGroupResponse
        |> JDP.optional "replicationSubnetGroup" (JD.nullable replicationSubnetGroupDecoder) Nothing




{-| Type of HTTP response from modifyReplicationTask
-}
type alias ModifyReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }



modifyReplicationTaskResponseDecoder : JD.Decoder ModifyReplicationTaskResponse
modifyReplicationTaskResponseDecoder =
    JDP.decode ModifyReplicationTaskResponse
        |> JDP.optional "replicationTask" (JD.nullable replicationTaskDecoder) Nothing




{-| <p/>
-}
type alias OrderableReplicationInstance =
    { engineVersion : Maybe String
    , replicationInstanceClass : Maybe String
    , storageType : Maybe String
    , minAllocatedStorage : Maybe Int
    , maxAllocatedStorage : Maybe Int
    , defaultAllocatedStorage : Maybe Int
    , includedAllocatedStorage : Maybe Int
    }



orderableReplicationInstanceDecoder : JD.Decoder OrderableReplicationInstance
orderableReplicationInstanceDecoder =
    JDP.decode OrderableReplicationInstance
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageType" (JD.nullable JD.string) Nothing
        |> JDP.optional "minAllocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxAllocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "defaultAllocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "includedAllocatedStorage" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from refreshSchemas
-}
type alias RefreshSchemasResponse =
    { refreshSchemasStatus : Maybe RefreshSchemasStatus
    }



refreshSchemasResponseDecoder : JD.Decoder RefreshSchemasResponse
refreshSchemasResponseDecoder =
    JDP.decode RefreshSchemasResponse
        |> JDP.optional "refreshSchemasStatus" (JD.nullable refreshSchemasStatusDecoder) Nothing




{-| <p/>
-}
type alias RefreshSchemasStatus =
    { endpointArn : Maybe String
    , replicationInstanceArn : Maybe String
    , status : Maybe RefreshSchemasStatusTypeValue
    , lastRefreshDate : Maybe Date
    , lastFailureMessage : Maybe String
    }



refreshSchemasStatusDecoder : JD.Decoder RefreshSchemasStatus
refreshSchemasStatusDecoder =
    JDP.decode RefreshSchemasStatus
        |> JDP.optional "endpointArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable refreshSchemasStatusTypeValueDecoder) Nothing
        |> JDP.optional "lastRefreshDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastFailureMessage" (JD.nullable JD.string) Nothing




{-| One of

* `RefreshSchemasStatusTypeValue_successful`
* `RefreshSchemasStatusTypeValue_failed`
* `RefreshSchemasStatusTypeValue_refreshing`

-}
type RefreshSchemasStatusTypeValue
    = RefreshSchemasStatusTypeValue_successful
    | RefreshSchemasStatusTypeValue_failed
    | RefreshSchemasStatusTypeValue_refreshing



refreshSchemasStatusTypeValueDecoder : JD.Decoder RefreshSchemasStatusTypeValue
refreshSchemasStatusTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "successful" ->
                        JD.succeed RefreshSchemasStatusTypeValue_successful

                    "failed" ->
                        JD.succeed RefreshSchemasStatusTypeValue_failed

                    "refreshing" ->
                        JD.succeed RefreshSchemasStatusTypeValue_refreshing


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from removeTagsFromResource
-}
type alias RemoveTagsFromResourceResponse =
    { 
    }



removeTagsFromResourceResponseDecoder : JD.Decoder RemoveTagsFromResourceResponse
removeTagsFromResourceResponseDecoder =
    JDP.decode RemoveTagsFromResourceResponse



{-| One of

* `ReplicationEndpointTypeValue_source`
* `ReplicationEndpointTypeValue_target`

-}
type ReplicationEndpointTypeValue
    = ReplicationEndpointTypeValue_source
    | ReplicationEndpointTypeValue_target



replicationEndpointTypeValueDecoder : JD.Decoder ReplicationEndpointTypeValue
replicationEndpointTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "source" ->
                        JD.succeed ReplicationEndpointTypeValue_source

                    "target" ->
                        JD.succeed ReplicationEndpointTypeValue_target


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p/>
-}
type alias ReplicationInstance =
    { replicationInstanceIdentifier : Maybe String
    , replicationInstanceClass : Maybe String
    , replicationInstanceStatus : Maybe String
    , allocatedStorage : Maybe Int
    , instanceCreateTime : Maybe Date
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , availabilityZone : Maybe String
    , replicationSubnetGroup : Maybe ReplicationSubnetGroup
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe ReplicationPendingModifiedValues
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , kmsKeyId : Maybe String
    , replicationInstanceArn : Maybe String
    , replicationInstancePublicIpAddress : Maybe String
    , replicationInstancePrivateIpAddress : Maybe String
    , replicationInstancePublicIpAddresses : Maybe (List String)
    , replicationInstancePrivateIpAddresses : Maybe (List String)
    , publiclyAccessible : Maybe Bool
    , secondaryAvailabilityZone : Maybe String
    }



replicationInstanceDecoder : JD.Decoder ReplicationInstance
replicationInstanceDecoder =
    JDP.decode ReplicationInstance
        |> JDP.optional "replicationInstanceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstanceStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "instanceCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "vpcSecurityGroups" (JD.nullable (JD.list vpcSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationSubnetGroup" (JD.nullable replicationSubnetGroupDecoder) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "pendingModifiedValues" (JD.nullable replicationPendingModifiedValuesDecoder) Nothing
        |> JDP.optional "multiAZ" (JD.nullable JD.bool) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoMinorVersionUpgrade" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstancePublicIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstancePrivateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstancePublicIpAddresses" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "replicationInstancePrivateIpAddresses" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "publiclyAccessible" (JD.nullable JD.bool) Nothing
        |> JDP.optional "secondaryAvailabilityZone" (JD.nullable JD.string) Nothing




{-| <p/>
-}
type alias ReplicationPendingModifiedValues =
    { replicationInstanceClass : Maybe String
    , allocatedStorage : Maybe Int
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    }



replicationPendingModifiedValuesDecoder : JD.Decoder ReplicationPendingModifiedValues
replicationPendingModifiedValuesDecoder =
    JDP.decode ReplicationPendingModifiedValues
        |> JDP.optional "replicationInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "multiAZ" (JD.nullable JD.bool) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing




{-| <p/>
-}
type alias ReplicationSubnetGroup =
    { replicationSubnetGroupIdentifier : Maybe String
    , replicationSubnetGroupDescription : Maybe String
    , vpcId : Maybe String
    , subnetGroupStatus : Maybe String
    , subnets : Maybe (List Subnet)
    }



replicationSubnetGroupDecoder : JD.Decoder ReplicationSubnetGroup
replicationSubnetGroupDecoder =
    JDP.decode ReplicationSubnetGroup
        |> JDP.optional "replicationSubnetGroupIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationSubnetGroupDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetGroupStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnets" (JD.nullable (JD.list subnetDecoder)) Nothing




{-| <p>The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.</p>
-}
type alias ReplicationSubnetGroupDoesNotCoverEnoughAZs =
    { message : Maybe String
    }



replicationSubnetGroupDoesNotCoverEnoughAZsDecoder : JD.Decoder ReplicationSubnetGroupDoesNotCoverEnoughAZs
replicationSubnetGroupDoesNotCoverEnoughAZsDecoder =
    JDP.decode ReplicationSubnetGroupDoesNotCoverEnoughAZs
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p/>
-}
type alias ReplicationTask =
    { replicationTaskIdentifier : Maybe String
    , sourceEndpointArn : Maybe String
    , targetEndpointArn : Maybe String
    , replicationInstanceArn : Maybe String
    , migrationType : Maybe MigrationTypeValue
    , tableMappings : Maybe String
    , replicationTaskSettings : Maybe String
    , status : Maybe String
    , lastFailureMessage : Maybe String
    , stopReason : Maybe String
    , replicationTaskCreationDate : Maybe Date
    , replicationTaskStartDate : Maybe Date
    , replicationTaskArn : Maybe String
    , replicationTaskStats : Maybe ReplicationTaskStats
    }



replicationTaskDecoder : JD.Decoder ReplicationTask
replicationTaskDecoder =
    JDP.decode ReplicationTask
        |> JDP.optional "replicationTaskIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceEndpointArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetEndpointArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "migrationType" (JD.nullable migrationTypeValueDecoder) Nothing
        |> JDP.optional "tableMappings" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationTaskSettings" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastFailureMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "stopReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationTaskCreationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "replicationTaskStartDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "replicationTaskArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationTaskStats" (JD.nullable replicationTaskStatsDecoder) Nothing




{-| <p/>
-}
type alias ReplicationTaskStats =
    { fullLoadProgressPercent : Maybe Int
    , elapsedTimeMillis : Maybe Int
    , tablesLoaded : Maybe Int
    , tablesLoading : Maybe Int
    , tablesQueued : Maybe Int
    , tablesErrored : Maybe Int
    }



replicationTaskStatsDecoder : JD.Decoder ReplicationTaskStats
replicationTaskStatsDecoder =
    JDP.decode ReplicationTaskStats
        |> JDP.optional "fullLoadProgressPercent" (JD.nullable JD.int) Nothing
        |> JDP.optional "elapsedTimeMillis" (JD.nullable JD.int) Nothing
        |> JDP.optional "tablesLoaded" (JD.nullable JD.int) Nothing
        |> JDP.optional "tablesLoading" (JD.nullable JD.int) Nothing
        |> JDP.optional "tablesQueued" (JD.nullable JD.int) Nothing
        |> JDP.optional "tablesErrored" (JD.nullable JD.int) Nothing




{-| <p>The resource you are attempting to create already exists.</p>
-}
type alias ResourceAlreadyExistsFault =
    { message : Maybe String
    }



resourceAlreadyExistsFaultDecoder : JD.Decoder ResourceAlreadyExistsFault
resourceAlreadyExistsFaultDecoder =
    JDP.decode ResourceAlreadyExistsFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The resource could not be found.</p>
-}
type alias ResourceNotFoundFault =
    { message : Maybe String
    }



resourceNotFoundFaultDecoder : JD.Decoder ResourceNotFoundFault
resourceNotFoundFaultDecoder =
    JDP.decode ResourceNotFoundFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The quota for this resource quota has been exceeded.</p>
-}
type alias ResourceQuotaExceededFault =
    { message : Maybe String
    }



resourceQuotaExceededFaultDecoder : JD.Decoder ResourceQuotaExceededFault
resourceQuotaExceededFaultDecoder =
    JDP.decode ResourceQuotaExceededFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from startReplicationTask
-}
type alias StartReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }



startReplicationTaskResponseDecoder : JD.Decoder StartReplicationTaskResponse
startReplicationTaskResponseDecoder =
    JDP.decode StartReplicationTaskResponse
        |> JDP.optional "replicationTask" (JD.nullable replicationTaskDecoder) Nothing




{-| One of

* `StartReplicationTaskTypeValue_start-replication`
* `StartReplicationTaskTypeValue_resume-processing`
* `StartReplicationTaskTypeValue_reload-target`

-}
type StartReplicationTaskTypeValue
    = StartReplicationTaskTypeValue_start_replication
    | StartReplicationTaskTypeValue_resume_processing
    | StartReplicationTaskTypeValue_reload_target



startReplicationTaskTypeValueDecoder : JD.Decoder StartReplicationTaskTypeValue
startReplicationTaskTypeValueDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "start_replication" ->
                        JD.succeed StartReplicationTaskTypeValue_start_replication

                    "resume_processing" ->
                        JD.succeed StartReplicationTaskTypeValue_resume_processing

                    "reload_target" ->
                        JD.succeed StartReplicationTaskTypeValue_reload_target


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from stopReplicationTask
-}
type alias StopReplicationTaskResponse =
    { replicationTask : Maybe ReplicationTask
    }



stopReplicationTaskResponseDecoder : JD.Decoder StopReplicationTaskResponse
stopReplicationTaskResponseDecoder =
    JDP.decode StopReplicationTaskResponse
        |> JDP.optional "replicationTask" (JD.nullable replicationTaskDecoder) Nothing




{-| <p>The storage quota has been exceeded.</p>
-}
type alias StorageQuotaExceededFault =
    { message : Maybe String
    }



storageQuotaExceededFaultDecoder : JD.Decoder StorageQuotaExceededFault
storageQuotaExceededFaultDecoder =
    JDP.decode StorageQuotaExceededFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p/>
-}
type alias Subnet =
    { subnetIdentifier : Maybe String
    , subnetAvailabilityZone : Maybe AvailabilityZone
    , subnetStatus : Maybe String
    }



subnetDecoder : JD.Decoder Subnet
subnetDecoder =
    JDP.decode Subnet
        |> JDP.optional "subnetIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetAvailabilityZone" (JD.nullable availabilityZoneDecoder) Nothing
        |> JDP.optional "subnetStatus" (JD.nullable JD.string) Nothing




{-| <p>The specified subnet is already in use.</p>
-}
type alias SubnetAlreadyInUse =
    { message : Maybe String
    }



subnetAlreadyInUseDecoder : JD.Decoder SubnetAlreadyInUse
subnetAlreadyInUseDecoder =
    JDP.decode SubnetAlreadyInUse
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p/>
-}
type alias SupportedEndpointType =
    { engineName : Maybe String
    , supportsCDC : Maybe Bool
    , endpointType : Maybe ReplicationEndpointTypeValue
    }



supportedEndpointTypeDecoder : JD.Decoder SupportedEndpointType
supportedEndpointTypeDecoder =
    JDP.decode SupportedEndpointType
        |> JDP.optional "engineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportsCDC" (JD.nullable JD.bool) Nothing
        |> JDP.optional "endpointType" (JD.nullable replicationEndpointTypeValueDecoder) Nothing




{-| <p/>
-}
type alias TableStatistics =
    { schemaName : Maybe String
    , tableName : Maybe String
    , inserts : Maybe Int
    , deletes : Maybe Int
    , updates : Maybe Int
    , ddls : Maybe Int
    , fullLoadRows : Maybe Int
    , lastUpdateTime : Maybe Date
    , tableState : Maybe String
    }



tableStatisticsDecoder : JD.Decoder TableStatistics
tableStatisticsDecoder =
    JDP.decode TableStatistics
        |> JDP.optional "schemaName" (JD.nullable JD.string) Nothing
        |> JDP.optional "tableName" (JD.nullable JD.string) Nothing
        |> JDP.optional "inserts" (JD.nullable JD.int) Nothing
        |> JDP.optional "deletes" (JD.nullable JD.int) Nothing
        |> JDP.optional "updates" (JD.nullable JD.int) Nothing
        |> JDP.optional "ddls" (JD.nullable JD.int) Nothing
        |> JDP.optional "fullLoadRows" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastUpdateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "tableState" (JD.nullable JD.string) Nothing




{-| <p/>
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




{-| Type of HTTP response from testConnection
-}
type alias TestConnectionResponse =
    { connection : Maybe Connection
    }



testConnectionResponseDecoder : JD.Decoder TestConnectionResponse
testConnectionResponseDecoder =
    JDP.decode TestConnectionResponse
        |> JDP.optional "connection" (JD.nullable connectionDecoder) Nothing




{-| <p>An upgrade dependency is preventing the database migration.</p>
-}
type alias UpgradeDependencyFailureFault =
    { message : Maybe String
    }



upgradeDependencyFailureFaultDecoder : JD.Decoder UpgradeDependencyFailureFault
upgradeDependencyFailureFaultDecoder =
    JDP.decode UpgradeDependencyFailureFault
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p/>
-}
type alias VpcSecurityGroupMembership =
    { vpcSecurityGroupId : Maybe String
    , status : Maybe String
    }



vpcSecurityGroupMembershipDecoder : JD.Decoder VpcSecurityGroupMembership
vpcSecurityGroupMembershipDecoder =
    JDP.decode VpcSecurityGroupMembership
        |> JDP.optional "vpcSecurityGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




