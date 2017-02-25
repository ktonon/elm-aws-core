module AWS.Services.CognitoIdentity
    exposing
        ( config
        , createIdentityPool
        , CreateIdentityPoolOptions
        , deleteIdentities
        , deleteIdentityPool
        , describeIdentity
        , describeIdentityPool
        , getCredentialsForIdentity
        , GetCredentialsForIdentityOptions
        , getId
        , GetIdOptions
        , getIdentityPoolRoles
        , getOpenIdToken
        , GetOpenIdTokenOptions
        , getOpenIdTokenForDeveloperIdentity
        , GetOpenIdTokenForDeveloperIdentityOptions
        , listIdentities
        , ListIdentitiesOptions
        , listIdentityPools
        , ListIdentityPoolsOptions
        , lookupDeveloperIdentity
        , LookupDeveloperIdentityOptions
        , mergeDeveloperIdentities
        , setIdentityPoolRoles
        , SetIdentityPoolRolesOptions
        , unlinkDeveloperIdentity
        , unlinkIdentity
        , updateIdentityPool
        , UpdateIdentityPoolOptions
        , AmbiguousRoleResolutionType(..)
        , CognitoIdentityProvider
        , ConcurrentModificationException
        , Credentials
        , DeleteIdentitiesResponse
        , DeveloperUserAlreadyRegisteredException
        , ErrorCode(..)
        , ExternalServiceException
        , GetCredentialsForIdentityResponse
        , GetIdResponse
        , GetIdentityPoolRolesResponse
        , GetOpenIdTokenForDeveloperIdentityResponse
        , GetOpenIdTokenResponse
        , IdentityDescription
        , IdentityPool
        , IdentityPoolShortDescription
        , InternalErrorException
        , InvalidIdentityPoolConfigurationException
        , InvalidParameterException
        , LimitExceededException
        , ListIdentitiesResponse
        , ListIdentityPoolsResponse
        , LookupDeveloperIdentityResponse
        , MappingRule
        , MappingRuleMatchType(..)
        , MergeDeveloperIdentitiesResponse
        , NotAuthorizedException
        , ResourceConflictException
        , ResourceNotFoundException
        , RoleMapping
        , RoleMappingType(..)
        , RulesConfigurationType
        , TooManyRequestsException
        , UnprocessedIdentityId
        )

