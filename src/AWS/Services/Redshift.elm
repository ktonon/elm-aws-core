module AWS.Services.Redshift
    exposing
        ( config
        , authorizeClusterSecurityGroupIngress
        , AuthorizeClusterSecurityGroupIngressOptions
        , authorizeSnapshotAccess
        , AuthorizeSnapshotAccessOptions
        , copyClusterSnapshot
        , CopyClusterSnapshotOptions
        , createCluster
        , CreateClusterOptions
        , createClusterParameterGroup
        , CreateClusterParameterGroupOptions
        , createClusterSecurityGroup
        , CreateClusterSecurityGroupOptions
        , createClusterSnapshot
        , CreateClusterSnapshotOptions
        , createClusterSubnetGroup
        , CreateClusterSubnetGroupOptions
        , createEventSubscription
        , CreateEventSubscriptionOptions
        , createHsmClientCertificate
        , CreateHsmClientCertificateOptions
        , createHsmConfiguration
        , CreateHsmConfigurationOptions
        , createSnapshotCopyGrant
        , CreateSnapshotCopyGrantOptions
        , createTags
        , deleteCluster
        , DeleteClusterOptions
        , deleteClusterParameterGroup
        , deleteClusterSecurityGroup
        , deleteClusterSnapshot
        , DeleteClusterSnapshotOptions
        , deleteClusterSubnetGroup
        , deleteEventSubscription
        , deleteHsmClientCertificate
        , deleteHsmConfiguration
        , deleteSnapshotCopyGrant
        , deleteTags
        , describeClusterParameterGroups
        , DescribeClusterParameterGroupsOptions
        , describeClusterParameters
        , DescribeClusterParametersOptions
        , describeClusterSecurityGroups
        , DescribeClusterSecurityGroupsOptions
        , describeClusterSnapshots
        , DescribeClusterSnapshotsOptions
        , describeClusterSubnetGroups
        , DescribeClusterSubnetGroupsOptions
        , describeClusterVersions
        , DescribeClusterVersionsOptions
        , describeClusters
        , DescribeClustersOptions
        , describeDefaultClusterParameters
        , DescribeDefaultClusterParametersOptions
        , describeEventCategories
        , DescribeEventCategoriesOptions
        , describeEventSubscriptions
        , DescribeEventSubscriptionsOptions
        , describeEvents
        , DescribeEventsOptions
        , describeHsmClientCertificates
        , DescribeHsmClientCertificatesOptions
        , describeHsmConfigurations
        , DescribeHsmConfigurationsOptions
        , describeLoggingStatus
        , describeOrderableClusterOptions
        , DescribeOrderableClusterOptionsOptions
        , describeReservedNodeOfferings
        , DescribeReservedNodeOfferingsOptions
        , describeReservedNodes
        , DescribeReservedNodesOptions
        , describeResize
        , describeSnapshotCopyGrants
        , DescribeSnapshotCopyGrantsOptions
        , describeTableRestoreStatus
        , DescribeTableRestoreStatusOptions
        , describeTags
        , DescribeTagsOptions
        , disableLogging
        , disableSnapshotCopy
        , enableLogging
        , EnableLoggingOptions
        , enableSnapshotCopy
        , EnableSnapshotCopyOptions
        , modifyCluster
        , ModifyClusterOptions
        , modifyClusterIamRoles
        , ModifyClusterIamRolesOptions
        , modifyClusterParameterGroup
        , modifyClusterSubnetGroup
        , ModifyClusterSubnetGroupOptions
        , modifyEventSubscription
        , ModifyEventSubscriptionOptions
        , modifySnapshotCopyRetentionPeriod
        , purchaseReservedNodeOffering
        , PurchaseReservedNodeOfferingOptions
        , rebootCluster
        , resetClusterParameterGroup
        , ResetClusterParameterGroupOptions
        , restoreFromClusterSnapshot
        , RestoreFromClusterSnapshotOptions
        , restoreTableFromClusterSnapshot
        , RestoreTableFromClusterSnapshotOptions
        , revokeClusterSecurityGroupIngress
        , RevokeClusterSecurityGroupIngressOptions
        , revokeSnapshotAccess
        , RevokeSnapshotAccessOptions
        , rotateEncryptionKey
        , AccessToSnapshotDeniedFault
        , AccountWithRestoreAccess
        , AuthorizationAlreadyExistsFault
        , AuthorizationNotFoundFault
        , AuthorizationQuotaExceededFault
        , AuthorizeClusterSecurityGroupIngressResult
        , AuthorizeSnapshotAccessResult
        , AvailabilityZone
        , BucketNotFoundFault
        , Cluster
        , ClusterAlreadyExistsFault
        , ClusterIamRole
        , ClusterNode
        , ClusterNotFoundFault
        , ClusterParameterGroup
        , ClusterParameterGroupAlreadyExistsFault
        , ClusterParameterGroupDetails
        , ClusterParameterGroupNameMessage
        , ClusterParameterGroupNotFoundFault
        , ClusterParameterGroupQuotaExceededFault
        , ClusterParameterGroupStatus
        , ClusterParameterGroupsMessage
        , ClusterParameterStatus
        , ClusterQuotaExceededFault
        , ClusterSecurityGroup
        , ClusterSecurityGroupAlreadyExistsFault
        , ClusterSecurityGroupMembership
        , ClusterSecurityGroupMessage
        , ClusterSecurityGroupNotFoundFault
        , ClusterSecurityGroupQuotaExceededFault
        , ClusterSnapshotAlreadyExistsFault
        , ClusterSnapshotCopyStatus
        , ClusterSnapshotNotFoundFault
        , ClusterSnapshotQuotaExceededFault
        , ClusterSubnetGroup
        , ClusterSubnetGroupAlreadyExistsFault
        , ClusterSubnetGroupMessage
        , ClusterSubnetGroupNotFoundFault
        , ClusterSubnetGroupQuotaExceededFault
        , ClusterSubnetQuotaExceededFault
        , ClusterVersion
        , ClusterVersionsMessage
        , ClustersMessage
        , CopyClusterSnapshotResult
        , CopyToRegionDisabledFault
        , CreateClusterParameterGroupResult
        , CreateClusterResult
        , CreateClusterSecurityGroupResult
        , CreateClusterSnapshotResult
        , CreateClusterSubnetGroupResult
        , CreateEventSubscriptionResult
        , CreateHsmClientCertificateResult
        , CreateHsmConfigurationResult
        , CreateSnapshotCopyGrantResult
        , DefaultClusterParameters
        , DeleteClusterResult
        , DeleteClusterSnapshotResult
        , DependentServiceRequestThrottlingFault
        , DescribeDefaultClusterParametersResult
        , DisableSnapshotCopyResult
        , EC2SecurityGroup
        , ElasticIpStatus
        , EnableSnapshotCopyResult
        , Endpoint
        , Event
        , EventCategoriesMap
        , EventCategoriesMessage
        , EventInfoMap
        , EventSubscription
        , EventSubscriptionQuotaExceededFault
        , EventSubscriptionsMessage
        , EventsMessage
        , HsmClientCertificate
        , HsmClientCertificateAlreadyExistsFault
        , HsmClientCertificateMessage
        , HsmClientCertificateNotFoundFault
        , HsmClientCertificateQuotaExceededFault
        , HsmConfiguration
        , HsmConfigurationAlreadyExistsFault
        , HsmConfigurationMessage
        , HsmConfigurationNotFoundFault
        , HsmConfigurationQuotaExceededFault
        , HsmStatus
        , IPRange
        , InProgressTableRestoreQuotaExceededFault
        , IncompatibleOrderableOptions
        , InsufficientClusterCapacityFault
        , InsufficientS3BucketPolicyFault
        , InvalidClusterParameterGroupStateFault
        , InvalidClusterSecurityGroupStateFault
        , InvalidClusterSnapshotStateFault
        , InvalidClusterStateFault
        , InvalidClusterSubnetGroupStateFault
        , InvalidClusterSubnetStateFault
        , InvalidElasticIpFault
        , InvalidHsmClientCertificateStateFault
        , InvalidHsmConfigurationStateFault
        , InvalidRestoreFault
        , InvalidS3BucketNameFault
        , InvalidS3KeyPrefixFault
        , InvalidSnapshotCopyGrantStateFault
        , InvalidSubnet
        , InvalidSubscriptionStateFault
        , InvalidTableRestoreArgumentFault
        , InvalidTagFault
        , InvalidVPCNetworkStateFault
        , LimitExceededFault
        , LoggingStatus
        , ModifyClusterIamRolesResult
        , ModifyClusterResult
        , ModifyClusterSubnetGroupResult
        , ModifyEventSubscriptionResult
        , ModifySnapshotCopyRetentionPeriodResult
        , NumberOfNodesPerClusterLimitExceededFault
        , NumberOfNodesQuotaExceededFault
        , OrderableClusterOption
        , OrderableClusterOptionsMessage
        , Parameter
        , ParameterApplyType(..)
        , PendingModifiedValues
        , PurchaseReservedNodeOfferingResult
        , RebootClusterResult
        , RecurringCharge
        , ReservedNode
        , ReservedNodeAlreadyExistsFault
        , ReservedNodeNotFoundFault
        , ReservedNodeOffering
        , ReservedNodeOfferingNotFoundFault
        , ReservedNodeOfferingsMessage
        , ReservedNodeQuotaExceededFault
        , ReservedNodesMessage
        , ResizeNotFoundFault
        , ResizeProgressMessage
        , ResourceNotFoundFault
        , RestoreFromClusterSnapshotResult
        , RestoreStatus
        , RestoreTableFromClusterSnapshotResult
        , RevokeClusterSecurityGroupIngressResult
        , RevokeSnapshotAccessResult
        , RotateEncryptionKeyResult
        , SNSInvalidTopicFault
        , SNSNoAuthorizationFault
        , SNSTopicArnNotFoundFault
        , Snapshot
        , SnapshotCopyAlreadyDisabledFault
        , SnapshotCopyAlreadyEnabledFault
        , SnapshotCopyDisabledFault
        , SnapshotCopyGrant
        , SnapshotCopyGrantAlreadyExistsFault
        , SnapshotCopyGrantMessage
        , SnapshotCopyGrantNotFoundFault
        , SnapshotCopyGrantQuotaExceededFault
        , SnapshotMessage
        , SourceNotFoundFault
        , SourceType(..)
        , Subnet
        , SubnetAlreadyInUse
        , SubscriptionAlreadyExistFault
        , SubscriptionCategoryNotFoundFault
        , SubscriptionEventIdNotFoundFault
        , SubscriptionNotFoundFault
        , SubscriptionSeverityNotFoundFault
        , TableRestoreNotFoundFault
        , TableRestoreStatus
        , TableRestoreStatusMessage
        , TableRestoreStatusType(..)
        , Tag
        , TagLimitExceededFault
        , TaggedResource
        , TaggedResourceListMessage
        , UnauthorizedOperation
        , UnknownSnapshotCopyRegionFault
        , UnsupportedOperationFault
        , UnsupportedOptionFault
        , VpcSecurityGroupMembership
        )

