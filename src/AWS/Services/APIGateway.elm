module AWS.Services.APIGateway
    exposing
        ( config
        , createApiKey
        , CreateApiKeyOptions
        , createAuthorizer
        , CreateAuthorizerOptions
        , createBasePathMapping
        , CreateBasePathMappingOptions
        , createDeployment
        , CreateDeploymentOptions
        , createDocumentationPart
        , createDocumentationVersion
        , CreateDocumentationVersionOptions
        , createDomainName
        , createModel
        , CreateModelOptions
        , createResource
        , createRestApi
        , CreateRestApiOptions
        , createStage
        , CreateStageOptions
        , createUsagePlan
        , CreateUsagePlanOptions
        , createUsagePlanKey
        , deleteApiKey
        , deleteAuthorizer
        , deleteBasePathMapping
        , deleteClientCertificate
        , deleteDeployment
        , deleteDocumentationPart
        , deleteDocumentationVersion
        , deleteDomainName
        , deleteIntegration
        , deleteIntegrationResponse
        , deleteMethod
        , deleteMethodResponse
        , deleteModel
        , deleteResource
        , deleteRestApi
        , deleteStage
        , deleteUsagePlan
        , deleteUsagePlanKey
        , flushStageAuthorizersCache
        , flushStageCache
        , generateClientCertificate
        , GenerateClientCertificateOptions
        , getAccount
        , getApiKey
        , GetApiKeyOptions
        , getApiKeys
        , GetApiKeysOptions
        , getAuthorizer
        , getAuthorizers
        , GetAuthorizersOptions
        , getBasePathMapping
        , getBasePathMappings
        , GetBasePathMappingsOptions
        , getClientCertificate
        , getClientCertificates
        , GetClientCertificatesOptions
        , getDeployment
        , getDeployments
        , GetDeploymentsOptions
        , getDocumentationPart
        , getDocumentationParts
        , GetDocumentationPartsOptions
        , getDocumentationVersion
        , getDocumentationVersions
        , GetDocumentationVersionsOptions
        , getDomainName
        , getDomainNames
        , GetDomainNamesOptions
        , getExport
        , GetExportOptions
        , getIntegration
        , getIntegrationResponse
        , getMethod
        , getMethodResponse
        , getModel
        , GetModelOptions
        , getModelTemplate
        , getModels
        , GetModelsOptions
        , getResource
        , getResources
        , GetResourcesOptions
        , getRestApi
        , getRestApis
        , GetRestApisOptions
        , getSdk
        , GetSdkOptions
        , getSdkType
        , getSdkTypes
        , GetSdkTypesOptions
        , getStage
        , getStages
        , GetStagesOptions
        , getUsage
        , GetUsageOptions
        , getUsagePlan
        , getUsagePlanKey
        , getUsagePlanKeys
        , GetUsagePlanKeysOptions
        , getUsagePlans
        , GetUsagePlansOptions
        , importApiKeys
        , ImportApiKeysOptions
        , importDocumentationParts
        , ImportDocumentationPartsOptions
        , importRestApi
        , ImportRestApiOptions
        , putIntegration
        , PutIntegrationOptions
        , putIntegrationResponse
        , PutIntegrationResponseOptions
        , putMethod
        , PutMethodOptions
        , putMethodResponse
        , PutMethodResponseOptions
        , putRestApi
        , PutRestApiOptions
        , testInvokeAuthorizer
        , TestInvokeAuthorizerOptions
        , testInvokeMethod
        , TestInvokeMethodOptions
        , updateAccount
        , UpdateAccountOptions
        , updateApiKey
        , UpdateApiKeyOptions
        , updateAuthorizer
        , UpdateAuthorizerOptions
        , updateBasePathMapping
        , UpdateBasePathMappingOptions
        , updateClientCertificate
        , UpdateClientCertificateOptions
        , updateDeployment
        , UpdateDeploymentOptions
        , updateDocumentationPart
        , UpdateDocumentationPartOptions
        , updateDocumentationVersion
        , UpdateDocumentationVersionOptions
        , updateDomainName
        , UpdateDomainNameOptions
        , updateIntegration
        , UpdateIntegrationOptions
        , updateIntegrationResponse
        , UpdateIntegrationResponseOptions
        , updateMethod
        , UpdateMethodOptions
        , updateMethodResponse
        , UpdateMethodResponseOptions
        , updateModel
        , UpdateModelOptions
        , updateResource
        , UpdateResourceOptions
        , updateRestApi
        , UpdateRestApiOptions
        , updateStage
        , UpdateStageOptions
        , updateUsage
        , UpdateUsageOptions
        , updateUsagePlan
        , UpdateUsagePlanOptions
        , Account
        , ApiKey
        , ApiKeyIds
        , ApiKeys
        , ApiKeysFormat(..)
        , ApiStage
        , Authorizer
        , AuthorizerType(..)
        , Authorizers
        , BadRequestException
        , BasePathMapping
        , BasePathMappings
        , CacheClusterSize(..)
        , CacheClusterStatus(..)
        , ClientCertificate
        , ClientCertificates
        , ConflictException
        , ContentHandlingStrategy(..)
        , Deployment
        , Deployments
        , DocumentationPart
        , DocumentationPartIds
        , DocumentationPartLocation
        , DocumentationPartType(..)
        , DocumentationParts
        , DocumentationVersion
        , DocumentationVersions
        , DomainName
        , DomainNames
        , ExportResponse
        , Integration
        , IntegrationResponse
        , IntegrationType(..)
        , LimitExceededException
        , Method
        , MethodResponse
        , MethodSetting
        , MethodSnapshot
        , Model
        , Models
        , NotFoundException
        , Op(..)
        , PatchOperation
        , PutMode(..)
        , QuotaPeriodType(..)
        , QuotaSettings
        , Resource
        , Resources
        , RestApi
        , RestApis
        , SdkConfigurationProperty
        , SdkResponse
        , SdkType
        , SdkTypes
        , ServiceUnavailableException
        , Stage
        , StageKey
        , Stages
        , Template
        , TestInvokeAuthorizerResponse
        , TestInvokeMethodResponse
        , ThrottleSettings
        , TooManyRequestsException
        , UnauthorizedCacheControlHeaderStrategy(..)
        , UnauthorizedException
        , Usage
        , UsagePlan
        , UsagePlanKey
        , UsagePlanKeys
        , UsagePlans
        )

