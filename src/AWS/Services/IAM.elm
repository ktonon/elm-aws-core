module AWS.Services.IAM
    exposing
        ( config
        , addClientIDToOpenIDConnectProvider
        , addRoleToInstanceProfile
        , addUserToGroup
        , attachGroupPolicy
        , attachRolePolicy
        , attachUserPolicy
        , changePassword
        , createAccessKey
        , CreateAccessKeyOptions
        , createAccountAlias
        , createGroup
        , CreateGroupOptions
        , createInstanceProfile
        , CreateInstanceProfileOptions
        , createLoginProfile
        , CreateLoginProfileOptions
        , createOpenIDConnectProvider
        , CreateOpenIDConnectProviderOptions
        , createPolicy
        , CreatePolicyOptions
        , createPolicyVersion
        , CreatePolicyVersionOptions
        , createRole
        , CreateRoleOptions
        , createSAMLProvider
        , createServiceSpecificCredential
        , createUser
        , CreateUserOptions
        , createVirtualMFADevice
        , CreateVirtualMFADeviceOptions
        , deactivateMFADevice
        , deleteAccessKey
        , DeleteAccessKeyOptions
        , deleteAccountAlias
        , deleteAccountPasswordPolicy
        , deleteGroup
        , deleteGroupPolicy
        , deleteInstanceProfile
        , deleteLoginProfile
        , deleteOpenIDConnectProvider
        , deletePolicy
        , deletePolicyVersion
        , deleteRole
        , deleteRolePolicy
        , deleteSAMLProvider
        , deleteSSHPublicKey
        , deleteServerCertificate
        , deleteServiceSpecificCredential
        , DeleteServiceSpecificCredentialOptions
        , deleteSigningCertificate
        , DeleteSigningCertificateOptions
        , deleteUser
        , deleteUserPolicy
        , deleteVirtualMFADevice
        , detachGroupPolicy
        , detachRolePolicy
        , detachUserPolicy
        , enableMFADevice
        , generateCredentialReport
        , getAccessKeyLastUsed
        , getAccountAuthorizationDetails
        , GetAccountAuthorizationDetailsOptions
        , getAccountPasswordPolicy
        , getAccountSummary
        , getContextKeysForCustomPolicy
        , getContextKeysForPrincipalPolicy
        , GetContextKeysForPrincipalPolicyOptions
        , getCredentialReport
        , getGroup
        , GetGroupOptions
        , getGroupPolicy
        , getInstanceProfile
        , getLoginProfile
        , getOpenIDConnectProvider
        , getPolicy
        , getPolicyVersion
        , getRole
        , getRolePolicy
        , getSAMLProvider
        , getSSHPublicKey
        , getServerCertificate
        , getUser
        , GetUserOptions
        , getUserPolicy
        , listAccessKeys
        , ListAccessKeysOptions
        , listAccountAliases
        , ListAccountAliasesOptions
        , listAttachedGroupPolicies
        , ListAttachedGroupPoliciesOptions
        , listAttachedRolePolicies
        , ListAttachedRolePoliciesOptions
        , listAttachedUserPolicies
        , ListAttachedUserPoliciesOptions
        , listEntitiesForPolicy
        , ListEntitiesForPolicyOptions
        , listGroupPolicies
        , ListGroupPoliciesOptions
        , listGroups
        , ListGroupsOptions
        , listGroupsForUser
        , ListGroupsForUserOptions
        , listInstanceProfiles
        , ListInstanceProfilesOptions
        , listInstanceProfilesForRole
        , ListInstanceProfilesForRoleOptions
        , listMFADevices
        , ListMFADevicesOptions
        , listOpenIDConnectProviders
        , listPolicies
        , ListPoliciesOptions
        , listPolicyVersions
        , ListPolicyVersionsOptions
        , listRolePolicies
        , ListRolePoliciesOptions
        , listRoles
        , ListRolesOptions
        , listSAMLProviders
        , listSSHPublicKeys
        , ListSSHPublicKeysOptions
        , listServerCertificates
        , ListServerCertificatesOptions
        , listServiceSpecificCredentials
        , ListServiceSpecificCredentialsOptions
        , listSigningCertificates
        , ListSigningCertificatesOptions
        , listUserPolicies
        , ListUserPoliciesOptions
        , listUsers
        , ListUsersOptions
        , listVirtualMFADevices
        , ListVirtualMFADevicesOptions
        , putGroupPolicy
        , putRolePolicy
        , putUserPolicy
        , removeClientIDFromOpenIDConnectProvider
        , removeRoleFromInstanceProfile
        , removeUserFromGroup
        , resetServiceSpecificCredential
        , ResetServiceSpecificCredentialOptions
        , resyncMFADevice
        , setDefaultPolicyVersion
        , simulateCustomPolicy
        , SimulateCustomPolicyOptions
        , simulatePrincipalPolicy
        , SimulatePrincipalPolicyOptions
        , updateAccessKey
        , UpdateAccessKeyOptions
        , updateAccountPasswordPolicy
        , UpdateAccountPasswordPolicyOptions
        , updateAssumeRolePolicy
        , updateGroup
        , UpdateGroupOptions
        , updateLoginProfile
        , UpdateLoginProfileOptions
        , updateOpenIDConnectProviderThumbprint
        , updateSAMLProvider
        , updateSSHPublicKey
        , updateServerCertificate
        , UpdateServerCertificateOptions
        , updateServiceSpecificCredential
        , UpdateServiceSpecificCredentialOptions
        , updateSigningCertificate
        , UpdateSigningCertificateOptions
        , updateUser
        , UpdateUserOptions
        , uploadSSHPublicKey
        , uploadServerCertificate
        , UploadServerCertificateOptions
        , uploadSigningCertificate
        , UploadSigningCertificateOptions
        , AccessKey
        , AccessKeyLastUsed
        , AccessKeyMetadata
        , AttachedPolicy
        , ContextEntry
        , ContextKeyTypeEnum(..)
        , CreateAccessKeyResponse
        , CreateGroupResponse
        , CreateInstanceProfileResponse
        , CreateLoginProfileResponse
        , CreateOpenIDConnectProviderResponse
        , CreatePolicyResponse
        , CreatePolicyVersionResponse
        , CreateRoleResponse
        , CreateSAMLProviderResponse
        , CreateServiceSpecificCredentialResponse
        , CreateUserResponse
        , CreateVirtualMFADeviceResponse
        , CredentialReportExpiredException
        , CredentialReportNotPresentException
        , CredentialReportNotReadyException
        , DeleteConflictException
        , DuplicateCertificateException
        , DuplicateSSHPublicKeyException
        , EntityAlreadyExistsException
        , EntityTemporarilyUnmodifiableException
        , EntityType(..)
        , EvaluationResult
        , GenerateCredentialReportResponse
        , GetAccessKeyLastUsedResponse
        , GetAccountAuthorizationDetailsResponse
        , GetAccountPasswordPolicyResponse
        , GetAccountSummaryResponse
        , GetContextKeysForPolicyResponse
        , GetCredentialReportResponse
        , GetGroupPolicyResponse
        , GetGroupResponse
        , GetInstanceProfileResponse
        , GetLoginProfileResponse
        , GetOpenIDConnectProviderResponse
        , GetPolicyResponse
        , GetPolicyVersionResponse
        , GetRolePolicyResponse
        , GetRoleResponse
        , GetSAMLProviderResponse
        , GetSSHPublicKeyResponse
        , GetServerCertificateResponse
        , GetUserPolicyResponse
        , GetUserResponse
        , Group
        , GroupDetail
        , InstanceProfile
        , InvalidAuthenticationCodeException
        , InvalidCertificateException
        , InvalidInputException
        , InvalidPublicKeyException
        , InvalidUserTypeException
        , KeyPairMismatchException
        , LimitExceededException
        , ListAccessKeysResponse
        , ListAccountAliasesResponse
        , ListAttachedGroupPoliciesResponse
        , ListAttachedRolePoliciesResponse
        , ListAttachedUserPoliciesResponse
        , ListEntitiesForPolicyResponse
        , ListGroupPoliciesResponse
        , ListGroupsForUserResponse
        , ListGroupsResponse
        , ListInstanceProfilesForRoleResponse
        , ListInstanceProfilesResponse
        , ListMFADevicesResponse
        , ListOpenIDConnectProvidersResponse
        , ListPoliciesResponse
        , ListPolicyVersionsResponse
        , ListRolePoliciesResponse
        , ListRolesResponse
        , ListSAMLProvidersResponse
        , ListSSHPublicKeysResponse
        , ListServerCertificatesResponse
        , ListServiceSpecificCredentialsResponse
        , ListSigningCertificatesResponse
        , ListUserPoliciesResponse
        , ListUsersResponse
        , ListVirtualMFADevicesResponse
        , LoginProfile
        , MFADevice
        , MalformedCertificateException
        , MalformedPolicyDocumentException
        , ManagedPolicyDetail
        , NoSuchEntityException
        , OpenIDConnectProviderListEntry
        , PasswordPolicy
        , PasswordPolicyViolationException
        , Policy
        , PolicyDetail
        , PolicyEvaluationDecisionType(..)
        , PolicyEvaluationException
        , PolicyGroup
        , PolicyRole
        , PolicySourceType(..)
        , PolicyUser
        , PolicyVersion
        , Position
        , ReportFormatType(..)
        , ReportStateType(..)
        , ResetServiceSpecificCredentialResponse
        , ResourceSpecificResult
        , Role
        , RoleDetail
        , SAMLProviderListEntry
        , SSHPublicKey
        , SSHPublicKeyMetadata
        , ServerCertificate
        , ServerCertificateMetadata
        , ServiceFailureException
        , ServiceNotSupportedException
        , ServiceSpecificCredential
        , ServiceSpecificCredentialMetadata
        , SigningCertificate
        , SimulatePolicyResponse
        , Statement
        , UnrecognizedPublicKeyEncodingException
        , UpdateSAMLProviderResponse
        , UploadSSHPublicKeyResponse
        , UploadServerCertificateResponse
        , UploadSigningCertificateResponse
        , User
        , UserDetail
        , VirtualMFADevice
        , AssignmentStatusType(..)
        , EncodingType(..)
        , PolicyScopeType(..)
        , StatusType(..)
        , SummaryKeyType(..)
        )