{-| <fullname>Amazon Redshift</fullname> <p> <b>Overview</b> </p> <p>This is an interface reference for Amazon Redshift. It contains documentation for one of the programming or command line interfaces you can use to manage Amazon Redshift clusters. Note that Amazon Redshift is asynchronous, which means that some interfaces may require techniques, such as polling or asynchronous callback handlers, to determine when a command has been applied. In this reference, the parameter descriptions indicate whether a change is applied immediately, on the next instance reboot, or during the next maintenance window. For a summary of the Amazon Redshift cluster management interfaces, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html">Using the Amazon Redshift Management Interfaces</a>.</p> <p>Amazon Redshift manages all the work of setting up, operating, and scaling a data warehouse: provisioning capacity, monitoring and backing up the cluster, and applying patches and upgrades to the Amazon Redshift engine. You can focus on using your data to acquire new insights for your business and customers.</p> <p>If you are a first-time user of Amazon Redshift, we recommend that you begin by reading the <a href="http://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html">Amazon Redshift Getting Started Guide</a>.</p> <p>If you are a database developer, the <a href="http://docs.aws.amazon.com/redshift/latest/dg/welcome.html">Amazon Redshift Database Developer Guide</a> explains how to design, build, query, and maintain the databases that make up your data warehouse. </p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [authorizeClusterSecurityGroupIngress](#authorizeClusterSecurityGroupIngress)
* [AuthorizeClusterSecurityGroupIngressOptions](#AuthorizeClusterSecurityGroupIngressOptions)
* [authorizeSnapshotAccess](#authorizeSnapshotAccess)
* [AuthorizeSnapshotAccessOptions](#AuthorizeSnapshotAccessOptions)
* [copyClusterSnapshot](#copyClusterSnapshot)
* [CopyClusterSnapshotOptions](#CopyClusterSnapshotOptions)
* [createCluster](#createCluster)
* [CreateClusterOptions](#CreateClusterOptions)
* [createClusterParameterGroup](#createClusterParameterGroup)
* [CreateClusterParameterGroupOptions](#CreateClusterParameterGroupOptions)
* [createClusterSecurityGroup](#createClusterSecurityGroup)
* [CreateClusterSecurityGroupOptions](#CreateClusterSecurityGroupOptions)
* [createClusterSnapshot](#createClusterSnapshot)
* [CreateClusterSnapshotOptions](#CreateClusterSnapshotOptions)
* [createClusterSubnetGroup](#createClusterSubnetGroup)
* [CreateClusterSubnetGroupOptions](#CreateClusterSubnetGroupOptions)
* [createEventSubscription](#createEventSubscription)
* [CreateEventSubscriptionOptions](#CreateEventSubscriptionOptions)
* [createHsmClientCertificate](#createHsmClientCertificate)
* [CreateHsmClientCertificateOptions](#CreateHsmClientCertificateOptions)
* [createHsmConfiguration](#createHsmConfiguration)
* [CreateHsmConfigurationOptions](#CreateHsmConfigurationOptions)
* [createSnapshotCopyGrant](#createSnapshotCopyGrant)
* [CreateSnapshotCopyGrantOptions](#CreateSnapshotCopyGrantOptions)
* [createTags](#createTags)
* [deleteCluster](#deleteCluster)
* [DeleteClusterOptions](#DeleteClusterOptions)
* [deleteClusterParameterGroup](#deleteClusterParameterGroup)
* [deleteClusterSecurityGroup](#deleteClusterSecurityGroup)
* [deleteClusterSnapshot](#deleteClusterSnapshot)
* [DeleteClusterSnapshotOptions](#DeleteClusterSnapshotOptions)
* [deleteClusterSubnetGroup](#deleteClusterSubnetGroup)
* [deleteEventSubscription](#deleteEventSubscription)
* [deleteHsmClientCertificate](#deleteHsmClientCertificate)
* [deleteHsmConfiguration](#deleteHsmConfiguration)
* [deleteSnapshotCopyGrant](#deleteSnapshotCopyGrant)
* [deleteTags](#deleteTags)
* [describeClusterParameterGroups](#describeClusterParameterGroups)
* [DescribeClusterParameterGroupsOptions](#DescribeClusterParameterGroupsOptions)
* [describeClusterParameters](#describeClusterParameters)
* [DescribeClusterParametersOptions](#DescribeClusterParametersOptions)
* [describeClusterSecurityGroups](#describeClusterSecurityGroups)
* [DescribeClusterSecurityGroupsOptions](#DescribeClusterSecurityGroupsOptions)
* [describeClusterSnapshots](#describeClusterSnapshots)
* [DescribeClusterSnapshotsOptions](#DescribeClusterSnapshotsOptions)
* [describeClusterSubnetGroups](#describeClusterSubnetGroups)
* [DescribeClusterSubnetGroupsOptions](#DescribeClusterSubnetGroupsOptions)
* [describeClusterVersions](#describeClusterVersions)
* [DescribeClusterVersionsOptions](#DescribeClusterVersionsOptions)
* [describeClusters](#describeClusters)
* [DescribeClustersOptions](#DescribeClustersOptions)
* [describeDefaultClusterParameters](#describeDefaultClusterParameters)
* [DescribeDefaultClusterParametersOptions](#DescribeDefaultClusterParametersOptions)
* [describeEventCategories](#describeEventCategories)
* [DescribeEventCategoriesOptions](#DescribeEventCategoriesOptions)
* [describeEventSubscriptions](#describeEventSubscriptions)
* [DescribeEventSubscriptionsOptions](#DescribeEventSubscriptionsOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)
* [describeHsmClientCertificates](#describeHsmClientCertificates)
* [DescribeHsmClientCertificatesOptions](#DescribeHsmClientCertificatesOptions)
* [describeHsmConfigurations](#describeHsmConfigurations)
* [DescribeHsmConfigurationsOptions](#DescribeHsmConfigurationsOptions)
* [describeLoggingStatus](#describeLoggingStatus)
* [describeOrderableClusterOptions](#describeOrderableClusterOptions)
* [DescribeOrderableClusterOptionsOptions](#DescribeOrderableClusterOptionsOptions)
* [describeReservedNodeOfferings](#describeReservedNodeOfferings)
* [DescribeReservedNodeOfferingsOptions](#DescribeReservedNodeOfferingsOptions)
* [describeReservedNodes](#describeReservedNodes)
* [DescribeReservedNodesOptions](#DescribeReservedNodesOptions)
* [describeResize](#describeResize)
* [describeSnapshotCopyGrants](#describeSnapshotCopyGrants)
* [DescribeSnapshotCopyGrantsOptions](#DescribeSnapshotCopyGrantsOptions)
* [describeTableRestoreStatus](#describeTableRestoreStatus)
* [DescribeTableRestoreStatusOptions](#DescribeTableRestoreStatusOptions)
* [describeTags](#describeTags)
* [DescribeTagsOptions](#DescribeTagsOptions)
* [disableLogging](#disableLogging)
* [disableSnapshotCopy](#disableSnapshotCopy)
* [enableLogging](#enableLogging)
* [EnableLoggingOptions](#EnableLoggingOptions)
* [enableSnapshotCopy](#enableSnapshotCopy)
* [EnableSnapshotCopyOptions](#EnableSnapshotCopyOptions)
* [modifyCluster](#modifyCluster)
* [ModifyClusterOptions](#ModifyClusterOptions)
* [modifyClusterIamRoles](#modifyClusterIamRoles)
* [ModifyClusterIamRolesOptions](#ModifyClusterIamRolesOptions)
* [modifyClusterParameterGroup](#modifyClusterParameterGroup)
* [modifyClusterSubnetGroup](#modifyClusterSubnetGroup)
* [ModifyClusterSubnetGroupOptions](#ModifyClusterSubnetGroupOptions)
* [modifyEventSubscription](#modifyEventSubscription)
* [ModifyEventSubscriptionOptions](#ModifyEventSubscriptionOptions)
* [modifySnapshotCopyRetentionPeriod](#modifySnapshotCopyRetentionPeriod)
* [purchaseReservedNodeOffering](#purchaseReservedNodeOffering)
* [PurchaseReservedNodeOfferingOptions](#PurchaseReservedNodeOfferingOptions)
* [rebootCluster](#rebootCluster)
* [resetClusterParameterGroup](#resetClusterParameterGroup)
* [ResetClusterParameterGroupOptions](#ResetClusterParameterGroupOptions)
* [restoreFromClusterSnapshot](#restoreFromClusterSnapshot)
* [RestoreFromClusterSnapshotOptions](#RestoreFromClusterSnapshotOptions)
* [restoreTableFromClusterSnapshot](#restoreTableFromClusterSnapshot)
* [RestoreTableFromClusterSnapshotOptions](#RestoreTableFromClusterSnapshotOptions)
* [revokeClusterSecurityGroupIngress](#revokeClusterSecurityGroupIngress)
* [RevokeClusterSecurityGroupIngressOptions](#RevokeClusterSecurityGroupIngressOptions)
* [revokeSnapshotAccess](#revokeSnapshotAccess)
* [RevokeSnapshotAccessOptions](#RevokeSnapshotAccessOptions)
* [rotateEncryptionKey](#rotateEncryptionKey)


@docs authorizeClusterSecurityGroupIngress,AuthorizeClusterSecurityGroupIngressOptions,authorizeSnapshotAccess,AuthorizeSnapshotAccessOptions,copyClusterSnapshot,CopyClusterSnapshotOptions,createCluster,CreateClusterOptions,createClusterParameterGroup,CreateClusterParameterGroupOptions,createClusterSecurityGroup,CreateClusterSecurityGroupOptions,createClusterSnapshot,CreateClusterSnapshotOptions,createClusterSubnetGroup,CreateClusterSubnetGroupOptions,createEventSubscription,CreateEventSubscriptionOptions,createHsmClientCertificate,CreateHsmClientCertificateOptions,createHsmConfiguration,CreateHsmConfigurationOptions,createSnapshotCopyGrant,CreateSnapshotCopyGrantOptions,createTags,deleteCluster,DeleteClusterOptions,deleteClusterParameterGroup,deleteClusterSecurityGroup,deleteClusterSnapshot,DeleteClusterSnapshotOptions,deleteClusterSubnetGroup,deleteEventSubscription,deleteHsmClientCertificate,deleteHsmConfiguration,deleteSnapshotCopyGrant,deleteTags,describeClusterParameterGroups,DescribeClusterParameterGroupsOptions,describeClusterParameters,DescribeClusterParametersOptions,describeClusterSecurityGroups,DescribeClusterSecurityGroupsOptions,describeClusterSnapshots,DescribeClusterSnapshotsOptions,describeClusterSubnetGroups,DescribeClusterSubnetGroupsOptions,describeClusterVersions,DescribeClusterVersionsOptions,describeClusters,DescribeClustersOptions,describeDefaultClusterParameters,DescribeDefaultClusterParametersOptions,describeEventCategories,DescribeEventCategoriesOptions,describeEventSubscriptions,DescribeEventSubscriptionsOptions,describeEvents,DescribeEventsOptions,describeHsmClientCertificates,DescribeHsmClientCertificatesOptions,describeHsmConfigurations,DescribeHsmConfigurationsOptions,describeLoggingStatus,describeOrderableClusterOptions,DescribeOrderableClusterOptionsOptions,describeReservedNodeOfferings,DescribeReservedNodeOfferingsOptions,describeReservedNodes,DescribeReservedNodesOptions,describeResize,describeSnapshotCopyGrants,DescribeSnapshotCopyGrantsOptions,describeTableRestoreStatus,DescribeTableRestoreStatusOptions,describeTags,DescribeTagsOptions,disableLogging,disableSnapshotCopy,enableLogging,EnableLoggingOptions,enableSnapshotCopy,EnableSnapshotCopyOptions,modifyCluster,ModifyClusterOptions,modifyClusterIamRoles,ModifyClusterIamRolesOptions,modifyClusterParameterGroup,modifyClusterSubnetGroup,ModifyClusterSubnetGroupOptions,modifyEventSubscription,ModifyEventSubscriptionOptions,modifySnapshotCopyRetentionPeriod,purchaseReservedNodeOffering,PurchaseReservedNodeOfferingOptions,rebootCluster,resetClusterParameterGroup,ResetClusterParameterGroupOptions,restoreFromClusterSnapshot,RestoreFromClusterSnapshotOptions,restoreTableFromClusterSnapshot,RestoreTableFromClusterSnapshotOptions,revokeClusterSecurityGroupIngress,RevokeClusterSecurityGroupIngressOptions,revokeSnapshotAccess,RevokeSnapshotAccessOptions,rotateEncryptionKey

## Responses

* [AuthorizeClusterSecurityGroupIngressResult](#AuthorizeClusterSecurityGroupIngressResult)
* [AuthorizeSnapshotAccessResult](#AuthorizeSnapshotAccessResult)
* [ClusterParameterGroupDetails](#ClusterParameterGroupDetails)
* [ClusterParameterGroupNameMessage](#ClusterParameterGroupNameMessage)
* [ClusterParameterGroupsMessage](#ClusterParameterGroupsMessage)
* [ClusterSecurityGroupMessage](#ClusterSecurityGroupMessage)
* [ClusterSubnetGroupMessage](#ClusterSubnetGroupMessage)
* [ClusterVersionsMessage](#ClusterVersionsMessage)
* [ClustersMessage](#ClustersMessage)
* [CopyClusterSnapshotResult](#CopyClusterSnapshotResult)
* [CreateClusterParameterGroupResult](#CreateClusterParameterGroupResult)
* [CreateClusterResult](#CreateClusterResult)
* [CreateClusterSecurityGroupResult](#CreateClusterSecurityGroupResult)
* [CreateClusterSnapshotResult](#CreateClusterSnapshotResult)
* [CreateClusterSubnetGroupResult](#CreateClusterSubnetGroupResult)
* [CreateEventSubscriptionResult](#CreateEventSubscriptionResult)
* [CreateHsmClientCertificateResult](#CreateHsmClientCertificateResult)
* [CreateHsmConfigurationResult](#CreateHsmConfigurationResult)
* [CreateSnapshotCopyGrantResult](#CreateSnapshotCopyGrantResult)
* [DeleteClusterResult](#DeleteClusterResult)
* [DeleteClusterSnapshotResult](#DeleteClusterSnapshotResult)
* [DescribeDefaultClusterParametersResult](#DescribeDefaultClusterParametersResult)
* [DisableSnapshotCopyResult](#DisableSnapshotCopyResult)
* [EnableSnapshotCopyResult](#EnableSnapshotCopyResult)
* [EventCategoriesMessage](#EventCategoriesMessage)
* [EventSubscriptionsMessage](#EventSubscriptionsMessage)
* [EventsMessage](#EventsMessage)
* [HsmClientCertificateMessage](#HsmClientCertificateMessage)
* [HsmConfigurationMessage](#HsmConfigurationMessage)
* [LoggingStatus](#LoggingStatus)
* [ModifyClusterIamRolesResult](#ModifyClusterIamRolesResult)
* [ModifyClusterResult](#ModifyClusterResult)
* [ModifyClusterSubnetGroupResult](#ModifyClusterSubnetGroupResult)
* [ModifyEventSubscriptionResult](#ModifyEventSubscriptionResult)
* [ModifySnapshotCopyRetentionPeriodResult](#ModifySnapshotCopyRetentionPeriodResult)
* [OrderableClusterOptionsMessage](#OrderableClusterOptionsMessage)
* [PurchaseReservedNodeOfferingResult](#PurchaseReservedNodeOfferingResult)
* [RebootClusterResult](#RebootClusterResult)
* [ReservedNodeOfferingsMessage](#ReservedNodeOfferingsMessage)
* [ReservedNodesMessage](#ReservedNodesMessage)
* [ResizeProgressMessage](#ResizeProgressMessage)
* [RestoreFromClusterSnapshotResult](#RestoreFromClusterSnapshotResult)
* [RestoreTableFromClusterSnapshotResult](#RestoreTableFromClusterSnapshotResult)
* [RevokeClusterSecurityGroupIngressResult](#RevokeClusterSecurityGroupIngressResult)
* [RevokeSnapshotAccessResult](#RevokeSnapshotAccessResult)
* [RotateEncryptionKeyResult](#RotateEncryptionKeyResult)
* [SnapshotCopyGrantMessage](#SnapshotCopyGrantMessage)
* [SnapshotMessage](#SnapshotMessage)
* [TableRestoreStatusMessage](#TableRestoreStatusMessage)
* [TaggedResourceListMessage](#TaggedResourceListMessage)


@docs AuthorizeClusterSecurityGroupIngressResult,AuthorizeSnapshotAccessResult,ClusterParameterGroupDetails,ClusterParameterGroupNameMessage,ClusterParameterGroupsMessage,ClusterSecurityGroupMessage,ClusterSubnetGroupMessage,ClusterVersionsMessage,ClustersMessage,CopyClusterSnapshotResult,CreateClusterParameterGroupResult,CreateClusterResult,CreateClusterSecurityGroupResult,CreateClusterSnapshotResult,CreateClusterSubnetGroupResult,CreateEventSubscriptionResult,CreateHsmClientCertificateResult,CreateHsmConfigurationResult,CreateSnapshotCopyGrantResult,DeleteClusterResult,DeleteClusterSnapshotResult,DescribeDefaultClusterParametersResult,DisableSnapshotCopyResult,EnableSnapshotCopyResult,EventCategoriesMessage,EventSubscriptionsMessage,EventsMessage,HsmClientCertificateMessage,HsmConfigurationMessage,LoggingStatus,ModifyClusterIamRolesResult,ModifyClusterResult,ModifyClusterSubnetGroupResult,ModifyEventSubscriptionResult,ModifySnapshotCopyRetentionPeriodResult,OrderableClusterOptionsMessage,PurchaseReservedNodeOfferingResult,RebootClusterResult,ReservedNodeOfferingsMessage,ReservedNodesMessage,ResizeProgressMessage,RestoreFromClusterSnapshotResult,RestoreTableFromClusterSnapshotResult,RevokeClusterSecurityGroupIngressResult,RevokeSnapshotAccessResult,RotateEncryptionKeyResult,SnapshotCopyGrantMessage,SnapshotMessage,TableRestoreStatusMessage,TaggedResourceListMessage

## Records

* [AccountWithRestoreAccess](#AccountWithRestoreAccess)
* [AvailabilityZone](#AvailabilityZone)
* [Cluster](#Cluster)
* [ClusterIamRole](#ClusterIamRole)
* [ClusterNode](#ClusterNode)
* [ClusterParameterGroup](#ClusterParameterGroup)
* [ClusterParameterGroupStatus](#ClusterParameterGroupStatus)
* [ClusterParameterStatus](#ClusterParameterStatus)
* [ClusterSecurityGroup](#ClusterSecurityGroup)
* [ClusterSecurityGroupMembership](#ClusterSecurityGroupMembership)
* [ClusterSnapshotCopyStatus](#ClusterSnapshotCopyStatus)
* [ClusterSubnetGroup](#ClusterSubnetGroup)
* [ClusterVersion](#ClusterVersion)
* [DefaultClusterParameters](#DefaultClusterParameters)
* [EC2SecurityGroup](#EC2SecurityGroup)
* [ElasticIpStatus](#ElasticIpStatus)
* [Endpoint](#Endpoint)
* [Event](#Event)
* [EventCategoriesMap](#EventCategoriesMap)
* [EventInfoMap](#EventInfoMap)
* [EventSubscription](#EventSubscription)
* [HsmClientCertificate](#HsmClientCertificate)
* [HsmConfiguration](#HsmConfiguration)
* [HsmStatus](#HsmStatus)
* [IPRange](#IPRange)
* [OrderableClusterOption](#OrderableClusterOption)
* [Parameter](#Parameter)
* [PendingModifiedValues](#PendingModifiedValues)
* [RecurringCharge](#RecurringCharge)
* [ReservedNode](#ReservedNode)
* [ReservedNodeOffering](#ReservedNodeOffering)
* [RestoreStatus](#RestoreStatus)
* [Snapshot](#Snapshot)
* [SnapshotCopyGrant](#SnapshotCopyGrant)
* [Subnet](#Subnet)
* [TableRestoreStatus](#TableRestoreStatus)
* [Tag](#Tag)
* [TaggedResource](#TaggedResource)
* [VpcSecurityGroupMembership](#VpcSecurityGroupMembership)


@docs AccountWithRestoreAccess,AvailabilityZone,Cluster,ClusterIamRole,ClusterNode,ClusterParameterGroup,ClusterParameterGroupStatus,ClusterParameterStatus,ClusterSecurityGroup,ClusterSecurityGroupMembership,ClusterSnapshotCopyStatus,ClusterSubnetGroup,ClusterVersion,DefaultClusterParameters,EC2SecurityGroup,ElasticIpStatus,Endpoint,Event,EventCategoriesMap,EventInfoMap,EventSubscription,HsmClientCertificate,HsmConfiguration,HsmStatus,IPRange,OrderableClusterOption,Parameter,PendingModifiedValues,RecurringCharge,ReservedNode,ReservedNodeOffering,RestoreStatus,Snapshot,SnapshotCopyGrant,Subnet,TableRestoreStatus,Tag,TaggedResource,VpcSecurityGroupMembership

## Unions

* [ParameterApplyType](#ParameterApplyType)
* [SourceType](#SourceType)
* [TableRestoreStatusType](#TableRestoreStatusType)


@docs ParameterApplyType,SourceType,TableRestoreStatusType

## Exceptions

* [AccessToSnapshotDeniedFault](#AccessToSnapshotDeniedFault)
* [AuthorizationAlreadyExistsFault](#AuthorizationAlreadyExistsFault)
* [AuthorizationNotFoundFault](#AuthorizationNotFoundFault)
* [AuthorizationQuotaExceededFault](#AuthorizationQuotaExceededFault)
* [BucketNotFoundFault](#BucketNotFoundFault)
* [ClusterAlreadyExistsFault](#ClusterAlreadyExistsFault)
* [ClusterNotFoundFault](#ClusterNotFoundFault)
* [ClusterParameterGroupAlreadyExistsFault](#ClusterParameterGroupAlreadyExistsFault)
* [ClusterParameterGroupNotFoundFault](#ClusterParameterGroupNotFoundFault)
* [ClusterParameterGroupQuotaExceededFault](#ClusterParameterGroupQuotaExceededFault)
* [ClusterQuotaExceededFault](#ClusterQuotaExceededFault)
* [ClusterSecurityGroupAlreadyExistsFault](#ClusterSecurityGroupAlreadyExistsFault)
* [ClusterSecurityGroupNotFoundFault](#ClusterSecurityGroupNotFoundFault)
* [ClusterSecurityGroupQuotaExceededFault](#ClusterSecurityGroupQuotaExceededFault)
* [ClusterSnapshotAlreadyExistsFault](#ClusterSnapshotAlreadyExistsFault)
* [ClusterSnapshotNotFoundFault](#ClusterSnapshotNotFoundFault)
* [ClusterSnapshotQuotaExceededFault](#ClusterSnapshotQuotaExceededFault)
* [ClusterSubnetGroupAlreadyExistsFault](#ClusterSubnetGroupAlreadyExistsFault)
* [ClusterSubnetGroupNotFoundFault](#ClusterSubnetGroupNotFoundFault)
* [ClusterSubnetGroupQuotaExceededFault](#ClusterSubnetGroupQuotaExceededFault)
* [ClusterSubnetQuotaExceededFault](#ClusterSubnetQuotaExceededFault)
* [CopyToRegionDisabledFault](#CopyToRegionDisabledFault)
* [DependentServiceRequestThrottlingFault](#DependentServiceRequestThrottlingFault)
* [EventSubscriptionQuotaExceededFault](#EventSubscriptionQuotaExceededFault)
* [HsmClientCertificateAlreadyExistsFault](#HsmClientCertificateAlreadyExistsFault)
* [HsmClientCertificateNotFoundFault](#HsmClientCertificateNotFoundFault)
* [HsmClientCertificateQuotaExceededFault](#HsmClientCertificateQuotaExceededFault)
* [HsmConfigurationAlreadyExistsFault](#HsmConfigurationAlreadyExistsFault)
* [HsmConfigurationNotFoundFault](#HsmConfigurationNotFoundFault)
* [HsmConfigurationQuotaExceededFault](#HsmConfigurationQuotaExceededFault)
* [InProgressTableRestoreQuotaExceededFault](#InProgressTableRestoreQuotaExceededFault)
* [IncompatibleOrderableOptions](#IncompatibleOrderableOptions)
* [InsufficientClusterCapacityFault](#InsufficientClusterCapacityFault)
* [InsufficientS3BucketPolicyFault](#InsufficientS3BucketPolicyFault)
* [InvalidClusterParameterGroupStateFault](#InvalidClusterParameterGroupStateFault)
* [InvalidClusterSecurityGroupStateFault](#InvalidClusterSecurityGroupStateFault)
* [InvalidClusterSnapshotStateFault](#InvalidClusterSnapshotStateFault)
* [InvalidClusterStateFault](#InvalidClusterStateFault)
* [InvalidClusterSubnetGroupStateFault](#InvalidClusterSubnetGroupStateFault)
* [InvalidClusterSubnetStateFault](#InvalidClusterSubnetStateFault)
* [InvalidElasticIpFault](#InvalidElasticIpFault)
* [InvalidHsmClientCertificateStateFault](#InvalidHsmClientCertificateStateFault)
* [InvalidHsmConfigurationStateFault](#InvalidHsmConfigurationStateFault)
* [InvalidRestoreFault](#InvalidRestoreFault)
* [InvalidS3BucketNameFault](#InvalidS3BucketNameFault)
* [InvalidS3KeyPrefixFault](#InvalidS3KeyPrefixFault)
* [InvalidSnapshotCopyGrantStateFault](#InvalidSnapshotCopyGrantStateFault)
* [InvalidSubnet](#InvalidSubnet)
* [InvalidSubscriptionStateFault](#InvalidSubscriptionStateFault)
* [InvalidTableRestoreArgumentFault](#InvalidTableRestoreArgumentFault)
* [InvalidTagFault](#InvalidTagFault)
* [InvalidVPCNetworkStateFault](#InvalidVPCNetworkStateFault)
* [LimitExceededFault](#LimitExceededFault)
* [NumberOfNodesPerClusterLimitExceededFault](#NumberOfNodesPerClusterLimitExceededFault)
* [NumberOfNodesQuotaExceededFault](#NumberOfNodesQuotaExceededFault)
* [ReservedNodeAlreadyExistsFault](#ReservedNodeAlreadyExistsFault)
* [ReservedNodeNotFoundFault](#ReservedNodeNotFoundFault)
* [ReservedNodeOfferingNotFoundFault](#ReservedNodeOfferingNotFoundFault)
* [ReservedNodeQuotaExceededFault](#ReservedNodeQuotaExceededFault)
* [ResizeNotFoundFault](#ResizeNotFoundFault)
* [ResourceNotFoundFault](#ResourceNotFoundFault)
* [SNSInvalidTopicFault](#SNSInvalidTopicFault)
* [SNSNoAuthorizationFault](#SNSNoAuthorizationFault)
* [SNSTopicArnNotFoundFault](#SNSTopicArnNotFoundFault)
* [SnapshotCopyAlreadyDisabledFault](#SnapshotCopyAlreadyDisabledFault)
* [SnapshotCopyAlreadyEnabledFault](#SnapshotCopyAlreadyEnabledFault)
* [SnapshotCopyDisabledFault](#SnapshotCopyDisabledFault)
* [SnapshotCopyGrantAlreadyExistsFault](#SnapshotCopyGrantAlreadyExistsFault)
* [SnapshotCopyGrantNotFoundFault](#SnapshotCopyGrantNotFoundFault)
* [SnapshotCopyGrantQuotaExceededFault](#SnapshotCopyGrantQuotaExceededFault)
* [SourceNotFoundFault](#SourceNotFoundFault)
* [SubnetAlreadyInUse](#SubnetAlreadyInUse)
* [SubscriptionAlreadyExistFault](#SubscriptionAlreadyExistFault)
* [SubscriptionCategoryNotFoundFault](#SubscriptionCategoryNotFoundFault)
* [SubscriptionEventIdNotFoundFault](#SubscriptionEventIdNotFoundFault)
* [SubscriptionNotFoundFault](#SubscriptionNotFoundFault)
* [SubscriptionSeverityNotFoundFault](#SubscriptionSeverityNotFoundFault)
* [TableRestoreNotFoundFault](#TableRestoreNotFoundFault)
* [TagLimitExceededFault](#TagLimitExceededFault)
* [UnauthorizedOperation](#UnauthorizedOperation)
* [UnknownSnapshotCopyRegionFault](#UnknownSnapshotCopyRegionFault)
* [UnsupportedOperationFault](#UnsupportedOperationFault)
* [UnsupportedOptionFault](#UnsupportedOptionFault)


@docs AccessToSnapshotDeniedFault,AuthorizationAlreadyExistsFault,AuthorizationNotFoundFault,AuthorizationQuotaExceededFault,BucketNotFoundFault,ClusterAlreadyExistsFault,ClusterNotFoundFault,ClusterParameterGroupAlreadyExistsFault,ClusterParameterGroupNotFoundFault,ClusterParameterGroupQuotaExceededFault,ClusterQuotaExceededFault,ClusterSecurityGroupAlreadyExistsFault,ClusterSecurityGroupNotFoundFault,ClusterSecurityGroupQuotaExceededFault,ClusterSnapshotAlreadyExistsFault,ClusterSnapshotNotFoundFault,ClusterSnapshotQuotaExceededFault,ClusterSubnetGroupAlreadyExistsFault,ClusterSubnetGroupNotFoundFault,ClusterSubnetGroupQuotaExceededFault,ClusterSubnetQuotaExceededFault,CopyToRegionDisabledFault,DependentServiceRequestThrottlingFault,EventSubscriptionQuotaExceededFault,HsmClientCertificateAlreadyExistsFault,HsmClientCertificateNotFoundFault,HsmClientCertificateQuotaExceededFault,HsmConfigurationAlreadyExistsFault,HsmConfigurationNotFoundFault,HsmConfigurationQuotaExceededFault,InProgressTableRestoreQuotaExceededFault,IncompatibleOrderableOptions,InsufficientClusterCapacityFault,InsufficientS3BucketPolicyFault,InvalidClusterParameterGroupStateFault,InvalidClusterSecurityGroupStateFault,InvalidClusterSnapshotStateFault,InvalidClusterStateFault,InvalidClusterSubnetGroupStateFault,InvalidClusterSubnetStateFault,InvalidElasticIpFault,InvalidHsmClientCertificateStateFault,InvalidHsmConfigurationStateFault,InvalidRestoreFault,InvalidS3BucketNameFault,InvalidS3KeyPrefixFault,InvalidSnapshotCopyGrantStateFault,InvalidSubnet,InvalidSubscriptionStateFault,InvalidTableRestoreArgumentFault,InvalidTagFault,InvalidVPCNetworkStateFault,LimitExceededFault,NumberOfNodesPerClusterLimitExceededFault,NumberOfNodesQuotaExceededFault,ReservedNodeAlreadyExistsFault,ReservedNodeNotFoundFault,ReservedNodeOfferingNotFoundFault,ReservedNodeQuotaExceededFault,ResizeNotFoundFault,ResourceNotFoundFault,SNSInvalidTopicFault,SNSNoAuthorizationFault,SNSTopicArnNotFoundFault,SnapshotCopyAlreadyDisabledFault,SnapshotCopyAlreadyEnabledFault,SnapshotCopyDisabledFault,SnapshotCopyGrantAlreadyExistsFault,SnapshotCopyGrantNotFoundFault,SnapshotCopyGrantQuotaExceededFault,SourceNotFoundFault,SubnetAlreadyInUse,SubscriptionAlreadyExistFault,SubscriptionCategoryNotFoundFault,SubscriptionEventIdNotFoundFault,SubscriptionNotFoundFault,SubscriptionSeverityNotFoundFault,TableRestoreNotFoundFault,TagLimitExceededFault,UnauthorizedOperation,UnknownSnapshotCopyRegionFault,UnsupportedOperationFault,UnsupportedOptionFault

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "redshift"
        "2012-12-01"
        "undefined"
        "AWSREDSHIFT_20121201."
        "redshift.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds an inbound (ingress) rule to an Amazon Redshift security group. Depending on whether the application accessing your cluster is running on the Internet or an Amazon EC2 instance, you can authorize inbound access to either a Classless Interdomain Routing (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group. You can add as many as 20 ingress rules to an Amazon Redshift security group.</p> <p>If you authorize access to an Amazon EC2 security group, specify <i>EC2SecurityGroupName</i> and <i>EC2SecurityGroupOwnerId</i>. The Amazon EC2 security group and Amazon Redshift cluster must be in the same AWS region. </p> <p>If you authorize access to a CIDR/IP address range, specify <i>CIDRIP</i>. For an overview of CIDR blocks, see the Wikipedia article on <a href="http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless Inter-Domain Routing</a>. </p> <p>You must also associate the security group with a cluster so that clients running on these IP addresses or the EC2 instance are authorized to connect to the cluster. For information about managing security groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Working with Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `clusterSecurityGroupName` __:__ `String`


-}
authorizeClusterSecurityGroupIngress :
    String
    -> (AuthorizeClusterSecurityGroupIngressOptions -> AuthorizeClusterSecurityGroupIngressOptions)
    -> AWS.Request AuthorizeClusterSecurityGroupIngressResult
authorizeClusterSecurityGroupIngress clusterSecurityGroupName setOptions =
  let
    options = setOptions (AuthorizeClusterSecurityGroupIngressOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AuthorizeClusterSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        authorizeClusterSecurityGroupIngressResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a authorizeClusterSecurityGroupIngress request
-}
type alias AuthorizeClusterSecurityGroupIngressOptions =
    { cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }



{-| <p>Authorizes the specified AWS customer account to restore the specified snapshot.</p> <p> For more information about working with snapshots, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `snapshotIdentifier` __:__ `String`
* `accountWithRestoreAccess` __:__ `String`


-}
authorizeSnapshotAccess :
    String
    -> String
    -> (AuthorizeSnapshotAccessOptions -> AuthorizeSnapshotAccessOptions)
    -> AWS.Request AuthorizeSnapshotAccessResult
authorizeSnapshotAccess snapshotIdentifier accountWithRestoreAccess setOptions =
  let
    options = setOptions (AuthorizeSnapshotAccessOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AuthorizeSnapshotAccess"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        authorizeSnapshotAccessResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a authorizeSnapshotAccess request
-}
type alias AuthorizeSnapshotAccessOptions =
    { snapshotClusterIdentifier : Maybe String
    }



{-| <p>Copies the specified automated cluster snapshot to a new manual cluster snapshot. The source must be an automated snapshot and it must be in the available state.</p> <p>When you delete a cluster, Amazon Redshift deletes any automated snapshots of the cluster. Also, when the retention period of the snapshot expires, Amazon Redshift automatically deletes it. If you want to keep an automated snapshot for a longer period, you can make a manual copy of the snapshot. Manual snapshots are retained until you delete them.</p> <p> For more information about working with snapshots, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `sourceSnapshotIdentifier` __:__ `String`
* `targetSnapshotIdentifier` __:__ `String`


-}
copyClusterSnapshot :
    String
    -> String
    -> (CopyClusterSnapshotOptions -> CopyClusterSnapshotOptions)
    -> AWS.Request CopyClusterSnapshotResult
copyClusterSnapshot sourceSnapshotIdentifier targetSnapshotIdentifier setOptions =
  let
    options = setOptions (CopyClusterSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copyClusterSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a copyClusterSnapshot request
-}
type alias CopyClusterSnapshotOptions =
    { sourceSnapshotClusterIdentifier : Maybe String
    }



{-| <p>Creates a new cluster.</p> <p>To create the cluster in Virtual Private Cloud (VPC), you must provide a cluster subnet group name. The cluster subnet group identifies the subnets of your VPC that Amazon Redshift uses when creating the cluster. For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`
* `nodeType` __:__ `String`
* `masterUsername` __:__ `String`
* `masterUserPassword` __:__ `String`


-}
createCluster :
    String
    -> String
    -> String
    -> String
    -> (CreateClusterOptions -> CreateClusterOptions)
    -> AWS.Request CreateClusterResult
createCluster clusterIdentifier nodeType masterUsername masterUserPassword setOptions =
  let
    options = setOptions (CreateClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createClusterResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createCluster request
-}
type alias CreateClusterOptions =
    { dBName : Maybe String
    , clusterType : Maybe String
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , clusterSubnetGroupName : Maybe String
    , availabilityZone : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , clusterParameterGroupName : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , port_ : Maybe Int
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , numberOfNodes : Maybe Int
    , publiclyAccessible : Maybe Bool
    , encrypted : Maybe Bool
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , elasticIp : Maybe String
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , additionalInfo : Maybe String
    , iamRoles : Maybe (List String)
    }



{-| <p>Creates an Amazon Redshift parameter group.</p> <p>Creating parameter groups is independent of creating clusters. You can associate a cluster with a parameter group when you create the cluster. You can also associate an existing cluster with a parameter group after the cluster is created by using <a>ModifyCluster</a>. </p> <p>Parameters in the parameter group define specific behavior that applies to the databases you create on the cluster. For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `parameterGroupName` __:__ `String`
* `parameterGroupFamily` __:__ `String`
* `description` __:__ `String`


-}
createClusterParameterGroup :
    String
    -> String
    -> String
    -> (CreateClusterParameterGroupOptions -> CreateClusterParameterGroupOptions)
    -> AWS.Request CreateClusterParameterGroupResult
createClusterParameterGroup parameterGroupName parameterGroupFamily description setOptions =
  let
    options = setOptions (CreateClusterParameterGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createClusterParameterGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createClusterParameterGroup request
-}
type alias CreateClusterParameterGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a new Amazon Redshift security group. You use security groups to control access to non-VPC clusters.</p> <p> For information about managing security groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `clusterSecurityGroupName` __:__ `String`
* `description` __:__ `String`


-}
createClusterSecurityGroup :
    String
    -> String
    -> (CreateClusterSecurityGroupOptions -> CreateClusterSecurityGroupOptions)
    -> AWS.Request CreateClusterSecurityGroupResult
createClusterSecurityGroup clusterSecurityGroupName description setOptions =
  let
    options = setOptions (CreateClusterSecurityGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateClusterSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createClusterSecurityGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createClusterSecurityGroup request
-}
type alias CreateClusterSecurityGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a manual snapshot of the specified cluster. The cluster must be in the <code>available</code> state. </p> <p> For more information about working with snapshots, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `snapshotIdentifier` __:__ `String`
* `clusterIdentifier` __:__ `String`


-}
createClusterSnapshot :
    String
    -> String
    -> (CreateClusterSnapshotOptions -> CreateClusterSnapshotOptions)
    -> AWS.Request CreateClusterSnapshotResult
createClusterSnapshot snapshotIdentifier clusterIdentifier setOptions =
  let
    options = setOptions (CreateClusterSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createClusterSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createClusterSnapshot request
-}
type alias CreateClusterSnapshotOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when creating Amazon Redshift subnet group.</p> <p> For information about subnet groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html">Amazon Redshift Cluster Subnet Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `clusterSubnetGroupName` __:__ `String`
* `description` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}
createClusterSubnetGroup :
    String
    -> String
    -> (List String)
    -> (CreateClusterSubnetGroupOptions -> CreateClusterSubnetGroupOptions)
    -> AWS.Request CreateClusterSubnetGroupResult
createClusterSubnetGroup clusterSubnetGroupName description subnetIds setOptions =
  let
    options = setOptions (CreateClusterSubnetGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateClusterSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createClusterSubnetGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createClusterSubnetGroup request
-}
type alias CreateClusterSubnetGroupOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates an Amazon Redshift event notification subscription. This action requires an ARN (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon Redshift console, the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with Amazon SNS, you must create a topic in Amazon SNS and subscribe to the topic. The ARN is displayed in the SNS console.</p> <p>You can specify the source type, and lists of Amazon Redshift source IDs, event categories, and event severities. Notifications will be sent for all events you want that match those criteria. For example, you can specify source type = cluster, source ID = my-cluster-1 and mycluster2, event categories = Availability, Backup, and severity = ERROR. The subscription will only send notifications for those ERROR events in the Availability and Backup categories for the specified clusters.</p> <p>If you specify both the source type and source IDs, such as source type = cluster and source identifier = my-cluster-1, notifications will be sent for all the cluster events for my-cluster-1. If you specify a source type but do not specify a source identifier, you will receive notice of the events for the objects of that type in your AWS account. If you do not specify either the SourceType nor the SourceIdentifier, you will be notified of events generated from all Amazon Redshift sources belonging to your AWS account. You must specify a source type if you specify a source ID.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`
* `snsTopicArn` __:__ `String`


-}
createEventSubscription :
    String
    -> String
    -> (CreateEventSubscriptionOptions -> CreateEventSubscriptionOptions)
    -> AWS.Request CreateEventSubscriptionResult
createEventSubscription subscriptionName snsTopicArn setOptions =
  let
    options = setOptions (CreateEventSubscriptionOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateEventSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createEventSubscriptionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createEventSubscription request
-}
type alias CreateEventSubscriptionOptions =
    { sourceType : Maybe String
    , sourceIds : Maybe (List String)
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }



{-| <p>Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases.</p> <p>The command returns a public key, which you must store in the HSM. In addition to creating the HSM certificate, you must create an Amazon Redshift HSM configuration that provides a cluster the information needed to store and use encryption keys in the HSM. For more information, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html">Hardware Security Modules</a> in the Amazon Redshift Cluster Management Guide.</p>

__Required Parameters__

* `hsmClientCertificateIdentifier` __:__ `String`


-}
createHsmClientCertificate :
    String
    -> (CreateHsmClientCertificateOptions -> CreateHsmClientCertificateOptions)
    -> AWS.Request CreateHsmClientCertificateResult
createHsmClientCertificate hsmClientCertificateIdentifier setOptions =
  let
    options = setOptions (CreateHsmClientCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateHsmClientCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createHsmClientCertificateResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createHsmClientCertificate request
-}
type alias CreateHsmClientCertificateOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM). After creating the HSM configuration, you can specify it as a parameter when creating a cluster. The cluster will then store its encryption keys in the HSM.</p> <p>In addition to creating an HSM configuration, you must also create an HSM client certificate. For more information, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html">Hardware Security Modules</a> in the Amazon Redshift Cluster Management Guide.</p>

__Required Parameters__

* `hsmConfigurationIdentifier` __:__ `String`
* `description` __:__ `String`
* `hsmIpAddress` __:__ `String`
* `hsmPartitionName` __:__ `String`
* `hsmPartitionPassword` __:__ `String`
* `hsmServerPublicCertificate` __:__ `String`


-}
createHsmConfiguration :
    String
    -> String
    -> String
    -> String
    -> String
    -> String
    -> (CreateHsmConfigurationOptions -> CreateHsmConfigurationOptions)
    -> AWS.Request CreateHsmConfigurationResult
createHsmConfiguration hsmConfigurationIdentifier description hsmIpAddress hsmPartitionName hsmPartitionPassword hsmServerPublicCertificate setOptions =
  let
    options = setOptions (CreateHsmConfigurationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateHsmConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createHsmConfigurationResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createHsmConfiguration request
-}
type alias CreateHsmConfigurationOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Creates a snapshot copy grant that permits Amazon Redshift to use a customer master key (CMK) from AWS Key Management Service (AWS KMS) to encrypt copied snapshots in a destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

__Required Parameters__

* `snapshotCopyGrantName` __:__ `String`


-}
createSnapshotCopyGrant :
    String
    -> (CreateSnapshotCopyGrantOptions -> CreateSnapshotCopyGrantOptions)
    -> AWS.Request CreateSnapshotCopyGrantResult
createSnapshotCopyGrant snapshotCopyGrantName setOptions =
  let
    options = setOptions (CreateSnapshotCopyGrantOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateSnapshotCopyGrant"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSnapshotCopyGrantResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createSnapshotCopyGrant request
-}
type alias CreateSnapshotCopyGrantOptions =
    { kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    }



{-| <p>Adds one or more tags to a specified resource.</p> <p>A resource can have up to 10 tags. If you try to create more than 10 tags for a resource, you will receive an error and the attempt will fail.</p> <p>If you specify a key that already exists for the resource, the value for that key will be updated with the new value.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
createTags :
    String
    -> (List Tag)
    -> AWS.Request ()
createTags resourceName tags =
    AWS.Http.unsignedRequest
        "CreateTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a previously provisioned cluster. A successful response from the web service indicates that the request was received correctly. Use <a>DescribeClusters</a> to monitor the status of the deletion. The delete operation cannot be canceled or reverted once submitted. For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you want to shut down the cluster and retain it for future use, set <i>SkipFinalClusterSnapshot</i> to <code>false</code> and specify a name for <i>FinalClusterSnapshotIdentifier</i>. You can later restore this snapshot to resume using the cluster. If a final cluster snapshot is requested, the status of the cluster will be "final-snapshot" while the snapshot is being taken, then it's "deleting" once Amazon Redshift begins deleting the cluster. </p> <p> For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
deleteCluster :
    String
    -> (DeleteClusterOptions -> DeleteClusterOptions)
    -> AWS.Request DeleteClusterResult
deleteCluster clusterIdentifier setOptions =
  let
    options = setOptions (DeleteClusterOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteClusterResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteCluster request
-}
type alias DeleteClusterOptions =
    { skipFinalClusterSnapshot : Maybe Bool
    , finalClusterSnapshotIdentifier : Maybe String
    }



{-| <p>Deletes a specified Amazon Redshift parameter group.</p> <note> <p>You cannot delete a parameter group if it is associated with a cluster.</p> </note>

__Required Parameters__

* `parameterGroupName` __:__ `String`


-}
deleteClusterParameterGroup :
    String
    -> AWS.Request ()
deleteClusterParameterGroup parameterGroupName =
    AWS.Http.unsignedRequest
        "DeleteClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes an Amazon Redshift security group.</p> <note> <p>You cannot delete a security group that is associated with any clusters. You cannot delete the default security group.</p> </note> <p> For information about managing security groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `clusterSecurityGroupName` __:__ `String`


-}
deleteClusterSecurityGroup :
    String
    -> AWS.Request ()
deleteClusterSecurityGroup clusterSecurityGroupName =
    AWS.Http.unsignedRequest
        "DeleteClusterSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified manual snapshot. The snapshot must be in the <code>available</code> state, with no other users authorized to access the snapshot. </p> <p>Unlike automated snapshots, manual snapshots are retained even after you delete your cluster. Amazon Redshift does not delete your manual snapshots. You must delete manual snapshot explicitly to avoid getting charged. If other accounts are authorized to access the snapshot, you must revoke all of the authorizations before you can delete the snapshot.</p>

__Required Parameters__

* `snapshotIdentifier` __:__ `String`


-}
deleteClusterSnapshot :
    String
    -> (DeleteClusterSnapshotOptions -> DeleteClusterSnapshotOptions)
    -> AWS.Request DeleteClusterSnapshotResult
deleteClusterSnapshot snapshotIdentifier setOptions =
  let
    options = setOptions (DeleteClusterSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteClusterSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteClusterSnapshot request
-}
type alias DeleteClusterSnapshotOptions =
    { snapshotClusterIdentifier : Maybe String
    }



{-| <p>Deletes the specified cluster subnet group.</p>

__Required Parameters__

* `clusterSubnetGroupName` __:__ `String`


-}
deleteClusterSubnetGroup :
    String
    -> AWS.Request ()
deleteClusterSubnetGroup clusterSubnetGroupName =
    AWS.Http.unsignedRequest
        "DeleteClusterSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes an Amazon Redshift event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`


-}
deleteEventSubscription :
    String
    -> AWS.Request ()
deleteEventSubscription subscriptionName =
    AWS.Http.unsignedRequest
        "DeleteEventSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified HSM client certificate.</p>

__Required Parameters__

* `hsmClientCertificateIdentifier` __:__ `String`


-}
deleteHsmClientCertificate :
    String
    -> AWS.Request ()
deleteHsmClientCertificate hsmClientCertificateIdentifier =
    AWS.Http.unsignedRequest
        "DeleteHsmClientCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified Amazon Redshift HSM configuration.</p>

__Required Parameters__

* `hsmConfigurationIdentifier` __:__ `String`


-}
deleteHsmConfiguration :
    String
    -> AWS.Request ()
deleteHsmConfiguration hsmConfigurationIdentifier =
    AWS.Http.unsignedRequest
        "DeleteHsmConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified snapshot copy grant.</p>

__Required Parameters__

* `snapshotCopyGrantName` __:__ `String`


-}
deleteSnapshotCopyGrant :
    String
    -> AWS.Request ()
deleteSnapshotCopyGrant snapshotCopyGrantName =
    AWS.Http.unsignedRequest
        "DeleteSnapshotCopyGrant"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a tag or tags from a resource. You must provide the ARN of the resource from which you want to delete the tag or tags.</p>

__Required Parameters__

* `resourceName` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
deleteTags :
    String
    -> (List String)
    -> AWS.Request ()
deleteTags resourceName tagKeys =
    AWS.Http.unsignedRequest
        "DeleteTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group. For each parameter group, the response includes the parameter group name, description, and parameter group family name. You can optionally specify a name to retrieve the description of a specific parameter group.</p> <p> For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all parameter groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all parameter groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, parameter groups are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeClusterParameterGroups :
    (DescribeClusterParameterGroupsOptions -> DescribeClusterParameterGroupsOptions)
    -> AWS.Request ClusterParameterGroupsMessage
describeClusterParameterGroups setOptions =
  let
    options = setOptions (DescribeClusterParameterGroupsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusterParameterGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clusterParameterGroupsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClusterParameterGroups request
-}
type alias DescribeClusterParameterGroupsOptions =
    { parameterGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group. For each parameter the response includes information such as parameter name, description, data type, value, whether the parameter value is modifiable, and so on.</p> <p>You can specify <i>source</i> filter to retrieve parameters of only specific type. For example, to retrieve parameters that were modified by a user action such as from <a>ModifyClusterParameterGroup</a>, you can specify <i>source</i> equal to <i>user</i>.</p> <p> For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `parameterGroupName` __:__ `String`


-}
describeClusterParameters :
    String
    -> (DescribeClusterParametersOptions -> DescribeClusterParametersOptions)
    -> AWS.Request ClusterParameterGroupDetails
describeClusterParameters parameterGroupName setOptions =
  let
    options = setOptions (DescribeClusterParametersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusterParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clusterParameterGroupDetailsDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClusterParameters request
-}
type alias DescribeClusterParametersOptions =
    { source : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about Amazon Redshift security groups. If the name of a security group is specified, the response will contain only information about only that security group.</p> <p> For information about managing security groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all security groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all security groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, security groups are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeClusterSecurityGroups :
    (DescribeClusterSecurityGroupsOptions -> DescribeClusterSecurityGroupsOptions)
    -> AWS.Request ClusterSecurityGroupMessage
describeClusterSecurityGroups setOptions =
  let
    options = setOptions (DescribeClusterSecurityGroupsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusterSecurityGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clusterSecurityGroupMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClusterSecurityGroups request
-}
type alias DescribeClusterSecurityGroupsOptions =
    { clusterSecurityGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Returns one or more snapshot objects, which contain metadata about your cluster snapshots. By default, this operation returns information about all snapshots of all clusters that are owned by you AWS customer account. No information is returned for snapshots owned by inactive AWS customer accounts.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all snapshots that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all snapshots that have any combination of those values are returned. Only snapshots that you own are returned in the response; shared snapshots are not returned with the tag key and tag value request parameters.</p> <p>If both tag keys and values are omitted from the request, snapshots are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeClusterSnapshots :
    (DescribeClusterSnapshotsOptions -> DescribeClusterSnapshotsOptions)
    -> AWS.Request SnapshotMessage
describeClusterSnapshots setOptions =
  let
    options = setOptions (DescribeClusterSnapshotsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusterSnapshots"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        snapshotMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClusterSnapshots request
-}
type alias DescribeClusterSnapshotsOptions =
    { clusterIdentifier : Maybe String
    , snapshotIdentifier : Maybe String
    , snapshotType : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    , maxRecords : Maybe Int
    , marker : Maybe String
    , ownerAccount : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups. By default, this operation returns information about all cluster subnet groups that are defined in you AWS account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all subnet groups that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all subnet groups that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, subnet groups are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeClusterSubnetGroups :
    (DescribeClusterSubnetGroupsOptions -> DescribeClusterSubnetGroupsOptions)
    -> AWS.Request ClusterSubnetGroupMessage
describeClusterSubnetGroups setOptions =
  let
    options = setOptions (DescribeClusterSubnetGroupsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusterSubnetGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clusterSubnetGroupMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClusterSubnetGroups request
-}
type alias DescribeClusterSubnetGroupsOptions =
    { clusterSubnetGroupName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Returns descriptions of the available Amazon Redshift cluster versions. You can call this operation even before creating any clusters to learn more about the Amazon Redshift versions. For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__



-}
describeClusterVersions :
    (DescribeClusterVersionsOptions -> DescribeClusterVersionsOptions)
    -> AWS.Request ClusterVersionsMessage
describeClusterVersions setOptions =
  let
    options = setOptions (DescribeClusterVersionsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusterVersions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clusterVersionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClusterVersions request
-}
type alias DescribeClusterVersionsOptions =
    { clusterVersion : Maybe String
    , clusterParameterGroupFamily : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties. This operation supports pagination. For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all clusters that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all clusters that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, clusters are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeClusters :
    (DescribeClustersOptions -> DescribeClustersOptions)
    -> AWS.Request ClustersMessage
describeClusters setOptions =
  let
    options = setOptions (DescribeClustersOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClusters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clustersMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClusters request
-}
type alias DescribeClustersOptions =
    { clusterIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Returns a list of parameter settings for the specified parameter group family.</p> <p> For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `parameterGroupFamily` __:__ `String`


-}
describeDefaultClusterParameters :
    String
    -> (DescribeDefaultClusterParametersOptions -> DescribeDefaultClusterParametersOptions)
    -> AWS.Request DescribeDefaultClusterParametersResult
describeDefaultClusterParameters parameterGroupFamily setOptions =
  let
    options = setOptions (DescribeDefaultClusterParametersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDefaultClusterParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDefaultClusterParametersResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDefaultClusterParameters request
-}
type alias DescribeDefaultClusterParametersOptions =
    { maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Displays a list of event categories for all event source types, or for a specified source type. For a list of the event categories and source types, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html">Amazon Redshift Event Notifications</a>.</p>

__Required Parameters__



-}
describeEventCategories :
    (DescribeEventCategoriesOptions -> DescribeEventCategoriesOptions)
    -> AWS.Request EventCategoriesMessage
describeEventCategories setOptions =
  let
    options = setOptions (DescribeEventCategoriesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventCategories"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventCategoriesMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEventCategories request
-}
type alias DescribeEventCategoriesOptions =
    { sourceType : Maybe String
    }



{-| <p>Lists descriptions of all the Amazon Redshift event notifications subscription for a customer account. If you specify a subscription name, lists the description for that subscription.</p>

__Required Parameters__



-}
describeEventSubscriptions :
    (DescribeEventSubscriptionsOptions -> DescribeEventSubscriptionsOptions)
    -> AWS.Request EventSubscriptionsMessage
describeEventSubscriptions setOptions =
  let
    options = setOptions (DescribeEventSubscriptionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEventSubscriptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventSubscriptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEventSubscriptions request
-}
type alias DescribeEventSubscriptionsOptions =
    { subscriptionName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days. Events specific to a particular cluster, security group, snapshot or parameter group can be obtained by providing the name as a parameter. By default, the past hour of events are returned.</p>

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



{-| <p>Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all HSM client certificates that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeHsmClientCertificates :
    (DescribeHsmClientCertificatesOptions -> DescribeHsmClientCertificatesOptions)
    -> AWS.Request HsmClientCertificateMessage
describeHsmClientCertificates setOptions =
  let
    options = setOptions (DescribeHsmClientCertificatesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeHsmClientCertificates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        hsmClientCertificateMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeHsmClientCertificates request
-}
type alias DescribeHsmClientCertificatesOptions =
    { hsmClientCertificateIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your AWS customer account.</p> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM connections that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all HSM connections that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, HSM connections are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeHsmConfigurations :
    (DescribeHsmConfigurationsOptions -> DescribeHsmConfigurationsOptions)
    -> AWS.Request HsmConfigurationMessage
describeHsmConfigurations setOptions =
  let
    options = setOptions (DescribeHsmConfigurationsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeHsmConfigurations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        hsmConfigurationMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeHsmConfigurations request
-}
type alias DescribeHsmConfigurationsOptions =
    { hsmConfigurationIdentifier : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
describeLoggingStatus :
    String
    -> AWS.Request LoggingStatus
describeLoggingStatus clusterIdentifier =
    AWS.Http.unsignedRequest
        "DescribeLoggingStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        loggingStatusDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of orderable cluster options. Before you create a new cluster you can use this operation to find what options are available, such as the EC2 Availability Zones (AZ) in the specific AWS region that you can specify, and the node types you can request. The node types differ by available storage, memory, CPU and price. With the cost involved you might want to obtain a list of cluster options in the specific region and specify values when creating a cluster. For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__



-}
describeOrderableClusterOptions :
    (DescribeOrderableClusterOptionsOptions -> DescribeOrderableClusterOptionsOptions)
    -> AWS.Request OrderableClusterOptionsMessage
describeOrderableClusterOptions setOptions =
  let
    options = setOptions (DescribeOrderableClusterOptionsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeOrderableClusterOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        orderableClusterOptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeOrderableClusterOptions request
-}
type alias DescribeOrderableClusterOptionsOptions =
    { clusterVersion : Maybe String
    , nodeType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you. These descriptions help you determine which reserve node offering you want to purchase. You then use the unique offering ID in you call to <a>PurchaseReservedNodeOffering</a> to reserve one or more nodes for your Amazon Redshift cluster. </p> <p> For more information about reserved node offerings, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__



-}
describeReservedNodeOfferings :
    (DescribeReservedNodeOfferingsOptions -> DescribeReservedNodeOfferingsOptions)
    -> AWS.Request ReservedNodeOfferingsMessage
describeReservedNodeOfferings setOptions =
  let
    options = setOptions (DescribeReservedNodeOfferingsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedNodeOfferings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reservedNodeOfferingsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedNodeOfferings request
-}
type alias DescribeReservedNodeOfferingsOptions =
    { reservedNodeOfferingId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns the descriptions of the reserved nodes.</p>

__Required Parameters__



-}
describeReservedNodes :
    (DescribeReservedNodesOptions -> DescribeReservedNodesOptions)
    -> AWS.Request ReservedNodesMessage
describeReservedNodes setOptions =
  let
    options = setOptions (DescribeReservedNodesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedNodes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reservedNodesMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedNodes request
-}
type alias DescribeReservedNodesOptions =
    { reservedNodeId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns information about the last resize operation for the specified cluster. If no resize operation has ever been initiated for the specified cluster, a <code>HTTP 404</code> error is returned. If a resize operation was initiated and completed, the status of the resize remains as <code>SUCCEEDED</code> until the next resize. </p> <p>A resize operation can be requested using <a>ModifyCluster</a> and specifying a different number or type of nodes for the cluster. </p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
describeResize :
    String
    -> AWS.Request ResizeProgressMessage
describeResize clusterIdentifier =
    AWS.Http.unsignedRequest
        "DescribeResize"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resizeProgressMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of snapshot copy grants owned by the AWS account in the destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

__Required Parameters__



-}
describeSnapshotCopyGrants :
    (DescribeSnapshotCopyGrantsOptions -> DescribeSnapshotCopyGrantsOptions)
    -> AWS.Request SnapshotCopyGrantMessage
describeSnapshotCopyGrants setOptions =
  let
    options = setOptions (DescribeSnapshotCopyGrantsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSnapshotCopyGrants"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        snapshotCopyGrantMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSnapshotCopyGrants request
-}
type alias DescribeSnapshotCopyGrantsOptions =
    { snapshotCopyGrantName : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Lists the status of one or more table restore requests made using the <a>RestoreTableFromClusterSnapshot</a> API action. If you don't specify a value for the <code>TableRestoreRequestId</code> parameter, then <code>DescribeTableRestoreStatus</code> returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise <code>DescribeTableRestoreStatus</code> returns the status of the table specified by <code>TableRestoreRequestId</code>.</p>

__Required Parameters__



-}
describeTableRestoreStatus :
    (DescribeTableRestoreStatusOptions -> DescribeTableRestoreStatusOptions)
    -> AWS.Request TableRestoreStatusMessage
describeTableRestoreStatus setOptions =
  let
    options = setOptions (DescribeTableRestoreStatusOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTableRestoreStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        tableRestoreStatusMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTableRestoreStatus request
-}
type alias DescribeTableRestoreStatusOptions =
    { clusterIdentifier : Maybe String
    , tableRestoreRequestId : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of tags. You can return tags from a specific resource by specifying an ARN, or you can return all tags for a given type of resource, such as clusters, snapshots, and so on.</p> <p>The following are limitations for <code>DescribeTags</code>: </p> <ul> <li> <p>You cannot specify an ARN and a resource-type value together in the same request.</p> </li> <li> <p>You cannot use the <code>MaxRecords</code> and <code>Marker</code> parameters together with the ARN parameter.</p> </li> <li> <p>The <code>MaxRecords</code> parameter can be a range from 10 to 50 results to return in a request.</p> </li> </ul> <p>If you specify both tag keys and tag values in the same request, Amazon Redshift returns all resources that match any combination of the specified keys and values. For example, if you have <code>owner</code> and <code>environment</code> for tag keys, and <code>admin</code> and <code>test</code> for tag values, all resources that have any combination of those values are returned.</p> <p>If both tag keys and values are omitted from the request, resources are returned regardless of whether they have tag keys or values associated with them.</p>

__Required Parameters__



-}
describeTags :
    (DescribeTagsOptions -> DescribeTagsOptions)
    -> AWS.Request TaggedResourceListMessage
describeTags setOptions =
  let
    options = setOptions (DescribeTagsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        taggedResourceListMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    { resourceName : Maybe String
    , resourceType : Maybe String
    , maxRecords : Maybe Int
    , marker : Maybe String
    , tagKeys : Maybe (List String)
    , tagValues : Maybe (List String)
    }



{-| <p>Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
disableLogging :
    String
    -> AWS.Request LoggingStatus
disableLogging clusterIdentifier =
    AWS.Http.unsignedRequest
        "DisableLogging"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        loggingStatusDecoder
        |> AWS.UnsignedRequest



{-| <p>Disables the automatic copying of snapshots from one region to another region for a specified cluster.</p> <p>If your cluster and its snapshots are encrypted using a customer master key (CMK) from AWS KMS, use <a>DeleteSnapshotCopyGrant</a> to delete the grant that grants Amazon Redshift permission to the CMK in the destination region. </p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
disableSnapshotCopy :
    String
    -> AWS.Request DisableSnapshotCopyResult
disableSnapshotCopy clusterIdentifier =
    AWS.Http.unsignedRequest
        "DisableSnapshotCopy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableSnapshotCopyResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`
* `bucketName` __:__ `String`


-}
enableLogging :
    String
    -> String
    -> (EnableLoggingOptions -> EnableLoggingOptions)
    -> AWS.Request LoggingStatus
enableLogging clusterIdentifier bucketName setOptions =
  let
    options = setOptions (EnableLoggingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "EnableLogging"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        loggingStatusDecoder
        |> AWS.UnsignedRequest


{-| Options for a enableLogging request
-}
type alias EnableLoggingOptions =
    { s3KeyPrefix : Maybe String
    }



{-| <p>Enables the automatic copy of snapshots from one region to another region for a specified cluster.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`
* `destinationRegion` __:__ `String`


-}
enableSnapshotCopy :
    String
    -> String
    -> (EnableSnapshotCopyOptions -> EnableSnapshotCopyOptions)
    -> AWS.Request EnableSnapshotCopyResult
enableSnapshotCopy clusterIdentifier destinationRegion setOptions =
  let
    options = setOptions (EnableSnapshotCopyOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "EnableSnapshotCopy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enableSnapshotCopyResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a enableSnapshotCopy request
-}
type alias EnableSnapshotCopyOptions =
    { retentionPeriod : Maybe Int
    , snapshotCopyGrantName : Maybe String
    }



{-| <p>Modifies the settings for a cluster. For example, you can add another security or parameter group, update the preferred maintenance window, or change the master user password. Resetting a cluster password or modifying the security groups associated with a cluster do not need a reboot. However, modifying a parameter group requires a reboot for parameters to take effect. For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p> <p>You can also change node type and the number of nodes to scale up or down the cluster. When resizing a cluster, you must specify both the number of nodes and the node type even if one of the parameters does not change.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
modifyCluster :
    String
    -> (ModifyClusterOptions -> ModifyClusterOptions)
    -> AWS.Request ModifyClusterResult
modifyCluster clusterIdentifier setOptions =
  let
    options = setOptions (ModifyClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyClusterResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyCluster request
-}
type alias ModifyClusterOptions =
    { clusterType : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Maybe Int
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , masterUserPassword : Maybe String
    , clusterParameterGroupName : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , preferredMaintenanceWindow : Maybe String
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , newClusterIdentifier : Maybe String
    , publiclyAccessible : Maybe Bool
    , elasticIp : Maybe String
    , enhancedVpcRouting : Maybe Bool
    }



{-| <p>Modifies the list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services.</p> <p>A cluster can have up to 10 IAM roles associated at any time.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
modifyClusterIamRoles :
    String
    -> (ModifyClusterIamRolesOptions -> ModifyClusterIamRolesOptions)
    -> AWS.Request ModifyClusterIamRolesResult
modifyClusterIamRoles clusterIdentifier setOptions =
  let
    options = setOptions (ModifyClusterIamRolesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyClusterIamRoles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyClusterIamRolesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyClusterIamRoles request
-}
type alias ModifyClusterIamRolesOptions =
    { addIamRoles : Maybe (List String)
    , removeIamRoles : Maybe (List String)
    }



{-| <p>Modifies the parameters of a parameter group.</p> <p> For more information about parameters and parameter groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html">Amazon Redshift Parameter Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `parameterGroupName` __:__ `String`
* `parameters` __:__ `(List Parameter)`


-}
modifyClusterParameterGroup :
    String
    -> (List Parameter)
    -> AWS.Request ClusterParameterGroupNameMessage
modifyClusterParameterGroup parameterGroupName parameters =
    AWS.Http.unsignedRequest
        "ModifyClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clusterParameterGroupNameMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies a cluster subnet group to include the specified list of VPC subnets. The operation replaces the existing list of subnets with the new list of subnets.</p>

__Required Parameters__

* `clusterSubnetGroupName` __:__ `String`
* `subnetIds` __:__ `(List String)`


-}
modifyClusterSubnetGroup :
    String
    -> (List String)
    -> (ModifyClusterSubnetGroupOptions -> ModifyClusterSubnetGroupOptions)
    -> AWS.Request ModifyClusterSubnetGroupResult
modifyClusterSubnetGroup clusterSubnetGroupName subnetIds setOptions =
  let
    options = setOptions (ModifyClusterSubnetGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyClusterSubnetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyClusterSubnetGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyClusterSubnetGroup request
-}
type alias ModifyClusterSubnetGroupOptions =
    { description : Maybe String
    }



{-| <p>Modifies an existing Amazon Redshift event notification subscription.</p>

__Required Parameters__

* `subscriptionName` __:__ `String`


-}
modifyEventSubscription :
    String
    -> (ModifyEventSubscriptionOptions -> ModifyEventSubscriptionOptions)
    -> AWS.Request ModifyEventSubscriptionResult
modifyEventSubscription subscriptionName setOptions =
  let
    options = setOptions (ModifyEventSubscriptionOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyEventSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyEventSubscriptionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyEventSubscription request
-}
type alias ModifyEventSubscriptionOptions =
    { snsTopicArn : Maybe String
    , sourceType : Maybe String
    , sourceIds : Maybe (List String)
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    }



{-| <p>Modifies the number of days to retain automated snapshots in the destination region after they are copied from the source region.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`
* `retentionPeriod` __:__ `Int`


-}
modifySnapshotCopyRetentionPeriod :
    String
    -> Int
    -> AWS.Request ModifySnapshotCopyRetentionPeriodResult
modifySnapshotCopyRetentionPeriod clusterIdentifier retentionPeriod =
    AWS.Http.unsignedRequest
        "ModifySnapshotCopyRetentionPeriod"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifySnapshotCopyRetentionPeriodResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Allows you to purchase reserved nodes. Amazon Redshift offers a predefined set of reserved node offerings. You can purchase one or more of the offerings. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node offerings. You can call this API by providing a specific reserved node offering and the number of nodes you want to reserve. </p> <p> For more information about reserved node offerings, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html">Purchasing Reserved Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `reservedNodeOfferingId` __:__ `String`


-}
purchaseReservedNodeOffering :
    String
    -> (PurchaseReservedNodeOfferingOptions -> PurchaseReservedNodeOfferingOptions)
    -> AWS.Request PurchaseReservedNodeOfferingResult
purchaseReservedNodeOffering reservedNodeOfferingId setOptions =
  let
    options = setOptions (PurchaseReservedNodeOfferingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PurchaseReservedNodeOffering"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseReservedNodeOfferingResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a purchaseReservedNodeOffering request
-}
type alias PurchaseReservedNodeOfferingOptions =
    { nodeCount : Maybe Int
    }



{-| <p>Reboots a cluster. This action is taken as soon as possible. It results in a momentary outage to the cluster, during which the cluster status is set to <code>rebooting</code>. A cluster event is created when the reboot is completed. Any pending cluster modifications (see <a>ModifyCluster</a>) are applied at this reboot. For more information about managing clusters, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html">Amazon Redshift Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
rebootCluster :
    String
    -> AWS.Request RebootClusterResult
rebootCluster clusterIdentifier =
    AWS.Http.unsignedRequest
        "RebootCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rebootClusterResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to "engine-default". To reset the entire parameter group specify the <i>ResetAllParameters</i> parameter. For parameter changes to take effect you must reboot any associated clusters. </p>

__Required Parameters__

* `parameterGroupName` __:__ `String`


-}
resetClusterParameterGroup :
    String
    -> (ResetClusterParameterGroupOptions -> ResetClusterParameterGroupOptions)
    -> AWS.Request ClusterParameterGroupNameMessage
resetClusterParameterGroup parameterGroupName setOptions =
  let
    options = setOptions (ResetClusterParameterGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetClusterParameterGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        clusterParameterGroupNameMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a resetClusterParameterGroup request
-}
type alias ResetClusterParameterGroupOptions =
    { resetAllParameters : Maybe Bool
    , parameters : Maybe (List Parameter)
    }



{-| <p>Creates a new cluster from a snapshot. By default, Amazon Redshift creates the resulting cluster with the same configuration as the original cluster from which the snapshot was created, except that the new cluster is created with the default cluster security and parameter groups. After Amazon Redshift creates the cluster, you can use the <a>ModifyCluster</a> API to associate a different security group and different parameter group with the restored cluster. If you are using a DS node type, you can also choose to change to another DS node type of the same size during restore.</p> <p>If you restore a cluster into a VPC, you must provide a cluster subnet group where you want the cluster restored.</p> <p> For more information about working with snapshots, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`
* `snapshotIdentifier` __:__ `String`


-}
restoreFromClusterSnapshot :
    String
    -> String
    -> (RestoreFromClusterSnapshotOptions -> RestoreFromClusterSnapshotOptions)
    -> AWS.Request RestoreFromClusterSnapshotResult
restoreFromClusterSnapshot clusterIdentifier snapshotIdentifier setOptions =
  let
    options = setOptions (RestoreFromClusterSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreFromClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreFromClusterSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a restoreFromClusterSnapshot request
-}
type alias RestoreFromClusterSnapshotOptions =
    { snapshotClusterIdentifier : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , clusterSubnetGroupName : Maybe String
    , publiclyAccessible : Maybe Bool
    , ownerAccount : Maybe String
    , hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , elasticIp : Maybe String
    , clusterParameterGroupName : Maybe String
    , clusterSecurityGroups : Maybe (List String)
    , vpcSecurityGroupIds : Maybe (List String)
    , preferredMaintenanceWindow : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , kmsKeyId : Maybe String
    , nodeType : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , additionalInfo : Maybe String
    , iamRoles : Maybe (List String)
    }



{-| <p>Creates a new table from a table in an Amazon Redshift cluster snapshot. You must create the new table within the Amazon Redshift cluster that the snapshot was taken from.</p> <p>You cannot use <code>RestoreTableFromClusterSnapshot</code> to restore a table with the same name as an existing table in an Amazon Redshift cluster. That is, you cannot overwrite an existing table in a cluster with a restored table. If you want to replace your original table with a new, restored table, then rename or drop your original table before you call <code>RestoreTableFromClusterSnapshot</code>. When you have renamed your original table, then you can pass the original name of the table as the <code>NewTableName</code> parameter value in the call to <code>RestoreTableFromClusterSnapshot</code>. This way, you can replace the original table with the table created from the snapshot.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`
* `snapshotIdentifier` __:__ `String`
* `sourceDatabaseName` __:__ `String`
* `sourceTableName` __:__ `String`
* `newTableName` __:__ `String`


-}
restoreTableFromClusterSnapshot :
    String
    -> String
    -> String
    -> String
    -> String
    -> (RestoreTableFromClusterSnapshotOptions -> RestoreTableFromClusterSnapshotOptions)
    -> AWS.Request RestoreTableFromClusterSnapshotResult
restoreTableFromClusterSnapshot clusterIdentifier snapshotIdentifier sourceDatabaseName sourceTableName newTableName setOptions =
  let
    options = setOptions (RestoreTableFromClusterSnapshotOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreTableFromClusterSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreTableFromClusterSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a restoreTableFromClusterSnapshot request
-}
type alias RestoreTableFromClusterSnapshotOptions =
    { sourceSchemaName : Maybe String
    , targetDatabaseName : Maybe String
    , targetSchemaName : Maybe String
    }



{-| <p>Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group. To add an ingress rule, see <a>AuthorizeClusterSecurityGroupIngress</a>. For information about managing security groups, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html">Amazon Redshift Cluster Security Groups</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>

__Required Parameters__

* `clusterSecurityGroupName` __:__ `String`


-}
revokeClusterSecurityGroupIngress :
    String
    -> (RevokeClusterSecurityGroupIngressOptions -> RevokeClusterSecurityGroupIngressOptions)
    -> AWS.Request RevokeClusterSecurityGroupIngressResult
revokeClusterSecurityGroupIngress clusterSecurityGroupName setOptions =
  let
    options = setOptions (RevokeClusterSecurityGroupIngressOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RevokeClusterSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        revokeClusterSecurityGroupIngressResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a revokeClusterSecurityGroupIngress request
-}
type alias RevokeClusterSecurityGroupIngressOptions =
    { cIDRIP : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    }



{-| <p>Removes the ability of the specified AWS customer account to restore the specified snapshot. If the account is currently restoring the snapshot, the restore will run to completion.</p> <p> For more information about working with snapshots, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html">Amazon Redshift Snapshots</a> in the <i>Amazon Redshift Cluster Management Guide</i>.</p>

__Required Parameters__

* `snapshotIdentifier` __:__ `String`
* `accountWithRestoreAccess` __:__ `String`


-}
revokeSnapshotAccess :
    String
    -> String
    -> (RevokeSnapshotAccessOptions -> RevokeSnapshotAccessOptions)
    -> AWS.Request RevokeSnapshotAccessResult
revokeSnapshotAccess snapshotIdentifier accountWithRestoreAccess setOptions =
  let
    options = setOptions (RevokeSnapshotAccessOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RevokeSnapshotAccess"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        revokeSnapshotAccessResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a revokeSnapshotAccess request
-}
type alias RevokeSnapshotAccessOptions =
    { snapshotClusterIdentifier : Maybe String
    }



{-| <p>Rotates the encryption keys for a cluster.</p>

__Required Parameters__

* `clusterIdentifier` __:__ `String`


-}
rotateEncryptionKey :
    String
    -> AWS.Request RotateEncryptionKeyResult
rotateEncryptionKey clusterIdentifier =
    AWS.Http.unsignedRequest
        "RotateEncryptionKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rotateEncryptionKeyResultDecoder
        |> AWS.UnsignedRequest




{-| <p>The owner of the specified snapshot has not authorized your account to access the snapshot.</p>
-}
type alias AccessToSnapshotDeniedFault =
    { 
    }



accessToSnapshotDeniedFaultDecoder : JD.Decoder AccessToSnapshotDeniedFault
accessToSnapshotDeniedFaultDecoder =
    JDP.decode AccessToSnapshotDeniedFault



{-| <p>Describes an AWS customer account authorized to restore a snapshot.</p>
-}
type alias AccountWithRestoreAccess =
    { accountId : Maybe String
    }



accountWithRestoreAccessDecoder : JD.Decoder AccountWithRestoreAccess
accountWithRestoreAccessDecoder =
    JDP.decode AccountWithRestoreAccess
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing




{-| <p>The specified CIDR block or EC2 security group is already authorized for the specified cluster security group.</p>
-}
type alias AuthorizationAlreadyExistsFault =
    { 
    }



authorizationAlreadyExistsFaultDecoder : JD.Decoder AuthorizationAlreadyExistsFault
authorizationAlreadyExistsFaultDecoder =
    JDP.decode AuthorizationAlreadyExistsFault



{-| <p>The specified CIDR IP range or EC2 security group is not authorized for the specified cluster security group.</p>
-}
type alias AuthorizationNotFoundFault =
    { 
    }



authorizationNotFoundFaultDecoder : JD.Decoder AuthorizationNotFoundFault
authorizationNotFoundFaultDecoder =
    JDP.decode AuthorizationNotFoundFault



{-| <p>The authorization quota for the cluster security group has been reached.</p>
-}
type alias AuthorizationQuotaExceededFault =
    { 
    }



authorizationQuotaExceededFaultDecoder : JD.Decoder AuthorizationQuotaExceededFault
authorizationQuotaExceededFaultDecoder =
    JDP.decode AuthorizationQuotaExceededFault



{-| Type of HTTP response from authorizeClusterSecurityGroupIngre
-}
type alias AuthorizeClusterSecurityGroupIngressResult =
    { clusterSecurityGroup : Maybe ClusterSecurityGroup
    }



authorizeClusterSecurityGroupIngressResultDecoder : JD.Decoder AuthorizeClusterSecurityGroupIngressResult
authorizeClusterSecurityGroupIngressResultDecoder =
    JDP.decode AuthorizeClusterSecurityGroupIngressResult
        |> JDP.optional "clusterSecurityGroup" (JD.nullable clusterSecurityGroupDecoder) Nothing




{-| Type of HTTP response from authorizeSnapshotAcce
-}
type alias AuthorizeSnapshotAccessResult =
    { snapshot : Maybe Snapshot
    }



authorizeSnapshotAccessResultDecoder : JD.Decoder AuthorizeSnapshotAccessResult
authorizeSnapshotAccessResultDecoder =
    JDP.decode AuthorizeSnapshotAccessResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| <p>Describes an availability zone.</p>
-}
type alias AvailabilityZone =
    { name : Maybe String
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JDP.decode AvailabilityZone
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Could not find the specified S3 bucket.</p>
-}
type alias BucketNotFoundFault =
    { 
    }



bucketNotFoundFaultDecoder : JD.Decoder BucketNotFoundFault
bucketNotFoundFaultDecoder =
    JDP.decode BucketNotFoundFault



{-| <p>Describes a cluster.</p>
-}
type alias Cluster =
    { clusterIdentifier : Maybe String
    , nodeType : Maybe String
    , clusterStatus : Maybe String
    , modifyStatus : Maybe String
    , masterUsername : Maybe String
    , dBName : Maybe String
    , endpoint : Maybe Endpoint
    , clusterCreateTime : Maybe Date
    , automatedSnapshotRetentionPeriod : Maybe Int
    , clusterSecurityGroups : Maybe (List ClusterSecurityGroupMembership)
    , vpcSecurityGroups : Maybe (List VpcSecurityGroupMembership)
    , clusterParameterGroups : Maybe (List ClusterParameterGroupStatus)
    , clusterSubnetGroupName : Maybe String
    , vpcId : Maybe String
    , availabilityZone : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , pendingModifiedValues : Maybe PendingModifiedValues
    , clusterVersion : Maybe String
    , allowVersionUpgrade : Maybe Bool
    , numberOfNodes : Maybe Int
    , publiclyAccessible : Maybe Bool
    , encrypted : Maybe Bool
    , restoreStatus : Maybe RestoreStatus
    , hsmStatus : Maybe HsmStatus
    , clusterSnapshotCopyStatus : Maybe ClusterSnapshotCopyStatus
    , clusterPublicKey : Maybe String
    , clusterNodes : Maybe (List ClusterNode)
    , elasticIpStatus : Maybe ElasticIpStatus
    , clusterRevisionNumber : Maybe String
    , tags : Maybe (List Tag)
    , kmsKeyId : Maybe String
    , enhancedVpcRouting : Maybe Bool
    , iamRoles : Maybe (List ClusterIamRole)
    }



clusterDecoder : JD.Decoder Cluster
clusterDecoder =
    JDP.decode Cluster
        |> JDP.optional "clusterIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "modifyStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "masterUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "dBName" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpoint" (JD.nullable endpointDecoder) Nothing
        |> JDP.optional "clusterCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "automatedSnapshotRetentionPeriod" (JD.nullable JD.int) Nothing
        |> JDP.optional "clusterSecurityGroups" (JD.nullable (JD.list clusterSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "vpcSecurityGroups" (JD.nullable (JD.list vpcSecurityGroupMembershipDecoder)) Nothing
        |> JDP.optional "clusterParameterGroups" (JD.nullable (JD.list clusterParameterGroupStatusDecoder)) Nothing
        |> JDP.optional "clusterSubnetGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "pendingModifiedValues" (JD.nullable pendingModifiedValuesDecoder) Nothing
        |> JDP.optional "clusterVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "allowVersionUpgrade" (JD.nullable JD.bool) Nothing
        |> JDP.optional "numberOfNodes" (JD.nullable JD.int) Nothing
        |> JDP.optional "publiclyAccessible" (JD.nullable JD.bool) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "restoreStatus" (JD.nullable restoreStatusDecoder) Nothing
        |> JDP.optional "hsmStatus" (JD.nullable hsmStatusDecoder) Nothing
        |> JDP.optional "clusterSnapshotCopyStatus" (JD.nullable clusterSnapshotCopyStatusDecoder) Nothing
        |> JDP.optional "clusterPublicKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterNodes" (JD.nullable (JD.list clusterNodeDecoder)) Nothing
        |> JDP.optional "elasticIpStatus" (JD.nullable elasticIpStatusDecoder) Nothing
        |> JDP.optional "clusterRevisionNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "enhancedVpcRouting" (JD.nullable JD.bool) Nothing
        |> JDP.optional "iamRoles" (JD.nullable (JD.list clusterIamRoleDecoder)) Nothing




{-| <p>The account already has a cluster with the given identifier.</p>
-}
type alias ClusterAlreadyExistsFault =
    { 
    }



clusterAlreadyExistsFaultDecoder : JD.Decoder ClusterAlreadyExistsFault
clusterAlreadyExistsFaultDecoder =
    JDP.decode ClusterAlreadyExistsFault



{-| <p>An AWS Identity and Access Management (IAM) role that can be used by the associated Amazon Redshift cluster to access other AWS services.</p>
-}
type alias ClusterIamRole =
    { iamRoleArn : Maybe String
    , applyStatus : Maybe String
    }



clusterIamRoleDecoder : JD.Decoder ClusterIamRole
clusterIamRoleDecoder =
    JDP.decode ClusterIamRole
        |> JDP.optional "iamRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "applyStatus" (JD.nullable JD.string) Nothing




{-| <p>The identifier of a node in a cluster.</p>
-}
type alias ClusterNode =
    { nodeRole : Maybe String
    , privateIPAddress : Maybe String
    , publicIPAddress : Maybe String
    }



clusterNodeDecoder : JD.Decoder ClusterNode
clusterNodeDecoder =
    JDP.decode ClusterNode
        |> JDP.optional "nodeRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIPAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicIPAddress" (JD.nullable JD.string) Nothing




{-| <p>The <code>ClusterIdentifier</code> parameter does not refer to an existing cluster. </p>
-}
type alias ClusterNotFoundFault =
    { 
    }



clusterNotFoundFaultDecoder : JD.Decoder ClusterNotFoundFault
clusterNotFoundFaultDecoder =
    JDP.decode ClusterNotFoundFault



{-| <p>Describes a parameter group.</p>
-}
type alias ClusterParameterGroup =
    { parameterGroupName : Maybe String
    , parameterGroupFamily : Maybe String
    , description : Maybe String
    , tags : Maybe (List Tag)
    }



clusterParameterGroupDecoder : JD.Decoder ClusterParameterGroup
clusterParameterGroupDecoder =
    JDP.decode ClusterParameterGroup
        |> JDP.optional "parameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>A cluster parameter group with the same name already exists.</p>
-}
type alias ClusterParameterGroupAlreadyExistsFault =
    { 
    }



clusterParameterGroupAlreadyExistsFaultDecoder : JD.Decoder ClusterParameterGroupAlreadyExistsFault
clusterParameterGroupAlreadyExistsFaultDecoder =
    JDP.decode ClusterParameterGroupAlreadyExistsFault



{-| Type of HTTP response from clusterParameterGrou
-}
type alias ClusterParameterGroupDetails =
    { parameters : Maybe (List Parameter)
    , marker : Maybe String
    }



clusterParameterGroupDetailsDecoder : JD.Decoder ClusterParameterGroupDetails
clusterParameterGroupDetailsDecoder =
    JDP.decode ClusterParameterGroupDetails
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from clusterParameterGroupNam
-}
type alias ClusterParameterGroupNameMessage =
    { parameterGroupName : Maybe String
    , parameterGroupStatus : Maybe String
    }



clusterParameterGroupNameMessageDecoder : JD.Decoder ClusterParameterGroupNameMessage
clusterParameterGroupNameMessageDecoder =
    JDP.decode ClusterParameterGroupNameMessage
        |> JDP.optional "parameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterGroupStatus" (JD.nullable JD.string) Nothing




{-| <p>The parameter group name does not refer to an existing parameter group.</p>
-}
type alias ClusterParameterGroupNotFoundFault =
    { 
    }



clusterParameterGroupNotFoundFaultDecoder : JD.Decoder ClusterParameterGroupNotFoundFault
clusterParameterGroupNotFoundFaultDecoder =
    JDP.decode ClusterParameterGroupNotFoundFault



{-| <p>The request would result in the user exceeding the allowed number of cluster parameter groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias ClusterParameterGroupQuotaExceededFault =
    { 
    }



clusterParameterGroupQuotaExceededFaultDecoder : JD.Decoder ClusterParameterGroupQuotaExceededFault
clusterParameterGroupQuotaExceededFaultDecoder =
    JDP.decode ClusterParameterGroupQuotaExceededFault



{-| <p>Describes the status of a parameter group.</p>
-}
type alias ClusterParameterGroupStatus =
    { parameterGroupName : Maybe String
    , parameterApplyStatus : Maybe String
    , clusterParameterStatusList : Maybe (List ClusterParameterStatus)
    }



clusterParameterGroupStatusDecoder : JD.Decoder ClusterParameterGroupStatus
clusterParameterGroupStatusDecoder =
    JDP.decode ClusterParameterGroupStatus
        |> JDP.optional "parameterGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterApplyStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterParameterStatusList" (JD.nullable (JD.list clusterParameterStatusDecoder)) Nothing




{-| Type of HTTP response from clusterParameterGroup
-}
type alias ClusterParameterGroupsMessage =
    { marker : Maybe String
    , parameterGroups : Maybe (List ClusterParameterGroup)
    }



clusterParameterGroupsMessageDecoder : JD.Decoder ClusterParameterGroupsMessage
clusterParameterGroupsMessageDecoder =
    JDP.decode ClusterParameterGroupsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterGroups" (JD.nullable (JD.list clusterParameterGroupDecoder)) Nothing




{-| <p>Describes the status of a parameter group.</p>
-}
type alias ClusterParameterStatus =
    { parameterName : Maybe String
    , parameterApplyStatus : Maybe String
    , parameterApplyErrorDescription : Maybe String
    }



clusterParameterStatusDecoder : JD.Decoder ClusterParameterStatus
clusterParameterStatusDecoder =
    JDP.decode ClusterParameterStatus
        |> JDP.optional "parameterName" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterApplyStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameterApplyErrorDescription" (JD.nullable JD.string) Nothing




{-| <p>The request would exceed the allowed number of cluster instances for this account. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias ClusterQuotaExceededFault =
    { 
    }



clusterQuotaExceededFaultDecoder : JD.Decoder ClusterQuotaExceededFault
clusterQuotaExceededFaultDecoder =
    JDP.decode ClusterQuotaExceededFault



{-| <p>Describes a security group.</p>
-}
type alias ClusterSecurityGroup =
    { clusterSecurityGroupName : Maybe String
    , description : Maybe String
    , eC2SecurityGroups : Maybe (List EC2SecurityGroup)
    , iPRanges : Maybe (List IPRange)
    , tags : Maybe (List Tag)
    }



clusterSecurityGroupDecoder : JD.Decoder ClusterSecurityGroup
clusterSecurityGroupDecoder =
    JDP.decode ClusterSecurityGroup
        |> JDP.optional "clusterSecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroups" (JD.nullable (JD.list eC2SecurityGroupDecoder)) Nothing
        |> JDP.optional "iPRanges" (JD.nullable (JD.list iPRangeDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>A cluster security group with the same name already exists.</p>
-}
type alias ClusterSecurityGroupAlreadyExistsFault =
    { 
    }



clusterSecurityGroupAlreadyExistsFaultDecoder : JD.Decoder ClusterSecurityGroupAlreadyExistsFault
clusterSecurityGroupAlreadyExistsFaultDecoder =
    JDP.decode ClusterSecurityGroupAlreadyExistsFault



{-| <p>Describes a cluster security group.</p>
-}
type alias ClusterSecurityGroupMembership =
    { clusterSecurityGroupName : Maybe String
    , status : Maybe String
    }



clusterSecurityGroupMembershipDecoder : JD.Decoder ClusterSecurityGroupMembership
clusterSecurityGroupMembershipDecoder =
    JDP.decode ClusterSecurityGroupMembership
        |> JDP.optional "clusterSecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from clusterSecurityGrou
-}
type alias ClusterSecurityGroupMessage =
    { marker : Maybe String
    , clusterSecurityGroups : Maybe (List ClusterSecurityGroup)
    }



clusterSecurityGroupMessageDecoder : JD.Decoder ClusterSecurityGroupMessage
clusterSecurityGroupMessageDecoder =
    JDP.decode ClusterSecurityGroupMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterSecurityGroups" (JD.nullable (JD.list clusterSecurityGroupDecoder)) Nothing




{-| <p>The cluster security group name does not refer to an existing cluster security group.</p>
-}
type alias ClusterSecurityGroupNotFoundFault =
    { 
    }



clusterSecurityGroupNotFoundFaultDecoder : JD.Decoder ClusterSecurityGroupNotFoundFault
clusterSecurityGroupNotFoundFaultDecoder =
    JDP.decode ClusterSecurityGroupNotFoundFault



{-| <p>The request would result in the user exceeding the allowed number of cluster security groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias ClusterSecurityGroupQuotaExceededFault =
    { 
    }



clusterSecurityGroupQuotaExceededFaultDecoder : JD.Decoder ClusterSecurityGroupQuotaExceededFault
clusterSecurityGroupQuotaExceededFaultDecoder =
    JDP.decode ClusterSecurityGroupQuotaExceededFault



{-| <p>The value specified as a snapshot identifier is already used by an existing snapshot.</p>
-}
type alias ClusterSnapshotAlreadyExistsFault =
    { 
    }



clusterSnapshotAlreadyExistsFaultDecoder : JD.Decoder ClusterSnapshotAlreadyExistsFault
clusterSnapshotAlreadyExistsFaultDecoder =
    JDP.decode ClusterSnapshotAlreadyExistsFault



{-| <p>Returns the destination region and retention period that are configured for cross-region snapshot copy.</p>
-}
type alias ClusterSnapshotCopyStatus =
    { destinationRegion : Maybe String
    , retentionPeriod : Maybe Int
    , snapshotCopyGrantName : Maybe String
    }



clusterSnapshotCopyStatusDecoder : JD.Decoder ClusterSnapshotCopyStatus
clusterSnapshotCopyStatusDecoder =
    JDP.decode ClusterSnapshotCopyStatus
        |> JDP.optional "destinationRegion" (JD.nullable JD.string) Nothing
        |> JDP.optional "retentionPeriod" (JD.nullable JD.int) Nothing
        |> JDP.optional "snapshotCopyGrantName" (JD.nullable JD.string) Nothing




{-| <p>The snapshot identifier does not refer to an existing cluster snapshot.</p>
-}
type alias ClusterSnapshotNotFoundFault =
    { 
    }



clusterSnapshotNotFoundFaultDecoder : JD.Decoder ClusterSnapshotNotFoundFault
clusterSnapshotNotFoundFaultDecoder =
    JDP.decode ClusterSnapshotNotFoundFault



{-| <p>The request would result in the user exceeding the allowed number of cluster snapshots.</p>
-}
type alias ClusterSnapshotQuotaExceededFault =
    { 
    }



clusterSnapshotQuotaExceededFaultDecoder : JD.Decoder ClusterSnapshotQuotaExceededFault
clusterSnapshotQuotaExceededFaultDecoder =
    JDP.decode ClusterSnapshotQuotaExceededFault



{-| <p>Describes a subnet group.</p>
-}
type alias ClusterSubnetGroup =
    { clusterSubnetGroupName : Maybe String
    , description : Maybe String
    , vpcId : Maybe String
    , subnetGroupStatus : Maybe String
    , subnets : Maybe (List Subnet)
    , tags : Maybe (List Tag)
    }



clusterSubnetGroupDecoder : JD.Decoder ClusterSubnetGroup
clusterSubnetGroupDecoder =
    JDP.decode ClusterSubnetGroup
        |> JDP.optional "clusterSubnetGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetGroupStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnets" (JD.nullable (JD.list subnetDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>A <i>ClusterSubnetGroupName</i> is already used by an existing cluster subnet group. </p>
-}
type alias ClusterSubnetGroupAlreadyExistsFault =
    { 
    }



clusterSubnetGroupAlreadyExistsFaultDecoder : JD.Decoder ClusterSubnetGroupAlreadyExistsFault
clusterSubnetGroupAlreadyExistsFaultDecoder =
    JDP.decode ClusterSubnetGroupAlreadyExistsFault



{-| Type of HTTP response from clusterSubnetGrou
-}
type alias ClusterSubnetGroupMessage =
    { marker : Maybe String
    , clusterSubnetGroups : Maybe (List ClusterSubnetGroup)
    }



clusterSubnetGroupMessageDecoder : JD.Decoder ClusterSubnetGroupMessage
clusterSubnetGroupMessageDecoder =
    JDP.decode ClusterSubnetGroupMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterSubnetGroups" (JD.nullable (JD.list clusterSubnetGroupDecoder)) Nothing




{-| <p>The cluster subnet group name does not refer to an existing cluster subnet group.</p>
-}
type alias ClusterSubnetGroupNotFoundFault =
    { 
    }



clusterSubnetGroupNotFoundFaultDecoder : JD.Decoder ClusterSubnetGroupNotFoundFault
clusterSubnetGroupNotFoundFaultDecoder =
    JDP.decode ClusterSubnetGroupNotFoundFault



{-| <p>The request would result in user exceeding the allowed number of cluster subnet groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias ClusterSubnetGroupQuotaExceededFault =
    { 
    }



clusterSubnetGroupQuotaExceededFaultDecoder : JD.Decoder ClusterSubnetGroupQuotaExceededFault
clusterSubnetGroupQuotaExceededFaultDecoder =
    JDP.decode ClusterSubnetGroupQuotaExceededFault



{-| <p>The request would result in user exceeding the allowed number of subnets in a cluster subnet groups. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias ClusterSubnetQuotaExceededFault =
    { 
    }



clusterSubnetQuotaExceededFaultDecoder : JD.Decoder ClusterSubnetQuotaExceededFault
clusterSubnetQuotaExceededFaultDecoder =
    JDP.decode ClusterSubnetQuotaExceededFault



{-| <p>Describes a cluster version, including the parameter group family and description of the version.</p>
-}
type alias ClusterVersion =
    { clusterVersion : Maybe String
    , clusterParameterGroupFamily : Maybe String
    , description : Maybe String
    }



clusterVersionDecoder : JD.Decoder ClusterVersion
clusterVersionDecoder =
    JDP.decode ClusterVersion
        |> JDP.optional "clusterVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterParameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from clusterVersion
-}
type alias ClusterVersionsMessage =
    { marker : Maybe String
    , clusterVersions : Maybe (List ClusterVersion)
    }



clusterVersionsMessageDecoder : JD.Decoder ClusterVersionsMessage
clusterVersionsMessageDecoder =
    JDP.decode ClusterVersionsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterVersions" (JD.nullable (JD.list clusterVersionDecoder)) Nothing




{-| Type of HTTP response from cluster
-}
type alias ClustersMessage =
    { marker : Maybe String
    , clusters : Maybe (List Cluster)
    }



clustersMessageDecoder : JD.Decoder ClustersMessage
clustersMessageDecoder =
    JDP.decode ClustersMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusters" (JD.nullable (JD.list clusterDecoder)) Nothing




{-| Type of HTTP response from copyClusterSnapsh
-}
type alias CopyClusterSnapshotResult =
    { snapshot : Maybe Snapshot
    }



copyClusterSnapshotResultDecoder : JD.Decoder CopyClusterSnapshotResult
copyClusterSnapshotResultDecoder =
    JDP.decode CopyClusterSnapshotResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| <p>Cross-region snapshot copy was temporarily disabled. Try your request again.</p>
-}
type alias CopyToRegionDisabledFault =
    { 
    }



copyToRegionDisabledFaultDecoder : JD.Decoder CopyToRegionDisabledFault
copyToRegionDisabledFaultDecoder =
    JDP.decode CopyToRegionDisabledFault



{-| Type of HTTP response from createClusterParameterGro
-}
type alias CreateClusterParameterGroupResult =
    { clusterParameterGroup : Maybe ClusterParameterGroup
    }



createClusterParameterGroupResultDecoder : JD.Decoder CreateClusterParameterGroupResult
createClusterParameterGroupResultDecoder =
    JDP.decode CreateClusterParameterGroupResult
        |> JDP.optional "clusterParameterGroup" (JD.nullable clusterParameterGroupDecoder) Nothing




{-| Type of HTTP response from createClust
-}
type alias CreateClusterResult =
    { cluster : Maybe Cluster
    }



createClusterResultDecoder : JD.Decoder CreateClusterResult
createClusterResultDecoder =
    JDP.decode CreateClusterResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| Type of HTTP response from createClusterSecurityGro
-}
type alias CreateClusterSecurityGroupResult =
    { clusterSecurityGroup : Maybe ClusterSecurityGroup
    }



createClusterSecurityGroupResultDecoder : JD.Decoder CreateClusterSecurityGroupResult
createClusterSecurityGroupResultDecoder =
    JDP.decode CreateClusterSecurityGroupResult
        |> JDP.optional "clusterSecurityGroup" (JD.nullable clusterSecurityGroupDecoder) Nothing




{-| Type of HTTP response from createClusterSnapsh
-}
type alias CreateClusterSnapshotResult =
    { snapshot : Maybe Snapshot
    }



createClusterSnapshotResultDecoder : JD.Decoder CreateClusterSnapshotResult
createClusterSnapshotResultDecoder =
    JDP.decode CreateClusterSnapshotResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| Type of HTTP response from createClusterSubnetGro
-}
type alias CreateClusterSubnetGroupResult =
    { clusterSubnetGroup : Maybe ClusterSubnetGroup
    }



createClusterSubnetGroupResultDecoder : JD.Decoder CreateClusterSubnetGroupResult
createClusterSubnetGroupResultDecoder =
    JDP.decode CreateClusterSubnetGroupResult
        |> JDP.optional "clusterSubnetGroup" (JD.nullable clusterSubnetGroupDecoder) Nothing




{-| Type of HTTP response from createEventSubscripti
-}
type alias CreateEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



createEventSubscriptionResultDecoder : JD.Decoder CreateEventSubscriptionResult
createEventSubscriptionResultDecoder =
    JDP.decode CreateEventSubscriptionResult
        |> JDP.optional "eventSubscription" (JD.nullable eventSubscriptionDecoder) Nothing




{-| Type of HTTP response from createHsmClientCertifica
-}
type alias CreateHsmClientCertificateResult =
    { hsmClientCertificate : Maybe HsmClientCertificate
    }



createHsmClientCertificateResultDecoder : JD.Decoder CreateHsmClientCertificateResult
createHsmClientCertificateResultDecoder =
    JDP.decode CreateHsmClientCertificateResult
        |> JDP.optional "hsmClientCertificate" (JD.nullable hsmClientCertificateDecoder) Nothing




{-| Type of HTTP response from createHsmConfigurati
-}
type alias CreateHsmConfigurationResult =
    { hsmConfiguration : Maybe HsmConfiguration
    }



createHsmConfigurationResultDecoder : JD.Decoder CreateHsmConfigurationResult
createHsmConfigurationResultDecoder =
    JDP.decode CreateHsmConfigurationResult
        |> JDP.optional "hsmConfiguration" (JD.nullable hsmConfigurationDecoder) Nothing




{-| Type of HTTP response from createSnapshotCopyGra
-}
type alias CreateSnapshotCopyGrantResult =
    { snapshotCopyGrant : Maybe SnapshotCopyGrant
    }



createSnapshotCopyGrantResultDecoder : JD.Decoder CreateSnapshotCopyGrantResult
createSnapshotCopyGrantResultDecoder =
    JDP.decode CreateSnapshotCopyGrantResult
        |> JDP.optional "snapshotCopyGrant" (JD.nullable snapshotCopyGrantDecoder) Nothing




{-| <p>Describes the default cluster parameters for a parameter group family.</p>
-}
type alias DefaultClusterParameters =
    { parameterGroupFamily : Maybe String
    , marker : Maybe String
    , parameters : Maybe (List Parameter)
    }



defaultClusterParametersDecoder : JD.Decoder DefaultClusterParameters
defaultClusterParametersDecoder =
    JDP.decode DefaultClusterParameters
        |> JDP.optional "parameterGroupFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing




{-| Type of HTTP response from deleteClust
-}
type alias DeleteClusterResult =
    { cluster : Maybe Cluster
    }



deleteClusterResultDecoder : JD.Decoder DeleteClusterResult
deleteClusterResultDecoder =
    JDP.decode DeleteClusterResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| Type of HTTP response from deleteClusterSnapsh
-}
type alias DeleteClusterSnapshotResult =
    { snapshot : Maybe Snapshot
    }



deleteClusterSnapshotResultDecoder : JD.Decoder DeleteClusterSnapshotResult
deleteClusterSnapshotResultDecoder =
    JDP.decode DeleteClusterSnapshotResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| <p>The request cannot be completed because a dependent service is throttling requests made by Amazon Redshift on your behalf. Wait and retry the request.</p>
-}
type alias DependentServiceRequestThrottlingFault =
    { 
    }



dependentServiceRequestThrottlingFaultDecoder : JD.Decoder DependentServiceRequestThrottlingFault
dependentServiceRequestThrottlingFaultDecoder =
    JDP.decode DependentServiceRequestThrottlingFault



{-| Type of HTTP response from describeDefaultClusterParamete
-}
type alias DescribeDefaultClusterParametersResult =
    { defaultClusterParameters : Maybe DefaultClusterParameters
    }



describeDefaultClusterParametersResultDecoder : JD.Decoder DescribeDefaultClusterParametersResult
describeDefaultClusterParametersResultDecoder =
    JDP.decode DescribeDefaultClusterParametersResult
        |> JDP.optional "defaultClusterParameters" (JD.nullable defaultClusterParametersDecoder) Nothing




{-| Type of HTTP response from disableSnapshotCo
-}
type alias DisableSnapshotCopyResult =
    { cluster : Maybe Cluster
    }



disableSnapshotCopyResultDecoder : JD.Decoder DisableSnapshotCopyResult
disableSnapshotCopyResultDecoder =
    JDP.decode DisableSnapshotCopyResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| <p>Describes an Amazon EC2 security group.</p>
-}
type alias EC2SecurityGroup =
    { status : Maybe String
    , eC2SecurityGroupName : Maybe String
    , eC2SecurityGroupOwnerId : Maybe String
    , tags : Maybe (List Tag)
    }



eC2SecurityGroupDecoder : JD.Decoder EC2SecurityGroup
eC2SecurityGroupDecoder =
    JDP.decode EC2SecurityGroup
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eC2SecurityGroupOwnerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Describes the status of the elastic IP (EIP) address.</p>
-}
type alias ElasticIpStatus =
    { elasticIp : Maybe String
    , status : Maybe String
    }



elasticIpStatusDecoder : JD.Decoder ElasticIpStatus
elasticIpStatusDecoder =
    JDP.decode ElasticIpStatus
        |> JDP.optional "elasticIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from enableSnapshotCo
-}
type alias EnableSnapshotCopyResult =
    { cluster : Maybe Cluster
    }



enableSnapshotCopyResultDecoder : JD.Decoder EnableSnapshotCopyResult
enableSnapshotCopyResultDecoder =
    JDP.decode EnableSnapshotCopyResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| <p>Describes a connection endpoint.</p>
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




{-| <p>Describes an event.</p>
-}
type alias Event =
    { sourceIdentifier : Maybe String
    , sourceType : Maybe SourceType
    , message : Maybe String
    , eventCategories : Maybe (List String)
    , severity : Maybe String
    , date : Maybe Date
    , eventId : Maybe String
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JDP.decode Event
        |> JDP.optional "sourceIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceType" (JD.nullable sourceTypeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventCategories" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "severity" (JD.nullable JD.string) Nothing
        |> JDP.optional "date" (JD.nullable JDX.date) Nothing
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing




{-| <p>Describes event categories.</p>
-}
type alias EventCategoriesMap =
    { sourceType : Maybe String
    , events : Maybe (List EventInfoMap)
    }



eventCategoriesMapDecoder : JD.Decoder EventCategoriesMap
eventCategoriesMapDecoder =
    JDP.decode EventCategoriesMap
        |> JDP.optional "sourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list eventInfoMapDecoder)) Nothing




{-| Type of HTTP response from eventCategorie
-}
type alias EventCategoriesMessage =
    { eventCategoriesMapList : Maybe (List EventCategoriesMap)
    }



eventCategoriesMessageDecoder : JD.Decoder EventCategoriesMessage
eventCategoriesMessageDecoder =
    JDP.decode EventCategoriesMessage
        |> JDP.optional "eventCategoriesMapList" (JD.nullable (JD.list eventCategoriesMapDecoder)) Nothing




{-| <p>Describes event information.</p>
-}
type alias EventInfoMap =
    { eventId : Maybe String
    , eventCategories : Maybe (List String)
    , eventDescription : Maybe String
    , severity : Maybe String
    }



eventInfoMapDecoder : JD.Decoder EventInfoMap
eventInfoMapDecoder =
    JDP.decode EventInfoMap
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventCategories" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "eventDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "severity" (JD.nullable JD.string) Nothing




{-| <p>Describes event subscriptions.</p>
-}
type alias EventSubscription =
    { customerAwsId : Maybe String
    , custSubscriptionId : Maybe String
    , snsTopicArn : Maybe String
    , status : Maybe String
    , subscriptionCreationTime : Maybe Date
    , sourceType : Maybe String
    , sourceIdsList : Maybe (List String)
    , eventCategoriesList : Maybe (List String)
    , severity : Maybe String
    , enabled : Maybe Bool
    , tags : Maybe (List Tag)
    }



eventSubscriptionDecoder : JD.Decoder EventSubscription
eventSubscriptionDecoder =
    JDP.decode EventSubscription
        |> JDP.optional "customerAwsId" (JD.nullable JD.string) Nothing
        |> JDP.optional "custSubscriptionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "subscriptionCreationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "sourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceIdsList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "eventCategoriesList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "severity" (JD.nullable JD.string) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>The request would exceed the allowed number of event subscriptions for this account. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
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




{-| <p>Returns information about an HSM client certificate. The certificate is stored in a secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data files.</p>
-}
type alias HsmClientCertificate =
    { hsmClientCertificateIdentifier : Maybe String
    , hsmClientCertificatePublicKey : Maybe String
    , tags : Maybe (List Tag)
    }



hsmClientCertificateDecoder : JD.Decoder HsmClientCertificate
hsmClientCertificateDecoder =
    JDP.decode HsmClientCertificate
        |> JDP.optional "hsmClientCertificateIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmClientCertificatePublicKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>There is already an existing Amazon Redshift HSM client certificate with the specified identifier.</p>
-}
type alias HsmClientCertificateAlreadyExistsFault =
    { 
    }



hsmClientCertificateAlreadyExistsFaultDecoder : JD.Decoder HsmClientCertificateAlreadyExistsFault
hsmClientCertificateAlreadyExistsFaultDecoder =
    JDP.decode HsmClientCertificateAlreadyExistsFault



{-| Type of HTTP response from hsmClientCertificat
-}
type alias HsmClientCertificateMessage =
    { marker : Maybe String
    , hsmClientCertificates : Maybe (List HsmClientCertificate)
    }



hsmClientCertificateMessageDecoder : JD.Decoder HsmClientCertificateMessage
hsmClientCertificateMessageDecoder =
    JDP.decode HsmClientCertificateMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmClientCertificates" (JD.nullable (JD.list hsmClientCertificateDecoder)) Nothing




{-| <p>There is no Amazon Redshift HSM client certificate with the specified identifier.</p>
-}
type alias HsmClientCertificateNotFoundFault =
    { 
    }



hsmClientCertificateNotFoundFaultDecoder : JD.Decoder HsmClientCertificateNotFoundFault
hsmClientCertificateNotFoundFaultDecoder =
    JDP.decode HsmClientCertificateNotFoundFault



{-| <p>The quota for HSM client certificates has been reached. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias HsmClientCertificateQuotaExceededFault =
    { 
    }



hsmClientCertificateQuotaExceededFaultDecoder : JD.Decoder HsmClientCertificateQuotaExceededFault
hsmClientCertificateQuotaExceededFaultDecoder =
    JDP.decode HsmClientCertificateQuotaExceededFault



{-| <p>Returns information about an HSM configuration, which is an object that describes to Amazon Redshift clusters the information they require to connect to an HSM where they can store database encryption keys.</p>
-}
type alias HsmConfiguration =
    { hsmConfigurationIdentifier : Maybe String
    , description : Maybe String
    , hsmIpAddress : Maybe String
    , hsmPartitionName : Maybe String
    , tags : Maybe (List Tag)
    }



hsmConfigurationDecoder : JD.Decoder HsmConfiguration
hsmConfigurationDecoder =
    JDP.decode HsmConfiguration
        |> JDP.optional "hsmConfigurationIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmPartitionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>There is already an existing Amazon Redshift HSM configuration with the specified identifier.</p>
-}
type alias HsmConfigurationAlreadyExistsFault =
    { 
    }



hsmConfigurationAlreadyExistsFaultDecoder : JD.Decoder HsmConfigurationAlreadyExistsFault
hsmConfigurationAlreadyExistsFaultDecoder =
    JDP.decode HsmConfigurationAlreadyExistsFault



{-| Type of HTTP response from hsmConfiguratio
-}
type alias HsmConfigurationMessage =
    { marker : Maybe String
    , hsmConfigurations : Maybe (List HsmConfiguration)
    }



hsmConfigurationMessageDecoder : JD.Decoder HsmConfigurationMessage
hsmConfigurationMessageDecoder =
    JDP.decode HsmConfigurationMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmConfigurations" (JD.nullable (JD.list hsmConfigurationDecoder)) Nothing




{-| <p>There is no Amazon Redshift HSM configuration with the specified identifier.</p>
-}
type alias HsmConfigurationNotFoundFault =
    { 
    }



hsmConfigurationNotFoundFaultDecoder : JD.Decoder HsmConfigurationNotFoundFault
hsmConfigurationNotFoundFaultDecoder =
    JDP.decode HsmConfigurationNotFoundFault



{-| <p>The quota for HSM configurations has been reached. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias HsmConfigurationQuotaExceededFault =
    { 
    }



hsmConfigurationQuotaExceededFaultDecoder : JD.Decoder HsmConfigurationQuotaExceededFault
hsmConfigurationQuotaExceededFaultDecoder =
    JDP.decode HsmConfigurationQuotaExceededFault



{-| <p>Describes the status of changes to HSM settings.</p>
-}
type alias HsmStatus =
    { hsmClientCertificateIdentifier : Maybe String
    , hsmConfigurationIdentifier : Maybe String
    , status : Maybe String
    }



hsmStatusDecoder : JD.Decoder HsmStatus
hsmStatusDecoder =
    JDP.decode HsmStatus
        |> JDP.optional "hsmClientCertificateIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmConfigurationIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Describes an IP range used in a security group.</p>
-}
type alias IPRange =
    { status : Maybe String
    , cIDRIP : Maybe String
    , tags : Maybe (List Tag)
    }



iPRangeDecoder : JD.Decoder IPRange
iPRangeDecoder =
    JDP.decode IPRange
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "cIDRIP" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>You have exceeded the allowed number of table restore requests. Wait for your current table restore requests to complete before making a new request.</p>
-}
type alias InProgressTableRestoreQuotaExceededFault =
    { 
    }



inProgressTableRestoreQuotaExceededFaultDecoder : JD.Decoder InProgressTableRestoreQuotaExceededFault
inProgressTableRestoreQuotaExceededFaultDecoder =
    JDP.decode InProgressTableRestoreQuotaExceededFault



{-| <p>The specified options are incompatible.</p>
-}
type alias IncompatibleOrderableOptions =
    { 
    }



incompatibleOrderableOptionsDecoder : JD.Decoder IncompatibleOrderableOptions
incompatibleOrderableOptionsDecoder =
    JDP.decode IncompatibleOrderableOptions



{-| <p>The number of nodes specified exceeds the allotted capacity of the cluster.</p>
-}
type alias InsufficientClusterCapacityFault =
    { 
    }



insufficientClusterCapacityFaultDecoder : JD.Decoder InsufficientClusterCapacityFault
insufficientClusterCapacityFaultDecoder =
    JDP.decode InsufficientClusterCapacityFault



{-| <p>The cluster does not have read bucket or put object permissions on the S3 bucket specified when enabling logging.</p>
-}
type alias InsufficientS3BucketPolicyFault =
    { 
    }



insufficientS3BucketPolicyFaultDecoder : JD.Decoder InsufficientS3BucketPolicyFault
insufficientS3BucketPolicyFaultDecoder =
    JDP.decode InsufficientS3BucketPolicyFault



{-| <p>The cluster parameter group action can not be completed because another task is in progress that involves the parameter group. Wait a few moments and try the operation again.</p>
-}
type alias InvalidClusterParameterGroupStateFault =
    { 
    }



invalidClusterParameterGroupStateFaultDecoder : JD.Decoder InvalidClusterParameterGroupStateFault
invalidClusterParameterGroupStateFaultDecoder =
    JDP.decode InvalidClusterParameterGroupStateFault



{-| <p>The state of the cluster security group is not <code>available</code>. </p>
-}
type alias InvalidClusterSecurityGroupStateFault =
    { 
    }



invalidClusterSecurityGroupStateFaultDecoder : JD.Decoder InvalidClusterSecurityGroupStateFault
invalidClusterSecurityGroupStateFaultDecoder =
    JDP.decode InvalidClusterSecurityGroupStateFault



{-| <p>The specified cluster snapshot is not in the <code>available</code> state, or other accounts are authorized to access the snapshot. </p>
-}
type alias InvalidClusterSnapshotStateFault =
    { 
    }



invalidClusterSnapshotStateFaultDecoder : JD.Decoder InvalidClusterSnapshotStateFault
invalidClusterSnapshotStateFaultDecoder =
    JDP.decode InvalidClusterSnapshotStateFault



{-| <p>The specified cluster is not in the <code>available</code> state. </p>
-}
type alias InvalidClusterStateFault =
    { 
    }



invalidClusterStateFaultDecoder : JD.Decoder InvalidClusterStateFault
invalidClusterStateFaultDecoder =
    JDP.decode InvalidClusterStateFault



{-| <p>The cluster subnet group cannot be deleted because it is in use.</p>
-}
type alias InvalidClusterSubnetGroupStateFault =
    { 
    }



invalidClusterSubnetGroupStateFaultDecoder : JD.Decoder InvalidClusterSubnetGroupStateFault
invalidClusterSubnetGroupStateFaultDecoder =
    JDP.decode InvalidClusterSubnetGroupStateFault



{-| <p>The state of the subnet is invalid.</p>
-}
type alias InvalidClusterSubnetStateFault =
    { 
    }



invalidClusterSubnetStateFaultDecoder : JD.Decoder InvalidClusterSubnetStateFault
invalidClusterSubnetStateFaultDecoder =
    JDP.decode InvalidClusterSubnetStateFault



{-| <p>The Elastic IP (EIP) is invalid or cannot be found.</p>
-}
type alias InvalidElasticIpFault =
    { 
    }



invalidElasticIpFaultDecoder : JD.Decoder InvalidElasticIpFault
invalidElasticIpFaultDecoder =
    JDP.decode InvalidElasticIpFault



{-| <p>The specified HSM client certificate is not in the <code>available</code> state, or it is still in use by one or more Amazon Redshift clusters.</p>
-}
type alias InvalidHsmClientCertificateStateFault =
    { 
    }



invalidHsmClientCertificateStateFaultDecoder : JD.Decoder InvalidHsmClientCertificateStateFault
invalidHsmClientCertificateStateFaultDecoder =
    JDP.decode InvalidHsmClientCertificateStateFault



{-| <p>The specified HSM configuration is not in the <code>available</code> state, or it is still in use by one or more Amazon Redshift clusters.</p>
-}
type alias InvalidHsmConfigurationStateFault =
    { 
    }



invalidHsmConfigurationStateFaultDecoder : JD.Decoder InvalidHsmConfigurationStateFault
invalidHsmConfigurationStateFaultDecoder =
    JDP.decode InvalidHsmConfigurationStateFault



{-| <p>The restore is invalid.</p>
-}
type alias InvalidRestoreFault =
    { 
    }



invalidRestoreFaultDecoder : JD.Decoder InvalidRestoreFault
invalidRestoreFaultDecoder =
    JDP.decode InvalidRestoreFault



{-| <p>The S3 bucket name is invalid. For more information about naming rules, go to <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">Bucket Restrictions and Limitations</a> in the Amazon Simple Storage Service (S3) Developer Guide.</p>
-}
type alias InvalidS3BucketNameFault =
    { 
    }



invalidS3BucketNameFaultDecoder : JD.Decoder InvalidS3BucketNameFault
invalidS3BucketNameFaultDecoder =
    JDP.decode InvalidS3BucketNameFault



{-| <p>The string specified for the logging S3 key prefix does not comply with the documented constraints.</p>
-}
type alias InvalidS3KeyPrefixFault =
    { 
    }



invalidS3KeyPrefixFaultDecoder : JD.Decoder InvalidS3KeyPrefixFault
invalidS3KeyPrefixFaultDecoder =
    JDP.decode InvalidS3KeyPrefixFault



{-| <p>The snapshot copy grant can't be deleted because it is used by one or more clusters.</p>
-}
type alias InvalidSnapshotCopyGrantStateFault =
    { 
    }



invalidSnapshotCopyGrantStateFaultDecoder : JD.Decoder InvalidSnapshotCopyGrantStateFault
invalidSnapshotCopyGrantStateFaultDecoder =
    JDP.decode InvalidSnapshotCopyGrantStateFault



{-| <p>The requested subnet is not valid, or not all of the subnets are in the same VPC.</p>
-}
type alias InvalidSubnet =
    { 
    }



invalidSubnetDecoder : JD.Decoder InvalidSubnet
invalidSubnetDecoder =
    JDP.decode InvalidSubnet



{-| <p>The subscription request is invalid because it is a duplicate request. This subscription request is already in progress.</p>
-}
type alias InvalidSubscriptionStateFault =
    { 
    }



invalidSubscriptionStateFaultDecoder : JD.Decoder InvalidSubscriptionStateFault
invalidSubscriptionStateFaultDecoder =
    JDP.decode InvalidSubscriptionStateFault



{-| <p>The value specified for the <code>sourceDatabaseName</code>, <code>sourceSchemaName</code>, or <code>sourceTableName</code> parameter, or a combination of these, doesn't exist in the snapshot.</p>
-}
type alias InvalidTableRestoreArgumentFault =
    { 
    }



invalidTableRestoreArgumentFaultDecoder : JD.Decoder InvalidTableRestoreArgumentFault
invalidTableRestoreArgumentFaultDecoder =
    JDP.decode InvalidTableRestoreArgumentFault



{-| <p>The tag is invalid.</p>
-}
type alias InvalidTagFault =
    { 
    }



invalidTagFaultDecoder : JD.Decoder InvalidTagFault
invalidTagFaultDecoder =
    JDP.decode InvalidTagFault



{-| <p>The cluster subnet group does not cover all Availability Zones.</p>
-}
type alias InvalidVPCNetworkStateFault =
    { 
    }



invalidVPCNetworkStateFaultDecoder : JD.Decoder InvalidVPCNetworkStateFault
invalidVPCNetworkStateFaultDecoder =
    JDP.decode InvalidVPCNetworkStateFault



{-| <p>The encryption key has exceeded its grant limit in AWS KMS.</p>
-}
type alias LimitExceededFault =
    { 
    }



limitExceededFaultDecoder : JD.Decoder LimitExceededFault
limitExceededFaultDecoder =
    JDP.decode LimitExceededFault



{-| Type of HTTP response from loggi
-}
type alias LoggingStatus =
    { loggingEnabled : Maybe Bool
    , bucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , lastSuccessfulDeliveryTime : Maybe Date
    , lastFailureTime : Maybe Date
    , lastFailureMessage : Maybe String
    }



loggingStatusDecoder : JD.Decoder LoggingStatus
loggingStatusDecoder =
    JDP.decode LoggingStatus
        |> JDP.optional "loggingEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "bucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3KeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastSuccessfulDeliveryTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastFailureTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastFailureMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from modifyClusterIamRol
-}
type alias ModifyClusterIamRolesResult =
    { cluster : Maybe Cluster
    }



modifyClusterIamRolesResultDecoder : JD.Decoder ModifyClusterIamRolesResult
modifyClusterIamRolesResultDecoder =
    JDP.decode ModifyClusterIamRolesResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| Type of HTTP response from modifyClust
-}
type alias ModifyClusterResult =
    { cluster : Maybe Cluster
    }



modifyClusterResultDecoder : JD.Decoder ModifyClusterResult
modifyClusterResultDecoder =
    JDP.decode ModifyClusterResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| Type of HTTP response from modifyClusterSubnetGro
-}
type alias ModifyClusterSubnetGroupResult =
    { clusterSubnetGroup : Maybe ClusterSubnetGroup
    }



modifyClusterSubnetGroupResultDecoder : JD.Decoder ModifyClusterSubnetGroupResult
modifyClusterSubnetGroupResultDecoder =
    JDP.decode ModifyClusterSubnetGroupResult
        |> JDP.optional "clusterSubnetGroup" (JD.nullable clusterSubnetGroupDecoder) Nothing




{-| Type of HTTP response from modifyEventSubscripti
-}
type alias ModifyEventSubscriptionResult =
    { eventSubscription : Maybe EventSubscription
    }



modifyEventSubscriptionResultDecoder : JD.Decoder ModifyEventSubscriptionResult
modifyEventSubscriptionResultDecoder =
    JDP.decode ModifyEventSubscriptionResult
        |> JDP.optional "eventSubscription" (JD.nullable eventSubscriptionDecoder) Nothing




{-| Type of HTTP response from modifySnapshotCopyRetentionPeri
-}
type alias ModifySnapshotCopyRetentionPeriodResult =
    { cluster : Maybe Cluster
    }



modifySnapshotCopyRetentionPeriodResultDecoder : JD.Decoder ModifySnapshotCopyRetentionPeriodResult
modifySnapshotCopyRetentionPeriodResultDecoder =
    JDP.decode ModifySnapshotCopyRetentionPeriodResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| <p>The operation would exceed the number of nodes allowed for a cluster.</p>
-}
type alias NumberOfNodesPerClusterLimitExceededFault =
    { 
    }



numberOfNodesPerClusterLimitExceededFaultDecoder : JD.Decoder NumberOfNodesPerClusterLimitExceededFault
numberOfNodesPerClusterLimitExceededFaultDecoder =
    JDP.decode NumberOfNodesPerClusterLimitExceededFault



{-| <p>The operation would exceed the number of nodes allotted to the account. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias NumberOfNodesQuotaExceededFault =
    { 
    }



numberOfNodesQuotaExceededFaultDecoder : JD.Decoder NumberOfNodesQuotaExceededFault
numberOfNodesQuotaExceededFaultDecoder =
    JDP.decode NumberOfNodesQuotaExceededFault



{-| <p>Describes an orderable cluster option.</p>
-}
type alias OrderableClusterOption =
    { clusterVersion : Maybe String
    , clusterType : Maybe String
    , nodeType : Maybe String
    , availabilityZones : Maybe (List AvailabilityZone)
    }



orderableClusterOptionDecoder : JD.Decoder OrderableClusterOption
orderableClusterOptionDecoder =
    JDP.decode OrderableClusterOption
        |> JDP.optional "clusterVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterType" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list availabilityZoneDecoder)) Nothing




{-| Type of HTTP response from orderableClusterOption
-}
type alias OrderableClusterOptionsMessage =
    { orderableClusterOptions : Maybe (List OrderableClusterOption)
    , marker : Maybe String
    }



orderableClusterOptionsMessageDecoder : JD.Decoder OrderableClusterOptionsMessage
orderableClusterOptionsMessageDecoder =
    JDP.decode OrderableClusterOptionsMessage
        |> JDP.optional "orderableClusterOptions" (JD.nullable (JD.list orderableClusterOptionDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Describes a parameter in a cluster parameter group.</p>
-}
type alias Parameter =
    { parameterName : Maybe String
    , parameterValue : Maybe String
    , description : Maybe String
    , source : Maybe String
    , dataType : Maybe String
    , allowedValues : Maybe String
    , applyType : Maybe ParameterApplyType
    , isModifiable : Maybe Bool
    , minimumEngineVersion : Maybe String
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
        |> JDP.optional "applyType" (JD.nullable parameterApplyTypeDecoder) Nothing
        |> JDP.optional "isModifiable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "minimumEngineVersion" (JD.nullable JD.string) Nothing




{-| One of

* `ParameterApplyType_static`
* `ParameterApplyType_dynamic`

-}
type ParameterApplyType
    = ParameterApplyType_static
    | ParameterApplyType_dynamic



parameterApplyTypeDecoder : JD.Decoder ParameterApplyType
parameterApplyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "static" ->
                        JD.succeed ParameterApplyType_static

                    "dynamic" ->
                        JD.succeed ParameterApplyType_dynamic


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes cluster attributes that are in a pending state. A change to one or more the attributes was requested and is in progress or will be applied.</p>
-}
type alias PendingModifiedValues =
    { masterUserPassword : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Maybe Int
    , clusterType : Maybe String
    , clusterVersion : Maybe String
    , automatedSnapshotRetentionPeriod : Maybe Int
    , clusterIdentifier : Maybe String
    , publiclyAccessible : Maybe Bool
    , enhancedVpcRouting : Maybe Bool
    }



pendingModifiedValuesDecoder : JD.Decoder PendingModifiedValues
pendingModifiedValuesDecoder =
    JDP.decode PendingModifiedValues
        |> JDP.optional "masterUserPassword" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "numberOfNodes" (JD.nullable JD.int) Nothing
        |> JDP.optional "clusterType" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "automatedSnapshotRetentionPeriod" (JD.nullable JD.int) Nothing
        |> JDP.optional "clusterIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "publiclyAccessible" (JD.nullable JD.bool) Nothing
        |> JDP.optional "enhancedVpcRouting" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from purchaseReservedNodeOfferi
-}
type alias PurchaseReservedNodeOfferingResult =
    { reservedNode : Maybe ReservedNode
    }



purchaseReservedNodeOfferingResultDecoder : JD.Decoder PurchaseReservedNodeOfferingResult
purchaseReservedNodeOfferingResultDecoder =
    JDP.decode PurchaseReservedNodeOfferingResult
        |> JDP.optional "reservedNode" (JD.nullable reservedNodeDecoder) Nothing




{-| Type of HTTP response from rebootClust
-}
type alias RebootClusterResult =
    { cluster : Maybe Cluster
    }



rebootClusterResultDecoder : JD.Decoder RebootClusterResult
rebootClusterResultDecoder =
    JDP.decode RebootClusterResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| <p>Describes a recurring charge.</p>
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




{-| <p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node offerings. </p>
-}
type alias ReservedNode =
    { reservedNodeId : Maybe String
    , reservedNodeOfferingId : Maybe String
    , nodeType : Maybe String
    , startTime : Maybe Date
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , nodeCount : Maybe Int
    , state : Maybe String
    , offeringType : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    }



reservedNodeDecoder : JD.Decoder ReservedNode
reservedNodeDecoder =
    JDP.decode ReservedNode
        |> JDP.optional "reservedNodeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedNodeOfferingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "offeringType" (JD.nullable JD.string) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing




{-| <p>User already has a reservation with the given identifier.</p>
-}
type alias ReservedNodeAlreadyExistsFault =
    { 
    }



reservedNodeAlreadyExistsFaultDecoder : JD.Decoder ReservedNodeAlreadyExistsFault
reservedNodeAlreadyExistsFaultDecoder =
    JDP.decode ReservedNodeAlreadyExistsFault



{-| <p>The specified reserved compute node not found.</p>
-}
type alias ReservedNodeNotFoundFault =
    { 
    }



reservedNodeNotFoundFaultDecoder : JD.Decoder ReservedNodeNotFoundFault
reservedNodeNotFoundFaultDecoder =
    JDP.decode ReservedNodeNotFoundFault



{-| <p>Describes a reserved node offering.</p>
-}
type alias ReservedNodeOffering =
    { reservedNodeOfferingId : Maybe String
    , nodeType : Maybe String
    , duration : Maybe Int
    , fixedPrice : Maybe Float
    , usagePrice : Maybe Float
    , currencyCode : Maybe String
    , offeringType : Maybe String
    , recurringCharges : Maybe (List RecurringCharge)
    }



reservedNodeOfferingDecoder : JD.Decoder ReservedNodeOffering
reservedNodeOfferingDecoder =
    JDP.decode ReservedNodeOffering
        |> JDP.optional "reservedNodeOfferingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "offeringType" (JD.nullable JD.string) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing




{-| <p>Specified offering does not exist.</p>
-}
type alias ReservedNodeOfferingNotFoundFault =
    { 
    }



reservedNodeOfferingNotFoundFaultDecoder : JD.Decoder ReservedNodeOfferingNotFoundFault
reservedNodeOfferingNotFoundFaultDecoder =
    JDP.decode ReservedNodeOfferingNotFoundFault



{-| Type of HTTP response from reservedNodeOffering
-}
type alias ReservedNodeOfferingsMessage =
    { marker : Maybe String
    , reservedNodeOfferings : Maybe (List ReservedNodeOffering)
    }



reservedNodeOfferingsMessageDecoder : JD.Decoder ReservedNodeOfferingsMessage
reservedNodeOfferingsMessageDecoder =
    JDP.decode ReservedNodeOfferingsMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedNodeOfferings" (JD.nullable (JD.list reservedNodeOfferingDecoder)) Nothing




{-| <p>Request would exceed the user's compute node quota. For information about increasing your quota, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias ReservedNodeQuotaExceededFault =
    { 
    }



reservedNodeQuotaExceededFaultDecoder : JD.Decoder ReservedNodeQuotaExceededFault
reservedNodeQuotaExceededFaultDecoder =
    JDP.decode ReservedNodeQuotaExceededFault



{-| Type of HTTP response from reservedNode
-}
type alias ReservedNodesMessage =
    { marker : Maybe String
    , reservedNodes : Maybe (List ReservedNode)
    }



reservedNodesMessageDecoder : JD.Decoder ReservedNodesMessage
reservedNodesMessageDecoder =
    JDP.decode ReservedNodesMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedNodes" (JD.nullable (JD.list reservedNodeDecoder)) Nothing




{-| <p>A resize operation for the specified cluster is not found.</p>
-}
type alias ResizeNotFoundFault =
    { 
    }



resizeNotFoundFaultDecoder : JD.Decoder ResizeNotFoundFault
resizeNotFoundFaultDecoder =
    JDP.decode ResizeNotFoundFault



{-| Type of HTTP response from resizeProgres
-}
type alias ResizeProgressMessage =
    { targetNodeType : Maybe String
    , targetNumberOfNodes : Maybe Int
    , targetClusterType : Maybe String
    , status : Maybe String
    , importTablesCompleted : Maybe (List String)
    , importTablesInProgress : Maybe (List String)
    , importTablesNotStarted : Maybe (List String)
    , avgResizeRateInMegaBytesPerSecond : Maybe Float
    , totalResizeDataInMegaBytes : Maybe Int
    , progressInMegaBytes : Maybe Int
    , elapsedTimeInSeconds : Maybe Int
    , estimatedTimeToCompletionInSeconds : Maybe Int
    }



resizeProgressMessageDecoder : JD.Decoder ResizeProgressMessage
resizeProgressMessageDecoder =
    JDP.decode ResizeProgressMessage
        |> JDP.optional "targetNodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetNumberOfNodes" (JD.nullable JD.int) Nothing
        |> JDP.optional "targetClusterType" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "importTablesCompleted" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "importTablesInProgress" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "importTablesNotStarted" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "avgResizeRateInMegaBytesPerSecond" (JD.nullable JD.float) Nothing
        |> JDP.optional "totalResizeDataInMegaBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "progressInMegaBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "elapsedTimeInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "estimatedTimeToCompletionInSeconds" (JD.nullable JD.int) Nothing




{-| <p>The resource could not be found.</p>
-}
type alias ResourceNotFoundFault =
    { 
    }



resourceNotFoundFaultDecoder : JD.Decoder ResourceNotFoundFault
resourceNotFoundFaultDecoder =
    JDP.decode ResourceNotFoundFault



{-| Type of HTTP response from restoreFromClusterSnapsh
-}
type alias RestoreFromClusterSnapshotResult =
    { cluster : Maybe Cluster
    }



restoreFromClusterSnapshotResultDecoder : JD.Decoder RestoreFromClusterSnapshotResult
restoreFromClusterSnapshotResultDecoder =
    JDP.decode RestoreFromClusterSnapshotResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| <p>Describes the status of a cluster restore action. Returns null if the cluster was not created by restoring a snapshot.</p>
-}
type alias RestoreStatus =
    { status : Maybe String
    , currentRestoreRateInMegaBytesPerSecond : Maybe Float
    , snapshotSizeInMegaBytes : Maybe Int
    , progressInMegaBytes : Maybe Int
    , elapsedTimeInSeconds : Maybe Int
    , estimatedTimeToCompletionInSeconds : Maybe Int
    }



restoreStatusDecoder : JD.Decoder RestoreStatus
restoreStatusDecoder =
    JDP.decode RestoreStatus
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentRestoreRateInMegaBytesPerSecond" (JD.nullable JD.float) Nothing
        |> JDP.optional "snapshotSizeInMegaBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "progressInMegaBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "elapsedTimeInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "estimatedTimeToCompletionInSeconds" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from restoreTableFromClusterSnapsh
-}
type alias RestoreTableFromClusterSnapshotResult =
    { tableRestoreStatus : Maybe TableRestoreStatus
    }



restoreTableFromClusterSnapshotResultDecoder : JD.Decoder RestoreTableFromClusterSnapshotResult
restoreTableFromClusterSnapshotResultDecoder =
    JDP.decode RestoreTableFromClusterSnapshotResult
        |> JDP.optional "tableRestoreStatus" (JD.nullable tableRestoreStatusDecoder) Nothing




{-| Type of HTTP response from revokeClusterSecurityGroupIngre
-}
type alias RevokeClusterSecurityGroupIngressResult =
    { clusterSecurityGroup : Maybe ClusterSecurityGroup
    }



revokeClusterSecurityGroupIngressResultDecoder : JD.Decoder RevokeClusterSecurityGroupIngressResult
revokeClusterSecurityGroupIngressResultDecoder =
    JDP.decode RevokeClusterSecurityGroupIngressResult
        |> JDP.optional "clusterSecurityGroup" (JD.nullable clusterSecurityGroupDecoder) Nothing




{-| Type of HTTP response from revokeSnapshotAcce
-}
type alias RevokeSnapshotAccessResult =
    { snapshot : Maybe Snapshot
    }



revokeSnapshotAccessResultDecoder : JD.Decoder RevokeSnapshotAccessResult
revokeSnapshotAccessResultDecoder =
    JDP.decode RevokeSnapshotAccessResult
        |> JDP.optional "snapshot" (JD.nullable snapshotDecoder) Nothing




{-| Type of HTTP response from rotateEncryptionK
-}
type alias RotateEncryptionKeyResult =
    { cluster : Maybe Cluster
    }



rotateEncryptionKeyResultDecoder : JD.Decoder RotateEncryptionKeyResult
rotateEncryptionKeyResultDecoder =
    JDP.decode RotateEncryptionKeyResult
        |> JDP.optional "cluster" (JD.nullable clusterDecoder) Nothing




{-| <p>Amazon SNS has responded that there is a problem with the specified Amazon SNS topic.</p>
-}
type alias SNSInvalidTopicFault =
    { 
    }



sNSInvalidTopicFaultDecoder : JD.Decoder SNSInvalidTopicFault
sNSInvalidTopicFaultDecoder =
    JDP.decode SNSInvalidTopicFault



{-| <p>You do not have permission to publish to the specified Amazon SNS topic.</p>
-}
type alias SNSNoAuthorizationFault =
    { 
    }



sNSNoAuthorizationFaultDecoder : JD.Decoder SNSNoAuthorizationFault
sNSNoAuthorizationFaultDecoder =
    JDP.decode SNSNoAuthorizationFault



{-| <p>An Amazon SNS topic with the specified Amazon Resource Name (ARN) does not exist.</p>
-}
type alias SNSTopicArnNotFoundFault =
    { 
    }



sNSTopicArnNotFoundFaultDecoder : JD.Decoder SNSTopicArnNotFoundFault
sNSTopicArnNotFoundFaultDecoder =
    JDP.decode SNSTopicArnNotFoundFault



{-| <p>Describes a snapshot.</p>
-}
type alias Snapshot =
    { snapshotIdentifier : Maybe String
    , clusterIdentifier : Maybe String
    , snapshotCreateTime : Maybe Date
    , status : Maybe String
    , port_ : Maybe Int
    , availabilityZone : Maybe String
    , clusterCreateTime : Maybe Date
    , masterUsername : Maybe String
    , clusterVersion : Maybe String
    , snapshotType : Maybe String
    , nodeType : Maybe String
    , numberOfNodes : Maybe Int
    , dBName : Maybe String
    , vpcId : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , encryptedWithHSM : Maybe Bool
    , accountsWithRestoreAccess : Maybe (List AccountWithRestoreAccess)
    , ownerAccount : Maybe String
    , totalBackupSizeInMegaBytes : Maybe Float
    , actualIncrementalBackupSizeInMegaBytes : Maybe Float
    , backupProgressInMegaBytes : Maybe Float
    , currentBackupRateInMegaBytesPerSecond : Maybe Float
    , estimatedSecondsToCompletion : Maybe Int
    , elapsedTimeInSeconds : Maybe Int
    , sourceRegion : Maybe String
    , tags : Maybe (List Tag)
    , restorableNodeTypes : Maybe (List String)
    , enhancedVpcRouting : Maybe Bool
    }



snapshotDecoder : JD.Decoder Snapshot
snapshotDecoder =
    JDP.decode Snapshot
        |> JDP.optional "snapshotIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterCreateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "masterUsername" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotType" (JD.nullable JD.string) Nothing
        |> JDP.optional "nodeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "numberOfNodes" (JD.nullable JD.int) Nothing
        |> JDP.optional "dBName" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryptedWithHSM" (JD.nullable JD.bool) Nothing
        |> JDP.optional "accountsWithRestoreAccess" (JD.nullable (JD.list accountWithRestoreAccessDecoder)) Nothing
        |> JDP.optional "ownerAccount" (JD.nullable JD.string) Nothing
        |> JDP.optional "totalBackupSizeInMegaBytes" (JD.nullable JD.float) Nothing
        |> JDP.optional "actualIncrementalBackupSizeInMegaBytes" (JD.nullable JD.float) Nothing
        |> JDP.optional "backupProgressInMegaBytes" (JD.nullable JD.float) Nothing
        |> JDP.optional "currentBackupRateInMegaBytesPerSecond" (JD.nullable JD.float) Nothing
        |> JDP.optional "estimatedSecondsToCompletion" (JD.nullable JD.int) Nothing
        |> JDP.optional "elapsedTimeInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "sourceRegion" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "restorableNodeTypes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "enhancedVpcRouting" (JD.nullable JD.bool) Nothing




{-| <p>The cluster already has cross-region snapshot copy disabled.</p>
-}
type alias SnapshotCopyAlreadyDisabledFault =
    { 
    }



snapshotCopyAlreadyDisabledFaultDecoder : JD.Decoder SnapshotCopyAlreadyDisabledFault
snapshotCopyAlreadyDisabledFaultDecoder =
    JDP.decode SnapshotCopyAlreadyDisabledFault



{-| <p>The cluster already has cross-region snapshot copy enabled.</p>
-}
type alias SnapshotCopyAlreadyEnabledFault =
    { 
    }



snapshotCopyAlreadyEnabledFaultDecoder : JD.Decoder SnapshotCopyAlreadyEnabledFault
snapshotCopyAlreadyEnabledFaultDecoder =
    JDP.decode SnapshotCopyAlreadyEnabledFault



{-| <p>Cross-region snapshot copy was temporarily disabled. Try your request again.</p>
-}
type alias SnapshotCopyDisabledFault =
    { 
    }



snapshotCopyDisabledFaultDecoder : JD.Decoder SnapshotCopyDisabledFault
snapshotCopyDisabledFaultDecoder =
    JDP.decode SnapshotCopyDisabledFault



{-| <p>The snapshot copy grant that grants Amazon Redshift permission to encrypt copied snapshots with the specified customer master key (CMK) from AWS KMS in the destination region.</p> <p> For more information about managing snapshot copy grants, go to <a href="http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html">Amazon Redshift Database Encryption</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
-}
type alias SnapshotCopyGrant =
    { snapshotCopyGrantName : Maybe String
    , kmsKeyId : Maybe String
    , tags : Maybe (List Tag)
    }



snapshotCopyGrantDecoder : JD.Decoder SnapshotCopyGrant
snapshotCopyGrantDecoder =
    JDP.decode SnapshotCopyGrant
        |> JDP.optional "snapshotCopyGrantName" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>The snapshot copy grant can't be created because a grant with the same name already exists.</p>
-}
type alias SnapshotCopyGrantAlreadyExistsFault =
    { 
    }



snapshotCopyGrantAlreadyExistsFaultDecoder : JD.Decoder SnapshotCopyGrantAlreadyExistsFault
snapshotCopyGrantAlreadyExistsFaultDecoder =
    JDP.decode SnapshotCopyGrantAlreadyExistsFault



{-| Type of HTTP response from snapshotCopyGran
-}
type alias SnapshotCopyGrantMessage =
    { marker : Maybe String
    , snapshotCopyGrants : Maybe (List SnapshotCopyGrant)
    }



snapshotCopyGrantMessageDecoder : JD.Decoder SnapshotCopyGrantMessage
snapshotCopyGrantMessageDecoder =
    JDP.decode SnapshotCopyGrantMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotCopyGrants" (JD.nullable (JD.list snapshotCopyGrantDecoder)) Nothing




{-| <p>The specified snapshot copy grant can't be found. Make sure that the name is typed correctly and that the grant exists in the destination region.</p>
-}
type alias SnapshotCopyGrantNotFoundFault =
    { 
    }



snapshotCopyGrantNotFoundFaultDecoder : JD.Decoder SnapshotCopyGrantNotFoundFault
snapshotCopyGrantNotFoundFaultDecoder =
    JDP.decode SnapshotCopyGrantNotFoundFault



{-| <p>The AWS account has exceeded the maximum number of snapshot copy grants in this region.</p>
-}
type alias SnapshotCopyGrantQuotaExceededFault =
    { 
    }



snapshotCopyGrantQuotaExceededFaultDecoder : JD.Decoder SnapshotCopyGrantQuotaExceededFault
snapshotCopyGrantQuotaExceededFaultDecoder =
    JDP.decode SnapshotCopyGrantQuotaExceededFault



{-| Type of HTTP response from snapsho
-}
type alias SnapshotMessage =
    { marker : Maybe String
    , snapshots : Maybe (List Snapshot)
    }



snapshotMessageDecoder : JD.Decoder SnapshotMessage
snapshotMessageDecoder =
    JDP.decode SnapshotMessage
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshots" (JD.nullable (JD.list snapshotDecoder)) Nothing




{-| <p>The specified Amazon Redshift event source could not be found.</p>
-}
type alias SourceNotFoundFault =
    { 
    }



sourceNotFoundFaultDecoder : JD.Decoder SourceNotFoundFault
sourceNotFoundFaultDecoder =
    JDP.decode SourceNotFoundFault



{-| One of

* `SourceType_cluster`
* `SourceType_cluster-parameter-group`
* `SourceType_cluster-security-group`
* `SourceType_cluster-snapshot`

-}
type SourceType
    = SourceType_cluster
    | SourceType_cluster_parameter_group
    | SourceType_cluster_security_group
    | SourceType_cluster_snapshot



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "cluster" ->
                        JD.succeed SourceType_cluster

                    "cluster_parameter_group" ->
                        JD.succeed SourceType_cluster_parameter_group

                    "cluster_security_group" ->
                        JD.succeed SourceType_cluster_security_group

                    "cluster_snapshot" ->
                        JD.succeed SourceType_cluster_snapshot


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a subnet.</p>
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




{-| <p>A specified subnet is already in use by another cluster.</p>
-}
type alias SubnetAlreadyInUse =
    { 
    }



subnetAlreadyInUseDecoder : JD.Decoder SubnetAlreadyInUse
subnetAlreadyInUseDecoder =
    JDP.decode SubnetAlreadyInUse



{-| <p>There is already an existing event notification subscription with the specified name.</p>
-}
type alias SubscriptionAlreadyExistFault =
    { 
    }



subscriptionAlreadyExistFaultDecoder : JD.Decoder SubscriptionAlreadyExistFault
subscriptionAlreadyExistFaultDecoder =
    JDP.decode SubscriptionAlreadyExistFault



{-| <p>The value specified for the event category was not one of the allowed values, or it specified a category that does not apply to the specified source type. The allowed values are Configuration, Management, Monitoring, and Security.</p>
-}
type alias SubscriptionCategoryNotFoundFault =
    { 
    }



subscriptionCategoryNotFoundFaultDecoder : JD.Decoder SubscriptionCategoryNotFoundFault
subscriptionCategoryNotFoundFaultDecoder =
    JDP.decode SubscriptionCategoryNotFoundFault



{-| <p>An Amazon Redshift event with the specified event ID does not exist.</p>
-}
type alias SubscriptionEventIdNotFoundFault =
    { 
    }



subscriptionEventIdNotFoundFaultDecoder : JD.Decoder SubscriptionEventIdNotFoundFault
subscriptionEventIdNotFoundFaultDecoder =
    JDP.decode SubscriptionEventIdNotFoundFault



{-| <p>An Amazon Redshift event notification subscription with the specified name does not exist.</p>
-}
type alias SubscriptionNotFoundFault =
    { 
    }



subscriptionNotFoundFaultDecoder : JD.Decoder SubscriptionNotFoundFault
subscriptionNotFoundFaultDecoder =
    JDP.decode SubscriptionNotFoundFault



{-| <p>The value specified for the event severity was not one of the allowed values, or it specified a severity that does not apply to the specified source type. The allowed values are ERROR and INFO.</p>
-}
type alias SubscriptionSeverityNotFoundFault =
    { 
    }



subscriptionSeverityNotFoundFaultDecoder : JD.Decoder SubscriptionSeverityNotFoundFault
subscriptionSeverityNotFoundFaultDecoder =
    JDP.decode SubscriptionSeverityNotFoundFault



{-| <p>The specified <code>TableRestoreRequestId</code> value was not found.</p>
-}
type alias TableRestoreNotFoundFault =
    { 
    }



tableRestoreNotFoundFaultDecoder : JD.Decoder TableRestoreNotFoundFault
tableRestoreNotFoundFaultDecoder =
    JDP.decode TableRestoreNotFoundFault



{-| <p>Describes the status of a <a>RestoreTableFromClusterSnapshot</a> operation.</p>
-}
type alias TableRestoreStatus =
    { tableRestoreRequestId : Maybe String
    , status : Maybe TableRestoreStatusType
    , message : Maybe String
    , requestTime : Maybe Date
    , progressInMegaBytes : Maybe Int
    , totalDataInMegaBytes : Maybe Int
    , clusterIdentifier : Maybe String
    , snapshotIdentifier : Maybe String
    , sourceDatabaseName : Maybe String
    , sourceSchemaName : Maybe String
    , sourceTableName : Maybe String
    , targetDatabaseName : Maybe String
    , targetSchemaName : Maybe String
    , newTableName : Maybe String
    }



tableRestoreStatusDecoder : JD.Decoder TableRestoreStatus
tableRestoreStatusDecoder =
    JDP.decode TableRestoreStatus
        |> JDP.optional "tableRestoreRequestId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable tableRestoreStatusTypeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "progressInMegaBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalDataInMegaBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "clusterIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceDatabaseName" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceSchemaName" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceTableName" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetDatabaseName" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetSchemaName" (JD.nullable JD.string) Nothing
        |> JDP.optional "newTableName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from tableRestoreStatu
-}
type alias TableRestoreStatusMessage =
    { tableRestoreStatusDetails : Maybe (List TableRestoreStatus)
    , marker : Maybe String
    }



tableRestoreStatusMessageDecoder : JD.Decoder TableRestoreStatusMessage
tableRestoreStatusMessageDecoder =
    JDP.decode TableRestoreStatusMessage
        |> JDP.optional "tableRestoreStatusDetails" (JD.nullable (JD.list tableRestoreStatusDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| One of

* `TableRestoreStatusType_PENDING`
* `TableRestoreStatusType_IN_PROGRESS`
* `TableRestoreStatusType_SUCCEEDED`
* `TableRestoreStatusType_FAILED`
* `TableRestoreStatusType_CANCELED`

-}
type TableRestoreStatusType
    = TableRestoreStatusType_PENDING
    | TableRestoreStatusType_IN_PROGRESS
    | TableRestoreStatusType_SUCCEEDED
    | TableRestoreStatusType_FAILED
    | TableRestoreStatusType_CANCELED



tableRestoreStatusTypeDecoder : JD.Decoder TableRestoreStatusType
tableRestoreStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed TableRestoreStatusType_PENDING

                    "IN_PROGRESS" ->
                        JD.succeed TableRestoreStatusType_IN_PROGRESS

                    "SUCCEEDED" ->
                        JD.succeed TableRestoreStatusType_SUCCEEDED

                    "FAILED" ->
                        JD.succeed TableRestoreStatusType_FAILED

                    "CANCELED" ->
                        JD.succeed TableRestoreStatusType_CANCELED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A tag consisting of a name/value pair for a resource.</p>
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




{-| <p>The request exceeds the limit of 10 tags for the resource.</p>
-}
type alias TagLimitExceededFault =
    { 
    }



tagLimitExceededFaultDecoder : JD.Decoder TagLimitExceededFault
tagLimitExceededFaultDecoder =
    JDP.decode TagLimitExceededFault



{-| <p>A tag and its associated resource.</p>
-}
type alias TaggedResource =
    { tag : Maybe Tag
    , resourceName : Maybe String
    , resourceType : Maybe String
    }



taggedResourceDecoder : JD.Decoder TaggedResource
taggedResourceDecoder =
    JDP.decode TaggedResource
        |> JDP.optional "tag" (JD.nullable tagDecoder) Nothing
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from taggedResourceLis
-}
type alias TaggedResourceListMessage =
    { taggedResources : Maybe (List TaggedResource)
    , marker : Maybe String
    }



taggedResourceListMessageDecoder : JD.Decoder TaggedResourceListMessage
taggedResourceListMessageDecoder =
    JDP.decode TaggedResourceListMessage
        |> JDP.optional "taggedResources" (JD.nullable (JD.list taggedResourceDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Your account is not authorized to perform the requested operation.</p>
-}
type alias UnauthorizedOperation =
    { 
    }



unauthorizedOperationDecoder : JD.Decoder UnauthorizedOperation
unauthorizedOperationDecoder =
    JDP.decode UnauthorizedOperation



{-| <p>The specified region is incorrect or does not exist.</p>
-}
type alias UnknownSnapshotCopyRegionFault =
    { 
    }



unknownSnapshotCopyRegionFaultDecoder : JD.Decoder UnknownSnapshotCopyRegionFault
unknownSnapshotCopyRegionFaultDecoder =
    JDP.decode UnknownSnapshotCopyRegionFault



{-| <p>The requested operation isn't supported.</p>
-}
type alias UnsupportedOperationFault =
    { 
    }



unsupportedOperationFaultDecoder : JD.Decoder UnsupportedOperationFault
unsupportedOperationFaultDecoder =
    JDP.decode UnsupportedOperationFault



{-| <p>A request option was specified that is not supported.</p>
-}
type alias UnsupportedOptionFault =
    { 
    }



unsupportedOptionFaultDecoder : JD.Decoder UnsupportedOptionFault
unsupportedOptionFaultDecoder =
    JDP.decode UnsupportedOptionFault



{-| <p>Describes the members of a VPC security group.</p>
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