{-| <fullname>Amazon API Gateway</fullname> <p>Amazon API Gateway helps developers deliver robust, secure, and scalable mobile and web application back ends. Amazon API Gateway allows developers to securely connect mobile and web applications to APIs that run on AWS Lambda, Amazon EC2, or other publicly addressable web services that are hosted outside of AWS.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createApiKey](#createApiKey)
* [CreateApiKeyOptions](#CreateApiKeyOptions)
* [createAuthorizer](#createAuthorizer)
* [CreateAuthorizerOptions](#CreateAuthorizerOptions)
* [createBasePathMapping](#createBasePathMapping)
* [CreateBasePathMappingOptions](#CreateBasePathMappingOptions)
* [createDeployment](#createDeployment)
* [CreateDeploymentOptions](#CreateDeploymentOptions)
* [createDocumentationPart](#createDocumentationPart)
* [createDocumentationVersion](#createDocumentationVersion)
* [CreateDocumentationVersionOptions](#CreateDocumentationVersionOptions)
* [createDomainName](#createDomainName)
* [createModel](#createModel)
* [CreateModelOptions](#CreateModelOptions)
* [createResource](#createResource)
* [createRestApi](#createRestApi)
* [CreateRestApiOptions](#CreateRestApiOptions)
* [createStage](#createStage)
* [CreateStageOptions](#CreateStageOptions)
* [createUsagePlan](#createUsagePlan)
* [CreateUsagePlanOptions](#CreateUsagePlanOptions)
* [createUsagePlanKey](#createUsagePlanKey)
* [deleteApiKey](#deleteApiKey)
* [deleteAuthorizer](#deleteAuthorizer)
* [deleteBasePathMapping](#deleteBasePathMapping)
* [deleteClientCertificate](#deleteClientCertificate)
* [deleteDeployment](#deleteDeployment)
* [deleteDocumentationPart](#deleteDocumentationPart)
* [deleteDocumentationVersion](#deleteDocumentationVersion)
* [deleteDomainName](#deleteDomainName)
* [deleteIntegration](#deleteIntegration)
* [deleteIntegrationResponse](#deleteIntegrationResponse)
* [deleteMethod](#deleteMethod)
* [deleteMethodResponse](#deleteMethodResponse)
* [deleteModel](#deleteModel)
* [deleteResource](#deleteResource)
* [deleteRestApi](#deleteRestApi)
* [deleteStage](#deleteStage)
* [deleteUsagePlan](#deleteUsagePlan)
* [deleteUsagePlanKey](#deleteUsagePlanKey)
* [flushStageAuthorizersCache](#flushStageAuthorizersCache)
* [flushStageCache](#flushStageCache)
* [generateClientCertificate](#generateClientCertificate)
* [GenerateClientCertificateOptions](#GenerateClientCertificateOptions)
* [getAccount](#getAccount)
* [getApiKey](#getApiKey)
* [GetApiKeyOptions](#GetApiKeyOptions)
* [getApiKeys](#getApiKeys)
* [GetApiKeysOptions](#GetApiKeysOptions)
* [getAuthorizer](#getAuthorizer)
* [getAuthorizers](#getAuthorizers)
* [GetAuthorizersOptions](#GetAuthorizersOptions)
* [getBasePathMapping](#getBasePathMapping)
* [getBasePathMappings](#getBasePathMappings)
* [GetBasePathMappingsOptions](#GetBasePathMappingsOptions)
* [getClientCertificate](#getClientCertificate)
* [getClientCertificates](#getClientCertificates)
* [GetClientCertificatesOptions](#GetClientCertificatesOptions)
* [getDeployment](#getDeployment)
* [getDeployments](#getDeployments)
* [GetDeploymentsOptions](#GetDeploymentsOptions)
* [getDocumentationPart](#getDocumentationPart)
* [getDocumentationParts](#getDocumentationParts)
* [GetDocumentationPartsOptions](#GetDocumentationPartsOptions)
* [getDocumentationVersion](#getDocumentationVersion)
* [getDocumentationVersions](#getDocumentationVersions)
* [GetDocumentationVersionsOptions](#GetDocumentationVersionsOptions)
* [getDomainName](#getDomainName)
* [getDomainNames](#getDomainNames)
* [GetDomainNamesOptions](#GetDomainNamesOptions)
* [getExport](#getExport)
* [GetExportOptions](#GetExportOptions)
* [getIntegration](#getIntegration)
* [getIntegrationResponse](#getIntegrationResponse)
* [getMethod](#getMethod)
* [getMethodResponse](#getMethodResponse)
* [getModel](#getModel)
* [GetModelOptions](#GetModelOptions)
* [getModelTemplate](#getModelTemplate)
* [getModels](#getModels)
* [GetModelsOptions](#GetModelsOptions)
* [getResource](#getResource)
* [getResources](#getResources)
* [GetResourcesOptions](#GetResourcesOptions)
* [getRestApi](#getRestApi)
* [getRestApis](#getRestApis)
* [GetRestApisOptions](#GetRestApisOptions)
* [getSdk](#getSdk)
* [GetSdkOptions](#GetSdkOptions)
* [getSdkType](#getSdkType)
* [getSdkTypes](#getSdkTypes)
* [GetSdkTypesOptions](#GetSdkTypesOptions)
* [getStage](#getStage)
* [getStages](#getStages)
* [GetStagesOptions](#GetStagesOptions)
* [getUsage](#getUsage)
* [GetUsageOptions](#GetUsageOptions)
* [getUsagePlan](#getUsagePlan)
* [getUsagePlanKey](#getUsagePlanKey)
* [getUsagePlanKeys](#getUsagePlanKeys)
* [GetUsagePlanKeysOptions](#GetUsagePlanKeysOptions)
* [getUsagePlans](#getUsagePlans)
* [GetUsagePlansOptions](#GetUsagePlansOptions)
* [importApiKeys](#importApiKeys)
* [ImportApiKeysOptions](#ImportApiKeysOptions)
* [importDocumentationParts](#importDocumentationParts)
* [ImportDocumentationPartsOptions](#ImportDocumentationPartsOptions)
* [importRestApi](#importRestApi)
* [ImportRestApiOptions](#ImportRestApiOptions)
* [putIntegration](#putIntegration)
* [PutIntegrationOptions](#PutIntegrationOptions)
* [putIntegrationResponse](#putIntegrationResponse)
* [PutIntegrationResponseOptions](#PutIntegrationResponseOptions)
* [putMethod](#putMethod)
* [PutMethodOptions](#PutMethodOptions)
* [putMethodResponse](#putMethodResponse)
* [PutMethodResponseOptions](#PutMethodResponseOptions)
* [putRestApi](#putRestApi)
* [PutRestApiOptions](#PutRestApiOptions)
* [testInvokeAuthorizer](#testInvokeAuthorizer)
* [TestInvokeAuthorizerOptions](#TestInvokeAuthorizerOptions)
* [testInvokeMethod](#testInvokeMethod)
* [TestInvokeMethodOptions](#TestInvokeMethodOptions)
* [updateAccount](#updateAccount)
* [UpdateAccountOptions](#UpdateAccountOptions)
* [updateApiKey](#updateApiKey)
* [UpdateApiKeyOptions](#UpdateApiKeyOptions)
* [updateAuthorizer](#updateAuthorizer)
* [UpdateAuthorizerOptions](#UpdateAuthorizerOptions)
* [updateBasePathMapping](#updateBasePathMapping)
* [UpdateBasePathMappingOptions](#UpdateBasePathMappingOptions)
* [updateClientCertificate](#updateClientCertificate)
* [UpdateClientCertificateOptions](#UpdateClientCertificateOptions)
* [updateDeployment](#updateDeployment)
* [UpdateDeploymentOptions](#UpdateDeploymentOptions)
* [updateDocumentationPart](#updateDocumentationPart)
* [UpdateDocumentationPartOptions](#UpdateDocumentationPartOptions)
* [updateDocumentationVersion](#updateDocumentationVersion)
* [UpdateDocumentationVersionOptions](#UpdateDocumentationVersionOptions)
* [updateDomainName](#updateDomainName)
* [UpdateDomainNameOptions](#UpdateDomainNameOptions)
* [updateIntegration](#updateIntegration)
* [UpdateIntegrationOptions](#UpdateIntegrationOptions)
* [updateIntegrationResponse](#updateIntegrationResponse)
* [UpdateIntegrationResponseOptions](#UpdateIntegrationResponseOptions)
* [updateMethod](#updateMethod)
* [UpdateMethodOptions](#UpdateMethodOptions)
* [updateMethodResponse](#updateMethodResponse)
* [UpdateMethodResponseOptions](#UpdateMethodResponseOptions)
* [updateModel](#updateModel)
* [UpdateModelOptions](#UpdateModelOptions)
* [updateResource](#updateResource)
* [UpdateResourceOptions](#UpdateResourceOptions)
* [updateRestApi](#updateRestApi)
* [UpdateRestApiOptions](#UpdateRestApiOptions)
* [updateStage](#updateStage)
* [UpdateStageOptions](#UpdateStageOptions)
* [updateUsage](#updateUsage)
* [UpdateUsageOptions](#UpdateUsageOptions)
* [updateUsagePlan](#updateUsagePlan)
* [UpdateUsagePlanOptions](#UpdateUsagePlanOptions)


@docs createApiKey,CreateApiKeyOptions,createAuthorizer,CreateAuthorizerOptions,createBasePathMapping,CreateBasePathMappingOptions,createDeployment,CreateDeploymentOptions,createDocumentationPart,createDocumentationVersion,CreateDocumentationVersionOptions,createDomainName,createModel,CreateModelOptions,createResource,createRestApi,CreateRestApiOptions,createStage,CreateStageOptions,createUsagePlan,CreateUsagePlanOptions,createUsagePlanKey,deleteApiKey,deleteAuthorizer,deleteBasePathMapping,deleteClientCertificate,deleteDeployment,deleteDocumentationPart,deleteDocumentationVersion,deleteDomainName,deleteIntegration,deleteIntegrationResponse,deleteMethod,deleteMethodResponse,deleteModel,deleteResource,deleteRestApi,deleteStage,deleteUsagePlan,deleteUsagePlanKey,flushStageAuthorizersCache,flushStageCache,generateClientCertificate,GenerateClientCertificateOptions,getAccount,getApiKey,GetApiKeyOptions,getApiKeys,GetApiKeysOptions,getAuthorizer,getAuthorizers,GetAuthorizersOptions,getBasePathMapping,getBasePathMappings,GetBasePathMappingsOptions,getClientCertificate,getClientCertificates,GetClientCertificatesOptions,getDeployment,getDeployments,GetDeploymentsOptions,getDocumentationPart,getDocumentationParts,GetDocumentationPartsOptions,getDocumentationVersion,getDocumentationVersions,GetDocumentationVersionsOptions,getDomainName,getDomainNames,GetDomainNamesOptions,getExport,GetExportOptions,getIntegration,getIntegrationResponse,getMethod,getMethodResponse,getModel,GetModelOptions,getModelTemplate,getModels,GetModelsOptions,getResource,getResources,GetResourcesOptions,getRestApi,getRestApis,GetRestApisOptions,getSdk,GetSdkOptions,getSdkType,getSdkTypes,GetSdkTypesOptions,getStage,getStages,GetStagesOptions,getUsage,GetUsageOptions,getUsagePlan,getUsagePlanKey,getUsagePlanKeys,GetUsagePlanKeysOptions,getUsagePlans,GetUsagePlansOptions,importApiKeys,ImportApiKeysOptions,importDocumentationParts,ImportDocumentationPartsOptions,importRestApi,ImportRestApiOptions,putIntegration,PutIntegrationOptions,putIntegrationResponse,PutIntegrationResponseOptions,putMethod,PutMethodOptions,putMethodResponse,PutMethodResponseOptions,putRestApi,PutRestApiOptions,testInvokeAuthorizer,TestInvokeAuthorizerOptions,testInvokeMethod,TestInvokeMethodOptions,updateAccount,UpdateAccountOptions,updateApiKey,UpdateApiKeyOptions,updateAuthorizer,UpdateAuthorizerOptions,updateBasePathMapping,UpdateBasePathMappingOptions,updateClientCertificate,UpdateClientCertificateOptions,updateDeployment,UpdateDeploymentOptions,updateDocumentationPart,UpdateDocumentationPartOptions,updateDocumentationVersion,UpdateDocumentationVersionOptions,updateDomainName,UpdateDomainNameOptions,updateIntegration,UpdateIntegrationOptions,updateIntegrationResponse,UpdateIntegrationResponseOptions,updateMethod,UpdateMethodOptions,updateMethodResponse,UpdateMethodResponseOptions,updateModel,UpdateModelOptions,updateResource,UpdateResourceOptions,updateRestApi,UpdateRestApiOptions,updateStage,UpdateStageOptions,updateUsage,UpdateUsageOptions,updateUsagePlan,UpdateUsagePlanOptions

## Responses

* [Account](#Account)
* [ApiKey](#ApiKey)
* [ApiKeyIds](#ApiKeyIds)
* [ApiKeys](#ApiKeys)
* [Authorizer](#Authorizer)
* [Authorizers](#Authorizers)
* [BasePathMapping](#BasePathMapping)
* [BasePathMappings](#BasePathMappings)
* [ClientCertificate](#ClientCertificate)
* [ClientCertificates](#ClientCertificates)
* [Deployment](#Deployment)
* [Deployments](#Deployments)
* [DocumentationPart](#DocumentationPart)
* [DocumentationPartIds](#DocumentationPartIds)
* [DocumentationParts](#DocumentationParts)
* [DocumentationVersion](#DocumentationVersion)
* [DocumentationVersions](#DocumentationVersions)
* [DomainName](#DomainName)
* [DomainNames](#DomainNames)
* [ExportResponse](#ExportResponse)
* [Integration](#Integration)
* [IntegrationResponse](#IntegrationResponse)
* [Method](#Method)
* [MethodResponse](#MethodResponse)
* [Model](#Model)
* [Models](#Models)
* [Resource](#Resource)
* [Resources](#Resources)
* [RestApi](#RestApi)
* [RestApis](#RestApis)
* [SdkResponse](#SdkResponse)
* [SdkType](#SdkType)
* [SdkTypes](#SdkTypes)
* [Stage](#Stage)
* [Stages](#Stages)
* [Template](#Template)
* [TestInvokeAuthorizerResponse](#TestInvokeAuthorizerResponse)
* [TestInvokeMethodResponse](#TestInvokeMethodResponse)
* [Usage](#Usage)
* [UsagePlan](#UsagePlan)
* [UsagePlanKey](#UsagePlanKey)
* [UsagePlanKeys](#UsagePlanKeys)
* [UsagePlans](#UsagePlans)


@docs Account,ApiKey,ApiKeyIds,ApiKeys,Authorizer,Authorizers,BasePathMapping,BasePathMappings,ClientCertificate,ClientCertificates,Deployment,Deployments,DocumentationPart,DocumentationPartIds,DocumentationParts,DocumentationVersion,DocumentationVersions,DomainName,DomainNames,ExportResponse,Integration,IntegrationResponse,Method,MethodResponse,Model,Models,Resource,Resources,RestApi,RestApis,SdkResponse,SdkType,SdkTypes,Stage,Stages,Template,TestInvokeAuthorizerResponse,TestInvokeMethodResponse,Usage,UsagePlan,UsagePlanKey,UsagePlanKeys,UsagePlans

## Records

* [ApiStage](#ApiStage)
* [DocumentationPartLocation](#DocumentationPartLocation)
* [MethodSetting](#MethodSetting)
* [MethodSnapshot](#MethodSnapshot)
* [PatchOperation](#PatchOperation)
* [QuotaSettings](#QuotaSettings)
* [SdkConfigurationProperty](#SdkConfigurationProperty)
* [StageKey](#StageKey)
* [ThrottleSettings](#ThrottleSettings)


@docs ApiStage,DocumentationPartLocation,MethodSetting,MethodSnapshot,PatchOperation,QuotaSettings,SdkConfigurationProperty,StageKey,ThrottleSettings

## Unions

* [ApiKeysFormat](#ApiKeysFormat)
* [AuthorizerType](#AuthorizerType)
* [CacheClusterSize](#CacheClusterSize)
* [CacheClusterStatus](#CacheClusterStatus)
* [ContentHandlingStrategy](#ContentHandlingStrategy)
* [DocumentationPartType](#DocumentationPartType)
* [IntegrationType](#IntegrationType)
* [Op](#Op)
* [PutMode](#PutMode)
* [QuotaPeriodType](#QuotaPeriodType)
* [UnauthorizedCacheControlHeaderStrategy](#UnauthorizedCacheControlHeaderStrategy)


@docs ApiKeysFormat,AuthorizerType,CacheClusterSize,CacheClusterStatus,ContentHandlingStrategy,DocumentationPartType,IntegrationType,Op,PutMode,QuotaPeriodType,UnauthorizedCacheControlHeaderStrategy

## Exceptions

* [BadRequestException](#BadRequestException)
* [ConflictException](#ConflictException)
* [LimitExceededException](#LimitExceededException)
* [NotFoundException](#NotFoundException)
* [ServiceUnavailableException](#ServiceUnavailableException)
* [TooManyRequestsException](#TooManyRequestsException)
* [UnauthorizedException](#UnauthorizedException)


@docs BadRequestException,ConflictException,LimitExceededException,NotFoundException,ServiceUnavailableException,TooManyRequestsException,UnauthorizedException

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
        "apigateway"
        "2015-07-09"
        "undefined"
        "AWSAPIGATEWAY_20150709."
        "apigateway.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Create an <a>ApiKey</a> resource. </p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-api-key.html">AWS CLI</a></div>

__Required Parameters__



-}
createApiKey :
    (CreateApiKeyOptions -> CreateApiKeyOptions)
    -> AWS.Http.UnsignedRequest ApiKey
createApiKey setOptions =
  let
    options = setOptions (CreateApiKeyOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateApiKey"
        "POST"
        "/apikeys"
        (AWS.Http.JsonBody
            JE.null
        )
        apiKeyDecoder


{-| Options for a createApiKey request
-}
type alias CreateApiKeyOptions =
    { name : Maybe String
    , description : Maybe String
    , enabled : Maybe Bool
    , generateDistinctId : Maybe Bool
    , value : Maybe String
    , stageKeys : Maybe (List StageKey)
    , customerId : Maybe String
    }



{-| <p>Adds a new <a>Authorizer</a> resource to an existing <a>RestApi</a> resource.</p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/create-authorizer.html">AWS CLI</a></div>

__Required Parameters__

* `restApiId` __:__ `String`
* `name` __:__ `String`
* `type_` __:__ `AuthorizerType`
* `identitySource` __:__ `String`


-}
createAuthorizer :
    String
    -> String
    -> AuthorizerType
    -> String
    -> (CreateAuthorizerOptions -> CreateAuthorizerOptions)
    -> AWS.Http.UnsignedRequest Authorizer
createAuthorizer restApiId name type_ identitySource setOptions =
  let
    options = setOptions (CreateAuthorizerOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateAuthorizer"
        "POST"
        ("/restapis/" ++ restApiId ++ "/authorizers")
        (AWS.Http.JsonBody
            JE.null
        )
        authorizerDecoder


{-| Options for a createAuthorizer request
-}
type alias CreateAuthorizerOptions =
    { providerARNs : Maybe (List String)
    , authType : Maybe String
    , authorizerUri : Maybe String
    , authorizerCredentials : Maybe String
    , identityValidationExpression : Maybe String
    , authorizerResultTtlInSeconds : Maybe Int
    }



{-| <p>Creates a new <a>BasePathMapping</a> resource.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `restApiId` __:__ `String`


-}
createBasePathMapping :
    String
    -> String
    -> (CreateBasePathMappingOptions -> CreateBasePathMappingOptions)
    -> AWS.Http.UnsignedRequest BasePathMapping
createBasePathMapping domainName restApiId setOptions =
  let
    options = setOptions (CreateBasePathMappingOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateBasePathMapping"
        "POST"
        ("/domainnames/" ++ domainName ++ "/basepathmappings")
        (AWS.Http.JsonBody
            JE.null
        )
        basePathMappingDecoder


{-| Options for a createBasePathMapping request
-}
type alias CreateBasePathMappingOptions =
    { basePath : Maybe String
    , stage : Maybe String
    }



{-| <p>Creates a <a>Deployment</a> resource, which makes a specified <a>RestApi</a> callable over the internet.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
createDeployment :
    String
    -> (CreateDeploymentOptions -> CreateDeploymentOptions)
    -> AWS.Http.UnsignedRequest Deployment
createDeployment restApiId setOptions =
  let
    options = setOptions (CreateDeploymentOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDeployment"
        "POST"
        ("/restapis/" ++ restApiId ++ "/deployments")
        (AWS.Http.JsonBody
            JE.null
        )
        deploymentDecoder


{-| Options for a createDeployment request
-}
type alias CreateDeploymentOptions =
    { stageName : Maybe String
    , stageDescription : Maybe String
    , description : Maybe String
    , cacheClusterEnabled : Maybe Bool
    , cacheClusterSize : Maybe CacheClusterSize
    , variables : Maybe (Dict String String)
    }



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `location` __:__ `DocumentationPartLocation`
* `properties` __:__ `String`


-}
createDocumentationPart :
    String
    -> DocumentationPartLocation
    -> String
    -> AWS.Http.UnsignedRequest DocumentationPart
createDocumentationPart restApiId location properties =
    AWS.Http.unsignedRequest
        "CreateDocumentationPart"
        "POST"
        ("/restapis/" ++ restApiId ++ "/documentation/parts")
        (AWS.Http.JsonBody
            JE.null
        )
        documentationPartDecoder



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `documentationVersion` __:__ `String`


-}
createDocumentationVersion :
    String
    -> String
    -> (CreateDocumentationVersionOptions -> CreateDocumentationVersionOptions)
    -> AWS.Http.UnsignedRequest DocumentationVersion
createDocumentationVersion restApiId documentationVersion setOptions =
  let
    options = setOptions (CreateDocumentationVersionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDocumentationVersion"
        "POST"
        ("/restapis/" ++ restApiId ++ "/documentation/versions")
        (AWS.Http.JsonBody
            JE.null
        )
        documentationVersionDecoder


{-| Options for a createDocumentationVersion request
-}
type alias CreateDocumentationVersionOptions =
    { stageName : Maybe String
    , description : Maybe String
    }



{-| <p>Creates a new domain name.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `certificateName` __:__ `String`
* `certificateBody` __:__ `String`
* `certificatePrivateKey` __:__ `String`
* `certificateChain` __:__ `String`


-}
createDomainName :
    String
    -> String
    -> String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest DomainName
createDomainName domainName certificateName certificateBody certificatePrivateKey certificateChain =
    AWS.Http.unsignedRequest
        "CreateDomainName"
        "POST"
        "/domainnames"
        (AWS.Http.JsonBody
            JE.null
        )
        domainNameDecoder



{-| <p>Adds a new <a>Model</a> resource to an existing <a>RestApi</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `name` __:__ `String`
* `contentType` __:__ `String`


-}
createModel :
    String
    -> String
    -> String
    -> (CreateModelOptions -> CreateModelOptions)
    -> AWS.Http.UnsignedRequest Model
createModel restApiId name contentType setOptions =
  let
    options = setOptions (CreateModelOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateModel"
        "POST"
        ("/restapis/" ++ restApiId ++ "/models")
        (AWS.Http.JsonBody
            JE.null
        )
        modelDecoder


{-| Options for a createModel request
-}
type alias CreateModelOptions =
    { description : Maybe String
    , schema : Maybe String
    }



{-| <p>Creates a <a>Resource</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `parentId` __:__ `String`
* `pathPart` __:__ `String`


-}
createResource :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest Resource
createResource restApiId parentId pathPart =
    AWS.Http.unsignedRequest
        "CreateResource"
        "POST"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ parentId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        resourceDecoder



{-| <p>Creates a new <a>RestApi</a> resource.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createRestApi :
    String
    -> (CreateRestApiOptions -> CreateRestApiOptions)
    -> AWS.Http.UnsignedRequest RestApi
createRestApi name setOptions =
  let
    options = setOptions (CreateRestApiOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateRestApi"
        "POST"
        "/restapis"
        (AWS.Http.JsonBody
            JE.null
        )
        restApiDecoder


{-| Options for a createRestApi request
-}
type alias CreateRestApiOptions =
    { description : Maybe String
    , version : Maybe String
    , cloneFrom : Maybe String
    , binaryMediaTypes : Maybe (List String)
    }



{-| <p>Creates a new <a>Stage</a> resource that references a pre-existing <a>Deployment</a> for the API. </p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`
* `deploymentId` __:__ `String`


-}
createStage :
    String
    -> String
    -> String
    -> (CreateStageOptions -> CreateStageOptions)
    -> AWS.Http.UnsignedRequest Stage
createStage restApiId stageName deploymentId setOptions =
  let
    options = setOptions (CreateStageOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateStage"
        "POST"
        ("/restapis/" ++ restApiId ++ "/stages")
        (AWS.Http.JsonBody
            JE.null
        )
        stageDecoder


{-| Options for a createStage request
-}
type alias CreateStageOptions =
    { description : Maybe String
    , cacheClusterEnabled : Maybe Bool
    , cacheClusterSize : Maybe CacheClusterSize
    , variables : Maybe (Dict String String)
    , documentationVersion : Maybe String
    }



{-| <p>Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload. </p>

__Required Parameters__

* `name` __:__ `String`


-}
createUsagePlan :
    String
    -> (CreateUsagePlanOptions -> CreateUsagePlanOptions)
    -> AWS.Http.UnsignedRequest UsagePlan
createUsagePlan name setOptions =
  let
    options = setOptions (CreateUsagePlanOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateUsagePlan"
        "POST"
        "/usageplans"
        (AWS.Http.JsonBody
            JE.null
        )
        usagePlanDecoder


{-| Options for a createUsagePlan request
-}
type alias CreateUsagePlanOptions =
    { description : Maybe String
    , apiStages : Maybe (List ApiStage)
    , throttle : Maybe ThrottleSettings
    , quota : Maybe QuotaSettings
    }



{-| <p>Creates a usage plan key for adding an existing API key to a usage plan.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`
* `keyId` __:__ `String`
* `keyType` __:__ `String`


-}
createUsagePlanKey :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest UsagePlanKey
createUsagePlanKey usagePlanId keyId keyType =
    AWS.Http.unsignedRequest
        "CreateUsagePlanKey"
        "POST"
        ("/usageplans/" ++ usagePlanId ++ "/keys")
        (AWS.Http.JsonBody
            JE.null
        )
        usagePlanKeyDecoder



{-| <p>Deletes the <a>ApiKey</a> resource.</p>

__Required Parameters__

* `apiKey` __:__ `String`


-}
deleteApiKey :
    String
    -> AWS.Http.UnsignedRequest ()
deleteApiKey apiKey =
    AWS.Http.unsignedRequest
        "DeleteApiKey"
        "DELETE"
        ("/apikeys/" ++ apiKey ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes an existing <a>Authorizer</a> resource.</p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/delete-authorizer.html">AWS CLI</a></div>

__Required Parameters__

* `restApiId` __:__ `String`
* `authorizerId` __:__ `String`


-}
deleteAuthorizer :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteAuthorizer restApiId authorizerId =
    AWS.Http.unsignedRequest
        "DeleteAuthorizer"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/authorizers/" ++ authorizerId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the <a>BasePathMapping</a> resource.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `basePath` __:__ `String`


-}
deleteBasePathMapping :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteBasePathMapping domainName basePath =
    AWS.Http.unsignedRequest
        "DeleteBasePathMapping"
        "DELETE"
        ("/domainnames/" ++ domainName ++ "/basepathmappings/" ++ basePath ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the <a>ClientCertificate</a> resource.</p>

__Required Parameters__

* `clientCertificateId` __:__ `String`


-}
deleteClientCertificate :
    String
    -> AWS.Http.UnsignedRequest ()
deleteClientCertificate clientCertificateId =
    AWS.Http.unsignedRequest
        "DeleteClientCertificate"
        "DELETE"
        ("/clientcertificates/" ++ clientCertificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a <a>Deployment</a> resource. Deleting a deployment will only succeed if there are no <a>Stage</a> resources associated with it.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `deploymentId` __:__ `String`


-}
deleteDeployment :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteDeployment restApiId deploymentId =
    AWS.Http.unsignedRequest
        "DeleteDeployment"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/deployments/" ++ deploymentId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `documentationPartId` __:__ `String`


-}
deleteDocumentationPart :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteDocumentationPart restApiId documentationPartId =
    AWS.Http.unsignedRequest
        "DeleteDocumentationPart"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/documentation/parts/" ++ documentationPartId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `documentationVersion` __:__ `String`


-}
deleteDocumentationVersion :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteDocumentationVersion restApiId documentationVersion =
    AWS.Http.unsignedRequest
        "DeleteDocumentationVersion"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/documentation/versions/" ++ documentationVersion ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the <a>DomainName</a> resource.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
deleteDomainName :
    String
    -> AWS.Http.UnsignedRequest ()
deleteDomainName domainName =
    AWS.Http.unsignedRequest
        "DeleteDomainName"
        "DELETE"
        ("/domainnames/" ++ domainName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Represents a delete integration.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`


-}
deleteIntegration :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteIntegration restApiId resourceId httpMethod =
    AWS.Http.unsignedRequest
        "DeleteIntegration"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Represents a delete integration response.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
deleteIntegrationResponse :
    String
    -> String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteIntegrationResponse restApiId resourceId httpMethod statusCode =
    AWS.Http.unsignedRequest
        "DeleteIntegrationResponse"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration/responses/" ++ statusCode ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes an existing <a>Method</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`


-}
deleteMethod :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteMethod restApiId resourceId httpMethod =
    AWS.Http.unsignedRequest
        "DeleteMethod"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes an existing <a>MethodResponse</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
deleteMethodResponse :
    String
    -> String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteMethodResponse restApiId resourceId httpMethod statusCode =
    AWS.Http.unsignedRequest
        "DeleteMethodResponse"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/responses/" ++ statusCode ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a model.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `modelName` __:__ `String`


-}
deleteModel :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteModel restApiId modelName =
    AWS.Http.unsignedRequest
        "DeleteModel"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/models/" ++ modelName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a <a>Resource</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`


-}
deleteResource :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteResource restApiId resourceId =
    AWS.Http.unsignedRequest
        "DeleteResource"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified API.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
deleteRestApi :
    String
    -> AWS.Http.UnsignedRequest ()
deleteRestApi restApiId =
    AWS.Http.unsignedRequest
        "DeleteRestApi"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a <a>Stage</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`


-}
deleteStage :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteStage restApiId stageName =
    AWS.Http.unsignedRequest
        "DeleteStage"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/stages/" ++ stageName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a usage plan of a given plan Id.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`


-}
deleteUsagePlan :
    String
    -> AWS.Http.UnsignedRequest ()
deleteUsagePlan usagePlanId =
    AWS.Http.unsignedRequest
        "DeleteUsagePlan"
        "DELETE"
        ("/usageplans/" ++ usagePlanId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a usage plan key and remove the underlying API key from the associated usage plan.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`
* `keyId` __:__ `String`


-}
deleteUsagePlanKey :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteUsagePlanKey usagePlanId keyId =
    AWS.Http.unsignedRequest
        "DeleteUsagePlanKey"
        "DELETE"
        ("/usageplans/" ++ usagePlanId ++ "/keys/" ++ keyId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Flushes all authorizer cache entries on a stage.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`


-}
flushStageAuthorizersCache :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
flushStageAuthorizersCache restApiId stageName =
    AWS.Http.unsignedRequest
        "FlushStageAuthorizersCache"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/stages/" ++ stageName ++ "/cache/authorizers")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Flushes a stage's cache.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`


-}
flushStageCache :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
flushStageCache restApiId stageName =
    AWS.Http.unsignedRequest
        "FlushStageCache"
        "DELETE"
        ("/restapis/" ++ restApiId ++ "/stages/" ++ stageName ++ "/cache/data")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Generates a <a>ClientCertificate</a> resource.</p>

__Required Parameters__



-}
generateClientCertificate :
    (GenerateClientCertificateOptions -> GenerateClientCertificateOptions)
    -> AWS.Http.UnsignedRequest ClientCertificate
generateClientCertificate setOptions =
  let
    options = setOptions (GenerateClientCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GenerateClientCertificate"
        "POST"
        "/clientcertificates"
        (AWS.Http.JsonBody
            JE.null
        )
        clientCertificateDecoder


{-| Options for a generateClientCertificate request
-}
type alias GenerateClientCertificateOptions =
    { description : Maybe String
    }



{-| <p>Gets information about the current <a>Account</a> resource.</p>

__Required Parameters__



-}
getAccount :
    AWS.Http.UnsignedRequest Account
getAccount =
    AWS.Http.unsignedRequest
        "GetAccount"
        "GET"
        "/account"
        (AWS.Http.QueryParams
            [
            ]
        )
        accountDecoder



{-| <p>Gets information about the current <a>ApiKey</a> resource.</p>

__Required Parameters__

* `apiKey` __:__ `String`


-}
getApiKey :
    String
    -> (GetApiKeyOptions -> GetApiKeyOptions)
    -> AWS.Http.UnsignedRequest ApiKey
getApiKey apiKey setOptions =
  let
    options = setOptions (GetApiKeyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetApiKey"
        "GET"
        ("/apikeys/" ++ apiKey ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        apiKeyDecoder


{-| Options for a getApiKey request
-}
type alias GetApiKeyOptions =
    { includeValue : Maybe Bool
    }



{-| <p>Gets information about the current <a>ApiKeys</a> resource.</p>

__Required Parameters__



-}
getApiKeys :
    (GetApiKeysOptions -> GetApiKeysOptions)
    -> AWS.Http.UnsignedRequest ApiKeys
getApiKeys setOptions =
  let
    options = setOptions (GetApiKeysOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetApiKeys"
        "GET"
        "/apikeys"
        (AWS.Http.QueryParams
            [
            ]
        )
        apiKeysDecoder


{-| Options for a getApiKeys request
-}
type alias GetApiKeysOptions =
    { position : Maybe String
    , limit : Maybe Int
    , nameQuery : Maybe String
    , customerId : Maybe String
    , includeValues : Maybe Bool
    }



{-| <p>Describe an existing <a>Authorizer</a> resource.</p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizer.html">AWS CLI</a></div>

__Required Parameters__

* `restApiId` __:__ `String`
* `authorizerId` __:__ `String`


-}
getAuthorizer :
    String
    -> String
    -> AWS.Http.UnsignedRequest Authorizer
getAuthorizer restApiId authorizerId =
    AWS.Http.unsignedRequest
        "GetAuthorizer"
        "GET"
        ("/restapis/" ++ restApiId ++ "/authorizers/" ++ authorizerId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        authorizerDecoder



{-| <p>Describe an existing <a>Authorizers</a> resource.</p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/get-authorizers.html">AWS CLI</a></div>

__Required Parameters__

* `restApiId` __:__ `String`


-}
getAuthorizers :
    String
    -> (GetAuthorizersOptions -> GetAuthorizersOptions)
    -> AWS.Http.UnsignedRequest Authorizers
getAuthorizers restApiId setOptions =
  let
    options = setOptions (GetAuthorizersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetAuthorizers"
        "GET"
        ("/restapis/" ++ restApiId ++ "/authorizers")
        (AWS.Http.QueryParams
            [
            ]
        )
        authorizersDecoder


{-| Options for a getAuthorizers request
-}
type alias GetAuthorizersOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Describe a <a>BasePathMapping</a> resource.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `basePath` __:__ `String`


-}
getBasePathMapping :
    String
    -> String
    -> AWS.Http.UnsignedRequest BasePathMapping
getBasePathMapping domainName basePath =
    AWS.Http.unsignedRequest
        "GetBasePathMapping"
        "GET"
        ("/domainnames/" ++ domainName ++ "/basepathmappings/" ++ basePath ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        basePathMappingDecoder



{-| <p>Represents a collection of <a>BasePathMapping</a> resources.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
getBasePathMappings :
    String
    -> (GetBasePathMappingsOptions -> GetBasePathMappingsOptions)
    -> AWS.Http.UnsignedRequest BasePathMappings
getBasePathMappings domainName setOptions =
  let
    options = setOptions (GetBasePathMappingsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetBasePathMappings"
        "GET"
        ("/domainnames/" ++ domainName ++ "/basepathmappings")
        (AWS.Http.QueryParams
            [
            ]
        )
        basePathMappingsDecoder


{-| Options for a getBasePathMappings request
-}
type alias GetBasePathMappingsOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Gets information about the current <a>ClientCertificate</a> resource.</p>

__Required Parameters__

* `clientCertificateId` __:__ `String`


-}
getClientCertificate :
    String
    -> AWS.Http.UnsignedRequest ClientCertificate
getClientCertificate clientCertificateId =
    AWS.Http.unsignedRequest
        "GetClientCertificate"
        "GET"
        ("/clientcertificates/" ++ clientCertificateId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        clientCertificateDecoder



{-| <p>Gets a collection of <a>ClientCertificate</a> resources.</p>

__Required Parameters__



-}
getClientCertificates :
    (GetClientCertificatesOptions -> GetClientCertificatesOptions)
    -> AWS.Http.UnsignedRequest ClientCertificates
getClientCertificates setOptions =
  let
    options = setOptions (GetClientCertificatesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetClientCertificates"
        "GET"
        "/clientcertificates"
        (AWS.Http.QueryParams
            [
            ]
        )
        clientCertificatesDecoder


{-| Options for a getClientCertificates request
-}
type alias GetClientCertificatesOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Gets information about a <a>Deployment</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `deploymentId` __:__ `String`


-}
getDeployment :
    String
    -> String
    -> AWS.Http.UnsignedRequest Deployment
getDeployment restApiId deploymentId =
    AWS.Http.unsignedRequest
        "GetDeployment"
        "GET"
        ("/restapis/" ++ restApiId ++ "/deployments/" ++ deploymentId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        deploymentDecoder



{-| <p>Gets information about a <a>Deployments</a> collection.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
getDeployments :
    String
    -> (GetDeploymentsOptions -> GetDeploymentsOptions)
    -> AWS.Http.UnsignedRequest Deployments
getDeployments restApiId setOptions =
  let
    options = setOptions (GetDeploymentsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDeployments"
        "GET"
        ("/restapis/" ++ restApiId ++ "/deployments")
        (AWS.Http.QueryParams
            [
            ]
        )
        deploymentsDecoder


{-| Options for a getDeployments request
-}
type alias GetDeploymentsOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `documentationPartId` __:__ `String`


-}
getDocumentationPart :
    String
    -> String
    -> AWS.Http.UnsignedRequest DocumentationPart
getDocumentationPart restApiId documentationPartId =
    AWS.Http.unsignedRequest
        "GetDocumentationPart"
        "GET"
        ("/restapis/" ++ restApiId ++ "/documentation/parts/" ++ documentationPartId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        documentationPartDecoder



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`


-}
getDocumentationParts :
    String
    -> (GetDocumentationPartsOptions -> GetDocumentationPartsOptions)
    -> AWS.Http.UnsignedRequest DocumentationParts
getDocumentationParts restApiId setOptions =
  let
    options = setOptions (GetDocumentationPartsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDocumentationParts"
        "GET"
        ("/restapis/" ++ restApiId ++ "/documentation/parts")
        (AWS.Http.QueryParams
            [
            ]
        )
        documentationPartsDecoder


{-| Options for a getDocumentationParts request
-}
type alias GetDocumentationPartsOptions =
    { type_ : Maybe DocumentationPartType
    , nameQuery : Maybe String
    , path : Maybe String
    , position : Maybe String
    , limit : Maybe Int
    }



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `documentationVersion` __:__ `String`


-}
getDocumentationVersion :
    String
    -> String
    -> AWS.Http.UnsignedRequest DocumentationVersion
getDocumentationVersion restApiId documentationVersion =
    AWS.Http.unsignedRequest
        "GetDocumentationVersion"
        "GET"
        ("/restapis/" ++ restApiId ++ "/documentation/versions/" ++ documentationVersion ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        documentationVersionDecoder



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`


-}
getDocumentationVersions :
    String
    -> (GetDocumentationVersionsOptions -> GetDocumentationVersionsOptions)
    -> AWS.Http.UnsignedRequest DocumentationVersions
getDocumentationVersions restApiId setOptions =
  let
    options = setOptions (GetDocumentationVersionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDocumentationVersions"
        "GET"
        ("/restapis/" ++ restApiId ++ "/documentation/versions")
        (AWS.Http.QueryParams
            [
            ]
        )
        documentationVersionsDecoder


{-| Options for a getDocumentationVersions request
-}
type alias GetDocumentationVersionsOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Represents a domain name that is contained in a simpler, more intuitive URL that can be called.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
getDomainName :
    String
    -> AWS.Http.UnsignedRequest DomainName
getDomainName domainName =
    AWS.Http.unsignedRequest
        "GetDomainName"
        "GET"
        ("/domainnames/" ++ domainName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        domainNameDecoder



{-| <p>Represents a collection of <a>DomainName</a> resources.</p>

__Required Parameters__



-}
getDomainNames :
    (GetDomainNamesOptions -> GetDomainNamesOptions)
    -> AWS.Http.UnsignedRequest DomainNames
getDomainNames setOptions =
  let
    options = setOptions (GetDomainNamesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDomainNames"
        "GET"
        "/domainnames"
        (AWS.Http.QueryParams
            [
            ]
        )
        domainNamesDecoder


{-| Options for a getDomainNames request
-}
type alias GetDomainNamesOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Exports a deployed version of a <a>RestApi</a> in a specified format.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`
* `exportType` __:__ `String`


-}
getExport :
    String
    -> String
    -> String
    -> (GetExportOptions -> GetExportOptions)
    -> AWS.Http.UnsignedRequest ExportResponse
getExport restApiId stageName exportType setOptions =
  let
    options = setOptions (GetExportOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetExport"
        "GET"
        ("/restapis/" ++ restApiId ++ "/stages/" ++ stageName ++ "/exports/" ++ exportType ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        exportResponseDecoder


{-| Options for a getExport request
-}
type alias GetExportOptions =
    { parameters : Maybe (Dict String String)
    , accepts : Maybe String
    }



{-| <p>Represents a get integration.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`


-}
getIntegration :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest Integration
getIntegration restApiId resourceId httpMethod =
    AWS.Http.unsignedRequest
        "GetIntegration"
        "GET"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration")
        (AWS.Http.QueryParams
            [
            ]
        )
        integrationDecoder



{-| <p>Represents a get integration response.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
getIntegrationResponse :
    String
    -> String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest IntegrationResponse
getIntegrationResponse restApiId resourceId httpMethod statusCode =
    AWS.Http.unsignedRequest
        "GetIntegrationResponse"
        "GET"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration/responses/" ++ statusCode ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        integrationResponseDecoder



{-| <p>Describe an existing <a>Method</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`


-}
getMethod :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest Method
getMethod restApiId resourceId httpMethod =
    AWS.Http.unsignedRequest
        "GetMethod"
        "GET"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        methodDecoder



{-| <p>Describes a <a>MethodResponse</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
getMethodResponse :
    String
    -> String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest MethodResponse
getMethodResponse restApiId resourceId httpMethod statusCode =
    AWS.Http.unsignedRequest
        "GetMethodResponse"
        "GET"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/responses/" ++ statusCode ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        methodResponseDecoder



{-| <p>Describes an existing model defined for a <a>RestApi</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `modelName` __:__ `String`


-}
getModel :
    String
    -> String
    -> (GetModelOptions -> GetModelOptions)
    -> AWS.Http.UnsignedRequest Model
getModel restApiId modelName setOptions =
  let
    options = setOptions (GetModelOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetModel"
        "GET"
        ("/restapis/" ++ restApiId ++ "/models/" ++ modelName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        modelDecoder


{-| Options for a getModel request
-}
type alias GetModelOptions =
    { flatten : Maybe Bool
    }



{-| <p>Generates a sample mapping template that can be used to transform a payload into the structure of a model.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `modelName` __:__ `String`


-}
getModelTemplate :
    String
    -> String
    -> AWS.Http.UnsignedRequest Template
getModelTemplate restApiId modelName =
    AWS.Http.unsignedRequest
        "GetModelTemplate"
        "GET"
        ("/restapis/" ++ restApiId ++ "/models/" ++ modelName ++ "/default_template")
        (AWS.Http.QueryParams
            [
            ]
        )
        templateDecoder



{-| <p>Describes existing <a>Models</a> defined for a <a>RestApi</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
getModels :
    String
    -> (GetModelsOptions -> GetModelsOptions)
    -> AWS.Http.UnsignedRequest Models
getModels restApiId setOptions =
  let
    options = setOptions (GetModelsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetModels"
        "GET"
        ("/restapis/" ++ restApiId ++ "/models")
        (AWS.Http.QueryParams
            [
            ]
        )
        modelsDecoder


{-| Options for a getModels request
-}
type alias GetModelsOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists information about a resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`


-}
getResource :
    String
    -> String
    -> AWS.Http.UnsignedRequest Resource
getResource restApiId resourceId =
    AWS.Http.unsignedRequest
        "GetResource"
        "GET"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        resourceDecoder



{-| <p>Lists information about a collection of <a>Resource</a> resources.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
getResources :
    String
    -> (GetResourcesOptions -> GetResourcesOptions)
    -> AWS.Http.UnsignedRequest Resources
getResources restApiId setOptions =
  let
    options = setOptions (GetResourcesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetResources"
        "GET"
        ("/restapis/" ++ restApiId ++ "/resources")
        (AWS.Http.QueryParams
            [
            ]
        )
        resourcesDecoder


{-| Options for a getResources request
-}
type alias GetResourcesOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Lists the <a>RestApi</a> resource in the collection.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
getRestApi :
    String
    -> AWS.Http.UnsignedRequest RestApi
getRestApi restApiId =
    AWS.Http.unsignedRequest
        "GetRestApi"
        "GET"
        ("/restapis/" ++ restApiId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        restApiDecoder



{-| <p>Lists the <a>RestApis</a> resources for your collection.</p>

__Required Parameters__



-}
getRestApis :
    (GetRestApisOptions -> GetRestApisOptions)
    -> AWS.Http.UnsignedRequest RestApis
getRestApis setOptions =
  let
    options = setOptions (GetRestApisOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetRestApis"
        "GET"
        "/restapis"
        (AWS.Http.QueryParams
            [
            ]
        )
        restApisDecoder


{-| Options for a getRestApis request
-}
type alias GetRestApisOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Generates a client SDK for a <a>RestApi</a> and <a>Stage</a>.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`
* `sdkType` __:__ `String`


-}
getSdk :
    String
    -> String
    -> String
    -> (GetSdkOptions -> GetSdkOptions)
    -> AWS.Http.UnsignedRequest SdkResponse
getSdk restApiId stageName sdkType setOptions =
  let
    options = setOptions (GetSdkOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetSdk"
        "GET"
        ("/restapis/" ++ restApiId ++ "/stages/" ++ stageName ++ "/sdks/" ++ sdkType ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        sdkResponseDecoder


{-| Options for a getSdk request
-}
type alias GetSdkOptions =
    { parameters : Maybe (Dict String String)
    }



{-| undefined

__Required Parameters__

* `id` __:__ `String`


-}
getSdkType :
    String
    -> AWS.Http.UnsignedRequest SdkType
getSdkType id =
    AWS.Http.unsignedRequest
        "GetSdkType"
        "GET"
        ("/sdktypes/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        sdkTypeDecoder



{-| undefined

__Required Parameters__



-}
getSdkTypes :
    (GetSdkTypesOptions -> GetSdkTypesOptions)
    -> AWS.Http.UnsignedRequest SdkTypes
getSdkTypes setOptions =
  let
    options = setOptions (GetSdkTypesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetSdkTypes"
        "GET"
        "/sdktypes"
        (AWS.Http.QueryParams
            [
            ]
        )
        sdkTypesDecoder


{-| Options for a getSdkTypes request
-}
type alias GetSdkTypesOptions =
    { position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Gets information about a <a>Stage</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`


-}
getStage :
    String
    -> String
    -> AWS.Http.UnsignedRequest Stage
getStage restApiId stageName =
    AWS.Http.unsignedRequest
        "GetStage"
        "GET"
        ("/restapis/" ++ restApiId ++ "/stages/" ++ stageName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        stageDecoder



{-| <p>Gets information about one or more <a>Stage</a> resources.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
getStages :
    String
    -> (GetStagesOptions -> GetStagesOptions)
    -> AWS.Http.UnsignedRequest Stages
getStages restApiId setOptions =
  let
    options = setOptions (GetStagesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetStages"
        "GET"
        ("/restapis/" ++ restApiId ++ "/stages")
        (AWS.Http.QueryParams
            [
            ]
        )
        stagesDecoder


{-| Options for a getStages request
-}
type alias GetStagesOptions =
    { deploymentId : Maybe String
    }



{-| <p>Gets the usage data of a usage plan in a specified time interval.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`
* `startDate` __:__ `String`
* `endDate` __:__ `String`


-}
getUsage :
    String
    -> String
    -> String
    -> (GetUsageOptions -> GetUsageOptions)
    -> AWS.Http.UnsignedRequest Usage
getUsage usagePlanId startDate endDate setOptions =
  let
    options = setOptions (GetUsageOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetUsage"
        "GET"
        ("/usageplans/" ++ usagePlanId ++ "/usage")
        (AWS.Http.QueryParams
            [
            ]
        )
        usageDecoder


{-| Options for a getUsage request
-}
type alias GetUsageOptions =
    { keyId : Maybe String
    , position : Maybe String
    , limit : Maybe Int
    }



{-| <p>Gets a usage plan of a given plan identifier.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`


-}
getUsagePlan :
    String
    -> AWS.Http.UnsignedRequest UsagePlan
getUsagePlan usagePlanId =
    AWS.Http.unsignedRequest
        "GetUsagePlan"
        "GET"
        ("/usageplans/" ++ usagePlanId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        usagePlanDecoder



{-| <p>Gets a usage plan key of a given key identifier.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`
* `keyId` __:__ `String`


-}
getUsagePlanKey :
    String
    -> String
    -> AWS.Http.UnsignedRequest UsagePlanKey
getUsagePlanKey usagePlanId keyId =
    AWS.Http.unsignedRequest
        "GetUsagePlanKey"
        "GET"
        ("/usageplans/" ++ usagePlanId ++ "/keys/" ++ keyId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        usagePlanKeyDecoder



{-| <p>Gets all the usage plan keys representing the API keys added to a specified usage plan.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`


-}
getUsagePlanKeys :
    String
    -> (GetUsagePlanKeysOptions -> GetUsagePlanKeysOptions)
    -> AWS.Http.UnsignedRequest UsagePlanKeys
getUsagePlanKeys usagePlanId setOptions =
  let
    options = setOptions (GetUsagePlanKeysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetUsagePlanKeys"
        "GET"
        ("/usageplans/" ++ usagePlanId ++ "/keys")
        (AWS.Http.QueryParams
            [
            ]
        )
        usagePlanKeysDecoder


{-| Options for a getUsagePlanKeys request
-}
type alias GetUsagePlanKeysOptions =
    { position : Maybe String
    , limit : Maybe Int
    , nameQuery : Maybe String
    }



{-| <p>Gets all the usage plans of the caller's account.</p>

__Required Parameters__



-}
getUsagePlans :
    (GetUsagePlansOptions -> GetUsagePlansOptions)
    -> AWS.Http.UnsignedRequest UsagePlans
getUsagePlans setOptions =
  let
    options = setOptions (GetUsagePlansOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetUsagePlans"
        "GET"
        "/usageplans"
        (AWS.Http.QueryParams
            [
            ]
        )
        usagePlansDecoder


{-| Options for a getUsagePlans request
-}
type alias GetUsagePlansOptions =
    { position : Maybe String
    , keyId : Maybe String
    , limit : Maybe Int
    }



{-| <p>Import API keys from an external source, such as a CSV-formatted file.</p>

__Required Parameters__

* `body` __:__ `String`
* `format` __:__ `ApiKeysFormat`


-}
importApiKeys :
    String
    -> ApiKeysFormat
    -> (ImportApiKeysOptions -> ImportApiKeysOptions)
    -> AWS.Http.UnsignedRequest ApiKeyIds
importApiKeys body format setOptions =
  let
    options = setOptions (ImportApiKeysOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportApiKeys"
        "POST"
        "/apikeys?mode=import"
        (AWS.Http.JsonBody
            JE.null
        )
        apiKeyIdsDecoder


{-| Options for a importApiKeys request
-}
type alias ImportApiKeysOptions =
    { failOnWarnings : Maybe Bool
    }



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `body` __:__ `String`


-}
importDocumentationParts :
    String
    -> String
    -> (ImportDocumentationPartsOptions -> ImportDocumentationPartsOptions)
    -> AWS.Http.UnsignedRequest DocumentationPartIds
importDocumentationParts restApiId body setOptions =
  let
    options = setOptions (ImportDocumentationPartsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportDocumentationParts"
        "PUT"
        ("/restapis/" ++ restApiId ++ "/documentation/parts")
        (AWS.Http.JsonBody
            JE.null
        )
        documentationPartIdsDecoder


{-| Options for a importDocumentationParts request
-}
type alias ImportDocumentationPartsOptions =
    { mode : Maybe PutMode
    , failOnWarnings : Maybe Bool
    }



{-| <p>A feature of the Amazon API Gateway control service for creating a new API from an external API definition file.</p>

__Required Parameters__

* `body` __:__ `String`


-}
importRestApi :
    String
    -> (ImportRestApiOptions -> ImportRestApiOptions)
    -> AWS.Http.UnsignedRequest RestApi
importRestApi body setOptions =
  let
    options = setOptions (ImportRestApiOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportRestApi"
        "POST"
        "/restapis?mode=import"
        (AWS.Http.JsonBody
            JE.null
        )
        restApiDecoder


{-| Options for a importRestApi request
-}
type alias ImportRestApiOptions =
    { failOnWarnings : Maybe Bool
    , parameters : Maybe (Dict String String)
    }



{-| <p>Represents a put integration.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `type_` __:__ `IntegrationType`


-}
putIntegration :
    String
    -> String
    -> String
    -> IntegrationType
    -> (PutIntegrationOptions -> PutIntegrationOptions)
    -> AWS.Http.UnsignedRequest Integration
putIntegration restApiId resourceId httpMethod type_ setOptions =
  let
    options = setOptions (PutIntegrationOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutIntegration"
        "PUT"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration")
        (AWS.Http.JsonBody
            JE.null
        )
        integrationDecoder


{-| Options for a putIntegration request
-}
type alias PutIntegrationOptions =
    { integrationHttpMethod : Maybe String
    , uri : Maybe String
    , credentials : Maybe String
    , requestParameters : Maybe (Dict String String)
    , requestTemplates : Maybe (Dict String String)
    , passthroughBehavior : Maybe String
    , cacheNamespace : Maybe String
    , cacheKeyParameters : Maybe (List String)
    , contentHandling : Maybe ContentHandlingStrategy
    }



{-| <p>Represents a put integration.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
putIntegrationResponse :
    String
    -> String
    -> String
    -> String
    -> (PutIntegrationResponseOptions -> PutIntegrationResponseOptions)
    -> AWS.Http.UnsignedRequest IntegrationResponse
putIntegrationResponse restApiId resourceId httpMethod statusCode setOptions =
  let
    options = setOptions (PutIntegrationResponseOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutIntegrationResponse"
        "PUT"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration/responses/" ++ statusCode ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        integrationResponseDecoder


{-| Options for a putIntegrationResponse request
-}
type alias PutIntegrationResponseOptions =
    { selectionPattern : Maybe String
    , responseParameters : Maybe (Dict String String)
    , responseTemplates : Maybe (Dict String String)
    , contentHandling : Maybe ContentHandlingStrategy
    }



{-| <p>Add a method to an existing <a>Resource</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `authorizationType` __:__ `String`


-}
putMethod :
    String
    -> String
    -> String
    -> String
    -> (PutMethodOptions -> PutMethodOptions)
    -> AWS.Http.UnsignedRequest Method
putMethod restApiId resourceId httpMethod authorizationType setOptions =
  let
    options = setOptions (PutMethodOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutMethod"
        "PUT"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        methodDecoder


{-| Options for a putMethod request
-}
type alias PutMethodOptions =
    { authorizerId : Maybe String
    , apiKeyRequired : Maybe Bool
    , operationName : Maybe String
    , requestParameters : Maybe (Dict String Bool)
    , requestModels : Maybe (Dict String String)
    }



{-| <p>Adds a <a>MethodResponse</a> to an existing <a>Method</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
putMethodResponse :
    String
    -> String
    -> String
    -> String
    -> (PutMethodResponseOptions -> PutMethodResponseOptions)
    -> AWS.Http.UnsignedRequest MethodResponse
putMethodResponse restApiId resourceId httpMethod statusCode setOptions =
  let
    options = setOptions (PutMethodResponseOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutMethodResponse"
        "PUT"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/responses/" ++ statusCode ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        methodResponseDecoder


{-| Options for a putMethodResponse request
-}
type alias PutMethodResponseOptions =
    { responseParameters : Maybe (Dict String Bool)
    , responseModels : Maybe (Dict String String)
    }



{-| <p>A feature of the Amazon API Gateway control service for updating an existing API with an input of external API definitions. The update can take the form of merging the supplied definition into the existing API or overwriting the existing API.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `body` __:__ `String`


-}
putRestApi :
    String
    -> String
    -> (PutRestApiOptions -> PutRestApiOptions)
    -> AWS.Http.UnsignedRequest RestApi
putRestApi restApiId body setOptions =
  let
    options = setOptions (PutRestApiOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutRestApi"
        "PUT"
        ("/restapis/" ++ restApiId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        restApiDecoder


{-| Options for a putRestApi request
-}
type alias PutRestApiOptions =
    { mode : Maybe PutMode
    , failOnWarnings : Maybe Bool
    , parameters : Maybe (Dict String String)
    }



{-| <p>Simulate the execution of an <a>Authorizer</a> in your <a>RestApi</a> with headers, parameters, and an incoming request body.</p> <div class="seeAlso"> <a href="http://docs.aws.amazon.com/apigateway/latest/developerguide/use-custom-authorizer.html">Enable custom authorizers</a> </div>

__Required Parameters__

* `restApiId` __:__ `String`
* `authorizerId` __:__ `String`


-}
testInvokeAuthorizer :
    String
    -> String
    -> (TestInvokeAuthorizerOptions -> TestInvokeAuthorizerOptions)
    -> AWS.Http.UnsignedRequest TestInvokeAuthorizerResponse
testInvokeAuthorizer restApiId authorizerId setOptions =
  let
    options = setOptions (TestInvokeAuthorizerOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "TestInvokeAuthorizer"
        "POST"
        ("/restapis/" ++ restApiId ++ "/authorizers/" ++ authorizerId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        testInvokeAuthorizerResponseDecoder


{-| Options for a testInvokeAuthorizer request
-}
type alias TestInvokeAuthorizerOptions =
    { headers : Maybe (Dict String String)
    , pathWithQueryString : Maybe String
    , body : Maybe String
    , stageVariables : Maybe (Dict String String)
    , additionalContext : Maybe (Dict String String)
    }



{-| <p>Simulate the execution of a <a>Method</a> in your <a>RestApi</a> with headers, parameters, and an incoming request body.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`


-}
testInvokeMethod :
    String
    -> String
    -> String
    -> (TestInvokeMethodOptions -> TestInvokeMethodOptions)
    -> AWS.Http.UnsignedRequest TestInvokeMethodResponse
testInvokeMethod restApiId resourceId httpMethod setOptions =
  let
    options = setOptions (TestInvokeMethodOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "TestInvokeMethod"
        "POST"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        testInvokeMethodResponseDecoder


{-| Options for a testInvokeMethod request
-}
type alias TestInvokeMethodOptions =
    { pathWithQueryString : Maybe String
    , body : Maybe String
    , headers : Maybe (Dict String String)
    , clientCertificateId : Maybe String
    , stageVariables : Maybe (Dict String String)
    }



{-| <p>Changes information about the current <a>Account</a> resource.</p>

__Required Parameters__



-}
updateAccount :
    (UpdateAccountOptions -> UpdateAccountOptions)
    -> AWS.Http.UnsignedRequest Account
updateAccount setOptions =
  let
    options = setOptions (UpdateAccountOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAccount"
        "PATCH"
        "/account"
        (AWS.Http.JsonBody
            JE.null
        )
        accountDecoder


{-| Options for a updateAccount request
-}
type alias UpdateAccountOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about an <a>ApiKey</a> resource.</p>

__Required Parameters__

* `apiKey` __:__ `String`


-}
updateApiKey :
    String
    -> (UpdateApiKeyOptions -> UpdateApiKeyOptions)
    -> AWS.Http.UnsignedRequest ApiKey
updateApiKey apiKey setOptions =
  let
    options = setOptions (UpdateApiKeyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateApiKey"
        "PATCH"
        ("/apikeys/" ++ apiKey ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        apiKeyDecoder


{-| Options for a updateApiKey request
-}
type alias UpdateApiKeyOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Updates an existing <a>Authorizer</a> resource.</p> <div class="seeAlso"><a href="http://docs.aws.amazon.com/cli/latest/reference/apigateway/update-authorizer.html">AWS CLI</a></div>

__Required Parameters__

* `restApiId` __:__ `String`
* `authorizerId` __:__ `String`


-}
updateAuthorizer :
    String
    -> String
    -> (UpdateAuthorizerOptions -> UpdateAuthorizerOptions)
    -> AWS.Http.UnsignedRequest Authorizer
updateAuthorizer restApiId authorizerId setOptions =
  let
    options = setOptions (UpdateAuthorizerOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAuthorizer"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/authorizers/" ++ authorizerId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        authorizerDecoder


{-| Options for a updateAuthorizer request
-}
type alias UpdateAuthorizerOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about the <a>BasePathMapping</a> resource.</p>

__Required Parameters__

* `domainName` __:__ `String`
* `basePath` __:__ `String`


-}
updateBasePathMapping :
    String
    -> String
    -> (UpdateBasePathMappingOptions -> UpdateBasePathMappingOptions)
    -> AWS.Http.UnsignedRequest BasePathMapping
updateBasePathMapping domainName basePath setOptions =
  let
    options = setOptions (UpdateBasePathMappingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateBasePathMapping"
        "PATCH"
        ("/domainnames/" ++ domainName ++ "/basepathmappings/" ++ basePath ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        basePathMappingDecoder


{-| Options for a updateBasePathMapping request
-}
type alias UpdateBasePathMappingOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about an <a>ClientCertificate</a> resource.</p>

__Required Parameters__

* `clientCertificateId` __:__ `String`


-}
updateClientCertificate :
    String
    -> (UpdateClientCertificateOptions -> UpdateClientCertificateOptions)
    -> AWS.Http.UnsignedRequest ClientCertificate
updateClientCertificate clientCertificateId setOptions =
  let
    options = setOptions (UpdateClientCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateClientCertificate"
        "PATCH"
        ("/clientcertificates/" ++ clientCertificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        clientCertificateDecoder


{-| Options for a updateClientCertificate request
-}
type alias UpdateClientCertificateOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about a <a>Deployment</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `deploymentId` __:__ `String`


-}
updateDeployment :
    String
    -> String
    -> (UpdateDeploymentOptions -> UpdateDeploymentOptions)
    -> AWS.Http.UnsignedRequest Deployment
updateDeployment restApiId deploymentId setOptions =
  let
    options = setOptions (UpdateDeploymentOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDeployment"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/deployments/" ++ deploymentId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deploymentDecoder


{-| Options for a updateDeployment request
-}
type alias UpdateDeploymentOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `documentationPartId` __:__ `String`


-}
updateDocumentationPart :
    String
    -> String
    -> (UpdateDocumentationPartOptions -> UpdateDocumentationPartOptions)
    -> AWS.Http.UnsignedRequest DocumentationPart
updateDocumentationPart restApiId documentationPartId setOptions =
  let
    options = setOptions (UpdateDocumentationPartOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDocumentationPart"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/documentation/parts/" ++ documentationPartId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        documentationPartDecoder


{-| Options for a updateDocumentationPart request
-}
type alias UpdateDocumentationPartOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| undefined

__Required Parameters__

* `restApiId` __:__ `String`
* `documentationVersion` __:__ `String`


-}
updateDocumentationVersion :
    String
    -> String
    -> (UpdateDocumentationVersionOptions -> UpdateDocumentationVersionOptions)
    -> AWS.Http.UnsignedRequest DocumentationVersion
updateDocumentationVersion restApiId documentationVersion setOptions =
  let
    options = setOptions (UpdateDocumentationVersionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDocumentationVersion"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/documentation/versions/" ++ documentationVersion ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        documentationVersionDecoder


{-| Options for a updateDocumentationVersion request
-}
type alias UpdateDocumentationVersionOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about the <a>DomainName</a> resource.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
updateDomainName :
    String
    -> (UpdateDomainNameOptions -> UpdateDomainNameOptions)
    -> AWS.Http.UnsignedRequest DomainName
updateDomainName domainName setOptions =
  let
    options = setOptions (UpdateDomainNameOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDomainName"
        "PATCH"
        ("/domainnames/" ++ domainName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        domainNameDecoder


{-| Options for a updateDomainName request
-}
type alias UpdateDomainNameOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Represents an update integration.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`


-}
updateIntegration :
    String
    -> String
    -> String
    -> (UpdateIntegrationOptions -> UpdateIntegrationOptions)
    -> AWS.Http.UnsignedRequest Integration
updateIntegration restApiId resourceId httpMethod setOptions =
  let
    options = setOptions (UpdateIntegrationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateIntegration"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration")
        (AWS.Http.JsonBody
            JE.null
        )
        integrationDecoder


{-| Options for a updateIntegration request
-}
type alias UpdateIntegrationOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Represents an update integration response.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
updateIntegrationResponse :
    String
    -> String
    -> String
    -> String
    -> (UpdateIntegrationResponseOptions -> UpdateIntegrationResponseOptions)
    -> AWS.Http.UnsignedRequest IntegrationResponse
updateIntegrationResponse restApiId resourceId httpMethod statusCode setOptions =
  let
    options = setOptions (UpdateIntegrationResponseOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateIntegrationResponse"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/integration/responses/" ++ statusCode ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        integrationResponseDecoder


{-| Options for a updateIntegrationResponse request
-}
type alias UpdateIntegrationResponseOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Updates an existing <a>Method</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`


-}
updateMethod :
    String
    -> String
    -> String
    -> (UpdateMethodOptions -> UpdateMethodOptions)
    -> AWS.Http.UnsignedRequest Method
updateMethod restApiId resourceId httpMethod setOptions =
  let
    options = setOptions (UpdateMethodOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateMethod"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        methodDecoder


{-| Options for a updateMethod request
-}
type alias UpdateMethodOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Updates an existing <a>MethodResponse</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`
* `httpMethod` __:__ `String`
* `statusCode` __:__ `String`


-}
updateMethodResponse :
    String
    -> String
    -> String
    -> String
    -> (UpdateMethodResponseOptions -> UpdateMethodResponseOptions)
    -> AWS.Http.UnsignedRequest MethodResponse
updateMethodResponse restApiId resourceId httpMethod statusCode setOptions =
  let
    options = setOptions (UpdateMethodResponseOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateMethodResponse"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "/methods/" ++ httpMethod ++ "/responses/" ++ statusCode ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        methodResponseDecoder


{-| Options for a updateMethodResponse request
-}
type alias UpdateMethodResponseOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about a model.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `modelName` __:__ `String`


-}
updateModel :
    String
    -> String
    -> (UpdateModelOptions -> UpdateModelOptions)
    -> AWS.Http.UnsignedRequest Model
updateModel restApiId modelName setOptions =
  let
    options = setOptions (UpdateModelOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateModel"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/models/" ++ modelName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        modelDecoder


{-| Options for a updateModel request
-}
type alias UpdateModelOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about a <a>Resource</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `resourceId` __:__ `String`


-}
updateResource :
    String
    -> String
    -> (UpdateResourceOptions -> UpdateResourceOptions)
    -> AWS.Http.UnsignedRequest Resource
updateResource restApiId resourceId setOptions =
  let
    options = setOptions (UpdateResourceOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateResource"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/resources/" ++ resourceId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        resourceDecoder


{-| Options for a updateResource request
-}
type alias UpdateResourceOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about the specified API.</p>

__Required Parameters__

* `restApiId` __:__ `String`


-}
updateRestApi :
    String
    -> (UpdateRestApiOptions -> UpdateRestApiOptions)
    -> AWS.Http.UnsignedRequest RestApi
updateRestApi restApiId setOptions =
  let
    options = setOptions (UpdateRestApiOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateRestApi"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        restApiDecoder


{-| Options for a updateRestApi request
-}
type alias UpdateRestApiOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Changes information about a <a>Stage</a> resource.</p>

__Required Parameters__

* `restApiId` __:__ `String`
* `stageName` __:__ `String`


-}
updateStage :
    String
    -> String
    -> (UpdateStageOptions -> UpdateStageOptions)
    -> AWS.Http.UnsignedRequest Stage
updateStage restApiId stageName setOptions =
  let
    options = setOptions (UpdateStageOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateStage"
        "PATCH"
        ("/restapis/" ++ restApiId ++ "/stages/" ++ stageName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        stageDecoder


{-| Options for a updateStage request
-}
type alias UpdateStageOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Grants a temporary extension to the reamining quota of a usage plan associated with a specified API key.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`
* `keyId` __:__ `String`


-}
updateUsage :
    String
    -> String
    -> (UpdateUsageOptions -> UpdateUsageOptions)
    -> AWS.Http.UnsignedRequest Usage
updateUsage usagePlanId keyId setOptions =
  let
    options = setOptions (UpdateUsageOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateUsage"
        "PATCH"
        ("/usageplans/" ++ usagePlanId ++ "/keys/" ++ keyId ++ "/usage")
        (AWS.Http.JsonBody
            JE.null
        )
        usageDecoder


{-| Options for a updateUsage request
-}
type alias UpdateUsageOptions =
    { patchOperations : Maybe (List PatchOperation)
    }



{-| <p>Updates a usage plan of a given plan Id.</p>

__Required Parameters__

* `usagePlanId` __:__ `String`


-}
updateUsagePlan :
    String
    -> (UpdateUsagePlanOptions -> UpdateUsagePlanOptions)
    -> AWS.Http.UnsignedRequest UsagePlan
updateUsagePlan usagePlanId setOptions =
  let
    options = setOptions (UpdateUsagePlanOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateUsagePlan"
        "PATCH"
        ("/usageplans/" ++ usagePlanId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        usagePlanDecoder


{-| Options for a updateUsagePlan request
-}
type alias UpdateUsagePlanOptions =
    { patchOperations : Maybe (List PatchOperation)
    }




{-| Type of HTTP response from accoun
-}
type alias Account =
    { cloudwatchRoleArn : Maybe String
    , throttleSettings : Maybe ThrottleSettings
    , features : Maybe (List String)
    , apiKeyVersion : Maybe String
    }



accountDecoder : JD.Decoder Account
accountDecoder =
    JDP.decode Account
        |> JDP.optional "cloudwatchRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "throttleSettings" (JD.nullable throttleSettingsDecoder) Nothing
        |> JDP.optional "features" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "apiKeyVersion" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from apiK
-}
type alias ApiKey =
    { id : Maybe String
    , value : Maybe String
    , name : Maybe String
    , customerId : Maybe String
    , description : Maybe String
    , enabled : Maybe Bool
    , createdDate : Maybe Date
    , lastUpdatedDate : Maybe Date
    , stageKeys : Maybe (List String)
    }



apiKeyDecoder : JD.Decoder ApiKey
apiKeyDecoder =
    JDP.decode ApiKey
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stageKeys" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from a
-}
type alias ApiKeyIds =
    { ids : Maybe (List String)
    , warnings : Maybe (List String)
    }



apiKeyIdsDecoder : JD.Decoder ApiKeyIds
apiKeyIdsDecoder =
    JDP.decode ApiKeyIds
        |> JDP.optional "ids" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from apiKey
-}
type alias ApiKeys =
    { warnings : Maybe (List String)
    , position : Maybe String
    , items : Maybe (List ApiKey)
    }



apiKeysDecoder : JD.Decoder ApiKeys
apiKeysDecoder =
    JDP.decode ApiKeys
        |> JDP.optional "warnings" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list apiKeyDecoder)) Nothing




{-| One of

* `ApiKeysFormat_csv`

-}
type ApiKeysFormat
    = ApiKeysFormat_csv



apiKeysFormatDecoder : JD.Decoder ApiKeysFormat
apiKeysFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "csv" ->
                        JD.succeed ApiKeysFormat_csv


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>API stage name of the associated API stage in a usage plan.</p>
-}
type alias ApiStage =
    { apiId : Maybe String
    , stage : Maybe String
    }



apiStageDecoder : JD.Decoder ApiStage
apiStageDecoder =
    JDP.decode ApiStage
        |> JDP.optional "apiId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from au
-}
type alias Authorizer =
    { id : Maybe String
    , name : Maybe String
    , type_ : Maybe AuthorizerType
    , providerARNs : Maybe (List String)
    , authType : Maybe String
    , authorizerUri : Maybe String
    , authorizerCredentials : Maybe String
    , identitySource : Maybe String
    , identityValidationExpression : Maybe String
    , authorizerResultTtlInSeconds : Maybe Int
    }



authorizerDecoder : JD.Decoder Authorizer
authorizerDecoder =
    JDP.decode Authorizer
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable authorizerTypeDecoder) Nothing
        |> JDP.optional "providerARNs" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "authType" (JD.nullable JD.string) Nothing
        |> JDP.optional "authorizerUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "authorizerCredentials" (JD.nullable JD.string) Nothing
        |> JDP.optional "identitySource" (JD.nullable JD.string) Nothing
        |> JDP.optional "identityValidationExpression" (JD.nullable JD.string) Nothing
        |> JDP.optional "authorizerResultTtlInSeconds" (JD.nullable JD.int) Nothing




{-| One of

* `AuthorizerType_TOKEN`
* `AuthorizerType_COGNITO_USER_POOLS`

-}
type AuthorizerType
    = AuthorizerType_TOKEN
    | AuthorizerType_COGNITO_USER_POOLS



authorizerTypeDecoder : JD.Decoder AuthorizerType
authorizerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TOKEN" ->
                        JD.succeed AuthorizerType_TOKEN

                    "COGNITO_USER_POOLS" ->
                        JD.succeed AuthorizerType_COGNITO_USER_POOLS


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from aut
-}
type alias Authorizers =
    { position : Maybe String
    , items : Maybe (List Authorizer)
    }



authorizersDecoder : JD.Decoder Authorizers
authorizersDecoder =
    JDP.decode Authorizers
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list authorizerDecoder)) Nothing




{-| undefined
-}
type alias BadRequestException =
    { message : Maybe String
    }



badRequestExceptionDecoder : JD.Decoder BadRequestException
badRequestExceptionDecoder =
    JDP.decode BadRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from basePat
-}
type alias BasePathMapping =
    { basePath : Maybe String
    , restApiId : Maybe String
    , stage : Maybe String
    }



basePathMappingDecoder : JD.Decoder BasePathMapping
basePathMappingDecoder =
    JDP.decode BasePathMapping
        |> JDP.optional "basePath" (JD.nullable JD.string) Nothing
        |> JDP.optional "restApiId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from basePath
-}
type alias BasePathMappings =
    { position : Maybe String
    , items : Maybe (List BasePathMapping)
    }



basePathMappingsDecoder : JD.Decoder BasePathMappings
basePathMappingsDecoder =
    JDP.decode BasePathMappings
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list basePathMappingDecoder)) Nothing




{-| One of

* `CacheClusterSize_0.5`
* `CacheClusterSize_1.6`
* `CacheClusterSize_6.1`
* `CacheClusterSize_13.5`
* `CacheClusterSize_28.4`
* `CacheClusterSize_58.2`
* `CacheClusterSize_118`
* `CacheClusterSize_237`

-}
type CacheClusterSize
    = CacheClusterSize_0_5
    | CacheClusterSize_1_6
    | CacheClusterSize_6_1
    | CacheClusterSize_13_5
    | CacheClusterSize_28_4
    | CacheClusterSize_58_2
    | CacheClusterSize_118
    | CacheClusterSize_237



cacheClusterSizeDecoder : JD.Decoder CacheClusterSize
cacheClusterSizeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "0_5" ->
                        JD.succeed CacheClusterSize_0_5

                    "1_6" ->
                        JD.succeed CacheClusterSize_1_6

                    "6_1" ->
                        JD.succeed CacheClusterSize_6_1

                    "13_5" ->
                        JD.succeed CacheClusterSize_13_5

                    "28_4" ->
                        JD.succeed CacheClusterSize_28_4

                    "58_2" ->
                        JD.succeed CacheClusterSize_58_2

                    "118" ->
                        JD.succeed CacheClusterSize_118

                    "237" ->
                        JD.succeed CacheClusterSize_237


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CacheClusterStatus_CREATE_IN_PROGRESS`
* `CacheClusterStatus_AVAILABLE`
* `CacheClusterStatus_DELETE_IN_PROGRESS`
* `CacheClusterStatus_NOT_AVAILABLE`
* `CacheClusterStatus_FLUSH_IN_PROGRESS`

-}
type CacheClusterStatus
    = CacheClusterStatus_CREATE_IN_PROGRESS
    | CacheClusterStatus_AVAILABLE
    | CacheClusterStatus_DELETE_IN_PROGRESS
    | CacheClusterStatus_NOT_AVAILABLE
    | CacheClusterStatus_FLUSH_IN_PROGRESS



cacheClusterStatusDecoder : JD.Decoder CacheClusterStatus
cacheClusterStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_IN_PROGRESS" ->
                        JD.succeed CacheClusterStatus_CREATE_IN_PROGRESS

                    "AVAILABLE" ->
                        JD.succeed CacheClusterStatus_AVAILABLE

                    "DELETE_IN_PROGRESS" ->
                        JD.succeed CacheClusterStatus_DELETE_IN_PROGRESS

                    "NOT_AVAILABLE" ->
                        JD.succeed CacheClusterStatus_NOT_AVAILABLE

                    "FLUSH_IN_PROGRESS" ->
                        JD.succeed CacheClusterStatus_FLUSH_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from clientCer
-}
type alias ClientCertificate =
    { clientCertificateId : Maybe String
    , description : Maybe String
    , pemEncodedCertificate : Maybe String
    , createdDate : Maybe Date
    , expirationDate : Maybe Date
    }



clientCertificateDecoder : JD.Decoder ClientCertificate
clientCertificateDecoder =
    JDP.decode ClientCertificate
        |> JDP.optional "clientCertificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "pemEncodedCertificate" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "expirationDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from clientCert
-}
type alias ClientCertificates =
    { position : Maybe String
    , items : Maybe (List ClientCertificate)
    }



clientCertificatesDecoder : JD.Decoder ClientCertificates
clientCertificatesDecoder =
    JDP.decode ClientCertificates
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list clientCertificateDecoder)) Nothing




{-| undefined
-}
type alias ConflictException =
    { message : Maybe String
    }



conflictExceptionDecoder : JD.Decoder ConflictException
conflictExceptionDecoder =
    JDP.decode ConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ContentHandlingStrategy_CONVERT_TO_BINARY`
* `ContentHandlingStrategy_CONVERT_TO_TEXT`

-}
type ContentHandlingStrategy
    = ContentHandlingStrategy_CONVERT_TO_BINARY
    | ContentHandlingStrategy_CONVERT_TO_TEXT



contentHandlingStrategyDecoder : JD.Decoder ContentHandlingStrategy
contentHandlingStrategyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONVERT_TO_BINARY" ->
                        JD.succeed ContentHandlingStrategy_CONVERT_TO_BINARY

                    "CONVERT_TO_TEXT" ->
                        JD.succeed ContentHandlingStrategy_CONVERT_TO_TEXT


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from de
-}
type alias Deployment =
    { id : Maybe String
    , description : Maybe String
    , createdDate : Maybe Date
    , apiSummary : Maybe (Dict String (Dict String MethodSnapshot))
    }



deploymentDecoder : JD.Decoder Deployment
deploymentDecoder =
    JDP.decode Deployment
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "apiSummary" (JD.nullable (JD.dict (JD.dict methodSnapshotDecoder))) Nothing




{-| Type of HTTP response from dep
-}
type alias Deployments =
    { position : Maybe String
    , items : Maybe (List Deployment)
    }



deploymentsDecoder : JD.Decoder Deployments
deploymentsDecoder =
    JDP.decode Deployments
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list deploymentDecoder)) Nothing




{-| Type of HTTP response from documenta
-}
type alias DocumentationPart =
    { id : Maybe String
    , location : Maybe DocumentationPartLocation
    , properties : Maybe String
    }



documentationPartDecoder : JD.Decoder DocumentationPart
documentationPartDecoder =
    JDP.decode DocumentationPart
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "location" (JD.nullable documentationPartLocationDecoder) Nothing
        |> JDP.optional "properties" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from documentatio
-}
type alias DocumentationPartIds =
    { ids : Maybe (List String)
    , warnings : Maybe (List String)
    }



documentationPartIdsDecoder : JD.Decoder DocumentationPartIds
documentationPartIdsDecoder =
    JDP.decode DocumentationPartIds
        |> JDP.optional "ids" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Specifies the target API entity to which the documentation applies.</p>
-}
type alias DocumentationPartLocation =
    { type_ : DocumentationPartType
    , path : Maybe String
    , method : Maybe String
    , statusCode : Maybe String
    , name : Maybe String
    }



documentationPartLocationDecoder : JD.Decoder DocumentationPartLocation
documentationPartLocationDecoder =
    JDP.decode DocumentationPartLocation
        |> JDP.required "type_" documentationPartTypeDecoder
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "method" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| One of

* `DocumentationPartType_API`
* `DocumentationPartType_AUTHORIZER`
* `DocumentationPartType_MODEL`
* `DocumentationPartType_RESOURCE`
* `DocumentationPartType_METHOD`
* `DocumentationPartType_PATH_PARAMETER`
* `DocumentationPartType_QUERY_PARAMETER`
* `DocumentationPartType_REQUEST_HEADER`
* `DocumentationPartType_REQUEST_BODY`
* `DocumentationPartType_RESPONSE`
* `DocumentationPartType_RESPONSE_HEADER`
* `DocumentationPartType_RESPONSE_BODY`

-}
type DocumentationPartType
    = DocumentationPartType_API
    | DocumentationPartType_AUTHORIZER
    | DocumentationPartType_MODEL
    | DocumentationPartType_RESOURCE
    | DocumentationPartType_METHOD
    | DocumentationPartType_PATH_PARAMETER
    | DocumentationPartType_QUERY_PARAMETER
    | DocumentationPartType_REQUEST_HEADER
    | DocumentationPartType_REQUEST_BODY
    | DocumentationPartType_RESPONSE
    | DocumentationPartType_RESPONSE_HEADER
    | DocumentationPartType_RESPONSE_BODY



documentationPartTypeDecoder : JD.Decoder DocumentationPartType
documentationPartTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "API" ->
                        JD.succeed DocumentationPartType_API

                    "AUTHORIZER" ->
                        JD.succeed DocumentationPartType_AUTHORIZER

                    "MODEL" ->
                        JD.succeed DocumentationPartType_MODEL

                    "RESOURCE" ->
                        JD.succeed DocumentationPartType_RESOURCE

                    "METHOD" ->
                        JD.succeed DocumentationPartType_METHOD

                    "PATH_PARAMETER" ->
                        JD.succeed DocumentationPartType_PATH_PARAMETER

                    "QUERY_PARAMETER" ->
                        JD.succeed DocumentationPartType_QUERY_PARAMETER

                    "REQUEST_HEADER" ->
                        JD.succeed DocumentationPartType_REQUEST_HEADER

                    "REQUEST_BODY" ->
                        JD.succeed DocumentationPartType_REQUEST_BODY

                    "RESPONSE" ->
                        JD.succeed DocumentationPartType_RESPONSE

                    "RESPONSE_HEADER" ->
                        JD.succeed DocumentationPartType_RESPONSE_HEADER

                    "RESPONSE_BODY" ->
                        JD.succeed DocumentationPartType_RESPONSE_BODY


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from documentat
-}
type alias DocumentationParts =
    { position : Maybe String
    , items : Maybe (List DocumentationPart)
    }



documentationPartsDecoder : JD.Decoder DocumentationParts
documentationPartsDecoder =
    JDP.decode DocumentationParts
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list documentationPartDecoder)) Nothing




{-| Type of HTTP response from documentatio
-}
type alias DocumentationVersion =
    { version : Maybe String
    , createdDate : Maybe Date
    , description : Maybe String
    }



documentationVersionDecoder : JD.Decoder DocumentationVersion
documentationVersionDecoder =
    JDP.decode DocumentationVersion
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from documentation
-}
type alias DocumentationVersions =
    { position : Maybe String
    , items : Maybe (List DocumentationVersion)
    }



documentationVersionsDecoder : JD.Decoder DocumentationVersions
documentationVersionsDecoder =
    JDP.decode DocumentationVersions
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list documentationVersionDecoder)) Nothing




{-| Type of HTTP response from do
-}
type alias DomainName =
    { domainName : Maybe String
    , certificateName : Maybe String
    , certificateUploadDate : Maybe Date
    , distributionDomainName : Maybe String
    }



domainNameDecoder : JD.Decoder DomainName
domainNameDecoder =
    JDP.decode DomainName
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateName" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateUploadDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "distributionDomainName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from dom
-}
type alias DomainNames =
    { position : Maybe String
    , items : Maybe (List DomainName)
    }



domainNamesDecoder : JD.Decoder DomainNames
domainNamesDecoder =
    JDP.decode DomainNames
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list domainNameDecoder)) Nothing




{-| Type of HTTP response from export
-}
type alias ExportResponse =
    { contentType : Maybe String
    , contentDisposition : Maybe String
    , body : Maybe String
    }



exportResponseDecoder : JD.Decoder ExportResponse
exportResponseDecoder =
    JDP.decode ExportResponse
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentDisposition" (JD.nullable JD.string) Nothing
        |> JDP.optional "body" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from int
-}
type alias Integration =
    { type_ : Maybe IntegrationType
    , httpMethod : Maybe String
    , uri : Maybe String
    , credentials : Maybe String
    , requestParameters : Maybe (Dict String String)
    , requestTemplates : Maybe (Dict String String)
    , passthroughBehavior : Maybe String
    , contentHandling : Maybe ContentHandlingStrategy
    , cacheNamespace : Maybe String
    , cacheKeyParameters : Maybe (List String)
    , integrationResponses : Maybe (Dict String IntegrationResponse)
    }



integrationDecoder : JD.Decoder Integration
integrationDecoder =
    JDP.decode Integration
        |> JDP.optional "type_" (JD.nullable integrationTypeDecoder) Nothing
        |> JDP.optional "httpMethod" (JD.nullable JD.string) Nothing
        |> JDP.optional "uri" (JD.nullable JD.string) Nothing
        |> JDP.optional "credentials" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "requestTemplates" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "passthroughBehavior" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentHandling" (JD.nullable contentHandlingStrategyDecoder) Nothing
        |> JDP.optional "cacheNamespace" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheKeyParameters" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "integrationResponses" (JD.nullable (JD.dict integrationResponseDecoder)) Nothing




{-| Type of HTTP response from integration
-}
type alias IntegrationResponse =
    { statusCode : Maybe String
    , selectionPattern : Maybe String
    , responseParameters : Maybe (Dict String String)
    , responseTemplates : Maybe (Dict String String)
    , contentHandling : Maybe ContentHandlingStrategy
    }



integrationResponseDecoder : JD.Decoder IntegrationResponse
integrationResponseDecoder =
    JDP.decode IntegrationResponse
        |> JDP.optional "statusCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "selectionPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "responseParameters" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "responseTemplates" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "contentHandling" (JD.nullable contentHandlingStrategyDecoder) Nothing




{-| One of

* `IntegrationType_HTTP`
* `IntegrationType_AWS`
* `IntegrationType_MOCK`
* `IntegrationType_HTTP_PROXY`
* `IntegrationType_AWS_PROXY`

-}
type IntegrationType
    = IntegrationType_HTTP
    | IntegrationType_AWS
    | IntegrationType_MOCK
    | IntegrationType_HTTP_PROXY
    | IntegrationType_AWS_PROXY



integrationTypeDecoder : JD.Decoder IntegrationType
integrationTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HTTP" ->
                        JD.succeed IntegrationType_HTTP

                    "AWS" ->
                        JD.succeed IntegrationType_AWS

                    "MOCK" ->
                        JD.succeed IntegrationType_MOCK

                    "HTTP_PROXY" ->
                        JD.succeed IntegrationType_HTTP_PROXY

                    "AWS_PROXY" ->
                        JD.succeed IntegrationType_AWS_PROXY


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias LimitExceededException =
    { retryAfterSeconds : Maybe String
    , message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "retryAfterSeconds" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from meth
-}
type alias Method =
    { httpMethod : Maybe String
    , authorizationType : Maybe String
    , authorizerId : Maybe String
    , apiKeyRequired : Maybe Bool
    , operationName : Maybe String
    , requestParameters : Maybe (Dict String Bool)
    , requestModels : Maybe (Dict String String)
    , methodResponses : Maybe (Dict String MethodResponse)
    , methodIntegration : Maybe Integration
    }



methodDecoder : JD.Decoder Method
methodDecoder =
    JDP.decode Method
        |> JDP.optional "httpMethod" (JD.nullable JD.string) Nothing
        |> JDP.optional "authorizationType" (JD.nullable JD.string) Nothing
        |> JDP.optional "authorizerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "apiKeyRequired" (JD.nullable JD.bool) Nothing
        |> JDP.optional "operationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestParameters" (JD.nullable (JD.dict JD.bool)) Nothing
        |> JDP.optional "requestModels" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "methodResponses" (JD.nullable (JD.dict methodResponseDecoder)) Nothing
        |> JDP.optional "methodIntegration" (JD.nullable integrationDecoder) Nothing




{-| Type of HTTP response from method
-}
type alias MethodResponse =
    { statusCode : Maybe String
    , responseParameters : Maybe (Dict String Bool)
    , responseModels : Maybe (Dict String String)
    }



methodResponseDecoder : JD.Decoder MethodResponse
methodResponseDecoder =
    JDP.decode MethodResponse
        |> JDP.optional "statusCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "responseParameters" (JD.nullable (JD.dict JD.bool)) Nothing
        |> JDP.optional "responseModels" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Specifies the method setting properties.</p>
-}
type alias MethodSetting =
    { metricsEnabled : Maybe Bool
    , loggingLevel : Maybe String
    , dataTraceEnabled : Maybe Bool
    , throttlingBurstLimit : Maybe Int
    , throttlingRateLimit : Maybe Float
    , cachingEnabled : Maybe Bool
    , cacheTtlInSeconds : Maybe Int
    , cacheDataEncrypted : Maybe Bool
    , requireAuthorizationForCacheControl : Maybe Bool
    , unauthorizedCacheControlHeaderStrategy : Maybe UnauthorizedCacheControlHeaderStrategy
    }



methodSettingDecoder : JD.Decoder MethodSetting
methodSettingDecoder =
    JDP.decode MethodSetting
        |> JDP.optional "metricsEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "loggingLevel" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataTraceEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "throttlingBurstLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "throttlingRateLimit" (JD.nullable JD.float) Nothing
        |> JDP.optional "cachingEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "cacheTtlInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "cacheDataEncrypted" (JD.nullable JD.bool) Nothing
        |> JDP.optional "requireAuthorizationForCacheControl" (JD.nullable JD.bool) Nothing
        |> JDP.optional "unauthorizedCacheControlHeaderStrategy" (JD.nullable unauthorizedCacheControlHeaderStrategyDecoder) Nothing




{-| <p>Represents a summary of a <a>Method</a> resource, given a particular date and time.</p>
-}
type alias MethodSnapshot =
    { authorizationType : Maybe String
    , apiKeyRequired : Maybe Bool
    }



methodSnapshotDecoder : JD.Decoder MethodSnapshot
methodSnapshotDecoder =
    JDP.decode MethodSnapshot
        |> JDP.optional "authorizationType" (JD.nullable JD.string) Nothing
        |> JDP.optional "apiKeyRequired" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from mo
-}
type alias Model =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , schema : Maybe String
    , contentType : Maybe String
    }



modelDecoder : JD.Decoder Model
modelDecoder =
    JDP.decode Model
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "schema" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from mode
-}
type alias Models =
    { position : Maybe String
    , items : Maybe (List Model)
    }



modelsDecoder : JD.Decoder Models
modelsDecoder =
    JDP.decode Models
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list modelDecoder)) Nothing




{-| undefined
-}
type alias NotFoundException =
    { message : Maybe String
    }



notFoundExceptionDecoder : JD.Decoder NotFoundException
notFoundExceptionDecoder =
    JDP.decode NotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `Op_add`
* `Op_remove`
* `Op_replace`
* `Op_move`
* `Op_copy`
* `Op_test`

-}
type Op
    = Op_add
    | Op_remove
    | Op_replace
    | Op_move
    | Op_copy
    | Op_test



opDecoder : JD.Decoder Op
opDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "add" ->
                        JD.succeed Op_add

                    "remove" ->
                        JD.succeed Op_remove

                    "replace" ->
                        JD.succeed Op_replace

                    "move" ->
                        JD.succeed Op_move

                    "copy" ->
                        JD.succeed Op_copy

                    "test" ->
                        JD.succeed Op_test


                    _ ->
                        JD.fail "bad thing"
            )



{-| A single patch operation to apply to the specified resource. Please refer to http://tools.ietf.org/html/rfc6902#section-4 for an explanation of how each operation is used.
-}
type alias PatchOperation =
    { op : Maybe Op
    , path : Maybe String
    , value : Maybe String
    , from : Maybe String
    }



patchOperationDecoder : JD.Decoder PatchOperation
patchOperationDecoder =
    JDP.decode PatchOperation
        |> JDP.optional "op" (JD.nullable opDecoder) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "from" (JD.nullable JD.string) Nothing




{-| One of

* `PutMode_merge`
* `PutMode_overwrite`

-}
type PutMode
    = PutMode_merge
    | PutMode_overwrite



putModeDecoder : JD.Decoder PutMode
putModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "merge" ->
                        JD.succeed PutMode_merge

                    "overwrite" ->
                        JD.succeed PutMode_overwrite


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `QuotaPeriodType_DAY`
* `QuotaPeriodType_WEEK`
* `QuotaPeriodType_MONTH`

-}
type QuotaPeriodType
    = QuotaPeriodType_DAY
    | QuotaPeriodType_WEEK
    | QuotaPeriodType_MONTH



quotaPeriodTypeDecoder : JD.Decoder QuotaPeriodType
quotaPeriodTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DAY" ->
                        JD.succeed QuotaPeriodType_DAY

                    "WEEK" ->
                        JD.succeed QuotaPeriodType_WEEK

                    "MONTH" ->
                        JD.succeed QuotaPeriodType_MONTH


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Quotas configured for a usage plan.</p>
-}
type alias QuotaSettings =
    { limit : Maybe Int
    , offset : Maybe Int
    , period : Maybe QuotaPeriodType
    }



quotaSettingsDecoder : JD.Decoder QuotaSettings
quotaSettingsDecoder =
    JDP.decode QuotaSettings
        |> JDP.optional "limit" (JD.nullable JD.int) Nothing
        |> JDP.optional "offset" (JD.nullable JD.int) Nothing
        |> JDP.optional "period" (JD.nullable quotaPeriodTypeDecoder) Nothing




{-| Type of HTTP response from 
-}
type alias Resource =
    { id : Maybe String
    , parentId : Maybe String
    , pathPart : Maybe String
    , path : Maybe String
    , resourceMethods : Maybe (Dict String Method)
    }



resourceDecoder : JD.Decoder Resource
resourceDecoder =
    JDP.decode Resource
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "parentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "pathPart" (JD.nullable JD.string) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceMethods" (JD.nullable (JD.dict methodDecoder)) Nothing




{-| Type of HTTP response from r
-}
type alias Resources =
    { position : Maybe String
    , items : Maybe (List Resource)
    }



resourcesDecoder : JD.Decoder Resources
resourcesDecoder =
    JDP.decode Resources
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list resourceDecoder)) Nothing




{-| Type of HTTP response from restAp
-}
type alias RestApi =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , createdDate : Maybe Date
    , version : Maybe String
    , warnings : Maybe (List String)
    , binaryMediaTypes : Maybe (List String)
    }



restApiDecoder : JD.Decoder RestApi
restApiDecoder =
    JDP.decode RestApi
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "binaryMediaTypes" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from 
-}
type alias RestApis =
    { position : Maybe String
    , items : Maybe (List RestApi)
    }



restApisDecoder : JD.Decoder RestApis
restApisDecoder =
    JDP.decode RestApis
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list restApiDecoder)) Nothing




{-| <p>A configuration property of an SDK type.</p>
-}
type alias SdkConfigurationProperty =
    { name : Maybe String
    , friendlyName : Maybe String
    , description : Maybe String
    , required : Maybe Bool
    , defaultValue : Maybe String
    }



sdkConfigurationPropertyDecoder : JD.Decoder SdkConfigurationProperty
sdkConfigurationPropertyDecoder =
    JDP.decode SdkConfigurationProperty
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "friendlyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "required" (JD.nullable JD.bool) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from sdk
-}
type alias SdkResponse =
    { contentType : Maybe String
    , contentDisposition : Maybe String
    , body : Maybe String
    }



sdkResponseDecoder : JD.Decoder SdkResponse
sdkResponseDecoder =
    JDP.decode SdkResponse
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentDisposition" (JD.nullable JD.string) Nothing
        |> JDP.optional "body" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from sdkTyp
-}
type alias SdkType =
    { id : Maybe String
    , friendlyName : Maybe String
    , description : Maybe String
    , configurationProperties : Maybe (List SdkConfigurationProperty)
    }



sdkTypeDecoder : JD.Decoder SdkType
sdkTypeDecoder =
    JDP.decode SdkType
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "friendlyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "configurationProperties" (JD.nullable (JD.list sdkConfigurationPropertyDecoder)) Nothing




{-| Type of HTTP response from 
-}
type alias SdkTypes =
    { position : Maybe String
    , items : Maybe (List SdkType)
    }



sdkTypesDecoder : JD.Decoder SdkTypes
sdkTypesDecoder =
    JDP.decode SdkTypes
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list sdkTypeDecoder)) Nothing




{-| undefined
-}
type alias ServiceUnavailableException =
    { retryAfterSeconds : Maybe String
    , message : Maybe String
    }



serviceUnavailableExceptionDecoder : JD.Decoder ServiceUnavailableException
serviceUnavailableExceptionDecoder =
    JDP.decode ServiceUnavailableException
        |> JDP.optional "retryAfterSeconds" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from st
-}
type alias Stage =
    { deploymentId : Maybe String
    , clientCertificateId : Maybe String
    , stageName : Maybe String
    , description : Maybe String
    , cacheClusterEnabled : Maybe Bool
    , cacheClusterSize : Maybe CacheClusterSize
    , cacheClusterStatus : Maybe CacheClusterStatus
    , methodSettings : Maybe (Dict String MethodSetting)
    , variables : Maybe (Dict String String)
    , documentationVersion : Maybe String
    , createdDate : Maybe Date
    , lastUpdatedDate : Maybe Date
    }



stageDecoder : JD.Decoder Stage
stageDecoder =
    JDP.decode Stage
        |> JDP.optional "deploymentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clientCertificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stageName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "cacheClusterEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "cacheClusterSize" (JD.nullable cacheClusterSizeDecoder) Nothing
        |> JDP.optional "cacheClusterStatus" (JD.nullable cacheClusterStatusDecoder) Nothing
        |> JDP.optional "methodSettings" (JD.nullable (JD.dict methodSettingDecoder)) Nothing
        |> JDP.optional "variables" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "documentationVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedDate" (JD.nullable JDX.date) Nothing




{-| <p>A reference to a unique stage identified in the format <code>{restApiId}/{stage}</code>.</p>
-}
type alias StageKey =
    { restApiId : Maybe String
    , stageName : Maybe String
    }



stageKeyDecoder : JD.Decoder StageKey
stageKeyDecoder =
    JDP.decode StageKey
        |> JDP.optional "restApiId" (JD.nullable JD.string) Nothing
        |> JDP.optional "stageName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from stag
-}
type alias Stages =
    { item : Maybe (List Stage)
    }



stagesDecoder : JD.Decoder Stages
stagesDecoder =
    JDP.decode Stages
        |> JDP.optional "item" (JD.nullable (JD.list stageDecoder)) Nothing




{-| Type of HTTP response from 
-}
type alias Template =
    { value : Maybe String
    }



templateDecoder : JD.Decoder Template
templateDecoder =
    JDP.decode Template
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from testInvokeAuthorizer
-}
type alias TestInvokeAuthorizerResponse =
    { clientStatus : Maybe Int
    , log : Maybe String
    , latency : Maybe Int
    , principalId : Maybe String
    , policy : Maybe String
    , authorization : Maybe (Dict String (List String))
    , claims : Maybe (Dict String String)
    }



testInvokeAuthorizerResponseDecoder : JD.Decoder TestInvokeAuthorizerResponse
testInvokeAuthorizerResponseDecoder =
    JDP.decode TestInvokeAuthorizerResponse
        |> JDP.optional "clientStatus" (JD.nullable JD.int) Nothing
        |> JDP.optional "log" (JD.nullable JD.string) Nothing
        |> JDP.optional "latency" (JD.nullable JD.int) Nothing
        |> JDP.optional "principalId" (JD.nullable JD.string) Nothing
        |> JDP.optional "policy" (JD.nullable JD.string) Nothing
        |> JDP.optional "authorization" (JD.nullable (JD.dict (JD.list JD.string))) Nothing
        |> JDP.optional "claims" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from testInvokeMethod
-}
type alias TestInvokeMethodResponse =
    { status : Maybe Int
    , body : Maybe String
    , headers : Maybe (Dict String String)
    , log : Maybe String
    , latency : Maybe Int
    }



testInvokeMethodResponseDecoder : JD.Decoder TestInvokeMethodResponse
testInvokeMethodResponseDecoder =
    JDP.decode TestInvokeMethodResponse
        |> JDP.optional "status" (JD.nullable JD.int) Nothing
        |> JDP.optional "body" (JD.nullable JD.string) Nothing
        |> JDP.optional "headers" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "log" (JD.nullable JD.string) Nothing
        |> JDP.optional "latency" (JD.nullable JD.int) Nothing




{-| <p> The API request rate limits.</p>
-}
type alias ThrottleSettings =
    { burstLimit : Maybe Int
    , rateLimit : Maybe Float
    }



throttleSettingsDecoder : JD.Decoder ThrottleSettings
throttleSettingsDecoder =
    JDP.decode ThrottleSettings
        |> JDP.optional "burstLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "rateLimit" (JD.nullable JD.float) Nothing




{-| undefined
-}
type alias TooManyRequestsException =
    { retryAfterSeconds : Maybe String
    , message : Maybe String
    }



tooManyRequestsExceptionDecoder : JD.Decoder TooManyRequestsException
tooManyRequestsExceptionDecoder =
    JDP.decode TooManyRequestsException
        |> JDP.optional "retryAfterSeconds" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `UnauthorizedCacheControlHeaderStrategy_FAIL_WITH_403`
* `UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITH_RESPONSE_HEADER`
* `UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITHOUT_RESPONSE_HEADER`

-}
type UnauthorizedCacheControlHeaderStrategy
    = UnauthorizedCacheControlHeaderStrategy_FAIL_WITH_403
    | UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITH_RESPONSE_HEADER
    | UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITHOUT_RESPONSE_HEADER



unauthorizedCacheControlHeaderStrategyDecoder : JD.Decoder UnauthorizedCacheControlHeaderStrategy
unauthorizedCacheControlHeaderStrategyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FAIL_WITH_403" ->
                        JD.succeed UnauthorizedCacheControlHeaderStrategy_FAIL_WITH_403

                    "SUCCEED_WITH_RESPONSE_HEADER" ->
                        JD.succeed UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITH_RESPONSE_HEADER

                    "SUCCEED_WITHOUT_RESPONSE_HEADER" ->
                        JD.succeed UnauthorizedCacheControlHeaderStrategy_SUCCEED_WITHOUT_RESPONSE_HEADER


                    _ ->
                        JD.fail "bad thing"
            )



{-| undefined
-}
type alias UnauthorizedException =
    { message : Maybe String
    }



unauthorizedExceptionDecoder : JD.Decoder UnauthorizedException
unauthorizedExceptionDecoder =
    JDP.decode UnauthorizedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from us
-}
type alias Usage =
    { usagePlanId : Maybe String
    , startDate : Maybe String
    , endDate : Maybe String
    , position : Maybe String
    , items : Maybe (Dict String (List (List Int)))
    }



usageDecoder : JD.Decoder Usage
usageDecoder =
    JDP.decode Usage
        |> JDP.optional "usagePlanId" (JD.nullable JD.string) Nothing
        |> JDP.optional "startDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "endDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.dict (JD.list (JD.list JD.int)))) Nothing




{-| Type of HTTP response from u
-}
type alias UsagePlan =
    { id : Maybe String
    , name : Maybe String
    , description : Maybe String
    , apiStages : Maybe (List ApiStage)
    , throttle : Maybe ThrottleSettings
    , quota : Maybe QuotaSettings
    , productCode : Maybe String
    }



usagePlanDecoder : JD.Decoder UsagePlan
usagePlanDecoder =
    JDP.decode UsagePlan
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "apiStages" (JD.nullable (JD.list apiStageDecoder)) Nothing
        |> JDP.optional "throttle" (JD.nullable throttleSettingsDecoder) Nothing
        |> JDP.optional "quota" (JD.nullable quotaSettingsDecoder) Nothing
        |> JDP.optional "productCode" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from usag
-}
type alias UsagePlanKey =
    { id : Maybe String
    , type_ : Maybe String
    , value : Maybe String
    , name : Maybe String
    }



usagePlanKeyDecoder : JD.Decoder UsagePlanKey
usagePlanKeyDecoder =
    JDP.decode UsagePlanKey
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from usage
-}
type alias UsagePlanKeys =
    { position : Maybe String
    , items : Maybe (List UsagePlanKey)
    }



usagePlanKeysDecoder : JD.Decoder UsagePlanKeys
usagePlanKeysDecoder =
    JDP.decode UsagePlanKeys
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list usagePlanKeyDecoder)) Nothing




{-| Type of HTTP response from us
-}
type alias UsagePlans =
    { position : Maybe String
    , items : Maybe (List UsagePlan)
    }



usagePlansDecoder : JD.Decoder UsagePlans
usagePlansDecoder =
    JDP.decode UsagePlans
        |> JDP.optional "position" (JD.nullable JD.string) Nothing
        |> JDP.optional "items" (JD.nullable (JD.list usagePlanDecoder)) Nothing




