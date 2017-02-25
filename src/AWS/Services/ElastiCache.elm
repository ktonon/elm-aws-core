module AWS.Services.ElastiCache
    exposing
        ( config
        , addTagsToResource
        , authorizeCacheSecurityGroupIngress
        , copySnapshot
        , CopySnapshotOptions
        , createCacheCluster
        , CreateCacheClusterOptions
        , createCacheParameterGroup
        , createCacheSecurityGroup
        , createCacheSubnetGroup
        , createReplicationGroup
        , CreateReplicationGroupOptions
        , createSnapshot
        , CreateSnapshotOptions
        , deleteCacheCluster
        , DeleteCacheClusterOptions
        , deleteCacheParameterGroup
        , deleteCacheSecurityGroup
        , deleteCacheSubnetGroup
        , deleteReplicationGroup
        , DeleteReplicationGroupOptions
        , deleteSnapshot
        , describeCacheClusters
        , DescribeCacheClustersOptions
        , describeCacheEngineVersions
        , DescribeCacheEngineVersionsOptions
        , describeCacheParameterGroups
        , DescribeCacheParameterGroupsOptions
        , describeCacheParameters
        , DescribeCacheParametersOptions
        , describeCacheSecurityGroups
        , DescribeCacheSecurityGroupsOptions
        , describeCacheSubnetGroups
        , DescribeCacheSubnetGroupsOptions
        , describeEngineDefaultParameters
        , DescribeEngineDefaultParametersOptions
        , describeEvents
        , DescribeEventsOptions
        , describeReplicationGroups
        , DescribeReplicationGroupsOptions
        , describeReservedCacheNodes
        , DescribeReservedCacheNodesOptions
        , describeReservedCacheNodesOfferings
        , DescribeReservedCacheNodesOfferingsOptions
        , describeSnapshots
        , DescribeSnapshotsOptions
        , listAllowedNodeTypeModifications
        , ListAllowedNodeTypeModificationsOptions
        , listTagsForResource
        , modifyCacheCluster
        , ModifyCacheClusterOptions
        , modifyCacheParameterGroup
        , modifyCacheSubnetGroup
        , ModifyCacheSubnetGroupOptions
        , modifyReplicationGroup
        , ModifyReplicationGroupOptions
        , purchaseReservedCacheNodesOffering
        , PurchaseReservedCacheNodesOfferingOptions
        , rebootCacheCluster
        , removeTagsFromResource
        , resetCacheParameterGroup
        , ResetCacheParameterGroupOptions
        , revokeCacheSecurityGroupIngress
        , AZMode(..)
        , AllowedNodeTypeModificationsMessage
        , AuthorizationAlreadyExistsFault
        , AuthorizationNotFoundFault
        , AuthorizeCacheSecurityGroupIngressResult
        , AutomaticFailoverStatus(..)
        , AvailabilityZone
        , CacheCluster
        , CacheClusterAlreadyExistsFault
        , CacheClusterMessage
        , CacheClusterNotFoundFault
        , CacheEngineVersion
        , CacheEngineVersionMessage
        , CacheNode
        , CacheNodeTypeSpecificParameter
        , CacheNodeTypeSpecificValue
        , CacheParameterGroup
        , CacheParameterGroupAlreadyExistsFault
        , CacheParameterGroupDetails
        , CacheParameterGroupNameMessage
        , CacheParameterGroupNotFoundFault
        , CacheParameterGroupQuotaExceededFault
        , CacheParameterGroupStatus
        , CacheParameterGroupsMessage
        , CacheSecurityGroup
        , CacheSecurityGroupAlreadyExistsFault
        , CacheSecurityGroupMembership
        , CacheSecurityGroupMessage
        , CacheSecurityGroupNotFoundFault
        , CacheSecurityGroupQuotaExceededFault
        , CacheSubnetGroup
        , CacheSubnetGroupAlreadyExistsFault
        , CacheSubnetGroupInUse
        , CacheSubnetGroupMessage
        , CacheSubnetGroupNotFoundFault
        , CacheSubnetGroupQuotaExceededFault
        , CacheSubnetQuotaExceededFault
        , ChangeType(..)
        , ClusterQuotaForCustomerExceededFault
        , CopySnapshotResult
        , CreateCacheClusterResult
        , CreateCacheParameterGroupResult
        , CreateCacheSecurityGroupResult
        , CreateCacheSubnetGroupResult
        , CreateReplicationGroupResult
        , CreateSnapshotResult
        , DeleteCacheClusterResult
        , DeleteReplicationGroupResult
        , DeleteSnapshotResult
        , DescribeEngineDefaultParametersResult
        , DescribeSnapshotsListMessage
        , EC2SecurityGroup
        , Endpoint
        , EngineDefaults
        , Event
        , EventsMessage
        , InsufficientCacheClusterCapacityFault
        , InvalidARNFault
        , InvalidCacheClusterStateFault
        , InvalidCacheParameterGroupStateFault
        , InvalidCacheSecurityGroupStateFault
        , InvalidParameterCombinationException
        , InvalidParameterValueException
        , InvalidReplicationGroupStateFault
        , InvalidSnapshotStateFault
        , InvalidSubnet
        , InvalidVPCNetworkStateFault
        , ModifyCacheClusterResult
        , ModifyCacheSubnetGroupResult
        , ModifyReplicationGroupResult
        , NodeGroup
        , NodeGroupConfiguration
        , NodeGroupMember
        , NodeGroupsPerReplicationGroupQuotaExceededFault
        , NodeQuotaForClusterExceededFault
        , NodeQuotaForCustomerExceededFault
        , NodeSnapshot
        , NotificationConfiguration
        , Parameter
        , ParameterNameValue
        , PendingAutomaticFailoverStatus(..)
        , PendingModifiedValues
        , PurchaseReservedCacheNodesOfferingResult
        , RebootCacheClusterResult
        , RecurringCharge
        , ReplicationGroup
        , ReplicationGroupAlreadyExistsFault
        , ReplicationGroupMessage
        , ReplicationGroupNotFoundFault
        , ReplicationGroupPendingModifiedValues
        , ReservedCacheNode
        , ReservedCacheNodeAlreadyExistsFault
        , ReservedCacheNodeMessage
        , ReservedCacheNodeNotFoundFault
        , ReservedCacheNodeQuotaExceededFault
        , ReservedCacheNodesOffering
        , ReservedCacheNodesOfferingMessage
        , ReservedCacheNodesOfferingNotFoundFault
        , RevokeCacheSecurityGroupIngressResult
        , SecurityGroupMembership
        , Snapshot
        , SnapshotAlreadyExistsFault
        , SnapshotFeatureNotSupportedFault
        , SnapshotNotFoundFault
        , SnapshotQuotaExceededFault
        , SourceType(..)
        , Subnet
        , SubnetInUse
        , Tag
        , TagListMessage
        , TagNotFoundFault
        , TagQuotaPerResourceExceeded
        )

