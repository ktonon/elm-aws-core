module AWS.Services.CognitoIdentityProvider
    exposing
        ( config
        , addCustomAttributes
        , adminAddUserToGroup
        , adminConfirmSignUp
        , adminCreateUser
        , AdminCreateUserOptions
        , adminDeleteUser
        , adminDeleteUserAttributes
        , adminDisableUser
        , adminEnableUser
        , adminForgetDevice
        , adminGetDevice
        , adminGetUser
        , adminInitiateAuth
        , AdminInitiateAuthOptions
        , adminListDevices
        , AdminListDevicesOptions
        , adminListGroupsForUser
        , AdminListGroupsForUserOptions
        , adminRemoveUserFromGroup
        , adminResetUserPassword
        , adminRespondToAuthChallenge
        , AdminRespondToAuthChallengeOptions
        , adminSetUserSettings
        , adminUpdateDeviceStatus
        , AdminUpdateDeviceStatusOptions
        , adminUpdateUserAttributes
        , adminUserGlobalSignOut
        , changePassword
        , ChangePasswordOptions
        , confirmDevice
        , ConfirmDeviceOptions
        , confirmForgotPassword
        , ConfirmForgotPasswordOptions
        , confirmSignUp
        , ConfirmSignUpOptions
        , createGroup
        , CreateGroupOptions
        , createUserImportJob
        , createUserPool
        , CreateUserPoolOptions
        , createUserPoolClient
        , CreateUserPoolClientOptions
        , deleteGroup
        , deleteUser
        , DeleteUserOptions
        , deleteUserAttributes
        , DeleteUserAttributesOptions
        , deleteUserPool
        , deleteUserPoolClient
        , describeUserImportJob
        , describeUserPool
        , describeUserPoolClient
        , forgetDevice
        , ForgetDeviceOptions
        , forgotPassword
        , ForgotPasswordOptions
        , getCSVHeader
        , getDevice
        , GetDeviceOptions
        , getGroup
        , getUser
        , GetUserOptions
        , getUserAttributeVerificationCode
        , GetUserAttributeVerificationCodeOptions
        , globalSignOut
        , GlobalSignOutOptions
        , initiateAuth
        , InitiateAuthOptions
        , listDevices
        , ListDevicesOptions
        , listGroups
        , ListGroupsOptions
        , listUserImportJobs
        , ListUserImportJobsOptions
        , listUserPoolClients
        , ListUserPoolClientsOptions
        , listUserPools
        , ListUserPoolsOptions
        , listUsers
        , ListUsersOptions
        , listUsersInGroup
        , ListUsersInGroupOptions
        , resendConfirmationCode
        , ResendConfirmationCodeOptions
        , respondToAuthChallenge
        , RespondToAuthChallengeOptions
        , setUserSettings
        , signUp
        , SignUpOptions
        , startUserImportJob
        , stopUserImportJob
        , updateDeviceStatus
        , UpdateDeviceStatusOptions
        , updateGroup
        , UpdateGroupOptions
        , updateUserAttributes
        , UpdateUserAttributesOptions
        , updateUserPool
        , UpdateUserPoolOptions
        , updateUserPoolClient
        , UpdateUserPoolClientOptions
        , verifyUserAttribute
        , VerifyUserAttributeOptions
        , AddCustomAttributesResponse
        , AdminConfirmSignUpResponse
        , AdminCreateUserConfigType
        , AdminCreateUserResponse
        , AdminDeleteUserAttributesResponse
        , AdminDisableUserResponse
        , AdminEnableUserResponse
        , AdminGetDeviceResponse
        , AdminGetUserResponse
        , AdminInitiateAuthResponse
        , AdminListDevicesResponse
        , AdminListGroupsForUserResponse
        , AdminResetUserPasswordResponse
        , AdminRespondToAuthChallengeResponse
        , AdminSetUserSettingsResponse
        , AdminUpdateDeviceStatusResponse
        , AdminUpdateUserAttributesResponse
        , AdminUserGlobalSignOutResponse
        , AliasAttributeType(..)
        , AliasExistsException
        , AttributeDataType(..)
        , AttributeType
        , AuthFlowType(..)
        , AuthenticationResultType
        , ChallengeNameType(..)
        , ChangePasswordResponse
        , CodeDeliveryDetailsType
        , CodeDeliveryFailureException
        , CodeMismatchException
        , ConcurrentModificationException
        , ConfirmDeviceResponse
        , ConfirmForgotPasswordResponse
        , ConfirmSignUpResponse
        , CreateGroupResponse
        , CreateUserImportJobResponse
        , CreateUserPoolClientResponse
        , CreateUserPoolResponse
        , DeleteUserAttributesResponse
        , DeliveryMediumType(..)
        , DescribeUserImportJobResponse
        , DescribeUserPoolClientResponse
        , DescribeUserPoolResponse
        , DeviceConfigurationType
        , DeviceRememberedStatusType(..)
        , DeviceSecretVerifierConfigType
        , DeviceType
        , EmailConfigurationType
        , ExpiredCodeException
        , ExplicitAuthFlowsType(..)
        , ForgotPasswordResponse
        , GetCSVHeaderResponse
        , GetDeviceResponse
        , GetGroupResponse
        , GetUserAttributeVerificationCodeResponse
        , GetUserResponse
        , GlobalSignOutResponse
        , GroupExistsException
        , GroupType
        , InitiateAuthResponse
        , InternalErrorException
        , InvalidEmailRoleAccessPolicyException
        , InvalidLambdaResponseException
        , InvalidParameterException
        , InvalidPasswordException
        , InvalidSmsRoleAccessPolicyException
        , InvalidSmsRoleTrustRelationshipException
        , InvalidUserPoolConfigurationException
        , LambdaConfigType
        , LimitExceededException
        , ListDevicesResponse
        , ListGroupsResponse
        , ListUserImportJobsResponse
        , ListUserPoolClientsResponse
        , ListUserPoolsResponse
        , ListUsersInGroupResponse
        , ListUsersResponse
        , MFAMethodNotFoundException
        , MFAOptionType
        , MessageActionType(..)
        , MessageTemplateType
        , NewDeviceMetadataType
        , NotAuthorizedException
        , NumberAttributeConstraintsType
        , PasswordPolicyType
        , PasswordResetRequiredException
        , PreconditionNotMetException
        , ResendConfirmationCodeResponse
        , ResourceNotFoundException
        , RespondToAuthChallengeResponse
        , SchemaAttributeType
        , SetUserSettingsResponse
        , SignUpResponse
        , SmsConfigurationType
        , StartUserImportJobResponse
        , StatusType(..)
        , StopUserImportJobResponse
        , StringAttributeConstraintsType
        , TooManyFailedAttemptsException
        , TooManyRequestsException
        , UnexpectedLambdaException
        , UnsupportedUserStateException
        , UpdateDeviceStatusResponse
        , UpdateGroupResponse
        , UpdateUserAttributesResponse
        , UpdateUserPoolClientResponse
        , UpdateUserPoolResponse
        , UserImportInProgressException
        , UserImportJobStatusType(..)
        , UserImportJobType
        , UserLambdaValidationException
        , UserNotConfirmedException
        , UserNotFoundException
        , UserPoolClientDescription
        , UserPoolClientType
        , UserPoolDescriptionType
        , UserPoolMfaType(..)
        , UserPoolPolicyType
        , UserPoolTaggingException
        , UserPoolType
        , UserStatusType(..)
        , UserType
        , UsernameExistsException
        , VerifiedAttributeType(..)
        , VerifyUserAttributeResponse
        )

