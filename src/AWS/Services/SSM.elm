module AWS.Services.SSM
    exposing
        ( config
        , addTagsToResource
        , cancelCommand
        , CancelCommandOptions
        , createActivation
        , CreateActivationOptions
        , createAssociation
        , CreateAssociationOptions
        , createAssociationBatch
        , createDocument
        , CreateDocumentOptions
        , createMaintenanceWindow
        , CreateMaintenanceWindowOptions
        , createPatchBaseline
        , CreatePatchBaselineOptions
        , deleteActivation
        , deleteAssociation
        , DeleteAssociationOptions
        , deleteDocument
        , deleteMaintenanceWindow
        , deleteParameter
        , deletePatchBaseline
        , deregisterManagedInstance
        , deregisterPatchBaselineForPatchGroup
        , deregisterTargetFromMaintenanceWindow
        , deregisterTaskFromMaintenanceWindow
        , describeActivations
        , DescribeActivationsOptions
        , describeAssociation
        , DescribeAssociationOptions
        , describeAutomationExecutions
        , DescribeAutomationExecutionsOptions
        , describeAvailablePatches
        , DescribeAvailablePatchesOptions
        , describeDocument
        , DescribeDocumentOptions
        , describeDocumentPermission
        , describeEffectiveInstanceAssociations
        , DescribeEffectiveInstanceAssociationsOptions
        , describeEffectivePatchesForPatchBaseline
        , DescribeEffectivePatchesForPatchBaselineOptions
        , describeInstanceAssociationsStatus
        , DescribeInstanceAssociationsStatusOptions
        , describeInstanceInformation
        , DescribeInstanceInformationOptions
        , describeInstancePatchStates
        , DescribeInstancePatchStatesOptions
        , describeInstancePatchStatesForPatchGroup
        , DescribeInstancePatchStatesForPatchGroupOptions
        , describeInstancePatches
        , DescribeInstancePatchesOptions
        , describeMaintenanceWindowExecutionTaskInvocations
        , DescribeMaintenanceWindowExecutionTaskInvocationsOptions
        , describeMaintenanceWindowExecutionTasks
        , DescribeMaintenanceWindowExecutionTasksOptions
        , describeMaintenanceWindowExecutions
        , DescribeMaintenanceWindowExecutionsOptions
        , describeMaintenanceWindowTargets
        , DescribeMaintenanceWindowTargetsOptions
        , describeMaintenanceWindowTasks
        , DescribeMaintenanceWindowTasksOptions
        , describeMaintenanceWindows
        , DescribeMaintenanceWindowsOptions
        , describeParameters
        , DescribeParametersOptions
        , describePatchBaselines
        , DescribePatchBaselinesOptions
        , describePatchGroupState
        , describePatchGroups
        , DescribePatchGroupsOptions
        , getAutomationExecution
        , getCommandInvocation
        , GetCommandInvocationOptions
        , getDefaultPatchBaseline
        , getDeployablePatchSnapshotForInstance
        , getDocument
        , GetDocumentOptions
        , getInventory
        , GetInventoryOptions
        , getInventorySchema
        , GetInventorySchemaOptions
        , getMaintenanceWindow
        , getMaintenanceWindowExecution
        , getMaintenanceWindowExecutionTask
        , getParameterHistory
        , GetParameterHistoryOptions
        , getParameters
        , GetParametersOptions
        , getPatchBaseline
        , getPatchBaselineForPatchGroup
        , listAssociations
        , ListAssociationsOptions
        , listCommandInvocations
        , ListCommandInvocationsOptions
        , listCommands
        , ListCommandsOptions
        , listDocumentVersions
        , ListDocumentVersionsOptions
        , listDocuments
        , ListDocumentsOptions
        , listInventoryEntries
        , ListInventoryEntriesOptions
        , listTagsForResource
        , modifyDocumentPermission
        , ModifyDocumentPermissionOptions
        , putInventory
        , putParameter
        , PutParameterOptions
        , registerDefaultPatchBaseline
        , registerPatchBaselineForPatchGroup
        , registerTargetWithMaintenanceWindow
        , RegisterTargetWithMaintenanceWindowOptions
        , registerTaskWithMaintenanceWindow
        , RegisterTaskWithMaintenanceWindowOptions
        , removeTagsFromResource
        , sendCommand
        , SendCommandOptions
        , startAutomationExecution
        , StartAutomationExecutionOptions
        , stopAutomationExecution
        , updateAssociation
        , UpdateAssociationOptions
        , updateAssociationStatus
        , updateDocument
        , UpdateDocumentOptions
        , updateDocumentDefaultVersion
        , updateMaintenanceWindow
        , UpdateMaintenanceWindowOptions
        , updateManagedInstanceRole
        , updatePatchBaseline
        , UpdatePatchBaselineOptions
        , Activation
        , AddTagsToResourceResult
        , AlreadyExistsException
        , AssociatedInstances
        , Association
        , AssociationAlreadyExists
        , AssociationDescription
        , AssociationDoesNotExist
        , AssociationFilter
        , AssociationFilterKey(..)
        , AssociationLimitExceeded
        , AssociationOverview
        , AssociationStatus
        , AssociationStatusName(..)
        , AutomationDefinitionNotFoundException
        , AutomationDefinitionVersionNotFoundException
        , AutomationExecution
        , AutomationExecutionFilter
        , AutomationExecutionFilterKey(..)
        , AutomationExecutionLimitExceededException
        , AutomationExecutionMetadata
        , AutomationExecutionNotFoundException
        , AutomationExecutionStatus(..)
        , CancelCommandResult
        , Command
        , CommandFilter
        , CommandFilterKey(..)
        , CommandInvocation
        , CommandInvocationStatus(..)
        , CommandPlugin
        , CommandPluginStatus(..)
        , CommandStatus(..)
        , CreateActivationResult
        , CreateAssociationBatchRequestEntry
        , CreateAssociationBatchResult
        , CreateAssociationResult
        , CreateDocumentResult
        , CreateMaintenanceWindowResult
        , CreatePatchBaselineResult
        , CustomSchemaCountLimitExceededException
        , DeleteActivationResult
        , DeleteAssociationResult
        , DeleteDocumentResult
        , DeleteMaintenanceWindowResult
        , DeleteParameterResult
        , DeletePatchBaselineResult
        , DeregisterManagedInstanceResult
        , DeregisterPatchBaselineForPatchGroupResult
        , DeregisterTargetFromMaintenanceWindowResult
        , DeregisterTaskFromMaintenanceWindowResult
        , DescribeActivationsFilter
        , DescribeActivationsFilterKeys(..)
        , DescribeActivationsResult
        , DescribeAssociationResult
        , DescribeAutomationExecutionsResult
        , DescribeAvailablePatchesResult
        , DescribeDocumentPermissionResponse
        , DescribeDocumentResult
        , DescribeEffectiveInstanceAssociationsResult
        , DescribeEffectivePatchesForPatchBaselineResult
        , DescribeInstanceAssociationsStatusResult
        , DescribeInstanceInformationResult
        , DescribeInstancePatchStatesForPatchGroupResult
        , DescribeInstancePatchStatesResult
        , DescribeInstancePatchesResult
        , DescribeMaintenanceWindowExecutionTaskInvocationsResult
        , DescribeMaintenanceWindowExecutionTasksResult
        , DescribeMaintenanceWindowExecutionsResult
        , DescribeMaintenanceWindowTargetsResult
        , DescribeMaintenanceWindowTasksResult
        , DescribeMaintenanceWindowsResult
        , DescribeParametersResult
        , DescribePatchBaselinesResult
        , DescribePatchGroupStateResult
        , DescribePatchGroupsResult
        , DocumentAlreadyExists
        , DocumentDefaultVersionDescription
        , DocumentDescription
        , DocumentFilter
        , DocumentFilterKey(..)
        , DocumentHashType(..)
        , DocumentIdentifier
        , DocumentLimitExceeded
        , DocumentParameter
        , DocumentParameterType(..)
        , DocumentPermissionLimit
        , DocumentPermissionType(..)
        , DocumentStatus(..)
        , DocumentType(..)
        , DocumentVersionInfo
        , DocumentVersionLimitExceeded
        , DoesNotExistException
        , DuplicateDocumentContent
        , DuplicateInstanceId
        , EffectivePatch
        , FailedCreateAssociation
        , Fault(..)
        , GetAutomationExecutionResult
        , GetCommandInvocationResult
        , GetDefaultPatchBaselineResult
        , GetDeployablePatchSnapshotForInstanceResult
        , GetDocumentResult
        , GetInventoryResult
        , GetInventorySchemaResult
        , GetMaintenanceWindowExecutionResult
        , GetMaintenanceWindowExecutionTaskResult
        , GetMaintenanceWindowResult
        , GetParameterHistoryResult
        , GetParametersResult
        , GetPatchBaselineForPatchGroupResult
        , GetPatchBaselineResult
        , IdempotentParameterMismatch
        , InstanceAggregatedAssociationOverview
        , InstanceAssociation
        , InstanceAssociationOutputLocation
        , InstanceAssociationOutputUrl
        , InstanceAssociationStatusInfo
        , InstanceInformation
        , InstanceInformationFilter
        , InstanceInformationFilterKey(..)
        , InstanceInformationStringFilter
        , InstancePatchState
        , InstancePatchStateFilter
        , InstancePatchStateOperatorType(..)
        , InternalServerError
        , InvalidActivation
        , InvalidActivationId
        , InvalidAutomationExecutionParametersException
        , InvalidCommandId
        , InvalidDocument
        , InvalidDocumentContent
        , InvalidDocumentOperation
        , InvalidDocumentSchemaVersion
        , InvalidDocumentVersion
        , InvalidFilter
        , InvalidFilterKey
        , InvalidFilterValue
        , InvalidInstanceId
        , InvalidInstanceInformationFilterValue
        , InvalidItemContentException
        , InvalidKeyId
        , InvalidNextToken
        , InvalidNotificationConfig
        , InvalidOutputFolder
        , InvalidOutputLocation
        , InvalidParameters
        , InvalidPermissionType
        , InvalidPluginName
        , InvalidResourceId
        , InvalidResourceType
        , InvalidResultAttributeException
        , InvalidRole
        , InvalidSchedule
        , InvalidTarget
        , InvalidTypeNameException
        , InvalidUpdate
        , InventoryAttributeDataType(..)
        , InventoryFilter
        , InventoryItem
        , InventoryItemAttribute
        , InventoryItemSchema
        , InventoryQueryOperatorType(..)
        , InventoryResultEntity
        , InventoryResultItem
        , InvocationDoesNotExist
        , ItemContentMismatchException
        , ItemSizeLimitExceededException
        , ListAssociationsResult
        , ListCommandInvocationsResult
        , ListCommandsResult
        , ListDocumentVersionsResult
        , ListDocumentsResult
        , ListInventoryEntriesResult
        , ListTagsForResourceResult
        , LoggingInfo
        , MaintenanceWindowExecution
        , MaintenanceWindowExecutionStatus(..)
        , MaintenanceWindowExecutionTaskIdentity
        , MaintenanceWindowExecutionTaskInvocationIdentity
        , MaintenanceWindowFilter
        , MaintenanceWindowIdentity
        , MaintenanceWindowResourceType(..)
        , MaintenanceWindowTarget
        , MaintenanceWindowTask
        , MaintenanceWindowTaskParameterValueExpression
        , MaintenanceWindowTaskType(..)
        , MaxDocumentSizeExceeded
        , ModifyDocumentPermissionResponse
        , NotificationConfig
        , NotificationEvent(..)
        , NotificationType(..)
        , Parameter
        , ParameterAlreadyExists
        , ParameterHistory
        , ParameterLimitExceeded
        , ParameterMetadata
        , ParameterNotFound
        , ParameterType(..)
        , ParametersFilter
        , ParametersFilterKey(..)
        , Patch
        , PatchBaselineIdentity
        , PatchComplianceData
        , PatchComplianceDataState(..)
        , PatchDeploymentStatus(..)
        , PatchFilter
        , PatchFilterGroup
        , PatchFilterKey(..)
        , PatchGroupPatchBaselineMapping
        , PatchOperationType(..)
        , PatchOrchestratorFilter
        , PatchRule
        , PatchRuleGroup
        , PatchStatus
        , PingStatus(..)
        , PlatformType(..)
        , PutInventoryResult
        , PutParameterResult
        , RegisterDefaultPatchBaselineResult
        , RegisterPatchBaselineForPatchGroupResult
        , RegisterTargetWithMaintenanceWindowResult
        , RegisterTaskWithMaintenanceWindowResult
        , RemoveTagsFromResourceResult
        , ResourceInUseException
        , ResourceLimitExceededException
        , ResourceType(..)
        , ResourceTypeForTagging(..)
        , ResultAttribute
        , S3OutputLocation
        , S3OutputUrl
        , SendCommandResult
        , StartAutomationExecutionResult
        , StatusUnchanged
        , StepExecution
        , StopAutomationExecutionResult
        , Tag
        , Target
        , TooManyTagsError
        , TooManyUpdates
        , TotalSizeLimitExceededException
        , UnsupportedInventorySchemaVersionException
        , UnsupportedParameterType
        , UnsupportedPlatformType
        , UpdateAssociationResult
        , UpdateAssociationStatusResult
        , UpdateDocumentDefaultVersionResult
        , UpdateDocumentResult
        , UpdateMaintenanceWindowResult
        , UpdateManagedInstanceRoleResult
        , UpdatePatchBaselineResult
        )