{-| <fullname>Amazon ElastiCache</fullname> <p>Amazon ElastiCache is a web service that makes it easier to set up, operate, and scale a distributed cache in the cloud.</p> <p>With ElastiCache, customers get all of the benefits of a high-performance, in-memory cache with less of the administrative burden involved in launching and managing a distributed cache. The service makes setup, scaling, and cluster failure handling much simpler than in a self-managed cache deployment.</p> <p>In addition, through integration with Amazon CloudWatch, customers get enhanced visibility into the key performance statistics associated with their cache and can receive alarms if a part of their cache runs hot.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToResource](#addTagsToResource)
* [authorizeCacheSecurityGroupIngress](#authorizeCacheSecurityGroupIngress)
* [copySnapshot](#copySnapshot)
* [CopySnapshotOptions](#CopySnapshotOptions)
* [createCacheCluster](#createCacheCluster)
* [CreateCacheClusterOptions](#CreateCacheClusterOptions)
* [createCacheParameterGroup](#createCacheParameterGroup)
* [createCacheSecurityGroup](#createCacheSecurityGroup)
* [createCacheSubnetGroup](#createCacheSubnetGroup)
* [createReplicationGroup](#createReplicationGroup)
* [CreateReplicationGroupOptions](#CreateReplicationGroupOptions)
* [createSnapshot](#createSnapshot)
* [CreateSnapshotOptions](#CreateSnapshotOptions)
* [deleteCacheCluster](#deleteCacheCluster)
* [DeleteCacheClusterOptions](#DeleteCacheClusterOptions)
* [deleteCacheParameterGroup](#deleteCacheParameterGroup)
* [deleteCacheSecurityGroup](#deleteCacheSecurityGroup)
* [deleteCacheSubnetGroup](#deleteCacheSubnetGroup)
* [deleteReplicationGroup](#deleteReplicationGroup)
* [DeleteReplicationGroupOptions](#DeleteReplicationGroupOptions)
* [deleteSnapshot](#deleteSnapshot)
* [describeCacheClusters](#describeCacheClusters)
* [DescribeCacheClustersOptions](#DescribeCacheClustersOptions)
* [describeCacheEngineVersions](#describeCacheEngineVersions)
* [DescribeCacheEngineVersionsOptions](#DescribeCacheEngineVersionsOptions)
* [describeCacheParameterGroups](#describeCacheParameterGroups)
* [DescribeCacheParameterGroupsOptions](#DescribeCacheParameterGroupsOptions)
* [describeCacheParameters](#describeCacheParameters)
* [DescribeCacheParametersOptions](#DescribeCacheParametersOptions)
* [describeCacheSecurityGroups](#describeCacheSecurityGroups)
* [DescribeCacheSecurityGroupsOptions](#DescribeCacheSecurityGroupsOptions)
* [describeCacheSubnetGroups](#describeCacheSubnetGroups)
* [DescribeCacheSubnetGroupsOptions](#DescribeCacheSubnetGroupsOptions)
* [describeEngineDefaultParameters](#describeEngineDefaultParameters)
* [DescribeEngineDefaultParametersOptions](#DescribeEngineDefaultParametersOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)
* [describeReplicationGroups](#describeReplicationGroups)
* [DescribeReplicationGroupsOptions](#DescribeReplicationGroupsOptions)
* [describeReservedCacheNodes](#describeReservedCacheNodes)
* [DescribeReservedCacheNodesOptions](#DescribeReservedCacheNodesOptions)
* [describeReservedCacheNodesOfferings](#describeReservedCacheNodesOfferings)
* [DescribeReservedCacheNodesOfferingsOptions](#DescribeReservedCacheNodesOfferingsOptions)
* [describeSnapshots](#describeSnapshots)
* [DescribeSnapshotsOptions](#DescribeSnapshotsOptions)
* [listAllowedNodeTypeModifications](#listAllowedNodeTypeModifications)
* [ListAllowedNodeTypeModificationsOptions](#ListAllowedNodeTypeModificationsOptions)
* [listTagsForResource](#listTagsForResource)
* [modifyCacheCluster](#modifyCacheCluster)
* [ModifyCacheClusterOptions](#ModifyCacheClusterOptions)
* [modifyCacheParameterGroup](#modifyCacheParameterGroup)
* [modifyCacheSubnetGroup](#modifyCacheSubnetGroup)
* [ModifyCacheSubnetGroupOptions](#ModifyCacheSubnetGroupOptions)
* [modifyReplicationGroup](#modifyReplicationGroup)
* [ModifyReplicationGroupOptions](#ModifyReplicationGroupOptions)
* [purchaseReservedCacheNodesOffering](#purchaseReservedCacheNodesOffering)
* [PurchaseReservedCacheNodesOfferingOptions](#PurchaseReservedCacheNodesOfferingOptions)
* [rebootCacheCluster](#rebootCacheCluster)
* [removeTagsFromResource](#removeTagsFromResource)
* [resetCacheParameterGroup](#resetCacheParameterGroup)
* [ResetCacheParameterGroupOptions](#ResetCacheParameterGroupOptions)
* [revokeCacheSecurityGroupIngress](#revokeCacheSecurityGroupIngress)


@docs addTagsToResource,authorizeCacheSecurityGroupIngress,copySnapshot,CopySnapshotOptions,createCacheCluster,CreateCacheClusterOptions,createCacheParameterGroup,createCacheSecurityGroup,createCacheSubnetGroup,createReplicationGroup,CreateReplicationGroupOptions,createSnapshot,CreateSnapshotOptions,deleteCacheCluster,DeleteCacheClusterOptions,deleteCacheParameterGroup,deleteCacheSecurityGroup,deleteCacheSubnetGroup,deleteReplicationGroup,DeleteReplicationGroupOptions,deleteSnapshot,describeCacheClusters,DescribeCacheClustersOptions,describeCacheEngineVersions,DescribeCacheEngineVersionsOptions,describeCacheParameterGroups,DescribeCacheParameterGroupsOptions,describeCacheParameters,DescribeCacheParametersOptions,describeCacheSecurityGroups,DescribeCacheSecurityGroupsOptions,describeCacheSubnetGroups,DescribeCacheSubnetGroupsOptions,describeEngineDefaultParameters,DescribeEngineDefaultParametersOptions,describeEvents,DescribeEventsOptions,describeReplicationGroups,DescribeReplicationGroupsOptions,describeReservedCacheNodes,DescribeReservedCacheNodesOptions,describeReservedCacheNodesOfferings,DescribeReservedCacheNodesOfferingsOptions,describeSnapshots,DescribeSnapshotsOptions,listAllowedNodeTypeModifications,ListAllowedNodeTypeModificationsOptions,listTagsForResource,modifyCacheCluster,ModifyCacheClusterOptions,modifyCacheParameterGroup,modifyCacheSubnetGroup,ModifyCacheSubnetGroupOptions,modifyReplicationGroup,ModifyReplicationGroupOptions,purchaseReservedCacheNodesOffering,PurchaseReservedCacheNodesOfferingOptions,rebootCacheCluster,removeTagsFromResource,resetCacheParameterGroup,ResetCacheParameterGroupOptions,revokeCacheSecurityGroupIngress

## Responses

* [AllowedNodeTypeModificationsMessage](#AllowedNodeTypeModificationsMessage)
* [AuthorizeCacheSecurityGroupIngressResult](#AuthorizeCacheSecurityGroupIngressResult)
* [CacheClusterMessage](#CacheClusterMessage)
* [CacheEngineVersionMessage](#CacheEngineVersionMessage)
* [CacheParameterGroupDetails](#CacheParameterGroupDetails)
* [CacheParameterGroupNameMessage](#CacheParameterGroupNameMessage)
* [CacheParameterGroupsMessage](#CacheParameterGroupsMessage)
* [CacheSecurityGroupMessage](#CacheSecurityGroupMessage)
* [CacheSubnetGroupMessage](#CacheSubnetGroupMessage)
* [CopySnapshotResult](#CopySnapshotResult)
* [CreateCacheClusterResult](#CreateCacheClusterResult)
* [CreateCacheParameterGroupResult](#CreateCacheParameterGroupResult)
* [CreateCacheSecurityGroupResult](#CreateCacheSecurityGroupResult)
* [CreateCacheSubnetGroupResult](#CreateCacheSubnetGroupResult)
* [CreateReplicationGroupResult](#CreateReplicationGroupResult)
* [CreateSnapshotResult](#CreateSnapshotResult)
* [DeleteCacheClusterResult](#DeleteCacheClusterResult)
* [DeleteReplicationGroupResult](#DeleteReplicationGroupResult)
* [DeleteSnapshotResult](#DeleteSnapshotResult)
* [DescribeEngineDefaultParametersResult](#DescribeEngineDefaultParametersResult)
* [DescribeSnapshotsListMessage](#DescribeSnapshotsListMessage)
* [EventsMessage](#EventsMessage)
* [ModifyCacheClusterResult](#ModifyCacheClusterResult)
* [ModifyCacheSubnetGroupResult](#ModifyCacheSubnetGroupResult)
* [ModifyReplicationGroupResult](#ModifyReplicationGroupResult)
* [PurchaseReservedCacheNodesOfferingResult](#PurchaseReservedCacheNodesOfferingResult)
* [RebootCacheClusterResult](#RebootCacheClusterResult)
* [ReplicationGroupMessage](#ReplicationGroupMessage)
* [ReservedCacheNodeMessage](#ReservedCacheNodeMessage)
* [ReservedCacheNodesOfferingMessage](#ReservedCacheNodesOfferingMessage)
* [RevokeCacheSecurityGroupIngressResult](#RevokeCacheSecurityGroupIngressResult)
* [TagListMessage](#TagListMessage)


@docs AllowedNodeTypeModificationsMessage,AuthorizeCacheSecurityGroupIngressResult,CacheClusterMessage,CacheEngineVersionMessage,CacheParameterGroupDetails,CacheParameterGroupNameMessage,CacheParameterGroupsMessage,CacheSecurityGroupMessage,CacheSubnetGroupMessage,CopySnapshotResult,CreateCacheClusterResult,CreateCacheParameterGroupResult,CreateCacheSecurityGroupResult,CreateCacheSubnetGroupResult,CreateReplicationGroupResult,CreateSnapshotResult,DeleteCacheClusterResult,DeleteReplicationGroupResult,DeleteSnapshotResult,DescribeEngineDefaultParametersResult,DescribeSnapshotsListMessage,EventsMessage,ModifyCacheClusterResult,ModifyCacheSubnetGroupResult,ModifyReplicationGroupResult,PurchaseReservedCacheNodesOfferingResult,RebootCacheClusterResult,ReplicationGroupMessage,ReservedCacheNodeMessage,ReservedCacheNodesOfferingMessage,RevokeCacheSecurityGroupIngressResult,TagListMessage

## Records

* [AvailabilityZone](#AvailabilityZone)
* [CacheCluster](#CacheCluster)
* [CacheEngineVersion](#CacheEngineVersion)
* [CacheNode](#CacheNode)
* [CacheNodeTypeSpecificParameter](#CacheNodeTypeSpecificParameter)
* [CacheNodeTypeSpecificValue](#CacheNodeTypeSpecificValue)
* [CacheParameterGroup](#CacheParameterGroup)
* [CacheParameterGroupStatus](#CacheParameterGroupStatus)
* [CacheSecurityGroup](#CacheSecurityGroup)
* [CacheSecurityGroupMembership](#CacheSecurityGroupMembership)
* [CacheSubnetGroup](#CacheSubnetGroup)
* [EC2SecurityGroup](#EC2SecurityGroup)
* [Endpoint](#Endpoint)
* [EngineDefaults](#EngineDefaults)
* [Event](#Event)
* [NodeGroup](#NodeGroup)
* [NodeGroupConfiguration](#NodeGroupConfiguration)
* [NodeGroupMember](#NodeGroupMember)
* [NodeSnapshot](#NodeSnapshot)
* [NotificationConfiguration](#NotificationConfiguration)
* [Parameter](#Parameter)
* [ParameterNameValue](#ParameterNameValue)
* [PendingModifiedValues](#PendingModifiedValues)
* [RecurringCharge](#RecurringCharge)
* [ReplicationGroup](#ReplicationGroup)
* [ReplicationGroupPendingModifiedValues](#ReplicationGroupPendingModifiedValues)
* [ReservedCacheNode](#ReservedCacheNode)
* [ReservedCacheNodesOffering](#ReservedCacheNodesOffering)
* [SecurityGroupMembership](#SecurityGroupMembership)
* [Snapshot](#Snapshot)
* [Subnet](#Subnet)
* [Tag](#Tag)


@docs AvailabilityZone,CacheCluster,CacheEngineVersion,CacheNode,CacheNodeTypeSpecificParameter,CacheNodeTypeSpecificValue,CacheParameterGroup,CacheParameterGroupStatus,CacheSecurityGroup,CacheSecurityGroupMembership,CacheSubnetGroup,EC2SecurityGroup,Endpoint,EngineDefaults,Event,NodeGroup,NodeGroupConfiguration,NodeGroupMember,NodeSnapshot,NotificationConfiguration,Parameter,ParameterNameValue,PendingModifiedValues,RecurringCharge,ReplicationGroup,ReplicationGroupPendingModifiedValues,ReservedCacheNode,ReservedCacheNodesOffering,SecurityGroupMembership,Snapshot,Subnet,Tag

## Unions

* [AZMode](#AZMode)
* [AutomaticFailoverStatus](#AutomaticFailoverStatus)
* [ChangeType](#ChangeType)
* [PendingAutomaticFailoverStatus](#PendingAutomaticFailoverStatus)
* [SourceType](#SourceType)


@docs AZMode,AutomaticFailoverStatus,ChangeType,PendingAutomaticFailoverStatus,SourceType

## Exceptions

* [AuthorizationAlreadyExistsFault](#AuthorizationAlreadyExistsFault)
* [AuthorizationNotFoundFault](#AuthorizationNotFoundFault)
* [CacheClusterAlreadyExistsFault](#CacheClusterAlreadyExistsFault)
* [CacheClusterNotFoundFault](#CacheClusterNotFoundFault)
* [CacheParameterGroupAlreadyExistsFault](#CacheParameterGroupAlreadyExistsFault)
* [CacheParameterGroupNotFoundFault](#CacheParameterGroupNotFoundFault)
* [CacheParameterGroupQuotaExceededFault](#CacheParameterGroupQuotaExceededFault)
* [CacheSecurityGroupAlreadyExistsFault](#CacheSecurityGroupAlreadyExistsFault)
* [CacheSecurityGroupNotFoundFault](#CacheSecurityGroupNotFoundFault)
* [CacheSecurityGroupQuotaExceededFault](#CacheSecurityGroupQuotaExceededFault)
* [CacheSubnetGroupAlreadyExistsFault](#CacheSubnetGroupAlreadyExistsFault)
* [CacheSubnetGroupInUse](#CacheSubnetGroupInUse)
* [CacheSubnetGroupNotFoundFault](#CacheSubnetGroupNotFoundFault)
* [CacheSubnetGroupQuotaExceededFault](#CacheSubnetGroupQuotaExceededFault)
* [CacheSubnetQuotaExceededFault](#CacheSubnetQuotaExceededFault)
* [ClusterQuotaForCustomerExceededFault](#ClusterQuotaForCustomerExceededFault)
* [InsufficientCacheClusterCapacityFault](#InsufficientCacheClusterCapacityFault)
* [InvalidARNFault](#InvalidARNFault)
* [InvalidCacheClusterStateFault](#InvalidCacheClusterStateFault)
* [InvalidCacheParameterGroupStateFault](#InvalidCacheParameterGroupStateFault)
* [InvalidCacheSecurityGroupStateFault](#InvalidCacheSecurityGroupStateFault)
* [InvalidParameterCombinationException](#InvalidParameterCombinationException)
* [InvalidParameterValueException](#InvalidParameterValueException)
* [InvalidReplicationGroupStateFault](#InvalidReplicationGroupStateFault)
* [InvalidSnapshotStateFault](#InvalidSnapshotStateFault)
* [InvalidSubnet](#InvalidSubnet)
* [InvalidVPCNetworkStateFault](#InvalidVPCNetworkStateFault)
* [NodeGroupsPerReplicationGroupQuotaExceededFault](#NodeGroupsPerReplicationGroupQuotaExceededFault)
* [NodeQuotaForClusterExceededFault](#NodeQuotaForClusterExceededFault)
* [NodeQuotaForCustomerExceededFault](#NodeQuotaForCustomerExceededFault)
* [ReplicationGroupAlreadyExistsFault](#ReplicationGroupAlreadyExistsFault)
* [ReplicationGroupNotFoundFault](#ReplicationGroupNotFoundFault)
* [ReservedCacheNodeAlreadyExistsFault](#ReservedCacheNodeAlreadyExistsFault)
* [ReservedCacheNodeNotFoundFault](#ReservedCacheNodeNotFoundFault)
* [ReservedCacheNodeQuotaExceededFault](#ReservedCacheNodeQuotaExceededFault)
* [ReservedCacheNodesOfferingNotFoundFault](#ReservedCacheNodesOfferingNotFoundFault)
* [SnapshotAlreadyExistsFault](#SnapshotAlreadyExistsFault)
* [SnapshotFeatureNotSupportedFault](#SnapshotFeatureNotSupportedFault)
* [SnapshotNotFoundFault](#SnapshotNotFoundFault)
* [SnapshotQuotaExceededFault](#SnapshotQuotaExceededFault)
* [SubnetInUse](#SubnetInUse)
* [TagNotFoundFault](#TagNotFoundFault)
* [TagQuotaPerResourceExceeded](#TagQuotaPerResourceExceeded)


@docs AuthorizationAlreadyExistsFault,AuthorizationNotFoundFault,CacheClusterAlreadyExistsFault,CacheClusterNotFoundFault,CacheParameterGroupAlreadyExistsFault,CacheParameterGroupNotFoundFault,CacheParameterGroupQuotaExceededFault,CacheSecurityGroupAlreadyExistsFault,CacheSecurityGroupNotFoundFault,CacheSecurityGroupQuotaExceededFault,CacheSubnetGroupAlreadyExistsFault,CacheSubnetGroupInUse,CacheSubnetGroupNotFoundFault,CacheSubnetGroupQuotaExceededFault,CacheSubnetQuotaExceededFault,ClusterQuotaForCustomerExceededFault,InsufficientCacheClusterCapacityFault,InvalidARNFault,InvalidCacheClusterStateFault,InvalidCacheParameterGroupStateFault,InvalidCacheSecurityGroupStateFault,InvalidParameterCombinationException,InvalidParameterValueException,InvalidReplicationGroupStateFault,InvalidSnapshotStateFault,InvalidSubnet,InvalidVPCNetworkStateFault,NodeGroupsPerReplicationGroupQuotaExceededFault,NodeQuotaForClusterExceededFault,NodeQuotaForCustomerExceededFault,ReplicationGroupAlreadyExistsFault,ReplicationGroupNotFoundFault,ReservedCacheNodeAlreadyExistsFault,ReservedCacheNodeNotFoundFault,ReservedCacheNodeQuotaExceededFault,ReservedCacheNodesOfferingNotFoundFault,SnapshotAlreadyExistsFault,SnapshotFeatureNotSupportedFault,SnapshotNotFoundFault,SnapshotQuotaExceededFault,SubnetInUse,TagNotFoundFault,TagQuotaPerResourceExceeded

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
        "elasticache"
        "2015-02-02"
        "undefined"
        "AWSELASTICACHE_20150202."
        "elasticache.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds up to 10 cost allocation tags to the named resource. A cost allocation tag is a key-value pair where the key and value are case-sensitive. You can use cost allocation tags to categorize and track your AWS costs.</p> <p> When you apply tags to your ElastiCache resources, AWS generates a cost allocation report as a comma-separated value (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories (such as cost centers, application names, or owners) to organize your costs across multiple services. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Tagging.html">Using Cost Allocation Tags in Amazon ElastiCache</a> in the <i>ElastiCache User Guide</i>.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTagsToResource :
    String
    -> (List Tag)
    -> AWS.Request TagListMessage
addTagsToResource resourceName tags =
    AWS.Http.unsignedRequest
        "AddTagsToResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        tagListMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2, and Amazon EC2 security groups are used as the authorization mechanism.</p> <note> <p>You cannot authorize ingress from an Amazon EC2 security group in one region to an ElastiCache cluster in another region.</p> </note>

__Required Parameters__

* `cacheSecurityGroupName` __:__ `String`
* `eC2SecurityGroupName` __:__ `String`
* `eC2SecurityGroupOwnerId` __:__ `String`


-}
authorizeCacheSecurityGroupIngress :
    String
    -> String
    -> String
    -> AWS.Request AuthorizeCacheSecurityGroupIngressResult
authorizeCacheSecurityGroupIngress cacheSecurityGroupName eC2SecurityGroupName eC2SecurityGroupOwnerId =
    AWS.Http.unsignedRequest
        "AuthorizeCacheSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        authorizeCacheSecurityGroupIngressResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Makes a copy of an existing snapshot.</p> <note> <p>This operation is valid for Redis only.</p> </note> <important> <p>Users or groups that have permissions to use the <code>CopySnapshot</code> operation can create their own Amazon S3 buckets and copy snapshots to it. To control access to your snapshots, use an IAM policy to control who has the ability to use the <code>CopySnapshot</code> operation. For more information about using IAM to control the use of ElastiCache operations, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html">Exporting Snapshots</a> and <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/IAM.html">Authentication &amp; Access Control</a>.</p> </important> <p>You could receive the following error messages.</p> <p class="title"> <b>Error Messages</b> </p> <ul> <li> <p> <b>Error Message:</b> The S3 bucket %s is outside of the region.</p> <p> <b>Solution:</b> Create an Amazon S3 bucket in the same region as your snapshot. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message:</b> The S3 bucket %s does not exist.</p> <p> <b>Solution:</b> Create an Amazon S3 bucket in the same region as your snapshot. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message:</b> The S3 bucket %s is not owned by the authenticated user.</p> <p> <b>Solution:</b> Create an Amazon S3 bucket in the same region as your snapshot. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket">Step 1: Create an Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message:</b> The authenticated user does not have sufficient permissions to perform the desired activity.</p> <p> <b>Solution:</b> Contact your system administrator to get the needed permissions.</p> </li> <li> <p> <b>Error Message:</b> The S3 bucket %s already contains an object with key %s.</p> <p> <b>Solution:</b> Give the <code>TargetSnapshotName</code> a new and unique value. If exporting a snapshot, you could alternatively create a new Amazon S3 bucket and use this same value for <code>TargetSnapshotName</code>.</p> </li> <li> <p> <b>Error Message: </b> ElastiCache has not been granted READ permissions %s on the S3 Bucket.</p> <p> <b>Solution:</b> Add List and Read permissions on the bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message: </b> ElastiCache has not been granted WRITE permissions %s on the S3 Bucket.</p> <p> <b>Solution:</b> Add Upload/Delete permissions on the bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> <li> <p> <b>Error Message: </b> ElastiCache has not been granted READ_ACP permissions %s on the S3 Bucket.</p> <p> <b>Solution:</b> Add View Permissions on the bucket. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the ElastiCache User Guide.</p> </li> </ul>

__Required Parameters__

* `sourceSnapshotName` __:__ `String`
* `targetSnapshotName` __:__ `String`


-}
copySnapshot :
    String
    -> String
    -> (CopySnapshotOptions -> CopySnapshotOptions)
    -> AWS.Request CopySnapshotResult
copySnapshot sourceSnapshotName targetSnapshotName setOptions =
  let
    options = setOptions (CopySnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CopySnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copySnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a copySnapshot request
-}
type alias CopySnapshotOptions =
    { targetBucket : Maybe String
    }



{-| <p>Creates a cache cluster. All nodes in the cache cluster run the same protocol-compliant cache engine software, either Memcached or Redis.</p> <important> <p>Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.</p> </important>

__Required Parameters__

* `cacheClusterId` __:__ `String`


-}
createCacheCluster :
    String
    -> (CreateCacheClusterOptions -> CreateCacheClusterOptions)
    -> AWS.Request CreateCacheClusterResult
createCacheCluster cacheClusterId setOptions =
  let
    options = setOptions (CreateCacheClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCacheCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCacheClusterResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createCacheCluster request
-}
type alias CreateCacheClusterOptions =
    { replicationGroupId : Maybe String
    , aZMode : Maybe AZMode
    , preferredAvailabilityZone : Maybe String
    , preferredAvailabilityZones : Maybe (List String)
    , numCacheNodes : Maybe Int
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , snapshotArns : Maybe (List String)
    , snapshotName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , port_ : Maybe Int
    , notificationTopicArn : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , authToken : Maybe String
    }



{-| <p>Creates a new cache parameter group. A cache parameter group is a collection of parameters that you apply to all of the nodes in a cache cluster.</p>

__Required Parameters__

* `cacheParameterGroupName` __:__ `String`
* `cacheParameterGroupFamily` __:__ `String`
* `description` __:__ `String`


-}
createCacheParameterGroup :
    String
    -> String
    -> String
    -> AWS.Request CreateCacheParameterGroupResult
createCacheParameterGroup cacheParameterGroupName cacheParameterGroupFamily description =
    AWS.Http.unsignedRequest
        "CreateCacheParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCacheParameterGroupResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new cache security group. Use a cache security group to control access to one or more cache clusters.</p> <p>Cache security groups are only used when you are creating a cache cluster outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are creating a cache cluster inside of a VPC, use a cache subnet group instead. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html">CreateCacheSubnetGroup</a>.</p>

__Required Parameters__

* `cacheSecurityGroupName` __:__ `String`
* `description` __:__ `String`


-}
createCacheSecurityGroup :
    String
    -> String
    -> AWS.Request CreateCacheSecurityGroupResult
createCacheSecurityGroup cacheSecurityGroupName description =
    AWS.Http.unsignedRequest
        "CreateCacheSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCacheSecurityGroupResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new cache subnet group.</p> <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private Cloud (Amazon VPC).</p>

__Required Parameters__

* `cacheSubnetGroupName` __:__ `String`
* `cacheSubnetGroupDescription` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}
createCacheSubnetGroup :
    String
    -> String
    -> (List String)
    -> AWS.Request CreateCacheSubnetGroupResult
createCacheSubnetGroup cacheSubnetGroupName cacheSubnetGroupDescription subnetIds =
    AWS.Http.unsignedRequest
        "CreateCacheSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCacheSubnetGroupResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group.</p> <p>A Redis (cluster mode disabled) replication group is a collection of cache clusters, where one of the cache clusters is a read/write primary and the others are read-only replicas. Writes to the primary are asynchronously propagated to the replicas.</p> <p>A Redis (cluster mode enabled) replication group is a collection of 1 to 15 node groups (shards). Each node group (shard) has one read/write primary node and up to 5 read-only replica nodes. Writes to the primary are asynchronously propagated to the replicas. Redis (cluster mode enabled) replication groups partition the data across node groups (shards).</p> <p>When a Redis (cluster mode disabled) replication group has been successfully created, you can add one or more read replicas to it, up to a total of 5 read replicas. You cannot alter a Redis (cluster mode enabled) replication group after it has been created.</p> <note> <p>This operation is valid for Redis only.</p> </note>

__Required Parameters__

* `replicationGroupId` __:__ `String`
* `replicationGroupDescription` __:__ `String`


-}
createReplicationGroup :
    String
    -> String
    -> (CreateReplicationGroupOptions -> CreateReplicationGroupOptions)
    -> AWS.Request CreateReplicationGroupResult
createReplicationGroup replicationGroupId replicationGroupDescription setOptions =
  let
    options = setOptions (CreateReplicationGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateReplicationGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReplicationGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createReplicationGroup request
-}
type alias CreateReplicationGroupOptions =
    { primaryClusterId : Maybe String
    , automaticFailoverEnabled : Maybe Bool
    , numCacheClusters : Maybe Int
    , preferredCacheClusterAZs : Maybe (List String)
    , numNodeGroups : Maybe Int
    , replicasPerNodeGroup : Maybe Int
    , nodeGroupConfiguration : Maybe (List NodeGroupConfiguration)
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , snapshotArns : Maybe (List String)
    , snapshotName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , port_ : Maybe Int
    , notificationTopicArn : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , authToken : Maybe String
    }



{-| <p>Creates a copy of an entire cache cluster or replication group at a specific moment in time.</p> <note> <p>This operation is valid for Redis only.</p> </note>

__Required Parameters__

* `snapshotName` __:__ `String`


-}
createSnapshot :
    String
    -> (CreateSnapshotOptions -> CreateSnapshotOptions)
    -> AWS.Request CreateSnapshotResult
createSnapshot snapshotName setOptions =
  let
    options = setOptions (CreateSnapshotOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createSnapshot request
-}
type alias CreateSnapshotOptions =
    { replicationGroupId : Maybe String
    , cacheClusterId : Maybe String
    }



{-| <p>Deletes a previously provisioned cache cluster. <code>DeleteCacheCluster</code> deletes all associated cache nodes, node endpoints and the cache cluster itself. When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the cache cluster; you cannot cancel or revert this operation.</p> <p>This operation cannot be used to delete a cache cluster that is the last read replica of a replication group or node group (shard) that has Multi-AZ mode enabled or a cache cluster from a Redis (cluster mode enabled) replication group.</p> <important> <p>Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.</p> </important>

__Required Parameters__

* `cacheClusterId` __:__ `String`


-}
deleteCacheCluster :
    String
    -> (DeleteCacheClusterOptions -> DeleteCacheClusterOptions)
    -> AWS.Request DeleteCacheClusterResult
deleteCacheCluster cacheClusterId setOptions =
  let
    options = setOptions (DeleteCacheClusterOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteCacheCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteCacheClusterResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteCacheCluster request
-}
type alias DeleteCacheClusterOptions =
    { finalSnapshotIdentifier : Maybe String
    }



{-| <p>Deletes the specified cache parameter group. You cannot delete a cache parameter group if it is associated with any cache clusters.</p>

__Required Parameters__

* `cacheParameterGroupName` __:__ `String`


-}
deleteCacheParameterGroup :
    String
    -> AWS.Request ()
deleteCacheParameterGroup cacheParameterGroupName =
    AWS.Http.unsignedRequest
        "DeleteCacheParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a cache security group.</p> <note> <p>You cannot delete a cache security group if it is associated with any cache clusters.</p> </note>

__Required Parameters__

* `cacheSecurityGroupName` __:__ `String`


-}
deleteCacheSecurityGroup :
    String
    -> AWS.Request ()
deleteCacheSecurityGroup cacheSecurityGroupName =
    AWS.Http.unsignedRequest
        "DeleteCacheSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a cache subnet group.</p> <note> <p>You cannot delete a cache subnet group if it is associated with any cache clusters.</p> </note>

__Required Parameters__

* `cacheSubnetGroupName` __:__ `String`


-}
deleteCacheSubnetGroup :
    String
    -> AWS.Request ()
deleteCacheSubnetGroup cacheSubnetGroupName =
    AWS.Http.unsignedRequest
        "DeleteCacheSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes an existing replication group. By default, this operation deletes the entire replication group, including the primary/primaries and all of the read replicas. If the replication group has only one primary, you can optionally delete only the read replicas, while retaining the primary by setting <code>RetainPrimaryCluster=true</code>.</p> <p>When you receive a successful response from this operation, Amazon ElastiCache immediately begins deleting the selected resources; you cannot cancel or revert this operation.</p> <note> <p>This operation is valid for Redis only.</p> </note>

__Required Parameters__

* `replicationGroupId` __:__ `String`


-}
deleteReplicationGroup :
    String
    -> (DeleteReplicationGroupOptions -> DeleteReplicationGroupOptions)
    -> AWS.Request DeleteReplicationGroupResult
deleteReplicationGroup replicationGroupId setOptions =
  let
    options = setOptions (DeleteReplicationGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteReplicationGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReplicationGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteReplicationGroup request
-}
type alias DeleteReplicationGroupOptions =
    { retainPrimaryCluster : Maybe Bool
    , finalSnapshotIdentifier : Maybe String
    }



{-| <p>Deletes an existing snapshot. When you receive a successful response from this operation, ElastiCache immediately begins deleting the snapshot; you cannot cancel or revert this operation.</p> <note> <p>This operation is valid for Redis only.</p> </note>

__Required Parameters__

* `snapshotName` __:__ `String`


-}
deleteSnapshot :
    String
    -> AWS.Request DeleteSnapshotResult
deleteSnapshot snapshotName =
    AWS.Http.unsignedRequest
        "DeleteSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSnapshotResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about all provisioned cache clusters if no cache cluster identifier is specified, or about a specific cache cluster if a cache cluster identifier is supplied.</p> <p>By default, abbreviated information about the cache clusters are returned. You can use the optional <code>ShowDetails</code> flag to retrieve detailed information about the cache nodes associated with the cache clusters. These details include the DNS address and port for the cache node endpoint.</p> <p>If the cluster is in the CREATING state, only cluster-level information is displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the DELETING state, only cluster-level information is displayed.</p> <p>If cache nodes are currently being added to the cache cluster, node endpoint information and creation time for the additional nodes are not displayed until they are completely provisioned. When the cache cluster state is <code>available</code>, the cluster is ready for use.</p> <p>If cache nodes are currently being removed from the cache cluster, no endpoint information for the removed nodes is displayed.</p>

__Required Parameters__



-}
describeCacheClusters :
    (DescribeCacheClustersOptions -> DescribeCacheClustersOptions)
    -> AWS.Request CacheClusterMessage
describeCacheClusters setOptions =
  let
    options = setOptions (DescribeCacheClustersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCacheClusters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheClusterMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCacheClusters request
-}
type alias DescribeCacheClustersOptions =
    { cacheClusterId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , showCacheNodeInfo : Maybe Bool
    }



{-| <p>Returns a list of the available cache engines and their versions.</p>

__Required Parameters__



-}
describeCacheEngineVersions :
    (DescribeCacheEngineVersionsOptions -> DescribeCacheEngineVersionsOptions)
    -> AWS.Request CacheEngineVersionMessage
describeCacheEngineVersions setOptions =
  let
    options = setOptions (DescribeCacheEngineVersionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCacheEngineVersions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheEngineVersionMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCacheEngineVersions request
-}
type alias DescribeCacheEngineVersionsOptions =
    { engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupFamily : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , defaultOnly : Maybe Bool
    }



{-| <p>Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains only the descriptions for that group.</p>

__Required Parameters__



-}
describeCacheParameterGroups :
    (DescribeCacheParameterGroupsOptions -> DescribeCacheParameterGroupsOptions)
    -> AWS.Request CacheParameterGroupsMessage
describeCacheParameterGroups setOptions =
  let
    options = setOptions (DescribeCacheParameterGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCacheParameterGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheParameterGroupsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCacheParameterGroups request
-}
type alias DescribeCacheParameterGroupsOptions =
    { cacheParameterGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the detailed parameter list for a particular cache parameter group.</p>

__Required Parameters__

* `cacheParameterGroupName` __:__ `String`


-}
describeCacheParameters :
    String
    -> (DescribeCacheParametersOptions -> DescribeCacheParametersOptions)
    -> AWS.Request CacheParameterGroupDetails
describeCacheParameters cacheParameterGroupName setOptions =
  let
    options = setOptions (DescribeCacheParametersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCacheParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheParameterGroupDetailsDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCacheParameters request
-}
type alias DescribeCacheParametersOptions =
    { source : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only the description of that group.</p>

__Required Parameters__



-}
describeCacheSecurityGroups :
    (DescribeCacheSecurityGroupsOptions -> DescribeCacheSecurityGroupsOptions)
    -> AWS.Request CacheSecurityGroupMessage
describeCacheSecurityGroups setOptions =
  let
    options = setOptions (DescribeCacheSecurityGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCacheSecurityGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheSecurityGroupMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCacheSecurityGroups request
-}
type alias DescribeCacheSecurityGroupsOptions =
    { cacheSecurityGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of cache subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group.</p>

__Required Parameters__



-}
describeCacheSubnetGroups :
    (DescribeCacheSubnetGroupsOptions -> DescribeCacheSubnetGroupsOptions)
    -> AWS.Request CacheSubnetGroupMessage
describeCacheSubnetGroups setOptions =
  let
    options = setOptions (DescribeCacheSubnetGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCacheSubnetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheSubnetGroupMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCacheSubnetGroups request
-}
type alias DescribeCacheSubnetGroupsOptions =
    { cacheSubnetGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the default engine and system parameter information for the specified cache engine.</p>

__Required Parameters__

* `cacheParameterGroupFamily` __:__ `String`


-}
describeEngineDefaultParameters :
    String
    -> (DescribeEngineDefaultParametersOptions -> DescribeEngineDefaultParametersOptions)
    -> AWS.Request DescribeEngineDefaultParametersResult
describeEngineDefaultParameters cacheParameterGroupFamily setOptions =
  let
    options = setOptions (DescribeEngineDefaultParametersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEngineDefaultParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEngineDefaultParametersResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEngineDefaultParameters request
-}
type alias DescribeEngineDefaultParametersOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns events related to cache clusters, cache security groups, and cache parameter groups. You can obtain events specific to a particular cache cluster, cache security group, or cache parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>

__Required Parameters__



-}
describeEvents :
    (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Request EventsMessage
describeEvents setOptions =
  let
    options = setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , startTime : Maybe Date
    , endTime : Maybe Date
    , duration : Maybe Int
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about a particular replication group. If no identifier is specified, <code>DescribeReplicationGroups</code> returns information about all replication groups.</p> <note> <p>This operation is valid for Redis only.</p> </note>

__Required Parameters__



-}
describeReplicationGroups :
    (DescribeReplicationGroupsOptions -> DescribeReplicationGroupsOptions)
    -> AWS.Request ReplicationGroupMessage
describeReplicationGroups setOptions =
  let
    options = setOptions (DescribeReplicationGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReplicationGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        replicationGroupMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReplicationGroups request
-}
type alias DescribeReplicationGroupsOptions =
    { replicationGroupId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about reserved cache nodes for this account, or about a specified reserved cache node.</p>

__Required Parameters__



-}
describeReservedCacheNodes :
    (DescribeReservedCacheNodesOptions -> DescribeReservedCacheNodesOptions)
    -> AWS.Request ReservedCacheNodeMessage
describeReservedCacheNodes setOptions =
  let
    options = setOptions (DescribeReservedCacheNodesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedCacheNodes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reservedCacheNodeMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedCacheNodes request
-}
type alias DescribeReservedCacheNodesOptions =
    { reservedCacheNodeId : Maybe String
    , reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Lists available reserved cache node offerings.</p>

__Required Parameters__



-}
describeReservedCacheNodesOfferings :
    (DescribeReservedCacheNodesOfferingsOptions -> DescribeReservedCacheNodesOfferingsOptions)
    -> AWS.Request ReservedCacheNodesOfferingMessage
describeReservedCacheNodesOfferings setOptions =
  let
    options = setOptions (DescribeReservedCacheNodesOfferingsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedCacheNodesOfferings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reservedCacheNodesOfferingMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedCacheNodesOfferings request
-}
type alias DescribeReservedCacheNodesOfferingsOptions =
    { reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about cache cluster or replication group snapshots. By default, <code>DescribeSnapshots</code> lists all of your snapshots; it can optionally describe a single snapshot, or just the snapshots associated with a particular cache cluster.</p> <note> <p>This operation is valid for Redis only.</p> </note>

__Required Parameters__



-}
describeSnapshots :
    (DescribeSnapshotsOptions -> DescribeSnapshotsOptions)
    -> AWS.Request DescribeSnapshotsListMessage
describeSnapshots setOptions =
  let
    options = setOptions (DescribeSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSnapshots"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSnapshotsListMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSnapshots request
-}
type alias DescribeSnapshotsOptions =
    { replicationGroupId : Maybe String
    , cacheClusterId : Maybe String
    , snapshotName : Maybe String
    , snapshotSource : Maybe String
    , marker : Maybe String
    , maxRecords : Maybe Int
    , showNodeGroupConfig : Maybe Bool
    }



{-| <p>Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to.</p> <p>When you use the <code>ModifyCacheCluster</code> or <code>ModifyReplicationGroup</code> operations to scale up your cluster or replication group, the value of the <code>CacheNodeType</code> parameter must be one of the node types returned by this operation.</p>

__Required Parameters__



-}
listAllowedNodeTypeModifications :
    (ListAllowedNodeTypeModificationsOptions -> ListAllowedNodeTypeModificationsOptions)
    -> AWS.Request AllowedNodeTypeModificationsMessage
listAllowedNodeTypeModifications setOptions =
  let
    options = setOptions (ListAllowedNodeTypeModificationsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAllowedNodeTypeModifications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        allowedNodeTypeModificationsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAllowedNodeTypeModifications request
-}
type alias ListAllowedNodeTypeModificationsOptions =
    { cacheClusterId : Maybe String
    , replicationGroupId : Maybe String
    }



{-| <p>Lists all cost allocation tags currently on the named resource. A <code>cost allocation tag</code> is a key-value pair where the key is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs.</p> <p>You can have a maximum of 10 cost allocation tags on an ElastiCache resource. For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/BestPractices.html">Using Cost Allocation Tags in Amazon ElastiCache</a>.</p>

__Required Parameters__

* `resourceName` __:__ `String`


-}
listTagsForResource :
    String
    -> AWS.Request TagListMessage
listTagsForResource resourceName =
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        tagListMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies the settings for a cache cluster. You can use this operation to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>

__Required Parameters__

* `cacheClusterId` __:__ `String`


-}
modifyCacheCluster :
    String
    -> (ModifyCacheClusterOptions -> ModifyCacheClusterOptions)
    -> AWS.Request ModifyCacheClusterResult
modifyCacheCluster cacheClusterId setOptions =
  let
    options = setOptions (ModifyCacheClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyCacheCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyCacheClusterResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyCacheCluster request
-}
type alias ModifyCacheClusterOptions =
    { numCacheNodes : Maybe Int
    , cacheNodeIdsToRemove : Maybe (List String)
    , aZMode : Maybe AZMode
    , newAvailabilityZones : Maybe (List String)
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , cacheParameterGroupName : Maybe String
    , notificationTopicStatus : Maybe String
    , applyImmediately : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , cacheNodeType : Maybe String
    }



{-| <p>Modifies the parameters of a cache parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>

__Required Parameters__

* `cacheParameterGroupName` __:__ `String`
* `parameterNameValues` __:__ `(List ParameterNameValue)`


-}
modifyCacheParameterGroup :
    String
    -> (List ParameterNameValue)
    -> AWS.Request CacheParameterGroupNameMessage
modifyCacheParameterGroup cacheParameterGroupName parameterNameValues =
    AWS.Http.unsignedRequest
        "ModifyCacheParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheParameterGroupNameMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies an existing cache subnet group.</p>

__Required Parameters__

* `cacheSubnetGroupName` __:__ `String`


-}
modifyCacheSubnetGroup :
    String
    -> (ModifyCacheSubnetGroupOptions -> ModifyCacheSubnetGroupOptions)
    -> AWS.Request ModifyCacheSubnetGroupResult
modifyCacheSubnetGroup cacheSubnetGroupName setOptions =
  let
    options = setOptions (ModifyCacheSubnetGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyCacheSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyCacheSubnetGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyCacheSubnetGroup request
-}
type alias ModifyCacheSubnetGroupOptions =
    { cacheSubnetGroupDescription : Maybe String
    , subnetIds : Maybe (List String)
    }



{-| <p>Modifies the settings for a replication group.</p> <important> <p>Due to current limitations on Redis (cluster mode disabled), this operation or parameter is not supported on Redis (cluster mode enabled) replication groups.</p> </important> <note> <p>This operation is valid for Redis only.</p> </note>

__Required Parameters__

* `replicationGroupId` __:__ `String`


-}
modifyReplicationGroup :
    String
    -> (ModifyReplicationGroupOptions -> ModifyReplicationGroupOptions)
    -> AWS.Request ModifyReplicationGroupResult
modifyReplicationGroup replicationGroupId setOptions =
  let
    options = setOptions (ModifyReplicationGroupOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyReplicationGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyReplicationGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyReplicationGroup request
-}
type alias ModifyReplicationGroupOptions =
    { replicationGroupDescription : Maybe String
    , primaryClusterId : Maybe String
    , snapshottingClusterId : Maybe String
    , automaticFailoverEnabled : Maybe Bool
    , cacheSecurityGroupNames : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , notificationTopicArn : Maybe String
    , cacheParameterGroupName : Maybe String
    , notificationTopicStatus : Maybe String
    , applyImmediately : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , cacheNodeType : Maybe String
    }



{-| <p>Allows you to purchase a reserved cache node offering.</p>

__Required Parameters__

* `reservedCacheNodesOfferingId` __:__ `String`


-}
purchaseReservedCacheNodesOffering :
    String
    -> (PurchaseReservedCacheNodesOfferingOptions -> PurchaseReservedCacheNodesOfferingOptions)
    -> AWS.Request PurchaseReservedCacheNodesOfferingResult
purchaseReservedCacheNodesOffering reservedCacheNodesOfferingId setOptions =
  let
    options = setOptions (PurchaseReservedCacheNodesOfferingOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PurchaseReservedCacheNodesOffering"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseReservedCacheNodesOfferingResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a purchaseReservedCacheNodesOffering request
-}
type alias PurchaseReservedCacheNodesOfferingOptions =
    { reservedCacheNodeId : Maybe String
    , cacheNodeCount : Maybe Int
    }



{-| <p>Reboots some, or all, of the cache nodes within a provisioned cache cluster. This operation applies any modified cache parameter groups to the cache cluster. The reboot operation takes place as soon as possible, and results in a momentary outage to the cache cluster. During the reboot, the cache cluster status is set to REBOOTING.</p> <p>The reboot causes the contents of the cache (for each cache node being rebooted) to be lost.</p> <p>When the reboot is complete, a cache cluster event is created.</p>

__Required Parameters__

* `cacheClusterId` __:__ `String`
* `cacheNodeIdsToReboot` __:__ `(List String)`


-}
rebootCacheCluster :
    String
    -> (List String)
    -> AWS.Request RebootCacheClusterResult
rebootCacheCluster cacheClusterId cacheNodeIdsToReboot =
    AWS.Http.unsignedRequest
        "RebootCacheCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rebootCacheClusterResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes the tags identified by the <code>TagKeys</code> list from the named resource.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTagsFromResource :
    String
    -> (List String)
    -> AWS.Request TagListMessage
removeTagsFromResource resourceName tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTagsFromResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        tagListMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies the parameters of a cache parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire cache parameter group, specify the <code>ResetAllParameters</code> and <code>CacheParameterGroupName</code> parameters.</p>

__Required Parameters__

* `cacheParameterGroupName` __:__ `String`


-}
resetCacheParameterGroup :
    String
    -> (ResetCacheParameterGroupOptions -> ResetCacheParameterGroupOptions)
    -> AWS.Request CacheParameterGroupNameMessage
resetCacheParameterGroup cacheParameterGroupName setOptions =
  let
    options = setOptions (ResetCacheParameterGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetCacheParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cacheParameterGroupNameMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a resetCacheParameterGroup request
-}
type alias ResetCacheParameterGroupOptions =
    { resetAllParameters : Maybe Bool
    , parameterNameValues : Maybe (List ParameterNameValue)
    }



{-| <p>Revokes ingress from a cache security group. Use this operation to disallow access from an Amazon EC2 security group that had been previously authorized.</p>

__Required Parameters__

* `cacheSecurityGroupName` __:__ `String`
* `eC2SecurityGroupName` __:__ `String`
* `eC2SecurityGroupOwnerId` __:__ `String`


-}
revokeCacheSecurityGroupIngress :
    String
    -> String
    -> String
    -> AWS.Request RevokeCacheSecurityGroupIngressResult
revokeCacheSecurityGroupIngress cacheSecurityGroupName eC2SecurityGroupName eC2SecurityGroupOwnerId =
    AWS.Http.unsignedRequest
        "RevokeCacheSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        revokeCacheSecurityGroupIngressResultDecoder
        |> AWS.UnsignedRequest




{-| One of

* `AZMode_single-az`
* `AZMode_cross-az`

-}
type AZMode
    = AZMode_single_az
    | AZMode_cross_az



aZModeDecoder : JD.Decoder AZMode
aZModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "single_az" ->
                        JD.succeed AZMode_single_az

                    "cross_az" ->
                        JD.succeed AZMode_cross_az


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from allowedNodeTypeModification
-}
type alias AllowedNodeTypeModificationsMessage =
    { scaleUpModifications : Maybe (List String)
    }



allowedNodeTypeModificationsMessageDecoder : JD.Decoder AllowedNodeTypeModificationsMessage
allowedNodeTypeModificationsMessageDecoder =
    JDP.decode AllowedNodeTypeModificationsMessage
        |> JDP.optional "scaleUpModifications" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The specified Amazon EC2 security group is already authorized for the specified cache security group.</p>
-}
type alias AuthorizationAlreadyExistsFault =
    { 
    }



authorizationAlreadyExistsFaultDecoder : JD.Decoder AuthorizationAlreadyExistsFault
authorizationAlreadyExistsFaultDecoder =
    JDP.decode AuthorizationAlreadyExistsFault



{-| <p>The specified Amazon EC2 security group is not authorized for the specified cache security group.</p>
-}
type alias AuthorizationNotFoundFault =
    { 
    }



authorizationNotFoundFaultDecoder : JD.Decoder AuthorizationNotFoundFault
authorizationNotFoundFaultDecoder =
    JDP.decode AuthorizationNotFoundFault



{-| Type of HTTP response from authorizeCacheSecurityGroupIngre
-}
type alias AuthorizeCacheSecurityGroupIngressResult =
    { cacheSecurityGroup : Maybe CacheSecurityGroup
    }



authorizeCacheSecurityGroupIngressResultDecoder : JD.Decoder AuthorizeCacheSecurityGroupIngressResult
authorizeCacheSecurityGroupIngressResultDecoder =
    JDP.decode AuthorizeCacheSecurityGroupIngressResult
        |> JDP.optional "cacheSecurityGroup" (JD.nullable cacheSecurityGroupDecoder) Nothing




{-| One of

* `AutomaticFailoverStatus_enabled`
* `AutomaticFailoverStatus_disabled`
* `AutomaticFailoverStatus_enabling`
* `AutomaticFailoverStatus_disabling`

-}
type AutomaticFailoverStatus
    = AutomaticFailoverStatus_enabled
    | AutomaticFailoverStatus_disabled
    | AutomaticFailoverStatus_enabling
    | AutomaticFailoverStatus_disabling



automaticFailoverStatusDecoder : JD.Decoder AutomaticFailoverStatus
automaticFailoverStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "enabled" ->
                        JD.succeed AutomaticFailoverStatus_enabled

                    "disabled" ->
                        JD.succeed AutomaticFailoverStatus_disabled

                    "enabling" ->
                        JD.succeed AutomaticFailoverStatus_enabling

                    "disabling" ->
                        JD.succeed AutomaticFailoverStatus_disabling


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an Availability Zone in which the cache cluster is launched.</p>
-}
type alias AvailabilityZone =
    { name : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JDP.decode AvailabilityZone
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Contains all of the attributes of a specific cache cluster.</p>
-}
type alias CacheCluster =
    { cacheClusterId : Maybe String
    , configurationEndpoint : Maybe Endpoint
    , clientDownloadLandingPage : Maybe String
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , cacheClusterStatus : Maybe String
    , numCacheNodes : Maybe Int
    , preferredAvailabilityZone : Maybe String
    , cacheClusterCreateTime : Maybe Date
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe PendingModifiedValues
    , notificationConfiguration : Maybe NotificationConfiguration
    , cacheSecurityGroups : Maybe (List CacheSecurityGroupMembership)
    , cacheParameterGroup : Maybe CacheParameterGroupStatus
    , cacheSubnetGroupName : Maybe String
    , cacheNodes : Maybe (List CacheNode)
    , autoMinorVersionUpgrade : Maybe Bool
    , securityGroups : Maybe (List SecurityGroupMembership)
    , replicationGroupId : Maybe String
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    }



cacheClusterDecoder : JD.Decoder CacheCluster
cacheClusterDecoder =
    JDP.decode CacheCluster
        |> JDP.optional "cacheClusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "configurationEndpoint" (JD.nullable endpointDecoder) Nothing
        |> JDP.optional "clientDownloadLandingPage" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheClusterStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "numCacheNodes" (JD.nullable JD.int) Nothing
        |> JDP.optional "preferredAvailabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheClusterCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "pendingModifiedValues" (JD.nullable pendingModifiedValuesDecoder) Nothing
        |> JDP.optional "notificationConfiguration" (JD.nullable notificationConfigurationDecoder) Nothing
        |> JDP.optional "cacheSecurityGroups" (JD.nullable (JD.list cacheSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "cacheParameterGroup" (JD.nullable cacheParameterGroupStatusDecoder) Nothing
        |> JDP.optional "cacheSubnetGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodes" (JD.nullable (JD.list cacheNodeDecoder)) Nothing
        |> JDP.optional "autoMinorVersionUpgrade" (JD.nullable JD.bool) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list securityGroupMembershipDecoder)) Nothing
        |> JDP.optional "replicationGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotRetentionLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "snapshotWindow" (JD.nullable JD.string) Nothing




{-| <p>You already have a cache cluster with the given identifier.</p>
-}
type alias CacheClusterAlreadyExistsFault =
    { 
    }



cacheClusterAlreadyExistsFaultDecoder : JD.Decoder CacheClusterAlreadyExistsFault
cacheClusterAlreadyExistsFaultDecoder =
    JDP.decode CacheClusterAlreadyExistsFault



{-| Type of HTTP response from cacheCluste
-}
type alias CacheClusterMessage =
    { marker : Maybe String
    , cacheClusters : Maybe (List CacheCluster)
    }



cacheClusterMessageDecoder : JD.Decoder CacheClusterMessage
cacheClusterMessageDecoder =
    JDP.decode CacheClusterMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheClusters" (JD.nullable (JD.list cacheClusterDecoder)) Nothing




{-| <p>The requested cache cluster ID does not refer to an existing cache cluster.</p>
-}
type alias CacheClusterNotFoundFault =
    { 
    }



cacheClusterNotFoundFaultDecoder : JD.Decoder CacheClusterNotFoundFault
cacheClusterNotFoundFaultDecoder =
    JDP.decode CacheClusterNotFoundFault



{-| <p>Provides all of the details about a particular cache engine version.</p>
-}
type alias CacheEngineVersion =
    { engine : Maybe String
    , engineVersion : Maybe String
    , cacheParameterGroupFamily : Maybe String
    , cacheEngineDescription : Maybe String
    , cacheEngineVersionDescription : Maybe String
    }



cacheEngineVersionDecoder : JD.Decoder CacheEngineVersion
cacheEngineVersionDecoder =
    JDP.decode CacheEngineVersion
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheEngineDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheEngineVersionDescription" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cacheEngineVersio
-}
type alias CacheEngineVersionMessage =
    { marker : Maybe String
    , cacheEngineVersions : Maybe (List CacheEngineVersion)
    }



cacheEngineVersionMessageDecoder : JD.Decoder CacheEngineVersionMessage
cacheEngineVersionMessageDecoder =
    JDP.decode CacheEngineVersionMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheEngineVersions" (JD.nullable (JD.list cacheEngineVersionDecoder)) Nothing




{-| <p>Represents an individual cache node within a cache cluster. Each cache node runs its own instance of the cluster's protocol-compliant caching software - either Memcached or Redis.</p> <p>Valid node types are as follows:</p> <ul> <li> <p>General purpose:</p> <ul> <li> <p>Current generation: <code>cache.t2.micro</code>, <code>cache.t2.small</code>, <code>cache.t2.medium</code>, <code>cache.m3.medium</code>, <code>cache.m3.large</code>, <code>cache.m3.xlarge</code>, <code>cache.m3.2xlarge</code>, <code>cache.m4.large</code>, <code>cache.m4.xlarge</code>, <code>cache.m4.2xlarge</code>, <code>cache.m4.4xlarge</code>, <code>cache.m4.10xlarge</code> </p> </li> <li> <p>Previous generation: <code>cache.t1.micro</code>, <code>cache.m1.small</code>, <code>cache.m1.medium</code>, <code>cache.m1.large</code>, <code>cache.m1.xlarge</code> </p> </li> </ul> </li> <li> <p>Compute optimized: <code>cache.c1.xlarge</code> </p> </li> <li> <p>Memory optimized:</p> <ul> <li> <p>Current generation: <code>cache.r3.large</code>, <code>cache.r3.xlarge</code>, <code>cache.r3.2xlarge</code>, <code>cache.r3.4xlarge</code>, <code>cache.r3.8xlarge</code> </p> </li> <li> <p>Previous generation: <code>cache.m2.xlarge</code>, <code>cache.m2.2xlarge</code>, <code>cache.m2.4xlarge</code> </p> </li> </ul> </li> </ul> <p> <b>Notes:</b> </p> <ul> <li> <p>All T2 instances are created in an Amazon Virtual Private Cloud (Amazon VPC).</p> </li> <li> <p>Redis backup/restore is not supported for Redis (cluster mode disabled) T1 and T2 instances. Backup/restore is supported on Redis (cluster mode enabled) T2 instances.</p> </li> <li> <p>Redis Append-only files (AOF) functionality is not supported for T1 or T2 instances.</p> </li> </ul> <p>For a complete listing of node types and specifications, see <a href="http://aws.amazon.com/elasticache/details">Amazon ElastiCache Product Features and Details</a> and either <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific">Cache Node Type-Specific Parameters for Memcached</a> or <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific">Cache Node Type-Specific Parameters for Redis</a>.</p>
-}
type alias CacheNode =
    { cacheNodeId : Maybe String
    , cacheNodeStatus : Maybe String
    , cacheNodeCreateTime : Maybe Date
    , endpoint : Maybe Endpoint
    , parameterGroupStatus : Maybe String
    , sourceCacheNodeId : Maybe String
    , customerAvailabilityZone : Maybe String
    }



cacheNodeDecoder : JD.Decoder CacheNode
cacheNodeDecoder =
    JDP.decode CacheNode
        |> JDP.optional "cacheNodeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endpoint" (JD.nullable endpointDecoder) Nothing
        |> JDP.optional "parameterGroupStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceCacheNodeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerAvailabilityZone" (JD.nullable JD.string) Nothing




{-| <p>A parameter that has a different value for each cache node type it is applied to. For example, in a Redis cache cluster, a <code>cache.m1.large</code> cache node type would have a larger <code>maxmemory</code> value than a <code>cache.m1.small</code> type.</p>
-}
type alias CacheNodeTypeSpecificParameter =
    { parameterName : Maybe String
    , description : Maybe String
    , source : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
    , cacheNodeTypeSpecificValues : Maybe (List CacheNodeTypeSpecificValue)
    , changeType : Maybe ChangeType
    }



cacheNodeTypeSpecificParameterDecoder : JD.Decoder CacheNodeTypeSpecificParameter
cacheNodeTypeSpecificParameterDecoder =
    JDP.decode CacheNodeTypeSpecificParameter
        |> JDP.optional "parameterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "source" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataType" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowedValues" (JD.nullable JD.string) Nothing
        |> JDP.optional "isModifiable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "minimumEngineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeTypeSpecificValues" (JD.nullable (JD.list cacheNodeTypeSpecificValueDecoder)) Nothing
        |> JDP.optional "changeType" (JD.nullable changeTypeDecoder) Nothing




{-| <p>A value that applies only to a certain cache node type.</p>
-}
type alias CacheNodeTypeSpecificValue =
    { cacheNodeType : Maybe String
    , value : Maybe String
    }



cacheNodeTypeSpecificValueDecoder : JD.Decoder CacheNodeTypeSpecificValue
cacheNodeTypeSpecificValueDecoder =
    JDP.decode CacheNodeTypeSpecificValue
        |> JDP.optional "cacheNodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>Represents the output of a <code>CreateCacheParameterGroup</code> operation.</p>
-}
type alias CacheParameterGroup =
    { cacheParameterGroupName : Maybe String
    , cacheParameterGroupFamily : Maybe String
    , description : Maybe String
    }



cacheParameterGroupDecoder : JD.Decoder CacheParameterGroup
cacheParameterGroupDecoder =
    JDP.decode CacheParameterGroup
        |> JDP.optional "cacheParameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>A cache parameter group with the requested name already exists.</p>
-}
type alias CacheParameterGroupAlreadyExistsFault =
    { 
    }



cacheParameterGroupAlreadyExistsFaultDecoder : JD.Decoder CacheParameterGroupAlreadyExistsFault
cacheParameterGroupAlreadyExistsFaultDecoder =
    JDP.decode CacheParameterGroupAlreadyExistsFault



{-| Type of HTTP response from cacheParameterGrou
-}
type alias CacheParameterGroupDetails =
    { marker : Maybe String
    , parameters : Maybe (List Parameter)
    , cacheNodeTypeSpecificParameters : Maybe (List CacheNodeTypeSpecificParameter)
    }



cacheParameterGroupDetailsDecoder : JD.Decoder CacheParameterGroupDetails
cacheParameterGroupDetailsDecoder =
    JDP.decode CacheParameterGroupDetails
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.optional "cacheNodeTypeSpecificParameters" (JD.nullable (JD.list cacheNodeTypeSpecificParameterDecoder)) Nothing




{-| Type of HTTP response from cacheParameterGroupNam
-}
type alias CacheParameterGroupNameMessage =
    { cacheParameterGroupName : Maybe String
    }



cacheParameterGroupNameMessageDecoder : JD.Decoder CacheParameterGroupNameMessage
cacheParameterGroupNameMessageDecoder =
    JDP.decode CacheParameterGroupNameMessage
        |> JDP.optional "cacheParameterGroupName" (JD.nullable JD.string) Nothing




{-| <p>The requested cache parameter group name does not refer to an existing cache parameter group.</p>
-}
type alias CacheParameterGroupNotFoundFault =
    { 
    }



cacheParameterGroupNotFoundFaultDecoder : JD.Decoder CacheParameterGroupNotFoundFault
cacheParameterGroupNotFoundFaultDecoder =
    JDP.decode CacheParameterGroupNotFoundFault



{-| <p>The request cannot be processed because it would exceed the maximum number of cache security groups.</p>
-}
type alias CacheParameterGroupQuotaExceededFault =
    { 
    }



cacheParameterGroupQuotaExceededFaultDecoder : JD.Decoder CacheParameterGroupQuotaExceededFault
cacheParameterGroupQuotaExceededFaultDecoder =
    JDP.decode CacheParameterGroupQuotaExceededFault



{-| <p>Status of the cache parameter group.</p>
-}
type alias CacheParameterGroupStatus =
    { cacheParameterGroupName : Maybe String
    , parameterApplyStatus : Maybe String
    , cacheNodeIdsToReboot : Maybe (List String)
    }



cacheParameterGroupStatusDecoder : JD.Decoder CacheParameterGroupStatus
cacheParameterGroupStatusDecoder =
    JDP.decode CacheParameterGroupStatus
        |> JDP.optional "cacheParameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterApplyStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeIdsToReboot" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from cacheParameterGroup
-}
type alias CacheParameterGroupsMessage =
    { marker : Maybe String
    , cacheParameterGroups : Maybe (List CacheParameterGroup)
    }



cacheParameterGroupsMessageDecoder : JD.Decoder CacheParameterGroupsMessage
cacheParameterGroupsMessageDecoder =
    JDP.decode CacheParameterGroupsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheParameterGroups" (JD.nullable (JD.list cacheParameterGroupDecoder)) Nothing




{-| <p>Represents the output of one of the following operations:</p> <ul> <li> <p> <code>AuthorizeCacheSecurityGroupIngress</code> </p> </li> <li> <p> <code>CreateCacheSecurityGroup</code> </p> </li> <li> <p> <code>RevokeCacheSecurityGroupIngress</code> </p> </li> </ul>
-}
type alias CacheSecurityGroup =
    { ownerId : Maybe String
    , cacheSecurityGroupName : Maybe String
    , description : Maybe String
    , eC2SecurityGroups : Maybe (List EC2SecurityGroup)
    }



cacheSecurityGroupDecoder : JD.Decoder CacheSecurityGroup
cacheSecurityGroupDecoder =
    JDP.decode CacheSecurityGroup
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheSecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroups" (JD.nullable (JD.list eC2SecurityGroupDecoder)) Nothing




{-| <p>A cache security group with the specified name already exists.</p>
-}
type alias CacheSecurityGroupAlreadyExistsFault =
    { 
    }



cacheSecurityGroupAlreadyExistsFaultDecoder : JD.Decoder CacheSecurityGroupAlreadyExistsFault
cacheSecurityGroupAlreadyExistsFaultDecoder =
    JDP.decode CacheSecurityGroupAlreadyExistsFault



{-| <p>Represents a cache cluster's status within a particular cache security group.</p>
-}
type alias CacheSecurityGroupMembership =
    { cacheSecurityGroupName : Maybe String
    , status : Maybe String
    }



cacheSecurityGroupMembershipDecoder : JD.Decoder CacheSecurityGroupMembership
cacheSecurityGroupMembershipDecoder =
    JDP.decode CacheSecurityGroupMembership
        |> JDP.optional "cacheSecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cacheSecurityGrou
-}
type alias CacheSecurityGroupMessage =
    { marker : Maybe String
    , cacheSecurityGroups : Maybe (List CacheSecurityGroup)
    }



cacheSecurityGroupMessageDecoder : JD.Decoder CacheSecurityGroupMessage
cacheSecurityGroupMessageDecoder =
    JDP.decode CacheSecurityGroupMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheSecurityGroups" (JD.nullable (JD.list cacheSecurityGroupDecoder)) Nothing




{-| <p>The requested cache security group name does not refer to an existing cache security group.</p>
-}
type alias CacheSecurityGroupNotFoundFault =
    { 
    }



cacheSecurityGroupNotFoundFaultDecoder : JD.Decoder CacheSecurityGroupNotFoundFault
cacheSecurityGroupNotFoundFaultDecoder =
    JDP.decode CacheSecurityGroupNotFoundFault



{-| <p>The request cannot be processed because it would exceed the allowed number of cache security groups.</p>
-}
type alias CacheSecurityGroupQuotaExceededFault =
    { 
    }



cacheSecurityGroupQuotaExceededFaultDecoder : JD.Decoder CacheSecurityGroupQuotaExceededFault
cacheSecurityGroupQuotaExceededFaultDecoder =
    JDP.decode CacheSecurityGroupQuotaExceededFault



{-| <p>Represents the output of one of the following operations:</p> <ul> <li> <p> <code>CreateCacheSubnetGroup</code> </p> </li> <li> <p> <code>ModifyCacheSubnetGroup</code> </p> </li> </ul>
-}
type alias CacheSubnetGroup =
    { cacheSubnetGroupName : Maybe String
    , cacheSubnetGroupDescription : Maybe String
    , vpcId : Maybe String
    , subnets : Maybe (List Subnet)
    }



cacheSubnetGroupDecoder : JD.Decoder CacheSubnetGroup
cacheSubnetGroupDecoder =
    JDP.decode CacheSubnetGroup
        |> JDP.optional "cacheSubnetGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheSubnetGroupDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnets" (JD.nullable (JD.list subnetDecoder)) Nothing




{-| <p>The requested cache subnet group name is already in use by an existing cache subnet group.</p>
-}
type alias CacheSubnetGroupAlreadyExistsFault =
    { 
    }



cacheSubnetGroupAlreadyExistsFaultDecoder : JD.Decoder CacheSubnetGroupAlreadyExistsFault
cacheSubnetGroupAlreadyExistsFaultDecoder =
    JDP.decode CacheSubnetGroupAlreadyExistsFault



{-| <p>The requested cache subnet group is currently in use.</p>
-}
type alias CacheSubnetGroupInUse =
    { 
    }



cacheSubnetGroupInUseDecoder : JD.Decoder CacheSubnetGroupInUse
cacheSubnetGroupInUseDecoder =
    JDP.decode CacheSubnetGroupInUse



{-| Type of HTTP response from cacheSubnetGrou
-}
type alias CacheSubnetGroupMessage =
    { marker : Maybe String
    , cacheSubnetGroups : Maybe (List CacheSubnetGroup)
    }



cacheSubnetGroupMessageDecoder : JD.Decoder CacheSubnetGroupMessage
cacheSubnetGroupMessageDecoder =
    JDP.decode CacheSubnetGroupMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheSubnetGroups" (JD.nullable (JD.list cacheSubnetGroupDecoder)) Nothing




{-| <p>The requested cache subnet group name does not refer to an existing cache subnet group.</p>
-}
type alias CacheSubnetGroupNotFoundFault =
    { 
    }



cacheSubnetGroupNotFoundFaultDecoder : JD.Decoder CacheSubnetGroupNotFoundFault
cacheSubnetGroupNotFoundFaultDecoder =
    JDP.decode CacheSubnetGroupNotFoundFault



{-| <p>The request cannot be processed because it would exceed the allowed number of cache subnet groups.</p>
-}
type alias CacheSubnetGroupQuotaExceededFault =
    { 
    }



cacheSubnetGroupQuotaExceededFaultDecoder : JD.Decoder CacheSubnetGroupQuotaExceededFault
cacheSubnetGroupQuotaExceededFaultDecoder =
    JDP.decode CacheSubnetGroupQuotaExceededFault



{-| <p>The request cannot be processed because it would exceed the allowed number of subnets in a cache subnet group.</p>
-}
type alias CacheSubnetQuotaExceededFault =
    { 
    }



cacheSubnetQuotaExceededFaultDecoder : JD.Decoder CacheSubnetQuotaExceededFault
cacheSubnetQuotaExceededFaultDecoder =
    JDP.decode CacheSubnetQuotaExceededFault



{-| One of

* `ChangeType_immediate`
* `ChangeType_requires-reboot`

-}
type ChangeType
    = ChangeType_immediate
    | ChangeType_requires_reboot



changeTypeDecoder : JD.Decoder ChangeType
changeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "immediate" ->
                        JD.succeed ChangeType_immediate

                    "requires_reboot" ->
                        JD.succeed ChangeType_requires_reboot


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request cannot be processed because it would exceed the allowed number of cache clusters per customer.</p>
-}
type alias ClusterQuotaForCustomerExceededFault =
    { 
    }



clusterQuotaForCustomerExceededFaultDecoder : JD.Decoder ClusterQuotaForCustomerExceededFault
clusterQuotaForCustomerExceededFaultDecoder =
    JDP.decode ClusterQuotaForCustomerExceededFault



{-| Type of HTTP response from copySnapsh
-}
type alias CopySnapshotResult =
    { snapshot : Maybe Snapshot
    }



copySnapshotResultDecoder : JD.Decoder CopySnapshotResult
copySnapshotResultDecoder =
    JDP.decode CopySnapshotResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| Type of HTTP response from createCacheClust
-}
type alias CreateCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }



createCacheClusterResultDecoder : JD.Decoder CreateCacheClusterResult
createCacheClusterResultDecoder =
    JDP.decode CreateCacheClusterResult
        |> JDP.optional "cacheCluster" (JD.nullable cacheClusterDecoder) Nothing




{-| Type of HTTP response from createCacheParameterGro
-}
type alias CreateCacheParameterGroupResult =
    { cacheParameterGroup : Maybe CacheParameterGroup
    }



createCacheParameterGroupResultDecoder : JD.Decoder CreateCacheParameterGroupResult
createCacheParameterGroupResultDecoder =
    JDP.decode CreateCacheParameterGroupResult
        |> JDP.optional "cacheParameterGroup" (JD.nullable cacheParameterGroupDecoder) Nothing




{-| Type of HTTP response from createCacheSecurityGro
-}
type alias CreateCacheSecurityGroupResult =
    { cacheSecurityGroup : Maybe CacheSecurityGroup
    }



createCacheSecurityGroupResultDecoder : JD.Decoder CreateCacheSecurityGroupResult
createCacheSecurityGroupResultDecoder =
    JDP.decode CreateCacheSecurityGroupResult
        |> JDP.optional "cacheSecurityGroup" (JD.nullable cacheSecurityGroupDecoder) Nothing




{-| Type of HTTP response from createCacheSubnetGro
-}
type alias CreateCacheSubnetGroupResult =
    { cacheSubnetGroup : Maybe CacheSubnetGroup
    }



createCacheSubnetGroupResultDecoder : JD.Decoder CreateCacheSubnetGroupResult
createCacheSubnetGroupResultDecoder =
    JDP.decode CreateCacheSubnetGroupResult
        |> JDP.optional "cacheSubnetGroup" (JD.nullable cacheSubnetGroupDecoder) Nothing




{-| Type of HTTP response from createReplicationGro
-}
type alias CreateReplicationGroupResult =
    { replicationGroup : Maybe ReplicationGroup
    }



createReplicationGroupResultDecoder : JD.Decoder CreateReplicationGroupResult
createReplicationGroupResultDecoder =
    JDP.decode CreateReplicationGroupResult
        |> JDP.optional "replicationGroup" (JD.nullable replicationGroupDecoder) Nothing




{-| Type of HTTP response from createSnapsh
-}
type alias CreateSnapshotResult =
    { snapshot : Maybe Snapshot
    }



createSnapshotResultDecoder : JD.Decoder CreateSnapshotResult
createSnapshotResultDecoder =
    JDP.decode CreateSnapshotResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| Type of HTTP response from deleteCacheClust
-}
type alias DeleteCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }



deleteCacheClusterResultDecoder : JD.Decoder DeleteCacheClusterResult
deleteCacheClusterResultDecoder =
    JDP.decode DeleteCacheClusterResult
        |> JDP.optional "cacheCluster" (JD.nullable cacheClusterDecoder) Nothing




{-| Type of HTTP response from deleteReplicationGro
-}
type alias DeleteReplicationGroupResult =
    { replicationGroup : Maybe ReplicationGroup
    }



deleteReplicationGroupResultDecoder : JD.Decoder DeleteReplicationGroupResult
deleteReplicationGroupResultDecoder =
    JDP.decode DeleteReplicationGroupResult
        |> JDP.optional "replicationGroup" (JD.nullable replicationGroupDecoder) Nothing




{-| Type of HTTP response from deleteSnapsh
-}
type alias DeleteSnapshotResult =
    { snapshot : Maybe Snapshot
    }



deleteSnapshotResultDecoder : JD.Decoder DeleteSnapshotResult
deleteSnapshotResultDecoder =
    JDP.decode DeleteSnapshotResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| Type of HTTP response from describeEngineDefaultParamete
-}
type alias DescribeEngineDefaultParametersResult =
    { engineDefaults : Maybe EngineDefaults
    }



describeEngineDefaultParametersResultDecoder : JD.Decoder DescribeEngineDefaultParametersResult
describeEngineDefaultParametersResultDecoder =
    JDP.decode DescribeEngineDefaultParametersResult
        |> JDP.optional "engineDefaults" (JD.nullable engineDefaultsDecoder) Nothing




{-| Type of HTTP response from describeSnapshotsLis
-}
type alias DescribeSnapshotsListMessage =
    { marker : Maybe String
    , snapshots : Maybe (List Snapshot)
    }



describeSnapshotsListMessageDecoder : JD.Decoder DescribeSnapshotsListMessage
describeSnapshotsListMessageDecoder =
    JDP.decode DescribeSnapshotsListMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshots" (JD.nullable (JD.list snapshotDecoder)) Nothing




{-| <p>Provides ownership and status information for an Amazon EC2 security group.</p>
-}
type alias EC2SecurityGroup =
    { status : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }



eC2SecurityGroupDecoder : JD.Decoder EC2SecurityGroup
eC2SecurityGroupDecoder =
    JDP.decode EC2SecurityGroup
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroupOwnerId" (JD.nullable JD.string) Nothing




{-| <p>Represents the information required for client programs to connect to a cache node.</p>
-}
type alias Endpoint =
    { address : Maybe String
    , port_ : Maybe Int
    }



endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JDP.decode Endpoint
        |> JDP.optional "address" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing




{-| <p>Represents the output of a <code>DescribeEngineDefaultParameters</code> operation.</p>
-}
type alias EngineDefaults =
    { cacheParameterGroupFamily : Maybe String
    , marker : Maybe String
    , parameters : Maybe (List Parameter)
    , cacheNodeTypeSpecificParameters : Maybe (List CacheNodeTypeSpecificParameter)
    }



engineDefaultsDecoder : JD.Decoder EngineDefaults
engineDefaultsDecoder =
    JDP.decode EngineDefaults
        |> JDP.optional "cacheParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.optional "cacheNodeTypeSpecificParameters" (JD.nullable (JD.list cacheNodeTypeSpecificParameterDecoder)) Nothing




{-| <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a cache cluster, adding or removing a cache node, or rebooting a node.</p>
-}
type alias Event =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , date : Maybe Date
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JDP.decode Event
        |> JDP.optional "sourceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceType" (JD.nullable sourceTypeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "date" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from event
-}
type alias EventsMessage =
    { marker : Maybe String
    , events : Maybe (List Event)
    }



eventsMessageDecoder : JD.Decoder EventsMessage
eventsMessageDecoder =
    JDP.decode EventsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list eventDecoder)) Nothing




{-| <p>The requested cache node type is not available in the specified Availability Zone.</p>
-}
type alias InsufficientCacheClusterCapacityFault =
    { 
    }



insufficientCacheClusterCapacityFaultDecoder : JD.Decoder InsufficientCacheClusterCapacityFault
insufficientCacheClusterCapacityFaultDecoder =
    JDP.decode InsufficientCacheClusterCapacityFault



{-| <p>The requested Amazon Resource Name (ARN) does not refer to an existing resource.</p>
-}
type alias InvalidARNFault =
    { 
    }



invalidARNFaultDecoder : JD.Decoder InvalidARNFault
invalidARNFaultDecoder =
    JDP.decode InvalidARNFault



{-| <p>The requested cache cluster is not in the <code>available</code> state.</p>
-}
type alias InvalidCacheClusterStateFault =
    { 
    }



invalidCacheClusterStateFaultDecoder : JD.Decoder InvalidCacheClusterStateFault
invalidCacheClusterStateFaultDecoder =
    JDP.decode InvalidCacheClusterStateFault



{-| <p>The current state of the cache parameter group does not allow the requested operation to occur.</p>
-}
type alias InvalidCacheParameterGroupStateFault =
    { 
    }



invalidCacheParameterGroupStateFaultDecoder : JD.Decoder InvalidCacheParameterGroupStateFault
invalidCacheParameterGroupStateFaultDecoder =
    JDP.decode InvalidCacheParameterGroupStateFault



{-| <p>The current state of the cache security group does not allow deletion.</p>
-}
type alias InvalidCacheSecurityGroupStateFault =
    { 
    }



invalidCacheSecurityGroupStateFaultDecoder : JD.Decoder InvalidCacheSecurityGroupStateFault
invalidCacheSecurityGroupStateFaultDecoder =
    JDP.decode InvalidCacheSecurityGroupStateFault



{-| <p>Two or more incompatible parameters were specified.</p>
-}
type alias InvalidParameterCombinationException =
    { message : Maybe String
    }



invalidParameterCombinationExceptionDecoder : JD.Decoder InvalidParameterCombinationException
invalidParameterCombinationExceptionDecoder =
    JDP.decode InvalidParameterCombinationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The value for a parameter is invalid.</p>
-}
type alias InvalidParameterValueException =
    { message : Maybe String
    }



invalidParameterValueExceptionDecoder : JD.Decoder InvalidParameterValueException
invalidParameterValueExceptionDecoder =
    JDP.decode InvalidParameterValueException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The requested replication group is not in the <code>available</code> state.</p>
-}
type alias InvalidReplicationGroupStateFault =
    { 
    }



invalidReplicationGroupStateFaultDecoder : JD.Decoder InvalidReplicationGroupStateFault
invalidReplicationGroupStateFaultDecoder =
    JDP.decode InvalidReplicationGroupStateFault



{-| <p>The current state of the snapshot does not allow the requested operation to occur.</p>
-}
type alias InvalidSnapshotStateFault =
    { 
    }



invalidSnapshotStateFaultDecoder : JD.Decoder InvalidSnapshotStateFault
invalidSnapshotStateFaultDecoder =
    JDP.decode InvalidSnapshotStateFault



{-| <p>An invalid subnet identifier was specified.</p>
-}
type alias InvalidSubnet =
    { 
    }



invalidSubnetDecoder : JD.Decoder InvalidSubnet
invalidSubnetDecoder =
    JDP.decode InvalidSubnet



{-| <p>The VPC network is in an invalid state.</p>
-}
type alias InvalidVPCNetworkStateFault =
    { 
    }



invalidVPCNetworkStateFaultDecoder : JD.Decoder InvalidVPCNetworkStateFault
invalidVPCNetworkStateFaultDecoder =
    JDP.decode InvalidVPCNetworkStateFault



{-| Type of HTTP response from modifyCacheClust
-}
type alias ModifyCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }



modifyCacheClusterResultDecoder : JD.Decoder ModifyCacheClusterResult
modifyCacheClusterResultDecoder =
    JDP.decode ModifyCacheClusterResult
        |> JDP.optional "cacheCluster" (JD.nullable cacheClusterDecoder) Nothing




{-| Type of HTTP response from modifyCacheSubnetGro
-}
type alias ModifyCacheSubnetGroupResult =
    { cacheSubnetGroup : Maybe CacheSubnetGroup
    }



modifyCacheSubnetGroupResultDecoder : JD.Decoder ModifyCacheSubnetGroupResult
modifyCacheSubnetGroupResultDecoder =
    JDP.decode ModifyCacheSubnetGroupResult
        |> JDP.optional "cacheSubnetGroup" (JD.nullable cacheSubnetGroupDecoder) Nothing




{-| Type of HTTP response from modifyReplicationGro
-}
type alias ModifyReplicationGroupResult =
    { replicationGroup : Maybe ReplicationGroup
    }



modifyReplicationGroupResultDecoder : JD.Decoder ModifyReplicationGroupResult
modifyReplicationGroupResultDecoder =
    JDP.decode ModifyReplicationGroupResult
        |> JDP.optional "replicationGroup" (JD.nullable replicationGroupDecoder) Nothing




{-| <p>Represents a collection of cache nodes in a replication group. One node in the node group is the read/write primary node. All the other nodes are read-only Replica nodes.</p>
-}
type alias NodeGroup =
    { nodeGroupId : Maybe String
    , status : Maybe String
    , primaryEndpoint : Maybe Endpoint
    , slots : Maybe String
    , nodeGroupMembers : Maybe (List NodeGroupMember)
    }



nodeGroupDecoder : JD.Decoder NodeGroup
nodeGroupDecoder =
    JDP.decode NodeGroup
        |> JDP.optional "nodeGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "primaryEndpoint" (JD.nullable endpointDecoder) Nothing
        |> JDP.optional "slots" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeGroupMembers" (JD.nullable (JD.list nodeGroupMemberDecoder)) Nothing




{-| <p>node group (shard) configuration options. Each node group (shard) configuration has the following: <code>Slots</code>, <code>PrimaryAvailabilityZone</code>, <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>.</p>
-}
type alias NodeGroupConfiguration =
    { slots : Maybe String
    , replicaCount : Maybe Int
    , primaryAvailabilityZone : Maybe String
    , replicaAvailabilityZones : Maybe (List String)
    }



nodeGroupConfigurationDecoder : JD.Decoder NodeGroupConfiguration
nodeGroupConfigurationDecoder =
    JDP.decode NodeGroupConfiguration
        |> JDP.optional "slots" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicaCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "primaryAvailabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicaAvailabilityZones" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Represents a single node within a node group (shard).</p>
-}
type alias NodeGroupMember =
    { cacheClusterId : Maybe String
    , cacheNodeId : Maybe String
    , readEndpoint : Maybe Endpoint
    , preferredAvailabilityZone : Maybe String
    , currentRole : Maybe String
    }



nodeGroupMemberDecoder : JD.Decoder NodeGroupMember
nodeGroupMemberDecoder =
    JDP.decode NodeGroupMember
        |> JDP.optional "cacheClusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "readEndpoint" (JD.nullable endpointDecoder) Nothing
        |> JDP.optional "preferredAvailabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentRole" (JD.nullable JD.string) Nothing




{-| <p>The request cannot be processed because it would exceed the maximum of 15 node groups (shards) in a single replication group.</p>
-}
type alias NodeGroupsPerReplicationGroupQuotaExceededFault =
    { 
    }



nodeGroupsPerReplicationGroupQuotaExceededFaultDecoder : JD.Decoder NodeGroupsPerReplicationGroupQuotaExceededFault
nodeGroupsPerReplicationGroupQuotaExceededFaultDecoder =
    JDP.decode NodeGroupsPerReplicationGroupQuotaExceededFault



{-| <p>The request cannot be processed because it would exceed the allowed number of cache nodes in a single cache cluster.</p>
-}
type alias NodeQuotaForClusterExceededFault =
    { 
    }



nodeQuotaForClusterExceededFaultDecoder : JD.Decoder NodeQuotaForClusterExceededFault
nodeQuotaForClusterExceededFaultDecoder =
    JDP.decode NodeQuotaForClusterExceededFault



{-| <p>The request cannot be processed because it would exceed the allowed number of cache nodes per customer.</p>
-}
type alias NodeQuotaForCustomerExceededFault =
    { 
    }



nodeQuotaForCustomerExceededFaultDecoder : JD.Decoder NodeQuotaForCustomerExceededFault
nodeQuotaForCustomerExceededFaultDecoder =
    JDP.decode NodeQuotaForCustomerExceededFault



{-| <p>Represents an individual cache node in a snapshot of a cache cluster.</p>
-}
type alias NodeSnapshot =
    { cacheClusterId : Maybe String
    , nodeGroupId : Maybe String
    , cacheNodeId : Maybe String
    , nodeGroupConfiguration : Maybe NodeGroupConfiguration
    , cacheSize : Maybe String
    , cacheNodeCreateTime : Maybe Date
    , snapshotCreateTime : Maybe Date
    }



nodeSnapshotDecoder : JD.Decoder NodeSnapshot
nodeSnapshotDecoder =
    JDP.decode NodeSnapshot
        |> JDP.optional "cacheClusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeGroupConfiguration" (JD.nullable nodeGroupConfigurationDecoder) Nothing
        |> JDP.optional "cacheSize" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "snapshotCreateTime" (JD.nullable JDX.date) Nothing




{-| <p>Describes a notification topic and its status. Notification topics are used for publishing ElastiCache events to subscribers using Amazon Simple Notification Service (SNS).</p>
-}
type alias NotificationConfiguration =
    { topicArn : Maybe String
    , topicStatus : Maybe String
    }



notificationConfigurationDecoder : JD.Decoder NotificationConfiguration
notificationConfigurationDecoder =
    JDP.decode NotificationConfiguration
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "topicStatus" (JD.nullable JD.string) Nothing




{-| <p>Describes an individual setting that controls some aspect of ElastiCache behavior.</p>
-}
type alias Parameter =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    , description : Maybe String
    , source : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
    , changeType : Maybe ChangeType
    }



parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JDP.decode Parameter
        |> JDP.optional "parameterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "source" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataType" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowedValues" (JD.nullable JD.string) Nothing
        |> JDP.optional "isModifiable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "minimumEngineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "changeType" (JD.nullable changeTypeDecoder) Nothing




{-| <p>Describes a name-value pair that is used to update the value of a parameter.</p>
-}
type alias ParameterNameValue =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    }



parameterNameValueDecoder : JD.Decoder ParameterNameValue
parameterNameValueDecoder =
    JDP.decode ParameterNameValue
        |> JDP.optional "parameterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterValue" (JD.nullable JD.string) Nothing




{-| One of

* `PendingAutomaticFailoverStatus_enabled`
* `PendingAutomaticFailoverStatus_disabled`

-}
type PendingAutomaticFailoverStatus
    = PendingAutomaticFailoverStatus_enabled
    | PendingAutomaticFailoverStatus_disabled



pendingAutomaticFailoverStatusDecoder : JD.Decoder PendingAutomaticFailoverStatus
pendingAutomaticFailoverStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "enabled" ->
                        JD.succeed PendingAutomaticFailoverStatus_enabled

                    "disabled" ->
                        JD.succeed PendingAutomaticFailoverStatus_disabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A group of settings that are applied to the cache cluster in the future, or that are currently being applied.</p>
-}
type alias PendingModifiedValues =
    { numCacheNodes : Maybe Int
    , cacheNodeIdsToRemove : Maybe (List String)
    , engineVersion : Maybe String
    , cacheNodeType : Maybe String
    }



pendingModifiedValuesDecoder : JD.Decoder PendingModifiedValues
pendingModifiedValuesDecoder =
    JDP.decode PendingModifiedValues
        |> JDP.optional "numCacheNodes" (JD.nullable JD.int) Nothing
        |> JDP.optional "cacheNodeIdsToRemove" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeType" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from purchaseReservedCacheNodesOfferi
-}
type alias PurchaseReservedCacheNodesOfferingResult =
    { reservedCacheNode : Maybe ReservedCacheNode
    }



purchaseReservedCacheNodesOfferingResultDecoder : JD.Decoder PurchaseReservedCacheNodesOfferingResult
purchaseReservedCacheNodesOfferingResultDecoder =
    JDP.decode PurchaseReservedCacheNodesOfferingResult
        |> JDP.optional "reservedCacheNode" (JD.nullable reservedCacheNodeDecoder) Nothing




{-| Type of HTTP response from rebootCacheClust
-}
type alias RebootCacheClusterResult =
    { cacheCluster : Maybe CacheCluster
    }



rebootCacheClusterResultDecoder : JD.Decoder RebootCacheClusterResult
rebootCacheClusterResultDecoder =
    JDP.decode RebootCacheClusterResult
        |> JDP.optional "cacheCluster" (JD.nullable cacheClusterDecoder) Nothing




{-| <p>Contains the specific price and frequency of a recurring charges for a reserved cache node, or for a reserved cache node offering.</p>
-}
type alias RecurringCharge =
    { recurringChargeAmount : Maybe Float
    , recurringChargeFrequency : Maybe String
    }



recurringChargeDecoder : JD.Decoder RecurringCharge
recurringChargeDecoder =
    JDP.decode RecurringCharge
        |> JDP.optional "recurringChargeAmount" (JD.nullable JD.float) Nothing
        |> JDP.optional "recurringChargeFrequency" (JD.nullable JD.string) Nothing




{-| <p>Contains all of the attributes of a specific Redis replication group.</p>
-}
type alias ReplicationGroup =
    { replicationGroupId : Maybe String
    , description : Maybe String
    , status : Maybe String
    , pendingModifiedValues : Maybe ReplicationGroupPendingModifiedValues
    , memberClusters : Maybe (List String)
    , nodeGroups : Maybe (List NodeGroup)
    , snapshottingClusterId : Maybe String
    , automaticFailover : Maybe AutomaticFailoverStatus
    , configurationEndpoint : Maybe Endpoint
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    }



replicationGroupDecoder : JD.Decoder ReplicationGroup
replicationGroupDecoder =
    JDP.decode ReplicationGroup
        |> JDP.optional "replicationGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "pendingModifiedValues" (JD.nullable replicationGroupPendingModifiedValuesDecoder) Nothing
        |> JDP.optional "memberClusters" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nodeGroups" (JD.nullable (JD.list nodeGroupDecoder)) Nothing
        |> JDP.optional "snapshottingClusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "automaticFailover" (JD.nullable automaticFailoverStatusDecoder) Nothing
        |> JDP.optional "configurationEndpoint" (JD.nullable endpointDecoder) Nothing
        |> JDP.optional "snapshotRetentionLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "snapshotWindow" (JD.nullable JD.string) Nothing




{-| <p>The specified replication group already exists.</p>
-}
type alias ReplicationGroupAlreadyExistsFault =
    { 
    }



replicationGroupAlreadyExistsFaultDecoder : JD.Decoder ReplicationGroupAlreadyExistsFault
replicationGroupAlreadyExistsFaultDecoder =
    JDP.decode ReplicationGroupAlreadyExistsFault



{-| Type of HTTP response from replicationGrou
-}
type alias ReplicationGroupMessage =
    { marker : Maybe String
    , replicationGroups : Maybe (List ReplicationGroup)
    }



replicationGroupMessageDecoder : JD.Decoder ReplicationGroupMessage
replicationGroupMessageDecoder =
    JDP.decode ReplicationGroupMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationGroups" (JD.nullable (JD.list replicationGroupDecoder)) Nothing




{-| <p>The specified replication group does not exist.</p>
-}
type alias ReplicationGroupNotFoundFault =
    { 
    }



replicationGroupNotFoundFaultDecoder : JD.Decoder ReplicationGroupNotFoundFault
replicationGroupNotFoundFaultDecoder =
    JDP.decode ReplicationGroupNotFoundFault



{-| <p>The settings to be applied to the Redis replication group, either immediately or during the next maintenance window.</p>
-}
type alias ReplicationGroupPendingModifiedValues =
    { primaryClusterId : Maybe String
    , automaticFailoverStatus : Maybe PendingAutomaticFailoverStatus
    }



replicationGroupPendingModifiedValuesDecoder : JD.Decoder ReplicationGroupPendingModifiedValues
replicationGroupPendingModifiedValuesDecoder =
    JDP.decode ReplicationGroupPendingModifiedValues
        |> JDP.optional "primaryClusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "automaticFailoverStatus" (JD.nullable pendingAutomaticFailoverStatusDecoder) Nothing




{-| <p>Represents the output of a <code>PurchaseReservedCacheNodesOffering</code> operation.</p>
-}
type alias ReservedCacheNode =
    { reservedCacheNodeId : Maybe String
    , reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , startTime : Maybe Date
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , cacheNodeCount : Maybe Int
    , productDescription : Maybe String
    , offeringType : Maybe String
    , state : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    }



reservedCacheNodeDecoder : JD.Decoder ReservedCacheNode
reservedCacheNodeDecoder =
    JDP.decode ReservedCacheNode
        |> JDP.optional "reservedCacheNodeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedCacheNodesOfferingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "cacheNodeCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "productDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "offeringType" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing




{-| <p>You already have a reservation with the given identifier.</p>
-}
type alias ReservedCacheNodeAlreadyExistsFault =
    { 
    }



reservedCacheNodeAlreadyExistsFaultDecoder : JD.Decoder ReservedCacheNodeAlreadyExistsFault
reservedCacheNodeAlreadyExistsFaultDecoder =
    JDP.decode ReservedCacheNodeAlreadyExistsFault



{-| Type of HTTP response from reservedCacheNod
-}
type alias ReservedCacheNodeMessage =
    { marker : Maybe String
    , reservedCacheNodes : Maybe (List ReservedCacheNode)
    }



reservedCacheNodeMessageDecoder : JD.Decoder ReservedCacheNodeMessage
reservedCacheNodeMessageDecoder =
    JDP.decode ReservedCacheNodeMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedCacheNodes" (JD.nullable (JD.list reservedCacheNodeDecoder)) Nothing




{-| <p>The requested reserved cache node was not found.</p>
-}
type alias ReservedCacheNodeNotFoundFault =
    { 
    }



reservedCacheNodeNotFoundFaultDecoder : JD.Decoder ReservedCacheNodeNotFoundFault
reservedCacheNodeNotFoundFaultDecoder =
    JDP.decode ReservedCacheNodeNotFoundFault



{-| <p>The request cannot be processed because it would exceed the user's cache node quota.</p>
-}
type alias ReservedCacheNodeQuotaExceededFault =
    { 
    }



reservedCacheNodeQuotaExceededFaultDecoder : JD.Decoder ReservedCacheNodeQuotaExceededFault
reservedCacheNodeQuotaExceededFaultDecoder =
    JDP.decode ReservedCacheNodeQuotaExceededFault



{-| <p>Describes all of the attributes of a reserved cache node offering.</p>
-}
type alias ReservedCacheNodesOffering =
    { reservedCacheNodesOfferingId : Maybe String
    , cacheNodeType : Maybe String
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , productDescription : Maybe String
    , offeringType : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    }



reservedCacheNodesOfferingDecoder : JD.Decoder ReservedCacheNodesOffering
reservedCacheNodesOfferingDecoder =
    JDP.decode ReservedCacheNodesOffering
        |> JDP.optional "reservedCacheNodesOfferingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "productDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "offeringType" (JD.nullable JD.string) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing




{-| Type of HTTP response from reservedCacheNodesOfferin
-}
type alias ReservedCacheNodesOfferingMessage =
    { marker : Maybe String
    , reservedCacheNodesOfferings : Maybe (List ReservedCacheNodesOffering)
    }



reservedCacheNodesOfferingMessageDecoder : JD.Decoder ReservedCacheNodesOfferingMessage
reservedCacheNodesOfferingMessageDecoder =
    JDP.decode ReservedCacheNodesOfferingMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedCacheNodesOfferings" (JD.nullable (JD.list reservedCacheNodesOfferingDecoder)) Nothing




{-| <p>The requested cache node offering does not exist.</p>
-}
type alias ReservedCacheNodesOfferingNotFoundFault =
    { 
    }



reservedCacheNodesOfferingNotFoundFaultDecoder : JD.Decoder ReservedCacheNodesOfferingNotFoundFault
reservedCacheNodesOfferingNotFoundFaultDecoder =
    JDP.decode ReservedCacheNodesOfferingNotFoundFault



{-| Type of HTTP response from revokeCacheSecurityGroupIngre
-}
type alias RevokeCacheSecurityGroupIngressResult =
    { cacheSecurityGroup : Maybe CacheSecurityGroup
    }



revokeCacheSecurityGroupIngressResultDecoder : JD.Decoder RevokeCacheSecurityGroupIngressResult
revokeCacheSecurityGroupIngressResultDecoder =
    JDP.decode RevokeCacheSecurityGroupIngressResult
        |> JDP.optional "cacheSecurityGroup" (JD.nullable cacheSecurityGroupDecoder) Nothing




{-| <p>Represents a single cache security group and its status.</p>
-}
type alias SecurityGroupMembership =
    { securityGroupId : Maybe String
    , status : Maybe String
    }



securityGroupMembershipDecoder : JD.Decoder SecurityGroupMembership
securityGroupMembershipDecoder =
    JDP.decode SecurityGroupMembership
        |> JDP.optional "securityGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Represents a copy of an entire Redis cache cluster as of the time when the snapshot was taken.</p>
-}
type alias Snapshot =
    { snapshotName : Maybe String
    , replicationGroupId : Maybe String
    , replicationGroupDescription : Maybe String
    , cacheClusterId : Maybe String
    , snapshotStatus : Maybe String
    , snapshotSource : Maybe String
    , cacheNodeType : Maybe String
    , engine : Maybe String
    , engineVersion : Maybe String
    , numCacheNodes : Maybe Int
    , preferredAvailabilityZone : Maybe String
    , cacheClusterCreateTime : Maybe Date
    , preferredMaintenanceWindow : Maybe String
    , topicArn : Maybe String
    , port_ : Maybe Int
    , cacheParameterGroupName : Maybe String
    , cacheSubnetGroupName : Maybe String
    , vpcId : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , snapshotRetentionLimit : Maybe Int
    , snapshotWindow : Maybe String
    , numNodeGroups : Maybe Int
    , automaticFailover : Maybe AutomaticFailoverStatus
    , nodeSnapshots : Maybe (List NodeSnapshot)
    }



snapshotDecoder : JD.Decoder Snapshot
snapshotDecoder =
    JDP.decode Snapshot
        |> JDP.optional "snapshotName" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationGroupDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheClusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotSource" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheNodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "numCacheNodes" (JD.nullable JD.int) Nothing
        |> JDP.optional "preferredAvailabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheClusterCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "topicArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "cacheParameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheSubnetGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoMinorVersionUpgrade" (JD.nullable JD.bool) Nothing
        |> JDP.optional "snapshotRetentionLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "snapshotWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "numNodeGroups" (JD.nullable JD.int) Nothing
        |> JDP.optional "automaticFailover" (JD.nullable automaticFailoverStatusDecoder) Nothing
        |> JDP.optional "nodeSnapshots" (JD.nullable (JD.list nodeSnapshotDecoder)) Nothing




{-| <p>You already have a snapshot with the given name.</p>
-}
type alias SnapshotAlreadyExistsFault =
    { 
    }



snapshotAlreadyExistsFaultDecoder : JD.Decoder SnapshotAlreadyExistsFault
snapshotAlreadyExistsFaultDecoder =
    JDP.decode SnapshotAlreadyExistsFault



{-| <p>You attempted one of the following operations:</p> <ul> <li> <p>Creating a snapshot of a Redis cache cluster running on a <code>cache.t1.micro</code> cache node.</p> </li> <li> <p>Creating a snapshot of a cache cluster that is running Memcached rather than Redis.</p> </li> </ul> <p>Neither of these are supported by ElastiCache.</p>
-}
type alias SnapshotFeatureNotSupportedFault =
    { 
    }



snapshotFeatureNotSupportedFaultDecoder : JD.Decoder SnapshotFeatureNotSupportedFault
snapshotFeatureNotSupportedFaultDecoder =
    JDP.decode SnapshotFeatureNotSupportedFault



{-| <p>The requested snapshot name does not refer to an existing snapshot.</p>
-}
type alias SnapshotNotFoundFault =
    { 
    }



snapshotNotFoundFaultDecoder : JD.Decoder SnapshotNotFoundFault
snapshotNotFoundFaultDecoder =
    JDP.decode SnapshotNotFoundFault



{-| <p>The request cannot be processed because it would exceed the maximum number of snapshots.</p>
-}
type alias SnapshotQuotaExceededFault =
    { 
    }



snapshotQuotaExceededFaultDecoder : JD.Decoder SnapshotQuotaExceededFault
snapshotQuotaExceededFaultDecoder =
    JDP.decode SnapshotQuotaExceededFault



{-| One of

* `SourceType_cache-cluster`
* `SourceType_cache-parameter-group`
* `SourceType_cache-security-group`
* `SourceType_cache-subnet-group`
* `SourceType_replication-group`

-}
type SourceType
    = SourceType_cache_cluster
    | SourceType_cache_parameter_group
    | SourceType_cache_security_group
    | SourceType_cache_subnet_group
    | SourceType_replication_group



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "cache_cluster" ->
                        JD.succeed SourceType_cache_cluster

                    "cache_parameter_group" ->
                        JD.succeed SourceType_cache_parameter_group

                    "cache_security_group" ->
                        JD.succeed SourceType_cache_security_group

                    "cache_subnet_group" ->
                        JD.succeed SourceType_cache_subnet_group

                    "replication_group" ->
                        JD.succeed SourceType_replication_group


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the subnet associated with a cache cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with ElastiCache.</p>
-}
type alias Subnet =
    { subnetIdentifier : Maybe String
    , subnetAvailabilityZone : Maybe AvailabilityZone
    }



subnetDecoder : JD.Decoder Subnet
subnetDecoder =
    JDP.decode Subnet
        |> JDP.optional "subnetIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetAvailabilityZone" (JD.nullable availabilityZoneDecoder) Nothing




{-| <p>The requested subnet is being used by another cache subnet group.</p>
-}
type alias SubnetInUse =
    { 
    }



subnetInUseDecoder : JD.Decoder SubnetInUse
subnetInUseDecoder =
    JDP.decode SubnetInUse



{-| <p>A cost allocation Tag that can be added to an ElastiCache cluster or replication group. Tags are composed of a Key/Value pair. A tag with a null Value is permitted.</p>
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




{-| Type of HTTP response from tagLis
-}
type alias TagListMessage =
    { tagList : Maybe (List Tag)
    }



tagListMessageDecoder : JD.Decoder TagListMessage
tagListMessageDecoder =
    JDP.decode TagListMessage
        |> JDP.optional "tagList" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>The requested tag was not found on this resource.</p>
-}
type alias TagNotFoundFault =
    { 
    }



tagNotFoundFaultDecoder : JD.Decoder TagNotFoundFault
tagNotFoundFaultDecoder =
    JDP.decode TagNotFoundFault



{-| <p>The request cannot be processed because it would cause the resource to have more than the allowed number of tags. The maximum number of tags permitted on a resource is 10.</p>
-}
type alias TagQuotaPerResourceExceeded =
    { 
    }



tagQuotaPerResourceExceededDecoder : JD.Decoder TagQuotaPerResourceExceeded
tagQuotaPerResourceExceededDecoder =
    JDP.decode TagQuotaPerResourceExceeded