{-| <p>Using the Amazon Cognito Your User Pools API, you can create a user pool to manage directories and users. You can authenticate a user to obtain tokens related to user identity and access policies.</p> <p>This API reference provides information about user pools in Amazon Cognito Your User Pools.</p> <p>For more information, see the Amazon Cognito Documentation.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addCustomAttributes](#addCustomAttributes)
* [adminAddUserToGroup](#adminAddUserToGroup)
* [adminConfirmSignUp](#adminConfirmSignUp)
* [adminCreateUser](#adminCreateUser)
* [AdminCreateUserOptions](#AdminCreateUserOptions)
* [adminDeleteUser](#adminDeleteUser)
* [adminDeleteUserAttributes](#adminDeleteUserAttributes)
* [adminDisableUser](#adminDisableUser)
* [adminEnableUser](#adminEnableUser)
* [adminForgetDevice](#adminForgetDevice)
* [adminGetDevice](#adminGetDevice)
* [adminGetUser](#adminGetUser)
* [adminInitiateAuth](#adminInitiateAuth)
* [AdminInitiateAuthOptions](#AdminInitiateAuthOptions)
* [adminListDevices](#adminListDevices)
* [AdminListDevicesOptions](#AdminListDevicesOptions)
* [adminListGroupsForUser](#adminListGroupsForUser)
* [AdminListGroupsForUserOptions](#AdminListGroupsForUserOptions)
* [adminRemoveUserFromGroup](#adminRemoveUserFromGroup)
* [adminResetUserPassword](#adminResetUserPassword)
* [adminRespondToAuthChallenge](#adminRespondToAuthChallenge)
* [AdminRespondToAuthChallengeOptions](#AdminRespondToAuthChallengeOptions)
* [adminSetUserSettings](#adminSetUserSettings)
* [adminUpdateDeviceStatus](#adminUpdateDeviceStatus)
* [AdminUpdateDeviceStatusOptions](#AdminUpdateDeviceStatusOptions)
* [adminUpdateUserAttributes](#adminUpdateUserAttributes)
* [adminUserGlobalSignOut](#adminUserGlobalSignOut)
* [changePassword](#changePassword)
* [ChangePasswordOptions](#ChangePasswordOptions)
* [confirmDevice](#confirmDevice)
* [ConfirmDeviceOptions](#ConfirmDeviceOptions)
* [confirmForgotPassword](#confirmForgotPassword)
* [ConfirmForgotPasswordOptions](#ConfirmForgotPasswordOptions)
* [confirmSignUp](#confirmSignUp)
* [ConfirmSignUpOptions](#ConfirmSignUpOptions)
* [createGroup](#createGroup)
* [CreateGroupOptions](#CreateGroupOptions)
* [createUserImportJob](#createUserImportJob)
* [createUserPool](#createUserPool)
* [CreateUserPoolOptions](#CreateUserPoolOptions)
* [createUserPoolClient](#createUserPoolClient)
* [CreateUserPoolClientOptions](#CreateUserPoolClientOptions)
* [deleteGroup](#deleteGroup)
* [deleteUser](#deleteUser)
* [DeleteUserOptions](#DeleteUserOptions)
* [deleteUserAttributes](#deleteUserAttributes)
* [DeleteUserAttributesOptions](#DeleteUserAttributesOptions)
* [deleteUserPool](#deleteUserPool)
* [deleteUserPoolClient](#deleteUserPoolClient)
* [describeUserImportJob](#describeUserImportJob)
* [describeUserPool](#describeUserPool)
* [describeUserPoolClient](#describeUserPoolClient)
* [forgetDevice](#forgetDevice)
* [ForgetDeviceOptions](#ForgetDeviceOptions)
* [forgotPassword](#forgotPassword)
* [ForgotPasswordOptions](#ForgotPasswordOptions)
* [getCSVHeader](#getCSVHeader)
* [getDevice](#getDevice)
* [GetDeviceOptions](#GetDeviceOptions)
* [getGroup](#getGroup)
* [getUser](#getUser)
* [GetUserOptions](#GetUserOptions)
* [getUserAttributeVerificationCode](#getUserAttributeVerificationCode)
* [GetUserAttributeVerificationCodeOptions](#GetUserAttributeVerificationCodeOptions)
* [globalSignOut](#globalSignOut)
* [GlobalSignOutOptions](#GlobalSignOutOptions)
* [initiateAuth](#initiateAuth)
* [InitiateAuthOptions](#InitiateAuthOptions)
* [listDevices](#listDevices)
* [ListDevicesOptions](#ListDevicesOptions)
* [listGroups](#listGroups)
* [ListGroupsOptions](#ListGroupsOptions)
* [listUserImportJobs](#listUserImportJobs)
* [ListUserImportJobsOptions](#ListUserImportJobsOptions)
* [listUserPoolClients](#listUserPoolClients)
* [ListUserPoolClientsOptions](#ListUserPoolClientsOptions)
* [listUserPools](#listUserPools)
* [ListUserPoolsOptions](#ListUserPoolsOptions)
* [listUsers](#listUsers)
* [ListUsersOptions](#ListUsersOptions)
* [listUsersInGroup](#listUsersInGroup)
* [ListUsersInGroupOptions](#ListUsersInGroupOptions)
* [resendConfirmationCode](#resendConfirmationCode)
* [ResendConfirmationCodeOptions](#ResendConfirmationCodeOptions)
* [respondToAuthChallenge](#respondToAuthChallenge)
* [RespondToAuthChallengeOptions](#RespondToAuthChallengeOptions)
* [setUserSettings](#setUserSettings)
* [signUp](#signUp)
* [SignUpOptions](#SignUpOptions)
* [startUserImportJob](#startUserImportJob)
* [stopUserImportJob](#stopUserImportJob)
* [updateDeviceStatus](#updateDeviceStatus)
* [UpdateDeviceStatusOptions](#UpdateDeviceStatusOptions)
* [updateGroup](#updateGroup)
* [UpdateGroupOptions](#UpdateGroupOptions)
* [updateUserAttributes](#updateUserAttributes)
* [UpdateUserAttributesOptions](#UpdateUserAttributesOptions)
* [updateUserPool](#updateUserPool)
* [UpdateUserPoolOptions](#UpdateUserPoolOptions)
* [updateUserPoolClient](#updateUserPoolClient)
* [UpdateUserPoolClientOptions](#UpdateUserPoolClientOptions)
* [verifyUserAttribute](#verifyUserAttribute)
* [VerifyUserAttributeOptions](#VerifyUserAttributeOptions)


@docs addCustomAttributes,adminAddUserToGroup,adminConfirmSignUp,adminCreateUser,AdminCreateUserOptions,adminDeleteUser,adminDeleteUserAttributes,adminDisableUser,adminEnableUser,adminForgetDevice,adminGetDevice,adminGetUser,adminInitiateAuth,AdminInitiateAuthOptions,adminListDevices,AdminListDevicesOptions,adminListGroupsForUser,AdminListGroupsForUserOptions,adminRemoveUserFromGroup,adminResetUserPassword,adminRespondToAuthChallenge,AdminRespondToAuthChallengeOptions,adminSetUserSettings,adminUpdateDeviceStatus,AdminUpdateDeviceStatusOptions,adminUpdateUserAttributes,adminUserGlobalSignOut,changePassword,ChangePasswordOptions,confirmDevice,ConfirmDeviceOptions,confirmForgotPassword,ConfirmForgotPasswordOptions,confirmSignUp,ConfirmSignUpOptions,createGroup,CreateGroupOptions,createUserImportJob,createUserPool,CreateUserPoolOptions,createUserPoolClient,CreateUserPoolClientOptions,deleteGroup,deleteUser,DeleteUserOptions,deleteUserAttributes,DeleteUserAttributesOptions,deleteUserPool,deleteUserPoolClient,describeUserImportJob,describeUserPool,describeUserPoolClient,forgetDevice,ForgetDeviceOptions,forgotPassword,ForgotPasswordOptions,getCSVHeader,getDevice,GetDeviceOptions,getGroup,getUser,GetUserOptions,getUserAttributeVerificationCode,GetUserAttributeVerificationCodeOptions,globalSignOut,GlobalSignOutOptions,initiateAuth,InitiateAuthOptions,listDevices,ListDevicesOptions,listGroups,ListGroupsOptions,listUserImportJobs,ListUserImportJobsOptions,listUserPoolClients,ListUserPoolClientsOptions,listUserPools,ListUserPoolsOptions,listUsers,ListUsersOptions,listUsersInGroup,ListUsersInGroupOptions,resendConfirmationCode,ResendConfirmationCodeOptions,respondToAuthChallenge,RespondToAuthChallengeOptions,setUserSettings,signUp,SignUpOptions,startUserImportJob,stopUserImportJob,updateDeviceStatus,UpdateDeviceStatusOptions,updateGroup,UpdateGroupOptions,updateUserAttributes,UpdateUserAttributesOptions,updateUserPool,UpdateUserPoolOptions,updateUserPoolClient,UpdateUserPoolClientOptions,verifyUserAttribute,VerifyUserAttributeOptions

## Responses

* [AddCustomAttributesResponse](#AddCustomAttributesResponse)
* [AdminConfirmSignUpResponse](#AdminConfirmSignUpResponse)
* [AdminCreateUserResponse](#AdminCreateUserResponse)
* [AdminDeleteUserAttributesResponse](#AdminDeleteUserAttributesResponse)
* [AdminDisableUserResponse](#AdminDisableUserResponse)
* [AdminEnableUserResponse](#AdminEnableUserResponse)
* [AdminGetDeviceResponse](#AdminGetDeviceResponse)
* [AdminGetUserResponse](#AdminGetUserResponse)
* [AdminInitiateAuthResponse](#AdminInitiateAuthResponse)
* [AdminListDevicesResponse](#AdminListDevicesResponse)
* [AdminListGroupsForUserResponse](#AdminListGroupsForUserResponse)
* [AdminResetUserPasswordResponse](#AdminResetUserPasswordResponse)
* [AdminRespondToAuthChallengeResponse](#AdminRespondToAuthChallengeResponse)
* [AdminSetUserSettingsResponse](#AdminSetUserSettingsResponse)
* [AdminUpdateDeviceStatusResponse](#AdminUpdateDeviceStatusResponse)
* [AdminUpdateUserAttributesResponse](#AdminUpdateUserAttributesResponse)
* [AdminUserGlobalSignOutResponse](#AdminUserGlobalSignOutResponse)
* [ChangePasswordResponse](#ChangePasswordResponse)
* [ConfirmDeviceResponse](#ConfirmDeviceResponse)
* [ConfirmForgotPasswordResponse](#ConfirmForgotPasswordResponse)
* [ConfirmSignUpResponse](#ConfirmSignUpResponse)
* [CreateGroupResponse](#CreateGroupResponse)
* [CreateUserImportJobResponse](#CreateUserImportJobResponse)
* [CreateUserPoolClientResponse](#CreateUserPoolClientResponse)
* [CreateUserPoolResponse](#CreateUserPoolResponse)
* [DeleteUserAttributesResponse](#DeleteUserAttributesResponse)
* [DescribeUserImportJobResponse](#DescribeUserImportJobResponse)
* [DescribeUserPoolClientResponse](#DescribeUserPoolClientResponse)
* [DescribeUserPoolResponse](#DescribeUserPoolResponse)
* [ForgotPasswordResponse](#ForgotPasswordResponse)
* [GetCSVHeaderResponse](#GetCSVHeaderResponse)
* [GetDeviceResponse](#GetDeviceResponse)
* [GetGroupResponse](#GetGroupResponse)
* [GetUserAttributeVerificationCodeResponse](#GetUserAttributeVerificationCodeResponse)
* [GetUserResponse](#GetUserResponse)
* [GlobalSignOutResponse](#GlobalSignOutResponse)
* [InitiateAuthResponse](#InitiateAuthResponse)
* [ListDevicesResponse](#ListDevicesResponse)
* [ListGroupsResponse](#ListGroupsResponse)
* [ListUserImportJobsResponse](#ListUserImportJobsResponse)
* [ListUserPoolClientsResponse](#ListUserPoolClientsResponse)
* [ListUserPoolsResponse](#ListUserPoolsResponse)
* [ListUsersInGroupResponse](#ListUsersInGroupResponse)
* [ListUsersResponse](#ListUsersResponse)
* [ResendConfirmationCodeResponse](#ResendConfirmationCodeResponse)
* [RespondToAuthChallengeResponse](#RespondToAuthChallengeResponse)
* [SetUserSettingsResponse](#SetUserSettingsResponse)
* [SignUpResponse](#SignUpResponse)
* [StartUserImportJobResponse](#StartUserImportJobResponse)
* [StopUserImportJobResponse](#StopUserImportJobResponse)
* [UpdateDeviceStatusResponse](#UpdateDeviceStatusResponse)
* [UpdateGroupResponse](#UpdateGroupResponse)
* [UpdateUserAttributesResponse](#UpdateUserAttributesResponse)
* [UpdateUserPoolClientResponse](#UpdateUserPoolClientResponse)
* [UpdateUserPoolResponse](#UpdateUserPoolResponse)
* [VerifyUserAttributeResponse](#VerifyUserAttributeResponse)


@docs AddCustomAttributesResponse,AdminConfirmSignUpResponse,AdminCreateUserResponse,AdminDeleteUserAttributesResponse,AdminDisableUserResponse,AdminEnableUserResponse,AdminGetDeviceResponse,AdminGetUserResponse,AdminInitiateAuthResponse,AdminListDevicesResponse,AdminListGroupsForUserResponse,AdminResetUserPasswordResponse,AdminRespondToAuthChallengeResponse,AdminSetUserSettingsResponse,AdminUpdateDeviceStatusResponse,AdminUpdateUserAttributesResponse,AdminUserGlobalSignOutResponse,ChangePasswordResponse,ConfirmDeviceResponse,ConfirmForgotPasswordResponse,ConfirmSignUpResponse,CreateGroupResponse,CreateUserImportJobResponse,CreateUserPoolClientResponse,CreateUserPoolResponse,DeleteUserAttributesResponse,DescribeUserImportJobResponse,DescribeUserPoolClientResponse,DescribeUserPoolResponse,ForgotPasswordResponse,GetCSVHeaderResponse,GetDeviceResponse,GetGroupResponse,GetUserAttributeVerificationCodeResponse,GetUserResponse,GlobalSignOutResponse,InitiateAuthResponse,ListDevicesResponse,ListGroupsResponse,ListUserImportJobsResponse,ListUserPoolClientsResponse,ListUserPoolsResponse,ListUsersInGroupResponse,ListUsersResponse,ResendConfirmationCodeResponse,RespondToAuthChallengeResponse,SetUserSettingsResponse,SignUpResponse,StartUserImportJobResponse,StopUserImportJobResponse,UpdateDeviceStatusResponse,UpdateGroupResponse,UpdateUserAttributesResponse,UpdateUserPoolClientResponse,UpdateUserPoolResponse,VerifyUserAttributeResponse

## Records

* [AdminCreateUserConfigType](#AdminCreateUserConfigType)
* [AttributeType](#AttributeType)
* [AuthenticationResultType](#AuthenticationResultType)
* [CodeDeliveryDetailsType](#CodeDeliveryDetailsType)
* [DeviceConfigurationType](#DeviceConfigurationType)
* [DeviceSecretVerifierConfigType](#DeviceSecretVerifierConfigType)
* [DeviceType](#DeviceType)
* [EmailConfigurationType](#EmailConfigurationType)
* [GroupType](#GroupType)
* [LambdaConfigType](#LambdaConfigType)
* [MFAOptionType](#MFAOptionType)
* [MessageTemplateType](#MessageTemplateType)
* [NewDeviceMetadataType](#NewDeviceMetadataType)
* [NumberAttributeConstraintsType](#NumberAttributeConstraintsType)
* [PasswordPolicyType](#PasswordPolicyType)
* [SchemaAttributeType](#SchemaAttributeType)
* [SmsConfigurationType](#SmsConfigurationType)
* [StringAttributeConstraintsType](#StringAttributeConstraintsType)
* [UserImportJobType](#UserImportJobType)
* [UserPoolClientDescription](#UserPoolClientDescription)
* [UserPoolClientType](#UserPoolClientType)
* [UserPoolDescriptionType](#UserPoolDescriptionType)
* [UserPoolPolicyType](#UserPoolPolicyType)
* [UserPoolType](#UserPoolType)
* [UserType](#UserType)


@docs AdminCreateUserConfigType,AttributeType,AuthenticationResultType,CodeDeliveryDetailsType,DeviceConfigurationType,DeviceSecretVerifierConfigType,DeviceType,EmailConfigurationType,GroupType,LambdaConfigType,MFAOptionType,MessageTemplateType,NewDeviceMetadataType,NumberAttributeConstraintsType,PasswordPolicyType,SchemaAttributeType,SmsConfigurationType,StringAttributeConstraintsType,UserImportJobType,UserPoolClientDescription,UserPoolClientType,UserPoolDescriptionType,UserPoolPolicyType,UserPoolType,UserType

## Unions

* [AliasAttributeType](#AliasAttributeType)
* [AttributeDataType](#AttributeDataType)
* [AuthFlowType](#AuthFlowType)
* [ChallengeNameType](#ChallengeNameType)
* [DeliveryMediumType](#DeliveryMediumType)
* [DeviceRememberedStatusType](#DeviceRememberedStatusType)
* [ExplicitAuthFlowsType](#ExplicitAuthFlowsType)
* [MessageActionType](#MessageActionType)
* [StatusType](#StatusType)
* [UserImportJobStatusType](#UserImportJobStatusType)
* [UserPoolMfaType](#UserPoolMfaType)
* [UserStatusType](#UserStatusType)
* [VerifiedAttributeType](#VerifiedAttributeType)


@docs AliasAttributeType,AttributeDataType,AuthFlowType,ChallengeNameType,DeliveryMediumType,DeviceRememberedStatusType,ExplicitAuthFlowsType,MessageActionType,StatusType,UserImportJobStatusType,UserPoolMfaType,UserStatusType,VerifiedAttributeType

## Exceptions

* [AliasExistsException](#AliasExistsException)
* [CodeDeliveryFailureException](#CodeDeliveryFailureException)
* [CodeMismatchException](#CodeMismatchException)
* [ConcurrentModificationException](#ConcurrentModificationException)
* [ExpiredCodeException](#ExpiredCodeException)
* [GroupExistsException](#GroupExistsException)
* [InternalErrorException](#InternalErrorException)
* [InvalidEmailRoleAccessPolicyException](#InvalidEmailRoleAccessPolicyException)
* [InvalidLambdaResponseException](#InvalidLambdaResponseException)
* [InvalidParameterException](#InvalidParameterException)
* [InvalidPasswordException](#InvalidPasswordException)
* [InvalidSmsRoleAccessPolicyException](#InvalidSmsRoleAccessPolicyException)
* [InvalidSmsRoleTrustRelationshipException](#InvalidSmsRoleTrustRelationshipException)
* [InvalidUserPoolConfigurationException](#InvalidUserPoolConfigurationException)
* [LimitExceededException](#LimitExceededException)
* [MFAMethodNotFoundException](#MFAMethodNotFoundException)
* [NotAuthorizedException](#NotAuthorizedException)
* [PasswordResetRequiredException](#PasswordResetRequiredException)
* [PreconditionNotMetException](#PreconditionNotMetException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [TooManyFailedAttemptsException](#TooManyFailedAttemptsException)
* [TooManyRequestsException](#TooManyRequestsException)
* [UnexpectedLambdaException](#UnexpectedLambdaException)
* [UnsupportedUserStateException](#UnsupportedUserStateException)
* [UserImportInProgressException](#UserImportInProgressException)
* [UserLambdaValidationException](#UserLambdaValidationException)
* [UserNotConfirmedException](#UserNotConfirmedException)
* [UserNotFoundException](#UserNotFoundException)
* [UserPoolTaggingException](#UserPoolTaggingException)
* [UsernameExistsException](#UsernameExistsException)


@docs AliasExistsException,CodeDeliveryFailureException,CodeMismatchException,ConcurrentModificationException,ExpiredCodeException,GroupExistsException,InternalErrorException,InvalidEmailRoleAccessPolicyException,InvalidLambdaResponseException,InvalidParameterException,InvalidPasswordException,InvalidSmsRoleAccessPolicyException,InvalidSmsRoleTrustRelationshipException,InvalidUserPoolConfigurationException,LimitExceededException,MFAMethodNotFoundException,NotAuthorizedException,PasswordResetRequiredException,PreconditionNotMetException,ResourceNotFoundException,TooManyFailedAttemptsException,TooManyRequestsException,UnexpectedLambdaException,UnsupportedUserStateException,UserImportInProgressException,UserLambdaValidationException,UserNotConfirmedException,UserNotFoundException,UserPoolTaggingException,UsernameExistsException

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "cognito-idp"
        "2016-04-18"
        "1.1"
        "AWSCOGNITO-IDP_20160418."
        "cognito-idp.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds additional user attributes to the user pool schema.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `customAttributes` __:__ `(List SchemaAttributeType)`


-}
addCustomAttributes :
    String
    -> (List SchemaAttributeType)
    -> AWS.Request AddCustomAttributesResponse
addCustomAttributes userPoolId customAttributes =
    AWS.Http.unsignedRequest
        "AddCustomAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addCustomAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Adds the specified user to the specified group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `groupName` __:__ `String`


-}
adminAddUserToGroup :
    String
    -> String
    -> String
    -> AWS.Request ()
adminAddUserToGroup userPoolId username groupName =
    AWS.Http.unsignedRequest
        "AdminAddUserToGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Confirms user registration as an admin without using a confirmation code. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminConfirmSignUp :
    String
    -> String
    -> AWS.Request AdminConfirmSignUpResponse
adminConfirmSignUp userPoolId username =
    AWS.Http.unsignedRequest
        "AdminConfirmSignUp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminConfirmSignUpResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new user in the specified user pool and sends a welcome message via email or phone (SMS). This message is based on a template that you configured in your call to CreateUserPool or UpdateUserPool. This template includes your custom sign-up instructions and placeholders for user name and temporary password.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminCreateUser :
    String
    -> String
    -> (AdminCreateUserOptions -> AdminCreateUserOptions)
    -> AWS.Request AdminCreateUserResponse
adminCreateUser userPoolId username setOptions =
  let
    options = setOptions (AdminCreateUserOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AdminCreateUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminCreateUserResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a adminCreateUser request
-}
type alias AdminCreateUserOptions =
    { userAttributes : Maybe (List AttributeType)
    , validationData : Maybe (List AttributeType)
    , temporaryPassword : Maybe String
    , forceAliasCreation : Maybe Bool
    , messageAction : Maybe MessageActionType
    , desiredDeliveryMediums : Maybe (List DeliveryMediumType)
    }



{-| <p>Deletes a user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminDeleteUser :
    String
    -> String
    -> AWS.Request ()
adminDeleteUser userPoolId username =
    AWS.Http.unsignedRequest
        "AdminDeleteUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the user attributes in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `userAttributeNames` __:__ `(List String)`


-}
adminDeleteUserAttributes :
    String
    -> String
    -> (List String)
    -> AWS.Request AdminDeleteUserAttributesResponse
adminDeleteUserAttributes userPoolId username userAttributeNames =
    AWS.Http.unsignedRequest
        "AdminDeleteUserAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminDeleteUserAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Disables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminDisableUser :
    String
    -> String
    -> AWS.Request AdminDisableUserResponse
adminDisableUser userPoolId username =
    AWS.Http.unsignedRequest
        "AdminDisableUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminDisableUserResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Enables the specified user as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminEnableUser :
    String
    -> String
    -> AWS.Request AdminEnableUserResponse
adminEnableUser userPoolId username =
    AWS.Http.unsignedRequest
        "AdminEnableUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminEnableUserResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Forgets the device, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `deviceKey` __:__ `String`


-}
adminForgetDevice :
    String
    -> String
    -> String
    -> AWS.Request ()
adminForgetDevice userPoolId username deviceKey =
    AWS.Http.unsignedRequest
        "AdminForgetDevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Gets the device, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `deviceKey` __:__ `String`
* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminGetDevice :
    String
    -> String
    -> String
    -> AWS.Request AdminGetDeviceResponse
adminGetDevice deviceKey userPoolId username =
    AWS.Http.unsignedRequest
        "AdminGetDevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminGetDeviceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the specified user by user name in a user pool as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminGetUser :
    String
    -> String
    -> AWS.Request AdminGetUserResponse
adminGetUser userPoolId username =
    AWS.Http.unsignedRequest
        "AdminGetUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminGetUserResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Initiates the authentication flow, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`
* `authFlow` __:__ `AuthFlowType`


-}
adminInitiateAuth :
    String
    -> String
    -> AuthFlowType
    -> (AdminInitiateAuthOptions -> AdminInitiateAuthOptions)
    -> AWS.Request AdminInitiateAuthResponse
adminInitiateAuth userPoolId clientId authFlow setOptions =
  let
    options = setOptions (AdminInitiateAuthOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AdminInitiateAuth"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminInitiateAuthResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a adminInitiateAuth request
-}
type alias AdminInitiateAuthOptions =
    { authParameters : Maybe (Dict String String)
    , clientMetadata : Maybe (Dict String String)
    }



{-| <p>Lists devices, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminListDevices :
    String
    -> String
    -> (AdminListDevicesOptions -> AdminListDevicesOptions)
    -> AWS.Request AdminListDevicesResponse
adminListDevices userPoolId username setOptions =
  let
    options = setOptions (AdminListDevicesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AdminListDevices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminListDevicesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a adminListDevices request
-}
type alias AdminListDevicesOptions =
    { limit : Maybe Int
    , paginationToken : Maybe String
    }



{-| <p>Lists the groups that the user belongs to.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `username` __:__ `String`
* `userPoolId` __:__ `String`


-}
adminListGroupsForUser :
    String
    -> String
    -> (AdminListGroupsForUserOptions -> AdminListGroupsForUserOptions)
    -> AWS.Request AdminListGroupsForUserResponse
adminListGroupsForUser username userPoolId setOptions =
  let
    options = setOptions (AdminListGroupsForUserOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AdminListGroupsForUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminListGroupsForUserResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a adminListGroupsForUser request
-}
type alias AdminListGroupsForUserOptions =
    { limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Removes the specified user from the specified group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `groupName` __:__ `String`


-}
adminRemoveUserFromGroup :
    String
    -> String
    -> String
    -> AWS.Request ()
adminRemoveUserFromGroup userPoolId username groupName =
    AWS.Http.unsignedRequest
        "AdminRemoveUserFromGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Resets the specified user's password in a user pool as an administrator. Works on any user.</p> <p>When a developer calls this API, the current password is invalidated, so it must be changed. If a user tries to sign in after the API is called, the app will get a PasswordResetRequiredException exception back and should direct the user down the flow to reset the password, which is the same as the forgot password flow. In addition, if the user pool has phone verification selected and a verified phone number exists for the user, or if email verification is selected and a verified email exists for the user, calling this API will also result in sending a message to the end user with the code to change their password.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminResetUserPassword :
    String
    -> String
    -> AWS.Request AdminResetUserPasswordResponse
adminResetUserPassword userPoolId username =
    AWS.Http.unsignedRequest
        "AdminResetUserPassword"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminResetUserPasswordResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Responds to an authentication challenge, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`
* `challengeName` __:__ `ChallengeNameType`


-}
adminRespondToAuthChallenge :
    String
    -> String
    -> ChallengeNameType
    -> (AdminRespondToAuthChallengeOptions -> AdminRespondToAuthChallengeOptions)
    -> AWS.Request AdminRespondToAuthChallengeResponse
adminRespondToAuthChallenge userPoolId clientId challengeName setOptions =
  let
    options = setOptions (AdminRespondToAuthChallengeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AdminRespondToAuthChallenge"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminRespondToAuthChallengeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a adminRespondToAuthChallenge request
-}
type alias AdminRespondToAuthChallengeOptions =
    { challengeResponses : Maybe (Dict String String)
    , session : Maybe String
    }



{-| <p>Sets all the user settings for a specified user name. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `mFAOptions` __:__ `(List MFAOptionType)`


-}
adminSetUserSettings :
    String
    -> String
    -> (List MFAOptionType)
    -> AWS.Request AdminSetUserSettingsResponse
adminSetUserSettings userPoolId username mFAOptions =
    AWS.Http.unsignedRequest
        "AdminSetUserSettings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminSetUserSettingsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates the device status as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `deviceKey` __:__ `String`


-}
adminUpdateDeviceStatus :
    String
    -> String
    -> String
    -> (AdminUpdateDeviceStatusOptions -> AdminUpdateDeviceStatusOptions)
    -> AWS.Request AdminUpdateDeviceStatusResponse
adminUpdateDeviceStatus userPoolId username deviceKey setOptions =
  let
    options = setOptions (AdminUpdateDeviceStatusOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AdminUpdateDeviceStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminUpdateDeviceStatusResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a adminUpdateDeviceStatus request
-}
type alias AdminUpdateDeviceStatusOptions =
    { deviceRememberedStatus : Maybe DeviceRememberedStatusType
    }



{-| <p>Updates the specified user's attributes, including developer attributes, as an administrator. Works on any user.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`
* `userAttributes` __:__ `(List AttributeType)`


-}
adminUpdateUserAttributes :
    String
    -> String
    -> (List AttributeType)
    -> AWS.Request AdminUpdateUserAttributesResponse
adminUpdateUserAttributes userPoolId username userAttributes =
    AWS.Http.unsignedRequest
        "AdminUpdateUserAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminUpdateUserAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Signs out users from all devices, as an administrator.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `username` __:__ `String`


-}
adminUserGlobalSignOut :
    String
    -> String
    -> AWS.Request AdminUserGlobalSignOutResponse
adminUserGlobalSignOut userPoolId username =
    AWS.Http.unsignedRequest
        "AdminUserGlobalSignOut"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        adminUserGlobalSignOutResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Changes the password for a specified user in a user pool.</p>

__Required Parameters__

* `previousPassword` __:__ `String`
* `proposedPassword` __:__ `String`


-}
changePassword :
    String
    -> String
    -> (ChangePasswordOptions -> ChangePasswordOptions)
    -> AWS.Request ChangePasswordResponse
changePassword previousPassword proposedPassword setOptions =
  let
    options = setOptions (ChangePasswordOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ChangePassword"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        changePasswordResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a changePassword request
-}
type alias ChangePasswordOptions =
    { accessToken : Maybe String
    }



{-| <p>Confirms tracking of the device. This API call is the call that beings device tracking.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `deviceKey` __:__ `String`


-}
confirmDevice :
    String
    -> String
    -> (ConfirmDeviceOptions -> ConfirmDeviceOptions)
    -> AWS.Request ConfirmDeviceResponse
confirmDevice accessToken deviceKey setOptions =
  let
    options = setOptions (ConfirmDeviceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ConfirmDevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmDeviceResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a confirmDevice request
-}
type alias ConfirmDeviceOptions =
    { deviceSecretVerifierConfig : Maybe DeviceSecretVerifierConfigType
    , deviceName : Maybe String
    }



{-| <p>Allows a user to enter a code provided when they reset their password to update their password.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`
* `confirmationCode` __:__ `String`
* `password` __:__ `String`


-}
confirmForgotPassword :
    String
    -> String
    -> String
    -> String
    -> (ConfirmForgotPasswordOptions -> ConfirmForgotPasswordOptions)
    -> AWS.Request ConfirmForgotPasswordResponse
confirmForgotPassword clientId username confirmationCode password setOptions =
  let
    options = setOptions (ConfirmForgotPasswordOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ConfirmForgotPassword"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmForgotPasswordResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a confirmForgotPassword request
-}
type alias ConfirmForgotPasswordOptions =
    { secretHash : Maybe String
    }



{-| <p>Confirms registration of a user and handles the existing alias from a previous user.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`
* `confirmationCode` __:__ `String`


-}
confirmSignUp :
    String
    -> String
    -> String
    -> (ConfirmSignUpOptions -> ConfirmSignUpOptions)
    -> AWS.Request ConfirmSignUpResponse
confirmSignUp clientId username confirmationCode setOptions =
  let
    options = setOptions (ConfirmSignUpOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ConfirmSignUp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmSignUpResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a confirmSignUp request
-}
type alias ConfirmSignUpOptions =
    { secretHash : Maybe String
    , forceAliasCreation : Maybe Bool
    }



{-| <p>Creates a new group in the specified user pool.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}
createGroup :
    String
    -> String
    -> (CreateGroupOptions -> CreateGroupOptions)
    -> AWS.Request CreateGroupResponse
createGroup groupName userPoolId setOptions =
  let
    options = setOptions (CreateGroupOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createGroupResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createGroup request
-}
type alias CreateGroupOptions =
    { description : Maybe String
    , roleArn : Maybe String
    , precedence : Maybe Int
    }



{-| <p>Creates the user import job.</p>

__Required Parameters__

* `jobName` __:__ `String`
* `userPoolId` __:__ `String`
* `cloudWatchLogsRoleArn` __:__ `String`


-}
createUserImportJob :
    String
    -> String
    -> String
    -> AWS.Request CreateUserImportJobResponse
createUserImportJob jobName userPoolId cloudWatchLogsRoleArn =
    AWS.Http.unsignedRequest
        "CreateUserImportJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createUserImportJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new Amazon Cognito user pool and sets the password policy for the pool.</p>

__Required Parameters__

* `poolName` __:__ `String`


-}
createUserPool :
    String
    -> (CreateUserPoolOptions -> CreateUserPoolOptions)
    -> AWS.Request CreateUserPoolResponse
createUserPool poolName setOptions =
  let
    options = setOptions (CreateUserPoolOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateUserPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createUserPoolResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createUserPool request
-}
type alias CreateUserPoolOptions =
    { policies : Maybe UserPoolPolicyType
    , lambdaConfig : Maybe LambdaConfigType
    , autoVerifiedAttributes : Maybe (List VerifiedAttributeType)
    , aliasAttributes : Maybe (List AliasAttributeType)
    , smsVerificationMessage : Maybe String
    , emailVerificationMessage : Maybe String
    , emailVerificationSubject : Maybe String
    , smsAuthenticationMessage : Maybe String
    , mfaConfiguration : Maybe UserPoolMfaType
    , deviceConfiguration : Maybe DeviceConfigurationType
    , emailConfiguration : Maybe EmailConfigurationType
    , smsConfiguration : Maybe SmsConfigurationType
    , userPoolTags : Maybe (Dict String String)
    , adminCreateUserConfig : Maybe AdminCreateUserConfigType
    , schema : Maybe (List SchemaAttributeType)
    }



{-| <p>Creates the user pool client.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientName` __:__ `String`


-}
createUserPoolClient :
    String
    -> String
    -> (CreateUserPoolClientOptions -> CreateUserPoolClientOptions)
    -> AWS.Request CreateUserPoolClientResponse
createUserPoolClient userPoolId clientName setOptions =
  let
    options = setOptions (CreateUserPoolClientOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateUserPoolClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createUserPoolClientResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createUserPoolClient request
-}
type alias CreateUserPoolClientOptions =
    { generateSecret : Maybe Bool
    , refreshTokenValidity : Maybe Int
    , readAttributes : Maybe (List String)
    , writeAttributes : Maybe (List String)
    , explicitAuthFlows : Maybe (List ExplicitAuthFlowsType)
    }



{-| <p>Deletes a group. Currently only groups with no members can be deleted.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}
deleteGroup :
    String
    -> String
    -> AWS.Request ()
deleteGroup groupName userPoolId =
    AWS.Http.unsignedRequest
        "DeleteGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Allows a user to delete one's self.</p>

__Required Parameters__



-}
deleteUser :
    (DeleteUserOptions -> DeleteUserOptions)
    -> AWS.Request ()
deleteUser setOptions =
  let
    options = setOptions (DeleteUserOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteUser"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteUser request
-}
type alias DeleteUserOptions =
    { accessToken : Maybe String
    }



{-| <p>Deletes the attributes for a user.</p>

__Required Parameters__

* `userAttributeNames` __:__ `(List String)`


-}
deleteUserAttributes :
    (List String)
    -> (DeleteUserAttributesOptions -> DeleteUserAttributesOptions)
    -> AWS.Request DeleteUserAttributesResponse
deleteUserAttributes userAttributeNames setOptions =
  let
    options = setOptions (DeleteUserAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteUserAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteUserAttributesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteUserAttributes request
-}
type alias DeleteUserAttributesOptions =
    { accessToken : Maybe String
    }



{-| <p>Deletes the specified Amazon Cognito user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}
deleteUserPool :
    String
    -> AWS.Request ()
deleteUserPool userPoolId =
    AWS.Http.unsignedRequest
        "DeleteUserPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Allows the developer to delete the user pool client.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`


-}
deleteUserPoolClient :
    String
    -> String
    -> AWS.Request ()
deleteUserPoolClient userPoolId clientId =
    AWS.Http.unsignedRequest
        "DeleteUserPoolClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Describes the user import job.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `jobId` __:__ `String`


-}
describeUserImportJob :
    String
    -> String
    -> AWS.Request DescribeUserImportJobResponse
describeUserImportJob userPoolId jobId =
    AWS.Http.unsignedRequest
        "DescribeUserImportJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeUserImportJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the configuration information and metadata of the specified user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}
describeUserPool :
    String
    -> AWS.Request DescribeUserPoolResponse
describeUserPool userPoolId =
    AWS.Http.unsignedRequest
        "DescribeUserPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeUserPoolResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Client method for returning the configuration information and metadata of the specified user pool client.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`


-}
describeUserPoolClient :
    String
    -> String
    -> AWS.Request DescribeUserPoolClientResponse
describeUserPoolClient userPoolId clientId =
    AWS.Http.unsignedRequest
        "DescribeUserPoolClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeUserPoolClientResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Forgets the specified device.</p>

__Required Parameters__

* `deviceKey` __:__ `String`


-}
forgetDevice :
    String
    -> (ForgetDeviceOptions -> ForgetDeviceOptions)
    -> AWS.Request ()
forgetDevice deviceKey setOptions =
  let
    options = setOptions (ForgetDeviceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ForgetDevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a forgetDevice request
-}
type alias ForgetDeviceOptions =
    { accessToken : Maybe String
    }



{-| <p>Retrieves the password for the specified client ID or username.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`


-}
forgotPassword :
    String
    -> String
    -> (ForgotPasswordOptions -> ForgotPasswordOptions)
    -> AWS.Request ForgotPasswordResponse
forgotPassword clientId username setOptions =
  let
    options = setOptions (ForgotPasswordOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ForgotPassword"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        forgotPasswordResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a forgotPassword request
-}
type alias ForgotPasswordOptions =
    { secretHash : Maybe String
    }



{-| <p>Gets the header information for the .csv file to be used as input for the user import job.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}
getCSVHeader :
    String
    -> AWS.Request GetCSVHeaderResponse
getCSVHeader userPoolId =
    AWS.Http.unsignedRequest
        "GetCSVHeader"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getCSVHeaderResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the device.</p>

__Required Parameters__

* `deviceKey` __:__ `String`


-}
getDevice :
    String
    -> (GetDeviceOptions -> GetDeviceOptions)
    -> AWS.Request GetDeviceResponse
getDevice deviceKey setOptions =
  let
    options = setOptions (GetDeviceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDeviceResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getDevice request
-}
type alias GetDeviceOptions =
    { accessToken : Maybe String
    }



{-| <p>Gets a group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}
getGroup :
    String
    -> String
    -> AWS.Request GetGroupResponse
getGroup groupName userPoolId =
    AWS.Http.unsignedRequest
        "GetGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getGroupResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the user attributes and metadata for a user.</p>

__Required Parameters__



-}
getUser :
    (GetUserOptions -> GetUserOptions)
    -> AWS.Request GetUserResponse
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
        |> AWS.UnsignedRequest


{-| Options for a getUser request
-}
type alias GetUserOptions =
    { accessToken : Maybe String
    }



{-| <p>Gets the user attribute verification code for the specified attribute name.</p>

__Required Parameters__

* `attributeName` __:__ `String`


-}
getUserAttributeVerificationCode :
    String
    -> (GetUserAttributeVerificationCodeOptions -> GetUserAttributeVerificationCodeOptions)
    -> AWS.Request GetUserAttributeVerificationCodeResponse
getUserAttributeVerificationCode attributeName setOptions =
  let
    options = setOptions (GetUserAttributeVerificationCodeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetUserAttributeVerificationCode"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getUserAttributeVerificationCodeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getUserAttributeVerificationCode request
-}
type alias GetUserAttributeVerificationCodeOptions =
    { accessToken : Maybe String
    }



{-| <p>Signs out users from all devices.</p>

__Required Parameters__



-}
globalSignOut :
    (GlobalSignOutOptions -> GlobalSignOutOptions)
    -> AWS.Request GlobalSignOutResponse
globalSignOut setOptions =
  let
    options = setOptions (GlobalSignOutOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GlobalSignOut"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        globalSignOutResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a globalSignOut request
-}
type alias GlobalSignOutOptions =
    { accessToken : Maybe String
    }



{-| <p>Initiates the authentication flow.</p>

__Required Parameters__

* `authFlow` __:__ `AuthFlowType`
* `clientId` __:__ `String`


-}
initiateAuth :
    AuthFlowType
    -> String
    -> (InitiateAuthOptions -> InitiateAuthOptions)
    -> AWS.Request InitiateAuthResponse
initiateAuth authFlow clientId setOptions =
  let
    options = setOptions (InitiateAuthOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "InitiateAuth"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        initiateAuthResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a initiateAuth request
-}
type alias InitiateAuthOptions =
    { authParameters : Maybe (Dict String String)
    , clientMetadata : Maybe (Dict String String)
    }



{-| <p>Lists the devices.</p>

__Required Parameters__

* `accessToken` __:__ `String`


-}
listDevices :
    String
    -> (ListDevicesOptions -> ListDevicesOptions)
    -> AWS.Request ListDevicesResponse
listDevices accessToken setOptions =
  let
    options = setOptions (ListDevicesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDevices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDevicesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDevices request
-}
type alias ListDevicesOptions =
    { limit : Maybe Int
    , paginationToken : Maybe String
    }



{-| <p>Lists the groups associated with a user pool.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}
listGroups :
    String
    -> (ListGroupsOptions -> ListGroupsOptions)
    -> AWS.Request ListGroupsResponse
listGroups userPoolId setOptions =
  let
    options = setOptions (ListGroupsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListGroups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listGroupsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listGroups request
-}
type alias ListGroupsOptions =
    { limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the user import jobs.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `maxResults` __:__ `Int`


-}
listUserImportJobs :
    String
    -> Int
    -> (ListUserImportJobsOptions -> ListUserImportJobsOptions)
    -> AWS.Request ListUserImportJobsResponse
listUserImportJobs userPoolId maxResults setOptions =
  let
    options = setOptions (ListUserImportJobsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUserImportJobs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUserImportJobsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listUserImportJobs request
-}
type alias ListUserImportJobsOptions =
    { paginationToken : Maybe String
    }



{-| <p>Lists the clients that have been created for the specified user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}
listUserPoolClients :
    String
    -> (ListUserPoolClientsOptions -> ListUserPoolClientsOptions)
    -> AWS.Request ListUserPoolClientsResponse
listUserPoolClients userPoolId setOptions =
  let
    options = setOptions (ListUserPoolClientsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUserPoolClients"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUserPoolClientsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listUserPoolClients request
-}
type alias ListUserPoolClientsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Lists the user pools associated with an AWS account.</p>

__Required Parameters__

* `maxResults` __:__ `Int`


-}
listUserPools :
    Int
    -> (ListUserPoolsOptions -> ListUserPoolsOptions)
    -> AWS.Request ListUserPoolsResponse
listUserPools maxResults setOptions =
  let
    options = setOptions (ListUserPoolsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUserPools"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUserPoolsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listUserPools request
-}
type alias ListUserPoolsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists the users in the Amazon Cognito user pool.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}
listUsers :
    String
    -> (ListUsersOptions -> ListUsersOptions)
    -> AWS.Request ListUsersResponse
listUsers userPoolId setOptions =
  let
    options = setOptions (ListUsersOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUsers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUsersResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listUsers request
-}
type alias ListUsersOptions =
    { attributesToGet : Maybe (List String)
    , limit : Maybe Int
    , paginationToken : Maybe String
    , filter : Maybe String
    }



{-| <p>Lists the users in the specified group.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `groupName` __:__ `String`


-}
listUsersInGroup :
    String
    -> String
    -> (ListUsersInGroupOptions -> ListUsersInGroupOptions)
    -> AWS.Request ListUsersInGroupResponse
listUsersInGroup userPoolId groupName setOptions =
  let
    options = setOptions (ListUsersInGroupOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUsersInGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUsersInGroupResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listUsersInGroup request
-}
type alias ListUsersInGroupOptions =
    { limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Resends the confirmation (for confirmation of registration) to a specific user in the user pool.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`


-}
resendConfirmationCode :
    String
    -> String
    -> (ResendConfirmationCodeOptions -> ResendConfirmationCodeOptions)
    -> AWS.Request ResendConfirmationCodeResponse
resendConfirmationCode clientId username setOptions =
  let
    options = setOptions (ResendConfirmationCodeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ResendConfirmationCode"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resendConfirmationCodeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a resendConfirmationCode request
-}
type alias ResendConfirmationCodeOptions =
    { secretHash : Maybe String
    }



{-| <p>Responds to the authentication challenge.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `challengeName` __:__ `ChallengeNameType`


-}
respondToAuthChallenge :
    String
    -> ChallengeNameType
    -> (RespondToAuthChallengeOptions -> RespondToAuthChallengeOptions)
    -> AWS.Request RespondToAuthChallengeResponse
respondToAuthChallenge clientId challengeName setOptions =
  let
    options = setOptions (RespondToAuthChallengeOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RespondToAuthChallenge"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        respondToAuthChallengeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a respondToAuthChallenge request
-}
type alias RespondToAuthChallengeOptions =
    { session : Maybe String
    , challengeResponses : Maybe (Dict String String)
    }



{-| <p>Sets the user settings like multi-factor authentication (MFA). If MFA is to be removed for a particular attribute pass the attribute with code delivery as null. If null list is passed, all MFA options are removed.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `mFAOptions` __:__ `(List MFAOptionType)`


-}
setUserSettings :
    String
    -> (List MFAOptionType)
    -> AWS.Request SetUserSettingsResponse
setUserSettings accessToken mFAOptions =
    AWS.Http.unsignedRequest
        "SetUserSettings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setUserSettingsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Registers the user in the specified user pool and creates a user name, password, and user attributes.</p>

__Required Parameters__

* `clientId` __:__ `String`
* `username` __:__ `String`
* `password` __:__ `String`


-}
signUp :
    String
    -> String
    -> String
    -> (SignUpOptions -> SignUpOptions)
    -> AWS.Request SignUpResponse
signUp clientId username password setOptions =
  let
    options = setOptions (SignUpOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SignUp"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        signUpResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a signUp request
-}
type alias SignUpOptions =
    { secretHash : Maybe String
    , userAttributes : Maybe (List AttributeType)
    , validationData : Maybe (List AttributeType)
    }



{-| <p>Starts the user import.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `jobId` __:__ `String`


-}
startUserImportJob :
    String
    -> String
    -> AWS.Request StartUserImportJobResponse
startUserImportJob userPoolId jobId =
    AWS.Http.unsignedRequest
        "StartUserImportJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startUserImportJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Stops the user import job.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `jobId` __:__ `String`


-}
stopUserImportJob :
    String
    -> String
    -> AWS.Request StopUserImportJobResponse
stopUserImportJob userPoolId jobId =
    AWS.Http.unsignedRequest
        "StopUserImportJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopUserImportJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates the device status.</p>

__Required Parameters__

* `accessToken` __:__ `String`
* `deviceKey` __:__ `String`


-}
updateDeviceStatus :
    String
    -> String
    -> (UpdateDeviceStatusOptions -> UpdateDeviceStatusOptions)
    -> AWS.Request UpdateDeviceStatusResponse
updateDeviceStatus accessToken deviceKey setOptions =
  let
    options = setOptions (UpdateDeviceStatusOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDeviceStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDeviceStatusResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateDeviceStatus request
-}
type alias UpdateDeviceStatusOptions =
    { deviceRememberedStatus : Maybe DeviceRememberedStatusType
    }



{-| <p>Updates the specified group with the specified attributes.</p> <p>Requires developer credentials.</p>

__Required Parameters__

* `groupName` __:__ `String`
* `userPoolId` __:__ `String`


-}
updateGroup :
    String
    -> String
    -> (UpdateGroupOptions -> UpdateGroupOptions)
    -> AWS.Request UpdateGroupResponse
updateGroup groupName userPoolId setOptions =
  let
    options = setOptions (UpdateGroupOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateGroup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateGroupResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateGroup request
-}
type alias UpdateGroupOptions =
    { description : Maybe String
    , roleArn : Maybe String
    , precedence : Maybe Int
    }



{-| <p>Allows a user to update a specific attribute (one at a time).</p>

__Required Parameters__

* `userAttributes` __:__ `(List AttributeType)`


-}
updateUserAttributes :
    (List AttributeType)
    -> (UpdateUserAttributesOptions -> UpdateUserAttributesOptions)
    -> AWS.Request UpdateUserAttributesResponse
updateUserAttributes userAttributes setOptions =
  let
    options = setOptions (UpdateUserAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateUserAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateUserAttributesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateUserAttributes request
-}
type alias UpdateUserAttributesOptions =
    { accessToken : Maybe String
    }



{-| <p>Updates the specified user pool with the specified attributes.</p>

__Required Parameters__

* `userPoolId` __:__ `String`


-}
updateUserPool :
    String
    -> (UpdateUserPoolOptions -> UpdateUserPoolOptions)
    -> AWS.Request UpdateUserPoolResponse
updateUserPool userPoolId setOptions =
  let
    options = setOptions (UpdateUserPoolOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateUserPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateUserPoolResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateUserPool request
-}
type alias UpdateUserPoolOptions =
    { policies : Maybe UserPoolPolicyType
    , lambdaConfig : Maybe LambdaConfigType
    , autoVerifiedAttributes : Maybe (List VerifiedAttributeType)
    , smsVerificationMessage : Maybe String
    , emailVerificationMessage : Maybe String
    , emailVerificationSubject : Maybe String
    , smsAuthenticationMessage : Maybe String
    , mfaConfiguration : Maybe UserPoolMfaType
    , deviceConfiguration : Maybe DeviceConfigurationType
    , emailConfiguration : Maybe EmailConfigurationType
    , smsConfiguration : Maybe SmsConfigurationType
    , userPoolTags : Maybe (Dict String String)
    , adminCreateUserConfig : Maybe AdminCreateUserConfigType
    }



{-| <p>Allows the developer to update the specified user pool client and password policy.</p>

__Required Parameters__

* `userPoolId` __:__ `String`
* `clientId` __:__ `String`


-}
updateUserPoolClient :
    String
    -> String
    -> (UpdateUserPoolClientOptions -> UpdateUserPoolClientOptions)
    -> AWS.Request UpdateUserPoolClientResponse
updateUserPoolClient userPoolId clientId setOptions =
  let
    options = setOptions (UpdateUserPoolClientOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateUserPoolClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateUserPoolClientResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateUserPoolClient request
-}
type alias UpdateUserPoolClientOptions =
    { clientName : Maybe String
    , refreshTokenValidity : Maybe Int
    , readAttributes : Maybe (List String)
    , writeAttributes : Maybe (List String)
    , explicitAuthFlows : Maybe (List ExplicitAuthFlowsType)
    }



{-| <p>Verifies the specified user attributes in the user pool.</p>

__Required Parameters__

* `attributeName` __:__ `String`
* `code` __:__ `String`


-}
verifyUserAttribute :
    String
    -> String
    -> (VerifyUserAttributeOptions -> VerifyUserAttributeOptions)
    -> AWS.Request VerifyUserAttributeResponse
verifyUserAttribute attributeName code setOptions =
  let
    options = setOptions (VerifyUserAttributeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "VerifyUserAttribute"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        verifyUserAttributeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a verifyUserAttribute request
-}
type alias VerifyUserAttributeOptions =
    { accessToken : Maybe String
    }




{-| Type of HTTP response from addCustomAttributes
-}
type alias AddCustomAttributesResponse =
    { 
    }



addCustomAttributesResponseDecoder : JD.Decoder AddCustomAttributesResponse
addCustomAttributesResponseDecoder =
    JDP.decode AddCustomAttributesResponse



{-| Type of HTTP response from adminConfirmSignUp
-}
type alias AdminConfirmSignUpResponse =
    { 
    }



adminConfirmSignUpResponseDecoder : JD.Decoder AdminConfirmSignUpResponse
adminConfirmSignUpResponseDecoder =
    JDP.decode AdminConfirmSignUpResponse



{-| <p>The type of configuration for creating a new user profile.</p>
-}
type alias AdminCreateUserConfigType =
    { allowAdminCreateUserOnly : Maybe Bool
    , unusedAccountValidityDays : Maybe Int
    , inviteMessageTemplate : Maybe MessageTemplateType
    }



adminCreateUserConfigTypeDecoder : JD.Decoder AdminCreateUserConfigType
adminCreateUserConfigTypeDecoder =
    JDP.decode AdminCreateUserConfigType
        |> JDP.optional "allowAdminCreateUserOnly" (JD.nullable JD.bool) Nothing
        |> JDP.optional "unusedAccountValidityDays" (JD.nullable JD.int) Nothing
        |> JDP.optional "inviteMessageTemplate" (JD.nullable messageTemplateTypeDecoder) Nothing




{-| Type of HTTP response from adminCreateUser
-}
type alias AdminCreateUserResponse =
    { user : Maybe UserType
    }



adminCreateUserResponseDecoder : JD.Decoder AdminCreateUserResponse
adminCreateUserResponseDecoder =
    JDP.decode AdminCreateUserResponse
        |> JDP.optional "user" (JD.nullable userTypeDecoder) Nothing




{-| Type of HTTP response from adminDeleteUserAttributes
-}
type alias AdminDeleteUserAttributesResponse =
    { 
    }



adminDeleteUserAttributesResponseDecoder : JD.Decoder AdminDeleteUserAttributesResponse
adminDeleteUserAttributesResponseDecoder =
    JDP.decode AdminDeleteUserAttributesResponse



{-| Type of HTTP response from adminDisableUser
-}
type alias AdminDisableUserResponse =
    { 
    }



adminDisableUserResponseDecoder : JD.Decoder AdminDisableUserResponse
adminDisableUserResponseDecoder =
    JDP.decode AdminDisableUserResponse



{-| Type of HTTP response from adminEnableUser
-}
type alias AdminEnableUserResponse =
    { 
    }



adminEnableUserResponseDecoder : JD.Decoder AdminEnableUserResponse
adminEnableUserResponseDecoder =
    JDP.decode AdminEnableUserResponse



{-| Type of HTTP response from adminGetDevice
-}
type alias AdminGetDeviceResponse =
    { device : DeviceType
    }



adminGetDeviceResponseDecoder : JD.Decoder AdminGetDeviceResponse
adminGetDeviceResponseDecoder =
    JDP.decode AdminGetDeviceResponse
        |> JDP.required "device" deviceTypeDecoder




{-| Type of HTTP response from adminGetUser
-}
type alias AdminGetUserResponse =
    { username : String
    , userAttributes : Maybe (List AttributeType)
    , userCreateDate : Maybe Date
    , userLastModifiedDate : Maybe Date
    , enabled : Maybe Bool
    , userStatus : Maybe UserStatusType
    , mFAOptions : Maybe (List MFAOptionType)
    }



adminGetUserResponseDecoder : JD.Decoder AdminGetUserResponse
adminGetUserResponseDecoder =
    JDP.decode AdminGetUserResponse
        |> JDP.required "username" JD.string
        |> JDP.optional "userAttributes" (JD.nullable (JD.list attributeTypeDecoder)) Nothing
        |> JDP.optional "userCreateDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "userLastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "userStatus" (JD.nullable userStatusTypeDecoder) Nothing
        |> JDP.optional "mFAOptions" (JD.nullable (JD.list mFAOptionTypeDecoder)) Nothing




{-| Type of HTTP response from adminInitiateAuth
-}
type alias AdminInitiateAuthResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



adminInitiateAuthResponseDecoder : JD.Decoder AdminInitiateAuthResponse
adminInitiateAuthResponseDecoder =
    JDP.decode AdminInitiateAuthResponse
        |> JDP.optional "challengeName" (JD.nullable challengeNameTypeDecoder) Nothing
        |> JDP.optional "session" (JD.nullable JD.string) Nothing
        |> JDP.optional "challengeParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "authenticationResult" (JD.nullable authenticationResultTypeDecoder) Nothing




{-| Type of HTTP response from adminListDevices
-}
type alias AdminListDevicesResponse =
    { devices : Maybe (List DeviceType)
    , paginationToken : Maybe String
    }



adminListDevicesResponseDecoder : JD.Decoder AdminListDevicesResponse
adminListDevicesResponseDecoder =
    JDP.decode AdminListDevicesResponse
        |> JDP.optional "devices" (JD.nullable (JD.list deviceTypeDecoder)) Nothing
        |> JDP.optional "paginationToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from adminListGroupsForUser
-}
type alias AdminListGroupsForUserResponse =
    { groups : Maybe (List GroupType)
    , nextToken : Maybe String
    }



adminListGroupsForUserResponseDecoder : JD.Decoder AdminListGroupsForUserResponse
adminListGroupsForUserResponseDecoder =
    JDP.decode AdminListGroupsForUserResponse
        |> JDP.optional "groups" (JD.nullable (JD.list groupTypeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from adminResetUserPassword
-}
type alias AdminResetUserPasswordResponse =
    { 
    }



adminResetUserPasswordResponseDecoder : JD.Decoder AdminResetUserPasswordResponse
adminResetUserPasswordResponseDecoder =
    JDP.decode AdminResetUserPasswordResponse



{-| Type of HTTP response from adminRespondToAuthChallenge
-}
type alias AdminRespondToAuthChallengeResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



adminRespondToAuthChallengeResponseDecoder : JD.Decoder AdminRespondToAuthChallengeResponse
adminRespondToAuthChallengeResponseDecoder =
    JDP.decode AdminRespondToAuthChallengeResponse
        |> JDP.optional "challengeName" (JD.nullable challengeNameTypeDecoder) Nothing
        |> JDP.optional "session" (JD.nullable JD.string) Nothing
        |> JDP.optional "challengeParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "authenticationResult" (JD.nullable authenticationResultTypeDecoder) Nothing




{-| Type of HTTP response from adminSetUserSettings
-}
type alias AdminSetUserSettingsResponse =
    { 
    }



adminSetUserSettingsResponseDecoder : JD.Decoder AdminSetUserSettingsResponse
adminSetUserSettingsResponseDecoder =
    JDP.decode AdminSetUserSettingsResponse



{-| Type of HTTP response from adminUpdateDeviceStatus
-}
type alias AdminUpdateDeviceStatusResponse =
    { 
    }



adminUpdateDeviceStatusResponseDecoder : JD.Decoder AdminUpdateDeviceStatusResponse
adminUpdateDeviceStatusResponseDecoder =
    JDP.decode AdminUpdateDeviceStatusResponse



{-| Type of HTTP response from adminUpdateUserAttributes
-}
type alias AdminUpdateUserAttributesResponse =
    { 
    }



adminUpdateUserAttributesResponseDecoder : JD.Decoder AdminUpdateUserAttributesResponse
adminUpdateUserAttributesResponseDecoder =
    JDP.decode AdminUpdateUserAttributesResponse



{-| Type of HTTP response from adminUserGlobalSignOut
-}
type alias AdminUserGlobalSignOutResponse =
    { 
    }



adminUserGlobalSignOutResponseDecoder : JD.Decoder AdminUserGlobalSignOutResponse
adminUserGlobalSignOutResponseDecoder =
    JDP.decode AdminUserGlobalSignOutResponse



{-| One of

* `AliasAttributeType_phone_number`
* `AliasAttributeType_email`
* `AliasAttributeType_preferred_username`

-}
type AliasAttributeType
    = AliasAttributeType_phone_number
    | AliasAttributeType_email
    | AliasAttributeType_preferred_username



aliasAttributeTypeDecoder : JD.Decoder AliasAttributeType
aliasAttributeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "phone_number" ->
                        JD.succeed AliasAttributeType_phone_number

                    "email" ->
                        JD.succeed AliasAttributeType_email

                    "preferred_username" ->
                        JD.succeed AliasAttributeType_preferred_username


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>This exception is thrown when a user tries to confirm the account with an email or phone number that has already been supplied as an alias from a different account. This exception tells user that an account with this email or phone already exists.</p>
-}
type alias AliasExistsException =
    { message : Maybe String
    }



aliasExistsExceptionDecoder : JD.Decoder AliasExistsException
aliasExistsExceptionDecoder =
    JDP.decode AliasExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `AttributeDataType_String`
* `AttributeDataType_Number`
* `AttributeDataType_DateTime`
* `AttributeDataType_Boolean`

-}
type AttributeDataType
    = AttributeDataType_String
    | AttributeDataType_Number
    | AttributeDataType_DateTime
    | AttributeDataType_Boolean



attributeDataTypeDecoder : JD.Decoder AttributeDataType
attributeDataTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "String" ->
                        JD.succeed AttributeDataType_String

                    "Number" ->
                        JD.succeed AttributeDataType_Number

                    "DateTime" ->
                        JD.succeed AttributeDataType_DateTime

                    "Boolean" ->
                        JD.succeed AttributeDataType_Boolean


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Specifies whether the attribute is standard or custom.</p>
-}
type alias AttributeType =
    { name : String
    , value : Maybe String
    }



attributeTypeDecoder : JD.Decoder AttributeType
attributeTypeDecoder =
    JDP.decode AttributeType
        |> JDP.required "name" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| One of

* `AuthFlowType_USER_SRP_AUTH`
* `AuthFlowType_REFRESH_TOKEN_AUTH`
* `AuthFlowType_REFRESH_TOKEN`
* `AuthFlowType_CUSTOM_AUTH`
* `AuthFlowType_ADMIN_NO_SRP_AUTH`

-}
type AuthFlowType
    = AuthFlowType_USER_SRP_AUTH
    | AuthFlowType_REFRESH_TOKEN_AUTH
    | AuthFlowType_REFRESH_TOKEN
    | AuthFlowType_CUSTOM_AUTH
    | AuthFlowType_ADMIN_NO_SRP_AUTH



authFlowTypeDecoder : JD.Decoder AuthFlowType
authFlowTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USER_SRP_AUTH" ->
                        JD.succeed AuthFlowType_USER_SRP_AUTH

                    "REFRESH_TOKEN_AUTH" ->
                        JD.succeed AuthFlowType_REFRESH_TOKEN_AUTH

                    "REFRESH_TOKEN" ->
                        JD.succeed AuthFlowType_REFRESH_TOKEN

                    "CUSTOM_AUTH" ->
                        JD.succeed AuthFlowType_CUSTOM_AUTH

                    "ADMIN_NO_SRP_AUTH" ->
                        JD.succeed AuthFlowType_ADMIN_NO_SRP_AUTH


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The result type of the authentication result.</p>
-}
type alias AuthenticationResultType =
    { accessToken : Maybe String
    , expiresIn : Maybe Int
    , tokenType : Maybe String
    , refreshToken : Maybe String
    , idToken : Maybe String
    , newDeviceMetadata : Maybe NewDeviceMetadataType
    }



authenticationResultTypeDecoder : JD.Decoder AuthenticationResultType
authenticationResultTypeDecoder =
    JDP.decode AuthenticationResultType
        |> JDP.optional "accessToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiresIn" (JD.nullable JD.int) Nothing
        |> JDP.optional "tokenType" (JD.nullable JD.string) Nothing
        |> JDP.optional "refreshToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "idToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "newDeviceMetadata" (JD.nullable newDeviceMetadataTypeDecoder) Nothing




{-| One of

* `ChallengeNameType_SMS_MFA`
* `ChallengeNameType_PASSWORD_VERIFIER`
* `ChallengeNameType_CUSTOM_CHALLENGE`
* `ChallengeNameType_DEVICE_SRP_AUTH`
* `ChallengeNameType_DEVICE_PASSWORD_VERIFIER`
* `ChallengeNameType_ADMIN_NO_SRP_AUTH`
* `ChallengeNameType_NEW_PASSWORD_REQUIRED`

-}
type ChallengeNameType
    = ChallengeNameType_SMS_MFA
    | ChallengeNameType_PASSWORD_VERIFIER
    | ChallengeNameType_CUSTOM_CHALLENGE
    | ChallengeNameType_DEVICE_SRP_AUTH
    | ChallengeNameType_DEVICE_PASSWORD_VERIFIER
    | ChallengeNameType_ADMIN_NO_SRP_AUTH
    | ChallengeNameType_NEW_PASSWORD_REQUIRED



challengeNameTypeDecoder : JD.Decoder ChallengeNameType
challengeNameTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SMS_MFA" ->
                        JD.succeed ChallengeNameType_SMS_MFA

                    "PASSWORD_VERIFIER" ->
                        JD.succeed ChallengeNameType_PASSWORD_VERIFIER

                    "CUSTOM_CHALLENGE" ->
                        JD.succeed ChallengeNameType_CUSTOM_CHALLENGE

                    "DEVICE_SRP_AUTH" ->
                        JD.succeed ChallengeNameType_DEVICE_SRP_AUTH

                    "DEVICE_PASSWORD_VERIFIER" ->
                        JD.succeed ChallengeNameType_DEVICE_PASSWORD_VERIFIER

                    "ADMIN_NO_SRP_AUTH" ->
                        JD.succeed ChallengeNameType_ADMIN_NO_SRP_AUTH

                    "NEW_PASSWORD_REQUIRED" ->
                        JD.succeed ChallengeNameType_NEW_PASSWORD_REQUIRED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from changePassword
-}
type alias ChangePasswordResponse =
    { 
    }



changePasswordResponseDecoder : JD.Decoder ChangePasswordResponse
changePasswordResponseDecoder =
    JDP.decode ChangePasswordResponse



{-| <p>The type of code delivery details being returned from the server.</p>
-}
type alias CodeDeliveryDetailsType =
    { destination : Maybe String
    , deliveryMedium : Maybe DeliveryMediumType
    , attributeName : Maybe String
    }



codeDeliveryDetailsTypeDecoder : JD.Decoder CodeDeliveryDetailsType
codeDeliveryDetailsTypeDecoder =
    JDP.decode CodeDeliveryDetailsType
        |> JDP.optional "destination" (JD.nullable JD.string) Nothing
        |> JDP.optional "deliveryMedium" (JD.nullable deliveryMediumTypeDecoder) Nothing
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when a verification code fails to deliver successfully.</p>
-}
type alias CodeDeliveryFailureException =
    { message : Maybe String
    }



codeDeliveryFailureExceptionDecoder : JD.Decoder CodeDeliveryFailureException
codeDeliveryFailureExceptionDecoder =
    JDP.decode CodeDeliveryFailureException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown if the provided code does not match what the server was expecting.</p>
-}
type alias CodeMismatchException =
    { message : Maybe String
    }



codeMismatchExceptionDecoder : JD.Decoder CodeMismatchException
codeMismatchExceptionDecoder =
    JDP.decode CodeMismatchException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown if two or more modifications are happening concurrently.</p>
-}
type alias ConcurrentModificationException =
    { message : Maybe String
    }



concurrentModificationExceptionDecoder : JD.Decoder ConcurrentModificationException
concurrentModificationExceptionDecoder =
    JDP.decode ConcurrentModificationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from confirmDevice
-}
type alias ConfirmDeviceResponse =
    { userConfirmationNecessary : Maybe Bool
    }



confirmDeviceResponseDecoder : JD.Decoder ConfirmDeviceResponse
confirmDeviceResponseDecoder =
    JDP.decode ConfirmDeviceResponse
        |> JDP.optional "userConfirmationNecessary" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from confirmForgotPassword
-}
type alias ConfirmForgotPasswordResponse =
    { 
    }



confirmForgotPasswordResponseDecoder : JD.Decoder ConfirmForgotPasswordResponse
confirmForgotPasswordResponseDecoder =
    JDP.decode ConfirmForgotPasswordResponse



{-| Type of HTTP response from confirmSignUp
-}
type alias ConfirmSignUpResponse =
    { 
    }



confirmSignUpResponseDecoder : JD.Decoder ConfirmSignUpResponse
confirmSignUpResponseDecoder =
    JDP.decode ConfirmSignUpResponse



{-| Type of HTTP response from createGroup
-}
type alias CreateGroupResponse =
    { group : Maybe GroupType
    }



createGroupResponseDecoder : JD.Decoder CreateGroupResponse
createGroupResponseDecoder =
    JDP.decode CreateGroupResponse
        |> JDP.optional "group" (JD.nullable groupTypeDecoder) Nothing




{-| Type of HTTP response from createUserImportJob
-}
type alias CreateUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



createUserImportJobResponseDecoder : JD.Decoder CreateUserImportJobResponse
createUserImportJobResponseDecoder =
    JDP.decode CreateUserImportJobResponse
        |> JDP.optional "userImportJob" (JD.nullable userImportJobTypeDecoder) Nothing




{-| Type of HTTP response from createUserPoolClient
-}
type alias CreateUserPoolClientResponse =
    { userPoolClient : Maybe UserPoolClientType
    }



createUserPoolClientResponseDecoder : JD.Decoder CreateUserPoolClientResponse
createUserPoolClientResponseDecoder =
    JDP.decode CreateUserPoolClientResponse
        |> JDP.optional "userPoolClient" (JD.nullable userPoolClientTypeDecoder) Nothing




{-| Type of HTTP response from createUserPool
-}
type alias CreateUserPoolResponse =
    { userPool : Maybe UserPoolType
    }



createUserPoolResponseDecoder : JD.Decoder CreateUserPoolResponse
createUserPoolResponseDecoder =
    JDP.decode CreateUserPoolResponse
        |> JDP.optional "userPool" (JD.nullable userPoolTypeDecoder) Nothing




{-| Type of HTTP response from deleteUserAttributes
-}
type alias DeleteUserAttributesResponse =
    { 
    }



deleteUserAttributesResponseDecoder : JD.Decoder DeleteUserAttributesResponse
deleteUserAttributesResponseDecoder =
    JDP.decode DeleteUserAttributesResponse



{-| One of

* `DeliveryMediumType_SMS`
* `DeliveryMediumType_EMAIL`

-}
type DeliveryMediumType
    = DeliveryMediumType_SMS
    | DeliveryMediumType_EMAIL



deliveryMediumTypeDecoder : JD.Decoder DeliveryMediumType
deliveryMediumTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SMS" ->
                        JD.succeed DeliveryMediumType_SMS

                    "EMAIL" ->
                        JD.succeed DeliveryMediumType_EMAIL


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from describeUserImportJob
-}
type alias DescribeUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



describeUserImportJobResponseDecoder : JD.Decoder DescribeUserImportJobResponse
describeUserImportJobResponseDecoder =
    JDP.decode DescribeUserImportJobResponse
        |> JDP.optional "userImportJob" (JD.nullable userImportJobTypeDecoder) Nothing




{-| Type of HTTP response from describeUserPoolClient
-}
type alias DescribeUserPoolClientResponse =
    { userPoolClient : Maybe UserPoolClientType
    }



describeUserPoolClientResponseDecoder : JD.Decoder DescribeUserPoolClientResponse
describeUserPoolClientResponseDecoder =
    JDP.decode DescribeUserPoolClientResponse
        |> JDP.optional "userPoolClient" (JD.nullable userPoolClientTypeDecoder) Nothing




{-| Type of HTTP response from describeUserPool
-}
type alias DescribeUserPoolResponse =
    { userPool : Maybe UserPoolType
    }



describeUserPoolResponseDecoder : JD.Decoder DescribeUserPoolResponse
describeUserPoolResponseDecoder =
    JDP.decode DescribeUserPoolResponse
        |> JDP.optional "userPool" (JD.nullable userPoolTypeDecoder) Nothing




{-| <p>The type of configuration for the user pool's device tracking.</p>
-}
type alias DeviceConfigurationType =
    { challengeRequiredOnNewDevice : Maybe Bool
    , deviceOnlyRememberedOnUserPrompt : Maybe Bool
    }



deviceConfigurationTypeDecoder : JD.Decoder DeviceConfigurationType
deviceConfigurationTypeDecoder =
    JDP.decode DeviceConfigurationType
        |> JDP.optional "challengeRequiredOnNewDevice" (JD.nullable JD.bool) Nothing
        |> JDP.optional "deviceOnlyRememberedOnUserPrompt" (JD.nullable JD.bool) Nothing




{-| One of

* `DeviceRememberedStatusType_remembered`
* `DeviceRememberedStatusType_not_remembered`

-}
type DeviceRememberedStatusType
    = DeviceRememberedStatusType_remembered
    | DeviceRememberedStatusType_not_remembered



deviceRememberedStatusTypeDecoder : JD.Decoder DeviceRememberedStatusType
deviceRememberedStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "remembered" ->
                        JD.succeed DeviceRememberedStatusType_remembered

                    "not_remembered" ->
                        JD.succeed DeviceRememberedStatusType_not_remembered


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The device verifier against which it will be authenticated.</p>
-}
type alias DeviceSecretVerifierConfigType =
    { passwordVerifier : Maybe String
    , salt : Maybe String
    }



deviceSecretVerifierConfigTypeDecoder : JD.Decoder DeviceSecretVerifierConfigType
deviceSecretVerifierConfigTypeDecoder =
    JDP.decode DeviceSecretVerifierConfigType
        |> JDP.optional "passwordVerifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "salt" (JD.nullable JD.string) Nothing




{-| <p>The device type.</p>
-}
type alias DeviceType =
    { deviceKey : Maybe String
    , deviceAttributes : Maybe (List AttributeType)
    , deviceCreateDate : Maybe Date
    , deviceLastModifiedDate : Maybe Date
    , deviceLastAuthenticatedDate : Maybe Date
    }



deviceTypeDecoder : JD.Decoder DeviceType
deviceTypeDecoder =
    JDP.decode DeviceType
        |> JDP.optional "deviceKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceAttributes" (JD.nullable (JD.list attributeTypeDecoder)) Nothing
        |> JDP.optional "deviceCreateDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deviceLastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "deviceLastAuthenticatedDate" (JD.nullable JDX.date) Nothing




{-| <p>The email configuration type.</p>
-}
type alias EmailConfigurationType =
    { sourceArn : Maybe String
    , replyToEmailAddress : Maybe String
    }



emailConfigurationTypeDecoder : JD.Decoder EmailConfigurationType
emailConfigurationTypeDecoder =
    JDP.decode EmailConfigurationType
        |> JDP.optional "sourceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "replyToEmailAddress" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown if a code has expired.</p>
-}
type alias ExpiredCodeException =
    { message : Maybe String
    }



expiredCodeExceptionDecoder : JD.Decoder ExpiredCodeException
expiredCodeExceptionDecoder =
    JDP.decode ExpiredCodeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ExplicitAuthFlowsType_ADMIN_NO_SRP_AUTH`
* `ExplicitAuthFlowsType_CUSTOM_AUTH_FLOW_ONLY`

-}
type ExplicitAuthFlowsType
    = ExplicitAuthFlowsType_ADMIN_NO_SRP_AUTH
    | ExplicitAuthFlowsType_CUSTOM_AUTH_FLOW_ONLY



explicitAuthFlowsTypeDecoder : JD.Decoder ExplicitAuthFlowsType
explicitAuthFlowsTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ADMIN_NO_SRP_AUTH" ->
                        JD.succeed ExplicitAuthFlowsType_ADMIN_NO_SRP_AUTH

                    "CUSTOM_AUTH_FLOW_ONLY" ->
                        JD.succeed ExplicitAuthFlowsType_CUSTOM_AUTH_FLOW_ONLY


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from forgotPassword
-}
type alias ForgotPasswordResponse =
    { codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    }



forgotPasswordResponseDecoder : JD.Decoder ForgotPasswordResponse
forgotPasswordResponseDecoder =
    JDP.decode ForgotPasswordResponse
        |> JDP.optional "codeDeliveryDetails" (JD.nullable codeDeliveryDetailsTypeDecoder) Nothing




{-| Type of HTTP response from getCSVHeader
-}
type alias GetCSVHeaderResponse =
    { userPoolId : Maybe String
    , cSVHeader : Maybe (List String)
    }



getCSVHeaderResponseDecoder : JD.Decoder GetCSVHeaderResponse
getCSVHeaderResponseDecoder =
    JDP.decode GetCSVHeaderResponse
        |> JDP.optional "userPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "cSVHeader" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from getDevice
-}
type alias GetDeviceResponse =
    { device : DeviceType
    }



getDeviceResponseDecoder : JD.Decoder GetDeviceResponse
getDeviceResponseDecoder =
    JDP.decode GetDeviceResponse
        |> JDP.required "device" deviceTypeDecoder




{-| Type of HTTP response from getGroup
-}
type alias GetGroupResponse =
    { group : Maybe GroupType
    }



getGroupResponseDecoder : JD.Decoder GetGroupResponse
getGroupResponseDecoder =
    JDP.decode GetGroupResponse
        |> JDP.optional "group" (JD.nullable groupTypeDecoder) Nothing




{-| Type of HTTP response from getUserAttributeVerificationCode
-}
type alias GetUserAttributeVerificationCodeResponse =
    { codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    }



getUserAttributeVerificationCodeResponseDecoder : JD.Decoder GetUserAttributeVerificationCodeResponse
getUserAttributeVerificationCodeResponseDecoder =
    JDP.decode GetUserAttributeVerificationCodeResponse
        |> JDP.optional "codeDeliveryDetails" (JD.nullable codeDeliveryDetailsTypeDecoder) Nothing




{-| Type of HTTP response from getUser
-}
type alias GetUserResponse =
    { username : String
    , userAttributes : (List AttributeType)
    , mFAOptions : Maybe (List MFAOptionType)
    }



getUserResponseDecoder : JD.Decoder GetUserResponse
getUserResponseDecoder =
    JDP.decode GetUserResponse
        |> JDP.required "username" JD.string
        |> JDP.required "userAttributes" (JD.list attributeTypeDecoder)
        |> JDP.optional "mFAOptions" (JD.nullable (JD.list mFAOptionTypeDecoder)) Nothing




{-| Type of HTTP response from globalSignOut
-}
type alias GlobalSignOutResponse =
    { 
    }



globalSignOutResponseDecoder : JD.Decoder GlobalSignOutResponse
globalSignOutResponseDecoder =
    JDP.decode GlobalSignOutResponse



{-| <p>This exception is thrown when Amazon Cognito encounters a group that already exists in the user pool.</p>
-}
type alias GroupExistsException =
    { message : Maybe String
    }



groupExistsExceptionDecoder : JD.Decoder GroupExistsException
groupExistsExceptionDecoder =
    JDP.decode GroupExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The group type.</p>
-}
type alias GroupType =
    { groupName : Maybe String
    , userPoolId : Maybe String
    , description : Maybe String
    , roleArn : Maybe String
    , precedence : Maybe Int
    , lastModifiedDate : Maybe Date
    , creationDate : Maybe Date
    }



groupTypeDecoder : JD.Decoder GroupType
groupTypeDecoder =
    JDP.decode GroupType
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "userPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "precedence" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from initiateAuth
-}
type alias InitiateAuthResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



initiateAuthResponseDecoder : JD.Decoder InitiateAuthResponse
initiateAuthResponseDecoder =
    JDP.decode InitiateAuthResponse
        |> JDP.optional "challengeName" (JD.nullable challengeNameTypeDecoder) Nothing
        |> JDP.optional "session" (JD.nullable JD.string) Nothing
        |> JDP.optional "challengeParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "authenticationResult" (JD.nullable authenticationResultTypeDecoder) Nothing




{-| <p>This exception is thrown when Amazon Cognito encounters an internal error.</p>
-}
type alias InternalErrorException =
    { message : Maybe String
    }



internalErrorExceptionDecoder : JD.Decoder InternalErrorException
internalErrorExceptionDecoder =
    JDP.decode InternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when Amazon Cognito is not allowed to use your email identity. HTTP status code: 400.</p>
-}
type alias InvalidEmailRoleAccessPolicyException =
    { message : Maybe String
    }



invalidEmailRoleAccessPolicyExceptionDecoder : JD.Decoder InvalidEmailRoleAccessPolicyException
invalidEmailRoleAccessPolicyExceptionDecoder =
    JDP.decode InvalidEmailRoleAccessPolicyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the Amazon Cognito service encounters an invalid AWS Lambda response.</p>
-}
type alias InvalidLambdaResponseException =
    { message : Maybe String
    }



invalidLambdaResponseExceptionDecoder : JD.Decoder InvalidLambdaResponseException
invalidLambdaResponseExceptionDecoder =
    JDP.decode InvalidLambdaResponseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the Amazon Cognito service encounters an invalid parameter.</p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the Amazon Cognito service encounters an invalid password.</p>
-}
type alias InvalidPasswordException =
    { message : Maybe String
    }



invalidPasswordExceptionDecoder : JD.Decoder InvalidPasswordException
invalidPasswordExceptionDecoder =
    JDP.decode InvalidPasswordException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is returned when the role provided for SMS configuration does not have permission to publish using Amazon SNS.</p>
-}
type alias InvalidSmsRoleAccessPolicyException =
    { message : Maybe String
    }



invalidSmsRoleAccessPolicyExceptionDecoder : JD.Decoder InvalidSmsRoleAccessPolicyException
invalidSmsRoleAccessPolicyExceptionDecoder =
    JDP.decode InvalidSmsRoleAccessPolicyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the trust relationship is invalid for the role provided for SMS configuration. This can happen if you do not trust <b>cognito-idp.amazonaws.com</b> or the external ID provided in the role does not match what is provided in the SMS configuration for the user pool.</p>
-}
type alias InvalidSmsRoleTrustRelationshipException =
    { message : Maybe String
    }



invalidSmsRoleTrustRelationshipExceptionDecoder : JD.Decoder InvalidSmsRoleTrustRelationshipException
invalidSmsRoleTrustRelationshipExceptionDecoder =
    JDP.decode InvalidSmsRoleTrustRelationshipException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the user pool configuration is invalid.</p>
-}
type alias InvalidUserPoolConfigurationException =
    { message : Maybe String
    }



invalidUserPoolConfigurationExceptionDecoder : JD.Decoder InvalidUserPoolConfigurationException
invalidUserPoolConfigurationExceptionDecoder =
    JDP.decode InvalidUserPoolConfigurationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Specifies the type of configuration for AWS Lambda triggers.</p>
-}
type alias LambdaConfigType =
    { preSignUp : Maybe String
    , customMessage : Maybe String
    , postConfirmation : Maybe String
    , preAuthentication : Maybe String
    , postAuthentication : Maybe String
    , defineAuthChallenge : Maybe String
    , createAuthChallenge : Maybe String
    , verifyAuthChallengeResponse : Maybe String
    }



lambdaConfigTypeDecoder : JD.Decoder LambdaConfigType
lambdaConfigTypeDecoder =
    JDP.decode LambdaConfigType
        |> JDP.optional "preSignUp" (JD.nullable JD.string) Nothing
        |> JDP.optional "customMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "postConfirmation" (JD.nullable JD.string) Nothing
        |> JDP.optional "preAuthentication" (JD.nullable JD.string) Nothing
        |> JDP.optional "postAuthentication" (JD.nullable JD.string) Nothing
        |> JDP.optional "defineAuthChallenge" (JD.nullable JD.string) Nothing
        |> JDP.optional "createAuthChallenge" (JD.nullable JD.string) Nothing
        |> JDP.optional "verifyAuthChallengeResponse" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when a user exceeds the limit for a requested AWS resource.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDevices
-}
type alias ListDevicesResponse =
    { devices : Maybe (List DeviceType)
    , paginationToken : Maybe String
    }



listDevicesResponseDecoder : JD.Decoder ListDevicesResponse
listDevicesResponseDecoder =
    JDP.decode ListDevicesResponse
        |> JDP.optional "devices" (JD.nullable (JD.list deviceTypeDecoder)) Nothing
        |> JDP.optional "paginationToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listGroups
-}
type alias ListGroupsResponse =
    { groups : Maybe (List GroupType)
    , nextToken : Maybe String
    }



listGroupsResponseDecoder : JD.Decoder ListGroupsResponse
listGroupsResponseDecoder =
    JDP.decode ListGroupsResponse
        |> JDP.optional "groups" (JD.nullable (JD.list groupTypeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUserImportJobs
-}
type alias ListUserImportJobsResponse =
    { userImportJobs : Maybe (List UserImportJobType)
    , paginationToken : Maybe String
    }



listUserImportJobsResponseDecoder : JD.Decoder ListUserImportJobsResponse
listUserImportJobsResponseDecoder =
    JDP.decode ListUserImportJobsResponse
        |> JDP.optional "userImportJobs" (JD.nullable (JD.list userImportJobTypeDecoder)) Nothing
        |> JDP.optional "paginationToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUserPoolClients
-}
type alias ListUserPoolClientsResponse =
    { userPoolClients : Maybe (List UserPoolClientDescription)
    , nextToken : Maybe String
    }



listUserPoolClientsResponseDecoder : JD.Decoder ListUserPoolClientsResponse
listUserPoolClientsResponseDecoder =
    JDP.decode ListUserPoolClientsResponse
        |> JDP.optional "userPoolClients" (JD.nullable (JD.list userPoolClientDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUserPools
-}
type alias ListUserPoolsResponse =
    { userPools : Maybe (List UserPoolDescriptionType)
    , nextToken : Maybe String
    }



listUserPoolsResponseDecoder : JD.Decoder ListUserPoolsResponse
listUserPoolsResponseDecoder =
    JDP.decode ListUserPoolsResponse
        |> JDP.optional "userPools" (JD.nullable (JD.list userPoolDescriptionTypeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUsersInGroup
-}
type alias ListUsersInGroupResponse =
    { users : Maybe (List UserType)
    , nextToken : Maybe String
    }



listUsersInGroupResponseDecoder : JD.Decoder ListUsersInGroupResponse
listUsersInGroupResponseDecoder =
    JDP.decode ListUsersInGroupResponse
        |> JDP.optional "users" (JD.nullable (JD.list userTypeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUsers
-}
type alias ListUsersResponse =
    { users : Maybe (List UserType)
    , paginationToken : Maybe String
    }



listUsersResponseDecoder : JD.Decoder ListUsersResponse
listUsersResponseDecoder =
    JDP.decode ListUsersResponse
        |> JDP.optional "users" (JD.nullable (JD.list userTypeDecoder)) Nothing
        |> JDP.optional "paginationToken" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when Amazon Cognito cannot find a multi-factor authentication (MFA) method.</p>
-}
type alias MFAMethodNotFoundException =
    { message : Maybe String
    }



mFAMethodNotFoundExceptionDecoder : JD.Decoder MFAMethodNotFoundException
mFAMethodNotFoundExceptionDecoder =
    JDP.decode MFAMethodNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Specifies the different settings for multi-factor authentication (MFA).</p>
-}
type alias MFAOptionType =
    { deliveryMedium : Maybe DeliveryMediumType
    , attributeName : Maybe String
    }



mFAOptionTypeDecoder : JD.Decoder MFAOptionType
mFAOptionTypeDecoder =
    JDP.decode MFAOptionType
        |> JDP.optional "deliveryMedium" (JD.nullable deliveryMediumTypeDecoder) Nothing
        |> JDP.optional "attributeName" (JD.nullable JD.string) Nothing




{-| One of

* `MessageActionType_RESEND`
* `MessageActionType_SUPPRESS`

-}
type MessageActionType
    = MessageActionType_RESEND
    | MessageActionType_SUPPRESS



messageActionTypeDecoder : JD.Decoder MessageActionType
messageActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESEND" ->
                        JD.succeed MessageActionType_RESEND

                    "SUPPRESS" ->
                        JD.succeed MessageActionType_SUPPRESS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The message template structure.</p>
-}
type alias MessageTemplateType =
    { sMSMessage : Maybe String
    , emailMessage : Maybe String
    , emailSubject : Maybe String
    }



messageTemplateTypeDecoder : JD.Decoder MessageTemplateType
messageTemplateTypeDecoder =
    JDP.decode MessageTemplateType
        |> JDP.optional "sMSMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "emailMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "emailSubject" (JD.nullable JD.string) Nothing




{-| <p>The new device metadata type.</p>
-}
type alias NewDeviceMetadataType =
    { deviceKey : Maybe String
    , deviceGroupKey : Maybe String
    }



newDeviceMetadataTypeDecoder : JD.Decoder NewDeviceMetadataType
newDeviceMetadataTypeDecoder =
    JDP.decode NewDeviceMetadataType
        |> JDP.optional "deviceKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceGroupKey" (JD.nullable JD.string) Nothing




{-| <p>This exception gets thrown when a user is not authorized.</p>
-}
type alias NotAuthorizedException =
    { message : Maybe String
    }



notAuthorizedExceptionDecoder : JD.Decoder NotAuthorizedException
notAuthorizedExceptionDecoder =
    JDP.decode NotAuthorizedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The minimum and maximum value of an attribute that is of the number data type.</p>
-}
type alias NumberAttributeConstraintsType =
    { minValue : Maybe String
    , maxValue : Maybe String
    }



numberAttributeConstraintsTypeDecoder : JD.Decoder NumberAttributeConstraintsType
numberAttributeConstraintsTypeDecoder =
    JDP.decode NumberAttributeConstraintsType
        |> JDP.optional "minValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxValue" (JD.nullable JD.string) Nothing




{-| <p>The password policy type.</p>
-}
type alias PasswordPolicyType =
    { minimumLength : Maybe Int
    , requireUppercase : Maybe Bool
    , requireLowercase : Maybe Bool
    , requireNumbers : Maybe Bool
    , requireSymbols : Maybe Bool
    }



passwordPolicyTypeDecoder : JD.Decoder PasswordPolicyType
passwordPolicyTypeDecoder =
    JDP.decode PasswordPolicyType
        |> JDP.optional "minimumLength" (JD.nullable JD.int) Nothing
        |> JDP.optional "requireUppercase" (JD.nullable JD.bool) Nothing
        |> JDP.optional "requireLowercase" (JD.nullable JD.bool) Nothing
        |> JDP.optional "requireNumbers" (JD.nullable JD.bool) Nothing
        |> JDP.optional "requireSymbols" (JD.nullable JD.bool) Nothing




{-| <p>This exception is thrown when a password reset is required.</p>
-}
type alias PasswordResetRequiredException =
    { message : Maybe String
    }



passwordResetRequiredExceptionDecoder : JD.Decoder PasswordResetRequiredException
passwordResetRequiredExceptionDecoder =
    JDP.decode PasswordResetRequiredException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when a precondition is not met.</p>
-}
type alias PreconditionNotMetException =
    { message : Maybe String
    }



preconditionNotMetExceptionDecoder : JD.Decoder PreconditionNotMetException
preconditionNotMetExceptionDecoder =
    JDP.decode PreconditionNotMetException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from resendConfirmationCode
-}
type alias ResendConfirmationCodeResponse =
    { codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    }



resendConfirmationCodeResponseDecoder : JD.Decoder ResendConfirmationCodeResponse
resendConfirmationCodeResponseDecoder =
    JDP.decode ResendConfirmationCodeResponse
        |> JDP.optional "codeDeliveryDetails" (JD.nullable codeDeliveryDetailsTypeDecoder) Nothing




{-| <p>This exception is thrown when the Amazon Cognito service cannot find the requested resource.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from respondToAuthChallenge
-}
type alias RespondToAuthChallengeResponse =
    { challengeName : Maybe ChallengeNameType
    , session : Maybe String
    , challengeParameters : Maybe (Dict String String)
    , authenticationResult : Maybe AuthenticationResultType
    }



respondToAuthChallengeResponseDecoder : JD.Decoder RespondToAuthChallengeResponse
respondToAuthChallengeResponseDecoder =
    JDP.decode RespondToAuthChallengeResponse
        |> JDP.optional "challengeName" (JD.nullable challengeNameTypeDecoder) Nothing
        |> JDP.optional "session" (JD.nullable JD.string) Nothing
        |> JDP.optional "challengeParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "authenticationResult" (JD.nullable authenticationResultTypeDecoder) Nothing




{-| <p>Contains information about the schema attribute.</p>
-}
type alias SchemaAttributeType =
    { name : Maybe String
    , attributeDataType : Maybe AttributeDataType
    , developerOnlyAttribute : Maybe Bool
    , mutable : Maybe Bool
    , required : Maybe Bool
    , numberAttributeConstraints : Maybe NumberAttributeConstraintsType
    , stringAttributeConstraints : Maybe StringAttributeConstraintsType
    }



schemaAttributeTypeDecoder : JD.Decoder SchemaAttributeType
schemaAttributeTypeDecoder =
    JDP.decode SchemaAttributeType
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributeDataType" (JD.nullable attributeDataTypeDecoder) Nothing
        |> JDP.optional "developerOnlyAttribute" (JD.nullable JD.bool) Nothing
        |> JDP.optional "mutable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "required" (JD.nullable JD.bool) Nothing
        |> JDP.optional "numberAttributeConstraints" (JD.nullable numberAttributeConstraintsTypeDecoder) Nothing
        |> JDP.optional "stringAttributeConstraints" (JD.nullable stringAttributeConstraintsTypeDecoder) Nothing




{-| Type of HTTP response from setUserSettings
-}
type alias SetUserSettingsResponse =
    { 
    }



setUserSettingsResponseDecoder : JD.Decoder SetUserSettingsResponse
setUserSettingsResponseDecoder =
    JDP.decode SetUserSettingsResponse



{-| Type of HTTP response from signUp
-}
type alias SignUpResponse =
    { userConfirmed : Maybe Bool
    , codeDeliveryDetails : Maybe CodeDeliveryDetailsType
    }



signUpResponseDecoder : JD.Decoder SignUpResponse
signUpResponseDecoder =
    JDP.decode SignUpResponse
        |> JDP.optional "userConfirmed" (JD.nullable JD.bool) Nothing
        |> JDP.optional "codeDeliveryDetails" (JD.nullable codeDeliveryDetailsTypeDecoder) Nothing




{-| <p>The SMS configuratoin type.</p>
-}
type alias SmsConfigurationType =
    { snsCallerArn : String
    , externalId : Maybe String
    }



smsConfigurationTypeDecoder : JD.Decoder SmsConfigurationType
smsConfigurationTypeDecoder =
    JDP.decode SmsConfigurationType
        |> JDP.required "snsCallerArn" JD.string
        |> JDP.optional "externalId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from startUserImportJob
-}
type alias StartUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



startUserImportJobResponseDecoder : JD.Decoder StartUserImportJobResponse
startUserImportJobResponseDecoder =
    JDP.decode StartUserImportJobResponse
        |> JDP.optional "userImportJob" (JD.nullable userImportJobTypeDecoder) Nothing




{-| One of

* `StatusType_Enabled`
* `StatusType_Disabled`

-}
type StatusType
    = StatusType_Enabled
    | StatusType_Disabled



statusTypeDecoder : JD.Decoder StatusType
statusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed StatusType_Enabled

                    "Disabled" ->
                        JD.succeed StatusType_Disabled


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from stopUserImportJob
-}
type alias StopUserImportJobResponse =
    { userImportJob : Maybe UserImportJobType
    }



stopUserImportJobResponseDecoder : JD.Decoder StopUserImportJobResponse
stopUserImportJobResponseDecoder =
    JDP.decode StopUserImportJobResponse
        |> JDP.optional "userImportJob" (JD.nullable userImportJobTypeDecoder) Nothing




{-| <p>The type of constraints associated with an attribute of the string type.</p>
-}
type alias StringAttributeConstraintsType =
    { minLength : Maybe String
    , maxLength : Maybe String
    }



stringAttributeConstraintsTypeDecoder : JD.Decoder StringAttributeConstraintsType
stringAttributeConstraintsTypeDecoder =
    JDP.decode StringAttributeConstraintsType
        |> JDP.optional "minLength" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxLength" (JD.nullable JD.string) Nothing




{-| <p>This exception gets thrown when the user has made too many failed attempts for a given action (e.g., sign in).</p>
-}
type alias TooManyFailedAttemptsException =
    { message : Maybe String
    }



tooManyFailedAttemptsExceptionDecoder : JD.Decoder TooManyFailedAttemptsException
tooManyFailedAttemptsExceptionDecoder =
    JDP.decode TooManyFailedAttemptsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception gets thrown when the user has made too many requests for a given operation.</p>
-}
type alias TooManyRequestsException =
    { message : Maybe String
    }



tooManyRequestsExceptionDecoder : JD.Decoder TooManyRequestsException
tooManyRequestsExceptionDecoder =
    JDP.decode TooManyRequestsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception gets thrown when the Amazon Cognito service encounters an unexpected exception with the AWS Lambda service.</p>
-}
type alias UnexpectedLambdaException =
    { message : Maybe String
    }



unexpectedLambdaExceptionDecoder : JD.Decoder UnexpectedLambdaException
unexpectedLambdaExceptionDecoder =
    JDP.decode UnexpectedLambdaException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request failed because the user is in an unsupported state.</p>
-}
type alias UnsupportedUserStateException =
    { message : Maybe String
    }



unsupportedUserStateExceptionDecoder : JD.Decoder UnsupportedUserStateException
unsupportedUserStateExceptionDecoder =
    JDP.decode UnsupportedUserStateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateDeviceStatus
-}
type alias UpdateDeviceStatusResponse =
    { 
    }



updateDeviceStatusResponseDecoder : JD.Decoder UpdateDeviceStatusResponse
updateDeviceStatusResponseDecoder =
    JDP.decode UpdateDeviceStatusResponse



{-| Type of HTTP response from updateGroup
-}
type alias UpdateGroupResponse =
    { group : Maybe GroupType
    }



updateGroupResponseDecoder : JD.Decoder UpdateGroupResponse
updateGroupResponseDecoder =
    JDP.decode UpdateGroupResponse
        |> JDP.optional "group" (JD.nullable groupTypeDecoder) Nothing




{-| Type of HTTP response from updateUserAttributes
-}
type alias UpdateUserAttributesResponse =
    { codeDeliveryDetailsList : Maybe (List CodeDeliveryDetailsType)
    }



updateUserAttributesResponseDecoder : JD.Decoder UpdateUserAttributesResponse
updateUserAttributesResponseDecoder =
    JDP.decode UpdateUserAttributesResponse
        |> JDP.optional "codeDeliveryDetailsList" (JD.nullable (JD.list codeDeliveryDetailsTypeDecoder)) Nothing




{-| Type of HTTP response from updateUserPoolClient
-}
type alias UpdateUserPoolClientResponse =
    { userPoolClient : Maybe UserPoolClientType
    }



updateUserPoolClientResponseDecoder : JD.Decoder UpdateUserPoolClientResponse
updateUserPoolClientResponseDecoder =
    JDP.decode UpdateUserPoolClientResponse
        |> JDP.optional "userPoolClient" (JD.nullable userPoolClientTypeDecoder) Nothing




{-| Type of HTTP response from updateUserPool
-}
type alias UpdateUserPoolResponse =
    { 
    }



updateUserPoolResponseDecoder : JD.Decoder UpdateUserPoolResponse
updateUserPoolResponseDecoder =
    JDP.decode UpdateUserPoolResponse



{-| <p>This exception is thrown when you are trying to modify a user pool while a user import job is in progress for that pool.</p>
-}
type alias UserImportInProgressException =
    { message : Maybe String
    }



userImportInProgressExceptionDecoder : JD.Decoder UserImportInProgressException
userImportInProgressExceptionDecoder =
    JDP.decode UserImportInProgressException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `UserImportJobStatusType_Created`
* `UserImportJobStatusType_Pending`
* `UserImportJobStatusType_InProgress`
* `UserImportJobStatusType_Stopping`
* `UserImportJobStatusType_Expired`
* `UserImportJobStatusType_Stopped`
* `UserImportJobStatusType_Failed`
* `UserImportJobStatusType_Succeeded`

-}
type UserImportJobStatusType
    = UserImportJobStatusType_Created
    | UserImportJobStatusType_Pending
    | UserImportJobStatusType_InProgress
    | UserImportJobStatusType_Stopping
    | UserImportJobStatusType_Expired
    | UserImportJobStatusType_Stopped
    | UserImportJobStatusType_Failed
    | UserImportJobStatusType_Succeeded



userImportJobStatusTypeDecoder : JD.Decoder UserImportJobStatusType
userImportJobStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Created" ->
                        JD.succeed UserImportJobStatusType_Created

                    "Pending" ->
                        JD.succeed UserImportJobStatusType_Pending

                    "InProgress" ->
                        JD.succeed UserImportJobStatusType_InProgress

                    "Stopping" ->
                        JD.succeed UserImportJobStatusType_Stopping

                    "Expired" ->
                        JD.succeed UserImportJobStatusType_Expired

                    "Stopped" ->
                        JD.succeed UserImportJobStatusType_Stopped

                    "Failed" ->
                        JD.succeed UserImportJobStatusType_Failed

                    "Succeeded" ->
                        JD.succeed UserImportJobStatusType_Succeeded


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The user import job type.</p>
-}
type alias UserImportJobType =
    { jobName : Maybe String
    , jobId : Maybe String
    , userPoolId : Maybe String
    , preSignedUrl : Maybe String
    , creationDate : Maybe Date
    , startDate : Maybe Date
    , completionDate : Maybe Date
    , status : Maybe UserImportJobStatusType
    , cloudWatchLogsRoleArn : Maybe String
    , importedUsers : Maybe Int
    , skippedUsers : Maybe Int
    , failedUsers : Maybe Int
    , completionMessage : Maybe String
    }



userImportJobTypeDecoder : JD.Decoder UserImportJobType
userImportJobTypeDecoder =
    JDP.decode UserImportJobType
        |> JDP.optional "jobName" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "userPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "preSignedUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "completionDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable userImportJobStatusTypeDecoder) Nothing
        |> JDP.optional "cloudWatchLogsRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "importedUsers" (JD.nullable JD.int) Nothing
        |> JDP.optional "skippedUsers" (JD.nullable JD.int) Nothing
        |> JDP.optional "failedUsers" (JD.nullable JD.int) Nothing
        |> JDP.optional "completionMessage" (JD.nullable JD.string) Nothing




{-| <p>This exception gets thrown when the Amazon Cognito service encounters a user validation exception with the AWS Lambda service.</p>
-}
type alias UserLambdaValidationException =
    { message : Maybe String
    }



userLambdaValidationExceptionDecoder : JD.Decoder UserLambdaValidationException
userLambdaValidationExceptionDecoder =
    JDP.decode UserLambdaValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when a user is not confirmed successfully.</p>
-}
type alias UserNotConfirmedException =
    { message : Maybe String
    }



userNotConfirmedExceptionDecoder : JD.Decoder UserNotConfirmedException
userNotConfirmedExceptionDecoder =
    JDP.decode UserNotConfirmedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when a user is not found.</p>
-}
type alias UserNotFoundException =
    { message : Maybe String
    }



userNotFoundExceptionDecoder : JD.Decoder UserNotFoundException
userNotFoundExceptionDecoder =
    JDP.decode UserNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The description of the user pool client.</p>
-}
type alias UserPoolClientDescription =
    { clientId : Maybe String
    , userPoolId : Maybe String
    , clientName : Maybe String
    }



userPoolClientDescriptionDecoder : JD.Decoder UserPoolClientDescription
userPoolClientDescriptionDecoder =
    JDP.decode UserPoolClientDescription
        |> JDP.optional "clientId" (JD.nullable JD.string) Nothing
        |> JDP.optional "userPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientName" (JD.nullable JD.string) Nothing




{-| <p>A user pool of the client type.</p>
-}
type alias UserPoolClientType =
    { userPoolId : Maybe String
    , clientName : Maybe String
    , clientId : Maybe String
    , clientSecret : Maybe String
    , lastModifiedDate : Maybe Date
    , creationDate : Maybe Date
    , refreshTokenValidity : Maybe Int
    , readAttributes : Maybe (List String)
    , writeAttributes : Maybe (List String)
    , explicitAuthFlows : Maybe (List ExplicitAuthFlowsType)
    }



userPoolClientTypeDecoder : JD.Decoder UserPoolClientType
userPoolClientTypeDecoder =
    JDP.decode UserPoolClientType
        |> JDP.optional "userPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientName" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientSecret" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "refreshTokenValidity" (JD.nullable JD.int) Nothing
        |> JDP.optional "readAttributes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "writeAttributes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "explicitAuthFlows" (JD.nullable (JD.list explicitAuthFlowsTypeDecoder)) Nothing




{-| <p>A user pool description.</p>
-}
type alias UserPoolDescriptionType =
    { id : Maybe String
    , name : Maybe String
    , lambdaConfig : Maybe LambdaConfigType
    , status : Maybe StatusType
    , lastModifiedDate : Maybe Date
    , creationDate : Maybe Date
    }



userPoolDescriptionTypeDecoder : JD.Decoder UserPoolDescriptionType
userPoolDescriptionTypeDecoder =
    JDP.decode UserPoolDescriptionType
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "lambdaConfig" (JD.nullable lambdaConfigTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable statusTypeDecoder) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing




{-| One of

* `UserPoolMfaType_OFF`
* `UserPoolMfaType_ON`
* `UserPoolMfaType_OPTIONAL`

-}
type UserPoolMfaType
    = UserPoolMfaType_OFF
    | UserPoolMfaType_ON
    | UserPoolMfaType_OPTIONAL



userPoolMfaTypeDecoder : JD.Decoder UserPoolMfaType
userPoolMfaTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OFF" ->
                        JD.succeed UserPoolMfaType_OFF

                    "ON" ->
                        JD.succeed UserPoolMfaType_ON

                    "OPTIONAL" ->
                        JD.succeed UserPoolMfaType_OPTIONAL


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The type of policy in a user pool.</p>
-}
type alias UserPoolPolicyType =
    { passwordPolicy : Maybe PasswordPolicyType
    }



userPoolPolicyTypeDecoder : JD.Decoder UserPoolPolicyType
userPoolPolicyTypeDecoder =
    JDP.decode UserPoolPolicyType
        |> JDP.optional "passwordPolicy" (JD.nullable passwordPolicyTypeDecoder) Nothing




{-| <p>This exception gets thrown when a user pool tag cannot be set or updated.</p>
-}
type alias UserPoolTaggingException =
    { message : Maybe String
    }



userPoolTaggingExceptionDecoder : JD.Decoder UserPoolTaggingException
userPoolTaggingExceptionDecoder =
    JDP.decode UserPoolTaggingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A container with information about the user pool type.</p>
-}
type alias UserPoolType =
    { id : Maybe String
    , name : Maybe String
    , policies : Maybe UserPoolPolicyType
    , lambdaConfig : Maybe LambdaConfigType
    , status : Maybe StatusType
    , lastModifiedDate : Maybe Date
    , creationDate : Maybe Date
    , schemaAttributes : Maybe (List SchemaAttributeType)
    , autoVerifiedAttributes : Maybe (List VerifiedAttributeType)
    , aliasAttributes : Maybe (List AliasAttributeType)
    , smsVerificationMessage : Maybe String
    , emailVerificationMessage : Maybe String
    , emailVerificationSubject : Maybe String
    , smsAuthenticationMessage : Maybe String
    , mfaConfiguration : Maybe UserPoolMfaType
    , deviceConfiguration : Maybe DeviceConfigurationType
    , estimatedNumberOfUsers : Maybe Int
    , emailConfiguration : Maybe EmailConfigurationType
    , smsConfiguration : Maybe SmsConfigurationType
    , userPoolTags : Maybe (Dict String String)
    , smsConfigurationFailure : Maybe String
    , emailConfigurationFailure : Maybe String
    , adminCreateUserConfig : Maybe AdminCreateUserConfigType
    }



userPoolTypeDecoder : JD.Decoder UserPoolType
userPoolTypeDecoder =
    JDP.decode UserPoolType
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "policies" (JD.nullable userPoolPolicyTypeDecoder) Nothing
        |> JDP.optional "lambdaConfig" (JD.nullable lambdaConfigTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable statusTypeDecoder) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "schemaAttributes" (JD.nullable (JD.list schemaAttributeTypeDecoder)) Nothing
        |> JDP.optional "autoVerifiedAttributes" (JD.nullable (JD.list verifiedAttributeTypeDecoder)) Nothing
        |> JDP.optional "aliasAttributes" (JD.nullable (JD.list aliasAttributeTypeDecoder)) Nothing
        |> JDP.optional "smsVerificationMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "emailVerificationMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "emailVerificationSubject" (JD.nullable JD.string) Nothing
        |> JDP.optional "smsAuthenticationMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "mfaConfiguration" (JD.nullable userPoolMfaTypeDecoder) Nothing
        |> JDP.optional "deviceConfiguration" (JD.nullable deviceConfigurationTypeDecoder) Nothing
        |> JDP.optional "estimatedNumberOfUsers" (JD.nullable JD.int) Nothing
        |> JDP.optional "emailConfiguration" (JD.nullable emailConfigurationTypeDecoder) Nothing
        |> JDP.optional "smsConfiguration" (JD.nullable smsConfigurationTypeDecoder) Nothing
        |> JDP.optional "userPoolTags" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "smsConfigurationFailure" (JD.nullable JD.string) Nothing
        |> JDP.optional "emailConfigurationFailure" (JD.nullable JD.string) Nothing
        |> JDP.optional "adminCreateUserConfig" (JD.nullable adminCreateUserConfigTypeDecoder) Nothing




{-| One of

* `UserStatusType_UNCONFIRMED`
* `UserStatusType_CONFIRMED`
* `UserStatusType_ARCHIVED`
* `UserStatusType_COMPROMISED`
* `UserStatusType_UNKNOWN`
* `UserStatusType_RESET_REQUIRED`
* `UserStatusType_FORCE_CHANGE_PASSWORD`

-}
type UserStatusType
    = UserStatusType_UNCONFIRMED
    | UserStatusType_CONFIRMED
    | UserStatusType_ARCHIVED
    | UserStatusType_COMPROMISED
    | UserStatusType_UNKNOWN
    | UserStatusType_RESET_REQUIRED
    | UserStatusType_FORCE_CHANGE_PASSWORD



userStatusTypeDecoder : JD.Decoder UserStatusType
userStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNCONFIRMED" ->
                        JD.succeed UserStatusType_UNCONFIRMED

                    "CONFIRMED" ->
                        JD.succeed UserStatusType_CONFIRMED

                    "ARCHIVED" ->
                        JD.succeed UserStatusType_ARCHIVED

                    "COMPROMISED" ->
                        JD.succeed UserStatusType_COMPROMISED

                    "UNKNOWN" ->
                        JD.succeed UserStatusType_UNKNOWN

                    "RESET_REQUIRED" ->
                        JD.succeed UserStatusType_RESET_REQUIRED

                    "FORCE_CHANGE_PASSWORD" ->
                        JD.succeed UserStatusType_FORCE_CHANGE_PASSWORD


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The user type.</p>
-}
type alias UserType =
    { username : Maybe String
    , attributes : Maybe (List AttributeType)
    , userCreateDate : Maybe Date
    , userLastModifiedDate : Maybe Date
    , enabled : Maybe Bool
    , userStatus : Maybe UserStatusType
    , mFAOptions : Maybe (List MFAOptionType)
    }



userTypeDecoder : JD.Decoder UserType
userTypeDecoder =
    JDP.decode UserType
        |> JDP.optional "username" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeTypeDecoder)) Nothing
        |> JDP.optional "userCreateDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "userLastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "userStatus" (JD.nullable userStatusTypeDecoder) Nothing
        |> JDP.optional "mFAOptions" (JD.nullable (JD.list mFAOptionTypeDecoder)) Nothing




{-| <p>This exception is thrown when Amazon Cognito encounters a user name that already exists in the user pool.</p>
-}
type alias UsernameExistsException =
    { message : Maybe String
    }



usernameExistsExceptionDecoder : JD.Decoder UsernameExistsException
usernameExistsExceptionDecoder =
    JDP.decode UsernameExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `VerifiedAttributeType_phone_number`
* `VerifiedAttributeType_email`

-}
type VerifiedAttributeType
    = VerifiedAttributeType_phone_number
    | VerifiedAttributeType_email



verifiedAttributeTypeDecoder : JD.Decoder VerifiedAttributeType
verifiedAttributeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "phone_number" ->
                        JD.succeed VerifiedAttributeType_phone_number

                    "email" ->
                        JD.succeed VerifiedAttributeType_email


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from verifyUserAttribute
-}
type alias VerifyUserAttributeResponse =
    { 
    }



verifyUserAttributeResponseDecoder : JD.Decoder VerifyUserAttributeResponse
verifyUserAttributeResponseDecoder =
    JDP.decode VerifyUserAttributeResponse



