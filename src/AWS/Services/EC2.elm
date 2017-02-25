module AWS.Services.EC2
    exposing
        ( config
        , acceptReservedInstancesExchangeQuote
        , AcceptReservedInstancesExchangeQuoteOptions
        , acceptVpcPeeringConnection
        , AcceptVpcPeeringConnectionOptions
        , allocateAddress
        , AllocateAddressOptions
        , allocateHosts
        , AllocateHostsOptions
        , assignIpv6Addresses
        , AssignIpv6AddressesOptions
        , assignPrivateIpAddresses
        , AssignPrivateIpAddressesOptions
        , associateAddress
        , AssociateAddressOptions
        , associateDhcpOptions
        , AssociateDhcpOptionsOptions
        , associateRouteTable
        , AssociateRouteTableOptions
        , associateSubnetCidrBlock
        , associateVpcCidrBlock
        , AssociateVpcCidrBlockOptions
        , attachClassicLinkVpc
        , AttachClassicLinkVpcOptions
        , attachInternetGateway
        , AttachInternetGatewayOptions
        , attachNetworkInterface
        , AttachNetworkInterfaceOptions
        , attachVolume
        , AttachVolumeOptions
        , attachVpnGateway
        , AttachVpnGatewayOptions
        , authorizeSecurityGroupEgress
        , AuthorizeSecurityGroupEgressOptions
        , authorizeSecurityGroupIngress
        , AuthorizeSecurityGroupIngressOptions
        , bundleInstance
        , BundleInstanceOptions
        , cancelBundleTask
        , CancelBundleTaskOptions
        , cancelConversionTask
        , CancelConversionTaskOptions
        , cancelExportTask
        , cancelImportTask
        , CancelImportTaskOptions
        , cancelReservedInstancesListing
        , cancelSpotFleetRequests
        , CancelSpotFleetRequestsOptions
        , cancelSpotInstanceRequests
        , CancelSpotInstanceRequestsOptions
        , confirmProductInstance
        , ConfirmProductInstanceOptions
        , copyImage
        , CopyImageOptions
        , copySnapshot
        , CopySnapshotOptions
        , createCustomerGateway
        , CreateCustomerGatewayOptions
        , createDhcpOptions
        , CreateDhcpOptionsOptions
        , createEgressOnlyInternetGateway
        , CreateEgressOnlyInternetGatewayOptions
        , createFlowLogs
        , CreateFlowLogsOptions
        , createImage
        , CreateImageOptions
        , createInstanceExportTask
        , CreateInstanceExportTaskOptions
        , createInternetGateway
        , CreateInternetGatewayOptions
        , createKeyPair
        , CreateKeyPairOptions
        , createNatGateway
        , CreateNatGatewayOptions
        , createNetworkAcl
        , CreateNetworkAclOptions
        , createNetworkAclEntry
        , CreateNetworkAclEntryOptions
        , createNetworkInterface
        , CreateNetworkInterfaceOptions
        , createPlacementGroup
        , CreatePlacementGroupOptions
        , createReservedInstancesListing
        , createRoute
        , CreateRouteOptions
        , createRouteTable
        , CreateRouteTableOptions
        , createSecurityGroup
        , CreateSecurityGroupOptions
        , createSnapshot
        , CreateSnapshotOptions
        , createSpotDatafeedSubscription
        , CreateSpotDatafeedSubscriptionOptions
        , createSubnet
        , CreateSubnetOptions
        , createTags
        , CreateTagsOptions
        , createVolume
        , CreateVolumeOptions
        , createVpc
        , CreateVpcOptions
        , createVpcEndpoint
        , CreateVpcEndpointOptions
        , createVpcPeeringConnection
        , CreateVpcPeeringConnectionOptions
        , createVpnConnection
        , CreateVpnConnectionOptions
        , createVpnConnectionRoute
        , createVpnGateway
        , CreateVpnGatewayOptions
        , deleteCustomerGateway
        , DeleteCustomerGatewayOptions
        , deleteDhcpOptions
        , DeleteDhcpOptionsOptions
        , deleteEgressOnlyInternetGateway
        , DeleteEgressOnlyInternetGatewayOptions
        , deleteFlowLogs
        , deleteInternetGateway
        , DeleteInternetGatewayOptions
        , deleteKeyPair
        , DeleteKeyPairOptions
        , deleteNatGateway
        , deleteNetworkAcl
        , DeleteNetworkAclOptions
        , deleteNetworkAclEntry
        , DeleteNetworkAclEntryOptions
        , deleteNetworkInterface
        , DeleteNetworkInterfaceOptions
        , deletePlacementGroup
        , DeletePlacementGroupOptions
        , deleteRoute
        , DeleteRouteOptions
        , deleteRouteTable
        , DeleteRouteTableOptions
        , deleteSecurityGroup
        , DeleteSecurityGroupOptions
        , deleteSnapshot
        , DeleteSnapshotOptions
        , deleteSpotDatafeedSubscription
        , DeleteSpotDatafeedSubscriptionOptions
        , deleteSubnet
        , DeleteSubnetOptions
        , deleteTags
        , DeleteTagsOptions
        , deleteVolume
        , DeleteVolumeOptions
        , deleteVpc
        , DeleteVpcOptions
        , deleteVpcEndpoints
        , DeleteVpcEndpointsOptions
        , deleteVpcPeeringConnection
        , DeleteVpcPeeringConnectionOptions
        , deleteVpnConnection
        , DeleteVpnConnectionOptions
        , deleteVpnConnectionRoute
        , deleteVpnGateway
        , DeleteVpnGatewayOptions
        , deregisterImage
        , DeregisterImageOptions
        , describeAccountAttributes
        , DescribeAccountAttributesOptions
        , describeAddresses
        , DescribeAddressesOptions
        , describeAvailabilityZones
        , DescribeAvailabilityZonesOptions
        , describeBundleTasks
        , DescribeBundleTasksOptions
        , describeClassicLinkInstances
        , DescribeClassicLinkInstancesOptions
        , describeConversionTasks
        , DescribeConversionTasksOptions
        , describeCustomerGateways
        , DescribeCustomerGatewaysOptions
        , describeDhcpOptions
        , DescribeDhcpOptionsOptions
        , describeEgressOnlyInternetGateways
        , DescribeEgressOnlyInternetGatewaysOptions
        , describeExportTasks
        , DescribeExportTasksOptions
        , describeFlowLogs
        , DescribeFlowLogsOptions
        , describeHostReservationOfferings
        , DescribeHostReservationOfferingsOptions
        , describeHostReservations
        , DescribeHostReservationsOptions
        , describeHosts
        , DescribeHostsOptions
        , describeIdFormat
        , DescribeIdFormatOptions
        , describeIdentityIdFormat
        , DescribeIdentityIdFormatOptions
        , describeImageAttribute
        , DescribeImageAttributeOptions
        , describeImages
        , DescribeImagesOptions
        , describeImportImageTasks
        , DescribeImportImageTasksOptions
        , describeImportSnapshotTasks
        , DescribeImportSnapshotTasksOptions
        , describeInstanceAttribute
        , DescribeInstanceAttributeOptions
        , describeInstanceStatus
        , DescribeInstanceStatusOptions
        , describeInstances
        , DescribeInstancesOptions
        , describeInternetGateways
        , DescribeInternetGatewaysOptions
        , describeKeyPairs
        , DescribeKeyPairsOptions
        , describeMovingAddresses
        , DescribeMovingAddressesOptions
        , describeNatGateways
        , DescribeNatGatewaysOptions
        , describeNetworkAcls
        , DescribeNetworkAclsOptions
        , describeNetworkInterfaceAttribute
        , DescribeNetworkInterfaceAttributeOptions
        , describeNetworkInterfaces
        , DescribeNetworkInterfacesOptions
        , describePlacementGroups
        , DescribePlacementGroupsOptions
        , describePrefixLists
        , DescribePrefixListsOptions
        , describeRegions
        , DescribeRegionsOptions
        , describeReservedInstances
        , DescribeReservedInstancesOptions
        , describeReservedInstancesListings
        , DescribeReservedInstancesListingsOptions
        , describeReservedInstancesModifications
        , DescribeReservedInstancesModificationsOptions
        , describeReservedInstancesOfferings
        , DescribeReservedInstancesOfferingsOptions
        , describeRouteTables
        , DescribeRouteTablesOptions
        , describeScheduledInstanceAvailability
        , DescribeScheduledInstanceAvailabilityOptions
        , describeScheduledInstances
        , DescribeScheduledInstancesOptions
        , describeSecurityGroupReferences
        , DescribeSecurityGroupReferencesOptions
        , describeSecurityGroups
        , DescribeSecurityGroupsOptions
        , describeSnapshotAttribute
        , DescribeSnapshotAttributeOptions
        , describeSnapshots
        , DescribeSnapshotsOptions
        , describeSpotDatafeedSubscription
        , DescribeSpotDatafeedSubscriptionOptions
        , describeSpotFleetInstances
        , DescribeSpotFleetInstancesOptions
        , describeSpotFleetRequestHistory
        , DescribeSpotFleetRequestHistoryOptions
        , describeSpotFleetRequests
        , DescribeSpotFleetRequestsOptions
        , describeSpotInstanceRequests
        , DescribeSpotInstanceRequestsOptions
        , describeSpotPriceHistory
        , DescribeSpotPriceHistoryOptions
        , describeStaleSecurityGroups
        , DescribeStaleSecurityGroupsOptions
        , describeSubnets
        , DescribeSubnetsOptions
        , describeTags
        , DescribeTagsOptions
        , describeVolumeAttribute
        , DescribeVolumeAttributeOptions
        , describeVolumeStatus
        , DescribeVolumeStatusOptions
        , describeVolumes
        , DescribeVolumesOptions
        , describeVpcAttribute
        , DescribeVpcAttributeOptions
        , describeVpcClassicLink
        , DescribeVpcClassicLinkOptions
        , describeVpcClassicLinkDnsSupport
        , DescribeVpcClassicLinkDnsSupportOptions
        , describeVpcEndpointServices
        , DescribeVpcEndpointServicesOptions
        , describeVpcEndpoints
        , DescribeVpcEndpointsOptions
        , describeVpcPeeringConnections
        , DescribeVpcPeeringConnectionsOptions
        , describeVpcs
        , DescribeVpcsOptions
        , describeVpnConnections
        , DescribeVpnConnectionsOptions
        , describeVpnGateways
        , DescribeVpnGatewaysOptions
        , detachClassicLinkVpc
        , DetachClassicLinkVpcOptions
        , detachInternetGateway
        , DetachInternetGatewayOptions
        , detachNetworkInterface
        , DetachNetworkInterfaceOptions
        , detachVolume
        , DetachVolumeOptions
        , detachVpnGateway
        , DetachVpnGatewayOptions
        , disableVgwRoutePropagation
        , disableVpcClassicLink
        , DisableVpcClassicLinkOptions
        , disableVpcClassicLinkDnsSupport
        , DisableVpcClassicLinkDnsSupportOptions
        , disassociateAddress
        , DisassociateAddressOptions
        , disassociateRouteTable
        , DisassociateRouteTableOptions
        , disassociateSubnetCidrBlock
        , disassociateVpcCidrBlock
        , enableVgwRoutePropagation
        , enableVolumeIO
        , EnableVolumeIOOptions
        , enableVpcClassicLink
        , EnableVpcClassicLinkOptions
        , enableVpcClassicLinkDnsSupport
        , EnableVpcClassicLinkDnsSupportOptions
        , getConsoleOutput
        , GetConsoleOutputOptions
        , getConsoleScreenshot
        , GetConsoleScreenshotOptions
        , getHostReservationPurchasePreview
        , getPasswordData
        , GetPasswordDataOptions
        , getReservedInstancesExchangeQuote
        , GetReservedInstancesExchangeQuoteOptions
        , importImage
        , ImportImageOptions
        , importInstance
        , ImportInstanceOptions
        , importKeyPair
        , ImportKeyPairOptions
        , importSnapshot
        , ImportSnapshotOptions
        , importVolume
        , ImportVolumeOptions
        , modifyHosts
        , modifyIdFormat
        , modifyIdentityIdFormat
        , modifyImageAttribute
        , ModifyImageAttributeOptions
        , modifyInstanceAttribute
        , ModifyInstanceAttributeOptions
        , modifyInstancePlacement
        , ModifyInstancePlacementOptions
        , modifyNetworkInterfaceAttribute
        , ModifyNetworkInterfaceAttributeOptions
        , modifyReservedInstances
        , ModifyReservedInstancesOptions
        , modifySnapshotAttribute
        , ModifySnapshotAttributeOptions
        , modifySpotFleetRequest
        , ModifySpotFleetRequestOptions
        , modifySubnetAttribute
        , ModifySubnetAttributeOptions
        , modifyVolumeAttribute
        , ModifyVolumeAttributeOptions
        , modifyVpcAttribute
        , ModifyVpcAttributeOptions
        , modifyVpcEndpoint
        , ModifyVpcEndpointOptions
        , modifyVpcPeeringConnectionOptions
        , ModifyVpcPeeringConnectionOptionsOptions
        , monitorInstances
        , MonitorInstancesOptions
        , moveAddressToVpc
        , MoveAddressToVpcOptions
        , purchaseHostReservation
        , PurchaseHostReservationOptions
        , purchaseReservedInstancesOffering
        , PurchaseReservedInstancesOfferingOptions
        , purchaseScheduledInstances
        , PurchaseScheduledInstancesOptions
        , rebootInstances
        , RebootInstancesOptions
        , registerImage
        , RegisterImageOptions
        , rejectVpcPeeringConnection
        , RejectVpcPeeringConnectionOptions
        , releaseAddress
        , ReleaseAddressOptions
        , releaseHosts
        , replaceNetworkAclAssociation
        , ReplaceNetworkAclAssociationOptions
        , replaceNetworkAclEntry
        , ReplaceNetworkAclEntryOptions
        , replaceRoute
        , ReplaceRouteOptions
        , replaceRouteTableAssociation
        , ReplaceRouteTableAssociationOptions
        , reportInstanceStatus
        , ReportInstanceStatusOptions
        , requestSpotFleet
        , RequestSpotFleetOptions
        , requestSpotInstances
        , RequestSpotInstancesOptions
        , resetImageAttribute
        , ResetImageAttributeOptions
        , resetInstanceAttribute
        , ResetInstanceAttributeOptions
        , resetNetworkInterfaceAttribute
        , ResetNetworkInterfaceAttributeOptions
        , resetSnapshotAttribute
        , ResetSnapshotAttributeOptions
        , restoreAddressToClassic
        , RestoreAddressToClassicOptions
        , revokeSecurityGroupEgress
        , RevokeSecurityGroupEgressOptions
        , revokeSecurityGroupIngress
        , RevokeSecurityGroupIngressOptions
        , runInstances
        , RunInstancesOptions
        , runScheduledInstances
        , RunScheduledInstancesOptions
        , startInstances
        , StartInstancesOptions
        , stopInstances
        , StopInstancesOptions
        , terminateInstances
        , TerminateInstancesOptions
        , unassignIpv6Addresses
        , unassignPrivateIpAddresses
        , unmonitorInstances
        , UnmonitorInstancesOptions
        , AcceptReservedInstancesExchangeQuoteResult
        , AcceptVpcPeeringConnectionResult
        , AccountAttribute
        , AccountAttributeName(..)
        , AccountAttributeValue
        , ActiveInstance
        , ActivityStatus(..)
        , Address
        , Affinity(..)
        , AllocateAddressResult
        , AllocateHostsResult
        , AllocationState(..)
        , AllocationStrategy(..)
        , ArchitectureValues(..)
        , AssignIpv6AddressesResult
        , AssociateAddressResult
        , AssociateRouteTableResult
        , AssociateSubnetCidrBlockResult
        , AssociateVpcCidrBlockResult
        , AttachClassicLinkVpcResult
        , AttachNetworkInterfaceResult
        , AttachVpnGatewayResult
        , AttachmentStatus(..)
        , AttributeBooleanValue
        , AttributeValue
        , AutoPlacement(..)
        , AvailabilityZone
        , AvailabilityZoneMessage
        , AvailabilityZoneState(..)
        , AvailableCapacity
        , BatchState(..)
        , BlobAttributeValue
        , BlockDeviceMapping
        , BundleInstanceResult
        , BundleTask
        , BundleTaskError
        , BundleTaskState(..)
        , CancelBatchErrorCode(..)
        , CancelBundleTaskResult
        , CancelImportTaskResult
        , CancelReservedInstancesListingResult
        , CancelSpotFleetRequestsError
        , CancelSpotFleetRequestsErrorItem
        , CancelSpotFleetRequestsResponse
        , CancelSpotFleetRequestsSuccessItem
        , CancelSpotInstanceRequestState(..)
        , CancelSpotInstanceRequestsResult
        , CancelledSpotInstanceRequest
        , ClassicLinkDnsSupport
        , ClassicLinkInstance
        , ClientData
        , ConfirmProductInstanceResult
        , ContainerFormat(..)
        , ConversionTask
        , ConversionTaskState(..)
        , CopyImageResult
        , CopySnapshotResult
        , CreateCustomerGatewayResult
        , CreateDhcpOptionsResult
        , CreateEgressOnlyInternetGatewayResult
        , CreateFlowLogsResult
        , CreateImageResult
        , CreateInstanceExportTaskResult
        , CreateInternetGatewayResult
        , CreateNatGatewayResult
        , CreateNetworkAclResult
        , CreateNetworkInterfaceResult
        , CreateReservedInstancesListingResult
        , CreateRouteResult
        , CreateRouteTableResult
        , CreateSecurityGroupResult
        , CreateSpotDatafeedSubscriptionResult
        , CreateSubnetResult
        , CreateVolumePermission
        , CreateVolumePermissionModifications
        , CreateVpcEndpointResult
        , CreateVpcPeeringConnectionResult
        , CreateVpcResult
        , CreateVpnConnectionResult
        , CreateVpnGatewayResult
        , CurrencyCodeValues(..)
        , CustomerGateway
        , DatafeedSubscriptionState(..)
        , DeleteEgressOnlyInternetGatewayResult
        , DeleteFlowLogsResult
        , DeleteNatGatewayResult
        , DeleteVpcEndpointsResult
        , DeleteVpcPeeringConnectionResult
        , DescribeAccountAttributesResult
        , DescribeAddressesResult
        , DescribeAvailabilityZonesResult
        , DescribeBundleTasksResult
        , DescribeClassicLinkInstancesResult
        , DescribeConversionTasksResult
        , DescribeCustomerGatewaysResult
        , DescribeDhcpOptionsResult
        , DescribeEgressOnlyInternetGatewaysResult
        , DescribeExportTasksResult
        , DescribeFlowLogsResult
        , DescribeHostReservationOfferingsResult
        , DescribeHostReservationsResult
        , DescribeHostsResult
        , DescribeIdFormatResult
        , DescribeIdentityIdFormatResult
        , DescribeImagesResult
        , DescribeImportImageTasksResult
        , DescribeImportSnapshotTasksResult
        , DescribeInstanceStatusResult
        , DescribeInstancesResult
        , DescribeInternetGatewaysResult
        , DescribeKeyPairsResult
        , DescribeMovingAddressesResult
        , DescribeNatGatewaysResult
        , DescribeNetworkAclsResult
        , DescribeNetworkInterfaceAttributeResult
        , DescribeNetworkInterfacesResult
        , DescribePlacementGroupsResult
        , DescribePrefixListsResult
        , DescribeRegionsResult
        , DescribeReservedInstancesListingsResult
        , DescribeReservedInstancesModificationsResult
        , DescribeReservedInstancesOfferingsResult
        , DescribeReservedInstancesResult
        , DescribeRouteTablesResult
        , DescribeScheduledInstanceAvailabilityResult
        , DescribeScheduledInstancesResult
        , DescribeSecurityGroupReferencesResult
        , DescribeSecurityGroupsResult
        , DescribeSnapshotAttributeResult
        , DescribeSnapshotsResult
        , DescribeSpotDatafeedSubscriptionResult
        , DescribeSpotFleetInstancesResponse
        , DescribeSpotFleetRequestHistoryResponse
        , DescribeSpotFleetRequestsResponse
        , DescribeSpotInstanceRequestsResult
        , DescribeSpotPriceHistoryResult
        , DescribeStaleSecurityGroupsResult
        , DescribeSubnetsResult
        , DescribeTagsResult
        , DescribeVolumeAttributeResult
        , DescribeVolumeStatusResult
        , DescribeVolumesResult
        , DescribeVpcAttributeResult
        , DescribeVpcClassicLinkDnsSupportResult
        , DescribeVpcClassicLinkResult
        , DescribeVpcEndpointServicesResult
        , DescribeVpcEndpointsResult
        , DescribeVpcPeeringConnectionsResult
        , DescribeVpcsResult
        , DescribeVpnConnectionsResult
        , DescribeVpnGatewaysResult
        , DetachClassicLinkVpcResult
        , DeviceType(..)
        , DhcpConfiguration
        , DhcpOptions
        , DisableVpcClassicLinkDnsSupportResult
        , DisableVpcClassicLinkResult
        , DisassociateSubnetCidrBlockResult
        , DisassociateVpcCidrBlockResult
        , DiskImage
        , DiskImageDescription
        , DiskImageDetail
        , DiskImageFormat(..)
        , DiskImageVolumeDescription
        , DomainType(..)
        , EbsBlockDevice
        , EbsInstanceBlockDevice
        , EbsInstanceBlockDeviceSpecification
        , EgressOnlyInternetGateway
        , EnableVpcClassicLinkDnsSupportResult
        , EnableVpcClassicLinkResult
        , EventCode(..)
        , EventInformation
        , EventType(..)
        , ExcessCapacityTerminationPolicy(..)
        , ExportEnvironment(..)
        , ExportTask
        , ExportTaskState(..)
        , ExportToS3Task
        , ExportToS3TaskSpecification
        , Filter
        , FleetType(..)
        , FlowLog
        , FlowLogsResourceType(..)
        , GatewayType(..)
        , GetConsoleOutputResult
        , GetConsoleScreenshotResult
        , GetHostReservationPurchasePreviewResult
        , GetPasswordDataResult
        , GetReservedInstancesExchangeQuoteResult
        , GroupIdentifier
        , HistoryRecord
        , Host
        , HostInstance
        , HostOffering
        , HostProperties
        , HostReservation
        , HostTenancy(..)
        , HypervisorType(..)
        , IamInstanceProfile
        , IamInstanceProfileSpecification
        , IcmpTypeCode
        , IdFormat
        , Image
        , ImageAttribute
        , ImageAttributeName(..)
        , ImageDiskContainer
        , ImageState(..)
        , ImageTypeValues(..)
        , ImportImageResult
        , ImportImageTask
        , ImportInstanceLaunchSpecification
        , ImportInstanceResult
        , ImportInstanceTaskDetails
        , ImportInstanceVolumeDetailItem
        , ImportKeyPairResult
        , ImportSnapshotResult
        , ImportSnapshotTask
        , ImportVolumeResult
        , ImportVolumeTaskDetails
        , Instance
        , InstanceAttribute
        , InstanceAttributeName(..)
        , InstanceBlockDeviceMapping
        , InstanceBlockDeviceMappingSpecification
        , InstanceCapacity
        , InstanceCount
        , InstanceExportDetails
        , InstanceHealthStatus(..)
        , InstanceIpv6Address
        , InstanceLifecycleType(..)
        , InstanceMonitoring
        , InstanceNetworkInterface
        , InstanceNetworkInterfaceAssociation
        , InstanceNetworkInterfaceAttachment
        , InstanceNetworkInterfaceSpecification
        , InstancePrivateIpAddress
        , InstanceState
        , InstanceStateChange
        , InstanceStateName(..)
        , InstanceStatus
        , InstanceStatusDetails
        , InstanceStatusEvent
        , InstanceStatusSummary
        , InstanceType(..)
        , InternetGateway
        , InternetGatewayAttachment
        , IpPermission
        , IpRange
        , Ipv6CidrBlock
        , Ipv6Range
        , KeyPair
        , KeyPairInfo
        , LaunchPermission
        , LaunchPermissionModifications
        , LaunchSpecification
        , ListingState(..)
        , ListingStatus(..)
        , ModifyHostsResult
        , ModifyInstancePlacementResult
        , ModifyReservedInstancesResult
        , ModifySpotFleetRequestResponse
        , ModifyVpcEndpointResult
        , ModifyVpcPeeringConnectionOptionsResult
        , MonitorInstancesResult
        , Monitoring
        , MonitoringState(..)
        , MoveAddressToVpcResult
        , MoveStatus(..)
        , MovingAddressStatus
        , NatGateway
        , NatGatewayAddress
        , NatGatewayState(..)
        , NetworkAcl
        , NetworkAclAssociation
        , NetworkAclEntry
        , NetworkInterface
        , NetworkInterfaceAssociation
        , NetworkInterfaceAttachment
        , NetworkInterfaceAttachmentChanges
        , NetworkInterfaceAttribute(..)
        , NetworkInterfaceIpv6Address
        , NetworkInterfacePrivateIpAddress
        , NetworkInterfaceStatus(..)
        , NetworkInterfaceType(..)
        , NewDhcpConfiguration
        , OfferingClassType(..)
        , OfferingTypeValues(..)
        , OperationType(..)
        , PaymentOption(..)
        , PeeringConnectionOptions
        , PeeringConnectionOptionsRequest
        , PermissionGroup(..)
        , Placement
        , PlacementGroup
        , PlacementGroupState(..)
        , PlacementStrategy(..)
        , PlatformValues(..)
        , PortRange
        , PrefixList
        , PrefixListId
        , PriceSchedule
        , PriceScheduleSpecification
        , PricingDetail
        , PrivateIpAddressSpecification
        , ProductCode
        , ProductCodeValues(..)
        , PropagatingVgw
        , ProvisionedBandwidth
        , Purchase
        , PurchaseHostReservationResult
        , PurchaseRequest
        , PurchaseReservedInstancesOfferingResult
        , PurchaseScheduledInstancesResult
        , RIProductDescription(..)
        , RecurringCharge
        , RecurringChargeFrequency(..)
        , Region
        , RegisterImageResult
        , RejectVpcPeeringConnectionResult
        , ReleaseHostsResult
        , ReplaceNetworkAclAssociationResult
        , ReplaceRouteTableAssociationResult
        , ReportInstanceReasonCodes(..)
        , ReportStatusType(..)
        , RequestSpotFleetResponse
        , RequestSpotInstancesResult
        , RequestSpotLaunchSpecification
        , Reservation
        , ReservationState(..)
        , ReservationValue
        , ReservedInstanceLimitPrice
        , ReservedInstanceReservationValue
        , ReservedInstanceState(..)
        , ReservedInstances
        , ReservedInstancesConfiguration
        , ReservedInstancesId
        , ReservedInstancesListing
        , ReservedInstancesModification
        , ReservedInstancesModificationResult
        , ReservedInstancesOffering
        , ResetImageAttributeName(..)
        , ResourceType(..)
        , RestoreAddressToClassicResult
        , Route
        , RouteOrigin(..)
        , RouteState(..)
        , RouteTable
        , RouteTableAssociation
        , RuleAction(..)
        , RunInstancesMonitoringEnabled
        , RunScheduledInstancesResult
        , S3Storage
        , ScheduledInstance
        , ScheduledInstanceAvailability
        , ScheduledInstanceRecurrence
        , ScheduledInstanceRecurrenceRequest
        , ScheduledInstancesBlockDeviceMapping
        , ScheduledInstancesEbs
        , ScheduledInstancesIamInstanceProfile
        , ScheduledInstancesIpv6Address
        , ScheduledInstancesLaunchSpecification
        , ScheduledInstancesMonitoring
        , ScheduledInstancesNetworkInterface
        , ScheduledInstancesPlacement
        , ScheduledInstancesPrivateIpAddressConfig
        , SecurityGroup
        , SecurityGroupReference
        , ShutdownBehavior(..)
        , SlotDateTimeRangeRequest
        , SlotStartTimeRangeRequest
        , Snapshot
        , SnapshotAttributeName(..)
        , SnapshotDetail
        , SnapshotDiskContainer
        , SnapshotState(..)
        , SnapshotTaskDetail
        , SpotDatafeedSubscription
        , SpotFleetLaunchSpecification
        , SpotFleetMonitoring
        , SpotFleetRequestConfig
        , SpotFleetRequestConfigData
        , SpotInstanceRequest
        , SpotInstanceState(..)
        , SpotInstanceStateFault
        , SpotInstanceStatus
        , SpotInstanceType(..)
        , SpotPlacement
        , SpotPrice
        , StaleIpPermission
        , StaleSecurityGroup
        , StartInstancesResult
        , State(..)
        , StateReason
        , Status(..)
        , StatusName(..)
        , StatusType(..)
        , StopInstancesResult
        , Storage
        , Subnet
        , SubnetCidrBlockState
        , SubnetCidrBlockStateCode(..)
        , SubnetIpv6CidrBlockAssociation
        , SubnetState(..)
        , SummaryStatus(..)
        , Tag
        , TagDescription
        , TargetConfiguration
        , TargetConfigurationRequest
        , TargetReservationValue
        , TelemetryStatus(..)
        , Tenancy(..)
        , TerminateInstancesResult
        , TrafficType(..)
        , UnassignIpv6AddressesResult
        , UnmonitorInstancesResult
        , UnsuccessfulItem
        , UnsuccessfulItemError
        , UserBucket
        , UserBucketDetails
        , UserData
        , UserIdGroupPair
        , VgwTelemetry
        , VirtualizationType(..)
        , Volume
        , VolumeAttachment
        , VolumeAttachmentState(..)
        , VolumeAttributeName(..)
        , VolumeDetail
        , VolumeState(..)
        , VolumeStatusAction
        , VolumeStatusDetails
        , VolumeStatusEvent
        , VolumeStatusInfo
        , VolumeStatusInfoStatus(..)
        , VolumeStatusItem
        , VolumeStatusName(..)
        , VolumeType(..)
        , Vpc
        , VpcAttachment
        , VpcAttributeName(..)
        , VpcCidrBlockState
        , VpcCidrBlockStateCode(..)
        , VpcClassicLink
        , VpcEndpoint
        , VpcIpv6CidrBlockAssociation
        , VpcPeeringConnection
        , VpcPeeringConnectionOptionsDescription
        , VpcPeeringConnectionStateReason
        , VpcPeeringConnectionStateReasonCode(..)
        , VpcPeeringConnectionVpcInfo
        , VpcState(..)
        , VpnConnection
        , VpnConnectionOptions
        , VpnConnectionOptionsSpecification
        , VpnGateway
        , VpnState(..)
        , VpnStaticRoute
        , VpnStaticRouteSource(..)
        , Scope(..)
        )

{-| <fullname>Amazon Elastic Compute Cloud</fullname> <p>Amazon Elastic Compute Cloud (Amazon EC2) provides resizable computing capacity in the Amazon Web Services (AWS) cloud. Using Amazon EC2 eliminates your need to invest in hardware up front, so you can develop and deploy applications faster.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)

## Operations

* [acceptReservedInstancesExchangeQuote](#acceptReservedInstancesExchangeQuote)
* [AcceptReservedInstancesExchangeQuoteOptions](#AcceptReservedInstancesExchangeQuoteOptions)
* [acceptVpcPeeringConnection](#acceptVpcPeeringConnection)
* [AcceptVpcPeeringConnectionOptions](#AcceptVpcPeeringConnectionOptions)
* [allocateAddress](#allocateAddress)
* [AllocateAddressOptions](#AllocateAddressOptions)
* [allocateHosts](#allocateHosts)
* [AllocateHostsOptions](#AllocateHostsOptions)
* [assignIpv6Addresses](#assignIpv6Addresses)
* [AssignIpv6AddressesOptions](#AssignIpv6AddressesOptions)
* [assignPrivateIpAddresses](#assignPrivateIpAddresses)
* [AssignPrivateIpAddressesOptions](#AssignPrivateIpAddressesOptions)
* [associateAddress](#associateAddress)
* [AssociateAddressOptions](#AssociateAddressOptions)
* [associateDhcpOptions](#associateDhcpOptions)
* [AssociateDhcpOptionsOptions](#AssociateDhcpOptionsOptions)
* [associateRouteTable](#associateRouteTable)
* [AssociateRouteTableOptions](#AssociateRouteTableOptions)
* [associateSubnetCidrBlock](#associateSubnetCidrBlock)
* [associateVpcCidrBlock](#associateVpcCidrBlock)
* [AssociateVpcCidrBlockOptions](#AssociateVpcCidrBlockOptions)
* [attachClassicLinkVpc](#attachClassicLinkVpc)
* [AttachClassicLinkVpcOptions](#AttachClassicLinkVpcOptions)
* [attachInternetGateway](#attachInternetGateway)
* [AttachInternetGatewayOptions](#AttachInternetGatewayOptions)
* [attachNetworkInterface](#attachNetworkInterface)
* [AttachNetworkInterfaceOptions](#AttachNetworkInterfaceOptions)
* [attachVolume](#attachVolume)
* [AttachVolumeOptions](#AttachVolumeOptions)
* [attachVpnGateway](#attachVpnGateway)
* [AttachVpnGatewayOptions](#AttachVpnGatewayOptions)
* [authorizeSecurityGroupEgress](#authorizeSecurityGroupEgress)
* [AuthorizeSecurityGroupEgressOptions](#AuthorizeSecurityGroupEgressOptions)
* [authorizeSecurityGroupIngress](#authorizeSecurityGroupIngress)
* [AuthorizeSecurityGroupIngressOptions](#AuthorizeSecurityGroupIngressOptions)
* [bundleInstance](#bundleInstance)
* [BundleInstanceOptions](#BundleInstanceOptions)
* [cancelBundleTask](#cancelBundleTask)
* [CancelBundleTaskOptions](#CancelBundleTaskOptions)
* [cancelConversionTask](#cancelConversionTask)
* [CancelConversionTaskOptions](#CancelConversionTaskOptions)
* [cancelExportTask](#cancelExportTask)
* [cancelImportTask](#cancelImportTask)
* [CancelImportTaskOptions](#CancelImportTaskOptions)
* [cancelReservedInstancesListing](#cancelReservedInstancesListing)
* [cancelSpotFleetRequests](#cancelSpotFleetRequests)
* [CancelSpotFleetRequestsOptions](#CancelSpotFleetRequestsOptions)
* [cancelSpotInstanceRequests](#cancelSpotInstanceRequests)
* [CancelSpotInstanceRequestsOptions](#CancelSpotInstanceRequestsOptions)
* [confirmProductInstance](#confirmProductInstance)
* [ConfirmProductInstanceOptions](#ConfirmProductInstanceOptions)
* [copyImage](#copyImage)
* [CopyImageOptions](#CopyImageOptions)
* [copySnapshot](#copySnapshot)
* [CopySnapshotOptions](#CopySnapshotOptions)
* [createCustomerGateway](#createCustomerGateway)
* [CreateCustomerGatewayOptions](#CreateCustomerGatewayOptions)
* [createDhcpOptions](#createDhcpOptions)
* [CreateDhcpOptionsOptions](#CreateDhcpOptionsOptions)
* [createEgressOnlyInternetGateway](#createEgressOnlyInternetGateway)
* [CreateEgressOnlyInternetGatewayOptions](#CreateEgressOnlyInternetGatewayOptions)
* [createFlowLogs](#createFlowLogs)
* [CreateFlowLogsOptions](#CreateFlowLogsOptions)
* [createImage](#createImage)
* [CreateImageOptions](#CreateImageOptions)
* [createInstanceExportTask](#createInstanceExportTask)
* [CreateInstanceExportTaskOptions](#CreateInstanceExportTaskOptions)
* [createInternetGateway](#createInternetGateway)
* [CreateInternetGatewayOptions](#CreateInternetGatewayOptions)
* [createKeyPair](#createKeyPair)
* [CreateKeyPairOptions](#CreateKeyPairOptions)
* [createNatGateway](#createNatGateway)
* [CreateNatGatewayOptions](#CreateNatGatewayOptions)
* [createNetworkAcl](#createNetworkAcl)
* [CreateNetworkAclOptions](#CreateNetworkAclOptions)
* [createNetworkAclEntry](#createNetworkAclEntry)
* [CreateNetworkAclEntryOptions](#CreateNetworkAclEntryOptions)
* [createNetworkInterface](#createNetworkInterface)
* [CreateNetworkInterfaceOptions](#CreateNetworkInterfaceOptions)
* [createPlacementGroup](#createPlacementGroup)
* [CreatePlacementGroupOptions](#CreatePlacementGroupOptions)
* [createReservedInstancesListing](#createReservedInstancesListing)
* [createRoute](#createRoute)
* [CreateRouteOptions](#CreateRouteOptions)
* [createRouteTable](#createRouteTable)
* [CreateRouteTableOptions](#CreateRouteTableOptions)
* [createSecurityGroup](#createSecurityGroup)
* [CreateSecurityGroupOptions](#CreateSecurityGroupOptions)
* [createSnapshot](#createSnapshot)
* [CreateSnapshotOptions](#CreateSnapshotOptions)
* [createSpotDatafeedSubscription](#createSpotDatafeedSubscription)
* [CreateSpotDatafeedSubscriptionOptions](#CreateSpotDatafeedSubscriptionOptions)
* [createSubnet](#createSubnet)
* [CreateSubnetOptions](#CreateSubnetOptions)
* [createTags](#createTags)
* [CreateTagsOptions](#CreateTagsOptions)
* [createVolume](#createVolume)
* [CreateVolumeOptions](#CreateVolumeOptions)
* [createVpc](#createVpc)
* [CreateVpcOptions](#CreateVpcOptions)
* [createVpcEndpoint](#createVpcEndpoint)
* [CreateVpcEndpointOptions](#CreateVpcEndpointOptions)
* [createVpcPeeringConnection](#createVpcPeeringConnection)
* [CreateVpcPeeringConnectionOptions](#CreateVpcPeeringConnectionOptions)
* [createVpnConnection](#createVpnConnection)
* [CreateVpnConnectionOptions](#CreateVpnConnectionOptions)
* [createVpnConnectionRoute](#createVpnConnectionRoute)
* [createVpnGateway](#createVpnGateway)
* [CreateVpnGatewayOptions](#CreateVpnGatewayOptions)
* [deleteCustomerGateway](#deleteCustomerGateway)
* [DeleteCustomerGatewayOptions](#DeleteCustomerGatewayOptions)
* [deleteDhcpOptions](#deleteDhcpOptions)
* [DeleteDhcpOptionsOptions](#DeleteDhcpOptionsOptions)
* [deleteEgressOnlyInternetGateway](#deleteEgressOnlyInternetGateway)
* [DeleteEgressOnlyInternetGatewayOptions](#DeleteEgressOnlyInternetGatewayOptions)
* [deleteFlowLogs](#deleteFlowLogs)
* [deleteInternetGateway](#deleteInternetGateway)
* [DeleteInternetGatewayOptions](#DeleteInternetGatewayOptions)
* [deleteKeyPair](#deleteKeyPair)
* [DeleteKeyPairOptions](#DeleteKeyPairOptions)
* [deleteNatGateway](#deleteNatGateway)
* [deleteNetworkAcl](#deleteNetworkAcl)
* [DeleteNetworkAclOptions](#DeleteNetworkAclOptions)
* [deleteNetworkAclEntry](#deleteNetworkAclEntry)
* [DeleteNetworkAclEntryOptions](#DeleteNetworkAclEntryOptions)
* [deleteNetworkInterface](#deleteNetworkInterface)
* [DeleteNetworkInterfaceOptions](#DeleteNetworkInterfaceOptions)
* [deletePlacementGroup](#deletePlacementGroup)
* [DeletePlacementGroupOptions](#DeletePlacementGroupOptions)
* [deleteRoute](#deleteRoute)
* [DeleteRouteOptions](#DeleteRouteOptions)
* [deleteRouteTable](#deleteRouteTable)
* [DeleteRouteTableOptions](#DeleteRouteTableOptions)
* [deleteSecurityGroup](#deleteSecurityGroup)
* [DeleteSecurityGroupOptions](#DeleteSecurityGroupOptions)
* [deleteSnapshot](#deleteSnapshot)
* [DeleteSnapshotOptions](#DeleteSnapshotOptions)
* [deleteSpotDatafeedSubscription](#deleteSpotDatafeedSubscription)
* [DeleteSpotDatafeedSubscriptionOptions](#DeleteSpotDatafeedSubscriptionOptions)
* [deleteSubnet](#deleteSubnet)
* [DeleteSubnetOptions](#DeleteSubnetOptions)
* [deleteTags](#deleteTags)
* [DeleteTagsOptions](#DeleteTagsOptions)
* [deleteVolume](#deleteVolume)
* [DeleteVolumeOptions](#DeleteVolumeOptions)
* [deleteVpc](#deleteVpc)
* [DeleteVpcOptions](#DeleteVpcOptions)
* [deleteVpcEndpoints](#deleteVpcEndpoints)
* [DeleteVpcEndpointsOptions](#DeleteVpcEndpointsOptions)
* [deleteVpcPeeringConnection](#deleteVpcPeeringConnection)
* [DeleteVpcPeeringConnectionOptions](#DeleteVpcPeeringConnectionOptions)
* [deleteVpnConnection](#deleteVpnConnection)
* [DeleteVpnConnectionOptions](#DeleteVpnConnectionOptions)
* [deleteVpnConnectionRoute](#deleteVpnConnectionRoute)
* [deleteVpnGateway](#deleteVpnGateway)
* [DeleteVpnGatewayOptions](#DeleteVpnGatewayOptions)
* [deregisterImage](#deregisterImage)
* [DeregisterImageOptions](#DeregisterImageOptions)
* [describeAccountAttributes](#describeAccountAttributes)
* [DescribeAccountAttributesOptions](#DescribeAccountAttributesOptions)
* [describeAddresses](#describeAddresses)
* [DescribeAddressesOptions](#DescribeAddressesOptions)
* [describeAvailabilityZones](#describeAvailabilityZones)
* [DescribeAvailabilityZonesOptions](#DescribeAvailabilityZonesOptions)
* [describeBundleTasks](#describeBundleTasks)
* [DescribeBundleTasksOptions](#DescribeBundleTasksOptions)
* [describeClassicLinkInstances](#describeClassicLinkInstances)
* [DescribeClassicLinkInstancesOptions](#DescribeClassicLinkInstancesOptions)
* [describeConversionTasks](#describeConversionTasks)
* [DescribeConversionTasksOptions](#DescribeConversionTasksOptions)
* [describeCustomerGateways](#describeCustomerGateways)
* [DescribeCustomerGatewaysOptions](#DescribeCustomerGatewaysOptions)
* [describeDhcpOptions](#describeDhcpOptions)
* [DescribeDhcpOptionsOptions](#DescribeDhcpOptionsOptions)
* [describeEgressOnlyInternetGateways](#describeEgressOnlyInternetGateways)
* [DescribeEgressOnlyInternetGatewaysOptions](#DescribeEgressOnlyInternetGatewaysOptions)
* [describeExportTasks](#describeExportTasks)
* [DescribeExportTasksOptions](#DescribeExportTasksOptions)
* [describeFlowLogs](#describeFlowLogs)
* [DescribeFlowLogsOptions](#DescribeFlowLogsOptions)
* [describeHostReservationOfferings](#describeHostReservationOfferings)
* [DescribeHostReservationOfferingsOptions](#DescribeHostReservationOfferingsOptions)
* [describeHostReservations](#describeHostReservations)
* [DescribeHostReservationsOptions](#DescribeHostReservationsOptions)
* [describeHosts](#describeHosts)
* [DescribeHostsOptions](#DescribeHostsOptions)
* [describeIdFormat](#describeIdFormat)
* [DescribeIdFormatOptions](#DescribeIdFormatOptions)
* [describeIdentityIdFormat](#describeIdentityIdFormat)
* [DescribeIdentityIdFormatOptions](#DescribeIdentityIdFormatOptions)
* [describeImageAttribute](#describeImageAttribute)
* [DescribeImageAttributeOptions](#DescribeImageAttributeOptions)
* [describeImages](#describeImages)
* [DescribeImagesOptions](#DescribeImagesOptions)
* [describeImportImageTasks](#describeImportImageTasks)
* [DescribeImportImageTasksOptions](#DescribeImportImageTasksOptions)
* [describeImportSnapshotTasks](#describeImportSnapshotTasks)
* [DescribeImportSnapshotTasksOptions](#DescribeImportSnapshotTasksOptions)
* [describeInstanceAttribute](#describeInstanceAttribute)
* [DescribeInstanceAttributeOptions](#DescribeInstanceAttributeOptions)
* [describeInstanceStatus](#describeInstanceStatus)
* [DescribeInstanceStatusOptions](#DescribeInstanceStatusOptions)
* [describeInstances](#describeInstances)
* [DescribeInstancesOptions](#DescribeInstancesOptions)
* [describeInternetGateways](#describeInternetGateways)
* [DescribeInternetGatewaysOptions](#DescribeInternetGatewaysOptions)
* [describeKeyPairs](#describeKeyPairs)
* [DescribeKeyPairsOptions](#DescribeKeyPairsOptions)
* [describeMovingAddresses](#describeMovingAddresses)
* [DescribeMovingAddressesOptions](#DescribeMovingAddressesOptions)
* [describeNatGateways](#describeNatGateways)
* [DescribeNatGatewaysOptions](#DescribeNatGatewaysOptions)
* [describeNetworkAcls](#describeNetworkAcls)
* [DescribeNetworkAclsOptions](#DescribeNetworkAclsOptions)
* [describeNetworkInterfaceAttribute](#describeNetworkInterfaceAttribute)
* [DescribeNetworkInterfaceAttributeOptions](#DescribeNetworkInterfaceAttributeOptions)
* [describeNetworkInterfaces](#describeNetworkInterfaces)
* [DescribeNetworkInterfacesOptions](#DescribeNetworkInterfacesOptions)
* [describePlacementGroups](#describePlacementGroups)
* [DescribePlacementGroupsOptions](#DescribePlacementGroupsOptions)
* [describePrefixLists](#describePrefixLists)
* [DescribePrefixListsOptions](#DescribePrefixListsOptions)
* [describeRegions](#describeRegions)
* [DescribeRegionsOptions](#DescribeRegionsOptions)
* [describeReservedInstances](#describeReservedInstances)
* [DescribeReservedInstancesOptions](#DescribeReservedInstancesOptions)
* [describeReservedInstancesListings](#describeReservedInstancesListings)
* [DescribeReservedInstancesListingsOptions](#DescribeReservedInstancesListingsOptions)
* [describeReservedInstancesModifications](#describeReservedInstancesModifications)
* [DescribeReservedInstancesModificationsOptions](#DescribeReservedInstancesModificationsOptions)
* [describeReservedInstancesOfferings](#describeReservedInstancesOfferings)
* [DescribeReservedInstancesOfferingsOptions](#DescribeReservedInstancesOfferingsOptions)
* [describeRouteTables](#describeRouteTables)
* [DescribeRouteTablesOptions](#DescribeRouteTablesOptions)
* [describeScheduledInstanceAvailability](#describeScheduledInstanceAvailability)
* [DescribeScheduledInstanceAvailabilityOptions](#DescribeScheduledInstanceAvailabilityOptions)
* [describeScheduledInstances](#describeScheduledInstances)
* [DescribeScheduledInstancesOptions](#DescribeScheduledInstancesOptions)
* [describeSecurityGroupReferences](#describeSecurityGroupReferences)
* [DescribeSecurityGroupReferencesOptions](#DescribeSecurityGroupReferencesOptions)
* [describeSecurityGroups](#describeSecurityGroups)
* [DescribeSecurityGroupsOptions](#DescribeSecurityGroupsOptions)
* [describeSnapshotAttribute](#describeSnapshotAttribute)
* [DescribeSnapshotAttributeOptions](#DescribeSnapshotAttributeOptions)
* [describeSnapshots](#describeSnapshots)
* [DescribeSnapshotsOptions](#DescribeSnapshotsOptions)
* [describeSpotDatafeedSubscription](#describeSpotDatafeedSubscription)
* [DescribeSpotDatafeedSubscriptionOptions](#DescribeSpotDatafeedSubscriptionOptions)
* [describeSpotFleetInstances](#describeSpotFleetInstances)
* [DescribeSpotFleetInstancesOptions](#DescribeSpotFleetInstancesOptions)
* [describeSpotFleetRequestHistory](#describeSpotFleetRequestHistory)
* [DescribeSpotFleetRequestHistoryOptions](#DescribeSpotFleetRequestHistoryOptions)
* [describeSpotFleetRequests](#describeSpotFleetRequests)
* [DescribeSpotFleetRequestsOptions](#DescribeSpotFleetRequestsOptions)
* [describeSpotInstanceRequests](#describeSpotInstanceRequests)
* [DescribeSpotInstanceRequestsOptions](#DescribeSpotInstanceRequestsOptions)
* [describeSpotPriceHistory](#describeSpotPriceHistory)
* [DescribeSpotPriceHistoryOptions](#DescribeSpotPriceHistoryOptions)
* [describeStaleSecurityGroups](#describeStaleSecurityGroups)
* [DescribeStaleSecurityGroupsOptions](#DescribeStaleSecurityGroupsOptions)
* [describeSubnets](#describeSubnets)
* [DescribeSubnetsOptions](#DescribeSubnetsOptions)
* [describeTags](#describeTags)
* [DescribeTagsOptions](#DescribeTagsOptions)
* [describeVolumeAttribute](#describeVolumeAttribute)
* [DescribeVolumeAttributeOptions](#DescribeVolumeAttributeOptions)
* [describeVolumeStatus](#describeVolumeStatus)
* [DescribeVolumeStatusOptions](#DescribeVolumeStatusOptions)
* [describeVolumes](#describeVolumes)
* [DescribeVolumesOptions](#DescribeVolumesOptions)
* [describeVpcAttribute](#describeVpcAttribute)
* [DescribeVpcAttributeOptions](#DescribeVpcAttributeOptions)
* [describeVpcClassicLink](#describeVpcClassicLink)
* [DescribeVpcClassicLinkOptions](#DescribeVpcClassicLinkOptions)
* [describeVpcClassicLinkDnsSupport](#describeVpcClassicLinkDnsSupport)
* [DescribeVpcClassicLinkDnsSupportOptions](#DescribeVpcClassicLinkDnsSupportOptions)
* [describeVpcEndpointServices](#describeVpcEndpointServices)
* [DescribeVpcEndpointServicesOptions](#DescribeVpcEndpointServicesOptions)
* [describeVpcEndpoints](#describeVpcEndpoints)
* [DescribeVpcEndpointsOptions](#DescribeVpcEndpointsOptions)
* [describeVpcPeeringConnections](#describeVpcPeeringConnections)
* [DescribeVpcPeeringConnectionsOptions](#DescribeVpcPeeringConnectionsOptions)
* [describeVpcs](#describeVpcs)
* [DescribeVpcsOptions](#DescribeVpcsOptions)
* [describeVpnConnections](#describeVpnConnections)
* [DescribeVpnConnectionsOptions](#DescribeVpnConnectionsOptions)
* [describeVpnGateways](#describeVpnGateways)
* [DescribeVpnGatewaysOptions](#DescribeVpnGatewaysOptions)
* [detachClassicLinkVpc](#detachClassicLinkVpc)
* [DetachClassicLinkVpcOptions](#DetachClassicLinkVpcOptions)
* [detachInternetGateway](#detachInternetGateway)
* [DetachInternetGatewayOptions](#DetachInternetGatewayOptions)
* [detachNetworkInterface](#detachNetworkInterface)
* [DetachNetworkInterfaceOptions](#DetachNetworkInterfaceOptions)
* [detachVolume](#detachVolume)
* [DetachVolumeOptions](#DetachVolumeOptions)
* [detachVpnGateway](#detachVpnGateway)
* [DetachVpnGatewayOptions](#DetachVpnGatewayOptions)
* [disableVgwRoutePropagation](#disableVgwRoutePropagation)
* [disableVpcClassicLink](#disableVpcClassicLink)
* [DisableVpcClassicLinkOptions](#DisableVpcClassicLinkOptions)
* [disableVpcClassicLinkDnsSupport](#disableVpcClassicLinkDnsSupport)
* [DisableVpcClassicLinkDnsSupportOptions](#DisableVpcClassicLinkDnsSupportOptions)
* [disassociateAddress](#disassociateAddress)
* [DisassociateAddressOptions](#DisassociateAddressOptions)
* [disassociateRouteTable](#disassociateRouteTable)
* [DisassociateRouteTableOptions](#DisassociateRouteTableOptions)
* [disassociateSubnetCidrBlock](#disassociateSubnetCidrBlock)
* [disassociateVpcCidrBlock](#disassociateVpcCidrBlock)
* [enableVgwRoutePropagation](#enableVgwRoutePropagation)
* [enableVolumeIO](#enableVolumeIO)
* [EnableVolumeIOOptions](#EnableVolumeIOOptions)
* [enableVpcClassicLink](#enableVpcClassicLink)
* [EnableVpcClassicLinkOptions](#EnableVpcClassicLinkOptions)
* [enableVpcClassicLinkDnsSupport](#enableVpcClassicLinkDnsSupport)
* [EnableVpcClassicLinkDnsSupportOptions](#EnableVpcClassicLinkDnsSupportOptions)
* [getConsoleOutput](#getConsoleOutput)
* [GetConsoleOutputOptions](#GetConsoleOutputOptions)
* [getConsoleScreenshot](#getConsoleScreenshot)
* [GetConsoleScreenshotOptions](#GetConsoleScreenshotOptions)
* [getHostReservationPurchasePreview](#getHostReservationPurchasePreview)
* [getPasswordData](#getPasswordData)
* [GetPasswordDataOptions](#GetPasswordDataOptions)
* [getReservedInstancesExchangeQuote](#getReservedInstancesExchangeQuote)
* [GetReservedInstancesExchangeQuoteOptions](#GetReservedInstancesExchangeQuoteOptions)
* [importImage](#importImage)
* [ImportImageOptions](#ImportImageOptions)
* [importInstance](#importInstance)
* [ImportInstanceOptions](#ImportInstanceOptions)
* [importKeyPair](#importKeyPair)
* [ImportKeyPairOptions](#ImportKeyPairOptions)
* [importSnapshot](#importSnapshot)
* [ImportSnapshotOptions](#ImportSnapshotOptions)
* [importVolume](#importVolume)
* [ImportVolumeOptions](#ImportVolumeOptions)
* [modifyHosts](#modifyHosts)
* [modifyIdFormat](#modifyIdFormat)
* [modifyIdentityIdFormat](#modifyIdentityIdFormat)
* [modifyImageAttribute](#modifyImageAttribute)
* [ModifyImageAttributeOptions](#ModifyImageAttributeOptions)
* [modifyInstanceAttribute](#modifyInstanceAttribute)
* [ModifyInstanceAttributeOptions](#ModifyInstanceAttributeOptions)
* [modifyInstancePlacement](#modifyInstancePlacement)
* [ModifyInstancePlacementOptions](#ModifyInstancePlacementOptions)
* [modifyNetworkInterfaceAttribute](#modifyNetworkInterfaceAttribute)
* [ModifyNetworkInterfaceAttributeOptions](#ModifyNetworkInterfaceAttributeOptions)
* [modifyReservedInstances](#modifyReservedInstances)
* [ModifyReservedInstancesOptions](#ModifyReservedInstancesOptions)
* [modifySnapshotAttribute](#modifySnapshotAttribute)
* [ModifySnapshotAttributeOptions](#ModifySnapshotAttributeOptions)
* [modifySpotFleetRequest](#modifySpotFleetRequest)
* [ModifySpotFleetRequestOptions](#ModifySpotFleetRequestOptions)
* [modifySubnetAttribute](#modifySubnetAttribute)
* [ModifySubnetAttributeOptions](#ModifySubnetAttributeOptions)
* [modifyVolumeAttribute](#modifyVolumeAttribute)
* [ModifyVolumeAttributeOptions](#ModifyVolumeAttributeOptions)
* [modifyVpcAttribute](#modifyVpcAttribute)
* [ModifyVpcAttributeOptions](#ModifyVpcAttributeOptions)
* [modifyVpcEndpoint](#modifyVpcEndpoint)
* [ModifyVpcEndpointOptions](#ModifyVpcEndpointOptions)
* [modifyVpcPeeringConnectionOptions](#modifyVpcPeeringConnectionOptions)
* [ModifyVpcPeeringConnectionOptionsOptions](#ModifyVpcPeeringConnectionOptionsOptions)
* [monitorInstances](#monitorInstances)
* [MonitorInstancesOptions](#MonitorInstancesOptions)
* [moveAddressToVpc](#moveAddressToVpc)
* [MoveAddressToVpcOptions](#MoveAddressToVpcOptions)
* [purchaseHostReservation](#purchaseHostReservation)
* [PurchaseHostReservationOptions](#PurchaseHostReservationOptions)
* [purchaseReservedInstancesOffering](#purchaseReservedInstancesOffering)
* [PurchaseReservedInstancesOfferingOptions](#PurchaseReservedInstancesOfferingOptions)
* [purchaseScheduledInstances](#purchaseScheduledInstances)
* [PurchaseScheduledInstancesOptions](#PurchaseScheduledInstancesOptions)
* [rebootInstances](#rebootInstances)
* [RebootInstancesOptions](#RebootInstancesOptions)
* [registerImage](#registerImage)
* [RegisterImageOptions](#RegisterImageOptions)
* [rejectVpcPeeringConnection](#rejectVpcPeeringConnection)
* [RejectVpcPeeringConnectionOptions](#RejectVpcPeeringConnectionOptions)
* [releaseAddress](#releaseAddress)
* [ReleaseAddressOptions](#ReleaseAddressOptions)
* [releaseHosts](#releaseHosts)
* [replaceNetworkAclAssociation](#replaceNetworkAclAssociation)
* [ReplaceNetworkAclAssociationOptions](#ReplaceNetworkAclAssociationOptions)
* [replaceNetworkAclEntry](#replaceNetworkAclEntry)
* [ReplaceNetworkAclEntryOptions](#ReplaceNetworkAclEntryOptions)
* [replaceRoute](#replaceRoute)
* [ReplaceRouteOptions](#ReplaceRouteOptions)
* [replaceRouteTableAssociation](#replaceRouteTableAssociation)
* [ReplaceRouteTableAssociationOptions](#ReplaceRouteTableAssociationOptions)
* [reportInstanceStatus](#reportInstanceStatus)
* [ReportInstanceStatusOptions](#ReportInstanceStatusOptions)
* [requestSpotFleet](#requestSpotFleet)
* [RequestSpotFleetOptions](#RequestSpotFleetOptions)
* [requestSpotInstances](#requestSpotInstances)
* [RequestSpotInstancesOptions](#RequestSpotInstancesOptions)
* [resetImageAttribute](#resetImageAttribute)
* [ResetImageAttributeOptions](#ResetImageAttributeOptions)
* [resetInstanceAttribute](#resetInstanceAttribute)
* [ResetInstanceAttributeOptions](#ResetInstanceAttributeOptions)
* [resetNetworkInterfaceAttribute](#resetNetworkInterfaceAttribute)
* [ResetNetworkInterfaceAttributeOptions](#ResetNetworkInterfaceAttributeOptions)
* [resetSnapshotAttribute](#resetSnapshotAttribute)
* [ResetSnapshotAttributeOptions](#ResetSnapshotAttributeOptions)
* [restoreAddressToClassic](#restoreAddressToClassic)
* [RestoreAddressToClassicOptions](#RestoreAddressToClassicOptions)
* [revokeSecurityGroupEgress](#revokeSecurityGroupEgress)
* [RevokeSecurityGroupEgressOptions](#RevokeSecurityGroupEgressOptions)
* [revokeSecurityGroupIngress](#revokeSecurityGroupIngress)
* [RevokeSecurityGroupIngressOptions](#RevokeSecurityGroupIngressOptions)
* [runInstances](#runInstances)
* [RunInstancesOptions](#RunInstancesOptions)
* [runScheduledInstances](#runScheduledInstances)
* [RunScheduledInstancesOptions](#RunScheduledInstancesOptions)
* [startInstances](#startInstances)
* [StartInstancesOptions](#StartInstancesOptions)
* [stopInstances](#stopInstances)
* [StopInstancesOptions](#StopInstancesOptions)
* [terminateInstances](#terminateInstances)
* [TerminateInstancesOptions](#TerminateInstancesOptions)
* [unassignIpv6Addresses](#unassignIpv6Addresses)
* [unassignPrivateIpAddresses](#unassignPrivateIpAddresses)
* [unmonitorInstances](#unmonitorInstances)
* [UnmonitorInstancesOptions](#UnmonitorInstancesOptions)


@docs acceptReservedInstancesExchangeQuote,AcceptReservedInstancesExchangeQuoteOptions,acceptVpcPeeringConnection,AcceptVpcPeeringConnectionOptions,allocateAddress,AllocateAddressOptions,allocateHosts,AllocateHostsOptions,assignIpv6Addresses,AssignIpv6AddressesOptions,assignPrivateIpAddresses,AssignPrivateIpAddressesOptions,associateAddress,AssociateAddressOptions,associateDhcpOptions,AssociateDhcpOptionsOptions,associateRouteTable,AssociateRouteTableOptions,associateSubnetCidrBlock,associateVpcCidrBlock,AssociateVpcCidrBlockOptions,attachClassicLinkVpc,AttachClassicLinkVpcOptions,attachInternetGateway,AttachInternetGatewayOptions,attachNetworkInterface,AttachNetworkInterfaceOptions,attachVolume,AttachVolumeOptions,attachVpnGateway,AttachVpnGatewayOptions,authorizeSecurityGroupEgress,AuthorizeSecurityGroupEgressOptions,authorizeSecurityGroupIngress,AuthorizeSecurityGroupIngressOptions,bundleInstance,BundleInstanceOptions,cancelBundleTask,CancelBundleTaskOptions,cancelConversionTask,CancelConversionTaskOptions,cancelExportTask,cancelImportTask,CancelImportTaskOptions,cancelReservedInstancesListing,cancelSpotFleetRequests,CancelSpotFleetRequestsOptions,cancelSpotInstanceRequests,CancelSpotInstanceRequestsOptions,confirmProductInstance,ConfirmProductInstanceOptions,copyImage,CopyImageOptions,copySnapshot,CopySnapshotOptions,createCustomerGateway,CreateCustomerGatewayOptions,createDhcpOptions,CreateDhcpOptionsOptions,createEgressOnlyInternetGateway,CreateEgressOnlyInternetGatewayOptions,createFlowLogs,CreateFlowLogsOptions,createImage,CreateImageOptions,createInstanceExportTask,CreateInstanceExportTaskOptions,createInternetGateway,CreateInternetGatewayOptions,createKeyPair,CreateKeyPairOptions,createNatGateway,CreateNatGatewayOptions,createNetworkAcl,CreateNetworkAclOptions,createNetworkAclEntry,CreateNetworkAclEntryOptions,createNetworkInterface,CreateNetworkInterfaceOptions,createPlacementGroup,CreatePlacementGroupOptions,createReservedInstancesListing,createRoute,CreateRouteOptions,createRouteTable,CreateRouteTableOptions,createSecurityGroup,CreateSecurityGroupOptions,createSnapshot,CreateSnapshotOptions,createSpotDatafeedSubscription,CreateSpotDatafeedSubscriptionOptions,createSubnet,CreateSubnetOptions,createTags,CreateTagsOptions,createVolume,CreateVolumeOptions,createVpc,CreateVpcOptions,createVpcEndpoint,CreateVpcEndpointOptions,createVpcPeeringConnection,CreateVpcPeeringConnectionOptions,createVpnConnection,CreateVpnConnectionOptions,createVpnConnectionRoute,createVpnGateway,CreateVpnGatewayOptions,deleteCustomerGateway,DeleteCustomerGatewayOptions,deleteDhcpOptions,DeleteDhcpOptionsOptions,deleteEgressOnlyInternetGateway,DeleteEgressOnlyInternetGatewayOptions,deleteFlowLogs,deleteInternetGateway,DeleteInternetGatewayOptions,deleteKeyPair,DeleteKeyPairOptions,deleteNatGateway,deleteNetworkAcl,DeleteNetworkAclOptions,deleteNetworkAclEntry,DeleteNetworkAclEntryOptions,deleteNetworkInterface,DeleteNetworkInterfaceOptions,deletePlacementGroup,DeletePlacementGroupOptions,deleteRoute,DeleteRouteOptions,deleteRouteTable,DeleteRouteTableOptions,deleteSecurityGroup,DeleteSecurityGroupOptions,deleteSnapshot,DeleteSnapshotOptions,deleteSpotDatafeedSubscription,DeleteSpotDatafeedSubscriptionOptions,deleteSubnet,DeleteSubnetOptions,deleteTags,DeleteTagsOptions,deleteVolume,DeleteVolumeOptions,deleteVpc,DeleteVpcOptions,deleteVpcEndpoints,DeleteVpcEndpointsOptions,deleteVpcPeeringConnection,DeleteVpcPeeringConnectionOptions,deleteVpnConnection,DeleteVpnConnectionOptions,deleteVpnConnectionRoute,deleteVpnGateway,DeleteVpnGatewayOptions,deregisterImage,DeregisterImageOptions,describeAccountAttributes,DescribeAccountAttributesOptions,describeAddresses,DescribeAddressesOptions,describeAvailabilityZones,DescribeAvailabilityZonesOptions,describeBundleTasks,DescribeBundleTasksOptions,describeClassicLinkInstances,DescribeClassicLinkInstancesOptions,describeConversionTasks,DescribeConversionTasksOptions,describeCustomerGateways,DescribeCustomerGatewaysOptions,describeDhcpOptions,DescribeDhcpOptionsOptions,describeEgressOnlyInternetGateways,DescribeEgressOnlyInternetGatewaysOptions,describeExportTasks,DescribeExportTasksOptions,describeFlowLogs,DescribeFlowLogsOptions,describeHostReservationOfferings,DescribeHostReservationOfferingsOptions,describeHostReservations,DescribeHostReservationsOptions,describeHosts,DescribeHostsOptions,describeIdFormat,DescribeIdFormatOptions,describeIdentityIdFormat,DescribeIdentityIdFormatOptions,describeImageAttribute,DescribeImageAttributeOptions,describeImages,DescribeImagesOptions,describeImportImageTasks,DescribeImportImageTasksOptions,describeImportSnapshotTasks,DescribeImportSnapshotTasksOptions,describeInstanceAttribute,DescribeInstanceAttributeOptions,describeInstanceStatus,DescribeInstanceStatusOptions,describeInstances,DescribeInstancesOptions,describeInternetGateways,DescribeInternetGatewaysOptions,describeKeyPairs,DescribeKeyPairsOptions,describeMovingAddresses,DescribeMovingAddressesOptions,describeNatGateways,DescribeNatGatewaysOptions,describeNetworkAcls,DescribeNetworkAclsOptions,describeNetworkInterfaceAttribute,DescribeNetworkInterfaceAttributeOptions,describeNetworkInterfaces,DescribeNetworkInterfacesOptions,describePlacementGroups,DescribePlacementGroupsOptions,describePrefixLists,DescribePrefixListsOptions,describeRegions,DescribeRegionsOptions,describeReservedInstances,DescribeReservedInstancesOptions,describeReservedInstancesListings,DescribeReservedInstancesListingsOptions,describeReservedInstancesModifications,DescribeReservedInstancesModificationsOptions,describeReservedInstancesOfferings,DescribeReservedInstancesOfferingsOptions,describeRouteTables,DescribeRouteTablesOptions,describeScheduledInstanceAvailability,DescribeScheduledInstanceAvailabilityOptions,describeScheduledInstances,DescribeScheduledInstancesOptions,describeSecurityGroupReferences,DescribeSecurityGroupReferencesOptions,describeSecurityGroups,DescribeSecurityGroupsOptions,describeSnapshotAttribute,DescribeSnapshotAttributeOptions,describeSnapshots,DescribeSnapshotsOptions,describeSpotDatafeedSubscription,DescribeSpotDatafeedSubscriptionOptions,describeSpotFleetInstances,DescribeSpotFleetInstancesOptions,describeSpotFleetRequestHistory,DescribeSpotFleetRequestHistoryOptions,describeSpotFleetRequests,DescribeSpotFleetRequestsOptions,describeSpotInstanceRequests,DescribeSpotInstanceRequestsOptions,describeSpotPriceHistory,DescribeSpotPriceHistoryOptions,describeStaleSecurityGroups,DescribeStaleSecurityGroupsOptions,describeSubnets,DescribeSubnetsOptions,describeTags,DescribeTagsOptions,describeVolumeAttribute,DescribeVolumeAttributeOptions,describeVolumeStatus,DescribeVolumeStatusOptions,describeVolumes,DescribeVolumesOptions,describeVpcAttribute,DescribeVpcAttributeOptions,describeVpcClassicLink,DescribeVpcClassicLinkOptions,describeVpcClassicLinkDnsSupport,DescribeVpcClassicLinkDnsSupportOptions,describeVpcEndpointServices,DescribeVpcEndpointServicesOptions,describeVpcEndpoints,DescribeVpcEndpointsOptions,describeVpcPeeringConnections,DescribeVpcPeeringConnectionsOptions,describeVpcs,DescribeVpcsOptions,describeVpnConnections,DescribeVpnConnectionsOptions,describeVpnGateways,DescribeVpnGatewaysOptions,detachClassicLinkVpc,DetachClassicLinkVpcOptions,detachInternetGateway,DetachInternetGatewayOptions,detachNetworkInterface,DetachNetworkInterfaceOptions,detachVolume,DetachVolumeOptions,detachVpnGateway,DetachVpnGatewayOptions,disableVgwRoutePropagation,disableVpcClassicLink,DisableVpcClassicLinkOptions,disableVpcClassicLinkDnsSupport,DisableVpcClassicLinkDnsSupportOptions,disassociateAddress,DisassociateAddressOptions,disassociateRouteTable,DisassociateRouteTableOptions,disassociateSubnetCidrBlock,disassociateVpcCidrBlock,enableVgwRoutePropagation,enableVolumeIO,EnableVolumeIOOptions,enableVpcClassicLink,EnableVpcClassicLinkOptions,enableVpcClassicLinkDnsSupport,EnableVpcClassicLinkDnsSupportOptions,getConsoleOutput,GetConsoleOutputOptions,getConsoleScreenshot,GetConsoleScreenshotOptions,getHostReservationPurchasePreview,getPasswordData,GetPasswordDataOptions,getReservedInstancesExchangeQuote,GetReservedInstancesExchangeQuoteOptions,importImage,ImportImageOptions,importInstance,ImportInstanceOptions,importKeyPair,ImportKeyPairOptions,importSnapshot,ImportSnapshotOptions,importVolume,ImportVolumeOptions,modifyHosts,modifyIdFormat,modifyIdentityIdFormat,modifyImageAttribute,ModifyImageAttributeOptions,modifyInstanceAttribute,ModifyInstanceAttributeOptions,modifyInstancePlacement,ModifyInstancePlacementOptions,modifyNetworkInterfaceAttribute,ModifyNetworkInterfaceAttributeOptions,modifyReservedInstances,ModifyReservedInstancesOptions,modifySnapshotAttribute,ModifySnapshotAttributeOptions,modifySpotFleetRequest,ModifySpotFleetRequestOptions,modifySubnetAttribute,ModifySubnetAttributeOptions,modifyVolumeAttribute,ModifyVolumeAttributeOptions,modifyVpcAttribute,ModifyVpcAttributeOptions,modifyVpcEndpoint,ModifyVpcEndpointOptions,modifyVpcPeeringConnectionOptions,ModifyVpcPeeringConnectionOptionsOptions,monitorInstances,MonitorInstancesOptions,moveAddressToVpc,MoveAddressToVpcOptions,purchaseHostReservation,PurchaseHostReservationOptions,purchaseReservedInstancesOffering,PurchaseReservedInstancesOfferingOptions,purchaseScheduledInstances,PurchaseScheduledInstancesOptions,rebootInstances,RebootInstancesOptions,registerImage,RegisterImageOptions,rejectVpcPeeringConnection,RejectVpcPeeringConnectionOptions,releaseAddress,ReleaseAddressOptions,releaseHosts,replaceNetworkAclAssociation,ReplaceNetworkAclAssociationOptions,replaceNetworkAclEntry,ReplaceNetworkAclEntryOptions,replaceRoute,ReplaceRouteOptions,replaceRouteTableAssociation,ReplaceRouteTableAssociationOptions,reportInstanceStatus,ReportInstanceStatusOptions,requestSpotFleet,RequestSpotFleetOptions,requestSpotInstances,RequestSpotInstancesOptions,resetImageAttribute,ResetImageAttributeOptions,resetInstanceAttribute,ResetInstanceAttributeOptions,resetNetworkInterfaceAttribute,ResetNetworkInterfaceAttributeOptions,resetSnapshotAttribute,ResetSnapshotAttributeOptions,restoreAddressToClassic,RestoreAddressToClassicOptions,revokeSecurityGroupEgress,RevokeSecurityGroupEgressOptions,revokeSecurityGroupIngress,RevokeSecurityGroupIngressOptions,runInstances,RunInstancesOptions,runScheduledInstances,RunScheduledInstancesOptions,startInstances,StartInstancesOptions,stopInstances,StopInstancesOptions,terminateInstances,TerminateInstancesOptions,unassignIpv6Addresses,unassignPrivateIpAddresses,unmonitorInstances,UnmonitorInstancesOptions

## Responses

* [AcceptReservedInstancesExchangeQuoteResult](#AcceptReservedInstancesExchangeQuoteResult)
* [AcceptVpcPeeringConnectionResult](#AcceptVpcPeeringConnectionResult)
* [AllocateAddressResult](#AllocateAddressResult)
* [AllocateHostsResult](#AllocateHostsResult)
* [AssignIpv6AddressesResult](#AssignIpv6AddressesResult)
* [AssociateAddressResult](#AssociateAddressResult)
* [AssociateRouteTableResult](#AssociateRouteTableResult)
* [AssociateSubnetCidrBlockResult](#AssociateSubnetCidrBlockResult)
* [AssociateVpcCidrBlockResult](#AssociateVpcCidrBlockResult)
* [AttachClassicLinkVpcResult](#AttachClassicLinkVpcResult)
* [AttachNetworkInterfaceResult](#AttachNetworkInterfaceResult)
* [AttachVpnGatewayResult](#AttachVpnGatewayResult)
* [BundleInstanceResult](#BundleInstanceResult)
* [CancelBundleTaskResult](#CancelBundleTaskResult)
* [CancelImportTaskResult](#CancelImportTaskResult)
* [CancelReservedInstancesListingResult](#CancelReservedInstancesListingResult)
* [CancelSpotFleetRequestsResponse](#CancelSpotFleetRequestsResponse)
* [CancelSpotInstanceRequestsResult](#CancelSpotInstanceRequestsResult)
* [ConfirmProductInstanceResult](#ConfirmProductInstanceResult)
* [CopyImageResult](#CopyImageResult)
* [CopySnapshotResult](#CopySnapshotResult)
* [CreateCustomerGatewayResult](#CreateCustomerGatewayResult)
* [CreateDhcpOptionsResult](#CreateDhcpOptionsResult)
* [CreateEgressOnlyInternetGatewayResult](#CreateEgressOnlyInternetGatewayResult)
* [CreateFlowLogsResult](#CreateFlowLogsResult)
* [CreateImageResult](#CreateImageResult)
* [CreateInstanceExportTaskResult](#CreateInstanceExportTaskResult)
* [CreateInternetGatewayResult](#CreateInternetGatewayResult)
* [CreateNatGatewayResult](#CreateNatGatewayResult)
* [CreateNetworkAclResult](#CreateNetworkAclResult)
* [CreateNetworkInterfaceResult](#CreateNetworkInterfaceResult)
* [CreateReservedInstancesListingResult](#CreateReservedInstancesListingResult)
* [CreateRouteResult](#CreateRouteResult)
* [CreateRouteTableResult](#CreateRouteTableResult)
* [CreateSecurityGroupResult](#CreateSecurityGroupResult)
* [CreateSpotDatafeedSubscriptionResult](#CreateSpotDatafeedSubscriptionResult)
* [CreateSubnetResult](#CreateSubnetResult)
* [CreateVpcEndpointResult](#CreateVpcEndpointResult)
* [CreateVpcPeeringConnectionResult](#CreateVpcPeeringConnectionResult)
* [CreateVpcResult](#CreateVpcResult)
* [CreateVpnConnectionResult](#CreateVpnConnectionResult)
* [CreateVpnGatewayResult](#CreateVpnGatewayResult)
* [DeleteEgressOnlyInternetGatewayResult](#DeleteEgressOnlyInternetGatewayResult)
* [DeleteFlowLogsResult](#DeleteFlowLogsResult)
* [DeleteNatGatewayResult](#DeleteNatGatewayResult)
* [DeleteVpcEndpointsResult](#DeleteVpcEndpointsResult)
* [DeleteVpcPeeringConnectionResult](#DeleteVpcPeeringConnectionResult)
* [DescribeAccountAttributesResult](#DescribeAccountAttributesResult)
* [DescribeAddressesResult](#DescribeAddressesResult)
* [DescribeAvailabilityZonesResult](#DescribeAvailabilityZonesResult)
* [DescribeBundleTasksResult](#DescribeBundleTasksResult)
* [DescribeClassicLinkInstancesResult](#DescribeClassicLinkInstancesResult)
* [DescribeConversionTasksResult](#DescribeConversionTasksResult)
* [DescribeCustomerGatewaysResult](#DescribeCustomerGatewaysResult)
* [DescribeDhcpOptionsResult](#DescribeDhcpOptionsResult)
* [DescribeEgressOnlyInternetGatewaysResult](#DescribeEgressOnlyInternetGatewaysResult)
* [DescribeExportTasksResult](#DescribeExportTasksResult)
* [DescribeFlowLogsResult](#DescribeFlowLogsResult)
* [DescribeHostReservationOfferingsResult](#DescribeHostReservationOfferingsResult)
* [DescribeHostReservationsResult](#DescribeHostReservationsResult)
* [DescribeHostsResult](#DescribeHostsResult)
* [DescribeIdFormatResult](#DescribeIdFormatResult)
* [DescribeIdentityIdFormatResult](#DescribeIdentityIdFormatResult)
* [DescribeImagesResult](#DescribeImagesResult)
* [DescribeImportImageTasksResult](#DescribeImportImageTasksResult)
* [DescribeImportSnapshotTasksResult](#DescribeImportSnapshotTasksResult)
* [DescribeInstanceStatusResult](#DescribeInstanceStatusResult)
* [DescribeInstancesResult](#DescribeInstancesResult)
* [DescribeInternetGatewaysResult](#DescribeInternetGatewaysResult)
* [DescribeKeyPairsResult](#DescribeKeyPairsResult)
* [DescribeMovingAddressesResult](#DescribeMovingAddressesResult)
* [DescribeNatGatewaysResult](#DescribeNatGatewaysResult)
* [DescribeNetworkAclsResult](#DescribeNetworkAclsResult)
* [DescribeNetworkInterfaceAttributeResult](#DescribeNetworkInterfaceAttributeResult)
* [DescribeNetworkInterfacesResult](#DescribeNetworkInterfacesResult)
* [DescribePlacementGroupsResult](#DescribePlacementGroupsResult)
* [DescribePrefixListsResult](#DescribePrefixListsResult)
* [DescribeRegionsResult](#DescribeRegionsResult)
* [DescribeReservedInstancesListingsResult](#DescribeReservedInstancesListingsResult)
* [DescribeReservedInstancesModificationsResult](#DescribeReservedInstancesModificationsResult)
* [DescribeReservedInstancesOfferingsResult](#DescribeReservedInstancesOfferingsResult)
* [DescribeReservedInstancesResult](#DescribeReservedInstancesResult)
* [DescribeRouteTablesResult](#DescribeRouteTablesResult)
* [DescribeScheduledInstanceAvailabilityResult](#DescribeScheduledInstanceAvailabilityResult)
* [DescribeScheduledInstancesResult](#DescribeScheduledInstancesResult)
* [DescribeSecurityGroupReferencesResult](#DescribeSecurityGroupReferencesResult)
* [DescribeSecurityGroupsResult](#DescribeSecurityGroupsResult)
* [DescribeSnapshotAttributeResult](#DescribeSnapshotAttributeResult)
* [DescribeSnapshotsResult](#DescribeSnapshotsResult)
* [DescribeSpotDatafeedSubscriptionResult](#DescribeSpotDatafeedSubscriptionResult)
* [DescribeSpotFleetInstancesResponse](#DescribeSpotFleetInstancesResponse)
* [DescribeSpotFleetRequestHistoryResponse](#DescribeSpotFleetRequestHistoryResponse)
* [DescribeSpotFleetRequestsResponse](#DescribeSpotFleetRequestsResponse)
* [DescribeSpotInstanceRequestsResult](#DescribeSpotInstanceRequestsResult)
* [DescribeSpotPriceHistoryResult](#DescribeSpotPriceHistoryResult)
* [DescribeStaleSecurityGroupsResult](#DescribeStaleSecurityGroupsResult)
* [DescribeSubnetsResult](#DescribeSubnetsResult)
* [DescribeTagsResult](#DescribeTagsResult)
* [DescribeVolumeAttributeResult](#DescribeVolumeAttributeResult)
* [DescribeVolumeStatusResult](#DescribeVolumeStatusResult)
* [DescribeVolumesResult](#DescribeVolumesResult)
* [DescribeVpcAttributeResult](#DescribeVpcAttributeResult)
* [DescribeVpcClassicLinkDnsSupportResult](#DescribeVpcClassicLinkDnsSupportResult)
* [DescribeVpcClassicLinkResult](#DescribeVpcClassicLinkResult)
* [DescribeVpcEndpointServicesResult](#DescribeVpcEndpointServicesResult)
* [DescribeVpcEndpointsResult](#DescribeVpcEndpointsResult)
* [DescribeVpcPeeringConnectionsResult](#DescribeVpcPeeringConnectionsResult)
* [DescribeVpcsResult](#DescribeVpcsResult)
* [DescribeVpnConnectionsResult](#DescribeVpnConnectionsResult)
* [DescribeVpnGatewaysResult](#DescribeVpnGatewaysResult)
* [DetachClassicLinkVpcResult](#DetachClassicLinkVpcResult)
* [DisableVpcClassicLinkDnsSupportResult](#DisableVpcClassicLinkDnsSupportResult)
* [DisableVpcClassicLinkResult](#DisableVpcClassicLinkResult)
* [DisassociateSubnetCidrBlockResult](#DisassociateSubnetCidrBlockResult)
* [DisassociateVpcCidrBlockResult](#DisassociateVpcCidrBlockResult)
* [EnableVpcClassicLinkDnsSupportResult](#EnableVpcClassicLinkDnsSupportResult)
* [EnableVpcClassicLinkResult](#EnableVpcClassicLinkResult)
* [GetConsoleOutputResult](#GetConsoleOutputResult)
* [GetConsoleScreenshotResult](#GetConsoleScreenshotResult)
* [GetHostReservationPurchasePreviewResult](#GetHostReservationPurchasePreviewResult)
* [GetPasswordDataResult](#GetPasswordDataResult)
* [GetReservedInstancesExchangeQuoteResult](#GetReservedInstancesExchangeQuoteResult)
* [ImageAttribute](#ImageAttribute)
* [ImportImageResult](#ImportImageResult)
* [ImportInstanceResult](#ImportInstanceResult)
* [ImportKeyPairResult](#ImportKeyPairResult)
* [ImportSnapshotResult](#ImportSnapshotResult)
* [ImportVolumeResult](#ImportVolumeResult)
* [InstanceAttribute](#InstanceAttribute)
* [KeyPair](#KeyPair)
* [ModifyHostsResult](#ModifyHostsResult)
* [ModifyInstancePlacementResult](#ModifyInstancePlacementResult)
* [ModifyReservedInstancesResult](#ModifyReservedInstancesResult)
* [ModifySpotFleetRequestResponse](#ModifySpotFleetRequestResponse)
* [ModifyVpcEndpointResult](#ModifyVpcEndpointResult)
* [ModifyVpcPeeringConnectionOptionsResult](#ModifyVpcPeeringConnectionOptionsResult)
* [MonitorInstancesResult](#MonitorInstancesResult)
* [MoveAddressToVpcResult](#MoveAddressToVpcResult)
* [PurchaseHostReservationResult](#PurchaseHostReservationResult)
* [PurchaseReservedInstancesOfferingResult](#PurchaseReservedInstancesOfferingResult)
* [PurchaseScheduledInstancesResult](#PurchaseScheduledInstancesResult)
* [RegisterImageResult](#RegisterImageResult)
* [RejectVpcPeeringConnectionResult](#RejectVpcPeeringConnectionResult)
* [ReleaseHostsResult](#ReleaseHostsResult)
* [ReplaceNetworkAclAssociationResult](#ReplaceNetworkAclAssociationResult)
* [ReplaceRouteTableAssociationResult](#ReplaceRouteTableAssociationResult)
* [RequestSpotFleetResponse](#RequestSpotFleetResponse)
* [RequestSpotInstancesResult](#RequestSpotInstancesResult)
* [Reservation](#Reservation)
* [RestoreAddressToClassicResult](#RestoreAddressToClassicResult)
* [RunScheduledInstancesResult](#RunScheduledInstancesResult)
* [Snapshot](#Snapshot)
* [StartInstancesResult](#StartInstancesResult)
* [StopInstancesResult](#StopInstancesResult)
* [TerminateInstancesResult](#TerminateInstancesResult)
* [UnassignIpv6AddressesResult](#UnassignIpv6AddressesResult)
* [UnmonitorInstancesResult](#UnmonitorInstancesResult)
* [Volume](#Volume)
* [VolumeAttachment](#VolumeAttachment)


@docs AcceptReservedInstancesExchangeQuoteResult,AcceptVpcPeeringConnectionResult,AllocateAddressResult,AllocateHostsResult,AssignIpv6AddressesResult,AssociateAddressResult,AssociateRouteTableResult,AssociateSubnetCidrBlockResult,AssociateVpcCidrBlockResult,AttachClassicLinkVpcResult,AttachNetworkInterfaceResult,AttachVpnGatewayResult,BundleInstanceResult,CancelBundleTaskResult,CancelImportTaskResult,CancelReservedInstancesListingResult,CancelSpotFleetRequestsResponse,CancelSpotInstanceRequestsResult,ConfirmProductInstanceResult,CopyImageResult,CopySnapshotResult,CreateCustomerGatewayResult,CreateDhcpOptionsResult,CreateEgressOnlyInternetGatewayResult,CreateFlowLogsResult,CreateImageResult,CreateInstanceExportTaskResult,CreateInternetGatewayResult,CreateNatGatewayResult,CreateNetworkAclResult,CreateNetworkInterfaceResult,CreateReservedInstancesListingResult,CreateRouteResult,CreateRouteTableResult,CreateSecurityGroupResult,CreateSpotDatafeedSubscriptionResult,CreateSubnetResult,CreateVpcEndpointResult,CreateVpcPeeringConnectionResult,CreateVpcResult,CreateVpnConnectionResult,CreateVpnGatewayResult,DeleteEgressOnlyInternetGatewayResult,DeleteFlowLogsResult,DeleteNatGatewayResult,DeleteVpcEndpointsResult,DeleteVpcPeeringConnectionResult,DescribeAccountAttributesResult,DescribeAddressesResult,DescribeAvailabilityZonesResult,DescribeBundleTasksResult,DescribeClassicLinkInstancesResult,DescribeConversionTasksResult,DescribeCustomerGatewaysResult,DescribeDhcpOptionsResult,DescribeEgressOnlyInternetGatewaysResult,DescribeExportTasksResult,DescribeFlowLogsResult,DescribeHostReservationOfferingsResult,DescribeHostReservationsResult,DescribeHostsResult,DescribeIdFormatResult,DescribeIdentityIdFormatResult,DescribeImagesResult,DescribeImportImageTasksResult,DescribeImportSnapshotTasksResult,DescribeInstanceStatusResult,DescribeInstancesResult,DescribeInternetGatewaysResult,DescribeKeyPairsResult,DescribeMovingAddressesResult,DescribeNatGatewaysResult,DescribeNetworkAclsResult,DescribeNetworkInterfaceAttributeResult,DescribeNetworkInterfacesResult,DescribePlacementGroupsResult,DescribePrefixListsResult,DescribeRegionsResult,DescribeReservedInstancesListingsResult,DescribeReservedInstancesModificationsResult,DescribeReservedInstancesOfferingsResult,DescribeReservedInstancesResult,DescribeRouteTablesResult,DescribeScheduledInstanceAvailabilityResult,DescribeScheduledInstancesResult,DescribeSecurityGroupReferencesResult,DescribeSecurityGroupsResult,DescribeSnapshotAttributeResult,DescribeSnapshotsResult,DescribeSpotDatafeedSubscriptionResult,DescribeSpotFleetInstancesResponse,DescribeSpotFleetRequestHistoryResponse,DescribeSpotFleetRequestsResponse,DescribeSpotInstanceRequestsResult,DescribeSpotPriceHistoryResult,DescribeStaleSecurityGroupsResult,DescribeSubnetsResult,DescribeTagsResult,DescribeVolumeAttributeResult,DescribeVolumeStatusResult,DescribeVolumesResult,DescribeVpcAttributeResult,DescribeVpcClassicLinkDnsSupportResult,DescribeVpcClassicLinkResult,DescribeVpcEndpointServicesResult,DescribeVpcEndpointsResult,DescribeVpcPeeringConnectionsResult,DescribeVpcsResult,DescribeVpnConnectionsResult,DescribeVpnGatewaysResult,DetachClassicLinkVpcResult,DisableVpcClassicLinkDnsSupportResult,DisableVpcClassicLinkResult,DisassociateSubnetCidrBlockResult,DisassociateVpcCidrBlockResult,EnableVpcClassicLinkDnsSupportResult,EnableVpcClassicLinkResult,GetConsoleOutputResult,GetConsoleScreenshotResult,GetHostReservationPurchasePreviewResult,GetPasswordDataResult,GetReservedInstancesExchangeQuoteResult,ImageAttribute,ImportImageResult,ImportInstanceResult,ImportKeyPairResult,ImportSnapshotResult,ImportVolumeResult,InstanceAttribute,KeyPair,ModifyHostsResult,ModifyInstancePlacementResult,ModifyReservedInstancesResult,ModifySpotFleetRequestResponse,ModifyVpcEndpointResult,ModifyVpcPeeringConnectionOptionsResult,MonitorInstancesResult,MoveAddressToVpcResult,PurchaseHostReservationResult,PurchaseReservedInstancesOfferingResult,PurchaseScheduledInstancesResult,RegisterImageResult,RejectVpcPeeringConnectionResult,ReleaseHostsResult,ReplaceNetworkAclAssociationResult,ReplaceRouteTableAssociationResult,RequestSpotFleetResponse,RequestSpotInstancesResult,Reservation,RestoreAddressToClassicResult,RunScheduledInstancesResult,Snapshot,StartInstancesResult,StopInstancesResult,TerminateInstancesResult,UnassignIpv6AddressesResult,UnmonitorInstancesResult,Volume,VolumeAttachment

## Records

* [AccountAttribute](#AccountAttribute)
* [AccountAttributeValue](#AccountAttributeValue)
* [ActiveInstance](#ActiveInstance)
* [Address](#Address)
* [AttributeBooleanValue](#AttributeBooleanValue)
* [AttributeValue](#AttributeValue)
* [AvailabilityZone](#AvailabilityZone)
* [AvailabilityZoneMessage](#AvailabilityZoneMessage)
* [AvailableCapacity](#AvailableCapacity)
* [BlobAttributeValue](#BlobAttributeValue)
* [BlockDeviceMapping](#BlockDeviceMapping)
* [BundleTask](#BundleTask)
* [BundleTaskError](#BundleTaskError)
* [CancelSpotFleetRequestsError](#CancelSpotFleetRequestsError)
* [CancelSpotFleetRequestsErrorItem](#CancelSpotFleetRequestsErrorItem)
* [CancelSpotFleetRequestsSuccessItem](#CancelSpotFleetRequestsSuccessItem)
* [CancelledSpotInstanceRequest](#CancelledSpotInstanceRequest)
* [ClassicLinkDnsSupport](#ClassicLinkDnsSupport)
* [ClassicLinkInstance](#ClassicLinkInstance)
* [ClientData](#ClientData)
* [ConversionTask](#ConversionTask)
* [CreateVolumePermission](#CreateVolumePermission)
* [CreateVolumePermissionModifications](#CreateVolumePermissionModifications)
* [CustomerGateway](#CustomerGateway)
* [DhcpConfiguration](#DhcpConfiguration)
* [DhcpOptions](#DhcpOptions)
* [DiskImage](#DiskImage)
* [DiskImageDescription](#DiskImageDescription)
* [DiskImageDetail](#DiskImageDetail)
* [DiskImageVolumeDescription](#DiskImageVolumeDescription)
* [EbsBlockDevice](#EbsBlockDevice)
* [EbsInstanceBlockDevice](#EbsInstanceBlockDevice)
* [EbsInstanceBlockDeviceSpecification](#EbsInstanceBlockDeviceSpecification)
* [EgressOnlyInternetGateway](#EgressOnlyInternetGateway)
* [EventInformation](#EventInformation)
* [ExportTask](#ExportTask)
* [ExportToS3Task](#ExportToS3Task)
* [ExportToS3TaskSpecification](#ExportToS3TaskSpecification)
* [Filter](#Filter)
* [FlowLog](#FlowLog)
* [GroupIdentifier](#GroupIdentifier)
* [HistoryRecord](#HistoryRecord)
* [Host](#Host)
* [HostInstance](#HostInstance)
* [HostOffering](#HostOffering)
* [HostProperties](#HostProperties)
* [HostReservation](#HostReservation)
* [IamInstanceProfile](#IamInstanceProfile)
* [IamInstanceProfileSpecification](#IamInstanceProfileSpecification)
* [IcmpTypeCode](#IcmpTypeCode)
* [IdFormat](#IdFormat)
* [Image](#Image)
* [ImageDiskContainer](#ImageDiskContainer)
* [ImportImageTask](#ImportImageTask)
* [ImportInstanceLaunchSpecification](#ImportInstanceLaunchSpecification)
* [ImportInstanceTaskDetails](#ImportInstanceTaskDetails)
* [ImportInstanceVolumeDetailItem](#ImportInstanceVolumeDetailItem)
* [ImportSnapshotTask](#ImportSnapshotTask)
* [ImportVolumeTaskDetails](#ImportVolumeTaskDetails)
* [Instance](#Instance)
* [InstanceBlockDeviceMapping](#InstanceBlockDeviceMapping)
* [InstanceBlockDeviceMappingSpecification](#InstanceBlockDeviceMappingSpecification)
* [InstanceCapacity](#InstanceCapacity)
* [InstanceCount](#InstanceCount)
* [InstanceExportDetails](#InstanceExportDetails)
* [InstanceIpv6Address](#InstanceIpv6Address)
* [InstanceMonitoring](#InstanceMonitoring)
* [InstanceNetworkInterface](#InstanceNetworkInterface)
* [InstanceNetworkInterfaceAssociation](#InstanceNetworkInterfaceAssociation)
* [InstanceNetworkInterfaceAttachment](#InstanceNetworkInterfaceAttachment)
* [InstanceNetworkInterfaceSpecification](#InstanceNetworkInterfaceSpecification)
* [InstancePrivateIpAddress](#InstancePrivateIpAddress)
* [InstanceState](#InstanceState)
* [InstanceStateChange](#InstanceStateChange)
* [InstanceStatus](#InstanceStatus)
* [InstanceStatusDetails](#InstanceStatusDetails)
* [InstanceStatusEvent](#InstanceStatusEvent)
* [InstanceStatusSummary](#InstanceStatusSummary)
* [InternetGateway](#InternetGateway)
* [InternetGatewayAttachment](#InternetGatewayAttachment)
* [IpPermission](#IpPermission)
* [IpRange](#IpRange)
* [Ipv6CidrBlock](#Ipv6CidrBlock)
* [Ipv6Range](#Ipv6Range)
* [KeyPairInfo](#KeyPairInfo)
* [LaunchPermission](#LaunchPermission)
* [LaunchPermissionModifications](#LaunchPermissionModifications)
* [LaunchSpecification](#LaunchSpecification)
* [Monitoring](#Monitoring)
* [MovingAddressStatus](#MovingAddressStatus)
* [NatGateway](#NatGateway)
* [NatGatewayAddress](#NatGatewayAddress)
* [NetworkAcl](#NetworkAcl)
* [NetworkAclAssociation](#NetworkAclAssociation)
* [NetworkAclEntry](#NetworkAclEntry)
* [NetworkInterface](#NetworkInterface)
* [NetworkInterfaceAssociation](#NetworkInterfaceAssociation)
* [NetworkInterfaceAttachment](#NetworkInterfaceAttachment)
* [NetworkInterfaceAttachmentChanges](#NetworkInterfaceAttachmentChanges)
* [NetworkInterfaceIpv6Address](#NetworkInterfaceIpv6Address)
* [NetworkInterfacePrivateIpAddress](#NetworkInterfacePrivateIpAddress)
* [NewDhcpConfiguration](#NewDhcpConfiguration)
* [PeeringConnectionOptions](#PeeringConnectionOptions)
* [PeeringConnectionOptionsRequest](#PeeringConnectionOptionsRequest)
* [Placement](#Placement)
* [PlacementGroup](#PlacementGroup)
* [PortRange](#PortRange)
* [PrefixList](#PrefixList)
* [PrefixListId](#PrefixListId)
* [PriceSchedule](#PriceSchedule)
* [PriceScheduleSpecification](#PriceScheduleSpecification)
* [PricingDetail](#PricingDetail)
* [PrivateIpAddressSpecification](#PrivateIpAddressSpecification)
* [ProductCode](#ProductCode)
* [PropagatingVgw](#PropagatingVgw)
* [ProvisionedBandwidth](#ProvisionedBandwidth)
* [Purchase](#Purchase)
* [PurchaseRequest](#PurchaseRequest)
* [RecurringCharge](#RecurringCharge)
* [Region](#Region)
* [RequestSpotLaunchSpecification](#RequestSpotLaunchSpecification)
* [ReservationValue](#ReservationValue)
* [ReservedInstanceLimitPrice](#ReservedInstanceLimitPrice)
* [ReservedInstanceReservationValue](#ReservedInstanceReservationValue)
* [ReservedInstances](#ReservedInstances)
* [ReservedInstancesConfiguration](#ReservedInstancesConfiguration)
* [ReservedInstancesId](#ReservedInstancesId)
* [ReservedInstancesListing](#ReservedInstancesListing)
* [ReservedInstancesModification](#ReservedInstancesModification)
* [ReservedInstancesModificationResult](#ReservedInstancesModificationResult)
* [ReservedInstancesOffering](#ReservedInstancesOffering)
* [Route](#Route)
* [RouteTable](#RouteTable)
* [RouteTableAssociation](#RouteTableAssociation)
* [RunInstancesMonitoringEnabled](#RunInstancesMonitoringEnabled)
* [S3Storage](#S3Storage)
* [ScheduledInstance](#ScheduledInstance)
* [ScheduledInstanceAvailability](#ScheduledInstanceAvailability)
* [ScheduledInstanceRecurrence](#ScheduledInstanceRecurrence)
* [ScheduledInstanceRecurrenceRequest](#ScheduledInstanceRecurrenceRequest)
* [ScheduledInstancesBlockDeviceMapping](#ScheduledInstancesBlockDeviceMapping)
* [ScheduledInstancesEbs](#ScheduledInstancesEbs)
* [ScheduledInstancesIamInstanceProfile](#ScheduledInstancesIamInstanceProfile)
* [ScheduledInstancesIpv6Address](#ScheduledInstancesIpv6Address)
* [ScheduledInstancesLaunchSpecification](#ScheduledInstancesLaunchSpecification)
* [ScheduledInstancesMonitoring](#ScheduledInstancesMonitoring)
* [ScheduledInstancesNetworkInterface](#ScheduledInstancesNetworkInterface)
* [ScheduledInstancesPlacement](#ScheduledInstancesPlacement)
* [ScheduledInstancesPrivateIpAddressConfig](#ScheduledInstancesPrivateIpAddressConfig)
* [SecurityGroup](#SecurityGroup)
* [SecurityGroupReference](#SecurityGroupReference)
* [SlotDateTimeRangeRequest](#SlotDateTimeRangeRequest)
* [SlotStartTimeRangeRequest](#SlotStartTimeRangeRequest)
* [SnapshotDetail](#SnapshotDetail)
* [SnapshotDiskContainer](#SnapshotDiskContainer)
* [SnapshotTaskDetail](#SnapshotTaskDetail)
* [SpotDatafeedSubscription](#SpotDatafeedSubscription)
* [SpotFleetLaunchSpecification](#SpotFleetLaunchSpecification)
* [SpotFleetMonitoring](#SpotFleetMonitoring)
* [SpotFleetRequestConfig](#SpotFleetRequestConfig)
* [SpotFleetRequestConfigData](#SpotFleetRequestConfigData)
* [SpotInstanceRequest](#SpotInstanceRequest)
* [SpotInstanceStateFault](#SpotInstanceStateFault)
* [SpotInstanceStatus](#SpotInstanceStatus)
* [SpotPlacement](#SpotPlacement)
* [SpotPrice](#SpotPrice)
* [StaleIpPermission](#StaleIpPermission)
* [StaleSecurityGroup](#StaleSecurityGroup)
* [StateReason](#StateReason)
* [Storage](#Storage)
* [Subnet](#Subnet)
* [SubnetCidrBlockState](#SubnetCidrBlockState)
* [SubnetIpv6CidrBlockAssociation](#SubnetIpv6CidrBlockAssociation)
* [Tag](#Tag)
* [TagDescription](#TagDescription)
* [TargetConfiguration](#TargetConfiguration)
* [TargetConfigurationRequest](#TargetConfigurationRequest)
* [TargetReservationValue](#TargetReservationValue)
* [UnsuccessfulItem](#UnsuccessfulItem)
* [UnsuccessfulItemError](#UnsuccessfulItemError)
* [UserBucket](#UserBucket)
* [UserBucketDetails](#UserBucketDetails)
* [UserData](#UserData)
* [UserIdGroupPair](#UserIdGroupPair)
* [VgwTelemetry](#VgwTelemetry)
* [VolumeDetail](#VolumeDetail)
* [VolumeStatusAction](#VolumeStatusAction)
* [VolumeStatusDetails](#VolumeStatusDetails)
* [VolumeStatusEvent](#VolumeStatusEvent)
* [VolumeStatusInfo](#VolumeStatusInfo)
* [VolumeStatusItem](#VolumeStatusItem)
* [Vpc](#Vpc)
* [VpcAttachment](#VpcAttachment)
* [VpcCidrBlockState](#VpcCidrBlockState)
* [VpcClassicLink](#VpcClassicLink)
* [VpcEndpoint](#VpcEndpoint)
* [VpcIpv6CidrBlockAssociation](#VpcIpv6CidrBlockAssociation)
* [VpcPeeringConnection](#VpcPeeringConnection)
* [VpcPeeringConnectionOptionsDescription](#VpcPeeringConnectionOptionsDescription)
* [VpcPeeringConnectionStateReason](#VpcPeeringConnectionStateReason)
* [VpcPeeringConnectionVpcInfo](#VpcPeeringConnectionVpcInfo)
* [VpnConnection](#VpnConnection)
* [VpnConnectionOptions](#VpnConnectionOptions)
* [VpnConnectionOptionsSpecification](#VpnConnectionOptionsSpecification)
* [VpnGateway](#VpnGateway)
* [VpnStaticRoute](#VpnStaticRoute)


@docs AccountAttribute,AccountAttributeValue,ActiveInstance,Address,AttributeBooleanValue,AttributeValue,AvailabilityZone,AvailabilityZoneMessage,AvailableCapacity,BlobAttributeValue,BlockDeviceMapping,BundleTask,BundleTaskError,CancelSpotFleetRequestsError,CancelSpotFleetRequestsErrorItem,CancelSpotFleetRequestsSuccessItem,CancelledSpotInstanceRequest,ClassicLinkDnsSupport,ClassicLinkInstance,ClientData,ConversionTask,CreateVolumePermission,CreateVolumePermissionModifications,CustomerGateway,DhcpConfiguration,DhcpOptions,DiskImage,DiskImageDescription,DiskImageDetail,DiskImageVolumeDescription,EbsBlockDevice,EbsInstanceBlockDevice,EbsInstanceBlockDeviceSpecification,EgressOnlyInternetGateway,EventInformation,ExportTask,ExportToS3Task,ExportToS3TaskSpecification,Filter,FlowLog,GroupIdentifier,HistoryRecord,Host,HostInstance,HostOffering,HostProperties,HostReservation,IamInstanceProfile,IamInstanceProfileSpecification,IcmpTypeCode,IdFormat,Image,ImageDiskContainer,ImportImageTask,ImportInstanceLaunchSpecification,ImportInstanceTaskDetails,ImportInstanceVolumeDetailItem,ImportSnapshotTask,ImportVolumeTaskDetails,Instance,InstanceBlockDeviceMapping,InstanceBlockDeviceMappingSpecification,InstanceCapacity,InstanceCount,InstanceExportDetails,InstanceIpv6Address,InstanceMonitoring,InstanceNetworkInterface,InstanceNetworkInterfaceAssociation,InstanceNetworkInterfaceAttachment,InstanceNetworkInterfaceSpecification,InstancePrivateIpAddress,InstanceState,InstanceStateChange,InstanceStatus,InstanceStatusDetails,InstanceStatusEvent,InstanceStatusSummary,InternetGateway,InternetGatewayAttachment,IpPermission,IpRange,Ipv6CidrBlock,Ipv6Range,KeyPairInfo,LaunchPermission,LaunchPermissionModifications,LaunchSpecification,Monitoring,MovingAddressStatus,NatGateway,NatGatewayAddress,NetworkAcl,NetworkAclAssociation,NetworkAclEntry,NetworkInterface,NetworkInterfaceAssociation,NetworkInterfaceAttachment,NetworkInterfaceAttachmentChanges,NetworkInterfaceIpv6Address,NetworkInterfacePrivateIpAddress,NewDhcpConfiguration,PeeringConnectionOptions,PeeringConnectionOptionsRequest,Placement,PlacementGroup,PortRange,PrefixList,PrefixListId,PriceSchedule,PriceScheduleSpecification,PricingDetail,PrivateIpAddressSpecification,ProductCode,PropagatingVgw,ProvisionedBandwidth,Purchase,PurchaseRequest,RecurringCharge,Region,RequestSpotLaunchSpecification,ReservationValue,ReservedInstanceLimitPrice,ReservedInstanceReservationValue,ReservedInstances,ReservedInstancesConfiguration,ReservedInstancesId,ReservedInstancesListing,ReservedInstancesModification,ReservedInstancesModificationResult,ReservedInstancesOffering,Route,RouteTable,RouteTableAssociation,RunInstancesMonitoringEnabled,S3Storage,ScheduledInstance,ScheduledInstanceAvailability,ScheduledInstanceRecurrence,ScheduledInstanceRecurrenceRequest,ScheduledInstancesBlockDeviceMapping,ScheduledInstancesEbs,ScheduledInstancesIamInstanceProfile,ScheduledInstancesIpv6Address,ScheduledInstancesLaunchSpecification,ScheduledInstancesMonitoring,ScheduledInstancesNetworkInterface,ScheduledInstancesPlacement,ScheduledInstancesPrivateIpAddressConfig,SecurityGroup,SecurityGroupReference,SlotDateTimeRangeRequest,SlotStartTimeRangeRequest,SnapshotDetail,SnapshotDiskContainer,SnapshotTaskDetail,SpotDatafeedSubscription,SpotFleetLaunchSpecification,SpotFleetMonitoring,SpotFleetRequestConfig,SpotFleetRequestConfigData,SpotInstanceRequest,SpotInstanceStateFault,SpotInstanceStatus,SpotPlacement,SpotPrice,StaleIpPermission,StaleSecurityGroup,StateReason,Storage,Subnet,SubnetCidrBlockState,SubnetIpv6CidrBlockAssociation,Tag,TagDescription,TargetConfiguration,TargetConfigurationRequest,TargetReservationValue,UnsuccessfulItem,UnsuccessfulItemError,UserBucket,UserBucketDetails,UserData,UserIdGroupPair,VgwTelemetry,VolumeDetail,VolumeStatusAction,VolumeStatusDetails,VolumeStatusEvent,VolumeStatusInfo,VolumeStatusItem,Vpc,VpcAttachment,VpcCidrBlockState,VpcClassicLink,VpcEndpoint,VpcIpv6CidrBlockAssociation,VpcPeeringConnection,VpcPeeringConnectionOptionsDescription,VpcPeeringConnectionStateReason,VpcPeeringConnectionVpcInfo,VpnConnection,VpnConnectionOptions,VpnConnectionOptionsSpecification,VpnGateway,VpnStaticRoute

## Unions

* [AccountAttributeName](#AccountAttributeName)
* [ActivityStatus](#ActivityStatus)
* [Affinity](#Affinity)
* [AllocationState](#AllocationState)
* [AllocationStrategy](#AllocationStrategy)
* [ArchitectureValues](#ArchitectureValues)
* [AttachmentStatus](#AttachmentStatus)
* [AutoPlacement](#AutoPlacement)
* [AvailabilityZoneState](#AvailabilityZoneState)
* [BatchState](#BatchState)
* [BundleTaskState](#BundleTaskState)
* [CancelBatchErrorCode](#CancelBatchErrorCode)
* [CancelSpotInstanceRequestState](#CancelSpotInstanceRequestState)
* [ContainerFormat](#ContainerFormat)
* [ConversionTaskState](#ConversionTaskState)
* [CurrencyCodeValues](#CurrencyCodeValues)
* [DatafeedSubscriptionState](#DatafeedSubscriptionState)
* [DeviceType](#DeviceType)
* [DiskImageFormat](#DiskImageFormat)
* [DomainType](#DomainType)
* [EventCode](#EventCode)
* [EventType](#EventType)
* [ExcessCapacityTerminationPolicy](#ExcessCapacityTerminationPolicy)
* [ExportEnvironment](#ExportEnvironment)
* [ExportTaskState](#ExportTaskState)
* [FleetType](#FleetType)
* [FlowLogsResourceType](#FlowLogsResourceType)
* [GatewayType](#GatewayType)
* [HostTenancy](#HostTenancy)
* [HypervisorType](#HypervisorType)
* [ImageAttributeName](#ImageAttributeName)
* [ImageState](#ImageState)
* [ImageTypeValues](#ImageTypeValues)
* [InstanceAttributeName](#InstanceAttributeName)
* [InstanceHealthStatus](#InstanceHealthStatus)
* [InstanceLifecycleType](#InstanceLifecycleType)
* [InstanceStateName](#InstanceStateName)
* [InstanceType](#InstanceType)
* [ListingState](#ListingState)
* [ListingStatus](#ListingStatus)
* [MonitoringState](#MonitoringState)
* [MoveStatus](#MoveStatus)
* [NatGatewayState](#NatGatewayState)
* [NetworkInterfaceAttribute](#NetworkInterfaceAttribute)
* [NetworkInterfaceStatus](#NetworkInterfaceStatus)
* [NetworkInterfaceType](#NetworkInterfaceType)
* [OfferingClassType](#OfferingClassType)
* [OfferingTypeValues](#OfferingTypeValues)
* [OperationType](#OperationType)
* [PaymentOption](#PaymentOption)
* [PermissionGroup](#PermissionGroup)
* [PlacementGroupState](#PlacementGroupState)
* [PlacementStrategy](#PlacementStrategy)
* [PlatformValues](#PlatformValues)
* [ProductCodeValues](#ProductCodeValues)
* [RIProductDescription](#RIProductDescription)
* [RecurringChargeFrequency](#RecurringChargeFrequency)
* [ReportInstanceReasonCodes](#ReportInstanceReasonCodes)
* [ReportStatusType](#ReportStatusType)
* [ReservationState](#ReservationState)
* [ReservedInstanceState](#ReservedInstanceState)
* [ResetImageAttributeName](#ResetImageAttributeName)
* [ResourceType](#ResourceType)
* [RouteOrigin](#RouteOrigin)
* [RouteState](#RouteState)
* [RuleAction](#RuleAction)
* [ShutdownBehavior](#ShutdownBehavior)
* [SnapshotAttributeName](#SnapshotAttributeName)
* [SnapshotState](#SnapshotState)
* [SpotInstanceState](#SpotInstanceState)
* [SpotInstanceType](#SpotInstanceType)
* [State](#State)
* [Status](#Status)
* [StatusName](#StatusName)
* [StatusType](#StatusType)
* [SubnetCidrBlockStateCode](#SubnetCidrBlockStateCode)
* [SubnetState](#SubnetState)
* [SummaryStatus](#SummaryStatus)
* [TelemetryStatus](#TelemetryStatus)
* [Tenancy](#Tenancy)
* [TrafficType](#TrafficType)
* [VirtualizationType](#VirtualizationType)
* [VolumeAttachmentState](#VolumeAttachmentState)
* [VolumeAttributeName](#VolumeAttributeName)
* [VolumeState](#VolumeState)
* [VolumeStatusInfoStatus](#VolumeStatusInfoStatus)
* [VolumeStatusName](#VolumeStatusName)
* [VolumeType](#VolumeType)
* [VpcAttributeName](#VpcAttributeName)
* [VpcCidrBlockStateCode](#VpcCidrBlockStateCode)
* [VpcPeeringConnectionStateReasonCode](#VpcPeeringConnectionStateReasonCode)
* [VpcState](#VpcState)
* [VpnState](#VpnState)
* [VpnStaticRouteSource](#VpnStaticRouteSource)
* [Scope](#Scope)


@docs AccountAttributeName,ActivityStatus,Affinity,AllocationState,AllocationStrategy,ArchitectureValues,AttachmentStatus,AutoPlacement,AvailabilityZoneState,BatchState,BundleTaskState,CancelBatchErrorCode,CancelSpotInstanceRequestState,ContainerFormat,ConversionTaskState,CurrencyCodeValues,DatafeedSubscriptionState,DeviceType,DiskImageFormat,DomainType,EventCode,EventType,ExcessCapacityTerminationPolicy,ExportEnvironment,ExportTaskState,FleetType,FlowLogsResourceType,GatewayType,HostTenancy,HypervisorType,ImageAttributeName,ImageState,ImageTypeValues,InstanceAttributeName,InstanceHealthStatus,InstanceLifecycleType,InstanceStateName,InstanceType,ListingState,ListingStatus,MonitoringState,MoveStatus,NatGatewayState,NetworkInterfaceAttribute,NetworkInterfaceStatus,NetworkInterfaceType,OfferingClassType,OfferingTypeValues,OperationType,PaymentOption,PermissionGroup,PlacementGroupState,PlacementStrategy,PlatformValues,ProductCodeValues,RIProductDescription,RecurringChargeFrequency,ReportInstanceReasonCodes,ReportStatusType,ReservationState,ReservedInstanceState,ResetImageAttributeName,ResourceType,RouteOrigin,RouteState,RuleAction,ShutdownBehavior,SnapshotAttributeName,SnapshotState,SpotInstanceState,SpotInstanceType,State,Status,StatusName,StatusType,SubnetCidrBlockStateCode,SubnetState,SummaryStatus,TelemetryStatus,Tenancy,TrafficType,VirtualizationType,VolumeAttachmentState,VolumeAttributeName,VolumeState,VolumeStatusInfoStatus,VolumeStatusName,VolumeType,VpcAttributeName,VpcCidrBlockStateCode,VpcPeeringConnectionStateReasonCode,VpcState,VpnState,VpnStaticRouteSource,Scope

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
        "ec2"
        "2016-11-15"
        "undefined"
        "AWSEC2_20161115."
        "ec2.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Accepts the Convertible Reserved Instance exchange quote described in the <a>GetReservedInstancesExchangeQuote</a> call.</p>

__Required Parameters__

* `reservedInstanceIds` __:__ `(List String)`


-}
acceptReservedInstancesExchangeQuote :
    (List String)
    -> (AcceptReservedInstancesExchangeQuoteOptions -> AcceptReservedInstancesExchangeQuoteOptions)
    -> AWS.Request AcceptReservedInstancesExchangeQuoteResult
acceptReservedInstancesExchangeQuote reservedInstanceIds setOptions =
  let
    options = setOptions (AcceptReservedInstancesExchangeQuoteOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AcceptReservedInstancesExchangeQuote"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        acceptReservedInstancesExchangeQuoteResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a acceptReservedInstancesExchangeQuote request
-}
type alias AcceptReservedInstancesExchangeQuoteOptions =
    { dryRun : Maybe Bool
    , targetConfigurations : Maybe (List TargetConfigurationRequest)
    }



{-| <p>Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the <code>pending-acceptance</code> state, and you must be the owner of the peer VPC. Use the <code>DescribeVpcPeeringConnections</code> request to view your outstanding VPC peering connection requests.</p>

__Required Parameters__



-}
acceptVpcPeeringConnection :
    (AcceptVpcPeeringConnectionOptions -> AcceptVpcPeeringConnectionOptions)
    -> AWS.Request AcceptVpcPeeringConnectionResult
acceptVpcPeeringConnection setOptions =
  let
    options = setOptions (AcceptVpcPeeringConnectionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AcceptVpcPeeringConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        acceptVpcPeeringConnectionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a acceptVpcPeeringConnection request
-}
type alias AcceptVpcPeeringConnectionOptions =
    { dryRun : Maybe Bool
    , vpcPeeringConnectionId : Maybe String
    }



{-| <p>Acquires an Elastic IP address.</p> <p>An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
allocateAddress :
    (AllocateAddressOptions -> AllocateAddressOptions)
    -> AWS.Request AllocateAddressResult
allocateAddress setOptions =
  let
    options = setOptions (AllocateAddressOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AllocateAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        allocateAddressResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a allocateAddress request
-}
type alias AllocateAddressOptions =
    { dryRun : Maybe Bool
    , domain : Maybe DomainType
    }



{-| <p>Allocates a Dedicated Host to your account. At minimum you need to specify the instance size type, Availability Zone, and quantity of hosts you want to allocate.</p>

__Required Parameters__

* `instanceType` __:__ `String`
* `quantity` __:__ `Int`
* `availabilityZone` __:__ `String`


-}
allocateHosts :
    String
    -> Int
    -> String
    -> (AllocateHostsOptions -> AllocateHostsOptions)
    -> AWS.Request AllocateHostsResult
allocateHosts instanceType quantity availabilityZone setOptions =
  let
    options = setOptions (AllocateHostsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AllocateHosts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        allocateHostsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a allocateHosts request
-}
type alias AllocateHostsOptions =
    { autoPlacement : Maybe AutoPlacement
    , clientToken : Maybe String
    }



{-| <p>Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet's IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI">IP Addresses Per Network Interface Per Instance Type</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`


-}
assignIpv6Addresses :
    String
    -> (AssignIpv6AddressesOptions -> AssignIpv6AddressesOptions)
    -> AWS.Request AssignIpv6AddressesResult
assignIpv6Addresses networkInterfaceId setOptions =
  let
    options = setOptions (AssignIpv6AddressesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AssignIpv6Addresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        assignIpv6AddressesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a assignIpv6Addresses request
-}
type alias AssignIpv6AddressesOptions =
    { ipv6Addresses : Maybe (List String)
    , ipv6AddressCount : Maybe Int
    }



{-| <p>Assigns one or more secondary private IP addresses to the specified network interface. You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet's CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">Instance Types</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. For more information about Elastic IP addresses, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>AssignPrivateIpAddresses is available only in EC2-VPC.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`


-}
assignPrivateIpAddresses :
    String
    -> (AssignPrivateIpAddressesOptions -> AssignPrivateIpAddressesOptions)
    -> AWS.Request ()
assignPrivateIpAddresses networkInterfaceId setOptions =
  let
    options = setOptions (AssignPrivateIpAddressesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AssignPrivateIpAddresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a assignPrivateIpAddresses request
-}
type alias AssignPrivateIpAddressesOptions =
    { privateIpAddresses : Maybe (List String)
    , secondaryPrivateIpAddressCount : Maybe Int
    , allowReassignment : Maybe Bool
    }



{-| <p>Associates an Elastic IP address with an instance or a network interface.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>[EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance.</p> <p>[VPC in an EC2-Classic account] If you don't specify a private IP address, the Elastic IP address is associated with the primary IP address. If the Elastic IP address is already associated with a different instance or a network interface, you get an error unless you allow reassociation.</p> <important> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the <i>Elastic IP Addresses</i> section of <a href="http://aws.amazon.com/ec2/pricing/">Amazon EC2 Pricing</a>.</p> </important>

__Required Parameters__



-}
associateAddress :
    (AssociateAddressOptions -> AssociateAddressOptions)
    -> AWS.Request AssociateAddressResult
associateAddress setOptions =
  let
    options = setOptions (AssociateAddressOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateAddressResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a associateAddress request
-}
type alias AssociateAddressOptions =
    { dryRun : Maybe Bool
    , instanceId : Maybe String
    , publicIp : Maybe String
    , allocationId : Maybe String
    , networkInterfaceId : Maybe String
    , privateIpAddress : Maybe String
    , allowReassociation : Maybe Bool
    }



{-| <p>Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC.</p> <p>After you associate the options with the VPC, any existing instances and all new instances that you launch in that VPC use the options. You don't need to restart or relaunch the instances. They automatically pick up the changes within a few hours, depending on how frequently the instance renews its DHCP lease. You can explicitly renew the lease using the operating system on the instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `dhcpOptionsId` __:__ `String`
* `vpcId` __:__ `String`


-}
associateDhcpOptions :
    String
    -> String
    -> (AssociateDhcpOptionsOptions -> AssociateDhcpOptionsOptions)
    -> AWS.Request ()
associateDhcpOptions dhcpOptionsId vpcId setOptions =
  let
    options = setOptions (AssociateDhcpOptionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateDhcpOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a associateDhcpOptions request
-}
type alias AssociateDhcpOptionsOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table from the subnet later. A route table can be associated with multiple subnets.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `subnetId` __:__ `String`
* `routeTableId` __:__ `String`


-}
associateRouteTable :
    String
    -> String
    -> (AssociateRouteTableOptions -> AssociateRouteTableOptions)
    -> AWS.Request AssociateRouteTableResult
associateRouteTable subnetId routeTableId setOptions =
  let
    options = setOptions (AssociateRouteTableOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateRouteTable"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateRouteTableResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a associateRouteTable request
-}
type alias AssociateRouteTableOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.</p>

__Required Parameters__

* `subnetId` __:__ `String`
* `ipv6CidrBlock` __:__ `String`


-}
associateSubnetCidrBlock :
    String
    -> String
    -> AWS.Request AssociateSubnetCidrBlockResult
associateSubnetCidrBlock subnetId ipv6CidrBlock =
    AWS.Http.unsignedRequest
        "AssociateSubnetCidrBlock"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateSubnetCidrBlockResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Associates a CIDR block with your VPC. You can only associate a single Amazon-provided IPv6 CIDR block with your VPC. The IPv6 CIDR block size is fixed at /56.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
associateVpcCidrBlock :
    String
    -> (AssociateVpcCidrBlockOptions -> AssociateVpcCidrBlockOptions)
    -> AWS.Request AssociateVpcCidrBlockResult
associateVpcCidrBlock vpcId setOptions =
  let
    options = setOptions (AssociateVpcCidrBlockOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateVpcCidrBlock"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateVpcCidrBlockResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a associateVpcCidrBlock request
-}
type alias AssociateVpcCidrBlockOptions =
    { amazonProvidedIpv6CidrBlock : Maybe Bool
    }



{-| <p>Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC's security groups. You cannot link an EC2-Classic instance to more than one VPC at a time. You can only link an instance that's in the <code>running</code> state. An instance is automatically unlinked from a VPC when it's stopped - you can link it to the VPC again when you restart it.</p> <p>After you've linked an instance, you cannot change the VPC security groups that are associated with it. To change the security groups, you must first unlink the instance, and then link it again.</p> <p>Linking your instance to a VPC is sometimes referred to as <i>attaching</i> your instance.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `vpcId` __:__ `String`
* `groups` __:__ `(List String)`


-}
attachClassicLinkVpc :
    String
    -> String
    -> (List String)
    -> (AttachClassicLinkVpcOptions -> AttachClassicLinkVpcOptions)
    -> AWS.Request AttachClassicLinkVpcResult
attachClassicLinkVpc instanceId vpcId groups setOptions =
  let
    options = setOptions (AttachClassicLinkVpcOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AttachClassicLinkVpc"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        attachClassicLinkVpcResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a attachClassicLinkVpc request
-}
type alias AttachClassicLinkVpcOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Attaches an Internet gateway to a VPC, enabling connectivity between the Internet and the VPC. For more information about your VPC and Internet gateway, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/">Amazon Virtual Private Cloud User Guide</a>.</p>

__Required Parameters__

* `internetGatewayId` __:__ `String`
* `vpcId` __:__ `String`


-}
attachInternetGateway :
    String
    -> String
    -> (AttachInternetGatewayOptions -> AttachInternetGatewayOptions)
    -> AWS.Request ()
attachInternetGateway internetGatewayId vpcId setOptions =
  let
    options = setOptions (AttachInternetGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AttachInternetGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a attachInternetGateway request
-}
type alias AttachInternetGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Attaches a network interface to an instance.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`
* `instanceId` __:__ `String`
* `deviceIndex` __:__ `Int`


-}
attachNetworkInterface :
    String
    -> String
    -> Int
    -> (AttachNetworkInterfaceOptions -> AttachNetworkInterfaceOptions)
    -> AWS.Request AttachNetworkInterfaceResult
attachNetworkInterface networkInterfaceId instanceId deviceIndex setOptions =
  let
    options = setOptions (AttachNetworkInterfaceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AttachNetworkInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        attachNetworkInterfaceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a attachNetworkInterface request
-}
type alias AttachNetworkInterfaceOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name.</p> <p>Encrypted EBS volumes may only be attached to instances that support Amazon EBS encryption. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For a list of supported device names, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html">Attaching an EBS Volume to an Instance</a>. Any device names that aren't reserved for instance store volumes can be used for EBS volumes. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html">Amazon EC2 Instance Store</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>If a volume has an AWS Marketplace product code:</p> <ul> <li> <p>The volume can be attached only to a stopped instance.</p> </li> <li> <p>AWS Marketplace product codes are copied from the volume to the instance.</p> </li> <li> <p>You must be subscribed to the product.</p> </li> <li> <p>The instance type and operating system of the instance must support the product. For example, you can't detach a volume from a Windows instance and attach it to a Linux instance.</p> </li> </ul> <p>For an overview of the AWS Marketplace, see <a href="https://aws.amazon.com/marketplace/help/200900000">Introducing AWS Marketplace</a>.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html">Attaching Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `volumeId` __:__ `String`
* `instanceId` __:__ `String`
* `device` __:__ `String`


-}
attachVolume :
    String
    -> String
    -> String
    -> (AttachVolumeOptions -> AttachVolumeOptions)
    -> AWS.Request VolumeAttachment
attachVolume volumeId instanceId device setOptions =
  let
    options = setOptions (AttachVolumeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AttachVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        volumeAttachmentDecoder
        |> AWS.UnsignedRequest


{-| Options for a attachVolume request
-}
type alias AttachVolumeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Attaches a virtual private gateway to a VPC. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding a Hardware Virtual Private Gateway to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `vpnGatewayId` __:__ `String`
* `vpcId` __:__ `String`


-}
attachVpnGateway :
    String
    -> String
    -> (AttachVpnGatewayOptions -> AttachVpnGatewayOptions)
    -> AWS.Request AttachVpnGatewayResult
attachVpnGateway vpnGatewayId vpcId setOptions =
  let
    options = setOptions (AttachVpnGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AttachVpnGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        attachVpnGatewayResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a attachVpnGateway request
-}
type alias AttachVpnGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>[EC2-VPC only] Adds one or more egress rules to a security group for use with a VPC. Specifically, this action permits instances to send traffic to one or more destination IPv4 or IPv6 CIDR address ranges, or to one or more destination security groups for the same VPC. This action doesn't apply to security groups for use in EC2-Classic. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>. For more information about security group limits, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a>.</p> <p>Each rule consists of the protocol (for example, TCP), plus either a CIDR range or a source group. For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes.</p> <p>Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.</p>

__Required Parameters__

* `groupId` __:__ `String`


-}
authorizeSecurityGroupEgress :
    String
    -> (AuthorizeSecurityGroupEgressOptions -> AuthorizeSecurityGroupEgressOptions)
    -> AWS.Request ()
authorizeSecurityGroupEgress groupId setOptions =
  let
    options = setOptions (AuthorizeSecurityGroupEgressOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AuthorizeSecurityGroupEgress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a authorizeSecurityGroupEgress request
-}
type alias AuthorizeSecurityGroupEgressOptions =
    { dryRun : Maybe Bool
    , sourceSecurityGroupName : Maybe String
    , sourceSecurityGroupOwnerId : Maybe String
    , ipProtocol : Maybe String
    , fromPort : Maybe Int
    , toPort : Maybe Int
    , cidrIp : Maybe String
    , ipPermissions : Maybe (List IpPermission)
    }



{-| <p>Adds one or more ingress rules to a security group.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p> <p>[EC2-Classic] This action gives one or more IPv4 CIDR address ranges permission to access a security group in your account, or gives one or more security groups (called the <i>source groups</i>) permission to access a security group for your account. A source group can be for your own AWS account, or another. You can have up to 100 rules per group.</p> <p>[EC2-VPC] This action gives one or more IPv4 or IPv6 CIDR address ranges permission to access a security group in your VPC, or gives one or more other security groups (called the <i>source groups</i>) permission to access a security group for your VPC. The security groups must all be for the same VPC or a peer VPC in a VPC peering connection. For more information about VPC security group limits, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a>.</p>

__Required Parameters__



-}
authorizeSecurityGroupIngress :
    (AuthorizeSecurityGroupIngressOptions -> AuthorizeSecurityGroupIngressOptions)
    -> AWS.Request ()
authorizeSecurityGroupIngress setOptions =
  let
    options = setOptions (AuthorizeSecurityGroupIngressOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AuthorizeSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a authorizeSecurityGroupIngress request
-}
type alias AuthorizeSecurityGroupIngressOptions =
    { dryRun : Maybe Bool
    , groupName : Maybe String
    , groupId : Maybe String
    , sourceSecurityGroupName : Maybe String
    , sourceSecurityGroupOwnerId : Maybe String
    , ipProtocol : Maybe String
    , fromPort : Maybe Int
    , toPort : Maybe Int
    , cidrIp : Maybe String
    , ipPermissions : Maybe (List IpPermission)
    }



{-| <p>Bundles an Amazon instance store-backed Windows instance.</p> <p>During bundling, only the root device volume (C:\) is bundled. Data on other instance store volumes is not preserved.</p> <note> <p>This action is not applicable for Linux/Unix instances or Windows instances that are backed by Amazon EBS.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/Creating_InstanceStoreBacked_WinAMI.html">Creating an Instance Store-Backed Windows AMI</a>.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `storage` __:__ `Storage`


-}
bundleInstance :
    String
    -> Storage
    -> (BundleInstanceOptions -> BundleInstanceOptions)
    -> AWS.Request BundleInstanceResult
bundleInstance instanceId storage setOptions =
  let
    options = setOptions (BundleInstanceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BundleInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        bundleInstanceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a bundleInstance request
-}
type alias BundleInstanceOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Cancels a bundling operation for an instance store-backed Windows instance.</p>

__Required Parameters__

* `bundleId` __:__ `String`


-}
cancelBundleTask :
    String
    -> (CancelBundleTaskOptions -> CancelBundleTaskOptions)
    -> AWS.Request CancelBundleTaskResult
cancelBundleTask bundleId setOptions =
  let
    options = setOptions (CancelBundleTaskOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CancelBundleTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelBundleTaskResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a cancelBundleTask request
-}
type alias CancelBundleTaskOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Cancels an active conversion task. The task can be the import of an instance or volume. The action removes all artifacts of the conversion, including a partially uploaded volume or instance. If the conversion is complete or is in the process of transferring the final disk image, the command fails and returns an exception.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html">Importing a Virtual Machine Using the Amazon EC2 CLI</a>.</p>

__Required Parameters__

* `conversionTaskId` __:__ `String`


-}
cancelConversionTask :
    String
    -> (CancelConversionTaskOptions -> CancelConversionTaskOptions)
    -> AWS.Request ()
cancelConversionTask conversionTaskId setOptions =
  let
    options = setOptions (CancelConversionTaskOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CancelConversionTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a cancelConversionTask request
-}
type alias CancelConversionTaskOptions =
    { dryRun : Maybe Bool
    , reasonMessage : Maybe String
    }



{-| <p>Cancels an active export task. The request removes all artifacts of the export, including any partially-created Amazon S3 objects. If the export task is complete or is in the process of transferring the final disk image, the command fails and returns an error.</p>

__Required Parameters__

* `exportTaskId` __:__ `String`


-}
cancelExportTask :
    String
    -> AWS.Request ()
cancelExportTask exportTaskId =
    AWS.Http.unsignedRequest
        "CancelExportTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Cancels an in-process import virtual machine or import snapshot task.</p>

__Required Parameters__



-}
cancelImportTask :
    (CancelImportTaskOptions -> CancelImportTaskOptions)
    -> AWS.Request CancelImportTaskResult
cancelImportTask setOptions =
  let
    options = setOptions (CancelImportTaskOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CancelImportTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelImportTaskResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a cancelImportTask request
-}
type alias CancelImportTaskOptions =
    { dryRun : Maybe Bool
    , importTaskId : Maybe String
    , cancelReason : Maybe String
    }



{-| <p>Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `reservedInstancesListingId` __:__ `String`


-}
cancelReservedInstancesListing :
    String
    -> AWS.Request CancelReservedInstancesListingResult
cancelReservedInstancesListing reservedInstancesListingId =
    AWS.Http.unsignedRequest
        "CancelReservedInstancesListing"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelReservedInstancesListingResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Cancels the specified Spot fleet requests.</p> <p>After you cancel a Spot fleet request, the Spot fleet launches no new Spot instances. You must specify whether the Spot fleet should also terminate its Spot instances. If you terminate the instances, the Spot fleet request enters the <code>cancelled_terminating</code> state. Otherwise, the Spot fleet request enters the <code>cancelled_running</code> state and the instances continue to run until they are interrupted or you terminate them manually.</p>

__Required Parameters__

* `spotFleetRequestIds` __:__ `(List String)`
* `terminateInstances` __:__ `Bool`


-}
cancelSpotFleetRequests :
    (List String)
    -> Bool
    -> (CancelSpotFleetRequestsOptions -> CancelSpotFleetRequestsOptions)
    -> AWS.Request CancelSpotFleetRequestsResponse
cancelSpotFleetRequests spotFleetRequestIds terminateInstances setOptions =
  let
    options = setOptions (CancelSpotFleetRequestsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CancelSpotFleetRequests"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelSpotFleetRequestsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a cancelSpotFleetRequests request
-}
type alias CancelSpotFleetRequestsOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Cancels one or more Spot instance requests. Spot instances are instances that Amazon EC2 starts on your behalf when the bid price that you specify exceeds the current Spot price. Amazon EC2 periodically sets the Spot price based on available Spot instance capacity and current Spot instance requests. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <important> <p>Canceling a Spot instance request does not terminate running Spot instances associated with the request.</p> </important>

__Required Parameters__

* `spotInstanceRequestIds` __:__ `(List String)`


-}
cancelSpotInstanceRequests :
    (List String)
    -> (CancelSpotInstanceRequestsOptions -> CancelSpotInstanceRequestsOptions)
    -> AWS.Request CancelSpotInstanceRequestsResult
cancelSpotInstanceRequests spotInstanceRequestIds setOptions =
  let
    options = setOptions (CancelSpotInstanceRequestsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CancelSpotInstanceRequests"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelSpotInstanceRequestsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a cancelSpotInstanceRequests request
-}
type alias CancelSpotInstanceRequestsOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Determines whether a product code is associated with an instance. This action can only be used by the owner of the product code. It is useful when a product code owner needs to verify whether another user's instance is eligible for support.</p>

__Required Parameters__

* `productCode` __:__ `String`
* `instanceId` __:__ `String`


-}
confirmProductInstance :
    String
    -> String
    -> (ConfirmProductInstanceOptions -> ConfirmProductInstanceOptions)
    -> AWS.Request ConfirmProductInstanceResult
confirmProductInstance productCode instanceId setOptions =
  let
    options = setOptions (ConfirmProductInstanceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ConfirmProductInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmProductInstanceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a confirmProductInstance request
-}
type alias ConfirmProductInstanceOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Initiates the copy of an AMI from the specified source region to the current region. You specify the destination region by using its endpoint when making the request.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html">Copying AMIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `sourceRegion` __:__ `String`
* `sourceImageId` __:__ `String`
* `name` __:__ `String`


-}
copyImage :
    String
    -> String
    -> String
    -> (CopyImageOptions -> CopyImageOptions)
    -> AWS.Request CopyImageResult
copyImage sourceRegion sourceImageId name setOptions =
  let
    options = setOptions (CopyImageOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CopyImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        copyImageResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a copyImage request
-}
type alias CopyImageOptions =
    { dryRun : Maybe Bool
    , description : Maybe String
    , clientToken : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }



{-| <p>Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy the snapshot within the same region or from one region to another. You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs). The snapshot is copied to the regional endpoint that you send the HTTP request to.</p> <p>Copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless the <code>Encrypted</code> flag is specified during the snapshot copy operation. By default, encrypted snapshot copies use the default AWS Key Management Service (AWS KMS) customer master key (CMK); however, you can specify a non-default CMK with the <code>KmsKeyId</code> parameter. </p> <note> <p>To copy an encrypted snapshot that has been shared from another account, you must have permissions for the CMK used to encrypt the snapshot.</p> </note> <note> <p>Snapshots created by the CopySnapshot action have an arbitrary volume ID that should not be used for any purpose.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html">Copying an Amazon EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `sourceRegion` __:__ `String`
* `sourceSnapshotId` __:__ `String`


-}
copySnapshot :
    String
    -> String
    -> (CopySnapshotOptions -> CopySnapshotOptions)
    -> AWS.Request CopySnapshotResult
copySnapshot sourceRegion sourceSnapshotId setOptions =
  let
    options = setOptions (CopySnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing)
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
    { dryRun : Maybe Bool
    , description : Maybe String
    , destinationRegion : Maybe String
    , presignedUrl : Maybe String
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }



{-| <p>Provides information to AWS about your VPN customer gateway device. The customer gateway is the appliance at your end of the VPN connection. (The device on the AWS side of the VPN connection is the virtual private gateway.) You must provide the Internet-routable IP address of the customer gateway's external interface. The IP address must be static and may be behind a device performing network address translation (NAT).</p> <p>For devices that use Border Gateway Protocol (BGP), you can also provide the device's BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your network. If you don't have an ASN already, you can use a private ASN (in the 64512 - 65534 range).</p> <note> <p>Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534, with the exception of 7224, which is reserved in the <code>us-east-1</code> region, and 9059, which is reserved in the <code>eu-west-1</code> region.</p> </note> <p>For more information about VPN customer gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding a Hardware Virtual Private Gateway to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <important> <p>You cannot create more than one customer gateway with the same VPN type, IP address, and BGP ASN parameter values. If you run an identical request more than one time, the first request creates the customer gateway, and subsequent requests return information about the existing customer gateway. The subsequent requests do not create new customer gateway resources.</p> </important>

__Required Parameters__

* `type_` __:__ `GatewayType`
* `publicIp` __:__ `String`
* `bgpAsn` __:__ `Int`


-}
createCustomerGateway :
    GatewayType
    -> String
    -> Int
    -> (CreateCustomerGatewayOptions -> CreateCustomerGatewayOptions)
    -> AWS.Request CreateCustomerGatewayResult
createCustomerGateway type_ publicIp bgpAsn setOptions =
  let
    options = setOptions (CreateCustomerGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCustomerGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCustomerGatewayResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createCustomerGateway request
-}
type alias CreateCustomerGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see <a href="http://www.ietf.org/rfc/rfc2132.txt">RFC 2132</a>.</p> <ul> <li> <p> <code>domain-name-servers</code> - The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. If you want your instance to receive a custom DNS hostname as specified in <code>domain-name</code>, you must set <code>domain-name-servers</code> to a custom DNS server.</p> </li> <li> <p> <code>domain-name</code> - If you're using AmazonProvidedDNS in "us-east-1", specify "ec2.internal". If you're using AmazonProvidedDNS in another region, specify "region.compute.internal" (for example, "ap-northeast-1.compute.internal"). Otherwise, specify a domain name (for example, "MyCompany.com"). This value is used to complete unqualified DNS hostnames. <b>Important</b>: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.</p> </li> <li> <p> <code>ntp-servers</code> - The IP addresses of up to four Network Time Protocol (NTP) servers.</p> </li> <li> <p> <code>netbios-name-servers</code> - The IP addresses of up to four NetBIOS name servers.</p> </li> <li> <p> <code>netbios-node-type</code> - The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see <a href="http://www.ietf.org/rfc/rfc2132.txt">RFC 2132</a>.</p> </li> </ul> <p>Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an Internet gateway, make sure to set the <code>domain-name-servers</code> option either to <code>AmazonProvidedDNS</code> or to a domain name server of your choice. For more information about DHCP options, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `dhcpConfigurations` __:__ `(List NewDhcpConfiguration)`


-}
createDhcpOptions :
    (List NewDhcpConfiguration)
    -> (CreateDhcpOptionsOptions -> CreateDhcpOptionsOptions)
    -> AWS.Request CreateDhcpOptionsResult
createDhcpOptions dhcpConfigurations setOptions =
  let
    options = setOptions (CreateDhcpOptionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDhcpOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDhcpOptionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createDhcpOptions request
-}
type alias CreateDhcpOptionsOptions =
    { dryRun : Maybe Bool
    }



{-| <p>[IPv6 only] Creates an egress-only Internet gateway for your VPC. An egress-only Internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the Internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
createEgressOnlyInternetGateway :
    String
    -> (CreateEgressOnlyInternetGatewayOptions -> CreateEgressOnlyInternetGatewayOptions)
    -> AWS.Request CreateEgressOnlyInternetGatewayResult
createEgressOnlyInternetGateway vpcId setOptions =
  let
    options = setOptions (CreateEgressOnlyInternetGatewayOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateEgressOnlyInternetGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createEgressOnlyInternetGatewayResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createEgressOnlyInternetGateway request
-}
type alias CreateEgressOnlyInternetGatewayOptions =
    { dryRun : Maybe Bool
    , clientToken : Maybe String
    }



{-| <p>Creates one or more flow logs to capture IP traffic for a specific network interface, subnet, or VPC. Flow logs are delivered to a specified log group in Amazon CloudWatch Logs. If you specify a VPC or subnet in the request, a log stream is created in CloudWatch Logs for each network interface in the subnet or VPC. Log streams can include information about accepted and rejected traffic to a network interface. You can view the data in your log streams using Amazon CloudWatch Logs.</p> <p>In your request, you must also specify an IAM role that has permission to publish logs to CloudWatch Logs.</p>

__Required Parameters__

* `resourceIds` __:__ `(List String)`
* `resourceType` __:__ `FlowLogsResourceType`
* `trafficType` __:__ `TrafficType`
* `logGroupName` __:__ `String`
* `deliverLogsPermissionArn` __:__ `String`


-}
createFlowLogs :
    (List String)
    -> FlowLogsResourceType
    -> TrafficType
    -> String
    -> String
    -> (CreateFlowLogsOptions -> CreateFlowLogsOptions)
    -> AWS.Request CreateFlowLogsResult
createFlowLogs resourceIds resourceType trafficType logGroupName deliverLogsPermissionArn setOptions =
  let
    options = setOptions (CreateFlowLogsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateFlowLogs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createFlowLogsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createFlowLogs request
-}
type alias CreateFlowLogsOptions =
    { clientToken : Maybe String
    }



{-| <p>Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.</p> <p>If you customized your instance with instance store volumes or EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating Amazon EBS-Backed Linux AMIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `name` __:__ `String`


-}
createImage :
    String
    -> String
    -> (CreateImageOptions -> CreateImageOptions)
    -> AWS.Request CreateImageResult
createImage instanceId name setOptions =
  let
    options = setOptions (CreateImageOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createImageResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createImage request
-}
type alias CreateImageOptions =
    { dryRun : Maybe Bool
    , description : Maybe String
    , noReboot : Maybe Bool
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    }



{-| <p>Exports a running or stopped instance to an S3 bucket.</p> <p>For information about the supported operating systems, image formats, and known limitations for the types of instances you can export, see <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html">Exporting an Instance as a VM Using VM Import/Export</a> in the <i>VM Import/Export User Guide</i>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
createInstanceExportTask :
    String
    -> (CreateInstanceExportTaskOptions -> CreateInstanceExportTaskOptions)
    -> AWS.Request CreateInstanceExportTaskResult
createInstanceExportTask instanceId setOptions =
  let
    options = setOptions (CreateInstanceExportTaskOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateInstanceExportTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createInstanceExportTaskResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createInstanceExportTask request
-}
type alias CreateInstanceExportTaskOptions =
    { description : Maybe String
    , targetEnvironment : Maybe ExportEnvironment
    , exportToS3Task : Maybe ExportToS3TaskSpecification
    }



{-| <p>Creates an Internet gateway for use with a VPC. After creating the Internet gateway, you attach it to a VPC using <a>AttachInternetGateway</a>.</p> <p>For more information about your VPC and Internet gateway, see the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/">Amazon Virtual Private Cloud User Guide</a>.</p>

__Required Parameters__



-}
createInternetGateway :
    (CreateInternetGatewayOptions -> CreateInternetGatewayOptions)
    -> AWS.Request CreateInternetGatewayResult
createInternetGateway setOptions =
  let
    options = setOptions (CreateInternetGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateInternetGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createInternetGatewayResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createInternetGateway request
-}
type alias CreateInternetGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS#8 private key. If a key with the specified name already exists, Amazon EC2 returns an error.</p> <p>You can have up to five thousand key pairs per region.</p> <p>The key pair returned to you is available only in the region in which you create it. To create a key pair that is available in all regions, use <a>ImportKeyPair</a>.</p> <p>For more information about key pairs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `keyName` __:__ `String`


-}
createKeyPair :
    String
    -> (CreateKeyPairOptions -> CreateKeyPairOptions)
    -> AWS.Request KeyPair
createKeyPair keyName setOptions =
  let
    options = setOptions (CreateKeyPairOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        keyPairDecoder
        |> AWS.UnsignedRequest


{-| Options for a createKeyPair request
-}
type alias CreateKeyPairOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates a NAT gateway in the specified subnet. A NAT gateway can be used to enable instances in a private subnet to connect to the Internet. This action creates a network interface in the specified subnet with a private IP address from the IP address range of the subnet. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html">NAT Gateways</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `subnetId` __:__ `String`
* `allocationId` __:__ `String`


-}
createNatGateway :
    String
    -> String
    -> (CreateNatGatewayOptions -> CreateNatGatewayOptions)
    -> AWS.Request CreateNatGatewayResult
createNatGateway subnetId allocationId setOptions =
  let
    options = setOptions (CreateNatGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateNatGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createNatGatewayResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createNatGateway request
-}
type alias CreateNatGatewayOptions =
    { clientToken : Maybe String
    }



{-| <p>Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
createNetworkAcl :
    String
    -> (CreateNetworkAclOptions -> CreateNetworkAclOptions)
    -> AWS.Request CreateNetworkAclResult
createNetworkAcl vpcId setOptions =
  let
    options = setOptions (CreateNetworkAclOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateNetworkAcl"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createNetworkAclResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createNetworkAcl request
-}
type alias CreateNetworkAclOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules.</p> <p>We recommend that you leave room between the rule numbers (for example, 100, 110, 120, ...), and not number them one right after the other (for example, 101, 102, 103, ...). This makes it easier to add a rule between existing ones without having to renumber the rules.</p> <p>After you add an entry, you can't modify it; you must either replace it, or create an entry and delete the old one.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `networkAclId` __:__ `String`
* `ruleNumber` __:__ `Int`
* `protocol` __:__ `String`
* `ruleAction` __:__ `RuleAction`
* `egress` __:__ `Bool`


-}
createNetworkAclEntry :
    String
    -> Int
    -> String
    -> RuleAction
    -> Bool
    -> (CreateNetworkAclEntryOptions -> CreateNetworkAclEntryOptions)
    -> AWS.Request ()
createNetworkAclEntry networkAclId ruleNumber protocol ruleAction egress setOptions =
  let
    options = setOptions (CreateNetworkAclEntryOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateNetworkAclEntry"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a createNetworkAclEntry request
-}
type alias CreateNetworkAclEntryOptions =
    { dryRun : Maybe Bool
    , cidrBlock : Maybe String
    , ipv6CidrBlock : Maybe String
    , icmpTypeCode : Maybe IcmpTypeCode
    , portRange : Maybe PortRange
    }



{-| <p>Creates a network interface in the specified subnet.</p> <p>For more information about network interfaces, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html">Elastic Network Interfaces</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `subnetId` __:__ `String`


-}
createNetworkInterface :
    String
    -> (CreateNetworkInterfaceOptions -> CreateNetworkInterfaceOptions)
    -> AWS.Request CreateNetworkInterfaceResult
createNetworkInterface subnetId setOptions =
  let
    options = setOptions (CreateNetworkInterfaceOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateNetworkInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createNetworkInterfaceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createNetworkInterface request
-}
type alias CreateNetworkInterfaceOptions =
    { description : Maybe String
    , privateIpAddress : Maybe String
    , groups : Maybe (List String)
    , privateIpAddresses : Maybe (List PrivateIpAddressSpecification)
    , secondaryPrivateIpAddressCount : Maybe Int
    , ipv6Addresses : Maybe (List InstanceIpv6Address)
    , ipv6AddressCount : Maybe Int
    , dryRun : Maybe Bool
    }



{-| <p>Creates a placement group that you launch cluster instances into. You must give the group a name that's unique within the scope of your account.</p> <p>For more information about placement groups and cluster instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html">Cluster Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `strategy` __:__ `PlacementStrategy`


-}
createPlacementGroup :
    String
    -> PlacementStrategy
    -> (CreatePlacementGroupOptions -> CreatePlacementGroupOptions)
    -> AWS.Request ()
createPlacementGroup groupName strategy setOptions =
  let
    options = setOptions (CreatePlacementGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePlacementGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a createPlacementGroup request
-}
type alias CreatePlacementGroupOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace. You can submit one Standard Reserved Instance listing at a time. To get a list of your Standard Reserved Instances, you can use the <a>DescribeReservedInstances</a> operation.</p> <note> <p>Only Standard Reserved Instances with a capacity reservation can be sold in the Reserved Instance Marketplace. Convertible Reserved Instances and Standard Reserved Instances with a regional benefit cannot be sold.</p> </note> <p>The Reserved Instance Marketplace matches sellers who want to resell Standard Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.</p> <p>To sell your Standard Reserved Instances, you must first register as a seller in the Reserved Instance Marketplace. After completing the registration process, you can create a Reserved Instance Marketplace listing of some or all of your Standard Reserved Instances, and specify the upfront price to receive for them. Your Standard Reserved Instance listings then become available for purchase. To view the details of your Standard Reserved Instance listing, you can use the <a>DescribeReservedInstancesListings</a> operation.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `reservedInstancesId` __:__ `String`
* `instanceCount` __:__ `Int`
* `priceSchedules` __:__ `(List PriceScheduleSpecification)`
* `clientToken` __:__ `String`


-}
createReservedInstancesListing :
    String
    -> Int
    -> (List PriceScheduleSpecification)
    -> String
    -> AWS.Request CreateReservedInstancesListingResult
createReservedInstancesListing reservedInstancesId instanceCount priceSchedules clientToken =
    AWS.Http.unsignedRequest
        "CreateReservedInstancesListing"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReservedInstancesListingResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a route in a route table within a VPC.</p> <p>You must specify one of the following targets: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.</p> <p>When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address <code>192.0.2.3</code>, and the route table includes the following two IPv4 routes:</p> <ul> <li> <p> <code>192.0.2.0/24</code> (goes to some target A)</p> </li> <li> <p> <code>192.0.2.0/28</code> (goes to some target B)</p> </li> </ul> <p>Both routes apply to the traffic destined for <code>192.0.2.3</code>. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `routeTableId` __:__ `String`


-}
createRoute :
    String
    -> (CreateRouteOptions -> CreateRouteOptions)
    -> AWS.Request CreateRouteResult
createRoute routeTableId setOptions =
  let
    options = setOptions (CreateRouteOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateRoute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRouteResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createRoute request
-}
type alias CreateRouteOptions =
    { dryRun : Maybe Bool
    , destinationCidrBlock : Maybe String
    , gatewayId : Maybe String
    , destinationIpv6CidrBlock : Maybe String
    , egressOnlyInternetGatewayId : Maybe String
    , instanceId : Maybe String
    , networkInterfaceId : Maybe String
    , vpcPeeringConnectionId : Maybe String
    , natGatewayId : Maybe String
    }



{-| <p>Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
createRouteTable :
    String
    -> (CreateRouteTableOptions -> CreateRouteTableOptions)
    -> AWS.Request CreateRouteTableResult
createRouteTable vpcId setOptions =
  let
    options = setOptions (CreateRouteTableOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateRouteTable"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRouteTableResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createRouteTable request
-}
type alias CreateRouteTableOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates a security group.</p> <p>A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i> and <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <important> <p>EC2-Classic: You can have up to 500 security groups.</p> <p>EC2-VPC: You can create up to 500 security groups per VPC.</p> </important> <p>When you create a security group, you specify a friendly name of your choice. You can have a security group for use in EC2-Classic with the same name as a security group for use in a VPC. However, you can't have two security groups for use in EC2-Classic with the same name or two security groups for use in a VPC with the same name.</p> <p>You have a default security group for use in EC2-Classic and a default security group for use in your VPC. If you don't specify a security group when you launch an instance, the instance is launched into the appropriate default security group. A default security group includes a default rule that grants instances unrestricted network access to each other.</p> <p>You can add or remove rules from your security groups using <a>AuthorizeSecurityGroupIngress</a>, <a>AuthorizeSecurityGroupEgress</a>, <a>RevokeSecurityGroupIngress</a>, and <a>RevokeSecurityGroupEgress</a>.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `description` __:__ `String`


-}
createSecurityGroup :
    String
    -> String
    -> (CreateSecurityGroupOptions -> CreateSecurityGroupOptions)
    -> AWS.Request CreateSecurityGroupResult
createSecurityGroup groupName description setOptions =
  let
    options = setOptions (CreateSecurityGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSecurityGroupResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createSecurityGroup request
-}
type alias CreateSecurityGroupOptions =
    { dryRun : Maybe Bool
    , vpcId : Maybe String
    }



{-| <p>Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance.</p> <p>When a snapshot is created, any AWS Marketplace product codes that are associated with the source volume are propagated to the snapshot.</p> <p>You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your EBS volume at the time the snapshot command is issued; this may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is <code>pending</code>.</p> <p>To create a snapshot for EBS volumes that serve as root devices, you should stop the instance before taking the snapshot.</p> <p>Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html">Amazon Elastic Block Store</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
createSnapshot :
    String
    -> (CreateSnapshotOptions -> CreateSnapshotOptions)
    -> AWS.Request Snapshot
createSnapshot volumeId setOptions =
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
        snapshotDecoder
        |> AWS.UnsignedRequest


{-| Options for a createSnapshot request
-}
type alias CreateSnapshotOptions =
    { dryRun : Maybe Bool
    , description : Maybe String
    }



{-| <p>Creates a data feed for Spot instances, enabling you to view Spot instance usage logs. You can create one data feed per AWS account. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html">Spot Instance Data Feed</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `bucket` __:__ `String`


-}
createSpotDatafeedSubscription :
    String
    -> (CreateSpotDatafeedSubscriptionOptions -> CreateSpotDatafeedSubscriptionOptions)
    -> AWS.Request CreateSpotDatafeedSubscriptionResult
createSpotDatafeedSubscription bucket setOptions =
  let
    options = setOptions (CreateSpotDatafeedSubscriptionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateSpotDatafeedSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSpotDatafeedSubscriptionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createSpotDatafeedSubscription request
-}
type alias CreateSpotDatafeedSubscriptionOptions =
    { dryRun : Maybe Bool
    , prefix : Maybe String
    }



{-| <p>Creates a subnet in an existing VPC.</p> <p>When you create each subnet, you provide the VPC ID and the CIDR block you want for the subnet. After you create a subnet, you can't change its CIDR block. The subnet's IPv4 CIDR block can be the same as the VPC's IPv4 CIDR block (assuming you want only a single subnet in the VPC), or a subset of the VPC's IPv4 CIDR block. If you create more than one subnet in a VPC, the subnets' CIDR blocks must not overlap. The smallest IPv4 subnet (and VPC) you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses).</p> <p>If you've associated an IPv6 CIDR block with your VPC, you can create a subnet with an IPv6 CIDR block that uses a /64 prefix length. </p> <important> <p>AWS reserves both the first four and the last IP address in each subnet's CIDR block. They're not available for use.</p> </important> <p>If you add more than one subnet to a VPC, they're set up in a star topology with a logical router in the middle.</p> <p>If you launch an instance in a VPC using an Amazon EBS-backed AMI, the IP address doesn't change if you stop and restart the instance (unlike a similar instance launched outside a VPC, which gets a new IP address when restarted). It's therefore possible to have a subnet with no running instances (they're all stopped), but no remaining IP addresses available.</p> <p>For more information about subnets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `vpcId` __:__ `String`
* `cidrBlock` __:__ `String`


-}
createSubnet :
    String
    -> String
    -> (CreateSubnetOptions -> CreateSubnetOptions)
    -> AWS.Request CreateSubnetResult
createSubnet vpcId cidrBlock setOptions =
  let
    options = setOptions (CreateSubnetOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateSubnet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSubnetResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createSubnet request
-}
type alias CreateSubnetOptions =
    { dryRun : Maybe Bool
    , ipv6CidrBlock : Maybe String
    , availabilityZone : Maybe String
    }



{-| <p>Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. For more information about creating IAM policies that control users' access to resources based on tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html">Supported Resource-Level Permissions for Amazon EC2 API Actions</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `resources` __:__ `(List String)`
* `tags` __:__ `(List Tag)`


-}
createTags :
    (List String)
    -> (List Tag)
    -> (CreateTagsOptions -> CreateTagsOptions)
    -> AWS.Request ()
createTags resources tags setOptions =
  let
    options = setOptions (CreateTagsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a createTags request
-}
type alias CreateTagsOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates an EBS volume that can be attached to an instance in the same Availability Zone. The volume is created in the regional endpoint that you send the HTTP request to. For more information see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a>.</p> <p>You can create a new empty volume or restore a volume from an EBS snapshot. Any AWS Marketplace product codes from the snapshot are propagated to the volume.</p> <p>You can create encrypted volumes with the <code>Encrypted</code> parameter. Encrypted volumes may only be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html">Amazon EBS Encryption</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html">Creating or Restoring an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `availabilityZone` __:__ `String`


-}
createVolume :
    String
    -> (CreateVolumeOptions -> CreateVolumeOptions)
    -> AWS.Request Volume
createVolume availabilityZone setOptions =
  let
    options = setOptions (CreateVolumeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        volumeDecoder
        |> AWS.UnsignedRequest


{-| Options for a createVolume request
-}
type alias CreateVolumeOptions =
    { dryRun : Maybe Bool
    , size : Maybe Int
    , snapshotId : Maybe String
    , volumeType : Maybe VolumeType
    , iops : Maybe Int
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }



{-| <p>Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). To help you decide how big to make your VPC, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can optionally request an Amazon-provided IPv6 CIDR block for the VPC. The IPv6 CIDR block uses a /56 prefix length, and is allocated from Amazon's pool of IPv6 addresses. You cannot choose the IPv6 range for your VPC.</p> <p>By default, each instance you launch in the VPC has the default DHCP options, which includes only a default DNS server that we provide (AmazonProvidedDNS). For more information about DHCP options, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can specify the instance tenancy value for the VPC when you create it. You can't change this value for the VPC after you create it. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html">Dedicated Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `cidrBlock` __:__ `String`


-}
createVpc :
    String
    -> (CreateVpcOptions -> CreateVpcOptions)
    -> AWS.Request CreateVpcResult
createVpc cidrBlock setOptions =
  let
    options = setOptions (CreateVpcOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateVpc"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createVpcResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createVpc request
-}
type alias CreateVpcOptions =
    { dryRun : Maybe Bool
    , instanceTenancy : Maybe Tenancy
    , amazonProvidedIpv6CidrBlock : Maybe Bool
    }



{-| <p>Creates a VPC endpoint for a specified AWS service. An endpoint enables you to create a private connection between your VPC and another AWS service in your account. You can specify an endpoint policy to attach to the endpoint that will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint.</p> <p>Use <a>DescribeVpcEndpointServices</a> to get a list of supported AWS services.</p>

__Required Parameters__

* `vpcId` __:__ `String`
* `serviceName` __:__ `String`


-}
createVpcEndpoint :
    String
    -> String
    -> (CreateVpcEndpointOptions -> CreateVpcEndpointOptions)
    -> AWS.Request CreateVpcEndpointResult
createVpcEndpoint vpcId serviceName setOptions =
  let
    options = setOptions (CreateVpcEndpointOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateVpcEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createVpcEndpointResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createVpcEndpoint request
-}
type alias CreateVpcEndpointOptions =
    { dryRun : Maybe Bool
    , policyDocument : Maybe String
    , routeTableIds : Maybe (List String)
    , clientToken : Maybe String
    }



{-| <p>Requests a VPC peering connection between two VPCs: a requester VPC that you own and a peer VPC with which to create the connection. The peer VPC can belong to another AWS account. The requester VPC and peer VPC cannot have overlapping CIDR blocks.</p> <p>The owner of the peer VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected.</p> <p>A <code>CreateVpcPeeringConnection</code> request between VPCs with overlapping CIDR blocks results in the VPC peering connection having a status of <code>failed</code>.</p>

__Required Parameters__



-}
createVpcPeeringConnection :
    (CreateVpcPeeringConnectionOptions -> CreateVpcPeeringConnectionOptions)
    -> AWS.Request CreateVpcPeeringConnectionResult
createVpcPeeringConnection setOptions =
  let
    options = setOptions (CreateVpcPeeringConnectionOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateVpcPeeringConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createVpcPeeringConnectionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createVpcPeeringConnection request
-}
type alias CreateVpcPeeringConnectionOptions =
    { dryRun : Maybe Bool
    , vpcId : Maybe String
    , peerVpcId : Maybe String
    , peerOwnerId : Maybe String
    }



{-| <p>Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway. The only supported connection type is <code>ipsec.1</code>.</p> <p>The response includes information that you need to give to your network administrator to configure your customer gateway.</p> <important> <p>We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway.</p> </important> <p>If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call.</p> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.</p> <p>For more information about VPN connections, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding a Hardware Virtual Private Gateway to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `type_` __:__ `String`
* `customerGatewayId` __:__ `String`
* `vpnGatewayId` __:__ `String`


-}
createVpnConnection :
    String
    -> String
    -> String
    -> (CreateVpnConnectionOptions -> CreateVpnConnectionOptions)
    -> AWS.Request CreateVpnConnectionResult
createVpnConnection type_ customerGatewayId vpnGatewayId setOptions =
  let
    options = setOptions (CreateVpnConnectionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateVpnConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createVpnConnectionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createVpnConnection request
-}
type alias CreateVpnConnectionOptions =
    { dryRun : Maybe Bool
    , options : Maybe VpnConnectionOptionsSpecification
    }



{-| <p>Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.</p> <p>For more information about VPN connections, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding a Hardware Virtual Private Gateway to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `vpnConnectionId` __:__ `String`
* `destinationCidrBlock` __:__ `String`


-}
createVpnConnectionRoute :
    String
    -> String
    -> AWS.Request ()
createVpnConnectionRoute vpnConnectionId destinationCidrBlock =
    AWS.Http.unsignedRequest
        "CreateVpnConnectionRoute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.</p> <p>For more information about virtual private gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding a Hardware Virtual Private Gateway to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `type_` __:__ `GatewayType`


-}
createVpnGateway :
    GatewayType
    -> (CreateVpnGatewayOptions -> CreateVpnGatewayOptions)
    -> AWS.Request CreateVpnGatewayResult
createVpnGateway type_ setOptions =
  let
    options = setOptions (CreateVpnGatewayOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateVpnGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createVpnGatewayResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createVpnGateway request
-}
type alias CreateVpnGatewayOptions =
    { dryRun : Maybe Bool
    , availabilityZone : Maybe String
    }



{-| <p>Deletes the specified customer gateway. You must delete the VPN connection before you can delete the customer gateway.</p>

__Required Parameters__

* `customerGatewayId` __:__ `String`


-}
deleteCustomerGateway :
    String
    -> (DeleteCustomerGatewayOptions -> DeleteCustomerGatewayOptions)
    -> AWS.Request ()
deleteCustomerGateway customerGatewayId setOptions =
  let
    options = setOptions (DeleteCustomerGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteCustomerGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteCustomerGateway request
-}
type alias DeleteCustomerGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified set of DHCP options. You must disassociate the set of DHCP options before you can delete it. You can disassociate the set of DHCP options by associating either a new set of options or the default set of options with the VPC.</p>

__Required Parameters__

* `dhcpOptionsId` __:__ `String`


-}
deleteDhcpOptions :
    String
    -> (DeleteDhcpOptionsOptions -> DeleteDhcpOptionsOptions)
    -> AWS.Request ()
deleteDhcpOptions dhcpOptionsId setOptions =
  let
    options = setOptions (DeleteDhcpOptionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteDhcpOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteDhcpOptions request
-}
type alias DeleteDhcpOptionsOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes an egress-only Internet gateway.</p>

__Required Parameters__

* `egressOnlyInternetGatewayId` __:__ `String`


-}
deleteEgressOnlyInternetGateway :
    String
    -> (DeleteEgressOnlyInternetGatewayOptions -> DeleteEgressOnlyInternetGatewayOptions)
    -> AWS.Request DeleteEgressOnlyInternetGatewayResult
deleteEgressOnlyInternetGateway egressOnlyInternetGatewayId setOptions =
  let
    options = setOptions (DeleteEgressOnlyInternetGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteEgressOnlyInternetGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteEgressOnlyInternetGatewayResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteEgressOnlyInternetGateway request
-}
type alias DeleteEgressOnlyInternetGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes one or more flow logs.</p>

__Required Parameters__

* `flowLogIds` __:__ `(List String)`


-}
deleteFlowLogs :
    (List String)
    -> AWS.Request DeleteFlowLogsResult
deleteFlowLogs flowLogIds =
    AWS.Http.unsignedRequest
        "DeleteFlowLogs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteFlowLogsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified Internet gateway. You must detach the Internet gateway from the VPC before you can delete it.</p>

__Required Parameters__

* `internetGatewayId` __:__ `String`


-}
deleteInternetGateway :
    String
    -> (DeleteInternetGatewayOptions -> DeleteInternetGatewayOptions)
    -> AWS.Request ()
deleteInternetGateway internetGatewayId setOptions =
  let
    options = setOptions (DeleteInternetGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteInternetGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteInternetGateway request
-}
type alias DeleteInternetGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified key pair, by removing the public key from Amazon EC2.</p>

__Required Parameters__

* `keyName` __:__ `String`


-}
deleteKeyPair :
    String
    -> (DeleteKeyPairOptions -> DeleteKeyPairOptions)
    -> AWS.Request ()
deleteKeyPair keyName setOptions =
  let
    options = setOptions (DeleteKeyPairOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteKeyPair request
-}
type alias DeleteKeyPairOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified NAT gateway. Deleting a NAT gateway disassociates its Elastic IP address, but does not release the address from your account. Deleting a NAT gateway does not delete any NAT gateway routes in your route tables.</p>

__Required Parameters__

* `natGatewayId` __:__ `String`


-}
deleteNatGateway :
    String
    -> AWS.Request DeleteNatGatewayResult
deleteNatGateway natGatewayId =
    AWS.Http.unsignedRequest
        "DeleteNatGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteNatGatewayResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified network ACL. You can't delete the ACL if it's associated with any subnets. You can't delete the default network ACL.</p>

__Required Parameters__

* `networkAclId` __:__ `String`


-}
deleteNetworkAcl :
    String
    -> (DeleteNetworkAclOptions -> DeleteNetworkAclOptions)
    -> AWS.Request ()
deleteNetworkAcl networkAclId setOptions =
  let
    options = setOptions (DeleteNetworkAclOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteNetworkAcl"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteNetworkAcl request
-}
type alias DeleteNetworkAclOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified ingress or egress entry (rule) from the specified network ACL.</p>

__Required Parameters__

* `networkAclId` __:__ `String`
* `ruleNumber` __:__ `Int`
* `egress` __:__ `Bool`


-}
deleteNetworkAclEntry :
    String
    -> Int
    -> Bool
    -> (DeleteNetworkAclEntryOptions -> DeleteNetworkAclEntryOptions)
    -> AWS.Request ()
deleteNetworkAclEntry networkAclId ruleNumber egress setOptions =
  let
    options = setOptions (DeleteNetworkAclEntryOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteNetworkAclEntry"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteNetworkAclEntry request
-}
type alias DeleteNetworkAclEntryOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified network interface. You must detach the network interface before you can delete it.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`


-}
deleteNetworkInterface :
    String
    -> (DeleteNetworkInterfaceOptions -> DeleteNetworkInterfaceOptions)
    -> AWS.Request ()
deleteNetworkInterface networkInterfaceId setOptions =
  let
    options = setOptions (DeleteNetworkInterfaceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteNetworkInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteNetworkInterface request
-}
type alias DeleteNetworkInterfaceOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information about placement groups and cluster instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html">Cluster Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `groupName` __:__ `String`


-}
deletePlacementGroup :
    String
    -> (DeletePlacementGroupOptions -> DeletePlacementGroupOptions)
    -> AWS.Request ()
deletePlacementGroup groupName setOptions =
  let
    options = setOptions (DeletePlacementGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeletePlacementGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deletePlacementGroup request
-}
type alias DeletePlacementGroupOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified route from the specified route table.</p>

__Required Parameters__

* `routeTableId` __:__ `String`


-}
deleteRoute :
    String
    -> (DeleteRouteOptions -> DeleteRouteOptions)
    -> AWS.Request ()
deleteRoute routeTableId setOptions =
  let
    options = setOptions (DeleteRouteOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteRoute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteRoute request
-}
type alias DeleteRouteOptions =
    { dryRun : Maybe Bool
    , destinationCidrBlock : Maybe String
    , destinationIpv6CidrBlock : Maybe String
    }



{-| <p>Deletes the specified route table. You must disassociate the route table from any subnets before you can delete it. You can't delete the main route table.</p>

__Required Parameters__

* `routeTableId` __:__ `String`


-}
deleteRouteTable :
    String
    -> (DeleteRouteTableOptions -> DeleteRouteTableOptions)
    -> AWS.Request ()
deleteRouteTable routeTableId setOptions =
  let
    options = setOptions (DeleteRouteTableOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteRouteTable"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteRouteTable request
-}
type alias DeleteRouteTableOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes a security group.</p> <p>If you attempt to delete a security group that is associated with an instance, or is referenced by another security group, the operation fails with <code>InvalidGroup.InUse</code> in EC2-Classic or <code>DependencyViolation</code> in EC2-VPC.</p>

__Required Parameters__



-}
deleteSecurityGroup :
    (DeleteSecurityGroupOptions -> DeleteSecurityGroupOptions)
    -> AWS.Request ()
deleteSecurityGroup setOptions =
  let
    options = setOptions (DeleteSecurityGroupOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteSecurityGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteSecurityGroup request
-}
type alias DeleteSecurityGroupOptions =
    { dryRun : Maybe Bool
    , groupName : Maybe String
    , groupId : Maybe String
    }



{-| <p>Deletes the specified snapshot.</p> <p>When you make periodic snapshots of a volume, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the volume.</p> <p>You cannot delete a snapshot of the root device of an EBS volume used by a registered AMI. You must first de-register the AMI before you can delete the snapshot.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html">Deleting an Amazon EBS Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `snapshotId` __:__ `String`


-}
deleteSnapshot :
    String
    -> (DeleteSnapshotOptions -> DeleteSnapshotOptions)
    -> AWS.Request ()
deleteSnapshot snapshotId setOptions =
  let
    options = setOptions (DeleteSnapshotOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteSnapshot request
-}
type alias DeleteSnapshotOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the data feed for Spot instances.</p>

__Required Parameters__



-}
deleteSpotDatafeedSubscription :
    (DeleteSpotDatafeedSubscriptionOptions -> DeleteSpotDatafeedSubscriptionOptions)
    -> AWS.Request ()
deleteSpotDatafeedSubscription setOptions =
  let
    options = setOptions (DeleteSpotDatafeedSubscriptionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteSpotDatafeedSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteSpotDatafeedSubscription request
-}
type alias DeleteSpotDatafeedSubscriptionOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.</p>

__Required Parameters__

* `subnetId` __:__ `String`


-}
deleteSubnet :
    String
    -> (DeleteSubnetOptions -> DeleteSubnetOptions)
    -> AWS.Request ()
deleteSubnet subnetId setOptions =
  let
    options = setOptions (DeleteSubnetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteSubnet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteSubnet request
-}
type alias DeleteSubnetOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified set of tags from the specified set of resources. This call is designed to follow a <code>DescribeTags</code> request.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `resources` __:__ `(List String)`


-}
deleteTags :
    (List String)
    -> (DeleteTagsOptions -> DeleteTagsOptions)
    -> AWS.Request ()
deleteTags resources setOptions =
  let
    options = setOptions (DeleteTagsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteTags request
-}
type alias DeleteTagsOptions =
    { dryRun : Maybe Bool
    , tags : Maybe (List Tag)
    }



{-| <p>Deletes the specified EBS volume. The volume must be in the <code>available</code> state (not attached to an instance).</p> <note> <p>The volume may remain in the <code>deleting</code> state for several minutes.</p> </note> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html">Deleting an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
deleteVolume :
    String
    -> (DeleteVolumeOptions -> DeleteVolumeOptions)
    -> AWS.Request ()
deleteVolume volumeId setOptions =
  let
    options = setOptions (DeleteVolumeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteVolume request
-}
type alias DeleteVolumeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
deleteVpc :
    String
    -> (DeleteVpcOptions -> DeleteVpcOptions)
    -> AWS.Request ()
deleteVpc vpcId setOptions =
  let
    options = setOptions (DeleteVpcOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteVpc"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteVpc request
-}
type alias DeleteVpcOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes one or more specified VPC endpoints. Deleting the endpoint also deletes the endpoint routes in the route tables that were associated with the endpoint.</p>

__Required Parameters__

* `vpcEndpointIds` __:__ `(List String)`


-}
deleteVpcEndpoints :
    (List String)
    -> (DeleteVpcEndpointsOptions -> DeleteVpcEndpointsOptions)
    -> AWS.Request DeleteVpcEndpointsResult
deleteVpcEndpoints vpcEndpointIds setOptions =
  let
    options = setOptions (DeleteVpcEndpointsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteVpcEndpoints"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteVpcEndpointsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteVpcEndpoints request
-}
type alias DeleteVpcEndpointsOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the peer VPC can delete the VPC peering connection if it's in the <code>active</code> state. The owner of the requester VPC can delete a VPC peering connection in the <code>pending-acceptance</code> state. </p>

__Required Parameters__

* `vpcPeeringConnectionId` __:__ `String`


-}
deleteVpcPeeringConnection :
    String
    -> (DeleteVpcPeeringConnectionOptions -> DeleteVpcPeeringConnectionOptions)
    -> AWS.Request DeleteVpcPeeringConnectionResult
deleteVpcPeeringConnection vpcPeeringConnectionId setOptions =
  let
    options = setOptions (DeleteVpcPeeringConnectionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteVpcPeeringConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteVpcPeeringConnectionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteVpcPeeringConnection request
-}
type alias DeleteVpcPeeringConnectionOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified VPN connection.</p> <p>If you're deleting the VPC and its associated components, we recommend that you detach the virtual private gateway from the VPC and delete the VPC before deleting the VPN connection. If you believe that the tunnel credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.</p>

__Required Parameters__

* `vpnConnectionId` __:__ `String`


-}
deleteVpnConnection :
    String
    -> (DeleteVpnConnectionOptions -> DeleteVpnConnectionOptions)
    -> AWS.Request ()
deleteVpnConnection vpnConnectionId setOptions =
  let
    options = setOptions (DeleteVpnConnectionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteVpnConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteVpnConnection request
-}
type alias DeleteVpnConnectionOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.</p>

__Required Parameters__

* `vpnConnectionId` __:__ `String`
* `destinationCidrBlock` __:__ `String`


-}
deleteVpnConnectionRoute :
    String
    -> String
    -> AWS.Request ()
deleteVpnConnectionRoute vpnConnectionId destinationCidrBlock =
    AWS.Http.unsignedRequest
        "DeleteVpnConnectionRoute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified virtual private gateway. We recommend that before you delete a virtual private gateway, you detach it from the VPC and delete the VPN connection. Note that you don't need to delete the virtual private gateway if you plan to delete and recreate the VPN connection between your VPC and your network.</p>

__Required Parameters__

* `vpnGatewayId` __:__ `String`


-}
deleteVpnGateway :
    String
    -> (DeleteVpnGatewayOptions -> DeleteVpnGatewayOptions)
    -> AWS.Request ()
deleteVpnGateway vpnGatewayId setOptions =
  let
    options = setOptions (DeleteVpnGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteVpnGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteVpnGateway request
-}
type alias DeleteVpnGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Deregisters the specified AMI. After you deregister an AMI, it can't be used to launch new instances.</p> <p>This command does not delete the AMI.</p>

__Required Parameters__

* `imageId` __:__ `String`


-}
deregisterImage :
    String
    -> (DeregisterImageOptions -> DeregisterImageOptions)
    -> AWS.Request ()
deregisterImage imageId setOptions =
  let
    options = setOptions (DeregisterImageOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeregisterImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deregisterImage request
-}
type alias DeregisterImageOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Describes attributes of your AWS account. The following are the supported account attributes:</p> <ul> <li> <p> <code>supported-platforms</code>: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.</p> </li> <li> <p> <code>default-vpc</code>: The ID of the default VPC for your account, or <code>none</code>.</p> </li> <li> <p> <code>max-instances</code>: The maximum number of On-Demand instances that you can run.</p> </li> <li> <p> <code>vpc-max-security-groups-per-interface</code>: The maximum number of security groups that you can assign to a network interface.</p> </li> <li> <p> <code>max-elastic-ips</code>: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic. </p> </li> <li> <p> <code>vpc-max-elastic-ips</code>: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.</p> </li> </ul>

__Required Parameters__



-}
describeAccountAttributes :
    (DescribeAccountAttributesOptions -> DescribeAccountAttributesOptions)
    -> AWS.Request DescribeAccountAttributesResult
describeAccountAttributes setOptions =
  let
    options = setOptions (DescribeAccountAttributesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAccountAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAccountAttributesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAccountAttributes request
-}
type alias DescribeAccountAttributesOptions =
    { dryRun : Maybe Bool
    , attributeNames : Maybe (List AccountAttributeName)
    }



{-| <p>Describes one or more of your Elastic IP addresses.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeAddresses :
    (DescribeAddressesOptions -> DescribeAddressesOptions)
    -> AWS.Request DescribeAddressesResult
describeAddresses setOptions =
  let
    options = setOptions (DescribeAddressesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAddresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAddressesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAddresses request
-}
type alias DescribeAddressesOptions =
    { dryRun : Maybe Bool
    , publicIps : Maybe (List String)
    , filters : Maybe (List Filter)
    , allocationIds : Maybe (List String)
    }



{-| <p>Describes one or more of the Availability Zones that are available to you. The results include zones only for the region you're currently using. If there is an event impacting an Availability Zone, you can use this request to view the state and any provided message for that Availability Zone.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html">Regions and Availability Zones</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeAvailabilityZones :
    (DescribeAvailabilityZonesOptions -> DescribeAvailabilityZonesOptions)
    -> AWS.Request DescribeAvailabilityZonesResult
describeAvailabilityZones setOptions =
  let
    options = setOptions (DescribeAvailabilityZonesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAvailabilityZones"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAvailabilityZonesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAvailabilityZones request
-}
type alias DescribeAvailabilityZonesOptions =
    { dryRun : Maybe Bool
    , zoneNames : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your bundling tasks.</p> <note> <p>Completed bundle tasks are listed for only a limited time. If your bundle task is no longer in the list, you can still register an AMI from it. Just use <code>RegisterImage</code> with the Amazon S3 bucket name and image manifest name you provided to the bundle task.</p> </note>

__Required Parameters__



-}
describeBundleTasks :
    (DescribeBundleTasksOptions -> DescribeBundleTasksOptions)
    -> AWS.Request DescribeBundleTasksResult
describeBundleTasks setOptions =
  let
    options = setOptions (DescribeBundleTasksOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeBundleTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeBundleTasksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeBundleTasks request
-}
type alias DescribeBundleTasksOptions =
    { dryRun : Maybe Bool
    , bundleIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your linked EC2-Classic instances. This request only returns information about EC2-Classic instances linked to a VPC through ClassicLink; you cannot use this request to return information about other instances.</p>

__Required Parameters__



-}
describeClassicLinkInstances :
    (DescribeClassicLinkInstancesOptions -> DescribeClassicLinkInstancesOptions)
    -> AWS.Request DescribeClassicLinkInstancesResult
describeClassicLinkInstances setOptions =
  let
    options = setOptions (DescribeClassicLinkInstancesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeClassicLinkInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeClassicLinkInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeClassicLinkInstances request
-}
type alias DescribeClassicLinkInstancesOptions =
    { dryRun : Maybe Bool
    , instanceIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes one or more of your conversion tasks. For more information, see the <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/">VM Import/Export User Guide</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>

__Required Parameters__



-}
describeConversionTasks :
    (DescribeConversionTasksOptions -> DescribeConversionTasksOptions)
    -> AWS.Request DescribeConversionTasksResult
describeConversionTasks setOptions =
  let
    options = setOptions (DescribeConversionTasksOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConversionTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConversionTasksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConversionTasks request
-}
type alias DescribeConversionTasksOptions =
    { dryRun : Maybe Bool
    , conversionTaskIds : Maybe (List String)
    }



{-| <p>Describes one or more of your VPN customer gateways.</p> <p>For more information about VPN customer gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding a Hardware Virtual Private Gateway to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeCustomerGateways :
    (DescribeCustomerGatewaysOptions -> DescribeCustomerGatewaysOptions)
    -> AWS.Request DescribeCustomerGatewaysResult
describeCustomerGateways setOptions =
  let
    options = setOptions (DescribeCustomerGatewaysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeCustomerGateways"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCustomerGatewaysResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeCustomerGateways request
-}
type alias DescribeCustomerGatewaysOptions =
    { dryRun : Maybe Bool
    , customerGatewayIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your DHCP options sets.</p> <p>For more information about DHCP options sets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html">DHCP Options Sets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeDhcpOptions :
    (DescribeDhcpOptionsOptions -> DescribeDhcpOptionsOptions)
    -> AWS.Request DescribeDhcpOptionsResult
describeDhcpOptions setOptions =
  let
    options = setOptions (DescribeDhcpOptionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDhcpOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDhcpOptionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeDhcpOptions request
-}
type alias DescribeDhcpOptionsOptions =
    { dryRun : Maybe Bool
    , dhcpOptionsIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your egress-only Internet gateways.</p>

__Required Parameters__



-}
describeEgressOnlyInternetGateways :
    (DescribeEgressOnlyInternetGatewaysOptions -> DescribeEgressOnlyInternetGatewaysOptions)
    -> AWS.Request DescribeEgressOnlyInternetGatewaysResult
describeEgressOnlyInternetGateways setOptions =
  let
    options = setOptions (DescribeEgressOnlyInternetGatewaysOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEgressOnlyInternetGateways"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEgressOnlyInternetGatewaysResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEgressOnlyInternetGateways request
-}
type alias DescribeEgressOnlyInternetGatewaysOptions =
    { dryRun : Maybe Bool
    , egressOnlyInternetGatewayIds : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your export tasks.</p>

__Required Parameters__



-}
describeExportTasks :
    (DescribeExportTasksOptions -> DescribeExportTasksOptions)
    -> AWS.Request DescribeExportTasksResult
describeExportTasks setOptions =
  let
    options = setOptions (DescribeExportTasksOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeExportTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeExportTasksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeExportTasks request
-}
type alias DescribeExportTasksOptions =
    { exportTaskIds : Maybe (List String)
    }



{-| <p>Describes one or more flow logs. To view the information in your flow logs (the log streams for the network interfaces), you must use the CloudWatch Logs console or the CloudWatch Logs API.</p>

__Required Parameters__



-}
describeFlowLogs :
    (DescribeFlowLogsOptions -> DescribeFlowLogsOptions)
    -> AWS.Request DescribeFlowLogsResult
describeFlowLogs setOptions =
  let
    options = setOptions (DescribeFlowLogsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFlowLogs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFlowLogsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeFlowLogs request
-}
type alias DescribeFlowLogsOptions =
    { flowLogIds : Maybe (List String)
    , filter : Maybe (List Filter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes the Dedicated Host Reservations that are available to purchase.</p> <p>The results describe all the Dedicated Host Reservation offerings, including offerings that may not match the instance family and region of your Dedicated Hosts. When purchasing an offering, ensure that the the instance family and region of the offering matches that of the Dedicated Host/s it will be associated with. For an overview of supported instance types, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html">Dedicated Hosts Overview</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p>

__Required Parameters__



-}
describeHostReservationOfferings :
    (DescribeHostReservationOfferingsOptions -> DescribeHostReservationOfferingsOptions)
    -> AWS.Request DescribeHostReservationOfferingsResult
describeHostReservationOfferings setOptions =
  let
    options = setOptions (DescribeHostReservationOfferingsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeHostReservationOfferings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeHostReservationOfferingsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeHostReservationOfferings request
-}
type alias DescribeHostReservationOfferingsOptions =
    { offeringId : Maybe String
    , minDuration : Maybe Int
    , maxDuration : Maybe Int
    , filter : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes Dedicated Host Reservations which are associated with Dedicated Hosts in your account.</p>

__Required Parameters__



-}
describeHostReservations :
    (DescribeHostReservationsOptions -> DescribeHostReservationsOptions)
    -> AWS.Request DescribeHostReservationsResult
describeHostReservations setOptions =
  let
    options = setOptions (DescribeHostReservationsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeHostReservations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeHostReservationsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeHostReservations request
-}
type alias DescribeHostReservationsOptions =
    { hostReservationIdSet : Maybe (List String)
    , filter : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your Dedicated Hosts.</p> <p>The results describe only the Dedicated Hosts in the region you're currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released will be listed with the state <code>released</code>.</p>

__Required Parameters__



-}
describeHosts :
    (DescribeHostsOptions -> DescribeHostsOptions)
    -> AWS.Request DescribeHostsResult
describeHosts setOptions =
  let
    options = setOptions (DescribeHostsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeHosts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeHostsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeHosts request
-}
type alias DescribeHostsOptions =
    { hostIds : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filter : Maybe (List Filter)
    }



{-| <p>Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types.</p> <p>The following resource types support longer IDs: <code>instance</code> | <code>reservation</code> | <code>snapshot</code> | <code>volume</code>. </p> <p>These settings apply to the IAM user who makes the request; they do not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the <a>ModifyIdFormat</a> command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>

__Required Parameters__



-}
describeIdFormat :
    (DescribeIdFormatOptions -> DescribeIdFormatOptions)
    -> AWS.Request DescribeIdFormatResult
describeIdFormat setOptions =
  let
    options = setOptions (DescribeIdFormatOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeIdFormat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeIdFormatResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeIdFormat request
-}
type alias DescribeIdFormatOptions =
    { resource : Maybe String
    }



{-| <p>Describes the ID format settings for resources for the specified IAM user, IAM role, or root user. For example, you can view the resource types that are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>The following resource types support longer IDs: <code>instance</code> | <code>reservation</code> | <code>snapshot</code> | <code>volume</code>. </p> <p>These settings apply to the principal specified in the request. They do not apply to the principal that makes the request.</p>

__Required Parameters__

* `principalArn` __:__ `String`


-}
describeIdentityIdFormat :
    String
    -> (DescribeIdentityIdFormatOptions -> DescribeIdentityIdFormatOptions)
    -> AWS.Request DescribeIdentityIdFormatResult
describeIdentityIdFormat principalArn setOptions =
  let
    options = setOptions (DescribeIdentityIdFormatOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeIdentityIdFormat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeIdentityIdFormatResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeIdentityIdFormat request
-}
type alias DescribeIdentityIdFormatOptions =
    { resource : Maybe String
    }



{-| <p>Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.</p>

__Required Parameters__

* `imageId` __:__ `String`
* `attribute` __:__ `ImageAttributeName`


-}
describeImageAttribute :
    String
    -> ImageAttributeName
    -> (DescribeImageAttributeOptions -> DescribeImageAttributeOptions)
    -> AWS.Request ImageAttribute
describeImageAttribute imageId attribute setOptions =
  let
    options = setOptions (DescribeImageAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeImageAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        imageAttributeDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeImageAttribute request
-}
type alias DescribeImageAttributeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Describes one or more of the images (AMIs, AKIs, and ARIs) available to you. Images available to you include public images, private images that you own, and private images owned by other AWS accounts but for which you have explicit launch permissions.</p> <note> <p>Deregistered images are included in the returned results for an unspecified interval after deregistration.</p> </note>

__Required Parameters__



-}
describeImages :
    (DescribeImagesOptions -> DescribeImagesOptions)
    -> AWS.Request DescribeImagesResult
describeImages setOptions =
  let
    options = setOptions (DescribeImagesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeImages"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeImagesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeImages request
-}
type alias DescribeImagesOptions =
    { dryRun : Maybe Bool
    , imageIds : Maybe (List String)
    , owners : Maybe (List String)
    , executableUsers : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Displays details about an import virtual machine or import snapshot tasks that are already created.</p>

__Required Parameters__



-}
describeImportImageTasks :
    (DescribeImportImageTasksOptions -> DescribeImportImageTasksOptions)
    -> AWS.Request DescribeImportImageTasksResult
describeImportImageTasks setOptions =
  let
    options = setOptions (DescribeImportImageTasksOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeImportImageTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeImportImageTasksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeImportImageTasks request
-}
type alias DescribeImportImageTasksOptions =
    { dryRun : Maybe Bool
    , importTaskIds : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filters : Maybe (List Filter)
    }



{-| <p>Describes your import snapshot tasks.</p>

__Required Parameters__



-}
describeImportSnapshotTasks :
    (DescribeImportSnapshotTasksOptions -> DescribeImportSnapshotTasksOptions)
    -> AWS.Request DescribeImportSnapshotTasksResult
describeImportSnapshotTasks setOptions =
  let
    options = setOptions (DescribeImportSnapshotTasksOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeImportSnapshotTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeImportSnapshotTasksResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeImportSnapshotTasks request
-}
type alias DescribeImportSnapshotTasksOptions =
    { dryRun : Maybe Bool
    , importTaskIds : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filters : Maybe (List Filter)
    }



{-| <p>Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: <code>instanceType</code> | <code>kernel</code> | <code>ramdisk</code> | <code>userData</code> | <code>disableApiTermination</code> | <code>instanceInitiatedShutdownBehavior</code> | <code>rootDeviceName</code> | <code>blockDeviceMapping</code> | <code>productCodes</code> | <code>sourceDestCheck</code> | <code>groupSet</code> | <code>ebsOptimized</code> | <code>sriovNetSupport</code> </p>

__Required Parameters__

* `instanceId` __:__ `String`
* `attribute` __:__ `InstanceAttributeName`


-}
describeInstanceAttribute :
    String
    -> InstanceAttributeName
    -> (DescribeInstanceAttributeOptions -> DescribeInstanceAttributeOptions)
    -> AWS.Request InstanceAttribute
describeInstanceAttribute instanceId attribute setOptions =
  let
    options = setOptions (DescribeInstanceAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstanceAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        instanceAttributeDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInstanceAttribute request
-}
type alias DescribeInstanceAttributeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Describes the status of one or more instances. By default, only running instances are described, unless specified otherwise.</p> <p>Instance status includes the following components:</p> <ul> <li> <p> <b>Status checks</b> - Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html">Status Checks for Your Instances</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html">Troubleshooting Instances with Failed Status Checks</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> <li> <p> <b>Scheduled events</b> - Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html">Scheduled Events for Your Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> <li> <p> <b>Instance state</b> - You can manage your instances from the moment you launch them through their termination. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> </li> </ul>

__Required Parameters__



-}
describeInstanceStatus :
    (DescribeInstanceStatusOptions -> DescribeInstanceStatusOptions)
    -> AWS.Request DescribeInstanceStatusResult
describeInstanceStatus setOptions =
  let
    options = setOptions (DescribeInstanceStatusOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstanceStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstanceStatusResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInstanceStatus request
-}
type alias DescribeInstanceStatusOptions =
    { dryRun : Maybe Bool
    , instanceIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , includeAllInstances : Maybe Bool
    }



{-| <p>Describes one or more of your instances.</p> <p>If you specify one or more instance IDs, Amazon EC2 returns information for those instances. If you do not specify instance IDs, Amazon EC2 returns information for all relevant instances. If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the returned results.</p> <p>Recently terminated instances might appear in the returned results. This interval is usually less than one hour.</p> <p>If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.</p>

__Required Parameters__



-}
describeInstances :
    (DescribeInstancesOptions -> DescribeInstancesOptions)
    -> AWS.Request DescribeInstancesResult
describeInstances setOptions =
  let
    options = setOptions (DescribeInstancesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInstances request
-}
type alias DescribeInstancesOptions =
    { dryRun : Maybe Bool
    , instanceIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes one or more of your Internet gateways.</p>

__Required Parameters__



-}
describeInternetGateways :
    (DescribeInternetGatewaysOptions -> DescribeInternetGatewaysOptions)
    -> AWS.Request DescribeInternetGatewaysResult
describeInternetGateways setOptions =
  let
    options = setOptions (DescribeInternetGatewaysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInternetGateways"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInternetGatewaysResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInternetGateways request
-}
type alias DescribeInternetGatewaysOptions =
    { dryRun : Maybe Bool
    , internetGatewayIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your key pairs.</p> <p>For more information about key pairs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeKeyPairs :
    (DescribeKeyPairsOptions -> DescribeKeyPairsOptions)
    -> AWS.Request DescribeKeyPairsResult
describeKeyPairs setOptions =
  let
    options = setOptions (DescribeKeyPairsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeKeyPairs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeKeyPairsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeKeyPairs request
-}
type alias DescribeKeyPairsOptions =
    { dryRun : Maybe Bool
    , keyNames : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.</p>

__Required Parameters__



-}
describeMovingAddresses :
    (DescribeMovingAddressesOptions -> DescribeMovingAddressesOptions)
    -> AWS.Request DescribeMovingAddressesResult
describeMovingAddresses setOptions =
  let
    options = setOptions (DescribeMovingAddressesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMovingAddresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMovingAddressesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeMovingAddresses request
-}
type alias DescribeMovingAddressesOptions =
    { dryRun : Maybe Bool
    , publicIps : Maybe (List String)
    , nextToken : Maybe String
    , filters : Maybe (List Filter)
    , maxResults : Maybe Int
    }



{-| <p>Describes one or more of the your NAT gateways.</p>

__Required Parameters__



-}
describeNatGateways :
    (DescribeNatGatewaysOptions -> DescribeNatGatewaysOptions)
    -> AWS.Request DescribeNatGatewaysResult
describeNatGateways setOptions =
  let
    options = setOptions (DescribeNatGatewaysOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeNatGateways"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNatGatewaysResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeNatGateways request
-}
type alias DescribeNatGatewaysOptions =
    { natGatewayIds : Maybe (List String)
    , filter : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your network ACLs.</p> <p>For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeNetworkAcls :
    (DescribeNetworkAclsOptions -> DescribeNetworkAclsOptions)
    -> AWS.Request DescribeNetworkAclsResult
describeNetworkAcls setOptions =
  let
    options = setOptions (DescribeNetworkAclsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeNetworkAcls"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNetworkAclsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeNetworkAcls request
-}
type alias DescribeNetworkAclsOptions =
    { dryRun : Maybe Bool
    , networkAclIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes a network interface attribute. You can specify only one attribute at a time.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`


-}
describeNetworkInterfaceAttribute :
    String
    -> (DescribeNetworkInterfaceAttributeOptions -> DescribeNetworkInterfaceAttributeOptions)
    -> AWS.Request DescribeNetworkInterfaceAttributeResult
describeNetworkInterfaceAttribute networkInterfaceId setOptions =
  let
    options = setOptions (DescribeNetworkInterfaceAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeNetworkInterfaceAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNetworkInterfaceAttributeResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeNetworkInterfaceAttribute request
-}
type alias DescribeNetworkInterfaceAttributeOptions =
    { dryRun : Maybe Bool
    , attribute : Maybe NetworkInterfaceAttribute
    }



{-| <p>Describes one or more of your network interfaces.</p>

__Required Parameters__



-}
describeNetworkInterfaces :
    (DescribeNetworkInterfacesOptions -> DescribeNetworkInterfacesOptions)
    -> AWS.Request DescribeNetworkInterfacesResult
describeNetworkInterfaces setOptions =
  let
    options = setOptions (DescribeNetworkInterfacesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeNetworkInterfaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNetworkInterfacesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeNetworkInterfaces request
-}
type alias DescribeNetworkInterfacesOptions =
    { dryRun : Maybe Bool
    , networkInterfaceIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your placement groups. For more information about placement groups and cluster instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cluster_computing.html">Cluster Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describePlacementGroups :
    (DescribePlacementGroupsOptions -> DescribePlacementGroupsOptions)
    -> AWS.Request DescribePlacementGroupsResult
describePlacementGroups setOptions =
  let
    options = setOptions (DescribePlacementGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePlacementGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePlacementGroupsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describePlacementGroups request
-}
type alias DescribePlacementGroupsOptions =
    { dryRun : Maybe Bool
    , groupNames : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service. A prefix list ID is required for creating an outbound security group rule that allows traffic from a VPC to access an AWS service through a VPC endpoint.</p>

__Required Parameters__



-}
describePrefixLists :
    (DescribePrefixListsOptions -> DescribePrefixListsOptions)
    -> AWS.Request DescribePrefixListsResult
describePrefixLists setOptions =
  let
    options = setOptions (DescribePrefixListsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePrefixLists"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePrefixListsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describePrefixLists request
-}
type alias DescribePrefixListsOptions =
    { dryRun : Maybe Bool
    , prefixListIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more regions that are currently available to you.</p> <p>For a list of the regions supported by Amazon EC2, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region">Regions and Endpoints</a>.</p>

__Required Parameters__



-}
describeRegions :
    (DescribeRegionsOptions -> DescribeRegionsOptions)
    -> AWS.Request DescribeRegionsResult
describeRegions setOptions =
  let
    options = setOptions (DescribeRegionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRegions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRegionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeRegions request
-}
type alias DescribeRegionsOptions =
    { dryRun : Maybe Bool
    , regionNames : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of the Reserved Instances that you purchased.</p> <p>For more information about Reserved Instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html">Reserved Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeReservedInstances :
    (DescribeReservedInstancesOptions -> DescribeReservedInstancesOptions)
    -> AWS.Request DescribeReservedInstancesResult
describeReservedInstances setOptions =
  let
    options = setOptions (DescribeReservedInstancesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReservedInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedInstances request
-}
type alias DescribeReservedInstancesOptions =
    { dryRun : Maybe Bool
    , reservedInstancesIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , offeringType : Maybe OfferingTypeValues
    , offeringClass : Maybe OfferingClassType
    }



{-| <p>Describes your account's Reserved Instance listings in the Reserved Instance Marketplace.</p> <p>The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.</p> <p>As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase.</p> <p>As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you're searching for with what's available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeReservedInstancesListings :
    (DescribeReservedInstancesListingsOptions -> DescribeReservedInstancesListingsOptions)
    -> AWS.Request DescribeReservedInstancesListingsResult
describeReservedInstancesListings setOptions =
  let
    options = setOptions (DescribeReservedInstancesListingsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedInstancesListings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReservedInstancesListingsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedInstancesListings request
-}
type alias DescribeReservedInstancesListingsOptions =
    { reservedInstancesId : Maybe String
    , reservedInstancesListingId : Maybe String
    , filters : Maybe (List Filter)
    }



{-| <p>Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a> in the Amazon Elastic Compute Cloud User Guide.</p>

__Required Parameters__



-}
describeReservedInstancesModifications :
    (DescribeReservedInstancesModificationsOptions -> DescribeReservedInstancesModificationsOptions)
    -> AWS.Request DescribeReservedInstancesModificationsResult
describeReservedInstancesModifications setOptions =
  let
    options = setOptions (DescribeReservedInstancesModificationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedInstancesModifications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReservedInstancesModificationsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedInstancesModifications request
-}
type alias DescribeReservedInstancesModificationsOptions =
    { reservedInstancesModificationIds : Maybe (List String)
    , nextToken : Maybe String
    , filters : Maybe (List Filter)
    }



{-| <p>Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.</p> <p>If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeReservedInstancesOfferings :
    (DescribeReservedInstancesOfferingsOptions -> DescribeReservedInstancesOfferingsOptions)
    -> AWS.Request DescribeReservedInstancesOfferingsResult
describeReservedInstancesOfferings setOptions =
  let
    options = setOptions (DescribeReservedInstancesOfferingsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeReservedInstancesOfferings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeReservedInstancesOfferingsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeReservedInstancesOfferings request
-}
type alias DescribeReservedInstancesOfferingsOptions =
    { dryRun : Maybe Bool
    , reservedInstancesOfferingIds : Maybe (List String)
    , instanceType : Maybe InstanceType
    , availabilityZone : Maybe String
    , productDescription : Maybe RIProductDescription
    , filters : Maybe (List Filter)
    , instanceTenancy : Maybe Tenancy
    , offeringType : Maybe OfferingTypeValues
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , includeMarketplace : Maybe Bool
    , minDuration : Maybe Int
    , maxDuration : Maybe Int
    , maxInstanceCount : Maybe Int
    , offeringClass : Maybe OfferingClassType
    }



{-| <p>Describes one or more of your route tables.</p> <p>Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeRouteTables :
    (DescribeRouteTablesOptions -> DescribeRouteTablesOptions)
    -> AWS.Request DescribeRouteTablesResult
describeRouteTables setOptions =
  let
    options = setOptions (DescribeRouteTablesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRouteTables"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRouteTablesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeRouteTables request
-}
type alias DescribeRouteTablesOptions =
    { dryRun : Maybe Bool
    , routeTableIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Finds available schedules that meet the specified criteria.</p> <p>You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.</p> <p>After you find a schedule that meets your needs, call <a>PurchaseScheduledInstances</a> to purchase Scheduled Instances with that schedule.</p>

__Required Parameters__

* `recurrence` __:__ `ScheduledInstanceRecurrenceRequest`
* `firstSlotStartTimeRange` __:__ `SlotDateTimeRangeRequest`


-}
describeScheduledInstanceAvailability :
    ScheduledInstanceRecurrenceRequest
    -> SlotDateTimeRangeRequest
    -> (DescribeScheduledInstanceAvailabilityOptions -> DescribeScheduledInstanceAvailabilityOptions)
    -> AWS.Request DescribeScheduledInstanceAvailabilityResult
describeScheduledInstanceAvailability recurrence firstSlotStartTimeRange setOptions =
  let
    options = setOptions (DescribeScheduledInstanceAvailabilityOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeScheduledInstanceAvailability"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeScheduledInstanceAvailabilityResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeScheduledInstanceAvailability request
-}
type alias DescribeScheduledInstanceAvailabilityOptions =
    { dryRun : Maybe Bool
    , minSlotDurationInHours : Maybe Int
    , maxSlotDurationInHours : Maybe Int
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your Scheduled Instances.</p>

__Required Parameters__



-}
describeScheduledInstances :
    (DescribeScheduledInstancesOptions -> DescribeScheduledInstancesOptions)
    -> AWS.Request DescribeScheduledInstancesResult
describeScheduledInstances setOptions =
  let
    options = setOptions (DescribeScheduledInstancesOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeScheduledInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeScheduledInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeScheduledInstances request
-}
type alias DescribeScheduledInstancesOptions =
    { dryRun : Maybe Bool
    , scheduledInstanceIds : Maybe (List String)
    , slotStartTimeRange : Maybe SlotStartTimeRangeRequest
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filters : Maybe (List Filter)
    }



{-| <p>[EC2-VPC only] Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request.</p>

__Required Parameters__

* `groupId` __:__ `(List String)`


-}
describeSecurityGroupReferences :
    (List String)
    -> (DescribeSecurityGroupReferencesOptions -> DescribeSecurityGroupReferencesOptions)
    -> AWS.Request DescribeSecurityGroupReferencesResult
describeSecurityGroupReferences groupId setOptions =
  let
    options = setOptions (DescribeSecurityGroupReferencesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSecurityGroupReferences"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSecurityGroupReferencesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSecurityGroupReferences request
-}
type alias DescribeSecurityGroupReferencesOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Describes one or more of your security groups.</p> <p>A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Amazon EC2 Security Groups</a> in the <i>Amazon Elastic Compute Cloud User Guide</i> and <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html">Security Groups for Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeSecurityGroups :
    (DescribeSecurityGroupsOptions -> DescribeSecurityGroupsOptions)
    -> AWS.Request DescribeSecurityGroupsResult
describeSecurityGroups setOptions =
  let
    options = setOptions (DescribeSecurityGroupsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSecurityGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSecurityGroupsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSecurityGroups request
-}
type alias DescribeSecurityGroupsOptions =
    { dryRun : Maybe Bool
    , groupNames : Maybe (List String)
    , groupIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time.</p> <p>For more information about EBS snapshots, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html">Amazon EBS Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `snapshotId` __:__ `String`
* `attribute` __:__ `SnapshotAttributeName`


-}
describeSnapshotAttribute :
    String
    -> SnapshotAttributeName
    -> (DescribeSnapshotAttributeOptions -> DescribeSnapshotAttributeOptions)
    -> AWS.Request DescribeSnapshotAttributeResult
describeSnapshotAttribute snapshotId attribute setOptions =
  let
    options = setOptions (DescribeSnapshotAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSnapshotAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSnapshotAttributeResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSnapshotAttribute request
-}
type alias DescribeSnapshotAttributeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Describes one or more of the EBS snapshots available to you. Available snapshots include public snapshots available for any AWS account to launch, private snapshots that you own, and private snapshots owned by another AWS account but for which you've been given explicit create volume permissions.</p> <p>The create volume permissions fall into the following categories:</p> <ul> <li> <p> <i>public</i>: The owner of the snapshot granted create volume permissions for the snapshot to the <code>all</code> group. All AWS accounts have create volume permissions for these snapshots.</p> </li> <li> <p> <i>explicit</i>: The owner of the snapshot granted create volume permissions to a specific AWS account.</p> </li> <li> <p> <i>implicit</i>: An AWS account has implicit create volume permissions for all snapshots it owns.</p> </li> </ul> <p>The list of snapshots returned can be modified by specifying snapshot IDs, snapshot owners, or AWS accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.</p> <p>If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.</p> <p>If you specify one or more snapshot owners using the <code>OwnerIds</code> option, only snapshots from the specified owners and for which you have access are returned. The results can include the AWS account IDs of the specified owners, <code>amazon</code> for snapshots owned by Amazon, or <code>self</code> for snapshots that you own.</p> <p>If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify AWS account IDs (if you own the snapshots), <code>self</code> for snapshots for which you own or have explicit permissions, or <code>all</code> for public snapshots.</p> <p>If you are describing a long list of snapshots, you can paginate the output to make the list more manageable. The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. If the list of results exceeds your <code>MaxResults</code> value, then that number of results is returned along with a <code>NextToken</code> value that can be passed to a subsequent <code>DescribeSnapshots</code> request to retrieve the remaining results.</p> <p>For more information about EBS snapshots, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html">Amazon EBS Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeSnapshots :
    (DescribeSnapshotsOptions -> DescribeSnapshotsOptions)
    -> AWS.Request DescribeSnapshotsResult
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
        describeSnapshotsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSnapshots request
-}
type alias DescribeSnapshotsOptions =
    { dryRun : Maybe Bool
    , snapshotIds : Maybe (List String)
    , ownerIds : Maybe (List String)
    , restorableByUserIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes the data feed for Spot instances. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html">Spot Instance Data Feed</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeSpotDatafeedSubscription :
    (DescribeSpotDatafeedSubscriptionOptions -> DescribeSpotDatafeedSubscriptionOptions)
    -> AWS.Request DescribeSpotDatafeedSubscriptionResult
describeSpotDatafeedSubscription setOptions =
  let
    options = setOptions (DescribeSpotDatafeedSubscriptionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSpotDatafeedSubscription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSpotDatafeedSubscriptionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSpotDatafeedSubscription request
-}
type alias DescribeSpotDatafeedSubscriptionOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Describes the running instances for the specified Spot fleet.</p>

__Required Parameters__

* `spotFleetRequestId` __:__ `String`


-}
describeSpotFleetInstances :
    String
    -> (DescribeSpotFleetInstancesOptions -> DescribeSpotFleetInstancesOptions)
    -> AWS.Request DescribeSpotFleetInstancesResponse
describeSpotFleetInstances spotFleetRequestId setOptions =
  let
    options = setOptions (DescribeSpotFleetInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSpotFleetInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSpotFleetInstancesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSpotFleetInstances request
-}
type alias DescribeSpotFleetInstancesOptions =
    { dryRun : Maybe Bool
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes the events for the specified Spot fleet request during the specified time.</p> <p>Spot fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event.</p>

__Required Parameters__

* `spotFleetRequestId` __:__ `String`
* `startTime` __:__ `Date`


-}
describeSpotFleetRequestHistory :
    String
    -> Date
    -> (DescribeSpotFleetRequestHistoryOptions -> DescribeSpotFleetRequestHistoryOptions)
    -> AWS.Request DescribeSpotFleetRequestHistoryResponse
describeSpotFleetRequestHistory spotFleetRequestId startTime setOptions =
  let
    options = setOptions (DescribeSpotFleetRequestHistoryOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSpotFleetRequestHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSpotFleetRequestHistoryResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSpotFleetRequestHistory request
-}
type alias DescribeSpotFleetRequestHistoryOptions =
    { dryRun : Maybe Bool
    , eventType : Maybe EventType
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes your Spot fleet requests.</p> <p>Spot fleet requests are deleted 48 hours after they are canceled and their instances are terminated.</p>

__Required Parameters__



-}
describeSpotFleetRequests :
    (DescribeSpotFleetRequestsOptions -> DescribeSpotFleetRequestsOptions)
    -> AWS.Request DescribeSpotFleetRequestsResponse
describeSpotFleetRequests setOptions =
  let
    options = setOptions (DescribeSpotFleetRequestsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSpotFleetRequests"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSpotFleetRequestsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSpotFleetRequests request
-}
type alias DescribeSpotFleetRequestsOptions =
    { dryRun : Maybe Bool
    , spotFleetRequestIds : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes the Spot instance requests that belong to your account. Spot instances are instances that Amazon EC2 launches when the bid price that you specify exceeds the current Spot price. Amazon EC2 periodically sets the Spot price based on available Spot instance capacity and current Spot instance requests. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>You can use <code>DescribeSpotInstanceRequests</code> to find a running Spot instance by examining the response. If the status of the Spot instance is <code>fulfilled</code>, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use <a>DescribeInstances</a> with a filter to look for instances where the instance lifecycle is <code>spot</code>.</p> <p>Spot instance requests are deleted 4 hours after they are canceled and their instances are terminated.</p>

__Required Parameters__



-}
describeSpotInstanceRequests :
    (DescribeSpotInstanceRequestsOptions -> DescribeSpotInstanceRequestsOptions)
    -> AWS.Request DescribeSpotInstanceRequestsResult
describeSpotInstanceRequests setOptions =
  let
    options = setOptions (DescribeSpotInstanceRequestsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSpotInstanceRequests"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSpotInstanceRequestsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSpotInstanceRequests request
-}
type alias DescribeSpotInstanceRequestsOptions =
    { dryRun : Maybe Bool
    , spotInstanceRequestIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes the Spot price history. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html">Spot Instance Pricing History</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>When you specify a start and end time, this operation returns the prices of the instance types within the time range that you specified and the time when the price changed. The price is valid within the time period that you specified; the response merely indicates the last time that the price changed.</p>

__Required Parameters__



-}
describeSpotPriceHistory :
    (DescribeSpotPriceHistoryOptions -> DescribeSpotPriceHistoryOptions)
    -> AWS.Request DescribeSpotPriceHistoryResult
describeSpotPriceHistory setOptions =
  let
    options = setOptions (DescribeSpotPriceHistoryOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSpotPriceHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSpotPriceHistoryResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSpotPriceHistory request
-}
type alias DescribeSpotPriceHistoryOptions =
    { dryRun : Maybe Bool
    , startTime : Maybe Date
    , endTime : Maybe Date
    , instanceTypes : Maybe (List InstanceType)
    , productDescriptions : Maybe (List String)
    , filters : Maybe (List Filter)
    , availabilityZone : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>[EC2-VPC only] Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in a peer VPC, or a security group in a peer VPC for which the VPC peering connection has been deleted.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
describeStaleSecurityGroups :
    String
    -> (DescribeStaleSecurityGroupsOptions -> DescribeStaleSecurityGroupsOptions)
    -> AWS.Request DescribeStaleSecurityGroupsResult
describeStaleSecurityGroups vpcId setOptions =
  let
    options = setOptions (DescribeStaleSecurityGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeStaleSecurityGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeStaleSecurityGroupsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeStaleSecurityGroups request
-}
type alias DescribeStaleSecurityGroupsOptions =
    { dryRun : Maybe Bool
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your subnets.</p> <p>For more information about subnets, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html">Your VPC and Subnets</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeSubnets :
    (DescribeSubnetsOptions -> DescribeSubnetsOptions)
    -> AWS.Request DescribeSubnetsResult
describeSubnets setOptions =
  let
    options = setOptions (DescribeSubnetsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeSubnets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeSubnetsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeSubnets request
-}
type alias DescribeSubnetsOptions =
    { dryRun : Maybe Bool
    , subnetIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of the tags for your EC2 resources.</p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Resources</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeTags :
    (DescribeTagsOptions -> DescribeTagsOptions)
    -> AWS.Request DescribeTagsResult
describeTags setOptions =
  let
    options = setOptions (DescribeTagsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTagsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    { dryRun : Maybe Bool
    , filters : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes the specified attribute of the specified volume. You can specify only one attribute at a time.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html">Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
describeVolumeAttribute :
    String
    -> (DescribeVolumeAttributeOptions -> DescribeVolumeAttributeOptions)
    -> AWS.Request DescribeVolumeAttributeResult
describeVolumeAttribute volumeId setOptions =
  let
    options = setOptions (DescribeVolumeAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVolumeAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVolumeAttributeResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVolumeAttribute request
-}
type alias DescribeVolumeAttributeOptions =
    { dryRun : Maybe Bool
    , attribute : Maybe VolumeAttributeName
    }



{-| <p>Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume's underlying host. If the volume's underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.</p> <p>The <code>DescribeVolumeStatus</code> operation provides the following information about the specified volumes:</p> <p> <i>Status</i>: Reflects the current status of the volume. The possible values are <code>ok</code>, <code>impaired</code> , <code>warning</code>, or <code>insufficient-data</code>. If all checks pass, the overall status of the volume is <code>ok</code>. If the check fails, the overall status is <code>impaired</code>. If the status is <code>insufficient-data</code>, then the checks may still be taking place on your volume at the time. We recommend that you retry the request. For more information on volume status, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html">Monitoring the Status of Your Volumes</a>.</p> <p> <i>Events</i>: Reflect the cause of a volume status and may require you to take action. For example, if your volume returns an <code>impaired</code> status, then the volume event might be <code>potential-data-inconsistency</code>. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and may have inconsistent data.</p> <p> <i>Actions</i>: Reflect the actions you may have to take in response to an event. For example, if the status of the volume is <code>impaired</code> and the volume event shows <code>potential-data-inconsistency</code>, then the action shows <code>enable-volume-io</code>. This means that you may want to enable the I/O operations for the volume by calling the <a>EnableVolumeIO</a> action and then check the volume for data consistency.</p> <note> <p>Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the <code>error</code> state (for example, when a volume is incapable of accepting I/O.)</p> </note>

__Required Parameters__



-}
describeVolumeStatus :
    (DescribeVolumeStatusOptions -> DescribeVolumeStatusOptions)
    -> AWS.Request DescribeVolumeStatusResult
describeVolumeStatus setOptions =
  let
    options = setOptions (DescribeVolumeStatusOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVolumeStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVolumeStatusResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVolumeStatus request
-}
type alias DescribeVolumeStatusOptions =
    { dryRun : Maybe Bool
    , volumeIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes the specified EBS volumes.</p> <p>If you are describing a long list of volumes, you can paginate the output to make the list more manageable. The <code>MaxResults</code> parameter sets the maximum number of results returned in a single page. If the list of results exceeds your <code>MaxResults</code> value, then that number of results is returned along with a <code>NextToken</code> value that can be passed to a subsequent <code>DescribeVolumes</code> request to retrieve the remaining results.</p> <p>For more information about EBS volumes, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html">Amazon EBS Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeVolumes :
    (DescribeVolumesOptions -> DescribeVolumesOptions)
    -> AWS.Request DescribeVolumesResult
describeVolumes setOptions =
  let
    options = setOptions (DescribeVolumesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVolumes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVolumesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVolumes request
-}
type alias DescribeVolumesOptions =
    { dryRun : Maybe Bool
    , volumeIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.</p>

__Required Parameters__

* `vpcId` __:__ `String`
* `attribute` __:__ `VpcAttributeName`


-}
describeVpcAttribute :
    String
    -> VpcAttributeName
    -> (DescribeVpcAttributeOptions -> DescribeVpcAttributeOptions)
    -> AWS.Request DescribeVpcAttributeResult
describeVpcAttribute vpcId attribute setOptions =
  let
    options = setOptions (DescribeVpcAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpcAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpcAttributeResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpcAttribute request
-}
type alias DescribeVpcAttributeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Describes the ClassicLink status of one or more VPCs.</p>

__Required Parameters__



-}
describeVpcClassicLink :
    (DescribeVpcClassicLinkOptions -> DescribeVpcClassicLinkOptions)
    -> AWS.Request DescribeVpcClassicLinkResult
describeVpcClassicLink setOptions =
  let
    options = setOptions (DescribeVpcClassicLinkOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpcClassicLink"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpcClassicLinkResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpcClassicLink request
-}
type alias DescribeVpcClassicLinkOptions =
    { dryRun : Maybe Bool
    , vpcIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information about ClassicLink, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the Amazon Elastic Compute Cloud User Guide.</p>

__Required Parameters__



-}
describeVpcClassicLinkDnsSupport :
    (DescribeVpcClassicLinkDnsSupportOptions -> DescribeVpcClassicLinkDnsSupportOptions)
    -> AWS.Request DescribeVpcClassicLinkDnsSupportResult
describeVpcClassicLinkDnsSupport setOptions =
  let
    options = setOptions (DescribeVpcClassicLinkDnsSupportOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpcClassicLinkDnsSupport"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpcClassicLinkDnsSupportResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpcClassicLinkDnsSupport request
-}
type alias DescribeVpcClassicLinkDnsSupportOptions =
    { vpcIds : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes all supported AWS services that can be specified when creating a VPC endpoint.</p>

__Required Parameters__



-}
describeVpcEndpointServices :
    (DescribeVpcEndpointServicesOptions -> DescribeVpcEndpointServicesOptions)
    -> AWS.Request DescribeVpcEndpointServicesResult
describeVpcEndpointServices setOptions =
  let
    options = setOptions (DescribeVpcEndpointServicesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpcEndpointServices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpcEndpointServicesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpcEndpointServices request
-}
type alias DescribeVpcEndpointServicesOptions =
    { dryRun : Maybe Bool
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your VPC endpoints.</p>

__Required Parameters__



-}
describeVpcEndpoints :
    (DescribeVpcEndpointsOptions -> DescribeVpcEndpointsOptions)
    -> AWS.Request DescribeVpcEndpointsResult
describeVpcEndpoints setOptions =
  let
    options = setOptions (DescribeVpcEndpointsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpcEndpoints"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpcEndpointsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpcEndpoints request
-}
type alias DescribeVpcEndpointsOptions =
    { dryRun : Maybe Bool
    , vpcEndpointIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your VPC peering connections.</p>

__Required Parameters__



-}
describeVpcPeeringConnections :
    (DescribeVpcPeeringConnectionsOptions -> DescribeVpcPeeringConnectionsOptions)
    -> AWS.Request DescribeVpcPeeringConnectionsResult
describeVpcPeeringConnections setOptions =
  let
    options = setOptions (DescribeVpcPeeringConnectionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpcPeeringConnections"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpcPeeringConnectionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpcPeeringConnections request
-}
type alias DescribeVpcPeeringConnectionsOptions =
    { dryRun : Maybe Bool
    , vpcPeeringConnectionIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your VPCs.</p>

__Required Parameters__



-}
describeVpcs :
    (DescribeVpcsOptions -> DescribeVpcsOptions)
    -> AWS.Request DescribeVpcsResult
describeVpcs setOptions =
  let
    options = setOptions (DescribeVpcsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpcs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpcsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpcs request
-}
type alias DescribeVpcsOptions =
    { dryRun : Maybe Bool
    , vpcIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your VPN connections.</p> <p>For more information about VPN connections, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding a Hardware Virtual Private Gateway to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeVpnConnections :
    (DescribeVpnConnectionsOptions -> DescribeVpnConnectionsOptions)
    -> AWS.Request DescribeVpnConnectionsResult
describeVpnConnections setOptions =
  let
    options = setOptions (DescribeVpnConnectionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpnConnections"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpnConnectionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpnConnections request
-}
type alias DescribeVpnConnectionsOptions =
    { dryRun : Maybe Bool
    , vpnConnectionIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Describes one or more of your virtual private gateways.</p> <p>For more information about virtual private gateways, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html">Adding an IPsec Hardware VPN to Your VPC</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__



-}
describeVpnGateways :
    (DescribeVpnGatewaysOptions -> DescribeVpnGatewaysOptions)
    -> AWS.Request DescribeVpnGatewaysResult
describeVpnGateways setOptions =
  let
    options = setOptions (DescribeVpnGatewaysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVpnGateways"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeVpnGatewaysResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVpnGateways request
-}
type alias DescribeVpnGatewaysOptions =
    { dryRun : Maybe Bool
    , vpnGatewayIds : Maybe (List String)
    , filters : Maybe (List Filter)
    }



{-| <p>Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance has been unlinked, the VPC security groups are no longer associated with it. An instance is automatically unlinked from a VPC when it's stopped.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `vpcId` __:__ `String`


-}
detachClassicLinkVpc :
    String
    -> String
    -> (DetachClassicLinkVpcOptions -> DetachClassicLinkVpcOptions)
    -> AWS.Request DetachClassicLinkVpcResult
detachClassicLinkVpc instanceId vpcId setOptions =
  let
    options = setOptions (DetachClassicLinkVpcOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DetachClassicLinkVpc"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detachClassicLinkVpcResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a detachClassicLinkVpc request
-}
type alias DetachClassicLinkVpcOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Detaches an Internet gateway from a VPC, disabling connectivity between the Internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses.</p>

__Required Parameters__

* `internetGatewayId` __:__ `String`
* `vpcId` __:__ `String`


-}
detachInternetGateway :
    String
    -> String
    -> (DetachInternetGatewayOptions -> DetachInternetGatewayOptions)
    -> AWS.Request ()
detachInternetGateway internetGatewayId vpcId setOptions =
  let
    options = setOptions (DetachInternetGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DetachInternetGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a detachInternetGateway request
-}
type alias DetachInternetGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Detaches a network interface from an instance.</p>

__Required Parameters__

* `attachmentId` __:__ `String`


-}
detachNetworkInterface :
    String
    -> (DetachNetworkInterfaceOptions -> DetachNetworkInterfaceOptions)
    -> AWS.Request ()
detachNetworkInterface attachmentId setOptions =
  let
    options = setOptions (DetachNetworkInterfaceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DetachNetworkInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a detachNetworkInterface request
-}
type alias DetachNetworkInterfaceOptions =
    { dryRun : Maybe Bool
    , force : Maybe Bool
    }



{-| <p>Detaches an EBS volume from an instance. Make sure to unmount any file systems on the device within your operating system before detaching the volume. Failure to do so can result in the volume becoming stuck in the <code>busy</code> state while detaching. If this happens, detachment can be delayed indefinitely until you unmount the volume, force detachment, reboot the instance, or all three. If an EBS volume is the root device of an instance, it can't be detached while the instance is running. To detach the root volume, stop the instance first.</p> <p>When a volume with an AWS Marketplace product code is detached from an instance, the product code is no longer associated with the instance.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html">Detaching an Amazon EBS Volume</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
detachVolume :
    String
    -> (DetachVolumeOptions -> DetachVolumeOptions)
    -> AWS.Request VolumeAttachment
detachVolume volumeId setOptions =
  let
    options = setOptions (DetachVolumeOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DetachVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        volumeAttachmentDecoder
        |> AWS.UnsignedRequest


{-| Options for a detachVolume request
-}
type alias DetachVolumeOptions =
    { dryRun : Maybe Bool
    , instanceId : Maybe String
    , device : Maybe String
    , force : Maybe Bool
    }



{-| <p>Detaches a virtual private gateway from a VPC. You do this if you're planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described).</p> <p>You must wait for the attachment's state to switch to <code>detached</code> before you can delete the VPC or attach a different VPC to the virtual private gateway.</p>

__Required Parameters__

* `vpnGatewayId` __:__ `String`
* `vpcId` __:__ `String`


-}
detachVpnGateway :
    String
    -> String
    -> (DetachVpnGatewayOptions -> DetachVpnGatewayOptions)
    -> AWS.Request ()
detachVpnGateway vpnGatewayId vpcId setOptions =
  let
    options = setOptions (DetachVpnGatewayOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DetachVpnGateway"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a detachVpnGateway request
-}
type alias DetachVpnGatewayOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.</p>

__Required Parameters__

* `routeTableId` __:__ `String`
* `gatewayId` __:__ `String`


-}
disableVgwRoutePropagation :
    String
    -> String
    -> AWS.Request ()
disableVgwRoutePropagation routeTableId gatewayId =
    AWS.Http.unsignedRequest
        "DisableVgwRoutePropagation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that has EC2-Classic instances linked to it.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
disableVpcClassicLink :
    String
    -> (DisableVpcClassicLinkOptions -> DisableVpcClassicLinkOptions)
    -> AWS.Request DisableVpcClassicLinkResult
disableVpcClassicLink vpcId setOptions =
  let
    options = setOptions (DisableVpcClassicLinkOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisableVpcClassicLink"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableVpcClassicLinkResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a disableVpcClassicLink request
-}
type alias DisableVpcClassicLinkOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it's linked. For more information about ClassicLink, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the Amazon Elastic Compute Cloud User Guide.</p>

__Required Parameters__



-}
disableVpcClassicLinkDnsSupport :
    (DisableVpcClassicLinkDnsSupportOptions -> DisableVpcClassicLinkDnsSupportOptions)
    -> AWS.Request DisableVpcClassicLinkDnsSupportResult
disableVpcClassicLinkDnsSupport setOptions =
  let
    options = setOptions (DisableVpcClassicLinkDnsSupportOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisableVpcClassicLinkDnsSupport"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disableVpcClassicLinkDnsSupportResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a disableVpcClassicLinkDnsSupport request
-}
type alias DisableVpcClassicLinkDnsSupportOptions =
    { vpcId : Maybe String
    }



{-| <p>Disassociates an Elastic IP address from the instance or network interface it's associated with.</p> <p>An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn't return an error.</p>

__Required Parameters__



-}
disassociateAddress :
    (DisassociateAddressOptions -> DisassociateAddressOptions)
    -> AWS.Request ()
disassociateAddress setOptions =
  let
    options = setOptions (DisassociateAddressOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DisassociateAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a disassociateAddress request
-}
type alias DisassociateAddressOptions =
    { dryRun : Maybe Bool
    , publicIp : Maybe String
    , associationId : Maybe String
    }



{-| <p>Disassociates a subnet from a route table.</p> <p>After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC's main route table. For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `associationId` __:__ `String`


-}
disassociateRouteTable :
    String
    -> (DisassociateRouteTableOptions -> DisassociateRouteTableOptions)
    -> AWS.Request ()
disassociateRouteTable associationId setOptions =
  let
    options = setOptions (DisassociateRouteTableOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisassociateRouteTable"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a disassociateRouteTable request
-}
type alias DisassociateRouteTableOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Disassociates a CIDR block from a subnet. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it. </p>

__Required Parameters__

* `associationId` __:__ `String`


-}
disassociateSubnetCidrBlock :
    String
    -> AWS.Request DisassociateSubnetCidrBlockResult
disassociateSubnetCidrBlock associationId =
    AWS.Http.unsignedRequest
        "DisassociateSubnetCidrBlock"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateSubnetCidrBlockResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Disassociates a CIDR block from a VPC. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it. </p>

__Required Parameters__

* `associationId` __:__ `String`


-}
disassociateVpcCidrBlock :
    String
    -> AWS.Request DisassociateVpcCidrBlockResult
disassociateVpcCidrBlock associationId =
    AWS.Http.unsignedRequest
        "DisassociateVpcCidrBlock"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateVpcCidrBlockResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.</p>

__Required Parameters__

* `routeTableId` __:__ `String`
* `gatewayId` __:__ `String`


-}
enableVgwRoutePropagation :
    String
    -> String
    -> AWS.Request ()
enableVgwRoutePropagation routeTableId gatewayId =
    AWS.Http.unsignedRequest
        "EnableVgwRoutePropagation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
enableVolumeIO :
    String
    -> (EnableVolumeIOOptions -> EnableVolumeIOOptions)
    -> AWS.Request ()
enableVolumeIO volumeId setOptions =
  let
    options = setOptions (EnableVolumeIOOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "EnableVolumeIO"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a enableVolumeIO request
-}
type alias EnableVolumeIOOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC's route tables have existing routes for address ranges within the <code>10.0.0.0/8</code> IP address range, excluding local routes for VPCs in the <code>10.0.0.0/16</code> and <code>10.1.0.0/16</code> IP address ranges. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the Amazon Elastic Compute Cloud User Guide.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
enableVpcClassicLink :
    String
    -> (EnableVpcClassicLinkOptions -> EnableVpcClassicLinkOptions)
    -> AWS.Request EnableVpcClassicLinkResult
enableVpcClassicLink vpcId setOptions =
  let
    options = setOptions (EnableVpcClassicLinkOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "EnableVpcClassicLink"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enableVpcClassicLinkResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a enableVpcClassicLink request
-}
type alias EnableVpcClassicLinkOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it's linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information about ClassicLink, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html">ClassicLink</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__



-}
enableVpcClassicLinkDnsSupport :
    (EnableVpcClassicLinkDnsSupportOptions -> EnableVpcClassicLinkDnsSupportOptions)
    -> AWS.Request EnableVpcClassicLinkDnsSupportResult
enableVpcClassicLinkDnsSupport setOptions =
  let
    options = setOptions (EnableVpcClassicLinkDnsSupportOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "EnableVpcClassicLinkDnsSupport"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        enableVpcClassicLinkDnsSupportResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a enableVpcClassicLinkDnsSupport request
-}
type alias EnableVpcClassicLinkDnsSupportOptions =
    { vpcId : Maybe String
    }



{-| <p>Gets the console output for the specified instance.</p> <p>Instances do not have a physical monitor through which you can view their console output. They also lack physical controls that allow you to power up, reboot, or shut them down. To allow these actions, we provide them through the Amazon EC2 API and command line interface.</p> <p>Instance console output is buffered and posted shortly after instance boot, reboot, and termination. Amazon EC2 preserves the most recent 64 KB output which is available for at least one hour after the most recent post.</p> <p>For Linux instances, the instance console output displays the exact console output that would normally be displayed on a physical monitor attached to a computer. This output is buffered because the instance produces it and then posts it to a store where the instance's owner can retrieve it.</p> <p>For Windows instances, the instance console output includes output from the EC2Config service.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
getConsoleOutput :
    String
    -> (GetConsoleOutputOptions -> GetConsoleOutputOptions)
    -> AWS.Request GetConsoleOutputResult
getConsoleOutput instanceId setOptions =
  let
    options = setOptions (GetConsoleOutputOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetConsoleOutput"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getConsoleOutputResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getConsoleOutput request
-}
type alias GetConsoleOutputOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.</p> <p>The returned content is Base64-encoded.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
getConsoleScreenshot :
    String
    -> (GetConsoleScreenshotOptions -> GetConsoleScreenshotOptions)
    -> AWS.Request GetConsoleScreenshotResult
getConsoleScreenshot instanceId setOptions =
  let
    options = setOptions (GetConsoleScreenshotOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetConsoleScreenshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getConsoleScreenshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getConsoleScreenshot request
-}
type alias GetConsoleScreenshotOptions =
    { dryRun : Maybe Bool
    , wakeUp : Maybe Bool
    }



{-| <p>Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation.</p> <p>This is a preview of the <a>PurchaseHostReservation</a> action and does not result in the offering being purchased.</p>

__Required Parameters__

* `offeringId` __:__ `String`
* `hostIdSet` __:__ `(List String)`


-}
getHostReservationPurchasePreview :
    String
    -> (List String)
    -> AWS.Request GetHostReservationPurchasePreviewResult
getHostReservationPurchasePreview offeringId hostIdSet =
    AWS.Http.unsignedRequest
        "GetHostReservationPurchasePreview"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getHostReservationPurchasePreviewResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves the encrypted administrator password for an instance running Windows.</p> <p>The Windows password is generated at boot if the <code>EC2Config</code> service plugin, <code>Ec2SetPassword</code>, is enabled. This usually only happens the first time an AMI is launched, and then <code>Ec2SetPassword</code> is automatically disabled. The password is not generated for rebundled AMIs unless <code>Ec2SetPassword</code> is enabled before bundling.</p> <p>The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.</p> <p>Password generation and encryption takes a few moments. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
getPasswordData :
    String
    -> (GetPasswordDataOptions -> GetPasswordDataOptions)
    -> AWS.Request GetPasswordDataResult
getPasswordData instanceId setOptions =
  let
    options = setOptions (GetPasswordDataOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetPasswordData"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPasswordDataResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getPasswordData request
-}
type alias GetPasswordDataOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Returns details about the values and term of your specified Convertible Reserved Instances. When a target configuration is specified, it returns information about whether the exchange is valid and can be performed.</p>

__Required Parameters__

* `reservedInstanceIds` __:__ `(List String)`


-}
getReservedInstancesExchangeQuote :
    (List String)
    -> (GetReservedInstancesExchangeQuoteOptions -> GetReservedInstancesExchangeQuoteOptions)
    -> AWS.Request GetReservedInstancesExchangeQuoteResult
getReservedInstancesExchangeQuote reservedInstanceIds setOptions =
  let
    options = setOptions (GetReservedInstancesExchangeQuoteOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetReservedInstancesExchangeQuote"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getReservedInstancesExchangeQuoteResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getReservedInstancesExchangeQuote request
-}
type alias GetReservedInstancesExchangeQuoteOptions =
    { dryRun : Maybe Bool
    , targetConfigurations : Maybe (List TargetConfigurationRequest)
    }



{-| <p>Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI). For more information, see <a href="http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html">Importing a VM as an Image Using VM Import/Export</a> in the <i>VM Import/Export User Guide</i>.</p>

__Required Parameters__



-}
importImage :
    (ImportImageOptions -> ImportImageOptions)
    -> AWS.Request ImportImageResult
importImage setOptions =
  let
    options = setOptions (ImportImageOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importImageResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a importImage request
-}
type alias ImportImageOptions =
    { dryRun : Maybe Bool
    , description : Maybe String
    , diskContainers : Maybe (List ImageDiskContainer)
    , licenseType : Maybe String
    , hypervisor : Maybe String
    , architecture : Maybe String
    , platform : Maybe String
    , clientData : Maybe ClientData
    , clientToken : Maybe String
    , roleName : Maybe String
    }



{-| <p>Creates an import instance task using metadata from the specified disk image. <code>ImportInstance</code> only supports single-volume VMs. To import multi-volume VMs, use <a>ImportImage</a>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html">Importing a Virtual Machine Using the Amazon EC2 CLI</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>

__Required Parameters__

* `platform` __:__ `PlatformValues`


-}
importInstance :
    PlatformValues
    -> (ImportInstanceOptions -> ImportInstanceOptions)
    -> AWS.Request ImportInstanceResult
importInstance platform setOptions =
  let
    options = setOptions (ImportInstanceOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importInstanceResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a importInstance request
-}
type alias ImportInstanceOptions =
    { dryRun : Maybe Bool
    , description : Maybe String
    , launchSpecification : Maybe ImportInstanceLaunchSpecification
    , diskImages : Maybe (List DiskImage)
    }



{-| <p>Imports the public key from an RSA key pair that you created with a third-party tool. Compare this with <a>CreateKeyPair</a>, in which AWS creates the key pair and gives the keys to you (AWS keeps a copy of the public key). With ImportKeyPair, you create the key pair and give AWS just the public key. The private key is never transferred between you and AWS.</p> <p>For more information about key pairs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `keyName` __:__ `String`
* `publicKeyMaterial` __:__ `String`


-}
importKeyPair :
    String
    -> String
    -> (ImportKeyPairOptions -> ImportKeyPairOptions)
    -> AWS.Request ImportKeyPairResult
importKeyPair keyName publicKeyMaterial setOptions =
  let
    options = setOptions (ImportKeyPairOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportKeyPair"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importKeyPairResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a importKeyPair request
-}
type alias ImportKeyPairOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Imports a disk into an EBS snapshot.</p>

__Required Parameters__



-}
importSnapshot :
    (ImportSnapshotOptions -> ImportSnapshotOptions)
    -> AWS.Request ImportSnapshotResult
importSnapshot setOptions =
  let
    options = setOptions (ImportSnapshotOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportSnapshot"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importSnapshotResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a importSnapshot request
-}
type alias ImportSnapshotOptions =
    { dryRun : Maybe Bool
    , description : Maybe String
    , diskContainer : Maybe SnapshotDiskContainer
    , clientData : Maybe ClientData
    , clientToken : Maybe String
    , roleName : Maybe String
    }



{-| <p>Creates an import volume task using metadata from the specified disk image.For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/importing-your-volumes-into-amazon-ebs.html">Importing Disks to Amazon EBS</a>.</p> <p>For information about the import manifest referenced by this API action, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html">VM Import Manifest</a>.</p>

__Required Parameters__

* `availabilityZone` __:__ `String`
* `image` __:__ `DiskImageDetail`
* `volume` __:__ `VolumeDetail`


-}
importVolume :
    String
    -> DiskImageDetail
    -> VolumeDetail
    -> (ImportVolumeOptions -> ImportVolumeOptions)
    -> AWS.Request ImportVolumeResult
importVolume availabilityZone image volume setOptions =
  let
    options = setOptions (ImportVolumeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportVolume"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importVolumeResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a importVolume request
-}
type alias ImportVolumeOptions =
    { dryRun : Maybe Bool
    , description : Maybe String
    }



{-| <p>Modify the auto-placement setting of a Dedicated Host. When auto-placement is enabled, AWS will place instances that you launch with a tenancy of <code>host</code>, but without targeting a specific host ID, onto any available Dedicated Host in your account which has auto-placement enabled. When auto-placement is disabled, you need to provide a host ID if you want the instance to launch onto a specific host. If no host ID is provided, the instance will be launched onto a suitable host which has auto-placement enabled.</p>

__Required Parameters__

* `hostIds` __:__ `(List String)`
* `autoPlacement` __:__ `AutoPlacement`


-}
modifyHosts :
    (List String)
    -> AutoPlacement
    -> AWS.Request ModifyHostsResult
modifyHosts hostIds autoPlacement =
    AWS.Http.unsignedRequest
        "ModifyHosts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyHostsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies the ID format for the specified resource on a per-region basis. You can specify that resources should receive longer IDs (17-character IDs) when they are created. The following resource types support longer IDs: <code>instance</code> | <code>reservation</code> | <code>snapshot</code> | <code>volume</code>.</p> <p>This setting applies to the IAM user who makes the request; it does not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user. If you're using this action as the root user, then these settings apply to the entire account, unless an IAM user explicitly overrides these settings for themselves. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>

__Required Parameters__

* `resource` __:__ `String`
* `useLongIds` __:__ `Bool`


-}
modifyIdFormat :
    String
    -> Bool
    -> AWS.Request ()
modifyIdFormat resource useLongIds =
    AWS.Http.unsignedRequest
        "ModifyIdFormat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account. You can specify that resources should receive longer IDs (17-character IDs) when they are created. </p> <p>The following resource types support longer IDs: <code>instance</code> | <code>reservation</code> | <code>snapshot</code> | <code>volume</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html">Resource IDs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. </p> <p>This setting applies to the principal specified in the request; it does not apply to the principal that makes the request. </p> <p>Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant <code>Describe</code> command for the resource type.</p>

__Required Parameters__

* `resource` __:__ `String`
* `useLongIds` __:__ `Bool`
* `principalArn` __:__ `String`


-}
modifyIdentityIdFormat :
    String
    -> Bool
    -> String
    -> AWS.Request ()
modifyIdentityIdFormat resource useLongIds principalArn =
    AWS.Http.unsignedRequest
        "ModifyIdentityIdFormat"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time.</p> <note> <p>AWS Marketplace product codes cannot be modified. Images with an AWS Marketplace product code cannot be made public.</p> </note> <note> <p>The SriovNetSupport enhanced networking attribute cannot be changed using this command. Instead, enable SriovNetSupport on an instance and create an AMI from the instance. This will result in an image with SriovNetSupport enabled.</p> </note>

__Required Parameters__

* `imageId` __:__ `String`


-}
modifyImageAttribute :
    String
    -> (ModifyImageAttributeOptions -> ModifyImageAttributeOptions)
    -> AWS.Request ()
modifyImageAttribute imageId setOptions =
  let
    options = setOptions (ModifyImageAttributeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyImageAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a modifyImageAttribute request
-}
type alias ModifyImageAttributeOptions =
    { dryRun : Maybe Bool
    , attribute : Maybe String
    , operationType : Maybe OperationType
    , userIds : Maybe (List String)
    , userGroups : Maybe (List String)
    , productCodes : Maybe (List String)
    , value : Maybe String
    , launchPermission : Maybe LaunchPermissionModifications
    , description : Maybe AttributeValue
    }



{-| <p>Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.</p> <p>To modify some attributes, the instance must be stopped. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html">Modifying Attributes of a Stopped Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
modifyInstanceAttribute :
    String
    -> (ModifyInstanceAttributeOptions -> ModifyInstanceAttributeOptions)
    -> AWS.Request ()
modifyInstanceAttribute instanceId setOptions =
  let
    options = setOptions (ModifyInstanceAttributeOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyInstanceAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a modifyInstanceAttribute request
-}
type alias ModifyInstanceAttributeOptions =
    { dryRun : Maybe Bool
    , attribute : Maybe InstanceAttributeName
    , value : Maybe String
    , blockDeviceMappings : Maybe (List InstanceBlockDeviceMappingSpecification)
    , sourceDestCheck : Maybe AttributeBooleanValue
    , disableApiTermination : Maybe AttributeBooleanValue
    , instanceType : Maybe AttributeValue
    , kernel : Maybe AttributeValue
    , ramdisk : Maybe AttributeValue
    , userData : Maybe BlobAttributeValue
    , instanceInitiatedShutdownBehavior : Maybe AttributeValue
    , groups : Maybe (List String)
    , ebsOptimized : Maybe AttributeBooleanValue
    , sriovNetSupport : Maybe AttributeValue
    , enaSupport : Maybe AttributeBooleanValue
    }



{-| <p>Set the instance affinity value for a specific stopped instance and modify the instance tenancy setting.</p> <p>Instance affinity is disabled by default. When instance affinity is <code>host</code> and it is not associated with a specific Dedicated Host, the next time it is launched it will automatically be associated with the host it lands on. This relationship will persist if the instance is stopped/started, or rebooted.</p> <p>You can modify the host ID associated with a stopped instance. If a stopped instance has a new host ID association, the instance will target that host when restarted.</p> <p>You can modify the tenancy of a stopped instance with a tenancy of <code>host</code> or <code>dedicated</code>.</p> <p>Affinity, hostID, and tenancy are not required parameters, but at least one of them must be specified in the request. Affinity and tenancy can be modified in the same request, but tenancy can only be modified on instances that are stopped.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
modifyInstancePlacement :
    String
    -> (ModifyInstancePlacementOptions -> ModifyInstancePlacementOptions)
    -> AWS.Request ModifyInstancePlacementResult
modifyInstancePlacement instanceId setOptions =
  let
    options = setOptions (ModifyInstancePlacementOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyInstancePlacement"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyInstancePlacementResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyInstancePlacement request
-}
type alias ModifyInstancePlacementOptions =
    { tenancy : Maybe HostTenancy
    , affinity : Maybe Affinity
    , hostId : Maybe String
    }



{-| <p>Modifies the specified network interface attribute. You can specify only one attribute at a time.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`


-}
modifyNetworkInterfaceAttribute :
    String
    -> (ModifyNetworkInterfaceAttributeOptions -> ModifyNetworkInterfaceAttributeOptions)
    -> AWS.Request ()
modifyNetworkInterfaceAttribute networkInterfaceId setOptions =
  let
    options = setOptions (ModifyNetworkInterfaceAttributeOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyNetworkInterfaceAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a modifyNetworkInterfaceAttribute request
-}
type alias ModifyNetworkInterfaceAttributeOptions =
    { dryRun : Maybe Bool
    , description : Maybe AttributeValue
    , sourceDestCheck : Maybe AttributeBooleanValue
    , groups : Maybe (List String)
    , attachment : Maybe NetworkInterfaceAttachmentChanges
    }



{-| <p>Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Standard Reserved Instances. The Reserved Instances to be modified must be identical, except for Availability Zone, network platform, and instance type.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html">Modifying Reserved Instances</a> in the Amazon Elastic Compute Cloud User Guide.</p>

__Required Parameters__

* `reservedInstancesIds` __:__ `(List String)`
* `targetConfigurations` __:__ `(List ReservedInstancesConfiguration)`


-}
modifyReservedInstances :
    (List String)
    -> (List ReservedInstancesConfiguration)
    -> (ModifyReservedInstancesOptions -> ModifyReservedInstancesOptions)
    -> AWS.Request ModifyReservedInstancesResult
modifyReservedInstances reservedInstancesIds targetConfigurations setOptions =
  let
    options = setOptions (ModifyReservedInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyReservedInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyReservedInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyReservedInstances request
-}
type alias ModifyReservedInstancesOptions =
    { clientToken : Maybe String
    }



{-| <p>Adds or removes permission settings for the specified snapshot. You may add or remove specified AWS account IDs from a snapshot's list of create volume permissions, but you cannot do both in a single API call. If you need to both add and remove account IDs for a snapshot, you must use multiple API calls.</p> <note> <p>Encrypted snapshots and snapshots with AWS Marketplace product codes cannot be made public. Snapshots encrypted with your default CMK cannot be shared with other accounts.</p> </note> <p>For more information on modifying snapshot permissions, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html">Sharing Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `snapshotId` __:__ `String`


-}
modifySnapshotAttribute :
    String
    -> (ModifySnapshotAttributeOptions -> ModifySnapshotAttributeOptions)
    -> AWS.Request ()
modifySnapshotAttribute snapshotId setOptions =
  let
    options = setOptions (ModifySnapshotAttributeOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifySnapshotAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a modifySnapshotAttribute request
-}
type alias ModifySnapshotAttributeOptions =
    { dryRun : Maybe Bool
    , attribute : Maybe SnapshotAttributeName
    , operationType : Maybe OperationType
    , userIds : Maybe (List String)
    , groupNames : Maybe (List String)
    , createVolumePermission : Maybe CreateVolumePermissionModifications
    }



{-| <p>Modifies the specified Spot fleet request.</p> <p>While the Spot fleet request is being modified, it is in the <code>modifying</code> state.</p> <p>To scale up your Spot fleet, increase its target capacity. The Spot fleet launches the additional Spot instances according to the allocation strategy for the Spot fleet request. If the allocation strategy is <code>lowestPrice</code>, the Spot fleet launches instances using the Spot pool with the lowest price. If the allocation strategy is <code>diversified</code>, the Spot fleet distributes the instances across the Spot pools.</p> <p>To scale down your Spot fleet, decrease its target capacity. First, the Spot fleet cancels any open bids that exceed the new target capacity. You can request that the Spot fleet terminate Spot instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is <code>lowestPrice</code>, the Spot fleet terminates the instances with the highest price per unit. If the allocation strategy is <code>diversified</code>, the Spot fleet terminates instances across the Spot pools. Alternatively, you can request that the Spot fleet keep the fleet at its current size, but not replace any Spot instances that are interrupted or that you terminate manually.</p>

__Required Parameters__

* `spotFleetRequestId` __:__ `String`


-}
modifySpotFleetRequest :
    String
    -> (ModifySpotFleetRequestOptions -> ModifySpotFleetRequestOptions)
    -> AWS.Request ModifySpotFleetRequestResponse
modifySpotFleetRequest spotFleetRequestId setOptions =
  let
    options = setOptions (ModifySpotFleetRequestOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifySpotFleetRequest"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifySpotFleetRequestResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifySpotFleetRequest request
-}
type alias ModifySpotFleetRequestOptions =
    { targetCapacity : Maybe Int
    , excessCapacityTerminationPolicy : Maybe ExcessCapacityTerminationPolicy
    }



{-| <p>Modifies a subnet attribute. You can only modify one attribute at a time.</p>

__Required Parameters__

* `subnetId` __:__ `String`


-}
modifySubnetAttribute :
    String
    -> (ModifySubnetAttributeOptions -> ModifySubnetAttributeOptions)
    -> AWS.Request ()
modifySubnetAttribute subnetId setOptions =
  let
    options = setOptions (ModifySubnetAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifySubnetAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a modifySubnetAttribute request
-}
type alias ModifySubnetAttributeOptions =
    { mapPublicIpOnLaunch : Maybe AttributeBooleanValue
    , assignIpv6AddressOnCreation : Maybe AttributeBooleanValue
    }



{-| <p>Modifies a volume attribute.</p> <p>By default, all I/O operations for the volume are suspended when the data on the volume is determined to be potentially inconsistent, to prevent undetectable, latent data corruption. The I/O access to the volume can be resumed by first enabling I/O access and then checking the data consistency on your volume.</p> <p>You can change the default behavior to resume I/O operations. We recommend that you change this only for boot volumes or for volumes that are stateless or disposable.</p>

__Required Parameters__

* `volumeId` __:__ `String`


-}
modifyVolumeAttribute :
    String
    -> (ModifyVolumeAttributeOptions -> ModifyVolumeAttributeOptions)
    -> AWS.Request ()
modifyVolumeAttribute volumeId setOptions =
  let
    options = setOptions (ModifyVolumeAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyVolumeAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a modifyVolumeAttribute request
-}
type alias ModifyVolumeAttributeOptions =
    { dryRun : Maybe Bool
    , autoEnableIO : Maybe AttributeBooleanValue
    }



{-| <p>Modifies the specified attribute of the specified VPC.</p>

__Required Parameters__

* `vpcId` __:__ `String`


-}
modifyVpcAttribute :
    String
    -> (ModifyVpcAttributeOptions -> ModifyVpcAttributeOptions)
    -> AWS.Request ()
modifyVpcAttribute vpcId setOptions =
  let
    options = setOptions (ModifyVpcAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyVpcAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a modifyVpcAttribute request
-}
type alias ModifyVpcAttributeOptions =
    { enableDnsSupport : Maybe AttributeBooleanValue
    , enableDnsHostnames : Maybe AttributeBooleanValue
    }



{-| <p>Modifies attributes of a specified VPC endpoint. You can modify the policy associated with the endpoint, and you can add and remove route tables associated with the endpoint.</p>

__Required Parameters__

* `vpcEndpointId` __:__ `String`


-}
modifyVpcEndpoint :
    String
    -> (ModifyVpcEndpointOptions -> ModifyVpcEndpointOptions)
    -> AWS.Request ModifyVpcEndpointResult
modifyVpcEndpoint vpcEndpointId setOptions =
  let
    options = setOptions (ModifyVpcEndpointOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyVpcEndpoint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyVpcEndpointResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyVpcEndpoint request
-}
type alias ModifyVpcEndpointOptions =
    { dryRun : Maybe Bool
    , resetPolicy : Maybe Bool
    , policyDocument : Maybe String
    , addRouteTableIds : Maybe (List String)
    , removeRouteTableIds : Maybe (List String)
    }



{-| <p>Modifies the VPC peering connection options on one side of a VPC peering connection. You can do the following:</p> <ul> <li> <p>Enable/disable communication over the peering connection between an EC2-Classic instance that's linked to your VPC (using ClassicLink) and instances in the peer VPC.</p> </li> <li> <p>Enable/disable communication over the peering connection between instances in your VPC and an EC2-Classic instance that's linked to the peer VPC.</p> </li> <li> <p>Enable/disable a local VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.</p> </li> </ul> <p>If the peered VPCs are in different accounts, each owner must initiate a separate request to modify the peering connection options, depending on whether their VPC was the requester or accepter for the VPC peering connection. If the peered VPCs are in the same account, you can modify the requester and accepter options in the same request. To confirm which VPC is the accepter and requester for a VPC peering connection, use the <a>DescribeVpcPeeringConnections</a> command.</p>

__Required Parameters__

* `vpcPeeringConnectionId` __:__ `String`


-}
modifyVpcPeeringConnectionOptions :
    String
    -> (ModifyVpcPeeringConnectionOptionsOptions -> ModifyVpcPeeringConnectionOptionsOptions)
    -> AWS.Request ModifyVpcPeeringConnectionOptionsResult
modifyVpcPeeringConnectionOptions vpcPeeringConnectionId setOptions =
  let
    options = setOptions (ModifyVpcPeeringConnectionOptionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyVpcPeeringConnectionOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyVpcPeeringConnectionOptionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyVpcPeeringConnectionOptions request
-}
type alias ModifyVpcPeeringConnectionOptionsOptions =
    { dryRun : Maybe Bool
    , requesterPeeringConnectionOptions : Maybe PeeringConnectionOptionsRequest
    , accepterPeeringConnectionOptions : Maybe PeeringConnectionOptionsRequest
    }



{-| <p>Enables detailed monitoring for a running instance. Otherwise, basic monitoring is enabled. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html">Monitoring Your Instances and Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>To disable detailed monitoring, see .</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
monitorInstances :
    (List String)
    -> (MonitorInstancesOptions -> MonitorInstancesOptions)
    -> AWS.Request MonitorInstancesResult
monitorInstances instanceIds setOptions =
  let
    options = setOptions (MonitorInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "MonitorInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        monitorInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a monitorInstances request
-}
type alias MonitorInstancesOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform. The Elastic IP address must be allocated to your account for more than 24 hours, and it must not be associated with an instance. After the Elastic IP address is moved, it is no longer available for use in the EC2-Classic platform, unless you move it back using the <a>RestoreAddressToClassic</a> request. You cannot move an Elastic IP address that was originally allocated for use in the EC2-VPC platform to the EC2-Classic platform. </p>

__Required Parameters__

* `publicIp` __:__ `String`


-}
moveAddressToVpc :
    String
    -> (MoveAddressToVpcOptions -> MoveAddressToVpcOptions)
    -> AWS.Request MoveAddressToVpcResult
moveAddressToVpc publicIp setOptions =
  let
    options = setOptions (MoveAddressToVpcOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "MoveAddressToVpc"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        moveAddressToVpcResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a moveAddressToVpc request
-}
type alias MoveAddressToVpcOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.</p>

__Required Parameters__

* `offeringId` __:__ `String`
* `hostIdSet` __:__ `(List String)`


-}
purchaseHostReservation :
    String
    -> (List String)
    -> (PurchaseHostReservationOptions -> PurchaseHostReservationOptions)
    -> AWS.Request PurchaseHostReservationResult
purchaseHostReservation offeringId hostIdSet setOptions =
  let
    options = setOptions (PurchaseHostReservationOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PurchaseHostReservation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseHostReservationResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a purchaseHostReservation request
-}
type alias PurchaseHostReservationOptions =
    { limitPrice : Maybe String
    , currencyCode : Maybe CurrencyCodeValues
    , clientToken : Maybe String
    }



{-| <p>Purchases a Reserved Instance for use with your account. With Reserved Instances, you pay a lower hourly rate compared to On-Demand instance pricing.</p> <p>Use <a>DescribeReservedInstancesOfferings</a> to get a list of Reserved Instance offerings that match your specifications. After you've purchased a Reserved Instance, you can check for your new Reserved Instance with <a>DescribeReservedInstances</a>.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html">Reserved Instances</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html">Reserved Instance Marketplace</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `reservedInstancesOfferingId` __:__ `String`
* `instanceCount` __:__ `Int`


-}
purchaseReservedInstancesOffering :
    String
    -> Int
    -> (PurchaseReservedInstancesOfferingOptions -> PurchaseReservedInstancesOfferingOptions)
    -> AWS.Request PurchaseReservedInstancesOfferingResult
purchaseReservedInstancesOffering reservedInstancesOfferingId instanceCount setOptions =
  let
    options = setOptions (PurchaseReservedInstancesOfferingOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PurchaseReservedInstancesOffering"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseReservedInstancesOfferingResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a purchaseReservedInstancesOffering request
-}
type alias PurchaseReservedInstancesOfferingOptions =
    { dryRun : Maybe Bool
    , limitPrice : Maybe ReservedInstanceLimitPrice
    }



{-| <p>Purchases one or more Scheduled Instances with the specified schedule.</p> <p>Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call <a>DescribeScheduledInstanceAvailability</a> to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call <a>RunScheduledInstances</a> during each scheduled time period.</p> <p>After you purchase a Scheduled Instance, you can't cancel, modify, or resell your purchase.</p>

__Required Parameters__

* `purchaseRequests` __:__ `(List PurchaseRequest)`


-}
purchaseScheduledInstances :
    (List PurchaseRequest)
    -> (PurchaseScheduledInstancesOptions -> PurchaseScheduledInstancesOptions)
    -> AWS.Request PurchaseScheduledInstancesResult
purchaseScheduledInstances purchaseRequests setOptions =
  let
    options = setOptions (PurchaseScheduledInstancesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PurchaseScheduledInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseScheduledInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a purchaseScheduledInstances request
-}
type alias PurchaseScheduledInstancesOptions =
    { dryRun : Maybe Bool
    , clientToken : Maybe String
    }



{-| <p>Requests a reboot of one or more instances. This operation is asynchronous; it only queues a request to reboot the specified instances. The operation succeeds if the instances are valid and belong to you. Requests to reboot terminated instances are ignored.</p> <p>If an instance does not cleanly shut down within four minutes, Amazon EC2 performs a hard reboot.</p> <p>For more information about troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html">Getting Console Output and Rebooting Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
rebootInstances :
    (List String)
    -> (RebootInstancesOptions -> RebootInstancesOptions)
    -> AWS.Request ()
rebootInstances instanceIds setOptions =
  let
    options = setOptions (RebootInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RebootInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a rebootInstances request
-}
type alias RebootInstancesOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Registers an AMI. When you're creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html">Creating Your Own AMIs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <note> <p>For Amazon EBS-backed instances, <a>CreateImage</a> creates and registers the AMI in a single request, so you don't have to register the AMI yourself.</p> </note> <p>You can also use <code>RegisterImage</code> to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_LaunchingInstanceFromSnapshot.html">Launching an Instance from a Snapshot</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <important> <p>Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 <code>billingProduct</code> code associated with an AMI to verify subscription status for package updates. Creating an AMI from an EBS snapshot does not maintain this billing code, and subsequent instances launched from such an AMI will not be able to connect to package update infrastructure.</p> <p>Similarly, although you can create a Windows AMI from a snapshot, you can't successfully launch an instance from the AMI.</p> <p>To create Windows AMIs or to create AMIs for Linux operating systems that must retain AMI billing codes to work properly, see <a>CreateImage</a>.</p> </important> <p>If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.</p> <note> <p>You can't register an image where a secondary (non-root) snapshot has AWS Marketplace product codes.</p> </note>

__Required Parameters__

* `name` __:__ `String`


-}
registerImage :
    String
    -> (RegisterImageOptions -> RegisterImageOptions)
    -> AWS.Request RegisterImageResult
registerImage name setOptions =
  let
    options = setOptions (RegisterImageOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerImageResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a registerImage request
-}
type alias RegisterImageOptions =
    { dryRun : Maybe Bool
    , imageLocation : Maybe String
    , description : Maybe String
    , architecture : Maybe ArchitectureValues
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , rootDeviceName : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , virtualizationType : Maybe String
    , sriovNetSupport : Maybe String
    , enaSupport : Maybe Bool
    }



{-| <p>Rejects a VPC peering connection request. The VPC peering connection must be in the <code>pending-acceptance</code> state. Use the <a>DescribeVpcPeeringConnections</a> request to view your outstanding VPC peering connection requests. To delete an active VPC peering connection, or to delete a VPC peering connection request that you initiated, use <a>DeleteVpcPeeringConnection</a>.</p>

__Required Parameters__

* `vpcPeeringConnectionId` __:__ `String`


-}
rejectVpcPeeringConnection :
    String
    -> (RejectVpcPeeringConnectionOptions -> RejectVpcPeeringConnectionOptions)
    -> AWS.Request RejectVpcPeeringConnectionResult
rejectVpcPeeringConnection vpcPeeringConnectionId setOptions =
  let
    options = setOptions (RejectVpcPeeringConnectionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RejectVpcPeeringConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rejectVpcPeeringConnectionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a rejectVpcPeeringConnection request
-}
type alias RejectVpcPeeringConnectionOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Releases the specified Elastic IP address.</p> <p>After releasing an Elastic IP address, it is released to the IP address pool and might be unavailable to you. Be sure to update your DNS records and any servers or devices that communicate with the address. If you attempt to release an Elastic IP address that you already released, you'll get an <code>AuthFailure</code> error if the address is already allocated to another AWS account.</p> <p>[EC2-Classic, default VPC] Releasing an Elastic IP address automatically disassociates it from any instance that it's associated with. To disassociate an Elastic IP address without releasing it, use <a>DisassociateAddress</a>.</p> <p>[Nondefault VPC] You must use <a>DisassociateAddress</a> to disassociate the Elastic IP address before you try to release it. Otherwise, Amazon EC2 returns an error (<code>InvalidIPAddress.InUse</code>).</p>

__Required Parameters__



-}
releaseAddress :
    (ReleaseAddressOptions -> ReleaseAddressOptions)
    -> AWS.Request ()
releaseAddress setOptions =
  let
    options = setOptions (ReleaseAddressOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ReleaseAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a releaseAddress request
-}
type alias ReleaseAddressOptions =
    { dryRun : Maybe Bool
    , publicIp : Maybe String
    , allocationId : Maybe String
    }



{-| <p>When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into <code>released</code> state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, e.g., ModifyHosts. You must stop or terminate all instances on a host before it can be released.</p> <p>When Dedicated Hosts are released, it make take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated hosts. Try waiting a few minutes, and then try again.</p> <p>Released hosts will still appear in a <a>DescribeHosts</a> response.</p>

__Required Parameters__

* `hostIds` __:__ `(List String)`


-}
releaseHosts :
    (List String)
    -> AWS.Request ReleaseHostsResult
releaseHosts hostIds =
    AWS.Http.unsignedRequest
        "ReleaseHosts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        releaseHostsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Changes which network ACL a subnet is associated with. By default when you create a subnet, it's automatically associated with the default network ACL. For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `associationId` __:__ `String`
* `networkAclId` __:__ `String`


-}
replaceNetworkAclAssociation :
    String
    -> String
    -> (ReplaceNetworkAclAssociationOptions -> ReplaceNetworkAclAssociationOptions)
    -> AWS.Request ReplaceNetworkAclAssociationResult
replaceNetworkAclAssociation associationId networkAclId setOptions =
  let
    options = setOptions (ReplaceNetworkAclAssociationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ReplaceNetworkAclAssociation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        replaceNetworkAclAssociationResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a replaceNetworkAclAssociation request
-}
type alias ReplaceNetworkAclAssociationOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Replaces an entry (rule) in a network ACL. For more information about network ACLs, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html">Network ACLs</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `networkAclId` __:__ `String`
* `ruleNumber` __:__ `Int`
* `protocol` __:__ `String`
* `ruleAction` __:__ `RuleAction`
* `egress` __:__ `Bool`


-}
replaceNetworkAclEntry :
    String
    -> Int
    -> String
    -> RuleAction
    -> Bool
    -> (ReplaceNetworkAclEntryOptions -> ReplaceNetworkAclEntryOptions)
    -> AWS.Request ()
replaceNetworkAclEntry networkAclId ruleNumber protocol ruleAction egress setOptions =
  let
    options = setOptions (ReplaceNetworkAclEntryOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ReplaceNetworkAclEntry"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a replaceNetworkAclEntry request
-}
type alias ReplaceNetworkAclEntryOptions =
    { dryRun : Maybe Bool
    , cidrBlock : Maybe String
    , ipv6CidrBlock : Maybe String
    , icmpTypeCode : Maybe IcmpTypeCode
    , portRange : Maybe PortRange
    }



{-| <p>Replaces an existing route within a route table in a VPC. You must provide only one of the following: Internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only Internet gateway.</p> <p>For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `routeTableId` __:__ `String`


-}
replaceRoute :
    String
    -> (ReplaceRouteOptions -> ReplaceRouteOptions)
    -> AWS.Request ()
replaceRoute routeTableId setOptions =
  let
    options = setOptions (ReplaceRouteOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ReplaceRoute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a replaceRoute request
-}
type alias ReplaceRouteOptions =
    { dryRun : Maybe Bool
    , destinationCidrBlock : Maybe String
    , gatewayId : Maybe String
    , destinationIpv6CidrBlock : Maybe String
    , egressOnlyInternetGatewayId : Maybe String
    , instanceId : Maybe String
    , networkInterfaceId : Maybe String
    , vpcPeeringConnectionId : Maybe String
    , natGatewayId : Maybe String
    }



{-| <p>Changes the route table associated with a given subnet in a VPC. After the operation completes, the subnet uses the routes in the new route table it's associated with. For more information about route tables, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html">Route Tables</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p> <p>You can also use ReplaceRouteTableAssociation to change which table is the main route table in the VPC. You just specify the main route table's association ID and the route table to be the new main route table.</p>

__Required Parameters__

* `associationId` __:__ `String`
* `routeTableId` __:__ `String`


-}
replaceRouteTableAssociation :
    String
    -> String
    -> (ReplaceRouteTableAssociationOptions -> ReplaceRouteTableAssociationOptions)
    -> AWS.Request ReplaceRouteTableAssociationResult
replaceRouteTableAssociation associationId routeTableId setOptions =
  let
    options = setOptions (ReplaceRouteTableAssociationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ReplaceRouteTableAssociation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        replaceRouteTableAssociationResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a replaceRouteTableAssociation request
-}
type alias ReplaceRouteTableAssociationOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Submits feedback about the status of an instance. The instance must be in the <code>running</code> state. If your experience with the instance differs from the instance status returned by <a>DescribeInstanceStatus</a>, use <a>ReportInstanceStatus</a> to report your experience with the instance. Amazon EC2 collects this information to improve the accuracy of status checks.</p> <p>Use of this action does not change the value returned by <a>DescribeInstanceStatus</a>.</p>

__Required Parameters__

* `instances` __:__ `(List String)`
* `status` __:__ `ReportStatusType`
* `reasonCodes` __:__ `(List ReportInstanceReasonCodes)`


-}
reportInstanceStatus :
    (List String)
    -> ReportStatusType
    -> (List ReportInstanceReasonCodes)
    -> (ReportInstanceStatusOptions -> ReportInstanceStatusOptions)
    -> AWS.Request ()
reportInstanceStatus instances status reasonCodes setOptions =
  let
    options = setOptions (ReportInstanceStatusOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ReportInstanceStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a reportInstanceStatus request
-}
type alias ReportInstanceStatusOptions =
    { dryRun : Maybe Bool
    , startTime : Maybe Date
    , endTime : Maybe Date
    , description : Maybe String
    }



{-| <p>Creates a Spot fleet request.</p> <p>You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.</p> <p>By default, the Spot fleet requests Spot instances in the Spot pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.</p> <p>Alternatively, you can specify that the Spot fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot instances in your Spot fleet are in different Spot pools, you can improve the availability of your fleet.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html">Spot Fleet Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `spotFleetRequestConfig` __:__ `SpotFleetRequestConfigData`


-}
requestSpotFleet :
    SpotFleetRequestConfigData
    -> (RequestSpotFleetOptions -> RequestSpotFleetOptions)
    -> AWS.Request RequestSpotFleetResponse
requestSpotFleet spotFleetRequestConfig setOptions =
  let
    options = setOptions (RequestSpotFleetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RequestSpotFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        requestSpotFleetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a requestSpotFleet request
-}
type alias RequestSpotFleetOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Creates a Spot instance request. Spot instances are instances that Amazon EC2 launches when the bid price that you specify exceeds the current Spot price. Amazon EC2 periodically sets the Spot price based on available Spot Instance capacity and current Spot instance requests. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html">Spot Instance Requests</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `spotPrice` __:__ `String`


-}
requestSpotInstances :
    String
    -> (RequestSpotInstancesOptions -> RequestSpotInstancesOptions)
    -> AWS.Request RequestSpotInstancesResult
requestSpotInstances spotPrice setOptions =
  let
    options = setOptions (RequestSpotInstancesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RequestSpotInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        requestSpotInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a requestSpotInstances request
-}
type alias RequestSpotInstancesOptions =
    { dryRun : Maybe Bool
    , clientToken : Maybe String
    , instanceCount : Maybe Int
    , type_ : Maybe SpotInstanceType
    , validFrom : Maybe Date
    , validUntil : Maybe Date
    , launchGroup : Maybe String
    , availabilityZoneGroup : Maybe String
    , blockDurationMinutes : Maybe Int
    , launchSpecification : Maybe RequestSpotLaunchSpecification
    }



{-| <p>Resets an attribute of an AMI to its default value.</p> <note> <p>The productCodes attribute can't be reset.</p> </note>

__Required Parameters__

* `imageId` __:__ `String`
* `attribute` __:__ `ResetImageAttributeName`


-}
resetImageAttribute :
    String
    -> ResetImageAttributeName
    -> (ResetImageAttributeOptions -> ResetImageAttributeOptions)
    -> AWS.Request ()
resetImageAttribute imageId attribute setOptions =
  let
    options = setOptions (ResetImageAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetImageAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a resetImageAttribute request
-}
type alias ResetImageAttributeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Resets an attribute of an instance to its default value. To reset the <code>kernel</code> or <code>ramdisk</code>, the instance must be in a stopped state. To reset the <code>sourceDestCheck</code>, the instance can be either running or stopped.</p> <p>The <code>sourceDestCheck</code> attribute controls whether source/destination checking is enabled. The default value is <code>true</code>, which means checking is enabled. This value must be <code>false</code> for a NAT instance to perform NAT. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html">NAT Instances</a> in the <i>Amazon Virtual Private Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `attribute` __:__ `InstanceAttributeName`


-}
resetInstanceAttribute :
    String
    -> InstanceAttributeName
    -> (ResetInstanceAttributeOptions -> ResetInstanceAttributeOptions)
    -> AWS.Request ()
resetInstanceAttribute instanceId attribute setOptions =
  let
    options = setOptions (ResetInstanceAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetInstanceAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a resetInstanceAttribute request
-}
type alias ResetInstanceAttributeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Resets a network interface attribute. You can specify only one attribute at a time.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`


-}
resetNetworkInterfaceAttribute :
    String
    -> (ResetNetworkInterfaceAttributeOptions -> ResetNetworkInterfaceAttributeOptions)
    -> AWS.Request ()
resetNetworkInterfaceAttribute networkInterfaceId setOptions =
  let
    options = setOptions (ResetNetworkInterfaceAttributeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetNetworkInterfaceAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a resetNetworkInterfaceAttribute request
-}
type alias ResetNetworkInterfaceAttributeOptions =
    { dryRun : Maybe Bool
    , sourceDestCheck : Maybe String
    }



{-| <p>Resets permission settings for the specified snapshot.</p> <p>For more information on modifying snapshot permissions, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html">Sharing Snapshots</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `snapshotId` __:__ `String`
* `attribute` __:__ `SnapshotAttributeName`


-}
resetSnapshotAttribute :
    String
    -> SnapshotAttributeName
    -> (ResetSnapshotAttributeOptions -> ResetSnapshotAttributeOptions)
    -> AWS.Request ()
resetSnapshotAttribute snapshotId attribute setOptions =
  let
    options = setOptions (ResetSnapshotAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetSnapshotAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a resetSnapshotAttribute request
-}
type alias ResetSnapshotAttributeOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform. You cannot move an Elastic IP address that was originally allocated for use in EC2-VPC. The Elastic IP address must not be associated with an instance or network interface.</p>

__Required Parameters__

* `publicIp` __:__ `String`


-}
restoreAddressToClassic :
    String
    -> (RestoreAddressToClassicOptions -> RestoreAddressToClassicOptions)
    -> AWS.Request RestoreAddressToClassicResult
restoreAddressToClassic publicIp setOptions =
  let
    options = setOptions (RestoreAddressToClassicOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreAddressToClassic"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreAddressToClassicResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a restoreAddressToClassic request
-}
type alias RestoreAddressToClassicOptions =
    { dryRun : Maybe Bool
    }



{-| <p>[EC2-VPC only] Removes one or more egress rules from a security group for EC2-VPC. This action doesn't apply to security groups for use in EC2-Classic. The values that you specify in the revoke request (for example, ports) must match the existing rule's values for the rule to be revoked.</p> <p>Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p>

__Required Parameters__

* `groupId` __:__ `String`


-}
revokeSecurityGroupEgress :
    String
    -> (RevokeSecurityGroupEgressOptions -> RevokeSecurityGroupEgressOptions)
    -> AWS.Request ()
revokeSecurityGroupEgress groupId setOptions =
  let
    options = setOptions (RevokeSecurityGroupEgressOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RevokeSecurityGroupEgress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a revokeSecurityGroupEgress request
-}
type alias RevokeSecurityGroupEgressOptions =
    { dryRun : Maybe Bool
    , sourceSecurityGroupName : Maybe String
    , sourceSecurityGroupOwnerId : Maybe String
    , ipProtocol : Maybe String
    , fromPort : Maybe Int
    , toPort : Maybe Int
    , cidrIp : Maybe String
    , ipPermissions : Maybe (List IpPermission)
    }



{-| <p>Removes one or more ingress rules from a security group. The values that you specify in the revoke request (for example, ports) must match the existing rule's values for the rule to be removed.</p> <p>Each rule consists of the protocol and the CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code.</p> <p>Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.</p>

__Required Parameters__



-}
revokeSecurityGroupIngress :
    (RevokeSecurityGroupIngressOptions -> RevokeSecurityGroupIngressOptions)
    -> AWS.Request ()
revokeSecurityGroupIngress setOptions =
  let
    options = setOptions (RevokeSecurityGroupIngressOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RevokeSecurityGroupIngress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a revokeSecurityGroupIngress request
-}
type alias RevokeSecurityGroupIngressOptions =
    { dryRun : Maybe Bool
    , groupName : Maybe String
    , groupId : Maybe String
    , sourceSecurityGroupName : Maybe String
    , sourceSecurityGroupOwnerId : Maybe String
    , ipProtocol : Maybe String
    , fromPort : Maybe Int
    , toPort : Maybe Int
    , cidrIp : Maybe String
    , ipPermissions : Maybe (List IpPermission)
    }



{-| <p>Launches the specified number of instances using an AMI for which you have permissions. </p> <p>You can specify a number of options, or leave the default options. The following rules apply:</p> <ul> <li> <p>[EC2-VPC] If you don't specify a subnet ID, we choose a default subnet from your default VPC for you. If you don't have a default VPC, you must specify a subnet ID in the request.</p> </li> <li> <p>[EC2-Classic] If don't specify an Availability Zone, we choose one for you.</p> </li> <li> <p>Some instance types must be launched into a VPC. If you do not have a default VPC, or if you do not specify a subnet ID, the request fails. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types">Instance Types Available Only in a VPC</a>.</p> </li> <li> <p>[EC2-VPC] All instances have a network interface with a primary private IPv4 address. If you don't specify this address, we choose one from the IPv4 range of your subnet.</p> </li> <li> <p>Not all instance types support IPv6 addresses. For more information, see <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a>.</p> </li> <li> <p>If you don't specify a security group ID, we use the default security group. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html">Security Groups</a>.</p> </li> <li> <p>If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.</p> </li> </ul> <p>To ensure faster instance launches, break up large requests into smaller batches. For example, create 5 separate launch requests for 100 instances each instead of 1 launch request for 500 instances.</p> <p>An instance is ready for you to use when it's in the <code>running</code> state. You can check the state of your instance using <a>DescribeInstances</a>. After launch, you can apply tags to your running instance (requires a resource ID). For more information, see <a>CreateTags</a> and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a>.</p> <p>Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html">Key Pairs</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html">What To Do If An Instance Immediately Terminates</a>, and <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html">Troubleshooting Connecting to Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `imageId` __:__ `String`
* `minCount` __:__ `Int`
* `maxCount` __:__ `Int`


-}
runInstances :
    String
    -> Int
    -> Int
    -> (RunInstancesOptions -> RunInstancesOptions)
    -> AWS.Request Reservation
runInstances imageId minCount maxCount setOptions =
  let
    options = setOptions (RunInstancesOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RunInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reservationDecoder
        |> AWS.UnsignedRequest


{-| Options for a runInstances request
-}
type alias RunInstancesOptions =
    { dryRun : Maybe Bool
    , keyName : Maybe String
    , securityGroups : Maybe (List String)
    , securityGroupIds : Maybe (List String)
    , userData : Maybe String
    , instanceType : Maybe InstanceType
    , placement : Maybe Placement
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , monitoring : Maybe RunInstancesMonitoringEnabled
    , subnetId : Maybe String
    , disableApiTermination : Maybe Bool
    , instanceInitiatedShutdownBehavior : Maybe ShutdownBehavior
    , privateIpAddress : Maybe String
    , ipv6Addresses : Maybe (List InstanceIpv6Address)
    , ipv6AddressCount : Maybe Int
    , clientToken : Maybe String
    , additionalInfo : Maybe String
    , networkInterfaces : Maybe (List InstanceNetworkInterfaceSpecification)
    , iamInstanceProfile : Maybe IamInstanceProfileSpecification
    , ebsOptimized : Maybe Bool
    }



{-| <p>Launches the specified Scheduled Instances.</p> <p>Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using <a>PurchaseScheduledInstances</a>.</p> <p>You must launch a Scheduled Instance during its scheduled time period. You can't stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html">Scheduled Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `scheduledInstanceId` __:__ `String`
* `launchSpecification` __:__ `ScheduledInstancesLaunchSpecification`


-}
runScheduledInstances :
    String
    -> ScheduledInstancesLaunchSpecification
    -> (RunScheduledInstancesOptions -> RunScheduledInstancesOptions)
    -> AWS.Request RunScheduledInstancesResult
runScheduledInstances scheduledInstanceId launchSpecification setOptions =
  let
    options = setOptions (RunScheduledInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RunScheduledInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        runScheduledInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a runScheduledInstances request
-}
type alias RunScheduledInstancesOptions =
    { dryRun : Maybe Bool
    , clientToken : Maybe String
    , instanceCount : Maybe Int
    }



{-| <p>Starts an Amazon EBS-backed AMI that you've previously stopped.</p> <p>Instances that use Amazon EBS volumes as their root devices can be quickly stopped and started. When an instance is stopped, the compute resources are released and you are not billed for hourly instance usage. However, your root partition Amazon EBS volume remains, continues to persist your data, and you are charged for Amazon EBS volume usage. You can restart your instance at any time. Each time you transition an instance from stopped to started, Amazon EC2 charges a full instance hour, even if transitions happen multiple times within a single hour.</p> <p>Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.</p> <p>Performing this operation on an instance that uses an instance store as its root device returns an error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html">Stopping Instances</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
startInstances :
    (List String)
    -> (StartInstancesOptions -> StartInstancesOptions)
    -> AWS.Request StartInstancesResult
startInstances instanceIds setOptions =
  let
    options = setOptions (StartInstancesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StartInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a startInstances request
-}
type alias StartInstancesOptions =
    { additionalInfo : Maybe String
    , dryRun : Maybe Bool
    }



{-| <p>Stops an Amazon EBS-backed instance.</p> <p>We don't charge hourly usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains, continues to persist your data, and you are charged for Amazon EBS volume usage. Each time you transition an instance from stopped to started, Amazon EC2 charges a full instance hour, even if transitions happen multiple times within a single hour.</p> <p>You can't start or stop Spot instances, and you can't stop instance store-backed instances.</p> <p>When you stop an instance, we shut it down. You can restart your instance at any time. Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.</p> <p>Stopping an instance is different to rebooting or terminating it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, and terminating instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html">Troubleshooting Stopping Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
stopInstances :
    (List String)
    -> (StopInstancesOptions -> StopInstancesOptions)
    -> AWS.Request StopInstancesResult
stopInstances instanceIds setOptions =
  let
    options = setOptions (StopInstancesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StopInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a stopInstances request
-}
type alias StopInstancesOptions =
    { dryRun : Maybe Bool
    , force : Maybe Bool
    }



{-| <p>Shuts down one or more instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds. </p> <p>If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.</p> <p>Terminated instances remain visible after termination (for approximately one hour).</p> <p>By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.</p> <p>You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the <code>DeleteOnTermination</code> block device mapping parameter set to <code>true</code> are automatically deleted. For more information about the differences between stopping and terminating instances, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html">Instance Lifecycle</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p> <p>For more information about troubleshooting, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html">Troubleshooting Terminating Your Instance</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
terminateInstances :
    (List String)
    -> (TerminateInstancesOptions -> TerminateInstancesOptions)
    -> AWS.Request TerminateInstancesResult
terminateInstances instanceIds setOptions =
  let
    options = setOptions (TerminateInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "TerminateInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        terminateInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a terminateInstances request
-}
type alias TerminateInstancesOptions =
    { dryRun : Maybe Bool
    }



{-| <p>Unassigns one or more IPv6 addresses from a network interface.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`
* `ipv6Addresses` __:__ `(List String)`


-}
unassignIpv6Addresses :
    String
    -> (List String)
    -> AWS.Request UnassignIpv6AddressesResult
unassignIpv6Addresses networkInterfaceId ipv6Addresses =
    AWS.Http.unsignedRequest
        "UnassignIpv6Addresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        unassignIpv6AddressesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Unassigns one or more secondary private IP addresses from a network interface.</p>

__Required Parameters__

* `networkInterfaceId` __:__ `String`
* `privateIpAddresses` __:__ `(List String)`


-}
unassignPrivateIpAddresses :
    String
    -> (List String)
    -> AWS.Request ()
unassignPrivateIpAddresses networkInterfaceId privateIpAddresses =
    AWS.Http.unsignedRequest
        "UnassignPrivateIpAddresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Disables detailed monitoring for a running instance. For more information, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html">Monitoring Your Instances and Volumes</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
unmonitorInstances :
    (List String)
    -> (UnmonitorInstancesOptions -> UnmonitorInstancesOptions)
    -> AWS.Request UnmonitorInstancesResult
unmonitorInstances instanceIds setOptions =
  let
    options = setOptions (UnmonitorInstancesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UnmonitorInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        unmonitorInstancesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a unmonitorInstances request
-}
type alias UnmonitorInstancesOptions =
    { dryRun : Maybe Bool
    }




{-| Type of HTTP response from acceptReservedInstancesExchangeQuo
-}
type alias AcceptReservedInstancesExchangeQuoteResult =
    { exchangeId : Maybe String
    }



acceptReservedInstancesExchangeQuoteResultDecoder : JD.Decoder AcceptReservedInstancesExchangeQuoteResult
acceptReservedInstancesExchangeQuoteResultDecoder =
    JDP.decode AcceptReservedInstancesExchangeQuoteResult
        |> JDP.optional "exchangeId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from acceptVpcPeeringConnecti
-}
type alias AcceptVpcPeeringConnectionResult =
    { vpcPeeringConnection : Maybe VpcPeeringConnection
    }



acceptVpcPeeringConnectionResultDecoder : JD.Decoder AcceptVpcPeeringConnectionResult
acceptVpcPeeringConnectionResultDecoder =
    JDP.decode AcceptVpcPeeringConnectionResult
        |> JDP.optional "vpcPeeringConnection" (JD.nullable vpcPeeringConnectionDecoder) Nothing




{-| <p>Describes an account attribute.</p>
-}
type alias AccountAttribute =
    { attributeName : Maybe String
    , attributeValues : Maybe (List AccountAttributeValue)
    }



accountAttributeDecoder : JD.Decoder AccountAttribute
accountAttributeDecoder =
    JDP.decode AccountAttribute
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributeValues" (JD.nullable (JD.list accountAttributeValueDecoder)) Nothing




{-| One of

* `AccountAttributeName_supported-platforms`
* `AccountAttributeName_default-vpc`

-}
type AccountAttributeName
    = AccountAttributeName_supported_platforms
    | AccountAttributeName_default_vpc



accountAttributeNameDecoder : JD.Decoder AccountAttributeName
accountAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "supported_platforms" ->
                        JD.succeed AccountAttributeName_supported_platforms

                    "default_vpc" ->
                        JD.succeed AccountAttributeName_default_vpc


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a value of an account attribute.</p>
-}
type alias AccountAttributeValue =
    { attributeValue : Maybe String
    }



accountAttributeValueDecoder : JD.Decoder AccountAttributeValue
accountAttributeValueDecoder =
    JDP.decode AccountAttributeValue
        |> JDP.optional "attributeValue" (JD.nullable JD.string) Nothing




{-| <p>Describes a running instance in a Spot fleet.</p>
-}
type alias ActiveInstance =
    { instanceType : Maybe String
    , instanceId : Maybe String
    , spotInstanceRequestId : Maybe String
    , instanceHealth : Maybe InstanceHealthStatus
    }



activeInstanceDecoder : JD.Decoder ActiveInstance
activeInstanceDecoder =
    JDP.decode ActiveInstance
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "spotInstanceRequestId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceHealth" (JD.nullable instanceHealthStatusDecoder) Nothing




{-| One of

* `ActivityStatus_error`
* `ActivityStatus_pending_fulfillment`
* `ActivityStatus_pending_termination`
* `ActivityStatus_fulfilled`

-}
type ActivityStatus
    = ActivityStatus_error
    | ActivityStatus_pending_fulfillment
    | ActivityStatus_pending_termination
    | ActivityStatus_fulfilled



activityStatusDecoder : JD.Decoder ActivityStatus
activityStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "error" ->
                        JD.succeed ActivityStatus_error

                    "pending_fulfillment" ->
                        JD.succeed ActivityStatus_pending_fulfillment

                    "pending_termination" ->
                        JD.succeed ActivityStatus_pending_termination

                    "fulfilled" ->
                        JD.succeed ActivityStatus_fulfilled


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an Elastic IP address.</p>
-}
type alias Address =
    { instanceId : Maybe String
    , publicIp : Maybe String
    , allocationId : Maybe String
    , associationId : Maybe String
    , domain : Maybe DomainType
    , networkInterfaceId : Maybe String
    , networkInterfaceOwnerId : Maybe String
    , privateIpAddress : Maybe String
    }



addressDecoder : JD.Decoder Address
addressDecoder =
    JDP.decode Address
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "domain" (JD.nullable domainTypeDecoder) Nothing
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaceOwnerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing




{-| One of

* `Affinity_default`
* `Affinity_host`

-}
type Affinity
    = Affinity_default
    | Affinity_host



affinityDecoder : JD.Decoder Affinity
affinityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "default" ->
                        JD.succeed Affinity_default

                    "host" ->
                        JD.succeed Affinity_host


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from allocateAddre
-}
type alias AllocateAddressResult =
    { publicIp : Maybe String
    , domain : Maybe DomainType
    , allocationId : Maybe String
    }



allocateAddressResultDecoder : JD.Decoder AllocateAddressResult
allocateAddressResultDecoder =
    JDP.decode AllocateAddressResult
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "domain" (JD.nullable domainTypeDecoder) Nothing
        |> JDP.optional "allocationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from allocateHos
-}
type alias AllocateHostsResult =
    { hostIds : Maybe (List String)
    }



allocateHostsResultDecoder : JD.Decoder AllocateHostsResult
allocateHostsResultDecoder =
    JDP.decode AllocateHostsResult
        |> JDP.optional "hostIds" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `AllocationState_available`
* `AllocationState_under-assessment`
* `AllocationState_permanent-failure`
* `AllocationState_released`
* `AllocationState_released-permanent-failure`

-}
type AllocationState
    = AllocationState_available
    | AllocationState_under_assessment
    | AllocationState_permanent_failure
    | AllocationState_released
    | AllocationState_released_permanent_failure



allocationStateDecoder : JD.Decoder AllocationState
allocationStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "available" ->
                        JD.succeed AllocationState_available

                    "under_assessment" ->
                        JD.succeed AllocationState_under_assessment

                    "permanent_failure" ->
                        JD.succeed AllocationState_permanent_failure

                    "released" ->
                        JD.succeed AllocationState_released

                    "released_permanent_failure" ->
                        JD.succeed AllocationState_released_permanent_failure


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `AllocationStrategy_lowestPrice`
* `AllocationStrategy_diversified`

-}
type AllocationStrategy
    = AllocationStrategy_lowestPrice
    | AllocationStrategy_diversified



allocationStrategyDecoder : JD.Decoder AllocationStrategy
allocationStrategyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "lowestPrice" ->
                        JD.succeed AllocationStrategy_lowestPrice

                    "diversified" ->
                        JD.succeed AllocationStrategy_diversified


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ArchitectureValues_i386`
* `ArchitectureValues_x86_64`

-}
type ArchitectureValues
    = ArchitectureValues_i386
    | ArchitectureValues_x86_64



architectureValuesDecoder : JD.Decoder ArchitectureValues
architectureValuesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "i386" ->
                        JD.succeed ArchitectureValues_i386

                    "x86_64" ->
                        JD.succeed ArchitectureValues_x86_64


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from assignIpv6Address
-}
type alias AssignIpv6AddressesResult =
    { networkInterfaceId : Maybe String
    , assignedIpv6Addresses : Maybe (List String)
    }



assignIpv6AddressesResultDecoder : JD.Decoder AssignIpv6AddressesResult
assignIpv6AddressesResultDecoder =
    JDP.decode AssignIpv6AddressesResult
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "assignedIpv6Addresses" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from associateAddre
-}
type alias AssociateAddressResult =
    { associationId : Maybe String
    }



associateAddressResultDecoder : JD.Decoder AssociateAddressResult
associateAddressResultDecoder =
    JDP.decode AssociateAddressResult
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from associateRouteTab
-}
type alias AssociateRouteTableResult =
    { associationId : Maybe String
    }



associateRouteTableResultDecoder : JD.Decoder AssociateRouteTableResult
associateRouteTableResultDecoder =
    JDP.decode AssociateRouteTableResult
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from associateSubnetCidrBlo
-}
type alias AssociateSubnetCidrBlockResult =
    { subnetId : Maybe String
    , ipv6CidrBlockAssociation : Maybe SubnetIpv6CidrBlockAssociation
    }



associateSubnetCidrBlockResultDecoder : JD.Decoder AssociateSubnetCidrBlockResult
associateSubnetCidrBlockResultDecoder =
    JDP.decode AssociateSubnetCidrBlockResult
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockAssociation" (JD.nullable subnetIpv6CidrBlockAssociationDecoder) Nothing




{-| Type of HTTP response from associateVpcCidrBlo
-}
type alias AssociateVpcCidrBlockResult =
    { vpcId : Maybe String
    , ipv6CidrBlockAssociation : Maybe VpcIpv6CidrBlockAssociation
    }



associateVpcCidrBlockResultDecoder : JD.Decoder AssociateVpcCidrBlockResult
associateVpcCidrBlockResultDecoder =
    JDP.decode AssociateVpcCidrBlockResult
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockAssociation" (JD.nullable vpcIpv6CidrBlockAssociationDecoder) Nothing




{-| Type of HTTP response from attachClassicLinkV
-}
type alias AttachClassicLinkVpcResult =
    { return : Maybe Bool
    }



attachClassicLinkVpcResultDecoder : JD.Decoder AttachClassicLinkVpcResult
attachClassicLinkVpcResultDecoder =
    JDP.decode AttachClassicLinkVpcResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from attachNetworkInterfa
-}
type alias AttachNetworkInterfaceResult =
    { attachmentId : Maybe String
    }



attachNetworkInterfaceResultDecoder : JD.Decoder AttachNetworkInterfaceResult
attachNetworkInterfaceResultDecoder =
    JDP.decode AttachNetworkInterfaceResult
        |> JDP.optional "attachmentId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from attachVpnGatew
-}
type alias AttachVpnGatewayResult =
    { vpcAttachment : Maybe VpcAttachment
    }



attachVpnGatewayResultDecoder : JD.Decoder AttachVpnGatewayResult
attachVpnGatewayResultDecoder =
    JDP.decode AttachVpnGatewayResult
        |> JDP.optional "vpcAttachment" (JD.nullable vpcAttachmentDecoder) Nothing




{-| One of

* `AttachmentStatus_attaching`
* `AttachmentStatus_attached`
* `AttachmentStatus_detaching`
* `AttachmentStatus_detached`

-}
type AttachmentStatus
    = AttachmentStatus_attaching
    | AttachmentStatus_attached
    | AttachmentStatus_detaching
    | AttachmentStatus_detached



attachmentStatusDecoder : JD.Decoder AttachmentStatus
attachmentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "attaching" ->
                        JD.succeed AttachmentStatus_attaching

                    "attached" ->
                        JD.succeed AttachmentStatus_attached

                    "detaching" ->
                        JD.succeed AttachmentStatus_detaching

                    "detached" ->
                        JD.succeed AttachmentStatus_detached


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a value for a resource attribute that is a Boolean value.</p>
-}
type alias AttributeBooleanValue =
    { value : Maybe Bool
    }



attributeBooleanValueDecoder : JD.Decoder AttributeBooleanValue
attributeBooleanValueDecoder =
    JDP.decode AttributeBooleanValue
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing




{-| <p>Describes a value for a resource attribute that is a String.</p>
-}
type alias AttributeValue =
    { value : Maybe String
    }



attributeValueDecoder : JD.Decoder AttributeValue
attributeValueDecoder =
    JDP.decode AttributeValue
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| One of

* `AutoPlacement_on`
* `AutoPlacement_off`

-}
type AutoPlacement
    = AutoPlacement_on
    | AutoPlacement_off



autoPlacementDecoder : JD.Decoder AutoPlacement
autoPlacementDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "on" ->
                        JD.succeed AutoPlacement_on

                    "off" ->
                        JD.succeed AutoPlacement_off


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an Availability Zone.</p>
-}
type alias AvailabilityZone =
    { zoneName : Maybe String
    , state : Maybe AvailabilityZoneState
    , regionName : Maybe String
    , messages : Maybe (List AvailabilityZoneMessage)
    }



availabilityZoneDecoder : JD.Decoder AvailabilityZone
availabilityZoneDecoder =
    JDP.decode AvailabilityZone
        |> JDP.optional "zoneName" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable availabilityZoneStateDecoder) Nothing
        |> JDP.optional "regionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "messages" (JD.nullable (JD.list availabilityZoneMessageDecoder)) Nothing




{-| <p>Describes a message about an Availability Zone.</p>
-}
type alias AvailabilityZoneMessage =
    { message : Maybe String
    }



availabilityZoneMessageDecoder : JD.Decoder AvailabilityZoneMessage
availabilityZoneMessageDecoder =
    JDP.decode AvailabilityZoneMessage
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `AvailabilityZoneState_available`
* `AvailabilityZoneState_information`
* `AvailabilityZoneState_impaired`
* `AvailabilityZoneState_unavailable`

-}
type AvailabilityZoneState
    = AvailabilityZoneState_available
    | AvailabilityZoneState_information
    | AvailabilityZoneState_impaired
    | AvailabilityZoneState_unavailable



availabilityZoneStateDecoder : JD.Decoder AvailabilityZoneState
availabilityZoneStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "available" ->
                        JD.succeed AvailabilityZoneState_available

                    "information" ->
                        JD.succeed AvailabilityZoneState_information

                    "impaired" ->
                        JD.succeed AvailabilityZoneState_impaired

                    "unavailable" ->
                        JD.succeed AvailabilityZoneState_unavailable


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The capacity information for instances launched onto the Dedicated Host.</p>
-}
type alias AvailableCapacity =
    { availableInstanceCapacity : Maybe (List InstanceCapacity)
    , availableVCpus : Maybe Int
    }



availableCapacityDecoder : JD.Decoder AvailableCapacity
availableCapacityDecoder =
    JDP.decode AvailableCapacity
        |> JDP.optional "availableInstanceCapacity" (JD.nullable (JD.list instanceCapacityDecoder)) Nothing
        |> JDP.optional "availableVCpus" (JD.nullable JD.int) Nothing




{-| One of

* `BatchState_submitted`
* `BatchState_active`
* `BatchState_cancelled`
* `BatchState_failed`
* `BatchState_cancelled_running`
* `BatchState_cancelled_terminating`
* `BatchState_modifying`

-}
type BatchState
    = BatchState_submitted
    | BatchState_active
    | BatchState_cancelled
    | BatchState_failed
    | BatchState_cancelled_running
    | BatchState_cancelled_terminating
    | BatchState_modifying



batchStateDecoder : JD.Decoder BatchState
batchStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "submitted" ->
                        JD.succeed BatchState_submitted

                    "active" ->
                        JD.succeed BatchState_active

                    "cancelled" ->
                        JD.succeed BatchState_cancelled

                    "failed" ->
                        JD.succeed BatchState_failed

                    "cancelled_running" ->
                        JD.succeed BatchState_cancelled_running

                    "cancelled_terminating" ->
                        JD.succeed BatchState_cancelled_terminating

                    "modifying" ->
                        JD.succeed BatchState_modifying


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias BlobAttributeValue =
    { value : Maybe String
    }



blobAttributeValueDecoder : JD.Decoder BlobAttributeValue
blobAttributeValueDecoder =
    JDP.decode BlobAttributeValue
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>Describes a block device mapping.</p>
-}
type alias BlockDeviceMapping =
    { virtualName : Maybe String
    , deviceName : Maybe String
    , ebs : Maybe EbsBlockDevice
    , noDevice : Maybe String
    }



blockDeviceMappingDecoder : JD.Decoder BlockDeviceMapping
blockDeviceMappingDecoder =
    JDP.decode BlockDeviceMapping
        |> JDP.optional "virtualName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ebs" (JD.nullable ebsBlockDeviceDecoder) Nothing
        |> JDP.optional "noDevice" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from bundleInstan
-}
type alias BundleInstanceResult =
    { bundleTask : Maybe BundleTask
    }



bundleInstanceResultDecoder : JD.Decoder BundleInstanceResult
bundleInstanceResultDecoder =
    JDP.decode BundleInstanceResult
        |> JDP.optional "bundleTask" (JD.nullable bundleTaskDecoder) Nothing




{-| <p>Describes a bundle task.</p>
-}
type alias BundleTask =
    { instanceId : Maybe String
    , bundleId : Maybe String
    , state : Maybe BundleTaskState
    , startTime : Maybe Date
    , updateTime : Maybe Date
    , storage : Maybe Storage
    , progress : Maybe String
    , bundleTaskError : Maybe BundleTaskError
    }



bundleTaskDecoder : JD.Decoder BundleTask
bundleTaskDecoder =
    JDP.decode BundleTask
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "bundleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable bundleTaskStateDecoder) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "storage" (JD.nullable storageDecoder) Nothing
        |> JDP.optional "progress" (JD.nullable JD.string) Nothing
        |> JDP.optional "bundleTaskError" (JD.nullable bundleTaskErrorDecoder) Nothing




{-| <p>Describes an error for <a>BundleInstance</a>.</p>
-}
type alias BundleTaskError =
    { code : Maybe String
    , message : Maybe String
    }



bundleTaskErrorDecoder : JD.Decoder BundleTaskError
bundleTaskErrorDecoder =
    JDP.decode BundleTaskError
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `BundleTaskState_pending`
* `BundleTaskState_waiting-for-shutdown`
* `BundleTaskState_bundling`
* `BundleTaskState_storing`
* `BundleTaskState_cancelling`
* `BundleTaskState_complete`
* `BundleTaskState_failed`

-}
type BundleTaskState
    = BundleTaskState_pending
    | BundleTaskState_waiting_for_shutdown
    | BundleTaskState_bundling
    | BundleTaskState_storing
    | BundleTaskState_cancelling
    | BundleTaskState_complete
    | BundleTaskState_failed



bundleTaskStateDecoder : JD.Decoder BundleTaskState
bundleTaskStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed BundleTaskState_pending

                    "waiting_for_shutdown" ->
                        JD.succeed BundleTaskState_waiting_for_shutdown

                    "bundling" ->
                        JD.succeed BundleTaskState_bundling

                    "storing" ->
                        JD.succeed BundleTaskState_storing

                    "cancelling" ->
                        JD.succeed BundleTaskState_cancelling

                    "complete" ->
                        JD.succeed BundleTaskState_complete

                    "failed" ->
                        JD.succeed BundleTaskState_failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CancelBatchErrorCode_fleetRequestIdDoesNotExist`
* `CancelBatchErrorCode_fleetRequestIdMalformed`
* `CancelBatchErrorCode_fleetRequestNotInCancellableState`
* `CancelBatchErrorCode_unexpectedError`

-}
type CancelBatchErrorCode
    = CancelBatchErrorCode_fleetRequestIdDoesNotExist
    | CancelBatchErrorCode_fleetRequestIdMalformed
    | CancelBatchErrorCode_fleetRequestNotInCancellableState
    | CancelBatchErrorCode_unexpectedError



cancelBatchErrorCodeDecoder : JD.Decoder CancelBatchErrorCode
cancelBatchErrorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "fleetRequestIdDoesNotExist" ->
                        JD.succeed CancelBatchErrorCode_fleetRequestIdDoesNotExist

                    "fleetRequestIdMalformed" ->
                        JD.succeed CancelBatchErrorCode_fleetRequestIdMalformed

                    "fleetRequestNotInCancellableState" ->
                        JD.succeed CancelBatchErrorCode_fleetRequestNotInCancellableState

                    "unexpectedError" ->
                        JD.succeed CancelBatchErrorCode_unexpectedError


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from cancelBundleTa
-}
type alias CancelBundleTaskResult =
    { bundleTask : Maybe BundleTask
    }



cancelBundleTaskResultDecoder : JD.Decoder CancelBundleTaskResult
cancelBundleTaskResultDecoder =
    JDP.decode CancelBundleTaskResult
        |> JDP.optional "bundleTask" (JD.nullable bundleTaskDecoder) Nothing




{-| Type of HTTP response from cancelImportTa
-}
type alias CancelImportTaskResult =
    { importTaskId : Maybe String
    , state : Maybe String
    , previousState : Maybe String
    }



cancelImportTaskResultDecoder : JD.Decoder CancelImportTaskResult
cancelImportTaskResultDecoder =
    JDP.decode CancelImportTaskResult
        |> JDP.optional "importTaskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "previousState" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cancelReservedInstancesListi
-}
type alias CancelReservedInstancesListingResult =
    { reservedInstancesListings : Maybe (List ReservedInstancesListing)
    }



cancelReservedInstancesListingResultDecoder : JD.Decoder CancelReservedInstancesListingResult
cancelReservedInstancesListingResultDecoder =
    JDP.decode CancelReservedInstancesListingResult
        |> JDP.optional "reservedInstancesListings" (JD.nullable (JD.list reservedInstancesListingDecoder)) Nothing




{-| <p>Describes a Spot fleet error.</p>
-}
type alias CancelSpotFleetRequestsError =
    { code : CancelBatchErrorCode
    , message : String
    }



cancelSpotFleetRequestsErrorDecoder : JD.Decoder CancelSpotFleetRequestsError
cancelSpotFleetRequestsErrorDecoder =
    JDP.decode CancelSpotFleetRequestsError
        |> JDP.required "code" cancelBatchErrorCodeDecoder
        |> JDP.required "message" JD.string




{-| <p>Describes a Spot fleet request that was not successfully canceled.</p>
-}
type alias CancelSpotFleetRequestsErrorItem =
    { spotFleetRequestId : String
    , error : CancelSpotFleetRequestsError
    }



cancelSpotFleetRequestsErrorItemDecoder : JD.Decoder CancelSpotFleetRequestsErrorItem
cancelSpotFleetRequestsErrorItemDecoder =
    JDP.decode CancelSpotFleetRequestsErrorItem
        |> JDP.required "spotFleetRequestId" JD.string
        |> JDP.required "error" cancelSpotFleetRequestsErrorDecoder




{-| Type of HTTP response from cancelSpotFleetRequests
-}
type alias CancelSpotFleetRequestsResponse =
    { unsuccessfulFleetRequests : Maybe (List CancelSpotFleetRequestsErrorItem)
    , successfulFleetRequests : Maybe (List CancelSpotFleetRequestsSuccessItem)
    }



cancelSpotFleetRequestsResponseDecoder : JD.Decoder CancelSpotFleetRequestsResponse
cancelSpotFleetRequestsResponseDecoder =
    JDP.decode CancelSpotFleetRequestsResponse
        |> JDP.optional "unsuccessfulFleetRequests" (JD.nullable (JD.list cancelSpotFleetRequestsErrorItemDecoder)) Nothing
        |> JDP.optional "successfulFleetRequests" (JD.nullable (JD.list cancelSpotFleetRequestsSuccessItemDecoder)) Nothing




{-| <p>Describes a Spot fleet request that was successfully canceled.</p>
-}
type alias CancelSpotFleetRequestsSuccessItem =
    { spotFleetRequestId : String
    , currentSpotFleetRequestState : BatchState
    , previousSpotFleetRequestState : BatchState
    }



cancelSpotFleetRequestsSuccessItemDecoder : JD.Decoder CancelSpotFleetRequestsSuccessItem
cancelSpotFleetRequestsSuccessItemDecoder =
    JDP.decode CancelSpotFleetRequestsSuccessItem
        |> JDP.required "spotFleetRequestId" JD.string
        |> JDP.required "currentSpotFleetRequestState" batchStateDecoder
        |> JDP.required "previousSpotFleetRequestState" batchStateDecoder




{-| One of

* `CancelSpotInstanceRequestState_active`
* `CancelSpotInstanceRequestState_open`
* `CancelSpotInstanceRequestState_closed`
* `CancelSpotInstanceRequestState_cancelled`
* `CancelSpotInstanceRequestState_completed`

-}
type CancelSpotInstanceRequestState
    = CancelSpotInstanceRequestState_active
    | CancelSpotInstanceRequestState_open
    | CancelSpotInstanceRequestState_closed
    | CancelSpotInstanceRequestState_cancelled
    | CancelSpotInstanceRequestState_completed



cancelSpotInstanceRequestStateDecoder : JD.Decoder CancelSpotInstanceRequestState
cancelSpotInstanceRequestStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed CancelSpotInstanceRequestState_active

                    "open" ->
                        JD.succeed CancelSpotInstanceRequestState_open

                    "closed" ->
                        JD.succeed CancelSpotInstanceRequestState_closed

                    "cancelled" ->
                        JD.succeed CancelSpotInstanceRequestState_cancelled

                    "completed" ->
                        JD.succeed CancelSpotInstanceRequestState_completed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from cancelSpotInstanceReques
-}
type alias CancelSpotInstanceRequestsResult =
    { cancelledSpotInstanceRequests : Maybe (List CancelledSpotInstanceRequest)
    }



cancelSpotInstanceRequestsResultDecoder : JD.Decoder CancelSpotInstanceRequestsResult
cancelSpotInstanceRequestsResultDecoder =
    JDP.decode CancelSpotInstanceRequestsResult
        |> JDP.optional "cancelledSpotInstanceRequests" (JD.nullable (JD.list cancelledSpotInstanceRequestDecoder)) Nothing




{-| <p>Describes a request to cancel a Spot instance.</p>
-}
type alias CancelledSpotInstanceRequest =
    { spotInstanceRequestId : Maybe String
    , state : Maybe CancelSpotInstanceRequestState
    }



cancelledSpotInstanceRequestDecoder : JD.Decoder CancelledSpotInstanceRequest
cancelledSpotInstanceRequestDecoder =
    JDP.decode CancelledSpotInstanceRequest
        |> JDP.optional "spotInstanceRequestId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable cancelSpotInstanceRequestStateDecoder) Nothing




{-| <p>Describes the ClassicLink DNS support status of a VPC.</p>
-}
type alias ClassicLinkDnsSupport =
    { vpcId : Maybe String
    , classicLinkDnsSupported : Maybe Bool
    }



classicLinkDnsSupportDecoder : JD.Decoder ClassicLinkDnsSupport
classicLinkDnsSupportDecoder =
    JDP.decode ClassicLinkDnsSupport
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "classicLinkDnsSupported" (JD.nullable JD.bool) Nothing




{-| <p>Describes a linked EC2-Classic instance.</p>
-}
type alias ClassicLinkInstance =
    { instanceId : Maybe String
    , vpcId : Maybe String
    , groups : Maybe (List GroupIdentifier)
    , tags : Maybe (List Tag)
    }



classicLinkInstanceDecoder : JD.Decoder ClassicLinkInstance
classicLinkInstanceDecoder =
    JDP.decode ClassicLinkInstance
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Describes the client-specific data.</p>
-}
type alias ClientData =
    { uploadStart : Maybe Date
    , uploadEnd : Maybe Date
    , uploadSize : Maybe Float
    , comment : Maybe String
    }



clientDataDecoder : JD.Decoder ClientData
clientDataDecoder =
    JDP.decode ClientData
        |> JDP.optional "uploadStart" (JD.nullable JDX.date) Nothing
        |> JDP.optional "uploadEnd" (JD.nullable JDX.date) Nothing
        |> JDP.optional "uploadSize" (JD.nullable JD.float) Nothing
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from confirmProductInstan
-}
type alias ConfirmProductInstanceResult =
    { ownerId : Maybe String
    , return : Maybe Bool
    }



confirmProductInstanceResultDecoder : JD.Decoder ConfirmProductInstanceResult
confirmProductInstanceResultDecoder =
    JDP.decode ConfirmProductInstanceResult
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| One of

* `ContainerFormat_ova`

-}
type ContainerFormat
    = ContainerFormat_ova



containerFormatDecoder : JD.Decoder ContainerFormat
containerFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ova" ->
                        JD.succeed ContainerFormat_ova


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a conversion task.</p>
-}
type alias ConversionTask =
    { conversionTaskId : String
    , expirationTime : Maybe String
    , importInstance : Maybe ImportInstanceTaskDetails
    , importVolume : Maybe ImportVolumeTaskDetails
    , state : ConversionTaskState
    , statusMessage : Maybe String
    , tags : Maybe (List Tag)
    }



conversionTaskDecoder : JD.Decoder ConversionTask
conversionTaskDecoder =
    JDP.decode ConversionTask
        |> JDP.required "conversionTaskId" JD.string
        |> JDP.optional "expirationTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "importInstance" (JD.nullable importInstanceTaskDetailsDecoder) Nothing
        |> JDP.optional "importVolume" (JD.nullable importVolumeTaskDetailsDecoder) Nothing
        |> JDP.required "state" conversionTaskStateDecoder
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `ConversionTaskState_active`
* `ConversionTaskState_cancelling`
* `ConversionTaskState_cancelled`
* `ConversionTaskState_completed`

-}
type ConversionTaskState
    = ConversionTaskState_active
    | ConversionTaskState_cancelling
    | ConversionTaskState_cancelled
    | ConversionTaskState_completed



conversionTaskStateDecoder : JD.Decoder ConversionTaskState
conversionTaskStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed ConversionTaskState_active

                    "cancelling" ->
                        JD.succeed ConversionTaskState_cancelling

                    "cancelled" ->
                        JD.succeed ConversionTaskState_cancelled

                    "completed" ->
                        JD.succeed ConversionTaskState_completed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from copyIma
-}
type alias CopyImageResult =
    { imageId : Maybe String
    }



copyImageResultDecoder : JD.Decoder CopyImageResult
copyImageResultDecoder =
    JDP.decode CopyImageResult
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from copySnapsh
-}
type alias CopySnapshotResult =
    { snapshotId : Maybe String
    }



copySnapshotResultDecoder : JD.Decoder CopySnapshotResult
copySnapshotResultDecoder =
    JDP.decode CopySnapshotResult
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createCustomerGatew
-}
type alias CreateCustomerGatewayResult =
    { customerGateway : Maybe CustomerGateway
    }



createCustomerGatewayResultDecoder : JD.Decoder CreateCustomerGatewayResult
createCustomerGatewayResultDecoder =
    JDP.decode CreateCustomerGatewayResult
        |> JDP.optional "customerGateway" (JD.nullable customerGatewayDecoder) Nothing




{-| Type of HTTP response from createDhcpOptio
-}
type alias CreateDhcpOptionsResult =
    { dhcpOptions : Maybe DhcpOptions
    }



createDhcpOptionsResultDecoder : JD.Decoder CreateDhcpOptionsResult
createDhcpOptionsResultDecoder =
    JDP.decode CreateDhcpOptionsResult
        |> JDP.optional "dhcpOptions" (JD.nullable dhcpOptionsDecoder) Nothing




{-| Type of HTTP response from createEgressOnlyInternetGatew
-}
type alias CreateEgressOnlyInternetGatewayResult =
    { egressOnlyInternetGateway : Maybe EgressOnlyInternetGateway
    , clientToken : Maybe String
    }



createEgressOnlyInternetGatewayResultDecoder : JD.Decoder CreateEgressOnlyInternetGatewayResult
createEgressOnlyInternetGatewayResultDecoder =
    JDP.decode CreateEgressOnlyInternetGatewayResult
        |> JDP.optional "egressOnlyInternetGateway" (JD.nullable egressOnlyInternetGatewayDecoder) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createFlowLo
-}
type alias CreateFlowLogsResult =
    { flowLogIds : Maybe (List String)
    , clientToken : Maybe String
    , unsuccessful : Maybe (List UnsuccessfulItem)
    }



createFlowLogsResultDecoder : JD.Decoder CreateFlowLogsResult
createFlowLogsResultDecoder =
    JDP.decode CreateFlowLogsResult
        |> JDP.optional "flowLogIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "unsuccessful" (JD.nullable (JD.list unsuccessfulItemDecoder)) Nothing




{-| Type of HTTP response from createIma
-}
type alias CreateImageResult =
    { imageId : Maybe String
    }



createImageResultDecoder : JD.Decoder CreateImageResult
createImageResultDecoder =
    JDP.decode CreateImageResult
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createInstanceExportTa
-}
type alias CreateInstanceExportTaskResult =
    { exportTask : Maybe ExportTask
    }



createInstanceExportTaskResultDecoder : JD.Decoder CreateInstanceExportTaskResult
createInstanceExportTaskResultDecoder =
    JDP.decode CreateInstanceExportTaskResult
        |> JDP.optional "exportTask" (JD.nullable exportTaskDecoder) Nothing




{-| Type of HTTP response from createInternetGatew
-}
type alias CreateInternetGatewayResult =
    { internetGateway : Maybe InternetGateway
    }



createInternetGatewayResultDecoder : JD.Decoder CreateInternetGatewayResult
createInternetGatewayResultDecoder =
    JDP.decode CreateInternetGatewayResult
        |> JDP.optional "internetGateway" (JD.nullable internetGatewayDecoder) Nothing




{-| Type of HTTP response from createNatGatew
-}
type alias CreateNatGatewayResult =
    { natGateway : Maybe NatGateway
    , clientToken : Maybe String
    }



createNatGatewayResultDecoder : JD.Decoder CreateNatGatewayResult
createNatGatewayResultDecoder =
    JDP.decode CreateNatGatewayResult
        |> JDP.optional "natGateway" (JD.nullable natGatewayDecoder) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createNetworkA
-}
type alias CreateNetworkAclResult =
    { networkAcl : Maybe NetworkAcl
    }



createNetworkAclResultDecoder : JD.Decoder CreateNetworkAclResult
createNetworkAclResultDecoder =
    JDP.decode CreateNetworkAclResult
        |> JDP.optional "networkAcl" (JD.nullable networkAclDecoder) Nothing




{-| Type of HTTP response from createNetworkInterfa
-}
type alias CreateNetworkInterfaceResult =
    { networkInterface : Maybe NetworkInterface
    }



createNetworkInterfaceResultDecoder : JD.Decoder CreateNetworkInterfaceResult
createNetworkInterfaceResultDecoder =
    JDP.decode CreateNetworkInterfaceResult
        |> JDP.optional "networkInterface" (JD.nullable networkInterfaceDecoder) Nothing




{-| Type of HTTP response from createReservedInstancesListi
-}
type alias CreateReservedInstancesListingResult =
    { reservedInstancesListings : Maybe (List ReservedInstancesListing)
    }



createReservedInstancesListingResultDecoder : JD.Decoder CreateReservedInstancesListingResult
createReservedInstancesListingResultDecoder =
    JDP.decode CreateReservedInstancesListingResult
        |> JDP.optional "reservedInstancesListings" (JD.nullable (JD.list reservedInstancesListingDecoder)) Nothing




{-| Type of HTTP response from createRou
-}
type alias CreateRouteResult =
    { return : Maybe Bool
    }



createRouteResultDecoder : JD.Decoder CreateRouteResult
createRouteResultDecoder =
    JDP.decode CreateRouteResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from createRouteTab
-}
type alias CreateRouteTableResult =
    { routeTable : Maybe RouteTable
    }



createRouteTableResultDecoder : JD.Decoder CreateRouteTableResult
createRouteTableResultDecoder =
    JDP.decode CreateRouteTableResult
        |> JDP.optional "routeTable" (JD.nullable routeTableDecoder) Nothing




{-| Type of HTTP response from createSecurityGro
-}
type alias CreateSecurityGroupResult =
    { groupId : Maybe String
    }



createSecurityGroupResultDecoder : JD.Decoder CreateSecurityGroupResult
createSecurityGroupResultDecoder =
    JDP.decode CreateSecurityGroupResult
        |> JDP.optional "groupId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSpotDatafeedSubscripti
-}
type alias CreateSpotDatafeedSubscriptionResult =
    { spotDatafeedSubscription : Maybe SpotDatafeedSubscription
    }



createSpotDatafeedSubscriptionResultDecoder : JD.Decoder CreateSpotDatafeedSubscriptionResult
createSpotDatafeedSubscriptionResultDecoder =
    JDP.decode CreateSpotDatafeedSubscriptionResult
        |> JDP.optional "spotDatafeedSubscription" (JD.nullable spotDatafeedSubscriptionDecoder) Nothing




{-| Type of HTTP response from createSubn
-}
type alias CreateSubnetResult =
    { subnet : Maybe Subnet
    }



createSubnetResultDecoder : JD.Decoder CreateSubnetResult
createSubnetResultDecoder =
    JDP.decode CreateSubnetResult
        |> JDP.optional "subnet" (JD.nullable subnetDecoder) Nothing




{-| <p>Describes the user or group to be added or removed from the permissions for a volume.</p>
-}
type alias CreateVolumePermission =
    { userId : Maybe String
    , group : Maybe PermissionGroup
    }



createVolumePermissionDecoder : JD.Decoder CreateVolumePermission
createVolumePermissionDecoder =
    JDP.decode CreateVolumePermission
        |> JDP.optional "userId" (JD.nullable JD.string) Nothing
        |> JDP.optional "group" (JD.nullable permissionGroupDecoder) Nothing




{-| <p>Describes modifications to the permissions for a volume.</p>
-}
type alias CreateVolumePermissionModifications =
    { add : Maybe (List CreateVolumePermission)
    , remove : Maybe (List CreateVolumePermission)
    }



createVolumePermissionModificationsDecoder : JD.Decoder CreateVolumePermissionModifications
createVolumePermissionModificationsDecoder =
    JDP.decode CreateVolumePermissionModifications
        |> JDP.optional "add" (JD.nullable (JD.list createVolumePermissionDecoder)) Nothing
        |> JDP.optional "remove" (JD.nullable (JD.list createVolumePermissionDecoder)) Nothing




{-| Type of HTTP response from createVpcEndpoi
-}
type alias CreateVpcEndpointResult =
    { vpcEndpoint : Maybe VpcEndpoint
    , clientToken : Maybe String
    }



createVpcEndpointResultDecoder : JD.Decoder CreateVpcEndpointResult
createVpcEndpointResultDecoder =
    JDP.decode CreateVpcEndpointResult
        |> JDP.optional "vpcEndpoint" (JD.nullable vpcEndpointDecoder) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createVpcPeeringConnecti
-}
type alias CreateVpcPeeringConnectionResult =
    { vpcPeeringConnection : Maybe VpcPeeringConnection
    }



createVpcPeeringConnectionResultDecoder : JD.Decoder CreateVpcPeeringConnectionResult
createVpcPeeringConnectionResultDecoder =
    JDP.decode CreateVpcPeeringConnectionResult
        |> JDP.optional "vpcPeeringConnection" (JD.nullable vpcPeeringConnectionDecoder) Nothing




{-| Type of HTTP response from createV
-}
type alias CreateVpcResult =
    { vpc : Maybe Vpc
    }



createVpcResultDecoder : JD.Decoder CreateVpcResult
createVpcResultDecoder =
    JDP.decode CreateVpcResult
        |> JDP.optional "vpc" (JD.nullable vpcDecoder) Nothing




{-| Type of HTTP response from createVpnConnecti
-}
type alias CreateVpnConnectionResult =
    { vpnConnection : Maybe VpnConnection
    }



createVpnConnectionResultDecoder : JD.Decoder CreateVpnConnectionResult
createVpnConnectionResultDecoder =
    JDP.decode CreateVpnConnectionResult
        |> JDP.optional "vpnConnection" (JD.nullable vpnConnectionDecoder) Nothing




{-| Type of HTTP response from createVpnGatew
-}
type alias CreateVpnGatewayResult =
    { vpnGateway : Maybe VpnGateway
    }



createVpnGatewayResultDecoder : JD.Decoder CreateVpnGatewayResult
createVpnGatewayResultDecoder =
    JDP.decode CreateVpnGatewayResult
        |> JDP.optional "vpnGateway" (JD.nullable vpnGatewayDecoder) Nothing




{-| One of

* `CurrencyCodeValues_USD`

-}
type CurrencyCodeValues
    = CurrencyCodeValues_USD



currencyCodeValuesDecoder : JD.Decoder CurrencyCodeValues
currencyCodeValuesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USD" ->
                        JD.succeed CurrencyCodeValues_USD


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a customer gateway.</p>
-}
type alias CustomerGateway =
    { customerGatewayId : Maybe String
    , state : Maybe String
    , type_ : Maybe String
    , ipAddress : Maybe String
    , bgpAsn : Maybe String
    , tags : Maybe (List Tag)
    }



customerGatewayDecoder : JD.Decoder CustomerGateway
customerGatewayDecoder =
    JDP.decode CustomerGateway
        |> JDP.optional "customerGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "bgpAsn" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `DatafeedSubscriptionState_Active`
* `DatafeedSubscriptionState_Inactive`

-}
type DatafeedSubscriptionState
    = DatafeedSubscriptionState_Active
    | DatafeedSubscriptionState_Inactive



datafeedSubscriptionStateDecoder : JD.Decoder DatafeedSubscriptionState
datafeedSubscriptionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Active" ->
                        JD.succeed DatafeedSubscriptionState_Active

                    "Inactive" ->
                        JD.succeed DatafeedSubscriptionState_Inactive


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from deleteEgressOnlyInternetGatew
-}
type alias DeleteEgressOnlyInternetGatewayResult =
    { returnCode : Maybe Bool
    }



deleteEgressOnlyInternetGatewayResultDecoder : JD.Decoder DeleteEgressOnlyInternetGatewayResult
deleteEgressOnlyInternetGatewayResultDecoder =
    JDP.decode DeleteEgressOnlyInternetGatewayResult
        |> JDP.optional "returnCode" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from deleteFlowLo
-}
type alias DeleteFlowLogsResult =
    { unsuccessful : Maybe (List UnsuccessfulItem)
    }



deleteFlowLogsResultDecoder : JD.Decoder DeleteFlowLogsResult
deleteFlowLogsResultDecoder =
    JDP.decode DeleteFlowLogsResult
        |> JDP.optional "unsuccessful" (JD.nullable (JD.list unsuccessfulItemDecoder)) Nothing




{-| Type of HTTP response from deleteNatGatew
-}
type alias DeleteNatGatewayResult =
    { natGatewayId : Maybe String
    }



deleteNatGatewayResultDecoder : JD.Decoder DeleteNatGatewayResult
deleteNatGatewayResultDecoder =
    JDP.decode DeleteNatGatewayResult
        |> JDP.optional "natGatewayId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteVpcEndpoin
-}
type alias DeleteVpcEndpointsResult =
    { unsuccessful : Maybe (List UnsuccessfulItem)
    }



deleteVpcEndpointsResultDecoder : JD.Decoder DeleteVpcEndpointsResult
deleteVpcEndpointsResultDecoder =
    JDP.decode DeleteVpcEndpointsResult
        |> JDP.optional "unsuccessful" (JD.nullable (JD.list unsuccessfulItemDecoder)) Nothing




{-| Type of HTTP response from deleteVpcPeeringConnecti
-}
type alias DeleteVpcPeeringConnectionResult =
    { return : Maybe Bool
    }



deleteVpcPeeringConnectionResultDecoder : JD.Decoder DeleteVpcPeeringConnectionResult
deleteVpcPeeringConnectionResultDecoder =
    JDP.decode DeleteVpcPeeringConnectionResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from describeAccountAttribut
-}
type alias DescribeAccountAttributesResult =
    { accountAttributes : Maybe (List AccountAttribute)
    }



describeAccountAttributesResultDecoder : JD.Decoder DescribeAccountAttributesResult
describeAccountAttributesResultDecoder =
    JDP.decode DescribeAccountAttributesResult
        |> JDP.optional "accountAttributes" (JD.nullable (JD.list accountAttributeDecoder)) Nothing




{-| Type of HTTP response from describeAddress
-}
type alias DescribeAddressesResult =
    { addresses : Maybe (List Address)
    }



describeAddressesResultDecoder : JD.Decoder DescribeAddressesResult
describeAddressesResultDecoder =
    JDP.decode DescribeAddressesResult
        |> JDP.optional "addresses" (JD.nullable (JD.list addressDecoder)) Nothing




{-| Type of HTTP response from describeAvailabilityZon
-}
type alias DescribeAvailabilityZonesResult =
    { availabilityZones : Maybe (List AvailabilityZone)
    }



describeAvailabilityZonesResultDecoder : JD.Decoder DescribeAvailabilityZonesResult
describeAvailabilityZonesResultDecoder =
    JDP.decode DescribeAvailabilityZonesResult
        |> JDP.optional "availabilityZones" (JD.nullable (JD.list availabilityZoneDecoder)) Nothing




{-| Type of HTTP response from describeBundleTas
-}
type alias DescribeBundleTasksResult =
    { bundleTasks : Maybe (List BundleTask)
    }



describeBundleTasksResultDecoder : JD.Decoder DescribeBundleTasksResult
describeBundleTasksResultDecoder =
    JDP.decode DescribeBundleTasksResult
        |> JDP.optional "bundleTasks" (JD.nullable (JD.list bundleTaskDecoder)) Nothing




{-| Type of HTTP response from describeClassicLinkInstanc
-}
type alias DescribeClassicLinkInstancesResult =
    { instances : Maybe (List ClassicLinkInstance)
    , nextToken : Maybe String
    }



describeClassicLinkInstancesResultDecoder : JD.Decoder DescribeClassicLinkInstancesResult
describeClassicLinkInstancesResultDecoder =
    JDP.decode DescribeClassicLinkInstancesResult
        |> JDP.optional "instances" (JD.nullable (JD.list classicLinkInstanceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeConversionTas
-}
type alias DescribeConversionTasksResult =
    { conversionTasks : Maybe (List ConversionTask)
    }



describeConversionTasksResultDecoder : JD.Decoder DescribeConversionTasksResult
describeConversionTasksResultDecoder =
    JDP.decode DescribeConversionTasksResult
        |> JDP.optional "conversionTasks" (JD.nullable (JD.list conversionTaskDecoder)) Nothing




{-| Type of HTTP response from describeCustomerGatewa
-}
type alias DescribeCustomerGatewaysResult =
    { customerGateways : Maybe (List CustomerGateway)
    }



describeCustomerGatewaysResultDecoder : JD.Decoder DescribeCustomerGatewaysResult
describeCustomerGatewaysResultDecoder =
    JDP.decode DescribeCustomerGatewaysResult
        |> JDP.optional "customerGateways" (JD.nullable (JD.list customerGatewayDecoder)) Nothing




{-| Type of HTTP response from describeDhcpOptio
-}
type alias DescribeDhcpOptionsResult =
    { dhcpOptions : Maybe (List DhcpOptions)
    }



describeDhcpOptionsResultDecoder : JD.Decoder DescribeDhcpOptionsResult
describeDhcpOptionsResultDecoder =
    JDP.decode DescribeDhcpOptionsResult
        |> JDP.optional "dhcpOptions" (JD.nullable (JD.list dhcpOptionsDecoder)) Nothing




{-| Type of HTTP response from describeEgressOnlyInternetGatewa
-}
type alias DescribeEgressOnlyInternetGatewaysResult =
    { egressOnlyInternetGateways : Maybe (List EgressOnlyInternetGateway)
    , nextToken : Maybe String
    }



describeEgressOnlyInternetGatewaysResultDecoder : JD.Decoder DescribeEgressOnlyInternetGatewaysResult
describeEgressOnlyInternetGatewaysResultDecoder =
    JDP.decode DescribeEgressOnlyInternetGatewaysResult
        |> JDP.optional "egressOnlyInternetGateways" (JD.nullable (JD.list egressOnlyInternetGatewayDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeExportTas
-}
type alias DescribeExportTasksResult =
    { exportTasks : Maybe (List ExportTask)
    }



describeExportTasksResultDecoder : JD.Decoder DescribeExportTasksResult
describeExportTasksResultDecoder =
    JDP.decode DescribeExportTasksResult
        |> JDP.optional "exportTasks" (JD.nullable (JD.list exportTaskDecoder)) Nothing




{-| Type of HTTP response from describeFlowLo
-}
type alias DescribeFlowLogsResult =
    { flowLogs : Maybe (List FlowLog)
    , nextToken : Maybe String
    }



describeFlowLogsResultDecoder : JD.Decoder DescribeFlowLogsResult
describeFlowLogsResultDecoder =
    JDP.decode DescribeFlowLogsResult
        |> JDP.optional "flowLogs" (JD.nullable (JD.list flowLogDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeHostReservationOfferin
-}
type alias DescribeHostReservationOfferingsResult =
    { offeringSet : Maybe (List HostOffering)
    , nextToken : Maybe String
    }



describeHostReservationOfferingsResultDecoder : JD.Decoder DescribeHostReservationOfferingsResult
describeHostReservationOfferingsResultDecoder =
    JDP.decode DescribeHostReservationOfferingsResult
        |> JDP.optional "offeringSet" (JD.nullable (JD.list hostOfferingDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeHostReservatio
-}
type alias DescribeHostReservationsResult =
    { hostReservationSet : Maybe (List HostReservation)
    , nextToken : Maybe String
    }



describeHostReservationsResultDecoder : JD.Decoder DescribeHostReservationsResult
describeHostReservationsResultDecoder =
    JDP.decode DescribeHostReservationsResult
        |> JDP.optional "hostReservationSet" (JD.nullable (JD.list hostReservationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeHos
-}
type alias DescribeHostsResult =
    { hosts : Maybe (List Host)
    , nextToken : Maybe String
    }



describeHostsResultDecoder : JD.Decoder DescribeHostsResult
describeHostsResultDecoder =
    JDP.decode DescribeHostsResult
        |> JDP.optional "hosts" (JD.nullable (JD.list hostDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeIdForm
-}
type alias DescribeIdFormatResult =
    { statuses : Maybe (List IdFormat)
    }



describeIdFormatResultDecoder : JD.Decoder DescribeIdFormatResult
describeIdFormatResultDecoder =
    JDP.decode DescribeIdFormatResult
        |> JDP.optional "statuses" (JD.nullable (JD.list idFormatDecoder)) Nothing




{-| Type of HTTP response from describeIdentityIdForm
-}
type alias DescribeIdentityIdFormatResult =
    { statuses : Maybe (List IdFormat)
    }



describeIdentityIdFormatResultDecoder : JD.Decoder DescribeIdentityIdFormatResult
describeIdentityIdFormatResultDecoder =
    JDP.decode DescribeIdentityIdFormatResult
        |> JDP.optional "statuses" (JD.nullable (JD.list idFormatDecoder)) Nothing




{-| Type of HTTP response from describeImag
-}
type alias DescribeImagesResult =
    { images : Maybe (List Image)
    }



describeImagesResultDecoder : JD.Decoder DescribeImagesResult
describeImagesResultDecoder =
    JDP.decode DescribeImagesResult
        |> JDP.optional "images" (JD.nullable (JD.list imageDecoder)) Nothing




{-| Type of HTTP response from describeImportImageTas
-}
type alias DescribeImportImageTasksResult =
    { importImageTasks : Maybe (List ImportImageTask)
    , nextToken : Maybe String
    }



describeImportImageTasksResultDecoder : JD.Decoder DescribeImportImageTasksResult
describeImportImageTasksResultDecoder =
    JDP.decode DescribeImportImageTasksResult
        |> JDP.optional "importImageTasks" (JD.nullable (JD.list importImageTaskDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeImportSnapshotTas
-}
type alias DescribeImportSnapshotTasksResult =
    { importSnapshotTasks : Maybe (List ImportSnapshotTask)
    , nextToken : Maybe String
    }



describeImportSnapshotTasksResultDecoder : JD.Decoder DescribeImportSnapshotTasksResult
describeImportSnapshotTasksResultDecoder =
    JDP.decode DescribeImportSnapshotTasksResult
        |> JDP.optional "importSnapshotTasks" (JD.nullable (JD.list importSnapshotTaskDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstanceStat
-}
type alias DescribeInstanceStatusResult =
    { instanceStatuses : Maybe (List InstanceStatus)
    , nextToken : Maybe String
    }



describeInstanceStatusResultDecoder : JD.Decoder DescribeInstanceStatusResult
describeInstanceStatusResultDecoder =
    JDP.decode DescribeInstanceStatusResult
        |> JDP.optional "instanceStatuses" (JD.nullable (JD.list instanceStatusDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstanc
-}
type alias DescribeInstancesResult =
    { reservations : Maybe (List Reservation)
    , nextToken : Maybe String
    }



describeInstancesResultDecoder : JD.Decoder DescribeInstancesResult
describeInstancesResultDecoder =
    JDP.decode DescribeInstancesResult
        |> JDP.optional "reservations" (JD.nullable (JD.list reservationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInternetGatewa
-}
type alias DescribeInternetGatewaysResult =
    { internetGateways : Maybe (List InternetGateway)
    }



describeInternetGatewaysResultDecoder : JD.Decoder DescribeInternetGatewaysResult
describeInternetGatewaysResultDecoder =
    JDP.decode DescribeInternetGatewaysResult
        |> JDP.optional "internetGateways" (JD.nullable (JD.list internetGatewayDecoder)) Nothing




{-| Type of HTTP response from describeKeyPai
-}
type alias DescribeKeyPairsResult =
    { keyPairs : Maybe (List KeyPairInfo)
    }



describeKeyPairsResultDecoder : JD.Decoder DescribeKeyPairsResult
describeKeyPairsResultDecoder =
    JDP.decode DescribeKeyPairsResult
        |> JDP.optional "keyPairs" (JD.nullable (JD.list keyPairInfoDecoder)) Nothing




{-| Type of HTTP response from describeMovingAddress
-}
type alias DescribeMovingAddressesResult =
    { movingAddressStatuses : Maybe (List MovingAddressStatus)
    , nextToken : Maybe String
    }



describeMovingAddressesResultDecoder : JD.Decoder DescribeMovingAddressesResult
describeMovingAddressesResultDecoder =
    JDP.decode DescribeMovingAddressesResult
        |> JDP.optional "movingAddressStatuses" (JD.nullable (JD.list movingAddressStatusDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeNatGatewa
-}
type alias DescribeNatGatewaysResult =
    { natGateways : Maybe (List NatGateway)
    , nextToken : Maybe String
    }



describeNatGatewaysResultDecoder : JD.Decoder DescribeNatGatewaysResult
describeNatGatewaysResultDecoder =
    JDP.decode DescribeNatGatewaysResult
        |> JDP.optional "natGateways" (JD.nullable (JD.list natGatewayDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeNetworkAc
-}
type alias DescribeNetworkAclsResult =
    { networkAcls : Maybe (List NetworkAcl)
    }



describeNetworkAclsResultDecoder : JD.Decoder DescribeNetworkAclsResult
describeNetworkAclsResultDecoder =
    JDP.decode DescribeNetworkAclsResult
        |> JDP.optional "networkAcls" (JD.nullable (JD.list networkAclDecoder)) Nothing




{-| Type of HTTP response from describeNetworkInterfaceAttribu
-}
type alias DescribeNetworkInterfaceAttributeResult =
    { networkInterfaceId : Maybe String
    , description : Maybe AttributeValue
    , sourceDestCheck : Maybe AttributeBooleanValue
    , groups : Maybe (List GroupIdentifier)
    , attachment : Maybe NetworkInterfaceAttachment
    }



describeNetworkInterfaceAttributeResultDecoder : JD.Decoder DescribeNetworkInterfaceAttributeResult
describeNetworkInterfaceAttributeResultDecoder =
    JDP.decode DescribeNetworkInterfaceAttributeResult
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "sourceDestCheck" (JD.nullable attributeBooleanValueDecoder) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "attachment" (JD.nullable networkInterfaceAttachmentDecoder) Nothing




{-| Type of HTTP response from describeNetworkInterfac
-}
type alias DescribeNetworkInterfacesResult =
    { networkInterfaces : Maybe (List NetworkInterface)
    }



describeNetworkInterfacesResultDecoder : JD.Decoder DescribeNetworkInterfacesResult
describeNetworkInterfacesResultDecoder =
    JDP.decode DescribeNetworkInterfacesResult
        |> JDP.optional "networkInterfaces" (JD.nullable (JD.list networkInterfaceDecoder)) Nothing




{-| Type of HTTP response from describePlacementGrou
-}
type alias DescribePlacementGroupsResult =
    { placementGroups : Maybe (List PlacementGroup)
    }



describePlacementGroupsResultDecoder : JD.Decoder DescribePlacementGroupsResult
describePlacementGroupsResultDecoder =
    JDP.decode DescribePlacementGroupsResult
        |> JDP.optional "placementGroups" (JD.nullable (JD.list placementGroupDecoder)) Nothing




{-| Type of HTTP response from describePrefixLis
-}
type alias DescribePrefixListsResult =
    { prefixLists : Maybe (List PrefixList)
    , nextToken : Maybe String
    }



describePrefixListsResultDecoder : JD.Decoder DescribePrefixListsResult
describePrefixListsResultDecoder =
    JDP.decode DescribePrefixListsResult
        |> JDP.optional "prefixLists" (JD.nullable (JD.list prefixListDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeRegio
-}
type alias DescribeRegionsResult =
    { regions : Maybe (List Region)
    }



describeRegionsResultDecoder : JD.Decoder DescribeRegionsResult
describeRegionsResultDecoder =
    JDP.decode DescribeRegionsResult
        |> JDP.optional "regions" (JD.nullable (JD.list regionDecoder)) Nothing




{-| Type of HTTP response from describeReservedInstancesListin
-}
type alias DescribeReservedInstancesListingsResult =
    { reservedInstancesListings : Maybe (List ReservedInstancesListing)
    }



describeReservedInstancesListingsResultDecoder : JD.Decoder DescribeReservedInstancesListingsResult
describeReservedInstancesListingsResultDecoder =
    JDP.decode DescribeReservedInstancesListingsResult
        |> JDP.optional "reservedInstancesListings" (JD.nullable (JD.list reservedInstancesListingDecoder)) Nothing




{-| Type of HTTP response from describeReservedInstancesModificatio
-}
type alias DescribeReservedInstancesModificationsResult =
    { reservedInstancesModifications : Maybe (List ReservedInstancesModification)
    , nextToken : Maybe String
    }



describeReservedInstancesModificationsResultDecoder : JD.Decoder DescribeReservedInstancesModificationsResult
describeReservedInstancesModificationsResultDecoder =
    JDP.decode DescribeReservedInstancesModificationsResult
        |> JDP.optional "reservedInstancesModifications" (JD.nullable (JD.list reservedInstancesModificationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeReservedInstancesOfferin
-}
type alias DescribeReservedInstancesOfferingsResult =
    { reservedInstancesOfferings : Maybe (List ReservedInstancesOffering)
    , nextToken : Maybe String
    }



describeReservedInstancesOfferingsResultDecoder : JD.Decoder DescribeReservedInstancesOfferingsResult
describeReservedInstancesOfferingsResultDecoder =
    JDP.decode DescribeReservedInstancesOfferingsResult
        |> JDP.optional "reservedInstancesOfferings" (JD.nullable (JD.list reservedInstancesOfferingDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeReservedInstanc
-}
type alias DescribeReservedInstancesResult =
    { reservedInstances : Maybe (List ReservedInstances)
    }



describeReservedInstancesResultDecoder : JD.Decoder DescribeReservedInstancesResult
describeReservedInstancesResultDecoder =
    JDP.decode DescribeReservedInstancesResult
        |> JDP.optional "reservedInstances" (JD.nullable (JD.list reservedInstancesDecoder)) Nothing




{-| Type of HTTP response from describeRouteTabl
-}
type alias DescribeRouteTablesResult =
    { routeTables : Maybe (List RouteTable)
    }



describeRouteTablesResultDecoder : JD.Decoder DescribeRouteTablesResult
describeRouteTablesResultDecoder =
    JDP.decode DescribeRouteTablesResult
        |> JDP.optional "routeTables" (JD.nullable (JD.list routeTableDecoder)) Nothing




{-| Type of HTTP response from describeScheduledInstanceAvailabili
-}
type alias DescribeScheduledInstanceAvailabilityResult =
    { nextToken : Maybe String
    , scheduledInstanceAvailabilitySet : Maybe (List ScheduledInstanceAvailability)
    }



describeScheduledInstanceAvailabilityResultDecoder : JD.Decoder DescribeScheduledInstanceAvailabilityResult
describeScheduledInstanceAvailabilityResultDecoder =
    JDP.decode DescribeScheduledInstanceAvailabilityResult
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduledInstanceAvailabilitySet" (JD.nullable (JD.list scheduledInstanceAvailabilityDecoder)) Nothing




{-| Type of HTTP response from describeScheduledInstanc
-}
type alias DescribeScheduledInstancesResult =
    { nextToken : Maybe String
    , scheduledInstanceSet : Maybe (List ScheduledInstance)
    }



describeScheduledInstancesResultDecoder : JD.Decoder DescribeScheduledInstancesResult
describeScheduledInstancesResultDecoder =
    JDP.decode DescribeScheduledInstancesResult
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduledInstanceSet" (JD.nullable (JD.list scheduledInstanceDecoder)) Nothing




{-| Type of HTTP response from describeSecurityGroupReferenc
-}
type alias DescribeSecurityGroupReferencesResult =
    { securityGroupReferenceSet : Maybe (List SecurityGroupReference)
    }



describeSecurityGroupReferencesResultDecoder : JD.Decoder DescribeSecurityGroupReferencesResult
describeSecurityGroupReferencesResultDecoder =
    JDP.decode DescribeSecurityGroupReferencesResult
        |> JDP.optional "securityGroupReferenceSet" (JD.nullable (JD.list securityGroupReferenceDecoder)) Nothing




{-| Type of HTTP response from describeSecurityGrou
-}
type alias DescribeSecurityGroupsResult =
    { securityGroups : Maybe (List SecurityGroup)
    }



describeSecurityGroupsResultDecoder : JD.Decoder DescribeSecurityGroupsResult
describeSecurityGroupsResultDecoder =
    JDP.decode DescribeSecurityGroupsResult
        |> JDP.optional "securityGroups" (JD.nullable (JD.list securityGroupDecoder)) Nothing




{-| Type of HTTP response from describeSnapshotAttribu
-}
type alias DescribeSnapshotAttributeResult =
    { snapshotId : Maybe String
    , createVolumePermissions : Maybe (List CreateVolumePermission)
    , productCodes : Maybe (List ProductCode)
    }



describeSnapshotAttributeResultDecoder : JD.Decoder DescribeSnapshotAttributeResult
describeSnapshotAttributeResultDecoder =
    JDP.decode DescribeSnapshotAttributeResult
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createVolumePermissions" (JD.nullable (JD.list createVolumePermissionDecoder)) Nothing
        |> JDP.optional "productCodes" (JD.nullable (JD.list productCodeDecoder)) Nothing




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




{-| Type of HTTP response from describeSpotDatafeedSubscripti
-}
type alias DescribeSpotDatafeedSubscriptionResult =
    { spotDatafeedSubscription : Maybe SpotDatafeedSubscription
    }



describeSpotDatafeedSubscriptionResultDecoder : JD.Decoder DescribeSpotDatafeedSubscriptionResult
describeSpotDatafeedSubscriptionResultDecoder =
    JDP.decode DescribeSpotDatafeedSubscriptionResult
        |> JDP.optional "spotDatafeedSubscription" (JD.nullable spotDatafeedSubscriptionDecoder) Nothing




{-| Type of HTTP response from describeSpotFleetInstances
-}
type alias DescribeSpotFleetInstancesResponse =
    { spotFleetRequestId : String
    , activeInstances : (List ActiveInstance)
    , nextToken : Maybe String
    }



describeSpotFleetInstancesResponseDecoder : JD.Decoder DescribeSpotFleetInstancesResponse
describeSpotFleetInstancesResponseDecoder =
    JDP.decode DescribeSpotFleetInstancesResponse
        |> JDP.required "spotFleetRequestId" JD.string
        |> JDP.required "activeInstances" (JD.list activeInstanceDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeSpotFleetRequestHistory
-}
type alias DescribeSpotFleetRequestHistoryResponse =
    { spotFleetRequestId : String
    , startTime : Date
    , lastEvaluatedTime : Date
    , historyRecords : (List HistoryRecord)
    , nextToken : Maybe String
    }



describeSpotFleetRequestHistoryResponseDecoder : JD.Decoder DescribeSpotFleetRequestHistoryResponse
describeSpotFleetRequestHistoryResponseDecoder =
    JDP.decode DescribeSpotFleetRequestHistoryResponse
        |> JDP.required "spotFleetRequestId" JD.string
        |> JDP.required "startTime" JDX.date
        |> JDP.required "lastEvaluatedTime" JDX.date
        |> JDP.required "historyRecords" (JD.list historyRecordDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeSpotFleetRequests
-}
type alias DescribeSpotFleetRequestsResponse =
    { spotFleetRequestConfigs : (List SpotFleetRequestConfig)
    , nextToken : Maybe String
    }



describeSpotFleetRequestsResponseDecoder : JD.Decoder DescribeSpotFleetRequestsResponse
describeSpotFleetRequestsResponseDecoder =
    JDP.decode DescribeSpotFleetRequestsResponse
        |> JDP.required "spotFleetRequestConfigs" (JD.list spotFleetRequestConfigDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeSpotInstanceReques
-}
type alias DescribeSpotInstanceRequestsResult =
    { spotInstanceRequests : Maybe (List SpotInstanceRequest)
    }



describeSpotInstanceRequestsResultDecoder : JD.Decoder DescribeSpotInstanceRequestsResult
describeSpotInstanceRequestsResultDecoder =
    JDP.decode DescribeSpotInstanceRequestsResult
        |> JDP.optional "spotInstanceRequests" (JD.nullable (JD.list spotInstanceRequestDecoder)) Nothing




{-| Type of HTTP response from describeSpotPriceHisto
-}
type alias DescribeSpotPriceHistoryResult =
    { spotPriceHistory : Maybe (List SpotPrice)
    , nextToken : Maybe String
    }



describeSpotPriceHistoryResultDecoder : JD.Decoder DescribeSpotPriceHistoryResult
describeSpotPriceHistoryResultDecoder =
    JDP.decode DescribeSpotPriceHistoryResult
        |> JDP.optional "spotPriceHistory" (JD.nullable (JD.list spotPriceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeStaleSecurityGrou
-}
type alias DescribeStaleSecurityGroupsResult =
    { staleSecurityGroupSet : Maybe (List StaleSecurityGroup)
    , nextToken : Maybe String
    }



describeStaleSecurityGroupsResultDecoder : JD.Decoder DescribeStaleSecurityGroupsResult
describeStaleSecurityGroupsResultDecoder =
    JDP.decode DescribeStaleSecurityGroupsResult
        |> JDP.optional "staleSecurityGroupSet" (JD.nullable (JD.list staleSecurityGroupDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeSubne
-}
type alias DescribeSubnetsResult =
    { subnets : Maybe (List Subnet)
    }



describeSubnetsResultDecoder : JD.Decoder DescribeSubnetsResult
describeSubnetsResultDecoder =
    JDP.decode DescribeSubnetsResult
        |> JDP.optional "subnets" (JD.nullable (JD.list subnetDecoder)) Nothing




{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsResult =
    { tags : Maybe (List TagDescription)
    , nextToken : Maybe String
    }



describeTagsResultDecoder : JD.Decoder DescribeTagsResult
describeTagsResultDecoder =
    JDP.decode DescribeTagsResult
        |> JDP.optional "tags" (JD.nullable (JD.list tagDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeVolumeAttribu
-}
type alias DescribeVolumeAttributeResult =
    { volumeId : Maybe String
    , autoEnableIO : Maybe AttributeBooleanValue
    , productCodes : Maybe (List ProductCode)
    }



describeVolumeAttributeResultDecoder : JD.Decoder DescribeVolumeAttributeResult
describeVolumeAttributeResultDecoder =
    JDP.decode DescribeVolumeAttributeResult
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoEnableIO" (JD.nullable attributeBooleanValueDecoder) Nothing
        |> JDP.optional "productCodes" (JD.nullable (JD.list productCodeDecoder)) Nothing




{-| Type of HTTP response from describeVolumeStat
-}
type alias DescribeVolumeStatusResult =
    { volumeStatuses : Maybe (List VolumeStatusItem)
    , nextToken : Maybe String
    }



describeVolumeStatusResultDecoder : JD.Decoder DescribeVolumeStatusResult
describeVolumeStatusResultDecoder =
    JDP.decode DescribeVolumeStatusResult
        |> JDP.optional "volumeStatuses" (JD.nullable (JD.list volumeStatusItemDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeVolum
-}
type alias DescribeVolumesResult =
    { volumes : Maybe (List Volume)
    , nextToken : Maybe String
    }



describeVolumesResultDecoder : JD.Decoder DescribeVolumesResult
describeVolumesResultDecoder =
    JDP.decode DescribeVolumesResult
        |> JDP.optional "volumes" (JD.nullable (JD.list volumeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeVpcAttribu
-}
type alias DescribeVpcAttributeResult =
    { vpcId : Maybe String
    , enableDnsSupport : Maybe AttributeBooleanValue
    , enableDnsHostnames : Maybe AttributeBooleanValue
    }



describeVpcAttributeResultDecoder : JD.Decoder DescribeVpcAttributeResult
describeVpcAttributeResultDecoder =
    JDP.decode DescribeVpcAttributeResult
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "enableDnsSupport" (JD.nullable attributeBooleanValueDecoder) Nothing
        |> JDP.optional "enableDnsHostnames" (JD.nullable attributeBooleanValueDecoder) Nothing




{-| Type of HTTP response from describeVpcClassicLinkDnsSuppo
-}
type alias DescribeVpcClassicLinkDnsSupportResult =
    { vpcs : Maybe (List ClassicLinkDnsSupport)
    , nextToken : Maybe String
    }



describeVpcClassicLinkDnsSupportResultDecoder : JD.Decoder DescribeVpcClassicLinkDnsSupportResult
describeVpcClassicLinkDnsSupportResultDecoder =
    JDP.decode DescribeVpcClassicLinkDnsSupportResult
        |> JDP.optional "vpcs" (JD.nullable (JD.list classicLinkDnsSupportDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeVpcClassicLi
-}
type alias DescribeVpcClassicLinkResult =
    { vpcs : Maybe (List VpcClassicLink)
    }



describeVpcClassicLinkResultDecoder : JD.Decoder DescribeVpcClassicLinkResult
describeVpcClassicLinkResultDecoder =
    JDP.decode DescribeVpcClassicLinkResult
        |> JDP.optional "vpcs" (JD.nullable (JD.list vpcClassicLinkDecoder)) Nothing




{-| Type of HTTP response from describeVpcEndpointServic
-}
type alias DescribeVpcEndpointServicesResult =
    { serviceNames : Maybe (List String)
    , nextToken : Maybe String
    }



describeVpcEndpointServicesResultDecoder : JD.Decoder DescribeVpcEndpointServicesResult
describeVpcEndpointServicesResultDecoder =
    JDP.decode DescribeVpcEndpointServicesResult
        |> JDP.optional "serviceNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeVpcEndpoin
-}
type alias DescribeVpcEndpointsResult =
    { vpcEndpoints : Maybe (List VpcEndpoint)
    , nextToken : Maybe String
    }



describeVpcEndpointsResultDecoder : JD.Decoder DescribeVpcEndpointsResult
describeVpcEndpointsResultDecoder =
    JDP.decode DescribeVpcEndpointsResult
        |> JDP.optional "vpcEndpoints" (JD.nullable (JD.list vpcEndpointDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeVpcPeeringConnectio
-}
type alias DescribeVpcPeeringConnectionsResult =
    { vpcPeeringConnections : Maybe (List VpcPeeringConnection)
    }



describeVpcPeeringConnectionsResultDecoder : JD.Decoder DescribeVpcPeeringConnectionsResult
describeVpcPeeringConnectionsResultDecoder =
    JDP.decode DescribeVpcPeeringConnectionsResult
        |> JDP.optional "vpcPeeringConnections" (JD.nullable (JD.list vpcPeeringConnectionDecoder)) Nothing




{-| Type of HTTP response from describeVp
-}
type alias DescribeVpcsResult =
    { vpcs : Maybe (List Vpc)
    }



describeVpcsResultDecoder : JD.Decoder DescribeVpcsResult
describeVpcsResultDecoder =
    JDP.decode DescribeVpcsResult
        |> JDP.optional "vpcs" (JD.nullable (JD.list vpcDecoder)) Nothing




{-| Type of HTTP response from describeVpnConnectio
-}
type alias DescribeVpnConnectionsResult =
    { vpnConnections : Maybe (List VpnConnection)
    }



describeVpnConnectionsResultDecoder : JD.Decoder DescribeVpnConnectionsResult
describeVpnConnectionsResultDecoder =
    JDP.decode DescribeVpnConnectionsResult
        |> JDP.optional "vpnConnections" (JD.nullable (JD.list vpnConnectionDecoder)) Nothing




{-| Type of HTTP response from describeVpnGatewa
-}
type alias DescribeVpnGatewaysResult =
    { vpnGateways : Maybe (List VpnGateway)
    }



describeVpnGatewaysResultDecoder : JD.Decoder DescribeVpnGatewaysResult
describeVpnGatewaysResultDecoder =
    JDP.decode DescribeVpnGatewaysResult
        |> JDP.optional "vpnGateways" (JD.nullable (JD.list vpnGatewayDecoder)) Nothing




{-| Type of HTTP response from detachClassicLinkV
-}
type alias DetachClassicLinkVpcResult =
    { return : Maybe Bool
    }



detachClassicLinkVpcResultDecoder : JD.Decoder DetachClassicLinkVpcResult
detachClassicLinkVpcResultDecoder =
    JDP.decode DetachClassicLinkVpcResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| One of

* `DeviceType_ebs`
* `DeviceType_instance-store`

-}
type DeviceType
    = DeviceType_ebs
    | DeviceType_instance_store



deviceTypeDecoder : JD.Decoder DeviceType
deviceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ebs" ->
                        JD.succeed DeviceType_ebs

                    "instance_store" ->
                        JD.succeed DeviceType_instance_store


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a DHCP configuration option.</p>
-}
type alias DhcpConfiguration =
    { key : Maybe String
    , values : Maybe (List AttributeValue)
    }



dhcpConfigurationDecoder : JD.Decoder DhcpConfiguration
dhcpConfigurationDecoder =
    JDP.decode DhcpConfiguration
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list attributeValueDecoder)) Nothing




{-| <p>Describes a set of DHCP options.</p>
-}
type alias DhcpOptions =
    { dhcpOptionsId : Maybe String
    , dhcpConfigurations : Maybe (List DhcpConfiguration)
    , tags : Maybe (List Tag)
    }



dhcpOptionsDecoder : JD.Decoder DhcpOptions
dhcpOptionsDecoder =
    JDP.decode DhcpOptions
        |> JDP.optional "dhcpOptionsId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dhcpConfigurations" (JD.nullable (JD.list dhcpConfigurationDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from disableVpcClassicLinkDnsSuppo
-}
type alias DisableVpcClassicLinkDnsSupportResult =
    { return : Maybe Bool
    }



disableVpcClassicLinkDnsSupportResultDecoder : JD.Decoder DisableVpcClassicLinkDnsSupportResult
disableVpcClassicLinkDnsSupportResultDecoder =
    JDP.decode DisableVpcClassicLinkDnsSupportResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from disableVpcClassicLi
-}
type alias DisableVpcClassicLinkResult =
    { return : Maybe Bool
    }



disableVpcClassicLinkResultDecoder : JD.Decoder DisableVpcClassicLinkResult
disableVpcClassicLinkResultDecoder =
    JDP.decode DisableVpcClassicLinkResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from disassociateSubnetCidrBlo
-}
type alias DisassociateSubnetCidrBlockResult =
    { subnetId : Maybe String
    , ipv6CidrBlockAssociation : Maybe SubnetIpv6CidrBlockAssociation
    }



disassociateSubnetCidrBlockResultDecoder : JD.Decoder DisassociateSubnetCidrBlockResult
disassociateSubnetCidrBlockResultDecoder =
    JDP.decode DisassociateSubnetCidrBlockResult
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockAssociation" (JD.nullable subnetIpv6CidrBlockAssociationDecoder) Nothing




{-| Type of HTTP response from disassociateVpcCidrBlo
-}
type alias DisassociateVpcCidrBlockResult =
    { vpcId : Maybe String
    , ipv6CidrBlockAssociation : Maybe VpcIpv6CidrBlockAssociation
    }



disassociateVpcCidrBlockResultDecoder : JD.Decoder DisassociateVpcCidrBlockResult
disassociateVpcCidrBlockResultDecoder =
    JDP.decode DisassociateVpcCidrBlockResult
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockAssociation" (JD.nullable vpcIpv6CidrBlockAssociationDecoder) Nothing




{-| <p>Describes a disk image.</p>
-}
type alias DiskImage =
    { image : Maybe DiskImageDetail
    , description : Maybe String
    , volume : Maybe VolumeDetail
    }



diskImageDecoder : JD.Decoder DiskImage
diskImageDecoder =
    JDP.decode DiskImage
        |> JDP.optional "image" (JD.nullable diskImageDetailDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "volume" (JD.nullable volumeDetailDecoder) Nothing




{-| <p>Describes a disk image.</p>
-}
type alias DiskImageDescription =
    { format : DiskImageFormat
    , size : Int
    , importManifestUrl : String
    , checksum : Maybe String
    }



diskImageDescriptionDecoder : JD.Decoder DiskImageDescription
diskImageDescriptionDecoder =
    JDP.decode DiskImageDescription
        |> JDP.required "format" diskImageFormatDecoder
        |> JDP.required "size" JD.int
        |> JDP.required "importManifestUrl" JD.string
        |> JDP.optional "checksum" (JD.nullable JD.string) Nothing




{-| <p>Describes a disk image.</p>
-}
type alias DiskImageDetail =
    { format : DiskImageFormat
    , bytes : Int
    , importManifestUrl : String
    }



diskImageDetailDecoder : JD.Decoder DiskImageDetail
diskImageDetailDecoder =
    JDP.decode DiskImageDetail
        |> JDP.required "format" diskImageFormatDecoder
        |> JDP.required "bytes" JD.int
        |> JDP.required "importManifestUrl" JD.string




{-| One of

* `DiskImageFormat_VMDK`
* `DiskImageFormat_RAW`
* `DiskImageFormat_VHD`

-}
type DiskImageFormat
    = DiskImageFormat_VMDK
    | DiskImageFormat_RAW
    | DiskImageFormat_VHD



diskImageFormatDecoder : JD.Decoder DiskImageFormat
diskImageFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VMDK" ->
                        JD.succeed DiskImageFormat_VMDK

                    "RAW" ->
                        JD.succeed DiskImageFormat_RAW

                    "VHD" ->
                        JD.succeed DiskImageFormat_VHD


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a disk image volume.</p>
-}
type alias DiskImageVolumeDescription =
    { size : Maybe Int
    , id : String
    }



diskImageVolumeDescriptionDecoder : JD.Decoder DiskImageVolumeDescription
diskImageVolumeDescriptionDecoder =
    JDP.decode DiskImageVolumeDescription
        |> JDP.optional "size" (JD.nullable JD.int) Nothing
        |> JDP.required "id" JD.string




{-| One of

* `DomainType_vpc`
* `DomainType_standard`

-}
type DomainType
    = DomainType_vpc
    | DomainType_standard



domainTypeDecoder : JD.Decoder DomainType
domainTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "vpc" ->
                        JD.succeed DomainType_vpc

                    "standard" ->
                        JD.succeed DomainType_standard


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a block device for an EBS volume.</p>
-}
type alias EbsBlockDevice =
    { snapshotId : Maybe String
    , volumeSize : Maybe Int
    , deleteOnTermination : Maybe Bool
    , volumeType : Maybe VolumeType
    , iops : Maybe Int
    , encrypted : Maybe Bool
    }



ebsBlockDeviceDecoder : JD.Decoder EbsBlockDevice
ebsBlockDeviceDecoder =
    JDP.decode EbsBlockDevice
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing
        |> JDP.optional "volumeType" (JD.nullable volumeTypeDecoder) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing




{-| <p>Describes a parameter used to set up an EBS volume in a block device mapping.</p>
-}
type alias EbsInstanceBlockDevice =
    { volumeId : Maybe String
    , status : Maybe AttachmentStatus
    , attachTime : Maybe Date
    , deleteOnTermination : Maybe Bool
    }



ebsInstanceBlockDeviceDecoder : JD.Decoder EbsInstanceBlockDevice
ebsInstanceBlockDeviceDecoder =
    JDP.decode EbsInstanceBlockDevice
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable attachmentStatusDecoder) Nothing
        |> JDP.optional "attachTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing




{-| <p>Describes information used to set up an EBS volume specified in a block device mapping.</p>
-}
type alias EbsInstanceBlockDeviceSpecification =
    { volumeId : Maybe String
    , deleteOnTermination : Maybe Bool
    }



ebsInstanceBlockDeviceSpecificationDecoder : JD.Decoder EbsInstanceBlockDeviceSpecification
ebsInstanceBlockDeviceSpecificationDecoder =
    JDP.decode EbsInstanceBlockDeviceSpecification
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing




{-| <p>Describes an egress-only Internet gateway.</p>
-}
type alias EgressOnlyInternetGateway =
    { egressOnlyInternetGatewayId : Maybe String
    , attachments : Maybe (List InternetGatewayAttachment)
    }



egressOnlyInternetGatewayDecoder : JD.Decoder EgressOnlyInternetGateway
egressOnlyInternetGatewayDecoder =
    JDP.decode EgressOnlyInternetGateway
        |> JDP.optional "egressOnlyInternetGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "attachments" (JD.nullable (JD.list internetGatewayAttachmentDecoder)) Nothing




{-| Type of HTTP response from enableVpcClassicLinkDnsSuppo
-}
type alias EnableVpcClassicLinkDnsSupportResult =
    { return : Maybe Bool
    }



enableVpcClassicLinkDnsSupportResultDecoder : JD.Decoder EnableVpcClassicLinkDnsSupportResult
enableVpcClassicLinkDnsSupportResultDecoder =
    JDP.decode EnableVpcClassicLinkDnsSupportResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from enableVpcClassicLi
-}
type alias EnableVpcClassicLinkResult =
    { return : Maybe Bool
    }



enableVpcClassicLinkResultDecoder : JD.Decoder EnableVpcClassicLinkResult
enableVpcClassicLinkResultDecoder =
    JDP.decode EnableVpcClassicLinkResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| One of

* `EventCode_instance-reboot`
* `EventCode_system-reboot`
* `EventCode_system-maintenance`
* `EventCode_instance-retirement`
* `EventCode_instance-stop`

-}
type EventCode
    = EventCode_instance_reboot
    | EventCode_system_reboot
    | EventCode_system_maintenance
    | EventCode_instance_retirement
    | EventCode_instance_stop



eventCodeDecoder : JD.Decoder EventCode
eventCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "instance_reboot" ->
                        JD.succeed EventCode_instance_reboot

                    "system_reboot" ->
                        JD.succeed EventCode_system_reboot

                    "system_maintenance" ->
                        JD.succeed EventCode_system_maintenance

                    "instance_retirement" ->
                        JD.succeed EventCode_instance_retirement

                    "instance_stop" ->
                        JD.succeed EventCode_instance_stop


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a Spot fleet event.</p>
-}
type alias EventInformation =
    { instanceId : Maybe String
    , eventSubType : Maybe String
    , eventDescription : Maybe String
    }



eventInformationDecoder : JD.Decoder EventInformation
eventInformationDecoder =
    JDP.decode EventInformation
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventSubType" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventDescription" (JD.nullable JD.string) Nothing




{-| One of

* `EventType_instanceChange`
* `EventType_fleetRequestChange`
* `EventType_error`

-}
type EventType
    = EventType_instanceChange
    | EventType_fleetRequestChange
    | EventType_error



eventTypeDecoder : JD.Decoder EventType
eventTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "instanceChange" ->
                        JD.succeed EventType_instanceChange

                    "fleetRequestChange" ->
                        JD.succeed EventType_fleetRequestChange

                    "error" ->
                        JD.succeed EventType_error


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ExcessCapacityTerminationPolicy_noTermination`
* `ExcessCapacityTerminationPolicy_default`

-}
type ExcessCapacityTerminationPolicy
    = ExcessCapacityTerminationPolicy_noTermination
    | ExcessCapacityTerminationPolicy_default



excessCapacityTerminationPolicyDecoder : JD.Decoder ExcessCapacityTerminationPolicy
excessCapacityTerminationPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "noTermination" ->
                        JD.succeed ExcessCapacityTerminationPolicy_noTermination

                    "default" ->
                        JD.succeed ExcessCapacityTerminationPolicy_default


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ExportEnvironment_citrix`
* `ExportEnvironment_vmware`
* `ExportEnvironment_microsoft`

-}
type ExportEnvironment
    = ExportEnvironment_citrix
    | ExportEnvironment_vmware
    | ExportEnvironment_microsoft



exportEnvironmentDecoder : JD.Decoder ExportEnvironment
exportEnvironmentDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "citrix" ->
                        JD.succeed ExportEnvironment_citrix

                    "vmware" ->
                        JD.succeed ExportEnvironment_vmware

                    "microsoft" ->
                        JD.succeed ExportEnvironment_microsoft


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an instance export task.</p>
-}
type alias ExportTask =
    { exportTaskId : Maybe String
    , description : Maybe String
    , state : Maybe ExportTaskState
    , statusMessage : Maybe String
    , instanceExportDetails : Maybe InstanceExportDetails
    , exportToS3Task : Maybe ExportToS3Task
    }



exportTaskDecoder : JD.Decoder ExportTask
exportTaskDecoder =
    JDP.decode ExportTask
        |> JDP.optional "exportTaskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable exportTaskStateDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceExportDetails" (JD.nullable instanceExportDetailsDecoder) Nothing
        |> JDP.optional "exportToS3Task" (JD.nullable exportToS3TaskDecoder) Nothing




{-| One of

* `ExportTaskState_active`
* `ExportTaskState_cancelling`
* `ExportTaskState_cancelled`
* `ExportTaskState_completed`

-}
type ExportTaskState
    = ExportTaskState_active
    | ExportTaskState_cancelling
    | ExportTaskState_cancelled
    | ExportTaskState_completed



exportTaskStateDecoder : JD.Decoder ExportTaskState
exportTaskStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed ExportTaskState_active

                    "cancelling" ->
                        JD.succeed ExportTaskState_cancelling

                    "cancelled" ->
                        JD.succeed ExportTaskState_cancelled

                    "completed" ->
                        JD.succeed ExportTaskState_completed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the format and location for an instance export task.</p>
-}
type alias ExportToS3Task =
    { diskImageFormat : Maybe DiskImageFormat
    , containerFormat : Maybe ContainerFormat
    , s3Bucket : Maybe String
    , s3Key : Maybe String
    }



exportToS3TaskDecoder : JD.Decoder ExportToS3Task
exportToS3TaskDecoder =
    JDP.decode ExportToS3Task
        |> JDP.optional "diskImageFormat" (JD.nullable diskImageFormatDecoder) Nothing
        |> JDP.optional "containerFormat" (JD.nullable containerFormatDecoder) Nothing
        |> JDP.optional "s3Bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Key" (JD.nullable JD.string) Nothing




{-| <p>Describes an instance export task.</p>
-}
type alias ExportToS3TaskSpecification =
    { diskImageFormat : Maybe DiskImageFormat
    , containerFormat : Maybe ContainerFormat
    , s3Bucket : Maybe String
    , s3Prefix : Maybe String
    }



exportToS3TaskSpecificationDecoder : JD.Decoder ExportToS3TaskSpecification
exportToS3TaskSpecificationDecoder =
    JDP.decode ExportToS3TaskSpecification
        |> JDP.optional "diskImageFormat" (JD.nullable diskImageFormatDecoder) Nothing
        |> JDP.optional "containerFormat" (JD.nullable containerFormatDecoder) Nothing
        |> JDP.optional "s3Bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Prefix" (JD.nullable JD.string) Nothing




{-| <p>A filter name and value pair that is used to return a more specific list of results. Filters can be used to match a set of resources by various criteria, such as tags, attributes, or IDs.</p>
-}
type alias Filter =
    { name : Maybe String
    , values : Maybe (List String)
    }



filterDecoder : JD.Decoder Filter
filterDecoder =
    JDP.decode Filter
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `FleetType_request`
* `FleetType_maintain`

-}
type FleetType
    = FleetType_request
    | FleetType_maintain



fleetTypeDecoder : JD.Decoder FleetType
fleetTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "request" ->
                        JD.succeed FleetType_request

                    "maintain" ->
                        JD.succeed FleetType_maintain


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a flow log.</p>
-}
type alias FlowLog =
    { creationTime : Maybe Date
    , flowLogId : Maybe String
    , flowLogStatus : Maybe String
    , resourceId : Maybe String
    , trafficType : Maybe TrafficType
    , logGroupName : Maybe String
    , deliverLogsStatus : Maybe String
    , deliverLogsErrorMessage : Maybe String
    , deliverLogsPermissionArn : Maybe String
    }



flowLogDecoder : JD.Decoder FlowLog
flowLogDecoder =
    JDP.decode FlowLog
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "flowLogId" (JD.nullable JD.string) Nothing
        |> JDP.optional "flowLogStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "trafficType" (JD.nullable trafficTypeDecoder) Nothing
        |> JDP.optional "logGroupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deliverLogsStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "deliverLogsErrorMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "deliverLogsPermissionArn" (JD.nullable JD.string) Nothing




{-| One of

* `FlowLogsResourceType_VPC`
* `FlowLogsResourceType_Subnet`
* `FlowLogsResourceType_NetworkInterface`

-}
type FlowLogsResourceType
    = FlowLogsResourceType_VPC
    | FlowLogsResourceType_Subnet
    | FlowLogsResourceType_NetworkInterface



flowLogsResourceTypeDecoder : JD.Decoder FlowLogsResourceType
flowLogsResourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VPC" ->
                        JD.succeed FlowLogsResourceType_VPC

                    "Subnet" ->
                        JD.succeed FlowLogsResourceType_Subnet

                    "NetworkInterface" ->
                        JD.succeed FlowLogsResourceType_NetworkInterface


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `GatewayType_ipsec.1`

-}
type GatewayType
    = GatewayType_ipsec_1



gatewayTypeDecoder : JD.Decoder GatewayType
gatewayTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ipsec_1" ->
                        JD.succeed GatewayType_ipsec_1


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getConsoleOutp
-}
type alias GetConsoleOutputResult =
    { instanceId : Maybe String
    , timestamp : Maybe Date
    , output : Maybe String
    }



getConsoleOutputResultDecoder : JD.Decoder GetConsoleOutputResult
getConsoleOutputResultDecoder =
    JDP.decode GetConsoleOutputResult
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "output" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getConsoleScreensh
-}
type alias GetConsoleScreenshotResult =
    { instanceId : Maybe String
    , imageData : Maybe String
    }



getConsoleScreenshotResultDecoder : JD.Decoder GetConsoleScreenshotResult
getConsoleScreenshotResultDecoder =
    JDP.decode GetConsoleScreenshotResult
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "imageData" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getHostReservationPurchasePrevi
-}
type alias GetHostReservationPurchasePreviewResult =
    { purchase : Maybe (List Purchase)
    , totalUpfrontPrice : Maybe String
    , totalHourlyPrice : Maybe String
    , currencyCode : Maybe CurrencyCodeValues
    }



getHostReservationPurchasePreviewResultDecoder : JD.Decoder GetHostReservationPurchasePreviewResult
getHostReservationPurchasePreviewResultDecoder =
    JDP.decode GetHostReservationPurchasePreviewResult
        |> JDP.optional "purchase" (JD.nullable (JD.list purchaseDecoder)) Nothing
        |> JDP.optional "totalUpfrontPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "totalHourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing




{-| Type of HTTP response from getPasswordDa
-}
type alias GetPasswordDataResult =
    { instanceId : Maybe String
    , timestamp : Maybe Date
    , passwordData : Maybe String
    }



getPasswordDataResultDecoder : JD.Decoder GetPasswordDataResult
getPasswordDataResultDecoder =
    JDP.decode GetPasswordDataResult
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "passwordData" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getReservedInstancesExchangeQuo
-}
type alias GetReservedInstancesExchangeQuoteResult =
    { reservedInstanceValueSet : Maybe (List ReservedInstanceReservationValue)
    , reservedInstanceValueRollup : Maybe ReservationValue
    , targetConfigurationValueSet : Maybe (List TargetReservationValue)
    , targetConfigurationValueRollup : Maybe ReservationValue
    , paymentDue : Maybe String
    , currencyCode : Maybe String
    , outputReservedInstancesWillExpireAt : Maybe Date
    , isValidExchange : Maybe Bool
    , validationFailureReason : Maybe String
    }



getReservedInstancesExchangeQuoteResultDecoder : JD.Decoder GetReservedInstancesExchangeQuoteResult
getReservedInstancesExchangeQuoteResultDecoder =
    JDP.decode GetReservedInstancesExchangeQuoteResult
        |> JDP.optional "reservedInstanceValueSet" (JD.nullable (JD.list reservedInstanceReservationValueDecoder)) Nothing
        |> JDP.optional "reservedInstanceValueRollup" (JD.nullable reservationValueDecoder) Nothing
        |> JDP.optional "targetConfigurationValueSet" (JD.nullable (JD.list targetReservationValueDecoder)) Nothing
        |> JDP.optional "targetConfigurationValueRollup" (JD.nullable reservationValueDecoder) Nothing
        |> JDP.optional "paymentDue" (JD.nullable JD.string) Nothing
        |> JDP.optional "currencyCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputReservedInstancesWillExpireAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "isValidExchange" (JD.nullable JD.bool) Nothing
        |> JDP.optional "validationFailureReason" (JD.nullable JD.string) Nothing




{-| <p>Describes a security group.</p>
-}
type alias GroupIdentifier =
    { groupName : Maybe String
    , groupId : Maybe String
    }



groupIdentifierDecoder : JD.Decoder GroupIdentifier
groupIdentifierDecoder =
    JDP.decode GroupIdentifier
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupId" (JD.nullable JD.string) Nothing




{-| <p>Describes an event in the history of the Spot fleet request.</p>
-}
type alias HistoryRecord =
    { timestamp : Date
    , eventType : EventType
    , eventInformation : EventInformation
    }



historyRecordDecoder : JD.Decoder HistoryRecord
historyRecordDecoder =
    JDP.decode HistoryRecord
        |> JDP.required "timestamp" JDX.date
        |> JDP.required "eventType" eventTypeDecoder
        |> JDP.required "eventInformation" eventInformationDecoder




{-| <p>Describes the properties of the Dedicated Host.</p>
-}
type alias Host =
    { hostId : Maybe String
    , autoPlacement : Maybe AutoPlacement
    , hostReservationId : Maybe String
    , clientToken : Maybe String
    , hostProperties : Maybe HostProperties
    , state : Maybe AllocationState
    , availabilityZone : Maybe String
    , instances : Maybe (List HostInstance)
    , availableCapacity : Maybe AvailableCapacity
    }



hostDecoder : JD.Decoder Host
hostDecoder =
    JDP.decode Host
        |> JDP.optional "hostId" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoPlacement" (JD.nullable autoPlacementDecoder) Nothing
        |> JDP.optional "hostReservationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostProperties" (JD.nullable hostPropertiesDecoder) Nothing
        |> JDP.optional "state" (JD.nullable allocationStateDecoder) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "instances" (JD.nullable (JD.list hostInstanceDecoder)) Nothing
        |> JDP.optional "availableCapacity" (JD.nullable availableCapacityDecoder) Nothing




{-| <p>Describes an instance running on a Dedicated Host.</p>
-}
type alias HostInstance =
    { instanceId : Maybe String
    , instanceType : Maybe String
    }



hostInstanceDecoder : JD.Decoder HostInstance
hostInstanceDecoder =
    JDP.decode HostInstance
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing




{-| <p>Details about the Dedicated Host Reservation offering.</p>
-}
type alias HostOffering =
    { offeringId : Maybe String
    , instanceFamily : Maybe String
    , paymentOption : Maybe PaymentOption
    , upfrontPrice : Maybe String
    , hourlyPrice : Maybe String
    , currencyCode : Maybe CurrencyCodeValues
    , duration : Maybe Int
    }



hostOfferingDecoder : JD.Decoder HostOffering
hostOfferingDecoder =
    JDP.decode HostOffering
        |> JDP.optional "offeringId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "paymentOption" (JD.nullable paymentOptionDecoder) Nothing
        |> JDP.optional "upfrontPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "hourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing




{-| <p>Describes properties of a Dedicated Host.</p>
-}
type alias HostProperties =
    { sockets : Maybe Int
    , cores : Maybe Int
    , totalVCpus : Maybe Int
    , instanceType : Maybe String
    }



hostPropertiesDecoder : JD.Decoder HostProperties
hostPropertiesDecoder =
    JDP.decode HostProperties
        |> JDP.optional "sockets" (JD.nullable JD.int) Nothing
        |> JDP.optional "cores" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalVCpus" (JD.nullable JD.int) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing




{-| <p>Details about the Dedicated Host Reservation and associated Dedicated Hosts.</p>
-}
type alias HostReservation =
    { hostReservationId : Maybe String
    , hostIdSet : Maybe (List String)
    , offeringId : Maybe String
    , instanceFamily : Maybe String
    , paymentOption : Maybe PaymentOption
    , hourlyPrice : Maybe String
    , upfrontPrice : Maybe String
    , currencyCode : Maybe CurrencyCodeValues
    , count : Maybe Int
    , duration : Maybe Int
    , end : Maybe Date
    , start : Maybe Date
    , state : Maybe ReservationState
    }



hostReservationDecoder : JD.Decoder HostReservation
hostReservationDecoder =
    JDP.decode HostReservation
        |> JDP.optional "hostReservationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostIdSet" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "offeringId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "paymentOption" (JD.nullable paymentOptionDecoder) Nothing
        |> JDP.optional "hourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "upfrontPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "end" (JD.nullable JDX.date) Nothing
        |> JDP.optional "start" (JD.nullable JDX.date) Nothing
        |> JDP.optional "state" (JD.nullable reservationStateDecoder) Nothing




{-| One of

* `HostTenancy_dedicated`
* `HostTenancy_host`

-}
type HostTenancy
    = HostTenancy_dedicated
    | HostTenancy_host



hostTenancyDecoder : JD.Decoder HostTenancy
hostTenancyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "dedicated" ->
                        JD.succeed HostTenancy_dedicated

                    "host" ->
                        JD.succeed HostTenancy_host


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `HypervisorType_ovm`
* `HypervisorType_xen`

-}
type HypervisorType
    = HypervisorType_ovm
    | HypervisorType_xen



hypervisorTypeDecoder : JD.Decoder HypervisorType
hypervisorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ovm" ->
                        JD.succeed HypervisorType_ovm

                    "xen" ->
                        JD.succeed HypervisorType_xen


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an IAM instance profile.</p>
-}
type alias IamInstanceProfile =
    { arn : Maybe String
    , id : Maybe String
    }



iamInstanceProfileDecoder : JD.Decoder IamInstanceProfile
iamInstanceProfileDecoder =
    JDP.decode IamInstanceProfile
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "id" (JD.nullable JD.string) Nothing




{-| <p>Describes an IAM instance profile.</p>
-}
type alias IamInstanceProfileSpecification =
    { arn : Maybe String
    , name : Maybe String
    }



iamInstanceProfileSpecificationDecoder : JD.Decoder IamInstanceProfileSpecification
iamInstanceProfileSpecificationDecoder =
    JDP.decode IamInstanceProfileSpecification
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Describes the ICMP type and code.</p>
-}
type alias IcmpTypeCode =
    { type_ : Maybe Int
    , code : Maybe Int
    }



icmpTypeCodeDecoder : JD.Decoder IcmpTypeCode
icmpTypeCodeDecoder =
    JDP.decode IcmpTypeCode
        |> JDP.optional "type_" (JD.nullable JD.int) Nothing
        |> JDP.optional "code" (JD.nullable JD.int) Nothing




{-| <p>Describes the ID format for a resource.</p>
-}
type alias IdFormat =
    { resource : Maybe String
    , useLongIds : Maybe Bool
    , deadline : Maybe Date
    }



idFormatDecoder : JD.Decoder IdFormat
idFormatDecoder =
    JDP.decode IdFormat
        |> JDP.optional "resource" (JD.nullable JD.string) Nothing
        |> JDP.optional "useLongIds" (JD.nullable JD.bool) Nothing
        |> JDP.optional "deadline" (JD.nullable JDX.date) Nothing




{-| <p>Describes an image.</p>
-}
type alias Image =
    { imageId : Maybe String
    , imageLocation : Maybe String
    , state : Maybe ImageState
    , ownerId : Maybe String
    , creationDate : Maybe String
    , public : Maybe Bool
    , productCodes : Maybe (List ProductCode)
    , architecture : Maybe ArchitectureValues
    , imageType : Maybe ImageTypeValues
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , platform : Maybe PlatformValues
    , sriovNetSupport : Maybe String
    , enaSupport : Maybe Bool
    , stateReason : Maybe StateReason
    , imageOwnerAlias : Maybe String
    , name : Maybe String
    , description : Maybe String
    , rootDeviceType : Maybe DeviceType
    , rootDeviceName : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , virtualizationType : Maybe VirtualizationType
    , tags : Maybe (List Tag)
    , hypervisor : Maybe HypervisorType
    }



imageDecoder : JD.Decoder Image
imageDecoder =
    JDP.decode Image
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "imageLocation" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable imageStateDecoder) Nothing
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "public" (JD.nullable JD.bool) Nothing
        |> JDP.optional "productCodes" (JD.nullable (JD.list productCodeDecoder)) Nothing
        |> JDP.optional "architecture" (JD.nullable architectureValuesDecoder) Nothing
        |> JDP.optional "imageType" (JD.nullable imageTypeValuesDecoder) Nothing
        |> JDP.optional "kernelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable platformValuesDecoder) Nothing
        |> JDP.optional "sriovNetSupport" (JD.nullable JD.string) Nothing
        |> JDP.optional "enaSupport" (JD.nullable JD.bool) Nothing
        |> JDP.optional "stateReason" (JD.nullable stateReasonDecoder) Nothing
        |> JDP.optional "imageOwnerAlias" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "rootDeviceType" (JD.nullable deviceTypeDecoder) Nothing
        |> JDP.optional "rootDeviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list blockDeviceMappingDecoder)) Nothing
        |> JDP.optional "virtualizationType" (JD.nullable virtualizationTypeDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "hypervisor" (JD.nullable hypervisorTypeDecoder) Nothing




{-| Type of HTTP response from imageA
-}
type alias ImageAttribute =
    { imageId : Maybe String
    , launchPermissions : Maybe (List LaunchPermission)
    , productCodes : Maybe (List ProductCode)
    , kernelId : Maybe AttributeValue
    , ramdiskId : Maybe AttributeValue
    , description : Maybe AttributeValue
    , sriovNetSupport : Maybe AttributeValue
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    }



imageAttributeDecoder : JD.Decoder ImageAttribute
imageAttributeDecoder =
    JDP.decode ImageAttribute
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "launchPermissions" (JD.nullable (JD.list launchPermissionDecoder)) Nothing
        |> JDP.optional "productCodes" (JD.nullable (JD.list productCodeDecoder)) Nothing
        |> JDP.optional "kernelId" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "description" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "sriovNetSupport" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list blockDeviceMappingDecoder)) Nothing




{-| One of

* `ImageAttributeName_description`
* `ImageAttributeName_kernel`
* `ImageAttributeName_ramdisk`
* `ImageAttributeName_launchPermission`
* `ImageAttributeName_productCodes`
* `ImageAttributeName_blockDeviceMapping`
* `ImageAttributeName_sriovNetSupport`

-}
type ImageAttributeName
    = ImageAttributeName_description
    | ImageAttributeName_kernel
    | ImageAttributeName_ramdisk
    | ImageAttributeName_launchPermission
    | ImageAttributeName_productCodes
    | ImageAttributeName_blockDeviceMapping
    | ImageAttributeName_sriovNetSupport



imageAttributeNameDecoder : JD.Decoder ImageAttributeName
imageAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "description" ->
                        JD.succeed ImageAttributeName_description

                    "kernel" ->
                        JD.succeed ImageAttributeName_kernel

                    "ramdisk" ->
                        JD.succeed ImageAttributeName_ramdisk

                    "launchPermission" ->
                        JD.succeed ImageAttributeName_launchPermission

                    "productCodes" ->
                        JD.succeed ImageAttributeName_productCodes

                    "blockDeviceMapping" ->
                        JD.succeed ImageAttributeName_blockDeviceMapping

                    "sriovNetSupport" ->
                        JD.succeed ImageAttributeName_sriovNetSupport


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the disk container object for an import image task.</p>
-}
type alias ImageDiskContainer =
    { description : Maybe String
    , format : Maybe String
    , url : Maybe String
    , userBucket : Maybe UserBucket
    , deviceName : Maybe String
    , snapshotId : Maybe String
    }



imageDiskContainerDecoder : JD.Decoder ImageDiskContainer
imageDiskContainerDecoder =
    JDP.decode ImageDiskContainer
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing
        |> JDP.optional "userBucket" (JD.nullable userBucketDecoder) Nothing
        |> JDP.optional "deviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing




{-| One of

* `ImageState_pending`
* `ImageState_available`
* `ImageState_invalid`
* `ImageState_deregistered`
* `ImageState_transient`
* `ImageState_failed`
* `ImageState_error`

-}
type ImageState
    = ImageState_pending
    | ImageState_available
    | ImageState_invalid
    | ImageState_deregistered
    | ImageState_transient
    | ImageState_failed
    | ImageState_error



imageStateDecoder : JD.Decoder ImageState
imageStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed ImageState_pending

                    "available" ->
                        JD.succeed ImageState_available

                    "invalid" ->
                        JD.succeed ImageState_invalid

                    "deregistered" ->
                        JD.succeed ImageState_deregistered

                    "transient" ->
                        JD.succeed ImageState_transient

                    "failed" ->
                        JD.succeed ImageState_failed

                    "error" ->
                        JD.succeed ImageState_error


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ImageTypeValues_machine`
* `ImageTypeValues_kernel`
* `ImageTypeValues_ramdisk`

-}
type ImageTypeValues
    = ImageTypeValues_machine
    | ImageTypeValues_kernel
    | ImageTypeValues_ramdisk



imageTypeValuesDecoder : JD.Decoder ImageTypeValues
imageTypeValuesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "machine" ->
                        JD.succeed ImageTypeValues_machine

                    "kernel" ->
                        JD.succeed ImageTypeValues_kernel

                    "ramdisk" ->
                        JD.succeed ImageTypeValues_ramdisk


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from importIma
-}
type alias ImportImageResult =
    { importTaskId : Maybe String
    , architecture : Maybe String
    , licenseType : Maybe String
    , platform : Maybe String
    , hypervisor : Maybe String
    , description : Maybe String
    , snapshotDetails : Maybe (List SnapshotDetail)
    , imageId : Maybe String
    , progress : Maybe String
    , statusMessage : Maybe String
    , status : Maybe String
    }



importImageResultDecoder : JD.Decoder ImportImageResult
importImageResultDecoder =
    JDP.decode ImportImageResult
        |> JDP.optional "importTaskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "architecture" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseType" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable JD.string) Nothing
        |> JDP.optional "hypervisor" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotDetails" (JD.nullable (JD.list snapshotDetailDecoder)) Nothing
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "progress" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Describes an import image task.</p>
-}
type alias ImportImageTask =
    { importTaskId : Maybe String
    , architecture : Maybe String
    , licenseType : Maybe String
    , platform : Maybe String
    , hypervisor : Maybe String
    , description : Maybe String
    , snapshotDetails : Maybe (List SnapshotDetail)
    , imageId : Maybe String
    , progress : Maybe String
    , statusMessage : Maybe String
    , status : Maybe String
    }



importImageTaskDecoder : JD.Decoder ImportImageTask
importImageTaskDecoder =
    JDP.decode ImportImageTask
        |> JDP.optional "importTaskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "architecture" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseType" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable JD.string) Nothing
        |> JDP.optional "hypervisor" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotDetails" (JD.nullable (JD.list snapshotDetailDecoder)) Nothing
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "progress" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Describes the launch specification for VM import.</p>
-}
type alias ImportInstanceLaunchSpecification =
    { architecture : Maybe ArchitectureValues
    , groupNames : Maybe (List String)
    , groupIds : Maybe (List String)
    , additionalInfo : Maybe String
    , userData : Maybe UserData
    , instanceType : Maybe InstanceType
    , placement : Maybe Placement
    , monitoring : Maybe Bool
    , subnetId : Maybe String
    , instanceInitiatedShutdownBehavior : Maybe ShutdownBehavior
    , privateIpAddress : Maybe String
    }



importInstanceLaunchSpecificationDecoder : JD.Decoder ImportInstanceLaunchSpecification
importInstanceLaunchSpecificationDecoder =
    JDP.decode ImportInstanceLaunchSpecification
        |> JDP.optional "architecture" (JD.nullable architectureValuesDecoder) Nothing
        |> JDP.optional "groupNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "groupIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "additionalInfo" (JD.nullable JD.string) Nothing
        |> JDP.optional "userData" (JD.nullable userDataDecoder) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "placement" (JD.nullable placementDecoder) Nothing
        |> JDP.optional "monitoring" (JD.nullable JD.bool) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceInitiatedShutdownBehavior" (JD.nullable shutdownBehaviorDecoder) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from importInstan
-}
type alias ImportInstanceResult =
    { conversionTask : Maybe ConversionTask
    }



importInstanceResultDecoder : JD.Decoder ImportInstanceResult
importInstanceResultDecoder =
    JDP.decode ImportInstanceResult
        |> JDP.optional "conversionTask" (JD.nullable conversionTaskDecoder) Nothing




{-| <p>Describes an import instance task.</p>
-}
type alias ImportInstanceTaskDetails =
    { volumes : (List ImportInstanceVolumeDetailItem)
    , instanceId : Maybe String
    , platform : Maybe PlatformValues
    , description : Maybe String
    }



importInstanceTaskDetailsDecoder : JD.Decoder ImportInstanceTaskDetails
importInstanceTaskDetailsDecoder =
    JDP.decode ImportInstanceTaskDetails
        |> JDP.required "volumes" (JD.list importInstanceVolumeDetailItemDecoder)
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable platformValuesDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Describes an import volume task.</p>
-}
type alias ImportInstanceVolumeDetailItem =
    { bytesConverted : Int
    , availabilityZone : String
    , image : DiskImageDescription
    , volume : DiskImageVolumeDescription
    , status : String
    , statusMessage : Maybe String
    , description : Maybe String
    }



importInstanceVolumeDetailItemDecoder : JD.Decoder ImportInstanceVolumeDetailItem
importInstanceVolumeDetailItemDecoder =
    JDP.decode ImportInstanceVolumeDetailItem
        |> JDP.required "bytesConverted" JD.int
        |> JDP.required "availabilityZone" JD.string
        |> JDP.required "image" diskImageDescriptionDecoder
        |> JDP.required "volume" diskImageVolumeDescriptionDecoder
        |> JDP.required "status" JD.string
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from importKeyPa
-}
type alias ImportKeyPairResult =
    { keyName : Maybe String
    , keyFingerprint : Maybe String
    }



importKeyPairResultDecoder : JD.Decoder ImportKeyPairResult
importKeyPairResultDecoder =
    JDP.decode ImportKeyPairResult
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyFingerprint" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from importSnapsh
-}
type alias ImportSnapshotResult =
    { importTaskId : Maybe String
    , snapshotTaskDetail : Maybe SnapshotTaskDetail
    , description : Maybe String
    }



importSnapshotResultDecoder : JD.Decoder ImportSnapshotResult
importSnapshotResultDecoder =
    JDP.decode ImportSnapshotResult
        |> JDP.optional "importTaskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotTaskDetail" (JD.nullable snapshotTaskDetailDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Describes an import snapshot task.</p>
-}
type alias ImportSnapshotTask =
    { importTaskId : Maybe String
    , snapshotTaskDetail : Maybe SnapshotTaskDetail
    , description : Maybe String
    }



importSnapshotTaskDecoder : JD.Decoder ImportSnapshotTask
importSnapshotTaskDecoder =
    JDP.decode ImportSnapshotTask
        |> JDP.optional "importTaskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotTaskDetail" (JD.nullable snapshotTaskDetailDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from importVolu
-}
type alias ImportVolumeResult =
    { conversionTask : Maybe ConversionTask
    }



importVolumeResultDecoder : JD.Decoder ImportVolumeResult
importVolumeResultDecoder =
    JDP.decode ImportVolumeResult
        |> JDP.optional "conversionTask" (JD.nullable conversionTaskDecoder) Nothing




{-| <p>Describes an import volume task.</p>
-}
type alias ImportVolumeTaskDetails =
    { bytesConverted : Int
    , availabilityZone : String
    , description : Maybe String
    , image : DiskImageDescription
    , volume : DiskImageVolumeDescription
    }



importVolumeTaskDetailsDecoder : JD.Decoder ImportVolumeTaskDetails
importVolumeTaskDetailsDecoder =
    JDP.decode ImportVolumeTaskDetails
        |> JDP.required "bytesConverted" JD.int
        |> JDP.required "availabilityZone" JD.string
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.required "image" diskImageDescriptionDecoder
        |> JDP.required "volume" diskImageVolumeDescriptionDecoder




{-| <p>Describes an instance.</p>
-}
type alias Instance =
    { instanceId : Maybe String
    , imageId : Maybe String
    , state : Maybe InstanceState
    , privateDnsName : Maybe String
    , publicDnsName : Maybe String
    , stateTransitionReason : Maybe String
    , keyName : Maybe String
    , amiLaunchIndex : Maybe Int
    , productCodes : Maybe (List ProductCode)
    , instanceType : Maybe InstanceType
    , launchTime : Maybe Date
    , placement : Maybe Placement
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , platform : Maybe PlatformValues
    , monitoring : Maybe Monitoring
    , subnetId : Maybe String
    , vpcId : Maybe String
    , privateIpAddress : Maybe String
    , publicIpAddress : Maybe String
    , stateReason : Maybe StateReason
    , architecture : Maybe ArchitectureValues
    , rootDeviceType : Maybe DeviceType
    , rootDeviceName : Maybe String
    , blockDeviceMappings : Maybe (List InstanceBlockDeviceMapping)
    , virtualizationType : Maybe VirtualizationType
    , instanceLifecycle : Maybe InstanceLifecycleType
    , spotInstanceRequestId : Maybe String
    , clientToken : Maybe String
    , tags : Maybe (List Tag)
    , securityGroups : Maybe (List GroupIdentifier)
    , sourceDestCheck : Maybe Bool
    , hypervisor : Maybe HypervisorType
    , networkInterfaces : Maybe (List InstanceNetworkInterface)
    , iamInstanceProfile : Maybe IamInstanceProfile
    , ebsOptimized : Maybe Bool
    , sriovNetSupport : Maybe String
    , enaSupport : Maybe Bool
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JDP.decode Instance
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable instanceStateDecoder) Nothing
        |> JDP.optional "privateDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "stateTransitionReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "amiLaunchIndex" (JD.nullable JD.int) Nothing
        |> JDP.optional "productCodes" (JD.nullable (JD.list productCodeDecoder)) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "launchTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "placement" (JD.nullable placementDecoder) Nothing
        |> JDP.optional "kernelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable platformValuesDecoder) Nothing
        |> JDP.optional "monitoring" (JD.nullable monitoringDecoder) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "stateReason" (JD.nullable stateReasonDecoder) Nothing
        |> JDP.optional "architecture" (JD.nullable architectureValuesDecoder) Nothing
        |> JDP.optional "rootDeviceType" (JD.nullable deviceTypeDecoder) Nothing
        |> JDP.optional "rootDeviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list instanceBlockDeviceMappingDecoder)) Nothing
        |> JDP.optional "virtualizationType" (JD.nullable virtualizationTypeDecoder) Nothing
        |> JDP.optional "instanceLifecycle" (JD.nullable instanceLifecycleTypeDecoder) Nothing
        |> JDP.optional "spotInstanceRequestId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "sourceDestCheck" (JD.nullable JD.bool) Nothing
        |> JDP.optional "hypervisor" (JD.nullable hypervisorTypeDecoder) Nothing
        |> JDP.optional "networkInterfaces" (JD.nullable (JD.list instanceNetworkInterfaceDecoder)) Nothing
        |> JDP.optional "iamInstanceProfile" (JD.nullable iamInstanceProfileDecoder) Nothing
        |> JDP.optional "ebsOptimized" (JD.nullable JD.bool) Nothing
        |> JDP.optional "sriovNetSupport" (JD.nullable JD.string) Nothing
        |> JDP.optional "enaSupport" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from instanceA
-}
type alias InstanceAttribute =
    { instanceId : Maybe String
    , instanceType : Maybe AttributeValue
    , kernelId : Maybe AttributeValue
    , ramdiskId : Maybe AttributeValue
    , userData : Maybe AttributeValue
    , disableApiTermination : Maybe AttributeBooleanValue
    , instanceInitiatedShutdownBehavior : Maybe AttributeValue
    , rootDeviceName : Maybe AttributeValue
    , blockDeviceMappings : Maybe (List InstanceBlockDeviceMapping)
    , productCodes : Maybe (List ProductCode)
    , ebsOptimized : Maybe AttributeBooleanValue
    , sriovNetSupport : Maybe AttributeValue
    , enaSupport : Maybe AttributeBooleanValue
    , sourceDestCheck : Maybe AttributeBooleanValue
    , groups : Maybe (List GroupIdentifier)
    }



instanceAttributeDecoder : JD.Decoder InstanceAttribute
instanceAttributeDecoder =
    JDP.decode InstanceAttribute
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "kernelId" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "userData" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "disableApiTermination" (JD.nullable attributeBooleanValueDecoder) Nothing
        |> JDP.optional "instanceInitiatedShutdownBehavior" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "rootDeviceName" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list instanceBlockDeviceMappingDecoder)) Nothing
        |> JDP.optional "productCodes" (JD.nullable (JD.list productCodeDecoder)) Nothing
        |> JDP.optional "ebsOptimized" (JD.nullable attributeBooleanValueDecoder) Nothing
        |> JDP.optional "sriovNetSupport" (JD.nullable attributeValueDecoder) Nothing
        |> JDP.optional "enaSupport" (JD.nullable attributeBooleanValueDecoder) Nothing
        |> JDP.optional "sourceDestCheck" (JD.nullable attributeBooleanValueDecoder) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing




{-| One of

* `InstanceAttributeName_instanceType`
* `InstanceAttributeName_kernel`
* `InstanceAttributeName_ramdisk`
* `InstanceAttributeName_userData`
* `InstanceAttributeName_disableApiTermination`
* `InstanceAttributeName_instanceInitiatedShutdownBehavior`
* `InstanceAttributeName_rootDeviceName`
* `InstanceAttributeName_blockDeviceMapping`
* `InstanceAttributeName_productCodes`
* `InstanceAttributeName_sourceDestCheck`
* `InstanceAttributeName_groupSet`
* `InstanceAttributeName_ebsOptimized`
* `InstanceAttributeName_sriovNetSupport`
* `InstanceAttributeName_enaSupport`

-}
type InstanceAttributeName
    = InstanceAttributeName_instanceType
    | InstanceAttributeName_kernel
    | InstanceAttributeName_ramdisk
    | InstanceAttributeName_userData
    | InstanceAttributeName_disableApiTermination
    | InstanceAttributeName_instanceInitiatedShutdownBehavior
    | InstanceAttributeName_rootDeviceName
    | InstanceAttributeName_blockDeviceMapping
    | InstanceAttributeName_productCodes
    | InstanceAttributeName_sourceDestCheck
    | InstanceAttributeName_groupSet
    | InstanceAttributeName_ebsOptimized
    | InstanceAttributeName_sriovNetSupport
    | InstanceAttributeName_enaSupport



instanceAttributeNameDecoder : JD.Decoder InstanceAttributeName
instanceAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "instanceType" ->
                        JD.succeed InstanceAttributeName_instanceType

                    "kernel" ->
                        JD.succeed InstanceAttributeName_kernel

                    "ramdisk" ->
                        JD.succeed InstanceAttributeName_ramdisk

                    "userData" ->
                        JD.succeed InstanceAttributeName_userData

                    "disableApiTermination" ->
                        JD.succeed InstanceAttributeName_disableApiTermination

                    "instanceInitiatedShutdownBehavior" ->
                        JD.succeed InstanceAttributeName_instanceInitiatedShutdownBehavior

                    "rootDeviceName" ->
                        JD.succeed InstanceAttributeName_rootDeviceName

                    "blockDeviceMapping" ->
                        JD.succeed InstanceAttributeName_blockDeviceMapping

                    "productCodes" ->
                        JD.succeed InstanceAttributeName_productCodes

                    "sourceDestCheck" ->
                        JD.succeed InstanceAttributeName_sourceDestCheck

                    "groupSet" ->
                        JD.succeed InstanceAttributeName_groupSet

                    "ebsOptimized" ->
                        JD.succeed InstanceAttributeName_ebsOptimized

                    "sriovNetSupport" ->
                        JD.succeed InstanceAttributeName_sriovNetSupport

                    "enaSupport" ->
                        JD.succeed InstanceAttributeName_enaSupport


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a block device mapping.</p>
-}
type alias InstanceBlockDeviceMapping =
    { deviceName : Maybe String
    , ebs : Maybe EbsInstanceBlockDevice
    }



instanceBlockDeviceMappingDecoder : JD.Decoder InstanceBlockDeviceMapping
instanceBlockDeviceMappingDecoder =
    JDP.decode InstanceBlockDeviceMapping
        |> JDP.optional "deviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ebs" (JD.nullable ebsInstanceBlockDeviceDecoder) Nothing




{-| <p>Describes a block device mapping entry.</p>
-}
type alias InstanceBlockDeviceMappingSpecification =
    { deviceName : Maybe String
    , ebs : Maybe EbsInstanceBlockDeviceSpecification
    , virtualName : Maybe String
    , noDevice : Maybe String
    }



instanceBlockDeviceMappingSpecificationDecoder : JD.Decoder InstanceBlockDeviceMappingSpecification
instanceBlockDeviceMappingSpecificationDecoder =
    JDP.decode InstanceBlockDeviceMappingSpecification
        |> JDP.optional "deviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ebs" (JD.nullable ebsInstanceBlockDeviceSpecificationDecoder) Nothing
        |> JDP.optional "virtualName" (JD.nullable JD.string) Nothing
        |> JDP.optional "noDevice" (JD.nullable JD.string) Nothing




{-| <p>Information about the instance type that the Dedicated Host supports.</p>
-}
type alias InstanceCapacity =
    { instanceType : Maybe String
    , availableCapacity : Maybe Int
    , totalCapacity : Maybe Int
    }



instanceCapacityDecoder : JD.Decoder InstanceCapacity
instanceCapacityDecoder =
    JDP.decode InstanceCapacity
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "availableCapacity" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalCapacity" (JD.nullable JD.int) Nothing




{-| <p>Describes a Reserved Instance listing state.</p>
-}
type alias InstanceCount =
    { state : Maybe ListingState
    , instanceCount : Maybe Int
    }



instanceCountDecoder : JD.Decoder InstanceCount
instanceCountDecoder =
    JDP.decode InstanceCount
        |> JDP.optional "state" (JD.nullable listingStateDecoder) Nothing
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing




{-| <p>Describes an instance to export.</p>
-}
type alias InstanceExportDetails =
    { instanceId : Maybe String
    , targetEnvironment : Maybe ExportEnvironment
    }



instanceExportDetailsDecoder : JD.Decoder InstanceExportDetails
instanceExportDetailsDecoder =
    JDP.decode InstanceExportDetails
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetEnvironment" (JD.nullable exportEnvironmentDecoder) Nothing




{-| One of

* `InstanceHealthStatus_healthy`
* `InstanceHealthStatus_unhealthy`

-}
type InstanceHealthStatus
    = InstanceHealthStatus_healthy
    | InstanceHealthStatus_unhealthy



instanceHealthStatusDecoder : JD.Decoder InstanceHealthStatus
instanceHealthStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "healthy" ->
                        JD.succeed InstanceHealthStatus_healthy

                    "unhealthy" ->
                        JD.succeed InstanceHealthStatus_unhealthy


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an IPv6 address.</p>
-}
type alias InstanceIpv6Address =
    { ipv6Address : Maybe String
    }



instanceIpv6AddressDecoder : JD.Decoder InstanceIpv6Address
instanceIpv6AddressDecoder =
    JDP.decode InstanceIpv6Address
        |> JDP.optional "ipv6Address" (JD.nullable JD.string) Nothing




{-| One of

* `InstanceLifecycleType_spot`
* `InstanceLifecycleType_scheduled`

-}
type InstanceLifecycleType
    = InstanceLifecycleType_spot
    | InstanceLifecycleType_scheduled



instanceLifecycleTypeDecoder : JD.Decoder InstanceLifecycleType
instanceLifecycleTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "spot" ->
                        JD.succeed InstanceLifecycleType_spot

                    "scheduled" ->
                        JD.succeed InstanceLifecycleType_scheduled


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the monitoring of an instance.</p>
-}
type alias InstanceMonitoring =
    { instanceId : Maybe String
    , monitoring : Maybe Monitoring
    }



instanceMonitoringDecoder : JD.Decoder InstanceMonitoring
instanceMonitoringDecoder =
    JDP.decode InstanceMonitoring
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "monitoring" (JD.nullable monitoringDecoder) Nothing




{-| <p>Describes a network interface.</p>
-}
type alias InstanceNetworkInterface =
    { networkInterfaceId : Maybe String
    , subnetId : Maybe String
    , vpcId : Maybe String
    , description : Maybe String
    , ownerId : Maybe String
    , status : Maybe NetworkInterfaceStatus
    , macAddress : Maybe String
    , privateIpAddress : Maybe String
    , privateDnsName : Maybe String
    , sourceDestCheck : Maybe Bool
    , groups : Maybe (List GroupIdentifier)
    , attachment : Maybe InstanceNetworkInterfaceAttachment
    , association : Maybe InstanceNetworkInterfaceAssociation
    , privateIpAddresses : Maybe (List InstancePrivateIpAddress)
    , ipv6Addresses : Maybe (List InstanceIpv6Address)
    }



instanceNetworkInterfaceDecoder : JD.Decoder InstanceNetworkInterface
instanceNetworkInterfaceDecoder =
    JDP.decode InstanceNetworkInterface
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable networkInterfaceStatusDecoder) Nothing
        |> JDP.optional "macAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceDestCheck" (JD.nullable JD.bool) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "attachment" (JD.nullable instanceNetworkInterfaceAttachmentDecoder) Nothing
        |> JDP.optional "association" (JD.nullable instanceNetworkInterfaceAssociationDecoder) Nothing
        |> JDP.optional "privateIpAddresses" (JD.nullable (JD.list instancePrivateIpAddressDecoder)) Nothing
        |> JDP.optional "ipv6Addresses" (JD.nullable (JD.list instanceIpv6AddressDecoder)) Nothing




{-| <p>Describes association information for an Elastic IP address (IPv4).</p>
-}
type alias InstanceNetworkInterfaceAssociation =
    { publicIp : Maybe String
    , publicDnsName : Maybe String
    , ipOwnerId : Maybe String
    }



instanceNetworkInterfaceAssociationDecoder : JD.Decoder InstanceNetworkInterfaceAssociation
instanceNetworkInterfaceAssociationDecoder =
    JDP.decode InstanceNetworkInterfaceAssociation
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipOwnerId" (JD.nullable JD.string) Nothing




{-| <p>Describes a network interface attachment.</p>
-}
type alias InstanceNetworkInterfaceAttachment =
    { attachmentId : Maybe String
    , deviceIndex : Maybe Int
    , status : Maybe AttachmentStatus
    , attachTime : Maybe Date
    , deleteOnTermination : Maybe Bool
    }



instanceNetworkInterfaceAttachmentDecoder : JD.Decoder InstanceNetworkInterfaceAttachment
instanceNetworkInterfaceAttachmentDecoder =
    JDP.decode InstanceNetworkInterfaceAttachment
        |> JDP.optional "attachmentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceIndex" (JD.nullable JD.int) Nothing
        |> JDP.optional "status" (JD.nullable attachmentStatusDecoder) Nothing
        |> JDP.optional "attachTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing




{-| <p>Describes a network interface.</p>
-}
type alias InstanceNetworkInterfaceSpecification =
    { networkInterfaceId : Maybe String
    , deviceIndex : Maybe Int
    , subnetId : Maybe String
    , description : Maybe String
    , privateIpAddress : Maybe String
    , groups : Maybe (List String)
    , deleteOnTermination : Maybe Bool
    , privateIpAddresses : Maybe (List PrivateIpAddressSpecification)
    , secondaryPrivateIpAddressCount : Maybe Int
    , associatePublicIpAddress : Maybe Bool
    , ipv6Addresses : Maybe (List InstanceIpv6Address)
    , ipv6AddressCount : Maybe Int
    }



instanceNetworkInterfaceSpecificationDecoder : JD.Decoder InstanceNetworkInterfaceSpecification
instanceNetworkInterfaceSpecificationDecoder =
    JDP.decode InstanceNetworkInterfaceSpecification
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceIndex" (JD.nullable JD.int) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing
        |> JDP.optional "privateIpAddresses" (JD.nullable (JD.list privateIpAddressSpecificationDecoder)) Nothing
        |> JDP.optional "secondaryPrivateIpAddressCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "associatePublicIpAddress" (JD.nullable JD.bool) Nothing
        |> JDP.optional "ipv6Addresses" (JD.nullable (JD.list instanceIpv6AddressDecoder)) Nothing
        |> JDP.optional "ipv6AddressCount" (JD.nullable JD.int) Nothing




{-| <p>Describes a private IPv4 address.</p>
-}
type alias InstancePrivateIpAddress =
    { privateIpAddress : Maybe String
    , privateDnsName : Maybe String
    , primary : Maybe Bool
    , association : Maybe InstanceNetworkInterfaceAssociation
    }



instancePrivateIpAddressDecoder : JD.Decoder InstancePrivateIpAddress
instancePrivateIpAddressDecoder =
    JDP.decode InstancePrivateIpAddress
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "primary" (JD.nullable JD.bool) Nothing
        |> JDP.optional "association" (JD.nullable instanceNetworkInterfaceAssociationDecoder) Nothing




{-| <p>Describes the current state of an instance.</p>
-}
type alias InstanceState =
    { code : Maybe Int
    , name : Maybe InstanceStateName
    }



instanceStateDecoder : JD.Decoder InstanceState
instanceStateDecoder =
    JDP.decode InstanceState
        |> JDP.optional "code" (JD.nullable JD.int) Nothing
        |> JDP.optional "name" (JD.nullable instanceStateNameDecoder) Nothing




{-| <p>Describes an instance state change.</p>
-}
type alias InstanceStateChange =
    { instanceId : Maybe String
    , currentState : Maybe InstanceState
    , previousState : Maybe InstanceState
    }



instanceStateChangeDecoder : JD.Decoder InstanceStateChange
instanceStateChangeDecoder =
    JDP.decode InstanceStateChange
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentState" (JD.nullable instanceStateDecoder) Nothing
        |> JDP.optional "previousState" (JD.nullable instanceStateDecoder) Nothing




{-| One of

* `InstanceStateName_pending`
* `InstanceStateName_running`
* `InstanceStateName_shutting-down`
* `InstanceStateName_terminated`
* `InstanceStateName_stopping`
* `InstanceStateName_stopped`

-}
type InstanceStateName
    = InstanceStateName_pending
    | InstanceStateName_running
    | InstanceStateName_shutting_down
    | InstanceStateName_terminated
    | InstanceStateName_stopping
    | InstanceStateName_stopped



instanceStateNameDecoder : JD.Decoder InstanceStateName
instanceStateNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed InstanceStateName_pending

                    "running" ->
                        JD.succeed InstanceStateName_running

                    "shutting_down" ->
                        JD.succeed InstanceStateName_shutting_down

                    "terminated" ->
                        JD.succeed InstanceStateName_terminated

                    "stopping" ->
                        JD.succeed InstanceStateName_stopping

                    "stopped" ->
                        JD.succeed InstanceStateName_stopped


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the status of an instance.</p>
-}
type alias InstanceStatus =
    { instanceId : Maybe String
    , availabilityZone : Maybe String
    , events : Maybe (List InstanceStatusEvent)
    , instanceState : Maybe InstanceState
    , systemStatus : Maybe InstanceStatusSummary
    , instanceStatus : Maybe InstanceStatusSummary
    }



instanceStatusDecoder : JD.Decoder InstanceStatus
instanceStatusDecoder =
    JDP.decode InstanceStatus
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list instanceStatusEventDecoder)) Nothing
        |> JDP.optional "instanceState" (JD.nullable instanceStateDecoder) Nothing
        |> JDP.optional "systemStatus" (JD.nullable instanceStatusSummaryDecoder) Nothing
        |> JDP.optional "instanceStatus" (JD.nullable instanceStatusSummaryDecoder) Nothing




{-| <p>Describes the instance status.</p>
-}
type alias InstanceStatusDetails =
    { name : Maybe StatusName
    , status : Maybe StatusType
    , impairedSince : Maybe Date
    }



instanceStatusDetailsDecoder : JD.Decoder InstanceStatusDetails
instanceStatusDetailsDecoder =
    JDP.decode InstanceStatusDetails
        |> JDP.optional "name" (JD.nullable statusNameDecoder) Nothing
        |> JDP.optional "status" (JD.nullable statusTypeDecoder) Nothing
        |> JDP.optional "impairedSince" (JD.nullable JDX.date) Nothing




{-| <p>Describes a scheduled event for an instance.</p>
-}
type alias InstanceStatusEvent =
    { code : Maybe EventCode
    , description : Maybe String
    , notBefore : Maybe Date
    , notAfter : Maybe Date
    }



instanceStatusEventDecoder : JD.Decoder InstanceStatusEvent
instanceStatusEventDecoder =
    JDP.decode InstanceStatusEvent
        |> JDP.optional "code" (JD.nullable eventCodeDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "notBefore" (JD.nullable JDX.date) Nothing
        |> JDP.optional "notAfter" (JD.nullable JDX.date) Nothing




{-| <p>Describes the status of an instance.</p>
-}
type alias InstanceStatusSummary =
    { status : Maybe SummaryStatus
    , details : Maybe (List InstanceStatusDetails)
    }



instanceStatusSummaryDecoder : JD.Decoder InstanceStatusSummary
instanceStatusSummaryDecoder =
    JDP.decode InstanceStatusSummary
        |> JDP.optional "status" (JD.nullable summaryStatusDecoder) Nothing
        |> JDP.optional "details" (JD.nullable (JD.list instanceStatusDetailsDecoder)) Nothing




{-| One of

* `InstanceType_t1.micro`
* `InstanceType_t2.nano`
* `InstanceType_t2.micro`
* `InstanceType_t2.small`
* `InstanceType_t2.medium`
* `InstanceType_t2.large`
* `InstanceType_t2.xlarge`
* `InstanceType_t2.2xlarge`
* `InstanceType_m1.small`
* `InstanceType_m1.medium`
* `InstanceType_m1.large`
* `InstanceType_m1.xlarge`
* `InstanceType_m3.medium`
* `InstanceType_m3.large`
* `InstanceType_m3.xlarge`
* `InstanceType_m3.2xlarge`
* `InstanceType_m4.large`
* `InstanceType_m4.xlarge`
* `InstanceType_m4.2xlarge`
* `InstanceType_m4.4xlarge`
* `InstanceType_m4.10xlarge`
* `InstanceType_m4.16xlarge`
* `InstanceType_m2.xlarge`
* `InstanceType_m2.2xlarge`
* `InstanceType_m2.4xlarge`
* `InstanceType_cr1.8xlarge`
* `InstanceType_r3.large`
* `InstanceType_r3.xlarge`
* `InstanceType_r3.2xlarge`
* `InstanceType_r3.4xlarge`
* `InstanceType_r3.8xlarge`
* `InstanceType_r4.large`
* `InstanceType_r4.xlarge`
* `InstanceType_r4.2xlarge`
* `InstanceType_r4.4xlarge`
* `InstanceType_r4.8xlarge`
* `InstanceType_r4.16xlarge`
* `InstanceType_x1.16xlarge`
* `InstanceType_x1.32xlarge`
* `InstanceType_i2.xlarge`
* `InstanceType_i2.2xlarge`
* `InstanceType_i2.4xlarge`
* `InstanceType_i2.8xlarge`
* `InstanceType_hi1.4xlarge`
* `InstanceType_hs1.8xlarge`
* `InstanceType_c1.medium`
* `InstanceType_c1.xlarge`
* `InstanceType_c3.large`
* `InstanceType_c3.xlarge`
* `InstanceType_c3.2xlarge`
* `InstanceType_c3.4xlarge`
* `InstanceType_c3.8xlarge`
* `InstanceType_c4.large`
* `InstanceType_c4.xlarge`
* `InstanceType_c4.2xlarge`
* `InstanceType_c4.4xlarge`
* `InstanceType_c4.8xlarge`
* `InstanceType_cc1.4xlarge`
* `InstanceType_cc2.8xlarge`
* `InstanceType_g2.2xlarge`
* `InstanceType_g2.8xlarge`
* `InstanceType_cg1.4xlarge`
* `InstanceType_p2.xlarge`
* `InstanceType_p2.8xlarge`
* `InstanceType_p2.16xlarge`
* `InstanceType_d2.xlarge`
* `InstanceType_d2.2xlarge`
* `InstanceType_d2.4xlarge`
* `InstanceType_d2.8xlarge`
* `InstanceType_f1.2xlarge`
* `InstanceType_f1.16xlarge`

-}
type InstanceType
    = InstanceType_t1_micro
    | InstanceType_t2_nano
    | InstanceType_t2_micro
    | InstanceType_t2_small
    | InstanceType_t2_medium
    | InstanceType_t2_large
    | InstanceType_t2_xlarge
    | InstanceType_t2_2xlarge
    | InstanceType_m1_small
    | InstanceType_m1_medium
    | InstanceType_m1_large
    | InstanceType_m1_xlarge
    | InstanceType_m3_medium
    | InstanceType_m3_large
    | InstanceType_m3_xlarge
    | InstanceType_m3_2xlarge
    | InstanceType_m4_large
    | InstanceType_m4_xlarge
    | InstanceType_m4_2xlarge
    | InstanceType_m4_4xlarge
    | InstanceType_m4_10xlarge
    | InstanceType_m4_16xlarge
    | InstanceType_m2_xlarge
    | InstanceType_m2_2xlarge
    | InstanceType_m2_4xlarge
    | InstanceType_cr1_8xlarge
    | InstanceType_r3_large
    | InstanceType_r3_xlarge
    | InstanceType_r3_2xlarge
    | InstanceType_r3_4xlarge
    | InstanceType_r3_8xlarge
    | InstanceType_r4_large
    | InstanceType_r4_xlarge
    | InstanceType_r4_2xlarge
    | InstanceType_r4_4xlarge
    | InstanceType_r4_8xlarge
    | InstanceType_r4_16xlarge
    | InstanceType_x1_16xlarge
    | InstanceType_x1_32xlarge
    | InstanceType_i2_xlarge
    | InstanceType_i2_2xlarge
    | InstanceType_i2_4xlarge
    | InstanceType_i2_8xlarge
    | InstanceType_hi1_4xlarge
    | InstanceType_hs1_8xlarge
    | InstanceType_c1_medium
    | InstanceType_c1_xlarge
    | InstanceType_c3_large
    | InstanceType_c3_xlarge
    | InstanceType_c3_2xlarge
    | InstanceType_c3_4xlarge
    | InstanceType_c3_8xlarge
    | InstanceType_c4_large
    | InstanceType_c4_xlarge
    | InstanceType_c4_2xlarge
    | InstanceType_c4_4xlarge
    | InstanceType_c4_8xlarge
    | InstanceType_cc1_4xlarge
    | InstanceType_cc2_8xlarge
    | InstanceType_g2_2xlarge
    | InstanceType_g2_8xlarge
    | InstanceType_cg1_4xlarge
    | InstanceType_p2_xlarge
    | InstanceType_p2_8xlarge
    | InstanceType_p2_16xlarge
    | InstanceType_d2_xlarge
    | InstanceType_d2_2xlarge
    | InstanceType_d2_4xlarge
    | InstanceType_d2_8xlarge
    | InstanceType_f1_2xlarge
    | InstanceType_f1_16xlarge



instanceTypeDecoder : JD.Decoder InstanceType
instanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "t1_micro" ->
                        JD.succeed InstanceType_t1_micro

                    "t2_nano" ->
                        JD.succeed InstanceType_t2_nano

                    "t2_micro" ->
                        JD.succeed InstanceType_t2_micro

                    "t2_small" ->
                        JD.succeed InstanceType_t2_small

                    "t2_medium" ->
                        JD.succeed InstanceType_t2_medium

                    "t2_large" ->
                        JD.succeed InstanceType_t2_large

                    "t2_xlarge" ->
                        JD.succeed InstanceType_t2_xlarge

                    "t2_2xlarge" ->
                        JD.succeed InstanceType_t2_2xlarge

                    "m1_small" ->
                        JD.succeed InstanceType_m1_small

                    "m1_medium" ->
                        JD.succeed InstanceType_m1_medium

                    "m1_large" ->
                        JD.succeed InstanceType_m1_large

                    "m1_xlarge" ->
                        JD.succeed InstanceType_m1_xlarge

                    "m3_medium" ->
                        JD.succeed InstanceType_m3_medium

                    "m3_large" ->
                        JD.succeed InstanceType_m3_large

                    "m3_xlarge" ->
                        JD.succeed InstanceType_m3_xlarge

                    "m3_2xlarge" ->
                        JD.succeed InstanceType_m3_2xlarge

                    "m4_large" ->
                        JD.succeed InstanceType_m4_large

                    "m4_xlarge" ->
                        JD.succeed InstanceType_m4_xlarge

                    "m4_2xlarge" ->
                        JD.succeed InstanceType_m4_2xlarge

                    "m4_4xlarge" ->
                        JD.succeed InstanceType_m4_4xlarge

                    "m4_10xlarge" ->
                        JD.succeed InstanceType_m4_10xlarge

                    "m4_16xlarge" ->
                        JD.succeed InstanceType_m4_16xlarge

                    "m2_xlarge" ->
                        JD.succeed InstanceType_m2_xlarge

                    "m2_2xlarge" ->
                        JD.succeed InstanceType_m2_2xlarge

                    "m2_4xlarge" ->
                        JD.succeed InstanceType_m2_4xlarge

                    "cr1_8xlarge" ->
                        JD.succeed InstanceType_cr1_8xlarge

                    "r3_large" ->
                        JD.succeed InstanceType_r3_large

                    "r3_xlarge" ->
                        JD.succeed InstanceType_r3_xlarge

                    "r3_2xlarge" ->
                        JD.succeed InstanceType_r3_2xlarge

                    "r3_4xlarge" ->
                        JD.succeed InstanceType_r3_4xlarge

                    "r3_8xlarge" ->
                        JD.succeed InstanceType_r3_8xlarge

                    "r4_large" ->
                        JD.succeed InstanceType_r4_large

                    "r4_xlarge" ->
                        JD.succeed InstanceType_r4_xlarge

                    "r4_2xlarge" ->
                        JD.succeed InstanceType_r4_2xlarge

                    "r4_4xlarge" ->
                        JD.succeed InstanceType_r4_4xlarge

                    "r4_8xlarge" ->
                        JD.succeed InstanceType_r4_8xlarge

                    "r4_16xlarge" ->
                        JD.succeed InstanceType_r4_16xlarge

                    "x1_16xlarge" ->
                        JD.succeed InstanceType_x1_16xlarge

                    "x1_32xlarge" ->
                        JD.succeed InstanceType_x1_32xlarge

                    "i2_xlarge" ->
                        JD.succeed InstanceType_i2_xlarge

                    "i2_2xlarge" ->
                        JD.succeed InstanceType_i2_2xlarge

                    "i2_4xlarge" ->
                        JD.succeed InstanceType_i2_4xlarge

                    "i2_8xlarge" ->
                        JD.succeed InstanceType_i2_8xlarge

                    "hi1_4xlarge" ->
                        JD.succeed InstanceType_hi1_4xlarge

                    "hs1_8xlarge" ->
                        JD.succeed InstanceType_hs1_8xlarge

                    "c1_medium" ->
                        JD.succeed InstanceType_c1_medium

                    "c1_xlarge" ->
                        JD.succeed InstanceType_c1_xlarge

                    "c3_large" ->
                        JD.succeed InstanceType_c3_large

                    "c3_xlarge" ->
                        JD.succeed InstanceType_c3_xlarge

                    "c3_2xlarge" ->
                        JD.succeed InstanceType_c3_2xlarge

                    "c3_4xlarge" ->
                        JD.succeed InstanceType_c3_4xlarge

                    "c3_8xlarge" ->
                        JD.succeed InstanceType_c3_8xlarge

                    "c4_large" ->
                        JD.succeed InstanceType_c4_large

                    "c4_xlarge" ->
                        JD.succeed InstanceType_c4_xlarge

                    "c4_2xlarge" ->
                        JD.succeed InstanceType_c4_2xlarge

                    "c4_4xlarge" ->
                        JD.succeed InstanceType_c4_4xlarge

                    "c4_8xlarge" ->
                        JD.succeed InstanceType_c4_8xlarge

                    "cc1_4xlarge" ->
                        JD.succeed InstanceType_cc1_4xlarge

                    "cc2_8xlarge" ->
                        JD.succeed InstanceType_cc2_8xlarge

                    "g2_2xlarge" ->
                        JD.succeed InstanceType_g2_2xlarge

                    "g2_8xlarge" ->
                        JD.succeed InstanceType_g2_8xlarge

                    "cg1_4xlarge" ->
                        JD.succeed InstanceType_cg1_4xlarge

                    "p2_xlarge" ->
                        JD.succeed InstanceType_p2_xlarge

                    "p2_8xlarge" ->
                        JD.succeed InstanceType_p2_8xlarge

                    "p2_16xlarge" ->
                        JD.succeed InstanceType_p2_16xlarge

                    "d2_xlarge" ->
                        JD.succeed InstanceType_d2_xlarge

                    "d2_2xlarge" ->
                        JD.succeed InstanceType_d2_2xlarge

                    "d2_4xlarge" ->
                        JD.succeed InstanceType_d2_4xlarge

                    "d2_8xlarge" ->
                        JD.succeed InstanceType_d2_8xlarge

                    "f1_2xlarge" ->
                        JD.succeed InstanceType_f1_2xlarge

                    "f1_16xlarge" ->
                        JD.succeed InstanceType_f1_16xlarge


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an Internet gateway.</p>
-}
type alias InternetGateway =
    { internetGatewayId : Maybe String
    , attachments : Maybe (List InternetGatewayAttachment)
    , tags : Maybe (List Tag)
    }



internetGatewayDecoder : JD.Decoder InternetGateway
internetGatewayDecoder =
    JDP.decode InternetGateway
        |> JDP.optional "internetGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "attachments" (JD.nullable (JD.list internetGatewayAttachmentDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Describes the attachment of a VPC to an Internet gateway or an egress-only Internet gateway.</p>
-}
type alias InternetGatewayAttachment =
    { vpcId : Maybe String
    , state : Maybe AttachmentStatus
    }



internetGatewayAttachmentDecoder : JD.Decoder InternetGatewayAttachment
internetGatewayAttachmentDecoder =
    JDP.decode InternetGatewayAttachment
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable attachmentStatusDecoder) Nothing




{-| <p>Describes a security group rule.</p>
-}
type alias IpPermission =
    { ipProtocol : Maybe String
    , fromPort : Maybe Int
    , toPort : Maybe Int
    , userIdGroupPairs : Maybe (List UserIdGroupPair)
    , ipRanges : Maybe (List IpRange)
    , ipv6Ranges : Maybe (List Ipv6Range)
    , prefixListIds : Maybe (List PrefixListId)
    }



ipPermissionDecoder : JD.Decoder IpPermission
ipPermissionDecoder =
    JDP.decode IpPermission
        |> JDP.optional "ipProtocol" (JD.nullable JD.string) Nothing
        |> JDP.optional "fromPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "toPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "userIdGroupPairs" (JD.nullable (JD.list userIdGroupPairDecoder)) Nothing
        |> JDP.optional "ipRanges" (JD.nullable (JD.list ipRangeDecoder)) Nothing
        |> JDP.optional "ipv6Ranges" (JD.nullable (JD.list ipv6RangeDecoder)) Nothing
        |> JDP.optional "prefixListIds" (JD.nullable (JD.list prefixListIdDecoder)) Nothing




{-| <p>Describes an IPv4 range.</p>
-}
type alias IpRange =
    { cidrIp : Maybe String
    }



ipRangeDecoder : JD.Decoder IpRange
ipRangeDecoder =
    JDP.decode IpRange
        |> JDP.optional "cidrIp" (JD.nullable JD.string) Nothing




{-| <p>Describes an IPv6 CIDR block.</p>
-}
type alias Ipv6CidrBlock =
    { ipv6CidrBlock : Maybe String
    }



ipv6CidrBlockDecoder : JD.Decoder Ipv6CidrBlock
ipv6CidrBlockDecoder =
    JDP.decode Ipv6CidrBlock
        |> JDP.optional "ipv6CidrBlock" (JD.nullable JD.string) Nothing




{-| <p>[EC2-VPC only] Describes an IPv6 range.</p>
-}
type alias Ipv6Range =
    { cidrIpv6 : Maybe String
    }



ipv6RangeDecoder : JD.Decoder Ipv6Range
ipv6RangeDecoder =
    JDP.decode Ipv6Range
        |> JDP.optional "cidrIpv6" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from keyPai
-}
type alias KeyPair =
    { keyName : Maybe String
    , keyFingerprint : Maybe String
    , keyMaterial : Maybe String
    }



keyPairDecoder : JD.Decoder KeyPair
keyPairDecoder =
    JDP.decode KeyPair
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyFingerprint" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyMaterial" (JD.nullable JD.string) Nothing




{-| <p>Describes a key pair.</p>
-}
type alias KeyPairInfo =
    { keyName : Maybe String
    , keyFingerprint : Maybe String
    }



keyPairInfoDecoder : JD.Decoder KeyPairInfo
keyPairInfoDecoder =
    JDP.decode KeyPairInfo
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyFingerprint" (JD.nullable JD.string) Nothing




{-| <p>Describes a launch permission.</p>
-}
type alias LaunchPermission =
    { userId : Maybe String
    , group : Maybe PermissionGroup
    }



launchPermissionDecoder : JD.Decoder LaunchPermission
launchPermissionDecoder =
    JDP.decode LaunchPermission
        |> JDP.optional "userId" (JD.nullable JD.string) Nothing
        |> JDP.optional "group" (JD.nullable permissionGroupDecoder) Nothing




{-| <p>Describes a launch permission modification.</p>
-}
type alias LaunchPermissionModifications =
    { add : Maybe (List LaunchPermission)
    , remove : Maybe (List LaunchPermission)
    }



launchPermissionModificationsDecoder : JD.Decoder LaunchPermissionModifications
launchPermissionModificationsDecoder =
    JDP.decode LaunchPermissionModifications
        |> JDP.optional "add" (JD.nullable (JD.list launchPermissionDecoder)) Nothing
        |> JDP.optional "remove" (JD.nullable (JD.list launchPermissionDecoder)) Nothing




{-| <p>Describes the launch specification for an instance.</p>
-}
type alias LaunchSpecification =
    { imageId : Maybe String
    , keyName : Maybe String
    , securityGroups : Maybe (List GroupIdentifier)
    , userData : Maybe String
    , addressingType : Maybe String
    , instanceType : Maybe InstanceType
    , placement : Maybe SpotPlacement
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , subnetId : Maybe String
    , networkInterfaces : Maybe (List InstanceNetworkInterfaceSpecification)
    , iamInstanceProfile : Maybe IamInstanceProfileSpecification
    , ebsOptimized : Maybe Bool
    , monitoring : Maybe RunInstancesMonitoringEnabled
    }



launchSpecificationDecoder : JD.Decoder LaunchSpecification
launchSpecificationDecoder =
    JDP.decode LaunchSpecification
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "userData" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressingType" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "placement" (JD.nullable spotPlacementDecoder) Nothing
        |> JDP.optional "kernelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list blockDeviceMappingDecoder)) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaces" (JD.nullable (JD.list instanceNetworkInterfaceSpecificationDecoder)) Nothing
        |> JDP.optional "iamInstanceProfile" (JD.nullable iamInstanceProfileSpecificationDecoder) Nothing
        |> JDP.optional "ebsOptimized" (JD.nullable JD.bool) Nothing
        |> JDP.optional "monitoring" (JD.nullable runInstancesMonitoringEnabledDecoder) Nothing




{-| One of

* `ListingState_available`
* `ListingState_sold`
* `ListingState_cancelled`
* `ListingState_pending`

-}
type ListingState
    = ListingState_available
    | ListingState_sold
    | ListingState_cancelled
    | ListingState_pending



listingStateDecoder : JD.Decoder ListingState
listingStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "available" ->
                        JD.succeed ListingState_available

                    "sold" ->
                        JD.succeed ListingState_sold

                    "cancelled" ->
                        JD.succeed ListingState_cancelled

                    "pending" ->
                        JD.succeed ListingState_pending


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ListingStatus_active`
* `ListingStatus_pending`
* `ListingStatus_cancelled`
* `ListingStatus_closed`

-}
type ListingStatus
    = ListingStatus_active
    | ListingStatus_pending
    | ListingStatus_cancelled
    | ListingStatus_closed



listingStatusDecoder : JD.Decoder ListingStatus
listingStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed ListingStatus_active

                    "pending" ->
                        JD.succeed ListingStatus_pending

                    "cancelled" ->
                        JD.succeed ListingStatus_cancelled

                    "closed" ->
                        JD.succeed ListingStatus_closed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from modifyHos
-}
type alias ModifyHostsResult =
    { successful : Maybe (List String)
    , unsuccessful : Maybe (List UnsuccessfulItem)
    }



modifyHostsResultDecoder : JD.Decoder ModifyHostsResult
modifyHostsResultDecoder =
    JDP.decode ModifyHostsResult
        |> JDP.optional "successful" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "unsuccessful" (JD.nullable (JD.list unsuccessfulItemDecoder)) Nothing




{-| Type of HTTP response from modifyInstancePlaceme
-}
type alias ModifyInstancePlacementResult =
    { return : Maybe Bool
    }



modifyInstancePlacementResultDecoder : JD.Decoder ModifyInstancePlacementResult
modifyInstancePlacementResultDecoder =
    JDP.decode ModifyInstancePlacementResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from modifyReservedInstanc
-}
type alias ModifyReservedInstancesResult =
    { reservedInstancesModificationId : Maybe String
    }



modifyReservedInstancesResultDecoder : JD.Decoder ModifyReservedInstancesResult
modifyReservedInstancesResultDecoder =
    JDP.decode ModifyReservedInstancesResult
        |> JDP.optional "reservedInstancesModificationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from modifySpotFleetRequest
-}
type alias ModifySpotFleetRequestResponse =
    { return : Maybe Bool
    }



modifySpotFleetRequestResponseDecoder : JD.Decoder ModifySpotFleetRequestResponse
modifySpotFleetRequestResponseDecoder =
    JDP.decode ModifySpotFleetRequestResponse
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from modifyVpcEndpoi
-}
type alias ModifyVpcEndpointResult =
    { return : Maybe Bool
    }



modifyVpcEndpointResultDecoder : JD.Decoder ModifyVpcEndpointResult
modifyVpcEndpointResultDecoder =
    JDP.decode ModifyVpcEndpointResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from modifyVpcPeeringConnectionOptio
-}
type alias ModifyVpcPeeringConnectionOptionsResult =
    { requesterPeeringConnectionOptions : Maybe PeeringConnectionOptions
    , accepterPeeringConnectionOptions : Maybe PeeringConnectionOptions
    }



modifyVpcPeeringConnectionOptionsResultDecoder : JD.Decoder ModifyVpcPeeringConnectionOptionsResult
modifyVpcPeeringConnectionOptionsResultDecoder =
    JDP.decode ModifyVpcPeeringConnectionOptionsResult
        |> JDP.optional "requesterPeeringConnectionOptions" (JD.nullable peeringConnectionOptionsDecoder) Nothing
        |> JDP.optional "accepterPeeringConnectionOptions" (JD.nullable peeringConnectionOptionsDecoder) Nothing




{-| Type of HTTP response from monitorInstanc
-}
type alias MonitorInstancesResult =
    { instanceMonitorings : Maybe (List InstanceMonitoring)
    }



monitorInstancesResultDecoder : JD.Decoder MonitorInstancesResult
monitorInstancesResultDecoder =
    JDP.decode MonitorInstancesResult
        |> JDP.optional "instanceMonitorings" (JD.nullable (JD.list instanceMonitoringDecoder)) Nothing




{-| <p>Describes the monitoring of an instance.</p>
-}
type alias Monitoring =
    { state : Maybe MonitoringState
    }



monitoringDecoder : JD.Decoder Monitoring
monitoringDecoder =
    JDP.decode Monitoring
        |> JDP.optional "state" (JD.nullable monitoringStateDecoder) Nothing




{-| One of

* `MonitoringState_disabled`
* `MonitoringState_disabling`
* `MonitoringState_enabled`
* `MonitoringState_pending`

-}
type MonitoringState
    = MonitoringState_disabled
    | MonitoringState_disabling
    | MonitoringState_enabled
    | MonitoringState_pending



monitoringStateDecoder : JD.Decoder MonitoringState
monitoringStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "disabled" ->
                        JD.succeed MonitoringState_disabled

                    "disabling" ->
                        JD.succeed MonitoringState_disabling

                    "enabled" ->
                        JD.succeed MonitoringState_enabled

                    "pending" ->
                        JD.succeed MonitoringState_pending


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from moveAddressToV
-}
type alias MoveAddressToVpcResult =
    { allocationId : Maybe String
    , status : Maybe Status
    }



moveAddressToVpcResultDecoder : JD.Decoder MoveAddressToVpcResult
moveAddressToVpcResultDecoder =
    JDP.decode MoveAddressToVpcResult
        |> JDP.optional "allocationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing




{-| One of

* `MoveStatus_movingToVpc`
* `MoveStatus_restoringToClassic`

-}
type MoveStatus
    = MoveStatus_movingToVpc
    | MoveStatus_restoringToClassic



moveStatusDecoder : JD.Decoder MoveStatus
moveStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "movingToVpc" ->
                        JD.succeed MoveStatus_movingToVpc

                    "restoringToClassic" ->
                        JD.succeed MoveStatus_restoringToClassic


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the status of a moving Elastic IP address.</p>
-}
type alias MovingAddressStatus =
    { publicIp : Maybe String
    , moveStatus : Maybe MoveStatus
    }



movingAddressStatusDecoder : JD.Decoder MovingAddressStatus
movingAddressStatusDecoder =
    JDP.decode MovingAddressStatus
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "moveStatus" (JD.nullable moveStatusDecoder) Nothing




{-| <p>Describes a NAT gateway.</p>
-}
type alias NatGateway =
    { vpcId : Maybe String
    , subnetId : Maybe String
    , natGatewayId : Maybe String
    , createTime : Maybe Date
    , deleteTime : Maybe Date
    , natGatewayAddresses : Maybe (List NatGatewayAddress)
    , state : Maybe NatGatewayState
    , failureCode : Maybe String
    , failureMessage : Maybe String
    , provisionedBandwidth : Maybe ProvisionedBandwidth
    }



natGatewayDecoder : JD.Decoder NatGateway
natGatewayDecoder =
    JDP.decode NatGateway
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "natGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deleteTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "natGatewayAddresses" (JD.nullable (JD.list natGatewayAddressDecoder)) Nothing
        |> JDP.optional "state" (JD.nullable natGatewayStateDecoder) Nothing
        |> JDP.optional "failureCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "failureMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "provisionedBandwidth" (JD.nullable provisionedBandwidthDecoder) Nothing




{-| <p>Describes the IP addresses and network interface associated with a NAT gateway.</p>
-}
type alias NatGatewayAddress =
    { publicIp : Maybe String
    , allocationId : Maybe String
    , privateIp : Maybe String
    , networkInterfaceId : Maybe String
    }



natGatewayAddressDecoder : JD.Decoder NatGatewayAddress
natGatewayAddressDecoder =
    JDP.decode NatGatewayAddress
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing




{-| One of

* `NatGatewayState_pending`
* `NatGatewayState_failed`
* `NatGatewayState_available`
* `NatGatewayState_deleting`
* `NatGatewayState_deleted`

-}
type NatGatewayState
    = NatGatewayState_pending
    | NatGatewayState_failed
    | NatGatewayState_available
    | NatGatewayState_deleting
    | NatGatewayState_deleted



natGatewayStateDecoder : JD.Decoder NatGatewayState
natGatewayStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed NatGatewayState_pending

                    "failed" ->
                        JD.succeed NatGatewayState_failed

                    "available" ->
                        JD.succeed NatGatewayState_available

                    "deleting" ->
                        JD.succeed NatGatewayState_deleting

                    "deleted" ->
                        JD.succeed NatGatewayState_deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a network ACL.</p>
-}
type alias NetworkAcl =
    { networkAclId : Maybe String
    , vpcId : Maybe String
    , isDefault : Maybe Bool
    , entries : Maybe (List NetworkAclEntry)
    , associations : Maybe (List NetworkAclAssociation)
    , tags : Maybe (List Tag)
    }



networkAclDecoder : JD.Decoder NetworkAcl
networkAclDecoder =
    JDP.decode NetworkAcl
        |> JDP.optional "networkAclId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isDefault" (JD.nullable JD.bool) Nothing
        |> JDP.optional "entries" (JD.nullable (JD.list networkAclEntryDecoder)) Nothing
        |> JDP.optional "associations" (JD.nullable (JD.list networkAclAssociationDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Describes an association between a network ACL and a subnet.</p>
-}
type alias NetworkAclAssociation =
    { networkAclAssociationId : Maybe String
    , networkAclId : Maybe String
    , subnetId : Maybe String
    }



networkAclAssociationDecoder : JD.Decoder NetworkAclAssociation
networkAclAssociationDecoder =
    JDP.decode NetworkAclAssociation
        |> JDP.optional "networkAclAssociationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkAclId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing




{-| <p>Describes an entry in a network ACL.</p>
-}
type alias NetworkAclEntry =
    { ruleNumber : Maybe Int
    , protocol : Maybe String
    , ruleAction : Maybe RuleAction
    , egress : Maybe Bool
    , cidrBlock : Maybe String
    , ipv6CidrBlock : Maybe String
    , icmpTypeCode : Maybe IcmpTypeCode
    , portRange : Maybe PortRange
    }



networkAclEntryDecoder : JD.Decoder NetworkAclEntry
networkAclEntryDecoder =
    JDP.decode NetworkAclEntry
        |> JDP.optional "ruleNumber" (JD.nullable JD.int) Nothing
        |> JDP.optional "protocol" (JD.nullable JD.string) Nothing
        |> JDP.optional "ruleAction" (JD.nullable ruleActionDecoder) Nothing
        |> JDP.optional "egress" (JD.nullable JD.bool) Nothing
        |> JDP.optional "cidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "icmpTypeCode" (JD.nullable icmpTypeCodeDecoder) Nothing
        |> JDP.optional "portRange" (JD.nullable portRangeDecoder) Nothing




{-| <p>Describes a network interface.</p>
-}
type alias NetworkInterface =
    { networkInterfaceId : Maybe String
    , subnetId : Maybe String
    , vpcId : Maybe String
    , availabilityZone : Maybe String
    , description : Maybe String
    , ownerId : Maybe String
    , requesterId : Maybe String
    , requesterManaged : Maybe Bool
    , status : Maybe NetworkInterfaceStatus
    , macAddress : Maybe String
    , privateIpAddress : Maybe String
    , privateDnsName : Maybe String
    , sourceDestCheck : Maybe Bool
    , groups : Maybe (List GroupIdentifier)
    , attachment : Maybe NetworkInterfaceAttachment
    , association : Maybe NetworkInterfaceAssociation
    , tagSet : Maybe (List Tag)
    , privateIpAddresses : Maybe (List NetworkInterfacePrivateIpAddress)
    , ipv6Addresses : Maybe (List NetworkInterfaceIpv6Address)
    , interfaceType : Maybe NetworkInterfaceType
    }



networkInterfaceDecoder : JD.Decoder NetworkInterface
networkInterfaceDecoder =
    JDP.decode NetworkInterface
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requesterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requesterManaged" (JD.nullable JD.bool) Nothing
        |> JDP.optional "status" (JD.nullable networkInterfaceStatusDecoder) Nothing
        |> JDP.optional "macAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceDestCheck" (JD.nullable JD.bool) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "attachment" (JD.nullable networkInterfaceAttachmentDecoder) Nothing
        |> JDP.optional "association" (JD.nullable networkInterfaceAssociationDecoder) Nothing
        |> JDP.optional "tagSet" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "privateIpAddresses" (JD.nullable (JD.list networkInterfacePrivateIpAddressDecoder)) Nothing
        |> JDP.optional "ipv6Addresses" (JD.nullable (JD.list networkInterfaceIpv6AddressDecoder)) Nothing
        |> JDP.optional "interfaceType" (JD.nullable networkInterfaceTypeDecoder) Nothing




{-| <p>Describes association information for an Elastic IP address (IPv4 only).</p>
-}
type alias NetworkInterfaceAssociation =
    { publicIp : Maybe String
    , publicDnsName : Maybe String
    , ipOwnerId : Maybe String
    , allocationId : Maybe String
    , associationId : Maybe String
    }



networkInterfaceAssociationDecoder : JD.Decoder NetworkInterfaceAssociation
networkInterfaceAssociationDecoder =
    JDP.decode NetworkInterfaceAssociation
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipOwnerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "allocationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing




{-| <p>Describes a network interface attachment.</p>
-}
type alias NetworkInterfaceAttachment =
    { attachmentId : Maybe String
    , instanceId : Maybe String
    , instanceOwnerId : Maybe String
    , deviceIndex : Maybe Int
    , status : Maybe AttachmentStatus
    , attachTime : Maybe Date
    , deleteOnTermination : Maybe Bool
    }



networkInterfaceAttachmentDecoder : JD.Decoder NetworkInterfaceAttachment
networkInterfaceAttachmentDecoder =
    JDP.decode NetworkInterfaceAttachment
        |> JDP.optional "attachmentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceOwnerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceIndex" (JD.nullable JD.int) Nothing
        |> JDP.optional "status" (JD.nullable attachmentStatusDecoder) Nothing
        |> JDP.optional "attachTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing




{-| <p>Describes an attachment change.</p>
-}
type alias NetworkInterfaceAttachmentChanges =
    { attachmentId : Maybe String
    , deleteOnTermination : Maybe Bool
    }



networkInterfaceAttachmentChangesDecoder : JD.Decoder NetworkInterfaceAttachmentChanges
networkInterfaceAttachmentChangesDecoder =
    JDP.decode NetworkInterfaceAttachmentChanges
        |> JDP.optional "attachmentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing




{-| One of

* `NetworkInterfaceAttribute_description`
* `NetworkInterfaceAttribute_groupSet`
* `NetworkInterfaceAttribute_sourceDestCheck`
* `NetworkInterfaceAttribute_attachment`

-}
type NetworkInterfaceAttribute
    = NetworkInterfaceAttribute_description
    | NetworkInterfaceAttribute_groupSet
    | NetworkInterfaceAttribute_sourceDestCheck
    | NetworkInterfaceAttribute_attachment



networkInterfaceAttributeDecoder : JD.Decoder NetworkInterfaceAttribute
networkInterfaceAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "description" ->
                        JD.succeed NetworkInterfaceAttribute_description

                    "groupSet" ->
                        JD.succeed NetworkInterfaceAttribute_groupSet

                    "sourceDestCheck" ->
                        JD.succeed NetworkInterfaceAttribute_sourceDestCheck

                    "attachment" ->
                        JD.succeed NetworkInterfaceAttribute_attachment


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an IPv6 address associated with a network interface.</p>
-}
type alias NetworkInterfaceIpv6Address =
    { ipv6Address : Maybe String
    }



networkInterfaceIpv6AddressDecoder : JD.Decoder NetworkInterfaceIpv6Address
networkInterfaceIpv6AddressDecoder =
    JDP.decode NetworkInterfaceIpv6Address
        |> JDP.optional "ipv6Address" (JD.nullable JD.string) Nothing




{-| <p>Describes the private IPv4 address of a network interface.</p>
-}
type alias NetworkInterfacePrivateIpAddress =
    { privateIpAddress : Maybe String
    , privateDnsName : Maybe String
    , primary : Maybe Bool
    , association : Maybe NetworkInterfaceAssociation
    }



networkInterfacePrivateIpAddressDecoder : JD.Decoder NetworkInterfacePrivateIpAddress
networkInterfacePrivateIpAddressDecoder =
    JDP.decode NetworkInterfacePrivateIpAddress
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateDnsName" (JD.nullable JD.string) Nothing
        |> JDP.optional "primary" (JD.nullable JD.bool) Nothing
        |> JDP.optional "association" (JD.nullable networkInterfaceAssociationDecoder) Nothing




{-| One of

* `NetworkInterfaceStatus_available`
* `NetworkInterfaceStatus_attaching`
* `NetworkInterfaceStatus_in-use`
* `NetworkInterfaceStatus_detaching`

-}
type NetworkInterfaceStatus
    = NetworkInterfaceStatus_available
    | NetworkInterfaceStatus_attaching
    | NetworkInterfaceStatus_in_use
    | NetworkInterfaceStatus_detaching



networkInterfaceStatusDecoder : JD.Decoder NetworkInterfaceStatus
networkInterfaceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "available" ->
                        JD.succeed NetworkInterfaceStatus_available

                    "attaching" ->
                        JD.succeed NetworkInterfaceStatus_attaching

                    "in_use" ->
                        JD.succeed NetworkInterfaceStatus_in_use

                    "detaching" ->
                        JD.succeed NetworkInterfaceStatus_detaching


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `NetworkInterfaceType_interface`
* `NetworkInterfaceType_natGateway`

-}
type NetworkInterfaceType
    = NetworkInterfaceType_interface
    | NetworkInterfaceType_natGateway



networkInterfaceTypeDecoder : JD.Decoder NetworkInterfaceType
networkInterfaceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "interface" ->
                        JD.succeed NetworkInterfaceType_interface

                    "natGateway" ->
                        JD.succeed NetworkInterfaceType_natGateway


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias NewDhcpConfiguration =
    { key : Maybe String
    , values : Maybe (List String)
    }



newDhcpConfigurationDecoder : JD.Decoder NewDhcpConfiguration
newDhcpConfigurationDecoder =
    JDP.decode NewDhcpConfiguration
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `OfferingClassType_standard`
* `OfferingClassType_convertible`

-}
type OfferingClassType
    = OfferingClassType_standard
    | OfferingClassType_convertible



offeringClassTypeDecoder : JD.Decoder OfferingClassType
offeringClassTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "standard" ->
                        JD.succeed OfferingClassType_standard

                    "convertible" ->
                        JD.succeed OfferingClassType_convertible


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `OfferingTypeValues_Heavy Utilization`
* `OfferingTypeValues_Medium Utilization`
* `OfferingTypeValues_Light Utilization`
* `OfferingTypeValues_No Upfront`
* `OfferingTypeValues_Partial Upfront`
* `OfferingTypeValues_All Upfront`

-}
type OfferingTypeValues
    = OfferingTypeValues_Heavy_Utilization
    | OfferingTypeValues_Medium_Utilization
    | OfferingTypeValues_Light_Utilization
    | OfferingTypeValues_No_Upfront
    | OfferingTypeValues_Partial_Upfront
    | OfferingTypeValues_All_Upfront



offeringTypeValuesDecoder : JD.Decoder OfferingTypeValues
offeringTypeValuesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Heavy_Utilization" ->
                        JD.succeed OfferingTypeValues_Heavy_Utilization

                    "Medium_Utilization" ->
                        JD.succeed OfferingTypeValues_Medium_Utilization

                    "Light_Utilization" ->
                        JD.succeed OfferingTypeValues_Light_Utilization

                    "No_Upfront" ->
                        JD.succeed OfferingTypeValues_No_Upfront

                    "Partial_Upfront" ->
                        JD.succeed OfferingTypeValues_Partial_Upfront

                    "All_Upfront" ->
                        JD.succeed OfferingTypeValues_All_Upfront


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `OperationType_add`
* `OperationType_remove`

-}
type OperationType
    = OperationType_add
    | OperationType_remove



operationTypeDecoder : JD.Decoder OperationType
operationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "add" ->
                        JD.succeed OperationType_add

                    "remove" ->
                        JD.succeed OperationType_remove


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PaymentOption_AllUpfront`
* `PaymentOption_PartialUpfront`
* `PaymentOption_NoUpfront`

-}
type PaymentOption
    = PaymentOption_AllUpfront
    | PaymentOption_PartialUpfront
    | PaymentOption_NoUpfront



paymentOptionDecoder : JD.Decoder PaymentOption
paymentOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AllUpfront" ->
                        JD.succeed PaymentOption_AllUpfront

                    "PartialUpfront" ->
                        JD.succeed PaymentOption_PartialUpfront

                    "NoUpfront" ->
                        JD.succeed PaymentOption_NoUpfront


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the VPC peering connection options.</p>
-}
type alias PeeringConnectionOptions =
    { allowEgressFromLocalClassicLinkToRemoteVpc : Maybe Bool
    , allowEgressFromLocalVpcToRemoteClassicLink : Maybe Bool
    , allowDnsResolutionFromRemoteVpc : Maybe Bool
    }



peeringConnectionOptionsDecoder : JD.Decoder PeeringConnectionOptions
peeringConnectionOptionsDecoder =
    JDP.decode PeeringConnectionOptions
        |> JDP.optional "allowEgressFromLocalClassicLinkToRemoteVpc" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowEgressFromLocalVpcToRemoteClassicLink" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowDnsResolutionFromRemoteVpc" (JD.nullable JD.bool) Nothing




{-| <p>The VPC peering connection options.</p>
-}
type alias PeeringConnectionOptionsRequest =
    { allowEgressFromLocalClassicLinkToRemoteVpc : Maybe Bool
    , allowEgressFromLocalVpcToRemoteClassicLink : Maybe Bool
    , allowDnsResolutionFromRemoteVpc : Maybe Bool
    }



peeringConnectionOptionsRequestDecoder : JD.Decoder PeeringConnectionOptionsRequest
peeringConnectionOptionsRequestDecoder =
    JDP.decode PeeringConnectionOptionsRequest
        |> JDP.optional "allowEgressFromLocalClassicLinkToRemoteVpc" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowEgressFromLocalVpcToRemoteClassicLink" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowDnsResolutionFromRemoteVpc" (JD.nullable JD.bool) Nothing




{-| One of

* `PermissionGroup_all`

-}
type PermissionGroup
    = PermissionGroup_all



permissionGroupDecoder : JD.Decoder PermissionGroup
permissionGroupDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "all" ->
                        JD.succeed PermissionGroup_all


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the placement of an instance.</p>
-}
type alias Placement =
    { availabilityZone : Maybe String
    , groupName : Maybe String
    , tenancy : Maybe Tenancy
    , hostId : Maybe String
    , affinity : Maybe String
    }



placementDecoder : JD.Decoder Placement
placementDecoder =
    JDP.decode Placement
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "tenancy" (JD.nullable tenancyDecoder) Nothing
        |> JDP.optional "hostId" (JD.nullable JD.string) Nothing
        |> JDP.optional "affinity" (JD.nullable JD.string) Nothing




{-| <p>Describes a placement group.</p>
-}
type alias PlacementGroup =
    { groupName : Maybe String
    , strategy : Maybe PlacementStrategy
    , state : Maybe PlacementGroupState
    }



placementGroupDecoder : JD.Decoder PlacementGroup
placementGroupDecoder =
    JDP.decode PlacementGroup
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "strategy" (JD.nullable placementStrategyDecoder) Nothing
        |> JDP.optional "state" (JD.nullable placementGroupStateDecoder) Nothing




{-| One of

* `PlacementGroupState_pending`
* `PlacementGroupState_available`
* `PlacementGroupState_deleting`
* `PlacementGroupState_deleted`

-}
type PlacementGroupState
    = PlacementGroupState_pending
    | PlacementGroupState_available
    | PlacementGroupState_deleting
    | PlacementGroupState_deleted



placementGroupStateDecoder : JD.Decoder PlacementGroupState
placementGroupStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed PlacementGroupState_pending

                    "available" ->
                        JD.succeed PlacementGroupState_available

                    "deleting" ->
                        JD.succeed PlacementGroupState_deleting

                    "deleted" ->
                        JD.succeed PlacementGroupState_deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PlacementStrategy_cluster`

-}
type PlacementStrategy
    = PlacementStrategy_cluster



placementStrategyDecoder : JD.Decoder PlacementStrategy
placementStrategyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "cluster" ->
                        JD.succeed PlacementStrategy_cluster


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PlatformValues_Windows`

-}
type PlatformValues
    = PlatformValues_Windows



platformValuesDecoder : JD.Decoder PlatformValues
platformValuesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Windows" ->
                        JD.succeed PlatformValues_Windows


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a range of ports.</p>
-}
type alias PortRange =
    { from : Maybe Int
    , to : Maybe Int
    }



portRangeDecoder : JD.Decoder PortRange
portRangeDecoder =
    JDP.decode PortRange
        |> JDP.optional "from" (JD.nullable JD.int) Nothing
        |> JDP.optional "to" (JD.nullable JD.int) Nothing




{-| <p>Describes prefixes for AWS services.</p>
-}
type alias PrefixList =
    { prefixListId : Maybe String
    , prefixListName : Maybe String
    , cidrs : Maybe (List String)
    }



prefixListDecoder : JD.Decoder PrefixList
prefixListDecoder =
    JDP.decode PrefixList
        |> JDP.optional "prefixListId" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefixListName" (JD.nullable JD.string) Nothing
        |> JDP.optional "cidrs" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The ID of the prefix.</p>
-}
type alias PrefixListId =
    { prefixListId : Maybe String
    }



prefixListIdDecoder : JD.Decoder PrefixListId
prefixListIdDecoder =
    JDP.decode PrefixListId
        |> JDP.optional "prefixListId" (JD.nullable JD.string) Nothing




{-| <p>Describes the price for a Reserved Instance.</p>
-}
type alias PriceSchedule =
    { term : Maybe Int
    , price : Maybe Float
    , currencyCode : Maybe CurrencyCodeValues
    , active : Maybe Bool
    }



priceScheduleDecoder : JD.Decoder PriceSchedule
priceScheduleDecoder =
    JDP.decode PriceSchedule
        |> JDP.optional "term" (JD.nullable JD.int) Nothing
        |> JDP.optional "price" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing
        |> JDP.optional "active" (JD.nullable JD.bool) Nothing




{-| <p>Describes the price for a Reserved Instance.</p>
-}
type alias PriceScheduleSpecification =
    { term : Maybe Int
    , price : Maybe Float
    , currencyCode : Maybe CurrencyCodeValues
    }



priceScheduleSpecificationDecoder : JD.Decoder PriceScheduleSpecification
priceScheduleSpecificationDecoder =
    JDP.decode PriceScheduleSpecification
        |> JDP.optional "term" (JD.nullable JD.int) Nothing
        |> JDP.optional "price" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing




{-| <p>Describes a Reserved Instance offering.</p>
-}
type alias PricingDetail =
    { price : Maybe Float
    , count : Maybe Int
    }



pricingDetailDecoder : JD.Decoder PricingDetail
pricingDetailDecoder =
    JDP.decode PricingDetail
        |> JDP.optional "price" (JD.nullable JD.float) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing




{-| <p>Describes a secondary private IPv4 address for a network interface.</p>
-}
type alias PrivateIpAddressSpecification =
    { privateIpAddress : String
    , primary : Maybe Bool
    }



privateIpAddressSpecificationDecoder : JD.Decoder PrivateIpAddressSpecification
privateIpAddressSpecificationDecoder =
    JDP.decode PrivateIpAddressSpecification
        |> JDP.required "privateIpAddress" JD.string
        |> JDP.optional "primary" (JD.nullable JD.bool) Nothing




{-| <p>Describes a product code.</p>
-}
type alias ProductCode =
    { productCodeId : Maybe String
    , productCodeType : Maybe ProductCodeValues
    }



productCodeDecoder : JD.Decoder ProductCode
productCodeDecoder =
    JDP.decode ProductCode
        |> JDP.optional "productCodeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "productCodeType" (JD.nullable productCodeValuesDecoder) Nothing




{-| One of

* `ProductCodeValues_devpay`
* `ProductCodeValues_marketplace`

-}
type ProductCodeValues
    = ProductCodeValues_devpay
    | ProductCodeValues_marketplace



productCodeValuesDecoder : JD.Decoder ProductCodeValues
productCodeValuesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "devpay" ->
                        JD.succeed ProductCodeValues_devpay

                    "marketplace" ->
                        JD.succeed ProductCodeValues_marketplace


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a virtual private gateway propagating route.</p>
-}
type alias PropagatingVgw =
    { gatewayId : Maybe String
    }



propagatingVgwDecoder : JD.Decoder PropagatingVgw
propagatingVgwDecoder =
    JDP.decode PropagatingVgw
        |> JDP.optional "gatewayId" (JD.nullable JD.string) Nothing




{-| <p>Reserved. If you need to sustain traffic greater than the <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html">documented limits</a>, contact us through the <a href="https://console.aws.amazon.com/support/home?">Support Center</a>.</p>
-}
type alias ProvisionedBandwidth =
    { provisioned : Maybe String
    , requested : Maybe String
    , requestTime : Maybe Date
    , provisionTime : Maybe Date
    , status : Maybe String
    }



provisionedBandwidthDecoder : JD.Decoder ProvisionedBandwidth
provisionedBandwidthDecoder =
    JDP.decode ProvisionedBandwidth
        |> JDP.optional "provisioned" (JD.nullable JD.string) Nothing
        |> JDP.optional "requested" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "provisionTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Describes the result of the purchase.</p>
-}
type alias Purchase =
    { hostReservationId : Maybe String
    , hostIdSet : Maybe (List String)
    , instanceFamily : Maybe String
    , paymentOption : Maybe PaymentOption
    , upfrontPrice : Maybe String
    , hourlyPrice : Maybe String
    , currencyCode : Maybe CurrencyCodeValues
    , duration : Maybe Int
    }



purchaseDecoder : JD.Decoder Purchase
purchaseDecoder =
    JDP.decode Purchase
        |> JDP.optional "hostReservationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostIdSet" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "instanceFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "paymentOption" (JD.nullable paymentOptionDecoder) Nothing
        |> JDP.optional "upfrontPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "hourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from purchaseHostReservati
-}
type alias PurchaseHostReservationResult =
    { purchase : Maybe (List Purchase)
    , totalUpfrontPrice : Maybe String
    , totalHourlyPrice : Maybe String
    , currencyCode : Maybe CurrencyCodeValues
    , clientToken : Maybe String
    }



purchaseHostReservationResultDecoder : JD.Decoder PurchaseHostReservationResult
purchaseHostReservationResultDecoder =
    JDP.decode PurchaseHostReservationResult
        |> JDP.optional "purchase" (JD.nullable (JD.list purchaseDecoder)) Nothing
        |> JDP.optional "totalUpfrontPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "totalHourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing




{-| <p>Describes a request to purchase Scheduled Instances.</p>
-}
type alias PurchaseRequest =
    { purchaseToken : String
    , instanceCount : Int
    }



purchaseRequestDecoder : JD.Decoder PurchaseRequest
purchaseRequestDecoder =
    JDP.decode PurchaseRequest
        |> JDP.required "purchaseToken" JD.string
        |> JDP.required "instanceCount" JD.int




{-| Type of HTTP response from purchaseReservedInstancesOfferi
-}
type alias PurchaseReservedInstancesOfferingResult =
    { reservedInstancesId : Maybe String
    }



purchaseReservedInstancesOfferingResultDecoder : JD.Decoder PurchaseReservedInstancesOfferingResult
purchaseReservedInstancesOfferingResultDecoder =
    JDP.decode PurchaseReservedInstancesOfferingResult
        |> JDP.optional "reservedInstancesId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from purchaseScheduledInstanc
-}
type alias PurchaseScheduledInstancesResult =
    { scheduledInstanceSet : Maybe (List ScheduledInstance)
    }



purchaseScheduledInstancesResultDecoder : JD.Decoder PurchaseScheduledInstancesResult
purchaseScheduledInstancesResultDecoder =
    JDP.decode PurchaseScheduledInstancesResult
        |> JDP.optional "scheduledInstanceSet" (JD.nullable (JD.list scheduledInstanceDecoder)) Nothing




{-| One of

* `RIProductDescription_Linux/UNIX`
* `RIProductDescription_Linux/UNIX (Amazon VPC)`
* `RIProductDescription_Windows`
* `RIProductDescription_Windows (Amazon VPC)`

-}
type RIProductDescription
    = RIProductDescription_Linux_UNIX
    | RIProductDescription_Linux_UNIX_Amazon_VPC_
    | RIProductDescription_Windows
    | RIProductDescription_Windows_Amazon_VPC_



rIProductDescriptionDecoder : JD.Decoder RIProductDescription
rIProductDescriptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Linux_UNIX" ->
                        JD.succeed RIProductDescription_Linux_UNIX

                    "Linux_UNIX_Amazon_VPC_" ->
                        JD.succeed RIProductDescription_Linux_UNIX_Amazon_VPC_

                    "Windows" ->
                        JD.succeed RIProductDescription_Windows

                    "Windows_Amazon_VPC_" ->
                        JD.succeed RIProductDescription_Windows_Amazon_VPC_


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a recurring charge.</p>
-}
type alias RecurringCharge =
    { frequency : Maybe RecurringChargeFrequency
    , amount : Maybe Float
    }



recurringChargeDecoder : JD.Decoder RecurringCharge
recurringChargeDecoder =
    JDP.decode RecurringCharge
        |> JDP.optional "frequency" (JD.nullable recurringChargeFrequencyDecoder) Nothing
        |> JDP.optional "amount" (JD.nullable JD.float) Nothing




{-| One of

* `RecurringChargeFrequency_Hourly`

-}
type RecurringChargeFrequency
    = RecurringChargeFrequency_Hourly



recurringChargeFrequencyDecoder : JD.Decoder RecurringChargeFrequency
recurringChargeFrequencyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Hourly" ->
                        JD.succeed RecurringChargeFrequency_Hourly


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a region.</p>
-}
type alias Region =
    { regionName : Maybe String
    , endpoint : Maybe String
    }



regionDecoder : JD.Decoder Region
regionDecoder =
    JDP.decode Region
        |> JDP.optional "regionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerIma
-}
type alias RegisterImageResult =
    { imageId : Maybe String
    }



registerImageResultDecoder : JD.Decoder RegisterImageResult
registerImageResultDecoder =
    JDP.decode RegisterImageResult
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from rejectVpcPeeringConnecti
-}
type alias RejectVpcPeeringConnectionResult =
    { return : Maybe Bool
    }



rejectVpcPeeringConnectionResultDecoder : JD.Decoder RejectVpcPeeringConnectionResult
rejectVpcPeeringConnectionResultDecoder =
    JDP.decode RejectVpcPeeringConnectionResult
        |> JDP.optional "return" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from releaseHos
-}
type alias ReleaseHostsResult =
    { successful : Maybe (List String)
    , unsuccessful : Maybe (List UnsuccessfulItem)
    }



releaseHostsResultDecoder : JD.Decoder ReleaseHostsResult
releaseHostsResultDecoder =
    JDP.decode ReleaseHostsResult
        |> JDP.optional "successful" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "unsuccessful" (JD.nullable (JD.list unsuccessfulItemDecoder)) Nothing




{-| Type of HTTP response from replaceNetworkAclAssociati
-}
type alias ReplaceNetworkAclAssociationResult =
    { newAssociationId : Maybe String
    }



replaceNetworkAclAssociationResultDecoder : JD.Decoder ReplaceNetworkAclAssociationResult
replaceNetworkAclAssociationResultDecoder =
    JDP.decode ReplaceNetworkAclAssociationResult
        |> JDP.optional "newAssociationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from replaceRouteTableAssociati
-}
type alias ReplaceRouteTableAssociationResult =
    { newAssociationId : Maybe String
    }



replaceRouteTableAssociationResultDecoder : JD.Decoder ReplaceRouteTableAssociationResult
replaceRouteTableAssociationResultDecoder =
    JDP.decode ReplaceRouteTableAssociationResult
        |> JDP.optional "newAssociationId" (JD.nullable JD.string) Nothing




{-| One of

* `ReportInstanceReasonCodes_instance-stuck-in-state`
* `ReportInstanceReasonCodes_unresponsive`
* `ReportInstanceReasonCodes_not-accepting-credentials`
* `ReportInstanceReasonCodes_password-not-available`
* `ReportInstanceReasonCodes_performance-network`
* `ReportInstanceReasonCodes_performance-instance-store`
* `ReportInstanceReasonCodes_performance-ebs-volume`
* `ReportInstanceReasonCodes_performance-other`
* `ReportInstanceReasonCodes_other`

-}
type ReportInstanceReasonCodes
    = ReportInstanceReasonCodes_instance_stuck_in_state
    | ReportInstanceReasonCodes_unresponsive
    | ReportInstanceReasonCodes_not_accepting_credentials
    | ReportInstanceReasonCodes_password_not_available
    | ReportInstanceReasonCodes_performance_network
    | ReportInstanceReasonCodes_performance_instance_store
    | ReportInstanceReasonCodes_performance_ebs_volume
    | ReportInstanceReasonCodes_performance_other
    | ReportInstanceReasonCodes_other



reportInstanceReasonCodesDecoder : JD.Decoder ReportInstanceReasonCodes
reportInstanceReasonCodesDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "instance_stuck_in_state" ->
                        JD.succeed ReportInstanceReasonCodes_instance_stuck_in_state

                    "unresponsive" ->
                        JD.succeed ReportInstanceReasonCodes_unresponsive

                    "not_accepting_credentials" ->
                        JD.succeed ReportInstanceReasonCodes_not_accepting_credentials

                    "password_not_available" ->
                        JD.succeed ReportInstanceReasonCodes_password_not_available

                    "performance_network" ->
                        JD.succeed ReportInstanceReasonCodes_performance_network

                    "performance_instance_store" ->
                        JD.succeed ReportInstanceReasonCodes_performance_instance_store

                    "performance_ebs_volume" ->
                        JD.succeed ReportInstanceReasonCodes_performance_ebs_volume

                    "performance_other" ->
                        JD.succeed ReportInstanceReasonCodes_performance_other

                    "other" ->
                        JD.succeed ReportInstanceReasonCodes_other


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ReportStatusType_ok`
* `ReportStatusType_impaired`

-}
type ReportStatusType
    = ReportStatusType_ok
    | ReportStatusType_impaired



reportStatusTypeDecoder : JD.Decoder ReportStatusType
reportStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ok" ->
                        JD.succeed ReportStatusType_ok

                    "impaired" ->
                        JD.succeed ReportStatusType_impaired


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from requestSpotFleet
-}
type alias RequestSpotFleetResponse =
    { spotFleetRequestId : String
    }



requestSpotFleetResponseDecoder : JD.Decoder RequestSpotFleetResponse
requestSpotFleetResponseDecoder =
    JDP.decode RequestSpotFleetResponse
        |> JDP.required "spotFleetRequestId" JD.string




{-| Type of HTTP response from requestSpotInstanc
-}
type alias RequestSpotInstancesResult =
    { spotInstanceRequests : Maybe (List SpotInstanceRequest)
    }



requestSpotInstancesResultDecoder : JD.Decoder RequestSpotInstancesResult
requestSpotInstancesResultDecoder =
    JDP.decode RequestSpotInstancesResult
        |> JDP.optional "spotInstanceRequests" (JD.nullable (JD.list spotInstanceRequestDecoder)) Nothing




{-| <p>Describes the launch specification for an instance.</p>
-}
type alias RequestSpotLaunchSpecification =
    { imageId : Maybe String
    , keyName : Maybe String
    , securityGroups : Maybe (List String)
    , userData : Maybe String
    , addressingType : Maybe String
    , instanceType : Maybe InstanceType
    , placement : Maybe SpotPlacement
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , subnetId : Maybe String
    , networkInterfaces : Maybe (List InstanceNetworkInterfaceSpecification)
    , iamInstanceProfile : Maybe IamInstanceProfileSpecification
    , ebsOptimized : Maybe Bool
    , monitoring : Maybe RunInstancesMonitoringEnabled
    , securityGroupIds : Maybe (List String)
    }



requestSpotLaunchSpecificationDecoder : JD.Decoder RequestSpotLaunchSpecification
requestSpotLaunchSpecificationDecoder =
    JDP.decode RequestSpotLaunchSpecification
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "userData" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressingType" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "placement" (JD.nullable spotPlacementDecoder) Nothing
        |> JDP.optional "kernelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list blockDeviceMappingDecoder)) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaces" (JD.nullable (JD.list instanceNetworkInterfaceSpecificationDecoder)) Nothing
        |> JDP.optional "iamInstanceProfile" (JD.nullable iamInstanceProfileSpecificationDecoder) Nothing
        |> JDP.optional "ebsOptimized" (JD.nullable JD.bool) Nothing
        |> JDP.optional "monitoring" (JD.nullable runInstancesMonitoringEnabledDecoder) Nothing
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from res
-}
type alias Reservation =
    { reservationId : Maybe String
    , ownerId : Maybe String
    , requesterId : Maybe String
    , groups : Maybe (List GroupIdentifier)
    , instances : Maybe (List Instance)
    }



reservationDecoder : JD.Decoder Reservation
reservationDecoder =
    JDP.decode Reservation
        |> JDP.optional "reservationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "requesterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing




{-| One of

* `ReservationState_payment-pending`
* `ReservationState_payment-failed`
* `ReservationState_active`
* `ReservationState_retired`

-}
type ReservationState
    = ReservationState_payment_pending
    | ReservationState_payment_failed
    | ReservationState_active
    | ReservationState_retired



reservationStateDecoder : JD.Decoder ReservationState
reservationStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "payment_pending" ->
                        JD.succeed ReservationState_payment_pending

                    "payment_failed" ->
                        JD.succeed ReservationState_payment_failed

                    "active" ->
                        JD.succeed ReservationState_active

                    "retired" ->
                        JD.succeed ReservationState_retired


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The cost associated with the Reserved Instance.</p>
-}
type alias ReservationValue =
    { remainingTotalValue : Maybe String
    , remainingUpfrontValue : Maybe String
    , hourlyPrice : Maybe String
    }



reservationValueDecoder : JD.Decoder ReservationValue
reservationValueDecoder =
    JDP.decode ReservationValue
        |> JDP.optional "remainingTotalValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "remainingUpfrontValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "hourlyPrice" (JD.nullable JD.string) Nothing




{-| <p>Describes the limit price of a Reserved Instance offering.</p>
-}
type alias ReservedInstanceLimitPrice =
    { amount : Maybe Float
    , currencyCode : Maybe CurrencyCodeValues
    }



reservedInstanceLimitPriceDecoder : JD.Decoder ReservedInstanceLimitPrice
reservedInstanceLimitPriceDecoder =
    JDP.decode ReservedInstanceLimitPrice
        |> JDP.optional "amount" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing




{-| <p>The total value of the Convertible Reserved Instance.</p>
-}
type alias ReservedInstanceReservationValue =
    { reservedInstanceId : Maybe String
    , reservationValue : Maybe ReservationValue
    }



reservedInstanceReservationValueDecoder : JD.Decoder ReservedInstanceReservationValue
reservedInstanceReservationValueDecoder =
    JDP.decode ReservedInstanceReservationValue
        |> JDP.optional "reservedInstanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservationValue" (JD.nullable reservationValueDecoder) Nothing




{-| One of

* `ReservedInstanceState_payment-pending`
* `ReservedInstanceState_active`
* `ReservedInstanceState_payment-failed`
* `ReservedInstanceState_retired`

-}
type ReservedInstanceState
    = ReservedInstanceState_payment_pending
    | ReservedInstanceState_active
    | ReservedInstanceState_payment_failed
    | ReservedInstanceState_retired



reservedInstanceStateDecoder : JD.Decoder ReservedInstanceState
reservedInstanceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "payment_pending" ->
                        JD.succeed ReservedInstanceState_payment_pending

                    "active" ->
                        JD.succeed ReservedInstanceState_active

                    "payment_failed" ->
                        JD.succeed ReservedInstanceState_payment_failed

                    "retired" ->
                        JD.succeed ReservedInstanceState_retired


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a Reserved Instance.</p>
-}
type alias ReservedInstances =
    { reservedInstancesId : Maybe String
    , instanceType : Maybe InstanceType
    , availabilityZone : Maybe String
    , start : Maybe Date
    , end : Maybe Date
    , duration : Maybe Int
    , usagePrice : Maybe Float
    , fixedPrice : Maybe Float
    , instanceCount : Maybe Int
    , productDescription : Maybe RIProductDescription
    , state : Maybe ReservedInstanceState
    , tags : Maybe (List Tag)
    , instanceTenancy : Maybe Tenancy
    , currencyCode : Maybe CurrencyCodeValues
    , offeringType : Maybe OfferingTypeValues
    , recurringCharges : Maybe (List RecurringCharge)
    , offeringClass : Maybe OfferingClassType
    , scope : Maybe Scope
    }



reservedInstancesDecoder : JD.Decoder ReservedInstances
reservedInstancesDecoder =
    JDP.decode ReservedInstances
        |> JDP.optional "reservedInstancesId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "start" (JD.nullable JDX.date) Nothing
        |> JDP.optional "end" (JD.nullable JDX.date) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "productDescription" (JD.nullable rIProductDescriptionDecoder) Nothing
        |> JDP.optional "state" (JD.nullable reservedInstanceStateDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "instanceTenancy" (JD.nullable tenancyDecoder) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing
        |> JDP.optional "offeringType" (JD.nullable offeringTypeValuesDecoder) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing
        |> JDP.optional "offeringClass" (JD.nullable offeringClassTypeDecoder) Nothing
        |> JDP.optional "scope" (JD.nullable scopeDecoder) Nothing




{-| <p>Describes the configuration settings for the modified Reserved Instances.</p>
-}
type alias ReservedInstancesConfiguration =
    { availabilityZone : Maybe String
    , platform : Maybe String
    , instanceCount : Maybe Int
    , instanceType : Maybe InstanceType
    , scope : Maybe Scope
    }



reservedInstancesConfigurationDecoder : JD.Decoder ReservedInstancesConfiguration
reservedInstancesConfigurationDecoder =
    JDP.decode ReservedInstancesConfiguration
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "scope" (JD.nullable scopeDecoder) Nothing




{-| <p>Describes the ID of a Reserved Instance.</p>
-}
type alias ReservedInstancesId =
    { reservedInstancesId : Maybe String
    }



reservedInstancesIdDecoder : JD.Decoder ReservedInstancesId
reservedInstancesIdDecoder =
    JDP.decode ReservedInstancesId
        |> JDP.optional "reservedInstancesId" (JD.nullable JD.string) Nothing




{-| <p>Describes a Reserved Instance listing.</p>
-}
type alias ReservedInstancesListing =
    { reservedInstancesListingId : Maybe String
    , reservedInstancesId : Maybe String
    , createDate : Maybe Date
    , updateDate : Maybe Date
    , status : Maybe ListingStatus
    , statusMessage : Maybe String
    , instanceCounts : Maybe (List InstanceCount)
    , priceSchedules : Maybe (List PriceSchedule)
    , tags : Maybe (List Tag)
    , clientToken : Maybe String
    }



reservedInstancesListingDecoder : JD.Decoder ReservedInstancesListing
reservedInstancesListingDecoder =
    JDP.decode ReservedInstancesListing
        |> JDP.optional "reservedInstancesListingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedInstancesId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updateDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable listingStatusDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceCounts" (JD.nullable (JD.list instanceCountDecoder)) Nothing
        |> JDP.optional "priceSchedules" (JD.nullable (JD.list priceScheduleDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing




{-| <p>Describes a Reserved Instance modification.</p>
-}
type alias ReservedInstancesModification =
    { reservedInstancesModificationId : Maybe String
    , reservedInstancesIds : Maybe (List ReservedInstancesId)
    , modificationResults : Maybe (List ReservedInstancesModificationResult)
    , createDate : Maybe Date
    , updateDate : Maybe Date
    , effectiveDate : Maybe Date
    , status : Maybe String
    , statusMessage : Maybe String
    , clientToken : Maybe String
    }



reservedInstancesModificationDecoder : JD.Decoder ReservedInstancesModification
reservedInstancesModificationDecoder =
    JDP.decode ReservedInstancesModification
        |> JDP.optional "reservedInstancesModificationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "reservedInstancesIds" (JD.nullable (JD.list reservedInstancesIdDecoder)) Nothing
        |> JDP.optional "modificationResults" (JD.nullable (JD.list reservedInstancesModificationResultDecoder)) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updateDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "effectiveDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing




{-| <p>Describes the modification request/s.</p>
-}
type alias ReservedInstancesModificationResult =
    { reservedInstancesId : Maybe String
    , targetConfiguration : Maybe ReservedInstancesConfiguration
    }



reservedInstancesModificationResultDecoder : JD.Decoder ReservedInstancesModificationResult
reservedInstancesModificationResultDecoder =
    JDP.decode ReservedInstancesModificationResult
        |> JDP.optional "reservedInstancesId" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetConfiguration" (JD.nullable reservedInstancesConfigurationDecoder) Nothing




{-| <p>Describes a Reserved Instance offering.</p>
-}
type alias ReservedInstancesOffering =
    { reservedInstancesOfferingId : Maybe String
    , instanceType : Maybe InstanceType
    , availabilityZone : Maybe String
    , duration : Maybe Int
    , usagePrice : Maybe Float
    , fixedPrice : Maybe Float
    , productDescription : Maybe RIProductDescription
    , instanceTenancy : Maybe Tenancy
    , currencyCode : Maybe CurrencyCodeValues
    , offeringType : Maybe OfferingTypeValues
    , recurringCharges : Maybe (List RecurringCharge)
    , marketplace : Maybe Bool
    , pricingDetails : Maybe (List PricingDetail)
    , offeringClass : Maybe OfferingClassType
    , scope : Maybe Scope
    }



reservedInstancesOfferingDecoder : JD.Decoder ReservedInstancesOffering
reservedInstancesOfferingDecoder =
    JDP.decode ReservedInstancesOffering
        |> JDP.optional "reservedInstancesOfferingId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "usagePrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "fixedPrice" (JD.nullable JD.float) Nothing
        |> JDP.optional "productDescription" (JD.nullable rIProductDescriptionDecoder) Nothing
        |> JDP.optional "instanceTenancy" (JD.nullable tenancyDecoder) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeValuesDecoder) Nothing
        |> JDP.optional "offeringType" (JD.nullable offeringTypeValuesDecoder) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing
        |> JDP.optional "marketplace" (JD.nullable JD.bool) Nothing
        |> JDP.optional "pricingDetails" (JD.nullable (JD.list pricingDetailDecoder)) Nothing
        |> JDP.optional "offeringClass" (JD.nullable offeringClassTypeDecoder) Nothing
        |> JDP.optional "scope" (JD.nullable scopeDecoder) Nothing




{-| One of

* `ResetImageAttributeName_launchPermission`

-}
type ResetImageAttributeName
    = ResetImageAttributeName_launchPermission



resetImageAttributeNameDecoder : JD.Decoder ResetImageAttributeName
resetImageAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "launchPermission" ->
                        JD.succeed ResetImageAttributeName_launchPermission


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ResourceType_customer-gateway`
* `ResourceType_dhcp-options`
* `ResourceType_image`
* `ResourceType_instance`
* `ResourceType_internet-gateway`
* `ResourceType_network-acl`
* `ResourceType_network-interface`
* `ResourceType_reserved-instances`
* `ResourceType_route-table`
* `ResourceType_snapshot`
* `ResourceType_spot-instances-request`
* `ResourceType_subnet`
* `ResourceType_security-group`
* `ResourceType_volume`
* `ResourceType_vpc`
* `ResourceType_vpn-connection`
* `ResourceType_vpn-gateway`

-}
type ResourceType
    = ResourceType_customer_gateway
    | ResourceType_dhcp_options
    | ResourceType_image
    | ResourceType_instance
    | ResourceType_internet_gateway
    | ResourceType_network_acl
    | ResourceType_network_interface
    | ResourceType_reserved_instances
    | ResourceType_route_table
    | ResourceType_snapshot
    | ResourceType_spot_instances_request
    | ResourceType_subnet
    | ResourceType_security_group
    | ResourceType_volume
    | ResourceType_vpc
    | ResourceType_vpn_connection
    | ResourceType_vpn_gateway



resourceTypeDecoder : JD.Decoder ResourceType
resourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "customer_gateway" ->
                        JD.succeed ResourceType_customer_gateway

                    "dhcp_options" ->
                        JD.succeed ResourceType_dhcp_options

                    "image" ->
                        JD.succeed ResourceType_image

                    "instance" ->
                        JD.succeed ResourceType_instance

                    "internet_gateway" ->
                        JD.succeed ResourceType_internet_gateway

                    "network_acl" ->
                        JD.succeed ResourceType_network_acl

                    "network_interface" ->
                        JD.succeed ResourceType_network_interface

                    "reserved_instances" ->
                        JD.succeed ResourceType_reserved_instances

                    "route_table" ->
                        JD.succeed ResourceType_route_table

                    "snapshot" ->
                        JD.succeed ResourceType_snapshot

                    "spot_instances_request" ->
                        JD.succeed ResourceType_spot_instances_request

                    "subnet" ->
                        JD.succeed ResourceType_subnet

                    "security_group" ->
                        JD.succeed ResourceType_security_group

                    "volume" ->
                        JD.succeed ResourceType_volume

                    "vpc" ->
                        JD.succeed ResourceType_vpc

                    "vpn_connection" ->
                        JD.succeed ResourceType_vpn_connection

                    "vpn_gateway" ->
                        JD.succeed ResourceType_vpn_gateway


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from restoreAddressToClass
-}
type alias RestoreAddressToClassicResult =
    { status : Maybe Status
    , publicIp : Maybe String
    }



restoreAddressToClassicResultDecoder : JD.Decoder RestoreAddressToClassicResult
restoreAddressToClassicResultDecoder =
    JDP.decode RestoreAddressToClassicResult
        |> JDP.optional "status" (JD.nullable statusDecoder) Nothing
        |> JDP.optional "publicIp" (JD.nullable JD.string) Nothing




{-| <p>Describes a route in a route table.</p>
-}
type alias Route =
    { destinationCidrBlock : Maybe String
    , destinationPrefixListId : Maybe String
    , gatewayId : Maybe String
    , instanceId : Maybe String
    , instanceOwnerId : Maybe String
    , networkInterfaceId : Maybe String
    , vpcPeeringConnectionId : Maybe String
    , natGatewayId : Maybe String
    , state : Maybe RouteState
    , origin : Maybe RouteOrigin
    , destinationIpv6CidrBlock : Maybe String
    , egressOnlyInternetGatewayId : Maybe String
    }



routeDecoder : JD.Decoder Route
routeDecoder =
    JDP.decode Route
        |> JDP.optional "destinationCidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "destinationPrefixListId" (JD.nullable JD.string) Nothing
        |> JDP.optional "gatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceOwnerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcPeeringConnectionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "natGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable routeStateDecoder) Nothing
        |> JDP.optional "origin" (JD.nullable routeOriginDecoder) Nothing
        |> JDP.optional "destinationIpv6CidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "egressOnlyInternetGatewayId" (JD.nullable JD.string) Nothing




{-| One of

* `RouteOrigin_CreateRouteTable`
* `RouteOrigin_CreateRoute`
* `RouteOrigin_EnableVgwRoutePropagation`

-}
type RouteOrigin
    = RouteOrigin_CreateRouteTable
    | RouteOrigin_CreateRoute
    | RouteOrigin_EnableVgwRoutePropagation



routeOriginDecoder : JD.Decoder RouteOrigin
routeOriginDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CreateRouteTable" ->
                        JD.succeed RouteOrigin_CreateRouteTable

                    "CreateRoute" ->
                        JD.succeed RouteOrigin_CreateRoute

                    "EnableVgwRoutePropagation" ->
                        JD.succeed RouteOrigin_EnableVgwRoutePropagation


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `RouteState_active`
* `RouteState_blackhole`

-}
type RouteState
    = RouteState_active
    | RouteState_blackhole



routeStateDecoder : JD.Decoder RouteState
routeStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "active" ->
                        JD.succeed RouteState_active

                    "blackhole" ->
                        JD.succeed RouteState_blackhole


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a route table.</p>
-}
type alias RouteTable =
    { routeTableId : Maybe String
    , vpcId : Maybe String
    , routes : Maybe (List Route)
    , associations : Maybe (List RouteTableAssociation)
    , tags : Maybe (List Tag)
    , propagatingVgws : Maybe (List PropagatingVgw)
    }



routeTableDecoder : JD.Decoder RouteTable
routeTableDecoder =
    JDP.decode RouteTable
        |> JDP.optional "routeTableId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "routes" (JD.nullable (JD.list routeDecoder)) Nothing
        |> JDP.optional "associations" (JD.nullable (JD.list routeTableAssociationDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "propagatingVgws" (JD.nullable (JD.list propagatingVgwDecoder)) Nothing




{-| <p>Describes an association between a route table and a subnet.</p>
-}
type alias RouteTableAssociation =
    { routeTableAssociationId : Maybe String
    , routeTableId : Maybe String
    , subnetId : Maybe String
    , main : Maybe Bool
    }



routeTableAssociationDecoder : JD.Decoder RouteTableAssociation
routeTableAssociationDecoder =
    JDP.decode RouteTableAssociation
        |> JDP.optional "routeTableAssociationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "routeTableId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "main" (JD.nullable JD.bool) Nothing




{-| One of

* `RuleAction_allow`
* `RuleAction_deny`

-}
type RuleAction
    = RuleAction_allow
    | RuleAction_deny



ruleActionDecoder : JD.Decoder RuleAction
ruleActionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "allow" ->
                        JD.succeed RuleAction_allow

                    "deny" ->
                        JD.succeed RuleAction_deny


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the monitoring of an instance.</p>
-}
type alias RunInstancesMonitoringEnabled =
    { enabled : Bool
    }



runInstancesMonitoringEnabledDecoder : JD.Decoder RunInstancesMonitoringEnabled
runInstancesMonitoringEnabledDecoder =
    JDP.decode RunInstancesMonitoringEnabled
        |> JDP.required "enabled" JD.bool




{-| Type of HTTP response from runScheduledInstanc
-}
type alias RunScheduledInstancesResult =
    { instanceIdSet : Maybe (List String)
    }



runScheduledInstancesResultDecoder : JD.Decoder RunScheduledInstancesResult
runScheduledInstancesResultDecoder =
    JDP.decode RunScheduledInstancesResult
        |> JDP.optional "instanceIdSet" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Describes the storage parameters for S3 and S3 buckets for an instance store-backed AMI.</p>
-}
type alias S3Storage =
    { bucket : Maybe String
    , prefix : Maybe String
    , aWSAccessKeyId : Maybe String
    , uploadPolicy : Maybe String
    , uploadPolicySignature : Maybe String
    }



s3StorageDecoder : JD.Decoder S3Storage
s3StorageDecoder =
    JDP.decode S3Storage
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "aWSAccessKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadPolicySignature" (JD.nullable JD.string) Nothing




{-| <p>Describes a Scheduled Instance.</p>
-}
type alias ScheduledInstance =
    { scheduledInstanceId : Maybe String
    , instanceType : Maybe String
    , platform : Maybe String
    , networkPlatform : Maybe String
    , availabilityZone : Maybe String
    , slotDurationInHours : Maybe Int
    , recurrence : Maybe ScheduledInstanceRecurrence
    , previousSlotEndTime : Maybe Date
    , nextSlotStartTime : Maybe Date
    , hourlyPrice : Maybe String
    , totalScheduledInstanceHours : Maybe Int
    , instanceCount : Maybe Int
    , termStartDate : Maybe Date
    , termEndDate : Maybe Date
    , createDate : Maybe Date
    }



scheduledInstanceDecoder : JD.Decoder ScheduledInstance
scheduledInstanceDecoder =
    JDP.decode ScheduledInstance
        |> JDP.optional "scheduledInstanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkPlatform" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "slotDurationInHours" (JD.nullable JD.int) Nothing
        |> JDP.optional "recurrence" (JD.nullable scheduledInstanceRecurrenceDecoder) Nothing
        |> JDP.optional "previousSlotEndTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "nextSlotStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "hourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "totalScheduledInstanceHours" (JD.nullable JD.int) Nothing
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "termStartDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "termEndDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing




{-| <p>Describes a schedule that is available for your Scheduled Instances.</p>
-}
type alias ScheduledInstanceAvailability =
    { instanceType : Maybe String
    , platform : Maybe String
    , networkPlatform : Maybe String
    , availabilityZone : Maybe String
    , purchaseToken : Maybe String
    , slotDurationInHours : Maybe Int
    , recurrence : Maybe ScheduledInstanceRecurrence
    , firstSlotStartTime : Maybe Date
    , hourlyPrice : Maybe String
    , totalScheduledInstanceHours : Maybe Int
    , availableInstanceCount : Maybe Int
    , minTermDurationInDays : Maybe Int
    , maxTermDurationInDays : Maybe Int
    }



scheduledInstanceAvailabilityDecoder : JD.Decoder ScheduledInstanceAvailability
scheduledInstanceAvailabilityDecoder =
    JDP.decode ScheduledInstanceAvailability
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "platform" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkPlatform" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "purchaseToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "slotDurationInHours" (JD.nullable JD.int) Nothing
        |> JDP.optional "recurrence" (JD.nullable scheduledInstanceRecurrenceDecoder) Nothing
        |> JDP.optional "firstSlotStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "hourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "totalScheduledInstanceHours" (JD.nullable JD.int) Nothing
        |> JDP.optional "availableInstanceCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "minTermDurationInDays" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxTermDurationInDays" (JD.nullable JD.int) Nothing




{-| <p>Describes the recurring schedule for a Scheduled Instance.</p>
-}
type alias ScheduledInstanceRecurrence =
    { frequency : Maybe String
    , interval : Maybe Int
    , occurrenceDaySet : Maybe (List Int)
    , occurrenceRelativeToEnd : Maybe Bool
    , occurrenceUnit : Maybe String
    }



scheduledInstanceRecurrenceDecoder : JD.Decoder ScheduledInstanceRecurrence
scheduledInstanceRecurrenceDecoder =
    JDP.decode ScheduledInstanceRecurrence
        |> JDP.optional "frequency" (JD.nullable JD.string) Nothing
        |> JDP.optional "interval" (JD.nullable JD.int) Nothing
        |> JDP.optional "occurrenceDaySet" (JD.nullable (JD.list JD.int)) Nothing
        |> JDP.optional "occurrenceRelativeToEnd" (JD.nullable JD.bool) Nothing
        |> JDP.optional "occurrenceUnit" (JD.nullable JD.string) Nothing




{-| <p>Describes the recurring schedule for a Scheduled Instance.</p>
-}
type alias ScheduledInstanceRecurrenceRequest =
    { frequency : Maybe String
    , interval : Maybe Int
    , occurrenceDays : Maybe (List Int)
    , occurrenceRelativeToEnd : Maybe Bool
    , occurrenceUnit : Maybe String
    }



scheduledInstanceRecurrenceRequestDecoder : JD.Decoder ScheduledInstanceRecurrenceRequest
scheduledInstanceRecurrenceRequestDecoder =
    JDP.decode ScheduledInstanceRecurrenceRequest
        |> JDP.optional "frequency" (JD.nullable JD.string) Nothing
        |> JDP.optional "interval" (JD.nullable JD.int) Nothing
        |> JDP.optional "occurrenceDays" (JD.nullable (JD.list JD.int)) Nothing
        |> JDP.optional "occurrenceRelativeToEnd" (JD.nullable JD.bool) Nothing
        |> JDP.optional "occurrenceUnit" (JD.nullable JD.string) Nothing




{-| <p>Describes a block device mapping for a Scheduled Instance.</p>
-}
type alias ScheduledInstancesBlockDeviceMapping =
    { deviceName : Maybe String
    , noDevice : Maybe String
    , virtualName : Maybe String
    , ebs : Maybe ScheduledInstancesEbs
    }



scheduledInstancesBlockDeviceMappingDecoder : JD.Decoder ScheduledInstancesBlockDeviceMapping
scheduledInstancesBlockDeviceMappingDecoder =
    JDP.decode ScheduledInstancesBlockDeviceMapping
        |> JDP.optional "deviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "noDevice" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ebs" (JD.nullable scheduledInstancesEbsDecoder) Nothing




{-| <p>Describes an EBS volume for a Scheduled Instance.</p>
-}
type alias ScheduledInstancesEbs =
    { snapshotId : Maybe String
    , volumeSize : Maybe Int
    , deleteOnTermination : Maybe Bool
    , volumeType : Maybe String
    , iops : Maybe Int
    , encrypted : Maybe Bool
    }



scheduledInstancesEbsDecoder : JD.Decoder ScheduledInstancesEbs
scheduledInstancesEbsDecoder =
    JDP.decode ScheduledInstancesEbs
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing
        |> JDP.optional "volumeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing




{-| <p>Describes an IAM instance profile for a Scheduled Instance.</p>
-}
type alias ScheduledInstancesIamInstanceProfile =
    { arn : Maybe String
    , name : Maybe String
    }



scheduledInstancesIamInstanceProfileDecoder : JD.Decoder ScheduledInstancesIamInstanceProfile
scheduledInstancesIamInstanceProfileDecoder =
    JDP.decode ScheduledInstancesIamInstanceProfile
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Describes an IPv6 address.</p>
-}
type alias ScheduledInstancesIpv6Address =
    { ipv6Address : Maybe String
    }



scheduledInstancesIpv6AddressDecoder : JD.Decoder ScheduledInstancesIpv6Address
scheduledInstancesIpv6AddressDecoder =
    JDP.decode ScheduledInstancesIpv6Address
        |> JDP.optional "ipv6Address" (JD.nullable JD.string) Nothing




{-| <p>Describes the launch specification for a Scheduled Instance.</p> <p>If you are launching the Scheduled Instance in EC2-VPC, you must specify the ID of the subnet. You can specify the subnet using either <code>SubnetId</code> or <code>NetworkInterface</code>.</p>
-}
type alias ScheduledInstancesLaunchSpecification =
    { imageId : String
    , keyName : Maybe String
    , securityGroupIds : Maybe (List String)
    , userData : Maybe String
    , placement : Maybe ScheduledInstancesPlacement
    , kernelId : Maybe String
    , instanceType : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List ScheduledInstancesBlockDeviceMapping)
    , monitoring : Maybe ScheduledInstancesMonitoring
    , subnetId : Maybe String
    , networkInterfaces : Maybe (List ScheduledInstancesNetworkInterface)
    , iamInstanceProfile : Maybe ScheduledInstancesIamInstanceProfile
    , ebsOptimized : Maybe Bool
    }



scheduledInstancesLaunchSpecificationDecoder : JD.Decoder ScheduledInstancesLaunchSpecification
scheduledInstancesLaunchSpecificationDecoder =
    JDP.decode ScheduledInstancesLaunchSpecification
        |> JDP.required "imageId" JD.string
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "userData" (JD.nullable JD.string) Nothing
        |> JDP.optional "placement" (JD.nullable scheduledInstancesPlacementDecoder) Nothing
        |> JDP.optional "kernelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list scheduledInstancesBlockDeviceMappingDecoder)) Nothing
        |> JDP.optional "monitoring" (JD.nullable scheduledInstancesMonitoringDecoder) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaces" (JD.nullable (JD.list scheduledInstancesNetworkInterfaceDecoder)) Nothing
        |> JDP.optional "iamInstanceProfile" (JD.nullable scheduledInstancesIamInstanceProfileDecoder) Nothing
        |> JDP.optional "ebsOptimized" (JD.nullable JD.bool) Nothing




{-| <p>Describes whether monitoring is enabled for a Scheduled Instance.</p>
-}
type alias ScheduledInstancesMonitoring =
    { enabled : Maybe Bool
    }



scheduledInstancesMonitoringDecoder : JD.Decoder ScheduledInstancesMonitoring
scheduledInstancesMonitoringDecoder =
    JDP.decode ScheduledInstancesMonitoring
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing




{-| <p>Describes a network interface for a Scheduled Instance.</p>
-}
type alias ScheduledInstancesNetworkInterface =
    { networkInterfaceId : Maybe String
    , deviceIndex : Maybe Int
    , subnetId : Maybe String
    , description : Maybe String
    , privateIpAddress : Maybe String
    , privateIpAddressConfigs : Maybe (List ScheduledInstancesPrivateIpAddressConfig)
    , secondaryPrivateIpAddressCount : Maybe Int
    , associatePublicIpAddress : Maybe Bool
    , groups : Maybe (List String)
    , deleteOnTermination : Maybe Bool
    , ipv6Addresses : Maybe (List ScheduledInstancesIpv6Address)
    , ipv6AddressCount : Maybe Int
    }



scheduledInstancesNetworkInterfaceDecoder : JD.Decoder ScheduledInstancesNetworkInterface
scheduledInstancesNetworkInterfaceDecoder =
    JDP.decode ScheduledInstancesNetworkInterface
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceIndex" (JD.nullable JD.int) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateIpAddressConfigs" (JD.nullable (JD.list scheduledInstancesPrivateIpAddressConfigDecoder)) Nothing
        |> JDP.optional "secondaryPrivateIpAddressCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "associatePublicIpAddress" (JD.nullable JD.bool) Nothing
        |> JDP.optional "groups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing
        |> JDP.optional "ipv6Addresses" (JD.nullable (JD.list scheduledInstancesIpv6AddressDecoder)) Nothing
        |> JDP.optional "ipv6AddressCount" (JD.nullable JD.int) Nothing




{-| <p>Describes the placement for a Scheduled Instance.</p>
-}
type alias ScheduledInstancesPlacement =
    { availabilityZone : Maybe String
    , groupName : Maybe String
    }



scheduledInstancesPlacementDecoder : JD.Decoder ScheduledInstancesPlacement
scheduledInstancesPlacementDecoder =
    JDP.decode ScheduledInstancesPlacement
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing




{-| <p>Describes a private IPv4 address for a Scheduled Instance.</p>
-}
type alias ScheduledInstancesPrivateIpAddressConfig =
    { privateIpAddress : Maybe String
    , primary : Maybe Bool
    }



scheduledInstancesPrivateIpAddressConfigDecoder : JD.Decoder ScheduledInstancesPrivateIpAddressConfig
scheduledInstancesPrivateIpAddressConfigDecoder =
    JDP.decode ScheduledInstancesPrivateIpAddressConfig
        |> JDP.optional "privateIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "primary" (JD.nullable JD.bool) Nothing




{-| <p>Describes a security group</p>
-}
type alias SecurityGroup =
    { ownerId : Maybe String
    , groupName : Maybe String
    , groupId : Maybe String
    , description : Maybe String
    , ipPermissions : Maybe (List IpPermission)
    , ipPermissionsEgress : Maybe (List IpPermission)
    , vpcId : Maybe String
    , tags : Maybe (List Tag)
    }



securityGroupDecoder : JD.Decoder SecurityGroup
securityGroupDecoder =
    JDP.decode SecurityGroup
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipPermissions" (JD.nullable (JD.list ipPermissionDecoder)) Nothing
        |> JDP.optional "ipPermissionsEgress" (JD.nullable (JD.list ipPermissionDecoder)) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Describes a VPC with a security group that references your security group.</p>
-}
type alias SecurityGroupReference =
    { groupId : String
    , referencingVpcId : String
    , vpcPeeringConnectionId : Maybe String
    }



securityGroupReferenceDecoder : JD.Decoder SecurityGroupReference
securityGroupReferenceDecoder =
    JDP.decode SecurityGroupReference
        |> JDP.required "groupId" JD.string
        |> JDP.required "referencingVpcId" JD.string
        |> JDP.optional "vpcPeeringConnectionId" (JD.nullable JD.string) Nothing




{-| One of

* `ShutdownBehavior_stop`
* `ShutdownBehavior_terminate`

-}
type ShutdownBehavior
    = ShutdownBehavior_stop
    | ShutdownBehavior_terminate



shutdownBehaviorDecoder : JD.Decoder ShutdownBehavior
shutdownBehaviorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "stop" ->
                        JD.succeed ShutdownBehavior_stop

                    "terminate" ->
                        JD.succeed ShutdownBehavior_terminate


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the time period for a Scheduled Instance to start its first schedule. The time period must span less than one day.</p>
-}
type alias SlotDateTimeRangeRequest =
    { earliestTime : Date
    , latestTime : Date
    }



slotDateTimeRangeRequestDecoder : JD.Decoder SlotDateTimeRangeRequest
slotDateTimeRangeRequestDecoder =
    JDP.decode SlotDateTimeRangeRequest
        |> JDP.required "earliestTime" JDX.date
        |> JDP.required "latestTime" JDX.date




{-| <p>Describes the time period for a Scheduled Instance to start its first schedule.</p>
-}
type alias SlotStartTimeRangeRequest =
    { earliestTime : Maybe Date
    , latestTime : Maybe Date
    }



slotStartTimeRangeRequestDecoder : JD.Decoder SlotStartTimeRangeRequest
slotStartTimeRangeRequestDecoder =
    JDP.decode SlotStartTimeRangeRequest
        |> JDP.optional "earliestTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "latestTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from 
-}
type alias Snapshot =
    { snapshotId : Maybe String
    , volumeId : Maybe String
    , state : Maybe SnapshotState
    , stateMessage : Maybe String
    , startTime : Maybe Date
    , progress : Maybe String
    , ownerId : Maybe String
    , description : Maybe String
    , volumeSize : Maybe Int
    , ownerAlias : Maybe String
    , tags : Maybe (List Tag)
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    , dataEncryptionKeyId : Maybe String
    }



snapshotDecoder : JD.Decoder Snapshot
snapshotDecoder =
    JDP.decode Snapshot
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable snapshotStateDecoder) Nothing
        |> JDP.optional "stateMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "progress" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "ownerAlias" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataEncryptionKeyId" (JD.nullable JD.string) Nothing




{-| One of

* `SnapshotAttributeName_productCodes`
* `SnapshotAttributeName_createVolumePermission`

-}
type SnapshotAttributeName
    = SnapshotAttributeName_productCodes
    | SnapshotAttributeName_createVolumePermission



snapshotAttributeNameDecoder : JD.Decoder SnapshotAttributeName
snapshotAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "productCodes" ->
                        JD.succeed SnapshotAttributeName_productCodes

                    "createVolumePermission" ->
                        JD.succeed SnapshotAttributeName_createVolumePermission


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the snapshot created from the imported disk.</p>
-}
type alias SnapshotDetail =
    { diskImageSize : Maybe Float
    , description : Maybe String
    , format : Maybe String
    , url : Maybe String
    , userBucket : Maybe UserBucketDetails
    , deviceName : Maybe String
    , snapshotId : Maybe String
    , progress : Maybe String
    , statusMessage : Maybe String
    , status : Maybe String
    }



snapshotDetailDecoder : JD.Decoder SnapshotDetail
snapshotDetailDecoder =
    JDP.decode SnapshotDetail
        |> JDP.optional "diskImageSize" (JD.nullable JD.float) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing
        |> JDP.optional "userBucket" (JD.nullable userBucketDetailsDecoder) Nothing
        |> JDP.optional "deviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "progress" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>The disk container object for the import snapshot request.</p>
-}
type alias SnapshotDiskContainer =
    { description : Maybe String
    , format : Maybe String
    , url : Maybe String
    , userBucket : Maybe UserBucket
    }



snapshotDiskContainerDecoder : JD.Decoder SnapshotDiskContainer
snapshotDiskContainerDecoder =
    JDP.decode SnapshotDiskContainer
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing
        |> JDP.optional "userBucket" (JD.nullable userBucketDecoder) Nothing




{-| One of

* `SnapshotState_pending`
* `SnapshotState_completed`
* `SnapshotState_error`

-}
type SnapshotState
    = SnapshotState_pending
    | SnapshotState_completed
    | SnapshotState_error



snapshotStateDecoder : JD.Decoder SnapshotState
snapshotStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed SnapshotState_pending

                    "completed" ->
                        JD.succeed SnapshotState_completed

                    "error" ->
                        JD.succeed SnapshotState_error


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Details about the import snapshot task.</p>
-}
type alias SnapshotTaskDetail =
    { diskImageSize : Maybe Float
    , description : Maybe String
    , format : Maybe String
    , url : Maybe String
    , userBucket : Maybe UserBucketDetails
    , snapshotId : Maybe String
    , progress : Maybe String
    , statusMessage : Maybe String
    , status : Maybe String
    }



snapshotTaskDetailDecoder : JD.Decoder SnapshotTaskDetail
snapshotTaskDetailDecoder =
    JDP.decode SnapshotTaskDetail
        |> JDP.optional "diskImageSize" (JD.nullable JD.float) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing
        |> JDP.optional "userBucket" (JD.nullable userBucketDetailsDecoder) Nothing
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "progress" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Describes the data feed for a Spot instance.</p>
-}
type alias SpotDatafeedSubscription =
    { ownerId : Maybe String
    , bucket : Maybe String
    , prefix : Maybe String
    , state : Maybe DatafeedSubscriptionState
    , fault : Maybe SpotInstanceStateFault
    }



spotDatafeedSubscriptionDecoder : JD.Decoder SpotDatafeedSubscription
spotDatafeedSubscriptionDecoder =
    JDP.decode SpotDatafeedSubscription
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable datafeedSubscriptionStateDecoder) Nothing
        |> JDP.optional "fault" (JD.nullable spotInstanceStateFaultDecoder) Nothing




{-| <p>Describes the launch specification for one or more Spot instances.</p>
-}
type alias SpotFleetLaunchSpecification =
    { imageId : Maybe String
    , keyName : Maybe String
    , securityGroups : Maybe (List GroupIdentifier)
    , userData : Maybe String
    , addressingType : Maybe String
    , instanceType : Maybe InstanceType
    , placement : Maybe SpotPlacement
    , kernelId : Maybe String
    , ramdiskId : Maybe String
    , blockDeviceMappings : Maybe (List BlockDeviceMapping)
    , monitoring : Maybe SpotFleetMonitoring
    , subnetId : Maybe String
    , networkInterfaces : Maybe (List InstanceNetworkInterfaceSpecification)
    , iamInstanceProfile : Maybe IamInstanceProfileSpecification
    , ebsOptimized : Maybe Bool
    , weightedCapacity : Maybe Float
    , spotPrice : Maybe String
    }



spotFleetLaunchSpecificationDecoder : JD.Decoder SpotFleetLaunchSpecification
spotFleetLaunchSpecificationDecoder =
    JDP.decode SpotFleetLaunchSpecification
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroups" (JD.nullable (JD.list groupIdentifierDecoder)) Nothing
        |> JDP.optional "userData" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressingType" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "placement" (JD.nullable spotPlacementDecoder) Nothing
        |> JDP.optional "kernelId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ramdiskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "blockDeviceMappings" (JD.nullable (JD.list blockDeviceMappingDecoder)) Nothing
        |> JDP.optional "monitoring" (JD.nullable spotFleetMonitoringDecoder) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaces" (JD.nullable (JD.list instanceNetworkInterfaceSpecificationDecoder)) Nothing
        |> JDP.optional "iamInstanceProfile" (JD.nullable iamInstanceProfileSpecificationDecoder) Nothing
        |> JDP.optional "ebsOptimized" (JD.nullable JD.bool) Nothing
        |> JDP.optional "weightedCapacity" (JD.nullable JD.float) Nothing
        |> JDP.optional "spotPrice" (JD.nullable JD.string) Nothing




{-| <p>Describes whether monitoring is enabled.</p>
-}
type alias SpotFleetMonitoring =
    { enabled : Maybe Bool
    }



spotFleetMonitoringDecoder : JD.Decoder SpotFleetMonitoring
spotFleetMonitoringDecoder =
    JDP.decode SpotFleetMonitoring
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing




{-| <p>Describes a Spot fleet request.</p>
-}
type alias SpotFleetRequestConfig =
    { spotFleetRequestId : String
    , spotFleetRequestState : BatchState
    , spotFleetRequestConfig : SpotFleetRequestConfigData
    , createTime : Date
    , activityStatus : Maybe ActivityStatus
    }



spotFleetRequestConfigDecoder : JD.Decoder SpotFleetRequestConfig
spotFleetRequestConfigDecoder =
    JDP.decode SpotFleetRequestConfig
        |> JDP.required "spotFleetRequestId" JD.string
        |> JDP.required "spotFleetRequestState" batchStateDecoder
        |> JDP.required "spotFleetRequestConfig" spotFleetRequestConfigDataDecoder
        |> JDP.required "createTime" JDX.date
        |> JDP.optional "activityStatus" (JD.nullable activityStatusDecoder) Nothing




{-| <p>Describes the configuration of a Spot fleet request.</p>
-}
type alias SpotFleetRequestConfigData =
    { clientToken : Maybe String
    , spotPrice : String
    , targetCapacity : Int
    , validFrom : Maybe Date
    , validUntil : Maybe Date
    , terminateInstancesWithExpiration : Maybe Bool
    , iamFleetRole : String
    , launchSpecifications : (List SpotFleetLaunchSpecification)
    , excessCapacityTerminationPolicy : Maybe ExcessCapacityTerminationPolicy
    , allocationStrategy : Maybe AllocationStrategy
    , fulfilledCapacity : Maybe Float
    , type_ : Maybe FleetType
    , replaceUnhealthyInstances : Maybe Bool
    }



spotFleetRequestConfigDataDecoder : JD.Decoder SpotFleetRequestConfigData
spotFleetRequestConfigDataDecoder =
    JDP.decode SpotFleetRequestConfigData
        |> JDP.optional "clientToken" (JD.nullable JD.string) Nothing
        |> JDP.required "spotPrice" JD.string
        |> JDP.required "targetCapacity" JD.int
        |> JDP.optional "validFrom" (JD.nullable JDX.date) Nothing
        |> JDP.optional "validUntil" (JD.nullable JDX.date) Nothing
        |> JDP.optional "terminateInstancesWithExpiration" (JD.nullable JD.bool) Nothing
        |> JDP.required "iamFleetRole" JD.string
        |> JDP.required "launchSpecifications" (JD.list spotFleetLaunchSpecificationDecoder)
        |> JDP.optional "excessCapacityTerminationPolicy" (JD.nullable excessCapacityTerminationPolicyDecoder) Nothing
        |> JDP.optional "allocationStrategy" (JD.nullable allocationStrategyDecoder) Nothing
        |> JDP.optional "fulfilledCapacity" (JD.nullable JD.float) Nothing
        |> JDP.optional "type_" (JD.nullable fleetTypeDecoder) Nothing
        |> JDP.optional "replaceUnhealthyInstances" (JD.nullable JD.bool) Nothing




{-| <p>Describes a Spot instance request.</p>
-}
type alias SpotInstanceRequest =
    { spotInstanceRequestId : Maybe String
    , spotPrice : Maybe String
    , type_ : Maybe SpotInstanceType
    , state : Maybe SpotInstanceState
    , fault : Maybe SpotInstanceStateFault
    , status : Maybe SpotInstanceStatus
    , validFrom : Maybe Date
    , validUntil : Maybe Date
    , launchGroup : Maybe String
    , availabilityZoneGroup : Maybe String
    , launchSpecification : Maybe LaunchSpecification
    , instanceId : Maybe String
    , createTime : Maybe Date
    , productDescription : Maybe RIProductDescription
    , blockDurationMinutes : Maybe Int
    , actualBlockHourlyPrice : Maybe String
    , tags : Maybe (List Tag)
    , launchedAvailabilityZone : Maybe String
    }



spotInstanceRequestDecoder : JD.Decoder SpotInstanceRequest
spotInstanceRequestDecoder =
    JDP.decode SpotInstanceRequest
        |> JDP.optional "spotInstanceRequestId" (JD.nullable JD.string) Nothing
        |> JDP.optional "spotPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable spotInstanceTypeDecoder) Nothing
        |> JDP.optional "state" (JD.nullable spotInstanceStateDecoder) Nothing
        |> JDP.optional "fault" (JD.nullable spotInstanceStateFaultDecoder) Nothing
        |> JDP.optional "status" (JD.nullable spotInstanceStatusDecoder) Nothing
        |> JDP.optional "validFrom" (JD.nullable JDX.date) Nothing
        |> JDP.optional "validUntil" (JD.nullable JDX.date) Nothing
        |> JDP.optional "launchGroup" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZoneGroup" (JD.nullable JD.string) Nothing
        |> JDP.optional "launchSpecification" (JD.nullable launchSpecificationDecoder) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "productDescription" (JD.nullable rIProductDescriptionDecoder) Nothing
        |> JDP.optional "blockDurationMinutes" (JD.nullable JD.int) Nothing
        |> JDP.optional "actualBlockHourlyPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "launchedAvailabilityZone" (JD.nullable JD.string) Nothing




{-| One of

* `SpotInstanceState_open`
* `SpotInstanceState_active`
* `SpotInstanceState_closed`
* `SpotInstanceState_cancelled`
* `SpotInstanceState_failed`

-}
type SpotInstanceState
    = SpotInstanceState_open
    | SpotInstanceState_active
    | SpotInstanceState_closed
    | SpotInstanceState_cancelled
    | SpotInstanceState_failed



spotInstanceStateDecoder : JD.Decoder SpotInstanceState
spotInstanceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "open" ->
                        JD.succeed SpotInstanceState_open

                    "active" ->
                        JD.succeed SpotInstanceState_active

                    "closed" ->
                        JD.succeed SpotInstanceState_closed

                    "cancelled" ->
                        JD.succeed SpotInstanceState_cancelled

                    "failed" ->
                        JD.succeed SpotInstanceState_failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a Spot instance state change.</p>
-}
type alias SpotInstanceStateFault =
    { code : Maybe String
    , message : Maybe String
    }



spotInstanceStateFaultDecoder : JD.Decoder SpotInstanceStateFault
spotInstanceStateFaultDecoder =
    JDP.decode SpotInstanceStateFault
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes the status of a Spot instance request.</p>
-}
type alias SpotInstanceStatus =
    { code : Maybe String
    , updateTime : Maybe Date
    , message : Maybe String
    }



spotInstanceStatusDecoder : JD.Decoder SpotInstanceStatus
spotInstanceStatusDecoder =
    JDP.decode SpotInstanceStatus
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "updateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `SpotInstanceType_one-time`
* `SpotInstanceType_persistent`

-}
type SpotInstanceType
    = SpotInstanceType_one_time
    | SpotInstanceType_persistent



spotInstanceTypeDecoder : JD.Decoder SpotInstanceType
spotInstanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "one_time" ->
                        JD.succeed SpotInstanceType_one_time

                    "persistent" ->
                        JD.succeed SpotInstanceType_persistent


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes Spot instance placement.</p>
-}
type alias SpotPlacement =
    { availabilityZone : Maybe String
    , groupName : Maybe String
    , tenancy : Maybe Tenancy
    }



spotPlacementDecoder : JD.Decoder SpotPlacement
spotPlacementDecoder =
    JDP.decode SpotPlacement
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "tenancy" (JD.nullable tenancyDecoder) Nothing




{-| <p>Describes the maximum hourly price (bid) for any Spot instance launched to fulfill the request.</p>
-}
type alias SpotPrice =
    { instanceType : Maybe InstanceType
    , productDescription : Maybe RIProductDescription
    , spotPrice : Maybe String
    , timestamp : Maybe Date
    , availabilityZone : Maybe String
    }



spotPriceDecoder : JD.Decoder SpotPrice
spotPriceDecoder =
    JDP.decode SpotPrice
        |> JDP.optional "instanceType" (JD.nullable instanceTypeDecoder) Nothing
        |> JDP.optional "productDescription" (JD.nullable rIProductDescriptionDecoder) Nothing
        |> JDP.optional "spotPrice" (JD.nullable JD.string) Nothing
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing




{-| <p>Describes a stale rule in a security group.</p>
-}
type alias StaleIpPermission =
    { fromPort : Maybe Int
    , ipProtocol : Maybe String
    , ipRanges : Maybe (List String)
    , prefixListIds : Maybe (List String)
    , toPort : Maybe Int
    , userIdGroupPairs : Maybe (List UserIdGroupPair)
    }



staleIpPermissionDecoder : JD.Decoder StaleIpPermission
staleIpPermissionDecoder =
    JDP.decode StaleIpPermission
        |> JDP.optional "fromPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "ipProtocol" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipRanges" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "prefixListIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "toPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "userIdGroupPairs" (JD.nullable (JD.list userIdGroupPairDecoder)) Nothing




{-| <p>Describes a stale security group (a security group that contains stale rules).</p>
-}
type alias StaleSecurityGroup =
    { groupId : String
    , groupName : Maybe String
    , description : Maybe String
    , vpcId : Maybe String
    , staleIpPermissions : Maybe (List StaleIpPermission)
    , staleIpPermissionsEgress : Maybe (List StaleIpPermission)
    }



staleSecurityGroupDecoder : JD.Decoder StaleSecurityGroup
staleSecurityGroupDecoder =
    JDP.decode StaleSecurityGroup
        |> JDP.required "groupId" JD.string
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "staleIpPermissions" (JD.nullable (JD.list staleIpPermissionDecoder)) Nothing
        |> JDP.optional "staleIpPermissionsEgress" (JD.nullable (JD.list staleIpPermissionDecoder)) Nothing




{-| Type of HTTP response from startInstanc
-}
type alias StartInstancesResult =
    { startingInstances : Maybe (List InstanceStateChange)
    }



startInstancesResultDecoder : JD.Decoder StartInstancesResult
startInstancesResultDecoder =
    JDP.decode StartInstancesResult
        |> JDP.optional "startingInstances" (JD.nullable (JD.list instanceStateChangeDecoder)) Nothing




{-| One of

* `State_Pending`
* `State_Available`
* `State_Deleting`
* `State_Deleted`

-}
type State
    = State_Pending
    | State_Available
    | State_Deleting
    | State_Deleted



stateDecoder : JD.Decoder State
stateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed State_Pending

                    "Available" ->
                        JD.succeed State_Available

                    "Deleting" ->
                        JD.succeed State_Deleting

                    "Deleted" ->
                        JD.succeed State_Deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a state change.</p>
-}
type alias StateReason =
    { code : Maybe String
    , message : Maybe String
    }



stateReasonDecoder : JD.Decoder StateReason
stateReasonDecoder =
    JDP.decode StateReason
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `Status_MoveInProgress`
* `Status_InVpc`
* `Status_InClassic`

-}
type Status
    = Status_MoveInProgress
    | Status_InVpc
    | Status_InClassic



statusDecoder : JD.Decoder Status
statusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MoveInProgress" ->
                        JD.succeed Status_MoveInProgress

                    "InVpc" ->
                        JD.succeed Status_InVpc

                    "InClassic" ->
                        JD.succeed Status_InClassic


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `StatusName_reachability`

-}
type StatusName
    = StatusName_reachability



statusNameDecoder : JD.Decoder StatusName
statusNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "reachability" ->
                        JD.succeed StatusName_reachability


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `StatusType_passed`
* `StatusType_failed`
* `StatusType_insufficient-data`
* `StatusType_initializing`

-}
type StatusType
    = StatusType_passed
    | StatusType_failed
    | StatusType_insufficient_data
    | StatusType_initializing



statusTypeDecoder : JD.Decoder StatusType
statusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "passed" ->
                        JD.succeed StatusType_passed

                    "failed" ->
                        JD.succeed StatusType_failed

                    "insufficient_data" ->
                        JD.succeed StatusType_insufficient_data

                    "initializing" ->
                        JD.succeed StatusType_initializing


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from stopInstanc
-}
type alias StopInstancesResult =
    { stoppingInstances : Maybe (List InstanceStateChange)
    }



stopInstancesResultDecoder : JD.Decoder StopInstancesResult
stopInstancesResultDecoder =
    JDP.decode StopInstancesResult
        |> JDP.optional "stoppingInstances" (JD.nullable (JD.list instanceStateChangeDecoder)) Nothing




{-| <p>Describes the storage location for an instance store-backed AMI.</p>
-}
type alias Storage =
    { s3 : Maybe S3Storage
    }



storageDecoder : JD.Decoder Storage
storageDecoder =
    JDP.decode Storage
        |> JDP.optional "s3" (JD.nullable s3StorageDecoder) Nothing




{-| <p>Describes a subnet.</p>
-}
type alias Subnet =
    { subnetId : Maybe String
    , state : Maybe SubnetState
    , vpcId : Maybe String
    , cidrBlock : Maybe String
    , ipv6CidrBlockAssociationSet : Maybe (List SubnetIpv6CidrBlockAssociation)
    , assignIpv6AddressOnCreation : Maybe Bool
    , availableIpAddressCount : Maybe Int
    , availabilityZone : Maybe String
    , defaultForAz : Maybe Bool
    , mapPublicIpOnLaunch : Maybe Bool
    , tags : Maybe (List Tag)
    }



subnetDecoder : JD.Decoder Subnet
subnetDecoder =
    JDP.decode Subnet
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable subnetStateDecoder) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockAssociationSet" (JD.nullable (JD.list subnetIpv6CidrBlockAssociationDecoder)) Nothing
        |> JDP.optional "assignIpv6AddressOnCreation" (JD.nullable JD.bool) Nothing
        |> JDP.optional "availableIpAddressCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultForAz" (JD.nullable JD.bool) Nothing
        |> JDP.optional "mapPublicIpOnLaunch" (JD.nullable JD.bool) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Describes the state of a CIDR block.</p>
-}
type alias SubnetCidrBlockState =
    { state : Maybe SubnetCidrBlockStateCode
    , statusMessage : Maybe String
    }



subnetCidrBlockStateDecoder : JD.Decoder SubnetCidrBlockState
subnetCidrBlockStateDecoder =
    JDP.decode SubnetCidrBlockState
        |> JDP.optional "state" (JD.nullable subnetCidrBlockStateCodeDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing




{-| One of

* `SubnetCidrBlockStateCode_associating`
* `SubnetCidrBlockStateCode_associated`
* `SubnetCidrBlockStateCode_disassociating`
* `SubnetCidrBlockStateCode_disassociated`
* `SubnetCidrBlockStateCode_failing`
* `SubnetCidrBlockStateCode_failed`

-}
type SubnetCidrBlockStateCode
    = SubnetCidrBlockStateCode_associating
    | SubnetCidrBlockStateCode_associated
    | SubnetCidrBlockStateCode_disassociating
    | SubnetCidrBlockStateCode_disassociated
    | SubnetCidrBlockStateCode_failing
    | SubnetCidrBlockStateCode_failed



subnetCidrBlockStateCodeDecoder : JD.Decoder SubnetCidrBlockStateCode
subnetCidrBlockStateCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "associating" ->
                        JD.succeed SubnetCidrBlockStateCode_associating

                    "associated" ->
                        JD.succeed SubnetCidrBlockStateCode_associated

                    "disassociating" ->
                        JD.succeed SubnetCidrBlockStateCode_disassociating

                    "disassociated" ->
                        JD.succeed SubnetCidrBlockStateCode_disassociated

                    "failing" ->
                        JD.succeed SubnetCidrBlockStateCode_failing

                    "failed" ->
                        JD.succeed SubnetCidrBlockStateCode_failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an IPv6 CIDR block associated with a subnet.</p>
-}
type alias SubnetIpv6CidrBlockAssociation =
    { ipv6CidrBlock : Maybe String
    , ipv6CidrBlockState : Maybe SubnetCidrBlockState
    , associationId : Maybe String
    }



subnetIpv6CidrBlockAssociationDecoder : JD.Decoder SubnetIpv6CidrBlockAssociation
subnetIpv6CidrBlockAssociationDecoder =
    JDP.decode SubnetIpv6CidrBlockAssociation
        |> JDP.optional "ipv6CidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockState" (JD.nullable subnetCidrBlockStateDecoder) Nothing
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing




{-| One of

* `SubnetState_pending`
* `SubnetState_available`

-}
type SubnetState
    = SubnetState_pending
    | SubnetState_available



subnetStateDecoder : JD.Decoder SubnetState
subnetStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed SubnetState_pending

                    "available" ->
                        JD.succeed SubnetState_available


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `SummaryStatus_ok`
* `SummaryStatus_impaired`
* `SummaryStatus_insufficient-data`
* `SummaryStatus_not-applicable`
* `SummaryStatus_initializing`

-}
type SummaryStatus
    = SummaryStatus_ok
    | SummaryStatus_impaired
    | SummaryStatus_insufficient_data
    | SummaryStatus_not_applicable
    | SummaryStatus_initializing



summaryStatusDecoder : JD.Decoder SummaryStatus
summaryStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ok" ->
                        JD.succeed SummaryStatus_ok

                    "impaired" ->
                        JD.succeed SummaryStatus_impaired

                    "insufficient_data" ->
                        JD.succeed SummaryStatus_insufficient_data

                    "not_applicable" ->
                        JD.succeed SummaryStatus_not_applicable

                    "initializing" ->
                        JD.succeed SummaryStatus_initializing


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a tag.</p>
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




{-| <p>Describes a tag.</p>
-}
type alias TagDescription =
    { resourceId : Maybe String
    , resourceType : Maybe ResourceType
    , key : Maybe String
    , value : Maybe String
    }



tagDescriptionDecoder : JD.Decoder TagDescription
tagDescriptionDecoder =
    JDP.decode TagDescription
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>Information about the Convertible Reserved Instance offering.</p>
-}
type alias TargetConfiguration =
    { offeringId : Maybe String
    , instanceCount : Maybe Int
    }



targetConfigurationDecoder : JD.Decoder TargetConfiguration
targetConfigurationDecoder =
    JDP.decode TargetConfiguration
        |> JDP.optional "offeringId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing




{-| <p>Details about the target configuration.</p>
-}
type alias TargetConfigurationRequest =
    { offeringId : String
    , instanceCount : Maybe Int
    }



targetConfigurationRequestDecoder : JD.Decoder TargetConfigurationRequest
targetConfigurationRequestDecoder =
    JDP.decode TargetConfigurationRequest
        |> JDP.required "offeringId" JD.string
        |> JDP.optional "instanceCount" (JD.nullable JD.int) Nothing




{-| <p>The total value of the new Convertible Reserved Instances.</p>
-}
type alias TargetReservationValue =
    { targetConfiguration : Maybe TargetConfiguration
    , reservationValue : Maybe ReservationValue
    }



targetReservationValueDecoder : JD.Decoder TargetReservationValue
targetReservationValueDecoder =
    JDP.decode TargetReservationValue
        |> JDP.optional "targetConfiguration" (JD.nullable targetConfigurationDecoder) Nothing
        |> JDP.optional "reservationValue" (JD.nullable reservationValueDecoder) Nothing




{-| One of

* `TelemetryStatus_UP`
* `TelemetryStatus_DOWN`

-}
type TelemetryStatus
    = TelemetryStatus_UP
    | TelemetryStatus_DOWN



telemetryStatusDecoder : JD.Decoder TelemetryStatus
telemetryStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UP" ->
                        JD.succeed TelemetryStatus_UP

                    "DOWN" ->
                        JD.succeed TelemetryStatus_DOWN


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Tenancy_default`
* `Tenancy_dedicated`
* `Tenancy_host`

-}
type Tenancy
    = Tenancy_default
    | Tenancy_dedicated
    | Tenancy_host



tenancyDecoder : JD.Decoder Tenancy
tenancyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "default" ->
                        JD.succeed Tenancy_default

                    "dedicated" ->
                        JD.succeed Tenancy_dedicated

                    "host" ->
                        JD.succeed Tenancy_host


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from terminateInstanc
-}
type alias TerminateInstancesResult =
    { terminatingInstances : Maybe (List InstanceStateChange)
    }



terminateInstancesResultDecoder : JD.Decoder TerminateInstancesResult
terminateInstancesResultDecoder =
    JDP.decode TerminateInstancesResult
        |> JDP.optional "terminatingInstances" (JD.nullable (JD.list instanceStateChangeDecoder)) Nothing




{-| One of

* `TrafficType_ACCEPT`
* `TrafficType_REJECT`
* `TrafficType_ALL`

-}
type TrafficType
    = TrafficType_ACCEPT
    | TrafficType_REJECT
    | TrafficType_ALL



trafficTypeDecoder : JD.Decoder TrafficType
trafficTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCEPT" ->
                        JD.succeed TrafficType_ACCEPT

                    "REJECT" ->
                        JD.succeed TrafficType_REJECT

                    "ALL" ->
                        JD.succeed TrafficType_ALL


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from unassignIpv6Address
-}
type alias UnassignIpv6AddressesResult =
    { networkInterfaceId : Maybe String
    , unassignedIpv6Addresses : Maybe (List String)
    }



unassignIpv6AddressesResultDecoder : JD.Decoder UnassignIpv6AddressesResult
unassignIpv6AddressesResultDecoder =
    JDP.decode UnassignIpv6AddressesResult
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "unassignedIpv6Addresses" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from unmonitorInstanc
-}
type alias UnmonitorInstancesResult =
    { instanceMonitorings : Maybe (List InstanceMonitoring)
    }



unmonitorInstancesResultDecoder : JD.Decoder UnmonitorInstancesResult
unmonitorInstancesResultDecoder =
    JDP.decode UnmonitorInstancesResult
        |> JDP.optional "instanceMonitorings" (JD.nullable (JD.list instanceMonitoringDecoder)) Nothing




{-| <p>Information about items that were not successfully processed in a batch call.</p>
-}
type alias UnsuccessfulItem =
    { resourceId : Maybe String
    , error : UnsuccessfulItemError
    }



unsuccessfulItemDecoder : JD.Decoder UnsuccessfulItem
unsuccessfulItemDecoder =
    JDP.decode UnsuccessfulItem
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.required "error" unsuccessfulItemErrorDecoder




{-| <p>Information about the error that occurred. For more information about errors, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html">Error Codes</a>.</p>
-}
type alias UnsuccessfulItemError =
    { code : String
    , message : String
    }



unsuccessfulItemErrorDecoder : JD.Decoder UnsuccessfulItemError
unsuccessfulItemErrorDecoder =
    JDP.decode UnsuccessfulItemError
        |> JDP.required "code" JD.string
        |> JDP.required "message" JD.string




{-| <p>Describes the S3 bucket for the disk image.</p>
-}
type alias UserBucket =
    { s3Bucket : Maybe String
    , s3Key : Maybe String
    }



userBucketDecoder : JD.Decoder UserBucket
userBucketDecoder =
    JDP.decode UserBucket
        |> JDP.optional "s3Bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Key" (JD.nullable JD.string) Nothing




{-| <p>Describes the S3 bucket for the disk image.</p>
-}
type alias UserBucketDetails =
    { s3Bucket : Maybe String
    , s3Key : Maybe String
    }



userBucketDetailsDecoder : JD.Decoder UserBucketDetails
userBucketDetailsDecoder =
    JDP.decode UserBucketDetails
        |> JDP.optional "s3Bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Key" (JD.nullable JD.string) Nothing




{-| <p>Describes the user data for an instance.</p>
-}
type alias UserData =
    { data : Maybe String
    }



userDataDecoder : JD.Decoder UserData
userDataDecoder =
    JDP.decode UserData
        |> JDP.optional "data" (JD.nullable JD.string) Nothing




{-| <p>Describes a security group and AWS account ID pair.</p>
-}
type alias UserIdGroupPair =
    { userId : Maybe String
    , groupName : Maybe String
    , groupId : Maybe String
    , vpcId : Maybe String
    , vpcPeeringConnectionId : Maybe String
    , peeringStatus : Maybe String
    }



userIdGroupPairDecoder : JD.Decoder UserIdGroupPair
userIdGroupPairDecoder =
    JDP.decode UserIdGroupPair
        |> JDP.optional "userId" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcPeeringConnectionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "peeringStatus" (JD.nullable JD.string) Nothing




{-| <p>Describes telemetry for a VPN tunnel.</p>
-}
type alias VgwTelemetry =
    { outsideIpAddress : Maybe String
    , status : Maybe TelemetryStatus
    , lastStatusChange : Maybe Date
    , statusMessage : Maybe String
    , acceptedRouteCount : Maybe Int
    }



vgwTelemetryDecoder : JD.Decoder VgwTelemetry
vgwTelemetryDecoder =
    JDP.decode VgwTelemetry
        |> JDP.optional "outsideIpAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable telemetryStatusDecoder) Nothing
        |> JDP.optional "lastStatusChange" (JD.nullable JDX.date) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "acceptedRouteCount" (JD.nullable JD.int) Nothing




{-| One of

* `VirtualizationType_hvm`
* `VirtualizationType_paravirtual`

-}
type VirtualizationType
    = VirtualizationType_hvm
    | VirtualizationType_paravirtual



virtualizationTypeDecoder : JD.Decoder VirtualizationType
virtualizationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "hvm" ->
                        JD.succeed VirtualizationType_hvm

                    "paravirtual" ->
                        JD.succeed VirtualizationType_paravirtual


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from volu
-}
type alias Volume =
    { volumeId : Maybe String
    , size : Maybe Int
    , snapshotId : Maybe String
    , availabilityZone : Maybe String
    , state : Maybe VolumeState
    , createTime : Maybe Date
    , attachments : Maybe (List VolumeAttachment)
    , tags : Maybe (List Tag)
    , volumeType : Maybe VolumeType
    , iops : Maybe Int
    , encrypted : Maybe Bool
    , kmsKeyId : Maybe String
    }



volumeDecoder : JD.Decoder Volume
volumeDecoder =
    JDP.decode Volume
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "size" (JD.nullable JD.int) Nothing
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable volumeStateDecoder) Nothing
        |> JDP.optional "createTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "attachments" (JD.nullable (JD.list volumeAttachmentDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "volumeType" (JD.nullable volumeTypeDecoder) Nothing
        |> JDP.optional "iops" (JD.nullable JD.int) Nothing
        |> JDP.optional "encrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from volumeAt
-}
type alias VolumeAttachment =
    { volumeId : Maybe String
    , instanceId : Maybe String
    , device : Maybe String
    , state : Maybe VolumeAttachmentState
    , attachTime : Maybe Date
    , deleteOnTermination : Maybe Bool
    }



volumeAttachmentDecoder : JD.Decoder VolumeAttachment
volumeAttachmentDecoder =
    JDP.decode VolumeAttachment
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "device" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable volumeAttachmentStateDecoder) Nothing
        |> JDP.optional "attachTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deleteOnTermination" (JD.nullable JD.bool) Nothing




{-| One of

* `VolumeAttachmentState_attaching`
* `VolumeAttachmentState_attached`
* `VolumeAttachmentState_detaching`
* `VolumeAttachmentState_detached`

-}
type VolumeAttachmentState
    = VolumeAttachmentState_attaching
    | VolumeAttachmentState_attached
    | VolumeAttachmentState_detaching
    | VolumeAttachmentState_detached



volumeAttachmentStateDecoder : JD.Decoder VolumeAttachmentState
volumeAttachmentStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "attaching" ->
                        JD.succeed VolumeAttachmentState_attaching

                    "attached" ->
                        JD.succeed VolumeAttachmentState_attached

                    "detaching" ->
                        JD.succeed VolumeAttachmentState_detaching

                    "detached" ->
                        JD.succeed VolumeAttachmentState_detached


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `VolumeAttributeName_autoEnableIO`
* `VolumeAttributeName_productCodes`

-}
type VolumeAttributeName
    = VolumeAttributeName_autoEnableIO
    | VolumeAttributeName_productCodes



volumeAttributeNameDecoder : JD.Decoder VolumeAttributeName
volumeAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "autoEnableIO" ->
                        JD.succeed VolumeAttributeName_autoEnableIO

                    "productCodes" ->
                        JD.succeed VolumeAttributeName_productCodes


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an EBS volume.</p>
-}
type alias VolumeDetail =
    { size : Int
    }



volumeDetailDecoder : JD.Decoder VolumeDetail
volumeDetailDecoder =
    JDP.decode VolumeDetail
        |> JDP.required "size" JD.int




{-| One of

* `VolumeState_creating`
* `VolumeState_available`
* `VolumeState_in-use`
* `VolumeState_deleting`
* `VolumeState_deleted`
* `VolumeState_error`

-}
type VolumeState
    = VolumeState_creating
    | VolumeState_available
    | VolumeState_in_use
    | VolumeState_deleting
    | VolumeState_deleted
    | VolumeState_error



volumeStateDecoder : JD.Decoder VolumeState
volumeStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "creating" ->
                        JD.succeed VolumeState_creating

                    "available" ->
                        JD.succeed VolumeState_available

                    "in_use" ->
                        JD.succeed VolumeState_in_use

                    "deleting" ->
                        JD.succeed VolumeState_deleting

                    "deleted" ->
                        JD.succeed VolumeState_deleted

                    "error" ->
                        JD.succeed VolumeState_error


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a volume status operation code.</p>
-}
type alias VolumeStatusAction =
    { code : Maybe String
    , description : Maybe String
    , eventType : Maybe String
    , eventId : Maybe String
    }



volumeStatusActionDecoder : JD.Decoder VolumeStatusAction
volumeStatusActionDecoder =
    JDP.decode VolumeStatusAction
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventType" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing




{-| <p>Describes a volume status.</p>
-}
type alias VolumeStatusDetails =
    { name : Maybe VolumeStatusName
    , status : Maybe String
    }



volumeStatusDetailsDecoder : JD.Decoder VolumeStatusDetails
volumeStatusDetailsDecoder =
    JDP.decode VolumeStatusDetails
        |> JDP.optional "name" (JD.nullable volumeStatusNameDecoder) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Describes a volume status event.</p>
-}
type alias VolumeStatusEvent =
    { eventType : Maybe String
    , description : Maybe String
    , notBefore : Maybe Date
    , notAfter : Maybe Date
    , eventId : Maybe String
    }



volumeStatusEventDecoder : JD.Decoder VolumeStatusEvent
volumeStatusEventDecoder =
    JDP.decode VolumeStatusEvent
        |> JDP.optional "eventType" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "notBefore" (JD.nullable JDX.date) Nothing
        |> JDP.optional "notAfter" (JD.nullable JDX.date) Nothing
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing




{-| <p>Describes the status of a volume.</p>
-}
type alias VolumeStatusInfo =
    { status : Maybe VolumeStatusInfoStatus
    , details : Maybe (List VolumeStatusDetails)
    }



volumeStatusInfoDecoder : JD.Decoder VolumeStatusInfo
volumeStatusInfoDecoder =
    JDP.decode VolumeStatusInfo
        |> JDP.optional "status" (JD.nullable volumeStatusInfoStatusDecoder) Nothing
        |> JDP.optional "details" (JD.nullable (JD.list volumeStatusDetailsDecoder)) Nothing




{-| One of

* `VolumeStatusInfoStatus_ok`
* `VolumeStatusInfoStatus_impaired`
* `VolumeStatusInfoStatus_insufficient-data`

-}
type VolumeStatusInfoStatus
    = VolumeStatusInfoStatus_ok
    | VolumeStatusInfoStatus_impaired
    | VolumeStatusInfoStatus_insufficient_data



volumeStatusInfoStatusDecoder : JD.Decoder VolumeStatusInfoStatus
volumeStatusInfoStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ok" ->
                        JD.succeed VolumeStatusInfoStatus_ok

                    "impaired" ->
                        JD.succeed VolumeStatusInfoStatus_impaired

                    "insufficient_data" ->
                        JD.succeed VolumeStatusInfoStatus_insufficient_data


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the volume status.</p>
-}
type alias VolumeStatusItem =
    { volumeId : Maybe String
    , availabilityZone : Maybe String
    , volumeStatus : Maybe VolumeStatusInfo
    , events : Maybe (List VolumeStatusEvent)
    , actions : Maybe (List VolumeStatusAction)
    }



volumeStatusItemDecoder : JD.Decoder VolumeStatusItem
volumeStatusItemDecoder =
    JDP.decode VolumeStatusItem
        |> JDP.optional "volumeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeStatus" (JD.nullable volumeStatusInfoDecoder) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list volumeStatusEventDecoder)) Nothing
        |> JDP.optional "actions" (JD.nullable (JD.list volumeStatusActionDecoder)) Nothing




{-| One of

* `VolumeStatusName_io-enabled`
* `VolumeStatusName_io-performance`

-}
type VolumeStatusName
    = VolumeStatusName_io_enabled
    | VolumeStatusName_io_performance



volumeStatusNameDecoder : JD.Decoder VolumeStatusName
volumeStatusNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "io_enabled" ->
                        JD.succeed VolumeStatusName_io_enabled

                    "io_performance" ->
                        JD.succeed VolumeStatusName_io_performance


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `VolumeType_standard`
* `VolumeType_io1`
* `VolumeType_gp2`
* `VolumeType_sc1`
* `VolumeType_st1`

-}
type VolumeType
    = VolumeType_standard
    | VolumeType_io1
    | VolumeType_gp2
    | VolumeType_sc1
    | VolumeType_st1



volumeTypeDecoder : JD.Decoder VolumeType
volumeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "standard" ->
                        JD.succeed VolumeType_standard

                    "io1" ->
                        JD.succeed VolumeType_io1

                    "gp2" ->
                        JD.succeed VolumeType_gp2

                    "sc1" ->
                        JD.succeed VolumeType_sc1

                    "st1" ->
                        JD.succeed VolumeType_st1


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a VPC.</p>
-}
type alias Vpc =
    { vpcId : Maybe String
    , state : Maybe VpcState
    , cidrBlock : Maybe String
    , dhcpOptionsId : Maybe String
    , tags : Maybe (List Tag)
    , instanceTenancy : Maybe Tenancy
    , isDefault : Maybe Bool
    , ipv6CidrBlockAssociationSet : Maybe (List VpcIpv6CidrBlockAssociation)
    }



vpcDecoder : JD.Decoder Vpc
vpcDecoder =
    JDP.decode Vpc
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable vpcStateDecoder) Nothing
        |> JDP.optional "cidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "dhcpOptionsId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "instanceTenancy" (JD.nullable tenancyDecoder) Nothing
        |> JDP.optional "isDefault" (JD.nullable JD.bool) Nothing
        |> JDP.optional "ipv6CidrBlockAssociationSet" (JD.nullable (JD.list vpcIpv6CidrBlockAssociationDecoder)) Nothing




{-| <p>Describes an attachment between a virtual private gateway and a VPC.</p>
-}
type alias VpcAttachment =
    { vpcId : Maybe String
    , state : Maybe AttachmentStatus
    }



vpcAttachmentDecoder : JD.Decoder VpcAttachment
vpcAttachmentDecoder =
    JDP.decode VpcAttachment
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable attachmentStatusDecoder) Nothing




{-| One of

* `VpcAttributeName_enableDnsSupport`
* `VpcAttributeName_enableDnsHostnames`

-}
type VpcAttributeName
    = VpcAttributeName_enableDnsSupport
    | VpcAttributeName_enableDnsHostnames



vpcAttributeNameDecoder : JD.Decoder VpcAttributeName
vpcAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "enableDnsSupport" ->
                        JD.succeed VpcAttributeName_enableDnsSupport

                    "enableDnsHostnames" ->
                        JD.succeed VpcAttributeName_enableDnsHostnames


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the state of a CIDR block.</p>
-}
type alias VpcCidrBlockState =
    { state : Maybe VpcCidrBlockStateCode
    , statusMessage : Maybe String
    }



vpcCidrBlockStateDecoder : JD.Decoder VpcCidrBlockState
vpcCidrBlockStateDecoder =
    JDP.decode VpcCidrBlockState
        |> JDP.optional "state" (JD.nullable vpcCidrBlockStateCodeDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing




{-| One of

* `VpcCidrBlockStateCode_associating`
* `VpcCidrBlockStateCode_associated`
* `VpcCidrBlockStateCode_disassociating`
* `VpcCidrBlockStateCode_disassociated`
* `VpcCidrBlockStateCode_failing`
* `VpcCidrBlockStateCode_failed`

-}
type VpcCidrBlockStateCode
    = VpcCidrBlockStateCode_associating
    | VpcCidrBlockStateCode_associated
    | VpcCidrBlockStateCode_disassociating
    | VpcCidrBlockStateCode_disassociated
    | VpcCidrBlockStateCode_failing
    | VpcCidrBlockStateCode_failed



vpcCidrBlockStateCodeDecoder : JD.Decoder VpcCidrBlockStateCode
vpcCidrBlockStateCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "associating" ->
                        JD.succeed VpcCidrBlockStateCode_associating

                    "associated" ->
                        JD.succeed VpcCidrBlockStateCode_associated

                    "disassociating" ->
                        JD.succeed VpcCidrBlockStateCode_disassociating

                    "disassociated" ->
                        JD.succeed VpcCidrBlockStateCode_disassociated

                    "failing" ->
                        JD.succeed VpcCidrBlockStateCode_failing

                    "failed" ->
                        JD.succeed VpcCidrBlockStateCode_failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes whether a VPC is enabled for ClassicLink.</p>
-}
type alias VpcClassicLink =
    { vpcId : Maybe String
    , classicLinkEnabled : Maybe Bool
    , tags : Maybe (List Tag)
    }



vpcClassicLinkDecoder : JD.Decoder VpcClassicLink
vpcClassicLinkDecoder =
    JDP.decode VpcClassicLink
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "classicLinkEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Describes a VPC endpoint.</p>
-}
type alias VpcEndpoint =
    { vpcEndpointId : Maybe String
    , vpcId : Maybe String
    , serviceName : Maybe String
    , state : Maybe State
    , policyDocument : Maybe String
    , routeTableIds : Maybe (List String)
    , creationTimestamp : Maybe Date
    }



vpcEndpointDecoder : JD.Decoder VpcEndpoint
vpcEndpointDecoder =
    JDP.decode VpcEndpoint
        |> JDP.optional "vpcEndpointId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable stateDecoder) Nothing
        |> JDP.optional "policyDocument" (JD.nullable JD.string) Nothing
        |> JDP.optional "routeTableIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "creationTimestamp" (JD.nullable JDX.date) Nothing




{-| <p>Describes an IPv6 CIDR block associated with a VPC.</p>
-}
type alias VpcIpv6CidrBlockAssociation =
    { ipv6CidrBlock : Maybe String
    , ipv6CidrBlockState : Maybe VpcCidrBlockState
    , associationId : Maybe String
    }



vpcIpv6CidrBlockAssociationDecoder : JD.Decoder VpcIpv6CidrBlockAssociation
vpcIpv6CidrBlockAssociationDecoder =
    JDP.decode VpcIpv6CidrBlockAssociation
        |> JDP.optional "ipv6CidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockState" (JD.nullable vpcCidrBlockStateDecoder) Nothing
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing




{-| <p>Describes a VPC peering connection.</p>
-}
type alias VpcPeeringConnection =
    { accepterVpcInfo : Maybe VpcPeeringConnectionVpcInfo
    , expirationTime : Maybe Date
    , requesterVpcInfo : Maybe VpcPeeringConnectionVpcInfo
    , status : Maybe VpcPeeringConnectionStateReason
    , tags : Maybe (List Tag)
    , vpcPeeringConnectionId : Maybe String
    }



vpcPeeringConnectionDecoder : JD.Decoder VpcPeeringConnection
vpcPeeringConnectionDecoder =
    JDP.decode VpcPeeringConnection
        |> JDP.optional "accepterVpcInfo" (JD.nullable vpcPeeringConnectionVpcInfoDecoder) Nothing
        |> JDP.optional "expirationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "requesterVpcInfo" (JD.nullable vpcPeeringConnectionVpcInfoDecoder) Nothing
        |> JDP.optional "status" (JD.nullable vpcPeeringConnectionStateReasonDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "vpcPeeringConnectionId" (JD.nullable JD.string) Nothing




{-| <p>Describes the VPC peering connection options.</p>
-}
type alias VpcPeeringConnectionOptionsDescription =
    { allowEgressFromLocalClassicLinkToRemoteVpc : Maybe Bool
    , allowEgressFromLocalVpcToRemoteClassicLink : Maybe Bool
    , allowDnsResolutionFromRemoteVpc : Maybe Bool
    }



vpcPeeringConnectionOptionsDescriptionDecoder : JD.Decoder VpcPeeringConnectionOptionsDescription
vpcPeeringConnectionOptionsDescriptionDecoder =
    JDP.decode VpcPeeringConnectionOptionsDescription
        |> JDP.optional "allowEgressFromLocalClassicLinkToRemoteVpc" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowEgressFromLocalVpcToRemoteClassicLink" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowDnsResolutionFromRemoteVpc" (JD.nullable JD.bool) Nothing




{-| <p>Describes the status of a VPC peering connection.</p>
-}
type alias VpcPeeringConnectionStateReason =
    { code : Maybe VpcPeeringConnectionStateReasonCode
    , message : Maybe String
    }



vpcPeeringConnectionStateReasonDecoder : JD.Decoder VpcPeeringConnectionStateReason
vpcPeeringConnectionStateReasonDecoder =
    JDP.decode VpcPeeringConnectionStateReason
        |> JDP.optional "code" (JD.nullable vpcPeeringConnectionStateReasonCodeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `VpcPeeringConnectionStateReasonCode_initiating-request`
* `VpcPeeringConnectionStateReasonCode_pending-acceptance`
* `VpcPeeringConnectionStateReasonCode_active`
* `VpcPeeringConnectionStateReasonCode_deleted`
* `VpcPeeringConnectionStateReasonCode_rejected`
* `VpcPeeringConnectionStateReasonCode_failed`
* `VpcPeeringConnectionStateReasonCode_expired`
* `VpcPeeringConnectionStateReasonCode_provisioning`
* `VpcPeeringConnectionStateReasonCode_deleting`

-}
type VpcPeeringConnectionStateReasonCode
    = VpcPeeringConnectionStateReasonCode_initiating_request
    | VpcPeeringConnectionStateReasonCode_pending_acceptance
    | VpcPeeringConnectionStateReasonCode_active
    | VpcPeeringConnectionStateReasonCode_deleted
    | VpcPeeringConnectionStateReasonCode_rejected
    | VpcPeeringConnectionStateReasonCode_failed
    | VpcPeeringConnectionStateReasonCode_expired
    | VpcPeeringConnectionStateReasonCode_provisioning
    | VpcPeeringConnectionStateReasonCode_deleting



vpcPeeringConnectionStateReasonCodeDecoder : JD.Decoder VpcPeeringConnectionStateReasonCode
vpcPeeringConnectionStateReasonCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "initiating_request" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_initiating_request

                    "pending_acceptance" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_pending_acceptance

                    "active" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_active

                    "deleted" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_deleted

                    "rejected" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_rejected

                    "failed" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_failed

                    "expired" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_expired

                    "provisioning" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_provisioning

                    "deleting" ->
                        JD.succeed VpcPeeringConnectionStateReasonCode_deleting


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a VPC in a VPC peering connection.</p>
-}
type alias VpcPeeringConnectionVpcInfo =
    { cidrBlock : Maybe String
    , ownerId : Maybe String
    , vpcId : Maybe String
    , ipv6CidrBlockSet : Maybe (List Ipv6CidrBlock)
    , peeringOptions : Maybe VpcPeeringConnectionOptionsDescription
    }



vpcPeeringConnectionVpcInfoDecoder : JD.Decoder VpcPeeringConnectionVpcInfo
vpcPeeringConnectionVpcInfoDecoder =
    JDP.decode VpcPeeringConnectionVpcInfo
        |> JDP.optional "cidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipv6CidrBlockSet" (JD.nullable (JD.list ipv6CidrBlockDecoder)) Nothing
        |> JDP.optional "peeringOptions" (JD.nullable vpcPeeringConnectionOptionsDescriptionDecoder) Nothing




{-| One of

* `VpcState_pending`
* `VpcState_available`

-}
type VpcState
    = VpcState_pending
    | VpcState_available



vpcStateDecoder : JD.Decoder VpcState
vpcStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed VpcState_pending

                    "available" ->
                        JD.succeed VpcState_available


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a VPN connection.</p>
-}
type alias VpnConnection =
    { vpnConnectionId : Maybe String
    , state : Maybe VpnState
    , customerGatewayConfiguration : Maybe String
    , type_ : Maybe GatewayType
    , customerGatewayId : Maybe String
    , vpnGatewayId : Maybe String
    , tags : Maybe (List Tag)
    , vgwTelemetry : Maybe (List VgwTelemetry)
    , options : Maybe VpnConnectionOptions
    , routes : Maybe (List VpnStaticRoute)
    }



vpnConnectionDecoder : JD.Decoder VpnConnection
vpnConnectionDecoder =
    JDP.decode VpnConnection
        |> JDP.optional "vpnConnectionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable vpnStateDecoder) Nothing
        |> JDP.optional "customerGatewayConfiguration" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable gatewayTypeDecoder) Nothing
        |> JDP.optional "customerGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpnGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "vgwTelemetry" (JD.nullable (JD.list vgwTelemetryDecoder)) Nothing
        |> JDP.optional "options" (JD.nullable vpnConnectionOptionsDecoder) Nothing
        |> JDP.optional "routes" (JD.nullable (JD.list vpnStaticRouteDecoder)) Nothing




{-| <p>Describes VPN connection options.</p>
-}
type alias VpnConnectionOptions =
    { staticRoutesOnly : Maybe Bool
    }



vpnConnectionOptionsDecoder : JD.Decoder VpnConnectionOptions
vpnConnectionOptionsDecoder =
    JDP.decode VpnConnectionOptions
        |> JDP.optional "staticRoutesOnly" (JD.nullable JD.bool) Nothing




{-| <p>Describes VPN connection options.</p>
-}
type alias VpnConnectionOptionsSpecification =
    { staticRoutesOnly : Maybe Bool
    }



vpnConnectionOptionsSpecificationDecoder : JD.Decoder VpnConnectionOptionsSpecification
vpnConnectionOptionsSpecificationDecoder =
    JDP.decode VpnConnectionOptionsSpecification
        |> JDP.optional "staticRoutesOnly" (JD.nullable JD.bool) Nothing




{-| <p>Describes a virtual private gateway.</p>
-}
type alias VpnGateway =
    { vpnGatewayId : Maybe String
    , state : Maybe VpnState
    , type_ : Maybe GatewayType
    , availabilityZone : Maybe String
    , vpcAttachments : Maybe (List VpcAttachment)
    , tags : Maybe (List Tag)
    }



vpnGatewayDecoder : JD.Decoder VpnGateway
vpnGatewayDecoder =
    JDP.decode VpnGateway
        |> JDP.optional "vpnGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable vpnStateDecoder) Nothing
        |> JDP.optional "type_" (JD.nullable gatewayTypeDecoder) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcAttachments" (JD.nullable (JD.list vpcAttachmentDecoder)) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `VpnState_pending`
* `VpnState_available`
* `VpnState_deleting`
* `VpnState_deleted`

-}
type VpnState
    = VpnState_pending
    | VpnState_available
    | VpnState_deleting
    | VpnState_deleted



vpnStateDecoder : JD.Decoder VpnState
vpnStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "pending" ->
                        JD.succeed VpnState_pending

                    "available" ->
                        JD.succeed VpnState_available

                    "deleting" ->
                        JD.succeed VpnState_deleting

                    "deleted" ->
                        JD.succeed VpnState_deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes a static route for a VPN connection.</p>
-}
type alias VpnStaticRoute =
    { destinationCidrBlock : Maybe String
    , source : Maybe VpnStaticRouteSource
    , state : Maybe VpnState
    }



vpnStaticRouteDecoder : JD.Decoder VpnStaticRoute
vpnStaticRouteDecoder =
    JDP.decode VpnStaticRoute
        |> JDP.optional "destinationCidrBlock" (JD.nullable JD.string) Nothing
        |> JDP.optional "source" (JD.nullable vpnStaticRouteSourceDecoder) Nothing
        |> JDP.optional "state" (JD.nullable vpnStateDecoder) Nothing




{-| One of

* `VpnStaticRouteSource_Static`

-}
type VpnStaticRouteSource
    = VpnStaticRouteSource_Static



vpnStaticRouteSourceDecoder : JD.Decoder VpnStaticRouteSource
vpnStaticRouteSourceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Static" ->
                        JD.succeed VpnStaticRouteSource_Static


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Scope_Availability Zone`
* `Scope_Region`

-}
type Scope
    = Scope_Availability_Zone
    | Scope_Region



scopeDecoder : JD.Decoder Scope
scopeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Availability_Zone" ->
                        JD.succeed Scope_Availability_Zone

                    "Region" ->
                        JD.succeed Scope_Region


                    _ ->
                        JD.fail "bad thing"
            )



