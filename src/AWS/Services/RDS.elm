module AWS.Services.RDS
    exposing
        ( config
        , addRoleToDBCluster
        , addSourceIdentifierToSubscription
        , addTagsToResource
        , applyPendingMaintenanceAction
        , authorizeDBSecurityGroupIngress
        , AuthorizeDBSecurityGroupIngressOptions
        , copyDBClusterParameterGroup
        , CopyDBClusterParameterGroupOptions
        , copyDBClusterSnapshot
        , CopyDBClusterSnapshotOptions
        , copyDBParameterGroup
        , CopyDBParameterGroupOptions
        , copyDBSnapshot
        , CopyDBSnapshotOptions
        , copyOptionGroup
        , CopyOptionGroupOptions
        , createDBCluster
        , CreateDBClusterOptions
        , createDBClusterParameterGroup
        , CreateDBClusterParameterGroupOptions
        , createDBClusterSnapshot
        , CreateDBClusterSnapshotOptions
        , createDBInstance
        , CreateDBInstanceOptions
        , createDBInstanceReadReplica
        , CreateDBInstanceReadReplicaOptions
        , createDBParameterGroup
        , CreateDBParameterGroupOptions
        , createDBSecurityGroup
        , CreateDBSecurityGroupOptions
        , createDBSnapshot
        , CreateDBSnapshotOptions
        , createDBSubnetGroup
        , CreateDBSubnetGroupOptions
        , createEventSubscription
        , CreateEventSubscriptionOptions
        , createOptionGroup
        , CreateOptionGroupOptions
        , deleteDBCluster
        , DeleteDBClusterOptions
        , deleteDBClusterParameterGroup
        , deleteDBClusterSnapshot
        , deleteDBInstance
        , DeleteDBInstanceOptions
        , deleteDBParameterGroup
        , deleteDBSecurityGroup
        , deleteDBSnapshot
        , deleteDBSubnetGroup
        , deleteEventSubscription
        , deleteOptionGroup
        , describeAccountAttributes
        , describeCertificates
        , DescribeCertificatesOptions
        , describeDBClusterParameterGroups
        , DescribeDBClusterParameterGroupsOptions
        , describeDBClusterParameters
        , DescribeDBClusterParametersOptions
        , describeDBClusterSnapshotAttributes
        , describeDBClusterSnapshots
        , DescribeDBClusterSnapshotsOptions
        , describeDBClusters
        , DescribeDBClustersOptions
        , describeDBEngineVersions
        , DescribeDBEngineVersionsOptions
        , describeDBInstances
        , DescribeDBInstancesOptions
        , describeDBLogFiles
        , DescribeDBLogFilesOptions
        , describeDBParameterGroups
        , DescribeDBParameterGroupsOptions
        , describeDBParameters
        , DescribeDBParametersOptions
        , describeDBSecurityGroups
        , DescribeDBSecurityGroupsOptions
        , describeDBSnapshotAttributes
        , describeDBSnapshots
        , DescribeDBSnapshotsOptions
        , describeDBSubnetGroups
        , DescribeDBSubnetGroupsOptions
        , describeEngineDefaultClusterParameters
        , DescribeEngineDefaultClusterParametersOptions
        , describeEngineDefaultParameters
        , DescribeEngineDefaultParametersOptions
        , describeEventCategories
        , DescribeEventCategoriesOptions
        , describeEventSubscriptions
        , DescribeEventSubscriptionsOptions
        , describeEvents
        , DescribeEventsOptions
        , describeOptionGroupOptions
        , DescribeOptionGroupOptionsOptions
        , describeOptionGroups
        , DescribeOptionGroupsOptions
        , describeOrderableDBInstanceOptions
        , DescribeOrderableDBInstanceOptionsOptions
        , describePendingMaintenanceActions
        , DescribePendingMaintenanceActionsOptions
        , describeReservedDBInstances
        , DescribeReservedDBInstancesOptions
        , describeReservedDBInstancesOfferings
        , DescribeReservedDBInstancesOfferingsOptions
        , describeSourceRegions
        , DescribeSourceRegionsOptions
        , downloadDBLogFilePortion
        , DownloadDBLogFilePortionOptions
        , failoverDBCluster
        , FailoverDBClusterOptions
        , listTagsForResource
        , ListTagsForResourceOptions
        , modifyDBCluster
        , ModifyDBClusterOptions
        , modifyDBClusterParameterGroup
        , modifyDBClusterSnapshotAttribute
        , ModifyDBClusterSnapshotAttributeOptions
        , modifyDBInstance
        , ModifyDBInstanceOptions
        , modifyDBParameterGroup
        , modifyDBSnapshot
        , ModifyDBSnapshotOptions
        , modifyDBSnapshotAttribute
        , ModifyDBSnapshotAttributeOptions
        , modifyDBSubnetGroup
        , ModifyDBSubnetGroupOptions
        , modifyEventSubscription
        , ModifyEventSubscriptionOptions
        , modifyOptionGroup
        , ModifyOptionGroupOptions
        , promoteReadReplica
        , PromoteReadReplicaOptions
        , promoteReadReplicaDBCluster
        , purchaseReservedDBInstancesOffering
        , PurchaseReservedDBInstancesOfferingOptions
        , rebootDBInstance
        , RebootDBInstanceOptions
        , removeRoleFromDBCluster
        , removeSourceIdentifierFromSubscription
        , removeTagsFromResource
        , resetDBClusterParameterGroup
        , ResetDBClusterParameterGroupOptions
        , resetDBParameterGroup
        , ResetDBParameterGroupOptions
        , restoreDBClusterFromS3
        , RestoreDBClusterFromS3Options
        , restoreDBClusterFromSnapshot
        , RestoreDBClusterFromSnapshotOptions
        , restoreDBClusterToPointInTime
        , RestoreDBClusterToPointInTimeOptions
        , restoreDBInstanceFromDBSnapshot
        , RestoreDBInstanceFromDBSnapshotOptions
        , restoreDBInstanceToPointInTime
        , RestoreDBInstanceToPointInTimeOptions
        , revokeDBSecurityGroupIngress
        , RevokeDBSecurityGroupIngressOptions
        , AccountAttributesMessage
        , AccountQuota
        , AddSourceIdentifierToSubscriptionResult
        , ApplyMethod(..)
        , ApplyPendingMaintenanceActionResult
        , AuthorizationAlreadyExistsFault
        , AuthorizationNotFoundFault
        , AuthorizationQuotaExceededFault
        , AuthorizeDBSecurityGroupIngressResult
        , AvailabilityZone
        , Certificate
        , CertificateMessage
        , CertificateNotFoundFault
        , CharacterSet
        , CopyDBClusterParameterGroupResult
        , CopyDBClusterSnapshotResult
        , CopyDBParameterGroupResult
        , CopyDBSnapshotResult
        , CopyOptionGroupResult
        , CreateDBClusterParameterGroupResult
        , CreateDBClusterResult
        , CreateDBClusterSnapshotResult
        , CreateDBInstanceReadReplicaResult
        , CreateDBInstanceResult
        , CreateDBParameterGroupResult
        , CreateDBSecurityGroupResult
        , CreateDBSnapshotResult
        , CreateDBSubnetGroupResult
        , CreateEventSubscriptionResult
        , CreateOptionGroupResult
        , DBCluster
        , DBClusterAlreadyExistsFault
        , DBClusterMember
        , DBClusterMessage
        , DBClusterNotFoundFault
        , DBClusterOptionGroupStatus
        , DBClusterParameterGroup
        , DBClusterParameterGroupDetails
        , DBClusterParameterGroupNameMessage
        , DBClusterParameterGroupNotFoundFault
        , DBClusterParameterGroupsMessage
        , DBClusterQuotaExceededFault
        , DBClusterRole
        , DBClusterRoleAlreadyExistsFault
        , DBClusterRoleNotFoundFault
        , DBClusterRoleQuotaExceededFault
        , DBClusterSnapshot
        , DBClusterSnapshotAlreadyExistsFault
        , DBClusterSnapshotAttribute
        , DBClusterSnapshotAttributesResult
        , DBClusterSnapshotMessage
        , DBClusterSnapshotNotFoundFault
        , DBEngineVersion
        , DBEngineVersionMessage
        , DBInstance
        , DBInstanceAlreadyExistsFault
        , DBInstanceMessage
        , DBInstanceNotFoundFault
        , DBInstanceStatusInfo
        , DBLogFileNotFoundFault
        , DBParameterGroup
        , DBParameterGroupAlreadyExistsFault
        , DBParameterGroupDetails
        , DBParameterGroupNameMessage
        , DBParameterGroupNotFoundFault
        , DBParameterGroupQuotaExceededFault
        , DBParameterGroupStatus
        , DBParameterGroupsMessage
        , DBSecurityGroup
        , DBSecurityGroupAlreadyExistsFault
        , DBSecurityGroupMembership
        , DBSecurityGroupMessage
        , DBSecurityGroupNotFoundFault
        , DBSecurityGroupNotSupportedFault
        , DBSecurityGroupQuotaExceededFault
        , DBSnapshot
        , DBSnapshotAlreadyExistsFault
        , DBSnapshotAttribute
        , DBSnapshotAttributesResult
        , DBSnapshotMessage
        , DBSnapshotNotFoundFault
        , DBSubnetGroup
        , DBSubnetGroupAlreadyExistsFault
        , DBSubnetGroupDoesNotCoverEnoughAZs
        , DBSubnetGroupMessage
        , DBSubnetGroupNotAllowedFault
        , DBSubnetGroupNotFoundFault
        , DBSubnetGroupQuotaExceededFault
        , DBSubnetQuotaExceededFault
        , DBUpgradeDependencyFailureFault
        , DeleteDBClusterResult
        , DeleteDBClusterSnapshotResult
        , DeleteDBInstanceResult
        , DeleteDBSnapshotResult
        , DeleteEventSubscriptionResult
        , DescribeDBClusterSnapshotAttributesResult
        , DescribeDBLogFilesDetails
        , DescribeDBLogFilesResponse
        , DescribeDBSnapshotAttributesResult
        , DescribeEngineDefaultClusterParametersResult
        , DescribeEngineDefaultParametersResult
        , DomainMembership
        , DomainNotFoundFault
        , DownloadDBLogFilePortionDetails
        , EC2SecurityGroup
        , Endpoint
        , EngineDefaults
        , Event
        , EventCategoriesMap
        , EventCategoriesMessage
        , EventSubscription
        , EventSubscriptionQuotaExceededFault
        , EventSubscriptionsMessage
        , EventsMessage
        , FailoverDBClusterResult
        , Filter
        , IPRange
        , InstanceQuotaExceededFault
        , InsufficientDBClusterCapacityFault
        , InsufficientDBInstanceCapacityFault
        , InsufficientStorageClusterCapacityFault
        , InvalidDBClusterSnapshotStateFault
        , InvalidDBClusterStateFault
        , InvalidDBInstanceStateFault
        , InvalidDBParameterGroupStateFault
        , InvalidDBSecurityGroupStateFault
        , InvalidDBSnapshotStateFault
        , InvalidDBSubnetGroupFault
        , InvalidDBSubnetGroupStateFault
        , InvalidDBSubnetStateFault
        , InvalidEventSubscriptionStateFault
        , InvalidOptionGroupStateFault
        , InvalidRestoreFault
        , InvalidS3BucketFault
        , InvalidSubnet
        , InvalidVPCNetworkStateFault
        , KMSKeyNotAccessibleFault
        , ModifyDBClusterResult
        , ModifyDBClusterSnapshotAttributeResult
        , ModifyDBInstanceResult
        , ModifyDBSnapshotAttributeResult
        , ModifyDBSnapshotResult
        , ModifyDBSubnetGroupResult
        , ModifyEventSubscriptionResult
        , ModifyOptionGroupResult
        , Option
        , OptionConfiguration
        , OptionGroup
        , OptionGroupAlreadyExistsFault
        , OptionGroupMembership
        , OptionGroupNotFoundFault
        , OptionGroupOption
        , OptionGroupOptionSetting
        , OptionGroupOptionsMessage
        , OptionGroupQuotaExceededFault
        , OptionGroups
        , OptionSetting
        , OptionVersion
        , OrderableDBInstanceOption
        , OrderableDBInstanceOptionsMessage
        , Parameter
        , PendingMaintenanceAction
        , PendingMaintenanceActionsMessage
        , PendingModifiedValues
        , PointInTimeRestoreNotEnabledFault
        , PromoteReadReplicaDBClusterResult
        , PromoteReadReplicaResult
        , ProvisionedIopsNotAvailableInAZFault
        , PurchaseReservedDBInstancesOfferingResult
        , RebootDBInstanceResult
        , RecurringCharge
        , RemoveSourceIdentifierFromSubscriptionResult
        , ReservedDBInstance
        , ReservedDBInstanceAlreadyExistsFault
        , ReservedDBInstanceMessage
        , ReservedDBInstanceNotFoundFault
        , ReservedDBInstanceQuotaExceededFault
        , ReservedDBInstancesOffering
        , ReservedDBInstancesOfferingMessage
        , ReservedDBInstancesOfferingNotFoundFault
        , ResourceNotFoundFault
        , ResourcePendingMaintenanceActions
        , RestoreDBClusterFromS3Result
        , RestoreDBClusterFromSnapshotResult
        , RestoreDBClusterToPointInTimeResult
        , RestoreDBInstanceFromDBSnapshotResult
        , RestoreDBInstanceToPointInTimeResult
        , RevokeDBSecurityGroupIngressResult
        , SNSInvalidTopicFault
        , SNSNoAuthorizationFault
        , SNSTopicArnNotFoundFault
        , SharedSnapshotQuotaExceededFault
        , SnapshotQuotaExceededFault
        , SourceNotFoundFault
        , SourceRegion
        , SourceRegionMessage
        , SourceType(..)
        , StorageQuotaExceededFault
        , StorageTypeNotSupportedFault
        , Subnet
        , SubnetAlreadyInUse
        , SubscriptionAlreadyExistFault
        , SubscriptionCategoryNotFoundFault
        , SubscriptionNotFoundFault
        , Tag
        , TagListMessage
        , Timezone
        , UpgradeTarget
        , VpcSecurityGroupMembership
        )