{-| <fullname>AWS Identity and Access Management</fullname> <p>AWS Identity and Access Management (IAM) is a web service that you can use to manage users and user permissions under your AWS account. This guide provides descriptions of IAM actions that you can call programmatically. For general information about IAM, see <a href="http://aws.amazon.com/iam/">AWS Identity and Access Management (IAM)</a>. For the user guide for IAM, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/">Using IAM</a>. </p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to IAM and AWS. For example, the SDKs take care of tasks such as cryptographically signing requests (see below), managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a> page. </p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to IAM. However, you can also use the IAM Query API to make direct calls to the IAM web service. To learn more about the IAM Query API, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>Using IAM</i> guide. IAM supports GET and POST requests for all actions. That is, the API does not require you to use GET for some actions and POST for others. However, GET requests are subject to the limitation size of a URL. Therefore, for operations that require larger sizes, use a POST request. </p> <p> <b>Signing Requests</b> </p> <p>Requests must be signed using an access key ID and a secret access key. We strongly recommend that you do not use your AWS account access key ID and secret access key for everyday work with IAM. You can use the access key ID and secret access key for an IAM user or you can use the AWS Security Token Service to generate temporary security credentials and use those to sign requests.</p> <p>To sign requests, we recommend that you use <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>. If you have an existing application that uses Signature Version 2, you do not have to update it to use Signature Version 4. However, some operations now require Signature Version 4. The documentation for operations that require version 4 indicate this requirement. </p> <p> <b>Additional Resources</b> </p> <p>For more information, see the following:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS Security Credentials</a>. This topic provides general information about the types of credentials used for accessing AWS. </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAMBestPractices.html">IAM Best Practices</a>. This topic presents a list of suggestions for using the IAM service to help secure your AWS resources. </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a>. This set of topics walk you through the process of signing a request using an access key ID and secret access key. </p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addClientIDToOpenIDConnectProvider](#addClientIDToOpenIDConnectProvider)
* [addRoleToInstanceProfile](#addRoleToInstanceProfile)
* [addUserToGroup](#addUserToGroup)
* [attachGroupPolicy](#attachGroupPolicy)
* [attachRolePolicy](#attachRolePolicy)
* [attachUserPolicy](#attachUserPolicy)
* [changePassword](#changePassword)
* [createAccessKey](#createAccessKey)
* [CreateAccessKeyOptions](#CreateAccessKeyOptions)
* [createAccountAlias](#createAccountAlias)
* [createGroup](#createGroup)
* [CreateGroupOptions](#CreateGroupOptions)
* [createInstanceProfile](#createInstanceProfile)
* [CreateInstanceProfileOptions](#CreateInstanceProfileOptions)
* [createLoginProfile](#createLoginProfile)
* [CreateLoginProfileOptions](#CreateLoginProfileOptions)
* [createOpenIDConnectProvider](#createOpenIDConnectProvider)
* [CreateOpenIDConnectProviderOptions](#CreateOpenIDConnectProviderOptions)
* [createPolicy](#createPolicy)
* [CreatePolicyOptions](#CreatePolicyOptions)
* [createPolicyVersion](#createPolicyVersion)
* [CreatePolicyVersionOptions](#CreatePolicyVersionOptions)
* [createRole](#createRole)
* [CreateRoleOptions](#CreateRoleOptions)
* [createSAMLProvider](#createSAMLProvider)
* [createServiceSpecificCredential](#createServiceSpecificCredential)
* [createUser](#createUser)
* [CreateUserOptions](#CreateUserOptions)
* [createVirtualMFADevice](#createVirtualMFADevice)
* [CreateVirtualMFADeviceOptions](#CreateVirtualMFADeviceOptions)
* [deactivateMFADevice](#deactivateMFADevice)
* [deleteAccessKey](#deleteAccessKey)
* [DeleteAccessKeyOptions](#DeleteAccessKeyOptions)
* [deleteAccountAlias](#deleteAccountAlias)
* [deleteAccountPasswordPolicy](#deleteAccountPasswordPolicy)
* [deleteGroup](#deleteGroup)
* [deleteGroupPolicy](#deleteGroupPolicy)
* [deleteInstanceProfile](#deleteInstanceProfile)
* [deleteLoginProfile](#deleteLoginProfile)
* [deleteOpenIDConnectProvider](#deleteOpenIDConnectProvider)
* [deletePolicy](#deletePolicy)
* [deletePolicyVersion](#deletePolicyVersion)
* [deleteRole](#deleteRole)
* [deleteRolePolicy](#deleteRolePolicy)
* [deleteSAMLProvider](#deleteSAMLProvider)
* [deleteSSHPublicKey](#deleteSSHPublicKey)
* [deleteServerCertificate](#deleteServerCertificate)
* [deleteServiceSpecificCredential](#deleteServiceSpecificCredential)
* [DeleteServiceSpecificCredentialOptions](#DeleteServiceSpecificCredentialOptions)
* [deleteSigningCertificate](#deleteSigningCertificate)
* [DeleteSigningCertificateOptions](#DeleteSigningCertificateOptions)
* [deleteUser](#deleteUser)
* [deleteUserPolicy](#deleteUserPolicy)
* [deleteVirtualMFADevice](#deleteVirtualMFADevice)
* [detachGroupPolicy](#detachGroupPolicy)
* [detachRolePolicy](#detachRolePolicy)
* [detachUserPolicy](#detachUserPolicy)
* [enableMFADevice](#enableMFADevice)
* [generateCredentialReport](#generateCredentialReport)
* [getAccessKeyLastUsed](#getAccessKeyLastUsed)
* [getAccountAuthorizationDetails](#getAccountAuthorizationDetails)
* [GetAccountAuthorizationDetailsOptions](#GetAccountAuthorizationDetailsOptions)
* [getAccountPasswordPolicy](#getAccountPasswordPolicy)
* [getAccountSummary](#getAccountSummary)
* [getContextKeysForCustomPolicy](#getContextKeysForCustomPolicy)
* [getContextKeysForPrincipalPolicy](#getContextKeysForPrincipalPolicy)
* [GetContextKeysForPrincipalPolicyOptions](#GetContextKeysForPrincipalPolicyOptions)
* [getCredentialReport](#getCredentialReport)
* [getGroup](#getGroup)
* [GetGroupOptions](#GetGroupOptions)
* [getGroupPolicy](#getGroupPolicy)
* [getInstanceProfile](#getInstanceProfile)
* [getLoginProfile](#getLoginProfile)
* [getOpenIDConnectProvider](#getOpenIDConnectProvider)
* [getPolicy](#getPolicy)
* [getPolicyVersion](#getPolicyVersion)
* [getRole](#getRole)
* [getRolePolicy](#getRolePolicy)
* [getSAMLProvider](#getSAMLProvider)
* [getSSHPublicKey](#getSSHPublicKey)
* [getServerCertificate](#getServerCertificate)
* [getUser](#getUser)
* [GetUserOptions](#GetUserOptions)
* [getUserPolicy](#getUserPolicy)
* [listAccessKeys](#listAccessKeys)
* [ListAccessKeysOptions](#ListAccessKeysOptions)
* [listAccountAliases](#listAccountAliases)
* [ListAccountAliasesOptions](#ListAccountAliasesOptions)
* [listAttachedGroupPolicies](#listAttachedGroupPolicies)
* [ListAttachedGroupPoliciesOptions](#ListAttachedGroupPoliciesOptions)
* [listAttachedRolePolicies](#listAttachedRolePolicies)
* [ListAttachedRolePoliciesOptions](#ListAttachedRolePoliciesOptions)
* [listAttachedUserPolicies](#listAttachedUserPolicies)
* [ListAttachedUserPoliciesOptions](#ListAttachedUserPoliciesOptions)
* [listEntitiesForPolicy](#listEntitiesForPolicy)
* [ListEntitiesForPolicyOptions](#ListEntitiesForPolicyOptions)
* [listGroupPolicies](#listGroupPolicies)
* [ListGroupPoliciesOptions](#ListGroupPoliciesOptions)
* [listGroups](#listGroups)
* [ListGroupsOptions](#ListGroupsOptions)
* [listGroupsForUser](#listGroupsForUser)
* [ListGroupsForUserOptions](#ListGroupsForUserOptions)
* [listInstanceProfiles](#listInstanceProfiles)
* [ListInstanceProfilesOptions](#ListInstanceProfilesOptions)
* [listInstanceProfilesForRole](#listInstanceProfilesForRole)
* [ListInstanceProfilesForRoleOptions](#ListInstanceProfilesForRoleOptions)
* [listMFADevices](#listMFADevices)
* [ListMFADevicesOptions](#ListMFADevicesOptions)
* [listOpenIDConnectProviders](#listOpenIDConnectProviders)
* [listPolicies](#listPolicies)
* [ListPoliciesOptions](#ListPoliciesOptions)
* [listPolicyVersions](#listPolicyVersions)
* [ListPolicyVersionsOptions](#ListPolicyVersionsOptions)
* [listRolePolicies](#listRolePolicies)
* [ListRolePoliciesOptions](#ListRolePoliciesOptions)
* [listRoles](#listRoles)
* [ListRolesOptions](#ListRolesOptions)
* [listSAMLProviders](#listSAMLProviders)
* [listSSHPublicKeys](#listSSHPublicKeys)
* [ListSSHPublicKeysOptions](#ListSSHPublicKeysOptions)
* [listServerCertificates](#listServerCertificates)
* [ListServerCertificatesOptions](#ListServerCertificatesOptions)
* [listServiceSpecificCredentials](#listServiceSpecificCredentials)
* [ListServiceSpecificCredentialsOptions](#ListServiceSpecificCredentialsOptions)
* [listSigningCertificates](#listSigningCertificates)
* [ListSigningCertificatesOptions](#ListSigningCertificatesOptions)
* [listUserPolicies](#listUserPolicies)
* [ListUserPoliciesOptions](#ListUserPoliciesOptions)
* [listUsers](#listUsers)
* [ListUsersOptions](#ListUsersOptions)
* [listVirtualMFADevices](#listVirtualMFADevices)
* [ListVirtualMFADevicesOptions](#ListVirtualMFADevicesOptions)
* [putGroupPolicy](#putGroupPolicy)
* [putRolePolicy](#putRolePolicy)
* [putUserPolicy](#putUserPolicy)
* [removeClientIDFromOpenIDConnectProvider](#removeClientIDFromOpenIDConnectProvider)
* [removeRoleFromInstanceProfile](#removeRoleFromInstanceProfile)
* [removeUserFromGroup](#removeUserFromGroup)
* [resetServiceSpecificCredential](#resetServiceSpecificCredential)
* [ResetServiceSpecificCredentialOptions](#ResetServiceSpecificCredentialOptions)
* [resyncMFADevice](#resyncMFADevice)
* [setDefaultPolicyVersion](#setDefaultPolicyVersion)
* [simulateCustomPolicy](#simulateCustomPolicy)
* [SimulateCustomPolicyOptions](#SimulateCustomPolicyOptions)
* [simulatePrincipalPolicy](#simulatePrincipalPolicy)
* [SimulatePrincipalPolicyOptions](#SimulatePrincipalPolicyOptions)
* [updateAccessKey](#updateAccessKey)
* [UpdateAccessKeyOptions](#UpdateAccessKeyOptions)
* [updateAccountPasswordPolicy](#updateAccountPasswordPolicy)
* [UpdateAccountPasswordPolicyOptions](#UpdateAccountPasswordPolicyOptions)
* [updateAssumeRolePolicy](#updateAssumeRolePolicy)
* [updateGroup](#updateGroup)
* [UpdateGroupOptions](#UpdateGroupOptions)
* [updateLoginProfile](#updateLoginProfile)
* [UpdateLoginProfileOptions](#UpdateLoginProfileOptions)
* [updateOpenIDConnectProviderThumbprint](#updateOpenIDConnectProviderThumbprint)
* [updateSAMLProvider](#updateSAMLProvider)
* [updateSSHPublicKey](#updateSSHPublicKey)
* [updateServerCertificate](#updateServerCertificate)
* [UpdateServerCertificateOptions](#UpdateServerCertificateOptions)
* [updateServiceSpecificCredential](#updateServiceSpecificCredential)
* [UpdateServiceSpecificCredentialOptions](#UpdateServiceSpecificCredentialOptions)
* [updateSigningCertificate](#updateSigningCertificate)
* [UpdateSigningCertificateOptions](#UpdateSigningCertificateOptions)
* [updateUser](#updateUser)
* [UpdateUserOptions](#UpdateUserOptions)
* [uploadSSHPublicKey](#uploadSSHPublicKey)
* [uploadServerCertificate](#uploadServerCertificate)
* [UploadServerCertificateOptions](#UploadServerCertificateOptions)
* [uploadSigningCertificate](#uploadSigningCertificate)
* [UploadSigningCertificateOptions](#UploadSigningCertificateOptions)


@docs addClientIDToOpenIDConnectProvider,addRoleToInstanceProfile,addUserToGroup,attachGroupPolicy,attachRolePolicy,attachUserPolicy,changePassword,createAccessKey,CreateAccessKeyOptions,createAccountAlias,createGroup,CreateGroupOptions,createInstanceProfile,CreateInstanceProfileOptions,createLoginProfile,CreateLoginProfileOptions,createOpenIDConnectProvider,CreateOpenIDConnectProviderOptions,createPolicy,CreatePolicyOptions,createPolicyVersion,CreatePolicyVersionOptions,createRole,CreateRoleOptions,createSAMLProvider,createServiceSpecificCredential,createUser,CreateUserOptions,createVirtualMFADevice,CreateVirtualMFADeviceOptions,deactivateMFADevice,deleteAccessKey,DeleteAccessKeyOptions,deleteAccountAlias,deleteAccountPasswordPolicy,deleteGroup,deleteGroupPolicy,deleteInstanceProfile,deleteLoginProfile,deleteOpenIDConnectProvider,deletePolicy,deletePolicyVersion,deleteRole,deleteRolePolicy,deleteSAMLProvider,deleteSSHPublicKey,deleteServerCertificate,deleteServiceSpecificCredential,DeleteServiceSpecificCredentialOptions,deleteSigningCertificate,DeleteSigningCertificateOptions,deleteUser,deleteUserPolicy,deleteVirtualMFADevice,detachGroupPolicy,detachRolePolicy,detachUserPolicy,enableMFADevice,generateCredentialReport,getAccessKeyLastUsed,getAccountAuthorizationDetails,GetAccountAuthorizationDetailsOptions,getAccountPasswordPolicy,getAccountSummary,getContextKeysForCustomPolicy,getContextKeysForPrincipalPolicy,GetContextKeysForPrincipalPolicyOptions,getCredentialReport,getGroup,GetGroupOptions,getGroupPolicy,getInstanceProfile,getLoginProfile,getOpenIDConnectProvider,getPolicy,getPolicyVersion,getRole,getRolePolicy,getSAMLProvider,getSSHPublicKey,getServerCertificate,getUser,GetUserOptions,getUserPolicy,listAccessKeys,ListAccessKeysOptions,listAccountAliases,ListAccountAliasesOptions,listAttachedGroupPolicies,ListAttachedGroupPoliciesOptions,listAttachedRolePolicies,ListAttachedRolePoliciesOptions,listAttachedUserPolicies,ListAttachedUserPoliciesOptions,listEntitiesForPolicy,ListEntitiesForPolicyOptions,listGroupPolicies,ListGroupPoliciesOptions,listGroups,ListGroupsOptions,listGroupsForUser,ListGroupsForUserOptions,listInstanceProfiles,ListInstanceProfilesOptions,listInstanceProfilesForRole,ListInstanceProfilesForRoleOptions,listMFADevices,ListMFADevicesOptions,listOpenIDConnectProviders,listPolicies,ListPoliciesOptions,listPolicyVersions,ListPolicyVersionsOptions,listRolePolicies,ListRolePoliciesOptions,listRoles,ListRolesOptions,listSAMLProviders,listSSHPublicKeys,ListSSHPublicKeysOptions,listServerCertificates,ListServerCertificatesOptions,listServiceSpecificCredentials,ListServiceSpecificCredentialsOptions,listSigningCertificates,ListSigningCertificatesOptions,listUserPolicies,ListUserPoliciesOptions,listUsers,ListUsersOptions,listVirtualMFADevices,ListVirtualMFADevicesOptions,putGroupPolicy,putRolePolicy,putUserPolicy,removeClientIDFromOpenIDConnectProvider,removeRoleFromInstanceProfile,removeUserFromGroup,resetServiceSpecificCredential,ResetServiceSpecificCredentialOptions,resyncMFADevice,setDefaultPolicyVersion,simulateCustomPolicy,SimulateCustomPolicyOptions,simulatePrincipalPolicy,SimulatePrincipalPolicyOptions,updateAccessKey,UpdateAccessKeyOptions,updateAccountPasswordPolicy,UpdateAccountPasswordPolicyOptions,updateAssumeRolePolicy,updateGroup,UpdateGroupOptions,updateLoginProfile,UpdateLoginProfileOptions,updateOpenIDConnectProviderThumbprint,updateSAMLProvider,updateSSHPublicKey,updateServerCertificate,UpdateServerCertificateOptions,updateServiceSpecificCredential,UpdateServiceSpecificCredentialOptions,updateSigningCertificate,UpdateSigningCertificateOptions,updateUser,UpdateUserOptions,uploadSSHPublicKey,uploadServerCertificate,UploadServerCertificateOptions,uploadSigningCertificate,UploadSigningCertificateOptions

## Responses

* [CreateAccessKeyResponse](#CreateAccessKeyResponse)
* [CreateGroupResponse](#CreateGroupResponse)
* [CreateInstanceProfileResponse](#CreateInstanceProfileResponse)
* [CreateLoginProfileResponse](#CreateLoginProfileResponse)
* [CreateOpenIDConnectProviderResponse](#CreateOpenIDConnectProviderResponse)
* [CreatePolicyResponse](#CreatePolicyResponse)
* [CreatePolicyVersionResponse](#CreatePolicyVersionResponse)
* [CreateRoleResponse](#CreateRoleResponse)
* [CreateSAMLProviderResponse](#CreateSAMLProviderResponse)
* [CreateServiceSpecificCredentialResponse](#CreateServiceSpecificCredentialResponse)
* [CreateUserResponse](#CreateUserResponse)
* [CreateVirtualMFADeviceResponse](#CreateVirtualMFADeviceResponse)
* [GenerateCredentialReportResponse](#GenerateCredentialReportResponse)
* [GetAccessKeyLastUsedResponse](#GetAccessKeyLastUsedResponse)
* [GetAccountAuthorizationDetailsResponse](#GetAccountAuthorizationDetailsResponse)
* [GetAccountPasswordPolicyResponse](#GetAccountPasswordPolicyResponse)
* [GetAccountSummaryResponse](#GetAccountSummaryResponse)
* [GetContextKeysForPolicyResponse](#GetContextKeysForPolicyResponse)
* [GetCredentialReportResponse](#GetCredentialReportResponse)
* [GetGroupPolicyResponse](#GetGroupPolicyResponse)
* [GetGroupResponse](#GetGroupResponse)
* [GetInstanceProfileResponse](#GetInstanceProfileResponse)
* [GetLoginProfileResponse](#GetLoginProfileResponse)
* [GetOpenIDConnectProviderResponse](#GetOpenIDConnectProviderResponse)
* [GetPolicyResponse](#GetPolicyResponse)
* [GetPolicyVersionResponse](#GetPolicyVersionResponse)
* [GetRolePolicyResponse](#GetRolePolicyResponse)
* [GetRoleResponse](#GetRoleResponse)
* [GetSAMLProviderResponse](#GetSAMLProviderResponse)
* [GetSSHPublicKeyResponse](#GetSSHPublicKeyResponse)
* [GetServerCertificateResponse](#GetServerCertificateResponse)
* [GetUserPolicyResponse](#GetUserPolicyResponse)
* [GetUserResponse](#GetUserResponse)
* [ListAccessKeysResponse](#ListAccessKeysResponse)
* [ListAccountAliasesResponse](#ListAccountAliasesResponse)
* [ListAttachedGroupPoliciesResponse](#ListAttachedGroupPoliciesResponse)
* [ListAttachedRolePoliciesResponse](#ListAttachedRolePoliciesResponse)
* [ListAttachedUserPoliciesResponse](#ListAttachedUserPoliciesResponse)
* [ListEntitiesForPolicyResponse](#ListEntitiesForPolicyResponse)
* [ListGroupPoliciesResponse](#ListGroupPoliciesResponse)
* [ListGroupsForUserResponse](#ListGroupsForUserResponse)
* [ListGroupsResponse](#ListGroupsResponse)
* [ListInstanceProfilesForRoleResponse](#ListInstanceProfilesForRoleResponse)
* [ListInstanceProfilesResponse](#ListInstanceProfilesResponse)
* [ListMFADevicesResponse](#ListMFADevicesResponse)
* [ListOpenIDConnectProvidersResponse](#ListOpenIDConnectProvidersResponse)
* [ListPoliciesResponse](#ListPoliciesResponse)
* [ListPolicyVersionsResponse](#ListPolicyVersionsResponse)
* [ListRolePoliciesResponse](#ListRolePoliciesResponse)
* [ListRolesResponse](#ListRolesResponse)
* [ListSAMLProvidersResponse](#ListSAMLProvidersResponse)
* [ListSSHPublicKeysResponse](#ListSSHPublicKeysResponse)
* [ListServerCertificatesResponse](#ListServerCertificatesResponse)
* [ListServiceSpecificCredentialsResponse](#ListServiceSpecificCredentialsResponse)
* [ListSigningCertificatesResponse](#ListSigningCertificatesResponse)
* [ListUserPoliciesResponse](#ListUserPoliciesResponse)
* [ListUsersResponse](#ListUsersResponse)
* [ListVirtualMFADevicesResponse](#ListVirtualMFADevicesResponse)
* [ResetServiceSpecificCredentialResponse](#ResetServiceSpecificCredentialResponse)
* [SimulatePolicyResponse](#SimulatePolicyResponse)
* [UpdateSAMLProviderResponse](#UpdateSAMLProviderResponse)
* [UploadSSHPublicKeyResponse](#UploadSSHPublicKeyResponse)
* [UploadServerCertificateResponse](#UploadServerCertificateResponse)
* [UploadSigningCertificateResponse](#UploadSigningCertificateResponse)


@docs CreateAccessKeyResponse,CreateGroupResponse,CreateInstanceProfileResponse,CreateLoginProfileResponse,CreateOpenIDConnectProviderResponse,CreatePolicyResponse,CreatePolicyVersionResponse,CreateRoleResponse,CreateSAMLProviderResponse,CreateServiceSpecificCredentialResponse,CreateUserResponse,CreateVirtualMFADeviceResponse,GenerateCredentialReportResponse,GetAccessKeyLastUsedResponse,GetAccountAuthorizationDetailsResponse,GetAccountPasswordPolicyResponse,GetAccountSummaryResponse,GetContextKeysForPolicyResponse,GetCredentialReportResponse,GetGroupPolicyResponse,GetGroupResponse,GetInstanceProfileResponse,GetLoginProfileResponse,GetOpenIDConnectProviderResponse,GetPolicyResponse,GetPolicyVersionResponse,GetRolePolicyResponse,GetRoleResponse,GetSAMLProviderResponse,GetSSHPublicKeyResponse,GetServerCertificateResponse,GetUserPolicyResponse,GetUserResponse,ListAccessKeysResponse,ListAccountAliasesResponse,ListAttachedGroupPoliciesResponse,ListAttachedRolePoliciesResponse,ListAttachedUserPoliciesResponse,ListEntitiesForPolicyResponse,ListGroupPoliciesResponse,ListGroupsForUserResponse,ListGroupsResponse,ListInstanceProfilesForRoleResponse,ListInstanceProfilesResponse,ListMFADevicesResponse,ListOpenIDConnectProvidersResponse,ListPoliciesResponse,ListPolicyVersionsResponse,ListRolePoliciesResponse,ListRolesResponse,ListSAMLProvidersResponse,ListSSHPublicKeysResponse,ListServerCertificatesResponse,ListServiceSpecificCredentialsResponse,ListSigningCertificatesResponse,ListUserPoliciesResponse,ListUsersResponse,ListVirtualMFADevicesResponse,ResetServiceSpecificCredentialResponse,SimulatePolicyResponse,UpdateSAMLProviderResponse,UploadSSHPublicKeyResponse,UploadServerCertificateResponse,UploadSigningCertificateResponse

## Records

* [AccessKey](#AccessKey)
* [AccessKeyLastUsed](#AccessKeyLastUsed)
* [AccessKeyMetadata](#AccessKeyMetadata)
* [AttachedPolicy](#AttachedPolicy)
* [ContextEntry](#ContextEntry)
* [EvaluationResult](#EvaluationResult)
* [Group](#Group)
* [GroupDetail](#GroupDetail)
* [InstanceProfile](#InstanceProfile)
* [LoginProfile](#LoginProfile)
* [MFADevice](#MFADevice)
* [ManagedPolicyDetail](#ManagedPolicyDetail)
* [OpenIDConnectProviderListEntry](#OpenIDConnectProviderListEntry)
* [PasswordPolicy](#PasswordPolicy)
* [Policy](#Policy)
* [PolicyDetail](#PolicyDetail)
* [PolicyGroup](#PolicyGroup)
* [PolicyRole](#PolicyRole)
* [PolicyUser](#PolicyUser)
* [PolicyVersion](#PolicyVersion)
* [Position](#Position)
* [ResourceSpecificResult](#ResourceSpecificResult)
* [Role](#Role)
* [RoleDetail](#RoleDetail)
* [SAMLProviderListEntry](#SAMLProviderListEntry)
* [SSHPublicKey](#SSHPublicKey)
* [SSHPublicKeyMetadata](#SSHPublicKeyMetadata)
* [ServerCertificate](#ServerCertificate)
* [ServerCertificateMetadata](#ServerCertificateMetadata)
* [ServiceSpecificCredential](#ServiceSpecificCredential)
* [ServiceSpecificCredentialMetadata](#ServiceSpecificCredentialMetadata)
* [SigningCertificate](#SigningCertificate)
* [Statement](#Statement)
* [User](#User)
* [UserDetail](#UserDetail)
* [VirtualMFADevice](#VirtualMFADevice)


@docs AccessKey,AccessKeyLastUsed,AccessKeyMetadata,AttachedPolicy,ContextEntry,EvaluationResult,Group,GroupDetail,InstanceProfile,LoginProfile,MFADevice,ManagedPolicyDetail,OpenIDConnectProviderListEntry,PasswordPolicy,Policy,PolicyDetail,PolicyGroup,PolicyRole,PolicyUser,PolicyVersion,Position,ResourceSpecificResult,Role,RoleDetail,SAMLProviderListEntry,SSHPublicKey,SSHPublicKeyMetadata,ServerCertificate,ServerCertificateMetadata,ServiceSpecificCredential,ServiceSpecificCredentialMetadata,SigningCertificate,Statement,User,UserDetail,VirtualMFADevice

## Unions

* [ContextKeyTypeEnum](#ContextKeyTypeEnum)
* [EntityType](#EntityType)
* [PolicyEvaluationDecisionType](#PolicyEvaluationDecisionType)
* [PolicySourceType](#PolicySourceType)
* [ReportFormatType](#ReportFormatType)
* [ReportStateType](#ReportStateType)
* [AssignmentStatusType](#AssignmentStatusType)
* [EncodingType](#EncodingType)
* [PolicyScopeType](#PolicyScopeType)
* [StatusType](#StatusType)
* [SummaryKeyType](#SummaryKeyType)


@docs ContextKeyTypeEnum,EntityType,PolicyEvaluationDecisionType,PolicySourceType,ReportFormatType,ReportStateType,AssignmentStatusType,EncodingType,PolicyScopeType,StatusType,SummaryKeyType

## Exceptions

* [CredentialReportExpiredException](#CredentialReportExpiredException)
* [CredentialReportNotPresentException](#CredentialReportNotPresentException)
* [CredentialReportNotReadyException](#CredentialReportNotReadyException)
* [DeleteConflictException](#DeleteConflictException)
* [DuplicateCertificateException](#DuplicateCertificateException)
* [DuplicateSSHPublicKeyException](#DuplicateSSHPublicKeyException)
* [EntityAlreadyExistsException](#EntityAlreadyExistsException)
* [EntityTemporarilyUnmodifiableException](#EntityTemporarilyUnmodifiableException)
* [InvalidAuthenticationCodeException](#InvalidAuthenticationCodeException)
* [InvalidCertificateException](#InvalidCertificateException)
* [InvalidInputException](#InvalidInputException)
* [InvalidPublicKeyException](#InvalidPublicKeyException)
* [InvalidUserTypeException](#InvalidUserTypeException)
* [KeyPairMismatchException](#KeyPairMismatchException)
* [LimitExceededException](#LimitExceededException)
* [MalformedCertificateException](#MalformedCertificateException)
* [MalformedPolicyDocumentException](#MalformedPolicyDocumentException)
* [NoSuchEntityException](#NoSuchEntityException)
* [PasswordPolicyViolationException](#PasswordPolicyViolationException)
* [PolicyEvaluationException](#PolicyEvaluationException)
* [ServiceFailureException](#ServiceFailureException)
* [ServiceNotSupportedException](#ServiceNotSupportedException)
* [UnrecognizedPublicKeyEncodingException](#UnrecognizedPublicKeyEncodingException)


@docs CredentialReportExpiredException,CredentialReportNotPresentException,CredentialReportNotReadyException,DeleteConflictException,DuplicateCertificateException,DuplicateSSHPublicKeyException,EntityAlreadyExistsException,EntityTemporarilyUnmodifiableException,InvalidAuthenticationCodeException,InvalidCertificateException,InvalidInputException,InvalidPublicKeyException,InvalidUserTypeException,KeyPairMismatchException,LimitExceededException,MalformedCertificateException,MalformedPolicyDocumentException,NoSuchEntityException,PasswordPolicyViolationException,PolicyEvaluationException,ServiceFailureException,ServiceNotSupportedException,UnrecognizedPublicKeyEncodingException

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
        "iam"
        "2010-05-08"
        "undefined"
        "AWSIAM_20100508."
        "iam.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource.</p> <p>This action is idempotent; it does not fail or return an error if you add an existing client ID to the provider.</p>

__Required Parameters__

* `openIDConnectProviderArn` __:__ `String`
* `clientID` __:__ `String`


-}
addClientIDToOpenIDConnectProvider :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
addClientIDToOpenIDConnectProvider openIDConnectProviderArn clientID =
    AWS.Http.unsignedRequest
        "AddClientIDToOpenIDConnectProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Adds the specified IAM role to the specified instance profile.</p> <note> <p>The caller of this API must be granted the <code>PassRole</code> permission on the IAM role by a permission policy.</p> </note> <p>For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>

__Required Parameters__

* `instanceProfileName` __:__ `String`
* `roleName` __:__ `String`


-}
addRoleToInstanceProfile :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
addRoleToInstanceProfile instanceProfileName roleName =
    AWS.Http.unsignedRequest
        "AddRoleToInstanceProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Adds the specified user to the specified group.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userName` __:__ `String`


-}
addUserToGroup :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
addUserToGroup groupName userName =
    AWS.Http.unsignedRequest
        "AddUserToGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Attaches the specified managed policy to the specified IAM group.</p> <p>You use this API to attach a managed policy to a group. To embed an inline policy in a group, use <a>PutGroupPolicy</a>.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `policyArn` __:__ `String`


-}
attachGroupPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
attachGroupPolicy groupName policyArn =
    AWS.Http.unsignedRequest
        "AttachGroupPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Attaches the specified managed policy to the specified IAM role.</p> <p>When you attach a managed policy to a role, the managed policy becomes part of the role's permission (access) policy. You cannot use a managed policy as the role's trust policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>.</p> <p>Use this API to attach a <i>managed</i> policy to a role. To embed an inline policy in a role, use <a>PutRolePolicy</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `roleName` __:__ `String`
* `policyArn` __:__ `String`


-}
attachRolePolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
attachRolePolicy roleName policyArn =
    AWS.Http.unsignedRequest
        "AttachRolePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Attaches the specified managed policy to the specified user.</p> <p>You use this API to attach a <i>managed</i> policy to a user. To embed an inline policy in a user, use <a>PutUserPolicy</a>.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `policyArn` __:__ `String`


-}
attachUserPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
attachUserPolicy userName policyArn =
    AWS.Http.unsignedRequest
        "AttachUserPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Changes the password of the IAM user who is calling this action. The root account password is not affected by this action.</p> <p>To change the password for a different user, see <a>UpdateLoginProfile</a>. For more information about modifying passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `oldPassword` __:__ `String`
* `newPassword` __:__ `String`


-}
changePassword :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
changePassword oldPassword newPassword =
    AWS.Http.unsignedRequest
        "ChangePassword"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p> Creates a new AWS secret access key and corresponding AWS access key ID for the specified user. The default status for new keys is <code>Active</code>.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <p> For information about limits on the number of keys you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation. You must save the key (for example, in a text file) if you want to be able to access it again. If a secret key is lost, you can delete the access keys for the associated user and then create new keys.</p> </important>

__Required Parameters__



-}
createAccessKey :
    (CreateAccessKeyOptions -> CreateAccessKeyOptions)
    -> AWS.Http.UnsignedRequest CreateAccessKeyResponse
createAccessKey setOptions =
  let
    options = setOptions (CreateAccessKeyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateAccessKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAccessKeyResponseDecoder


{-| Options for a createAccessKey request
-}
type alias CreateAccessKeyOptions =
    { userName : Maybe String
    }



{-| <p>Creates an alias for your AWS account. For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `accountAlias` __:__ `String`


-}
createAccountAlias :
    String
    -> AWS.Http.UnsignedRequest ()
createAccountAlias accountAlias =
    AWS.Http.unsignedRequest
        "CreateAccountAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Creates a new group.</p> <p> For information about the number of groups you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `groupName` __:__ `String`


-}
createGroup :
    String
    -> (CreateGroupOptions -> CreateGroupOptions)
    -> AWS.Http.UnsignedRequest CreateGroupResponse
createGroup groupName setOptions =
  let
    options = setOptions (CreateGroupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createGroupResponseDecoder


{-| Options for a createGroup request
-}
type alias CreateGroupOptions =
    { path : Maybe String
    }



{-| <p> Creates a new instance profile. For information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p> For information about the number of instance profiles you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `instanceProfileName` __:__ `String`


-}
createInstanceProfile :
    String
    -> (CreateInstanceProfileOptions -> CreateInstanceProfileOptions)
    -> AWS.Http.UnsignedRequest CreateInstanceProfileResponse
createInstanceProfile instanceProfileName setOptions =
  let
    options = setOptions (CreateInstanceProfileOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateInstanceProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createInstanceProfileResponseDecoder


{-| Options for a createInstanceProfile request
-}
type alias CreateInstanceProfileOptions =
    { path : Maybe String
    }



{-| <p> Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console. For more information about managing passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `password` __:__ `String`


-}
createLoginProfile :
    String
    -> String
    -> (CreateLoginProfileOptions -> CreateLoginProfileOptions)
    -> AWS.Http.UnsignedRequest CreateLoginProfileResponse
createLoginProfile userName password setOptions =
  let
    options = setOptions (CreateLoginProfileOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLoginProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createLoginProfileResponseDecoder


{-| Options for a createLoginProfile request
-}
type alias CreateLoginProfileOptions =
    { passwordResetRequired : Maybe Bool
    }



{-| <p>Creates an IAM entity to describe an identity provider (IdP) that supports <a href="http://openid.net/connect/">OpenID Connect (OIDC)</a>.</p> <p>The OIDC provider that you create with this operation can be used as a principal in a role's trust policy to establish a trust relationship between AWS and the OIDC provider.</p> <p>When you create the IAM OIDC provider, you specify the URL of the OIDC identity provider (IdP) to trust, a list of client IDs (also known as audiences) that identify the application or applications that are allowed to authenticate using the OIDC provider, and a list of thumbprints of the server certificate(s) that the IdP uses. You get all of this information from the OIDC IdP that you want to use for access to AWS.</p> <note> <p>Because trust for the OIDC provider is ultimately derived from the IAM provider that this action creates, it is a best practice to limit access to the <a>CreateOpenIDConnectProvider</a> action to highly-privileged users.</p> </note>

__Required Parameters__

* `url` __:__ `String`
* `thumbprintList` __:__ `(List String)`


-}
createOpenIDConnectProvider :
    String
    -> (List String)
    -> (CreateOpenIDConnectProviderOptions -> CreateOpenIDConnectProviderOptions)
    -> AWS.Http.UnsignedRequest CreateOpenIDConnectProviderResponse
createOpenIDConnectProvider url thumbprintList setOptions =
  let
    options = setOptions (CreateOpenIDConnectProviderOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateOpenIDConnectProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createOpenIDConnectProviderResponseDecoder


{-| Options for a createOpenIDConnectProvider request
-}
type alias CreateOpenIDConnectProviderOptions =
    { clientIDList : Maybe (List String)
    }



{-| <p>Creates a new managed policy for your AWS account.</p> <p>This operation creates a policy version with a version identifier of <code>v1</code> and sets v1 as the policy's default version. For more information about policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policies in general, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `policyDocument` __:__ `String`


-}
createPolicy :
    String
    -> String
    -> (CreatePolicyOptions -> CreatePolicyOptions)
    -> AWS.Http.UnsignedRequest CreatePolicyResponse
createPolicy policyName policyDocument setOptions =
  let
    options = setOptions (CreatePolicyOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPolicyResponseDecoder


{-| Options for a createPolicy request
-}
type alias CreatePolicyOptions =
    { path : Maybe String
    , description : Maybe String
    }



{-| <p>Creates a new version of the specified managed policy. To update a managed policy, you create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must delete an existing version using <a>DeletePolicyVersion</a> before you create a new version.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the version that is in effect for the IAM users, groups, and roles to which the policy is attached.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyArn` __:__ `String`
* `policyDocument` __:__ `String`


-}
createPolicyVersion :
    String
    -> String
    -> (CreatePolicyVersionOptions -> CreatePolicyVersionOptions)
    -> AWS.Http.UnsignedRequest CreatePolicyVersionResponse
createPolicyVersion policyArn policyDocument setOptions =
  let
    options = setOptions (CreatePolicyVersionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePolicyVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPolicyVersionResponseDecoder


{-| Options for a createPolicyVersion request
-}
type alias CreatePolicyVersionOptions =
    { setAsDefault : Maybe Bool
    }



{-| <p>Creates a new role for your AWS account. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For information about limitations on role names and the number of roles you can create, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `roleName` __:__ `String`
* `assumeRolePolicyDocument` __:__ `String`


-}
createRole :
    String
    -> String
    -> (CreateRoleOptions -> CreateRoleOptions)
    -> AWS.Http.UnsignedRequest CreateRoleResponse
createRole roleName assumeRolePolicyDocument setOptions =
  let
    options = setOptions (CreateRoleOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateRole"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRoleResponseDecoder


{-| Options for a createRole request
-}
type alias CreateRoleOptions =
    { path : Maybe String
    }



{-| <p>Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2.0.</p> <p>The SAML provider resource that you create with this operation can be used as a principal in an IAM role's trust policy to enable federated users who sign-in using the SAML IdP to assume the role. You can create an IAM role that supports Web-based single sign-on (SSO) to the AWS Management Console or one that supports API access to AWS.</p> <p>When you create the SAML provider resource, you upload an a SAML metadata document that you get from your IdP and that includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that the IdP sends. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note> <p> For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html">Enabling SAML 2.0 Federated Users to Access the AWS Management Console</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `sAMLMetadataDocument` __:__ `String`
* `name` __:__ `String`


-}
createSAMLProvider :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateSAMLProviderResponse
createSAMLProvider sAMLMetadataDocument name =
    AWS.Http.unsignedRequest
        "CreateSAMLProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createSAMLProviderResponseDecoder



{-| <p>Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request. These credentials are generated by IAM, and can be used only for the specified service. </p> <p>You can have a maximum of two sets of service-specific credentials for each supported service per user.</p> <p>The only supported service at this time is AWS CodeCommit.</p> <p>You can reset the password to a new service-generated value by calling <a>ResetServiceSpecificCredential</a>.</p> <p>For more information about service-specific credentials, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html">Using IAM with AWS CodeCommit: Git Credentials, SSH Keys, and AWS Access Keys</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `serviceName` __:__ `String`


-}
createServiceSpecificCredential :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateServiceSpecificCredentialResponse
createServiceSpecificCredential userName serviceName =
    AWS.Http.unsignedRequest
        "CreateServiceSpecificCredential"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createServiceSpecificCredentialResponseDecoder



{-| <p>Creates a new IAM user for your AWS account.</p> <p> For information about limitations on the number of IAM users you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`


-}
createUser :
    String
    -> (CreateUserOptions -> CreateUserOptions)
    -> AWS.Http.UnsignedRequest CreateUserResponse
createUser userName setOptions =
  let
    options = setOptions (CreateUserOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createUserResponseDecoder


{-| Options for a createUser request
-}
type alias CreateUserOptions =
    { path : Maybe String
    }



{-| <p>Creates a new virtual MFA device for the AWS account. After creating the virtual MFA, use <a>EnableMFADevice</a> to attach the MFA device to an IAM user. For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of MFA devices you can create, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on Entities</a> in the <i>IAM User Guide</i>.</p> <important> <p>The seed information contained in the QR code and the Base32 string should be treated like any other secret access information, such as your AWS access keys or your passwords. After you provision your virtual device, you should ensure that the information is destroyed following secure procedures.</p> </important>

__Required Parameters__

* `virtualMFADeviceName` __:__ `String`


-}
createVirtualMFADevice :
    String
    -> (CreateVirtualMFADeviceOptions -> CreateVirtualMFADeviceOptions)
    -> AWS.Http.UnsignedRequest CreateVirtualMFADeviceResponse
createVirtualMFADevice virtualMFADeviceName setOptions =
  let
    options = setOptions (CreateVirtualMFADeviceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateVirtualMFADevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createVirtualMFADeviceResponseDecoder


{-| Options for a createVirtualMFADevice request
-}
type alias CreateVirtualMFADeviceOptions =
    { path : Maybe String
    }



{-| <p>Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `serialNumber` __:__ `String`


-}
deactivateMFADevice :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deactivateMFADevice userName serialNumber =
    AWS.Http.unsignedRequest
        "DeactivateMFADevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the access key pair associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>

__Required Parameters__

* `accessKeyId` __:__ `String`


-}
deleteAccessKey :
    String
    -> (DeleteAccessKeyOptions -> DeleteAccessKeyOptions)
    -> AWS.Http.UnsignedRequest ()
deleteAccessKey accessKeyId setOptions =
  let
    options = setOptions (DeleteAccessKeyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteAccessKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a deleteAccessKey request
-}
type alias DeleteAccessKeyOptions =
    { userName : Maybe String
    }



{-| <p> Deletes the specified AWS account alias. For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `accountAlias` __:__ `String`


-}
deleteAccountAlias :
    String
    -> AWS.Http.UnsignedRequest ()
deleteAccountAlias accountAlias =
    AWS.Http.unsignedRequest
        "DeleteAccountAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the password policy for the AWS account. There are no parameters.</p>

__Required Parameters__



-}
deleteAccountPasswordPolicy :
    AWS.Http.UnsignedRequest ()
deleteAccountPasswordPolicy =
    AWS.Http.unsignedRequest
        "DeleteAccountPasswordPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified IAM group. The group must not contain any users or have any attached policies.</p>

__Required Parameters__

* `groupName` __:__ `String`


-}
deleteGroup :
    String
    -> AWS.Http.UnsignedRequest ()
deleteGroup groupName =
    AWS.Http.unsignedRequest
        "DeleteGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified inline policy that is embedded in the specified IAM group.</p> <p>A group can also have managed policies attached to it. To detach a managed policy from a group, use <a>DetachGroupPolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `policyName` __:__ `String`


-}
deleteGroupPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteGroupPolicy groupName policyName =
    AWS.Http.unsignedRequest
        "DeleteGroupPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified instance profile. The instance profile must not have an associated role.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the instance profile you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important> <p>For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>

__Required Parameters__

* `instanceProfileName` __:__ `String`


-}
deleteInstanceProfile :
    String
    -> AWS.Http.UnsignedRequest ()
deleteInstanceProfile instanceProfileName =
    AWS.Http.unsignedRequest
        "DeleteInstanceProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the password for the specified IAM user, which terminates the user's ability to access AWS services through the AWS Management Console.</p> <important> <p> Deleting a user's password does not prevent a user from accessing AWS through the command line interface or the API. To prevent all user access you must also either make any access keys inactive or delete them. For more information about making keys inactive or deleting them, see <a>UpdateAccessKey</a> and <a>DeleteAccessKey</a>. </p> </important>

__Required Parameters__

* `userName` __:__ `String`


-}
deleteLoginProfile :
    String
    -> AWS.Http.UnsignedRequest ()
deleteLoginProfile userName =
    AWS.Http.unsignedRequest
        "DeleteLoginProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes an OpenID Connect identity provider (IdP) resource object in IAM.</p> <p>Deleting an IAM OIDC provider resource does not update any roles that reference the provider as a principal in their trust policies. Any attempt to assume a role that references a deleted provider fails.</p> <p>This action is idempotent; it does not fail or return an error if you call the action for a provider that does not exist.</p>

__Required Parameters__

* `openIDConnectProviderArn` __:__ `String`


-}
deleteOpenIDConnectProvider :
    String
    -> AWS.Http.UnsignedRequest ()
deleteOpenIDConnectProvider openIDConnectProviderArn =
    AWS.Http.unsignedRequest
        "DeleteOpenIDConnectProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified managed policy.</p> <p>Before you can delete a managed policy, you must first detach the policy from all users, groups, and roles that it is attached to, and you must delete all of the policy's versions. The following steps describe the process for deleting a managed policy:</p> <ul> <li> <p>Detach the policy from all users, groups, and roles that the policy is attached to, using the <a>DetachUserPolicy</a>, <a>DetachGroupPolicy</a>, or <a>DetachRolePolicy</a> APIs. To list all the users, groups, and roles that a policy is attached to, use <a>ListEntitiesForPolicy</a>.</p> </li> <li> <p>Delete all versions of the policy using <a>DeletePolicyVersion</a>. To list the policy's versions, use <a>ListPolicyVersions</a>. You cannot use <a>DeletePolicyVersion</a> to delete the version that is marked as the default version. You delete the policy's default version in the next step of the process.</p> </li> <li> <p>Delete the policy (this automatically deletes the policy's default version) using this API.</p> </li> </ul> <p>For information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyArn` __:__ `String`


-}
deletePolicy :
    String
    -> AWS.Http.UnsignedRequest ()
deletePolicy policyArn =
    AWS.Http.unsignedRequest
        "DeletePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified version from the specified managed policy.</p> <p>You cannot delete the default version from a policy using this API. To delete the default version from a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use <a>ListPolicyVersions</a>.</p> <p>For information about versions for managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyArn` __:__ `String`
* `versionId` __:__ `String`


-}
deletePolicyVersion :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deletePolicyVersion policyArn versionId =
    AWS.Http.unsignedRequest
        "DeletePolicyVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified role. The role must not have any policies attached. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the role you are about to delete. Deleting a role or instance profile that is associated with a running instance will break any applications running on the instance.</p> </important>

__Required Parameters__

* `roleName` __:__ `String`


-}
deleteRole :
    String
    -> AWS.Http.UnsignedRequest ()
deleteRole roleName =
    AWS.Http.unsignedRequest
        "DeleteRole"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified inline policy that is embedded in the specified IAM role.</p> <p>A role can also have managed policies attached to it. To detach a managed policy from a role, use <a>DetachRolePolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `roleName` __:__ `String`
* `policyName` __:__ `String`


-}
deleteRolePolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteRolePolicy roleName policyName =
    AWS.Http.unsignedRequest
        "DeleteRolePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a SAML provider resource in IAM.</p> <p>Deleting the provider resource from IAM does not update any roles that reference the SAML provider resource's ARN as a principal in their trust policies. Any attempt to assume a role that references a non-existent provider resource ARN fails.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

__Required Parameters__

* `sAMLProviderArn` __:__ `String`


-}
deleteSAMLProvider :
    String
    -> AWS.Http.UnsignedRequest ()
deleteSAMLProvider sAMLProviderArn =
    AWS.Http.unsignedRequest
        "DeleteSAMLProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified SSH public key.</p> <p>The SSH public key deleted by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `sSHPublicKeyId` __:__ `String`


-}
deleteSSHPublicKey :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteSSHPublicKey userName sSHPublicKeyId =
    AWS.Http.unsignedRequest
        "DeleteSSHPublicKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified server certificate.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <important> <p> If you are using a server certificate with Elastic Load Balancing, deleting the certificate could have implications for your application. If Elastic Load Balancing doesn't detect the deletion of bound certificates, it may continue to use the certificates. This could cause Elastic Load Balancing to stop accepting traffic. We recommend that you remove the reference to the certificate from Elastic Load Balancing before using this command to delete the certificate. For more information, go to <a href="http://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API Reference</i>.</p> </important>

__Required Parameters__

* `serverCertificateName` __:__ `String`


-}
deleteServerCertificate :
    String
    -> AWS.Http.UnsignedRequest ()
deleteServerCertificate serverCertificateName =
    AWS.Http.unsignedRequest
        "DeleteServerCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified service-specific credential.</p>

__Required Parameters__

* `serviceSpecificCredentialId` __:__ `String`


-}
deleteServiceSpecificCredential :
    String
    -> (DeleteServiceSpecificCredentialOptions -> DeleteServiceSpecificCredentialOptions)
    -> AWS.Http.UnsignedRequest ()
deleteServiceSpecificCredential serviceSpecificCredentialId setOptions =
  let
    options = setOptions (DeleteServiceSpecificCredentialOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteServiceSpecificCredential"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a deleteServiceSpecificCredential request
-}
type alias DeleteServiceSpecificCredentialOptions =
    { userName : Maybe String
    }



{-| <p>Deletes a signing certificate associated with the specified IAM user.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated IAM users.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
deleteSigningCertificate :
    String
    -> (DeleteSigningCertificateOptions -> DeleteSigningCertificateOptions)
    -> AWS.Http.UnsignedRequest ()
deleteSigningCertificate certificateId setOptions =
  let
    options = setOptions (DeleteSigningCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteSigningCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a deleteSigningCertificate request
-}
type alias DeleteSigningCertificateOptions =
    { userName : Maybe String
    }



{-| <p>Deletes the specified IAM user. The user must not belong to any groups or have any access keys, signing certificates, or attached policies.</p>

__Required Parameters__

* `userName` __:__ `String`


-}
deleteUser :
    String
    -> AWS.Http.UnsignedRequest ()
deleteUser userName =
    AWS.Http.unsignedRequest
        "DeleteUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified inline policy that is embedded in the specified IAM user.</p> <p>A user can also have managed policies attached to it. To detach a managed policy from a user, use <a>DetachUserPolicy</a>. For more information about policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `policyName` __:__ `String`


-}
deleteUserPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteUserPolicy userName policyName =
    AWS.Http.unsignedRequest
        "DeleteUserPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a virtual MFA device.</p> <note> <p> You must deactivate a user's virtual MFA device before you can delete it. For information about deactivating MFA devices, see <a>DeactivateMFADevice</a>. </p> </note>

__Required Parameters__

* `serialNumber` __:__ `String`


-}
deleteVirtualMFADevice :
    String
    -> AWS.Http.UnsignedRequest ()
deleteVirtualMFADevice serialNumber =
    AWS.Http.unsignedRequest
        "DeleteVirtualMFADevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Removes the specified managed policy from the specified IAM group.</p> <p>A group can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteGroupPolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `policyArn` __:__ `String`


-}
detachGroupPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
detachGroupPolicy groupName policyArn =
    AWS.Http.unsignedRequest
        "DetachGroupPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Removes the specified managed policy from the specified role.</p> <p>A role can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteRolePolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `roleName` __:__ `String`
* `policyArn` __:__ `String`


-}
detachRolePolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
detachRolePolicy roleName policyArn =
    AWS.Http.unsignedRequest
        "DetachRolePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Removes the specified managed policy from the specified user.</p> <p>A user can also have inline policies embedded with it. To delete an inline policy, use the <a>DeleteUserPolicy</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `policyArn` __:__ `String`


-}
detachUserPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
detachUserPolicy userName policyArn =
    AWS.Http.unsignedRequest
        "DetachUserPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Enables the specified MFA device and associates it with the specified IAM user. When enabled, the MFA device is required for every subsequent login by the IAM user associated with the device.</p>

__Required Parameters__

* `userName` __:__ `String`
* `serialNumber` __:__ `String`
* `authenticationCode1` __:__ `String`
* `authenticationCode2` __:__ `String`


-}
enableMFADevice :
    String
    -> String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
enableMFADevice userName serialNumber authenticationCode1 authenticationCode2 =
    AWS.Http.unsignedRequest
        "EnableMFADevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p> Generates a credential report for the AWS account. For more information about the credential report, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__



-}
generateCredentialReport :
    AWS.Http.UnsignedRequest GenerateCredentialReportResponse
generateCredentialReport =
    AWS.Http.unsignedRequest
        "GenerateCredentialReport"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        generateCredentialReportResponseDecoder



{-| <p>Retrieves information about when the specified access key was last used. The information includes the date and time of last use, along with the AWS service and region that were specified in the last request made with that key.</p>

__Required Parameters__

* `accessKeyId` __:__ `String`


-}
getAccessKeyLastUsed :
    String
    -> AWS.Http.UnsignedRequest GetAccessKeyLastUsedResponse
getAccessKeyLastUsed accessKeyId =
    AWS.Http.unsignedRequest
        "GetAccessKeyLastUsed"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getAccessKeyLastUsedResponseDecoder



{-| <p>Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another. Use this API to obtain a snapshot of the configuration of IAM permissions (users, groups, roles, and policies) in your account.</p> <p>You can optionally filter the results using the <code>Filter</code> parameter. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
getAccountAuthorizationDetails :
    (GetAccountAuthorizationDetailsOptions -> GetAccountAuthorizationDetailsOptions)
    -> AWS.Http.UnsignedRequest GetAccountAuthorizationDetailsResponse
getAccountAuthorizationDetails setOptions =
  let
    options = setOptions (GetAccountAuthorizationDetailsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetAccountAuthorizationDetails"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getAccountAuthorizationDetailsResponseDecoder


{-| Options for a getAccountAuthorizationDetails request
-}
type alias GetAccountAuthorizationDetailsOptions =
    { filter : Maybe (List EntityType)
    , maxItems : Maybe Int
    , marker : Maybe String
    }



{-| <p>Retrieves the password policy for the AWS account. For more information about using a password policy, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a>.</p>

__Required Parameters__



-}
getAccountPasswordPolicy :
    AWS.Http.UnsignedRequest GetAccountPasswordPolicyResponse
getAccountPasswordPolicy =
    AWS.Http.unsignedRequest
        "GetAccountPasswordPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getAccountPasswordPolicyResponseDecoder



{-| <p>Retrieves information about IAM entity usage and IAM quotas in the AWS account.</p> <p> For information about limitations on IAM entities, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__



-}
getAccountSummary :
    AWS.Http.UnsignedRequest GetAccountSummaryResponse
getAccountSummary =
    AWS.Http.unsignedRequest
        "GetAccountSummary"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getAccountSummaryResponseDecoder



{-| <p>Gets a list of all of the context keys referenced in the input policies. The policies are supplied as a list of one or more strings. To get the context keys from policies associated with an IAM user, group, or role, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request, and can be evaluated by testing against a value specified in an IAM policy. Use GetContextKeysForCustomPolicy to understand what key names and values you must supply when you call <a>SimulateCustomPolicy</a>. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.</p>

__Required Parameters__

* `policyInputList` __:__ `(List String)`


-}
getContextKeysForCustomPolicy :
    (List String)
    -> AWS.Http.UnsignedRequest GetContextKeysForPolicyResponse
getContextKeysForCustomPolicy policyInputList =
    AWS.Http.unsignedRequest
        "GetContextKeysForCustomPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getContextKeysForPolicyResponseDecoder



{-| <p>Gets a list of all of the context keys referenced in all of the IAM policies attached to the specified IAM entity. The entity can be an IAM user, group, or role. If you specify a user, then the request also includes all of the policies attached to groups that the user is a member of.</p> <p>You can optionally include a list of one or more additional policies, specified as strings. If you want to include <i>only</i> a list of policies by string, use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>GetContextKeysForCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request, and can be evaluated by testing against a value in an IAM policy. Use <a>GetContextKeysForPrincipalPolicy</a> to understand what key names and values you must supply when you call <a>SimulatePrincipalPolicy</a>.</p>

__Required Parameters__

* `policySourceArn` __:__ `String`


-}
getContextKeysForPrincipalPolicy :
    String
    -> (GetContextKeysForPrincipalPolicyOptions -> GetContextKeysForPrincipalPolicyOptions)
    -> AWS.Http.UnsignedRequest GetContextKeysForPolicyResponse
getContextKeysForPrincipalPolicy policySourceArn setOptions =
  let
    options = setOptions (GetContextKeysForPrincipalPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetContextKeysForPrincipalPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getContextKeysForPolicyResponseDecoder


{-| Options for a getContextKeysForPrincipalPolicy request
-}
type alias GetContextKeysForPrincipalPolicyOptions =
    { policyInputList : Maybe (List String)
    }



{-| <p> Retrieves a credential report for the AWS account. For more information about the credential report, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__



-}
getCredentialReport :
    AWS.Http.UnsignedRequest GetCredentialReportResponse
getCredentialReport =
    AWS.Http.unsignedRequest
        "GetCredentialReport"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getCredentialReportResponseDecoder



{-| <p> Returns a list of IAM users that are in the specified IAM group. You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__

* `groupName` __:__ `String`


-}
getGroup :
    String
    -> (GetGroupOptions -> GetGroupOptions)
    -> AWS.Http.UnsignedRequest GetGroupResponse
getGroup groupName setOptions =
  let
    options = setOptions (GetGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getGroupResponseDecoder


{-| Options for a getGroup request
-}
type alias GetGroupOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Retrieves the specified inline policy document that is embedded in the specified IAM group.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM group can also have managed policies attached to it. To retrieve a managed policy document that is attached to a group, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `policyName` __:__ `String`


-}
getGroupPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetGroupPolicyResponse
getGroupPolicy groupName policyName =
    AWS.Http.unsignedRequest
        "GetGroupPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getGroupPolicyResponseDecoder



{-| <p> Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `instanceProfileName` __:__ `String`


-}
getInstanceProfile :
    String
    -> AWS.Http.UnsignedRequest GetInstanceProfileResponse
getInstanceProfile instanceProfileName =
    AWS.Http.unsignedRequest
        "GetInstanceProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceProfileResponseDecoder



{-| <p>Retrieves the user name and password-creation date for the specified IAM user. If the user has not been assigned a password, the action returns a 404 (<code>NoSuchEntity</code>) error.</p>

__Required Parameters__

* `userName` __:__ `String`


-}
getLoginProfile :
    String
    -> AWS.Http.UnsignedRequest GetLoginProfileResponse
getLoginProfile userName =
    AWS.Http.unsignedRequest
        "GetLoginProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getLoginProfileResponseDecoder



{-| <p>Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM.</p>

__Required Parameters__

* `openIDConnectProviderArn` __:__ `String`


-}
getOpenIDConnectProvider :
    String
    -> AWS.Http.UnsignedRequest GetOpenIDConnectProviderResponse
getOpenIDConnectProvider openIDConnectProviderArn =
    AWS.Http.unsignedRequest
        "GetOpenIDConnectProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOpenIDConnectProviderResponseDecoder



{-| <p>Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached. To retrieve the list of the specific users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API. This API returns metadata about the policy. To retrieve the actual policy document for a specific version of the policy, use <a>GetPolicyVersion</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded with an IAM user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyArn` __:__ `String`


-}
getPolicy :
    String
    -> AWS.Http.UnsignedRequest GetPolicyResponse
getPolicy policyArn =
    AWS.Http.unsignedRequest
        "GetPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPolicyResponseDecoder



{-| <p>Retrieves information about the specified version of the specified managed policy, including the policy document.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>To list the available versions for a policy, use <a>ListPolicyVersions</a>.</p> <p>This API retrieves information about managed policies. To retrieve information about an inline policy that is embedded in a user, group, or role, use the <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a> API.</p> <p>For more information about the types of policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyArn` __:__ `String`
* `versionId` __:__ `String`


-}
getPolicyVersion :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetPolicyVersionResponse
getPolicyVersion policyArn versionId =
    AWS.Http.unsignedRequest
        "GetPolicyVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getPolicyVersionResponseDecoder



{-| <p>Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role. For more information about roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note>

__Required Parameters__

* `roleName` __:__ `String`


-}
getRole :
    String
    -> AWS.Http.UnsignedRequest GetRoleResponse
getRole roleName =
    AWS.Http.unsignedRequest
        "GetRole"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRoleResponseDecoder



{-| <p>Retrieves the specified inline policy document that is embedded with the specified IAM role.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM role can also have managed policies attached to it. To retrieve a managed policy document that is attached to a role, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For more information about roles, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>

__Required Parameters__

* `roleName` __:__ `String`
* `policyName` __:__ `String`


-}
getRolePolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetRolePolicyResponse
getRolePolicy roleName policyName =
    AWS.Http.unsignedRequest
        "GetRolePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRolePolicyResponseDecoder



{-| <p>Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated.</p> <note> <p>This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

__Required Parameters__

* `sAMLProviderArn` __:__ `String`


-}
getSAMLProvider :
    String
    -> AWS.Http.UnsignedRequest GetSAMLProviderResponse
getSAMLProvider sAMLProviderArn =
    AWS.Http.unsignedRequest
        "GetSAMLProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSAMLProviderResponseDecoder



{-| <p>Retrieves the specified SSH public key, including metadata about the key.</p> <p>The SSH public key retrieved by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `sSHPublicKeyId` __:__ `String`
* `encoding` __:__ `EncodingType`


-}
getSSHPublicKey :
    String
    -> String
    -> EncodingType
    -> AWS.Http.UnsignedRequest GetSSHPublicKeyResponse
getSSHPublicKey userName sSHPublicKeyId encoding =
    AWS.Http.unsignedRequest
        "GetSSHPublicKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSSHPublicKeyResponseDecoder



{-| <p>Retrieves information about the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `serverCertificateName` __:__ `String`


-}
getServerCertificate :
    String
    -> AWS.Http.UnsignedRequest GetServerCertificateResponse
getServerCertificate serverCertificateName =
    AWS.Http.unsignedRequest
        "GetServerCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getServerCertificateResponseDecoder



{-| <p>Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN.</p> <p>If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID used to sign the request to this API.</p>

__Required Parameters__



-}
getUser :
    (GetUserOptions -> GetUserOptions)
    -> AWS.Http.UnsignedRequest GetUserResponse
getUser setOptions =
  let
    options = setOptions (GetUserOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getUserResponseDecoder


{-| Options for a getUser request
-}
type alias GetUserOptions =
    { userName : Maybe String
    }



{-| <p>Retrieves the specified inline policy document that is embedded in the specified IAM user.</p> <note> <p>Policies returned by this API are URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p> </note> <p>An IAM user can also have managed policies attached to it. To retrieve a managed policy document that is attached to a user, use <a>GetPolicy</a> to determine the policy's default version, then use <a>GetPolicyVersion</a> to retrieve the policy document.</p> <p>For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `policyName` __:__ `String`


-}
getUserPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetUserPolicyResponse
getUserPolicy userName policyName =
    AWS.Http.unsignedRequest
        "GetUserPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getUserPolicyResponseDecoder



{-| <p>Returns information about the access key IDs associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <note> <p>To ensure the security of your AWS account, the secret access key is accessible only during key and user creation.</p> </note>

__Required Parameters__



-}
listAccessKeys :
    (ListAccessKeysOptions -> ListAccessKeysOptions)
    -> AWS.Http.UnsignedRequest ListAccessKeysResponse
listAccessKeys setOptions =
  let
    options = setOptions (ListAccessKeysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAccessKeys"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAccessKeysResponseDecoder


{-| Options for a listAccessKeys request
-}
type alias ListAccessKeysOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the account alias associated with the AWS account (Note: you can have only one). For information about using an AWS account alias, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an Alias for Your AWS Account ID</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__



-}
listAccountAliases :
    (ListAccountAliasesOptions -> ListAccountAliasesOptions)
    -> AWS.Http.UnsignedRequest ListAccountAliasesResponse
listAccountAliases setOptions =
  let
    options = setOptions (ListAccountAliasesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAccountAliases"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAccountAliasesResponseDecoder


{-| Options for a listAccountAliases request
-}
type alias ListAccountAliasesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists all managed policies that are attached to the specified IAM group.</p> <p>An IAM group can also have inline policies embedded with it. To list the inline policies for a group, use the <a>ListGroupPolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the action returns an empty list.</p>

__Required Parameters__

* `groupName` __:__ `String`


-}
listAttachedGroupPolicies :
    String
    -> (ListAttachedGroupPoliciesOptions -> ListAttachedGroupPoliciesOptions)
    -> AWS.Http.UnsignedRequest ListAttachedGroupPoliciesResponse
listAttachedGroupPolicies groupName setOptions =
  let
    options = setOptions (ListAttachedGroupPoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAttachedGroupPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAttachedGroupPoliciesResponseDecoder


{-| Options for a listAttachedGroupPolicies request
-}
type alias ListAttachedGroupPoliciesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists all managed policies that are attached to the specified IAM role.</p> <p>An IAM role can also have inline policies embedded with it. To list the inline policies for a role, use the <a>ListRolePolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified role (or none that match the specified path prefix), the action returns an empty list.</p>

__Required Parameters__

* `roleName` __:__ `String`


-}
listAttachedRolePolicies :
    String
    -> (ListAttachedRolePoliciesOptions -> ListAttachedRolePoliciesOptions)
    -> AWS.Http.UnsignedRequest ListAttachedRolePoliciesResponse
listAttachedRolePolicies roleName setOptions =
  let
    options = setOptions (ListAttachedRolePoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAttachedRolePolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAttachedRolePoliciesResponseDecoder


{-| Options for a listAttachedRolePolicies request
-}
type alias ListAttachedRolePoliciesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists all managed policies that are attached to the specified IAM user.</p> <p>An IAM user can also have inline policies embedded with it. To list the inline policies for a user, use the <a>ListUserPolicies</a> API. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. You can use the <code>PathPrefix</code> parameter to limit the list of policies to only those matching the specified path prefix. If there are no policies attached to the specified group (or none that match the specified path prefix), the action returns an empty list.</p>

__Required Parameters__

* `userName` __:__ `String`


-}
listAttachedUserPolicies :
    String
    -> (ListAttachedUserPoliciesOptions -> ListAttachedUserPoliciesOptions)
    -> AWS.Http.UnsignedRequest ListAttachedUserPoliciesResponse
listAttachedUserPolicies userName setOptions =
  let
    options = setOptions (ListAttachedUserPoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAttachedUserPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAttachedUserPoliciesResponseDecoder


{-| Options for a listAttachedUserPolicies request
-}
type alias ListAttachedUserPoliciesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists all IAM users, groups, and roles that the specified managed policy is attached to.</p> <p>You can use the optional <code>EntityFilter</code> parameter to limit the results to a particular type of entity (users, groups, or roles). For example, to list only the roles that are attached to the specified policy, set <code>EntityFilter</code> to <code>Role</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__

* `policyArn` __:__ `String`


-}
listEntitiesForPolicy :
    String
    -> (ListEntitiesForPolicyOptions -> ListEntitiesForPolicyOptions)
    -> AWS.Http.UnsignedRequest ListEntitiesForPolicyResponse
listEntitiesForPolicy policyArn setOptions =
  let
    options = setOptions (ListEntitiesForPolicyOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListEntitiesForPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listEntitiesForPolicyResponseDecoder


{-| Options for a listEntitiesForPolicy request
-}
type alias ListEntitiesForPolicyOptions =
    { entityFilter : Maybe EntityType
    , pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the names of the inline policies that are embedded in the specified IAM group.</p> <p>An IAM group can also have managed policies attached to it. To list the managed policies that are attached to a group, use <a>ListAttachedGroupPolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified group, the action returns an empty list.</p>

__Required Parameters__

* `groupName` __:__ `String`


-}
listGroupPolicies :
    String
    -> (ListGroupPoliciesOptions -> ListGroupPoliciesOptions)
    -> AWS.Http.UnsignedRequest ListGroupPoliciesResponse
listGroupPolicies groupName setOptions =
  let
    options = setOptions (ListGroupPoliciesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListGroupPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listGroupPoliciesResponseDecoder


{-| Options for a listGroupPolicies request
-}
type alias ListGroupPoliciesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the IAM groups that have the specified path prefix.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
listGroups :
    (ListGroupsOptions -> ListGroupsOptions)
    -> AWS.Http.UnsignedRequest ListGroupsResponse
listGroups setOptions =
  let
    options = setOptions (ListGroupsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listGroupsResponseDecoder


{-| Options for a listGroups request
-}
type alias ListGroupsOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the IAM groups that the specified IAM user belongs to.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__

* `userName` __:__ `String`


-}
listGroupsForUser :
    String
    -> (ListGroupsForUserOptions -> ListGroupsForUserOptions)
    -> AWS.Http.UnsignedRequest ListGroupsForUserResponse
listGroupsForUser userName setOptions =
  let
    options = setOptions (ListGroupsForUserOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListGroupsForUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listGroupsForUserResponseDecoder


{-| Options for a listGroupsForUser request
-}
type alias ListGroupsForUserOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the instance profiles that have the specified path prefix. If there are none, the action returns an empty list. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
listInstanceProfiles :
    (ListInstanceProfilesOptions -> ListInstanceProfilesOptions)
    -> AWS.Http.UnsignedRequest ListInstanceProfilesResponse
listInstanceProfiles setOptions =
  let
    options = setOptions (ListInstanceProfilesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListInstanceProfiles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listInstanceProfilesResponseDecoder


{-| Options for a listInstanceProfiles request
-}
type alias ListInstanceProfilesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the instance profiles that have the specified associated IAM role. If there are none, the action returns an empty list. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__

* `roleName` __:__ `String`


-}
listInstanceProfilesForRole :
    String
    -> (ListInstanceProfilesForRoleOptions -> ListInstanceProfilesForRoleOptions)
    -> AWS.Http.UnsignedRequest ListInstanceProfilesForRoleResponse
listInstanceProfilesForRole roleName setOptions =
  let
    options = setOptions (ListInstanceProfilesForRoleOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListInstanceProfilesForRole"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listInstanceProfilesForRoleResponseDecoder


{-| Options for a listInstanceProfilesForRole request
-}
type alias ListInstanceProfilesForRoleOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the MFA devices for an IAM user. If the request includes a IAM user name, then this action lists all the MFA devices associated with the specified user. If you do not specify a user name, IAM determines the user name implicitly based on the AWS access key ID signing the request for this API.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
listMFADevices :
    (ListMFADevicesOptions -> ListMFADevicesOptions)
    -> AWS.Http.UnsignedRequest ListMFADevicesResponse
listMFADevices setOptions =
  let
    options = setOptions (ListMFADevicesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListMFADevices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listMFADevicesResponseDecoder


{-| Options for a listMFADevices request
-}
type alias ListMFADevicesOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the AWS account.</p>

__Required Parameters__



-}
listOpenIDConnectProviders :
    AWS.Http.UnsignedRequest ListOpenIDConnectProvidersResponse
listOpenIDConnectProviders =
    AWS.Http.unsignedRequest
        "ListOpenIDConnectProviders"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listOpenIDConnectProvidersResponseDecoder



{-| <p>Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies.</p> <p>You can filter the list of policies that is returned using the optional <code>OnlyAttached</code>, <code>Scope</code>, and <code>PathPrefix</code> parameters. For example, to list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>. To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__



-}
listPolicies :
    (ListPoliciesOptions -> ListPoliciesOptions)
    -> AWS.Http.UnsignedRequest ListPoliciesResponse
listPolicies setOptions =
  let
    options = setOptions (ListPoliciesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPoliciesResponseDecoder


{-| Options for a listPolicies request
-}
type alias ListPoliciesOptions =
    { scope : Maybe PolicyScopeType
    , onlyAttached : Maybe Bool
    , pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyArn` __:__ `String`


-}
listPolicyVersions :
    String
    -> (ListPolicyVersionsOptions -> ListPolicyVersionsOptions)
    -> AWS.Http.UnsignedRequest ListPolicyVersionsResponse
listPolicyVersions policyArn setOptions =
  let
    options = setOptions (ListPolicyVersionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPolicyVersions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPolicyVersionsResponseDecoder


{-| Options for a listPolicyVersions request
-}
type alias ListPolicyVersionsOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the names of the inline policies that are embedded in the specified IAM role.</p> <p>An IAM role can also have managed policies attached to it. To list the managed policies that are attached to a role, use <a>ListAttachedRolePolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified role, the action returns an empty list.</p>

__Required Parameters__

* `roleName` __:__ `String`


-}
listRolePolicies :
    String
    -> (ListRolePoliciesOptions -> ListRolePoliciesOptions)
    -> AWS.Http.UnsignedRequest ListRolePoliciesResponse
listRolePolicies roleName setOptions =
  let
    options = setOptions (ListRolePoliciesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRolePolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRolePoliciesResponseDecoder


{-| Options for a listRolePolicies request
-}
type alias ListRolePoliciesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the IAM roles that have the specified path prefix. If there are none, the action returns an empty list. For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
listRoles :
    (ListRolesOptions -> ListRolesOptions)
    -> AWS.Http.UnsignedRequest ListRolesResponse
listRoles setOptions =
  let
    options = setOptions (ListRolesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRoles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRolesResponseDecoder


{-| Options for a listRoles request
-}
type alias ListRolesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the SAML provider resource objects defined in IAM in the account.</p> <note> <p> This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

__Required Parameters__



-}
listSAMLProviders :
    AWS.Http.UnsignedRequest ListSAMLProvidersResponse
listSAMLProviders =
    AWS.Http.unsignedRequest
        "ListSAMLProviders"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSAMLProvidersResponseDecoder



{-| <p>Returns information about the SSH public keys associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>The SSH public keys returned by this action are used only for authenticating the IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p> <p>Although each user is limited to a small number of keys, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
listSSHPublicKeys :
    (ListSSHPublicKeysOptions -> ListSSHPublicKeysOptions)
    -> AWS.Http.UnsignedRequest ListSSHPublicKeysResponse
listSSHPublicKeys setOptions =
  let
    options = setOptions (ListSSHPublicKeysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSSHPublicKeys"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSSHPublicKeysResponseDecoder


{-| Options for a listSSHPublicKeys request
-}
type alias ListSSHPublicKeysOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the server certificates stored in IAM that have the specified path prefix. If none exist, the action returns an empty list.</p> <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__



-}
listServerCertificates :
    (ListServerCertificatesOptions -> ListServerCertificatesOptions)
    -> AWS.Http.UnsignedRequest ListServerCertificatesResponse
listServerCertificates setOptions =
  let
    options = setOptions (ListServerCertificatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListServerCertificates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listServerCertificatesResponseDecoder


{-| Options for a listServerCertificates request
-}
type alias ListServerCertificatesOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Returns information about the service-specific credentials associated with the specified IAM user. If there are none, the action returns an empty list. The service-specific credentials returned by this action are used only for authenticating the IAM user to a specific service. For more information about using service-specific credentials to authenticate to an AWS service, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html">Set Up service-specific credentials</a> in the AWS CodeCommit User Guide.</p>

__Required Parameters__



-}
listServiceSpecificCredentials :
    (ListServiceSpecificCredentialsOptions -> ListServiceSpecificCredentialsOptions)
    -> AWS.Http.UnsignedRequest ListServiceSpecificCredentialsResponse
listServiceSpecificCredentials setOptions =
  let
    options = setOptions (ListServiceSpecificCredentialsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListServiceSpecificCredentials"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listServiceSpecificCredentialsResponseDecoder


{-| Options for a listServiceSpecificCredentials request
-}
type alias ListServiceSpecificCredentialsOptions =
    { userName : Maybe String
    , serviceName : Maybe String
    }



{-| <p>Returns information about the signing certificates associated with the specified IAM user. If there are none, the action returns an empty list.</p> <p>Although each user is limited to a small number of signing certificates, you can still paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p> <p>If the <code>UserName</code> field is not specified, the user name is determined implicitly based on the AWS access key ID used to sign the request for this API. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>

__Required Parameters__



-}
listSigningCertificates :
    (ListSigningCertificatesOptions -> ListSigningCertificatesOptions)
    -> AWS.Http.UnsignedRequest ListSigningCertificatesResponse
listSigningCertificates setOptions =
  let
    options = setOptions (ListSigningCertificatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSigningCertificates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSigningCertificatesResponseDecoder


{-| Options for a listSigningCertificates request
-}
type alias ListSigningCertificatesOptions =
    { userName : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the names of the inline policies embedded in the specified IAM user.</p> <p>An IAM user can also have managed policies attached to it. To list the managed policies that are attached to a user, use <a>ListAttachedUserPolicies</a>. For more information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters. If there are no inline policies embedded with the specified user, the action returns an empty list.</p>

__Required Parameters__

* `userName` __:__ `String`


-}
listUserPolicies :
    String
    -> (ListUserPoliciesOptions -> ListUserPoliciesOptions)
    -> AWS.Http.UnsignedRequest ListUserPoliciesResponse
listUserPolicies userName setOptions =
  let
    options = setOptions (ListUserPoliciesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUserPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUserPoliciesResponseDecoder


{-| Options for a listUserPolicies request
-}
type alias ListUserPoliciesOptions =
    { marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the IAM users that have the specified path prefix. If no path prefix is specified, the action returns all users in the AWS account. If there are none, the action returns an empty list.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
listUsers :
    (ListUsersOptions -> ListUsersOptions)
    -> AWS.Http.UnsignedRequest ListUsersResponse
listUsers setOptions =
  let
    options = setOptions (ListUsersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUsers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUsersResponseDecoder


{-| Options for a listUsers request
-}
type alias ListUsersOptions =
    { pathPrefix : Maybe String
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the virtual MFA devices defined in the AWS account by assignment status. If you do not specify an assignment status, the action returns a list of all virtual MFA devices. Assignment status can be <code>Assigned</code>, <code>Unassigned</code>, or <code>Any</code>.</p> <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>

__Required Parameters__



-}
listVirtualMFADevices :
    (ListVirtualMFADevicesOptions -> ListVirtualMFADevicesOptions)
    -> AWS.Http.UnsignedRequest ListVirtualMFADevicesResponse
listVirtualMFADevices setOptions =
  let
    options = setOptions (ListVirtualMFADevicesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListVirtualMFADevices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listVirtualMFADevicesResponseDecoder


{-| Options for a listVirtualMFADevices request
-}
type alias ListVirtualMFADevicesOptions =
    { assignmentStatus : Maybe AssignmentStatusType
    , marker : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Adds or updates an inline policy document that is embedded in the specified IAM group.</p> <p>A user can also have managed policies attached to it. To attach a managed policy to a group, use <a>AttachGroupPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a group, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutGroupPolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

__Required Parameters__

* `groupName` __:__ `String`
* `policyName` __:__ `String`
* `policyDocument` __:__ `String`


-}
putGroupPolicy :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
putGroupPolicy groupName policyName policyDocument =
    AWS.Http.unsignedRequest
        "PutGroupPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Adds or updates an inline policy document that is embedded in the specified IAM role.</p> <p>When you embed an inline policy in a role, the inline policy is used as part of the role's access (permissions) policy. The role's trust policy is created at the same time as the role, using <a>CreateRole</a>. You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>. For more information about IAM roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p> <p>A role can also have a managed policy attached to it. To attach a managed policy to a role, use <a>AttachRolePolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed with a role, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutRolePolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

__Required Parameters__

* `roleName` __:__ `String`
* `policyName` __:__ `String`
* `policyDocument` __:__ `String`


-}
putRolePolicy :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
putRolePolicy roleName policyName policyDocument =
    AWS.Http.unsignedRequest
        "PutRolePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Adds or updates an inline policy document that is embedded in the specified IAM user.</p> <p>An IAM user can also have a managed policy attached to it. To attach a managed policy to a user, use <a>AttachUserPolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p> <p>For information about limits on the number of inline policies that you can embed in a user, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html">Limitations on IAM Entities</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because policy documents can be large, you should use POST rather than GET when calling <code>PutUserPolicy</code>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

__Required Parameters__

* `userName` __:__ `String`
* `policyName` __:__ `String`
* `policyDocument` __:__ `String`


-}
putUserPolicy :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
putUserPolicy userName policyName policyDocument =
    AWS.Http.unsignedRequest
        "PutUserPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object.</p> <p>This action is idempotent; it does not fail or return an error if you try to remove a client ID that does not exist.</p>

__Required Parameters__

* `openIDConnectProviderArn` __:__ `String`
* `clientID` __:__ `String`


-}
removeClientIDFromOpenIDConnectProvider :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
removeClientIDFromOpenIDConnectProvider openIDConnectProviderArn clientID =
    AWS.Http.unsignedRequest
        "RemoveClientIDFromOpenIDConnectProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Removes the specified IAM role from the specified EC2 instance profile.</p> <important> <p>Make sure you do not have any Amazon EC2 instances running with the role you are about to remove from the instance profile. Removing a role from an instance profile that is associated with a running instance break any applications running on the instance.</p> </important> <p> For more information about IAM roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with Roles</a>. For more information about instance profiles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About Instance Profiles</a>.</p>

__Required Parameters__

* `instanceProfileName` __:__ `String`
* `roleName` __:__ `String`


-}
removeRoleFromInstanceProfile :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
removeRoleFromInstanceProfile instanceProfileName roleName =
    AWS.Http.unsignedRequest
        "RemoveRoleFromInstanceProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Removes the specified user from the specified group.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userName` __:__ `String`


-}
removeUserFromGroup :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
removeUserFromGroup groupName userName =
    AWS.Http.unsignedRequest
        "RemoveUserFromGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Resets the password for a service-specific credential. The new password is AWS generated and cryptographically strong. It cannot be configured by the user. Resetting the password immediately invalidates the previous password associated with this user.</p>

__Required Parameters__

* `serviceSpecificCredentialId` __:__ `String`


-}
resetServiceSpecificCredential :
    String
    -> (ResetServiceSpecificCredentialOptions -> ResetServiceSpecificCredentialOptions)
    -> AWS.Http.UnsignedRequest ResetServiceSpecificCredentialResponse
resetServiceSpecificCredential serviceSpecificCredentialId setOptions =
  let
    options = setOptions (ResetServiceSpecificCredentialOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResetServiceSpecificCredential"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resetServiceSpecificCredentialResponseDecoder


{-| Options for a resetServiceSpecificCredential request
-}
type alias ResetServiceSpecificCredentialOptions =
    { userName : Maybe String
    }



{-| <p>Synchronizes the specified MFA device with its IAM resource object on the AWS servers.</p> <p>For more information about creating and working with virtual MFA devices, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a Virtual MFA Device</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `serialNumber` __:__ `String`
* `authenticationCode1` __:__ `String`
* `authenticationCode2` __:__ `String`


-}
resyncMFADevice :
    String
    -> String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
resyncMFADevice userName serialNumber authenticationCode1 authenticationCode2 =
    AWS.Http.unsignedRequest
        "ResyncMFADevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Sets the specified version of the specified policy as the policy's default (operative) version.</p> <p>This action affects all users, groups, and roles that the policy is attached to. To list the users, groups, and roles that the policy is attached to, use the <a>ListEntitiesForPolicy</a> API.</p> <p>For information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `policyArn` __:__ `String`
* `versionId` __:__ `String`


-}
setDefaultPolicyVersion :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
setDefaultPolicyVersion policyArn versionId =
    AWS.Http.unsignedRequest
        "SetDefaultPolicyVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API actions and AWS resources to determine the policies' effective permissions. The policies are provided as strings.</p> <p>The simulation does not perform the API actions; it only checks the authorization to determine if the simulated policies allow or deny the actions.</p> <p>If you want to simulate existing policies attached to an IAM user, group, or role, use <a>SimulatePrincipalPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForCustomPolicy</a>.</p> <p>If the output is long, you can use <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>

__Required Parameters__

* `policyInputList` __:__ `(List String)`
* `actionNames` __:__ `(List String)`


-}
simulateCustomPolicy :
    (List String)
    -> (List String)
    -> (SimulateCustomPolicyOptions -> SimulateCustomPolicyOptions)
    -> AWS.Http.UnsignedRequest SimulatePolicyResponse
simulateCustomPolicy policyInputList actionNames setOptions =
  let
    options = setOptions (SimulateCustomPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SimulateCustomPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        simulatePolicyResponseDecoder


{-| Options for a simulateCustomPolicy request
-}
type alias SimulateCustomPolicyOptions =
    { resourceArns : Maybe (List String)
    , resourcePolicy : Maybe String
    , resourceOwner : Maybe String
    , callerArn : Maybe String
    , contextEntries : Maybe (List ContextEntry)
    , resourceHandlingOption : Maybe String
    , maxItems : Maybe Int
    , marker : Maybe String
    }



{-| <p>Simulate how a set of IAM policies attached to an IAM entity works with a list of API actions and AWS resources to determine the policies' effective permissions. The entity can be an IAM user, group, or role. If you specify a user, then the simulation also includes all of the policies that are attached to groups that the user belongs to .</p> <p>You can optionally include a list of one or more additional policies specified as strings to include in the simulation. If you want to simulate only policies specified as strings, use <a>SimulateCustomPolicy</a> instead.</p> <p>You can also optionally include one resource-based policy to be evaluated with each of the resources included in the simulation.</p> <p>The simulation does not perform the API actions, it only checks the authorization to determine if the simulated policies allow or deny the actions.</p> <p> <b>Note:</b> This API discloses information about the permissions granted to other users. If you do not want users to see other user's permissions, then consider allowing them to use <a>SimulateCustomPolicy</a> instead.</p> <p>Context keys are variables maintained by AWS and its services that provide details about the context of an API query request. You can use the <code>Condition</code> element of an IAM policy to evaluate context keys. To get the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForPrincipalPolicy</a>.</p> <p>If the output is long, you can use the <code>MaxItems</code> and <code>Marker</code> parameters to paginate the results.</p>

__Required Parameters__

* `policySourceArn` __:__ `String`
* `actionNames` __:__ `(List String)`


-}
simulatePrincipalPolicy :
    String
    -> (List String)
    -> (SimulatePrincipalPolicyOptions -> SimulatePrincipalPolicyOptions)
    -> AWS.Http.UnsignedRequest SimulatePolicyResponse
simulatePrincipalPolicy policySourceArn actionNames setOptions =
  let
    options = setOptions (SimulatePrincipalPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SimulatePrincipalPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        simulatePolicyResponseDecoder


{-| Options for a simulatePrincipalPolicy request
-}
type alias SimulatePrincipalPolicyOptions =
    { policyInputList : Maybe (List String)
    , resourceArns : Maybe (List String)
    , resourcePolicy : Maybe String
    , resourceOwner : Maybe String
    , callerArn : Maybe String
    , contextEntries : Maybe (List ContextEntry)
    , resourceHandlingOption : Maybe String
    , maxItems : Maybe Int
    , marker : Maybe String
    }



{-| <p>Changes the status of the specified access key from Active to Inactive, or vice versa. This action can be used to disable a user's key as part of a key rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <p>For information about rotating keys, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html">Managing Keys and Certificates</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `accessKeyId` __:__ `String`
* `status` __:__ `StatusType`


-}
updateAccessKey :
    String
    -> StatusType
    -> (UpdateAccessKeyOptions -> UpdateAccessKeyOptions)
    -> AWS.Http.UnsignedRequest ()
updateAccessKey accessKeyId status setOptions =
  let
    options = setOptions (UpdateAccessKeyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAccessKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateAccessKey request
-}
type alias UpdateAccessKeyOptions =
    { userName : Maybe String
    }



{-| <p>Updates the password policy settings for the AWS account.</p> <note> <p>This action does not support partial updates. No parameters are required, but if you do not specify a parameter, that parameter's value reverts to its default value. See the <b>Request Parameters</b> section for each parameter's default value.</p> </note> <p> For more information about using a password policy, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM Password Policy</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__



-}
updateAccountPasswordPolicy :
    (UpdateAccountPasswordPolicyOptions -> UpdateAccountPasswordPolicyOptions)
    -> AWS.Http.UnsignedRequest ()
updateAccountPasswordPolicy setOptions =
  let
    options = setOptions (UpdateAccountPasswordPolicyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAccountPasswordPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateAccountPasswordPolicy request
-}
type alias UpdateAccountPasswordPolicyOptions =
    { minimumPasswordLength : Maybe Int
    , requireSymbols : Maybe Bool
    , requireNumbers : Maybe Bool
    , requireUppercaseCharacters : Maybe Bool
    , requireLowercaseCharacters : Maybe Bool
    , allowUsersToChangePassword : Maybe Bool
    , maxPasswordAge : Maybe Int
    , passwordReusePrevention : Maybe Int
    , hardExpiry : Maybe Bool
    }



{-| <p>Updates the policy that grants an IAM entity permission to assume a role. This is typically referred to as the "role trust policy". For more information about roles, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using Roles to Delegate Permissions and Federate Identities</a>.</p>

__Required Parameters__

* `roleName` __:__ `String`
* `policyDocument` __:__ `String`


-}
updateAssumeRolePolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
updateAssumeRolePolicy roleName policyDocument =
    AWS.Http.unsignedRequest
        "UpdateAssumeRolePolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Updates the name and/or the path of the specified IAM group.</p> <important> <p> You should understand the implications of changing a group's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html">Renaming Users and Groups</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>To change an IAM group name the requester must have appropriate permissions on both the source object and the target object. For example, to change "Managers" to "MGRs", the entity making the request must have permission on both "Managers" and "MGRs", or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and Policies</a>. </p> </note>

__Required Parameters__

* `groupName` __:__ `String`


-}
updateGroup :
    String
    -> (UpdateGroupOptions -> UpdateGroupOptions)
    -> AWS.Http.UnsignedRequest ()
updateGroup groupName setOptions =
  let
    options = setOptions (UpdateGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateGroup request
-}
type alias UpdateGroupOptions =
    { newPath : Maybe String
    , newGroupName : Maybe String
    }



{-| <p>Changes the password for the specified IAM user.</p> <p>IAM users can change their own passwords by calling <a>ChangePassword</a>. For more information about modifying passwords, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing Passwords</a> in the <i>IAM User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`


-}
updateLoginProfile :
    String
    -> (UpdateLoginProfileOptions -> UpdateLoginProfileOptions)
    -> AWS.Http.UnsignedRequest ()
updateLoginProfile userName setOptions =
  let
    options = setOptions (UpdateLoginProfileOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateLoginProfile"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateLoginProfile request
-}
type alias UpdateLoginProfileOptions =
    { password : Maybe String
    , passwordResetRequired : Maybe Bool
    }



{-| <p>Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints.</p> <p>The list that you pass with this action completely replaces the existing list of thumbprints. (The lists are not merged.)</p> <p>Typically, you need to update a thumbprint only when the identity provider's certificate changes, which occurs rarely. However, if the provider's certificate <i>does</i> change, any attempt to assume an IAM role that specifies the OIDC provider as a principal fails until the certificate thumbprint is updated.</p> <note> <p>Because trust for the OIDC provider is ultimately derived from the provider's certificate and is validated by the thumbprint, it is a best practice to limit access to the <code>UpdateOpenIDConnectProviderThumbprint</code> action to highly-privileged users.</p> </note>

__Required Parameters__

* `openIDConnectProviderArn` __:__ `String`
* `thumbprintList` __:__ `(List String)`


-}
updateOpenIDConnectProviderThumbprint :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest ()
updateOpenIDConnectProviderThumbprint openIDConnectProviderArn thumbprintList =
    AWS.Http.unsignedRequest
        "UpdateOpenIDConnectProviderThumbprint"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Updates the metadata document for an existing SAML provider resource object.</p> <note> <p>This operation requires <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> </note>

__Required Parameters__

* `sAMLMetadataDocument` __:__ `String`
* `sAMLProviderArn` __:__ `String`


-}
updateSAMLProvider :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateSAMLProviderResponse
updateSAMLProvider sAMLMetadataDocument sAMLProviderArn =
    AWS.Http.unsignedRequest
        "UpdateSAMLProvider"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateSAMLProviderResponseDecoder



{-| <p>Sets the status of an IAM user's SSH public key to active or inactive. SSH public keys that are inactive cannot be used for authentication. This action can be used to disable a user's SSH public key as part of a key rotation work flow.</p> <p>The SSH public key affected by this action is used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `sSHPublicKeyId` __:__ `String`
* `status` __:__ `StatusType`


-}
updateSSHPublicKey :
    String
    -> String
    -> StatusType
    -> AWS.Http.UnsignedRequest ()
updateSSHPublicKey userName sSHPublicKeyId status =
    AWS.Http.unsignedRequest
        "UpdateSSHPublicKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Updates the name and/or the path of the specified server certificate stored in IAM.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <important> <p>You should understand the implications of changing a server certificate's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts">Renaming a Server Certificate</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p>To change a server certificate name the requester must have appropriate permissions on both the source object and the target object. For example, to change the name from "ProductionCert" to "ProdCert", the entity making the request must have permission on "ProductionCert" and "ProdCert", or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p> </note>

__Required Parameters__

* `serverCertificateName` __:__ `String`


-}
updateServerCertificate :
    String
    -> (UpdateServerCertificateOptions -> UpdateServerCertificateOptions)
    -> AWS.Http.UnsignedRequest ()
updateServerCertificate serverCertificateName setOptions =
  let
    options = setOptions (UpdateServerCertificateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateServerCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateServerCertificate request
-}
type alias UpdateServerCertificateOptions =
    { newPath : Maybe String
    , newServerCertificateName : Maybe String
    }



{-| <p>Sets the status of a service-specific credential to <code>Active</code> or <code>Inactive</code>. Service-specific credentials that are inactive cannot be used for authentication to the service. This action can be used to disable a user’s service-specific credential as part of a credential rotation work flow.</p>

__Required Parameters__

* `serviceSpecificCredentialId` __:__ `String`
* `status` __:__ `StatusType`


-}
updateServiceSpecificCredential :
    String
    -> StatusType
    -> (UpdateServiceSpecificCredentialOptions -> UpdateServiceSpecificCredentialOptions)
    -> AWS.Http.UnsignedRequest ()
updateServiceSpecificCredential serviceSpecificCredentialId status setOptions =
  let
    options = setOptions (UpdateServiceSpecificCredentialOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateServiceSpecificCredential"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateServiceSpecificCredential request
-}
type alias UpdateServiceSpecificCredentialOptions =
    { userName : Maybe String
    }



{-| <p>Changes the status of the specified user signing certificate from active to disabled, or vice versa. This action can be used to disable an IAM user's signing certificate as part of a certificate rotation work flow.</p> <p>If the <code>UserName</code> field is not specified, the UserName is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p>

__Required Parameters__

* `certificateId` __:__ `String`
* `status` __:__ `StatusType`


-}
updateSigningCertificate :
    String
    -> StatusType
    -> (UpdateSigningCertificateOptions -> UpdateSigningCertificateOptions)
    -> AWS.Http.UnsignedRequest ()
updateSigningCertificate certificateId status setOptions =
  let
    options = setOptions (UpdateSigningCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateSigningCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateSigningCertificate request
-}
type alias UpdateSigningCertificateOptions =
    { userName : Maybe String
    }



{-| <p>Updates the name and/or the path of the specified IAM user.</p> <important> <p> You should understand the implications of changing an IAM user's path or name. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming">Renaming an IAM User</a> and <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html">Renaming an IAM Group</a> in the <i>IAM User Guide</i>.</p> </important> <note> <p> To change a user name the requester must have appropriate permissions on both the source object and the target object. For example, to change Bob to Robert, the entity making the request must have permission on Bob and Robert, or must have permission on all (*). For more information about permissions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and Policies</a>. </p> </note>

__Required Parameters__

* `userName` __:__ `String`


-}
updateUser :
    String
    -> (UpdateUserOptions -> UpdateUserOptions)
    -> AWS.Http.UnsignedRequest ()
updateUser userName setOptions =
  let
    options = setOptions (UpdateUserOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a updateUser request
-}
type alias UpdateUserOptions =
    { newPath : Maybe String
    , newUserName : Maybe String
    }



{-| <p>Uploads an SSH public key and associates it with the specified IAM user.</p> <p>The SSH public key uploaded by this action can be used only for authenticating the associated IAM user to an AWS CodeCommit repository. For more information about using SSH keys to authenticate to an AWS CodeCommit repository, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up AWS CodeCommit for SSH Connections</a> in the <i>AWS CodeCommit User Guide</i>.</p>

__Required Parameters__

* `userName` __:__ `String`
* `sSHPublicKeyBody` __:__ `String`


-}
uploadSSHPublicKey :
    String
    -> String
    -> AWS.Http.UnsignedRequest UploadSSHPublicKeyResponse
uploadSSHPublicKey userName sSHPublicKeyBody =
    AWS.Http.unsignedRequest
        "UploadSSHPublicKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        uploadSSHPublicKeyResponseDecoder



{-| <p>Uploads a server certificate entity for the AWS account. The server certificate entity includes a public key certificate, a private key, and an optional certificate chain, which should all be PEM-encoded.</p> <p>For more information about working with server certificates, including a list of AWS services that can use the server certificates that you manage with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with Server Certificates</a> in the <i>IAM User Guide</i>.</p> <p>For information about the number of server certificates you can upload, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html">Limitations on IAM Entities and Objects</a> in the <i>IAM User Guide</i>.</p> <note> <p>Because the body of the public key certificate, private key, and the certificate chain can be large, you should use POST rather than GET when calling <code>UploadServerCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html">Calling the API by Making HTTP Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

__Required Parameters__

* `serverCertificateName` __:__ `String`
* `certificateBody` __:__ `String`
* `privateKey` __:__ `String`


-}
uploadServerCertificate :
    String
    -> String
    -> String
    -> (UploadServerCertificateOptions -> UploadServerCertificateOptions)
    -> AWS.Http.UnsignedRequest UploadServerCertificateResponse
uploadServerCertificate serverCertificateName certificateBody privateKey setOptions =
  let
    options = setOptions (UploadServerCertificateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UploadServerCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        uploadServerCertificateResponseDecoder


{-| Options for a uploadServerCertificate request
-}
type alias UploadServerCertificateOptions =
    { path : Maybe String
    , certificateChain : Maybe String
    }



{-| <p>Uploads an X.509 signing certificate and associates it with the specified IAM user. Some AWS services use X.509 signing certificates to validate requests that are signed with a corresponding private key. When you upload the certificate, its default status is <code>Active</code>.</p> <p>If the <code>UserName</code> field is not specified, the IAM user name is determined implicitly based on the AWS access key ID used to sign the request. Because this action works for access keys under the AWS account, you can use this action to manage root credentials even if the AWS account has no associated users.</p> <note> <p>Because the body of a X.509 certificate can be large, you should use POST rather than GET when calling <code>UploadSigningCertificate</code>. For information about setting up signatures and authorization through the API, go to <a href="http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing AWS API Requests</a> in the <i>AWS General Reference</i>. For general information about using the Query API with IAM, go to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making Query Requests</a> in the <i>IAM User Guide</i>.</p> </note>

__Required Parameters__

* `certificateBody` __:__ `String`


-}
uploadSigningCertificate :
    String
    -> (UploadSigningCertificateOptions -> UploadSigningCertificateOptions)
    -> AWS.Http.UnsignedRequest UploadSigningCertificateResponse
uploadSigningCertificate certificateBody setOptions =
  let
    options = setOptions (UploadSigningCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UploadSigningCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        uploadSigningCertificateResponseDecoder


{-| Options for a uploadSigningCertificate request
-}
type alias UploadSigningCertificateOptions =
    { userName : Maybe String
    }




{-| <p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> actions. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>
-}
type alias AccessKey =
    { userName : String
    , accessKeyId : String
    , status : StatusType
    , secretAccessKey : String
    , createDate : Maybe Date
    }



accessKeyDecoder : JD.Decoder AccessKey
accessKeyDecoder =
    JDP.decode AccessKey
        |> JDP.required "userName" JD.string
        |> JDP.required "accessKeyId" JD.string
        |> JDP.required "status" statusTypeDecoder
        |> JDP.required "secretAccessKey" JD.string
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing




{-| <p>Contains information about the last time an AWS access key was used.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> action.</p>
-}
type alias AccessKeyLastUsed =
    { lastUsedDate : Date
    , serviceName : String
    , region : String
    }



accessKeyLastUsedDecoder : JD.Decoder AccessKeyLastUsed
accessKeyLastUsedDecoder =
    JDP.decode AccessKeyLastUsed
        |> JDP.required "lastUsedDate" JDX.date
        |> JDP.required "serviceName" JD.string
        |> JDP.required "region" JD.string




{-| <p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>
-}
type alias AccessKeyMetadata =
    { userName : Maybe String
    , accessKeyId : Maybe String
    , status : Maybe StatusType
    , createDate : Maybe Date
    }



accessKeyMetadataDecoder : JD.Decoder AccessKeyMetadata
accessKeyMetadataDecoder =
    JDP.decode AccessKeyMetadata
        |> JDP.optional "userName" (JD.nullable JD.string) Nothing
        |> JDP.optional "accessKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable statusTypeDecoder) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing




{-| <p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-}
type alias AttachedPolicy =
    { policyName : Maybe String
    , policyArn : Maybe String
    }



attachedPolicyDecoder : JD.Decoder AttachedPolicy
attachedPolicyDecoder =
    JDP.decode AttachedPolicy
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyArn" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the <code>Condition</code> elements of the input policies.</p> <p>This data type is used as an input parameter to <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulateCustomPolicy</a> </code>.</p>
-}
type alias ContextEntry =
    { contextKeyName : Maybe String
    , contextKeyValues : Maybe (List String)
    , contextKeyType : Maybe ContextKeyTypeEnum
    }



contextEntryDecoder : JD.Decoder ContextEntry
contextEntryDecoder =
    JDP.decode ContextEntry
        |> JDP.optional "contextKeyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "contextKeyValues" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "contextKeyType" (JD.nullable contextKeyTypeEnumDecoder) Nothing




{-| One of

* `ContextKeyTypeEnum_string`
* `ContextKeyTypeEnum_stringList`
* `ContextKeyTypeEnum_numeric`
* `ContextKeyTypeEnum_numericList`
* `ContextKeyTypeEnum_boolean`
* `ContextKeyTypeEnum_booleanList`
* `ContextKeyTypeEnum_ip`
* `ContextKeyTypeEnum_ipList`
* `ContextKeyTypeEnum_binary`
* `ContextKeyTypeEnum_binaryList`
* `ContextKeyTypeEnum_date`
* `ContextKeyTypeEnum_dateList`

-}
type ContextKeyTypeEnum
    = ContextKeyTypeEnum_string
    | ContextKeyTypeEnum_stringList
    | ContextKeyTypeEnum_numeric
    | ContextKeyTypeEnum_numericList
    | ContextKeyTypeEnum_boolean
    | ContextKeyTypeEnum_booleanList
    | ContextKeyTypeEnum_ip
    | ContextKeyTypeEnum_ipList
    | ContextKeyTypeEnum_binary
    | ContextKeyTypeEnum_binaryList
    | ContextKeyTypeEnum_date
    | ContextKeyTypeEnum_dateList



contextKeyTypeEnumDecoder : JD.Decoder ContextKeyTypeEnum
contextKeyTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "string" ->
                        JD.succeed ContextKeyTypeEnum_string

                    "stringList" ->
                        JD.succeed ContextKeyTypeEnum_stringList

                    "numeric" ->
                        JD.succeed ContextKeyTypeEnum_numeric

                    "numericList" ->
                        JD.succeed ContextKeyTypeEnum_numericList

                    "boolean" ->
                        JD.succeed ContextKeyTypeEnum_boolean

                    "booleanList" ->
                        JD.succeed ContextKeyTypeEnum_booleanList

                    "ip" ->
                        JD.succeed ContextKeyTypeEnum_ip

                    "ipList" ->
                        JD.succeed ContextKeyTypeEnum_ipList

                    "binary" ->
                        JD.succeed ContextKeyTypeEnum_binary

                    "binaryList" ->
                        JD.succeed ContextKeyTypeEnum_binaryList

                    "date" ->
                        JD.succeed ContextKeyTypeEnum_date

                    "dateList" ->
                        JD.succeed ContextKeyTypeEnum_dateList


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createAccessKey
-}
type alias CreateAccessKeyResponse =
    { accessKey : AccessKey
    }



createAccessKeyResponseDecoder : JD.Decoder CreateAccessKeyResponse
createAccessKeyResponseDecoder =
    JDP.decode CreateAccessKeyResponse
        |> JDP.required "accessKey" accessKeyDecoder




{-| Type of HTTP response from createGroup
-}
type alias CreateGroupResponse =
    { group : Group
    }



createGroupResponseDecoder : JD.Decoder CreateGroupResponse
createGroupResponseDecoder =
    JDP.decode CreateGroupResponse
        |> JDP.required "group" groupDecoder




{-| Type of HTTP response from createInstanceProfile
-}
type alias CreateInstanceProfileResponse =
    { instanceProfile : InstanceProfile
    }



createInstanceProfileResponseDecoder : JD.Decoder CreateInstanceProfileResponse
createInstanceProfileResponseDecoder =
    JDP.decode CreateInstanceProfileResponse
        |> JDP.required "instanceProfile" instanceProfileDecoder




{-| Type of HTTP response from createLoginProfile
-}
type alias CreateLoginProfileResponse =
    { loginProfile : LoginProfile
    }



createLoginProfileResponseDecoder : JD.Decoder CreateLoginProfileResponse
createLoginProfileResponseDecoder =
    JDP.decode CreateLoginProfileResponse
        |> JDP.required "loginProfile" loginProfileDecoder




{-| Type of HTTP response from createOpenIDConnectProvider
-}
type alias CreateOpenIDConnectProviderResponse =
    { openIDConnectProviderArn : Maybe String
    }



createOpenIDConnectProviderResponseDecoder : JD.Decoder CreateOpenIDConnectProviderResponse
createOpenIDConnectProviderResponseDecoder =
    JDP.decode CreateOpenIDConnectProviderResponse
        |> JDP.optional "openIDConnectProviderArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createPolicy
-}
type alias CreatePolicyResponse =
    { policy : Maybe Policy
    }



createPolicyResponseDecoder : JD.Decoder CreatePolicyResponse
createPolicyResponseDecoder =
    JDP.decode CreatePolicyResponse
        |> JDP.optional "policy" (JD.nullable policyDecoder) Nothing




{-| Type of HTTP response from createPolicyVersion
-}
type alias CreatePolicyVersionResponse =
    { policyVersion : Maybe PolicyVersion
    }



createPolicyVersionResponseDecoder : JD.Decoder CreatePolicyVersionResponse
createPolicyVersionResponseDecoder =
    JDP.decode CreatePolicyVersionResponse
        |> JDP.optional "policyVersion" (JD.nullable policyVersionDecoder) Nothing




{-| Type of HTTP response from createRole
-}
type alias CreateRoleResponse =
    { role : Role
    }



createRoleResponseDecoder : JD.Decoder CreateRoleResponse
createRoleResponseDecoder =
    JDP.decode CreateRoleResponse
        |> JDP.required "role" roleDecoder




{-| Type of HTTP response from createSAMLProvider
-}
type alias CreateSAMLProviderResponse =
    { sAMLProviderArn : Maybe String
    }



createSAMLProviderResponseDecoder : JD.Decoder CreateSAMLProviderResponse
createSAMLProviderResponseDecoder =
    JDP.decode CreateSAMLProviderResponse
        |> JDP.optional "sAMLProviderArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createServiceSpecificCredential
-}
type alias CreateServiceSpecificCredentialResponse =
    { serviceSpecificCredential : Maybe ServiceSpecificCredential
    }



createServiceSpecificCredentialResponseDecoder : JD.Decoder CreateServiceSpecificCredentialResponse
createServiceSpecificCredentialResponseDecoder =
    JDP.decode CreateServiceSpecificCredentialResponse
        |> JDP.optional "serviceSpecificCredential" (JD.nullable serviceSpecificCredentialDecoder) Nothing




{-| Type of HTTP response from createUser
-}
type alias CreateUserResponse =
    { user : Maybe User
    }



createUserResponseDecoder : JD.Decoder CreateUserResponse
createUserResponseDecoder =
    JDP.decode CreateUserResponse
        |> JDP.optional "user" (JD.nullable userDecoder) Nothing




{-| Type of HTTP response from createVirtualMFADevice
-}
type alias CreateVirtualMFADeviceResponse =
    { virtualMFADevice : VirtualMFADevice
    }



createVirtualMFADeviceResponseDecoder : JD.Decoder CreateVirtualMFADeviceResponse
createVirtualMFADeviceResponseDecoder =
    JDP.decode CreateVirtualMFADeviceResponse
        |> JDP.required "virtualMFADevice" virtualMFADeviceDecoder




{-| <p>The request was rejected because the most recent credential report has expired. To generate a new credential report, use <a>GenerateCredentialReport</a>. For more information about credential report expiration, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
-}
type alias CredentialReportExpiredException =
    { message : Maybe String
    }



credentialReportExpiredExceptionDecoder : JD.Decoder CredentialReportExpiredException
credentialReportExpiredExceptionDecoder =
    JDP.decode CredentialReportExpiredException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the credential report does not exist. To generate a credential report, use <a>GenerateCredentialReport</a>.</p>
-}
type alias CredentialReportNotPresentException =
    { message : Maybe String
    }



credentialReportNotPresentExceptionDecoder : JD.Decoder CredentialReportNotPresentException
credentialReportNotPresentExceptionDecoder =
    JDP.decode CredentialReportNotPresentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the credential report is still being generated.</p>
-}
type alias CredentialReportNotReadyException =
    { message : Maybe String
    }



credentialReportNotReadyExceptionDecoder : JD.Decoder CredentialReportNotReadyException
credentialReportNotReadyExceptionDecoder =
    JDP.decode CredentialReportNotReadyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.</p>
-}
type alias DeleteConflictException =
    { message : Maybe String
    }



deleteConflictExceptionDecoder : JD.Decoder DeleteConflictException
deleteConflictExceptionDecoder =
    JDP.decode DeleteConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the same certificate is associated with an IAM user in the account.</p>
-}
type alias DuplicateCertificateException =
    { message : Maybe String
    }



duplicateCertificateExceptionDecoder : JD.Decoder DuplicateCertificateException
duplicateCertificateExceptionDecoder =
    JDP.decode DuplicateCertificateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the SSH public key is already associated with the specified IAM user.</p>
-}
type alias DuplicateSSHPublicKeyException =
    { message : Maybe String
    }



duplicateSSHPublicKeyExceptionDecoder : JD.Decoder DuplicateSSHPublicKeyException
duplicateSSHPublicKeyExceptionDecoder =
    JDP.decode DuplicateSSHPublicKeyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because it attempted to create a resource that already exists.</p>
-}
type alias EntityAlreadyExistsException =
    { message : Maybe String
    }



entityAlreadyExistsExceptionDecoder : JD.Decoder EntityAlreadyExistsException
entityAlreadyExistsExceptionDecoder =
    JDP.decode EntityAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.</p>
-}
type alias EntityTemporarilyUnmodifiableException =
    { message : Maybe String
    }



entityTemporarilyUnmodifiableExceptionDecoder : JD.Decoder EntityTemporarilyUnmodifiableException
entityTemporarilyUnmodifiableExceptionDecoder =
    JDP.decode EntityTemporarilyUnmodifiableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `EntityType_User`
* `EntityType_Role`
* `EntityType_Group`
* `EntityType_LocalManagedPolicy`
* `EntityType_AWSManagedPolicy`

-}
type EntityType
    = EntityType_User
    | EntityType_Role
    | EntityType_Group
    | EntityType_LocalManagedPolicy
    | EntityType_AWSManagedPolicy



entityTypeDecoder : JD.Decoder EntityType
entityTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "User" ->
                        JD.succeed EntityType_User

                    "Role" ->
                        JD.succeed EntityType_Role

                    "Group" ->
                        JD.succeed EntityType_Group

                    "LocalManagedPolicy" ->
                        JD.succeed EntityType_LocalManagedPolicy

                    "AWSManagedPolicy" ->
                        JD.succeed EntityType_AWSManagedPolicy


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains the results of a simulation.</p> <p>This data type is used by the return parameter of <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulatePrincipalPolicy</a> </code>.</p>
-}
type alias EvaluationResult =
    { evalActionName : String
    , evalResourceName : Maybe String
    , evalDecision : PolicyEvaluationDecisionType
    , matchedStatements : Maybe (List Statement)
    , missingContextValues : Maybe (List String)
    , evalDecisionDetails : Maybe (Dict String PolicyEvaluationDecisionType)
    , resourceSpecificResults : Maybe (List ResourceSpecificResult)
    }



evaluationResultDecoder : JD.Decoder EvaluationResult
evaluationResultDecoder =
    JDP.decode EvaluationResult
        |> JDP.required "evalActionName" JD.string
        |> JDP.optional "evalResourceName" (JD.nullable JD.string) Nothing
        |> JDP.required "evalDecision" policyEvaluationDecisionTypeDecoder
        |> JDP.optional "matchedStatements" (JD.nullable (JD.list statementDecoder)) Nothing
        |> JDP.optional "missingContextValues" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "evalDecisionDetails" (JD.nullable (JD.dict policyEvaluationDecisionTypeDecoder)) Nothing
        |> JDP.optional "resourceSpecificResults" (JD.nullable (JD.list resourceSpecificResultDecoder)) Nothing




{-| Type of HTTP response from generateCredentialReport
-}
type alias GenerateCredentialReportResponse =
    { state : Maybe ReportStateType
    , description : Maybe String
    }



generateCredentialReportResponseDecoder : JD.Decoder GenerateCredentialReportResponse
generateCredentialReportResponseDecoder =
    JDP.decode GenerateCredentialReportResponse
        |> JDP.optional "state" (JD.nullable reportStateTypeDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getAccessKeyLastUsed
-}
type alias GetAccessKeyLastUsedResponse =
    { userName : Maybe String
    , accessKeyLastUsed : Maybe AccessKeyLastUsed
    }



getAccessKeyLastUsedResponseDecoder : JD.Decoder GetAccessKeyLastUsedResponse
getAccessKeyLastUsedResponseDecoder =
    JDP.decode GetAccessKeyLastUsedResponse
        |> JDP.optional "userName" (JD.nullable JD.string) Nothing
        |> JDP.optional "accessKeyLastUsed" (JD.nullable accessKeyLastUsedDecoder) Nothing




{-| Type of HTTP response from getAccountAuthorizationDetails
-}
type alias GetAccountAuthorizationDetailsResponse =
    { userDetailList : Maybe (List UserDetail)
    , groupDetailList : Maybe (List GroupDetail)
    , roleDetailList : Maybe (List RoleDetail)
    , policies : Maybe (List ManagedPolicyDetail)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



getAccountAuthorizationDetailsResponseDecoder : JD.Decoder GetAccountAuthorizationDetailsResponse
getAccountAuthorizationDetailsResponseDecoder =
    JDP.decode GetAccountAuthorizationDetailsResponse
        |> JDP.optional "userDetailList" (JD.nullable (JD.list userDetailDecoder)) Nothing
        |> JDP.optional "groupDetailList" (JD.nullable (JD.list groupDetailDecoder)) Nothing
        |> JDP.optional "roleDetailList" (JD.nullable (JD.list roleDetailDecoder)) Nothing
        |> JDP.optional "policies" (JD.nullable (JD.list managedPolicyDetailDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getAccountPasswordPolicy
-}
type alias GetAccountPasswordPolicyResponse =
    { passwordPolicy : PasswordPolicy
    }



getAccountPasswordPolicyResponseDecoder : JD.Decoder GetAccountPasswordPolicyResponse
getAccountPasswordPolicyResponseDecoder =
    JDP.decode GetAccountPasswordPolicyResponse
        |> JDP.required "passwordPolicy" passwordPolicyDecoder




{-| Type of HTTP response from getAccountSummary
-}
type alias GetAccountSummaryResponse =
    { summaryMap : Maybe (Dict String Int)
    }



getAccountSummaryResponseDecoder : JD.Decoder GetAccountSummaryResponse
getAccountSummaryResponseDecoder =
    JDP.decode GetAccountSummaryResponse
        |> JDP.optional "summaryMap" (JD.nullable (JD.dict JD.int)) Nothing




{-| Type of HTTP response from getContextKeysForPolicy
-}
type alias GetContextKeysForPolicyResponse =
    { contextKeyNames : Maybe (List String)
    }



getContextKeysForPolicyResponseDecoder : JD.Decoder GetContextKeysForPolicyResponse
getContextKeysForPolicyResponseDecoder =
    JDP.decode GetContextKeysForPolicyResponse
        |> JDP.optional "contextKeyNames" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from getCredentialReport
-}
type alias GetCredentialReportResponse =
    { content : Maybe String
    , reportFormat : Maybe ReportFormatType
    , generatedTime : Maybe Date
    }



getCredentialReportResponseDecoder : JD.Decoder GetCredentialReportResponse
getCredentialReportResponseDecoder =
    JDP.decode GetCredentialReportResponse
        |> JDP.optional "content" (JD.nullable JD.string) Nothing
        |> JDP.optional "reportFormat" (JD.nullable reportFormatTypeDecoder) Nothing
        |> JDP.optional "generatedTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getGroupPolicy
-}
type alias GetGroupPolicyResponse =
    { groupName : String
    , policyName : String
    , policyDocument : String
    }



getGroupPolicyResponseDecoder : JD.Decoder GetGroupPolicyResponse
getGroupPolicyResponseDecoder =
    JDP.decode GetGroupPolicyResponse
        |> JDP.required "groupName" JD.string
        |> JDP.required "policyName" JD.string
        |> JDP.required "policyDocument" JD.string




{-| Type of HTTP response from getGroup
-}
type alias GetGroupResponse =
    { group : Group
    , users : (List User)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



getGroupResponseDecoder : JD.Decoder GetGroupResponse
getGroupResponseDecoder =
    JDP.decode GetGroupResponse
        |> JDP.required "group" groupDecoder
        |> JDP.required "users" (JD.list userDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getInstanceProfile
-}
type alias GetInstanceProfileResponse =
    { instanceProfile : InstanceProfile
    }



getInstanceProfileResponseDecoder : JD.Decoder GetInstanceProfileResponse
getInstanceProfileResponseDecoder =
    JDP.decode GetInstanceProfileResponse
        |> JDP.required "instanceProfile" instanceProfileDecoder




{-| Type of HTTP response from getLoginProfile
-}
type alias GetLoginProfileResponse =
    { loginProfile : LoginProfile
    }



getLoginProfileResponseDecoder : JD.Decoder GetLoginProfileResponse
getLoginProfileResponseDecoder =
    JDP.decode GetLoginProfileResponse
        |> JDP.required "loginProfile" loginProfileDecoder




{-| Type of HTTP response from getOpenIDConnectProvider
-}
type alias GetOpenIDConnectProviderResponse =
    { url : Maybe String
    , clientIDList : Maybe (List String)
    , thumbprintList : Maybe (List String)
    , createDate : Maybe Date
    }



getOpenIDConnectProviderResponseDecoder : JD.Decoder GetOpenIDConnectProviderResponse
getOpenIDConnectProviderResponseDecoder =
    JDP.decode GetOpenIDConnectProviderResponse
        |> JDP.optional "url" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientIDList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "thumbprintList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getPolicy
-}
type alias GetPolicyResponse =
    { policy : Maybe Policy
    }



getPolicyResponseDecoder : JD.Decoder GetPolicyResponse
getPolicyResponseDecoder =
    JDP.decode GetPolicyResponse
        |> JDP.optional "policy" (JD.nullable policyDecoder) Nothing




{-| Type of HTTP response from getPolicyVersion
-}
type alias GetPolicyVersionResponse =
    { policyVersion : Maybe PolicyVersion
    }



getPolicyVersionResponseDecoder : JD.Decoder GetPolicyVersionResponse
getPolicyVersionResponseDecoder =
    JDP.decode GetPolicyVersionResponse
        |> JDP.optional "policyVersion" (JD.nullable policyVersionDecoder) Nothing




{-| Type of HTTP response from getRolePolicy
-}
type alias GetRolePolicyResponse =
    { roleName : String
    , policyName : String
    , policyDocument : String
    }



getRolePolicyResponseDecoder : JD.Decoder GetRolePolicyResponse
getRolePolicyResponseDecoder =
    JDP.decode GetRolePolicyResponse
        |> JDP.required "roleName" JD.string
        |> JDP.required "policyName" JD.string
        |> JDP.required "policyDocument" JD.string




{-| Type of HTTP response from getRole
-}
type alias GetRoleResponse =
    { role : Role
    }



getRoleResponseDecoder : JD.Decoder GetRoleResponse
getRoleResponseDecoder =
    JDP.decode GetRoleResponse
        |> JDP.required "role" roleDecoder




{-| Type of HTTP response from getSAMLProvider
-}
type alias GetSAMLProviderResponse =
    { sAMLMetadataDocument : Maybe String
    , createDate : Maybe Date
    , validUntil : Maybe Date
    }



getSAMLProviderResponseDecoder : JD.Decoder GetSAMLProviderResponse
getSAMLProviderResponseDecoder =
    JDP.decode GetSAMLProviderResponse
        |> JDP.optional "sAMLMetadataDocument" (JD.nullable JD.string) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "validUntil" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from getSSHPublicKey
-}
type alias GetSSHPublicKeyResponse =
    { sSHPublicKey : Maybe SSHPublicKey
    }



getSSHPublicKeyResponseDecoder : JD.Decoder GetSSHPublicKeyResponse
getSSHPublicKeyResponseDecoder =
    JDP.decode GetSSHPublicKeyResponse
        |> JDP.optional "sSHPublicKey" (JD.nullable sSHPublicKeyDecoder) Nothing




{-| Type of HTTP response from getServerCertificate
-}
type alias GetServerCertificateResponse =
    { serverCertificate : ServerCertificate
    }



getServerCertificateResponseDecoder : JD.Decoder GetServerCertificateResponse
getServerCertificateResponseDecoder =
    JDP.decode GetServerCertificateResponse
        |> JDP.required "serverCertificate" serverCertificateDecoder




{-| Type of HTTP response from getUserPolicy
-}
type alias GetUserPolicyResponse =
    { userName : String
    , policyName : String
    , policyDocument : String
    }



getUserPolicyResponseDecoder : JD.Decoder GetUserPolicyResponse
getUserPolicyResponseDecoder =
    JDP.decode GetUserPolicyResponse
        |> JDP.required "userName" JD.string
        |> JDP.required "policyName" JD.string
        |> JDP.required "policyDocument" JD.string




{-| Type of HTTP response from getUser
-}
type alias GetUserResponse =
    { user : User
    }



getUserResponseDecoder : JD.Decoder GetUserResponse
getUserResponseDecoder =
    JDP.decode GetUserResponse
        |> JDP.required "user" userDecoder




{-| <p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>
-}
type alias Group =
    { path : String
    , groupName : String
    , groupId : String
    , arn : String
    , createDate : Date
    }



groupDecoder : JD.Decoder Group
groupDecoder =
    JDP.decode Group
        |> JDP.required "path" JD.string
        |> JDP.required "groupName" JD.string
        |> JDP.required "groupId" JD.string
        |> JDP.required "arn" JD.string
        |> JDP.required "createDate" JDX.date




{-| <p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-}
type alias GroupDetail =
    { path : Maybe String
    , groupName : Maybe String
    , groupId : Maybe String
    , arn : Maybe String
    , createDate : Maybe Date
    , groupPolicyList : Maybe (List PolicyDetail)
    , attachedManagedPolicies : Maybe (List AttachedPolicy)
    }



groupDetailDecoder : JD.Decoder GroupDetail
groupDetailDecoder =
    JDP.decode GroupDetail
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "groupPolicyList" (JD.nullable (JD.list policyDetailDecoder)) Nothing
        |> JDP.optional "attachedManagedPolicies" (JD.nullable (JD.list attachedPolicyDecoder)) Nothing




{-| <p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>
-}
type alias InstanceProfile =
    { path : String
    , instanceProfileName : String
    , instanceProfileId : String
    , arn : String
    , createDate : Date
    , roles : (List Role)
    }



instanceProfileDecoder : JD.Decoder InstanceProfile
instanceProfileDecoder =
    JDP.decode InstanceProfile
        |> JDP.required "path" JD.string
        |> JDP.required "instanceProfileName" JD.string
        |> JDP.required "instanceProfileId" JD.string
        |> JDP.required "arn" JD.string
        |> JDP.required "createDate" JDX.date
        |> JDP.required "roles" (JD.list roleDecoder)




{-| <p>The request was rejected because the authentication code was not recognized. The error message describes the specific error.</p>
-}
type alias InvalidAuthenticationCodeException =
    { message : Maybe String
    }



invalidAuthenticationCodeExceptionDecoder : JD.Decoder InvalidAuthenticationCodeException
invalidAuthenticationCodeExceptionDecoder =
    JDP.decode InvalidAuthenticationCodeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the certificate is invalid.</p>
-}
type alias InvalidCertificateException =
    { message : Maybe String
    }



invalidCertificateExceptionDecoder : JD.Decoder InvalidCertificateException
invalidCertificateExceptionDecoder =
    JDP.decode InvalidCertificateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
-}
type alias InvalidInputException =
    { message : Maybe String
    }



invalidInputExceptionDecoder : JD.Decoder InvalidInputException
invalidInputExceptionDecoder =
    JDP.decode InvalidInputException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the public key is malformed or otherwise invalid.</p>
-}
type alias InvalidPublicKeyException =
    { message : Maybe String
    }



invalidPublicKeyExceptionDecoder : JD.Decoder InvalidPublicKeyException
invalidPublicKeyExceptionDecoder =
    JDP.decode InvalidPublicKeyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the type of user for the transaction was incorrect.</p>
-}
type alias InvalidUserTypeException =
    { message : Maybe String
    }



invalidUserTypeExceptionDecoder : JD.Decoder InvalidUserTypeException
invalidUserTypeExceptionDecoder =
    JDP.decode InvalidUserTypeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the public key certificate and the private key do not match.</p>
-}
type alias KeyPairMismatchException =
    { message : Maybe String
    }



keyPairMismatchExceptionDecoder : JD.Decoder KeyPairMismatchException
keyPairMismatchExceptionDecoder =
    JDP.decode KeyPairMismatchException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAccessKeys
-}
type alias ListAccessKeysResponse =
    { accessKeyMetadata : (List AccessKeyMetadata)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listAccessKeysResponseDecoder : JD.Decoder ListAccessKeysResponse
listAccessKeysResponseDecoder =
    JDP.decode ListAccessKeysResponse
        |> JDP.required "accessKeyMetadata" (JD.list accessKeyMetadataDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAccountAliases
-}
type alias ListAccountAliasesResponse =
    { accountAliases : (List String)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listAccountAliasesResponseDecoder : JD.Decoder ListAccountAliasesResponse
listAccountAliasesResponseDecoder =
    JDP.decode ListAccountAliasesResponse
        |> JDP.required "accountAliases" (JD.list JD.string)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAttachedGroupPolicies
-}
type alias ListAttachedGroupPoliciesResponse =
    { attachedPolicies : Maybe (List AttachedPolicy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listAttachedGroupPoliciesResponseDecoder : JD.Decoder ListAttachedGroupPoliciesResponse
listAttachedGroupPoliciesResponseDecoder =
    JDP.decode ListAttachedGroupPoliciesResponse
        |> JDP.optional "attachedPolicies" (JD.nullable (JD.list attachedPolicyDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAttachedRolePolicies
-}
type alias ListAttachedRolePoliciesResponse =
    { attachedPolicies : Maybe (List AttachedPolicy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listAttachedRolePoliciesResponseDecoder : JD.Decoder ListAttachedRolePoliciesResponse
listAttachedRolePoliciesResponseDecoder =
    JDP.decode ListAttachedRolePoliciesResponse
        |> JDP.optional "attachedPolicies" (JD.nullable (JD.list attachedPolicyDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAttachedUserPolicies
-}
type alias ListAttachedUserPoliciesResponse =
    { attachedPolicies : Maybe (List AttachedPolicy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listAttachedUserPoliciesResponseDecoder : JD.Decoder ListAttachedUserPoliciesResponse
listAttachedUserPoliciesResponseDecoder =
    JDP.decode ListAttachedUserPoliciesResponse
        |> JDP.optional "attachedPolicies" (JD.nullable (JD.list attachedPolicyDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listEntitiesForPolicy
-}
type alias ListEntitiesForPolicyResponse =
    { policyGroups : Maybe (List PolicyGroup)
    , policyUsers : Maybe (List PolicyUser)
    , policyRoles : Maybe (List PolicyRole)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listEntitiesForPolicyResponseDecoder : JD.Decoder ListEntitiesForPolicyResponse
listEntitiesForPolicyResponseDecoder =
    JDP.decode ListEntitiesForPolicyResponse
        |> JDP.optional "policyGroups" (JD.nullable (JD.list policyGroupDecoder)) Nothing
        |> JDP.optional "policyUsers" (JD.nullable (JD.list policyUserDecoder)) Nothing
        |> JDP.optional "policyRoles" (JD.nullable (JD.list policyRoleDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listGroupPolicies
-}
type alias ListGroupPoliciesResponse =
    { policyNames : (List String)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listGroupPoliciesResponseDecoder : JD.Decoder ListGroupPoliciesResponse
listGroupPoliciesResponseDecoder =
    JDP.decode ListGroupPoliciesResponse
        |> JDP.required "policyNames" (JD.list JD.string)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listGroupsForUser
-}
type alias ListGroupsForUserResponse =
    { groups : (List Group)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listGroupsForUserResponseDecoder : JD.Decoder ListGroupsForUserResponse
listGroupsForUserResponseDecoder =
    JDP.decode ListGroupsForUserResponse
        |> JDP.required "groups" (JD.list groupDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listGroups
-}
type alias ListGroupsResponse =
    { groups : (List Group)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listGroupsResponseDecoder : JD.Decoder ListGroupsResponse
listGroupsResponseDecoder =
    JDP.decode ListGroupsResponse
        |> JDP.required "groups" (JD.list groupDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listInstanceProfilesForRole
-}
type alias ListInstanceProfilesForRoleResponse =
    { instanceProfiles : (List InstanceProfile)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listInstanceProfilesForRoleResponseDecoder : JD.Decoder ListInstanceProfilesForRoleResponse
listInstanceProfilesForRoleResponseDecoder =
    JDP.decode ListInstanceProfilesForRoleResponse
        |> JDP.required "instanceProfiles" (JD.list instanceProfileDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listInstanceProfiles
-}
type alias ListInstanceProfilesResponse =
    { instanceProfiles : (List InstanceProfile)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listInstanceProfilesResponseDecoder : JD.Decoder ListInstanceProfilesResponse
listInstanceProfilesResponseDecoder =
    JDP.decode ListInstanceProfilesResponse
        |> JDP.required "instanceProfiles" (JD.list instanceProfileDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listMFADevices
-}
type alias ListMFADevicesResponse =
    { mFADevices : (List MFADevice)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listMFADevicesResponseDecoder : JD.Decoder ListMFADevicesResponse
listMFADevicesResponseDecoder =
    JDP.decode ListMFADevicesResponse
        |> JDP.required "mFADevices" (JD.list mFADeviceDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listOpenIDConnectProviders
-}
type alias ListOpenIDConnectProvidersResponse =
    { openIDConnectProviderList : Maybe (List OpenIDConnectProviderListEntry)
    }



listOpenIDConnectProvidersResponseDecoder : JD.Decoder ListOpenIDConnectProvidersResponse
listOpenIDConnectProvidersResponseDecoder =
    JDP.decode ListOpenIDConnectProvidersResponse
        |> JDP.optional "openIDConnectProviderList" (JD.nullable (JD.list openIDConnectProviderListEntryDecoder)) Nothing




{-| Type of HTTP response from listPolicies
-}
type alias ListPoliciesResponse =
    { policies : Maybe (List Policy)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listPoliciesResponseDecoder : JD.Decoder ListPoliciesResponse
listPoliciesResponseDecoder =
    JDP.decode ListPoliciesResponse
        |> JDP.optional "policies" (JD.nullable (JD.list policyDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPolicyVersions
-}
type alias ListPolicyVersionsResponse =
    { versions : Maybe (List PolicyVersion)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listPolicyVersionsResponseDecoder : JD.Decoder ListPolicyVersionsResponse
listPolicyVersionsResponseDecoder =
    JDP.decode ListPolicyVersionsResponse
        |> JDP.optional "versions" (JD.nullable (JD.list policyVersionDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRolePolicies
-}
type alias ListRolePoliciesResponse =
    { policyNames : (List String)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listRolePoliciesResponseDecoder : JD.Decoder ListRolePoliciesResponse
listRolePoliciesResponseDecoder =
    JDP.decode ListRolePoliciesResponse
        |> JDP.required "policyNames" (JD.list JD.string)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRoles
-}
type alias ListRolesResponse =
    { roles : (List Role)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listRolesResponseDecoder : JD.Decoder ListRolesResponse
listRolesResponseDecoder =
    JDP.decode ListRolesResponse
        |> JDP.required "roles" (JD.list roleDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listSAMLProviders
-}
type alias ListSAMLProvidersResponse =
    { sAMLProviderList : Maybe (List SAMLProviderListEntry)
    }



listSAMLProvidersResponseDecoder : JD.Decoder ListSAMLProvidersResponse
listSAMLProvidersResponseDecoder =
    JDP.decode ListSAMLProvidersResponse
        |> JDP.optional "sAMLProviderList" (JD.nullable (JD.list sAMLProviderListEntryDecoder)) Nothing




{-| Type of HTTP response from listSSHPublicKeys
-}
type alias ListSSHPublicKeysResponse =
    { sSHPublicKeys : Maybe (List SSHPublicKeyMetadata)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listSSHPublicKeysResponseDecoder : JD.Decoder ListSSHPublicKeysResponse
listSSHPublicKeysResponseDecoder =
    JDP.decode ListSSHPublicKeysResponse
        |> JDP.optional "sSHPublicKeys" (JD.nullable (JD.list sSHPublicKeyMetadataDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listServerCertificates
-}
type alias ListServerCertificatesResponse =
    { serverCertificateMetadataList : (List ServerCertificateMetadata)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listServerCertificatesResponseDecoder : JD.Decoder ListServerCertificatesResponse
listServerCertificatesResponseDecoder =
    JDP.decode ListServerCertificatesResponse
        |> JDP.required "serverCertificateMetadataList" (JD.list serverCertificateMetadataDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listServiceSpecificCredentials
-}
type alias ListServiceSpecificCredentialsResponse =
    { serviceSpecificCredentials : Maybe (List ServiceSpecificCredentialMetadata)
    }



listServiceSpecificCredentialsResponseDecoder : JD.Decoder ListServiceSpecificCredentialsResponse
listServiceSpecificCredentialsResponseDecoder =
    JDP.decode ListServiceSpecificCredentialsResponse
        |> JDP.optional "serviceSpecificCredentials" (JD.nullable (JD.list serviceSpecificCredentialMetadataDecoder)) Nothing




{-| Type of HTTP response from listSigningCertificates
-}
type alias ListSigningCertificatesResponse =
    { certificates : (List SigningCertificate)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listSigningCertificatesResponseDecoder : JD.Decoder ListSigningCertificatesResponse
listSigningCertificatesResponseDecoder =
    JDP.decode ListSigningCertificatesResponse
        |> JDP.required "certificates" (JD.list signingCertificateDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUserPolicies
-}
type alias ListUserPoliciesResponse =
    { policyNames : (List String)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listUserPoliciesResponseDecoder : JD.Decoder ListUserPoliciesResponse
listUserPoliciesResponseDecoder =
    JDP.decode ListUserPoliciesResponse
        |> JDP.required "policyNames" (JD.list JD.string)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUsers
-}
type alias ListUsersResponse =
    { users : (List User)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listUsersResponseDecoder : JD.Decoder ListUsersResponse
listUsersResponseDecoder =
    JDP.decode ListUsersResponse
        |> JDP.required "users" (JD.list userDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listVirtualMFADevices
-}
type alias ListVirtualMFADevicesResponse =
    { virtualMFADevices : (List VirtualMFADevice)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



listVirtualMFADevicesResponseDecoder : JD.Decoder ListVirtualMFADevicesResponse
listVirtualMFADevicesResponseDecoder =
    JDP.decode ListVirtualMFADevicesResponse
        |> JDP.required "virtualMFADevices" (JD.list virtualMFADeviceDecoder)
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> actions. </p>
-}
type alias LoginProfile =
    { userName : String
    , createDate : Date
    , passwordResetRequired : Maybe Bool
    }



loginProfileDecoder : JD.Decoder LoginProfile
loginProfileDecoder =
    JDP.decode LoginProfile
        |> JDP.required "userName" JD.string
        |> JDP.required "createDate" JDX.date
        |> JDP.optional "passwordResetRequired" (JD.nullable JD.bool) Nothing




{-| <p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> action.</p>
-}
type alias MFADevice =
    { userName : String
    , serialNumber : String
    , enableDate : Date
    }



mFADeviceDecoder : JD.Decoder MFADevice
mFADeviceDecoder =
    JDP.decode MFADevice
        |> JDP.required "userName" JD.string
        |> JDP.required "serialNumber" JD.string
        |> JDP.required "enableDate" JDX.date




{-| <p>The request was rejected because the certificate was malformed or expired. The error message describes the specific error.</p>
-}
type alias MalformedCertificateException =
    { message : Maybe String
    }



malformedCertificateExceptionDecoder : JD.Decoder MalformedCertificateException
malformedCertificateExceptionDecoder =
    JDP.decode MalformedCertificateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the policy document was malformed. The error message describes the specific error.</p>
-}
type alias MalformedPolicyDocumentException =
    { message : Maybe String
    }



malformedPolicyDocumentExceptionDecoder : JD.Decoder MalformedPolicyDocumentException
malformedPolicyDocumentExceptionDecoder =
    JDP.decode MalformedPolicyDocumentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-}
type alias ManagedPolicyDetail =
    { policyName : Maybe String
    , policyId : Maybe String
    , arn : Maybe String
    , path : Maybe String
    , defaultVersionId : Maybe String
    , attachmentCount : Maybe Int
    , isAttachable : Maybe Bool
    , description : Maybe String
    , createDate : Maybe Date
    , updateDate : Maybe Date
    , policyVersionList : Maybe (List PolicyVersion)
    }



managedPolicyDetailDecoder : JD.Decoder ManagedPolicyDetail
managedPolicyDetailDecoder =
    JDP.decode ManagedPolicyDetail
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultVersionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "attachmentCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "isAttachable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updateDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "policyVersionList" (JD.nullable (JD.list policyVersionDecoder)) Nothing




{-| <p>The request was rejected because it referenced an entity that does not exist. The error message describes the entity.</p>
-}
type alias NoSuchEntityException =
    { message : Maybe String
    }



noSuchEntityExceptionDecoder : JD.Decoder NoSuchEntityException
noSuchEntityExceptionDecoder =
    JDP.decode NoSuchEntityException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>
-}
type alias OpenIDConnectProviderListEntry =
    { arn : Maybe String
    }



openIDConnectProviderListEntryDecoder : JD.Decoder OpenIDConnectProviderListEntry
openIDConnectProviderListEntryDecoder =
    JDP.decode OpenIDConnectProviderListEntry
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing




{-| <p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> action. </p>
-}
type alias PasswordPolicy =
    { minimumPasswordLength : Maybe Int
    , requireSymbols : Maybe Bool
    , requireNumbers : Maybe Bool
    , requireUppercaseCharacters : Maybe Bool
    , requireLowercaseCharacters : Maybe Bool
    , allowUsersToChangePassword : Maybe Bool
    , expirePasswords : Maybe Bool
    , maxPasswordAge : Maybe Int
    , passwordReusePrevention : Maybe Int
    , hardExpiry : Maybe Bool
    }



passwordPolicyDecoder : JD.Decoder PasswordPolicy
passwordPolicyDecoder =
    JDP.decode PasswordPolicy
        |> JDP.optional "minimumPasswordLength" (JD.nullable JD.int) Nothing
        |> JDP.optional "requireSymbols" (JD.nullable JD.bool) Nothing
        |> JDP.optional "requireNumbers" (JD.nullable JD.bool) Nothing
        |> JDP.optional "requireUppercaseCharacters" (JD.nullable JD.bool) Nothing
        |> JDP.optional "requireLowercaseCharacters" (JD.nullable JD.bool) Nothing
        |> JDP.optional "allowUsersToChangePassword" (JD.nullable JD.bool) Nothing
        |> JDP.optional "expirePasswords" (JD.nullable JD.bool) Nothing
        |> JDP.optional "maxPasswordAge" (JD.nullable JD.int) Nothing
        |> JDP.optional "passwordReusePrevention" (JD.nullable JD.int) Nothing
        |> JDP.optional "hardExpiry" (JD.nullable JD.bool) Nothing




{-| <p>The request was rejected because the provided password did not meet the requirements imposed by the account password policy.</p>
-}
type alias PasswordPolicyViolationException =
    { message : Maybe String
    }



passwordPolicyViolationExceptionDecoder : JD.Decoder PasswordPolicyViolationException
passwordPolicyViolationExceptionDecoder =
    JDP.decode PasswordPolicyViolationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-}
type alias Policy =
    { policyName : Maybe String
    , policyId : Maybe String
    , arn : Maybe String
    , path : Maybe String
    , defaultVersionId : Maybe String
    , attachmentCount : Maybe Int
    , isAttachable : Maybe Bool
    , description : Maybe String
    , createDate : Maybe Date
    , updateDate : Maybe Date
    }



policyDecoder : JD.Decoder Policy
policyDecoder =
    JDP.decode Policy
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultVersionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "attachmentCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "isAttachable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "updateDate" (JD.nullable JDX.date) Nothing




{-| <p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-}
type alias PolicyDetail =
    { policyName : Maybe String
    , policyDocument : Maybe String
    }



policyDetailDecoder : JD.Decoder PolicyDetail
policyDetailDecoder =
    JDP.decode PolicyDetail
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyDocument" (JD.nullable JD.string) Nothing




{-| One of

* `PolicyEvaluationDecisionType_allowed`
* `PolicyEvaluationDecisionType_explicitDeny`
* `PolicyEvaluationDecisionType_implicitDeny`

-}
type PolicyEvaluationDecisionType
    = PolicyEvaluationDecisionType_allowed
    | PolicyEvaluationDecisionType_explicitDeny
    | PolicyEvaluationDecisionType_implicitDeny



policyEvaluationDecisionTypeDecoder : JD.Decoder PolicyEvaluationDecisionType
policyEvaluationDecisionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "allowed" ->
                        JD.succeed PolicyEvaluationDecisionType_allowed

                    "explicitDeny" ->
                        JD.succeed PolicyEvaluationDecisionType_explicitDeny

                    "implicitDeny" ->
                        JD.succeed PolicyEvaluationDecisionType_implicitDeny


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request failed because a provided policy could not be successfully evaluated. An additional detail message indicates the source of the failure.</p>
-}
type alias PolicyEvaluationException =
    { message : Maybe String
    }



policyEvaluationExceptionDecoder : JD.Decoder PolicyEvaluationException
policyEvaluationExceptionDecoder =
    JDP.decode PolicyEvaluationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-}
type alias PolicyGroup =
    { groupName : Maybe String
    , groupId : Maybe String
    }



policyGroupDecoder : JD.Decoder PolicyGroup
policyGroupDecoder =
    JDP.decode PolicyGroup
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "groupId" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-}
type alias PolicyRole =
    { roleName : Maybe String
    , roleId : Maybe String
    }



policyRoleDecoder : JD.Decoder PolicyRole
policyRoleDecoder =
    JDP.decode PolicyRole
        |> JDP.optional "roleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleId" (JD.nullable JD.string) Nothing




{-| One of

* `PolicySourceType_user`
* `PolicySourceType_group`
* `PolicySourceType_role`
* `PolicySourceType_aws-managed`
* `PolicySourceType_user-managed`
* `PolicySourceType_resource`
* `PolicySourceType_none`

-}
type PolicySourceType
    = PolicySourceType_user
    | PolicySourceType_group
    | PolicySourceType_role
    | PolicySourceType_aws_managed
    | PolicySourceType_user_managed
    | PolicySourceType_resource
    | PolicySourceType_none



policySourceTypeDecoder : JD.Decoder PolicySourceType
policySourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "user" ->
                        JD.succeed PolicySourceType_user

                    "group" ->
                        JD.succeed PolicySourceType_group

                    "role" ->
                        JD.succeed PolicySourceType_role

                    "aws_managed" ->
                        JD.succeed PolicySourceType_aws_managed

                    "user_managed" ->
                        JD.succeed PolicySourceType_user_managed

                    "resource" ->
                        JD.succeed PolicySourceType_resource

                    "none" ->
                        JD.succeed PolicySourceType_none


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-}
type alias PolicyUser =
    { userName : Maybe String
    , userId : Maybe String
    }



policyUserDecoder : JD.Decoder PolicyUser
policyUserDecoder =
    JDP.decode PolicyUser
        |> JDP.optional "userName" (JD.nullable JD.string) Nothing
        |> JDP.optional "userId" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-}
type alias PolicyVersion =
    { document : Maybe String
    , versionId : Maybe String
    , isDefaultVersion : Maybe Bool
    , createDate : Maybe Date
    }



policyVersionDecoder : JD.Decoder PolicyVersion
policyVersionDecoder =
    JDP.decode PolicyVersion
        |> JDP.optional "document" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isDefaultVersion" (JD.nullable JD.bool) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing




{-| <p>Contains the row and column of a location of a <code>Statement</code> element in a policy document.</p> <p>This data type is used as a member of the <code> <a>Statement</a> </code> type.</p>
-}
type alias Position =
    { line : Maybe Int
    , column : Maybe Int
    }



positionDecoder : JD.Decoder Position
positionDecoder =
    JDP.decode Position
        |> JDP.optional "line" (JD.nullable JD.int) Nothing
        |> JDP.optional "column" (JD.nullable JD.int) Nothing




{-| One of

* `ReportFormatType_text/csv`

-}
type ReportFormatType
    = ReportFormatType_text_csv



reportFormatTypeDecoder : JD.Decoder ReportFormatType
reportFormatTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "text_csv" ->
                        JD.succeed ReportFormatType_text_csv


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ReportStateType_STARTED`
* `ReportStateType_INPROGRESS`
* `ReportStateType_COMPLETE`

-}
type ReportStateType
    = ReportStateType_STARTED
    | ReportStateType_INPROGRESS
    | ReportStateType_COMPLETE



reportStateTypeDecoder : JD.Decoder ReportStateType
reportStateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STARTED" ->
                        JD.succeed ReportStateType_STARTED

                    "INPROGRESS" ->
                        JD.succeed ReportStateType_INPROGRESS

                    "COMPLETE" ->
                        JD.succeed ReportStateType_COMPLETE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from resetServiceSpecificCredential
-}
type alias ResetServiceSpecificCredentialResponse =
    { serviceSpecificCredential : Maybe ServiceSpecificCredential
    }



resetServiceSpecificCredentialResponseDecoder : JD.Decoder ResetServiceSpecificCredentialResponse
resetServiceSpecificCredentialResponseDecoder =
    JDP.decode ResetServiceSpecificCredentialResponse
        |> JDP.optional "serviceSpecificCredential" (JD.nullable serviceSpecificCredentialDecoder) Nothing




{-| <p>Contains the result of the simulation of a single API action call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>
-}
type alias ResourceSpecificResult =
    { evalResourceName : String
    , evalResourceDecision : PolicyEvaluationDecisionType
    , matchedStatements : Maybe (List Statement)
    , missingContextValues : Maybe (List String)
    , evalDecisionDetails : Maybe (Dict String PolicyEvaluationDecisionType)
    }



resourceSpecificResultDecoder : JD.Decoder ResourceSpecificResult
resourceSpecificResultDecoder =
    JDP.decode ResourceSpecificResult
        |> JDP.required "evalResourceName" JD.string
        |> JDP.required "evalResourceDecision" policyEvaluationDecisionTypeDecoder
        |> JDP.optional "matchedStatements" (JD.nullable (JD.list statementDecoder)) Nothing
        |> JDP.optional "missingContextValues" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "evalDecisionDetails" (JD.nullable (JD.dict policyEvaluationDecisionTypeDecoder)) Nothing




{-| <p>Contains information about an IAM role.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateRole</a> </p> </li> <li> <p> <a>GetRole</a> </p> </li> <li> <p> <a>ListRoles</a> </p> </li> </ul>
-}
type alias Role =
    { path : String
    , roleName : String
    , roleId : String
    , arn : String
    , createDate : Date
    , assumeRolePolicyDocument : Maybe String
    }



roleDecoder : JD.Decoder Role
roleDecoder =
    JDP.decode Role
        |> JDP.required "path" JD.string
        |> JDP.required "roleName" JD.string
        |> JDP.required "roleId" JD.string
        |> JDP.required "arn" JD.string
        |> JDP.required "createDate" JDX.date
        |> JDP.optional "assumeRolePolicyDocument" (JD.nullable JD.string) Nothing




{-| <p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-}
type alias RoleDetail =
    { path : Maybe String
    , roleName : Maybe String
    , roleId : Maybe String
    , arn : Maybe String
    , createDate : Maybe Date
    , assumeRolePolicyDocument : Maybe String
    , instanceProfileList : Maybe (List InstanceProfile)
    , rolePolicyList : Maybe (List PolicyDetail)
    , attachedManagedPolicies : Maybe (List AttachedPolicy)
    }



roleDetailDecoder : JD.Decoder RoleDetail
roleDetailDecoder =
    JDP.decode RoleDetail
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "assumeRolePolicyDocument" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceProfileList" (JD.nullable (JD.list instanceProfileDecoder)) Nothing
        |> JDP.optional "rolePolicyList" (JD.nullable (JD.list policyDetailDecoder)) Nothing
        |> JDP.optional "attachedManagedPolicies" (JD.nullable (JD.list attachedPolicyDecoder)) Nothing




{-| <p>Contains the list of SAML providers for this account.</p>
-}
type alias SAMLProviderListEntry =
    { arn : Maybe String
    , validUntil : Maybe Date
    , createDate : Maybe Date
    }



sAMLProviderListEntryDecoder : JD.Decoder SAMLProviderListEntry
sAMLProviderListEntryDecoder =
    JDP.decode SAMLProviderListEntry
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "validUntil" (JD.nullable JDX.date) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing




{-| <p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> actions. </p>
-}
type alias SSHPublicKey =
    { userName : String
    , sSHPublicKeyId : String
    , fingerprint : String
    , sSHPublicKeyBody : String
    , status : StatusType
    , uploadDate : Maybe Date
    }



sSHPublicKeyDecoder : JD.Decoder SSHPublicKey
sSHPublicKeyDecoder =
    JDP.decode SSHPublicKey
        |> JDP.required "userName" JD.string
        |> JDP.required "sSHPublicKeyId" JD.string
        |> JDP.required "fingerprint" JD.string
        |> JDP.required "sSHPublicKeyBody" JD.string
        |> JDP.required "status" statusTypeDecoder
        |> JDP.optional "uploadDate" (JD.nullable JDX.date) Nothing




{-| <p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> action.</p>
-}
type alias SSHPublicKeyMetadata =
    { userName : String
    , sSHPublicKeyId : String
    , status : StatusType
    , uploadDate : Date
    }



sSHPublicKeyMetadataDecoder : JD.Decoder SSHPublicKeyMetadata
sSHPublicKeyMetadataDecoder =
    JDP.decode SSHPublicKeyMetadata
        |> JDP.required "userName" JD.string
        |> JDP.required "sSHPublicKeyId" JD.string
        |> JDP.required "status" statusTypeDecoder
        |> JDP.required "uploadDate" JDX.date




{-| <p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> action. </p>
-}
type alias ServerCertificate =
    { serverCertificateMetadata : ServerCertificateMetadata
    , certificateBody : String
    , certificateChain : Maybe String
    }



serverCertificateDecoder : JD.Decoder ServerCertificate
serverCertificateDecoder =
    JDP.decode ServerCertificate
        |> JDP.required "serverCertificateMetadata" serverCertificateMetadataDecoder
        |> JDP.required "certificateBody" JD.string
        |> JDP.optional "certificateChain" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> actions. </p>
-}
type alias ServerCertificateMetadata =
    { path : String
    , serverCertificateName : String
    , serverCertificateId : String
    , arn : String
    , uploadDate : Maybe Date
    , expiration : Maybe Date
    }



serverCertificateMetadataDecoder : JD.Decoder ServerCertificateMetadata
serverCertificateMetadataDecoder =
    JDP.decode ServerCertificateMetadata
        |> JDP.required "path" JD.string
        |> JDP.required "serverCertificateName" JD.string
        |> JDP.required "serverCertificateId" JD.string
        |> JDP.required "arn" JD.string
        |> JDP.optional "uploadDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "expiration" (JD.nullable JDX.date) Nothing




{-| <p>The request processing has failed because of an unknown error, exception or failure.</p>
-}
type alias ServiceFailureException =
    { message : Maybe String
    }



serviceFailureExceptionDecoder : JD.Decoder ServiceFailureException
serviceFailureExceptionDecoder =
    JDP.decode ServiceFailureException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified service does not support service-specific credentials.</p>
-}
type alias ServiceNotSupportedException =
    { message : Maybe String
    }



serviceNotSupportedExceptionDecoder : JD.Decoder ServiceNotSupportedException
serviceNotSupportedExceptionDecoder =
    JDP.decode ServiceNotSupportedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains the details of a service specific credential.</p>
-}
type alias ServiceSpecificCredential =
    { createDate : Date
    , serviceName : String
    , serviceUserName : String
    , servicePassword : String
    , serviceSpecificCredentialId : String
    , userName : String
    , status : StatusType
    }



serviceSpecificCredentialDecoder : JD.Decoder ServiceSpecificCredential
serviceSpecificCredentialDecoder =
    JDP.decode ServiceSpecificCredential
        |> JDP.required "createDate" JDX.date
        |> JDP.required "serviceName" JD.string
        |> JDP.required "serviceUserName" JD.string
        |> JDP.required "servicePassword" JD.string
        |> JDP.required "serviceSpecificCredentialId" JD.string
        |> JDP.required "userName" JD.string
        |> JDP.required "status" statusTypeDecoder




{-| <p>Contains additional details about a service-specific credential.</p>
-}
type alias ServiceSpecificCredentialMetadata =
    { userName : String
    , status : StatusType
    , serviceUserName : String
    , createDate : Date
    , serviceSpecificCredentialId : String
    , serviceName : String
    }



serviceSpecificCredentialMetadataDecoder : JD.Decoder ServiceSpecificCredentialMetadata
serviceSpecificCredentialMetadataDecoder =
    JDP.decode ServiceSpecificCredentialMetadata
        |> JDP.required "userName" JD.string
        |> JDP.required "status" statusTypeDecoder
        |> JDP.required "serviceUserName" JD.string
        |> JDP.required "createDate" JDX.date
        |> JDP.required "serviceSpecificCredentialId" JD.string
        |> JDP.required "serviceName" JD.string




{-| <p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> actions. </p>
-}
type alias SigningCertificate =
    { userName : String
    , certificateId : String
    , certificateBody : String
    , status : StatusType
    , uploadDate : Maybe Date
    }



signingCertificateDecoder : JD.Decoder SigningCertificate
signingCertificateDecoder =
    JDP.decode SigningCertificate
        |> JDP.required "userName" JD.string
        |> JDP.required "certificateId" JD.string
        |> JDP.required "certificateBody" JD.string
        |> JDP.required "status" statusTypeDecoder
        |> JDP.optional "uploadDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from simulatePolicy
-}
type alias SimulatePolicyResponse =
    { evaluationResults : Maybe (List EvaluationResult)
    , isTruncated : Maybe Bool
    , marker : Maybe String
    }



simulatePolicyResponseDecoder : JD.Decoder SimulatePolicyResponse
simulatePolicyResponseDecoder =
    JDP.decode SimulatePolicyResponse
        |> JDP.optional "evaluationResults" (JD.nullable (JD.list evaluationResultDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Contains a reference to a <code>Statement</code> element in a policy document that determines the result of the simulation.</p> <p>This data type is used by the <code>MatchedStatements</code> member of the <code> <a>EvaluationResult</a> </code> type.</p>
-}
type alias Statement =
    { sourcePolicyId : Maybe String
    , sourcePolicyType : Maybe PolicySourceType
    , startPosition : Maybe Position
    , endPosition : Maybe Position
    }



statementDecoder : JD.Decoder Statement
statementDecoder =
    JDP.decode Statement
        |> JDP.optional "sourcePolicyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourcePolicyType" (JD.nullable policySourceTypeDecoder) Nothing
        |> JDP.optional "startPosition" (JD.nullable positionDecoder) Nothing
        |> JDP.optional "endPosition" (JD.nullable positionDecoder) Nothing




{-| <p>The request was rejected because the public key encoding format is unsupported or unrecognized.</p>
-}
type alias UnrecognizedPublicKeyEncodingException =
    { message : Maybe String
    }



unrecognizedPublicKeyEncodingExceptionDecoder : JD.Decoder UnrecognizedPublicKeyEncodingException
unrecognizedPublicKeyEncodingExceptionDecoder =
    JDP.decode UnrecognizedPublicKeyEncodingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateSAMLProvider
-}
type alias UpdateSAMLProviderResponse =
    { sAMLProviderArn : Maybe String
    }



updateSAMLProviderResponseDecoder : JD.Decoder UpdateSAMLProviderResponse
updateSAMLProviderResponseDecoder =
    JDP.decode UpdateSAMLProviderResponse
        |> JDP.optional "sAMLProviderArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from uploadSSHPublicKey
-}
type alias UploadSSHPublicKeyResponse =
    { sSHPublicKey : Maybe SSHPublicKey
    }



uploadSSHPublicKeyResponseDecoder : JD.Decoder UploadSSHPublicKeyResponse
uploadSSHPublicKeyResponseDecoder =
    JDP.decode UploadSSHPublicKeyResponse
        |> JDP.optional "sSHPublicKey" (JD.nullable sSHPublicKeyDecoder) Nothing




{-| Type of HTTP response from uploadServerCertificate
-}
type alias UploadServerCertificateResponse =
    { serverCertificateMetadata : Maybe ServerCertificateMetadata
    }



uploadServerCertificateResponseDecoder : JD.Decoder UploadServerCertificateResponse
uploadServerCertificateResponseDecoder =
    JDP.decode UploadServerCertificateResponse
        |> JDP.optional "serverCertificateMetadata" (JD.nullable serverCertificateMetadataDecoder) Nothing




{-| Type of HTTP response from uploadSigningCertificate
-}
type alias UploadSigningCertificateResponse =
    { certificate : SigningCertificate
    }



uploadSigningCertificateResponseDecoder : JD.Decoder UploadSigningCertificateResponse
uploadSigningCertificateResponseDecoder =
    JDP.decode UploadSigningCertificateResponse
        |> JDP.required "certificate" signingCertificateDecoder




{-| <p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>
-}
type alias User =
    { path : String
    , userName : String
    , userId : String
    , arn : String
    , createDate : Date
    , passwordLastUsed : Maybe Date
    }



userDecoder : JD.Decoder User
userDecoder =
    JDP.decode User
        |> JDP.required "path" JD.string
        |> JDP.required "userName" JD.string
        |> JDP.required "userId" JD.string
        |> JDP.required "arn" JD.string
        |> JDP.required "createDate" JDX.date
        |> JDP.optional "passwordLastUsed" (JD.nullable JDX.date) Nothing




{-| <p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-}
type alias UserDetail =
    { path : Maybe String
    , userName : Maybe String
    , userId : Maybe String
    , arn : Maybe String
    , createDate : Maybe Date
    , userPolicyList : Maybe (List PolicyDetail)
    , groupList : Maybe (List String)
    , attachedManagedPolicies : Maybe (List AttachedPolicy)
    }



userDetailDecoder : JD.Decoder UserDetail
userDetailDecoder =
    JDP.decode UserDetail
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "userName" (JD.nullable JD.string) Nothing
        |> JDP.optional "userId" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "userPolicyList" (JD.nullable (JD.list policyDetailDecoder)) Nothing
        |> JDP.optional "groupList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "attachedManagedPolicies" (JD.nullable (JD.list attachedPolicyDecoder)) Nothing




{-| <p>Contains information about a virtual MFA device.</p>
-}
type alias VirtualMFADevice =
    { serialNumber : String
    , base32StringSeed : Maybe String
    , qRCodePNG : Maybe String
    , user : Maybe User
    , enableDate : Maybe Date
    }



virtualMFADeviceDecoder : JD.Decoder VirtualMFADevice
virtualMFADeviceDecoder =
    JDP.decode VirtualMFADevice
        |> JDP.required "serialNumber" JD.string
        |> JDP.optional "base32StringSeed" (JD.nullable JD.string) Nothing
        |> JDP.optional "qRCodePNG" (JD.nullable JD.string) Nothing
        |> JDP.optional "user" (JD.nullable userDecoder) Nothing
        |> JDP.optional "enableDate" (JD.nullable JDX.date) Nothing




{-| One of

* `AssignmentStatusType_Assigned`
* `AssignmentStatusType_Unassigned`
* `AssignmentStatusType_Any`

-}
type AssignmentStatusType
    = AssignmentStatusType_Assigned
    | AssignmentStatusType_Unassigned
    | AssignmentStatusType_Any



assignmentStatusTypeDecoder : JD.Decoder AssignmentStatusType
assignmentStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Assigned" ->
                        JD.succeed AssignmentStatusType_Assigned

                    "Unassigned" ->
                        JD.succeed AssignmentStatusType_Unassigned

                    "Any" ->
                        JD.succeed AssignmentStatusType_Any


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `EncodingType_SSH`
* `EncodingType_PEM`

-}
type EncodingType
    = EncodingType_SSH
    | EncodingType_PEM



encodingTypeDecoder : JD.Decoder EncodingType
encodingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SSH" ->
                        JD.succeed EncodingType_SSH

                    "PEM" ->
                        JD.succeed EncodingType_PEM


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PolicyScopeType_All`
* `PolicyScopeType_AWS`
* `PolicyScopeType_Local`

-}
type PolicyScopeType
    = PolicyScopeType_All
    | PolicyScopeType_AWS
    | PolicyScopeType_Local



policyScopeTypeDecoder : JD.Decoder PolicyScopeType
policyScopeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "All" ->
                        JD.succeed PolicyScopeType_All

                    "AWS" ->
                        JD.succeed PolicyScopeType_AWS

                    "Local" ->
                        JD.succeed PolicyScopeType_Local


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `StatusType_Active`
* `StatusType_Inactive`

-}
type StatusType
    = StatusType_Active
    | StatusType_Inactive



statusTypeDecoder : JD.Decoder StatusType
statusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Active" ->
                        JD.succeed StatusType_Active

                    "Inactive" ->
                        JD.succeed StatusType_Inactive


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `SummaryKeyType_Users`
* `SummaryKeyType_UsersQuota`
* `SummaryKeyType_Groups`
* `SummaryKeyType_GroupsQuota`
* `SummaryKeyType_ServerCertificates`
* `SummaryKeyType_ServerCertificatesQuota`
* `SummaryKeyType_UserPolicySizeQuota`
* `SummaryKeyType_GroupPolicySizeQuota`
* `SummaryKeyType_GroupsPerUserQuota`
* `SummaryKeyType_SigningCertificatesPerUserQuota`
* `SummaryKeyType_AccessKeysPerUserQuota`
* `SummaryKeyType_MFADevices`
* `SummaryKeyType_MFADevicesInUse`
* `SummaryKeyType_AccountMFAEnabled`
* `SummaryKeyType_AccountAccessKeysPresent`
* `SummaryKeyType_AccountSigningCertificatesPresent`
* `SummaryKeyType_AttachedPoliciesPerGroupQuota`
* `SummaryKeyType_AttachedPoliciesPerRoleQuota`
* `SummaryKeyType_AttachedPoliciesPerUserQuota`
* `SummaryKeyType_Policies`
* `SummaryKeyType_PoliciesQuota`
* `SummaryKeyType_PolicySizeQuota`
* `SummaryKeyType_PolicyVersionsInUse`
* `SummaryKeyType_PolicyVersionsInUseQuota`
* `SummaryKeyType_VersionsPerPolicyQuota`

-}
type SummaryKeyType
    = SummaryKeyType_Users
    | SummaryKeyType_UsersQuota
    | SummaryKeyType_Groups
    | SummaryKeyType_GroupsQuota
    | SummaryKeyType_ServerCertificates
    | SummaryKeyType_ServerCertificatesQuota
    | SummaryKeyType_UserPolicySizeQuota
    | SummaryKeyType_GroupPolicySizeQuota
    | SummaryKeyType_GroupsPerUserQuota
    | SummaryKeyType_SigningCertificatesPerUserQuota
    | SummaryKeyType_AccessKeysPerUserQuota
    | SummaryKeyType_MFADevices
    | SummaryKeyType_MFADevicesInUse
    | SummaryKeyType_AccountMFAEnabled
    | SummaryKeyType_AccountAccessKeysPresent
    | SummaryKeyType_AccountSigningCertificatesPresent
    | SummaryKeyType_AttachedPoliciesPerGroupQuota
    | SummaryKeyType_AttachedPoliciesPerRoleQuota
    | SummaryKeyType_AttachedPoliciesPerUserQuota
    | SummaryKeyType_Policies
    | SummaryKeyType_PoliciesQuota
    | SummaryKeyType_PolicySizeQuota
    | SummaryKeyType_PolicyVersionsInUse
    | SummaryKeyType_PolicyVersionsInUseQuota
    | SummaryKeyType_VersionsPerPolicyQuota



summaryKeyTypeDecoder : JD.Decoder SummaryKeyType
summaryKeyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Users" ->
                        JD.succeed SummaryKeyType_Users

                    "UsersQuota" ->
                        JD.succeed SummaryKeyType_UsersQuota

                    "Groups" ->
                        JD.succeed SummaryKeyType_Groups

                    "GroupsQuota" ->
                        JD.succeed SummaryKeyType_GroupsQuota

                    "ServerCertificates" ->
                        JD.succeed SummaryKeyType_ServerCertificates

                    "ServerCertificatesQuota" ->
                        JD.succeed SummaryKeyType_ServerCertificatesQuota

                    "UserPolicySizeQuota" ->
                        JD.succeed SummaryKeyType_UserPolicySizeQuota

                    "GroupPolicySizeQuota" ->
                        JD.succeed SummaryKeyType_GroupPolicySizeQuota

                    "GroupsPerUserQuota" ->
                        JD.succeed SummaryKeyType_GroupsPerUserQuota

                    "SigningCertificatesPerUserQuota" ->
                        JD.succeed SummaryKeyType_SigningCertificatesPerUserQuota

                    "AccessKeysPerUserQuota" ->
                        JD.succeed SummaryKeyType_AccessKeysPerUserQuota

                    "MFADevices" ->
                        JD.succeed SummaryKeyType_MFADevices

                    "MFADevicesInUse" ->
                        JD.succeed SummaryKeyType_MFADevicesInUse

                    "AccountMFAEnabled" ->
                        JD.succeed SummaryKeyType_AccountMFAEnabled

                    "AccountAccessKeysPresent" ->
                        JD.succeed SummaryKeyType_AccountAccessKeysPresent

                    "AccountSigningCertificatesPresent" ->
                        JD.succeed SummaryKeyType_AccountSigningCertificatesPresent

                    "AttachedPoliciesPerGroupQuota" ->
                        JD.succeed SummaryKeyType_AttachedPoliciesPerGroupQuota

                    "AttachedPoliciesPerRoleQuota" ->
                        JD.succeed SummaryKeyType_AttachedPoliciesPerRoleQuota

                    "AttachedPoliciesPerUserQuota" ->
                        JD.succeed SummaryKeyType_AttachedPoliciesPerUserQuota

                    "Policies" ->
                        JD.succeed SummaryKeyType_Policies

                    "PoliciesQuota" ->
                        JD.succeed SummaryKeyType_PoliciesQuota

                    "PolicySizeQuota" ->
                        JD.succeed SummaryKeyType_PolicySizeQuota

                    "PolicyVersionsInUse" ->
                        JD.succeed SummaryKeyType_PolicyVersionsInUse

                    "PolicyVersionsInUseQuota" ->
                        JD.succeed SummaryKeyType_PolicyVersionsInUseQuota

                    "VersionsPerPolicyQuota" ->
                        JD.succeed SummaryKeyType_VersionsPerPolicyQuota


                    _ ->
                        JD.fail "bad thing"
            )