{-| <p>Amazon EC2 Systems Manager is a collection of capabilities that helps you automate management tasks such as collecting system inventory, applying operating system (OS) patches, automating the creation of Amazon Machine Images (AMIs), and configuring operating systems (OSs) and applications at scale. Systems Manager works with managed instances: Amazon EC2 instances and servers or virtual machines (VMs) in your on-premises environment that are configured for Systems Manager. </p> <p>This references is intended to be used with the EC2 Systems Manager User Guide (<a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/systems-manager.html">Linux</a>) (<a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/systems-manager.html">Windows</a>).</p> <p>To get started, verify prerequisites and configure managed instances (<a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/systems-manager-prereqs.html">Linux</a>) (<a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/systems-manager-prereqs.html">Windows</a>).</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToResource](#addTagsToResource)
* [cancelCommand](#cancelCommand)
* [CancelCommandOptions](#CancelCommandOptions)
* [createActivation](#createActivation)
* [CreateActivationOptions](#CreateActivationOptions)
* [createAssociation](#createAssociation)
* [CreateAssociationOptions](#CreateAssociationOptions)
* [createAssociationBatch](#createAssociationBatch)
* [createDocument](#createDocument)
* [CreateDocumentOptions](#CreateDocumentOptions)
* [createMaintenanceWindow](#createMaintenanceWindow)
* [CreateMaintenanceWindowOptions](#CreateMaintenanceWindowOptions)
* [createPatchBaseline](#createPatchBaseline)
* [CreatePatchBaselineOptions](#CreatePatchBaselineOptions)
* [deleteActivation](#deleteActivation)
* [deleteAssociation](#deleteAssociation)
* [DeleteAssociationOptions](#DeleteAssociationOptions)
* [deleteDocument](#deleteDocument)
* [deleteMaintenanceWindow](#deleteMaintenanceWindow)
* [deleteParameter](#deleteParameter)
* [deletePatchBaseline](#deletePatchBaseline)
* [deregisterManagedInstance](#deregisterManagedInstance)
* [deregisterPatchBaselineForPatchGroup](#deregisterPatchBaselineForPatchGroup)
* [deregisterTargetFromMaintenanceWindow](#deregisterTargetFromMaintenanceWindow)
* [deregisterTaskFromMaintenanceWindow](#deregisterTaskFromMaintenanceWindow)
* [describeActivations](#describeActivations)
* [DescribeActivationsOptions](#DescribeActivationsOptions)
* [describeAssociation](#describeAssociation)
* [DescribeAssociationOptions](#DescribeAssociationOptions)
* [describeAutomationExecutions](#describeAutomationExecutions)
* [DescribeAutomationExecutionsOptions](#DescribeAutomationExecutionsOptions)
* [describeAvailablePatches](#describeAvailablePatches)
* [DescribeAvailablePatchesOptions](#DescribeAvailablePatchesOptions)
* [describeDocument](#describeDocument)
* [DescribeDocumentOptions](#DescribeDocumentOptions)
* [describeDocumentPermission](#describeDocumentPermission)
* [describeEffectiveInstanceAssociations](#describeEffectiveInstanceAssociations)
* [DescribeEffectiveInstanceAssociationsOptions](#DescribeEffectiveInstanceAssociationsOptions)
* [describeEffectivePatchesForPatchBaseline](#describeEffectivePatchesForPatchBaseline)
* [DescribeEffectivePatchesForPatchBaselineOptions](#DescribeEffectivePatchesForPatchBaselineOptions)
* [describeInstanceAssociationsStatus](#describeInstanceAssociationsStatus)
* [DescribeInstanceAssociationsStatusOptions](#DescribeInstanceAssociationsStatusOptions)
* [describeInstanceInformation](#describeInstanceInformation)
* [DescribeInstanceInformationOptions](#DescribeInstanceInformationOptions)
* [describeInstancePatchStates](#describeInstancePatchStates)
* [DescribeInstancePatchStatesOptions](#DescribeInstancePatchStatesOptions)
* [describeInstancePatchStatesForPatchGroup](#describeInstancePatchStatesForPatchGroup)
* [DescribeInstancePatchStatesForPatchGroupOptions](#DescribeInstancePatchStatesForPatchGroupOptions)
* [describeInstancePatches](#describeInstancePatches)
* [DescribeInstancePatchesOptions](#DescribeInstancePatchesOptions)
* [describeMaintenanceWindowExecutionTaskInvocations](#describeMaintenanceWindowExecutionTaskInvocations)
* [DescribeMaintenanceWindowExecutionTaskInvocationsOptions](#DescribeMaintenanceWindowExecutionTaskInvocationsOptions)
* [describeMaintenanceWindowExecutionTasks](#describeMaintenanceWindowExecutionTasks)
* [DescribeMaintenanceWindowExecutionTasksOptions](#DescribeMaintenanceWindowExecutionTasksOptions)
* [describeMaintenanceWindowExecutions](#describeMaintenanceWindowExecutions)
* [DescribeMaintenanceWindowExecutionsOptions](#DescribeMaintenanceWindowExecutionsOptions)
* [describeMaintenanceWindowTargets](#describeMaintenanceWindowTargets)
* [DescribeMaintenanceWindowTargetsOptions](#DescribeMaintenanceWindowTargetsOptions)
* [describeMaintenanceWindowTasks](#describeMaintenanceWindowTasks)
* [DescribeMaintenanceWindowTasksOptions](#DescribeMaintenanceWindowTasksOptions)
* [describeMaintenanceWindows](#describeMaintenanceWindows)
* [DescribeMaintenanceWindowsOptions](#DescribeMaintenanceWindowsOptions)
* [describeParameters](#describeParameters)
* [DescribeParametersOptions](#DescribeParametersOptions)
* [describePatchBaselines](#describePatchBaselines)
* [DescribePatchBaselinesOptions](#DescribePatchBaselinesOptions)
* [describePatchGroupState](#describePatchGroupState)
* [describePatchGroups](#describePatchGroups)
* [DescribePatchGroupsOptions](#DescribePatchGroupsOptions)
* [getAutomationExecution](#getAutomationExecution)
* [getCommandInvocation](#getCommandInvocation)
* [GetCommandInvocationOptions](#GetCommandInvocationOptions)
* [getDefaultPatchBaseline](#getDefaultPatchBaseline)
* [getDeployablePatchSnapshotForInstance](#getDeployablePatchSnapshotForInstance)
* [getDocument](#getDocument)
* [GetDocumentOptions](#GetDocumentOptions)
* [getInventory](#getInventory)
* [GetInventoryOptions](#GetInventoryOptions)
* [getInventorySchema](#getInventorySchema)
* [GetInventorySchemaOptions](#GetInventorySchemaOptions)
* [getMaintenanceWindow](#getMaintenanceWindow)
* [getMaintenanceWindowExecution](#getMaintenanceWindowExecution)
* [getMaintenanceWindowExecutionTask](#getMaintenanceWindowExecutionTask)
* [getParameterHistory](#getParameterHistory)
* [GetParameterHistoryOptions](#GetParameterHistoryOptions)
* [getParameters](#getParameters)
* [GetParametersOptions](#GetParametersOptions)
* [getPatchBaseline](#getPatchBaseline)
* [getPatchBaselineForPatchGroup](#getPatchBaselineForPatchGroup)
* [listAssociations](#listAssociations)
* [ListAssociationsOptions](#ListAssociationsOptions)
* [listCommandInvocations](#listCommandInvocations)
* [ListCommandInvocationsOptions](#ListCommandInvocationsOptions)
* [listCommands](#listCommands)
* [ListCommandsOptions](#ListCommandsOptions)
* [listDocumentVersions](#listDocumentVersions)
* [ListDocumentVersionsOptions](#ListDocumentVersionsOptions)
* [listDocuments](#listDocuments)
* [ListDocumentsOptions](#ListDocumentsOptions)
* [listInventoryEntries](#listInventoryEntries)
* [ListInventoryEntriesOptions](#ListInventoryEntriesOptions)
* [listTagsForResource](#listTagsForResource)
* [modifyDocumentPermission](#modifyDocumentPermission)
* [ModifyDocumentPermissionOptions](#ModifyDocumentPermissionOptions)
* [putInventory](#putInventory)
* [putParameter](#putParameter)
* [PutParameterOptions](#PutParameterOptions)
* [registerDefaultPatchBaseline](#registerDefaultPatchBaseline)
* [registerPatchBaselineForPatchGroup](#registerPatchBaselineForPatchGroup)
* [registerTargetWithMaintenanceWindow](#registerTargetWithMaintenanceWindow)
* [RegisterTargetWithMaintenanceWindowOptions](#RegisterTargetWithMaintenanceWindowOptions)
* [registerTaskWithMaintenanceWindow](#registerTaskWithMaintenanceWindow)
* [RegisterTaskWithMaintenanceWindowOptions](#RegisterTaskWithMaintenanceWindowOptions)
* [removeTagsFromResource](#removeTagsFromResource)
* [sendCommand](#sendCommand)
* [SendCommandOptions](#SendCommandOptions)
* [startAutomationExecution](#startAutomationExecution)
* [StartAutomationExecutionOptions](#StartAutomationExecutionOptions)
* [stopAutomationExecution](#stopAutomationExecution)
* [updateAssociation](#updateAssociation)
* [UpdateAssociationOptions](#UpdateAssociationOptions)
* [updateAssociationStatus](#updateAssociationStatus)
* [updateDocument](#updateDocument)
* [UpdateDocumentOptions](#UpdateDocumentOptions)
* [updateDocumentDefaultVersion](#updateDocumentDefaultVersion)
* [updateMaintenanceWindow](#updateMaintenanceWindow)
* [UpdateMaintenanceWindowOptions](#UpdateMaintenanceWindowOptions)
* [updateManagedInstanceRole](#updateManagedInstanceRole)
* [updatePatchBaseline](#updatePatchBaseline)
* [UpdatePatchBaselineOptions](#UpdatePatchBaselineOptions)


@docs addTagsToResource,cancelCommand,CancelCommandOptions,createActivation,CreateActivationOptions,createAssociation,CreateAssociationOptions,createAssociationBatch,createDocument,CreateDocumentOptions,createMaintenanceWindow,CreateMaintenanceWindowOptions,createPatchBaseline,CreatePatchBaselineOptions,deleteActivation,deleteAssociation,DeleteAssociationOptions,deleteDocument,deleteMaintenanceWindow,deleteParameter,deletePatchBaseline,deregisterManagedInstance,deregisterPatchBaselineForPatchGroup,deregisterTargetFromMaintenanceWindow,deregisterTaskFromMaintenanceWindow,describeActivations,DescribeActivationsOptions,describeAssociation,DescribeAssociationOptions,describeAutomationExecutions,DescribeAutomationExecutionsOptions,describeAvailablePatches,DescribeAvailablePatchesOptions,describeDocument,DescribeDocumentOptions,describeDocumentPermission,describeEffectiveInstanceAssociations,DescribeEffectiveInstanceAssociationsOptions,describeEffectivePatchesForPatchBaseline,DescribeEffectivePatchesForPatchBaselineOptions,describeInstanceAssociationsStatus,DescribeInstanceAssociationsStatusOptions,describeInstanceInformation,DescribeInstanceInformationOptions,describeInstancePatchStates,DescribeInstancePatchStatesOptions,describeInstancePatchStatesForPatchGroup,DescribeInstancePatchStatesForPatchGroupOptions,describeInstancePatches,DescribeInstancePatchesOptions,describeMaintenanceWindowExecutionTaskInvocations,DescribeMaintenanceWindowExecutionTaskInvocationsOptions,describeMaintenanceWindowExecutionTasks,DescribeMaintenanceWindowExecutionTasksOptions,describeMaintenanceWindowExecutions,DescribeMaintenanceWindowExecutionsOptions,describeMaintenanceWindowTargets,DescribeMaintenanceWindowTargetsOptions,describeMaintenanceWindowTasks,DescribeMaintenanceWindowTasksOptions,describeMaintenanceWindows,DescribeMaintenanceWindowsOptions,describeParameters,DescribeParametersOptions,describePatchBaselines,DescribePatchBaselinesOptions,describePatchGroupState,describePatchGroups,DescribePatchGroupsOptions,getAutomationExecution,getCommandInvocation,GetCommandInvocationOptions,getDefaultPatchBaseline,getDeployablePatchSnapshotForInstance,getDocument,GetDocumentOptions,getInventory,GetInventoryOptions,getInventorySchema,GetInventorySchemaOptions,getMaintenanceWindow,getMaintenanceWindowExecution,getMaintenanceWindowExecutionTask,getParameterHistory,GetParameterHistoryOptions,getParameters,GetParametersOptions,getPatchBaseline,getPatchBaselineForPatchGroup,listAssociations,ListAssociationsOptions,listCommandInvocations,ListCommandInvocationsOptions,listCommands,ListCommandsOptions,listDocumentVersions,ListDocumentVersionsOptions,listDocuments,ListDocumentsOptions,listInventoryEntries,ListInventoryEntriesOptions,listTagsForResource,modifyDocumentPermission,ModifyDocumentPermissionOptions,putInventory,putParameter,PutParameterOptions,registerDefaultPatchBaseline,registerPatchBaselineForPatchGroup,registerTargetWithMaintenanceWindow,RegisterTargetWithMaintenanceWindowOptions,registerTaskWithMaintenanceWindow,RegisterTaskWithMaintenanceWindowOptions,removeTagsFromResource,sendCommand,SendCommandOptions,startAutomationExecution,StartAutomationExecutionOptions,stopAutomationExecution,updateAssociation,UpdateAssociationOptions,updateAssociationStatus,updateDocument,UpdateDocumentOptions,updateDocumentDefaultVersion,updateMaintenanceWindow,UpdateMaintenanceWindowOptions,updateManagedInstanceRole,updatePatchBaseline,UpdatePatchBaselineOptions

## Responses

* [AddTagsToResourceResult](#AddTagsToResourceResult)
* [CancelCommandResult](#CancelCommandResult)
* [CreateActivationResult](#CreateActivationResult)
* [CreateAssociationBatchResult](#CreateAssociationBatchResult)
* [CreateAssociationResult](#CreateAssociationResult)
* [CreateDocumentResult](#CreateDocumentResult)
* [CreateMaintenanceWindowResult](#CreateMaintenanceWindowResult)
* [CreatePatchBaselineResult](#CreatePatchBaselineResult)
* [DeleteActivationResult](#DeleteActivationResult)
* [DeleteAssociationResult](#DeleteAssociationResult)
* [DeleteDocumentResult](#DeleteDocumentResult)
* [DeleteMaintenanceWindowResult](#DeleteMaintenanceWindowResult)
* [DeleteParameterResult](#DeleteParameterResult)
* [DeletePatchBaselineResult](#DeletePatchBaselineResult)
* [DeregisterManagedInstanceResult](#DeregisterManagedInstanceResult)
* [DeregisterPatchBaselineForPatchGroupResult](#DeregisterPatchBaselineForPatchGroupResult)
* [DeregisterTargetFromMaintenanceWindowResult](#DeregisterTargetFromMaintenanceWindowResult)
* [DeregisterTaskFromMaintenanceWindowResult](#DeregisterTaskFromMaintenanceWindowResult)
* [DescribeActivationsResult](#DescribeActivationsResult)
* [DescribeAssociationResult](#DescribeAssociationResult)
* [DescribeAutomationExecutionsResult](#DescribeAutomationExecutionsResult)
* [DescribeAvailablePatchesResult](#DescribeAvailablePatchesResult)
* [DescribeDocumentPermissionResponse](#DescribeDocumentPermissionResponse)
* [DescribeDocumentResult](#DescribeDocumentResult)
* [DescribeEffectiveInstanceAssociationsResult](#DescribeEffectiveInstanceAssociationsResult)
* [DescribeEffectivePatchesForPatchBaselineResult](#DescribeEffectivePatchesForPatchBaselineResult)
* [DescribeInstanceAssociationsStatusResult](#DescribeInstanceAssociationsStatusResult)
* [DescribeInstanceInformationResult](#DescribeInstanceInformationResult)
* [DescribeInstancePatchStatesForPatchGroupResult](#DescribeInstancePatchStatesForPatchGroupResult)
* [DescribeInstancePatchStatesResult](#DescribeInstancePatchStatesResult)
* [DescribeInstancePatchesResult](#DescribeInstancePatchesResult)
* [DescribeMaintenanceWindowExecutionTaskInvocationsResult](#DescribeMaintenanceWindowExecutionTaskInvocationsResult)
* [DescribeMaintenanceWindowExecutionTasksResult](#DescribeMaintenanceWindowExecutionTasksResult)
* [DescribeMaintenanceWindowExecutionsResult](#DescribeMaintenanceWindowExecutionsResult)
* [DescribeMaintenanceWindowTargetsResult](#DescribeMaintenanceWindowTargetsResult)
* [DescribeMaintenanceWindowTasksResult](#DescribeMaintenanceWindowTasksResult)
* [DescribeMaintenanceWindowsResult](#DescribeMaintenanceWindowsResult)
* [DescribeParametersResult](#DescribeParametersResult)
* [DescribePatchBaselinesResult](#DescribePatchBaselinesResult)
* [DescribePatchGroupStateResult](#DescribePatchGroupStateResult)
* [DescribePatchGroupsResult](#DescribePatchGroupsResult)
* [GetAutomationExecutionResult](#GetAutomationExecutionResult)
* [GetCommandInvocationResult](#GetCommandInvocationResult)
* [GetDefaultPatchBaselineResult](#GetDefaultPatchBaselineResult)
* [GetDeployablePatchSnapshotForInstanceResult](#GetDeployablePatchSnapshotForInstanceResult)
* [GetDocumentResult](#GetDocumentResult)
* [GetInventoryResult](#GetInventoryResult)
* [GetInventorySchemaResult](#GetInventorySchemaResult)
* [GetMaintenanceWindowExecutionResult](#GetMaintenanceWindowExecutionResult)
* [GetMaintenanceWindowExecutionTaskResult](#GetMaintenanceWindowExecutionTaskResult)
* [GetMaintenanceWindowResult](#GetMaintenanceWindowResult)
* [GetParameterHistoryResult](#GetParameterHistoryResult)
* [GetParametersResult](#GetParametersResult)
* [GetPatchBaselineForPatchGroupResult](#GetPatchBaselineForPatchGroupResult)
* [GetPatchBaselineResult](#GetPatchBaselineResult)
* [ListAssociationsResult](#ListAssociationsResult)
* [ListCommandInvocationsResult](#ListCommandInvocationsResult)
* [ListCommandsResult](#ListCommandsResult)
* [ListDocumentVersionsResult](#ListDocumentVersionsResult)
* [ListDocumentsResult](#ListDocumentsResult)
* [ListInventoryEntriesResult](#ListInventoryEntriesResult)
* [ListTagsForResourceResult](#ListTagsForResourceResult)
* [ModifyDocumentPermissionResponse](#ModifyDocumentPermissionResponse)
* [PutInventoryResult](#PutInventoryResult)
* [PutParameterResult](#PutParameterResult)
* [RegisterDefaultPatchBaselineResult](#RegisterDefaultPatchBaselineResult)
* [RegisterPatchBaselineForPatchGroupResult](#RegisterPatchBaselineForPatchGroupResult)
* [RegisterTargetWithMaintenanceWindowResult](#RegisterTargetWithMaintenanceWindowResult)
* [RegisterTaskWithMaintenanceWindowResult](#RegisterTaskWithMaintenanceWindowResult)
* [RemoveTagsFromResourceResult](#RemoveTagsFromResourceResult)
* [SendCommandResult](#SendCommandResult)
* [StartAutomationExecutionResult](#StartAutomationExecutionResult)
* [StopAutomationExecutionResult](#StopAutomationExecutionResult)
* [UpdateAssociationResult](#UpdateAssociationResult)
* [UpdateAssociationStatusResult](#UpdateAssociationStatusResult)
* [UpdateDocumentDefaultVersionResult](#UpdateDocumentDefaultVersionResult)
* [UpdateDocumentResult](#UpdateDocumentResult)
* [UpdateMaintenanceWindowResult](#UpdateMaintenanceWindowResult)
* [UpdateManagedInstanceRoleResult](#UpdateManagedInstanceRoleResult)
* [UpdatePatchBaselineResult](#UpdatePatchBaselineResult)


@docs AddTagsToResourceResult,CancelCommandResult,CreateActivationResult,CreateAssociationBatchResult,CreateAssociationResult,CreateDocumentResult,CreateMaintenanceWindowResult,CreatePatchBaselineResult,DeleteActivationResult,DeleteAssociationResult,DeleteDocumentResult,DeleteMaintenanceWindowResult,DeleteParameterResult,DeletePatchBaselineResult,DeregisterManagedInstanceResult,DeregisterPatchBaselineForPatchGroupResult,DeregisterTargetFromMaintenanceWindowResult,DeregisterTaskFromMaintenanceWindowResult,DescribeActivationsResult,DescribeAssociationResult,DescribeAutomationExecutionsResult,DescribeAvailablePatchesResult,DescribeDocumentPermissionResponse,DescribeDocumentResult,DescribeEffectiveInstanceAssociationsResult,DescribeEffectivePatchesForPatchBaselineResult,DescribeInstanceAssociationsStatusResult,DescribeInstanceInformationResult,DescribeInstancePatchStatesForPatchGroupResult,DescribeInstancePatchStatesResult,DescribeInstancePatchesResult,DescribeMaintenanceWindowExecutionTaskInvocationsResult,DescribeMaintenanceWindowExecutionTasksResult,DescribeMaintenanceWindowExecutionsResult,DescribeMaintenanceWindowTargetsResult,DescribeMaintenanceWindowTasksResult,DescribeMaintenanceWindowsResult,DescribeParametersResult,DescribePatchBaselinesResult,DescribePatchGroupStateResult,DescribePatchGroupsResult,GetAutomationExecutionResult,GetCommandInvocationResult,GetDefaultPatchBaselineResult,GetDeployablePatchSnapshotForInstanceResult,GetDocumentResult,GetInventoryResult,GetInventorySchemaResult,GetMaintenanceWindowExecutionResult,GetMaintenanceWindowExecutionTaskResult,GetMaintenanceWindowResult,GetParameterHistoryResult,GetParametersResult,GetPatchBaselineForPatchGroupResult,GetPatchBaselineResult,ListAssociationsResult,ListCommandInvocationsResult,ListCommandsResult,ListDocumentVersionsResult,ListDocumentsResult,ListInventoryEntriesResult,ListTagsForResourceResult,ModifyDocumentPermissionResponse,PutInventoryResult,PutParameterResult,RegisterDefaultPatchBaselineResult,RegisterPatchBaselineForPatchGroupResult,RegisterTargetWithMaintenanceWindowResult,RegisterTaskWithMaintenanceWindowResult,RemoveTagsFromResourceResult,SendCommandResult,StartAutomationExecutionResult,StopAutomationExecutionResult,UpdateAssociationResult,UpdateAssociationStatusResult,UpdateDocumentDefaultVersionResult,UpdateDocumentResult,UpdateMaintenanceWindowResult,UpdateManagedInstanceRoleResult,UpdatePatchBaselineResult

## Records

* [Activation](#Activation)
* [Association](#Association)
* [AssociationDescription](#AssociationDescription)
* [AssociationFilter](#AssociationFilter)
* [AssociationOverview](#AssociationOverview)
* [AssociationStatus](#AssociationStatus)
* [AutomationExecution](#AutomationExecution)
* [AutomationExecutionFilter](#AutomationExecutionFilter)
* [AutomationExecutionMetadata](#AutomationExecutionMetadata)
* [Command](#Command)
* [CommandFilter](#CommandFilter)
* [CommandInvocation](#CommandInvocation)
* [CommandPlugin](#CommandPlugin)
* [CreateAssociationBatchRequestEntry](#CreateAssociationBatchRequestEntry)
* [DescribeActivationsFilter](#DescribeActivationsFilter)
* [DocumentDefaultVersionDescription](#DocumentDefaultVersionDescription)
* [DocumentDescription](#DocumentDescription)
* [DocumentFilter](#DocumentFilter)
* [DocumentIdentifier](#DocumentIdentifier)
* [DocumentParameter](#DocumentParameter)
* [DocumentVersionInfo](#DocumentVersionInfo)
* [EffectivePatch](#EffectivePatch)
* [FailedCreateAssociation](#FailedCreateAssociation)
* [InstanceAggregatedAssociationOverview](#InstanceAggregatedAssociationOverview)
* [InstanceAssociation](#InstanceAssociation)
* [InstanceAssociationOutputLocation](#InstanceAssociationOutputLocation)
* [InstanceAssociationOutputUrl](#InstanceAssociationOutputUrl)
* [InstanceAssociationStatusInfo](#InstanceAssociationStatusInfo)
* [InstanceInformation](#InstanceInformation)
* [InstanceInformationFilter](#InstanceInformationFilter)
* [InstanceInformationStringFilter](#InstanceInformationStringFilter)
* [InstancePatchState](#InstancePatchState)
* [InstancePatchStateFilter](#InstancePatchStateFilter)
* [InventoryFilter](#InventoryFilter)
* [InventoryItem](#InventoryItem)
* [InventoryItemAttribute](#InventoryItemAttribute)
* [InventoryItemSchema](#InventoryItemSchema)
* [InventoryResultEntity](#InventoryResultEntity)
* [InventoryResultItem](#InventoryResultItem)
* [LoggingInfo](#LoggingInfo)
* [MaintenanceWindowExecution](#MaintenanceWindowExecution)
* [MaintenanceWindowExecutionTaskIdentity](#MaintenanceWindowExecutionTaskIdentity)
* [MaintenanceWindowExecutionTaskInvocationIdentity](#MaintenanceWindowExecutionTaskInvocationIdentity)
* [MaintenanceWindowFilter](#MaintenanceWindowFilter)
* [MaintenanceWindowIdentity](#MaintenanceWindowIdentity)
* [MaintenanceWindowTarget](#MaintenanceWindowTarget)
* [MaintenanceWindowTask](#MaintenanceWindowTask)
* [MaintenanceWindowTaskParameterValueExpression](#MaintenanceWindowTaskParameterValueExpression)
* [NotificationConfig](#NotificationConfig)
* [Parameter](#Parameter)
* [ParameterHistory](#ParameterHistory)
* [ParameterMetadata](#ParameterMetadata)
* [ParametersFilter](#ParametersFilter)
* [Patch](#Patch)
* [PatchBaselineIdentity](#PatchBaselineIdentity)
* [PatchComplianceData](#PatchComplianceData)
* [PatchFilter](#PatchFilter)
* [PatchFilterGroup](#PatchFilterGroup)
* [PatchGroupPatchBaselineMapping](#PatchGroupPatchBaselineMapping)
* [PatchOrchestratorFilter](#PatchOrchestratorFilter)
* [PatchRule](#PatchRule)
* [PatchRuleGroup](#PatchRuleGroup)
* [PatchStatus](#PatchStatus)
* [ResultAttribute](#ResultAttribute)
* [S3OutputLocation](#S3OutputLocation)
* [S3OutputUrl](#S3OutputUrl)
* [StepExecution](#StepExecution)
* [Tag](#Tag)
* [Target](#Target)


@docs Activation,Association,AssociationDescription,AssociationFilter,AssociationOverview,AssociationStatus,AutomationExecution,AutomationExecutionFilter,AutomationExecutionMetadata,Command,CommandFilter,CommandInvocation,CommandPlugin,CreateAssociationBatchRequestEntry,DescribeActivationsFilter,DocumentDefaultVersionDescription,DocumentDescription,DocumentFilter,DocumentIdentifier,DocumentParameter,DocumentVersionInfo,EffectivePatch,FailedCreateAssociation,InstanceAggregatedAssociationOverview,InstanceAssociation,InstanceAssociationOutputLocation,InstanceAssociationOutputUrl,InstanceAssociationStatusInfo,InstanceInformation,InstanceInformationFilter,InstanceInformationStringFilter,InstancePatchState,InstancePatchStateFilter,InventoryFilter,InventoryItem,InventoryItemAttribute,InventoryItemSchema,InventoryResultEntity,InventoryResultItem,LoggingInfo,MaintenanceWindowExecution,MaintenanceWindowExecutionTaskIdentity,MaintenanceWindowExecutionTaskInvocationIdentity,MaintenanceWindowFilter,MaintenanceWindowIdentity,MaintenanceWindowTarget,MaintenanceWindowTask,MaintenanceWindowTaskParameterValueExpression,NotificationConfig,Parameter,ParameterHistory,ParameterMetadata,ParametersFilter,Patch,PatchBaselineIdentity,PatchComplianceData,PatchFilter,PatchFilterGroup,PatchGroupPatchBaselineMapping,PatchOrchestratorFilter,PatchRule,PatchRuleGroup,PatchStatus,ResultAttribute,S3OutputLocation,S3OutputUrl,StepExecution,Tag,Target

## Unions

* [AssociationFilterKey](#AssociationFilterKey)
* [AssociationStatusName](#AssociationStatusName)
* [AutomationExecutionFilterKey](#AutomationExecutionFilterKey)
* [AutomationExecutionStatus](#AutomationExecutionStatus)
* [CommandFilterKey](#CommandFilterKey)
* [CommandInvocationStatus](#CommandInvocationStatus)
* [CommandPluginStatus](#CommandPluginStatus)
* [CommandStatus](#CommandStatus)
* [DescribeActivationsFilterKeys](#DescribeActivationsFilterKeys)
* [DocumentFilterKey](#DocumentFilterKey)
* [DocumentHashType](#DocumentHashType)
* [DocumentParameterType](#DocumentParameterType)
* [DocumentPermissionType](#DocumentPermissionType)
* [DocumentStatus](#DocumentStatus)
* [DocumentType](#DocumentType)
* [Fault](#Fault)
* [InstanceInformationFilterKey](#InstanceInformationFilterKey)
* [InstancePatchStateOperatorType](#InstancePatchStateOperatorType)
* [InventoryAttributeDataType](#InventoryAttributeDataType)
* [InventoryQueryOperatorType](#InventoryQueryOperatorType)
* [MaintenanceWindowExecutionStatus](#MaintenanceWindowExecutionStatus)
* [MaintenanceWindowResourceType](#MaintenanceWindowResourceType)
* [MaintenanceWindowTaskType](#MaintenanceWindowTaskType)
* [NotificationEvent](#NotificationEvent)
* [NotificationType](#NotificationType)
* [ParameterType](#ParameterType)
* [ParametersFilterKey](#ParametersFilterKey)
* [PatchComplianceDataState](#PatchComplianceDataState)
* [PatchDeploymentStatus](#PatchDeploymentStatus)
* [PatchFilterKey](#PatchFilterKey)
* [PatchOperationType](#PatchOperationType)
* [PingStatus](#PingStatus)
* [PlatformType](#PlatformType)
* [ResourceType](#ResourceType)
* [ResourceTypeForTagging](#ResourceTypeForTagging)


@docs AssociationFilterKey,AssociationStatusName,AutomationExecutionFilterKey,AutomationExecutionStatus,CommandFilterKey,CommandInvocationStatus,CommandPluginStatus,CommandStatus,DescribeActivationsFilterKeys,DocumentFilterKey,DocumentHashType,DocumentParameterType,DocumentPermissionType,DocumentStatus,DocumentType,Fault,InstanceInformationFilterKey,InstancePatchStateOperatorType,InventoryAttributeDataType,InventoryQueryOperatorType,MaintenanceWindowExecutionStatus,MaintenanceWindowResourceType,MaintenanceWindowTaskType,NotificationEvent,NotificationType,ParameterType,ParametersFilterKey,PatchComplianceDataState,PatchDeploymentStatus,PatchFilterKey,PatchOperationType,PingStatus,PlatformType,ResourceType,ResourceTypeForTagging

## Exceptions

* [AlreadyExistsException](#AlreadyExistsException)
* [AssociatedInstances](#AssociatedInstances)
* [AssociationAlreadyExists](#AssociationAlreadyExists)
* [AssociationDoesNotExist](#AssociationDoesNotExist)
* [AssociationLimitExceeded](#AssociationLimitExceeded)
* [AutomationDefinitionNotFoundException](#AutomationDefinitionNotFoundException)
* [AutomationDefinitionVersionNotFoundException](#AutomationDefinitionVersionNotFoundException)
* [AutomationExecutionLimitExceededException](#AutomationExecutionLimitExceededException)
* [AutomationExecutionNotFoundException](#AutomationExecutionNotFoundException)
* [CustomSchemaCountLimitExceededException](#CustomSchemaCountLimitExceededException)
* [DocumentAlreadyExists](#DocumentAlreadyExists)
* [DocumentLimitExceeded](#DocumentLimitExceeded)
* [DocumentPermissionLimit](#DocumentPermissionLimit)
* [DocumentVersionLimitExceeded](#DocumentVersionLimitExceeded)
* [DoesNotExistException](#DoesNotExistException)
* [DuplicateDocumentContent](#DuplicateDocumentContent)
* [DuplicateInstanceId](#DuplicateInstanceId)
* [IdempotentParameterMismatch](#IdempotentParameterMismatch)
* [InternalServerError](#InternalServerError)
* [InvalidActivation](#InvalidActivation)
* [InvalidActivationId](#InvalidActivationId)
* [InvalidAutomationExecutionParametersException](#InvalidAutomationExecutionParametersException)
* [InvalidCommandId](#InvalidCommandId)
* [InvalidDocument](#InvalidDocument)
* [InvalidDocumentContent](#InvalidDocumentContent)
* [InvalidDocumentOperation](#InvalidDocumentOperation)
* [InvalidDocumentSchemaVersion](#InvalidDocumentSchemaVersion)
* [InvalidDocumentVersion](#InvalidDocumentVersion)
* [InvalidFilter](#InvalidFilter)
* [InvalidFilterKey](#InvalidFilterKey)
* [InvalidFilterValue](#InvalidFilterValue)
* [InvalidInstanceId](#InvalidInstanceId)
* [InvalidInstanceInformationFilterValue](#InvalidInstanceInformationFilterValue)
* [InvalidItemContentException](#InvalidItemContentException)
* [InvalidKeyId](#InvalidKeyId)
* [InvalidNextToken](#InvalidNextToken)
* [InvalidNotificationConfig](#InvalidNotificationConfig)
* [InvalidOutputFolder](#InvalidOutputFolder)
* [InvalidOutputLocation](#InvalidOutputLocation)
* [InvalidParameters](#InvalidParameters)
* [InvalidPermissionType](#InvalidPermissionType)
* [InvalidPluginName](#InvalidPluginName)
* [InvalidResourceId](#InvalidResourceId)
* [InvalidResourceType](#InvalidResourceType)
* [InvalidResultAttributeException](#InvalidResultAttributeException)
* [InvalidRole](#InvalidRole)
* [InvalidSchedule](#InvalidSchedule)
* [InvalidTarget](#InvalidTarget)
* [InvalidTypeNameException](#InvalidTypeNameException)
* [InvalidUpdate](#InvalidUpdate)
* [InvocationDoesNotExist](#InvocationDoesNotExist)
* [ItemContentMismatchException](#ItemContentMismatchException)
* [ItemSizeLimitExceededException](#ItemSizeLimitExceededException)
* [MaxDocumentSizeExceeded](#MaxDocumentSizeExceeded)
* [ParameterAlreadyExists](#ParameterAlreadyExists)
* [ParameterLimitExceeded](#ParameterLimitExceeded)
* [ParameterNotFound](#ParameterNotFound)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceLimitExceededException](#ResourceLimitExceededException)
* [StatusUnchanged](#StatusUnchanged)
* [TooManyTagsError](#TooManyTagsError)
* [TooManyUpdates](#TooManyUpdates)
* [TotalSizeLimitExceededException](#TotalSizeLimitExceededException)
* [UnsupportedInventorySchemaVersionException](#UnsupportedInventorySchemaVersionException)
* [UnsupportedParameterType](#UnsupportedParameterType)
* [UnsupportedPlatformType](#UnsupportedPlatformType)


@docs AlreadyExistsException,AssociatedInstances,AssociationAlreadyExists,AssociationDoesNotExist,AssociationLimitExceeded,AutomationDefinitionNotFoundException,AutomationDefinitionVersionNotFoundException,AutomationExecutionLimitExceededException,AutomationExecutionNotFoundException,CustomSchemaCountLimitExceededException,DocumentAlreadyExists,DocumentLimitExceeded,DocumentPermissionLimit,DocumentVersionLimitExceeded,DoesNotExistException,DuplicateDocumentContent,DuplicateInstanceId,IdempotentParameterMismatch,InternalServerError,InvalidActivation,InvalidActivationId,InvalidAutomationExecutionParametersException,InvalidCommandId,InvalidDocument,InvalidDocumentContent,InvalidDocumentOperation,InvalidDocumentSchemaVersion,InvalidDocumentVersion,InvalidFilter,InvalidFilterKey,InvalidFilterValue,InvalidInstanceId,InvalidInstanceInformationFilterValue,InvalidItemContentException,InvalidKeyId,InvalidNextToken,InvalidNotificationConfig,InvalidOutputFolder,InvalidOutputLocation,InvalidParameters,InvalidPermissionType,InvalidPluginName,InvalidResourceId,InvalidResourceType,InvalidResultAttributeException,InvalidRole,InvalidSchedule,InvalidTarget,InvalidTypeNameException,InvalidUpdate,InvocationDoesNotExist,ItemContentMismatchException,ItemSizeLimitExceededException,MaxDocumentSizeExceeded,ParameterAlreadyExists,ParameterLimitExceeded,ParameterNotFound,ResourceInUseException,ResourceLimitExceededException,StatusUnchanged,TooManyTagsError,TooManyUpdates,TotalSizeLimitExceededException,UnsupportedInventorySchemaVersionException,UnsupportedParameterType,UnsupportedPlatformType

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "ssm"
        "2014-11-06"
        "1.1"
        "AWSSSM_20141106."
        "ssm.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Adds or overwrites one or more tags for the specified resource. Tags are metadata that you assign to your managed instances. Tags enable you to categorize your managed instances in different ways, for example, by purpose, owner, or environment. Each tag consists of a key and an optional value, both of which you define. For example, you could define a set of tags for your account's managed instances that helps you track each instance's owner and stack level. For example: Key=Owner and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production, Pre-Production, or Test. Each resource can have a maximum of 10 tags. </p> <p>We recommend that you devise a set of tag keys that meets your needs for each resource type. Using a consistent set of tag keys makes it easier for you to manage your resources. You can search and filter the resources based on the tags you add. Tags don't have any semantic meaning to Amazon EC2 and are interpreted strictly as a string of characters. </p> <p>For more information about tags, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html">Tagging Your Amazon EC2 Resources</a> in the Amazon EC2 User Guide. </p>

__Required Parameters__

* `resourceType` __:__ `ResourceTypeForTagging`
* `resourceId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTagsToResource :
    ResourceTypeForTagging
    -> String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest AddTagsToResourceResult
addTagsToResource resourceType resourceId tags =
    AWS.Http.unsignedRequest
        "AddTagsToResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsToResourceResultDecoder



{-| <p>Attempts to cancel the command specified by the Command ID. There is no guarantee that the command will be terminated and the underlying process stopped.</p>

__Required Parameters__

* `commandId` __:__ `String`


-}
cancelCommand :
    String
    -> (CancelCommandOptions -> CancelCommandOptions)
    -> AWS.Http.UnsignedRequest CancelCommandResult
cancelCommand commandId setOptions =
  let
    options = setOptions (CancelCommandOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CancelCommand"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelCommandResultDecoder


{-| Options for a cancelCommand request
-}
type alias CancelCommandOptions =
    { instanceIds : Maybe (List String)
    }



{-| <p>Registers your on-premises server or virtual machine with Amazon EC2 so that you can manage these resources using Run Command. An on-premises server or virtual machine that has been registered with EC2 is called a managed instance. For more information about activations, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managed-instances.html">Setting Up Managed Instances (Linux)</a> or <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/managed-instances.html">Setting Up Managed Instances (Windows)</a> in the Amazon EC2 User Guide. </p>

__Required Parameters__

* `iamRole` __:__ `String`


-}
createActivation :
    String
    -> (CreateActivationOptions -> CreateActivationOptions)
    -> AWS.Http.UnsignedRequest CreateActivationResult
createActivation iamRole setOptions =
  let
    options = setOptions (CreateActivationOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateActivation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createActivationResultDecoder


{-| Options for a createActivation request
-}
type alias CreateActivationOptions =
    { description : Maybe String
    , defaultInstanceName : Maybe String
    , registrationLimit : Maybe Int
    , expirationDate : Maybe Date
    }



{-| <p>Associates the specified SSM document with the specified instances or targets.</p> <p>When you associate an SSM document with one or more instances using instance IDs or tags, the SSM agent running on the instance processes the document and configures the instance as specified.</p> <p>If you associate a document with an instance that already has an associated document, the system throws the AssociationAlreadyExists exception.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createAssociation :
    String
    -> (CreateAssociationOptions -> CreateAssociationOptions)
    -> AWS.Http.UnsignedRequest CreateAssociationResult
createAssociation name setOptions =
  let
    options = setOptions (CreateAssociationOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateAssociation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAssociationResultDecoder


{-| Options for a createAssociation request
-}
type alias CreateAssociationOptions =
    { documentVersion : Maybe String
    , instanceId : Maybe String
    , parameters : Maybe (Dict String (List String))
    , targets : Maybe (List Target)
    , scheduleExpression : Maybe String
    , outputLocation : Maybe InstanceAssociationOutputLocation
    }



{-| <p>Associates the specified SSM document with the specified instances or targets.</p> <p>When you associate an SSM document with one or more instances using instance IDs or tags, the SSM agent running on the instance processes the document and configures the instance as specified.</p> <p>If you associate a document with an instance that already has an associated document, the system throws the AssociationAlreadyExists exception.</p>

__Required Parameters__

* `entries` __:__ `(List CreateAssociationBatchRequestEntry)`


-}
createAssociationBatch :
    (List CreateAssociationBatchRequestEntry)
    -> AWS.Http.UnsignedRequest CreateAssociationBatchResult
createAssociationBatch entries =
    AWS.Http.unsignedRequest
        "CreateAssociationBatch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAssociationBatchResultDecoder



{-| <p>Creates an SSM document.</p> <p>After you create an SSM document, you can use CreateAssociation to associate it with one or more running instances.</p>

__Required Parameters__

* `content` __:__ `String`
* `name` __:__ `String`


-}
createDocument :
    String
    -> String
    -> (CreateDocumentOptions -> CreateDocumentOptions)
    -> AWS.Http.UnsignedRequest CreateDocumentResult
createDocument content name setOptions =
  let
    options = setOptions (CreateDocumentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDocument"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDocumentResultDecoder


{-| Options for a createDocument request
-}
type alias CreateDocumentOptions =
    { documentType : Maybe DocumentType
    }



{-| <p>Creates a new Maintenance Window.</p>

__Required Parameters__

* `name` __:__ `String`
* `schedule` __:__ `String`
* `duration` __:__ `Int`
* `cutoff` __:__ `Int`
* `allowUnassociatedTargets` __:__ `Bool`


-}
createMaintenanceWindow :
    String
    -> String
    -> Int
    -> Int
    -> Bool
    -> (CreateMaintenanceWindowOptions -> CreateMaintenanceWindowOptions)
    -> AWS.Http.UnsignedRequest CreateMaintenanceWindowResult
createMaintenanceWindow name schedule duration cutoff allowUnassociatedTargets setOptions =
  let
    options = setOptions (CreateMaintenanceWindowOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createMaintenanceWindowResultDecoder


{-| Options for a createMaintenanceWindow request
-}
type alias CreateMaintenanceWindowOptions =
    { clientToken : Maybe String
    }



{-| <p>Creates a patch baseline.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createPatchBaseline :
    String
    -> (CreatePatchBaselineOptions -> CreatePatchBaselineOptions)
    -> AWS.Http.UnsignedRequest CreatePatchBaselineResult
createPatchBaseline name setOptions =
  let
    options = setOptions (CreatePatchBaselineOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePatchBaseline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPatchBaselineResultDecoder


{-| Options for a createPatchBaseline request
-}
type alias CreatePatchBaselineOptions =
    { globalFilters : Maybe PatchFilterGroup
    , approvalRules : Maybe PatchRuleGroup
    , approvedPatches : Maybe (List String)
    , rejectedPatches : Maybe (List String)
    , description : Maybe String
    , clientToken : Maybe String
    }



{-| <p>Deletes an activation. You are not required to delete an activation. If you delete an activation, you can no longer use it to register additional managed instances. Deleting an activation does not de-register managed instances. You must manually de-register managed instances.</p>

__Required Parameters__

* `activationId` __:__ `String`


-}
deleteActivation :
    String
    -> AWS.Http.UnsignedRequest DeleteActivationResult
deleteActivation activationId =
    AWS.Http.unsignedRequest
        "DeleteActivation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteActivationResultDecoder



{-| <p>Disassociates the specified SSM document from the specified instance.</p> <p>When you disassociate an SSM document from an instance, it does not change the configuration of the instance. To change the configuration state of an instance after you disassociate a document, you must create a new document with the desired configuration and associate it with the instance.</p>

__Required Parameters__



-}
deleteAssociation :
    (DeleteAssociationOptions -> DeleteAssociationOptions)
    -> AWS.Http.UnsignedRequest DeleteAssociationResult
deleteAssociation setOptions =
  let
    options = setOptions (DeleteAssociationOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteAssociation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteAssociationResultDecoder


{-| Options for a deleteAssociation request
-}
type alias DeleteAssociationOptions =
    { name : Maybe String
    , instanceId : Maybe String
    , associationId : Maybe String
    }



{-| <p>Deletes the SSM document and all instance associations to the document.</p> <p>Before you delete the SSM document, we recommend that you use DeleteAssociation to disassociate all instances that are associated with the document.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteDocument :
    String
    -> AWS.Http.UnsignedRequest DeleteDocumentResult
deleteDocument name =
    AWS.Http.unsignedRequest
        "DeleteDocument"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDocumentResultDecoder



{-| <p>Deletes a Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`


-}
deleteMaintenanceWindow :
    String
    -> AWS.Http.UnsignedRequest DeleteMaintenanceWindowResult
deleteMaintenanceWindow windowId =
    AWS.Http.unsignedRequest
        "DeleteMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteMaintenanceWindowResultDecoder



{-| <p>Delete a parameter from the system.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteParameter :
    String
    -> AWS.Http.UnsignedRequest DeleteParameterResult
deleteParameter name =
    AWS.Http.unsignedRequest
        "DeleteParameter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteParameterResultDecoder



{-| <p>Deletes a patch baseline.</p>

__Required Parameters__

* `baselineId` __:__ `String`


-}
deletePatchBaseline :
    String
    -> AWS.Http.UnsignedRequest DeletePatchBaselineResult
deletePatchBaseline baselineId =
    AWS.Http.unsignedRequest
        "DeletePatchBaseline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deletePatchBaselineResultDecoder



{-| <p>Removes the server or virtual machine from the list of registered servers. You can reregister the instance again at any time. If you don’t plan to use Run Command on the server, we suggest uninstalling the SSM agent first.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
deregisterManagedInstance :
    String
    -> AWS.Http.UnsignedRequest DeregisterManagedInstanceResult
deregisterManagedInstance instanceId =
    AWS.Http.unsignedRequest
        "DeregisterManagedInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterManagedInstanceResultDecoder



{-| <p>Removes a patch group from a patch baseline.</p>

__Required Parameters__

* `baselineId` __:__ `String`
* `patchGroup` __:__ `String`


-}
deregisterPatchBaselineForPatchGroup :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeregisterPatchBaselineForPatchGroupResult
deregisterPatchBaselineForPatchGroup baselineId patchGroup =
    AWS.Http.unsignedRequest
        "DeregisterPatchBaselineForPatchGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterPatchBaselineForPatchGroupResultDecoder



{-| <p>Removes a target from a Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`
* `windowTargetId` __:__ `String`


-}
deregisterTargetFromMaintenanceWindow :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeregisterTargetFromMaintenanceWindowResult
deregisterTargetFromMaintenanceWindow windowId windowTargetId =
    AWS.Http.unsignedRequest
        "DeregisterTargetFromMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterTargetFromMaintenanceWindowResultDecoder



{-| <p>Removes a task from a Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`
* `windowTaskId` __:__ `String`


-}
deregisterTaskFromMaintenanceWindow :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeregisterTaskFromMaintenanceWindowResult
deregisterTaskFromMaintenanceWindow windowId windowTaskId =
    AWS.Http.unsignedRequest
        "DeregisterTaskFromMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deregisterTaskFromMaintenanceWindowResultDecoder



{-| <p>Details about the activation, including: the date and time the activation was created, the expiration date, the IAM role assigned to the instances in the activation, and the number of instances activated by this registration.</p>

__Required Parameters__



-}
describeActivations :
    (DescribeActivationsOptions -> DescribeActivationsOptions)
    -> AWS.Http.UnsignedRequest DescribeActivationsResult
describeActivations setOptions =
  let
    options = setOptions (DescribeActivationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeActivations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeActivationsResultDecoder


{-| Options for a describeActivations request
-}
type alias DescribeActivationsOptions =
    { filters : Maybe (List DescribeActivationsFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes the associations for the specified SSM document or instance.</p>

__Required Parameters__



-}
describeAssociation :
    (DescribeAssociationOptions -> DescribeAssociationOptions)
    -> AWS.Http.UnsignedRequest DescribeAssociationResult
describeAssociation setOptions =
  let
    options = setOptions (DescribeAssociationOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAssociation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAssociationResultDecoder


{-| Options for a describeAssociation request
-}
type alias DescribeAssociationOptions =
    { name : Maybe String
    , instanceId : Maybe String
    , associationId : Maybe String
    }



{-| <p>Provides details about all active and terminated Automation executions.</p>

__Required Parameters__



-}
describeAutomationExecutions :
    (DescribeAutomationExecutionsOptions -> DescribeAutomationExecutionsOptions)
    -> AWS.Http.UnsignedRequest DescribeAutomationExecutionsResult
describeAutomationExecutions setOptions =
  let
    options = setOptions (DescribeAutomationExecutionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAutomationExecutions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAutomationExecutionsResultDecoder


{-| Options for a describeAutomationExecutions request
-}
type alias DescribeAutomationExecutionsOptions =
    { filters : Maybe (List AutomationExecutionFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists all patches that could possibly be included in a patch baseline.</p>

__Required Parameters__



-}
describeAvailablePatches :
    (DescribeAvailablePatchesOptions -> DescribeAvailablePatchesOptions)
    -> AWS.Http.UnsignedRequest DescribeAvailablePatchesResult
describeAvailablePatches setOptions =
  let
    options = setOptions (DescribeAvailablePatchesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAvailablePatches"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAvailablePatchesResultDecoder


{-| Options for a describeAvailablePatches request
-}
type alias DescribeAvailablePatchesOptions =
    { filters : Maybe (List PatchOrchestratorFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes the specified SSM document.</p>

__Required Parameters__

* `name` __:__ `String`


-}
describeDocument :
    String
    -> (DescribeDocumentOptions -> DescribeDocumentOptions)
    -> AWS.Http.UnsignedRequest DescribeDocumentResult
describeDocument name setOptions =
  let
    options = setOptions (DescribeDocumentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeDocument"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDocumentResultDecoder


{-| Options for a describeDocument request
-}
type alias DescribeDocumentOptions =
    { documentVersion : Maybe String
    }



{-| <p>Describes the permissions for an SSM document. If you created the document, you are the owner. If a document is shared, it can either be shared privately (by specifying a user’s AWS account ID) or publicly (<i>All</i>). </p>

__Required Parameters__

* `name` __:__ `String`
* `permissionType` __:__ `DocumentPermissionType`


-}
describeDocumentPermission :
    String
    -> DocumentPermissionType
    -> AWS.Http.UnsignedRequest DescribeDocumentPermissionResponse
describeDocumentPermission name permissionType =
    AWS.Http.unsignedRequest
        "DescribeDocumentPermission"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeDocumentPermissionResponseDecoder



{-| <p>All associations for the instance(s).</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
describeEffectiveInstanceAssociations :
    String
    -> (DescribeEffectiveInstanceAssociationsOptions -> DescribeEffectiveInstanceAssociationsOptions)
    -> AWS.Http.UnsignedRequest DescribeEffectiveInstanceAssociationsResult
describeEffectiveInstanceAssociations instanceId setOptions =
  let
    options = setOptions (DescribeEffectiveInstanceAssociationsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEffectiveInstanceAssociations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEffectiveInstanceAssociationsResultDecoder


{-| Options for a describeEffectiveInstanceAssociations request
-}
type alias DescribeEffectiveInstanceAssociationsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline.</p>

__Required Parameters__

* `baselineId` __:__ `String`


-}
describeEffectivePatchesForPatchBaseline :
    String
    -> (DescribeEffectivePatchesForPatchBaselineOptions -> DescribeEffectivePatchesForPatchBaselineOptions)
    -> AWS.Http.UnsignedRequest DescribeEffectivePatchesForPatchBaselineResult
describeEffectivePatchesForPatchBaseline baselineId setOptions =
  let
    options = setOptions (DescribeEffectivePatchesForPatchBaselineOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEffectivePatchesForPatchBaseline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEffectivePatchesForPatchBaselineResultDecoder


{-| Options for a describeEffectivePatchesForPatchBaseline request
-}
type alias DescribeEffectivePatchesForPatchBaselineOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>The status of the associations for the instance(s).</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
describeInstanceAssociationsStatus :
    String
    -> (DescribeInstanceAssociationsStatusOptions -> DescribeInstanceAssociationsStatusOptions)
    -> AWS.Http.UnsignedRequest DescribeInstanceAssociationsStatusResult
describeInstanceAssociationsStatus instanceId setOptions =
  let
    options = setOptions (DescribeInstanceAssociationsStatusOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstanceAssociationsStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstanceAssociationsStatusResultDecoder


{-| Options for a describeInstanceAssociationsStatus request
-}
type alias DescribeInstanceAssociationsStatusOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your instances. You can use this to get information about instances like the operating system platform, the SSM agent version (Linux), status etc. If you specify one or more instance IDs, it returns information for those instances. If you do not specify instance IDs, it returns information for all your instances. If you specify an instance ID that is not valid or an instance that you do not own, you receive an error. </p>

__Required Parameters__



-}
describeInstanceInformation :
    (DescribeInstanceInformationOptions -> DescribeInstanceInformationOptions)
    -> AWS.Http.UnsignedRequest DescribeInstanceInformationResult
describeInstanceInformation setOptions =
  let
    options = setOptions (DescribeInstanceInformationOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstanceInformation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstanceInformationResultDecoder


{-| Options for a describeInstanceInformation request
-}
type alias DescribeInstanceInformationOptions =
    { instanceInformationFilterList : Maybe (List InstanceInformationFilter)
    , filters : Maybe (List InstanceInformationStringFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the high-level patch state of one or more instances.</p>

__Required Parameters__

* `instanceIds` __:__ `(List String)`


-}
describeInstancePatchStates :
    (List String)
    -> (DescribeInstancePatchStatesOptions -> DescribeInstancePatchStatesOptions)
    -> AWS.Http.UnsignedRequest DescribeInstancePatchStatesResult
describeInstancePatchStates instanceIds setOptions =
  let
    options = setOptions (DescribeInstancePatchStatesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstancePatchStates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstancePatchStatesResultDecoder


{-| Options for a describeInstancePatchStates request
-}
type alias DescribeInstancePatchStatesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Retrieves the high-level patch state for the instances in the specified patch group.</p>

__Required Parameters__

* `patchGroup` __:__ `String`


-}
describeInstancePatchStatesForPatchGroup :
    String
    -> (DescribeInstancePatchStatesForPatchGroupOptions -> DescribeInstancePatchStatesForPatchGroupOptions)
    -> AWS.Http.UnsignedRequest DescribeInstancePatchStatesForPatchGroupResult
describeInstancePatchStatesForPatchGroup patchGroup setOptions =
  let
    options = setOptions (DescribeInstancePatchStatesForPatchGroupOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstancePatchStatesForPatchGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstancePatchStatesForPatchGroupResultDecoder


{-| Options for a describeInstancePatchStatesForPatchGroup request
-}
type alias DescribeInstancePatchStatesForPatchGroupOptions =
    { filters : Maybe (List InstancePatchStateFilter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance.</p>

__Required Parameters__

* `instanceId` __:__ `String`


-}
describeInstancePatches :
    String
    -> (DescribeInstancePatchesOptions -> DescribeInstancePatchesOptions)
    -> AWS.Http.UnsignedRequest DescribeInstancePatchesResult
describeInstancePatches instanceId setOptions =
  let
    options = setOptions (DescribeInstancePatchesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstancePatches"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstancePatchesResultDecoder


{-| Options for a describeInstancePatches request
-}
type alias DescribeInstancePatchesOptions =
    { filters : Maybe (List PatchOrchestratorFilter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Retrieves the individual task executions (one per target) for a particular task executed as part of a Maintenance Window execution.</p>

__Required Parameters__

* `windowExecutionId` __:__ `String`
* `taskId` __:__ `String`


-}
describeMaintenanceWindowExecutionTaskInvocations :
    String
    -> String
    -> (DescribeMaintenanceWindowExecutionTaskInvocationsOptions -> DescribeMaintenanceWindowExecutionTaskInvocationsOptions)
    -> AWS.Http.UnsignedRequest DescribeMaintenanceWindowExecutionTaskInvocationsResult
describeMaintenanceWindowExecutionTaskInvocations windowExecutionId taskId setOptions =
  let
    options = setOptions (DescribeMaintenanceWindowExecutionTaskInvocationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMaintenanceWindowExecutionTaskInvocations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMaintenanceWindowExecutionTaskInvocationsResultDecoder


{-| Options for a describeMaintenanceWindowExecutionTaskInvocations request
-}
type alias DescribeMaintenanceWindowExecutionTaskInvocationsOptions =
    { filters : Maybe (List MaintenanceWindowFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>For a given Maintenance Window execution, lists the tasks that were executed.</p>

__Required Parameters__

* `windowExecutionId` __:__ `String`


-}
describeMaintenanceWindowExecutionTasks :
    String
    -> (DescribeMaintenanceWindowExecutionTasksOptions -> DescribeMaintenanceWindowExecutionTasksOptions)
    -> AWS.Http.UnsignedRequest DescribeMaintenanceWindowExecutionTasksResult
describeMaintenanceWindowExecutionTasks windowExecutionId setOptions =
  let
    options = setOptions (DescribeMaintenanceWindowExecutionTasksOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMaintenanceWindowExecutionTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMaintenanceWindowExecutionTasksResultDecoder


{-| Options for a describeMaintenanceWindowExecutionTasks request
-}
type alias DescribeMaintenanceWindowExecutionTasksOptions =
    { filters : Maybe (List MaintenanceWindowFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the executions of a Maintenance Window (meaning, information about when the Maintenance Window was scheduled to be active and information about tasks registered and run with the Maintenance Window).</p>

__Required Parameters__

* `windowId` __:__ `String`


-}
describeMaintenanceWindowExecutions :
    String
    -> (DescribeMaintenanceWindowExecutionsOptions -> DescribeMaintenanceWindowExecutionsOptions)
    -> AWS.Http.UnsignedRequest DescribeMaintenanceWindowExecutionsResult
describeMaintenanceWindowExecutions windowId setOptions =
  let
    options = setOptions (DescribeMaintenanceWindowExecutionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMaintenanceWindowExecutions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMaintenanceWindowExecutionsResultDecoder


{-| Options for a describeMaintenanceWindowExecutions request
-}
type alias DescribeMaintenanceWindowExecutionsOptions =
    { filters : Maybe (List MaintenanceWindowFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the targets registered with the Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`


-}
describeMaintenanceWindowTargets :
    String
    -> (DescribeMaintenanceWindowTargetsOptions -> DescribeMaintenanceWindowTargetsOptions)
    -> AWS.Http.UnsignedRequest DescribeMaintenanceWindowTargetsResult
describeMaintenanceWindowTargets windowId setOptions =
  let
    options = setOptions (DescribeMaintenanceWindowTargetsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMaintenanceWindowTargets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMaintenanceWindowTargetsResultDecoder


{-| Options for a describeMaintenanceWindowTargets request
-}
type alias DescribeMaintenanceWindowTargetsOptions =
    { filters : Maybe (List MaintenanceWindowFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the tasks in a Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`


-}
describeMaintenanceWindowTasks :
    String
    -> (DescribeMaintenanceWindowTasksOptions -> DescribeMaintenanceWindowTasksOptions)
    -> AWS.Http.UnsignedRequest DescribeMaintenanceWindowTasksResult
describeMaintenanceWindowTasks windowId setOptions =
  let
    options = setOptions (DescribeMaintenanceWindowTasksOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMaintenanceWindowTasks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMaintenanceWindowTasksResultDecoder


{-| Options for a describeMaintenanceWindowTasks request
-}
type alias DescribeMaintenanceWindowTasksOptions =
    { filters : Maybe (List MaintenanceWindowFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the Maintenance Windows in an AWS account.</p>

__Required Parameters__



-}
describeMaintenanceWindows :
    (DescribeMaintenanceWindowsOptions -> DescribeMaintenanceWindowsOptions)
    -> AWS.Http.UnsignedRequest DescribeMaintenanceWindowsResult
describeMaintenanceWindows setOptions =
  let
    options = setOptions (DescribeMaintenanceWindowsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMaintenanceWindows"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeMaintenanceWindowsResultDecoder


{-| Options for a describeMaintenanceWindows request
-}
type alias DescribeMaintenanceWindowsOptions =
    { filters : Maybe (List MaintenanceWindowFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Get information about a parameter.</p>

__Required Parameters__



-}
describeParameters :
    (DescribeParametersOptions -> DescribeParametersOptions)
    -> AWS.Http.UnsignedRequest DescribeParametersResult
describeParameters setOptions =
  let
    options = setOptions (DescribeParametersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeParametersResultDecoder


{-| Options for a describeParameters request
-}
type alias DescribeParametersOptions =
    { filters : Maybe (List ParametersFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the patch baselines in your AWS account.</p>

__Required Parameters__



-}
describePatchBaselines :
    (DescribePatchBaselinesOptions -> DescribePatchBaselinesOptions)
    -> AWS.Http.UnsignedRequest DescribePatchBaselinesResult
describePatchBaselines setOptions =
  let
    options = setOptions (DescribePatchBaselinesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePatchBaselines"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePatchBaselinesResultDecoder


{-| Options for a describePatchBaselines request
-}
type alias DescribePatchBaselinesOptions =
    { filters : Maybe (List PatchOrchestratorFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns high-level aggregated patch compliance state for a patch group.</p>

__Required Parameters__

* `patchGroup` __:__ `String`


-}
describePatchGroupState :
    String
    -> AWS.Http.UnsignedRequest DescribePatchGroupStateResult
describePatchGroupState patchGroup =
    AWS.Http.unsignedRequest
        "DescribePatchGroupState"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePatchGroupStateResultDecoder



{-| <p>Lists all patch groups that have been registered with patch baselines.</p>

__Required Parameters__



-}
describePatchGroups :
    (DescribePatchGroupsOptions -> DescribePatchGroupsOptions)
    -> AWS.Http.UnsignedRequest DescribePatchGroupsResult
describePatchGroups setOptions =
  let
    options = setOptions (DescribePatchGroupsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePatchGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePatchGroupsResultDecoder


{-| Options for a describePatchGroups request
-}
type alias DescribePatchGroupsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Get detailed information about a particular Automation execution.</p>

__Required Parameters__

* `automationExecutionId` __:__ `String`


-}
getAutomationExecution :
    String
    -> AWS.Http.UnsignedRequest GetAutomationExecutionResult
getAutomationExecution automationExecutionId =
    AWS.Http.unsignedRequest
        "GetAutomationExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getAutomationExecutionResultDecoder



{-| <p>Returns detailed information about command execution for an invocation or plugin. </p>

__Required Parameters__

* `commandId` __:__ `String`
* `instanceId` __:__ `String`


-}
getCommandInvocation :
    String
    -> String
    -> (GetCommandInvocationOptions -> GetCommandInvocationOptions)
    -> AWS.Http.UnsignedRequest GetCommandInvocationResult
getCommandInvocation commandId instanceId setOptions =
  let
    options = setOptions (GetCommandInvocationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetCommandInvocation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getCommandInvocationResultDecoder


{-| Options for a getCommandInvocation request
-}
type alias GetCommandInvocationOptions =
    { pluginName : Maybe String
    }



{-| <p>Retrieves the default patch baseline.</p>

__Required Parameters__



-}
getDefaultPatchBaseline :
    AWS.Http.UnsignedRequest GetDefaultPatchBaselineResult
getDefaultPatchBaseline =
    AWS.Http.unsignedRequest
        "GetDefaultPatchBaseline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDefaultPatchBaselineResultDecoder



{-| <p>Retrieves the current snapshot for the patch baseline the instance uses. This API is primarily used by the AWS-ApplyPatchBaseline Systems Manager document. </p>

__Required Parameters__

* `instanceId` __:__ `String`
* `snapshotId` __:__ `String`


-}
getDeployablePatchSnapshotForInstance :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetDeployablePatchSnapshotForInstanceResult
getDeployablePatchSnapshotForInstance instanceId snapshotId =
    AWS.Http.unsignedRequest
        "GetDeployablePatchSnapshotForInstance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDeployablePatchSnapshotForInstanceResultDecoder



{-| <p>Gets the contents of the specified SSM document.</p>

__Required Parameters__

* `name` __:__ `String`


-}
getDocument :
    String
    -> (GetDocumentOptions -> GetDocumentOptions)
    -> AWS.Http.UnsignedRequest GetDocumentResult
getDocument name setOptions =
  let
    options = setOptions (GetDocumentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDocument"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDocumentResultDecoder


{-| Options for a getDocument request
-}
type alias GetDocumentOptions =
    { documentVersion : Maybe String
    }



{-| <p>Query inventory information.</p>

__Required Parameters__



-}
getInventory :
    (GetInventoryOptions -> GetInventoryOptions)
    -> AWS.Http.UnsignedRequest GetInventoryResult
getInventory setOptions =
  let
    options = setOptions (GetInventoryOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetInventory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInventoryResultDecoder


{-| Options for a getInventory request
-}
type alias GetInventoryOptions =
    { filters : Maybe (List InventoryFilter)
    , resultAttributes : Maybe (List ResultAttribute)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type. </p>

__Required Parameters__



-}
getInventorySchema :
    (GetInventorySchemaOptions -> GetInventorySchemaOptions)
    -> AWS.Http.UnsignedRequest GetInventorySchemaResult
getInventorySchema setOptions =
  let
    options = setOptions (GetInventorySchemaOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetInventorySchema"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInventorySchemaResultDecoder


{-| Options for a getInventorySchema request
-}
type alias GetInventorySchemaOptions =
    { typeName : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Retrieves a Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`


-}
getMaintenanceWindow :
    String
    -> AWS.Http.UnsignedRequest GetMaintenanceWindowResult
getMaintenanceWindow windowId =
    AWS.Http.unsignedRequest
        "GetMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getMaintenanceWindowResultDecoder



{-| <p>Retrieves details about a specific task executed as part of a Maintenance Window execution.</p>

__Required Parameters__

* `windowExecutionId` __:__ `String`


-}
getMaintenanceWindowExecution :
    String
    -> AWS.Http.UnsignedRequest GetMaintenanceWindowExecutionResult
getMaintenanceWindowExecution windowExecutionId =
    AWS.Http.unsignedRequest
        "GetMaintenanceWindowExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getMaintenanceWindowExecutionResultDecoder



{-| <p>Retrieves the details about a specific task executed as part of a Maintenance Window execution.</p>

__Required Parameters__

* `windowExecutionId` __:__ `String`
* `taskId` __:__ `String`


-}
getMaintenanceWindowExecutionTask :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetMaintenanceWindowExecutionTaskResult
getMaintenanceWindowExecutionTask windowExecutionId taskId =
    AWS.Http.unsignedRequest
        "GetMaintenanceWindowExecutionTask"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getMaintenanceWindowExecutionTaskResultDecoder



{-| <p>Query a list of all parameters used by the AWS account.</p>

__Required Parameters__

* `name` __:__ `String`


-}
getParameterHistory :
    String
    -> (GetParameterHistoryOptions -> GetParameterHistoryOptions)
    -> AWS.Http.UnsignedRequest GetParameterHistoryResult
getParameterHistory name setOptions =
  let
    options = setOptions (GetParameterHistoryOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetParameterHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getParameterHistoryResultDecoder


{-| Options for a getParameterHistory request
-}
type alias GetParameterHistoryOptions =
    { withDecryption : Maybe Bool
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Get a list of parameters used by the AWS account.&gt;</p>

__Required Parameters__

* `names` __:__ `(List String)`


-}
getParameters :
    (List String)
    -> (GetParametersOptions -> GetParametersOptions)
    -> AWS.Http.UnsignedRequest GetParametersResult
getParameters names setOptions =
  let
    options = setOptions (GetParametersOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetParameters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getParametersResultDecoder


{-| Options for a getParameters request
-}
type alias GetParametersOptions =
    { withDecryption : Maybe Bool
    }



{-| <p>Retrieves information about a patch baseline.</p>

__Required Parameters__

* `baselineId` __:__ `String`


-}
getPatchBaseline :
    String
    -> AWS.Http.UnsignedRequest GetPatchBaselineResult
getPatchBaseline baselineId =
    AWS.Http.unsignedRequest
        "GetPatchBaseline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPatchBaselineResultDecoder



{-| <p>Retrieves the patch baseline that should be used for the specified patch group.</p>

__Required Parameters__

* `patchGroup` __:__ `String`


-}
getPatchBaselineForPatchGroup :
    String
    -> AWS.Http.UnsignedRequest GetPatchBaselineForPatchGroupResult
getPatchBaselineForPatchGroup patchGroup =
    AWS.Http.unsignedRequest
        "GetPatchBaselineForPatchGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPatchBaselineForPatchGroupResultDecoder



{-| <p>Lists the associations for the specified SSM document or instance.</p>

__Required Parameters__



-}
listAssociations :
    (ListAssociationsOptions -> ListAssociationsOptions)
    -> AWS.Http.UnsignedRequest ListAssociationsResult
listAssociations setOptions =
  let
    options = setOptions (ListAssociationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAssociations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAssociationsResultDecoder


{-| Options for a listAssociations request
-}
type alias ListAssociationsOptions =
    { associationFilterList : Maybe (List AssociationFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user executes SendCommand against three instances, then a command invocation is created for each requested instance ID. ListCommandInvocations provide status about command execution.</p>

__Required Parameters__



-}
listCommandInvocations :
    (ListCommandInvocationsOptions -> ListCommandInvocationsOptions)
    -> AWS.Http.UnsignedRequest ListCommandInvocationsResult
listCommandInvocations setOptions =
  let
    options = setOptions (ListCommandInvocationsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCommandInvocations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listCommandInvocationsResultDecoder


{-| Options for a listCommandInvocations request
-}
type alias ListCommandInvocationsOptions =
    { commandId : Maybe String
    , instanceId : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , filters : Maybe (List CommandFilter)
    , details : Maybe Bool
    }



{-| <p>Lists the commands requested by users of the AWS account.</p>

__Required Parameters__



-}
listCommands :
    (ListCommandsOptions -> ListCommandsOptions)
    -> AWS.Http.UnsignedRequest ListCommandsResult
listCommands setOptions =
  let
    options = setOptions (ListCommandsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCommands"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listCommandsResultDecoder


{-| Options for a listCommands request
-}
type alias ListCommandsOptions =
    { commandId : Maybe String
    , instanceId : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , filters : Maybe (List CommandFilter)
    }



{-| <p>List all versions for a document.</p>

__Required Parameters__

* `name` __:__ `String`


-}
listDocumentVersions :
    String
    -> (ListDocumentVersionsOptions -> ListDocumentVersionsOptions)
    -> AWS.Http.UnsignedRequest ListDocumentVersionsResult
listDocumentVersions name setOptions =
  let
    options = setOptions (ListDocumentVersionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDocumentVersions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDocumentVersionsResultDecoder


{-| Options for a listDocumentVersions request
-}
type alias ListDocumentVersionsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes one or more of your SSM documents.</p>

__Required Parameters__



-}
listDocuments :
    (ListDocumentsOptions -> ListDocumentsOptions)
    -> AWS.Http.UnsignedRequest ListDocumentsResult
listDocuments setOptions =
  let
    options = setOptions (ListDocumentsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDocuments"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDocumentsResultDecoder


{-| Options for a listDocuments request
-}
type alias ListDocumentsOptions =
    { documentFilterList : Maybe (List DocumentFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>A list of inventory items returned by the request.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `typeName` __:__ `String`


-}
listInventoryEntries :
    String
    -> String
    -> (ListInventoryEntriesOptions -> ListInventoryEntriesOptions)
    -> AWS.Http.UnsignedRequest ListInventoryEntriesResult
listInventoryEntries instanceId typeName setOptions =
  let
    options = setOptions (ListInventoryEntriesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListInventoryEntries"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listInventoryEntriesResultDecoder


{-| Options for a listInventoryEntries request
-}
type alias ListInventoryEntriesOptions =
    { filters : Maybe (List InventoryFilter)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns a list of the tags assigned to the specified resource.</p>

__Required Parameters__

* `resourceType` __:__ `ResourceTypeForTagging`
* `resourceId` __:__ `String`


-}
listTagsForResource :
    ResourceTypeForTagging
    -> String
    -> AWS.Http.UnsignedRequest ListTagsForResourceResult
listTagsForResource resourceType resourceId =
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForResourceResultDecoder



{-| <p>Share a document publicly or privately. If you share a document privately, you must specify the AWS user account IDs for those people who can use the document. If you share a document publicly, you must specify <i>All</i> as the account ID.</p>

__Required Parameters__

* `name` __:__ `String`
* `permissionType` __:__ `DocumentPermissionType`


-}
modifyDocumentPermission :
    String
    -> DocumentPermissionType
    -> (ModifyDocumentPermissionOptions -> ModifyDocumentPermissionOptions)
    -> AWS.Http.UnsignedRequest ModifyDocumentPermissionResponse
modifyDocumentPermission name permissionType setOptions =
  let
    options = setOptions (ModifyDocumentPermissionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyDocumentPermission"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyDocumentPermissionResponseDecoder


{-| Options for a modifyDocumentPermission request
-}
type alias ModifyDocumentPermissionOptions =
    { accountIdsToAdd : Maybe (List String)
    , accountIdsToRemove : Maybe (List String)
    }



{-| <p>Bulk update custom inventory items on one more instance. The request adds an inventory item, if it doesn't already exist, or updates an inventory item, if it does exist.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `items` __:__ `(List InventoryItem)`


-}
putInventory :
    String
    -> (List InventoryItem)
    -> AWS.Http.UnsignedRequest PutInventoryResult
putInventory instanceId items =
    AWS.Http.unsignedRequest
        "PutInventory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putInventoryResultDecoder



{-| <p>Add one or more paramaters to the system.</p>

__Required Parameters__

* `name` __:__ `String`
* `value` __:__ `String`
* `type_` __:__ `ParameterType`


-}
putParameter :
    String
    -> String
    -> ParameterType
    -> (PutParameterOptions -> PutParameterOptions)
    -> AWS.Http.UnsignedRequest PutParameterResult
putParameter name value type_ setOptions =
  let
    options = setOptions (PutParameterOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutParameter"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putParameterResultDecoder


{-| Options for a putParameter request
-}
type alias PutParameterOptions =
    { description : Maybe String
    , keyId : Maybe String
    , overwrite : Maybe Bool
    }



{-| <p>Defines the default patch baseline.</p>

__Required Parameters__

* `baselineId` __:__ `String`


-}
registerDefaultPatchBaseline :
    String
    -> AWS.Http.UnsignedRequest RegisterDefaultPatchBaselineResult
registerDefaultPatchBaseline baselineId =
    AWS.Http.unsignedRequest
        "RegisterDefaultPatchBaseline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerDefaultPatchBaselineResultDecoder



{-| <p>Registers a patch baseline for a patch group.</p>

__Required Parameters__

* `baselineId` __:__ `String`
* `patchGroup` __:__ `String`


-}
registerPatchBaselineForPatchGroup :
    String
    -> String
    -> AWS.Http.UnsignedRequest RegisterPatchBaselineForPatchGroupResult
registerPatchBaselineForPatchGroup baselineId patchGroup =
    AWS.Http.unsignedRequest
        "RegisterPatchBaselineForPatchGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerPatchBaselineForPatchGroupResultDecoder



{-| <p>Registers a target with a Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`
* `resourceType` __:__ `MaintenanceWindowResourceType`
* `targets` __:__ `(List Target)`


-}
registerTargetWithMaintenanceWindow :
    String
    -> MaintenanceWindowResourceType
    -> (List Target)
    -> (RegisterTargetWithMaintenanceWindowOptions -> RegisterTargetWithMaintenanceWindowOptions)
    -> AWS.Http.UnsignedRequest RegisterTargetWithMaintenanceWindowResult
registerTargetWithMaintenanceWindow windowId resourceType targets setOptions =
  let
    options = setOptions (RegisterTargetWithMaintenanceWindowOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterTargetWithMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerTargetWithMaintenanceWindowResultDecoder


{-| Options for a registerTargetWithMaintenanceWindow request
-}
type alias RegisterTargetWithMaintenanceWindowOptions =
    { ownerInformation : Maybe String
    , clientToken : Maybe String
    }



{-| <p>Adds a new task to a Maintenance Window.</p>

__Required Parameters__

* `windowId` __:__ `String`
* `targets` __:__ `(List Target)`
* `taskArn` __:__ `String`
* `serviceRoleArn` __:__ `String`
* `taskType` __:__ `MaintenanceWindowTaskType`
* `maxConcurrency` __:__ `String`
* `maxErrors` __:__ `String`


-}
registerTaskWithMaintenanceWindow :
    String
    -> (List Target)
    -> String
    -> String
    -> MaintenanceWindowTaskType
    -> String
    -> String
    -> (RegisterTaskWithMaintenanceWindowOptions -> RegisterTaskWithMaintenanceWindowOptions)
    -> AWS.Http.UnsignedRequest RegisterTaskWithMaintenanceWindowResult
registerTaskWithMaintenanceWindow windowId targets taskArn serviceRoleArn taskType maxConcurrency maxErrors setOptions =
  let
    options = setOptions (RegisterTaskWithMaintenanceWindowOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterTaskWithMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        registerTaskWithMaintenanceWindowResultDecoder


{-| Options for a registerTaskWithMaintenanceWindow request
-}
type alias RegisterTaskWithMaintenanceWindowOptions =
    { taskParameters : Maybe (Dict String MaintenanceWindowTaskParameterValueExpression)
    , priority : Maybe Int
    , loggingInfo : Maybe LoggingInfo
    , clientToken : Maybe String
    }



{-| <p>Removes all tags from the specified resource.</p>

__Required Parameters__

* `resourceType` __:__ `ResourceTypeForTagging`
* `resourceId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
removeTagsFromResource :
    ResourceTypeForTagging
    -> String
    -> (List String)
    -> AWS.Http.UnsignedRequest RemoveTagsFromResourceResult
removeTagsFromResource resourceType resourceId tagKeys =
    AWS.Http.unsignedRequest
        "RemoveTagsFromResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsFromResourceResultDecoder



{-| <p>Executes commands on one or more remote instances.</p>

__Required Parameters__

* `documentName` __:__ `String`


-}
sendCommand :
    String
    -> (SendCommandOptions -> SendCommandOptions)
    -> AWS.Http.UnsignedRequest SendCommandResult
sendCommand documentName setOptions =
  let
    options = setOptions (SendCommandOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SendCommand"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendCommandResultDecoder


{-| Options for a sendCommand request
-}
type alias SendCommandOptions =
    { instanceIds : Maybe (List String)
    , targets : Maybe (List Target)
    , documentHash : Maybe String
    , documentHashType : Maybe DocumentHashType
    , timeoutSeconds : Maybe Int
    , comment : Maybe String
    , parameters : Maybe (Dict String (List String))
    , outputS3Region : Maybe String
    , outputS3BucketName : Maybe String
    , outputS3KeyPrefix : Maybe String
    , maxConcurrency : Maybe String
    , maxErrors : Maybe String
    , serviceRoleArn : Maybe String
    , notificationConfig : Maybe NotificationConfig
    }



{-| <p>Initiates execution of an Automation document.</p>

__Required Parameters__

* `documentName` __:__ `String`


-}
startAutomationExecution :
    String
    -> (StartAutomationExecutionOptions -> StartAutomationExecutionOptions)
    -> AWS.Http.UnsignedRequest StartAutomationExecutionResult
startAutomationExecution documentName setOptions =
  let
    options = setOptions (StartAutomationExecutionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StartAutomationExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startAutomationExecutionResultDecoder


{-| Options for a startAutomationExecution request
-}
type alias StartAutomationExecutionOptions =
    { documentVersion : Maybe String
    , parameters : Maybe (Dict String (List String))
    }



{-| <p>Stop an Automation that is currently executing.</p>

__Required Parameters__

* `automationExecutionId` __:__ `String`


-}
stopAutomationExecution :
    String
    -> AWS.Http.UnsignedRequest StopAutomationExecutionResult
stopAutomationExecution automationExecutionId =
    AWS.Http.unsignedRequest
        "StopAutomationExecution"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopAutomationExecutionResultDecoder



{-| <p>Updates an association. You can only update the document version, schedule, parameters, and Amazon S3 output of an association.</p>

__Required Parameters__

* `associationId` __:__ `String`


-}
updateAssociation :
    String
    -> (UpdateAssociationOptions -> UpdateAssociationOptions)
    -> AWS.Http.UnsignedRequest UpdateAssociationResult
updateAssociation associationId setOptions =
  let
    options = setOptions (UpdateAssociationOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAssociation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateAssociationResultDecoder


{-| Options for a updateAssociation request
-}
type alias UpdateAssociationOptions =
    { parameters : Maybe (Dict String (List String))
    , documentVersion : Maybe String
    , scheduleExpression : Maybe String
    , outputLocation : Maybe InstanceAssociationOutputLocation
    }



{-| <p>Updates the status of the SSM document associated with the specified instance.</p>

__Required Parameters__

* `name` __:__ `String`
* `instanceId` __:__ `String`
* `associationStatus` __:__ `AssociationStatus`


-}
updateAssociationStatus :
    String
    -> String
    -> AssociationStatus
    -> AWS.Http.UnsignedRequest UpdateAssociationStatusResult
updateAssociationStatus name instanceId associationStatus =
    AWS.Http.unsignedRequest
        "UpdateAssociationStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateAssociationStatusResultDecoder



{-| <p>The document you want to update.</p>

__Required Parameters__

* `content` __:__ `String`
* `name` __:__ `String`


-}
updateDocument :
    String
    -> String
    -> (UpdateDocumentOptions -> UpdateDocumentOptions)
    -> AWS.Http.UnsignedRequest UpdateDocumentResult
updateDocument content name setOptions =
  let
    options = setOptions (UpdateDocumentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDocument"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDocumentResultDecoder


{-| Options for a updateDocument request
-}
type alias UpdateDocumentOptions =
    { documentVersion : Maybe String
    }



{-| <p>Set the default version of a document. </p>

__Required Parameters__

* `name` __:__ `String`
* `documentVersion` __:__ `String`


-}
updateDocumentDefaultVersion :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateDocumentDefaultVersionResult
updateDocumentDefaultVersion name documentVersion =
    AWS.Http.unsignedRequest
        "UpdateDocumentDefaultVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDocumentDefaultVersionResultDecoder



{-| <p>Updates an existing Maintenance Window. Only specified parameters are modified.</p>

__Required Parameters__

* `windowId` __:__ `String`


-}
updateMaintenanceWindow :
    String
    -> (UpdateMaintenanceWindowOptions -> UpdateMaintenanceWindowOptions)
    -> AWS.Http.UnsignedRequest UpdateMaintenanceWindowResult
updateMaintenanceWindow windowId setOptions =
  let
    options = setOptions (UpdateMaintenanceWindowOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateMaintenanceWindow"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateMaintenanceWindowResultDecoder


{-| Options for a updateMaintenanceWindow request
-}
type alias UpdateMaintenanceWindowOptions =
    { name : Maybe String
    , schedule : Maybe String
    , duration : Maybe Int
    , cutoff : Maybe Int
    , allowUnassociatedTargets : Maybe Bool
    , enabled : Maybe Bool
    }



{-| <p>Assigns or changes an Amazon Identity and Access Management (IAM) role to the managed instance.</p>

__Required Parameters__

* `instanceId` __:__ `String`
* `iamRole` __:__ `String`


-}
updateManagedInstanceRole :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateManagedInstanceRoleResult
updateManagedInstanceRole instanceId iamRole =
    AWS.Http.unsignedRequest
        "UpdateManagedInstanceRole"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateManagedInstanceRoleResultDecoder



{-| <p>Modifies an existing patch baseline. Fields not specified in the request are left unchanged.</p>

__Required Parameters__

* `baselineId` __:__ `String`


-}
updatePatchBaseline :
    String
    -> (UpdatePatchBaselineOptions -> UpdatePatchBaselineOptions)
    -> AWS.Http.UnsignedRequest UpdatePatchBaselineResult
updatePatchBaseline baselineId setOptions =
  let
    options = setOptions (UpdatePatchBaselineOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdatePatchBaseline"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updatePatchBaselineResultDecoder


{-| Options for a updatePatchBaseline request
-}
type alias UpdatePatchBaselineOptions =
    { name : Maybe String
    , globalFilters : Maybe PatchFilterGroup
    , approvalRules : Maybe PatchRuleGroup
    , approvedPatches : Maybe (List String)
    , rejectedPatches : Maybe (List String)
    , description : Maybe String
    }




{-| <p>An activation registers one or more on-premises servers or virtual machines (VMs) with AWS so that you can configure those servers or VMs using Run Command. A server or VM that has been registered with AWS is called a managed instance.</p>
-}
type alias Activation =
    { activationId : Maybe String
    , description : Maybe String
    , defaultInstanceName : Maybe String
    , iamRole : Maybe String
    , registrationLimit : Maybe Int
    , registrationsCount : Maybe Int
    , expirationDate : Maybe Date
    , expired : Maybe Bool
    , createdDate : Maybe Date
    }



activationDecoder : JD.Decoder Activation
activationDecoder =
    JDP.decode Activation
        |> JDP.optional "activationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultInstanceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "registrationLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "registrationsCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "expirationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "expired" (JD.nullable JD.bool) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from addTagsToResour
-}
type alias AddTagsToResourceResult =
    { 
    }



addTagsToResourceResultDecoder : JD.Decoder AddTagsToResourceResult
addTagsToResourceResultDecoder =
    JDP.decode AddTagsToResourceResult



{-| <p>Error returned if an attempt is made to register a patch group with a patch baseline that is already registered with a different patch baseline.</p>
-}
type alias AlreadyExistsException =
    { message : Maybe String
    }



alreadyExistsExceptionDecoder : JD.Decoder AlreadyExistsException
alreadyExistsExceptionDecoder =
    JDP.decode AlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You must disassociate an SSM document from all instances before you can delete it.</p>
-}
type alias AssociatedInstances =
    { 
    }



associatedInstancesDecoder : JD.Decoder AssociatedInstances
associatedInstancesDecoder =
    JDP.decode AssociatedInstances



{-| <p>Describes an association of an SSM document and an instance.</p>
-}
type alias Association =
    { name : Maybe String
    , instanceId : Maybe String
    , associationId : Maybe String
    , documentVersion : Maybe String
    , targets : Maybe (List Target)
    , lastExecutionDate : Maybe Date
    , overview : Maybe AssociationOverview
    , scheduleExpression : Maybe String
    }



associationDecoder : JD.Decoder Association
associationDecoder =
    JDP.decode Association
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "targets" (JD.nullable (JD.list targetDecoder)) Nothing
        |> JDP.optional "lastExecutionDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "overview" (JD.nullable associationOverviewDecoder) Nothing
        |> JDP.optional "scheduleExpression" (JD.nullable JD.string) Nothing




{-| <p>The specified association already exists.</p>
-}
type alias AssociationAlreadyExists =
    { 
    }



associationAlreadyExistsDecoder : JD.Decoder AssociationAlreadyExists
associationAlreadyExistsDecoder =
    JDP.decode AssociationAlreadyExists



{-| <p>Describes the parameters for a document.</p>
-}
type alias AssociationDescription =
    { name : Maybe String
    , instanceId : Maybe String
    , date : Maybe Date
    , lastUpdateAssociationDate : Maybe Date
    , status : Maybe AssociationStatus
    , overview : Maybe AssociationOverview
    , documentVersion : Maybe String
    , parameters : Maybe (Dict String (List String))
    , associationId : Maybe String
    , targets : Maybe (List Target)
    , scheduleExpression : Maybe String
    , outputLocation : Maybe InstanceAssociationOutputLocation
    , lastExecutionDate : Maybe Date
    , lastSuccessfulExecutionDate : Maybe Date
    }



associationDescriptionDecoder : JD.Decoder AssociationDescription
associationDescriptionDecoder =
    JDP.decode AssociationDescription
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "date" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdateAssociationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable associationStatusDecoder) Nothing
        |> JDP.optional "overview" (JD.nullable associationOverviewDecoder) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "targets" (JD.nullable (JD.list targetDecoder)) Nothing
        |> JDP.optional "scheduleExpression" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputLocation" (JD.nullable instanceAssociationOutputLocationDecoder) Nothing
        |> JDP.optional "lastExecutionDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastSuccessfulExecutionDate" (JD.nullable JDX.date) Nothing




{-| <p>The specified association does not exist.</p>
-}
type alias AssociationDoesNotExist =
    { message : Maybe String
    }



associationDoesNotExistDecoder : JD.Decoder AssociationDoesNotExist
associationDoesNotExistDecoder =
    JDP.decode AssociationDoesNotExist
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes a filter.</p>
-}
type alias AssociationFilter =
    { key : AssociationFilterKey
    , value : String
    }



associationFilterDecoder : JD.Decoder AssociationFilter
associationFilterDecoder =
    JDP.decode AssociationFilter
        |> JDP.required "key" associationFilterKeyDecoder
        |> JDP.required "value" JD.string




{-| One of

* `AssociationFilterKey_InstanceId`
* `AssociationFilterKey_Name`
* `AssociationFilterKey_AssociationId`
* `AssociationFilterKey_AssociationStatusName`
* `AssociationFilterKey_LastExecutedBefore`
* `AssociationFilterKey_LastExecutedAfter`

-}
type AssociationFilterKey
    = AssociationFilterKey_InstanceId
    | AssociationFilterKey_Name
    | AssociationFilterKey_AssociationId
    | AssociationFilterKey_AssociationStatusName
    | AssociationFilterKey_LastExecutedBefore
    | AssociationFilterKey_LastExecutedAfter



associationFilterKeyDecoder : JD.Decoder AssociationFilterKey
associationFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InstanceId" ->
                        JD.succeed AssociationFilterKey_InstanceId

                    "Name" ->
                        JD.succeed AssociationFilterKey_Name

                    "AssociationId" ->
                        JD.succeed AssociationFilterKey_AssociationId

                    "AssociationStatusName" ->
                        JD.succeed AssociationFilterKey_AssociationStatusName

                    "LastExecutedBefore" ->
                        JD.succeed AssociationFilterKey_LastExecutedBefore

                    "LastExecutedAfter" ->
                        JD.succeed AssociationFilterKey_LastExecutedAfter


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>You can have at most 2,000 active associations.</p>
-}
type alias AssociationLimitExceeded =
    { 
    }



associationLimitExceededDecoder : JD.Decoder AssociationLimitExceeded
associationLimitExceededDecoder =
    JDP.decode AssociationLimitExceeded



{-| <p>Information about the association.</p>
-}
type alias AssociationOverview =
    { status : Maybe String
    , detailedStatus : Maybe String
    , associationStatusAggregatedCount : Maybe (Dict String Int)
    }



associationOverviewDecoder : JD.Decoder AssociationOverview
associationOverviewDecoder =
    JDP.decode AssociationOverview
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "detailedStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "associationStatusAggregatedCount" (JD.nullable (JD.dict JD.int)) Nothing




{-| <p>Describes an association status.</p>
-}
type alias AssociationStatus =
    { date : Date
    , name : AssociationStatusName
    , message : String
    , additionalInfo : Maybe String
    }



associationStatusDecoder : JD.Decoder AssociationStatus
associationStatusDecoder =
    JDP.decode AssociationStatus
        |> JDP.required "date" JDX.date
        |> JDP.required "name" associationStatusNameDecoder
        |> JDP.required "message" JD.string
        |> JDP.optional "additionalInfo" (JD.nullable JD.string) Nothing




{-| One of

* `AssociationStatusName_Pending`
* `AssociationStatusName_Success`
* `AssociationStatusName_Failed`

-}
type AssociationStatusName
    = AssociationStatusName_Pending
    | AssociationStatusName_Success
    | AssociationStatusName_Failed



associationStatusNameDecoder : JD.Decoder AssociationStatusName
associationStatusNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed AssociationStatusName_Pending

                    "Success" ->
                        JD.succeed AssociationStatusName_Success

                    "Failed" ->
                        JD.succeed AssociationStatusName_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An Automation document with the specified name could not be found.</p>
-}
type alias AutomationDefinitionNotFoundException =
    { message : Maybe String
    }



automationDefinitionNotFoundExceptionDecoder : JD.Decoder AutomationDefinitionNotFoundException
automationDefinitionNotFoundExceptionDecoder =
    JDP.decode AutomationDefinitionNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An Automation document with the specified name and version could not be found.</p>
-}
type alias AutomationDefinitionVersionNotFoundException =
    { message : Maybe String
    }



automationDefinitionVersionNotFoundExceptionDecoder : JD.Decoder AutomationDefinitionVersionNotFoundException
automationDefinitionVersionNotFoundExceptionDecoder =
    JDP.decode AutomationDefinitionVersionNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Detailed information about the current state of an individual Automation execution.</p>
-}
type alias AutomationExecution =
    { automationExecutionId : Maybe String
    , documentName : Maybe String
    , documentVersion : Maybe String
    , executionStartTime : Maybe Date
    , executionEndTime : Maybe Date
    , automationExecutionStatus : Maybe AutomationExecutionStatus
    , stepExecutions : Maybe (List StepExecution)
    , parameters : Maybe (Dict String (List String))
    , outputs : Maybe (Dict String (List String))
    , failureMessage : Maybe String
    }



automationExecutionDecoder : JD.Decoder AutomationExecution
automationExecutionDecoder =
    JDP.decode AutomationExecution
        |> JDP.optional "automationExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "executionEndTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "automationExecutionStatus" (JD.nullable automationExecutionStatusDecoder) Nothing
        |> JDP.optional "stepExecutions" (JD.nullable (JD.list stepExecutionDecoder)) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "outputs" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "failureMessage" (JD.nullable JD.string) Nothing




{-| <p>A filter used to match specific automation executions. This is used to limit the scope of Automation execution information returned.</p>
-}
type alias AutomationExecutionFilter =
    { key : AutomationExecutionFilterKey
    , values : (List String)
    }



automationExecutionFilterDecoder : JD.Decoder AutomationExecutionFilter
automationExecutionFilterDecoder =
    JDP.decode AutomationExecutionFilter
        |> JDP.required "key" automationExecutionFilterKeyDecoder
        |> JDP.required "values" (JD.list JD.string)




{-| One of

* `AutomationExecutionFilterKey_DocumentNamePrefix`
* `AutomationExecutionFilterKey_ExecutionStatus`

-}
type AutomationExecutionFilterKey
    = AutomationExecutionFilterKey_DocumentNamePrefix
    | AutomationExecutionFilterKey_ExecutionStatus



automationExecutionFilterKeyDecoder : JD.Decoder AutomationExecutionFilterKey
automationExecutionFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DocumentNamePrefix" ->
                        JD.succeed AutomationExecutionFilterKey_DocumentNamePrefix

                    "ExecutionStatus" ->
                        JD.succeed AutomationExecutionFilterKey_ExecutionStatus


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The number of simultaneously running Automation executions exceeded the allowable limit.</p>
-}
type alias AutomationExecutionLimitExceededException =
    { message : Maybe String
    }



automationExecutionLimitExceededExceptionDecoder : JD.Decoder AutomationExecutionLimitExceededException
automationExecutionLimitExceededExceptionDecoder =
    JDP.decode AutomationExecutionLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Details about a specific Automation execution.</p>
-}
type alias AutomationExecutionMetadata =
    { automationExecutionId : Maybe String
    , documentName : Maybe String
    , documentVersion : Maybe String
    , automationExecutionStatus : Maybe AutomationExecutionStatus
    , executionStartTime : Maybe Date
    , executionEndTime : Maybe Date
    , executedBy : Maybe String
    , logFile : Maybe String
    , outputs : Maybe (Dict String (List String))
    }



automationExecutionMetadataDecoder : JD.Decoder AutomationExecutionMetadata
automationExecutionMetadataDecoder =
    JDP.decode AutomationExecutionMetadata
        |> JDP.optional "automationExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "automationExecutionStatus" (JD.nullable automationExecutionStatusDecoder) Nothing
        |> JDP.optional "executionStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "executionEndTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "executedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "logFile" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputs" (JD.nullable (JD.dict (JD.list JD.string))) Nothing




{-| <p>There is no automation execution information for the requested automation execution ID.</p>
-}
type alias AutomationExecutionNotFoundException =
    { message : Maybe String
    }



automationExecutionNotFoundExceptionDecoder : JD.Decoder AutomationExecutionNotFoundException
automationExecutionNotFoundExceptionDecoder =
    JDP.decode AutomationExecutionNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `AutomationExecutionStatus_Pending`
* `AutomationExecutionStatus_InProgress`
* `AutomationExecutionStatus_Success`
* `AutomationExecutionStatus_TimedOut`
* `AutomationExecutionStatus_Cancelled`
* `AutomationExecutionStatus_Failed`

-}
type AutomationExecutionStatus
    = AutomationExecutionStatus_Pending
    | AutomationExecutionStatus_InProgress
    | AutomationExecutionStatus_Success
    | AutomationExecutionStatus_TimedOut
    | AutomationExecutionStatus_Cancelled
    | AutomationExecutionStatus_Failed



automationExecutionStatusDecoder : JD.Decoder AutomationExecutionStatus
automationExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed AutomationExecutionStatus_Pending

                    "InProgress" ->
                        JD.succeed AutomationExecutionStatus_InProgress

                    "Success" ->
                        JD.succeed AutomationExecutionStatus_Success

                    "TimedOut" ->
                        JD.succeed AutomationExecutionStatus_TimedOut

                    "Cancelled" ->
                        JD.succeed AutomationExecutionStatus_Cancelled

                    "Failed" ->
                        JD.succeed AutomationExecutionStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from cancelComma
-}
type alias CancelCommandResult =
    { 
    }



cancelCommandResultDecoder : JD.Decoder CancelCommandResult
cancelCommandResultDecoder =
    JDP.decode CancelCommandResult



{-| <p>Describes a command request.</p>
-}
type alias Command =
    { commandId : Maybe String
    , documentName : Maybe String
    , comment : Maybe String
    , expiresAfter : Maybe Date
    , parameters : Maybe (Dict String (List String))
    , instanceIds : Maybe (List String)
    , targets : Maybe (List Target)
    , requestedDateTime : Maybe Date
    , status : Maybe CommandStatus
    , statusDetails : Maybe String
    , outputS3Region : Maybe String
    , outputS3BucketName : Maybe String
    , outputS3KeyPrefix : Maybe String
    , maxConcurrency : Maybe String
    , maxErrors : Maybe String
    , targetCount : Maybe Int
    , completedCount : Maybe Int
    , errorCount : Maybe Int
    , serviceRole : Maybe String
    , notificationConfig : Maybe NotificationConfig
    }



commandDecoder : JD.Decoder Command
commandDecoder =
    JDP.decode Command
        |> JDP.optional "commandId" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiresAfter" (JD.nullable JDX.date) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "instanceIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "targets" (JD.nullable (JD.list targetDecoder)) Nothing
        |> JDP.optional "requestedDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable commandStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3Region" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3KeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxConcurrency" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxErrors" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "completedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "errorCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "serviceRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "notificationConfig" (JD.nullable notificationConfigDecoder) Nothing




{-| <p>Describes a command filter.</p>
-}
type alias CommandFilter =
    { key : CommandFilterKey
    , value : String
    }



commandFilterDecoder : JD.Decoder CommandFilter
commandFilterDecoder =
    JDP.decode CommandFilter
        |> JDP.required "key" commandFilterKeyDecoder
        |> JDP.required "value" JD.string




{-| One of

* `CommandFilterKey_InvokedAfter`
* `CommandFilterKey_InvokedBefore`
* `CommandFilterKey_Status`

-}
type CommandFilterKey
    = CommandFilterKey_InvokedAfter
    | CommandFilterKey_InvokedBefore
    | CommandFilterKey_Status



commandFilterKeyDecoder : JD.Decoder CommandFilterKey
commandFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InvokedAfter" ->
                        JD.succeed CommandFilterKey_InvokedAfter

                    "InvokedBefore" ->
                        JD.succeed CommandFilterKey_InvokedBefore

                    "Status" ->
                        JD.succeed CommandFilterKey_Status


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user executes SendCommand against three instances, then a command invocation is created for each requested instance ID. A command invocation returns status and detail information about a command you executed. </p>
-}
type alias CommandInvocation =
    { commandId : Maybe String
    , instanceId : Maybe String
    , instanceName : Maybe String
    , comment : Maybe String
    , documentName : Maybe String
    , requestedDateTime : Maybe Date
    , status : Maybe CommandInvocationStatus
    , statusDetails : Maybe String
    , traceOutput : Maybe String
    , standardOutputUrl : Maybe String
    , standardErrorUrl : Maybe String
    , commandPlugins : Maybe (List CommandPlugin)
    , serviceRole : Maybe String
    , notificationConfig : Maybe NotificationConfig
    }



commandInvocationDecoder : JD.Decoder CommandInvocation
commandInvocationDecoder =
    JDP.decode CommandInvocation
        |> JDP.optional "commandId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestedDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable commandInvocationStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "traceOutput" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardOutputUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardErrorUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "commandPlugins" (JD.nullable (JD.list commandPluginDecoder)) Nothing
        |> JDP.optional "serviceRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "notificationConfig" (JD.nullable notificationConfigDecoder) Nothing




{-| One of

* `CommandInvocationStatus_Pending`
* `CommandInvocationStatus_InProgress`
* `CommandInvocationStatus_Delayed`
* `CommandInvocationStatus_Success`
* `CommandInvocationStatus_Cancelled`
* `CommandInvocationStatus_TimedOut`
* `CommandInvocationStatus_Failed`
* `CommandInvocationStatus_Cancelling`

-}
type CommandInvocationStatus
    = CommandInvocationStatus_Pending
    | CommandInvocationStatus_InProgress
    | CommandInvocationStatus_Delayed
    | CommandInvocationStatus_Success
    | CommandInvocationStatus_Cancelled
    | CommandInvocationStatus_TimedOut
    | CommandInvocationStatus_Failed
    | CommandInvocationStatus_Cancelling



commandInvocationStatusDecoder : JD.Decoder CommandInvocationStatus
commandInvocationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed CommandInvocationStatus_Pending

                    "InProgress" ->
                        JD.succeed CommandInvocationStatus_InProgress

                    "Delayed" ->
                        JD.succeed CommandInvocationStatus_Delayed

                    "Success" ->
                        JD.succeed CommandInvocationStatus_Success

                    "Cancelled" ->
                        JD.succeed CommandInvocationStatus_Cancelled

                    "TimedOut" ->
                        JD.succeed CommandInvocationStatus_TimedOut

                    "Failed" ->
                        JD.succeed CommandInvocationStatus_Failed

                    "Cancelling" ->
                        JD.succeed CommandInvocationStatus_Cancelling


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes plugin details.</p>
-}
type alias CommandPlugin =
    { name : Maybe String
    , status : Maybe CommandPluginStatus
    , statusDetails : Maybe String
    , responseCode : Maybe Int
    , responseStartDateTime : Maybe Date
    , responseFinishDateTime : Maybe Date
    , output : Maybe String
    , standardOutputUrl : Maybe String
    , standardErrorUrl : Maybe String
    , outputS3Region : Maybe String
    , outputS3BucketName : Maybe String
    , outputS3KeyPrefix : Maybe String
    }



commandPluginDecoder : JD.Decoder CommandPlugin
commandPluginDecoder =
    JDP.decode CommandPlugin
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable commandPluginStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "responseCode" (JD.nullable JD.int) Nothing
        |> JDP.optional "responseStartDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "responseFinishDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "output" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardOutputUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardErrorUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3Region" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3KeyPrefix" (JD.nullable JD.string) Nothing




{-| One of

* `CommandPluginStatus_Pending`
* `CommandPluginStatus_InProgress`
* `CommandPluginStatus_Success`
* `CommandPluginStatus_TimedOut`
* `CommandPluginStatus_Cancelled`
* `CommandPluginStatus_Failed`

-}
type CommandPluginStatus
    = CommandPluginStatus_Pending
    | CommandPluginStatus_InProgress
    | CommandPluginStatus_Success
    | CommandPluginStatus_TimedOut
    | CommandPluginStatus_Cancelled
    | CommandPluginStatus_Failed



commandPluginStatusDecoder : JD.Decoder CommandPluginStatus
commandPluginStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed CommandPluginStatus_Pending

                    "InProgress" ->
                        JD.succeed CommandPluginStatus_InProgress

                    "Success" ->
                        JD.succeed CommandPluginStatus_Success

                    "TimedOut" ->
                        JD.succeed CommandPluginStatus_TimedOut

                    "Cancelled" ->
                        JD.succeed CommandPluginStatus_Cancelled

                    "Failed" ->
                        JD.succeed CommandPluginStatus_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CommandStatus_Pending`
* `CommandStatus_InProgress`
* `CommandStatus_Success`
* `CommandStatus_Cancelled`
* `CommandStatus_Failed`
* `CommandStatus_TimedOut`
* `CommandStatus_Cancelling`

-}
type CommandStatus
    = CommandStatus_Pending
    | CommandStatus_InProgress
    | CommandStatus_Success
    | CommandStatus_Cancelled
    | CommandStatus_Failed
    | CommandStatus_TimedOut
    | CommandStatus_Cancelling



commandStatusDecoder : JD.Decoder CommandStatus
commandStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Pending" ->
                        JD.succeed CommandStatus_Pending

                    "InProgress" ->
                        JD.succeed CommandStatus_InProgress

                    "Success" ->
                        JD.succeed CommandStatus_Success

                    "Cancelled" ->
                        JD.succeed CommandStatus_Cancelled

                    "Failed" ->
                        JD.succeed CommandStatus_Failed

                    "TimedOut" ->
                        JD.succeed CommandStatus_TimedOut

                    "Cancelling" ->
                        JD.succeed CommandStatus_Cancelling


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createActivati
-}
type alias CreateActivationResult =
    { activationId : Maybe String
    , activationCode : Maybe String
    }



createActivationResultDecoder : JD.Decoder CreateActivationResult
createActivationResultDecoder =
    JDP.decode CreateActivationResult
        |> JDP.optional "activationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "activationCode" (JD.nullable JD.string) Nothing




{-| <p> Describes the association of an SSM document and an instance. </p>
-}
type alias CreateAssociationBatchRequestEntry =
    { name : String
    , instanceId : Maybe String
    , parameters : Maybe (Dict String (List String))
    , documentVersion : Maybe String
    , targets : Maybe (List Target)
    , scheduleExpression : Maybe String
    , outputLocation : Maybe InstanceAssociationOutputLocation
    }



createAssociationBatchRequestEntryDecoder : JD.Decoder CreateAssociationBatchRequestEntry
createAssociationBatchRequestEntryDecoder =
    JDP.decode CreateAssociationBatchRequestEntry
        |> JDP.required "name" JD.string
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "targets" (JD.nullable (JD.list targetDecoder)) Nothing
        |> JDP.optional "scheduleExpression" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputLocation" (JD.nullable instanceAssociationOutputLocationDecoder) Nothing




{-| Type of HTTP response from createAssociationBat
-}
type alias CreateAssociationBatchResult =
    { successful : Maybe (List AssociationDescription)
    , failed : Maybe (List FailedCreateAssociation)
    }



createAssociationBatchResultDecoder : JD.Decoder CreateAssociationBatchResult
createAssociationBatchResultDecoder =
    JDP.decode CreateAssociationBatchResult
        |> JDP.optional "successful" (JD.nullable (JD.list associationDescriptionDecoder)) Nothing
        |> JDP.optional "failed" (JD.nullable (JD.list failedCreateAssociationDecoder)) Nothing




{-| Type of HTTP response from createAssociati
-}
type alias CreateAssociationResult =
    { associationDescription : Maybe AssociationDescription
    }



createAssociationResultDecoder : JD.Decoder CreateAssociationResult
createAssociationResultDecoder =
    JDP.decode CreateAssociationResult
        |> JDP.optional "associationDescription" (JD.nullable associationDescriptionDecoder) Nothing




{-| Type of HTTP response from createDocume
-}
type alias CreateDocumentResult =
    { documentDescription : Maybe DocumentDescription
    }



createDocumentResultDecoder : JD.Decoder CreateDocumentResult
createDocumentResultDecoder =
    JDP.decode CreateDocumentResult
        |> JDP.optional "documentDescription" (JD.nullable documentDescriptionDecoder) Nothing




{-| Type of HTTP response from createMaintenanceWind
-}
type alias CreateMaintenanceWindowResult =
    { windowId : Maybe String
    }



createMaintenanceWindowResultDecoder : JD.Decoder CreateMaintenanceWindowResult
createMaintenanceWindowResultDecoder =
    JDP.decode CreateMaintenanceWindowResult
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createPatchBaseli
-}
type alias CreatePatchBaselineResult =
    { baselineId : Maybe String
    }



createPatchBaselineResultDecoder : JD.Decoder CreatePatchBaselineResult
createPatchBaselineResultDecoder =
    JDP.decode CreatePatchBaselineResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing




{-| <p>You have exceeded the limit for custom schemas. Delete one or more custom schemas and try again.</p>
-}
type alias CustomSchemaCountLimitExceededException =
    { message : Maybe String
    }



customSchemaCountLimitExceededExceptionDecoder : JD.Decoder CustomSchemaCountLimitExceededException
customSchemaCountLimitExceededExceptionDecoder =
    JDP.decode CustomSchemaCountLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteActivati
-}
type alias DeleteActivationResult =
    { 
    }



deleteActivationResultDecoder : JD.Decoder DeleteActivationResult
deleteActivationResultDecoder =
    JDP.decode DeleteActivationResult



{-| Type of HTTP response from deleteAssociati
-}
type alias DeleteAssociationResult =
    { 
    }



deleteAssociationResultDecoder : JD.Decoder DeleteAssociationResult
deleteAssociationResultDecoder =
    JDP.decode DeleteAssociationResult



{-| Type of HTTP response from deleteDocume
-}
type alias DeleteDocumentResult =
    { 
    }



deleteDocumentResultDecoder : JD.Decoder DeleteDocumentResult
deleteDocumentResultDecoder =
    JDP.decode DeleteDocumentResult



{-| Type of HTTP response from deleteMaintenanceWind
-}
type alias DeleteMaintenanceWindowResult =
    { windowId : Maybe String
    }



deleteMaintenanceWindowResultDecoder : JD.Decoder DeleteMaintenanceWindowResult
deleteMaintenanceWindowResultDecoder =
    JDP.decode DeleteMaintenanceWindowResult
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteParamet
-}
type alias DeleteParameterResult =
    { 
    }



deleteParameterResultDecoder : JD.Decoder DeleteParameterResult
deleteParameterResultDecoder =
    JDP.decode DeleteParameterResult



{-| Type of HTTP response from deletePatchBaseli
-}
type alias DeletePatchBaselineResult =
    { baselineId : Maybe String
    }



deletePatchBaselineResultDecoder : JD.Decoder DeletePatchBaselineResult
deletePatchBaselineResultDecoder =
    JDP.decode DeletePatchBaselineResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deregisterManagedInstan
-}
type alias DeregisterManagedInstanceResult =
    { 
    }



deregisterManagedInstanceResultDecoder : JD.Decoder DeregisterManagedInstanceResult
deregisterManagedInstanceResultDecoder =
    JDP.decode DeregisterManagedInstanceResult



{-| Type of HTTP response from deregisterPatchBaselineForPatchGro
-}
type alias DeregisterPatchBaselineForPatchGroupResult =
    { baselineId : Maybe String
    , patchGroup : Maybe String
    }



deregisterPatchBaselineForPatchGroupResultDecoder : JD.Decoder DeregisterPatchBaselineForPatchGroupResult
deregisterPatchBaselineForPatchGroupResultDecoder =
    JDP.decode DeregisterPatchBaselineForPatchGroupResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "patchGroup" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deregisterTargetFromMaintenanceWind
-}
type alias DeregisterTargetFromMaintenanceWindowResult =
    { windowId : Maybe String
    , windowTargetId : Maybe String
    }



deregisterTargetFromMaintenanceWindowResultDecoder : JD.Decoder DeregisterTargetFromMaintenanceWindowResult
deregisterTargetFromMaintenanceWindowResultDecoder =
    JDP.decode DeregisterTargetFromMaintenanceWindowResult
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "windowTargetId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deregisterTaskFromMaintenanceWind
-}
type alias DeregisterTaskFromMaintenanceWindowResult =
    { windowId : Maybe String
    , windowTaskId : Maybe String
    }



deregisterTaskFromMaintenanceWindowResultDecoder : JD.Decoder DeregisterTaskFromMaintenanceWindowResult
deregisterTaskFromMaintenanceWindowResultDecoder =
    JDP.decode DeregisterTaskFromMaintenanceWindowResult
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "windowTaskId" (JD.nullable JD.string) Nothing




{-| <p>Filter for the DescribeActivation API.</p>
-}
type alias DescribeActivationsFilter =
    { filterKey : Maybe DescribeActivationsFilterKeys
    , filterValues : Maybe (List String)
    }



describeActivationsFilterDecoder : JD.Decoder DescribeActivationsFilter
describeActivationsFilterDecoder =
    JDP.decode DescribeActivationsFilter
        |> JDP.optional "filterKey" (JD.nullable describeActivationsFilterKeysDecoder) Nothing
        |> JDP.optional "filterValues" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `DescribeActivationsFilterKeys_ActivationIds`
* `DescribeActivationsFilterKeys_DefaultInstanceName`
* `DescribeActivationsFilterKeys_IamRole`

-}
type DescribeActivationsFilterKeys
    = DescribeActivationsFilterKeys_ActivationIds
    | DescribeActivationsFilterKeys_DefaultInstanceName
    | DescribeActivationsFilterKeys_IamRole



describeActivationsFilterKeysDecoder : JD.Decoder DescribeActivationsFilterKeys
describeActivationsFilterKeysDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ActivationIds" ->
                        JD.succeed DescribeActivationsFilterKeys_ActivationIds

                    "DefaultInstanceName" ->
                        JD.succeed DescribeActivationsFilterKeys_DefaultInstanceName

                    "IamRole" ->
                        JD.succeed DescribeActivationsFilterKeys_IamRole


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from describeActivatio
-}
type alias DescribeActivationsResult =
    { activationList : Maybe (List Activation)
    , nextToken : Maybe String
    }



describeActivationsResultDecoder : JD.Decoder DescribeActivationsResult
describeActivationsResultDecoder =
    JDP.decode DescribeActivationsResult
        |> JDP.optional "activationList" (JD.nullable (JD.list activationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeAssociati
-}
type alias DescribeAssociationResult =
    { associationDescription : Maybe AssociationDescription
    }



describeAssociationResultDecoder : JD.Decoder DescribeAssociationResult
describeAssociationResultDecoder =
    JDP.decode DescribeAssociationResult
        |> JDP.optional "associationDescription" (JD.nullable associationDescriptionDecoder) Nothing




{-| Type of HTTP response from describeAutomationExecutio
-}
type alias DescribeAutomationExecutionsResult =
    { automationExecutionMetadataList : Maybe (List AutomationExecutionMetadata)
    , nextToken : Maybe String
    }



describeAutomationExecutionsResultDecoder : JD.Decoder DescribeAutomationExecutionsResult
describeAutomationExecutionsResultDecoder =
    JDP.decode DescribeAutomationExecutionsResult
        |> JDP.optional "automationExecutionMetadataList" (JD.nullable (JD.list automationExecutionMetadataDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeAvailablePatch
-}
type alias DescribeAvailablePatchesResult =
    { patches : Maybe (List Patch)
    , nextToken : Maybe String
    }



describeAvailablePatchesResultDecoder : JD.Decoder DescribeAvailablePatchesResult
describeAvailablePatchesResultDecoder =
    JDP.decode DescribeAvailablePatchesResult
        |> JDP.optional "patches" (JD.nullable (JD.list patchDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeDocumentPermission
-}
type alias DescribeDocumentPermissionResponse =
    { accountIds : Maybe (List String)
    }



describeDocumentPermissionResponseDecoder : JD.Decoder DescribeDocumentPermissionResponse
describeDocumentPermissionResponseDecoder =
    JDP.decode DescribeDocumentPermissionResponse
        |> JDP.optional "accountIds" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from describeDocume
-}
type alias DescribeDocumentResult =
    { document : Maybe DocumentDescription
    }



describeDocumentResultDecoder : JD.Decoder DescribeDocumentResult
describeDocumentResultDecoder =
    JDP.decode DescribeDocumentResult
        |> JDP.optional "document" (JD.nullable documentDescriptionDecoder) Nothing




{-| Type of HTTP response from describeEffectiveInstanceAssociatio
-}
type alias DescribeEffectiveInstanceAssociationsResult =
    { associations : Maybe (List InstanceAssociation)
    , nextToken : Maybe String
    }



describeEffectiveInstanceAssociationsResultDecoder : JD.Decoder DescribeEffectiveInstanceAssociationsResult
describeEffectiveInstanceAssociationsResultDecoder =
    JDP.decode DescribeEffectiveInstanceAssociationsResult
        |> JDP.optional "associations" (JD.nullable (JD.list instanceAssociationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEffectivePatchesForPatchBaseli
-}
type alias DescribeEffectivePatchesForPatchBaselineResult =
    { effectivePatches : Maybe (List EffectivePatch)
    , nextToken : Maybe String
    }



describeEffectivePatchesForPatchBaselineResultDecoder : JD.Decoder DescribeEffectivePatchesForPatchBaselineResult
describeEffectivePatchesForPatchBaselineResultDecoder =
    JDP.decode DescribeEffectivePatchesForPatchBaselineResult
        |> JDP.optional "effectivePatches" (JD.nullable (JD.list effectivePatchDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstanceAssociationsStat
-}
type alias DescribeInstanceAssociationsStatusResult =
    { instanceAssociationStatusInfos : Maybe (List InstanceAssociationStatusInfo)
    , nextToken : Maybe String
    }



describeInstanceAssociationsStatusResultDecoder : JD.Decoder DescribeInstanceAssociationsStatusResult
describeInstanceAssociationsStatusResultDecoder =
    JDP.decode DescribeInstanceAssociationsStatusResult
        |> JDP.optional "instanceAssociationStatusInfos" (JD.nullable (JD.list instanceAssociationStatusInfoDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstanceInformati
-}
type alias DescribeInstanceInformationResult =
    { instanceInformationList : Maybe (List InstanceInformation)
    , nextToken : Maybe String
    }



describeInstanceInformationResultDecoder : JD.Decoder DescribeInstanceInformationResult
describeInstanceInformationResultDecoder =
    JDP.decode DescribeInstanceInformationResult
        |> JDP.optional "instanceInformationList" (JD.nullable (JD.list instanceInformationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstancePatchStatesForPatchGro
-}
type alias DescribeInstancePatchStatesForPatchGroupResult =
    { instancePatchStates : Maybe (List InstancePatchState)
    , nextToken : Maybe String
    }



describeInstancePatchStatesForPatchGroupResultDecoder : JD.Decoder DescribeInstancePatchStatesForPatchGroupResult
describeInstancePatchStatesForPatchGroupResultDecoder =
    JDP.decode DescribeInstancePatchStatesForPatchGroupResult
        |> JDP.optional "instancePatchStates" (JD.nullable (JD.list instancePatchStateDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstancePatchStat
-}
type alias DescribeInstancePatchStatesResult =
    { instancePatchStates : Maybe (List InstancePatchState)
    , nextToken : Maybe String
    }



describeInstancePatchStatesResultDecoder : JD.Decoder DescribeInstancePatchStatesResult
describeInstancePatchStatesResultDecoder =
    JDP.decode DescribeInstancePatchStatesResult
        |> JDP.optional "instancePatchStates" (JD.nullable (JD.list instancePatchStateDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstancePatch
-}
type alias DescribeInstancePatchesResult =
    { patches : Maybe (List PatchComplianceData)
    , nextToken : Maybe String
    }



describeInstancePatchesResultDecoder : JD.Decoder DescribeInstancePatchesResult
describeInstancePatchesResultDecoder =
    JDP.decode DescribeInstancePatchesResult
        |> JDP.optional "patches" (JD.nullable (JD.list patchComplianceDataDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMaintenanceWindowExecutionTaskInvocatio
-}
type alias DescribeMaintenanceWindowExecutionTaskInvocationsResult =
    { windowExecutionTaskInvocationIdentities : Maybe (List MaintenanceWindowExecutionTaskInvocationIdentity)
    , nextToken : Maybe String
    }



describeMaintenanceWindowExecutionTaskInvocationsResultDecoder : JD.Decoder DescribeMaintenanceWindowExecutionTaskInvocationsResult
describeMaintenanceWindowExecutionTaskInvocationsResultDecoder =
    JDP.decode DescribeMaintenanceWindowExecutionTaskInvocationsResult
        |> JDP.optional "windowExecutionTaskInvocationIdentities" (JD.nullable (JD.list maintenanceWindowExecutionTaskInvocationIdentityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMaintenanceWindowExecutionTas
-}
type alias DescribeMaintenanceWindowExecutionTasksResult =
    { windowExecutionTaskIdentities : Maybe (List MaintenanceWindowExecutionTaskIdentity)
    , nextToken : Maybe String
    }



describeMaintenanceWindowExecutionTasksResultDecoder : JD.Decoder DescribeMaintenanceWindowExecutionTasksResult
describeMaintenanceWindowExecutionTasksResultDecoder =
    JDP.decode DescribeMaintenanceWindowExecutionTasksResult
        |> JDP.optional "windowExecutionTaskIdentities" (JD.nullable (JD.list maintenanceWindowExecutionTaskIdentityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMaintenanceWindowExecutio
-}
type alias DescribeMaintenanceWindowExecutionsResult =
    { windowExecutions : Maybe (List MaintenanceWindowExecution)
    , nextToken : Maybe String
    }



describeMaintenanceWindowExecutionsResultDecoder : JD.Decoder DescribeMaintenanceWindowExecutionsResult
describeMaintenanceWindowExecutionsResultDecoder =
    JDP.decode DescribeMaintenanceWindowExecutionsResult
        |> JDP.optional "windowExecutions" (JD.nullable (JD.list maintenanceWindowExecutionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMaintenanceWindowTarge
-}
type alias DescribeMaintenanceWindowTargetsResult =
    { targets : Maybe (List MaintenanceWindowTarget)
    , nextToken : Maybe String
    }



describeMaintenanceWindowTargetsResultDecoder : JD.Decoder DescribeMaintenanceWindowTargetsResult
describeMaintenanceWindowTargetsResultDecoder =
    JDP.decode DescribeMaintenanceWindowTargetsResult
        |> JDP.optional "targets" (JD.nullable (JD.list maintenanceWindowTargetDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMaintenanceWindowTas
-}
type alias DescribeMaintenanceWindowTasksResult =
    { tasks : Maybe (List MaintenanceWindowTask)
    , nextToken : Maybe String
    }



describeMaintenanceWindowTasksResultDecoder : JD.Decoder DescribeMaintenanceWindowTasksResult
describeMaintenanceWindowTasksResultDecoder =
    JDP.decode DescribeMaintenanceWindowTasksResult
        |> JDP.optional "tasks" (JD.nullable (JD.list maintenanceWindowTaskDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMaintenanceWindo
-}
type alias DescribeMaintenanceWindowsResult =
    { windowIdentities : Maybe (List MaintenanceWindowIdentity)
    , nextToken : Maybe String
    }



describeMaintenanceWindowsResultDecoder : JD.Decoder DescribeMaintenanceWindowsResult
describeMaintenanceWindowsResultDecoder =
    JDP.decode DescribeMaintenanceWindowsResult
        |> JDP.optional "windowIdentities" (JD.nullable (JD.list maintenanceWindowIdentityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeParamete
-}
type alias DescribeParametersResult =
    { parameters : Maybe (List ParameterMetadata)
    , nextToken : Maybe String
    }



describeParametersResultDecoder : JD.Decoder DescribeParametersResult
describeParametersResultDecoder =
    JDP.decode DescribeParametersResult
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterMetadataDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describePatchBaselin
-}
type alias DescribePatchBaselinesResult =
    { baselineIdentities : Maybe (List PatchBaselineIdentity)
    , nextToken : Maybe String
    }



describePatchBaselinesResultDecoder : JD.Decoder DescribePatchBaselinesResult
describePatchBaselinesResultDecoder =
    JDP.decode DescribePatchBaselinesResult
        |> JDP.optional "baselineIdentities" (JD.nullable (JD.list patchBaselineIdentityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describePatchGroupSta
-}
type alias DescribePatchGroupStateResult =
    { instances : Maybe Int
    , instancesWithInstalledPatches : Maybe Int
    , instancesWithInstalledOtherPatches : Maybe Int
    , instancesWithMissingPatches : Maybe Int
    , instancesWithFailedPatches : Maybe Int
    , instancesWithNotApplicablePatches : Maybe Int
    }



describePatchGroupStateResultDecoder : JD.Decoder DescribePatchGroupStateResult
describePatchGroupStateResultDecoder =
    JDP.decode DescribePatchGroupStateResult
        |> JDP.optional "instances" (JD.nullable JD.int) Nothing
        |> JDP.optional "instancesWithInstalledPatches" (JD.nullable JD.int) Nothing
        |> JDP.optional "instancesWithInstalledOtherPatches" (JD.nullable JD.int) Nothing
        |> JDP.optional "instancesWithMissingPatches" (JD.nullable JD.int) Nothing
        |> JDP.optional "instancesWithFailedPatches" (JD.nullable JD.int) Nothing
        |> JDP.optional "instancesWithNotApplicablePatches" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describePatchGrou
-}
type alias DescribePatchGroupsResult =
    { mappings : Maybe (List PatchGroupPatchBaselineMapping)
    , nextToken : Maybe String
    }



describePatchGroupsResultDecoder : JD.Decoder DescribePatchGroupsResult
describePatchGroupsResultDecoder =
    JDP.decode DescribePatchGroupsResult
        |> JDP.optional "mappings" (JD.nullable (JD.list patchGroupPatchBaselineMappingDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The specified SSM document already exists.</p>
-}
type alias DocumentAlreadyExists =
    { message : Maybe String
    }



documentAlreadyExistsDecoder : JD.Decoder DocumentAlreadyExists
documentAlreadyExistsDecoder =
    JDP.decode DocumentAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A default version of a document.</p>
-}
type alias DocumentDefaultVersionDescription =
    { name : Maybe String
    , defaultVersion : Maybe String
    }



documentDefaultVersionDescriptionDecoder : JD.Decoder DocumentDefaultVersionDescription
documentDefaultVersionDescriptionDecoder =
    JDP.decode DocumentDefaultVersionDescription
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultVersion" (JD.nullable JD.string) Nothing




{-| <p> Describes an SSM document. </p>
-}
type alias DocumentDescription =
    { sha1 : Maybe String
    , hash : Maybe String
    , hashType : Maybe DocumentHashType
    , name : Maybe String
    , owner : Maybe String
    , createdDate : Maybe Date
    , status : Maybe DocumentStatus
    , documentVersion : Maybe String
    , description : Maybe String
    , parameters : Maybe (List DocumentParameter)
    , platformTypes : Maybe (List PlatformType)
    , documentType : Maybe DocumentType
    , schemaVersion : Maybe String
    , latestVersion : Maybe String
    , defaultVersion : Maybe String
    }



documentDescriptionDecoder : JD.Decoder DocumentDescription
documentDescriptionDecoder =
    JDP.decode DocumentDescription
        |> JDP.optional "sha1" (JD.nullable JD.string) Nothing
        |> JDP.optional "hash" (JD.nullable JD.string) Nothing
        |> JDP.optional "hashType" (JD.nullable documentHashTypeDecoder) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "owner" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable documentStatusDecoder) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.list documentParameterDecoder)) Nothing
        |> JDP.optional "platformTypes" (JD.nullable (JD.list platformTypeDecoder)) Nothing
        |> JDP.optional "documentType" (JD.nullable documentTypeDecoder) Nothing
        |> JDP.optional "schemaVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultVersion" (JD.nullable JD.string) Nothing




{-| <p>Describes a filter.</p>
-}
type alias DocumentFilter =
    { key : DocumentFilterKey
    , value : String
    }



documentFilterDecoder : JD.Decoder DocumentFilter
documentFilterDecoder =
    JDP.decode DocumentFilter
        |> JDP.required "key" documentFilterKeyDecoder
        |> JDP.required "value" JD.string




{-| One of

* `DocumentFilterKey_Name`
* `DocumentFilterKey_Owner`
* `DocumentFilterKey_PlatformTypes`
* `DocumentFilterKey_DocumentType`

-}
type DocumentFilterKey
    = DocumentFilterKey_Name
    | DocumentFilterKey_Owner
    | DocumentFilterKey_PlatformTypes
    | DocumentFilterKey_DocumentType



documentFilterKeyDecoder : JD.Decoder DocumentFilterKey
documentFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Name" ->
                        JD.succeed DocumentFilterKey_Name

                    "Owner" ->
                        JD.succeed DocumentFilterKey_Owner

                    "PlatformTypes" ->
                        JD.succeed DocumentFilterKey_PlatformTypes

                    "DocumentType" ->
                        JD.succeed DocumentFilterKey_DocumentType


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DocumentHashType_Sha256`
* `DocumentHashType_Sha1`

-}
type DocumentHashType
    = DocumentHashType_Sha256
    | DocumentHashType_Sha1



documentHashTypeDecoder : JD.Decoder DocumentHashType
documentHashTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Sha256" ->
                        JD.succeed DocumentHashType_Sha256

                    "Sha1" ->
                        JD.succeed DocumentHashType_Sha1


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the name of an SSM document.</p>
-}
type alias DocumentIdentifier =
    { name : Maybe String
    , owner : Maybe String
    , platformTypes : Maybe (List PlatformType)
    , documentVersion : Maybe String
    , documentType : Maybe DocumentType
    , schemaVersion : Maybe String
    }



documentIdentifierDecoder : JD.Decoder DocumentIdentifier
documentIdentifierDecoder =
    JDP.decode DocumentIdentifier
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "owner" (JD.nullable JD.string) Nothing
        |> JDP.optional "platformTypes" (JD.nullable (JD.list platformTypeDecoder)) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentType" (JD.nullable documentTypeDecoder) Nothing
        |> JDP.optional "schemaVersion" (JD.nullable JD.string) Nothing




{-| <p>You can have at most 200 active SSM documents.</p>
-}
type alias DocumentLimitExceeded =
    { message : Maybe String
    }



documentLimitExceededDecoder : JD.Decoder DocumentLimitExceeded
documentLimitExceededDecoder =
    JDP.decode DocumentLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Parameters specified in the SSM document that execute on the server when the command is run. </p>
-}
type alias DocumentParameter =
    { name : Maybe String
    , type_ : Maybe DocumentParameterType
    , description : Maybe String
    , defaultValue : Maybe String
    }



documentParameterDecoder : JD.Decoder DocumentParameter
documentParameterDecoder =
    JDP.decode DocumentParameter
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable documentParameterTypeDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing




{-| One of

* `DocumentParameterType_String`
* `DocumentParameterType_StringList`

-}
type DocumentParameterType
    = DocumentParameterType_String
    | DocumentParameterType_StringList



documentParameterTypeDecoder : JD.Decoder DocumentParameterType
documentParameterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "String" ->
                        JD.succeed DocumentParameterType_String

                    "StringList" ->
                        JD.succeed DocumentParameterType_StringList


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The document cannot be shared with more AWS user accounts. You can share a document with a maximum of 20 accounts. You can publicly share up to five documents. If you need to increase this limit, contact AWS Support.</p>
-}
type alias DocumentPermissionLimit =
    { message : Maybe String
    }



documentPermissionLimitDecoder : JD.Decoder DocumentPermissionLimit
documentPermissionLimitDecoder =
    JDP.decode DocumentPermissionLimit
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `DocumentPermissionType_Share`

-}
type DocumentPermissionType
    = DocumentPermissionType_Share



documentPermissionTypeDecoder : JD.Decoder DocumentPermissionType
documentPermissionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Share" ->
                        JD.succeed DocumentPermissionType_Share


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DocumentStatus_Creating`
* `DocumentStatus_Active`
* `DocumentStatus_Updating`
* `DocumentStatus_Deleting`

-}
type DocumentStatus
    = DocumentStatus_Creating
    | DocumentStatus_Active
    | DocumentStatus_Updating
    | DocumentStatus_Deleting



documentStatusDecoder : JD.Decoder DocumentStatus
documentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Creating" ->
                        JD.succeed DocumentStatus_Creating

                    "Active" ->
                        JD.succeed DocumentStatus_Active

                    "Updating" ->
                        JD.succeed DocumentStatus_Updating

                    "Deleting" ->
                        JD.succeed DocumentStatus_Deleting


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DocumentType_Command`
* `DocumentType_Policy`
* `DocumentType_Automation`

-}
type DocumentType
    = DocumentType_Command
    | DocumentType_Policy
    | DocumentType_Automation



documentTypeDecoder : JD.Decoder DocumentType
documentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Command" ->
                        JD.succeed DocumentType_Command

                    "Policy" ->
                        JD.succeed DocumentType_Policy

                    "Automation" ->
                        JD.succeed DocumentType_Automation


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Version information about the document.</p>
-}
type alias DocumentVersionInfo =
    { name : Maybe String
    , documentVersion : Maybe String
    , createdDate : Maybe Date
    , isDefaultVersion : Maybe Bool
    }



documentVersionInfoDecoder : JD.Decoder DocumentVersionInfo
documentVersionInfoDecoder =
    JDP.decode DocumentVersionInfo
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "isDefaultVersion" (JD.nullable JD.bool) Nothing




{-| <p>The document has too many versions. Delete one or more document versions and try again.</p>
-}
type alias DocumentVersionLimitExceeded =
    { message : Maybe String
    }



documentVersionLimitExceededDecoder : JD.Decoder DocumentVersionLimitExceeded
documentVersionLimitExceededDecoder =
    JDP.decode DocumentVersionLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Error returned when the ID specified for a resource (e.g. a Maintenance Window) doesn’t exist.</p>
-}
type alias DoesNotExistException =
    { message : Maybe String
    }



doesNotExistExceptionDecoder : JD.Decoder DoesNotExistException
doesNotExistExceptionDecoder =
    JDP.decode DoesNotExistException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The content of the association document matches another document. Change the content of the document and try again.</p>
-}
type alias DuplicateDocumentContent =
    { message : Maybe String
    }



duplicateDocumentContentDecoder : JD.Decoder DuplicateDocumentContent
duplicateDocumentContentDecoder =
    JDP.decode DuplicateDocumentContent
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You cannot specify an instance ID in more than one association.</p>
-}
type alias DuplicateInstanceId =
    { 
    }



duplicateInstanceIdDecoder : JD.Decoder DuplicateInstanceId
duplicateInstanceIdDecoder =
    JDP.decode DuplicateInstanceId



{-| <p>The EffectivePatch structure defines metadata about a patch along with the approval state of the patch in a particular patch baseline. The approval state includes information about whether the patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly rejected and the date the patch was or will be approved.</p>
-}
type alias EffectivePatch =
    { patch : Maybe Patch
    , patchStatus : Maybe PatchStatus
    }



effectivePatchDecoder : JD.Decoder EffectivePatch
effectivePatchDecoder =
    JDP.decode EffectivePatch
        |> JDP.optional "patch" (JD.nullable patchDecoder) Nothing
        |> JDP.optional "patchStatus" (JD.nullable patchStatusDecoder) Nothing




{-| <p>Describes a failed association.</p>
-}
type alias FailedCreateAssociation =
    { entry : Maybe CreateAssociationBatchRequestEntry
    , message : Maybe String
    , fault : Maybe Fault
    }



failedCreateAssociationDecoder : JD.Decoder FailedCreateAssociation
failedCreateAssociationDecoder =
    JDP.decode FailedCreateAssociation
        |> JDP.optional "entry" (JD.nullable createAssociationBatchRequestEntryDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "fault" (JD.nullable faultDecoder) Nothing




{-| One of

* `Fault_Client`
* `Fault_Server`
* `Fault_Unknown`

-}
type Fault
    = Fault_Client
    | Fault_Server
    | Fault_Unknown



faultDecoder : JD.Decoder Fault
faultDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Client" ->
                        JD.succeed Fault_Client

                    "Server" ->
                        JD.succeed Fault_Server

                    "Unknown" ->
                        JD.succeed Fault_Unknown


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getAutomationExecuti
-}
type alias GetAutomationExecutionResult =
    { automationExecution : Maybe AutomationExecution
    }



getAutomationExecutionResultDecoder : JD.Decoder GetAutomationExecutionResult
getAutomationExecutionResultDecoder =
    JDP.decode GetAutomationExecutionResult
        |> JDP.optional "automationExecution" (JD.nullable automationExecutionDecoder) Nothing




{-| Type of HTTP response from getCommandInvocati
-}
type alias GetCommandInvocationResult =
    { commandId : Maybe String
    , instanceId : Maybe String
    , comment : Maybe String
    , documentName : Maybe String
    , pluginName : Maybe String
    , responseCode : Maybe Int
    , executionStartDateTime : Maybe String
    , executionElapsedTime : Maybe String
    , executionEndDateTime : Maybe String
    , status : Maybe CommandInvocationStatus
    , statusDetails : Maybe String
    , standardOutputContent : Maybe String
    , standardOutputUrl : Maybe String
    , standardErrorContent : Maybe String
    , standardErrorUrl : Maybe String
    }



getCommandInvocationResultDecoder : JD.Decoder GetCommandInvocationResult
getCommandInvocationResultDecoder =
    JDP.decode GetCommandInvocationResult
        |> JDP.optional "commandId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "comment" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "pluginName" (JD.nullable JD.string) Nothing
        |> JDP.optional "responseCode" (JD.nullable JD.int) Nothing
        |> JDP.optional "executionStartDateTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionElapsedTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionEndDateTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable commandInvocationStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardOutputContent" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardOutputUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardErrorContent" (JD.nullable JD.string) Nothing
        |> JDP.optional "standardErrorUrl" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getDefaultPatchBaseli
-}
type alias GetDefaultPatchBaselineResult =
    { baselineId : Maybe String
    }



getDefaultPatchBaselineResultDecoder : JD.Decoder GetDefaultPatchBaselineResult
getDefaultPatchBaselineResultDecoder =
    JDP.decode GetDefaultPatchBaselineResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getDeployablePatchSnapshotForInstan
-}
type alias GetDeployablePatchSnapshotForInstanceResult =
    { instanceId : Maybe String
    , snapshotId : Maybe String
    , snapshotDownloadUrl : Maybe String
    }



getDeployablePatchSnapshotForInstanceResultDecoder : JD.Decoder GetDeployablePatchSnapshotForInstanceResult
getDeployablePatchSnapshotForInstanceResultDecoder =
    JDP.decode GetDeployablePatchSnapshotForInstanceResult
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "snapshotDownloadUrl" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getDocume
-}
type alias GetDocumentResult =
    { name : Maybe String
    , documentVersion : Maybe String
    , content : Maybe String
    , documentType : Maybe DocumentType
    }



getDocumentResultDecoder : JD.Decoder GetDocumentResult
getDocumentResultDecoder =
    JDP.decode GetDocumentResult
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "content" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentType" (JD.nullable documentTypeDecoder) Nothing




{-| Type of HTTP response from getInvento
-}
type alias GetInventoryResult =
    { entities : Maybe (List InventoryResultEntity)
    , nextToken : Maybe String
    }



getInventoryResultDecoder : JD.Decoder GetInventoryResult
getInventoryResultDecoder =
    JDP.decode GetInventoryResult
        |> JDP.optional "entities" (JD.nullable (JD.list inventoryResultEntityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getInventorySche
-}
type alias GetInventorySchemaResult =
    { schemas : Maybe (List InventoryItemSchema)
    , nextToken : Maybe String
    }



getInventorySchemaResultDecoder : JD.Decoder GetInventorySchemaResult
getInventorySchemaResultDecoder =
    JDP.decode GetInventorySchemaResult
        |> JDP.optional "schemas" (JD.nullable (JD.list inventoryItemSchemaDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getMaintenanceWindowExecuti
-}
type alias GetMaintenanceWindowExecutionResult =
    { windowExecutionId : Maybe String
    , taskIds : Maybe (List String)
    , status : Maybe MaintenanceWindowExecutionStatus
    , statusDetails : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    }



getMaintenanceWindowExecutionResultDecoder : JD.Decoder GetMaintenanceWindowExecutionResult
getMaintenanceWindowExecutionResultDecoder =
    JDP.decode GetMaintenanceWindowExecutionResult
        |> JDP.optional "windowExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "status" (JD.nullable maintenanceWindowExecutionStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getMaintenanceWindowExecutionTa
-}
type alias GetMaintenanceWindowExecutionTaskResult =
    { windowExecutionId : Maybe String
    , taskExecutionId : Maybe String
    , taskArn : Maybe String
    , serviceRole : Maybe String
    , type_ : Maybe MaintenanceWindowTaskType
    , taskParameters : Maybe (List (Dict String MaintenanceWindowTaskParameterValueExpression))
    , priority : Maybe Int
    , maxConcurrency : Maybe String
    , maxErrors : Maybe String
    , status : Maybe MaintenanceWindowExecutionStatus
    , statusDetails : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    }



getMaintenanceWindowExecutionTaskResultDecoder : JD.Decoder GetMaintenanceWindowExecutionTaskResult
getMaintenanceWindowExecutionTaskResultDecoder =
    JDP.decode GetMaintenanceWindowExecutionTaskResult
        |> JDP.optional "windowExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable maintenanceWindowTaskTypeDecoder) Nothing
        |> JDP.optional "taskParameters" (JD.nullable (JD.list (JD.dict maintenanceWindowTaskParameterValueExpressionDecoder))) Nothing
        |> JDP.optional "priority" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxConcurrency" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxErrors" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable maintenanceWindowExecutionStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getMaintenanceWind
-}
type alias GetMaintenanceWindowResult =
    { windowId : Maybe String
    , name : Maybe String
    , schedule : Maybe String
    , duration : Maybe Int
    , cutoff : Maybe Int
    , allowUnassociatedTargets : Maybe Bool
    , enabled : Maybe Bool
    , createdDate : Maybe Date
    , modifiedDate : Maybe Date
    }



getMaintenanceWindowResultDecoder : JD.Decoder GetMaintenanceWindowResult
getMaintenanceWindowResultDecoder =
    JDP.decode GetMaintenanceWindowResult
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "schedule" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "cutoff" (JD.nullable JD.int) Nothing
        |> JDP.optional "allowUnassociatedTargets" (JD.nullable JD.bool) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "modifiedDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getParameterHisto
-}
type alias GetParameterHistoryResult =
    { parameters : Maybe (List ParameterHistory)
    , nextToken : Maybe String
    }



getParameterHistoryResultDecoder : JD.Decoder GetParameterHistoryResult
getParameterHistoryResultDecoder =
    JDP.decode GetParameterHistoryResult
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterHistoryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getParamete
-}
type alias GetParametersResult =
    { parameters : Maybe (List Parameter)
    , invalidParameters : Maybe (List String)
    }



getParametersResultDecoder : JD.Decoder GetParametersResult
getParametersResultDecoder =
    JDP.decode GetParametersResult
        |> JDP.optional "parameters" (JD.nullable (JD.list parameterDecoder)) Nothing
        |> JDP.optional "invalidParameters" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from getPatchBaselineForPatchGro
-}
type alias GetPatchBaselineForPatchGroupResult =
    { baselineId : Maybe String
    , patchGroup : Maybe String
    }



getPatchBaselineForPatchGroupResultDecoder : JD.Decoder GetPatchBaselineForPatchGroupResult
getPatchBaselineForPatchGroupResultDecoder =
    JDP.decode GetPatchBaselineForPatchGroupResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "patchGroup" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getPatchBaseli
-}
type alias GetPatchBaselineResult =
    { baselineId : Maybe String
    , name : Maybe String
    , globalFilters : Maybe PatchFilterGroup
    , approvalRules : Maybe PatchRuleGroup
    , approvedPatches : Maybe (List String)
    , rejectedPatches : Maybe (List String)
    , patchGroups : Maybe (List String)
    , createdDate : Maybe Date
    , modifiedDate : Maybe Date
    , description : Maybe String
    }



getPatchBaselineResultDecoder : JD.Decoder GetPatchBaselineResult
getPatchBaselineResultDecoder =
    JDP.decode GetPatchBaselineResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "globalFilters" (JD.nullable patchFilterGroupDecoder) Nothing
        |> JDP.optional "approvalRules" (JD.nullable patchRuleGroupDecoder) Nothing
        |> JDP.optional "approvedPatches" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "rejectedPatches" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "patchGroups" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "modifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Error returned when an idempotent operation is retried and the parameters don’t match the original call to the API with the same idempotency token. </p>
-}
type alias IdempotentParameterMismatch =
    { message : Maybe String
    }



idempotentParameterMismatchDecoder : JD.Decoder IdempotentParameterMismatch
idempotentParameterMismatchDecoder =
    JDP.decode IdempotentParameterMismatch
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Status information about the aggregated associations.</p>
-}
type alias InstanceAggregatedAssociationOverview =
    { detailedStatus : Maybe String
    , instanceAssociationStatusAggregatedCount : Maybe (Dict String Int)
    }



instanceAggregatedAssociationOverviewDecoder : JD.Decoder InstanceAggregatedAssociationOverview
instanceAggregatedAssociationOverviewDecoder =
    JDP.decode InstanceAggregatedAssociationOverview
        |> JDP.optional "detailedStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceAssociationStatusAggregatedCount" (JD.nullable (JD.dict JD.int)) Nothing




{-| <p>One or more association documents on the instance. </p>
-}
type alias InstanceAssociation =
    { associationId : Maybe String
    , instanceId : Maybe String
    , content : Maybe String
    }



instanceAssociationDecoder : JD.Decoder InstanceAssociation
instanceAssociationDecoder =
    JDP.decode InstanceAssociation
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "content" (JD.nullable JD.string) Nothing




{-| <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-}
type alias InstanceAssociationOutputLocation =
    { s3Location : Maybe S3OutputLocation
    }



instanceAssociationOutputLocationDecoder : JD.Decoder InstanceAssociationOutputLocation
instanceAssociationOutputLocationDecoder =
    JDP.decode InstanceAssociationOutputLocation
        |> JDP.optional "s3Location" (JD.nullable s3OutputLocationDecoder) Nothing




{-| <p>The URL of Amazon S3 bucket where you want to store the results of this request.</p>
-}
type alias InstanceAssociationOutputUrl =
    { s3OutputUrl : Maybe S3OutputUrl
    }



instanceAssociationOutputUrlDecoder : JD.Decoder InstanceAssociationOutputUrl
instanceAssociationOutputUrlDecoder =
    JDP.decode InstanceAssociationOutputUrl
        |> JDP.optional "s3OutputUrl" (JD.nullable s3OutputUrlDecoder) Nothing




{-| <p>Status information about the instance association.</p>
-}
type alias InstanceAssociationStatusInfo =
    { associationId : Maybe String
    , name : Maybe String
    , documentVersion : Maybe String
    , instanceId : Maybe String
    , executionDate : Maybe Date
    , status : Maybe String
    , detailedStatus : Maybe String
    , executionSummary : Maybe String
    , errorCode : Maybe String
    , outputUrl : Maybe InstanceAssociationOutputUrl
    }



instanceAssociationStatusInfoDecoder : JD.Decoder InstanceAssociationStatusInfo
instanceAssociationStatusInfoDecoder =
    JDP.decode InstanceAssociationStatusInfo
        |> JDP.optional "associationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "documentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "detailedStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionSummary" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputUrl" (JD.nullable instanceAssociationOutputUrlDecoder) Nothing




{-| <p>Describes a filter for a specific list of instances. </p>
-}
type alias InstanceInformation =
    { instanceId : Maybe String
    , pingStatus : Maybe PingStatus
    , lastPingDateTime : Maybe Date
    , agentVersion : Maybe String
    , isLatestVersion : Maybe Bool
    , platformType : Maybe PlatformType
    , platformName : Maybe String
    , platformVersion : Maybe String
    , activationId : Maybe String
    , iamRole : Maybe String
    , registrationDate : Maybe Date
    , resourceType : Maybe ResourceType
    , name : Maybe String
    , iPAddress : Maybe String
    , computerName : Maybe String
    , associationStatus : Maybe String
    , lastAssociationExecutionDate : Maybe Date
    , lastSuccessfulAssociationExecutionDate : Maybe Date
    , associationOverview : Maybe InstanceAggregatedAssociationOverview
    }



instanceInformationDecoder : JD.Decoder InstanceInformation
instanceInformationDecoder =
    JDP.decode InstanceInformation
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "pingStatus" (JD.nullable pingStatusDecoder) Nothing
        |> JDP.optional "lastPingDateTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "agentVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "isLatestVersion" (JD.nullable JD.bool) Nothing
        |> JDP.optional "platformType" (JD.nullable platformTypeDecoder) Nothing
        |> JDP.optional "platformName" (JD.nullable JD.string) Nothing
        |> JDP.optional "platformVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "activationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "registrationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "resourceType" (JD.nullable resourceTypeDecoder) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "iPAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "computerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "associationStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastAssociationExecutionDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastSuccessfulAssociationExecutionDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "associationOverview" (JD.nullable instanceAggregatedAssociationOverviewDecoder) Nothing




{-| <p>Describes a filter for a specific list of instances. </p>
-}
type alias InstanceInformationFilter =
    { key : InstanceInformationFilterKey
    , valueSet : (List String)
    }



instanceInformationFilterDecoder : JD.Decoder InstanceInformationFilter
instanceInformationFilterDecoder =
    JDP.decode InstanceInformationFilter
        |> JDP.required "key" instanceInformationFilterKeyDecoder
        |> JDP.required "valueSet" (JD.list JD.string)




{-| One of

* `InstanceInformationFilterKey_InstanceIds`
* `InstanceInformationFilterKey_AgentVersion`
* `InstanceInformationFilterKey_PingStatus`
* `InstanceInformationFilterKey_PlatformTypes`
* `InstanceInformationFilterKey_ActivationIds`
* `InstanceInformationFilterKey_IamRole`
* `InstanceInformationFilterKey_ResourceType`
* `InstanceInformationFilterKey_AssociationStatus`

-}
type InstanceInformationFilterKey
    = InstanceInformationFilterKey_InstanceIds
    | InstanceInformationFilterKey_AgentVersion
    | InstanceInformationFilterKey_PingStatus
    | InstanceInformationFilterKey_PlatformTypes
    | InstanceInformationFilterKey_ActivationIds
    | InstanceInformationFilterKey_IamRole
    | InstanceInformationFilterKey_ResourceType
    | InstanceInformationFilterKey_AssociationStatus



instanceInformationFilterKeyDecoder : JD.Decoder InstanceInformationFilterKey
instanceInformationFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InstanceIds" ->
                        JD.succeed InstanceInformationFilterKey_InstanceIds

                    "AgentVersion" ->
                        JD.succeed InstanceInformationFilterKey_AgentVersion

                    "PingStatus" ->
                        JD.succeed InstanceInformationFilterKey_PingStatus

                    "PlatformTypes" ->
                        JD.succeed InstanceInformationFilterKey_PlatformTypes

                    "ActivationIds" ->
                        JD.succeed InstanceInformationFilterKey_ActivationIds

                    "IamRole" ->
                        JD.succeed InstanceInformationFilterKey_IamRole

                    "ResourceType" ->
                        JD.succeed InstanceInformationFilterKey_ResourceType

                    "AssociationStatus" ->
                        JD.succeed InstanceInformationFilterKey_AssociationStatus


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The filters to describe or get information about your managed instances.</p>
-}
type alias InstanceInformationStringFilter =
    { key : String
    , values : (List String)
    }



instanceInformationStringFilterDecoder : JD.Decoder InstanceInformationStringFilter
instanceInformationStringFilterDecoder =
    JDP.decode InstanceInformationStringFilter
        |> JDP.required "key" JD.string
        |> JDP.required "values" (JD.list JD.string)




{-| <p>Defines the high-level patch compliance state for a managed instance, providing information about the number of installed, missing, not applicable, and failed patches along with metadata about the operation when this information was gathered for the instance.</p>
-}
type alias InstancePatchState =
    { instanceId : String
    , patchGroup : String
    , baselineId : String
    , snapshotId : Maybe String
    , ownerInformation : Maybe String
    , installedCount : Maybe Int
    , installedOtherCount : Maybe Int
    , missingCount : Maybe Int
    , failedCount : Maybe Int
    , notApplicableCount : Maybe Int
    , operationStartTime : Date
    , operationEndTime : Date
    , operation : PatchOperationType
    }



instancePatchStateDecoder : JD.Decoder InstancePatchState
instancePatchStateDecoder =
    JDP.decode InstancePatchState
        |> JDP.required "instanceId" JD.string
        |> JDP.required "patchGroup" JD.string
        |> JDP.required "baselineId" JD.string
        |> JDP.optional "snapshotId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownerInformation" (JD.nullable JD.string) Nothing
        |> JDP.optional "installedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "installedOtherCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "missingCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "failedCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "notApplicableCount" (JD.nullable JD.int) Nothing
        |> JDP.required "operationStartTime" JDX.date
        |> JDP.required "operationEndTime" JDX.date
        |> JDP.required "operation" patchOperationTypeDecoder




{-| <p>Defines a filter used in DescribeInstancePatchStatesForPatchGroup used to scope down the information returned by the API.</p>
-}
type alias InstancePatchStateFilter =
    { key : String
    , values : (List String)
    , type_ : InstancePatchStateOperatorType
    }



instancePatchStateFilterDecoder : JD.Decoder InstancePatchStateFilter
instancePatchStateFilterDecoder =
    JDP.decode InstancePatchStateFilter
        |> JDP.required "key" JD.string
        |> JDP.required "values" (JD.list JD.string)
        |> JDP.required "type_" instancePatchStateOperatorTypeDecoder




{-| One of

* `InstancePatchStateOperatorType_Equal`
* `InstancePatchStateOperatorType_NotEqual`
* `InstancePatchStateOperatorType_LessThan`
* `InstancePatchStateOperatorType_GreaterThan`

-}
type InstancePatchStateOperatorType
    = InstancePatchStateOperatorType_Equal
    | InstancePatchStateOperatorType_NotEqual
    | InstancePatchStateOperatorType_LessThan
    | InstancePatchStateOperatorType_GreaterThan



instancePatchStateOperatorTypeDecoder : JD.Decoder InstancePatchStateOperatorType
instancePatchStateOperatorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Equal" ->
                        JD.succeed InstancePatchStateOperatorType_Equal

                    "NotEqual" ->
                        JD.succeed InstancePatchStateOperatorType_NotEqual

                    "LessThan" ->
                        JD.succeed InstancePatchStateOperatorType_LessThan

                    "GreaterThan" ->
                        JD.succeed InstancePatchStateOperatorType_GreaterThan


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An error occurred on the server side.</p>
-}
type alias InternalServerError =
    { message : Maybe String
    }



internalServerErrorDecoder : JD.Decoder InternalServerError
internalServerErrorDecoder =
    JDP.decode InternalServerError
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The activation is not valid. The activation might have been deleted, or the ActivationId and the ActivationCode do not match.</p>
-}
type alias InvalidActivation =
    { message : Maybe String
    }



invalidActivationDecoder : JD.Decoder InvalidActivation
invalidActivationDecoder =
    JDP.decode InvalidActivation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The activation ID is not valid. Verify the you entered the correct ActivationId or ActivationCode and try again.</p>
-}
type alias InvalidActivationId =
    { message : Maybe String
    }



invalidActivationIdDecoder : JD.Decoder InvalidActivationId
invalidActivationIdDecoder =
    JDP.decode InvalidActivationId
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The supplied parameters for invoking the specified Automation document are incorrect. For example, they may not match the set of parameters permitted for the specified Automation document.</p>
-}
type alias InvalidAutomationExecutionParametersException =
    { message : Maybe String
    }



invalidAutomationExecutionParametersExceptionDecoder : JD.Decoder InvalidAutomationExecutionParametersException
invalidAutomationExecutionParametersExceptionDecoder =
    JDP.decode InvalidAutomationExecutionParametersException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias InvalidCommandId =
    { 
    }



invalidCommandIdDecoder : JD.Decoder InvalidCommandId
invalidCommandIdDecoder =
    JDP.decode InvalidCommandId



{-| <p>The specified document does not exist.</p>
-}
type alias InvalidDocument =
    { message : Maybe String
    }



invalidDocumentDecoder : JD.Decoder InvalidDocument
invalidDocumentDecoder =
    JDP.decode InvalidDocument
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The content for the SSM document is not valid.</p>
-}
type alias InvalidDocumentContent =
    { message : Maybe String
    }



invalidDocumentContentDecoder : JD.Decoder InvalidDocumentContent
invalidDocumentContentDecoder =
    JDP.decode InvalidDocumentContent
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>You attempted to delete a document while it is still shared. You must stop sharing the document before you can delete it.</p>
-}
type alias InvalidDocumentOperation =
    { message : Maybe String
    }



invalidDocumentOperationDecoder : JD.Decoder InvalidDocumentOperation
invalidDocumentOperationDecoder =
    JDP.decode InvalidDocumentOperation
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The version of the document schema is not supported.</p>
-}
type alias InvalidDocumentSchemaVersion =
    { message : Maybe String
    }



invalidDocumentSchemaVersionDecoder : JD.Decoder InvalidDocumentSchemaVersion
invalidDocumentSchemaVersionDecoder =
    JDP.decode InvalidDocumentSchemaVersion
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The document version is not valid or does not exist.</p>
-}
type alias InvalidDocumentVersion =
    { message : Maybe String
    }



invalidDocumentVersionDecoder : JD.Decoder InvalidDocumentVersion
invalidDocumentVersionDecoder =
    JDP.decode InvalidDocumentVersion
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The filter name is not valid. Verify the you entered the correct name and try again.</p>
-}
type alias InvalidFilter =
    { message : Maybe String
    }



invalidFilterDecoder : JD.Decoder InvalidFilter
invalidFilterDecoder =
    JDP.decode InvalidFilter
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified key is not valid.</p>
-}
type alias InvalidFilterKey =
    { 
    }



invalidFilterKeyDecoder : JD.Decoder InvalidFilterKey
invalidFilterKeyDecoder =
    JDP.decode InvalidFilterKey



{-| <p>The filter value is not valid. Verify the value and try again.</p>
-}
type alias InvalidFilterValue =
    { message : Maybe String
    }



invalidFilterValueDecoder : JD.Decoder InvalidFilterValue
invalidFilterValueDecoder =
    JDP.decode InvalidFilterValue
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The following problems can cause this exception:</p> <p>You do not have permission to access the instance.</p> <p>The SSM agent is not running. On managed instances and Linux instances, verify that the SSM agent is running. On EC2 Windows instances, verify that the EC2Config service is running.</p> <p>The SSM agent or EC2Config service is not registered to the SSM endpoint. Try reinstalling the SSM agent or EC2Config service.</p> <p>The instance is not in valid state. Valid states are: Running, Pending, Stopped, Stopping. Invalid states are: Shutting-down and Terminated.</p>
-}
type alias InvalidInstanceId =
    { message : Maybe String
    }



invalidInstanceIdDecoder : JD.Decoder InvalidInstanceId
invalidInstanceIdDecoder =
    JDP.decode InvalidInstanceId
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified filter value is not valid.</p>
-}
type alias InvalidInstanceInformationFilterValue =
    { message : Maybe String
    }



invalidInstanceInformationFilterValueDecoder : JD.Decoder InvalidInstanceInformationFilterValue
invalidInstanceInformationFilterValueDecoder =
    JDP.decode InvalidInstanceInformationFilterValue
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>One or more content items is not valid.</p>
-}
type alias InvalidItemContentException =
    { typeName : Maybe String
    , message : Maybe String
    }



invalidItemContentExceptionDecoder : JD.Decoder InvalidItemContentException
invalidItemContentExceptionDecoder =
    JDP.decode InvalidItemContentException
        |> JDP.optional "typeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The query key ID is not valid.</p>
-}
type alias InvalidKeyId =
    { message : Maybe String
    }



invalidKeyIdDecoder : JD.Decoder InvalidKeyId
invalidKeyIdDecoder =
    JDP.decode InvalidKeyId
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified token is not valid.</p>
-}
type alias InvalidNextToken =
    { 
    }



invalidNextTokenDecoder : JD.Decoder InvalidNextToken
invalidNextTokenDecoder =
    JDP.decode InvalidNextToken



{-| <p>One or more configuration items is not valid. Verify that a valid Amazon Resource Name (ARN) was provided for an Amazon SNS topic.</p>
-}
type alias InvalidNotificationConfig =
    { message : Maybe String
    }



invalidNotificationConfigDecoder : JD.Decoder InvalidNotificationConfig
invalidNotificationConfigDecoder =
    JDP.decode InvalidNotificationConfig
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The S3 bucket does not exist.</p>
-}
type alias InvalidOutputFolder =
    { 
    }



invalidOutputFolderDecoder : JD.Decoder InvalidOutputFolder
invalidOutputFolderDecoder =
    JDP.decode InvalidOutputFolder



{-| <p>The output location is not valid or does not exist.</p>
-}
type alias InvalidOutputLocation =
    { 
    }



invalidOutputLocationDecoder : JD.Decoder InvalidOutputLocation
invalidOutputLocationDecoder =
    JDP.decode InvalidOutputLocation



{-| <p>You must specify values for all required parameters in the SSM document. You can only supply values to parameters defined in the SSM document.</p>
-}
type alias InvalidParameters =
    { message : Maybe String
    }



invalidParametersDecoder : JD.Decoder InvalidParameters
invalidParametersDecoder =
    JDP.decode InvalidParameters
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The permission type is not supported. <i>Share</i> is the only supported permission type.</p>
-}
type alias InvalidPermissionType =
    { message : Maybe String
    }



invalidPermissionTypeDecoder : JD.Decoder InvalidPermissionType
invalidPermissionTypeDecoder =
    JDP.decode InvalidPermissionType
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The plugin name is not valid.</p>
-}
type alias InvalidPluginName =
    { 
    }



invalidPluginNameDecoder : JD.Decoder InvalidPluginName
invalidPluginNameDecoder =
    JDP.decode InvalidPluginName



{-| <p>The resource ID is not valid. Verify that you entered the correct ID and try again.</p>
-}
type alias InvalidResourceId =
    { 
    }



invalidResourceIdDecoder : JD.Decoder InvalidResourceId
invalidResourceIdDecoder =
    JDP.decode InvalidResourceId



{-| <p>The resource type is not valid. If you are attempting to tag an instance, the instance must be a registered, managed instance.</p>
-}
type alias InvalidResourceType =
    { 
    }



invalidResourceTypeDecoder : JD.Decoder InvalidResourceType
invalidResourceTypeDecoder =
    JDP.decode InvalidResourceType



{-| <p>The specified inventory item result attribute is not valid.</p>
-}
type alias InvalidResultAttributeException =
    { message : Maybe String
    }



invalidResultAttributeExceptionDecoder : JD.Decoder InvalidResultAttributeException
invalidResultAttributeExceptionDecoder =
    JDP.decode InvalidResultAttributeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about configuring the IAM role for Run Command notifications, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/rc-sns.html">Getting Amazon SNS Notifications When a Command Changes Status</a> in the <i>Amazon Elastic Compute Cloud User Guide </i>.</p>
-}
type alias InvalidRole =
    { message : Maybe String
    }



invalidRoleDecoder : JD.Decoder InvalidRole
invalidRoleDecoder =
    JDP.decode InvalidRole
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The schedule is invalid. Verify your cron or rate expression and try again.</p>
-}
type alias InvalidSchedule =
    { message : Maybe String
    }



invalidScheduleDecoder : JD.Decoder InvalidSchedule
invalidScheduleDecoder =
    JDP.decode InvalidSchedule
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The target is not valid or does not exist. It might not be configured for EC2 Systems Manager or you might not have permission to perform the operation.</p>
-}
type alias InvalidTarget =
    { message : Maybe String
    }



invalidTargetDecoder : JD.Decoder InvalidTarget
invalidTargetDecoder =
    JDP.decode InvalidTarget
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The parameter type name is not valid.</p>
-}
type alias InvalidTypeNameException =
    { message : Maybe String
    }



invalidTypeNameExceptionDecoder : JD.Decoder InvalidTypeNameException
invalidTypeNameExceptionDecoder =
    JDP.decode InvalidTypeNameException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The update is not valid.</p>
-}
type alias InvalidUpdate =
    { message : Maybe String
    }



invalidUpdateDecoder : JD.Decoder InvalidUpdate
invalidUpdateDecoder =
    JDP.decode InvalidUpdate
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `InventoryAttributeDataType_string`
* `InventoryAttributeDataType_number`

-}
type InventoryAttributeDataType
    = InventoryAttributeDataType_string
    | InventoryAttributeDataType_number



inventoryAttributeDataTypeDecoder : JD.Decoder InventoryAttributeDataType
inventoryAttributeDataTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "string" ->
                        JD.succeed InventoryAttributeDataType_string

                    "number" ->
                        JD.succeed InventoryAttributeDataType_number


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>One or more filters. Use a filter to return a more specific list of results.</p>
-}
type alias InventoryFilter =
    { key : String
    , values : (List String)
    , type_ : Maybe InventoryQueryOperatorType
    }



inventoryFilterDecoder : JD.Decoder InventoryFilter
inventoryFilterDecoder =
    JDP.decode InventoryFilter
        |> JDP.required "key" JD.string
        |> JDP.required "values" (JD.list JD.string)
        |> JDP.optional "type_" (JD.nullable inventoryQueryOperatorTypeDecoder) Nothing




{-| <p>Information collected from managed instances based on your inventory policy document</p>
-}
type alias InventoryItem =
    { typeName : String
    , schemaVersion : String
    , captureTime : String
    , contentHash : Maybe String
    , content : Maybe (List (Dict String String))
    }



inventoryItemDecoder : JD.Decoder InventoryItem
inventoryItemDecoder =
    JDP.decode InventoryItem
        |> JDP.required "typeName" JD.string
        |> JDP.required "schemaVersion" JD.string
        |> JDP.required "captureTime" JD.string
        |> JDP.optional "contentHash" (JD.nullable JD.string) Nothing
        |> JDP.optional "content" (JD.nullable (JD.list (JD.dict JD.string))) Nothing




{-| <p>Attributes are the entries within the inventory item content. It contains name and value.</p>
-}
type alias InventoryItemAttribute =
    { name : String
    , dataType : InventoryAttributeDataType
    }



inventoryItemAttributeDecoder : JD.Decoder InventoryItemAttribute
inventoryItemAttributeDecoder =
    JDP.decode InventoryItemAttribute
        |> JDP.required "name" JD.string
        |> JDP.required "dataType" inventoryAttributeDataTypeDecoder




{-| <p>The inventory item schema definition. Users can use this to compose inventory query filters.</p>
-}
type alias InventoryItemSchema =
    { typeName : String
    , version : Maybe String
    , attributes : (List InventoryItemAttribute)
    }



inventoryItemSchemaDecoder : JD.Decoder InventoryItemSchema
inventoryItemSchemaDecoder =
    JDP.decode InventoryItemSchema
        |> JDP.required "typeName" JD.string
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.required "attributes" (JD.list inventoryItemAttributeDecoder)




{-| One of

* `InventoryQueryOperatorType_Equal`
* `InventoryQueryOperatorType_NotEqual`
* `InventoryQueryOperatorType_BeginWith`
* `InventoryQueryOperatorType_LessThan`
* `InventoryQueryOperatorType_GreaterThan`

-}
type InventoryQueryOperatorType
    = InventoryQueryOperatorType_Equal
    | InventoryQueryOperatorType_NotEqual
    | InventoryQueryOperatorType_BeginWith
    | InventoryQueryOperatorType_LessThan
    | InventoryQueryOperatorType_GreaterThan



inventoryQueryOperatorTypeDecoder : JD.Decoder InventoryQueryOperatorType
inventoryQueryOperatorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Equal" ->
                        JD.succeed InventoryQueryOperatorType_Equal

                    "NotEqual" ->
                        JD.succeed InventoryQueryOperatorType_NotEqual

                    "BeginWith" ->
                        JD.succeed InventoryQueryOperatorType_BeginWith

                    "LessThan" ->
                        JD.succeed InventoryQueryOperatorType_LessThan

                    "GreaterThan" ->
                        JD.succeed InventoryQueryOperatorType_GreaterThan


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Inventory query results.</p>
-}
type alias InventoryResultEntity =
    { id : Maybe String
    , data : Maybe (Dict String InventoryResultItem)
    }



inventoryResultEntityDecoder : JD.Decoder InventoryResultEntity
inventoryResultEntityDecoder =
    JDP.decode InventoryResultEntity
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "data" (JD.nullable (JD.dict inventoryResultItemDecoder)) Nothing




{-| <p>The inventory result item.</p>
-}
type alias InventoryResultItem =
    { typeName : String
    , schemaVersion : String
    , captureTime : Maybe String
    , contentHash : Maybe String
    , content : (List (Dict String String))
    }



inventoryResultItemDecoder : JD.Decoder InventoryResultItem
inventoryResultItemDecoder =
    JDP.decode InventoryResultItem
        |> JDP.required "typeName" JD.string
        |> JDP.required "schemaVersion" JD.string
        |> JDP.optional "captureTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentHash" (JD.nullable JD.string) Nothing
        |> JDP.required "content" (JD.list (JD.dict JD.string))




{-| <p>The command ID and instance ID you specified did not match any invocations. Verify the command ID adn the instance ID and try again. </p>
-}
type alias InvocationDoesNotExist =
    { 
    }



invocationDoesNotExistDecoder : JD.Decoder InvocationDoesNotExist
invocationDoesNotExistDecoder =
    JDP.decode InvocationDoesNotExist



{-| <p>The inventory item has invalid content. </p>
-}
type alias ItemContentMismatchException =
    { typeName : Maybe String
    , message : Maybe String
    }



itemContentMismatchExceptionDecoder : JD.Decoder ItemContentMismatchException
itemContentMismatchExceptionDecoder =
    JDP.decode ItemContentMismatchException
        |> JDP.optional "typeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The inventory item size has exceeded the size limit.</p>
-}
type alias ItemSizeLimitExceededException =
    { typeName : Maybe String
    , message : Maybe String
    }



itemSizeLimitExceededExceptionDecoder : JD.Decoder ItemSizeLimitExceededException
itemSizeLimitExceededExceptionDecoder =
    JDP.decode ItemSizeLimitExceededException
        |> JDP.optional "typeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAssociatio
-}
type alias ListAssociationsResult =
    { associations : Maybe (List Association)
    , nextToken : Maybe String
    }



listAssociationsResultDecoder : JD.Decoder ListAssociationsResult
listAssociationsResultDecoder =
    JDP.decode ListAssociationsResult
        |> JDP.optional "associations" (JD.nullable (JD.list associationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listCommandInvocatio
-}
type alias ListCommandInvocationsResult =
    { commandInvocations : Maybe (List CommandInvocation)
    , nextToken : Maybe String
    }



listCommandInvocationsResultDecoder : JD.Decoder ListCommandInvocationsResult
listCommandInvocationsResultDecoder =
    JDP.decode ListCommandInvocationsResult
        |> JDP.optional "commandInvocations" (JD.nullable (JD.list commandInvocationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listComman
-}
type alias ListCommandsResult =
    { commands : Maybe (List Command)
    , nextToken : Maybe String
    }



listCommandsResultDecoder : JD.Decoder ListCommandsResult
listCommandsResultDecoder =
    JDP.decode ListCommandsResult
        |> JDP.optional "commands" (JD.nullable (JD.list commandDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDocumentVersio
-}
type alias ListDocumentVersionsResult =
    { documentVersions : Maybe (List DocumentVersionInfo)
    , nextToken : Maybe String
    }



listDocumentVersionsResultDecoder : JD.Decoder ListDocumentVersionsResult
listDocumentVersionsResultDecoder =
    JDP.decode ListDocumentVersionsResult
        |> JDP.optional "documentVersions" (JD.nullable (JD.list documentVersionInfoDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDocumen
-}
type alias ListDocumentsResult =
    { documentIdentifiers : Maybe (List DocumentIdentifier)
    , nextToken : Maybe String
    }



listDocumentsResultDecoder : JD.Decoder ListDocumentsResult
listDocumentsResultDecoder =
    JDP.decode ListDocumentsResult
        |> JDP.optional "documentIdentifiers" (JD.nullable (JD.list documentIdentifierDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listInventoryEntri
-}
type alias ListInventoryEntriesResult =
    { typeName : Maybe String
    , instanceId : Maybe String
    , schemaVersion : Maybe String
    , captureTime : Maybe String
    , entries : Maybe (List (Dict String String))
    , nextToken : Maybe String
    }



listInventoryEntriesResultDecoder : JD.Decoder ListInventoryEntriesResult
listInventoryEntriesResultDecoder =
    JDP.decode ListInventoryEntriesResult
        |> JDP.optional "typeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "schemaVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "captureTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "entries" (JD.nullable (JD.list (JD.dict JD.string))) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTagsForResour
-}
type alias ListTagsForResourceResult =
    { tagList : Maybe (List Tag)
    }



listTagsForResourceResultDecoder : JD.Decoder ListTagsForResourceResult
listTagsForResourceResultDecoder =
    JDP.decode ListTagsForResourceResult
        |> JDP.optional "tagList" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>Information about an Amazon S3 bucket to write instance-level logs to.</p>
-}
type alias LoggingInfo =
    { s3BucketName : String
    , s3KeyPrefix : Maybe String
    , s3Region : String
    }



loggingInfoDecoder : JD.Decoder LoggingInfo
loggingInfoDecoder =
    JDP.decode LoggingInfo
        |> JDP.required "s3BucketName" JD.string
        |> JDP.optional "s3KeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.required "s3Region" JD.string




{-| <p>Describes the information about an execution of a Maintenance Window. </p>
-}
type alias MaintenanceWindowExecution =
    { windowId : Maybe String
    , windowExecutionId : Maybe String
    , status : Maybe MaintenanceWindowExecutionStatus
    , statusDetails : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    }



maintenanceWindowExecutionDecoder : JD.Decoder MaintenanceWindowExecution
maintenanceWindowExecutionDecoder =
    JDP.decode MaintenanceWindowExecution
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "windowExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable maintenanceWindowExecutionStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing




{-| One of

* `MaintenanceWindowExecutionStatus_PENDING`
* `MaintenanceWindowExecutionStatus_IN_PROGRESS`
* `MaintenanceWindowExecutionStatus_SUCCESS`
* `MaintenanceWindowExecutionStatus_FAILED`
* `MaintenanceWindowExecutionStatus_TIMED_OUT`
* `MaintenanceWindowExecutionStatus_CANCELLING`
* `MaintenanceWindowExecutionStatus_CANCELLED`
* `MaintenanceWindowExecutionStatus_SKIPPED_OVERLAPPING`

-}
type MaintenanceWindowExecutionStatus
    = MaintenanceWindowExecutionStatus_PENDING
    | MaintenanceWindowExecutionStatus_IN_PROGRESS
    | MaintenanceWindowExecutionStatus_SUCCESS
    | MaintenanceWindowExecutionStatus_FAILED
    | MaintenanceWindowExecutionStatus_TIMED_OUT
    | MaintenanceWindowExecutionStatus_CANCELLING
    | MaintenanceWindowExecutionStatus_CANCELLED
    | MaintenanceWindowExecutionStatus_SKIPPED_OVERLAPPING



maintenanceWindowExecutionStatusDecoder : JD.Decoder MaintenanceWindowExecutionStatus
maintenanceWindowExecutionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed MaintenanceWindowExecutionStatus_PENDING

                    "IN_PROGRESS" ->
                        JD.succeed MaintenanceWindowExecutionStatus_IN_PROGRESS

                    "SUCCESS" ->
                        JD.succeed MaintenanceWindowExecutionStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed MaintenanceWindowExecutionStatus_FAILED

                    "TIMED_OUT" ->
                        JD.succeed MaintenanceWindowExecutionStatus_TIMED_OUT

                    "CANCELLING" ->
                        JD.succeed MaintenanceWindowExecutionStatus_CANCELLING

                    "CANCELLED" ->
                        JD.succeed MaintenanceWindowExecutionStatus_CANCELLED

                    "SKIPPED_OVERLAPPING" ->
                        JD.succeed MaintenanceWindowExecutionStatus_SKIPPED_OVERLAPPING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a task execution performed as part of a Maintenance Window execution.</p>
-}
type alias MaintenanceWindowExecutionTaskIdentity =
    { windowExecutionId : Maybe String
    , taskExecutionId : Maybe String
    , status : Maybe MaintenanceWindowExecutionStatus
    , statusDetails : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    , taskArn : Maybe String
    , taskType : Maybe MaintenanceWindowTaskType
    }



maintenanceWindowExecutionTaskIdentityDecoder : JD.Decoder MaintenanceWindowExecutionTaskIdentity
maintenanceWindowExecutionTaskIdentityDecoder =
    JDP.decode MaintenanceWindowExecutionTaskIdentity
        |> JDP.optional "windowExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable maintenanceWindowExecutionStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "taskArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskType" (JD.nullable maintenanceWindowTaskTypeDecoder) Nothing




{-| <p>Describes the information about a task invocation for a particular target as part of a task execution performed as part of a Maintenance Window execution.</p>
-}
type alias MaintenanceWindowExecutionTaskInvocationIdentity =
    { windowExecutionId : Maybe String
    , taskExecutionId : Maybe String
    , invocationId : Maybe String
    , executionId : Maybe String
    , parameters : Maybe String
    , status : Maybe MaintenanceWindowExecutionStatus
    , statusDetails : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    , ownerInformation : Maybe String
    , windowTargetId : Maybe String
    }



maintenanceWindowExecutionTaskInvocationIdentityDecoder : JD.Decoder MaintenanceWindowExecutionTaskInvocationIdentity
maintenanceWindowExecutionTaskInvocationIdentityDecoder =
    JDP.decode MaintenanceWindowExecutionTaskInvocationIdentity
        |> JDP.optional "windowExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskExecutionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "invocationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable maintenanceWindowExecutionStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "ownerInformation" (JD.nullable JD.string) Nothing
        |> JDP.optional "windowTargetId" (JD.nullable JD.string) Nothing




{-| <p>Filter used in the request.</p>
-}
type alias MaintenanceWindowFilter =
    { key : Maybe String
    , values : Maybe (List String)
    }



maintenanceWindowFilterDecoder : JD.Decoder MaintenanceWindowFilter
maintenanceWindowFilterDecoder =
    JDP.decode MaintenanceWindowFilter
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Information about the Maintenance Window.</p>
-}
type alias MaintenanceWindowIdentity =
    { windowId : Maybe String
    , name : Maybe String
    , enabled : Maybe Bool
    , duration : Maybe Int
    , cutoff : Maybe Int
    }



maintenanceWindowIdentityDecoder : JD.Decoder MaintenanceWindowIdentity
maintenanceWindowIdentityDecoder =
    JDP.decode MaintenanceWindowIdentity
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "cutoff" (JD.nullable JD.int) Nothing




{-| One of

* `MaintenanceWindowResourceType_INSTANCE`

-}
type MaintenanceWindowResourceType
    = MaintenanceWindowResourceType_INSTANCE



maintenanceWindowResourceTypeDecoder : JD.Decoder MaintenanceWindowResourceType
maintenanceWindowResourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INSTANCE" ->
                        JD.succeed MaintenanceWindowResourceType_INSTANCE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The target registered with the Maintenance Window.</p>
-}
type alias MaintenanceWindowTarget =
    { windowId : Maybe String
    , windowTargetId : Maybe String
    , resourceType : Maybe MaintenanceWindowResourceType
    , targets : Maybe (List Target)
    , ownerInformation : Maybe String
    }



maintenanceWindowTargetDecoder : JD.Decoder MaintenanceWindowTarget
maintenanceWindowTargetDecoder =
    JDP.decode MaintenanceWindowTarget
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "windowTargetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceType" (JD.nullable maintenanceWindowResourceTypeDecoder) Nothing
        |> JDP.optional "targets" (JD.nullable (JD.list targetDecoder)) Nothing
        |> JDP.optional "ownerInformation" (JD.nullable JD.string) Nothing




{-| <p>Information about a task defined for a Maintenance Window.</p>
-}
type alias MaintenanceWindowTask =
    { windowId : Maybe String
    , windowTaskId : Maybe String
    , taskArn : Maybe String
    , type_ : Maybe MaintenanceWindowTaskType
    , targets : Maybe (List Target)
    , taskParameters : Maybe (Dict String MaintenanceWindowTaskParameterValueExpression)
    , priority : Maybe Int
    , loggingInfo : Maybe LoggingInfo
    , serviceRoleArn : Maybe String
    , maxConcurrency : Maybe String
    , maxErrors : Maybe String
    }



maintenanceWindowTaskDecoder : JD.Decoder MaintenanceWindowTask
maintenanceWindowTaskDecoder =
    JDP.decode MaintenanceWindowTask
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "windowTaskId" (JD.nullable JD.string) Nothing
        |> JDP.optional "taskArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable maintenanceWindowTaskTypeDecoder) Nothing
        |> JDP.optional "targets" (JD.nullable (JD.list targetDecoder)) Nothing
        |> JDP.optional "taskParameters" (JD.nullable (JD.dict maintenanceWindowTaskParameterValueExpressionDecoder)) Nothing
        |> JDP.optional "priority" (JD.nullable JD.int) Nothing
        |> JDP.optional "loggingInfo" (JD.nullable loggingInfoDecoder) Nothing
        |> JDP.optional "serviceRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxConcurrency" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxErrors" (JD.nullable JD.string) Nothing




{-| <p>Defines the values for a task parameter.</p>
-}
type alias MaintenanceWindowTaskParameterValueExpression =
    { values : Maybe (List String)
    }



maintenanceWindowTaskParameterValueExpressionDecoder : JD.Decoder MaintenanceWindowTaskParameterValueExpression
maintenanceWindowTaskParameterValueExpressionDecoder =
    JDP.decode MaintenanceWindowTaskParameterValueExpression
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| One of

* `MaintenanceWindowTaskType_RUN_COMMAND`

-}
type MaintenanceWindowTaskType
    = MaintenanceWindowTaskType_RUN_COMMAND



maintenanceWindowTaskTypeDecoder : JD.Decoder MaintenanceWindowTaskType
maintenanceWindowTaskTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RUN_COMMAND" ->
                        JD.succeed MaintenanceWindowTaskType_RUN_COMMAND


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The size limit of an SSM document is 64 KB.</p>
-}
type alias MaxDocumentSizeExceeded =
    { message : Maybe String
    }



maxDocumentSizeExceededDecoder : JD.Decoder MaxDocumentSizeExceeded
maxDocumentSizeExceededDecoder =
    JDP.decode MaxDocumentSizeExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from modifyDocumentPermission
-}
type alias ModifyDocumentPermissionResponse =
    { 
    }



modifyDocumentPermissionResponseDecoder : JD.Decoder ModifyDocumentPermissionResponse
modifyDocumentPermissionResponseDecoder =
    JDP.decode ModifyDocumentPermissionResponse



{-| <p>Configurations for sending notifications.</p>
-}
type alias NotificationConfig =
    { notificationArn : Maybe String
    , notificationEvents : Maybe (List NotificationEvent)
    , notificationType : Maybe NotificationType
    }



notificationConfigDecoder : JD.Decoder NotificationConfig
notificationConfigDecoder =
    JDP.decode NotificationConfig
        |> JDP.optional "notificationArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "notificationEvents" (JD.nullable (JD.list notificationEventDecoder)) Nothing
        |> JDP.optional "notificationType" (JD.nullable notificationTypeDecoder) Nothing




{-| One of

* `NotificationEvent_All`
* `NotificationEvent_InProgress`
* `NotificationEvent_Success`
* `NotificationEvent_TimedOut`
* `NotificationEvent_Cancelled`
* `NotificationEvent_Failed`

-}
type NotificationEvent
    = NotificationEvent_All
    | NotificationEvent_InProgress
    | NotificationEvent_Success
    | NotificationEvent_TimedOut
    | NotificationEvent_Cancelled
    | NotificationEvent_Failed



notificationEventDecoder : JD.Decoder NotificationEvent
notificationEventDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "All" ->
                        JD.succeed NotificationEvent_All

                    "InProgress" ->
                        JD.succeed NotificationEvent_InProgress

                    "Success" ->
                        JD.succeed NotificationEvent_Success

                    "TimedOut" ->
                        JD.succeed NotificationEvent_TimedOut

                    "Cancelled" ->
                        JD.succeed NotificationEvent_Cancelled

                    "Failed" ->
                        JD.succeed NotificationEvent_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `NotificationType_Command`
* `NotificationType_Invocation`

-}
type NotificationType
    = NotificationType_Command
    | NotificationType_Invocation



notificationTypeDecoder : JD.Decoder NotificationType
notificationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Command" ->
                        JD.succeed NotificationType_Command

                    "Invocation" ->
                        JD.succeed NotificationType_Invocation


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An Amazon EC2 Systems Manager parameter in Parameter Store.</p>
-}
type alias Parameter =
    { name : Maybe String
    , type_ : Maybe ParameterType
    , value : Maybe String
    }



parameterDecoder : JD.Decoder Parameter
parameterDecoder =
    JDP.decode Parameter
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable parameterTypeDecoder) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The parameter already exists. You can't create duplicate parameters.</p>
-}
type alias ParameterAlreadyExists =
    { message : Maybe String
    }



parameterAlreadyExistsDecoder : JD.Decoder ParameterAlreadyExists
parameterAlreadyExistsDecoder =
    JDP.decode ParameterAlreadyExists
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Information about parameter usage.</p>
-}
type alias ParameterHistory =
    { name : Maybe String
    , type_ : Maybe ParameterType
    , keyId : Maybe String
    , lastModifiedDate : Maybe Date
    , lastModifiedUser : Maybe String
    , description : Maybe String
    , value : Maybe String
    }



parameterHistoryDecoder : JD.Decoder ParameterHistory
parameterHistoryDecoder =
    JDP.decode ParameterHistory
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable parameterTypeDecoder) Nothing
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModifiedUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>You have exceeded the number of parameters for this AWS account. Delete one or more parameters and try again.</p>
-}
type alias ParameterLimitExceeded =
    { message : Maybe String
    }



parameterLimitExceededDecoder : JD.Decoder ParameterLimitExceeded
parameterLimitExceededDecoder =
    JDP.decode ParameterLimitExceeded
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Metada includes information like the ARN of the last user and the date/time the parameter was last used.</p>
-}
type alias ParameterMetadata =
    { name : Maybe String
    , type_ : Maybe ParameterType
    , keyId : Maybe String
    , lastModifiedDate : Maybe Date
    , lastModifiedUser : Maybe String
    , description : Maybe String
    }



parameterMetadataDecoder : JD.Decoder ParameterMetadata
parameterMetadataDecoder =
    JDP.decode ParameterMetadata
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable parameterTypeDecoder) Nothing
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModifiedUser" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>The parameter could not be found. Verify the name and try again.</p>
-}
type alias ParameterNotFound =
    { message : Maybe String
    }



parameterNotFoundDecoder : JD.Decoder ParameterNotFound
parameterNotFoundDecoder =
    JDP.decode ParameterNotFound
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ParameterType_String`
* `ParameterType_StringList`
* `ParameterType_SecureString`

-}
type ParameterType
    = ParameterType_String
    | ParameterType_StringList
    | ParameterType_SecureString



parameterTypeDecoder : JD.Decoder ParameterType
parameterTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "String" ->
                        JD.succeed ParameterType_String

                    "StringList" ->
                        JD.succeed ParameterType_StringList

                    "SecureString" ->
                        JD.succeed ParameterType_SecureString


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>One or more filters. Use a filter to return a more specific list of results.</p>
-}
type alias ParametersFilter =
    { key : Maybe ParametersFilterKey
    , values : (List String)
    }



parametersFilterDecoder : JD.Decoder ParametersFilter
parametersFilterDecoder =
    JDP.decode ParametersFilter
        |> JDP.optional "key" (JD.nullable parametersFilterKeyDecoder) Nothing
        |> JDP.required "values" (JD.list JD.string)




{-| One of

* `ParametersFilterKey_Name`
* `ParametersFilterKey_Type`
* `ParametersFilterKey_KeyId`

-}
type ParametersFilterKey
    = ParametersFilterKey_Name
    | ParametersFilterKey_Type
    | ParametersFilterKey_KeyId



parametersFilterKeyDecoder : JD.Decoder ParametersFilterKey
parametersFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Name" ->
                        JD.succeed ParametersFilterKey_Name

                    "Type" ->
                        JD.succeed ParametersFilterKey_Type

                    "KeyId" ->
                        JD.succeed ParametersFilterKey_KeyId


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents metadata about a patch.</p>
-}
type alias Patch =
    { id : Maybe String
    , releaseDate : Maybe Date
    , title : Maybe String
    , description : Maybe String
    , contentUrl : Maybe String
    , vendor : Maybe String
    , productFamily : Maybe String
    , product : Maybe String
    , classification : Maybe String
    , msrcSeverity : Maybe String
    , kbNumber : Maybe String
    , msrcNumber : Maybe String
    , language : Maybe String
    }



patchDecoder : JD.Decoder Patch
patchDecoder =
    JDP.decode Patch
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "releaseDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "title" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "vendor" (JD.nullable JD.string) Nothing
        |> JDP.optional "productFamily" (JD.nullable JD.string) Nothing
        |> JDP.optional "product" (JD.nullable JD.string) Nothing
        |> JDP.optional "classification" (JD.nullable JD.string) Nothing
        |> JDP.optional "msrcSeverity" (JD.nullable JD.string) Nothing
        |> JDP.optional "kbNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "msrcNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "language" (JD.nullable JD.string) Nothing




{-| <p>Defines the basic information about a patch baseline.</p>
-}
type alias PatchBaselineIdentity =
    { baselineId : Maybe String
    , baselineName : Maybe String
    , baselineDescription : Maybe String
    , defaultBaseline : Maybe Bool
    }



patchBaselineIdentityDecoder : JD.Decoder PatchBaselineIdentity
patchBaselineIdentityDecoder =
    JDP.decode PatchBaselineIdentity
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "baselineName" (JD.nullable JD.string) Nothing
        |> JDP.optional "baselineDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultBaseline" (JD.nullable JD.bool) Nothing




{-| <p>Information about the state of a patch on a particular instance as it relates to the patch baseline used to patch the instance.</p>
-}
type alias PatchComplianceData =
    { title : String
    , kBId : String
    , classification : String
    , severity : String
    , state : PatchComplianceDataState
    , installedTime : Date
    }



patchComplianceDataDecoder : JD.Decoder PatchComplianceData
patchComplianceDataDecoder =
    JDP.decode PatchComplianceData
        |> JDP.required "title" JD.string
        |> JDP.required "kBId" JD.string
        |> JDP.required "classification" JD.string
        |> JDP.required "severity" JD.string
        |> JDP.required "state" patchComplianceDataStateDecoder
        |> JDP.required "installedTime" JDX.date




{-| One of

* `PatchComplianceDataState_INSTALLED`
* `PatchComplianceDataState_INSTALLED_OTHER`
* `PatchComplianceDataState_MISSING`
* `PatchComplianceDataState_NOT_APPLICABLE`
* `PatchComplianceDataState_FAILED`

-}
type PatchComplianceDataState
    = PatchComplianceDataState_INSTALLED
    | PatchComplianceDataState_INSTALLED_OTHER
    | PatchComplianceDataState_MISSING
    | PatchComplianceDataState_NOT_APPLICABLE
    | PatchComplianceDataState_FAILED



patchComplianceDataStateDecoder : JD.Decoder PatchComplianceDataState
patchComplianceDataStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INSTALLED" ->
                        JD.succeed PatchComplianceDataState_INSTALLED

                    "INSTALLED_OTHER" ->
                        JD.succeed PatchComplianceDataState_INSTALLED_OTHER

                    "MISSING" ->
                        JD.succeed PatchComplianceDataState_MISSING

                    "NOT_APPLICABLE" ->
                        JD.succeed PatchComplianceDataState_NOT_APPLICABLE

                    "FAILED" ->
                        JD.succeed PatchComplianceDataState_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PatchDeploymentStatus_APPROVED`
* `PatchDeploymentStatus_PENDING_APPROVAL`
* `PatchDeploymentStatus_EXPLICIT_APPROVED`
* `PatchDeploymentStatus_EXPLICIT_REJECTED`

-}
type PatchDeploymentStatus
    = PatchDeploymentStatus_APPROVED
    | PatchDeploymentStatus_PENDING_APPROVAL
    | PatchDeploymentStatus_EXPLICIT_APPROVED
    | PatchDeploymentStatus_EXPLICIT_REJECTED



patchDeploymentStatusDecoder : JD.Decoder PatchDeploymentStatus
patchDeploymentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "APPROVED" ->
                        JD.succeed PatchDeploymentStatus_APPROVED

                    "PENDING_APPROVAL" ->
                        JD.succeed PatchDeploymentStatus_PENDING_APPROVAL

                    "EXPLICIT_APPROVED" ->
                        JD.succeed PatchDeploymentStatus_EXPLICIT_APPROVED

                    "EXPLICIT_REJECTED" ->
                        JD.succeed PatchDeploymentStatus_EXPLICIT_REJECTED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Defines a patch filter.</p>
-}
type alias PatchFilter =
    { key : PatchFilterKey
    , values : (List String)
    }



patchFilterDecoder : JD.Decoder PatchFilter
patchFilterDecoder =
    JDP.decode PatchFilter
        |> JDP.required "key" patchFilterKeyDecoder
        |> JDP.required "values" (JD.list JD.string)




{-| <p>A set of patch filters, typically used for approval rules.</p>
-}
type alias PatchFilterGroup =
    { patchFilters : (List PatchFilter)
    }



patchFilterGroupDecoder : JD.Decoder PatchFilterGroup
patchFilterGroupDecoder =
    JDP.decode PatchFilterGroup
        |> JDP.required "patchFilters" (JD.list patchFilterDecoder)




{-| One of

* `PatchFilterKey_PRODUCT`
* `PatchFilterKey_CLASSIFICATION`
* `PatchFilterKey_MSRC_SEVERITY`
* `PatchFilterKey_PATCH_ID`

-}
type PatchFilterKey
    = PatchFilterKey_PRODUCT
    | PatchFilterKey_CLASSIFICATION
    | PatchFilterKey_MSRC_SEVERITY
    | PatchFilterKey_PATCH_ID



patchFilterKeyDecoder : JD.Decoder PatchFilterKey
patchFilterKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PRODUCT" ->
                        JD.succeed PatchFilterKey_PRODUCT

                    "CLASSIFICATION" ->
                        JD.succeed PatchFilterKey_CLASSIFICATION

                    "MSRC_SEVERITY" ->
                        JD.succeed PatchFilterKey_MSRC_SEVERITY

                    "PATCH_ID" ->
                        JD.succeed PatchFilterKey_PATCH_ID


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The mapping between a patch group and the patch baseline the patch group is registered with.</p>
-}
type alias PatchGroupPatchBaselineMapping =
    { patchGroup : Maybe String
    , baselineIdentity : Maybe PatchBaselineIdentity
    }



patchGroupPatchBaselineMappingDecoder : JD.Decoder PatchGroupPatchBaselineMapping
patchGroupPatchBaselineMappingDecoder =
    JDP.decode PatchGroupPatchBaselineMapping
        |> JDP.optional "patchGroup" (JD.nullable JD.string) Nothing
        |> JDP.optional "baselineIdentity" (JD.nullable patchBaselineIdentityDecoder) Nothing




{-| One of

* `PatchOperationType_Scan`
* `PatchOperationType_Install`

-}
type PatchOperationType
    = PatchOperationType_Scan
    | PatchOperationType_Install



patchOperationTypeDecoder : JD.Decoder PatchOperationType
patchOperationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Scan" ->
                        JD.succeed PatchOperationType_Scan

                    "Install" ->
                        JD.succeed PatchOperationType_Install


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Defines a filter used in Patch Manager APIs.</p>
-}
type alias PatchOrchestratorFilter =
    { key : Maybe String
    , values : Maybe (List String)
    }



patchOrchestratorFilterDecoder : JD.Decoder PatchOrchestratorFilter
patchOrchestratorFilterDecoder =
    JDP.decode PatchOrchestratorFilter
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Defines an approval rule for a patch baseline.</p>
-}
type alias PatchRule =
    { patchFilterGroup : PatchFilterGroup
    , approveAfterDays : Int
    }



patchRuleDecoder : JD.Decoder PatchRule
patchRuleDecoder =
    JDP.decode PatchRule
        |> JDP.required "patchFilterGroup" patchFilterGroupDecoder
        |> JDP.required "approveAfterDays" JD.int




{-| <p>A set of rules defining the approval rules for a patch baseline.</p>
-}
type alias PatchRuleGroup =
    { patchRules : (List PatchRule)
    }



patchRuleGroupDecoder : JD.Decoder PatchRuleGroup
patchRuleGroupDecoder =
    JDP.decode PatchRuleGroup
        |> JDP.required "patchRules" (JD.list patchRuleDecoder)




{-| <p>Information about the approval status of a patch.</p>
-}
type alias PatchStatus =
    { deploymentStatus : Maybe PatchDeploymentStatus
    , approvalDate : Maybe Date
    }



patchStatusDecoder : JD.Decoder PatchStatus
patchStatusDecoder =
    JDP.decode PatchStatus
        |> JDP.optional "deploymentStatus" (JD.nullable patchDeploymentStatusDecoder) Nothing
        |> JDP.optional "approvalDate" (JD.nullable JDX.date) Nothing




{-| One of

* `PingStatus_Online`
* `PingStatus_ConnectionLost`
* `PingStatus_Inactive`

-}
type PingStatus
    = PingStatus_Online
    | PingStatus_ConnectionLost
    | PingStatus_Inactive



pingStatusDecoder : JD.Decoder PingStatus
pingStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Online" ->
                        JD.succeed PingStatus_Online

                    "ConnectionLost" ->
                        JD.succeed PingStatus_ConnectionLost

                    "Inactive" ->
                        JD.succeed PingStatus_Inactive


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PlatformType_Windows`
* `PlatformType_Linux`

-}
type PlatformType
    = PlatformType_Windows
    | PlatformType_Linux



platformTypeDecoder : JD.Decoder PlatformType
platformTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Windows" ->
                        JD.succeed PlatformType_Windows

                    "Linux" ->
                        JD.succeed PlatformType_Linux


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putInvento
-}
type alias PutInventoryResult =
    { 
    }



putInventoryResultDecoder : JD.Decoder PutInventoryResult
putInventoryResultDecoder =
    JDP.decode PutInventoryResult



{-| Type of HTTP response from putParamet
-}
type alias PutParameterResult =
    { 
    }



putParameterResultDecoder : JD.Decoder PutParameterResult
putParameterResultDecoder =
    JDP.decode PutParameterResult



{-| Type of HTTP response from registerDefaultPatchBaseli
-}
type alias RegisterDefaultPatchBaselineResult =
    { baselineId : Maybe String
    }



registerDefaultPatchBaselineResultDecoder : JD.Decoder RegisterDefaultPatchBaselineResult
registerDefaultPatchBaselineResultDecoder =
    JDP.decode RegisterDefaultPatchBaselineResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerPatchBaselineForPatchGro
-}
type alias RegisterPatchBaselineForPatchGroupResult =
    { baselineId : Maybe String
    , patchGroup : Maybe String
    }



registerPatchBaselineForPatchGroupResultDecoder : JD.Decoder RegisterPatchBaselineForPatchGroupResult
registerPatchBaselineForPatchGroupResultDecoder =
    JDP.decode RegisterPatchBaselineForPatchGroupResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "patchGroup" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerTargetWithMaintenanceWind
-}
type alias RegisterTargetWithMaintenanceWindowResult =
    { windowTargetId : Maybe String
    }



registerTargetWithMaintenanceWindowResultDecoder : JD.Decoder RegisterTargetWithMaintenanceWindowResult
registerTargetWithMaintenanceWindowResultDecoder =
    JDP.decode RegisterTargetWithMaintenanceWindowResult
        |> JDP.optional "windowTargetId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerTaskWithMaintenanceWind
-}
type alias RegisterTaskWithMaintenanceWindowResult =
    { windowTaskId : Maybe String
    }



registerTaskWithMaintenanceWindowResultDecoder : JD.Decoder RegisterTaskWithMaintenanceWindowResult
registerTaskWithMaintenanceWindowResultDecoder =
    JDP.decode RegisterTaskWithMaintenanceWindowResult
        |> JDP.optional "windowTaskId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from removeTagsFromResour
-}
type alias RemoveTagsFromResourceResult =
    { 
    }



removeTagsFromResourceResultDecoder : JD.Decoder RemoveTagsFromResourceResult
removeTagsFromResourceResultDecoder =
    JDP.decode RemoveTagsFromResourceResult



{-| <p>Error returned if an attempt is made to delete a patch baseline that is registered for a patch group.</p>
-}
type alias ResourceInUseException =
    { message : Maybe String
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Error returned when the caller has exceeded the default resource limits (e.g. too many Maintenance Windows have been created).</p>
-}
type alias ResourceLimitExceededException =
    { message : Maybe String
    }



resourceLimitExceededExceptionDecoder : JD.Decoder ResourceLimitExceededException
resourceLimitExceededExceptionDecoder =
    JDP.decode ResourceLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ResourceType_ManagedInstance`
* `ResourceType_Document`
* `ResourceType_EC2Instance`

-}
type ResourceType
    = ResourceType_ManagedInstance
    | ResourceType_Document
    | ResourceType_EC2Instance



resourceTypeDecoder : JD.Decoder ResourceType
resourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ManagedInstance" ->
                        JD.succeed ResourceType_ManagedInstance

                    "Document" ->
                        JD.succeed ResourceType_Document

                    "EC2Instance" ->
                        JD.succeed ResourceType_EC2Instance


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ResourceTypeForTagging_ManagedInstance`
* `ResourceTypeForTagging_MaintenanceWindow`
* `ResourceTypeForTagging_Parameter`

-}
type ResourceTypeForTagging
    = ResourceTypeForTagging_ManagedInstance
    | ResourceTypeForTagging_MaintenanceWindow
    | ResourceTypeForTagging_Parameter



resourceTypeForTaggingDecoder : JD.Decoder ResourceTypeForTagging
resourceTypeForTaggingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ManagedInstance" ->
                        JD.succeed ResourceTypeForTagging_ManagedInstance

                    "MaintenanceWindow" ->
                        JD.succeed ResourceTypeForTagging_MaintenanceWindow

                    "Parameter" ->
                        JD.succeed ResourceTypeForTagging_Parameter


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The inventory item result attribute.</p>
-}
type alias ResultAttribute =
    { typeName : String
    }



resultAttributeDecoder : JD.Decoder ResultAttribute
resultAttributeDecoder =
    JDP.decode ResultAttribute
        |> JDP.required "typeName" JD.string




{-| <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-}
type alias S3OutputLocation =
    { outputS3Region : Maybe String
    , outputS3BucketName : Maybe String
    , outputS3KeyPrefix : Maybe String
    }



s3OutputLocationDecoder : JD.Decoder S3OutputLocation
s3OutputLocationDecoder =
    JDP.decode S3OutputLocation
        |> JDP.optional "outputS3Region" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputS3KeyPrefix" (JD.nullable JD.string) Nothing




{-| <p>A URL for the Amazon S3 bucket where you want to store the results of this request.</p>
-}
type alias S3OutputUrl =
    { outputUrl : Maybe String
    }



s3OutputUrlDecoder : JD.Decoder S3OutputUrl
s3OutputUrlDecoder =
    JDP.decode S3OutputUrl
        |> JDP.optional "outputUrl" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from sendComma
-}
type alias SendCommandResult =
    { command : Maybe Command
    }



sendCommandResultDecoder : JD.Decoder SendCommandResult
sendCommandResultDecoder =
    JDP.decode SendCommandResult
        |> JDP.optional "command" (JD.nullable commandDecoder) Nothing




{-| Type of HTTP response from startAutomationExecuti
-}
type alias StartAutomationExecutionResult =
    { automationExecutionId : Maybe String
    }



startAutomationExecutionResultDecoder : JD.Decoder StartAutomationExecutionResult
startAutomationExecutionResultDecoder =
    JDP.decode StartAutomationExecutionResult
        |> JDP.optional "automationExecutionId" (JD.nullable JD.string) Nothing




{-| <p>The updated status is the same as the current status.</p>
-}
type alias StatusUnchanged =
    { 
    }



statusUnchangedDecoder : JD.Decoder StatusUnchanged
statusUnchangedDecoder =
    JDP.decode StatusUnchanged



{-| <p>Detailed information about an the execution state of an Automation step.</p>
-}
type alias StepExecution =
    { stepName : Maybe String
    , action : Maybe String
    , executionStartTime : Maybe Date
    , executionEndTime : Maybe Date
    , stepStatus : Maybe AutomationExecutionStatus
    , responseCode : Maybe String
    , inputs : Maybe (Dict String String)
    , outputs : Maybe (Dict String (List String))
    , response : Maybe String
    , failureMessage : Maybe String
    }



stepExecutionDecoder : JD.Decoder StepExecution
stepExecutionDecoder =
    JDP.decode StepExecution
        |> JDP.optional "stepName" (JD.nullable JD.string) Nothing
        |> JDP.optional "action" (JD.nullable JD.string) Nothing
        |> JDP.optional "executionStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "executionEndTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stepStatus" (JD.nullable automationExecutionStatusDecoder) Nothing
        |> JDP.optional "responseCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputs" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "outputs" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "response" (JD.nullable JD.string) Nothing
        |> JDP.optional "failureMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from stopAutomationExecuti
-}
type alias StopAutomationExecutionResult =
    { 
    }



stopAutomationExecutionResultDecoder : JD.Decoder StopAutomationExecutionResult
stopAutomationExecutionResultDecoder =
    JDP.decode StopAutomationExecutionResult



{-| <p>Metadata that you assign to your managed instances. Tags enable you to categorize your managed instances in different ways, for example, by purpose, owner, or environment.</p>
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




{-| <p>An array of search criteria that targets instances using a <code>Key</code>;<code>Value</code> combination that you specify. <code>Targets</code> is required if you don't provide one or more instance IDs in the call.</p>
-}
type alias Target =
    { key : Maybe String
    , values : Maybe (List String)
    }



targetDecoder : JD.Decoder Target
targetDecoder =
    JDP.decode Target
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The <code>Targets</code> parameter includes too many tags. Remove one or more tags and try the command again.</p>
-}
type alias TooManyTagsError =
    { 
    }



tooManyTagsErrorDecoder : JD.Decoder TooManyTagsError
tooManyTagsErrorDecoder =
    JDP.decode TooManyTagsError



{-| <p>There are concurrent updates for a resource that supports one update at a time.</p>
-}
type alias TooManyUpdates =
    { 
    }



tooManyUpdatesDecoder : JD.Decoder TooManyUpdates
tooManyUpdatesDecoder =
    JDP.decode TooManyUpdates



{-| <p>The size of inventory data has exceeded the total size limit for the resource.</p>
-}
type alias TotalSizeLimitExceededException =
    { message : Maybe String
    }



totalSizeLimitExceededExceptionDecoder : JD.Decoder TotalSizeLimitExceededException
totalSizeLimitExceededExceptionDecoder =
    JDP.decode TotalSizeLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Inventory item type schema version has to match supported versions in the service. Check output of <code>GetInventorySchema</code> to see the available schema version for each type.</p>
-}
type alias UnsupportedInventorySchemaVersionException =
    { message : Maybe String
    }



unsupportedInventorySchemaVersionExceptionDecoder : JD.Decoder UnsupportedInventorySchemaVersionException
unsupportedInventorySchemaVersionExceptionDecoder =
    JDP.decode UnsupportedInventorySchemaVersionException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The parameter type is not supported.</p>
-}
type alias UnsupportedParameterType =
    { message : Maybe String
    }



unsupportedParameterTypeDecoder : JD.Decoder UnsupportedParameterType
unsupportedParameterTypeDecoder =
    JDP.decode UnsupportedParameterType
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The document does not support the platform type of the given instance ID(s). For example, you sent an SSM document for a Windows instance to a Linux instance.</p>
-}
type alias UnsupportedPlatformType =
    { message : Maybe String
    }



unsupportedPlatformTypeDecoder : JD.Decoder UnsupportedPlatformType
unsupportedPlatformTypeDecoder =
    JDP.decode UnsupportedPlatformType
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateAssociati
-}
type alias UpdateAssociationResult =
    { associationDescription : Maybe AssociationDescription
    }



updateAssociationResultDecoder : JD.Decoder UpdateAssociationResult
updateAssociationResultDecoder =
    JDP.decode UpdateAssociationResult
        |> JDP.optional "associationDescription" (JD.nullable associationDescriptionDecoder) Nothing




{-| Type of HTTP response from updateAssociationStat
-}
type alias UpdateAssociationStatusResult =
    { associationDescription : Maybe AssociationDescription
    }



updateAssociationStatusResultDecoder : JD.Decoder UpdateAssociationStatusResult
updateAssociationStatusResultDecoder =
    JDP.decode UpdateAssociationStatusResult
        |> JDP.optional "associationDescription" (JD.nullable associationDescriptionDecoder) Nothing




{-| Type of HTTP response from updateDocumentDefaultVersi
-}
type alias UpdateDocumentDefaultVersionResult =
    { description : Maybe DocumentDefaultVersionDescription
    }



updateDocumentDefaultVersionResultDecoder : JD.Decoder UpdateDocumentDefaultVersionResult
updateDocumentDefaultVersionResultDecoder =
    JDP.decode UpdateDocumentDefaultVersionResult
        |> JDP.optional "description" (JD.nullable documentDefaultVersionDescriptionDecoder) Nothing




{-| Type of HTTP response from updateDocume
-}
type alias UpdateDocumentResult =
    { documentDescription : Maybe DocumentDescription
    }



updateDocumentResultDecoder : JD.Decoder UpdateDocumentResult
updateDocumentResultDecoder =
    JDP.decode UpdateDocumentResult
        |> JDP.optional "documentDescription" (JD.nullable documentDescriptionDecoder) Nothing




{-| Type of HTTP response from updateMaintenanceWind
-}
type alias UpdateMaintenanceWindowResult =
    { windowId : Maybe String
    , name : Maybe String
    , schedule : Maybe String
    , duration : Maybe Int
    , cutoff : Maybe Int
    , allowUnassociatedTargets : Maybe Bool
    , enabled : Maybe Bool
    }



updateMaintenanceWindowResultDecoder : JD.Decoder UpdateMaintenanceWindowResult
updateMaintenanceWindowResultDecoder =
    JDP.decode UpdateMaintenanceWindowResult
        |> JDP.optional "windowId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "schedule" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "cutoff" (JD.nullable JD.int) Nothing
        |> JDP.optional "allowUnassociatedTargets" (JD.nullable JD.bool) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from updateManagedInstanceRo
-}
type alias UpdateManagedInstanceRoleResult =
    { 
    }



updateManagedInstanceRoleResultDecoder : JD.Decoder UpdateManagedInstanceRoleResult
updateManagedInstanceRoleResultDecoder =
    JDP.decode UpdateManagedInstanceRoleResult



{-| Type of HTTP response from updatePatchBaseli
-}
type alias UpdatePatchBaselineResult =
    { baselineId : Maybe String
    , name : Maybe String
    , globalFilters : Maybe PatchFilterGroup
    , approvalRules : Maybe PatchRuleGroup
    , approvedPatches : Maybe (List String)
    , rejectedPatches : Maybe (List String)
    , createdDate : Maybe Date
    , modifiedDate : Maybe Date
    , description : Maybe String
    }



updatePatchBaselineResultDecoder : JD.Decoder UpdatePatchBaselineResult
updatePatchBaselineResultDecoder =
    JDP.decode UpdatePatchBaselineResult
        |> JDP.optional "baselineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "globalFilters" (JD.nullable patchFilterGroupDecoder) Nothing
        |> JDP.optional "approvalRules" (JD.nullable patchRuleGroupDecoder) Nothing
        |> JDP.optional "approvedPatches" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "rejectedPatches" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "modifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