{-| <fullname>Amazon Relational Database Service</fullname> <p> </p> <p>Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and scale a relational database in the cloud. It provides cost-efficient, resizeable capacity for an industry-standard relational database and manages common database administration tasks, freeing up developers to focus on what makes their applications and businesses unique.</p> <p>Amazon RDS gives you access to the capabilities of a MySQL, MariaDB, PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database server. These capabilities mean that the code, applications, and tools you already use today with your existing databases work with Amazon RDS without modification. Amazon RDS automatically backs up your database and maintains the database software that powers your DB instance. Amazon RDS is flexible: you can scale your database instance's compute resources and storage capacity to meet your application's demand. As with all Amazon Web Services, there are no up-front investments, and you pay only for the resources you use.</p> <p>This interface reference for Amazon RDS contains documentation for a programming or command line interface you can use to manage Amazon RDS. Note that Amazon RDS is asynchronous, which means that some interfaces might require techniques such as polling or callback functions to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a command is applied immediately, on the next instance reboot, or during the maintenance window. The reference structure is as follows, and we list following some related topics from the user guide.</p> <p> <b>Amazon RDS API Reference</b> </p> <ul> <li> <p>For the alphabetical list of API actions, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html">API Actions</a>.</p> </li> <li> <p>For the alphabetical list of data types, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html">Data Types</a>.</p> </li> <li> <p>For a list of common query parameters, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html">Common Parameters</a>.</p> </li> <li> <p>For descriptions of the error codes, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html">Common Errors</a>.</p> </li> </ul> <p> <b>Amazon RDS User Guide</b> </p> <ul> <li> <p>For a summary of the Amazon RDS interfaces, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces">Available RDS Interfaces</a>.</p> </li> <li> <p>For more information about how to use the Query API, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html">Using the Query API</a>.</p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addRoleToDBCluster](#addRoleToDBCluster)
* [addSourceIdentifierToSubscription](#addSourceIdentifierToSubscription)
* [addTagsToResource](#addTagsToResource)
* [applyPendingMaintenanceAction](#applyPendingMaintenanceAction)
* [authorizeDBSecurityGroupIngress](#authorizeDBSecurityGroupIngress)
* [AuthorizeDBSecurityGroupIngressOptions](#AuthorizeDBSecurityGroupIngressOptions)
* [copyDBClusterParameterGroup](#copyDBClusterParameterGroup)
* [CopyDBClusterParameterGroupOptions](#CopyDBClusterParameterGroupOptions)
* [copyDBClusterSnapshot](#copyDBClusterSnapshot)
* [CopyDBClusterSnapshotOptions](#CopyDBClusterSnapshotOptions)
* [copyDBParameterGroup](#copyDBParameterGroup)
* [CopyDBParameterGroupOptions](#CopyDBParameterGroupOptions)
* [copyDBSnapshot](#copyDBSnapshot)
* [CopyDBSnapshotOptions](#CopyDBSnapshotOptions)
* [copyOptionGroup](#copyOptionGroup)
* [CopyOptionGroupOptions](#CopyOptionGroupOptions)
* [createDBCluster](#createDBCluster)
* [CreateDBClusterOptions](#CreateDBClusterOptions)
* [createDBClusterParameterGroup](#createDBClusterParameterGroup)
* [CreateDBClusterParameterGroupOptions](#CreateDBClusterParameterGroupOptions)
* [createDBClusterSnapshot](#createDBClusterSnapshot)
* [CreateDBClusterSnapshotOptions](#CreateDBClusterSnapshotOptions)
* [createDBInstance](#createDBInstance)
* [CreateDBInstanceOptions](#CreateDBInstanceOptions)
* [createDBInstanceReadReplica](#createDBInstanceReadReplica)
* [CreateDBInstanceReadReplicaOptions](#CreateDBInstanceReadReplicaOptions)
* [createDBParameterGroup](#createDBParameterGroup)
* [CreateDBParameterGroupOptions](#CreateDBParameterGroupOptions)
* [createDBSecurityGroup](#createDBSecurityGroup)
* [CreateDBSecurityGroupOptions](#CreateDBSecurityGroupOptions)
* [createDBSnapshot](#createDBSnapshot)
* [CreateDBSnapshotOptions](#CreateDBSnapshotOptions)
* [createDBSubnetGroup](#createDBSubnetGroup)
* [CreateDBSubnetGroupOptions](#CreateDBSubnetGroupOptions)
* [createEventSubscription](#createEventSubscription)
* [CreateEventSubscriptionOptions](#CreateEventSubscriptionOptions)
* [createOptionGroup](#createOptionGroup)
* [CreateOptionGroupOptions](#CreateOptionGroupOptions)
* [deleteDBCluster](#deleteDBCluster)
* [DeleteDBClusterOptions](#DeleteDBClusterOptions)
* [deleteDBClusterParameterGroup](#deleteDBClusterParameterGroup)
* [deleteDBClusterSnapshot](#deleteDBClusterSnapshot)
* [deleteDBInstance](#deleteDBInstance)
* [DeleteDBInstanceOptions](#DeleteDBInstanceOptions)
* [deleteDBParameterGroup](#deleteDBParameterGroup)
* [deleteDBSecurityGroup](#deleteDBSecurityGroup)
* [deleteDBSnapshot](#deleteDBSnapshot)
* [deleteDBSubnetGroup](#deleteDBSubnetGroup)
* [deleteEventSubscription](#deleteEventSubscription)
* [deleteOptionGroup](#deleteOptionGroup)
* [describeAccountAttributes](#describeAccountAttributes)
* [describeCertificates](#describeCertificates)
* [DescribeCertificatesOptions](#DescribeCertificatesOptions)
* [describeDBClusterParameterGroups](#describeDBClusterParameterGroups)
* [DescribeDBClusterParameterGroupsOptions](#DescribeDBClusterParameterGroupsOptions)
* [describeDBClusterParameters](#describeDBClusterParameters)
* [DescribeDBClusterParametersOptions](#DescribeDBClusterParametersOptions)
* [describeDBClusterSnapshotAttributes](#describeDBClusterSnapshotAttributes)
* [describeDBClusterSnapshots](#describeDBClusterSnapshots)
* [DescribeDBClusterSnapshotsOptions](#DescribeDBClusterSnapshotsOptions)
* [describeDBClusters](#describeDBClusters)
* [DescribeDBClustersOptions](#DescribeDBClustersOptions)
* [describeDBEngineVersions](#describeDBEngineVersions)
* [DescribeDBEngineVersionsOptions](#DescribeDBEngineVersionsOptions)
* [describeDBInstances](#describeDBInstances)
* [DescribeDBInstancesOptions](#DescribeDBInstancesOptions)
* [describeDBLogFiles](#describeDBLogFiles)
* [DescribeDBLogFilesOptions](#DescribeDBLogFilesOptions)
* [describeDBParameterGroups](#describeDBParameterGroups)
* [DescribeDBParameterGroupsOptions](#DescribeDBParameterGroupsOptions)
* [describeDBParameters](#describeDBParameters)
* [DescribeDBParametersOptions](#DescribeDBParametersOptions)
* [describeDBSecurityGroups](#describeDBSecurityGroups)
* [DescribeDBSecurityGroupsOptions](#DescribeDBSecurityGroupsOptions)
* [describeDBSnapshotAttributes](#describeDBSnapshotAttributes)
* [describeDBSnapshots](#describeDBSnapshots)
* [DescribeDBSnapshotsOptions](#DescribeDBSnapshotsOptions)
* [describeDBSubnetGroups](#describeDBSubnetGroups)
* [DescribeDBSubnetGroupsOptions](#DescribeDBSubnetGroupsOptions)
* [describeEngineDefaultClusterParameters](#describeEngineDefaultClusterParameters)
* [DescribeEngineDefaultClusterParametersOptions](#DescribeEngineDefaultClusterParametersOptions)
* [describeEngineDefaultParameters](#describeEngineDefaultParameters)
* [DescribeEngineDefaultParametersOptions](#DescribeEngineDefaultParametersOptions)
* [describeEventCategories](#describeEventCategories)
* [DescribeEventCategoriesOptions](#DescribeEventCategoriesOptions)
* [describeEventSubscriptions](#describeEventSubscriptions)
* [DescribeEventSubscriptionsOptions](#DescribeEventSubscriptionsOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)
* [describeOptionGroupOptions](#describeOptionGroupOptions)
* [DescribeOptionGroupOptionsOptions](#DescribeOptionGroupOptionsOptions)
* [describeOptionGroups](#describeOptionGroups)
* [DescribeOptionGroupsOptions](#DescribeOptionGroupsOptions)
* [describeOrderableDBInstanceOptions](#describeOrderableDBInstanceOptions)
* [DescribeOrderableDBInstanceOptionsOptions](#DescribeOrderableDBInstanceOptionsOptions)
* [describePendingMaintenanceActions](#describePendingMaintenanceActions)
* [DescribePendingMaintenanceActionsOptions](#DescribePendingMaintenanceActionsOptions)
* [describeReservedDBInstances](#describeReservedDBInstances)
* [DescribeReservedDBInstancesOptions](#DescribeReservedDBInstancesOptions)
* [describeReservedDBInstancesOfferings](#describeReservedDBInstancesOfferings)
* [DescribeReservedDBInstancesOfferingsOptions](#DescribeReservedDBInstancesOfferingsOptions)
* [describeSourceRegions](#describeSourceRegions)
* [DescribeSourceRegionsOptions](#DescribeSourceRegionsOptions)
* [downloadDBLogFilePortion](#downloadDBLogFilePortion)
* [DownloadDBLogFilePortionOptions](#DownloadDBLogFilePortionOptions)
* [failoverDBCluster](#failoverDBCluster)
* [FailoverDBClusterOptions](#FailoverDBClusterOptions)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [modifyDBCluster](#modifyDBCluster)
* [ModifyDBClusterOptions](#ModifyDBClusterOptions)
* [modifyDBClusterParameterGroup](#modifyDBClusterParameterGroup)
* [modifyDBClusterSnapshotAttribute](#modifyDBClusterSnapshotAttribute)
* [ModifyDBClusterSnapshotAttributeOptions](#ModifyDBClusterSnapshotAttributeOptions)
* [modifyDBInstance](#modifyDBInstance)
* [ModifyDBInstanceOptions](#ModifyDBInstanceOptions)
* [modifyDBParameterGroup](#modifyDBParameterGroup)
* [modifyDBSnapshot](#modifyDBSnapshot)
* [ModifyDBSnapshotOptions](#ModifyDBSnapshotOptions)
* [modifyDBSnapshotAttribute](#modifyDBSnapshotAttribute)
* [ModifyDBSnapshotAttributeOptions](#ModifyDBSnapshotAttributeOptions)
* [modifyDBSubnetGroup](#modifyDBSubnetGroup)
* [ModifyDBSubnetGroupOptions](#ModifyDBSubnetGroupOptions)
* [modifyEventSubscription](#modifyEventSubscription)
* [ModifyEventSubscriptionOptions](#ModifyEventSubscriptionOptions)
* [modifyOptionGroup](#modifyOptionGroup)
* [ModifyOptionGroupOptions](#ModifyOptionGroupOptions)
* [promoteReadReplica](#promoteReadReplica)
* [PromoteReadReplicaOptions](#PromoteReadReplicaOptions)
* [promoteReadReplicaDBCluster](#promoteReadReplicaDBCluster)
* [purchaseReservedDBInstancesOffering](#purchaseReservedDBInstancesOffering)
* [PurchaseReservedDBInstancesOfferingOptions](#PurchaseReservedDBInstancesOfferingOptions)
* [rebootDBInstance](#rebootDBInstance)
* [RebootDBInstanceOptions](#RebootDBInstanceOptions)
* [removeRoleFromDBCluster](#removeRoleFromDBCluster)
* [removeSourceIdentifierFromSubscription](#removeSourceIdentifierFromSubscription)
* [removeTagsFromResource](#removeTagsFromResource)
* [resetDBClusterParameterGroup](#resetDBClusterParameterGroup)
* [ResetDBClusterParameterGroupOptions](#ResetDBClusterParameterGroupOptions)
* [resetDBParameterGroup](#resetDBParameterGroup)
* [ResetDBParameterGroupOptions](#ResetDBParameterGroupOptions)
* [restoreDBClusterFromS3](#restoreDBClusterFromS3)
* [RestoreDBClusterFromS3Options](#RestoreDBClusterFromS3Options)
* [restoreDBClusterFromSnapshot](#restoreDBClusterFromSnapshot)
* [RestoreDBClusterFromSnapshotOptions](#RestoreDBClusterFromSnapshotOptions)
* [restoreDBClusterToPointInTime](#restoreDBClusterToPointInTime)
* [RestoreDBClusterToPointInTimeOptions](#RestoreDBClusterToPointInTimeOptions)
* [restoreDBInstanceFromDBSnapshot](#restoreDBInstanceFromDBSnapshot)
* [RestoreDBInstanceFromDBSnapshotOptions](#RestoreDBInstanceFromDBSnapshotOptions)
* [restoreDBInstanceToPointInTime](#restoreDBInstanceToPointInTime)
* [RestoreDBInstanceToPointInTimeOptions](#RestoreDBInstanceToPointInTimeOptions)
* [revokeDBSecurityGroupIngress](#revokeDBSecurityGroupIngress)
* [RevokeDBSecurityGroupIngressOptions](#RevokeDBSecurityGroupIngressOptions)


@docs addRoleToDBCluster,addSourceIdentifierToSubscription,addTagsToResource,applyPendingMaintenanceAction,authorizeDBSecurityGroupIngress,AuthorizeDBSecurityGroupIngressOptions,copyDBClusterParameterGroup,CopyDBClusterParameterGroupOptions,copyDBClusterSnapshot,CopyDBClusterSnapshotOptions,copyDBParameterGroup,CopyDBParameterGroupOptions,copyDBSnapshot,CopyDBSnapshotOptions,copyOptionGroup,CopyOptionGroupOptions,createDBCluster,CreateDBClusterOptions,createDBClusterParameterGroup,CreateDBClusterParameterGroupOptions,createDBClusterSnapshot,CreateDBClusterSnapshotOptions,createDBInstance,CreateDBInstanceOptions,createDBInstanceReadReplica,CreateDBInstanceReadReplicaOptions,createDBParameterGroup,CreateDBParameterGroupOptions,createDBSecurityGroup,CreateDBSecurityGroupOptions,createDBSnapshot,CreateDBSnapshotOptions,createDBSubnetGroup,CreateDBSubnetGroupOptions,createEventSubscription,CreateEventSubscriptionOptions,createOptionGroup,CreateOptionGroupOptions,deleteDBCluster,DeleteDBClusterOptions,deleteDBClusterParameterGroup,deleteDBClusterSnapshot,deleteDBInstance,DeleteDBInstanceOptions,deleteDBParameterGroup,deleteDBSecurityGroup,deleteDBSnapshot,deleteDBSubnetGroup,deleteEventSubscription,deleteOptionGroup,describeAccountAttributes,describeCertificates,DescribeCertificatesOptions,describeDBClusterParameterGroups,DescribeDBClusterParameterGroupsOptions,describeDBClusterParameters,DescribeDBClusterParametersOptions,describeDBClusterSnapshotAttributes,describeDBClusterSnapshots,DescribeDBClusterSnapshotsOptions,describeDBClusters,DescribeDBClustersOptions,describeDBEngineVersions,DescribeDBEngineVersionsOptions,describeDBInstances,DescribeDBInstancesOptions,describeDBLogFiles,DescribeDBLogFilesOptions,describeDBParameterGroups,DescribeDBParameterGroupsOptions,describeDBParameters,DescribeDBParametersOptions,describeDBSecurityGroups,DescribeDBSecurityGroupsOptions,describeDBSnapshotAttributes,describeDBSnapshots,DescribeDBSnapshotsOptions,describeDBSubnetGroups,DescribeDBSubnetGroupsOptions,describeEngineDefaultClusterParameters,DescribeEngineDefaultClusterParametersOptions,describeEngineDefaultParameters,DescribeEngineDefaultParametersOptions,describeEventCategories,DescribeEventCategoriesOptions,describeEventSubscriptions,DescribeEventSubscriptionsOptions,describeEvents,DescribeEventsOptions,describeOptionGroupOptions,DescribeOptionGroupOptionsOptions,describeOptionGroups,DescribeOptionGroupsOptions,describeOrderableDBInstanceOptions,DescribeOrderableDBInstanceOptionsOptions,describePendingMaintenanceActions,DescribePendingMaintenanceActionsOptions,describeReservedDBInstances,DescribeReservedDBInstancesOptions,describeReservedDBInstancesOfferings,DescribeReservedDBInstancesOfferingsOptions,describeSourceRegions,DescribeSourceRegionsOptions,downloadDBLogFilePortion,DownloadDBLogFilePortionOptions,failoverDBCluster,FailoverDBClusterOptions,listTagsForResource,ListTagsForResourceOptions,modifyDBCluster,ModifyDBClusterOptions,modifyDBClusterParameterGroup,modifyDBClusterSnapshotAttribute,ModifyDBClusterSnapshotAttributeOptions,modifyDBInstance,ModifyDBInstanceOptions,modifyDBParameterGroup,modifyDBSnapshot,ModifyDBSnapshotOptions,modifyDBSnapshotAttribute,ModifyDBSnapshotAttributeOptions,modifyDBSubnetGroup,ModifyDBSubnetGroupOptions,modifyEventSubscription,ModifyEventSubscriptionOptions,modifyOptionGroup,ModifyOptionGroupOptions,promoteReadReplica,PromoteReadReplicaOptions,promoteReadReplicaDBCluster,purchaseReservedDBInstancesOffering,PurchaseReservedDBInstancesOfferingOptions,rebootDBInstance,RebootDBInstanceOptions,removeRoleFromDBCluster,removeSourceIdentifierFromSubscription,removeTagsFromResource,resetDBClusterParameterGroup,ResetDBClusterParameterGroupOptions,resetDBParameterGroup,ResetDBParameterGroupOptions,restoreDBClusterFromS3,RestoreDBClusterFromS3Options,restoreDBClusterFromSnapshot,RestoreDBClusterFromSnapshotOptions,restoreDBClusterToPointInTime,RestoreDBClusterToPointInTimeOptions,restoreDBInstanceFromDBSnapshot,RestoreDBInstanceFromDBSnapshotOptions,restoreDBInstanceToPointInTime,RestoreDBInstanceToPointInTimeOptions,revokeDBSecurityGroupIngress,RevokeDBSecurityGroupIngressOptions

## Responses

* [AccountAttributesMessage](#AccountAttributesMessage)
* [AddSourceIdentifierToSubscriptionResult](#AddSourceIdentifierToSubscriptionResult)
* [ApplyPendingMaintenanceActionResult](#ApplyPendingMaintenanceActionResult)
* [AuthorizeDBSecurityGroupIngressResult](#AuthorizeDBSecurityGroupIngressResult)
* [CertificateMessage](#CertificateMessage)
* [CopyDBClusterParameterGroupResult](#CopyDBClusterParameterGroupResult)
* [CopyDBClusterSnapshotResult](#CopyDBClusterSnapshotResult)
* [CopyDBParameterGroupResult](#CopyDBParameterGroupResult)
* [CopyDBSnapshotResult](#CopyDBSnapshotResult)
* [CopyOptionGroupResult](#CopyOptionGroupResult)
* [CreateDBClusterParameterGroupResult](#CreateDBClusterParameterGroupResult)
* [CreateDBClusterResult](#CreateDBClusterResult)
* [CreateDBClusterSnapshotResult](#CreateDBClusterSnapshotResult)
* [CreateDBInstanceReadReplicaResult](#CreateDBInstanceReadReplicaResult)
* [CreateDBInstanceResult](#CreateDBInstanceResult)
* [CreateDBParameterGroupResult](#CreateDBParameterGroupResult)
* [CreateDBSecurityGroupResult](#CreateDBSecurityGroupResult)
* [CreateDBSnapshotResult](#CreateDBSnapshotResult)
* [CreateDBSubnetGroupResult](#CreateDBSubnetGroupResult)
* [CreateEventSubscriptionResult](#CreateEventSubscriptionResult)
* [CreateOptionGroupResult](#CreateOptionGroupResult)
* [DBClusterMessage](#DBClusterMessage)
* [DBClusterParameterGroupDetails](#DBClusterParameterGroupDetails)
* [DBClusterParameterGroupNameMessage](#DBClusterParameterGroupNameMessage)
* [DBClusterParameterGroupsMessage](#DBClusterParameterGroupsMessage)
* [DBClusterSnapshotMessage](#DBClusterSnapshotMessage)
* [DBEngineVersionMessage](#DBEngineVersionMessage)
* [DBInstanceMessage](#DBInstanceMessage)
* [DBParameterGroupDetails](#DBParameterGroupDetails)
* [DBParameterGroupNameMessage](#DBParameterGroupNameMessage)
* [DBParameterGroupsMessage](#DBParameterGroupsMessage)
* [DBSecurityGroupMessage](#DBSecurityGroupMessage)
* [DBSnapshotMessage](#DBSnapshotMessage)
* [DBSubnetGroupMessage](#DBSubnetGroupMessage)
* [DeleteDBClusterResult](#DeleteDBClusterResult)
* [DeleteDBClusterSnapshotResult](#DeleteDBClusterSnapshotResult)
* [DeleteDBInstanceResult](#DeleteDBInstanceResult)
* [DeleteDBSnapshotResult](#DeleteDBSnapshotResult)
* [DeleteEventSubscriptionResult](#DeleteEventSubscriptionResult)
* [DescribeDBClusterSnapshotAttributesResult](#DescribeDBClusterSnapshotAttributesResult)
* [DescribeDBLogFilesResponse](#DescribeDBLogFilesResponse)
* [DescribeDBSnapshotAttributesResult](#DescribeDBSnapshotAttributesResult)
* [DescribeEngineDefaultClusterParametersResult](#DescribeEngineDefaultClusterParametersResult)
* [DescribeEngineDefaultParametersResult](#DescribeEngineDefaultParametersResult)
* [DownloadDBLogFilePortionDetails](#DownloadDBLogFilePortionDetails)
* [EventCategoriesMessage](#EventCategoriesMessage)
* [EventSubscriptionsMessage](#EventSubscriptionsMessage)
* [EventsMessage](#EventsMessage)
* [FailoverDBClusterResult](#FailoverDBClusterResult)
* [ModifyDBClusterResult](#ModifyDBClusterResult)
* [ModifyDBClusterSnapshotAttributeResult](#ModifyDBClusterSnapshotAttributeResult)
* [ModifyDBInstanceResult](#ModifyDBInstanceResult)
* [ModifyDBSnapshotAttributeResult](#ModifyDBSnapshotAttributeResult)
* [ModifyDBSnapshotResult](#ModifyDBSnapshotResult)
* [ModifyDBSubnetGroupResult](#ModifyDBSubnetGroupResult)
* [ModifyEventSubscriptionResult](#ModifyEventSubscriptionResult)
* [ModifyOptionGroupResult](#ModifyOptionGroupResult)
* [OptionGroupOptionsMessage](#OptionGroupOptionsMessage)
* [OptionGroups](#OptionGroups)
* [OrderableDBInstanceOptionsMessage](#OrderableDBInstanceOptionsMessage)
* [PendingMaintenanceActionsMessage](#PendingMaintenanceActionsMessage)
* [PromoteReadReplicaDBClusterResult](#PromoteReadReplicaDBClusterResult)
* [PromoteReadReplicaResult](#PromoteReadReplicaResult)
* [PurchaseReservedDBInstancesOfferingResult](#PurchaseReservedDBInstancesOfferingResult)
* [RebootDBInstanceResult](#RebootDBInstanceResult)
* [RemoveSourceIdentifierFromSubscriptionResult](#RemoveSourceIdentifierFromSubscriptionResult)
* [ReservedDBInstanceMessage](#ReservedDBInstanceMessage)
* [ReservedDBInstancesOfferingMessage](#ReservedDBInstancesOfferingMessage)
* [RestoreDBClusterFromS3Result](#RestoreDBClusterFromS3Result)
* [RestoreDBClusterFromSnapshotResult](#RestoreDBClusterFromSnapshotResult)
* [RestoreDBClusterToPointInTimeResult](#RestoreDBClusterToPointInTimeResult)
* [RestoreDBInstanceFromDBSnapshotResult](#RestoreDBInstanceFromDBSnapshotResult)
* [RestoreDBInstanceToPointInTimeResult](#RestoreDBInstanceToPointInTimeResult)
* [RevokeDBSecurityGroupIngressResult](#RevokeDBSecurityGroupIngressResult)
* [SourceRegionMessage](#SourceRegionMessage)
* [TagListMessage](#TagListMessage)


@docs AccountAttributesMessage,AddSourceIdentifierToSubscriptionResult,ApplyPendingMaintenanceActionResult,AuthorizeDBSecurityGroupIngressResult,CertificateMessage,CopyDBClusterParameterGroupResult,CopyDBClusterSnapshotResult,CopyDBParameterGroupResult,CopyDBSnapshotResult,CopyOptionGroupResult,CreateDBClusterParameterGroupResult,CreateDBClusterResult,CreateDBClusterSnapshotResult,CreateDBInstanceReadReplicaResult,CreateDBInstanceResult,CreateDBParameterGroupResult,CreateDBSecurityGroupResult,CreateDBSnapshotResult,CreateDBSubnetGroupResult,CreateEventSubscriptionResult,CreateOptionGroupResult,DBClusterMessage,DBClusterParameterGroupDetails,DBClusterParameterGroupNameMessage,DBClusterParameterGroupsMessage,DBClusterSnapshotMessage,DBEngineVersionMessage,DBInstanceMessage,DBParameterGroupDetails,DBParameterGroupNameMessage,DBParameterGroupsMessage,DBSecurityGroupMessage,DBSnapshotMessage,DBSubnetGroupMessage,DeleteDBClusterResult,DeleteDBClusterSnapshotResult,DeleteDBInstanceResult,DeleteDBSnapshotResult,DeleteEventSubscriptionResult,DescribeDBClusterSnapshotAttributesResult,DescribeDBLogFilesResponse,DescribeDBSnapshotAttributesResult,DescribeEngineDefaultClusterParametersResult,DescribeEngineDefaultParametersResult,DownloadDBLogFilePortionDetails,EventCategoriesMessage,EventSubscriptionsMessage,EventsMessage,FailoverDBClusterResult,ModifyDBClusterResult,ModifyDBClusterSnapshotAttributeResult,ModifyDBInstanceResult,ModifyDBSnapshotAttributeResult,ModifyDBSnapshotResult,ModifyDBSubnetGroupResult,ModifyEventSubscriptionResult,ModifyOptionGroupResult,OptionGroupOptionsMessage,OptionGroups,OrderableDBInstanceOptionsMessage,PendingMaintenanceActionsMessage,PromoteReadReplicaDBClusterResult,PromoteReadReplicaResult,PurchaseReservedDBInstancesOfferingResult,RebootDBInstanceResult,RemoveSourceIdentifierFromSubscriptionResult,ReservedDBInstanceMessage,ReservedDBInstancesOfferingMessage,RestoreDBClusterFromS3Result,RestoreDBClusterFromSnapshotResult,RestoreDBClusterToPointInTimeResult,RestoreDBInstanceFromDBSnapshotResult,RestoreDBInstanceToPointInTimeResult,RevokeDBSecurityGroupIngressResult,SourceRegionMessage,TagListMessage

## Records

* [AccountQuota](#AccountQuota)
* [AvailabilityZone](#AvailabilityZone)
* [Certificate](#Certificate)
* [CharacterSet](#CharacterSet)
* [DBCluster](#DBCluster)
* [DBClusterMember](#DBClusterMember)
* [DBClusterOptionGroupStatus](#DBClusterOptionGroupStatus)
* [DBClusterParameterGroup](#DBClusterParameterGroup)
* [DBClusterRole](#DBClusterRole)
* [DBClusterSnapshot](#DBClusterSnapshot)
* [DBClusterSnapshotAttribute](#DBClusterSnapshotAttribute)
* [DBClusterSnapshotAttributesResult](#DBClusterSnapshotAttributesResult)
* [DBEngineVersion](#DBEngineVersion)
* [DBInstance](#DBInstance)
* [DBInstanceStatusInfo](#DBInstanceStatusInfo)
* [DBParameterGroup](#DBParameterGroup)
* [DBParameterGroupStatus](#DBParameterGroupStatus)
* [DBSecurityGroup](#DBSecurityGroup)
* [DBSecurityGroupMembership](#DBSecurityGroupMembership)
* [DBSnapshot](#DBSnapshot)
* [DBSnapshotAttribute](#DBSnapshotAttribute)
* [DBSnapshotAttributesResult](#DBSnapshotAttributesResult)
* [DBSubnetGroup](#DBSubnetGroup)
* [DescribeDBLogFilesDetails](#DescribeDBLogFilesDetails)
* [DomainMembership](#DomainMembership)
* [EC2SecurityGroup](#EC2SecurityGroup)
* [Endpoint](#Endpoint)
* [EngineDefaults](#EngineDefaults)
* [Event](#Event)
* [EventCategoriesMap](#EventCategoriesMap)
* [EventSubscription](#EventSubscription)
* [Filter](#Filter)
* [IPRange](#IPRange)
* [Option](#Option)
* [OptionConfiguration](#OptionConfiguration)
* [OptionGroup](#OptionGroup)
* [OptionGroupMembership](#OptionGroupMembership)
* [OptionGroupOption](#OptionGroupOption)
* [OptionGroupOptionSetting](#OptionGroupOptionSetting)
* [OptionSetting](#OptionSetting)
* [OptionVersion](#OptionVersion)
* [OrderableDBInstanceOption](#OrderableDBInstanceOption)
* [Parameter](#Parameter)
* [PendingMaintenanceAction](#PendingMaintenanceAction)
* [PendingModifiedValues](#PendingModifiedValues)
* [RecurringCharge](#RecurringCharge)
* [ReservedDBInstance](#ReservedDBInstance)
* [ReservedDBInstancesOffering](#ReservedDBInstancesOffering)
* [ResourcePendingMaintenanceActions](#ResourcePendingMaintenanceActions)
* [SourceRegion](#SourceRegion)
* [Subnet](#Subnet)
* [Tag](#Tag)
* [Timezone](#Timezone)
* [UpgradeTarget](#UpgradeTarget)
* [VpcSecurityGroupMembership](#VpcSecurityGroupMembership)


@docs AccountQuota,AvailabilityZone,Certificate,CharacterSet,DBCluster,DBClusterMember,DBClusterOptionGroupStatus,DBClusterParameterGroup,DBClusterRole,DBClusterSnapshot,DBClusterSnapshotAttribute,DBClusterSnapshotAttributesResult,DBEngineVersion,DBInstance,DBInstanceStatusInfo,DBParameterGroup,DBParameterGroupStatus,DBSecurityGroup,DBSecurityGroupMembership,DBSnapshot,DBSnapshotAttribute,DBSnapshotAttributesResult,DBSubnetGroup,DescribeDBLogFilesDetails,DomainMembership,EC2SecurityGroup,Endpoint,EngineDefaults,Event,EventCategoriesMap,EventSubscription,Filter,IPRange,Option,OptionConfiguration,OptionGroup,OptionGroupMembership,OptionGroupOption,OptionGroupOptionSetting,OptionSetting,OptionVersion,OrderableDBInstanceOption,Parameter,PendingMaintenanceAction,PendingModifiedValues,RecurringCharge,ReservedDBInstance,ReservedDBInstancesOffering,ResourcePendingMaintenanceActions,SourceRegion,Subnet,Tag,Timezone,UpgradeTarget,VpcSecurityGroupMembership

## Unions

* [ApplyMethod](#ApplyMethod)
* [SourceType](#SourceType)


@docs ApplyMethod,SourceType

## Exceptions

* [AuthorizationAlreadyExistsFault](#AuthorizationAlreadyExistsFault)
* [AuthorizationNotFoundFault](#AuthorizationNotFoundFault)
* [AuthorizationQuotaExceededFault](#AuthorizationQuotaExceededFault)
* [CertificateNotFoundFault](#CertificateNotFoundFault)
* [DBClusterAlreadyExistsFault](#DBClusterAlreadyExistsFault)
* [DBClusterNotFoundFault](#DBClusterNotFoundFault)
* [DBClusterParameterGroupNotFoundFault](#DBClusterParameterGroupNotFoundFault)
* [DBClusterQuotaExceededFault](#DBClusterQuotaExceededFault)
* [DBClusterRoleAlreadyExistsFault](#DBClusterRoleAlreadyExistsFault)
* [DBClusterRoleNotFoundFault](#DBClusterRoleNotFoundFault)
* [DBClusterRoleQuotaExceededFault](#DBClusterRoleQuotaExceededFault)
* [DBClusterSnapshotAlreadyExistsFault](#DBClusterSnapshotAlreadyExistsFault)
* [DBClusterSnapshotNotFoundFault](#DBClusterSnapshotNotFoundFault)
* [DBInstanceAlreadyExistsFault](#DBInstanceAlreadyExistsFault)
* [DBInstanceNotFoundFault](#DBInstanceNotFoundFault)
* [DBLogFileNotFoundFault](#DBLogFileNotFoundFault)
* [DBParameterGroupAlreadyExistsFault](#DBParameterGroupAlreadyExistsFault)
* [DBParameterGroupNotFoundFault](#DBParameterGroupNotFoundFault)
* [DBParameterGroupQuotaExceededFault](#DBParameterGroupQuotaExceededFault)
* [DBSecurityGroupAlreadyExistsFault](#DBSecurityGroupAlreadyExistsFault)
* [DBSecurityGroupNotFoundFault](#DBSecurityGroupNotFoundFault)
* [DBSecurityGroupNotSupportedFault](#DBSecurityGroupNotSupportedFault)
* [DBSecurityGroupQuotaExceededFault](#DBSecurityGroupQuotaExceededFault)
* [DBSnapshotAlreadyExistsFault](#DBSnapshotAlreadyExistsFault)
* [DBSnapshotNotFoundFault](#DBSnapshotNotFoundFault)
* [DBSubnetGroupAlreadyExistsFault](#DBSubnetGroupAlreadyExistsFault)
* [DBSubnetGroupDoesNotCoverEnoughAZs](#DBSubnetGroupDoesNotCoverEnoughAZs)
* [DBSubnetGroupNotAllowedFault](#DBSubnetGroupNotAllowedFault)
* [DBSubnetGroupNotFoundFault](#DBSubnetGroupNotFoundFault)
* [DBSubnetGroupQuotaExceededFault](#DBSubnetGroupQuotaExceededFault)
* [DBSubnetQuotaExceededFault](#DBSubnetQuotaExceededFault)
* [DBUpgradeDependencyFailureFault](#DBUpgradeDependencyFailureFault)
* [DomainNotFoundFault](#DomainNotFoundFault)
* [EventSubscriptionQuotaExceededFault](#EventSubscriptionQuotaExceededFault)
* [InstanceQuotaExceededFault](#InstanceQuotaExceededFault)
* [InsufficientDBClusterCapacityFault](#InsufficientDBClusterCapacityFault)
* [InsufficientDBInstanceCapacityFault](#InsufficientDBInstanceCapacityFault)
* [InsufficientStorageClusterCapacityFault](#InsufficientStorageClusterCapacityFault)
* [InvalidDBClusterSnapshotStateFault](#InvalidDBClusterSnapshotStateFault)
* [InvalidDBClusterStateFault](#InvalidDBClusterStateFault)
* [InvalidDBInstanceStateFault](#InvalidDBInstanceStateFault)
* [InvalidDBParameterGroupStateFault](#InvalidDBParameterGroupStateFault)
* [InvalidDBSecurityGroupStateFault](#InvalidDBSecurityGroupStateFault)
* [InvalidDBSnapshotStateFault](#InvalidDBSnapshotStateFault)
* [InvalidDBSubnetGroupFault](#InvalidDBSubnetGroupFault)
* [InvalidDBSubnetGroupStateFault](#InvalidDBSubnetGroupStateFault)
* [InvalidDBSubnetStateFault](#InvalidDBSubnetStateFault)
* [InvalidEventSubscriptionStateFault](#InvalidEventSubscriptionStateFault)
* [InvalidOptionGroupStateFault](#InvalidOptionGroupStateFault)
* [InvalidRestoreFault](#InvalidRestoreFault)
* [InvalidS3BucketFault](#InvalidS3BucketFault)
* [InvalidSubnet](#InvalidSubnet)
* [InvalidVPCNetworkStateFault](#InvalidVPCNetworkStateFault)
* [KMSKeyNotAccessibleFault](#KMSKeyNotAccessibleFault)
* [OptionGroupAlreadyExistsFault](#OptionGroupAlreadyExistsFault)
* [OptionGroupNotFoundFault](#OptionGroupNotFoundFault)
* [OptionGroupQuotaExceededFault](#OptionGroupQuotaExceededFault)
* [PointInTimeRestoreNotEnabledFault](#PointInTimeRestoreNotEnabledFault)
* [ProvisionedIopsNotAvailableInAZFault](#ProvisionedIopsNotAvailableInAZFault)
* [ReservedDBInstanceAlreadyExistsFault](#ReservedDBInstanceAlreadyExistsFault)
* [ReservedDBInstanceNotFoundFault](#ReservedDBInstanceNotFoundFault)
* [ReservedDBInstanceQuotaExceededFault](#ReservedDBInstanceQuotaExceededFault)
* [ReservedDBInstancesOfferingNotFoundFault](#ReservedDBInstancesOfferingNotFoundFault)
* [ResourceNotFoundFault](#ResourceNotFoundFault)
* [SNSInvalidTopicFault](#SNSInvalidTopicFault)
* [SNSNoAuthorizationFault](#SNSNoAuthorizationFault)
* [SNSTopicArnNotFoundFault](#SNSTopicArnNotFoundFault)
* [SharedSnapshotQuotaExceededFault](#SharedSnapshotQuotaExceededFault)
* [SnapshotQuotaExceededFault](#SnapshotQuotaExceededFault)
* [SourceNotFoundFault](#SourceNotFoundFault)
* [StorageQuotaExceededFault](#StorageQuotaExceededFault)
* [StorageTypeNotSupportedFault](#StorageTypeNotSupportedFault)
* [SubnetAlreadyInUse](#SubnetAlreadyInUse)
* [SubscriptionAlreadyExistFault](#SubscriptionAlreadyExistFault)
* [SubscriptionCategoryNotFoundFault](#SubscriptionCategoryNotFoundFault)
* [SubscriptionNotFoundFault](#SubscriptionNotFoundFault)


@docs AuthorizationAlreadyExistsFault,AuthorizationNotFoundFault,AuthorizationQuotaExceededFault,CertificateNotFoundFault,DBClusterAlreadyExistsFault,DBClusterNotFoundFault,DBClusterParameterGroupNotFoundFault,DBClusterQuotaExceededFault,DBClusterRoleAlreadyExistsFault,DBClusterRoleNotFoundFault,DBClusterRoleQuotaExceededFault,DBClusterSnapshotAlreadyExistsFault,DBClusterSnapshotNotFoundFault,DBInstanceAlreadyExistsFault,DBInstanceNotFoundFault,DBLogFileNotFoundFault,DBParameterGroupAlreadyExistsFault,DBParameterGroupNotFoundFault,DBParameterGroupQuotaExceededFault,DBSecurityGroupAlreadyExistsFault,DBSecurityGroupNotFoundFault,DBSecurityGroupNotSupportedFault,DBSecurityGroupQuotaExceededFault,DBSnapshotAlreadyExistsFault,DBSnapshotNotFoundFault,DBSubnetGroupAlreadyExistsFault,DBSubnetGroupDoesNotCoverEnoughAZs,DBSubnetGroupNotAllowedFault,DBSubnetGroupNotFoundFault,DBSubnetGroupQuotaExceededFault,DBSubnetQuotaExceededFault,DBUpgradeDependencyFailureFault,DomainNotFoundFault,EventSubscriptionQuotaExceededFault,InstanceQuotaExceededFault,InsufficientDBClusterCapacityFault,InsufficientDBInstanceCapacityFault,InsufficientStorageClusterCapacityFault,InvalidDBClusterSnapshotStateFault,InvalidDBClusterStateFault,InvalidDBInstanceStateFault,InvalidDBParameterGroupStateFault,InvalidDBSecurityGroupStateFault,InvalidDBSnapshotStateFault,InvalidDBSubnetGroupFault,InvalidDBSubnetGroupStateFault,InvalidDBSubnetStateFault,InvalidEventSubscriptionStateFault,InvalidOptionGroupStateFault,InvalidRestoreFault,InvalidS3BucketFault,InvalidSubnet,InvalidVPCNetworkStateFault,KMSKeyNotAccessibleFault,OptionGroupAlreadyExistsFault,OptionGroupNotFoundFault,OptionGroupQuotaExceededFault,PointInTimeRestoreNotEnabledFault,ProvisionedIopsNotAvailableInAZFault,ReservedDBInstanceAlreadyExistsFault,ReservedDBInstanceNotFoundFault,ReservedDBInstanceQuotaExceededFault,ReservedDBInstancesOfferingNotFoundFault,ResourceNotFoundFault,SNSInvalidTopicFault,SNSNoAuthorizationFault,SNSTopicArnNotFoundFault,SharedSnapshotQuotaExceededFault,SnapshotQuotaExceededFault,SourceNotFoundFault,StorageQuotaExceededFault,StorageTypeNotSupportedFault,SubnetAlreadyInUse,SubscriptionAlreadyExistFault,SubscriptionCategoryNotFoundFault,SubscriptionNotFoundFault

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
        "rds"
        "2014-10-31"
        "undefined"
        "AWSRDS_20141031."
        "rds.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Associates an Identity and Access Management (IAM) role from an Aurora DB cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html">Authorizing Amazon Aurora to Access Other AWS Services On Your Behalf</a>.</p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `roleArn` __:__ `String`


-}
addRoleToDBCluster :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
addRoleToDBCluster dBClusterIdentifier roleArn =
    AWS.Http.unsignedRequest
        "AddRoleToDBCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Adds a source identifier to an existing RDS event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`
* `sourceIdentifier` __:__ `String`


-}
addSourceIdentifierToSubscription :
    String
    -> String
    -> AWS.Http.UnsignedRequest AddSourceIdentifierToSubscriptionResult
addSourceIdentifierToSubscription subscriptionName sourceIdentifier =
    AWS.Http.unsignedRequest
        "AddSourceIdentifierToSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addSourceIdentifierToSubscriptionResultDecoder



{-| <p>Adds metadata tags to an Amazon RDS resource. These tags can also be used with cost allocation reporting to track cost associated with Amazon RDS resources, or used in a Condition statement in an IAM policy for Amazon RDS.</p> <p>For an overview on tagging Amazon RDS resources, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging Amazon RDS Resources</a>.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTagsToResource :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest ()
addTagsToResource resourceName tags =
    AWS.Http.unsignedRequest
        "AddTagsToResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Applies a pending maintenance action to a resource (for example, to a DB instance).</p>

__Required Parameters__

* `resourceIdentifier` __:__ `String`
* `applyAction` __:__ `String`
* `optInType` __:__ `String`


-}
applyPendingMaintenanceAction :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ApplyPendingMaintenanceActionResult
applyPendingMaintenanceAction resourceIdentifier applyAction optInType =
    AWS.Http.unsignedRequest
        "ApplyPendingMaintenanceAction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applyPendingMaintenanceActionResultDecoder



{-| <p>Enables ingress to a DBSecurityGroup using one of two forms of authorization. First, EC2 or VPC security groups can be added to the DBSecurityGroup if the application using the database is running on EC2 or VPC instances. Second, IP ranges are available if the application accessing your database is running on the Internet. Required parameters for this API are one of CIDR range, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId for non-VPC).</p> <note> <p>You cannot authorize ingress from an EC2 security group in one region to an Amazon RDS DB instance in another. You cannot authorize ingress from a VPC security group in one VPC to an Amazon RDS DB instance in another.</p> </note> <p>For an overview of CIDR ranges, go to the <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia Tutorial</a>. </p>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`


-}
authorizeDBSecurityGroupIngress :
    String
    -> (AuthorizeDBSecurityGroupIngressOptions -> AuthorizeDBSecurityGroupIngressOptions)
    -> AWS.Http.UnsignedRequest AuthorizeDBSecurityGroupIngressResult
authorizeDBSecurityGroupIngress dBSecurityGroupName setOptions =
  let
    options = setOptions (AuthorizeDBSecurityGroupIngressOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AuthorizeDBSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        authorizeDBSecurityGroupIngressResultDecoder


{-| Options for a authorizeDBSecurityGroupIngress request
-}
type alias AuthorizeDBSecurityGroupIngressOptions =
    { cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupId : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }



{-| <p>Copies the specified DB cluster parameter group.</p>

__Required Parameters__

* `sourceDBClusterParameterGroupIdentifier` __:__ `String`
* `targetDBClusterParameterGroupIdentifier` __:__ `String`
* `targetDBClusterParameterGroupDescription` __:__ `String`


-}
copyDBClusterParameterGroup :
    String
    -> String
    -> String
    -> (CopyDBClusterParameterGroupOptions -> CopyDBClusterParameterGroupOptions)
    -> AWS.Http.UnsignedRequest CopyDBClusterParameterGroupResult
copyDBClusterParameterGroup sourceDBClusterParameterGroupIdentifier targetDBClusterParameterGroupIdentifier targetDBClusterParameterGroupDescription setOptions =
  let
    options = setOptions (CopyDBClusterParameterGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyDBClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copyDBClusterParameterGroupResultDecoder


{-| Options for a copyDBClusterParameterGroup request
-}
type alias CopyDBClusterParameterGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a snapshot of a DB cluster. For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `sourceDBClusterSnapshotIdentifier` __:__ `String`
* `targetDBClusterSnapshotIdentifier` __:__ `String`


-}
copyDBClusterSnapshot :
    String
    -> String
    -> (CopyDBClusterSnapshotOptions -> CopyDBClusterSnapshotOptions)
    -> AWS.Http.UnsignedRequest CopyDBClusterSnapshotResult
copyDBClusterSnapshot sourceDBClusterSnapshotIdentifier targetDBClusterSnapshotIdentifier setOptions =
  let
    options = setOptions (CopyDBClusterSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyDBClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copyDBClusterSnapshotResultDecoder


{-| Options for a copyDBClusterSnapshot request
-}
type alias CopyDBClusterSnapshotOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Copies the specified DB parameter group.</p>

__Required Parameters__

* `sourceDBParameterGroupIdentifier` __:__ `String`
* `targetDBParameterGroupIdentifier` __:__ `String`
* `targetDBParameterGroupDescription` __:__ `String`


-}
copyDBParameterGroup :
    String
    -> String
    -> String
    -> (CopyDBParameterGroupOptions -> CopyDBParameterGroupOptions)
    -> AWS.Http.UnsignedRequest CopyDBParameterGroupResult
copyDBParameterGroup sourceDBParameterGroupIdentifier targetDBParameterGroupIdentifier targetDBParameterGroupDescription setOptions =
  let
    options = setOptions (CopyDBParameterGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyDBParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copyDBParameterGroupResultDecoder


{-| Options for a copyDBParameterGroup request
-}
type alias CopyDBParameterGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Copies the specified DB snapshot. The source DB snapshot must be in the "available" state.</p> <p>To copy a DB snapshot from a shared manual DB snapshot, <code>SourceDBSnapshotIdentifier</code> must be the Amazon Resource Name (ARN) of the shared DB snapshot.</p> <p>You can copy an encrypted DB snapshot from another AWS Region. In that case, the region where you call the <code>CopyDBSnapshot</code> action is the destination region for the encrypted DB snapshot to be copied to. To copy an encrypted DB snapshot from another region, you must provide the following values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS Key Management System (KMS) key identifier for the key to use to encrypt the copy of the DB snapshot in the destination region.</p> </li> <li> <p> <code>PreSignedUrl</code> - A URL that contains a Signature Version 4 signed request for the <code>CopyDBSnapshot</code> action to be called in the source region where the DB snapshot will be copied from. The presigned URL must be a valid request for the <code>CopyDBSnapshot</code> API action that can be executed in the source region that contains the encrypted DB snapshot to be copied.</p> <p>The presigned URL request must contain the following parameter values:</p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the encrypted DB snapshot will be copied to. This region is the same one where the <code>CopyDBSnapshot</code> action is called that contains this presigned URL. </p> <p>For example, if you copy an encrypted DB snapshot from the us-west-2 region to the us-east-1 region, then you will call the <code>CopyDBSnapshot</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CopyDBSnapshot</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region.</p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the copy of the DB snapshot in the destination region. This identifier is the same for both the <code>CopyDBSnapshot</code> action that is called in the destination region, and the action contained in the presigned URL.</p> </li> <li> <p> <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you copy an encrypted DB snapshot from the us-west-2 region, then your <code>SourceDBSnapshotIdentifier</code> looks like this example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p> </li> <li> <p> <code>TargetDBSnapshotIdentifier</code> - The identifier for the new copy of the DB snapshot in the destination region.</p> </li> <li> <p> <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied. This identifier must be in the ARN format for the source region and is the same value as the <code>SourceDBSnapshotIdentifier</code> in the presigned URL. </p> </li> </ul> <p>For more information on copying encrypted snapshots from one region to another, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Encrypted.CrossRegion"> Copying an Encrypted DB Snapshot to Another Region</a> in the Amazon RDS User Guide.</p>

__Required Parameters__

* `sourceDBSnapshotIdentifier` __:__ `String`
* `targetDBSnapshotIdentifier` __:__ `String`


-}
copyDBSnapshot :
    String
    -> String
    -> (CopyDBSnapshotOptions -> CopyDBSnapshotOptions)
    -> AWS.Http.UnsignedRequest CopyDBSnapshotResult
copyDBSnapshot sourceDBSnapshotIdentifier targetDBSnapshotIdentifier setOptions =
  let
    options = setOptions (CopyDBSnapshotOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyDBSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copyDBSnapshotResultDecoder


{-| Options for a copyDBSnapshot request
-}
type alias CopyDBSnapshotOptions =
    { kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    , copyTags : Maybe Bool
    , preSignedUrl : Maybe String
    , sourceRegion : Maybe String
    }



{-| <p>Copies the specified option group.</p>

__Required Parameters__

* `sourceOptionGroupIdentifier` __:__ `String`
* `targetOptionGroupIdentifier` __:__ `String`
* `targetOptionGroupDescription` __:__ `String`


-}
copyOptionGroup :
    String
    -> String
    -> String
    -> (CopyOptionGroupOptions -> CopyOptionGroupOptions)
    -> AWS.Http.UnsignedRequest CopyOptionGroupResult
copyOptionGroup sourceOptionGroupIdentifier targetOptionGroupIdentifier targetOptionGroupDescription setOptions =
  let
    options = setOptions (CopyOptionGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyOptionGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copyOptionGroupResultDecoder


{-| Options for a copyOptionGroup request
-}
type alias CopyOptionGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a new Amazon Aurora DB cluster.</p> <p>You can use the <code>ReplicationSourceIdentifier</code> parameter to create the DB cluster as a Read Replica of another DB cluster or Amazon RDS MySQL DB instance.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `engine` __:__ `String`


-}
createDBCluster :
    String
    -> String
    -> (CreateDBClusterOptions -> CreateDBClusterOptions)
    -> AWS.Http.UnsignedRequest CreateDBClusterResult
createDBCluster dBClusterIdentifier engine setOptions =
  let
    options = setOptions (CreateDBClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBClusterResultDecoder


{-| Options for a createDBCluster request
-}
type alias CreateDBClusterOptions =
    { availabilityZones : Maybe (List String)
    , backupRetentionPeriod : Maybe Int
    , characterSetName : Maybe String
    , databaseName : Maybe String
    , dBClusterParameterGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , dBSubnetGroupName : Maybe String
    , engineVersion : Maybe String
    , port_ : Maybe Int
    , masterUsername : Maybe String
    , masterUserPassword : Maybe String
    , optionGroupName : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , replicationSourceIdentifier : Maybe String
    , tags : Maybe (List Tag)
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }



{-| <p>Creates a new DB cluster parameter group.</p> <p>Parameters in a DB cluster parameter group apply to all of the instances in a DB cluster.</p> <p> A DB cluster parameter group is initially created with the default parameters for the database engine used by instances in the DB cluster. To provide custom values for any of the parameters, you must modify the group after creating it using <a>ModifyDBClusterParameterGroup</a>. Once you've created a DB cluster parameter group, you need to associate it with your DB cluster using <a>ModifyDBCluster</a>. When you associate a new DB cluster parameter group with a running DB cluster, you need to reboot the DB instances in the DB cluster without failover for the new DB cluster parameter group and associated settings to take effect. </p> <important> <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the DB cluster parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <a>DescribeDBClusterParameters</a> command to verify that your DB cluster parameter group has been created or modified.</p> </important> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`
* `dBParameterGroupFamily` __:__ `String`
* `description` __:__ `String`


-}
createDBClusterParameterGroup :
    String
    -> String
    -> String
    -> (CreateDBClusterParameterGroupOptions -> CreateDBClusterParameterGroupOptions)
    -> AWS.Http.UnsignedRequest CreateDBClusterParameterGroupResult
createDBClusterParameterGroup dBClusterParameterGroupName dBParameterGroupFamily description setOptions =
  let
    options = setOptions (CreateDBClusterParameterGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBClusterParameterGroupResultDecoder


{-| Options for a createDBClusterParameterGroup request
-}
type alias CreateDBClusterParameterGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a snapshot of a DB cluster. For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`
* `dBClusterIdentifier` __:__ `String`


-}
createDBClusterSnapshot :
    String
    -> String
    -> (CreateDBClusterSnapshotOptions -> CreateDBClusterSnapshotOptions)
    -> AWS.Http.UnsignedRequest CreateDBClusterSnapshotResult
createDBClusterSnapshot dBClusterSnapshotIdentifier dBClusterIdentifier setOptions =
  let
    options = setOptions (CreateDBClusterSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBClusterSnapshotResultDecoder


{-| Options for a createDBClusterSnapshot request
-}
type alias CreateDBClusterSnapshotOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a new DB instance.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `dBInstanceClass` __:__ `String`
* `engine` __:__ `String`


-}
createDBInstance :
    String
    -> String
    -> String
    -> (CreateDBInstanceOptions -> CreateDBInstanceOptions)
    -> AWS.Http.UnsignedRequest CreateDBInstanceResult
createDBInstance dBInstanceIdentifier dBInstanceClass engine setOptions =
  let
    options = setOptions (CreateDBInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBInstanceResultDecoder


{-| Options for a createDBInstance request
-}
type alias CreateDBInstanceOptions =
    { dBName : Maybe String
    , allocatedStorage : Maybe Int
    , masterUsername : Maybe String
    , masterUserPassword : Maybe String
    , dBSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , availabilityZone : Maybe String
    , dBSubnetGroupName : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , dBParameterGroupName : Maybe String
    , backupRetentionPeriod : Maybe Int
    , preferredBackupWindow : Maybe String
    , port_ : Maybe Int
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , characterSetName : Maybe String
    , publiclyAccessible : Maybe Bool
    , tags : Maybe (List Tag)
    , dBClusterIdentifier : Maybe String
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , domain : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , monitoringRoleArn : Maybe String
    , domainIAMRoleName : Maybe String
    , promotionTier : Maybe Int
    , timezone : Maybe String
    }



{-| <p>Creates a DB instance for a DB instance running MySQL, MariaDB, or PostgreSQL that acts as a Read Replica of a source DB instance.</p> <p>All Read Replica DB instances are created as Single-AZ deployments with backups disabled. All other DB instance attributes (including DB security groups and DB parameter groups) are inherited from the source DB instance, except as specified below.</p> <important> <p>The source DB instance must have backup retention enabled.</p> </important> <p>You can create an encrypted Read Replica in a different AWS Region than the source DB instance. In that case, the region where you call the <code>CreateDBInstanceReadReplica</code> action is the destination region of the encrypted Read Replica. The source DB instance must be encrypted.</p> <p>To create an encrypted Read Replica in another AWS Region, you must provide the following values:</p> <ul> <li> <p> <code>KmsKeyId</code> - The AWS Key Management System (KMS) key identifier for the key to use to encrypt the Read Replica in the destination region.</p> </li> <li> <p> <code>PreSignedUrl</code> - A URL that contains a Signature Version 4 signed request for the <code> CreateDBInstanceReadReplica</code> API action in the AWS region that contains the source DB instance. The <code>PreSignedUrl</code> parameter must be used when encrypting a Read Replica from another AWS region.</p> <p>The presigned URL must be a valid request for the <code>CreateDBInstanceReadReplica</code> API action that can be executed in the source region that contains the encrypted DB instance. The presigned URL request must contain the following parameter values:</p> <ul> <li> <p> <code>DestinationRegion</code> - The AWS Region that the Read Replica is created in. This region is the same one where the <code>CreateDBInstanceReadReplica</code> action is called that contains this presigned URL. </p> <p> For example, if you create an encrypted Read Replica in the us-east-1 region, and the source DB instance is in the west-2 region, then you call the <code>CreateDBInstanceReadReplica</code> action in the us-east-1 region and provide a presigned URL that contains a call to the <code>CreateDBInstanceReadReplica</code> action in the us-west-2 region. For this example, the <code>DestinationRegion</code> in the presigned URL must be set to the us-east-1 region.</p> </li> <li> <p> <code>KmsKeyId</code> - The KMS key identifier for the key to use to encrypt the Read Replica in the destination region. This is the same identifier for both the <code>CreateDBInstanceReadReplica</code> action that is called in the destination region, and the action contained in the presigned URL.</p> </li> <li> <p> <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for the encrypted Read Replica to be created. This identifier must be in the Amazon Resource Name (ARN) format for the source region. For example, if you create an encrypted Read Replica from a DB instance in the us-west-2 region, then your <code>SourceDBInstanceIdentifier</code> would look like this example: <code> arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-instance-20161115</code>.</p> </li> </ul> <p>To learn how to generate a Signature Version 4 signed request, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html"> Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html"> Signature Version 4 Signing Process</a>.</p> </li> <li> <p> <code>DBInstanceIdentifier</code> - The identifier for the encrypted Read Replica in the destination region.</p> </li> <li> <p> <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for the encrypted Read Replica. This identifier must be in the ARN format for the source region and is the same value as the <code>SourceDBInstanceIdentifier</code> in the presigned URL. </p> </li> </ul>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `sourceDBInstanceIdentifier` __:__ `String`


-}
createDBInstanceReadReplica :
    String
    -> String
    -> (CreateDBInstanceReadReplicaOptions -> CreateDBInstanceReadReplicaOptions)
    -> AWS.Http.UnsignedRequest CreateDBInstanceReadReplicaResult
createDBInstanceReadReplica dBInstanceIdentifier sourceDBInstanceIdentifier setOptions =
  let
    options = setOptions (CreateDBInstanceReadReplicaOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBInstanceReadReplica"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBInstanceReadReplicaResultDecoder


{-| Options for a createDBInstanceReadReplica request
-}
type alias CreateDBInstanceReadReplicaOptions =
    { dBInstanceClass : Maybe String
    , availabilityZone : Maybe String
    , port_ : Maybe Int
    , autoMinorVersionUpgrade : Maybe Bool
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , publiclyAccessible : Maybe Bool
    , tags : Maybe (List Tag)
    , dBSubnetGroupName : Maybe String
    , storageType : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , monitoringRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , preSignedUrl : Maybe String
    }



{-| <p>Creates a new DB parameter group.</p> <p> A DB parameter group is initially created with the default parameters for the database engine used by the DB instance. To provide custom values for any of the parameters, you must modify the group after creating it using <i>ModifyDBParameterGroup</i>. Once you've created a DB parameter group, you need to associate it with your DB instance using <i>ModifyDBInstance</i>. When you associate a new DB parameter group with a running DB instance, you need to reboot the DB instance without failover for the new DB parameter group and associated settings to take effect. </p> <important> <p>After you create a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <i>DescribeDBParameters</i> command to verify that your DB parameter group has been created or modified.</p> </important>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`
* `dBParameterGroupFamily` __:__ `String`
* `description` __:__ `String`


-}
createDBParameterGroup :
    String
    -> String
    -> String
    -> (CreateDBParameterGroupOptions -> CreateDBParameterGroupOptions)
    -> AWS.Http.UnsignedRequest CreateDBParameterGroupResult
createDBParameterGroup dBParameterGroupName dBParameterGroupFamily description setOptions =
  let
    options = setOptions (CreateDBParameterGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBParameterGroupResultDecoder


{-| Options for a createDBParameterGroup request
-}
type alias CreateDBParameterGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a new DB security group. DB security groups control access to a DB instance.</p>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`
* `dBSecurityGroupDescription` __:__ `String`


-}
createDBSecurityGroup :
    String
    -> String
    -> (CreateDBSecurityGroupOptions -> CreateDBSecurityGroupOptions)
    -> AWS.Http.UnsignedRequest CreateDBSecurityGroupResult
createDBSecurityGroup dBSecurityGroupName dBSecurityGroupDescription setOptions =
  let
    options = setOptions (CreateDBSecurityGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBSecurityGroupResultDecoder


{-| Options for a createDBSecurityGroup request
-}
type alias CreateDBSecurityGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a DBSnapshot. The source DBInstance must be in "available" state.</p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`
* `dBInstanceIdentifier` __:__ `String`


-}
createDBSnapshot :
    String
    -> String
    -> (CreateDBSnapshotOptions -> CreateDBSnapshotOptions)
    -> AWS.Http.UnsignedRequest CreateDBSnapshotResult
createDBSnapshot dBSnapshotIdentifier dBInstanceIdentifier setOptions =
  let
    options = setOptions (CreateDBSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBSnapshotResultDecoder


{-| Options for a createDBSnapshot request
-}
type alias CreateDBSnapshotOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a new DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the region.</p>

__Required Parameters__

* `dBSubnetGroupName` __:__ `String`
* `dBSubnetGroupDescription` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}
createDBSubnetGroup :
    String
    -> String
    -> (List String)
    -> (CreateDBSubnetGroupOptions -> CreateDBSubnetGroupOptions)
    -> AWS.Http.UnsignedRequest CreateDBSubnetGroupResult
createDBSubnetGroup dBSubnetGroupName dBSubnetGroupDescription subnetIds setOptions =
  let
    options = setOptions (CreateDBSubnetGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDBSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDBSubnetGroupResultDecoder


{-| Options for a createDBSubnetGroup request
-}
type alias CreateDBSubnetGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates an RDS event notification subscription. This action requires a topic ARN (Amazon Resource Name) created by either the RDS console, the SNS console, or the SNS API. To obtain an ARN with SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.</p> <p>You can specify the type of source (SourceType) you want to be notified of, provide a list of RDS sources (SourceIds) that triggers the events, and provide a list of event categories (EventCategories) for events you want to be notified of. For example, you can specify SourceType = db-instance, SourceIds = mydbinstance1, mydbinstance2 and EventCategories = Availability, Backup.</p> <p>If you specify both the SourceType and SourceIds, such as SourceType = db-instance and SourceIdentifier = myDBInstance1, you will be notified of all the db-instance events for the specified source. If you specify a SourceType but do not specify a SourceIdentifier, you will receive notice of the events for that source type for all your RDS sources. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all RDS sources belonging to your customer account.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`
* `snsTopicArn` __:__ `String`


-}
createEventSubscription :
    String
    -> String
    -> (CreateEventSubscriptionOptions -> CreateEventSubscriptionOptions)
    -> AWS.Http.UnsignedRequest CreateEventSubscriptionResult
createEventSubscription subscriptionName snsTopicArn setOptions =
  let
    options = setOptions (CreateEventSubscriptionOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateEventSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createEventSubscriptionResultDecoder


{-| Options for a createEventSubscription request
-}
type alias CreateEventSubscriptionOptions =
    { sourceType : Maybe String
    , eventCategories : Maybe (List String)
    , sourceIds : Maybe (List String)
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }



{-| <p>Creates a new option group. You can create up to 20 option groups.</p>

__Required Parameters__

* `optionGroupName` __:__ `String`
* `engineName` __:__ `String`
* `majorEngineVersion` __:__ `String`
* `optionGroupDescription` __:__ `String`


-}
createOptionGroup :
    String
    -> String
    -> String
    -> String
    -> (CreateOptionGroupOptions -> CreateOptionGroupOptions)
    -> AWS.Http.UnsignedRequest CreateOptionGroupResult
createOptionGroup optionGroupName engineName majorEngineVersion optionGroupDescription setOptions =
  let
    options = setOptions (CreateOptionGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateOptionGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createOptionGroupResultDecoder


{-| Options for a createOptionGroup request
-}
type alias CreateOptionGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>The DeleteDBCluster action deletes a previously provisioned DB cluster. When you delete a DB cluster, all automated backups for that DB cluster are deleted and cannot be recovered. Manual DB cluster snapshots of the specified DB cluster are not deleted.</p> <p/> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}
deleteDBCluster :
    String
    -> (DeleteDBClusterOptions -> DeleteDBClusterOptions)
    -> AWS.Http.UnsignedRequest DeleteDBClusterResult
deleteDBCluster dBClusterIdentifier setOptions =
  let
    options = setOptions (DeleteDBClusterOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteDBCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDBClusterResultDecoder


{-| Options for a deleteDBCluster request
-}
type alias DeleteDBClusterOptions =
    { skipFinalSnapshot : Maybe Bool
    , finalDBSnapshotIdentifier : Maybe String
    }



{-| <p>Deletes a specified DB cluster parameter group. The DB cluster parameter group to be deleted cannot be associated with any DB clusters.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`


-}
deleteDBClusterParameterGroup :
    String
    -> AWS.Http.UnsignedRequest ()
deleteDBClusterParameterGroup dBClusterParameterGroupName =
    AWS.Http.unsignedRequest
        "DeleteDBClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a DB cluster snapshot. If the snapshot is being copied, the copy operation is terminated.</p> <note> <p>The DB cluster snapshot must be in the <code>available</code> state to be deleted.</p> </note> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`


-}
deleteDBClusterSnapshot :
    String
    -> AWS.Http.UnsignedRequest DeleteDBClusterSnapshotResult
deleteDBClusterSnapshot dBClusterSnapshotIdentifier =
    AWS.Http.unsignedRequest
        "DeleteDBClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDBClusterSnapshotResultDecoder



{-| <p>The DeleteDBInstance action deletes a previously provisioned DB instance. When you delete a DB instance, all automated backups for that instance are deleted and cannot be recovered. Manual DB snapshots of the DB instance to be deleted by <code>DeleteDBInstance</code> are not deleted.</p> <p> If you request a final DB snapshot the status of the Amazon RDS DB instance is <code>deleting</code> until the DB snapshot is created. The API action <code>DescribeDBInstance</code> is used to monitor the status of this operation. The action cannot be canceled or reverted once submitted. </p> <p>Note that when a DB instance is in a failure state and has a status of <code>failed</code>, <code>incompatible-restore</code>, or <code>incompatible-network</code>, you can only delete it when the <code>SkipFinalSnapshot</code> parameter is set to <code>true</code>.</p> <p>If the specified DB instance is part of an Amazon Aurora DB cluster, you cannot delete the DB instance if the following are true:</p> <ul> <li> <p>The DB cluster is a Read Replica of another Amazon Aurora DB cluster.</p> </li> <li> <p>The DB instance is the only instance in the DB cluster.</p> </li> </ul> <p>To delete a DB instance in this case, first call the <a>PromoteReadReplicaDBCluster</a> API action to promote the DB cluster so it's no longer a Read Replica. After the promotion completes, then call the <code>DeleteDBInstance</code> API action to delete the final instance in the DB cluster.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}
deleteDBInstance :
    String
    -> (DeleteDBInstanceOptions -> DeleteDBInstanceOptions)
    -> AWS.Http.UnsignedRequest DeleteDBInstanceResult
deleteDBInstance dBInstanceIdentifier setOptions =
  let
    options = setOptions (DeleteDBInstanceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteDBInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDBInstanceResultDecoder


{-| Options for a deleteDBInstance request
-}
type alias DeleteDBInstanceOptions =
    { skipFinalSnapshot : Maybe Bool
    , finalDBSnapshotIdentifier : Maybe String
    }



{-| <p>Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted cannot be associated with any DB instances.</p>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`


-}
deleteDBParameterGroup :
    String
    -> AWS.Http.UnsignedRequest ()
deleteDBParameterGroup dBParameterGroupName =
    AWS.Http.unsignedRequest
        "DeleteDBParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a DB security group.</p> <note> <p>The specified DB security group must not be associated with any DB instances.</p> </note>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`


-}
deleteDBSecurityGroup :
    String
    -> AWS.Http.UnsignedRequest ()
deleteDBSecurityGroup dBSecurityGroupName =
    AWS.Http.unsignedRequest
        "DeleteDBSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a DBSnapshot. If the snapshot is being copied, the copy operation is terminated.</p> <note> <p>The DBSnapshot must be in the <code>available</code> state to be deleted.</p> </note>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`


-}
deleteDBSnapshot :
    String
    -> AWS.Http.UnsignedRequest DeleteDBSnapshotResult
deleteDBSnapshot dBSnapshotIdentifier =
    AWS.Http.unsignedRequest
        "DeleteDBSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDBSnapshotResultDecoder



{-| <p>Deletes a DB subnet group.</p> <note> <p>The specified database subnet group must not be associated with any DB instances.</p> </note>

__Required Parameters__

* `dBSubnetGroupName` __:__ `String`


-}
deleteDBSubnetGroup :
    String
    -> AWS.Http.UnsignedRequest ()
deleteDBSubnetGroup dBSubnetGroupName =
    AWS.Http.unsignedRequest
        "DeleteDBSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes an RDS event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`


-}
deleteEventSubscription :
    String
    -> AWS.Http.UnsignedRequest DeleteEventSubscriptionResult
deleteEventSubscription subscriptionName =
    AWS.Http.unsignedRequest
        "DeleteEventSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteEventSubscriptionResultDecoder



{-| <p>Deletes an existing option group.</p>

__Required Parameters__

* `optionGroupName` __:__ `String`


-}
deleteOptionGroup :
    String
    -> AWS.Http.UnsignedRequest ()
deleteOptionGroup optionGroupName =
    AWS.Http.unsignedRequest
        "DeleteOptionGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Lists all of the attributes for a customer account. The attributes include Amazon RDS quotas for the account, such as the number of DB instances allowed. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value.</p> <p>This command does not take any parameters.</p>

__Required Parameters__



-}
describeAccountAttributes :
    AWS.Http.UnsignedRequest AccountAttributesMessage
describeAccountAttributes =
    AWS.Http.unsignedRequest
        "DescribeAccountAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        accountAttributesMessageDecoder



{-| <p>Lists the set of CA certificates provided by Amazon RDS for this AWS account.</p>

__Required Parameters__



-}
describeCertificates :
    (DescribeCertificatesOptions -> DescribeCertificatesOptions)
    -> AWS.Http.UnsignedRequest CertificateMessage
describeCertificates setOptions =
  let
    options = setOptions (DescribeCertificatesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCertificates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        certificateMessageDecoder


{-| Options for a describeCertificates request
-}
type alias DescribeCertificatesOptions =
    { certificateIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p> Returns a list of <code>DBClusterParameterGroup</code> descriptions. If a <code>DBClusterParameterGroupName</code> parameter is specified, the list will contain only the description of the specified DB cluster parameter group. </p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__



-}
describeDBClusterParameterGroups :
    (DescribeDBClusterParameterGroupsOptions -> DescribeDBClusterParameterGroupsOptions)
    -> AWS.Http.UnsignedRequest DBClusterParameterGroupsMessage
describeDBClusterParameterGroups setOptions =
  let
    options = setOptions (DescribeDBClusterParameterGroupsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBClusterParameterGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBClusterParameterGroupsMessageDecoder


{-| Options for a describeDBClusterParameterGroups request
-}
type alias DescribeDBClusterParameterGroupsOptions =
    { dBClusterParameterGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the detailed parameter list for a particular DB cluster parameter group.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`


-}
describeDBClusterParameters :
    String
    -> (DescribeDBClusterParametersOptions -> DescribeDBClusterParametersOptions)
    -> AWS.Http.UnsignedRequest DBClusterParameterGroupDetails
describeDBClusterParameters dBClusterParameterGroupName setOptions =
  let
    options = setOptions (DescribeDBClusterParametersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBClusterParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBClusterParameterGroupDetailsDecoder


{-| Options for a describeDBClusterParameters request
-}
type alias DescribeDBClusterParametersOptions =
    { source : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot.</p> <p>When sharing snapshots with other AWS accounts, <code>DescribeDBClusterSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB cluster snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual DB cluster snapshot is public and can be copied or restored by all AWS accounts.</p> <p>To add or remove access for an AWS account to copy or restore a manual DB cluster snapshot, or to make the manual DB cluster snapshot public or private, use the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`


-}
describeDBClusterSnapshotAttributes :
    String
    -> AWS.Http.UnsignedRequest DescribeDBClusterSnapshotAttributesResult
describeDBClusterSnapshotAttributes dBClusterSnapshotIdentifier =
    AWS.Http.unsignedRequest
        "DescribeDBClusterSnapshotAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDBClusterSnapshotAttributesResultDecoder



{-| <p>Returns information about DB cluster snapshots. This API action supports pagination.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__



-}
describeDBClusterSnapshots :
    (DescribeDBClusterSnapshotsOptions -> DescribeDBClusterSnapshotsOptions)
    -> AWS.Http.UnsignedRequest DBClusterSnapshotMessage
describeDBClusterSnapshots setOptions =
  let
    options = setOptions (DescribeDBClusterSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBClusterSnapshots"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBClusterSnapshotMessageDecoder


{-| Options for a describeDBClusterSnapshots request
-}
type alias DescribeDBClusterSnapshotsOptions =
    { dBClusterIdentifier : Maybe String
    , dBClusterSnapshotIdentifier : Maybe String
    , snapshotType : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , includeShared : Maybe Bool
    , includePublic : Maybe Bool
    }



{-| <p>Returns information about provisioned Aurora DB clusters. This API supports pagination.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__



-}
describeDBClusters :
    (DescribeDBClustersOptions -> DescribeDBClustersOptions)
    -> AWS.Http.UnsignedRequest DBClusterMessage
describeDBClusters setOptions =
  let
    options = setOptions (DescribeDBClustersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBClusters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBClusterMessageDecoder


{-| Options for a describeDBClusters request
-}
type alias DescribeDBClustersOptions =
    { dBClusterIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of the available DB engines.</p>

__Required Parameters__



-}
describeDBEngineVersions :
    (DescribeDBEngineVersionsOptions -> DescribeDBEngineVersionsOptions)
    -> AWS.Http.UnsignedRequest DBEngineVersionMessage
describeDBEngineVersions setOptions =
  let
    options = setOptions (DescribeDBEngineVersionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBEngineVersions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBEngineVersionMessageDecoder


{-| Options for a describeDBEngineVersions request
-}
type alias DescribeDBEngineVersionsOptions =
    { engine : Maybe String
    , engineVersion : Maybe String
    , dBParameterGroupFamily : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , defaultOnly : Maybe Bool
    , listSupportedCharacterSets : Maybe Bool
    , listSupportedTimezones : Maybe Bool
    }



{-| <p>Returns information about provisioned RDS instances. This API supports pagination.</p>

__Required Parameters__



-}
describeDBInstances :
    (DescribeDBInstancesOptions -> DescribeDBInstancesOptions)
    -> AWS.Http.UnsignedRequest DBInstanceMessage
describeDBInstances setOptions =
  let
    options = setOptions (DescribeDBInstancesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBInstanceMessageDecoder


{-| Options for a describeDBInstances request
-}
type alias DescribeDBInstancesOptions =
    { dBInstanceIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of DB log files for the DB instance.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}
describeDBLogFiles :
    String
    -> (DescribeDBLogFilesOptions -> DescribeDBLogFilesOptions)
    -> AWS.Http.UnsignedRequest DescribeDBLogFilesResponse
describeDBLogFiles dBInstanceIdentifier setOptions =
  let
    options = setOptions (DescribeDBLogFilesOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBLogFiles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDBLogFilesResponseDecoder


{-| Options for a describeDBLogFiles request
-}
type alias DescribeDBLogFilesOptions =
    { filenameContains : Maybe String
    , fileLastWritten : Maybe Int
    , fileSize : Maybe Int
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p> Returns a list of <code>DBParameterGroup</code> descriptions. If a <code>DBParameterGroupName</code> is specified, the list will contain only the description of the specified DB parameter group. </p>

__Required Parameters__



-}
describeDBParameterGroups :
    (DescribeDBParameterGroupsOptions -> DescribeDBParameterGroupsOptions)
    -> AWS.Http.UnsignedRequest DBParameterGroupsMessage
describeDBParameterGroups setOptions =
  let
    options = setOptions (DescribeDBParameterGroupsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBParameterGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBParameterGroupsMessageDecoder


{-| Options for a describeDBParameterGroups request
-}
type alias DescribeDBParameterGroupsOptions =
    { dBParameterGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the detailed parameter list for a particular DB parameter group.</p>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`


-}
describeDBParameters :
    String
    -> (DescribeDBParametersOptions -> DescribeDBParametersOptions)
    -> AWS.Http.UnsignedRequest DBParameterGroupDetails
describeDBParameters dBParameterGroupName setOptions =
  let
    options = setOptions (DescribeDBParametersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBParameterGroupDetailsDecoder


{-| Options for a describeDBParameters request
-}
type alias DescribeDBParametersOptions =
    { source : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p> Returns a list of <code>DBSecurityGroup</code> descriptions. If a <code>DBSecurityGroupName</code> is specified, the list will contain only the descriptions of the specified DB security group. </p>

__Required Parameters__



-}
describeDBSecurityGroups :
    (DescribeDBSecurityGroupsOptions -> DescribeDBSecurityGroupsOptions)
    -> AWS.Http.UnsignedRequest DBSecurityGroupMessage
describeDBSecurityGroups setOptions =
  let
    options = setOptions (DescribeDBSecurityGroupsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBSecurityGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBSecurityGroupMessageDecoder


{-| Options for a describeDBSecurityGroups request
-}
type alias DescribeDBSecurityGroupsOptions =
    { dBSecurityGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of DB snapshot attribute names and values for a manual DB snapshot.</p> <p>When sharing snapshots with other AWS accounts, <code>DescribeDBSnapshotAttributes</code> returns the <code>restore</code> attribute and a list of IDs for the AWS accounts that are authorized to copy or restore the manual DB snapshot. If <code>all</code> is included in the list of values for the <code>restore</code> attribute, then the manual DB snapshot is public and can be copied or restored by all AWS accounts.</p> <p>To add or remove access for an AWS account to copy or restore a manual DB snapshot, or to make the manual DB snapshot public or private, use the <a>ModifyDBSnapshotAttribute</a> API action.</p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`


-}
describeDBSnapshotAttributes :
    String
    -> AWS.Http.UnsignedRequest DescribeDBSnapshotAttributesResult
describeDBSnapshotAttributes dBSnapshotIdentifier =
    AWS.Http.unsignedRequest
        "DescribeDBSnapshotAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDBSnapshotAttributesResultDecoder



{-| <p>Returns information about DB snapshots. This API action supports pagination.</p>

__Required Parameters__



-}
describeDBSnapshots :
    (DescribeDBSnapshotsOptions -> DescribeDBSnapshotsOptions)
    -> AWS.Http.UnsignedRequest DBSnapshotMessage
describeDBSnapshots setOptions =
  let
    options = setOptions (DescribeDBSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBSnapshots"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBSnapshotMessageDecoder


{-| Options for a describeDBSnapshots request
-}
type alias DescribeDBSnapshotsOptions =
    { dBInstanceIdentifier : Maybe String
    , dBSnapshotIdentifier : Maybe String
    , snapshotType : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    , includeShared : Maybe Bool
    , includePublic : Maybe Bool
    }



{-| <p>Returns a list of DBSubnetGroup descriptions. If a DBSubnetGroupName is specified, the list will contain only the descriptions of the specified DBSubnetGroup.</p> <p>For an overview of CIDR ranges, go to the <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Wikipedia Tutorial</a>. </p>

__Required Parameters__



-}
describeDBSubnetGroups :
    (DescribeDBSubnetGroupsOptions -> DescribeDBSubnetGroupsOptions)
    -> AWS.Http.UnsignedRequest DBSubnetGroupMessage
describeDBSubnetGroups setOptions =
  let
    options = setOptions (DescribeDBSubnetGroupsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDBSubnetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBSubnetGroupMessageDecoder


{-| Options for a describeDBSubnetGroups request
-}
type alias DescribeDBSubnetGroupsOptions =
    { dBSubnetGroupName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the default engine and system parameter information for the cluster database engine.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBParameterGroupFamily` __:__ `String`


-}
describeEngineDefaultClusterParameters :
    String
    -> (DescribeEngineDefaultClusterParametersOptions -> DescribeEngineDefaultClusterParametersOptions)
    -> AWS.Http.UnsignedRequest DescribeEngineDefaultClusterParametersResult
describeEngineDefaultClusterParameters dBParameterGroupFamily setOptions =
  let
    options = setOptions (DescribeEngineDefaultClusterParametersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEngineDefaultClusterParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEngineDefaultClusterParametersResultDecoder


{-| Options for a describeEngineDefaultClusterParameters request
-}
type alias DescribeEngineDefaultClusterParametersOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the default engine and system parameter information for the specified database engine.</p>

__Required Parameters__

* `dBParameterGroupFamily` __:__ `String`


-}
describeEngineDefaultParameters :
    String
    -> (DescribeEngineDefaultParametersOptions -> DescribeEngineDefaultParametersOptions)
    -> AWS.Http.UnsignedRequest DescribeEngineDefaultParametersResult
describeEngineDefaultParameters dBParameterGroupFamily setOptions =
  let
    options = setOptions (DescribeEngineDefaultParametersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEngineDefaultParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEngineDefaultParametersResultDecoder


{-| Options for a describeEngineDefaultParameters request
-}
type alias DescribeEngineDefaultParametersOptions =
    { filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Displays a list of categories for all event source types, or, if specified, for a specified source type. You can see a list of the event categories and source types in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html"> Events</a> topic in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__



-}
describeEventCategories :
    (DescribeEventCategoriesOptions -> DescribeEventCategoriesOptions)
    -> AWS.Http.UnsignedRequest EventCategoriesMessage
describeEventCategories setOptions =
  let
    options = setOptions (DescribeEventCategoriesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventCategories"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventCategoriesMessageDecoder


{-| Options for a describeEventCategories request
-}
type alias DescribeEventCategoriesOptions =
    { sourceType : Maybe String
    , filters : Maybe (List Filter)
    }



{-| <p>Lists all the subscription descriptions for a customer account. The description for a subscription includes SubscriptionName, SNSTopicARN, CustomerID, SourceType, SourceID, CreationTime, and Status.</p> <p>If you specify a SubscriptionName, lists the description for that subscription.</p>

__Required Parameters__



-}
describeEventSubscriptions :
    (DescribeEventSubscriptionsOptions -> DescribeEventSubscriptionsOptions)
    -> AWS.Http.UnsignedRequest EventSubscriptionsMessage
describeEventSubscriptions setOptions =
  let
    options = setOptions (DescribeEventSubscriptionsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventSubscriptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventSubscriptionsMessageDecoder


{-| Options for a describeEventSubscriptions request
-}
type alias DescribeEventSubscriptionsOptions =
    { subscriptionName : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days. Events specific to a particular DB instance, DB security group, database snapshot, or DB parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.</p>

__Required Parameters__



-}
describeEvents :
    (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Http.UnsignedRequest EventsMessage
describeEvents setOptions =
  let
    options = setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventsMessageDecoder


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , startTime : Maybe Date
    , endTime : Maybe Date
    , duration : Maybe Int
    , eventCategories : Maybe (List String)
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Describes all available options.</p>

__Required Parameters__

* `engineName` __:__ `String`


-}
describeOptionGroupOptions :
    String
    -> (DescribeOptionGroupOptionsOptions -> DescribeOptionGroupOptionsOptions)
    -> AWS.Http.UnsignedRequest OptionGroupOptionsMessage
describeOptionGroupOptions engineName setOptions =
  let
    options = setOptions (DescribeOptionGroupOptionsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeOptionGroupOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        optionGroupOptionsMessageDecoder


{-| Options for a describeOptionGroupOptions request
-}
type alias DescribeOptionGroupOptionsOptions =
    { majorEngineVersion : Maybe String
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Describes the available option groups.</p>

__Required Parameters__



-}
describeOptionGroups :
    (DescribeOptionGroupsOptions -> DescribeOptionGroupsOptions)
    -> AWS.Http.UnsignedRequest OptionGroups
describeOptionGroups setOptions =
  let
    options = setOptions (DescribeOptionGroupsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeOptionGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        optionGroupsDecoder


{-| Options for a describeOptionGroups request
-}
type alias DescribeOptionGroupsOptions =
    { optionGroupName : Maybe String
    , filters : Maybe (List Filter)
    , marker : Maybe String
    , maxRecords : Maybe Int
    , engineName : Maybe String
    , majorEngineVersion : Maybe String
    }



{-| <p>Returns a list of orderable DB instance options for the specified engine.</p>

__Required Parameters__

* `engine` __:__ `String`


-}
describeOrderableDBInstanceOptions :
    String
    -> (DescribeOrderableDBInstanceOptionsOptions -> DescribeOrderableDBInstanceOptionsOptions)
    -> AWS.Http.UnsignedRequest OrderableDBInstanceOptionsMessage
describeOrderableDBInstanceOptions engine setOptions =
  let
    options = setOptions (DescribeOrderableDBInstanceOptionsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeOrderableDBInstanceOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        orderableDBInstanceOptionsMessageDecoder


{-| Options for a describeOrderableDBInstanceOptions request
-}
type alias DescribeOrderableDBInstanceOptionsOptions =
    { engineVersion : Maybe String
    , dBInstanceClass : Maybe String
    , licenseModel : Maybe String
    , vpc : Maybe Bool
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of resources (for example, DB instances) that have at least one pending maintenance action.</p>

__Required Parameters__



-}
describePendingMaintenanceActions :
    (DescribePendingMaintenanceActionsOptions -> DescribePendingMaintenanceActionsOptions)
    -> AWS.Http.UnsignedRequest PendingMaintenanceActionsMessage
describePendingMaintenanceActions setOptions =
  let
    options = setOptions (DescribePendingMaintenanceActionsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePendingMaintenanceActions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        pendingMaintenanceActionsMessageDecoder


{-| Options for a describePendingMaintenanceActions request
-}
type alias DescribePendingMaintenanceActionsOptions =
    { resourceIdentifier : Maybe String
    , filters : Maybe (List Filter)
    , marker : Maybe String
    , maxRecords : Maybe Int
    }



{-| <p>Returns information about reserved DB instances for this account, or about a specified reserved DB instance.</p>

__Required Parameters__



-}
describeReservedDBInstances :
    (DescribeReservedDBInstancesOptions -> DescribeReservedDBInstancesOptions)
    -> AWS.Http.UnsignedRequest ReservedDBInstanceMessage
describeReservedDBInstances setOptions =
  let
    options = setOptions (DescribeReservedDBInstancesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedDBInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reservedDBInstanceMessageDecoder


{-| Options for a describeReservedDBInstances request
-}
type alias DescribeReservedDBInstancesOptions =
    { reservedDBInstanceId : Maybe String
    , reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Lists available reserved DB instance offerings.</p>

__Required Parameters__



-}
describeReservedDBInstancesOfferings :
    (DescribeReservedDBInstancesOfferingsOptions -> DescribeReservedDBInstancesOfferingsOptions)
    -> AWS.Http.UnsignedRequest ReservedDBInstancesOfferingMessage
describeReservedDBInstancesOfferings setOptions =
  let
    options = setOptions (DescribeReservedDBInstancesOfferingsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedDBInstancesOfferings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reservedDBInstancesOfferingMessageDecoder


{-| Options for a describeReservedDBInstancesOfferings request
-}
type alias DescribeReservedDBInstancesOfferingsOptions =
    { reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , duration : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , filters : Maybe (List Filter)
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of the source AWS regions where the current AWS region can create a Read Replica or copy a DB snapshot from. This API action supports pagination.</p>

__Required Parameters__



-}
describeSourceRegions :
    (DescribeSourceRegionsOptions -> DescribeSourceRegionsOptions)
    -> AWS.Http.UnsignedRequest SourceRegionMessage
describeSourceRegions setOptions =
  let
    options = setOptions (DescribeSourceRegionsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSourceRegions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sourceRegionMessageDecoder


{-| Options for a describeSourceRegions request
-}
type alias DescribeSourceRegionsOptions =
    { regionName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , filters : Maybe (List Filter)
    }



{-| <p>Downloads all or a portion of the specified log file, up to 1 MB in size.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `logFileName` __:__ `String`


-}
downloadDBLogFilePortion :
    String
    -> String
    -> (DownloadDBLogFilePortionOptions -> DownloadDBLogFilePortionOptions)
    -> AWS.Http.UnsignedRequest DownloadDBLogFilePortionDetails
downloadDBLogFilePortion dBInstanceIdentifier logFileName setOptions =
  let
    options = setOptions (DownloadDBLogFilePortionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DownloadDBLogFilePortion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        downloadDBLogFilePortionDetailsDecoder


{-| Options for a downloadDBLogFilePortion request
-}
type alias DownloadDBLogFilePortionOptions =
    { marker : Maybe String
    , numberOfLines : Maybe Int
    }



{-| <p>Forces a failover for a DB cluster.</p> <p>A failover for a DB cluster promotes one of the Aurora Replicas (read-only instances) in the DB cluster to be the primary instance (the cluster writer).</p> <p>Amazon Aurora will automatically fail over to an Aurora Replica, if one exists, when the primary instance fails. You can force a failover when you want to simulate a failure of a primary instance for testing. Because each instance in a DB cluster has its own endpoint address, you will need to clean up and re-establish any existing connections that use those endpoint addresses when the failover is complete.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__



-}
failoverDBCluster :
    (FailoverDBClusterOptions -> FailoverDBClusterOptions)
    -> AWS.Http.UnsignedRequest FailoverDBClusterResult
failoverDBCluster setOptions =
  let
    options = setOptions (FailoverDBClusterOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "FailoverDBCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        failoverDBClusterResultDecoder


{-| Options for a failoverDBCluster request
-}
type alias FailoverDBClusterOptions =
    { dBClusterIdentifier : Maybe String
    , targetDBInstanceIdentifier : Maybe String
    }



{-| <p>Lists all tags on an Amazon RDS resource.</p> <p>For an overview on tagging an Amazon RDS resource, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging Amazon RDS Resources</a>.</p>

__Required Parameters__

* `resourceName` __:__ `String`


-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Http.UnsignedRequest TagListMessage
listTagsForResource resourceName setOptions =
  let
    options = setOptions (ListTagsForResourceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        tagListMessageDecoder


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { filters : Maybe (List Filter)
    }



{-| <p>Modify a setting for an Amazon Aurora DB cluster. You can change one or more database configuration parameters by specifying these parameters and the new values in the request. For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}
modifyDBCluster :
    String
    -> (ModifyDBClusterOptions -> ModifyDBClusterOptions)
    -> AWS.Http.UnsignedRequest ModifyDBClusterResult
modifyDBCluster dBClusterIdentifier setOptions =
  let
    options = setOptions (ModifyDBClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyDBCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyDBClusterResultDecoder


{-| Options for a modifyDBCluster request
-}
type alias ModifyDBClusterOptions =
    { newDBClusterIdentifier : Maybe String
    , applyImmediately : Maybe Bool
    , backupRetentionPeriod : Maybe Int
    , dBClusterParameterGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , port_ : Maybe Int
    , masterUserPassword : Maybe String
    , optionGroupName : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    }



{-| <p> Modifies the parameters of a DB cluster parameter group. To modify more than one parameter, submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request. </p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p> <note> <p>Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB cluster associated with the parameter group before the change can take effect.</p> </note> <important> <p>After you create a DB cluster parameter group, you should wait at least 5 minutes before creating your first DB cluster that uses that DB cluster parameter group as the default parameter group. This allows Amazon RDS to fully complete the create action before the parameter group is used as the default for a new DB cluster. This is especially important for parameters that are critical when creating the default database for a DB cluster, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <a>DescribeDBClusterParameters</a> command to verify that your DB cluster parameter group has been created or modified.</p> </important>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`
* `parameters` __:__ `(List Parameter)`


-}
modifyDBClusterParameterGroup :
    String
    -> (List Parameter)
    -> AWS.Http.UnsignedRequest DBClusterParameterGroupNameMessage
modifyDBClusterParameterGroup dBClusterParameterGroupName parameters =
    AWS.Http.unsignedRequest
        "ModifyDBClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBClusterParameterGroupNameMessageDecoder



{-| <p>Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot.</p> <p>To share a manual DB cluster snapshot with other AWS accounts, specify <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB cluster snapshot. Use the value <code>all</code> to make the manual DB cluster snapshot public, which means that it can be copied or restored by all AWS accounts. Do not add the <code>all</code> value for any manual DB cluster snapshots that contain private information that you don't want available to all AWS accounts.</p> <p>To view which AWS accounts have access to copy or restore a manual DB cluster snapshot, or whether a manual DB cluster snapshot public or private, use the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p> <p>If a manual DB cluster snapshot is encrypted, it cannot be shared.</p>

__Required Parameters__

* `dBClusterSnapshotIdentifier` __:__ `String`
* `attributeName` __:__ `String`


-}
modifyDBClusterSnapshotAttribute :
    String
    -> String
    -> (ModifyDBClusterSnapshotAttributeOptions -> ModifyDBClusterSnapshotAttributeOptions)
    -> AWS.Http.UnsignedRequest ModifyDBClusterSnapshotAttributeResult
modifyDBClusterSnapshotAttribute dBClusterSnapshotIdentifier attributeName setOptions =
  let
    options = setOptions (ModifyDBClusterSnapshotAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyDBClusterSnapshotAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyDBClusterSnapshotAttributeResultDecoder


{-| Options for a modifyDBClusterSnapshotAttribute request
-}
type alias ModifyDBClusterSnapshotAttributeOptions =
    { valuesToAdd : Maybe (List String)
    , valuesToRemove : Maybe (List String)
    }



{-| <p>Modifies settings for a DB instance. You can change one or more database configuration parameters by specifying these parameters and the new values in the request.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}
modifyDBInstance :
    String
    -> (ModifyDBInstanceOptions -> ModifyDBInstanceOptions)
    -> AWS.Http.UnsignedRequest ModifyDBInstanceResult
modifyDBInstance dBInstanceIdentifier setOptions =
  let
    options = setOptions (ModifyDBInstanceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyDBInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyDBInstanceResultDecoder


{-| Options for a modifyDBInstance request
-}
type alias ModifyDBInstanceOptions =
    { allocatedStorage : Maybe Int
    , dBInstanceClass : Maybe String
    , dBSubnetGroupName : Maybe String
    , dBSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , applyImmediately : Maybe Bool
    , masterUserPassword : Maybe String
    , dBParameterGroupName : Maybe String
    , backupRetentionPeriod : Maybe Int
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , allowMajorVersionUpgrade : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , newDBInstanceIdentifier : Maybe String
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , cACertificateIdentifier : Maybe String
    , domain : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , dBPortNumber : Maybe Int
    , publiclyAccessible : Maybe Bool
    , monitoringRoleArn : Maybe String
    , domainIAMRoleName : Maybe String
    , promotionTier : Maybe Int
    }



{-| <p> Modifies the parameters of a DB parameter group. To modify more than one parameter, submit a list of the following: <code>ParameterName</code>, <code>ParameterValue</code>, and <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single request. </p> <note> <p>Changes to dynamic parameters are applied immediately. Changes to static parameters require a reboot without failover to the DB instance associated with the parameter group before the change can take effect.</p> </note> <important> <p>After you modify a DB parameter group, you should wait at least 5 minutes before creating your first DB instance that uses that DB parameter group as the default parameter group. This allows Amazon RDS to fully complete the modify action before the parameter group is used as the default for a new DB instance. This is especially important for parameters that are critical when creating the default database for a DB instance, such as the character set for the default database defined by the <code>character_set_database</code> parameter. You can use the <i>Parameter Groups</i> option of the <a href="https://console.aws.amazon.com/rds/">Amazon RDS console</a> or the <i>DescribeDBParameters</i> command to verify that your DB parameter group has been created or modified.</p> </important>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`
* `parameters` __:__ `(List Parameter)`


-}
modifyDBParameterGroup :
    String
    -> (List Parameter)
    -> AWS.Http.UnsignedRequest DBParameterGroupNameMessage
modifyDBParameterGroup dBParameterGroupName parameters =
    AWS.Http.unsignedRequest
        "ModifyDBParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBParameterGroupNameMessageDecoder



{-| <p>Updates a manual DB snapshot, which can be encrypted or not encrypted, with a new engine version. You can update the engine version to either a new major or minor engine version. </p> <p>Amazon RDS supports upgrading a MySQL DB snapshot from MySQL 5.1 to MySQL 5.5.</p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`


-}
modifyDBSnapshot :
    String
    -> (ModifyDBSnapshotOptions -> ModifyDBSnapshotOptions)
    -> AWS.Http.UnsignedRequest ModifyDBSnapshotResult
modifyDBSnapshot dBSnapshotIdentifier setOptions =
  let
    options = setOptions (ModifyDBSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyDBSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyDBSnapshotResultDecoder


{-| Options for a modifyDBSnapshot request
-}
type alias ModifyDBSnapshotOptions =
    { engineVersion : Maybe String
    }



{-| <p>Adds an attribute and values to, or removes an attribute and values from, a manual DB snapshot.</p> <p>To share a manual DB snapshot with other AWS accounts, specify <code>restore</code> as the <code>AttributeName</code> and use the <code>ValuesToAdd</code> parameter to add a list of IDs of the AWS accounts that are authorized to restore the manual DB snapshot. Uses the value <code>all</code> to make the manual DB snapshot public, which means it can be copied or restored by all AWS accounts. Do not add the <code>all</code> value for any manual DB snapshots that contain private information that you don't want available to all AWS accounts.</p> <p>To view which AWS accounts have access to copy or restore a manual DB snapshot, or whether a manual DB snapshot public or private, use the <a>DescribeDBSnapshotAttributes</a> API action.</p> <p>If the manual DB snapshot is encrypted, it cannot be shared.</p>

__Required Parameters__

* `dBSnapshotIdentifier` __:__ `String`
* `attributeName` __:__ `String`


-}
modifyDBSnapshotAttribute :
    String
    -> String
    -> (ModifyDBSnapshotAttributeOptions -> ModifyDBSnapshotAttributeOptions)
    -> AWS.Http.UnsignedRequest ModifyDBSnapshotAttributeResult
modifyDBSnapshotAttribute dBSnapshotIdentifier attributeName setOptions =
  let
    options = setOptions (ModifyDBSnapshotAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyDBSnapshotAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyDBSnapshotAttributeResultDecoder


{-| Options for a modifyDBSnapshotAttribute request
-}
type alias ModifyDBSnapshotAttributeOptions =
    { valuesToAdd : Maybe (List String)
    , valuesToRemove : Maybe (List String)
    }



{-| <p>Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the region.</p>

__Required Parameters__

* `dBSubnetGroupName` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}
modifyDBSubnetGroup :
    String
    -> (List String)
    -> (ModifyDBSubnetGroupOptions -> ModifyDBSubnetGroupOptions)
    -> AWS.Http.UnsignedRequest ModifyDBSubnetGroupResult
modifyDBSubnetGroup dBSubnetGroupName subnetIds setOptions =
  let
    options = setOptions (ModifyDBSubnetGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyDBSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyDBSubnetGroupResultDecoder


{-| Options for a modifyDBSubnetGroup request
-}
type alias ModifyDBSubnetGroupOptions =
    { dBSubnetGroupDescription : Maybe String
    }



{-| <p>Modifies an existing RDS event notification subscription. Note that you cannot modify the source identifiers using this call; to change source identifiers for a subscription, use the <a>AddSourceIdentifierToSubscription</a> and <a>RemoveSourceIdentifierFromSubscription</a> calls.</p> <p>You can see a list of the event categories for a given SourceType in the <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html">Events</a> topic in the Amazon RDS User Guide or by using the <b>DescribeEventCategories</b> action.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`


-}
modifyEventSubscription :
    String
    -> (ModifyEventSubscriptionOptions -> ModifyEventSubscriptionOptions)
    -> AWS.Http.UnsignedRequest ModifyEventSubscriptionResult
modifyEventSubscription subscriptionName setOptions =
  let
    options = setOptions (ModifyEventSubscriptionOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyEventSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyEventSubscriptionResultDecoder


{-| Options for a modifyEventSubscription request
-}
type alias ModifyEventSubscriptionOptions =
    { snsTopicArn : Maybe String
    , sourceType : Maybe String
    , eventCategories : Maybe (List String)
    , enabled : Maybe Bool
    }



{-| <p>Modifies an existing option group.</p>

__Required Parameters__

* `optionGroupName` __:__ `String`


-}
modifyOptionGroup :
    String
    -> (ModifyOptionGroupOptions -> ModifyOptionGroupOptions)
    -> AWS.Http.UnsignedRequest ModifyOptionGroupResult
modifyOptionGroup optionGroupName setOptions =
  let
    options = setOptions (ModifyOptionGroupOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyOptionGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyOptionGroupResultDecoder


{-| Options for a modifyOptionGroup request
-}
type alias ModifyOptionGroupOptions =
    { optionsToInclude : Maybe (List OptionConfiguration)
    , optionsToRemove : Maybe (List String)
    , applyImmediately : Maybe Bool
    }



{-| <p>Promotes a Read Replica DB instance to a standalone DB instance.</p> <note> <p>We recommend that you enable automated backups on your Read Replica before promoting the Read Replica. This ensures that no backup is taken during the promotion process. Once the instance is promoted to a primary instance, backups are taken based on your backup settings.</p> </note>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}
promoteReadReplica :
    String
    -> (PromoteReadReplicaOptions -> PromoteReadReplicaOptions)
    -> AWS.Http.UnsignedRequest PromoteReadReplicaResult
promoteReadReplica dBInstanceIdentifier setOptions =
  let
    options = setOptions (PromoteReadReplicaOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PromoteReadReplica"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        promoteReadReplicaResultDecoder


{-| Options for a promoteReadReplica request
-}
type alias PromoteReadReplicaOptions =
    { backupRetentionPeriod : Maybe Int
    , preferredBackupWindow : Maybe String
    }



{-| <p>Promotes a Read Replica DB cluster to a standalone DB cluster.</p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`


-}
promoteReadReplicaDBCluster :
    String
    -> AWS.Http.UnsignedRequest PromoteReadReplicaDBClusterResult
promoteReadReplicaDBCluster dBClusterIdentifier =
    AWS.Http.unsignedRequest
        "PromoteReadReplicaDBCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        promoteReadReplicaDBClusterResultDecoder



{-| <p>Purchases a reserved DB instance offering.</p>

__Required Parameters__

* `reservedDBInstancesOfferingId` __:__ `String`


-}
purchaseReservedDBInstancesOffering :
    String
    -> (PurchaseReservedDBInstancesOfferingOptions -> PurchaseReservedDBInstancesOfferingOptions)
    -> AWS.Http.UnsignedRequest PurchaseReservedDBInstancesOfferingResult
purchaseReservedDBInstancesOffering reservedDBInstancesOfferingId setOptions =
  let
    options = setOptions (PurchaseReservedDBInstancesOfferingOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PurchaseReservedDBInstancesOffering"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseReservedDBInstancesOfferingResultDecoder


{-| Options for a purchaseReservedDBInstancesOffering request
-}
type alias PurchaseReservedDBInstancesOfferingOptions =
    { reservedDBInstanceId : Maybe String
    , dBInstanceCount : Maybe Int
    , tags : Maybe (List Tag)
    }



{-| <p>Rebooting a DB instance restarts the database engine service. A reboot also applies to the DB instance any modifications to the associated DB parameter group that were pending. Rebooting a DB instance results in a momentary outage of the instance, during which the DB instance status is set to rebooting. If the RDS instance is configured for MultiAZ, it is possible that the reboot will be conducted through a failover. An Amazon RDS event is created when the reboot is completed.</p> <p>If your DB instance is deployed in multiple Availability Zones, you can force a failover from one AZ to the other during the reboot. You might force a failover to test the availability of your DB instance deployment or to restore operations to the original AZ after a failover occurs.</p> <p>The time required to reboot is a function of the specific database engine's crash recovery process. To improve the reboot time, we recommend that you reduce database activities as much as possible during the reboot process to reduce rollback activity for in-transit transactions.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`


-}
rebootDBInstance :
    String
    -> (RebootDBInstanceOptions -> RebootDBInstanceOptions)
    -> AWS.Http.UnsignedRequest RebootDBInstanceResult
rebootDBInstance dBInstanceIdentifier setOptions =
  let
    options = setOptions (RebootDBInstanceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RebootDBInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rebootDBInstanceResultDecoder


{-| Options for a rebootDBInstance request
-}
type alias RebootDBInstanceOptions =
    { forceFailover : Maybe Bool
    }



{-| <p>Disassociates an Identity and Access Management (IAM) role from an Aurora DB cluster. For more information, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Aurora.Authorizing.AWSServices.html">Authorizing Amazon Aurora to Access Other AWS Services On Your Behalf</a>.</p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `roleArn` __:__ `String`


-}
removeRoleFromDBCluster :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
removeRoleFromDBCluster dBClusterIdentifier roleArn =
    AWS.Http.unsignedRequest
        "RemoveRoleFromDBCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Removes a source identifier from an existing RDS event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`
* `sourceIdentifier` __:__ `String`


-}
removeSourceIdentifierFromSubscription :
    String
    -> String
    -> AWS.Http.UnsignedRequest RemoveSourceIdentifierFromSubscriptionResult
removeSourceIdentifierFromSubscription subscriptionName sourceIdentifier =
    AWS.Http.unsignedRequest
        "RemoveSourceIdentifierFromSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeSourceIdentifierFromSubscriptionResultDecoder



{-| <p>Removes metadata tags from an Amazon RDS resource.</p> <p>For an overview on tagging an Amazon RDS resource, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Tagging.html">Tagging Amazon RDS Resources</a>.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTagsFromResource :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest ()
removeTagsFromResource resourceName tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTagsFromResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p> Modifies the parameters of a DB cluster parameter group to the default value. To reset specific parameters submit a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. To reset the entire DB cluster parameter group, specify the <code>DBClusterParameterGroupName</code> and <code>ResetAllParameters</code> parameters. </p> <p> When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to <code>pending-reboot</code> to take effect on the next DB instance restart or <a>RebootDBInstance</a> request. You must call <a>RebootDBInstance</a> for every DB instance in your DB cluster that you want the updated static parameter to apply to.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterParameterGroupName` __:__ `String`


-}
resetDBClusterParameterGroup :
    String
    -> (ResetDBClusterParameterGroupOptions -> ResetDBClusterParameterGroupOptions)
    -> AWS.Http.UnsignedRequest DBClusterParameterGroupNameMessage
resetDBClusterParameterGroup dBClusterParameterGroupName setOptions =
  let
    options = setOptions (ResetDBClusterParameterGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetDBClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBClusterParameterGroupNameMessageDecoder


{-| Options for a resetDBClusterParameterGroup request
-}
type alias ResetDBClusterParameterGroupOptions =
    { resetAllParameters : Maybe Bool
    , parameters : Maybe (List Parameter)
    }



{-| <p> Modifies the parameters of a DB parameter group to the engine/system default value. To reset specific parameters submit a list of the following: <code>ParameterName</code> and <code>ApplyMethod</code>. To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and <code>ResetAllParameters</code> parameters. When resetting the entire group, dynamic parameters are updated immediately and static parameters are set to <code>pending-reboot</code> to take effect on the next DB instance restart or <code>RebootDBInstance</code> request. </p>

__Required Parameters__

* `dBParameterGroupName` __:__ `String`


-}
resetDBParameterGroup :
    String
    -> (ResetDBParameterGroupOptions -> ResetDBParameterGroupOptions)
    -> AWS.Http.UnsignedRequest DBParameterGroupNameMessage
resetDBParameterGroup dBParameterGroupName setOptions =
  let
    options = setOptions (ResetDBParameterGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetDBParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        dBParameterGroupNameMessageDecoder


{-| Options for a resetDBParameterGroup request
-}
type alias ResetDBParameterGroupOptions =
    { resetAllParameters : Maybe Bool
    , parameters : Maybe (List Parameter)
    }



{-| <p>Creates an Amazon Aurora DB cluster from data stored in an Amazon S3 bucket. Amazon RDS must be authorized to access the Amazon S3 bucket and the data must be created using the Percona XtraBackup utility as described in <a href="AmazonRDS/latest/UserGuide/Aurora.Migrate.MySQL.html#Aurora.Migrate.MySQL.S3">Migrating Data from MySQL by Using an Amazon S3 Bucket</a>.</p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `engine` __:__ `String`
* `masterUsername` __:__ `String`
* `masterUserPassword` __:__ `String`
* `sourceEngine` __:__ `String`
* `sourceEngineVersion` __:__ `String`
* `s3BucketName` __:__ `String`
* `s3IngestionRoleArn` __:__ `String`


-}
restoreDBClusterFromS3 :
    String
    -> String
    -> String
    -> String
    -> String
    -> String
    -> String
    -> String
    -> (RestoreDBClusterFromS3Options -> RestoreDBClusterFromS3Options)
    -> AWS.Http.UnsignedRequest RestoreDBClusterFromS3Result
restoreDBClusterFromS3 dBClusterIdentifier engine masterUsername masterUserPassword sourceEngine sourceEngineVersion s3BucketName s3IngestionRoleArn setOptions =
  let
    options = setOptions (RestoreDBClusterFromS3Options Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreDBClusterFromS3"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreDBClusterFromS3ResultDecoder


{-| Options for a restoreDBClusterFromS3 request
-}
type alias RestoreDBClusterFromS3Options =
    { availabilityZones : Maybe (List String)
    , backupRetentionPeriod : Maybe Int
    , characterSetName : Maybe String
    , databaseName : Maybe String
    , dBClusterParameterGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , dBSubnetGroupName : Maybe String
    , engineVersion : Maybe String
    , port_ : Maybe Int
    , optionGroupName : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , tags : Maybe (List Tag)
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , s3Prefix : Maybe String
    }



{-| <p>Creates a new DB cluster from a DB cluster snapshot. The target DB cluster is created from the source DB cluster restore point with the same configuration as the original source DB cluster, except that the new DB cluster is created with the default security group.</p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `snapshotIdentifier` __:__ `String`
* `engine` __:__ `String`


-}
restoreDBClusterFromSnapshot :
    String
    -> String
    -> String
    -> (RestoreDBClusterFromSnapshotOptions -> RestoreDBClusterFromSnapshotOptions)
    -> AWS.Http.UnsignedRequest RestoreDBClusterFromSnapshotResult
restoreDBClusterFromSnapshot dBClusterIdentifier snapshotIdentifier engine setOptions =
  let
    options = setOptions (RestoreDBClusterFromSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreDBClusterFromSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreDBClusterFromSnapshotResultDecoder


{-| Options for a restoreDBClusterFromSnapshot request
-}
type alias RestoreDBClusterFromSnapshotOptions =
    { availabilityZones : Maybe (List String)
    , engineVersion : Maybe String
    , port_ : Maybe Int
    , dBSubnetGroupName : Maybe String
    , databaseName : Maybe String
    , optionGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    }



{-| <p> Restores a DB cluster to an arbitrary point in time. Users can restore to any point in time before <code>LatestRestorableTime</code> for up to <code>BackupRetentionPeriod</code> days. The target DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. </p> <p>For more information on Amazon Aurora, see <a href="http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Aurora.html">Aurora on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i> </p>

__Required Parameters__

* `dBClusterIdentifier` __:__ `String`
* `sourceDBClusterIdentifier` __:__ `String`


-}
restoreDBClusterToPointInTime :
    String
    -> String
    -> (RestoreDBClusterToPointInTimeOptions -> RestoreDBClusterToPointInTimeOptions)
    -> AWS.Http.UnsignedRequest RestoreDBClusterToPointInTimeResult
restoreDBClusterToPointInTime dBClusterIdentifier sourceDBClusterIdentifier setOptions =
  let
    options = setOptions (RestoreDBClusterToPointInTimeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreDBClusterToPointInTime"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreDBClusterToPointInTimeResultDecoder


{-| Options for a restoreDBClusterToPointInTime request
-}
type alias RestoreDBClusterToPointInTimeOptions =
    { restoreToTime : Maybe Date
    , useLatestRestorableTime : Maybe Bool
    , port_ : Maybe Int
    , dBSubnetGroupName : Maybe String
    , optionGroupName : Maybe String
    , vpcSecurityGroupIds : Maybe (List String)
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    }



{-| <p>Creates a new DB instance from a DB snapshot. The target database is created from the source database restore point with the most of original configuration with the default security group and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored AZ deployment and not a single-AZ deployment.</p> <p>If your intent is to replace your original DB instance with the new, restored DB instance, then rename your original DB instance before you call the RestoreDBInstanceFromDBSnapshot action. RDS does not allow two DB instances with the same name. Once you have renamed your original DB instance with a different identifier, then you can pass the original name of the DB instance as the DBInstanceIdentifier in the call to the RestoreDBInstanceFromDBSnapshot action. The result is that you will replace the original DB instance with the DB instance created from the snapshot.</p> <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code> must be the ARN of the shared DB snapshot.</p>

__Required Parameters__

* `dBInstanceIdentifier` __:__ `String`
* `dBSnapshotIdentifier` __:__ `String`


-}
restoreDBInstanceFromDBSnapshot :
    String
    -> String
    -> (RestoreDBInstanceFromDBSnapshotOptions -> RestoreDBInstanceFromDBSnapshotOptions)
    -> AWS.Http.UnsignedRequest RestoreDBInstanceFromDBSnapshotResult
restoreDBInstanceFromDBSnapshot dBInstanceIdentifier dBSnapshotIdentifier setOptions =
  let
    options = setOptions (RestoreDBInstanceFromDBSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreDBInstanceFromDBSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreDBInstanceFromDBSnapshotResultDecoder


{-| Options for a restoreDBInstanceFromDBSnapshot request
-}
type alias RestoreDBInstanceFromDBSnapshotOptions =
    { dBInstanceClass : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , dBSubnetGroupName : Maybe String
    , multiAZ : Maybe Bool
    , publiclyAccessible : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , dBName : Maybe String
    , engine : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , tags : Maybe (List Tag)
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , domain : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , domainIAMRoleName : Maybe String
    }



{-| <p>Restores a DB instance to an arbitrary point in time. You can restore to any point in time before the time identified by the LatestRestorableTime property. You can restore to a point up to the number of days specified by the BackupRetentionPeriod property.</p> <p>The target database is created with most of the original configuration, but in a system-selected availability zone, with the default security group, the default subnet group, and the default DB parameter group. By default, the new DB instance is created as a single-AZ deployment except when the instance is a SQL Server instance that has an option group that is associated with mirroring; in this case, the instance becomes a mirrored deployment and not a single-AZ deployment.</p>

__Required Parameters__

* `sourceDBInstanceIdentifier` __:__ `String`
* `targetDBInstanceIdentifier` __:__ `String`


-}
restoreDBInstanceToPointInTime :
    String
    -> String
    -> (RestoreDBInstanceToPointInTimeOptions -> RestoreDBInstanceToPointInTimeOptions)
    -> AWS.Http.UnsignedRequest RestoreDBInstanceToPointInTimeResult
restoreDBInstanceToPointInTime sourceDBInstanceIdentifier targetDBInstanceIdentifier setOptions =
  let
    options = setOptions (RestoreDBInstanceToPointInTimeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreDBInstanceToPointInTime"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreDBInstanceToPointInTimeResultDecoder


{-| Options for a restoreDBInstanceToPointInTime request
-}
type alias RestoreDBInstanceToPointInTimeOptions =
    { restoreTime : Maybe Date
    , useLatestRestorableTime : Maybe Bool
    , dBInstanceClass : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , dBSubnetGroupName : Maybe String
    , multiAZ : Maybe Bool
    , publiclyAccessible : Maybe Bool
    , autoMinorVersionUpgrade : Maybe Bool
    , licenseModel : Maybe String
    , dBName : Maybe String
    , engine : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , copyTagsToSnapshot : Maybe Bool
    , tags : Maybe (List Tag)
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , tdeCredentialPassword : Maybe String
    , domain : Maybe String
    , domainIAMRoleName : Maybe String
    }



{-| <p>Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or EC2 or VPC Security Groups. Required parameters for this API are one of CIDRIP, EC2SecurityGroupId for VPC, or (EC2SecurityGroupOwnerId and either EC2SecurityGroupName or EC2SecurityGroupId).</p>

__Required Parameters__

* `dBSecurityGroupName` __:__ `String`


-}
revokeDBSecurityGroupIngress :
    String
    -> (RevokeDBSecurityGroupIngressOptions -> RevokeDBSecurityGroupIngressOptions)
    -> AWS.Http.UnsignedRequest RevokeDBSecurityGroupIngressResult
revokeDBSecurityGroupIngress dBSecurityGroupName setOptions =
  let
    options = setOptions (RevokeDBSecurityGroupIngressOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RevokeDBSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        revokeDBSecurityGroupIngressResultDecoder


{-| Options for a revokeDBSecurityGroupIngress request
-}
type alias RevokeDBSecurityGroupIngressOptions =
    { cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupId : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }




{-| Type of HTTP response from accountAttribute
-}
type alias AccountAttributesMessage =
    { accountQuotas : Maybe (List AccountQuota)
    }



accountAttributesMessageDecoder : JD.Decoder AccountAttributesMessage
accountAttributesMessageDecoder =
    JDP.decode AccountAttributesMessage
        |> JDP.optional "accountQuotas" (JD.nullable (JD.list accountQuotaDecoder)) Nothing




{-| <p>Describes a quota for an AWS account, for example, the number of DB instances allowed.</p>
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




{-| Type of HTTP response from addSourceIdentifierToSubscripti
-}
type alias AddSourceIdentifierToSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



addSourceIdentifierToSubscriptionResultDecoder : JD.Decoder AddSourceIdentifierToSubscriptionResult
addSourceIdentifierToSubscriptionResultDecoder =
    JDP.decode AddSourceIdentifierToSubscriptionResult
        |> JDP.optional "eventSubscription" (JD.nullable eventSubscriptionDecoder) Nothing




{-| One of

* `ApplyMethod_immediate`
* `ApplyMethod_pending-reboot`

-}
type ApplyMethod
    = ApplyMethod_immediate
    | ApplyMethod_pending_reboot



applyMethodDecoder : JD.Decoder ApplyMethod
applyMethodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "immediate" ->
                        JD.succeed ApplyMethod_immediate

                    "pending_reboot" ->
                        JD.succeed ApplyMethod_pending_reboot


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from applyPendingMaintenanceActi
-}
type alias ApplyPendingMaintenanceActionResult =
    { resourcePendingMaintenanceActions : Maybe ResourcePendingMaintenanceActions
    }



applyPendingMaintenanceActionResultDecoder : JD.Decoder ApplyPendingMaintenanceActionResult
applyPendingMaintenanceActionResultDecoder =
    JDP.decode ApplyPendingMaintenanceActionResult
        |> JDP.optional "resourcePendingMaintenanceActions" (JD.nullable resourcePendingMaintenanceActionsDecoder) Nothing




{-| <p>The specified CIDRIP or EC2 security group is already authorized for the specified DB security group.</p>
-}
type alias AuthorizationAlreadyExistsFault =
    { 
    }



authorizationAlreadyExistsFaultDecoder : JD.Decoder AuthorizationAlreadyExistsFault
authorizationAlreadyExistsFaultDecoder =
    JDP.decode AuthorizationAlreadyExistsFault



{-| <p>Specified CIDRIP or EC2 security group is not authorized for the specified DB security group.</p> <p>RDS may not also be authorized via IAM to perform necessary actions on your behalf.</p>
-}
type alias AuthorizationNotFoundFault =
    { 
    }



authorizationNotFoundFaultDecoder : JD.Decoder AuthorizationNotFoundFault
authorizationNotFoundFaultDecoder =
    JDP.decode AuthorizationNotFoundFault



{-| <p>DB security group authorization quota has been reached.</p>
-}
type alias AuthorizationQuotaExceededFault =
    { 
    }



authorizationQuotaExceededFaultDecoder : JD.Decoder AuthorizationQuotaExceededFault
authorizationQuotaExceededFaultDecoder =
    JDP.decode AuthorizationQuotaExceededFault



{-| Type of HTTP response from authorizeDBSecurityGroupIngre
-}
type alias AuthorizeDBSecurityGroupIngressResult =
    { dBSecurityGroup : Maybe DBSecurityGroup
    }



authorizeDBSecurityGroupIngressResultDecoder : JD.Decoder AuthorizeDBSecurityGroupIngressResult
authorizeDBSecurityGroupIngressResultDecoder =
    JDP.decode AuthorizeDBSecurityGroupIngressResult
        |> JDP.optional "dBSecurityGroup" (JD.nullable dBSecurityGroupDecoder) Nothing




{-| <p>Contains Availability Zone information.</p> <p> This data type is used as an element in the following data type:</p> <ul> <li> <p> <a>OrderableDBInstanceOption</a> </p> </li> </ul>
-}
type alias AvailabilityZone =
    { name : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JDP.decode AvailabilityZone
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>A CA certificate for an AWS account.</p>
-}
type alias Certificate =
    { certificateIdentifier : Maybe String
    , certificateType : Maybe String
    , thumbprint : Maybe String
    , validFrom : Maybe Date
    , validTill : Maybe Date
    , certificateArn : Maybe String
    }



certificateDecoder : JD.Decoder Certificate
certificateDecoder =
    JDP.decode Certificate
        |> JDP.optional "certificateIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateType" (JD.nullable JD.string) Nothing
        |> JDP.optional "thumbprint" (JD.nullable JD.string) Nothing
        |> JDP.optional "validFrom" (JD.nullable JDX.date) Nothing
        |> JDP.optional "validTill" (JD.nullable JDX.date) Nothing
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from certificat
-}
type alias CertificateMessage =
    { certificates : Maybe (List Certificate)
    , marker : Maybe String
    }



certificateMessageDecoder : JD.Decoder CertificateMessage
certificateMessageDecoder =
    JDP.decode CertificateMessage
        |> JDP.optional "certificates" (JD.nullable (JD.list certificateDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p> <i>CertificateIdentifier</i> does not refer to an existing certificate. </p>
-}
type alias CertificateNotFoundFault =
    { 
    }



certificateNotFoundFaultDecoder : JD.Decoder CertificateNotFoundFault
certificateNotFoundFaultDecoder =
    JDP.decode CertificateNotFoundFault



{-| <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-}
type alias CharacterSet =
    { characterSetName : Maybe String
    , characterSetDescription : Maybe String
    }



characterSetDecoder : JD.Decoder CharacterSet
characterSetDecoder =
    JDP.decode CharacterSet
        |> JDP.optional "characterSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "characterSetDescription" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from copyDBClusterParameterGro
-}
type alias CopyDBClusterParameterGroupResult =
    { dBClusterParameterGroup : Maybe DBClusterParameterGroup
    }



copyDBClusterParameterGroupResultDecoder : JD.Decoder CopyDBClusterParameterGroupResult
copyDBClusterParameterGroupResultDecoder =
    JDP.decode CopyDBClusterParameterGroupResult
        |> JDP.optional "dBClusterParameterGroup" (JD.nullable dBClusterParameterGroupDecoder) Nothing




{-| Type of HTTP response from copyDBClusterSnapsh
-}
type alias CopyDBClusterSnapshotResult =
    { dBClusterSnapshot : Maybe DBClusterSnapshot
    }



copyDBClusterSnapshotResultDecoder : JD.Decoder CopyDBClusterSnapshotResult
copyDBClusterSnapshotResultDecoder =
    JDP.decode CopyDBClusterSnapshotResult
        |> JDP.optional "dBClusterSnapshot" (JD.nullable dBClusterSnapshotDecoder) Nothing




{-| Type of HTTP response from copyDBParameterGro
-}
type alias CopyDBParameterGroupResult =
    { dBParameterGroup : Maybe DBParameterGroup
    }



copyDBParameterGroupResultDecoder : JD.Decoder CopyDBParameterGroupResult
copyDBParameterGroupResultDecoder =
    JDP.decode CopyDBParameterGroupResult
        |> JDP.optional "dBParameterGroup" (JD.nullable dBParameterGroupDecoder) Nothing




{-| Type of HTTP response from copyDBSnapsh
-}
type alias CopyDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



copyDBSnapshotResultDecoder : JD.Decoder CopyDBSnapshotResult
copyDBSnapshotResultDecoder =
    JDP.decode CopyDBSnapshotResult
        |> JDP.optional "dBSnapshot" (JD.nullable dBSnapshotDecoder) Nothing




{-| Type of HTTP response from copyOptionGro
-}
type alias CopyOptionGroupResult =
    { optionGroup : Maybe OptionGroup
    }



copyOptionGroupResultDecoder : JD.Decoder CopyOptionGroupResult
copyOptionGroupResultDecoder =
    JDP.decode CopyOptionGroupResult
        |> JDP.optional "optionGroup" (JD.nullable optionGroupDecoder) Nothing




{-| Type of HTTP response from createDBClusterParameterGro
-}
type alias CreateDBClusterParameterGroupResult =
    { dBClusterParameterGroup : Maybe DBClusterParameterGroup
    }



createDBClusterParameterGroupResultDecoder : JD.Decoder CreateDBClusterParameterGroupResult
createDBClusterParameterGroupResultDecoder =
    JDP.decode CreateDBClusterParameterGroupResult
        |> JDP.optional "dBClusterParameterGroup" (JD.nullable dBClusterParameterGroupDecoder) Nothing




{-| Type of HTTP response from createDBClust
-}
type alias CreateDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



createDBClusterResultDecoder : JD.Decoder CreateDBClusterResult
createDBClusterResultDecoder =
    JDP.decode CreateDBClusterResult
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| Type of HTTP response from createDBClusterSnapsh
-}
type alias CreateDBClusterSnapshotResult =
    { dBClusterSnapshot : Maybe DBClusterSnapshot
    }



createDBClusterSnapshotResultDecoder : JD.Decoder CreateDBClusterSnapshotResult
createDBClusterSnapshotResultDecoder =
    JDP.decode CreateDBClusterSnapshotResult
        |> JDP.optional "dBClusterSnapshot" (JD.nullable dBClusterSnapshotDecoder) Nothing




{-| Type of HTTP response from createDBInstanceReadRepli
-}
type alias CreateDBInstanceReadReplicaResult =
    { dBInstance : Maybe DBInstance
    }



createDBInstanceReadReplicaResultDecoder : JD.Decoder CreateDBInstanceReadReplicaResult
createDBInstanceReadReplicaResultDecoder =
    JDP.decode CreateDBInstanceReadReplicaResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| Type of HTTP response from createDBInstan
-}
type alias CreateDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



createDBInstanceResultDecoder : JD.Decoder CreateDBInstanceResult
createDBInstanceResultDecoder =
    JDP.decode CreateDBInstanceResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| Type of HTTP response from createDBParameterGro
-}
type alias CreateDBParameterGroupResult =
    { dBParameterGroup : Maybe DBParameterGroup
    }



createDBParameterGroupResultDecoder : JD.Decoder CreateDBParameterGroupResult
createDBParameterGroupResultDecoder =
    JDP.decode CreateDBParameterGroupResult
        |> JDP.optional "dBParameterGroup" (JD.nullable dBParameterGroupDecoder) Nothing




{-| Type of HTTP response from createDBSecurityGro
-}
type alias CreateDBSecurityGroupResult =
    { dBSecurityGroup : Maybe DBSecurityGroup
    }



createDBSecurityGroupResultDecoder : JD.Decoder CreateDBSecurityGroupResult
createDBSecurityGroupResultDecoder =
    JDP.decode CreateDBSecurityGroupResult
        |> JDP.optional "dBSecurityGroup" (JD.nullable dBSecurityGroupDecoder) Nothing




{-| Type of HTTP response from createDBSnapsh
-}
type alias CreateDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



createDBSnapshotResultDecoder : JD.Decoder CreateDBSnapshotResult
createDBSnapshotResultDecoder =
    JDP.decode CreateDBSnapshotResult
        |> JDP.optional "dBSnapshot" (JD.nullable dBSnapshotDecoder) Nothing




{-| Type of HTTP response from createDBSubnetGro
-}
type alias CreateDBSubnetGroupResult =
    { dBSubnetGroup : Maybe DBSubnetGroup
    }



createDBSubnetGroupResultDecoder : JD.Decoder CreateDBSubnetGroupResult
createDBSubnetGroupResultDecoder =
    JDP.decode CreateDBSubnetGroupResult
        |> JDP.optional "dBSubnetGroup" (JD.nullable dBSubnetGroupDecoder) Nothing




{-| Type of HTTP response from createEventSubscripti
-}
type alias CreateEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



createEventSubscriptionResultDecoder : JD.Decoder CreateEventSubscriptionResult
createEventSubscriptionResultDecoder =
    JDP.decode CreateEventSubscriptionResult
        |> JDP.optional "eventSubscription" (JD.nullable eventSubscriptionDecoder) Nothing




{-| Type of HTTP response from createOptionGro
-}
type alias CreateOptionGroupResult =
    { optionGroup : Maybe OptionGroup
    }



createOptionGroupResultDecoder : JD.Decoder CreateOptionGroupResult
createOptionGroupResultDecoder =
    JDP.decode CreateOptionGroupResult
        |> JDP.optional "optionGroup" (JD.nullable optionGroupDecoder) Nothing




{-| <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBCluster</a> </p> </li> <li> <p> <a>DeleteDBCluster</a> </p> </li> <li> <p> <a>FailoverDBCluster</a> </p> </li> <li> <p> <a>ModifyDBCluster</a> </p> </li> <li> <p> <a>RestoreDBClusterFromSnapshot</a> </p> </li> <li> <p> <a>RestoreDBClusterToPointInTime</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>
-}
type alias DBCluster =
    { allocatedStorage : Maybe Int
    , availabilityZones : Maybe (List String)
    , backupRetentionPeriod : Maybe Int
    , characterSetName : Maybe String
    , databaseName : Maybe String
    , dBClusterIdentifier : Maybe String
    , dBClusterParameterGroup : Maybe String
    , dBSubnetGroup : Maybe String
    , status : Maybe String
    , percentProgress : Maybe String
    , earliestRestorableTime : Maybe Date
    , endpoint : Maybe String
    , readerEndpoint : Maybe String
    , multiAZ : Maybe Bool
    , engine : Maybe String
    , engineVersion : Maybe String
    , latestRestorableTime : Maybe Date
    , port_ : Maybe Int
    , masterUsername : Maybe String
    , dBClusterOptionGroupMemberships : Maybe (List DBClusterOptionGroupStatus)
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , replicationSourceIdentifier : Maybe String
    , readReplicaIdentifiers : Maybe (List String)
    , dBClusterMembers : Maybe (List DBClusterMember)
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , hostedZoneId : Maybe String
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dbClusterResourceId : Maybe String
    , dBClusterArn : Maybe String
    , associatedRoles : Maybe (List DBClusterRole)
    , clusterCreateTime : Maybe Date
    }



dBClusterDecoder : JD.Decoder DBCluster
dBClusterDecoder =
    JDP.decode DBCluster
        |> JDP.optional "allocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "backupRetentionPeriod" (JD.nullable JD.int) Nothing
        |> JDP.optional "characterSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "databaseName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterParameterGroup" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSubnetGroup" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "percentProgress" (JD.nullable JD.string) Nothing
        |> JDP.optional "earliestRestorableTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "readerEndpoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "multiAZ" (JD.nullable JD.bool) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestRestorableTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "masterUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterOptionGroupMemberships" (JD.nullable (JD.list dBClusterOptionGroupStatusDecoder)) Nothing
        |> JDP.optional "preferredBackupWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationSourceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "readReplicaIdentifiers" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "dBClusterMembers" (JD.nullable (JD.list dBClusterMemberDecoder)) Nothing
        |> JDP.optional "vpcSecurityGroups" (JD.nullable (JD.list vpcSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "hostedZoneId" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageEncrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dbClusterResourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "associatedRoles" (JD.nullable (JD.list dBClusterRoleDecoder)) Nothing
        |> JDP.optional "clusterCreateTime" (JD.nullable JDX.date) Nothing




{-| <p>User already has a DB cluster with the given identifier.</p>
-}
type alias DBClusterAlreadyExistsFault =
    { 
    }



dBClusterAlreadyExistsFaultDecoder : JD.Decoder DBClusterAlreadyExistsFault
dBClusterAlreadyExistsFaultDecoder =
    JDP.decode DBClusterAlreadyExistsFault



{-| <p>Contains information about an instance that is part of a DB cluster.</p>
-}
type alias DBClusterMember =
    { dBInstanceIdentifier : Maybe String
    , isClusterWriter : Maybe Bool
    , dBClusterParameterGroupStatus : Maybe String
    , promotionTier : Maybe Int
    }



dBClusterMemberDecoder : JD.Decoder DBClusterMember
dBClusterMemberDecoder =
    JDP.decode DBClusterMember
        |> JDP.optional "dBInstanceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "isClusterWriter" (JD.nullable JD.bool) Nothing
        |> JDP.optional "dBClusterParameterGroupStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "promotionTier" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from dBCluste
-}
type alias DBClusterMessage =
    { marker : Maybe String
    , dBClusters : Maybe (List DBCluster)
    }



dBClusterMessageDecoder : JD.Decoder DBClusterMessage
dBClusterMessageDecoder =
    JDP.decode DBClusterMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusters" (JD.nullable (JD.list dBClusterDecoder)) Nothing




{-| <p> <i>DBClusterIdentifier</i> does not refer to an existing DB cluster. </p>
-}
type alias DBClusterNotFoundFault =
    { 
    }



dBClusterNotFoundFaultDecoder : JD.Decoder DBClusterNotFoundFault
dBClusterNotFoundFaultDecoder =
    JDP.decode DBClusterNotFoundFault



{-| <p>Contains status information for a DB cluster option group.</p>
-}
type alias DBClusterOptionGroupStatus =
    { dBClusterOptionGroupName : Maybe String
    , status : Maybe String
    }



dBClusterOptionGroupStatusDecoder : JD.Decoder DBClusterOptionGroupStatus
dBClusterOptionGroupStatusDecoder =
    JDP.decode DBClusterOptionGroupStatus
        |> JDP.optional "dBClusterOptionGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Contains the result of a successful invocation of the <a>CreateDBClusterParameterGroup</a> or <a>CopyDBClusterParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBClusterParameterGroup</a> action, and as a response element in the <a>DescribeDBClusterParameterGroups</a> action. </p>
-}
type alias DBClusterParameterGroup =
    { dBClusterParameterGroupName : Maybe String
    , dBParameterGroupFamily : Maybe String
    , description : Maybe String
    , dBClusterParameterGroupArn : Maybe String
    }



dBClusterParameterGroupDecoder : JD.Decoder DBClusterParameterGroup
dBClusterParameterGroupDecoder =
    JDP.decode DBClusterParameterGroup
        |> JDP.optional "dBClusterParameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterParameterGroupArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from dBClusterParameterGrou
-}
type alias DBClusterParameterGroupDetails =
    { parameters : Maybe (List Parameter)
    , marker : Maybe String
    }



dBClusterParameterGroupDetailsDecoder : JD.Decoder DBClusterParameterGroupDetails
dBClusterParameterGroupDetailsDecoder =
    JDP.decode DBClusterParameterGroupDetails
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from dBClusterParameterGroupNam
-}
type alias DBClusterParameterGroupNameMessage =
    { dBClusterParameterGroupName : Maybe String
    }



dBClusterParameterGroupNameMessageDecoder : JD.Decoder DBClusterParameterGroupNameMessage
dBClusterParameterGroupNameMessageDecoder =
    JDP.decode DBClusterParameterGroupNameMessage
        |> JDP.optional "dBClusterParameterGroupName" (JD.nullable JD.string) Nothing




{-| <p> <i>DBClusterParameterGroupName</i> does not refer to an existing DB Cluster parameter group. </p>
-}
type alias DBClusterParameterGroupNotFoundFault =
    { 
    }



dBClusterParameterGroupNotFoundFaultDecoder : JD.Decoder DBClusterParameterGroupNotFoundFault
dBClusterParameterGroupNotFoundFaultDecoder =
    JDP.decode DBClusterParameterGroupNotFoundFault



{-| Type of HTTP response from dBClusterParameterGroup
-}
type alias DBClusterParameterGroupsMessage =
    { marker : Maybe String
    , dBClusterParameterGroups : Maybe (List DBClusterParameterGroup)
    }



dBClusterParameterGroupsMessageDecoder : JD.Decoder DBClusterParameterGroupsMessage
dBClusterParameterGroupsMessageDecoder =
    JDP.decode DBClusterParameterGroupsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterParameterGroups" (JD.nullable (JD.list dBClusterParameterGroupDecoder)) Nothing




{-| <p>User attempted to create a new DB cluster and the user has already reached the maximum allowed DB cluster quota.</p>
-}
type alias DBClusterQuotaExceededFault =
    { 
    }



dBClusterQuotaExceededFaultDecoder : JD.Decoder DBClusterQuotaExceededFault
dBClusterQuotaExceededFaultDecoder =
    JDP.decode DBClusterQuotaExceededFault



{-| <p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.</p>
-}
type alias DBClusterRole =
    { roleArn : Maybe String
    , status : Maybe String
    }



dBClusterRoleDecoder : JD.Decoder DBClusterRole
dBClusterRoleDecoder =
    JDP.decode DBClusterRole
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>The specified IAM role Amazon Resource Name (ARN) is already associated with the specified DB cluster.</p>
-}
type alias DBClusterRoleAlreadyExistsFault =
    { 
    }



dBClusterRoleAlreadyExistsFaultDecoder : JD.Decoder DBClusterRoleAlreadyExistsFault
dBClusterRoleAlreadyExistsFaultDecoder =
    JDP.decode DBClusterRoleAlreadyExistsFault



{-| <p>The specified IAM role Amazon Resource Name (ARN) is not associated with the specified DB cluster.</p>
-}
type alias DBClusterRoleNotFoundFault =
    { 
    }



dBClusterRoleNotFoundFaultDecoder : JD.Decoder DBClusterRoleNotFoundFault
dBClusterRoleNotFoundFaultDecoder =
    JDP.decode DBClusterRoleNotFoundFault



{-| <p>You have exceeded the maximum number of IAM roles that can be associated with the specified DB cluster.</p>
-}
type alias DBClusterRoleQuotaExceededFault =
    { 
    }



dBClusterRoleQuotaExceededFaultDecoder : JD.Decoder DBClusterRoleQuotaExceededFault
dBClusterRoleQuotaExceededFaultDecoder =
    JDP.decode DBClusterRoleQuotaExceededFault



{-| <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBClusterSnapshot</a> </p> </li> <li> <p> <a>DeleteDBClusterSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>
-}
type alias DBClusterSnapshot =
    { availabilityZones : Maybe (List String)
    , dBClusterSnapshotIdentifier : Maybe String
    , dBClusterIdentifier : Maybe String
    , snapshotCreateTime : Maybe Date
    , engine : Maybe String
    , allocatedStorage : Maybe Int
    , status : Maybe String
    , port_ : Maybe Int
    , vpcId : Maybe String
    , clusterCreateTime : Maybe Date
    , masterUsername : Maybe String
    , engineVersion : Maybe String
    , licenseModel : Maybe String
    , snapshotType : Maybe String
    , percentProgress : Maybe Int
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dBClusterSnapshotArn : Maybe String
    }



dBClusterSnapshotDecoder : JD.Decoder DBClusterSnapshot
dBClusterSnapshotDecoder =
    JDP.decode DBClusterSnapshot
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "dBClusterSnapshotIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "masterUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseModel" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotType" (JD.nullable JD.string) Nothing
        |> JDP.optional "percentProgress" (JD.nullable JD.int) Nothing
        |> JDP.optional "storageEncrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterSnapshotArn" (JD.nullable JD.string) Nothing




{-| <p>User already has a DB cluster snapshot with the given identifier.</p>
-}
type alias DBClusterSnapshotAlreadyExistsFault =
    { 
    }



dBClusterSnapshotAlreadyExistsFaultDecoder : JD.Decoder DBClusterSnapshotAlreadyExistsFault
dBClusterSnapshotAlreadyExistsFaultDecoder =
    JDP.decode DBClusterSnapshotAlreadyExistsFault



{-| <p>Contains the name and values of a manual DB cluster snapshot attribute.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-}
type alias DBClusterSnapshotAttribute =
    { attributeName : Maybe String
    , attributeValues : Maybe (List String)
    }



dBClusterSnapshotAttributeDecoder : JD.Decoder DBClusterSnapshotAttribute
dBClusterSnapshotAttributeDecoder =
    JDP.decode DBClusterSnapshotAttribute
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributeValues" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p> <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>
-}
type alias DBClusterSnapshotAttributesResult =
    { dBClusterSnapshotIdentifier : Maybe String
    , dBClusterSnapshotAttributes : Maybe (List DBClusterSnapshotAttribute)
    }



dBClusterSnapshotAttributesResultDecoder : JD.Decoder DBClusterSnapshotAttributesResult
dBClusterSnapshotAttributesResultDecoder =
    JDP.decode DBClusterSnapshotAttributesResult
        |> JDP.optional "dBClusterSnapshotIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterSnapshotAttributes" (JD.nullable (JD.list dBClusterSnapshotAttributeDecoder)) Nothing




{-| Type of HTTP response from dBClusterSnapsho
-}
type alias DBClusterSnapshotMessage =
    { marker : Maybe String
    , dBClusterSnapshots : Maybe (List DBClusterSnapshot)
    }



dBClusterSnapshotMessageDecoder : JD.Decoder DBClusterSnapshotMessage
dBClusterSnapshotMessageDecoder =
    JDP.decode DBClusterSnapshotMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBClusterSnapshots" (JD.nullable (JD.list dBClusterSnapshotDecoder)) Nothing




{-| <p> <i>DBClusterSnapshotIdentifier</i> does not refer to an existing DB cluster snapshot. </p>
-}
type alias DBClusterSnapshotNotFoundFault =
    { 
    }



dBClusterSnapshotNotFoundFaultDecoder : JD.Decoder DBClusterSnapshotNotFoundFault
dBClusterSnapshotNotFoundFaultDecoder =
    JDP.decode DBClusterSnapshotNotFoundFault



{-| <p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>. </p>
-}
type alias DBEngineVersion =
    { engine : Maybe String
    , engineVersion : Maybe String
    , dBParameterGroupFamily : Maybe String
    , dBEngineDescription : Maybe String
    , dBEngineVersionDescription : Maybe String
    , defaultCharacterSet : Maybe CharacterSet
    , supportedCharacterSets : Maybe (List CharacterSet)
    , validUpgradeTarget : Maybe (List UpgradeTarget)
    , supportedTimezones : Maybe (List Timezone)
    }



dBEngineVersionDecoder : JD.Decoder DBEngineVersion
dBEngineVersionDecoder =
    JDP.decode DBEngineVersion
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBEngineDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBEngineVersionDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultCharacterSet" (JD.nullable characterSetDecoder) Nothing
        |> JDP.optional "supportedCharacterSets" (JD.nullable (JD.list characterSetDecoder)) Nothing
        |> JDP.optional "validUpgradeTarget" (JD.nullable (JD.list upgradeTargetDecoder)) Nothing
        |> JDP.optional "supportedTimezones" (JD.nullable (JD.list timezoneDecoder)) Nothing




{-| Type of HTTP response from dBEngineVersio
-}
type alias DBEngineVersionMessage =
    { marker : Maybe String
    , dBEngineVersions : Maybe (List DBEngineVersion)
    }



dBEngineVersionMessageDecoder : JD.Decoder DBEngineVersionMessage
dBEngineVersionMessageDecoder =
    JDP.decode DBEngineVersionMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBEngineVersions" (JD.nullable (JD.list dBEngineVersionDecoder)) Nothing




{-| <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>
-}
type alias DBInstance =
    { dBInstanceIdentifier : Maybe String
    , dBInstanceClass : Maybe String
    , engine : Maybe String
    , dBInstanceStatus : Maybe String
    , masterUsername : Maybe String
    , dBName : Maybe String
    , endpoint : Maybe Endpoint
    , allocatedStorage : Maybe Int
    , instanceCreateTime : Maybe Date
    , preferredBackupWindow : Maybe String
    , backupRetentionPeriod : Maybe Int
    , dBSecurityGroups : Maybe (List DBSecurityGroupMembership)
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , dBParameterGroups : Maybe (List DBParameterGroupStatus)
    , availabilityZone : Maybe String
    , dBSubnetGroup : Maybe DBSubnetGroup
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe PendingModifiedValues
    , latestRestorableTime : Maybe Date
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , autoMinorVersionUpgrade : Maybe Bool
    , readReplicaSourceDBInstanceIdentifier : Maybe String
    , readReplicaDBInstanceIdentifiers : Maybe (List String)
    , readReplicaDBClusterIdentifiers : Maybe (List String)
    , licenseModel : Maybe String
    , iops : Maybe Int
    , optionGroupMemberships : Maybe (List OptionGroupMembership)
    , characterSetName : Maybe String
    , secondaryAvailabilityZone : Maybe String
    , publiclyAccessible : Maybe Bool
    , statusInfos : Maybe (List DBInstanceStatusInfo)
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , dbInstancePort : Maybe Int
    , dBClusterIdentifier : Maybe String
    , storageEncrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dbiResourceId : Maybe String
    , cACertificateIdentifier : Maybe String
    , domainMemberships : Maybe (List DomainMembership)
    , copyTagsToSnapshot : Maybe Bool
    , monitoringInterval : Maybe Int
    , enhancedMonitoringResourceArn : Maybe String
    , monitoringRoleArn : Maybe String
    , promotionTier : Maybe Int
    , dBInstanceArn : Maybe String
    , timezone : Maybe String
    }



dBInstanceDecoder : JD.Decoder DBInstance
dBInstanceDecoder =
    JDP.decode DBInstance
        |> JDP.optional "dBInstanceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstanceStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "masterUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBName" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpoint" (JD.nullable endpointDecoder) Nothing
        |> JDP.optional "allocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "instanceCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "preferredBackupWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "backupRetentionPeriod" (JD.nullable JD.int) Nothing
        |> JDP.optional "dBSecurityGroups" (JD.nullable (JD.list dBSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "vpcSecurityGroups" (JD.nullable (JD.list vpcSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "dBParameterGroups" (JD.nullable (JD.list dBParameterGroupStatusDecoder)) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSubnetGroup" (JD.nullable dBSubnetGroupDecoder) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "pendingModifiedValues" (JD.nullable pendingModifiedValuesDecoder) Nothing
        |> JDP.optional "latestRestorableTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "multiAZ" (JD.nullable JD.bool) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoMinorVersionUpgrade" (JD.nullable JD.bool) Nothing
        |> JDP.optional "readReplicaSourceDBInstanceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "readReplicaDBInstanceIdentifiers" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "readReplicaDBClusterIdentifiers" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "licenseModel" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "optionGroupMemberships" (JD.nullable (JD.list optionGroupMembershipDecoder)) Nothing
        |> JDP.optional "characterSetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "secondaryAvailabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "publiclyAccessible" (JD.nullable JD.bool) Nothing
        |> JDP.optional "statusInfos" (JD.nullable (JD.list dBInstanceStatusInfoDecoder)) Nothing
        |> JDP.optional "storageType" (JD.nullable JD.string) Nothing
        |> JDP.optional "tdeCredentialArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "dbInstancePort" (JD.nullable JD.int) Nothing
        |> JDP.optional "dBClusterIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageEncrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dbiResourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cACertificateIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "domainMemberships" (JD.nullable (JD.list domainMembershipDecoder)) Nothing
        |> JDP.optional "copyTagsToSnapshot" (JD.nullable JD.bool) Nothing
        |> JDP.optional "monitoringInterval" (JD.nullable JD.int) Nothing
        |> JDP.optional "enhancedMonitoringResourceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "monitoringRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "promotionTier" (JD.nullable JD.int) Nothing
        |> JDP.optional "dBInstanceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "timezone" (JD.nullable JD.string) Nothing




{-| <p>User already has a DB instance with the given identifier.</p>
-}
type alias DBInstanceAlreadyExistsFault =
    { 
    }



dBInstanceAlreadyExistsFaultDecoder : JD.Decoder DBInstanceAlreadyExistsFault
dBInstanceAlreadyExistsFaultDecoder =
    JDP.decode DBInstanceAlreadyExistsFault



{-| Type of HTTP response from dBInstanc
-}
type alias DBInstanceMessage =
    { marker : Maybe String
    , dBInstances : Maybe (List DBInstance)
    }



dBInstanceMessageDecoder : JD.Decoder DBInstanceMessage
dBInstanceMessageDecoder =
    JDP.decode DBInstanceMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstances" (JD.nullable (JD.list dBInstanceDecoder)) Nothing




{-| <p> <i>DBInstanceIdentifier</i> does not refer to an existing DB instance. </p>
-}
type alias DBInstanceNotFoundFault =
    { 
    }



dBInstanceNotFoundFaultDecoder : JD.Decoder DBInstanceNotFoundFault
dBInstanceNotFoundFaultDecoder =
    JDP.decode DBInstanceNotFoundFault



{-| <p>Provides a list of status information for a DB instance.</p>
-}
type alias DBInstanceStatusInfo =
    { statusType : Maybe String
    , normal : Maybe Bool
    , status : Maybe String
    , message : Maybe String
    }



dBInstanceStatusInfoDecoder : JD.Decoder DBInstanceStatusInfo
dBInstanceStatusInfoDecoder =
    JDP.decode DBInstanceStatusInfo
        |> JDP.optional "statusType" (JD.nullable JD.string) Nothing
        |> JDP.optional "normal" (JD.nullable JD.bool) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p> <i>LogFileName</i> does not refer to an existing DB log file.</p>
-}
type alias DBLogFileNotFoundFault =
    { 
    }



dBLogFileNotFoundFaultDecoder : JD.Decoder DBLogFileNotFoundFault
dBLogFileNotFoundFaultDecoder =
    JDP.decode DBLogFileNotFoundFault



{-| <p>Contains the result of a successful invocation of the <a>CreateDBParameterGroup</a> action. </p> <p>This data type is used as a request parameter in the <a>DeleteDBParameterGroup</a> action, and as a response element in the <a>DescribeDBParameterGroups</a> action. </p>
-}
type alias DBParameterGroup =
    { dBParameterGroupName : Maybe String
    , dBParameterGroupFamily : Maybe String
    , description : Maybe String
    , dBParameterGroupArn : Maybe String
    }



dBParameterGroupDecoder : JD.Decoder DBParameterGroup
dBParameterGroupDecoder =
    JDP.decode DBParameterGroup
        |> JDP.optional "dBParameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBParameterGroupArn" (JD.nullable JD.string) Nothing




{-| <p>A DB parameter group with the same name exists.</p>
-}
type alias DBParameterGroupAlreadyExistsFault =
    { 
    }



dBParameterGroupAlreadyExistsFaultDecoder : JD.Decoder DBParameterGroupAlreadyExistsFault
dBParameterGroupAlreadyExistsFaultDecoder =
    JDP.decode DBParameterGroupAlreadyExistsFault



{-| Type of HTTP response from dBParameterGrou
-}
type alias DBParameterGroupDetails =
    { parameters : Maybe (List Parameter)
    , marker : Maybe String
    }



dBParameterGroupDetailsDecoder : JD.Decoder DBParameterGroupDetails
dBParameterGroupDetailsDecoder =
    JDP.decode DBParameterGroupDetails
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from dBParameterGroupNam
-}
type alias DBParameterGroupNameMessage =
    { dBParameterGroupName : Maybe String
    }



dBParameterGroupNameMessageDecoder : JD.Decoder DBParameterGroupNameMessage
dBParameterGroupNameMessageDecoder =
    JDP.decode DBParameterGroupNameMessage
        |> JDP.optional "dBParameterGroupName" (JD.nullable JD.string) Nothing




{-| <p> <i>DBParameterGroupName</i> does not refer to an existing DB parameter group. </p>
-}
type alias DBParameterGroupNotFoundFault =
    { 
    }



dBParameterGroupNotFoundFaultDecoder : JD.Decoder DBParameterGroupNotFoundFault
dBParameterGroupNotFoundFaultDecoder =
    JDP.decode DBParameterGroupNotFoundFault



{-| <p>Request would result in user exceeding the allowed number of DB parameter groups.</p>
-}
type alias DBParameterGroupQuotaExceededFault =
    { 
    }



dBParameterGroupQuotaExceededFaultDecoder : JD.Decoder DBParameterGroupQuotaExceededFault
dBParameterGroupQuotaExceededFaultDecoder =
    JDP.decode DBParameterGroupQuotaExceededFault



{-| <p>The status of the DB parameter group.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>CreateDBInstanceReadReplica</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> </ul>
-}
type alias DBParameterGroupStatus =
    { dBParameterGroupName : Maybe String
    , parameterApplyStatus : Maybe String
    }



dBParameterGroupStatusDecoder : JD.Decoder DBParameterGroupStatus
dBParameterGroupStatusDecoder =
    JDP.decode DBParameterGroupStatus
        |> JDP.optional "dBParameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterApplyStatus" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from dBParameterGroup
-}
type alias DBParameterGroupsMessage =
    { marker : Maybe String
    , dBParameterGroups : Maybe (List DBParameterGroup)
    }



dBParameterGroupsMessageDecoder : JD.Decoder DBParameterGroupsMessage
dBParameterGroupsMessageDecoder =
    JDP.decode DBParameterGroupsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBParameterGroups" (JD.nullable (JD.list dBParameterGroupDecoder)) Nothing




{-| <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>CreateDBSecurityGroup</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action.</p>
-}
type alias DBSecurityGroup =
    { ownerId : Maybe String
    , dBSecurityGroupName : Maybe String
    , dBSecurityGroupDescription : Maybe String
    , vpcId : Maybe String
    , eC2SecurityGroups : Maybe (List EC2SecurityGroup)
    , iPRanges : Maybe (List IPRange)
    , dBSecurityGroupArn : Maybe String
    }



dBSecurityGroupDecoder : JD.Decoder DBSecurityGroup
dBSecurityGroupDecoder =
    JDP.decode DBSecurityGroup
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSecurityGroupDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroups" (JD.nullable (JD.list eC2SecurityGroupDecoder)) Nothing
        |> JDP.optional "iPRanges" (JD.nullable (JD.list iPRangeDecoder)) Nothing
        |> JDP.optional "dBSecurityGroupArn" (JD.nullable JD.string) Nothing




{-| <p> A DB security group with the name specified in <i>DBSecurityGroupName</i> already exists. </p>
-}
type alias DBSecurityGroupAlreadyExistsFault =
    { 
    }



dBSecurityGroupAlreadyExistsFaultDecoder : JD.Decoder DBSecurityGroupAlreadyExistsFault
dBSecurityGroupAlreadyExistsFaultDecoder =
    JDP.decode DBSecurityGroupAlreadyExistsFault



{-| <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>ModifyDBInstance</a> </p> </li> <li> <p> <a>RebootDBInstance</a> </p> </li> <li> <p> <a>RestoreDBInstanceFromDBSnapshot</a> </p> </li> <li> <p> <a>RestoreDBInstanceToPointInTime</a> </p> </li> </ul>
-}
type alias DBSecurityGroupMembership =
    { dBSecurityGroupName : Maybe String
    , status : Maybe String
    }



dBSecurityGroupMembershipDecoder : JD.Decoder DBSecurityGroupMembership
dBSecurityGroupMembershipDecoder =
    JDP.decode DBSecurityGroupMembership
        |> JDP.optional "dBSecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from dBSecurityGrou
-}
type alias DBSecurityGroupMessage =
    { marker : Maybe String
    , dBSecurityGroups : Maybe (List DBSecurityGroup)
    }



dBSecurityGroupMessageDecoder : JD.Decoder DBSecurityGroupMessage
dBSecurityGroupMessageDecoder =
    JDP.decode DBSecurityGroupMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSecurityGroups" (JD.nullable (JD.list dBSecurityGroupDecoder)) Nothing




{-| <p> <i>DBSecurityGroupName</i> does not refer to an existing DB security group. </p>
-}
type alias DBSecurityGroupNotFoundFault =
    { 
    }



dBSecurityGroupNotFoundFaultDecoder : JD.Decoder DBSecurityGroupNotFoundFault
dBSecurityGroupNotFoundFaultDecoder =
    JDP.decode DBSecurityGroupNotFoundFault



{-| <p>A DB security group is not allowed for this action.</p>
-}
type alias DBSecurityGroupNotSupportedFault =
    { 
    }



dBSecurityGroupNotSupportedFaultDecoder : JD.Decoder DBSecurityGroupNotSupportedFault
dBSecurityGroupNotSupportedFaultDecoder =
    JDP.decode DBSecurityGroupNotSupportedFault



{-| <p>Request would result in user exceeding the allowed number of DB security groups.</p>
-}
type alias DBSecurityGroupQuotaExceededFault =
    { 
    }



dBSecurityGroupQuotaExceededFaultDecoder : JD.Decoder DBSecurityGroupQuotaExceededFault
dBSecurityGroupQuotaExceededFaultDecoder =
    JDP.decode DBSecurityGroupQuotaExceededFault



{-| <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSnapshot</a> </p> </li> <li> <p> <a>DeleteDBSnapshot</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSnapshots</a> action.</p>
-}
type alias DBSnapshot =
    { dBSnapshotIdentifier : Maybe String
    , dBInstanceIdentifier : Maybe String
    , snapshotCreateTime : Maybe Date
    , engine : Maybe String
    , allocatedStorage : Maybe Int
    , status : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , vpcId : Maybe String
    , instanceCreateTime : Maybe Date
    , masterUsername : Maybe String
    , engineVersion : Maybe String
    , licenseModel : Maybe String
    , snapshotType : Maybe String
    , iops : Maybe Int
    , optionGroupName : Maybe String
    , percentProgress : Maybe Int
    , sourceRegion : Maybe String
    , sourceDBSnapshotIdentifier : Maybe String
    , storageType : Maybe String
    , tdeCredentialArn : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dBSnapshotArn : Maybe String
    , timezone : Maybe String
    }



dBSnapshotDecoder : JD.Decoder DBSnapshot
dBSnapshotDecoder =
    JDP.decode DBSnapshot
        |> JDP.optional "dBSnapshotIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstanceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "masterUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseModel" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotType" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "optionGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "percentProgress" (JD.nullable JD.int) Nothing
        |> JDP.optional "sourceRegion" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceDBSnapshotIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageType" (JD.nullable JD.string) Nothing
        |> JDP.optional "tdeCredentialArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSnapshotArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "timezone" (JD.nullable JD.string) Nothing




{-| <p> <i>DBSnapshotIdentifier</i> is already used by an existing snapshot. </p>
-}
type alias DBSnapshotAlreadyExistsFault =
    { 
    }



dBSnapshotAlreadyExistsFaultDecoder : JD.Decoder DBSnapshotAlreadyExistsFault
dBSnapshotAlreadyExistsFaultDecoder =
    JDP.decode DBSnapshotAlreadyExistsFault



{-| <p>Contains the name and values of a manual DB snapshot attribute</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API.</p>
-}
type alias DBSnapshotAttribute =
    { attributeName : Maybe String
    , attributeValues : Maybe (List String)
    }



dBSnapshotAttributeDecoder : JD.Decoder DBSnapshotAttribute
dBSnapshotAttributeDecoder =
    JDP.decode DBSnapshotAttribute
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributeValues" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Contains the results of a successful call to the <a>DescribeDBSnapshotAttributes</a> API action.</p> <p>Manual DB snapshot attributes are used to authorize other AWS accounts to copy or restore a manual DB snapshot. For more information, see the <a>ModifyDBSnapshotAttribute</a> API action.</p>
-}
type alias DBSnapshotAttributesResult =
    { dBSnapshotIdentifier : Maybe String
    , dBSnapshotAttributes : Maybe (List DBSnapshotAttribute)
    }



dBSnapshotAttributesResultDecoder : JD.Decoder DBSnapshotAttributesResult
dBSnapshotAttributesResultDecoder =
    JDP.decode DBSnapshotAttributesResult
        |> JDP.optional "dBSnapshotIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSnapshotAttributes" (JD.nullable (JD.list dBSnapshotAttributeDecoder)) Nothing




{-| Type of HTTP response from dBSnapsho
-}
type alias DBSnapshotMessage =
    { marker : Maybe String
    , dBSnapshots : Maybe (List DBSnapshot)
    }



dBSnapshotMessageDecoder : JD.Decoder DBSnapshotMessage
dBSnapshotMessageDecoder =
    JDP.decode DBSnapshotMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSnapshots" (JD.nullable (JD.list dBSnapshotDecoder)) Nothing




{-| <p> <i>DBSnapshotIdentifier</i> does not refer to an existing DB snapshot. </p>
-}
type alias DBSnapshotNotFoundFault =
    { 
    }



dBSnapshotNotFoundFaultDecoder : JD.Decoder DBSnapshotNotFoundFault
dBSnapshotNotFoundFaultDecoder =
    JDP.decode DBSnapshotNotFoundFault



{-| <p>Contains the result of a successful invocation of the following actions:</p> <ul> <li> <p> <a>CreateDBSubnetGroup</a> </p> </li> <li> <p> <a>ModifyDBSubnetGroup</a> </p> </li> <li> <p> <a>DescribeDBSubnetGroups</a> </p> </li> <li> <p> <a>DeleteDBSubnetGroup</a> </p> </li> </ul> <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>
-}
type alias DBSubnetGroup =
    { dBSubnetGroupName : Maybe String
    , dBSubnetGroupDescription : Maybe String
    , vpcId : Maybe String
    , subnetGroupStatus : Maybe String
    , subnets : Maybe (List Subnet)
    , dBSubnetGroupArn : Maybe String
    }



dBSubnetGroupDecoder : JD.Decoder DBSubnetGroup
dBSubnetGroupDecoder =
    JDP.decode DBSubnetGroup
        |> JDP.optional "dBSubnetGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSubnetGroupDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetGroupStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnets" (JD.nullable (JD.list subnetDecoder)) Nothing
        |> JDP.optional "dBSubnetGroupArn" (JD.nullable JD.string) Nothing




{-| <p> <i>DBSubnetGroupName</i> is already used by an existing DB subnet group. </p>
-}
type alias DBSubnetGroupAlreadyExistsFault =
    { 
    }



dBSubnetGroupAlreadyExistsFaultDecoder : JD.Decoder DBSubnetGroupAlreadyExistsFault
dBSubnetGroupAlreadyExistsFaultDecoder =
    JDP.decode DBSubnetGroupAlreadyExistsFault



{-| <p>Subnets in the DB subnet group should cover at least two Availability Zones unless there is only one Availability Zone.</p>
-}
type alias DBSubnetGroupDoesNotCoverEnoughAZs =
    { 
    }



dBSubnetGroupDoesNotCoverEnoughAZsDecoder : JD.Decoder DBSubnetGroupDoesNotCoverEnoughAZs
dBSubnetGroupDoesNotCoverEnoughAZsDecoder =
    JDP.decode DBSubnetGroupDoesNotCoverEnoughAZs



{-| Type of HTTP response from dBSubnetGrou
-}
type alias DBSubnetGroupMessage =
    { marker : Maybe String
    , dBSubnetGroups : Maybe (List DBSubnetGroup)
    }



dBSubnetGroupMessageDecoder : JD.Decoder DBSubnetGroupMessage
dBSubnetGroupMessageDecoder =
    JDP.decode DBSubnetGroupMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSubnetGroups" (JD.nullable (JD.list dBSubnetGroupDecoder)) Nothing




{-| <p>Indicates that the DBSubnetGroup should not be specified while creating read replicas that lie in the same region as the source instance.</p>
-}
type alias DBSubnetGroupNotAllowedFault =
    { 
    }



dBSubnetGroupNotAllowedFaultDecoder : JD.Decoder DBSubnetGroupNotAllowedFault
dBSubnetGroupNotAllowedFaultDecoder =
    JDP.decode DBSubnetGroupNotAllowedFault



{-| <p> <i>DBSubnetGroupName</i> does not refer to an existing DB subnet group. </p>
-}
type alias DBSubnetGroupNotFoundFault =
    { 
    }



dBSubnetGroupNotFoundFaultDecoder : JD.Decoder DBSubnetGroupNotFoundFault
dBSubnetGroupNotFoundFaultDecoder =
    JDP.decode DBSubnetGroupNotFoundFault



{-| <p>Request would result in user exceeding the allowed number of DB subnet groups.</p>
-}
type alias DBSubnetGroupQuotaExceededFault =
    { 
    }



dBSubnetGroupQuotaExceededFaultDecoder : JD.Decoder DBSubnetGroupQuotaExceededFault
dBSubnetGroupQuotaExceededFaultDecoder =
    JDP.decode DBSubnetGroupQuotaExceededFault



{-| <p>Request would result in user exceeding the allowed number of subnets in a DB subnet groups.</p>
-}
type alias DBSubnetQuotaExceededFault =
    { 
    }



dBSubnetQuotaExceededFaultDecoder : JD.Decoder DBSubnetQuotaExceededFault
dBSubnetQuotaExceededFaultDecoder =
    JDP.decode DBSubnetQuotaExceededFault



{-| <p>The DB upgrade failed because a resource the DB depends on could not be modified.</p>
-}
type alias DBUpgradeDependencyFailureFault =
    { 
    }



dBUpgradeDependencyFailureFaultDecoder : JD.Decoder DBUpgradeDependencyFailureFault
dBUpgradeDependencyFailureFaultDecoder =
    JDP.decode DBUpgradeDependencyFailureFault



{-| Type of HTTP response from deleteDBClust
-}
type alias DeleteDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



deleteDBClusterResultDecoder : JD.Decoder DeleteDBClusterResult
deleteDBClusterResultDecoder =
    JDP.decode DeleteDBClusterResult
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| Type of HTTP response from deleteDBClusterSnapsh
-}
type alias DeleteDBClusterSnapshotResult =
    { dBClusterSnapshot : Maybe DBClusterSnapshot
    }



deleteDBClusterSnapshotResultDecoder : JD.Decoder DeleteDBClusterSnapshotResult
deleteDBClusterSnapshotResultDecoder =
    JDP.decode DeleteDBClusterSnapshotResult
        |> JDP.optional "dBClusterSnapshot" (JD.nullable dBClusterSnapshotDecoder) Nothing




{-| Type of HTTP response from deleteDBInstan
-}
type alias DeleteDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



deleteDBInstanceResultDecoder : JD.Decoder DeleteDBInstanceResult
deleteDBInstanceResultDecoder =
    JDP.decode DeleteDBInstanceResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| Type of HTTP response from deleteDBSnapsh
-}
type alias DeleteDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



deleteDBSnapshotResultDecoder : JD.Decoder DeleteDBSnapshotResult
deleteDBSnapshotResultDecoder =
    JDP.decode DeleteDBSnapshotResult
        |> JDP.optional "dBSnapshot" (JD.nullable dBSnapshotDecoder) Nothing




{-| Type of HTTP response from deleteEventSubscripti
-}
type alias DeleteEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



deleteEventSubscriptionResultDecoder : JD.Decoder DeleteEventSubscriptionResult
deleteEventSubscriptionResultDecoder =
    JDP.decode DeleteEventSubscriptionResult
        |> JDP.optional "eventSubscription" (JD.nullable eventSubscriptionDecoder) Nothing




{-| Type of HTTP response from describeDBClusterSnapshotAttribut
-}
type alias DescribeDBClusterSnapshotAttributesResult =
    { dBClusterSnapshotAttributesResult : Maybe DBClusterSnapshotAttributesResult
    }



describeDBClusterSnapshotAttributesResultDecoder : JD.Decoder DescribeDBClusterSnapshotAttributesResult
describeDBClusterSnapshotAttributesResultDecoder =
    JDP.decode DescribeDBClusterSnapshotAttributesResult
        |> JDP.optional "dBClusterSnapshotAttributesResult" (JD.nullable dBClusterSnapshotAttributesResultDecoder) Nothing




{-| <p>This data type is used as a response element to <a>DescribeDBLogFiles</a>.</p>
-}
type alias DescribeDBLogFilesDetails =
    { logFileName : Maybe String
    , lastWritten : Maybe Int
    , size : Maybe Int
    }



describeDBLogFilesDetailsDecoder : JD.Decoder DescribeDBLogFilesDetails
describeDBLogFilesDetailsDecoder =
    JDP.decode DescribeDBLogFilesDetails
        |> JDP.optional "logFileName" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastWritten" (JD.nullable JD.int) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describeDBLogFiles
-}
type alias DescribeDBLogFilesResponse =
    { describeDBLogFiles : Maybe (List DescribeDBLogFilesDetails)
    , marker : Maybe String
    }



describeDBLogFilesResponseDecoder : JD.Decoder DescribeDBLogFilesResponse
describeDBLogFilesResponseDecoder =
    JDP.decode DescribeDBLogFilesResponse
        |> JDP.optional "describeDBLogFiles" (JD.nullable (JD.list describeDBLogFilesDetailsDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeDBSnapshotAttribut
-}
type alias DescribeDBSnapshotAttributesResult =
    { dBSnapshotAttributesResult : Maybe DBSnapshotAttributesResult
    }



describeDBSnapshotAttributesResultDecoder : JD.Decoder DescribeDBSnapshotAttributesResult
describeDBSnapshotAttributesResultDecoder =
    JDP.decode DescribeDBSnapshotAttributesResult
        |> JDP.optional "dBSnapshotAttributesResult" (JD.nullable dBSnapshotAttributesResultDecoder) Nothing




{-| Type of HTTP response from describeEngineDefaultClusterParamete
-}
type alias DescribeEngineDefaultClusterParametersResult =
    { engineDefaults : Maybe EngineDefaults
    }



describeEngineDefaultClusterParametersResultDecoder : JD.Decoder DescribeEngineDefaultClusterParametersResult
describeEngineDefaultClusterParametersResultDecoder =
    JDP.decode DescribeEngineDefaultClusterParametersResult
        |> JDP.optional "engineDefaults" (JD.nullable engineDefaultsDecoder) Nothing




{-| Type of HTTP response from describeEngineDefaultParamete
-}
type alias DescribeEngineDefaultParametersResult =
    { engineDefaults : Maybe EngineDefaults
    }



describeEngineDefaultParametersResultDecoder : JD.Decoder DescribeEngineDefaultParametersResult
describeEngineDefaultParametersResultDecoder =
    JDP.decode DescribeEngineDefaultParametersResult
        |> JDP.optional "engineDefaults" (JD.nullable engineDefaultsDecoder) Nothing




{-| <p>An Active Directory Domain membership record associated with the DB instance.</p>
-}
type alias DomainMembership =
    { domain : Maybe String
    , status : Maybe String
    , fQDN : Maybe String
    , iAMRoleName : Maybe String
    }



domainMembershipDecoder : JD.Decoder DomainMembership
domainMembershipDecoder =
    JDP.decode DomainMembership
        |> JDP.optional "domain" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "fQDN" (JD.nullable JD.string) Nothing
        |> JDP.optional "iAMRoleName" (JD.nullable JD.string) Nothing




{-| <p> <i>Domain</i> does not refer to an existing Active Directory Domain. </p>
-}
type alias DomainNotFoundFault =
    { 
    }



domainNotFoundFaultDecoder : JD.Decoder DomainNotFoundFault
domainNotFoundFaultDecoder =
    JDP.decode DomainNotFoundFault



{-| Type of HTTP response from downloadDBLogFilePortio
-}
type alias DownloadDBLogFilePortionDetails =
    { logFileData : Maybe String
    , marker : Maybe String
    , additionalDataPending : Maybe Bool
    }



downloadDBLogFilePortionDetailsDecoder : JD.Decoder DownloadDBLogFilePortionDetails
downloadDBLogFilePortionDetailsDecoder =
    JDP.decode DownloadDBLogFilePortionDetails
        |> JDP.optional "logFileData" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "additionalDataPending" (JD.nullable JD.bool) Nothing




{-| <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>AuthorizeDBSecurityGroupIngress</a> </p> </li> <li> <p> <a>DescribeDBSecurityGroups</a> </p> </li> <li> <p> <a>RevokeDBSecurityGroupIngress</a> </p> </li> </ul>
-}
type alias EC2SecurityGroup =
    { status : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupId : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }



eC2SecurityGroupDecoder : JD.Decoder EC2SecurityGroup
eC2SecurityGroupDecoder =
    JDP.decode EC2SecurityGroup
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroupOwnerId" (JD.nullable JD.string) Nothing




{-| <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateDBInstance</a> </p> </li> <li> <p> <a>DescribeDBInstances</a> </p> </li> <li> <p> <a>DeleteDBInstance</a> </p> </li> </ul>
-}
type alias Endpoint =
    { address : Maybe String
    , port_ : Maybe Int
    , hostedZoneId : Maybe String
    }



endpointDecoder : JD.Decoder Endpoint
endpointDecoder =
    JDP.decode Endpoint
        |> JDP.optional "address" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "hostedZoneId" (JD.nullable JD.string) Nothing




{-| <p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action. </p>
-}
type alias EngineDefaults =
    { dBParameterGroupFamily : Maybe String
    , marker : Maybe String
    , parameters : Maybe (List Parameter)
    }



engineDefaultsDecoder : JD.Decoder EngineDefaults
engineDefaultsDecoder =
    JDP.decode EngineDefaults
        |> JDP.optional "dBParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing




{-| <p> This data type is used as a response element in the <a>DescribeEvents</a> action. </p>
-}
type alias Event =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , eventCategories : Maybe (List String)
    , date : Maybe Date
    , sourceArn : Maybe String
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JDP.decode Event
        |> JDP.optional "sourceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceType" (JD.nullable sourceTypeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventCategories" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "date" (JD.nullable JDX.date) Nothing
        |> JDP.optional "sourceArn" (JD.nullable JD.string) Nothing




{-| <p>Contains the results of a successful invocation of the <a>DescribeEventCategories</a> action.</p>
-}
type alias EventCategoriesMap =
    { sourceType : Maybe String
    , eventCategories : Maybe (List String)
    }



eventCategoriesMapDecoder : JD.Decoder EventCategoriesMap
eventCategoriesMapDecoder =
    JDP.decode EventCategoriesMap
        |> JDP.optional "sourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventCategories" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from eventCategorie
-}
type alias EventCategoriesMessage =
    { eventCategoriesMapList : Maybe (List EventCategoriesMap)
    }



eventCategoriesMessageDecoder : JD.Decoder EventCategoriesMessage
eventCategoriesMessageDecoder =
    JDP.decode EventCategoriesMessage
        |> JDP.optional "eventCategoriesMapList" (JD.nullable (JD.list eventCategoriesMapDecoder)) Nothing




{-| <p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>
-}
type alias EventSubscription =
    { customerAwsId : Maybe String
    , custSubscriptionId : Maybe String
    , snsTopicArn : Maybe String
    , status : Maybe String
    , subscriptionCreationTime : Maybe String
    , sourceType : Maybe String
    , sourceIdsList : Maybe (List String)
    , eventCategoriesList : Maybe (List String)
    , enabled : Maybe Bool
    , eventSubscriptionArn : Maybe String
    }



eventSubscriptionDecoder : JD.Decoder EventSubscription
eventSubscriptionDecoder =
    JDP.decode EventSubscription
        |> JDP.optional "customerAwsId" (JD.nullable JD.string) Nothing
        |> JDP.optional "custSubscriptionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "subscriptionCreationTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceIdsList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "eventCategoriesList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "eventSubscriptionArn" (JD.nullable JD.string) Nothing




{-| <p>You have reached the maximum number of event subscriptions.</p>
-}
type alias EventSubscriptionQuotaExceededFault =
    { 
    }



eventSubscriptionQuotaExceededFaultDecoder : JD.Decoder EventSubscriptionQuotaExceededFault
eventSubscriptionQuotaExceededFaultDecoder =
    JDP.decode EventSubscriptionQuotaExceededFault



{-| Type of HTTP response from eventSubscription
-}
type alias EventSubscriptionsMessage =
    { marker : Maybe String
    , eventSubscriptionsList : Maybe (List EventSubscription)
    }



eventSubscriptionsMessageDecoder : JD.Decoder EventSubscriptionsMessage
eventSubscriptionsMessageDecoder =
    JDP.decode EventSubscriptionsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventSubscriptionsList" (JD.nullable (JD.list eventSubscriptionDecoder)) Nothing




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




{-| Type of HTTP response from failoverDBClust
-}
type alias FailoverDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



failoverDBClusterResultDecoder : JD.Decoder FailoverDBClusterResult
failoverDBClusterResultDecoder =
    JDP.decode FailoverDBClusterResult
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| <p>This type is not currently supported.</p>
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




{-| <p> This data type is used as a response element in the <a>DescribeDBSecurityGroups</a> action. </p>
-}
type alias IPRange =
    { status : Maybe String
    , cIDRIP : Maybe String
    }



iPRangeDecoder : JD.Decoder IPRange
iPRangeDecoder =
    JDP.decode IPRange
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "cIDRIP" (JD.nullable JD.string) Nothing




{-| <p>Request would result in user exceeding the allowed number of DB instances.</p>
-}
type alias InstanceQuotaExceededFault =
    { 
    }



instanceQuotaExceededFaultDecoder : JD.Decoder InstanceQuotaExceededFault
instanceQuotaExceededFaultDecoder =
    JDP.decode InstanceQuotaExceededFault



{-| <p>The DB cluster does not have enough capacity for the current operation.</p>
-}
type alias InsufficientDBClusterCapacityFault =
    { 
    }



insufficientDBClusterCapacityFaultDecoder : JD.Decoder InsufficientDBClusterCapacityFault
insufficientDBClusterCapacityFaultDecoder =
    JDP.decode InsufficientDBClusterCapacityFault



{-| <p>Specified DB instance class is not available in the specified Availability Zone.</p>
-}
type alias InsufficientDBInstanceCapacityFault =
    { 
    }



insufficientDBInstanceCapacityFaultDecoder : JD.Decoder InsufficientDBInstanceCapacityFault
insufficientDBInstanceCapacityFaultDecoder =
    JDP.decode InsufficientDBInstanceCapacityFault



{-| <p>There is insufficient storage available for the current action. You may be able to resolve this error by updating your subnet group to use different Availability Zones that have more storage available.</p>
-}
type alias InsufficientStorageClusterCapacityFault =
    { 
    }



insufficientStorageClusterCapacityFaultDecoder : JD.Decoder InsufficientStorageClusterCapacityFault
insufficientStorageClusterCapacityFaultDecoder =
    JDP.decode InsufficientStorageClusterCapacityFault



{-| <p>The supplied value is not a valid DB cluster snapshot state.</p>
-}
type alias InvalidDBClusterSnapshotStateFault =
    { 
    }



invalidDBClusterSnapshotStateFaultDecoder : JD.Decoder InvalidDBClusterSnapshotStateFault
invalidDBClusterSnapshotStateFaultDecoder =
    JDP.decode InvalidDBClusterSnapshotStateFault



{-| <p>The DB cluster is not in a valid state.</p>
-}
type alias InvalidDBClusterStateFault =
    { 
    }



invalidDBClusterStateFaultDecoder : JD.Decoder InvalidDBClusterStateFault
invalidDBClusterStateFaultDecoder =
    JDP.decode InvalidDBClusterStateFault



{-| <p> The specified DB instance is not in the <i>available</i> state. </p>
-}
type alias InvalidDBInstanceStateFault =
    { 
    }



invalidDBInstanceStateFaultDecoder : JD.Decoder InvalidDBInstanceStateFault
invalidDBInstanceStateFaultDecoder =
    JDP.decode InvalidDBInstanceStateFault



{-| <p>The DB parameter group cannot be deleted because it is in use.</p>
-}
type alias InvalidDBParameterGroupStateFault =
    { 
    }



invalidDBParameterGroupStateFaultDecoder : JD.Decoder InvalidDBParameterGroupStateFault
invalidDBParameterGroupStateFaultDecoder =
    JDP.decode InvalidDBParameterGroupStateFault



{-| <p>The state of the DB security group does not allow deletion.</p>
-}
type alias InvalidDBSecurityGroupStateFault =
    { 
    }



invalidDBSecurityGroupStateFaultDecoder : JD.Decoder InvalidDBSecurityGroupStateFault
invalidDBSecurityGroupStateFaultDecoder =
    JDP.decode InvalidDBSecurityGroupStateFault



{-| <p>The state of the DB snapshot does not allow deletion.</p>
-}
type alias InvalidDBSnapshotStateFault =
    { 
    }



invalidDBSnapshotStateFaultDecoder : JD.Decoder InvalidDBSnapshotStateFault
invalidDBSnapshotStateFaultDecoder =
    JDP.decode InvalidDBSnapshotStateFault



{-| <p>Indicates the DBSubnetGroup does not belong to the same VPC as that of an existing cross region read replica of the same source instance.</p>
-}
type alias InvalidDBSubnetGroupFault =
    { 
    }



invalidDBSubnetGroupFaultDecoder : JD.Decoder InvalidDBSubnetGroupFault
invalidDBSubnetGroupFaultDecoder =
    JDP.decode InvalidDBSubnetGroupFault



{-| <p>The DB subnet group cannot be deleted because it is in use.</p>
-}
type alias InvalidDBSubnetGroupStateFault =
    { 
    }



invalidDBSubnetGroupStateFaultDecoder : JD.Decoder InvalidDBSubnetGroupStateFault
invalidDBSubnetGroupStateFaultDecoder =
    JDP.decode InvalidDBSubnetGroupStateFault



{-| <p> The DB subnet is not in the <i>available</i> state. </p>
-}
type alias InvalidDBSubnetStateFault =
    { 
    }



invalidDBSubnetStateFaultDecoder : JD.Decoder InvalidDBSubnetStateFault
invalidDBSubnetStateFaultDecoder =
    JDP.decode InvalidDBSubnetStateFault



{-| <p>This error can occur if someone else is modifying a subscription. You should retry the action.</p>
-}
type alias InvalidEventSubscriptionStateFault =
    { 
    }



invalidEventSubscriptionStateFaultDecoder : JD.Decoder InvalidEventSubscriptionStateFault
invalidEventSubscriptionStateFaultDecoder =
    JDP.decode InvalidEventSubscriptionStateFault



{-| <p> The option group is not in the <i>available</i> state. </p>
-}
type alias InvalidOptionGroupStateFault =
    { 
    }



invalidOptionGroupStateFaultDecoder : JD.Decoder InvalidOptionGroupStateFault
invalidOptionGroupStateFaultDecoder =
    JDP.decode InvalidOptionGroupStateFault



{-| <p>Cannot restore from vpc backup to non-vpc DB instance.</p>
-}
type alias InvalidRestoreFault =
    { 
    }



invalidRestoreFaultDecoder : JD.Decoder InvalidRestoreFault
invalidRestoreFaultDecoder =
    JDP.decode InvalidRestoreFault



{-| <p>The specified Amazon S3 bucket name could not be found or Amazon RDS is not authorized to access the specified Amazon S3 bucket. Verify the <b>SourceS3BucketName</b> and <b>S3IngestionRoleArn</b> values and try again.</p>
-}
type alias InvalidS3BucketFault =
    { 
    }



invalidS3BucketFaultDecoder : JD.Decoder InvalidS3BucketFault
invalidS3BucketFaultDecoder =
    JDP.decode InvalidS3BucketFault



{-| <p>The requested subnet is invalid, or multiple subnets were requested that are not all in a common VPC.</p>
-}
type alias InvalidSubnet =
    { 
    }



invalidSubnetDecoder : JD.Decoder InvalidSubnet
invalidSubnetDecoder =
    JDP.decode InvalidSubnet



{-| <p>DB subnet group does not cover all Availability Zones after it is created because users' change.</p>
-}
type alias InvalidVPCNetworkStateFault =
    { 
    }



invalidVPCNetworkStateFaultDecoder : JD.Decoder InvalidVPCNetworkStateFault
invalidVPCNetworkStateFaultDecoder =
    JDP.decode InvalidVPCNetworkStateFault



{-| <p>Error accessing KMS key.</p>
-}
type alias KMSKeyNotAccessibleFault =
    { 
    }



kMSKeyNotAccessibleFaultDecoder : JD.Decoder KMSKeyNotAccessibleFault
kMSKeyNotAccessibleFaultDecoder =
    JDP.decode KMSKeyNotAccessibleFault



{-| Type of HTTP response from modifyDBClust
-}
type alias ModifyDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



modifyDBClusterResultDecoder : JD.Decoder ModifyDBClusterResult
modifyDBClusterResultDecoder =
    JDP.decode ModifyDBClusterResult
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| Type of HTTP response from modifyDBClusterSnapshotAttribu
-}
type alias ModifyDBClusterSnapshotAttributeResult =
    { dBClusterSnapshotAttributesResult : Maybe DBClusterSnapshotAttributesResult
    }



modifyDBClusterSnapshotAttributeResultDecoder : JD.Decoder ModifyDBClusterSnapshotAttributeResult
modifyDBClusterSnapshotAttributeResultDecoder =
    JDP.decode ModifyDBClusterSnapshotAttributeResult
        |> JDP.optional "dBClusterSnapshotAttributesResult" (JD.nullable dBClusterSnapshotAttributesResultDecoder) Nothing




{-| Type of HTTP response from modifyDBInstan
-}
type alias ModifyDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



modifyDBInstanceResultDecoder : JD.Decoder ModifyDBInstanceResult
modifyDBInstanceResultDecoder =
    JDP.decode ModifyDBInstanceResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| Type of HTTP response from modifyDBSnapshotAttribu
-}
type alias ModifyDBSnapshotAttributeResult =
    { dBSnapshotAttributesResult : Maybe DBSnapshotAttributesResult
    }



modifyDBSnapshotAttributeResultDecoder : JD.Decoder ModifyDBSnapshotAttributeResult
modifyDBSnapshotAttributeResultDecoder =
    JDP.decode ModifyDBSnapshotAttributeResult
        |> JDP.optional "dBSnapshotAttributesResult" (JD.nullable dBSnapshotAttributesResultDecoder) Nothing




{-| Type of HTTP response from modifyDBSnapsh
-}
type alias ModifyDBSnapshotResult =
    { dBSnapshot : Maybe DBSnapshot
    }



modifyDBSnapshotResultDecoder : JD.Decoder ModifyDBSnapshotResult
modifyDBSnapshotResultDecoder =
    JDP.decode ModifyDBSnapshotResult
        |> JDP.optional "dBSnapshot" (JD.nullable dBSnapshotDecoder) Nothing




{-| Type of HTTP response from modifyDBSubnetGro
-}
type alias ModifyDBSubnetGroupResult =
    { dBSubnetGroup : Maybe DBSubnetGroup
    }



modifyDBSubnetGroupResultDecoder : JD.Decoder ModifyDBSubnetGroupResult
modifyDBSubnetGroupResultDecoder =
    JDP.decode ModifyDBSubnetGroupResult
        |> JDP.optional "dBSubnetGroup" (JD.nullable dBSubnetGroupDecoder) Nothing




{-| Type of HTTP response from modifyEventSubscripti
-}
type alias ModifyEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



modifyEventSubscriptionResultDecoder : JD.Decoder ModifyEventSubscriptionResult
modifyEventSubscriptionResultDecoder =
    JDP.decode ModifyEventSubscriptionResult
        |> JDP.optional "eventSubscription" (JD.nullable eventSubscriptionDecoder) Nothing




{-| Type of HTTP response from modifyOptionGro
-}
type alias ModifyOptionGroupResult =
    { optionGroup : Maybe OptionGroup
    }



modifyOptionGroupResultDecoder : JD.Decoder ModifyOptionGroupResult
modifyOptionGroupResultDecoder =
    JDP.decode ModifyOptionGroupResult
        |> JDP.optional "optionGroup" (JD.nullable optionGroupDecoder) Nothing




{-| <p>Option details.</p>
-}
type alias Option =
    { optionName : Maybe String
    , optionDescription : Maybe String
    , persistent : Maybe Bool
    , permanent : Maybe Bool
    , port_ : Maybe Int
    , optionVersion : Maybe String
    , optionSettings : Maybe (List OptionSetting)
    , dBSecurityGroupMemberships : Maybe (List DBSecurityGroupMembership)
    , vpcSecurityGroupMemberships : Maybe (List VpcSecurityGroupMembership)
    }



optionDecoder : JD.Decoder Option
optionDecoder =
    JDP.decode Option
        |> JDP.optional "optionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "optionDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "persistent" (JD.nullable JD.bool) Nothing
        |> JDP.optional "permanent" (JD.nullable JD.bool) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "optionVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "optionSettings" (JD.nullable (JD.list optionSettingDecoder)) Nothing
        |> JDP.optional "dBSecurityGroupMemberships" (JD.nullable (JD.list dBSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "vpcSecurityGroupMemberships" (JD.nullable (JD.list vpcSecurityGroupMembershipDecoder)) Nothing




{-| <p>A list of all available options</p>
-}
type alias OptionConfiguration =
    { optionName : String
    , port_ : Maybe Int
    , optionVersion : Maybe String
    , dBSecurityGroupMemberships : Maybe (List String)
    , vpcSecurityGroupMemberships : Maybe (List String)
    , optionSettings : Maybe (List OptionSetting)
    }



optionConfigurationDecoder : JD.Decoder OptionConfiguration
optionConfigurationDecoder =
    JDP.decode OptionConfiguration
        |> JDP.required "optionName" JD.string
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "optionVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSecurityGroupMemberships" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "vpcSecurityGroupMemberships" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "optionSettings" (JD.nullable (JD.list optionSettingDecoder)) Nothing




{-| <p/>
-}
type alias OptionGroup =
    { optionGroupName : Maybe String
    , optionGroupDescription : Maybe String
    , engineName : Maybe String
    , majorEngineVersion : Maybe String
    , options : Maybe (List Option)
    , allowsVpcAndNonVpcInstanceMemberships : Maybe Bool
    , vpcId : Maybe String
    , optionGroupArn : Maybe String
    }



optionGroupDecoder : JD.Decoder OptionGroup
optionGroupDecoder =
    JDP.decode OptionGroup
        |> JDP.optional "optionGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "optionGroupDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "majorEngineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "options" (JD.nullable (JD.list optionDecoder)) Nothing
        |> JDP.optional "allowsVpcAndNonVpcInstanceMemberships" (JD.nullable JD.bool) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "optionGroupArn" (JD.nullable JD.string) Nothing




{-| <p>The option group you are trying to create already exists.</p>
-}
type alias OptionGroupAlreadyExistsFault =
    { 
    }



optionGroupAlreadyExistsFaultDecoder : JD.Decoder OptionGroupAlreadyExistsFault
optionGroupAlreadyExistsFaultDecoder =
    JDP.decode OptionGroupAlreadyExistsFault



{-| <p>Provides information on the option groups the DB instance is a member of.</p>
-}
type alias OptionGroupMembership =
    { optionGroupName : Maybe String
    , status : Maybe String
    }



optionGroupMembershipDecoder : JD.Decoder OptionGroupMembership
optionGroupMembershipDecoder =
    JDP.decode OptionGroupMembership
        |> JDP.optional "optionGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>The specified option group could not be found.</p>
-}
type alias OptionGroupNotFoundFault =
    { 
    }



optionGroupNotFoundFaultDecoder : JD.Decoder OptionGroupNotFoundFault
optionGroupNotFoundFaultDecoder =
    JDP.decode OptionGroupNotFoundFault



{-| <p>Available option.</p>
-}
type alias OptionGroupOption =
    { name : Maybe String
    , description : Maybe String
    , engineName : Maybe String
    , majorEngineVersion : Maybe String
    , minimumRequiredMinorEngineVersion : Maybe String
    , portRequired : Maybe Bool
    , defaultPort : Maybe Int
    , optionsDependedOn : Maybe (List String)
    , optionsConflictsWith : Maybe (List String)
    , persistent : Maybe Bool
    , permanent : Maybe Bool
    , optionGroupOptionSettings : Maybe (List OptionGroupOptionSetting)
    , optionGroupOptionVersions : Maybe (List OptionVersion)
    }



optionGroupOptionDecoder : JD.Decoder OptionGroupOption
optionGroupOptionDecoder =
    JDP.decode OptionGroupOption
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "majorEngineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "minimumRequiredMinorEngineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "portRequired" (JD.nullable JD.bool) Nothing
        |> JDP.optional "defaultPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "optionsDependedOn" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "optionsConflictsWith" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "persistent" (JD.nullable JD.bool) Nothing
        |> JDP.optional "permanent" (JD.nullable JD.bool) Nothing
        |> JDP.optional "optionGroupOptionSettings" (JD.nullable (JD.list optionGroupOptionSettingDecoder)) Nothing
        |> JDP.optional "optionGroupOptionVersions" (JD.nullable (JD.list optionVersionDecoder)) Nothing




{-| <p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>
-}
type alias OptionGroupOptionSetting =
    { settingName : Maybe String
    , settingDescription : Maybe String
    , defaultValue : Maybe String
    , applyType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    }



optionGroupOptionSettingDecoder : JD.Decoder OptionGroupOptionSetting
optionGroupOptionSettingDecoder =
    JDP.decode OptionGroupOptionSetting
        |> JDP.optional "settingName" (JD.nullable JD.string) Nothing
        |> JDP.optional "settingDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "applyType" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowedValues" (JD.nullable JD.string) Nothing
        |> JDP.optional "isModifiable" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from optionGroupOption
-}
type alias OptionGroupOptionsMessage =
    { optionGroupOptions : Maybe (List OptionGroupOption)
    , marker : Maybe String
    }



optionGroupOptionsMessageDecoder : JD.Decoder OptionGroupOptionsMessage
optionGroupOptionsMessageDecoder =
    JDP.decode OptionGroupOptionsMessage
        |> JDP.optional "optionGroupOptions" (JD.nullable (JD.list optionGroupOptionDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>The quota of 20 option groups was exceeded for this AWS account.</p>
-}
type alias OptionGroupQuotaExceededFault =
    { 
    }



optionGroupQuotaExceededFaultDecoder : JD.Decoder OptionGroupQuotaExceededFault
optionGroupQuotaExceededFaultDecoder =
    JDP.decode OptionGroupQuotaExceededFault



{-| Type of HTTP response from opti
-}
type alias OptionGroups =
    { optionGroupsList : Maybe (List OptionGroup)
    , marker : Maybe String
    }



optionGroupsDecoder : JD.Decoder OptionGroups
optionGroupsDecoder =
    JDP.decode OptionGroups
        |> JDP.optional "optionGroupsList" (JD.nullable (JD.list optionGroupDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>
-}
type alias OptionSetting =
    { name : Maybe String
    , value : Maybe String
    , defaultValue : Maybe String
    , description : Maybe String
    , applyType : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , isCollection : Maybe Bool
    }



optionSettingDecoder : JD.Decoder OptionSetting
optionSettingDecoder =
    JDP.decode OptionSetting
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "applyType" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataType" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowedValues" (JD.nullable JD.string) Nothing
        |> JDP.optional "isModifiable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "isCollection" (JD.nullable JD.bool) Nothing




{-| <p>The version for an option. Option group option versions are returned by the <a>DescribeOptionGroupOptions</a> action.</p>
-}
type alias OptionVersion =
    { version : Maybe String
    , isDefault : Maybe Bool
    }



optionVersionDecoder : JD.Decoder OptionVersion
optionVersionDecoder =
    JDP.decode OptionVersion
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "isDefault" (JD.nullable JD.bool) Nothing




{-| <p>Contains a list of available options for a DB instance</p> <p> This data type is used as a response element in the <a>DescribeOrderableDBInstanceOptions</a> action. </p>
-}
type alias OrderableDBInstanceOption =
    { engine : Maybe String
    , engineVersion : Maybe String
    , dBInstanceClass : Maybe String
    , licenseModel : Maybe String
    , availabilityZones : Maybe (List AvailabilityZone)
    , multiAZCapable : Maybe Bool
    , readReplicaCapable : Maybe Bool
    , vpc : Maybe Bool
    , supportsStorageEncryption : Maybe Bool
    , storageType : Maybe String
    , supportsIops : Maybe Bool
    , supportsEnhancedMonitoring : Maybe Bool
    }



orderableDBInstanceOptionDecoder : JD.Decoder OrderableDBInstanceOption
orderableDBInstanceOptionDecoder =
    JDP.decode OrderableDBInstanceOption
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseModel" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list availabilityZoneDecoder)) Nothing
        |> JDP.optional "multiAZCapable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "readReplicaCapable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "vpc" (JD.nullable JD.bool) Nothing
        |> JDP.optional "supportsStorageEncryption" (JD.nullable JD.bool) Nothing
        |> JDP.optional "storageType" (JD.nullable JD.string) Nothing
        |> JDP.optional "supportsIops" (JD.nullable JD.bool) Nothing
        |> JDP.optional "supportsEnhancedMonitoring" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from orderableDBInstanceOption
-}
type alias OrderableDBInstanceOptionsMessage =
    { orderableDBInstanceOptions : Maybe (List OrderableDBInstanceOption)
    , marker : Maybe String
    }



orderableDBInstanceOptionsMessageDecoder : JD.Decoder OrderableDBInstanceOptionsMessage
orderableDBInstanceOptionsMessageDecoder =
    JDP.decode OrderableDBInstanceOptionsMessage
        |> JDP.optional "orderableDBInstanceOptions" (JD.nullable (JD.list orderableDBInstanceOptionDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p> This data type is used as a request parameter in the <a>ModifyDBParameterGroup</a> and <a>ResetDBParameterGroup</a> actions. </p> <p>This data type is used as a response element in the <a>DescribeEngineDefaultParameters</a> and <a>DescribeDBParameters</a> actions.</p>
-}
type alias Parameter =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    , description : Maybe String
    , source : Maybe String
    , applyType : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
    , applyMethod : Maybe ApplyMethod
    }



parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JDP.decode Parameter
        |> JDP.optional "parameterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "source" (JD.nullable JD.string) Nothing
        |> JDP.optional "applyType" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataType" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowedValues" (JD.nullable JD.string) Nothing
        |> JDP.optional "isModifiable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "minimumEngineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "applyMethod" (JD.nullable applyMethodDecoder) Nothing




{-| <p>Provides information about a pending maintenance action for a resource.</p>
-}
type alias PendingMaintenanceAction =
    { action : Maybe String
    , autoAppliedAfterDate : Maybe Date
    , forcedApplyDate : Maybe Date
    , optInStatus : Maybe String
    , currentApplyDate : Maybe Date
    , description : Maybe String
    }



pendingMaintenanceActionDecoder : JD.Decoder PendingMaintenanceAction
pendingMaintenanceActionDecoder =
    JDP.decode PendingMaintenanceAction
        |> JDP.optional "action" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoAppliedAfterDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "forcedApplyDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "optInStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentApplyDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from pendingMaintenanceAction
-}
type alias PendingMaintenanceActionsMessage =
    { pendingMaintenanceActions : Maybe (List ResourcePendingMaintenanceActions)
    , marker : Maybe String
    }



pendingMaintenanceActionsMessageDecoder : JD.Decoder PendingMaintenanceActionsMessage
pendingMaintenanceActionsMessageDecoder =
    JDP.decode PendingMaintenanceActionsMessage
        |> JDP.optional "pendingMaintenanceActions" (JD.nullable (JD.list resourcePendingMaintenanceActionsDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p> This data type is used as a response element in the <a>ModifyDBInstance</a> action. </p>
-}
type alias PendingModifiedValues =
    { dBInstanceClass : Maybe String
    , allocatedStorage : Maybe Int
    , masterUserPassword : Maybe String
    , port_ : Maybe Int
    , backupRetentionPeriod : Maybe Int
    , multiAZ : Maybe Bool
    , engineVersion : Maybe String
    , licenseModel : Maybe String
    , iops : Maybe Int
    , dBInstanceIdentifier : Maybe String
    , storageType : Maybe String
    , cACertificateIdentifier : Maybe String
    , dBSubnetGroupName : Maybe String
    }



pendingModifiedValuesDecoder : JD.Decoder PendingModifiedValues
pendingModifiedValuesDecoder =
    JDP.decode PendingModifiedValues
        |> JDP.optional "dBInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocatedStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "masterUserPassword" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "backupRetentionPeriod" (JD.nullable JD.int) Nothing
        |> JDP.optional "multiAZ" (JD.nullable JD.bool) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseModel" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "dBInstanceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageType" (JD.nullable JD.string) Nothing
        |> JDP.optional "cACertificateIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBSubnetGroupName" (JD.nullable JD.string) Nothing




{-| <p> <i>SourceDBInstanceIdentifier</i> refers to a DB instance with <i>BackupRetentionPeriod</i> equal to 0. </p>
-}
type alias PointInTimeRestoreNotEnabledFault =
    { 
    }



pointInTimeRestoreNotEnabledFaultDecoder : JD.Decoder PointInTimeRestoreNotEnabledFault
pointInTimeRestoreNotEnabledFaultDecoder =
    JDP.decode PointInTimeRestoreNotEnabledFault



{-| Type of HTTP response from promoteReadReplicaDBClust
-}
type alias PromoteReadReplicaDBClusterResult =
    { dBCluster : Maybe DBCluster
    }



promoteReadReplicaDBClusterResultDecoder : JD.Decoder PromoteReadReplicaDBClusterResult
promoteReadReplicaDBClusterResultDecoder =
    JDP.decode PromoteReadReplicaDBClusterResult
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| Type of HTTP response from promoteReadRepli
-}
type alias PromoteReadReplicaResult =
    { dBInstance : Maybe DBInstance
    }



promoteReadReplicaResultDecoder : JD.Decoder PromoteReadReplicaResult
promoteReadReplicaResultDecoder =
    JDP.decode PromoteReadReplicaResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| <p>Provisioned IOPS not available in the specified Availability Zone.</p>
-}
type alias ProvisionedIopsNotAvailableInAZFault =
    { 
    }



provisionedIopsNotAvailableInAZFaultDecoder : JD.Decoder ProvisionedIopsNotAvailableInAZFault
provisionedIopsNotAvailableInAZFaultDecoder =
    JDP.decode ProvisionedIopsNotAvailableInAZFault



{-| Type of HTTP response from purchaseReservedDBInstancesOfferi
-}
type alias PurchaseReservedDBInstancesOfferingResult =
    { reservedDBInstance : Maybe ReservedDBInstance
    }



purchaseReservedDBInstancesOfferingResultDecoder : JD.Decoder PurchaseReservedDBInstancesOfferingResult
purchaseReservedDBInstancesOfferingResultDecoder =
    JDP.decode PurchaseReservedDBInstancesOfferingResult
        |> JDP.optional "reservedDBInstance" (JD.nullable reservedDBInstanceDecoder) Nothing




{-| Type of HTTP response from rebootDBInstan
-}
type alias RebootDBInstanceResult =
    { dBInstance : Maybe DBInstance
    }



rebootDBInstanceResultDecoder : JD.Decoder RebootDBInstanceResult
rebootDBInstanceResultDecoder =
    JDP.decode RebootDBInstanceResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>DescribeReservedDBInstancesOfferings</a> actions. </p>
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




{-| Type of HTTP response from removeSourceIdentifierFromSubscripti
-}
type alias RemoveSourceIdentifierFromSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



removeSourceIdentifierFromSubscriptionResultDecoder : JD.Decoder RemoveSourceIdentifierFromSubscriptionResult
removeSourceIdentifierFromSubscriptionResultDecoder =
    JDP.decode RemoveSourceIdentifierFromSubscriptionResult
        |> JDP.optional "eventSubscription" (JD.nullable eventSubscriptionDecoder) Nothing




{-| <p> This data type is used as a response element in the <a>DescribeReservedDBInstances</a> and <a>PurchaseReservedDBInstancesOffering</a> actions. </p>
-}
type alias ReservedDBInstance =
    { reservedDBInstanceId : Maybe String
    , reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , startTime : Maybe Date
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , dBInstanceCount : Maybe Int
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , state : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    , reservedDBInstanceArn : Maybe String
    }



reservedDBInstanceDecoder : JD.Decoder ReservedDBInstance
reservedDBInstanceDecoder =
    JDP.decode ReservedDBInstance
        |> JDP.optional "reservedDBInstanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedDBInstancesOfferingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "productDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "offeringType" (JD.nullable JD.string) Nothing
        |> JDP.optional "multiAZ" (JD.nullable JD.bool) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing
        |> JDP.optional "reservedDBInstanceArn" (JD.nullable JD.string) Nothing




{-| <p>User already has a reservation with the given identifier.</p>
-}
type alias ReservedDBInstanceAlreadyExistsFault =
    { 
    }



reservedDBInstanceAlreadyExistsFaultDecoder : JD.Decoder ReservedDBInstanceAlreadyExistsFault
reservedDBInstanceAlreadyExistsFaultDecoder =
    JDP.decode ReservedDBInstanceAlreadyExistsFault



{-| Type of HTTP response from reservedDBInstanc
-}
type alias ReservedDBInstanceMessage =
    { marker : Maybe String
    , reservedDBInstances : Maybe (List ReservedDBInstance)
    }



reservedDBInstanceMessageDecoder : JD.Decoder ReservedDBInstanceMessage
reservedDBInstanceMessageDecoder =
    JDP.decode ReservedDBInstanceMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedDBInstances" (JD.nullable (JD.list reservedDBInstanceDecoder)) Nothing




{-| <p>The specified reserved DB Instance not found.</p>
-}
type alias ReservedDBInstanceNotFoundFault =
    { 
    }



reservedDBInstanceNotFoundFaultDecoder : JD.Decoder ReservedDBInstanceNotFoundFault
reservedDBInstanceNotFoundFaultDecoder =
    JDP.decode ReservedDBInstanceNotFoundFault



{-| <p>Request would exceed the user's DB Instance quota.</p>
-}
type alias ReservedDBInstanceQuotaExceededFault =
    { 
    }



reservedDBInstanceQuotaExceededFaultDecoder : JD.Decoder ReservedDBInstanceQuotaExceededFault
reservedDBInstanceQuotaExceededFaultDecoder =
    JDP.decode ReservedDBInstanceQuotaExceededFault



{-| <p> This data type is used as a response element in the <a>DescribeReservedDBInstancesOfferings</a> action. </p>
-}
type alias ReservedDBInstancesOffering =
    { reservedDBInstancesOfferingId : Maybe String
    , dBInstanceClass : Maybe String
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , productDescription : Maybe String
    , offeringType : Maybe String
    , multiAZ : Maybe Bool
    , recurringCharges : Maybe (List RecurringCharge)
    }



reservedDBInstancesOfferingDecoder : JD.Decoder ReservedDBInstancesOffering
reservedDBInstancesOfferingDecoder =
    JDP.decode ReservedDBInstancesOffering
        |> JDP.optional "reservedDBInstancesOfferingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBInstanceClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "productDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "offeringType" (JD.nullable JD.string) Nothing
        |> JDP.optional "multiAZ" (JD.nullable JD.bool) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing




{-| Type of HTTP response from reservedDBInstancesOfferin
-}
type alias ReservedDBInstancesOfferingMessage =
    { marker : Maybe String
    , reservedDBInstancesOfferings : Maybe (List ReservedDBInstancesOffering)
    }



reservedDBInstancesOfferingMessageDecoder : JD.Decoder ReservedDBInstancesOfferingMessage
reservedDBInstancesOfferingMessageDecoder =
    JDP.decode ReservedDBInstancesOfferingMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedDBInstancesOfferings" (JD.nullable (JD.list reservedDBInstancesOfferingDecoder)) Nothing




{-| <p>Specified offering does not exist.</p>
-}
type alias ReservedDBInstancesOfferingNotFoundFault =
    { 
    }



reservedDBInstancesOfferingNotFoundFaultDecoder : JD.Decoder ReservedDBInstancesOfferingNotFoundFault
reservedDBInstancesOfferingNotFoundFaultDecoder =
    JDP.decode ReservedDBInstancesOfferingNotFoundFault



{-| <p>The specified resource ID was not found.</p>
-}
type alias ResourceNotFoundFault =
    { 
    }



resourceNotFoundFaultDecoder : JD.Decoder ResourceNotFoundFault
resourceNotFoundFaultDecoder =
    JDP.decode ResourceNotFoundFault



{-| <p>Describes the pending maintenance actions for a resource.</p>
-}
type alias ResourcePendingMaintenanceActions =
    { resourceIdentifier : Maybe String
    , pendingMaintenanceActionDetails : Maybe (List PendingMaintenanceAction)
    }



resourcePendingMaintenanceActionsDecoder : JD.Decoder ResourcePendingMaintenanceActions
resourcePendingMaintenanceActionsDecoder =
    JDP.decode ResourcePendingMaintenanceActions
        |> JDP.optional "resourceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "pendingMaintenanceActionDetails" (JD.nullable (JD.list pendingMaintenanceActionDecoder)) Nothing




{-| Type of HTTP response from restoreDBClusterFrom
-}
type alias RestoreDBClusterFromS3Result =
    { dBCluster : Maybe DBCluster
    }



restoreDBClusterFromS3ResultDecoder : JD.Decoder RestoreDBClusterFromS3Result
restoreDBClusterFromS3ResultDecoder =
    JDP.decode RestoreDBClusterFromS3Result
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| Type of HTTP response from restoreDBClusterFromSnapsh
-}
type alias RestoreDBClusterFromSnapshotResult =
    { dBCluster : Maybe DBCluster
    }



restoreDBClusterFromSnapshotResultDecoder : JD.Decoder RestoreDBClusterFromSnapshotResult
restoreDBClusterFromSnapshotResultDecoder =
    JDP.decode RestoreDBClusterFromSnapshotResult
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| Type of HTTP response from restoreDBClusterToPointInTi
-}
type alias RestoreDBClusterToPointInTimeResult =
    { dBCluster : Maybe DBCluster
    }



restoreDBClusterToPointInTimeResultDecoder : JD.Decoder RestoreDBClusterToPointInTimeResult
restoreDBClusterToPointInTimeResultDecoder =
    JDP.decode RestoreDBClusterToPointInTimeResult
        |> JDP.optional "dBCluster" (JD.nullable dBClusterDecoder) Nothing




{-| Type of HTTP response from restoreDBInstanceFromDBSnapsh
-}
type alias RestoreDBInstanceFromDBSnapshotResult =
    { dBInstance : Maybe DBInstance
    }



restoreDBInstanceFromDBSnapshotResultDecoder : JD.Decoder RestoreDBInstanceFromDBSnapshotResult
restoreDBInstanceFromDBSnapshotResultDecoder =
    JDP.decode RestoreDBInstanceFromDBSnapshotResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| Type of HTTP response from restoreDBInstanceToPointInTi
-}
type alias RestoreDBInstanceToPointInTimeResult =
    { dBInstance : Maybe DBInstance
    }



restoreDBInstanceToPointInTimeResultDecoder : JD.Decoder RestoreDBInstanceToPointInTimeResult
restoreDBInstanceToPointInTimeResultDecoder =
    JDP.decode RestoreDBInstanceToPointInTimeResult
        |> JDP.optional "dBInstance" (JD.nullable dBInstanceDecoder) Nothing




{-| Type of HTTP response from revokeDBSecurityGroupIngre
-}
type alias RevokeDBSecurityGroupIngressResult =
    { dBSecurityGroup : Maybe DBSecurityGroup
    }



revokeDBSecurityGroupIngressResultDecoder : JD.Decoder RevokeDBSecurityGroupIngressResult
revokeDBSecurityGroupIngressResultDecoder =
    JDP.decode RevokeDBSecurityGroupIngressResult
        |> JDP.optional "dBSecurityGroup" (JD.nullable dBSecurityGroupDecoder) Nothing




{-| <p>SNS has responded that there is a problem with the SND topic specified.</p>
-}
type alias SNSInvalidTopicFault =
    { 
    }



sNSInvalidTopicFaultDecoder : JD.Decoder SNSInvalidTopicFault
sNSInvalidTopicFaultDecoder =
    JDP.decode SNSInvalidTopicFault



{-| <p>You do not have permission to publish to the SNS topic ARN.</p>
-}
type alias SNSNoAuthorizationFault =
    { 
    }



sNSNoAuthorizationFaultDecoder : JD.Decoder SNSNoAuthorizationFault
sNSNoAuthorizationFaultDecoder =
    JDP.decode SNSNoAuthorizationFault



{-| <p>The SNS topic ARN does not exist.</p>
-}
type alias SNSTopicArnNotFoundFault =
    { 
    }



sNSTopicArnNotFoundFaultDecoder : JD.Decoder SNSTopicArnNotFoundFault
sNSTopicArnNotFoundFaultDecoder =
    JDP.decode SNSTopicArnNotFoundFault



{-| <p>You have exceeded the maximum number of accounts that you can share a manual DB snapshot with.</p>
-}
type alias SharedSnapshotQuotaExceededFault =
    { 
    }



sharedSnapshotQuotaExceededFaultDecoder : JD.Decoder SharedSnapshotQuotaExceededFault
sharedSnapshotQuotaExceededFaultDecoder =
    JDP.decode SharedSnapshotQuotaExceededFault



{-| <p>Request would result in user exceeding the allowed number of DB snapshots.</p>
-}
type alias SnapshotQuotaExceededFault =
    { 
    }



snapshotQuotaExceededFaultDecoder : JD.Decoder SnapshotQuotaExceededFault
snapshotQuotaExceededFaultDecoder =
    JDP.decode SnapshotQuotaExceededFault



{-| <p>The requested source could not be found.</p>
-}
type alias SourceNotFoundFault =
    { 
    }



sourceNotFoundFaultDecoder : JD.Decoder SourceNotFoundFault
sourceNotFoundFaultDecoder =
    JDP.decode SourceNotFoundFault



{-| <p>Contains an AWS Region name as the result of a successful call to the <a>DescribeSourceRegions</a> action.</p>
-}
type alias SourceRegion =
    { regionName : Maybe String
    , endpoint : Maybe String
    , status : Maybe String
    }



sourceRegionDecoder : JD.Decoder SourceRegion
sourceRegionDecoder =
    JDP.decode SourceRegion
        |> JDP.optional "regionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from sourceRegio
-}
type alias SourceRegionMessage =
    { marker : Maybe String
    , sourceRegions : Maybe (List SourceRegion)
    }



sourceRegionMessageDecoder : JD.Decoder SourceRegionMessage
sourceRegionMessageDecoder =
    JDP.decode SourceRegionMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceRegions" (JD.nullable (JD.list sourceRegionDecoder)) Nothing




{-| One of

* `SourceType_db-instance`
* `SourceType_db-parameter-group`
* `SourceType_db-security-group`
* `SourceType_db-snapshot`
* `SourceType_db-cluster`
* `SourceType_db-cluster-snapshot`

-}
type SourceType
    = SourceType_db_instance
    | SourceType_db_parameter_group
    | SourceType_db_security_group
    | SourceType_db_snapshot
    | SourceType_db_cluster
    | SourceType_db_cluster_snapshot



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "db_instance" ->
                        JD.succeed SourceType_db_instance

                    "db_parameter_group" ->
                        JD.succeed SourceType_db_parameter_group

                    "db_security_group" ->
                        JD.succeed SourceType_db_security_group

                    "db_snapshot" ->
                        JD.succeed SourceType_db_snapshot

                    "db_cluster" ->
                        JD.succeed SourceType_db_cluster

                    "db_cluster_snapshot" ->
                        JD.succeed SourceType_db_cluster_snapshot


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Request would result in user exceeding the allowed amount of storage available across all DB instances.</p>
-}
type alias StorageQuotaExceededFault =
    { 
    }



storageQuotaExceededFaultDecoder : JD.Decoder StorageQuotaExceededFault
storageQuotaExceededFaultDecoder =
    JDP.decode StorageQuotaExceededFault



{-| <p> <i>StorageType</i> specified cannot be associated with the DB Instance. </p>
-}
type alias StorageTypeNotSupportedFault =
    { 
    }



storageTypeNotSupportedFaultDecoder : JD.Decoder StorageTypeNotSupportedFault
storageTypeNotSupportedFaultDecoder =
    JDP.decode StorageTypeNotSupportedFault



{-| <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action. </p>
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




{-| <p>The DB subnet is already in use in the Availability Zone.</p>
-}
type alias SubnetAlreadyInUse =
    { 
    }



subnetAlreadyInUseDecoder : JD.Decoder SubnetAlreadyInUse
subnetAlreadyInUseDecoder =
    JDP.decode SubnetAlreadyInUse



{-| <p>The supplied subscription name already exists.</p>
-}
type alias SubscriptionAlreadyExistFault =
    { 
    }



subscriptionAlreadyExistFaultDecoder : JD.Decoder SubscriptionAlreadyExistFault
subscriptionAlreadyExistFaultDecoder =
    JDP.decode SubscriptionAlreadyExistFault



{-| <p>The supplied category does not exist.</p>
-}
type alias SubscriptionCategoryNotFoundFault =
    { 
    }



subscriptionCategoryNotFoundFaultDecoder : JD.Decoder SubscriptionCategoryNotFoundFault
subscriptionCategoryNotFoundFaultDecoder =
    JDP.decode SubscriptionCategoryNotFoundFault



{-| <p>The subscription name does not exist.</p>
-}
type alias SubscriptionNotFoundFault =
    { 
    }



subscriptionNotFoundFaultDecoder : JD.Decoder SubscriptionNotFoundFault
subscriptionNotFoundFaultDecoder =
    JDP.decode SubscriptionNotFoundFault



{-| <p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>
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




{-| <p>A time zone associated with a <a>DBInstance</a> or a <a>DBSnapshot</a>. This data type is an element in the response to the <a>DescribeDBInstances</a>, the <a>DescribeDBSnapshots</a>, and the <a>DescribeDBEngineVersions</a> actions. </p>
-}
type alias Timezone =
    { timezoneName : Maybe String
    }



timezoneDecoder : JD.Decoder Timezone
timezoneDecoder =
    JDP.decode Timezone
        |> JDP.optional "timezoneName" (JD.nullable JD.string) Nothing




{-| <p>The version of the database engine that a DB instance can be upgraded to.</p>
-}
type alias UpgradeTarget =
    { engine : Maybe String
    , engineVersion : Maybe String
    , description : Maybe String
    , autoUpgrade : Maybe Bool
    , isMajorVersionUpgrade : Maybe Bool
    }



upgradeTargetDecoder : JD.Decoder UpgradeTarget
upgradeTargetDecoder =
    JDP.decode UpgradeTarget
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoUpgrade" (JD.nullable JD.bool) Nothing
        |> JDP.optional "isMajorVersionUpgrade" (JD.nullable JD.bool) Nothing




{-| <p>This data type is used as a response element for queries on VPC security group membership.</p>
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