{-| <fullname>Amazon Cognito</fullname> <p>Amazon Cognito is a web service that delivers scoped temporary credentials to mobile devices and other untrusted environments. Amazon Cognito uniquely identifies a device and supplies the user with a consistent identity over the lifetime of an application.</p> <p>Using Amazon Cognito, you can enable authentication with one or more third-party identity providers (Facebook, Google, or Login with Amazon), and you can also choose to support unauthenticated access from your app. Cognito delivers a unique identifier for each user and acts as an OpenID token provider trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS credentials.</p> <p>To provide end-user credentials, first make an unsigned call to <a>GetId</a>. If the end user is authenticated with one of the supported identity providers, set the <code>Logins</code> map with the identity provider token. <code>GetId</code> returns a unique identifier for the user.</p> <p>Next, make an unsigned call to <a>GetCredentialsForIdentity</a>. This call expects the same <code>Logins</code> map as the <code>GetId</code> call, as well as the <code>IdentityID</code> originally returned by <code>GetId</code>. Assuming your identity pool has been configured via the <a>SetIdentityPoolRoles</a> operation, <code>GetCredentialsForIdentity</code> will return AWS credentials for your use. If your pool has not been configured with <code>SetIdentityPoolRoles</code>, or if you want to follow legacy flow, make an unsigned call to <a>GetOpenIdToken</a>, which returns the OpenID token necessary to call STS and retrieve AWS credentials. This call expects the same <code>Logins</code> map as the <code>GetId</code> call, as well as the <code>IdentityID</code> originally returned by <code>GetId</code>. The token returned by <code>GetOpenIdToken</code> can be passed to the STS operation <a href="http://docs.aws.amazon.com/STS/latest/APIReference/API_AssumeRoleWithWebIdentity.html">AssumeRoleWithWebIdentity</a> to retrieve AWS credentials.</p> <p>If you want to use Amazon Cognito in an Android, iOS, or Unity application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the <a href="http://docs.aws.amazon.com/mobile/index.html">AWS Mobile SDK Developer Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createIdentityPool](#createIdentityPool)
* [CreateIdentityPoolOptions](#CreateIdentityPoolOptions)
* [deleteIdentities](#deleteIdentities)
* [deleteIdentityPool](#deleteIdentityPool)
* [describeIdentity](#describeIdentity)
* [describeIdentityPool](#describeIdentityPool)
* [getCredentialsForIdentity](#getCredentialsForIdentity)
* [GetCredentialsForIdentityOptions](#GetCredentialsForIdentityOptions)
* [getId](#getId)
* [GetIdOptions](#GetIdOptions)
* [getIdentityPoolRoles](#getIdentityPoolRoles)
* [getOpenIdToken](#getOpenIdToken)
* [GetOpenIdTokenOptions](#GetOpenIdTokenOptions)
* [getOpenIdTokenForDeveloperIdentity](#getOpenIdTokenForDeveloperIdentity)
* [GetOpenIdTokenForDeveloperIdentityOptions](#GetOpenIdTokenForDeveloperIdentityOptions)
* [listIdentities](#listIdentities)
* [ListIdentitiesOptions](#ListIdentitiesOptions)
* [listIdentityPools](#listIdentityPools)
* [ListIdentityPoolsOptions](#ListIdentityPoolsOptions)
* [lookupDeveloperIdentity](#lookupDeveloperIdentity)
* [LookupDeveloperIdentityOptions](#LookupDeveloperIdentityOptions)
* [mergeDeveloperIdentities](#mergeDeveloperIdentities)
* [setIdentityPoolRoles](#setIdentityPoolRoles)
* [SetIdentityPoolRolesOptions](#SetIdentityPoolRolesOptions)
* [unlinkDeveloperIdentity](#unlinkDeveloperIdentity)
* [unlinkIdentity](#unlinkIdentity)
* [updateIdentityPool](#updateIdentityPool)
* [UpdateIdentityPoolOptions](#UpdateIdentityPoolOptions)


@docs createIdentityPool,CreateIdentityPoolOptions,deleteIdentities,deleteIdentityPool,describeIdentity,describeIdentityPool,getCredentialsForIdentity,GetCredentialsForIdentityOptions,getId,GetIdOptions,getIdentityPoolRoles,getOpenIdToken,GetOpenIdTokenOptions,getOpenIdTokenForDeveloperIdentity,GetOpenIdTokenForDeveloperIdentityOptions,listIdentities,ListIdentitiesOptions,listIdentityPools,ListIdentityPoolsOptions,lookupDeveloperIdentity,LookupDeveloperIdentityOptions,mergeDeveloperIdentities,setIdentityPoolRoles,SetIdentityPoolRolesOptions,unlinkDeveloperIdentity,unlinkIdentity,updateIdentityPool,UpdateIdentityPoolOptions

## Responses

* [DeleteIdentitiesResponse](#DeleteIdentitiesResponse)
* [GetCredentialsForIdentityResponse](#GetCredentialsForIdentityResponse)
* [GetIdResponse](#GetIdResponse)
* [GetIdentityPoolRolesResponse](#GetIdentityPoolRolesResponse)
* [GetOpenIdTokenForDeveloperIdentityResponse](#GetOpenIdTokenForDeveloperIdentityResponse)
* [GetOpenIdTokenResponse](#GetOpenIdTokenResponse)
* [IdentityDescription](#IdentityDescription)
* [IdentityPool](#IdentityPool)
* [ListIdentitiesResponse](#ListIdentitiesResponse)
* [ListIdentityPoolsResponse](#ListIdentityPoolsResponse)
* [LookupDeveloperIdentityResponse](#LookupDeveloperIdentityResponse)
* [MergeDeveloperIdentitiesResponse](#MergeDeveloperIdentitiesResponse)


@docs DeleteIdentitiesResponse,GetCredentialsForIdentityResponse,GetIdResponse,GetIdentityPoolRolesResponse,GetOpenIdTokenForDeveloperIdentityResponse,GetOpenIdTokenResponse,IdentityDescription,IdentityPool,ListIdentitiesResponse,ListIdentityPoolsResponse,LookupDeveloperIdentityResponse,MergeDeveloperIdentitiesResponse

## Records

* [CognitoIdentityProvider](#CognitoIdentityProvider)
* [Credentials](#Credentials)
* [IdentityPoolShortDescription](#IdentityPoolShortDescription)
* [MappingRule](#MappingRule)
* [RoleMapping](#RoleMapping)
* [RulesConfigurationType](#RulesConfigurationType)
* [UnprocessedIdentityId](#UnprocessedIdentityId)


@docs CognitoIdentityProvider,Credentials,IdentityPoolShortDescription,MappingRule,RoleMapping,RulesConfigurationType,UnprocessedIdentityId

## Unions

* [AmbiguousRoleResolutionType](#AmbiguousRoleResolutionType)
* [ErrorCode](#ErrorCode)
* [MappingRuleMatchType](#MappingRuleMatchType)
* [RoleMappingType](#RoleMappingType)


@docs AmbiguousRoleResolutionType,ErrorCode,MappingRuleMatchType,RoleMappingType

## Exceptions

* [ConcurrentModificationException](#ConcurrentModificationException)
* [DeveloperUserAlreadyRegisteredException](#DeveloperUserAlreadyRegisteredException)
* [ExternalServiceException](#ExternalServiceException)
* [InternalErrorException](#InternalErrorException)
* [InvalidIdentityPoolConfigurationException](#InvalidIdentityPoolConfigurationException)
* [InvalidParameterException](#InvalidParameterException)
* [LimitExceededException](#LimitExceededException)
* [NotAuthorizedException](#NotAuthorizedException)
* [ResourceConflictException](#ResourceConflictException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [TooManyRequestsException](#TooManyRequestsException)


@docs ConcurrentModificationException,DeveloperUserAlreadyRegisteredException,ExternalServiceException,InternalErrorException,InvalidIdentityPoolConfigurationException,InvalidParameterException,LimitExceededException,NotAuthorizedException,ResourceConflictException,ResourceNotFoundException,TooManyRequestsException

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
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "cognito-identity"
        "2014-06-30"
        "1.1"
        "AWSCOGNITO-IDENTITY_20140630."
        "cognito-identity.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates a new identity pool. The identity pool is a store of user identity information that is specific to your AWS account. The limit on identity pools is 60 per account. The keys for <code>SupportedLoginProviders</code> are as follows:</p> <ul> <li> <p>Facebook: <code>graph.facebook.com</code> </p> </li> <li> <p>Google: <code>accounts.google.com</code> </p> </li> <li> <p>Amazon: <code>www.amazon.com</code> </p> </li> <li> <p>Twitter: <code>api.twitter.com</code> </p> </li> <li> <p>Digits: <code>www.digits.com</code> </p> </li> </ul> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolName` __:__ `String`
* `allowUnauthenticatedIdentities` __:__ `Bool`


-}
createIdentityPool :
    String
    -> Bool
    -> (CreateIdentityPoolOptions -> CreateIdentityPoolOptions)
    -> AWS.Request IdentityPool
createIdentityPool identityPoolName allowUnauthenticatedIdentities setOptions =
  let
    options = setOptions (CreateIdentityPoolOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateIdentityPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        identityPoolDecoder
        |> AWS.UnsignedRequest


{-| Options for a createIdentityPool request
-}
type alias CreateIdentityPoolOptions =
    { supportedLoginProviders : Maybe (Dict String String)
    , developerProviderName : Maybe String
    , openIdConnectProviderARNs : Maybe (List String)
    , cognitoIdentityProviders : Maybe (List CognitoIdentityProvider)
    , samlProviderARNs : Maybe (List String)
    }



{-| <p>Deletes identities from an identity pool. You can specify a list of 1-60 identities that you want to delete.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityIdsToDelete` __:__ `(List String)`


-}
deleteIdentities :
    (List String)
    -> AWS.Request DeleteIdentitiesResponse
deleteIdentities identityIdsToDelete =
    AWS.Http.unsignedRequest
        "DeleteIdentities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteIdentitiesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a user pool. Once a pool is deleted, users will not be able to authenticate with the pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
deleteIdentityPool :
    String
    -> AWS.Request ()
deleteIdentityPool identityPoolId =
    AWS.Http.unsignedRequest
        "DeleteIdentityPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Returns metadata related to the given identity, including when the identity was created and any associated linked logins.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityId` __:__ `String`


-}
describeIdentity :
    String
    -> AWS.Request IdentityDescription
describeIdentity identityId =
    AWS.Http.unsignedRequest
        "DescribeIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        identityDescriptionDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
describeIdentityPool :
    String
    -> AWS.Request IdentityPool
describeIdentityPool identityPoolId =
    AWS.Http.unsignedRequest
        "DescribeIdentityPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        identityPoolDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns credentials for the provided identity ID. Any provided logins will be validated against supported login providers. If the token is for cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service with the appropriate role for the token.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

__Required Parameters__

* `identityId` __:__ `String`


-}
getCredentialsForIdentity :
    String
    -> (GetCredentialsForIdentityOptions -> GetCredentialsForIdentityOptions)
    -> AWS.Request GetCredentialsForIdentityResponse
getCredentialsForIdentity identityId setOptions =
  let
    options = setOptions (GetCredentialsForIdentityOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetCredentialsForIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getCredentialsForIdentityResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getCredentialsForIdentity request
-}
type alias GetCredentialsForIdentityOptions =
    { logins : Maybe (Dict String String)
    , customRoleArn : Maybe String
    }



{-| <p>Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an implicit linked account.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
getId :
    String
    -> (GetIdOptions -> GetIdOptions)
    -> AWS.Request GetIdResponse
getId identityPoolId setOptions =
  let
    options = setOptions (GetIdOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetId"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIdResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getId request
-}
type alias GetIdOptions =
    { accountId : Maybe String
    , logins : Maybe (Dict String String)
    }



{-| <p>Gets the roles for an identity pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
getIdentityPoolRoles :
    String
    -> AWS.Request GetIdentityPoolRolesResponse
getIdentityPoolRoles identityPoolId =
    AWS.Http.unsignedRequest
        "GetIdentityPoolRoles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getIdentityPoolRolesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by <a>GetId</a>. You can optionally add additional logins for the identity. Supplying multiple logins creates an implicit link.</p> <p>The OpenId token is valid for 15 minutes.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

__Required Parameters__

* `identityId` __:__ `String`


-}
getOpenIdToken :
    String
    -> (GetOpenIdTokenOptions -> GetOpenIdTokenOptions)
    -> AWS.Request GetOpenIdTokenResponse
getOpenIdToken identityId setOptions =
  let
    options = setOptions (GetOpenIdTokenOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetOpenIdToken"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOpenIdTokenResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getOpenIdToken request
-}
type alias GetOpenIdTokenOptions =
    { logins : Maybe (Dict String String)
    }



{-| <p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect token for a user authenticated by your backend authentication process. Supplying multiple logins will create an implicit linked account. You can only specify one developer provider as part of the <code>Logins</code> map, which is linked to the identity pool. The developer provider is the "domain" by which Cognito will refer to your users.</p> <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity and to link new logins (that is, user credentials issued by a public provider or developer provider) to an existing identity. When you want to create a new identity, the <code>IdentityId</code> should be null. When you want to associate a new login with an existing authenticated/unauthenticated identity, you can do so by providing the existing <code>IdentityId</code>. This API will create the identity in the specified <code>IdentityPoolId</code>.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `logins` __:__ `(Dict String String)`


-}
getOpenIdTokenForDeveloperIdentity :
    String
    -> (Dict String String)
    -> (GetOpenIdTokenForDeveloperIdentityOptions -> GetOpenIdTokenForDeveloperIdentityOptions)
    -> AWS.Request GetOpenIdTokenForDeveloperIdentityResponse
getOpenIdTokenForDeveloperIdentity identityPoolId logins setOptions =
  let
    options = setOptions (GetOpenIdTokenForDeveloperIdentityOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetOpenIdTokenForDeveloperIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOpenIdTokenForDeveloperIdentityResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getOpenIdTokenForDeveloperIdentity request
-}
type alias GetOpenIdTokenForDeveloperIdentityOptions =
    { identityId : Maybe String
    , tokenDuration : Maybe Int
    }



{-| <p>Lists the identities in a pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `maxResults` __:__ `Int`


-}
listIdentities :
    String
    -> Int
    -> (ListIdentitiesOptions -> ListIdentitiesOptions)
    -> AWS.Request ListIdentitiesResponse
listIdentities identityPoolId maxResults setOptions =
  let
    options = setOptions (ListIdentitiesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListIdentities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listIdentitiesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listIdentities request
-}
type alias ListIdentitiesOptions =
    { nextToken : Maybe String
    , hideDisabled : Maybe Bool
    }



{-| <p>Lists all of the Cognito identity pools registered for your account.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `maxResults` __:__ `Int`


-}
listIdentityPools :
    Int
    -> (ListIdentityPoolsOptions -> ListIdentityPoolsOptions)
    -> AWS.Request ListIdentityPoolsResponse
listIdentityPools maxResults setOptions =
  let
    options = setOptions (ListIdentityPoolsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListIdentityPools"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listIdentityPoolsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listIdentityPools request
-}
type alias ListIdentityPoolsOptions =
    { nextToken : Maybe String
    }



{-| <p>Retrieves the <code>IdentityID</code> associated with a <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code>s associated with an <code>IdentityId</code> for an existing identity. Either <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you supply only one of these values, the other value will be searched in the database and returned as a part of the response. If you supply both, <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If the values are verified against the database, the response returns both values and is the same as the request. Otherwise a <code>ResourceConflictException</code> is thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
lookupDeveloperIdentity :
    String
    -> (LookupDeveloperIdentityOptions -> LookupDeveloperIdentityOptions)
    -> AWS.Request LookupDeveloperIdentityResponse
lookupDeveloperIdentity identityPoolId setOptions =
  let
    options = setOptions (LookupDeveloperIdentityOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "LookupDeveloperIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        lookupDeveloperIdentityResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a lookupDeveloperIdentity request
-}
type alias LookupDeveloperIdentityOptions =
    { identityId : Maybe String
    , developerUserIdentifier : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Merges two users having different <code>IdentityId</code>s, existing in the same identity pool, and identified by the same developer provider. You can use this action to request that discrete users be merged and identified as a single user in the Cognito environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>) with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only developer-authenticated users can be merged. If the users to be merged are associated with the same public provider, but as two different users, an exception will be thrown.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `sourceUserIdentifier` __:__ `String`
* `destinationUserIdentifier` __:__ `String`
* `developerProviderName` __:__ `String`
* `identityPoolId` __:__ `String`


-}
mergeDeveloperIdentities :
    String
    -> String
    -> String
    -> String
    -> AWS.Request MergeDeveloperIdentitiesResponse
mergeDeveloperIdentities sourceUserIdentifier destinationUserIdentifier developerProviderName identityPoolId =
    AWS.Http.unsignedRequest
        "MergeDeveloperIdentities"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        mergeDeveloperIdentitiesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `roles` __:__ `(Dict String String)`


-}
setIdentityPoolRoles :
    String
    -> (Dict String String)
    -> (SetIdentityPoolRolesOptions -> SetIdentityPoolRolesOptions)
    -> AWS.Request ()
setIdentityPoolRoles identityPoolId roles setOptions =
  let
    options = setOptions (SetIdentityPoolRolesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetIdentityPoolRoles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setIdentityPoolRoles request
-}
type alias SetIdentityPoolRolesOptions =
    { roleMappings : Maybe (Dict String RoleMapping)
    }



{-| <p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked developer users will be considered new identities next time they are seen. If, for a given Cognito identity, you remove all federated identities as well as the developer user identifier, the Cognito identity becomes inaccessible.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityId` __:__ `String`
* `identityPoolId` __:__ `String`
* `developerProviderName` __:__ `String`
* `developerUserIdentifier` __:__ `String`


-}
unlinkDeveloperIdentity :
    String
    -> String
    -> String
    -> String
    -> AWS.Request ()
unlinkDeveloperIdentity identityId identityPoolId developerProviderName developerUserIdentifier =
    AWS.Http.unsignedRequest
        "UnlinkDeveloperIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Unlinks a federated identity from an existing account. Unlinked logins will be considered new identities next time they are seen. Removing the last linked login will make this identity inaccessible.</p> <p>This is a public API. You do not need any credentials to call this API.</p>

__Required Parameters__

* `identityId` __:__ `String`
* `logins` __:__ `(Dict String String)`
* `loginsToRemove` __:__ `(List String)`


-}
unlinkIdentity :
    String
    -> (Dict String String)
    -> (List String)
    -> AWS.Request ()
unlinkIdentity identityId logins loginsToRemove =
    AWS.Http.unsignedRequest
        "UnlinkIdentity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Updates a user pool.</p> <p>You must use AWS Developer credentials to call this API.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityPoolName` __:__ `String`
* `allowUnauthenticatedIdentities` __:__ `Bool`


-}
updateIdentityPool :
    String
    -> String
    -> Bool
    -> (UpdateIdentityPoolOptions -> UpdateIdentityPoolOptions)
    -> AWS.Request IdentityPool
updateIdentityPool identityPoolId identityPoolName allowUnauthenticatedIdentities setOptions =
  let
    options = setOptions (UpdateIdentityPoolOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateIdentityPool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        identityPoolDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateIdentityPool request
-}
type alias UpdateIdentityPoolOptions =
    { supportedLoginProviders : Maybe (Dict String String)
    , developerProviderName : Maybe String
    , openIdConnectProviderARNs : Maybe (List String)
    , cognitoIdentityProviders : Maybe (List CognitoIdentityProvider)
    , samlProviderARNs : Maybe (List String)
    }




{-| One of

* `AmbiguousRoleResolutionType_AuthenticatedRole`
* `AmbiguousRoleResolutionType_Deny`

-}
type AmbiguousRoleResolutionType
    = AmbiguousRoleResolutionType_AuthenticatedRole
    | AmbiguousRoleResolutionType_Deny



ambiguousRoleResolutionTypeDecoder : JD.Decoder AmbiguousRoleResolutionType
ambiguousRoleResolutionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AuthenticatedRole" ->
                        JD.succeed AmbiguousRoleResolutionType_AuthenticatedRole

                    "Deny" ->
                        JD.succeed AmbiguousRoleResolutionType_Deny


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A provider representing an Amazon Cognito Identity User Pool and its client ID.</p>
-}
type alias CognitoIdentityProvider =
    { providerName : Maybe String
    , clientId : Maybe String
    }



cognitoIdentityProviderDecoder : JD.Decoder CognitoIdentityProvider
cognitoIdentityProviderDecoder =
    JDP.decode CognitoIdentityProvider
        |> JDP.optional "providerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientId" (JD.nullable JD.string) Nothing




{-| <p>Thrown if there are parallel requests to modify a resource.</p>
-}
type alias ConcurrentModificationException =
    { message : Maybe String
    }



concurrentModificationExceptionDecoder : JD.Decoder ConcurrentModificationException
concurrentModificationExceptionDecoder =
    JDP.decode ConcurrentModificationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Credentials for the provided identity ID.</p>
-}
type alias Credentials =
    { accessKeyId : Maybe String
    , secretKey : Maybe String
    , sessionToken : Maybe String
    , expiration : Maybe Date
    }



credentialsDecoder : JD.Decoder Credentials
credentialsDecoder =
    JDP.decode Credentials
        |> JDP.optional "accessKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "secretKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "sessionToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiration" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from deleteIdentities
-}
type alias DeleteIdentitiesResponse =
    { unprocessedIdentityIds : Maybe (List UnprocessedIdentityId)
    }



deleteIdentitiesResponseDecoder : JD.Decoder DeleteIdentitiesResponse
deleteIdentitiesResponseDecoder =
    JDP.decode DeleteIdentitiesResponse
        |> JDP.optional "unprocessedIdentityIds" (JD.nullable (JD.list unprocessedIdentityIdDecoder)) Nothing




{-| <p>The provided developer user identifier is already registered with Cognito under a different identity ID.</p>
-}
type alias DeveloperUserAlreadyRegisteredException =
    { message : Maybe String
    }



developerUserAlreadyRegisteredExceptionDecoder : JD.Decoder DeveloperUserAlreadyRegisteredException
developerUserAlreadyRegisteredExceptionDecoder =
    JDP.decode DeveloperUserAlreadyRegisteredException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ErrorCode_AccessDenied`
* `ErrorCode_InternalServerError`

-}
type ErrorCode
    = ErrorCode_AccessDenied
    | ErrorCode_InternalServerError



errorCodeDecoder : JD.Decoder ErrorCode
errorCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AccessDenied" ->
                        JD.succeed ErrorCode_AccessDenied

                    "InternalServerError" ->
                        JD.succeed ErrorCode_InternalServerError


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An exception thrown when a dependent service such as Facebook or Twitter is not responding</p>
-}
type alias ExternalServiceException =
    { message : Maybe String
    }



externalServiceExceptionDecoder : JD.Decoder ExternalServiceException
externalServiceExceptionDecoder =
    JDP.decode ExternalServiceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getCredentialsForIdentity
-}
type alias GetCredentialsForIdentityResponse =
    { identityId : Maybe String
    , credentials : Maybe Credentials
    }



getCredentialsForIdentityResponseDecoder : JD.Decoder GetCredentialsForIdentityResponse
getCredentialsForIdentityResponseDecoder =
    JDP.decode GetCredentialsForIdentityResponse
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "credentials" (JD.nullable credentialsDecoder) Nothing




{-| Type of HTTP response from getId
-}
type alias GetIdResponse =
    { identityId : Maybe String
    }



getIdResponseDecoder : JD.Decoder GetIdResponse
getIdResponseDecoder =
    JDP.decode GetIdResponse
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getIdentityPoolRoles
-}
type alias GetIdentityPoolRolesResponse =
    { identityPoolId : Maybe String
    , roles : Maybe (Dict String String)
    , roleMappings : Maybe (Dict String RoleMapping)
    }



getIdentityPoolRolesResponseDecoder : JD.Decoder GetIdentityPoolRolesResponse
getIdentityPoolRolesResponseDecoder =
    JDP.decode GetIdentityPoolRolesResponse
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "roles" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "roleMappings" (JD.nullable (JD.dict roleMappingDecoder)) Nothing




{-| Type of HTTP response from getOpenIdTokenForDeveloperIdentity
-}
type alias GetOpenIdTokenForDeveloperIdentityResponse =
    { identityId : Maybe String
    , token : Maybe String
    }



getOpenIdTokenForDeveloperIdentityResponseDecoder : JD.Decoder GetOpenIdTokenForDeveloperIdentityResponse
getOpenIdTokenForDeveloperIdentityResponseDecoder =
    JDP.decode GetOpenIdTokenForDeveloperIdentityResponse
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "token" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getOpenIdToken
-}
type alias GetOpenIdTokenResponse =
    { identityId : Maybe String
    , token : Maybe String
    }



getOpenIdTokenResponseDecoder : JD.Decoder GetOpenIdTokenResponse
getOpenIdTokenResponseDecoder =
    JDP.decode GetOpenIdTokenResponse
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "token" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from identityDes
-}
type alias IdentityDescription =
    { identityId : Maybe String
    , logins : Maybe (List String)
    , creationDate : Maybe Date
    , lastModifiedDate : Maybe Date
    }



identityDescriptionDecoder : JD.Decoder IdentityDescription
identityDescriptionDecoder =
    JDP.decode IdentityDescription
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "logins" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from iden
-}
type alias IdentityPool =
    { identityPoolId : String
    , identityPoolName : String
    , allowUnauthenticatedIdentities : Bool
    , supportedLoginProviders : Maybe (Dict String String)
    , developerProviderName : Maybe String
    , openIdConnectProviderARNs : Maybe (List String)
    , cognitoIdentityProviders : Maybe (List CognitoIdentityProvider)
    , samlProviderARNs : Maybe (List String)
    }



identityPoolDecoder : JD.Decoder IdentityPool
identityPoolDecoder =
    JDP.decode IdentityPool
        |> JDP.required "identityPoolId" JD.string
        |> JDP.required "identityPoolName" JD.string
        |> JDP.required "allowUnauthenticatedIdentities" JD.bool
        |> JDP.optional "supportedLoginProviders" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "developerProviderName" (JD.nullable JD.string) Nothing
        |> JDP.optional "openIdConnectProviderARNs" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "cognitoIdentityProviders" (JD.nullable (JD.list cognitoIdentityProviderDecoder)) Nothing
        |> JDP.optional "samlProviderARNs" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>A description of the identity pool.</p>
-}
type alias IdentityPoolShortDescription =
    { identityPoolId : Maybe String
    , identityPoolName : Maybe String
    }



identityPoolShortDescriptionDecoder : JD.Decoder IdentityPoolShortDescription
identityPoolShortDescriptionDecoder =
    JDP.decode IdentityPoolShortDescription
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "identityPoolName" (JD.nullable JD.string) Nothing




{-| <p>Thrown when the service encounters an error during processing the request.</p>
-}
type alias InternalErrorException =
    { message : Maybe String
    }



internalErrorExceptionDecoder : JD.Decoder InternalErrorException
internalErrorExceptionDecoder =
    JDP.decode InternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.</p>
-}
type alias InvalidIdentityPoolConfigurationException =
    { message : Maybe String
    }



invalidIdentityPoolConfigurationExceptionDecoder : JD.Decoder InvalidIdentityPoolConfigurationException
invalidIdentityPoolConfigurationExceptionDecoder =
    JDP.decode InvalidIdentityPoolConfigurationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Thrown for missing or bad input parameter(s).</p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Thrown when the total number of user pools has exceeded a preset limit.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listIdentities
-}
type alias ListIdentitiesResponse =
    { identityPoolId : Maybe String
    , identities : Maybe (List IdentityDescription)
    , nextToken : Maybe String
    }



listIdentitiesResponseDecoder : JD.Decoder ListIdentitiesResponse
listIdentitiesResponseDecoder =
    JDP.decode ListIdentitiesResponse
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "identities" (JD.nullable (JD.list identityDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listIdentityPools
-}
type alias ListIdentityPoolsResponse =
    { identityPools : Maybe (List IdentityPoolShortDescription)
    , nextToken : Maybe String
    }



listIdentityPoolsResponseDecoder : JD.Decoder ListIdentityPoolsResponse
listIdentityPoolsResponseDecoder =
    JDP.decode ListIdentityPoolsResponse
        |> JDP.optional "identityPools" (JD.nullable (JD.list identityPoolShortDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from lookupDeveloperIdentity
-}
type alias LookupDeveloperIdentityResponse =
    { identityId : Maybe String
    , developerUserIdentifierList : Maybe (List String)
    , nextToken : Maybe String
    }



lookupDeveloperIdentityResponseDecoder : JD.Decoder LookupDeveloperIdentityResponse
lookupDeveloperIdentityResponseDecoder =
    JDP.decode LookupDeveloperIdentityResponse
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "developerUserIdentifierList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>A rule that maps a claim name, a claim value, and a match type to a role ARN.</p>
-}
type alias MappingRule =
    { claim : String
    , matchType : MappingRuleMatchType
    , value : String
    , roleARN : String
    }



mappingRuleDecoder : JD.Decoder MappingRule
mappingRuleDecoder =
    JDP.decode MappingRule
        |> JDP.required "claim" JD.string
        |> JDP.required "matchType" mappingRuleMatchTypeDecoder
        |> JDP.required "value" JD.string
        |> JDP.required "roleARN" JD.string




{-| One of

* `MappingRuleMatchType_Equals`
* `MappingRuleMatchType_Contains`
* `MappingRuleMatchType_StartsWith`
* `MappingRuleMatchType_NotEqual`

-}
type MappingRuleMatchType
    = MappingRuleMatchType_Equals
    | MappingRuleMatchType_Contains
    | MappingRuleMatchType_StartsWith
    | MappingRuleMatchType_NotEqual



mappingRuleMatchTypeDecoder : JD.Decoder MappingRuleMatchType
mappingRuleMatchTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Equals" ->
                        JD.succeed MappingRuleMatchType_Equals

                    "Contains" ->
                        JD.succeed MappingRuleMatchType_Contains

                    "StartsWith" ->
                        JD.succeed MappingRuleMatchType_StartsWith

                    "NotEqual" ->
                        JD.succeed MappingRuleMatchType_NotEqual


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from mergeDeveloperIdentities
-}
type alias MergeDeveloperIdentitiesResponse =
    { identityId : Maybe String
    }



mergeDeveloperIdentitiesResponseDecoder : JD.Decoder MergeDeveloperIdentitiesResponse
mergeDeveloperIdentitiesResponseDecoder =
    JDP.decode MergeDeveloperIdentitiesResponse
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing




{-| <p>Thrown when a user is not authorized to access the requested resource.</p>
-}
type alias NotAuthorizedException =
    { message : Maybe String
    }



notAuthorizedExceptionDecoder : JD.Decoder NotAuthorizedException
notAuthorizedExceptionDecoder =
    JDP.decode NotAuthorizedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Thrown when a user tries to use a login which is already linked to another account.</p>
-}
type alias ResourceConflictException =
    { message : Maybe String
    }



resourceConflictExceptionDecoder : JD.Decoder ResourceConflictException
resourceConflictExceptionDecoder =
    JDP.decode ResourceConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Thrown when the requested resource (for example, a dataset or record) does not exist.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A role mapping.</p>
-}
type alias RoleMapping =
    { type_ : RoleMappingType
    , ambiguousRoleResolution : Maybe AmbiguousRoleResolutionType
    , rulesConfiguration : Maybe RulesConfigurationType
    }



roleMappingDecoder : JD.Decoder RoleMapping
roleMappingDecoder =
    JDP.decode RoleMapping
        |> JDP.required "type_" roleMappingTypeDecoder
        |> JDP.optional "ambiguousRoleResolution" (JD.nullable ambiguousRoleResolutionTypeDecoder) Nothing
        |> JDP.optional "rulesConfiguration" (JD.nullable rulesConfigurationTypeDecoder) Nothing




{-| One of

* `RoleMappingType_Token`
* `RoleMappingType_Rules`

-}
type RoleMappingType
    = RoleMappingType_Token
    | RoleMappingType_Rules



roleMappingTypeDecoder : JD.Decoder RoleMappingType
roleMappingTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Token" ->
                        JD.succeed RoleMappingType_Token

                    "Rules" ->
                        JD.succeed RoleMappingType_Rules


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A container for rules.</p>
-}
type alias RulesConfigurationType =
    { rules : (List MappingRule)
    }



rulesConfigurationTypeDecoder : JD.Decoder RulesConfigurationType
rulesConfigurationTypeDecoder =
    JDP.decode RulesConfigurationType
        |> JDP.required "rules" (JD.list mappingRuleDecoder)




{-| <p>Thrown when a request is throttled.</p>
-}
type alias TooManyRequestsException =
    { message : Maybe String
    }



tooManyRequestsExceptionDecoder : JD.Decoder TooManyRequestsException
tooManyRequestsExceptionDecoder =
    JDP.decode TooManyRequestsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.</p>
-}
type alias UnprocessedIdentityId =
    { identityId : Maybe String
    , errorCode : Maybe ErrorCode
    }



unprocessedIdentityIdDecoder : JD.Decoder UnprocessedIdentityId
unprocessedIdentityIdDecoder =
    JDP.decode UnprocessedIdentityId
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable errorCodeDecoder) Nothing




