module AWS.Services.ElasticBeanstalk
    exposing
        ( config
        , abortEnvironmentUpdate
        , AbortEnvironmentUpdateOptions
        , applyEnvironmentManagedAction
        , ApplyEnvironmentManagedActionOptions
        , checkDNSAvailability
        , composeEnvironments
        , ComposeEnvironmentsOptions
        , createApplication
        , CreateApplicationOptions
        , createApplicationVersion
        , CreateApplicationVersionOptions
        , createConfigurationTemplate
        , CreateConfigurationTemplateOptions
        , createEnvironment
        , CreateEnvironmentOptions
        , createStorageLocation
        , deleteApplication
        , DeleteApplicationOptions
        , deleteApplicationVersion
        , DeleteApplicationVersionOptions
        , deleteConfigurationTemplate
        , deleteEnvironmentConfiguration
        , describeApplicationVersions
        , DescribeApplicationVersionsOptions
        , describeApplications
        , DescribeApplicationsOptions
        , describeConfigurationOptions
        , DescribeConfigurationOptionsOptions
        , describeConfigurationSettings
        , DescribeConfigurationSettingsOptions
        , describeEnvironmentHealth
        , DescribeEnvironmentHealthOptions
        , describeEnvironmentManagedActionHistory
        , DescribeEnvironmentManagedActionHistoryOptions
        , describeEnvironmentManagedActions
        , DescribeEnvironmentManagedActionsOptions
        , describeEnvironmentResources
        , DescribeEnvironmentResourcesOptions
        , describeEnvironments
        , DescribeEnvironmentsOptions
        , describeEvents
        , DescribeEventsOptions
        , describeInstancesHealth
        , DescribeInstancesHealthOptions
        , listAvailableSolutionStacks
        , rebuildEnvironment
        , RebuildEnvironmentOptions
        , requestEnvironmentInfo
        , RequestEnvironmentInfoOptions
        , restartAppServer
        , RestartAppServerOptions
        , retrieveEnvironmentInfo
        , RetrieveEnvironmentInfoOptions
        , swapEnvironmentCNAMEs
        , SwapEnvironmentCNAMEsOptions
        , terminateEnvironment
        , TerminateEnvironmentOptions
        , updateApplication
        , UpdateApplicationOptions
        , updateApplicationResourceLifecycle
        , updateApplicationVersion
        , UpdateApplicationVersionOptions
        , updateConfigurationTemplate
        , UpdateConfigurationTemplateOptions
        , updateEnvironment
        , UpdateEnvironmentOptions
        , validateConfigurationSettings
        , ValidateConfigurationSettingsOptions
        , ActionHistoryStatus(..)
        , ActionStatus(..)
        , ActionType(..)
        , ApplicationDescription
        , ApplicationDescriptionMessage
        , ApplicationDescriptionsMessage
        , ApplicationMetrics
        , ApplicationResourceLifecycleConfig
        , ApplicationResourceLifecycleDescriptionMessage
        , ApplicationVersionDescription
        , ApplicationVersionDescriptionMessage
        , ApplicationVersionDescriptionsMessage
        , ApplicationVersionLifecycleConfig
        , ApplicationVersionStatus(..)
        , ApplyEnvironmentManagedActionResult
        , AutoScalingGroup
        , BuildConfiguration
        , CPUUtilization
        , CheckDNSAvailabilityResultMessage
        , CodeBuildNotInServiceRegionException
        , ComputeType(..)
        , ConfigurationDeploymentStatus(..)
        , ConfigurationOptionDescription
        , ConfigurationOptionSetting
        , ConfigurationOptionValueType(..)
        , ConfigurationOptionsDescription
        , ConfigurationSettingsDescription
        , ConfigurationSettingsDescriptions
        , ConfigurationSettingsValidationMessages
        , CreateStorageLocationResultMessage
        , Deployment
        , DescribeEnvironmentHealthResult
        , DescribeEnvironmentManagedActionHistoryResult
        , DescribeEnvironmentManagedActionsResult
        , DescribeInstancesHealthResult
        , ElasticBeanstalkServiceException
        , EnvironmentDescription
        , EnvironmentDescriptionsMessage
        , EnvironmentHealth(..)
        , EnvironmentHealthAttribute(..)
        , EnvironmentHealthStatus(..)
        , EnvironmentInfoDescription
        , EnvironmentInfoType(..)
        , EnvironmentLink
        , EnvironmentResourceDescription
        , EnvironmentResourceDescriptionsMessage
        , EnvironmentResourcesDescription
        , EnvironmentStatus(..)
        , EnvironmentTier
        , EventDescription
        , EventDescriptionsMessage
        , EventSeverity(..)
        , FailureType(..)
        , Instance
        , InstanceHealthSummary
        , InstancesHealthAttribute(..)
        , InsufficientPrivilegesException
        , InvalidRequestException
        , Latency
        , LaunchConfiguration
        , ListAvailableSolutionStacksResultMessage
        , Listener
        , LoadBalancer
        , LoadBalancerDescription
        , ManagedAction
        , ManagedActionHistoryItem
        , ManagedActionInvalidStateException
        , MaxAgeRule
        , MaxCountRule
        , OperationInProgressException
        , OptionRestrictionRegex
        , OptionSpecification
        , Queue
        , RetrieveEnvironmentInfoResultMessage
        , S3Location
        , S3LocationNotInServiceRegionException
        , S3SubscriptionRequiredException
        , SingleInstanceHealth
        , SolutionStackDescription
        , SourceBuildInformation
        , SourceBundleDeletionException
        , SourceConfiguration
        , SourceRepository(..)
        , SourceType(..)
        , StatusCodes
        , SystemStatus
        , Tag
        , TooManyApplicationVersionsException
        , TooManyApplicationsException
        , TooManyBucketsException
        , TooManyConfigurationTemplatesException
        , TooManyEnvironmentsException
        , Trigger
        , ValidationMessage
        , ValidationSeverity(..)
        )

{-| <fullname>AWS Elastic Beanstalk</fullname> <p>AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on the Amazon Web Services cloud.</p> <p>For more information about this product, go to the <a href="http://aws.amazon.com/elasticbeanstalk/">AWS Elastic Beanstalk</a> details page. The location of the latest AWS Elastic Beanstalk WSDL is <a href="http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl">http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>. To install the Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command line tools that enable you to access the API, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> <p> <b>Endpoints</b> </p> <p>For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">Regions and Endpoints</a> in the <i>Amazon Web Services Glossary</i>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [abortEnvironmentUpdate](#abortEnvironmentUpdate)
* [AbortEnvironmentUpdateOptions](#AbortEnvironmentUpdateOptions)
* [applyEnvironmentManagedAction](#applyEnvironmentManagedAction)
* [ApplyEnvironmentManagedActionOptions](#ApplyEnvironmentManagedActionOptions)
* [checkDNSAvailability](#checkDNSAvailability)
* [composeEnvironments](#composeEnvironments)
* [ComposeEnvironmentsOptions](#ComposeEnvironmentsOptions)
* [createApplication](#createApplication)
* [CreateApplicationOptions](#CreateApplicationOptions)
* [createApplicationVersion](#createApplicationVersion)
* [CreateApplicationVersionOptions](#CreateApplicationVersionOptions)
* [createConfigurationTemplate](#createConfigurationTemplate)
* [CreateConfigurationTemplateOptions](#CreateConfigurationTemplateOptions)
* [createEnvironment](#createEnvironment)
* [CreateEnvironmentOptions](#CreateEnvironmentOptions)
* [createStorageLocation](#createStorageLocation)
* [deleteApplication](#deleteApplication)
* [DeleteApplicationOptions](#DeleteApplicationOptions)
* [deleteApplicationVersion](#deleteApplicationVersion)
* [DeleteApplicationVersionOptions](#DeleteApplicationVersionOptions)
* [deleteConfigurationTemplate](#deleteConfigurationTemplate)
* [deleteEnvironmentConfiguration](#deleteEnvironmentConfiguration)
* [describeApplicationVersions](#describeApplicationVersions)
* [DescribeApplicationVersionsOptions](#DescribeApplicationVersionsOptions)
* [describeApplications](#describeApplications)
* [DescribeApplicationsOptions](#DescribeApplicationsOptions)
* [describeConfigurationOptions](#describeConfigurationOptions)
* [DescribeConfigurationOptionsOptions](#DescribeConfigurationOptionsOptions)
* [describeConfigurationSettings](#describeConfigurationSettings)
* [DescribeConfigurationSettingsOptions](#DescribeConfigurationSettingsOptions)
* [describeEnvironmentHealth](#describeEnvironmentHealth)
* [DescribeEnvironmentHealthOptions](#DescribeEnvironmentHealthOptions)
* [describeEnvironmentManagedActionHistory](#describeEnvironmentManagedActionHistory)
* [DescribeEnvironmentManagedActionHistoryOptions](#DescribeEnvironmentManagedActionHistoryOptions)
* [describeEnvironmentManagedActions](#describeEnvironmentManagedActions)
* [DescribeEnvironmentManagedActionsOptions](#DescribeEnvironmentManagedActionsOptions)
* [describeEnvironmentResources](#describeEnvironmentResources)
* [DescribeEnvironmentResourcesOptions](#DescribeEnvironmentResourcesOptions)
* [describeEnvironments](#describeEnvironments)
* [DescribeEnvironmentsOptions](#DescribeEnvironmentsOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)
* [describeInstancesHealth](#describeInstancesHealth)
* [DescribeInstancesHealthOptions](#DescribeInstancesHealthOptions)
* [listAvailableSolutionStacks](#listAvailableSolutionStacks)
* [rebuildEnvironment](#rebuildEnvironment)
* [RebuildEnvironmentOptions](#RebuildEnvironmentOptions)
* [requestEnvironmentInfo](#requestEnvironmentInfo)
* [RequestEnvironmentInfoOptions](#RequestEnvironmentInfoOptions)
* [restartAppServer](#restartAppServer)
* [RestartAppServerOptions](#RestartAppServerOptions)
* [retrieveEnvironmentInfo](#retrieveEnvironmentInfo)
* [RetrieveEnvironmentInfoOptions](#RetrieveEnvironmentInfoOptions)
* [swapEnvironmentCNAMEs](#swapEnvironmentCNAMEs)
* [SwapEnvironmentCNAMEsOptions](#SwapEnvironmentCNAMEsOptions)
* [terminateEnvironment](#terminateEnvironment)
* [TerminateEnvironmentOptions](#TerminateEnvironmentOptions)
* [updateApplication](#updateApplication)
* [UpdateApplicationOptions](#UpdateApplicationOptions)
* [updateApplicationResourceLifecycle](#updateApplicationResourceLifecycle)
* [updateApplicationVersion](#updateApplicationVersion)
* [UpdateApplicationVersionOptions](#UpdateApplicationVersionOptions)
* [updateConfigurationTemplate](#updateConfigurationTemplate)
* [UpdateConfigurationTemplateOptions](#UpdateConfigurationTemplateOptions)
* [updateEnvironment](#updateEnvironment)
* [UpdateEnvironmentOptions](#UpdateEnvironmentOptions)
* [validateConfigurationSettings](#validateConfigurationSettings)
* [ValidateConfigurationSettingsOptions](#ValidateConfigurationSettingsOptions)


@docs abortEnvironmentUpdate,AbortEnvironmentUpdateOptions,applyEnvironmentManagedAction,ApplyEnvironmentManagedActionOptions,checkDNSAvailability,composeEnvironments,ComposeEnvironmentsOptions,createApplication,CreateApplicationOptions,createApplicationVersion,CreateApplicationVersionOptions,createConfigurationTemplate,CreateConfigurationTemplateOptions,createEnvironment,CreateEnvironmentOptions,createStorageLocation,deleteApplication,DeleteApplicationOptions,deleteApplicationVersion,DeleteApplicationVersionOptions,deleteConfigurationTemplate,deleteEnvironmentConfiguration,describeApplicationVersions,DescribeApplicationVersionsOptions,describeApplications,DescribeApplicationsOptions,describeConfigurationOptions,DescribeConfigurationOptionsOptions,describeConfigurationSettings,DescribeConfigurationSettingsOptions,describeEnvironmentHealth,DescribeEnvironmentHealthOptions,describeEnvironmentManagedActionHistory,DescribeEnvironmentManagedActionHistoryOptions,describeEnvironmentManagedActions,DescribeEnvironmentManagedActionsOptions,describeEnvironmentResources,DescribeEnvironmentResourcesOptions,describeEnvironments,DescribeEnvironmentsOptions,describeEvents,DescribeEventsOptions,describeInstancesHealth,DescribeInstancesHealthOptions,listAvailableSolutionStacks,rebuildEnvironment,RebuildEnvironmentOptions,requestEnvironmentInfo,RequestEnvironmentInfoOptions,restartAppServer,RestartAppServerOptions,retrieveEnvironmentInfo,RetrieveEnvironmentInfoOptions,swapEnvironmentCNAMEs,SwapEnvironmentCNAMEsOptions,terminateEnvironment,TerminateEnvironmentOptions,updateApplication,UpdateApplicationOptions,updateApplicationResourceLifecycle,updateApplicationVersion,UpdateApplicationVersionOptions,updateConfigurationTemplate,UpdateConfigurationTemplateOptions,updateEnvironment,UpdateEnvironmentOptions,validateConfigurationSettings,ValidateConfigurationSettingsOptions

## Responses

* [ApplicationDescriptionMessage](#ApplicationDescriptionMessage)
* [ApplicationDescriptionsMessage](#ApplicationDescriptionsMessage)
* [ApplicationResourceLifecycleDescriptionMessage](#ApplicationResourceLifecycleDescriptionMessage)
* [ApplicationVersionDescriptionMessage](#ApplicationVersionDescriptionMessage)
* [ApplicationVersionDescriptionsMessage](#ApplicationVersionDescriptionsMessage)
* [ApplyEnvironmentManagedActionResult](#ApplyEnvironmentManagedActionResult)
* [CheckDNSAvailabilityResultMessage](#CheckDNSAvailabilityResultMessage)
* [ConfigurationOptionsDescription](#ConfigurationOptionsDescription)
* [ConfigurationSettingsDescription](#ConfigurationSettingsDescription)
* [ConfigurationSettingsDescriptions](#ConfigurationSettingsDescriptions)
* [ConfigurationSettingsValidationMessages](#ConfigurationSettingsValidationMessages)
* [CreateStorageLocationResultMessage](#CreateStorageLocationResultMessage)
* [DescribeEnvironmentHealthResult](#DescribeEnvironmentHealthResult)
* [DescribeEnvironmentManagedActionHistoryResult](#DescribeEnvironmentManagedActionHistoryResult)
* [DescribeEnvironmentManagedActionsResult](#DescribeEnvironmentManagedActionsResult)
* [DescribeInstancesHealthResult](#DescribeInstancesHealthResult)
* [EnvironmentDescription](#EnvironmentDescription)
* [EnvironmentDescriptionsMessage](#EnvironmentDescriptionsMessage)
* [EnvironmentResourceDescriptionsMessage](#EnvironmentResourceDescriptionsMessage)
* [EventDescriptionsMessage](#EventDescriptionsMessage)
* [ListAvailableSolutionStacksResultMessage](#ListAvailableSolutionStacksResultMessage)
* [RetrieveEnvironmentInfoResultMessage](#RetrieveEnvironmentInfoResultMessage)


@docs ApplicationDescriptionMessage,ApplicationDescriptionsMessage,ApplicationResourceLifecycleDescriptionMessage,ApplicationVersionDescriptionMessage,ApplicationVersionDescriptionsMessage,ApplyEnvironmentManagedActionResult,CheckDNSAvailabilityResultMessage,ConfigurationOptionsDescription,ConfigurationSettingsDescription,ConfigurationSettingsDescriptions,ConfigurationSettingsValidationMessages,CreateStorageLocationResultMessage,DescribeEnvironmentHealthResult,DescribeEnvironmentManagedActionHistoryResult,DescribeEnvironmentManagedActionsResult,DescribeInstancesHealthResult,EnvironmentDescription,EnvironmentDescriptionsMessage,EnvironmentResourceDescriptionsMessage,EventDescriptionsMessage,ListAvailableSolutionStacksResultMessage,RetrieveEnvironmentInfoResultMessage

## Records

* [ApplicationDescription](#ApplicationDescription)
* [ApplicationMetrics](#ApplicationMetrics)
* [ApplicationResourceLifecycleConfig](#ApplicationResourceLifecycleConfig)
* [ApplicationVersionDescription](#ApplicationVersionDescription)
* [ApplicationVersionLifecycleConfig](#ApplicationVersionLifecycleConfig)
* [AutoScalingGroup](#AutoScalingGroup)
* [BuildConfiguration](#BuildConfiguration)
* [CPUUtilization](#CPUUtilization)
* [ConfigurationOptionDescription](#ConfigurationOptionDescription)
* [ConfigurationOptionSetting](#ConfigurationOptionSetting)
* [Deployment](#Deployment)
* [EnvironmentInfoDescription](#EnvironmentInfoDescription)
* [EnvironmentLink](#EnvironmentLink)
* [EnvironmentResourceDescription](#EnvironmentResourceDescription)
* [EnvironmentResourcesDescription](#EnvironmentResourcesDescription)
* [EnvironmentTier](#EnvironmentTier)
* [EventDescription](#EventDescription)
* [Instance](#Instance)
* [InstanceHealthSummary](#InstanceHealthSummary)
* [Latency](#Latency)
* [LaunchConfiguration](#LaunchConfiguration)
* [Listener](#Listener)
* [LoadBalancer](#LoadBalancer)
* [LoadBalancerDescription](#LoadBalancerDescription)
* [ManagedAction](#ManagedAction)
* [ManagedActionHistoryItem](#ManagedActionHistoryItem)
* [MaxAgeRule](#MaxAgeRule)
* [MaxCountRule](#MaxCountRule)
* [OptionRestrictionRegex](#OptionRestrictionRegex)
* [OptionSpecification](#OptionSpecification)
* [Queue](#Queue)
* [S3Location](#S3Location)
* [SingleInstanceHealth](#SingleInstanceHealth)
* [SolutionStackDescription](#SolutionStackDescription)
* [SourceBuildInformation](#SourceBuildInformation)
* [SourceConfiguration](#SourceConfiguration)
* [StatusCodes](#StatusCodes)
* [SystemStatus](#SystemStatus)
* [Tag](#Tag)
* [Trigger](#Trigger)
* [ValidationMessage](#ValidationMessage)


@docs ApplicationDescription,ApplicationMetrics,ApplicationResourceLifecycleConfig,ApplicationVersionDescription,ApplicationVersionLifecycleConfig,AutoScalingGroup,BuildConfiguration,CPUUtilization,ConfigurationOptionDescription,ConfigurationOptionSetting,Deployment,EnvironmentInfoDescription,EnvironmentLink,EnvironmentResourceDescription,EnvironmentResourcesDescription,EnvironmentTier,EventDescription,Instance,InstanceHealthSummary,Latency,LaunchConfiguration,Listener,LoadBalancer,LoadBalancerDescription,ManagedAction,ManagedActionHistoryItem,MaxAgeRule,MaxCountRule,OptionRestrictionRegex,OptionSpecification,Queue,S3Location,SingleInstanceHealth,SolutionStackDescription,SourceBuildInformation,SourceConfiguration,StatusCodes,SystemStatus,Tag,Trigger,ValidationMessage

## Unions

* [ActionHistoryStatus](#ActionHistoryStatus)
* [ActionStatus](#ActionStatus)
* [ActionType](#ActionType)
* [ApplicationVersionStatus](#ApplicationVersionStatus)
* [ComputeType](#ComputeType)
* [ConfigurationDeploymentStatus](#ConfigurationDeploymentStatus)
* [ConfigurationOptionValueType](#ConfigurationOptionValueType)
* [EnvironmentHealth](#EnvironmentHealth)
* [EnvironmentHealthAttribute](#EnvironmentHealthAttribute)
* [EnvironmentHealthStatus](#EnvironmentHealthStatus)
* [EnvironmentInfoType](#EnvironmentInfoType)
* [EnvironmentStatus](#EnvironmentStatus)
* [EventSeverity](#EventSeverity)
* [FailureType](#FailureType)
* [InstancesHealthAttribute](#InstancesHealthAttribute)
* [SourceRepository](#SourceRepository)
* [SourceType](#SourceType)
* [ValidationSeverity](#ValidationSeverity)


@docs ActionHistoryStatus,ActionStatus,ActionType,ApplicationVersionStatus,ComputeType,ConfigurationDeploymentStatus,ConfigurationOptionValueType,EnvironmentHealth,EnvironmentHealthAttribute,EnvironmentHealthStatus,EnvironmentInfoType,EnvironmentStatus,EventSeverity,FailureType,InstancesHealthAttribute,SourceRepository,SourceType,ValidationSeverity

## Exceptions

* [CodeBuildNotInServiceRegionException](#CodeBuildNotInServiceRegionException)
* [ElasticBeanstalkServiceException](#ElasticBeanstalkServiceException)
* [InsufficientPrivilegesException](#InsufficientPrivilegesException)
* [InvalidRequestException](#InvalidRequestException)
* [ManagedActionInvalidStateException](#ManagedActionInvalidStateException)
* [OperationInProgressException](#OperationInProgressException)
* [S3LocationNotInServiceRegionException](#S3LocationNotInServiceRegionException)
* [S3SubscriptionRequiredException](#S3SubscriptionRequiredException)
* [SourceBundleDeletionException](#SourceBundleDeletionException)
* [TooManyApplicationVersionsException](#TooManyApplicationVersionsException)
* [TooManyApplicationsException](#TooManyApplicationsException)
* [TooManyBucketsException](#TooManyBucketsException)
* [TooManyConfigurationTemplatesException](#TooManyConfigurationTemplatesException)
* [TooManyEnvironmentsException](#TooManyEnvironmentsException)


@docs CodeBuildNotInServiceRegionException,ElasticBeanstalkServiceException,InsufficientPrivilegesException,InvalidRequestException,ManagedActionInvalidStateException,OperationInProgressException,S3LocationNotInServiceRegionException,S3SubscriptionRequiredException,SourceBundleDeletionException,TooManyApplicationVersionsException,TooManyApplicationsException,TooManyBucketsException,TooManyConfigurationTemplatesException,TooManyEnvironmentsException

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
        "elasticbeanstalk"
        "2010-12-01"
        "undefined"
        "AWSELASTICBEANSTALK_20101201."
        "elasticbeanstalk.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Cancels in-progress environment configuration update or application version deployment.</p>

__Required Parameters__



-}
abortEnvironmentUpdate :
    (AbortEnvironmentUpdateOptions -> AbortEnvironmentUpdateOptions)
    -> AWS.Request ()
abortEnvironmentUpdate setOptions =
  let
    options = setOptions (AbortEnvironmentUpdateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "AbortEnvironmentUpdate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a abortEnvironmentUpdate request
-}
type alias AbortEnvironmentUpdateOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }



{-| <p>Applies a scheduled managed action immediately. A managed action can be applied only if its status is <code>Scheduled</code>. Get the status and action ID of a managed action with <a>DescribeEnvironmentManagedActions</a>.</p>

__Required Parameters__

* `actionId` __:__ `String`


-}
applyEnvironmentManagedAction :
    String
    -> (ApplyEnvironmentManagedActionOptions -> ApplyEnvironmentManagedActionOptions)
    -> AWS.Request ApplyEnvironmentManagedActionResult
applyEnvironmentManagedAction actionId setOptions =
  let
    options = setOptions (ApplyEnvironmentManagedActionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ApplyEnvironmentManagedAction"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applyEnvironmentManagedActionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a applyEnvironmentManagedAction request
-}
type alias ApplyEnvironmentManagedActionOptions =
    { environmentName : Maybe String
    , environmentId : Maybe String
    }



{-| <p>Checks if the specified CNAME is available.</p>

__Required Parameters__

* `cNAMEPrefix` __:__ `String`


-}
checkDNSAvailability :
    String
    -> AWS.Request CheckDNSAvailabilityResultMessage
checkDNSAvailability cNAMEPrefix =
    AWS.Http.unsignedRequest
        "CheckDNSAvailability"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        checkDNSAvailabilityResultMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Create or update a group of environments that each run a separate component of a single application. Takes a list of version labels that specify application source bundles for each of the environments to create or update. The name of each environment and other required information must be included in the source bundles in an environment manifest named <code>env.yaml</code>. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose Environments</a> for details.</p>

__Required Parameters__



-}
composeEnvironments :
    (ComposeEnvironmentsOptions -> ComposeEnvironmentsOptions)
    -> AWS.Request EnvironmentDescriptionsMessage
composeEnvironments setOptions =
  let
    options = setOptions (ComposeEnvironmentsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ComposeEnvironments"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        environmentDescriptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a composeEnvironments request
-}
type alias ComposeEnvironmentsOptions =
    { applicationName : Maybe String
    , groupName : Maybe String
    , versionLabels : Maybe (List String)
    }



{-| <p> Creates an application that has one configuration template named <code>default</code> and no application versions. </p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
createApplication :
    String
    -> (CreateApplicationOptions -> CreateApplicationOptions)
    -> AWS.Request ApplicationDescriptionMessage
createApplication applicationName setOptions =
  let
    options = setOptions (CreateApplicationOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applicationDescriptionMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a createApplication request
-}
type alias CreateApplicationOptions =
    { description : Maybe String
    , resourceLifecycleConfig : Maybe ApplicationResourceLifecycleConfig
    }



{-| <p>Creates an application version for the specified application. You can create an application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the output of an AWS CodeBuild build as follows:</p> <p>Specify a commit in an AWS CodeCommit repository with <code>SourceBuildInformation</code>.</p> <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and <code>BuildConfiguration</code>.</p> <p>Specify a source bundle in S3 with <code>SourceBundle</code> </p> <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the default sample application.</p> <note> <p>Once you create an application version with a specified Amazon S3 bucket and key location, you cannot change that Amazon S3 location. If you change the Amazon S3 location, you receive an exception when you attempt to launch an environment from the application version.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `versionLabel` __:__ `String`


-}
createApplicationVersion :
    String
    -> String
    -> (CreateApplicationVersionOptions -> CreateApplicationVersionOptions)
    -> AWS.Request ApplicationVersionDescriptionMessage
createApplicationVersion applicationName versionLabel setOptions =
  let
    options = setOptions (CreateApplicationVersionOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateApplicationVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applicationVersionDescriptionMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a createApplicationVersion request
-}
type alias CreateApplicationVersionOptions =
    { description : Maybe String
    , sourceBuildInformation : Maybe SourceBuildInformation
    , sourceBundle : Maybe S3Location
    , buildConfiguration : Maybe BuildConfiguration
    , autoCreateApplication : Maybe Bool
    , process : Maybe Bool
    }



{-| <p>Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings.</p> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> <li> <p> <a>DescribeConfigurationSettings</a> </p> </li> <li> <p> <a>ListAvailableSolutionStacks</a> </p> </li> </ul>

__Required Parameters__

* `applicationName` __:__ `String`
* `templateName` __:__ `String`


-}
createConfigurationTemplate :
    String
    -> String
    -> (CreateConfigurationTemplateOptions -> CreateConfigurationTemplateOptions)
    -> AWS.Request ConfigurationSettingsDescription
createConfigurationTemplate applicationName templateName setOptions =
  let
    options = setOptions (CreateConfigurationTemplateOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateConfigurationTemplate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        configurationSettingsDescriptionDecoder
        |> AWS.UnsignedRequest


{-| Options for a createConfigurationTemplate request
-}
type alias CreateConfigurationTemplateOptions =
    { solutionStackName : Maybe String
    , sourceConfiguration : Maybe SourceConfiguration
    , environmentId : Maybe String
    , description : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    }



{-| <p>Launches an environment for the specified application using the specified configuration.</p>

__Required Parameters__

* `applicationName` __:__ `String`


-}
createEnvironment :
    String
    -> (CreateEnvironmentOptions -> CreateEnvironmentOptions)
    -> AWS.Request EnvironmentDescription
createEnvironment applicationName setOptions =
  let
    options = setOptions (CreateEnvironmentOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateEnvironment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        environmentDescriptionDecoder
        |> AWS.UnsignedRequest


{-| Options for a createEnvironment request
-}
type alias CreateEnvironmentOptions =
    { environmentName : Maybe String
    , groupName : Maybe String
    , description : Maybe String
    , cNAMEPrefix : Maybe String
    , tier : Maybe EnvironmentTier
    , tags : Maybe (List Tag)
    , versionLabel : Maybe String
    , templateName : Maybe String
    , solutionStackName : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , optionsToRemove : Maybe (List OptionSpecification)
    }



{-| <p>Creates the Amazon S3 storage location for the account.</p> <p>This location is used to store user log files.</p>

__Required Parameters__



-}
createStorageLocation :
    AWS.Request CreateStorageLocationResultMessage
createStorageLocation =
    AWS.Http.unsignedRequest
        "CreateStorageLocation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createStorageLocationResultMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket.</p> <note> <p>You cannot delete an application that has a running environment.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`


-}
deleteApplication :
    String
    -> (DeleteApplicationOptions -> DeleteApplicationOptions)
    -> AWS.Request ()
deleteApplication applicationName setOptions =
  let
    options = setOptions (DeleteApplicationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteApplication request
-}
type alias DeleteApplicationOptions =
    { terminateEnvByForce : Maybe Bool
    }



{-| <p>Deletes the specified version from the specified application.</p> <note> <p>You cannot delete an application version that is associated with a running environment.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `versionLabel` __:__ `String`


-}
deleteApplicationVersion :
    String
    -> String
    -> (DeleteApplicationVersionOptions -> DeleteApplicationVersionOptions)
    -> AWS.Request ()
deleteApplicationVersion applicationName versionLabel setOptions =
  let
    options = setOptions (DeleteApplicationVersionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteApplicationVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a deleteApplicationVersion request
-}
type alias DeleteApplicationVersionOptions =
    { deleteSourceBundle : Maybe Bool
    }



{-| <p>Deletes the specified configuration template.</p> <note> <p>When you launch an environment using a configuration template, the environment gets a copy of the template. You can delete or modify the environment's copy of the template without affecting the running environment.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `templateName` __:__ `String`


-}
deleteConfigurationTemplate :
    String
    -> String
    -> AWS.Request ()
deleteConfigurationTemplate applicationName templateName =
    AWS.Http.unsignedRequest
        "DeleteConfigurationTemplate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the draft configuration associated with the running environment.</p> <p>Updating a running environment with any configuration changes creates a draft configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the deployment is in process or has failed. The draft configuration remains in existence until it is deleted with this action.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `environmentName` __:__ `String`


-}
deleteEnvironmentConfiguration :
    String
    -> String
    -> AWS.Request ()
deleteEnvironmentConfiguration applicationName environmentName =
    AWS.Http.unsignedRequest
        "DeleteEnvironmentConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Retrieve a list of application versions.</p>

__Required Parameters__



-}
describeApplicationVersions :
    (DescribeApplicationVersionsOptions -> DescribeApplicationVersionsOptions)
    -> AWS.Request ApplicationVersionDescriptionsMessage
describeApplicationVersions setOptions =
  let
    options = setOptions (DescribeApplicationVersionsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeApplicationVersions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applicationVersionDescriptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeApplicationVersions request
-}
type alias DescribeApplicationVersionsOptions =
    { applicationName : Maybe String
    , versionLabels : Maybe (List String)
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns the descriptions of existing applications.</p>

__Required Parameters__



-}
describeApplications :
    (DescribeApplicationsOptions -> DescribeApplicationsOptions)
    -> AWS.Request ApplicationDescriptionsMessage
describeApplications setOptions =
  let
    options = setOptions (DescribeApplicationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeApplications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applicationDescriptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeApplications request
-}
type alias DescribeApplicationsOptions =
    { applicationNames : Maybe (List String)
    }



{-| <p>Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed.</p>

__Required Parameters__



-}
describeConfigurationOptions :
    (DescribeConfigurationOptionsOptions -> DescribeConfigurationOptionsOptions)
    -> AWS.Request ConfigurationOptionsDescription
describeConfigurationOptions setOptions =
  let
    options = setOptions (DescribeConfigurationOptionsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConfigurationOptions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        configurationOptionsDescriptionDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConfigurationOptions request
-}
type alias DescribeConfigurationOptionsOptions =
    { applicationName : Maybe String
    , templateName : Maybe String
    , environmentName : Maybe String
    , solutionStackName : Maybe String
    , options : Maybe (List OptionSpecification)
    }



{-| <p>Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment.</p> <p>When describing the settings for the configuration set associated with a running environment, it is possible to receive two sets of setting descriptions. One is the deployed configuration set, and the other is a draft configuration of an environment that is either in the process of deployment or that failed to deploy.</p> <p>Related Topics</p> <ul> <li> <p> <a>DeleteEnvironmentConfiguration</a> </p> </li> </ul>

__Required Parameters__

* `applicationName` __:__ `String`


-}
describeConfigurationSettings :
    String
    -> (DescribeConfigurationSettingsOptions -> DescribeConfigurationSettingsOptions)
    -> AWS.Request ConfigurationSettingsDescriptions
describeConfigurationSettings applicationName setOptions =
  let
    options = setOptions (DescribeConfigurationSettingsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConfigurationSettings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        configurationSettingsDescriptionsDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConfigurationSettings request
-}
type alias DescribeConfigurationSettingsOptions =
    { templateName : Maybe String
    , environmentName : Maybe String
    }



{-| <p>Returns information about the overall health of the specified environment. The <b>DescribeEnvironmentHealth</b> operation is only available with AWS Elastic Beanstalk Enhanced Health.</p>

__Required Parameters__



-}
describeEnvironmentHealth :
    (DescribeEnvironmentHealthOptions -> DescribeEnvironmentHealthOptions)
    -> AWS.Request DescribeEnvironmentHealthResult
describeEnvironmentHealth setOptions =
  let
    options = setOptions (DescribeEnvironmentHealthOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEnvironmentHealth"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEnvironmentHealthResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEnvironmentHealth request
-}
type alias DescribeEnvironmentHealthOptions =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , attributeNames : Maybe (List EnvironmentHealthAttribute)
    }



{-| <p>Lists an environment's completed and failed managed actions.</p>

__Required Parameters__



-}
describeEnvironmentManagedActionHistory :
    (DescribeEnvironmentManagedActionHistoryOptions -> DescribeEnvironmentManagedActionHistoryOptions)
    -> AWS.Request DescribeEnvironmentManagedActionHistoryResult
describeEnvironmentManagedActionHistory setOptions =
  let
    options = setOptions (DescribeEnvironmentManagedActionHistoryOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEnvironmentManagedActionHistory"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEnvironmentManagedActionHistoryResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEnvironmentManagedActionHistory request
-}
type alias DescribeEnvironmentManagedActionHistoryOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    , nextToken : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists an environment's upcoming and in-progress managed actions.</p>

__Required Parameters__



-}
describeEnvironmentManagedActions :
    (DescribeEnvironmentManagedActionsOptions -> DescribeEnvironmentManagedActionsOptions)
    -> AWS.Request DescribeEnvironmentManagedActionsResult
describeEnvironmentManagedActions setOptions =
  let
    options = setOptions (DescribeEnvironmentManagedActionsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEnvironmentManagedActions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEnvironmentManagedActionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEnvironmentManagedActions request
-}
type alias DescribeEnvironmentManagedActionsOptions =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , status : Maybe ActionStatus
    }



{-| <p>Returns AWS resources for this environment.</p>

__Required Parameters__



-}
describeEnvironmentResources :
    (DescribeEnvironmentResourcesOptions -> DescribeEnvironmentResourcesOptions)
    -> AWS.Request EnvironmentResourceDescriptionsMessage
describeEnvironmentResources setOptions =
  let
    options = setOptions (DescribeEnvironmentResourcesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEnvironmentResources"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        environmentResourceDescriptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEnvironmentResources request
-}
type alias DescribeEnvironmentResourcesOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }



{-| <p>Returns descriptions for existing environments.</p>

__Required Parameters__



-}
describeEnvironments :
    (DescribeEnvironmentsOptions -> DescribeEnvironmentsOptions)
    -> AWS.Request EnvironmentDescriptionsMessage
describeEnvironments setOptions =
  let
    options = setOptions (DescribeEnvironmentsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEnvironments"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        environmentDescriptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEnvironments request
-}
type alias DescribeEnvironmentsOptions =
    { applicationName : Maybe String
    , versionLabel : Maybe String
    , environmentIds : Maybe (List String)
    , environmentNames : Maybe (List String)
    , includeDeleted : Maybe Bool
    , includedDeletedBackTo : Maybe Date
    }



{-| <p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p> <note> <p>This action returns the most recent 1,000 events from the specified <code>NextToken</code>.</p> </note>

__Required Parameters__



-}
describeEvents :
    (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Request EventDescriptionsMessage
describeEvents setOptions =
  let
    options = setOptions (DescribeEventsOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        eventDescriptionsMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    { applicationName : Maybe String
    , versionLabel : Maybe String
    , templateName : Maybe String
    , environmentId : Maybe String
    , environmentName : Maybe String
    , requestId : Maybe String
    , severity : Maybe EventSeverity
    , startTime : Maybe Date
    , endTime : Maybe Date
    , maxRecords : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrives detailed information about the health of instances in your AWS Elastic Beanstalk. This operation requires <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced health reporting</a>.</p>

__Required Parameters__



-}
describeInstancesHealth :
    (DescribeInstancesHealthOptions -> DescribeInstancesHealthOptions)
    -> AWS.Request DescribeInstancesHealthResult
describeInstancesHealth setOptions =
  let
    options = setOptions (DescribeInstancesHealthOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstancesHealth"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstancesHealthResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInstancesHealth request
-}
type alias DescribeInstancesHealthOptions =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , attributeNames : Maybe (List InstancesHealthAttribute)
    , nextToken : Maybe String
    }



{-| <p>Returns a list of the available solution stack names.</p>

__Required Parameters__



-}
listAvailableSolutionStacks :
    AWS.Request ListAvailableSolutionStacksResultMessage
listAvailableSolutionStacks =
    AWS.Http.unsignedRequest
        "ListAvailableSolutionStacks"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAvailableSolutionStacksResultMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc.) for a specified environment and forces a restart.</p>

__Required Parameters__



-}
rebuildEnvironment :
    (RebuildEnvironmentOptions -> RebuildEnvironmentOptions)
    -> AWS.Request ()
rebuildEnvironment setOptions =
  let
    options = setOptions (RebuildEnvironmentOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RebuildEnvironment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a rebuildEnvironment request
-}
type alias RebuildEnvironmentOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }



{-| <p>Initiates a request to compile the specified type of information of the deployed environment.</p> <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from the application server log files of every Amazon EC2 instance in your environment. </p> <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET containers do not support bundle logs. </p> <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p> <p>Related Topics</p> <ul> <li> <p> <a>RetrieveEnvironmentInfo</a> </p> </li> </ul>

__Required Parameters__

* `infoType` __:__ `EnvironmentInfoType`


-}
requestEnvironmentInfo :
    EnvironmentInfoType
    -> (RequestEnvironmentInfoOptions -> RequestEnvironmentInfoOptions)
    -> AWS.Request ()
requestEnvironmentInfo infoType setOptions =
  let
    options = setOptions (RequestEnvironmentInfoOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RequestEnvironmentInfo"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a requestEnvironmentInfo request
-}
type alias RequestEnvironmentInfoOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }



{-| <p>Causes the environment to restart the application container server running on each Amazon EC2 instance.</p>

__Required Parameters__



-}
restartAppServer :
    (RestartAppServerOptions -> RestartAppServerOptions)
    -> AWS.Request ()
restartAppServer setOptions =
  let
    options = setOptions (RestartAppServerOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestartAppServer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a restartAppServer request
-}
type alias RestartAppServerOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }



{-| <p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a> request.</p> <p>Related Topics</p> <ul> <li> <p> <a>RequestEnvironmentInfo</a> </p> </li> </ul>

__Required Parameters__

* `infoType` __:__ `EnvironmentInfoType`


-}
retrieveEnvironmentInfo :
    EnvironmentInfoType
    -> (RetrieveEnvironmentInfoOptions -> RetrieveEnvironmentInfoOptions)
    -> AWS.Request RetrieveEnvironmentInfoResultMessage
retrieveEnvironmentInfo infoType setOptions =
  let
    options = setOptions (RetrieveEnvironmentInfoOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RetrieveEnvironmentInfo"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        retrieveEnvironmentInfoResultMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a retrieveEnvironmentInfo request
-}
type alias RetrieveEnvironmentInfoOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    }



{-| <p>Swaps the CNAMEs of two environments.</p>

__Required Parameters__



-}
swapEnvironmentCNAMEs :
    (SwapEnvironmentCNAMEsOptions -> SwapEnvironmentCNAMEsOptions)
    -> AWS.Request ()
swapEnvironmentCNAMEs setOptions =
  let
    options = setOptions (SwapEnvironmentCNAMEsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SwapEnvironmentCNAMEs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a swapEnvironmentCNAMEs request
-}
type alias SwapEnvironmentCNAMEsOptions =
    { sourceEnvironmentId : Maybe String
    , sourceEnvironmentName : Maybe String
    , destinationEnvironmentId : Maybe String
    , destinationEnvironmentName : Maybe String
    }



{-| <p>Terminates the specified environment.</p>

__Required Parameters__



-}
terminateEnvironment :
    (TerminateEnvironmentOptions -> TerminateEnvironmentOptions)
    -> AWS.Request EnvironmentDescription
terminateEnvironment setOptions =
  let
    options = setOptions (TerminateEnvironmentOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "TerminateEnvironment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        environmentDescriptionDecoder
        |> AWS.UnsignedRequest


{-| Options for a terminateEnvironment request
-}
type alias TerminateEnvironmentOptions =
    { environmentId : Maybe String
    , environmentName : Maybe String
    , terminateResources : Maybe Bool
    , forceTerminate : Maybe Bool
    }



{-| <p>Updates the specified application to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear these properties, specify an empty string.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`


-}
updateApplication :
    String
    -> (UpdateApplicationOptions -> UpdateApplicationOptions)
    -> AWS.Request ApplicationDescriptionMessage
updateApplication applicationName setOptions =
  let
    options = setOptions (UpdateApplicationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applicationDescriptionMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateApplication request
-}
type alias UpdateApplicationOptions =
    { description : Maybe String
    }



{-| <p>Modifies lifecycle settings for an application.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `resourceLifecycleConfig` __:__ `ApplicationResourceLifecycleConfig`


-}
updateApplicationResourceLifecycle :
    String
    -> ApplicationResourceLifecycleConfig
    -> AWS.Request ApplicationResourceLifecycleDescriptionMessage
updateApplicationResourceLifecycle applicationName resourceLifecycleConfig =
    AWS.Http.unsignedRequest
        "UpdateApplicationResourceLifecycle"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applicationResourceLifecycleDescriptionMessageDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates the specified application version to have the specified properties.</p> <note> <p>If a property (for example, <code>description</code>) is not provided, the value remains unchanged. To clear properties, specify an empty string.</p> </note>

__Required Parameters__

* `applicationName` __:__ `String`
* `versionLabel` __:__ `String`


-}
updateApplicationVersion :
    String
    -> String
    -> (UpdateApplicationVersionOptions -> UpdateApplicationVersionOptions)
    -> AWS.Request ApplicationVersionDescriptionMessage
updateApplicationVersion applicationName versionLabel setOptions =
  let
    options = setOptions (UpdateApplicationVersionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateApplicationVersion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        applicationVersionDescriptionMessageDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateApplicationVersion request
-}
type alias UpdateApplicationVersionOptions =
    { description : Maybe String
    }



{-| <p>Updates the specified configuration template to have the specified properties or configuration option values.</p> <note> <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value remains unchanged. To clear such properties, specify an empty string.</p> </note> <p>Related Topics</p> <ul> <li> <p> <a>DescribeConfigurationOptions</a> </p> </li> </ul>

__Required Parameters__

* `applicationName` __:__ `String`
* `templateName` __:__ `String`


-}
updateConfigurationTemplate :
    String
    -> String
    -> (UpdateConfigurationTemplateOptions -> UpdateConfigurationTemplateOptions)
    -> AWS.Request ConfigurationSettingsDescription
updateConfigurationTemplate applicationName templateName setOptions =
  let
    options = setOptions (UpdateConfigurationTemplateOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateConfigurationTemplate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        configurationSettingsDescriptionDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateConfigurationTemplate request
-}
type alias UpdateConfigurationTemplateOptions =
    { description : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , optionsToRemove : Maybe (List OptionSpecification)
    }



{-| <p>Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment.</p> <p> Attempting to update both the release and configuration is not allowed and AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error. </p> <p> When updating the configuration settings to a new template or individual settings, a draft configuration is created and <a>DescribeConfigurationSettings</a> for this environment returns two setting descriptions with different <code>DeploymentStatus</code> values. </p>

__Required Parameters__



-}
updateEnvironment :
    (UpdateEnvironmentOptions -> UpdateEnvironmentOptions)
    -> AWS.Request EnvironmentDescription
updateEnvironment setOptions =
  let
    options = setOptions (UpdateEnvironmentOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateEnvironment"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        environmentDescriptionDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateEnvironment request
-}
type alias UpdateEnvironmentOptions =
    { applicationName : Maybe String
    , environmentId : Maybe String
    , environmentName : Maybe String
    , groupName : Maybe String
    , description : Maybe String
    , tier : Maybe EnvironmentTier
    , versionLabel : Maybe String
    , templateName : Maybe String
    , solutionStackName : Maybe String
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    , optionsToRemove : Maybe (List OptionSpecification)
    }



{-| <p>Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid.</p> <p>This action returns a list of messages indicating any errors or warnings associated with the selection of option values.</p>

__Required Parameters__

* `applicationName` __:__ `String`
* `optionSettings` __:__ `(List ConfigurationOptionSetting)`


-}
validateConfigurationSettings :
    String
    -> (List ConfigurationOptionSetting)
    -> (ValidateConfigurationSettingsOptions -> ValidateConfigurationSettingsOptions)
    -> AWS.Request ConfigurationSettingsValidationMessages
validateConfigurationSettings applicationName optionSettings setOptions =
  let
    options = setOptions (ValidateConfigurationSettingsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ValidateConfigurationSettings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        configurationSettingsValidationMessagesDecoder
        |> AWS.UnsignedRequest


{-| Options for a validateConfigurationSettings request
-}
type alias ValidateConfigurationSettingsOptions =
    { templateName : Maybe String
    , environmentName : Maybe String
    }




{-| One of

* `ActionHistoryStatus_Completed`
* `ActionHistoryStatus_Failed`
* `ActionHistoryStatus_Unknown`

-}
type ActionHistoryStatus
    = ActionHistoryStatus_Completed
    | ActionHistoryStatus_Failed
    | ActionHistoryStatus_Unknown



actionHistoryStatusDecoder : JD.Decoder ActionHistoryStatus
actionHistoryStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Completed" ->
                        JD.succeed ActionHistoryStatus_Completed

                    "Failed" ->
                        JD.succeed ActionHistoryStatus_Failed

                    "Unknown" ->
                        JD.succeed ActionHistoryStatus_Unknown


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ActionStatus_Scheduled`
* `ActionStatus_Pending`
* `ActionStatus_Running`
* `ActionStatus_Unknown`

-}
type ActionStatus
    = ActionStatus_Scheduled
    | ActionStatus_Pending
    | ActionStatus_Running
    | ActionStatus_Unknown



actionStatusDecoder : JD.Decoder ActionStatus
actionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Scheduled" ->
                        JD.succeed ActionStatus_Scheduled

                    "Pending" ->
                        JD.succeed ActionStatus_Pending

                    "Running" ->
                        JD.succeed ActionStatus_Running

                    "Unknown" ->
                        JD.succeed ActionStatus_Unknown


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ActionType_InstanceRefresh`
* `ActionType_PlatformUpdate`
* `ActionType_Unknown`

-}
type ActionType
    = ActionType_InstanceRefresh
    | ActionType_PlatformUpdate
    | ActionType_Unknown



actionTypeDecoder : JD.Decoder ActionType
actionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InstanceRefresh" ->
                        JD.succeed ActionType_InstanceRefresh

                    "PlatformUpdate" ->
                        JD.succeed ActionType_PlatformUpdate

                    "Unknown" ->
                        JD.succeed ActionType_Unknown


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the properties of an application.</p>
-}
type alias ApplicationDescription =
    { applicationName : Maybe String
    , description : Maybe String
    , dateCreated : Maybe Date
    , dateUpdated : Maybe Date
    , versions : Maybe (List String)
    , configurationTemplates : Maybe (List String)
    , resourceLifecycleConfig : Maybe ApplicationResourceLifecycleConfig
    }



applicationDescriptionDecoder : JD.Decoder ApplicationDescription
applicationDescriptionDecoder =
    JDP.decode ApplicationDescription
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "dateCreated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "dateUpdated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "versions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "configurationTemplates" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "resourceLifecycleConfig" (JD.nullable applicationResourceLifecycleConfigDecoder) Nothing




{-| Type of HTTP response from applicationDescriptio
-}
type alias ApplicationDescriptionMessage =
    { application : Maybe ApplicationDescription
    }



applicationDescriptionMessageDecoder : JD.Decoder ApplicationDescriptionMessage
applicationDescriptionMessageDecoder =
    JDP.decode ApplicationDescriptionMessage
        |> JDP.optional "application" (JD.nullable applicationDescriptionDecoder) Nothing




{-| Type of HTTP response from applicationDescription
-}
type alias ApplicationDescriptionsMessage =
    { applications : Maybe (List ApplicationDescription)
    }



applicationDescriptionsMessageDecoder : JD.Decoder ApplicationDescriptionsMessage
applicationDescriptionsMessageDecoder =
    JDP.decode ApplicationDescriptionsMessage
        |> JDP.optional "applications" (JD.nullable (JD.list applicationDescriptionDecoder)) Nothing




{-| <p>Application request metrics for an AWS Elastic Beanstalk environment.</p>
-}
type alias ApplicationMetrics =
    { duration : Maybe Int
    , requestCount : Maybe Int
    , statusCodes : Maybe StatusCodes
    , latency : Maybe Latency
    }



applicationMetricsDecoder : JD.Decoder ApplicationMetrics
applicationMetricsDecoder =
    JDP.decode ApplicationMetrics
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "requestCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "statusCodes" (JD.nullable statusCodesDecoder) Nothing
        |> JDP.optional "latency" (JD.nullable latencyDecoder) Nothing




{-| <p>The resource lifecycle configuration for an application. Defines lifecycle settings for resources that belong to the application, and the service role that Elastic Beanstalk assumes in order to apply lifecycle settings. The version lifecycle configuration defines lifecycle settings for application versions.</p>
-}
type alias ApplicationResourceLifecycleConfig =
    { serviceRole : Maybe String
    , versionLifecycleConfig : Maybe ApplicationVersionLifecycleConfig
    }



applicationResourceLifecycleConfigDecoder : JD.Decoder ApplicationResourceLifecycleConfig
applicationResourceLifecycleConfigDecoder =
    JDP.decode ApplicationResourceLifecycleConfig
        |> JDP.optional "serviceRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionLifecycleConfig" (JD.nullable applicationVersionLifecycleConfigDecoder) Nothing




{-| Type of HTTP response from applicationResourceLifecycleDescriptio
-}
type alias ApplicationResourceLifecycleDescriptionMessage =
    { applicationName : Maybe String
    , resourceLifecycleConfig : Maybe ApplicationResourceLifecycleConfig
    }



applicationResourceLifecycleDescriptionMessageDecoder : JD.Decoder ApplicationResourceLifecycleDescriptionMessage
applicationResourceLifecycleDescriptionMessageDecoder =
    JDP.decode ApplicationResourceLifecycleDescriptionMessage
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceLifecycleConfig" (JD.nullable applicationResourceLifecycleConfigDecoder) Nothing




{-| <p>Describes the properties of an application version.</p>
-}
type alias ApplicationVersionDescription =
    { applicationName : Maybe String
    , description : Maybe String
    , versionLabel : Maybe String
    , sourceBuildInformation : Maybe SourceBuildInformation
    , buildArn : Maybe String
    , sourceBundle : Maybe S3Location
    , dateCreated : Maybe Date
    , dateUpdated : Maybe Date
    , status : Maybe ApplicationVersionStatus
    }



applicationVersionDescriptionDecoder : JD.Decoder ApplicationVersionDescription
applicationVersionDescriptionDecoder =
    JDP.decode ApplicationVersionDescription
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionLabel" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceBuildInformation" (JD.nullable sourceBuildInformationDecoder) Nothing
        |> JDP.optional "buildArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceBundle" (JD.nullable s3LocationDecoder) Nothing
        |> JDP.optional "dateCreated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "dateUpdated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable applicationVersionStatusDecoder) Nothing




{-| Type of HTTP response from applicationVersionDescriptio
-}
type alias ApplicationVersionDescriptionMessage =
    { applicationVersion : Maybe ApplicationVersionDescription
    }



applicationVersionDescriptionMessageDecoder : JD.Decoder ApplicationVersionDescriptionMessage
applicationVersionDescriptionMessageDecoder =
    JDP.decode ApplicationVersionDescriptionMessage
        |> JDP.optional "applicationVersion" (JD.nullable applicationVersionDescriptionDecoder) Nothing




{-| Type of HTTP response from applicationVersionDescription
-}
type alias ApplicationVersionDescriptionsMessage =
    { applicationVersions : Maybe (List ApplicationVersionDescription)
    , nextToken : Maybe String
    }



applicationVersionDescriptionsMessageDecoder : JD.Decoder ApplicationVersionDescriptionsMessage
applicationVersionDescriptionsMessageDecoder =
    JDP.decode ApplicationVersionDescriptionsMessage
        |> JDP.optional "applicationVersions" (JD.nullable (JD.list applicationVersionDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The application version lifecycle settings for an application. Defines the rules that Elastic Beanstalk applies to an application's versions in order to avoid hitting the per-region limit for application versions.</p> <p>When Elastic Beanstalk deletes an application version from its database, you can no longer deploy that version to an environment. The source bundle remains in S3 unless you configure the rule to delete it.</p>
-}
type alias ApplicationVersionLifecycleConfig =
    { maxCountRule : Maybe MaxCountRule
    , maxAgeRule : Maybe MaxAgeRule
    }



applicationVersionLifecycleConfigDecoder : JD.Decoder ApplicationVersionLifecycleConfig
applicationVersionLifecycleConfigDecoder =
    JDP.decode ApplicationVersionLifecycleConfig
        |> JDP.optional "maxCountRule" (JD.nullable maxCountRuleDecoder) Nothing
        |> JDP.optional "maxAgeRule" (JD.nullable maxAgeRuleDecoder) Nothing




{-| One of

* `ApplicationVersionStatus_Processed`
* `ApplicationVersionStatus_Unprocessed`
* `ApplicationVersionStatus_Failed`
* `ApplicationVersionStatus_Processing`
* `ApplicationVersionStatus_Building`

-}
type ApplicationVersionStatus
    = ApplicationVersionStatus_Processed
    | ApplicationVersionStatus_Unprocessed
    | ApplicationVersionStatus_Failed
    | ApplicationVersionStatus_Processing
    | ApplicationVersionStatus_Building



applicationVersionStatusDecoder : JD.Decoder ApplicationVersionStatus
applicationVersionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Processed" ->
                        JD.succeed ApplicationVersionStatus_Processed

                    "Unprocessed" ->
                        JD.succeed ApplicationVersionStatus_Unprocessed

                    "Failed" ->
                        JD.succeed ApplicationVersionStatus_Failed

                    "Processing" ->
                        JD.succeed ApplicationVersionStatus_Processing

                    "Building" ->
                        JD.succeed ApplicationVersionStatus_Building


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from applyEnvironmentManagedActi
-}
type alias ApplyEnvironmentManagedActionResult =
    { actionId : Maybe String
    , actionDescription : Maybe String
    , actionType : Maybe ActionType
    , status : Maybe String
    }



applyEnvironmentManagedActionResultDecoder : JD.Decoder ApplyEnvironmentManagedActionResult
applyEnvironmentManagedActionResultDecoder =
    JDP.decode ApplyEnvironmentManagedActionResult
        |> JDP.optional "actionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "actionDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "actionType" (JD.nullable actionTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing




{-| <p>Describes an Auto Scaling launch configuration.</p>
-}
type alias AutoScalingGroup =
    { name : Maybe String
    }



autoScalingGroupDecoder : JD.Decoder AutoScalingGroup
autoScalingGroupDecoder =
    JDP.decode AutoScalingGroup
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Settings for an AWS CodeBuild build.</p>
-}
type alias BuildConfiguration =
    { artifactName : Maybe String
    , codeBuildServiceRole : String
    , computeType : Maybe ComputeType
    , image : String
    , timeoutInMinutes : Maybe Int
    }



buildConfigurationDecoder : JD.Decoder BuildConfiguration
buildConfigurationDecoder =
    JDP.decode BuildConfiguration
        |> JDP.optional "artifactName" (JD.nullable JD.string) Nothing
        |> JDP.required "codeBuildServiceRole" JD.string
        |> JDP.optional "computeType" (JD.nullable computeTypeDecoder) Nothing
        |> JDP.required "image" JD.string
        |> JDP.optional "timeoutInMinutes" (JD.nullable JD.int) Nothing




{-| <p>CPU utilization metrics for an instance.</p>
-}
type alias CPUUtilization =
    { user : Maybe Float
    , nice : Maybe Float
    , system : Maybe Float
    , idle : Maybe Float
    , iOWait : Maybe Float
    , iRQ : Maybe Float
    , softIRQ : Maybe Float
    }



cPUUtilizationDecoder : JD.Decoder CPUUtilization
cPUUtilizationDecoder =
    JDP.decode CPUUtilization
        |> JDP.optional "user" (JD.nullable JD.float) Nothing
        |> JDP.optional "nice" (JD.nullable JD.float) Nothing
        |> JDP.optional "system" (JD.nullable JD.float) Nothing
        |> JDP.optional "idle" (JD.nullable JD.float) Nothing
        |> JDP.optional "iOWait" (JD.nullable JD.float) Nothing
        |> JDP.optional "iRQ" (JD.nullable JD.float) Nothing
        |> JDP.optional "softIRQ" (JD.nullable JD.float) Nothing




{-| Type of HTTP response from checkDNSAvailabilityResul
-}
type alias CheckDNSAvailabilityResultMessage =
    { available : Maybe Bool
    , fullyQualifiedCNAME : Maybe String
    }



checkDNSAvailabilityResultMessageDecoder : JD.Decoder CheckDNSAvailabilityResultMessage
checkDNSAvailabilityResultMessageDecoder =
    JDP.decode CheckDNSAvailabilityResultMessage
        |> JDP.optional "available" (JD.nullable JD.bool) Nothing
        |> JDP.optional "fullyQualifiedCNAME" (JD.nullable JD.string) Nothing




{-| <p>AWS CodeBuild is not available in the specified region.</p>
-}
type alias CodeBuildNotInServiceRegionException =
    { 
    }



codeBuildNotInServiceRegionExceptionDecoder : JD.Decoder CodeBuildNotInServiceRegionException
codeBuildNotInServiceRegionExceptionDecoder =
    JDP.decode CodeBuildNotInServiceRegionException



{-| One of

* `ComputeType_BUILD_GENERAL1_SMALL`
* `ComputeType_BUILD_GENERAL1_MEDIUM`
* `ComputeType_BUILD_GENERAL1_LARGE`

-}
type ComputeType
    = ComputeType_BUILD_GENERAL1_SMALL
    | ComputeType_BUILD_GENERAL1_MEDIUM
    | ComputeType_BUILD_GENERAL1_LARGE



computeTypeDecoder : JD.Decoder ComputeType
computeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BUILD_GENERAL1_SMALL" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_SMALL

                    "BUILD_GENERAL1_MEDIUM" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_MEDIUM

                    "BUILD_GENERAL1_LARGE" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_LARGE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ConfigurationDeploymentStatus_deployed`
* `ConfigurationDeploymentStatus_pending`
* `ConfigurationDeploymentStatus_failed`

-}
type ConfigurationDeploymentStatus
    = ConfigurationDeploymentStatus_deployed
    | ConfigurationDeploymentStatus_pending
    | ConfigurationDeploymentStatus_failed



configurationDeploymentStatusDecoder : JD.Decoder ConfigurationDeploymentStatus
configurationDeploymentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "deployed" ->
                        JD.succeed ConfigurationDeploymentStatus_deployed

                    "pending" ->
                        JD.succeed ConfigurationDeploymentStatus_pending

                    "failed" ->
                        JD.succeed ConfigurationDeploymentStatus_failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the possible values for a configuration option.</p>
-}
type alias ConfigurationOptionDescription =
    { namespace : Maybe String
    , name : Maybe String
    , defaultValue : Maybe String
    , changeSeverity : Maybe String
    , userDefined : Maybe Bool
    , valueType : Maybe ConfigurationOptionValueType
    , valueOptions : Maybe (List String)
    , minValue : Maybe Int
    , maxValue : Maybe Int
    , maxLength : Maybe Int
    , regex : Maybe OptionRestrictionRegex
    }



configurationOptionDescriptionDecoder : JD.Decoder ConfigurationOptionDescription
configurationOptionDescriptionDecoder =
    JDP.decode ConfigurationOptionDescription
        |> JDP.optional "namespace" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "changeSeverity" (JD.nullable JD.string) Nothing
        |> JDP.optional "userDefined" (JD.nullable JD.bool) Nothing
        |> JDP.optional "valueType" (JD.nullable configurationOptionValueTypeDecoder) Nothing
        |> JDP.optional "valueOptions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "minValue" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxValue" (JD.nullable JD.int) Nothing
        |> JDP.optional "maxLength" (JD.nullable JD.int) Nothing
        |> JDP.optional "regex" (JD.nullable optionRestrictionRegexDecoder) Nothing




{-| <p> A specification identifying an individual configuration option along with its current value. For a list of possible option values, go to <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>. </p>
-}
type alias ConfigurationOptionSetting =
    { resourceName : Maybe String
    , namespace : Maybe String
    , optionName : Maybe String
    , value : Maybe String
    }



configurationOptionSettingDecoder : JD.Decoder ConfigurationOptionSetting
configurationOptionSettingDecoder =
    JDP.decode ConfigurationOptionSetting
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "namespace" (JD.nullable JD.string) Nothing
        |> JDP.optional "optionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| One of

* `ConfigurationOptionValueType_Scalar`
* `ConfigurationOptionValueType_List`

-}
type ConfigurationOptionValueType
    = ConfigurationOptionValueType_Scalar
    | ConfigurationOptionValueType_List



configurationOptionValueTypeDecoder : JD.Decoder ConfigurationOptionValueType
configurationOptionValueTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Scalar" ->
                        JD.succeed ConfigurationOptionValueType_Scalar

                    "List" ->
                        JD.succeed ConfigurationOptionValueType_List


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from configurationOptionsDes
-}
type alias ConfigurationOptionsDescription =
    { solutionStackName : Maybe String
    , options : Maybe (List ConfigurationOptionDescription)
    }



configurationOptionsDescriptionDecoder : JD.Decoder ConfigurationOptionsDescription
configurationOptionsDescriptionDecoder =
    JDP.decode ConfigurationOptionsDescription
        |> JDP.optional "solutionStackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "options" (JD.nullable (JD.list configurationOptionDescriptionDecoder)) Nothing




{-| Type of HTTP response from configurationSettingsDes
-}
type alias ConfigurationSettingsDescription =
    { solutionStackName : Maybe String
    , applicationName : Maybe String
    , templateName : Maybe String
    , description : Maybe String
    , environmentName : Maybe String
    , deploymentStatus : Maybe ConfigurationDeploymentStatus
    , dateCreated : Maybe Date
    , dateUpdated : Maybe Date
    , optionSettings : Maybe (List ConfigurationOptionSetting)
    }



configurationSettingsDescriptionDecoder : JD.Decoder ConfigurationSettingsDescription
configurationSettingsDescriptionDecoder =
    JDP.decode ConfigurationSettingsDescription
        |> JDP.optional "solutionStackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "templateName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "environmentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentStatus" (JD.nullable configurationDeploymentStatusDecoder) Nothing
        |> JDP.optional "dateCreated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "dateUpdated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "optionSettings" (JD.nullable (JD.list configurationOptionSettingDecoder)) Nothing




{-| Type of HTTP response from configurationSettingsDesc
-}
type alias ConfigurationSettingsDescriptions =
    { configurationSettings : Maybe (List ConfigurationSettingsDescription)
    }



configurationSettingsDescriptionsDecoder : JD.Decoder ConfigurationSettingsDescriptions
configurationSettingsDescriptionsDecoder =
    JDP.decode ConfigurationSettingsDescriptions
        |> JDP.optional "configurationSettings" (JD.nullable (JD.list configurationSettingsDescriptionDecoder)) Nothing




{-| Type of HTTP response from configurationSettingsValidation
-}
type alias ConfigurationSettingsValidationMessages =
    { messages : Maybe (List ValidationMessage)
    }



configurationSettingsValidationMessagesDecoder : JD.Decoder ConfigurationSettingsValidationMessages
configurationSettingsValidationMessagesDecoder =
    JDP.decode ConfigurationSettingsValidationMessages
        |> JDP.optional "messages" (JD.nullable (JD.list validationMessageDecoder)) Nothing




{-| Type of HTTP response from createStorageLocationResul
-}
type alias CreateStorageLocationResultMessage =
    { s3Bucket : Maybe String
    }



createStorageLocationResultMessageDecoder : JD.Decoder CreateStorageLocationResultMessage
createStorageLocationResultMessageDecoder =
    JDP.decode CreateStorageLocationResultMessage
        |> JDP.optional "s3Bucket" (JD.nullable JD.string) Nothing




{-| <p>Information about an application version deployment.</p>
-}
type alias Deployment =
    { versionLabel : Maybe String
    , deploymentId : Maybe Int
    , status : Maybe String
    , deploymentTime : Maybe Date
    }



deploymentDecoder : JD.Decoder Deployment
deploymentDecoder =
    JDP.decode Deployment
        |> JDP.optional "versionLabel" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentId" (JD.nullable JD.int) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "deploymentTime" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from describeEnvironmentHeal
-}
type alias DescribeEnvironmentHealthResult =
    { environmentName : Maybe String
    , healthStatus : Maybe String
    , status : Maybe EnvironmentHealth
    , color : Maybe String
    , causes : Maybe (List String)
    , applicationMetrics : Maybe ApplicationMetrics
    , instancesHealth : Maybe InstanceHealthSummary
    , refreshedAt : Maybe Date
    }



describeEnvironmentHealthResultDecoder : JD.Decoder DescribeEnvironmentHealthResult
describeEnvironmentHealthResultDecoder =
    JDP.decode DescribeEnvironmentHealthResult
        |> JDP.optional "environmentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "healthStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable environmentHealthDecoder) Nothing
        |> JDP.optional "color" (JD.nullable JD.string) Nothing
        |> JDP.optional "causes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "applicationMetrics" (JD.nullable applicationMetricsDecoder) Nothing
        |> JDP.optional "instancesHealth" (JD.nullable instanceHealthSummaryDecoder) Nothing
        |> JDP.optional "refreshedAt" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from describeEnvironmentManagedActionHisto
-}
type alias DescribeEnvironmentManagedActionHistoryResult =
    { managedActionHistoryItems : Maybe (List ManagedActionHistoryItem)
    , nextToken : Maybe String
    }



describeEnvironmentManagedActionHistoryResultDecoder : JD.Decoder DescribeEnvironmentManagedActionHistoryResult
describeEnvironmentManagedActionHistoryResultDecoder =
    JDP.decode DescribeEnvironmentManagedActionHistoryResult
        |> JDP.optional "managedActionHistoryItems" (JD.nullable (JD.list managedActionHistoryItemDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEnvironmentManagedActio
-}
type alias DescribeEnvironmentManagedActionsResult =
    { managedActions : Maybe (List ManagedAction)
    }



describeEnvironmentManagedActionsResultDecoder : JD.Decoder DescribeEnvironmentManagedActionsResult
describeEnvironmentManagedActionsResultDecoder =
    JDP.decode DescribeEnvironmentManagedActionsResult
        |> JDP.optional "managedActions" (JD.nullable (JD.list managedActionDecoder)) Nothing




{-| Type of HTTP response from describeInstancesHeal
-}
type alias DescribeInstancesHealthResult =
    { instanceHealthList : Maybe (List SingleInstanceHealth)
    , refreshedAt : Maybe Date
    , nextToken : Maybe String
    }



describeInstancesHealthResultDecoder : JD.Decoder DescribeInstancesHealthResult
describeInstancesHealthResultDecoder =
    JDP.decode DescribeInstancesHealthResult
        |> JDP.optional "instanceHealthList" (JD.nullable (JD.list singleInstanceHealthDecoder)) Nothing
        |> JDP.optional "refreshedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>A generic service exception has occurred.</p>
-}
type alias ElasticBeanstalkServiceException =
    { message : Maybe String
    }



elasticBeanstalkServiceExceptionDecoder : JD.Decoder ElasticBeanstalkServiceException
elasticBeanstalkServiceExceptionDecoder =
    JDP.decode ElasticBeanstalkServiceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from environmentDes
-}
type alias EnvironmentDescription =
    { environmentName : Maybe String
    , environmentId : Maybe String
    , applicationName : Maybe String
    , versionLabel : Maybe String
    , solutionStackName : Maybe String
    , templateName : Maybe String
    , description : Maybe String
    , endpointURL : Maybe String
    , cNAME : Maybe String
    , dateCreated : Maybe Date
    , dateUpdated : Maybe Date
    , status : Maybe EnvironmentStatus
    , abortableOperationInProgress : Maybe Bool
    , health : Maybe EnvironmentHealth
    , healthStatus : Maybe EnvironmentHealthStatus
    , resources : Maybe EnvironmentResourcesDescription
    , tier : Maybe EnvironmentTier
    , environmentLinks : Maybe (List EnvironmentLink)
    }



environmentDescriptionDecoder : JD.Decoder EnvironmentDescription
environmentDescriptionDecoder =
    JDP.decode EnvironmentDescription
        |> JDP.optional "environmentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "environmentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionLabel" (JD.nullable JD.string) Nothing
        |> JDP.optional "solutionStackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "templateName" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "endpointURL" (JD.nullable JD.string) Nothing
        |> JDP.optional "cNAME" (JD.nullable JD.string) Nothing
        |> JDP.optional "dateCreated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "dateUpdated" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable environmentStatusDecoder) Nothing
        |> JDP.optional "abortableOperationInProgress" (JD.nullable JD.bool) Nothing
        |> JDP.optional "health" (JD.nullable environmentHealthDecoder) Nothing
        |> JDP.optional "healthStatus" (JD.nullable environmentHealthStatusDecoder) Nothing
        |> JDP.optional "resources" (JD.nullable environmentResourcesDescriptionDecoder) Nothing
        |> JDP.optional "tier" (JD.nullable environmentTierDecoder) Nothing
        |> JDP.optional "environmentLinks" (JD.nullable (JD.list environmentLinkDecoder)) Nothing




{-| Type of HTTP response from environmentDescription
-}
type alias EnvironmentDescriptionsMessage =
    { environments : Maybe (List EnvironmentDescription)
    }



environmentDescriptionsMessageDecoder : JD.Decoder EnvironmentDescriptionsMessage
environmentDescriptionsMessageDecoder =
    JDP.decode EnvironmentDescriptionsMessage
        |> JDP.optional "environments" (JD.nullable (JD.list environmentDescriptionDecoder)) Nothing




{-| One of

* `EnvironmentHealth_Green`
* `EnvironmentHealth_Yellow`
* `EnvironmentHealth_Red`
* `EnvironmentHealth_Grey`

-}
type EnvironmentHealth
    = EnvironmentHealth_Green
    | EnvironmentHealth_Yellow
    | EnvironmentHealth_Red
    | EnvironmentHealth_Grey



environmentHealthDecoder : JD.Decoder EnvironmentHealth
environmentHealthDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Green" ->
                        JD.succeed EnvironmentHealth_Green

                    "Yellow" ->
                        JD.succeed EnvironmentHealth_Yellow

                    "Red" ->
                        JD.succeed EnvironmentHealth_Red

                    "Grey" ->
                        JD.succeed EnvironmentHealth_Grey


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `EnvironmentHealthAttribute_Status`
* `EnvironmentHealthAttribute_Color`
* `EnvironmentHealthAttribute_Causes`
* `EnvironmentHealthAttribute_ApplicationMetrics`
* `EnvironmentHealthAttribute_InstancesHealth`
* `EnvironmentHealthAttribute_All`
* `EnvironmentHealthAttribute_HealthStatus`
* `EnvironmentHealthAttribute_RefreshedAt`

-}
type EnvironmentHealthAttribute
    = EnvironmentHealthAttribute_Status
    | EnvironmentHealthAttribute_Color
    | EnvironmentHealthAttribute_Causes
    | EnvironmentHealthAttribute_ApplicationMetrics
    | EnvironmentHealthAttribute_InstancesHealth
    | EnvironmentHealthAttribute_All
    | EnvironmentHealthAttribute_HealthStatus
    | EnvironmentHealthAttribute_RefreshedAt



environmentHealthAttributeDecoder : JD.Decoder EnvironmentHealthAttribute
environmentHealthAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Status" ->
                        JD.succeed EnvironmentHealthAttribute_Status

                    "Color" ->
                        JD.succeed EnvironmentHealthAttribute_Color

                    "Causes" ->
                        JD.succeed EnvironmentHealthAttribute_Causes

                    "ApplicationMetrics" ->
                        JD.succeed EnvironmentHealthAttribute_ApplicationMetrics

                    "InstancesHealth" ->
                        JD.succeed EnvironmentHealthAttribute_InstancesHealth

                    "All" ->
                        JD.succeed EnvironmentHealthAttribute_All

                    "HealthStatus" ->
                        JD.succeed EnvironmentHealthAttribute_HealthStatus

                    "RefreshedAt" ->
                        JD.succeed EnvironmentHealthAttribute_RefreshedAt


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `EnvironmentHealthStatus_NoData`
* `EnvironmentHealthStatus_Unknown`
* `EnvironmentHealthStatus_Pending`
* `EnvironmentHealthStatus_Ok`
* `EnvironmentHealthStatus_Info`
* `EnvironmentHealthStatus_Warning`
* `EnvironmentHealthStatus_Degraded`
* `EnvironmentHealthStatus_Severe`

-}
type EnvironmentHealthStatus
    = EnvironmentHealthStatus_NoData
    | EnvironmentHealthStatus_Unknown
    | EnvironmentHealthStatus_Pending
    | EnvironmentHealthStatus_Ok
    | EnvironmentHealthStatus_Info
    | EnvironmentHealthStatus_Warning
    | EnvironmentHealthStatus_Degraded
    | EnvironmentHealthStatus_Severe



environmentHealthStatusDecoder : JD.Decoder EnvironmentHealthStatus
environmentHealthStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoData" ->
                        JD.succeed EnvironmentHealthStatus_NoData

                    "Unknown" ->
                        JD.succeed EnvironmentHealthStatus_Unknown

                    "Pending" ->
                        JD.succeed EnvironmentHealthStatus_Pending

                    "Ok" ->
                        JD.succeed EnvironmentHealthStatus_Ok

                    "Info" ->
                        JD.succeed EnvironmentHealthStatus_Info

                    "Warning" ->
                        JD.succeed EnvironmentHealthStatus_Warning

                    "Degraded" ->
                        JD.succeed EnvironmentHealthStatus_Degraded

                    "Severe" ->
                        JD.succeed EnvironmentHealthStatus_Severe


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The information retrieved from the Amazon EC2 instances.</p>
-}
type alias EnvironmentInfoDescription =
    { infoType : Maybe EnvironmentInfoType
    , ec2InstanceId : Maybe String
    , sampleTimestamp : Maybe Date
    , message : Maybe String
    }



environmentInfoDescriptionDecoder : JD.Decoder EnvironmentInfoDescription
environmentInfoDescriptionDecoder =
    JDP.decode EnvironmentInfoDescription
        |> JDP.optional "infoType" (JD.nullable environmentInfoTypeDecoder) Nothing
        |> JDP.optional "ec2InstanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "sampleTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `EnvironmentInfoType_tail`
* `EnvironmentInfoType_bundle`

-}
type EnvironmentInfoType
    = EnvironmentInfoType_tail
    | EnvironmentInfoType_bundle



environmentInfoTypeDecoder : JD.Decoder EnvironmentInfoType
environmentInfoTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "tail" ->
                        JD.succeed EnvironmentInfoType_tail

                    "bundle" ->
                        JD.succeed EnvironmentInfoType_bundle


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A link to another environment, defined in the environment's manifest. Links provide connection information in system properties that can be used to connect to another environment in the same group. See <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest (env.yaml)</a> for details.</p>
-}
type alias EnvironmentLink =
    { linkName : Maybe String
    , environmentName : Maybe String
    }



environmentLinkDecoder : JD.Decoder EnvironmentLink
environmentLinkDecoder =
    JDP.decode EnvironmentLink
        |> JDP.optional "linkName" (JD.nullable JD.string) Nothing
        |> JDP.optional "environmentName" (JD.nullable JD.string) Nothing




{-| <p>Describes the AWS resources in use by this environment. This data is live.</p>
-}
type alias EnvironmentResourceDescription =
    { environmentName : Maybe String
    , autoScalingGroups : Maybe (List AutoScalingGroup)
    , instances : Maybe (List Instance)
    , launchConfigurations : Maybe (List LaunchConfiguration)
    , loadBalancers : Maybe (List LoadBalancer)
    , triggers : Maybe (List Trigger)
    , queues : Maybe (List Queue)
    }



environmentResourceDescriptionDecoder : JD.Decoder EnvironmentResourceDescription
environmentResourceDescriptionDecoder =
    JDP.decode EnvironmentResourceDescription
        |> JDP.optional "environmentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "autoScalingGroups" (JD.nullable (JD.list autoScalingGroupDecoder)) Nothing
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing
        |> JDP.optional "launchConfigurations" (JD.nullable (JD.list launchConfigurationDecoder)) Nothing
        |> JDP.optional "loadBalancers" (JD.nullable (JD.list loadBalancerDecoder)) Nothing
        |> JDP.optional "triggers" (JD.nullable (JD.list triggerDecoder)) Nothing
        |> JDP.optional "queues" (JD.nullable (JD.list queueDecoder)) Nothing




{-| Type of HTTP response from environmentResourceDescription
-}
type alias EnvironmentResourceDescriptionsMessage =
    { environmentResources : Maybe EnvironmentResourceDescription
    }



environmentResourceDescriptionsMessageDecoder : JD.Decoder EnvironmentResourceDescriptionsMessage
environmentResourceDescriptionsMessageDecoder =
    JDP.decode EnvironmentResourceDescriptionsMessage
        |> JDP.optional "environmentResources" (JD.nullable environmentResourceDescriptionDecoder) Nothing




{-| <p>Describes the AWS resources in use by this environment. This data is not live data.</p>
-}
type alias EnvironmentResourcesDescription =
    { loadBalancer : Maybe LoadBalancerDescription
    }



environmentResourcesDescriptionDecoder : JD.Decoder EnvironmentResourcesDescription
environmentResourcesDescriptionDecoder =
    JDP.decode EnvironmentResourcesDescription
        |> JDP.optional "loadBalancer" (JD.nullable loadBalancerDescriptionDecoder) Nothing




{-| One of

* `EnvironmentStatus_Launching`
* `EnvironmentStatus_Updating`
* `EnvironmentStatus_Ready`
* `EnvironmentStatus_Terminating`
* `EnvironmentStatus_Terminated`

-}
type EnvironmentStatus
    = EnvironmentStatus_Launching
    | EnvironmentStatus_Updating
    | EnvironmentStatus_Ready
    | EnvironmentStatus_Terminating
    | EnvironmentStatus_Terminated



environmentStatusDecoder : JD.Decoder EnvironmentStatus
environmentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Launching" ->
                        JD.succeed EnvironmentStatus_Launching

                    "Updating" ->
                        JD.succeed EnvironmentStatus_Updating

                    "Ready" ->
                        JD.succeed EnvironmentStatus_Ready

                    "Terminating" ->
                        JD.succeed EnvironmentStatus_Terminating

                    "Terminated" ->
                        JD.succeed EnvironmentStatus_Terminated


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the properties of an environment tier</p>
-}
type alias EnvironmentTier =
    { name : Maybe String
    , type_ : Maybe String
    , version : Maybe String
    }



environmentTierDecoder : JD.Decoder EnvironmentTier
environmentTierDecoder =
    JDP.decode EnvironmentTier
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing




{-| <p>Describes an event.</p>
-}
type alias EventDescription =
    { eventDate : Maybe Date
    , message : Maybe String
    , applicationName : Maybe String
    , versionLabel : Maybe String
    , templateName : Maybe String
    , environmentName : Maybe String
    , requestId : Maybe String
    , severity : Maybe EventSeverity
    }



eventDescriptionDecoder : JD.Decoder EventDescription
eventDescriptionDecoder =
    JDP.decode EventDescription
        |> JDP.optional "eventDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "versionLabel" (JD.nullable JD.string) Nothing
        |> JDP.optional "templateName" (JD.nullable JD.string) Nothing
        |> JDP.optional "environmentName" (JD.nullable JD.string) Nothing
        |> JDP.optional "requestId" (JD.nullable JD.string) Nothing
        |> JDP.optional "severity" (JD.nullable eventSeverityDecoder) Nothing




{-| Type of HTTP response from eventDescription
-}
type alias EventDescriptionsMessage =
    { events : Maybe (List EventDescription)
    , nextToken : Maybe String
    }



eventDescriptionsMessageDecoder : JD.Decoder EventDescriptionsMessage
eventDescriptionsMessageDecoder =
    JDP.decode EventDescriptionsMessage
        |> JDP.optional "events" (JD.nullable (JD.list eventDescriptionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| One of

* `EventSeverity_TRACE`
* `EventSeverity_DEBUG`
* `EventSeverity_INFO`
* `EventSeverity_WARN`
* `EventSeverity_ERROR`
* `EventSeverity_FATAL`

-}
type EventSeverity
    = EventSeverity_TRACE
    | EventSeverity_DEBUG
    | EventSeverity_INFO
    | EventSeverity_WARN
    | EventSeverity_ERROR
    | EventSeverity_FATAL



eventSeverityDecoder : JD.Decoder EventSeverity
eventSeverityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TRACE" ->
                        JD.succeed EventSeverity_TRACE

                    "DEBUG" ->
                        JD.succeed EventSeverity_DEBUG

                    "INFO" ->
                        JD.succeed EventSeverity_INFO

                    "WARN" ->
                        JD.succeed EventSeverity_WARN

                    "ERROR" ->
                        JD.succeed EventSeverity_ERROR

                    "FATAL" ->
                        JD.succeed EventSeverity_FATAL


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `FailureType_UpdateCancelled`
* `FailureType_CancellationFailed`
* `FailureType_RollbackFailed`
* `FailureType_RollbackSuccessful`
* `FailureType_InternalFailure`
* `FailureType_InvalidEnvironmentState`
* `FailureType_PermissionsError`

-}
type FailureType
    = FailureType_UpdateCancelled
    | FailureType_CancellationFailed
    | FailureType_RollbackFailed
    | FailureType_RollbackSuccessful
    | FailureType_InternalFailure
    | FailureType_InvalidEnvironmentState
    | FailureType_PermissionsError



failureTypeDecoder : JD.Decoder FailureType
failureTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UpdateCancelled" ->
                        JD.succeed FailureType_UpdateCancelled

                    "CancellationFailed" ->
                        JD.succeed FailureType_CancellationFailed

                    "RollbackFailed" ->
                        JD.succeed FailureType_RollbackFailed

                    "RollbackSuccessful" ->
                        JD.succeed FailureType_RollbackSuccessful

                    "InternalFailure" ->
                        JD.succeed FailureType_InternalFailure

                    "InvalidEnvironmentState" ->
                        JD.succeed FailureType_InvalidEnvironmentState

                    "PermissionsError" ->
                        JD.succeed FailureType_PermissionsError


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The description of an Amazon EC2 instance.</p>
-}
type alias Instance =
    { id : Maybe String
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JDP.decode Instance
        |> JDP.optional "id" (JD.nullable JD.string) Nothing




{-| <p>Represents summary information about the health of an instance. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html">Health Colors and Statuses</a>.</p>
-}
type alias InstanceHealthSummary =
    { noData : Maybe Int
    , unknown : Maybe Int
    , pending : Maybe Int
    , ok : Maybe Int
    , info : Maybe Int
    , warning : Maybe Int
    , degraded : Maybe Int
    , severe : Maybe Int
    }



instanceHealthSummaryDecoder : JD.Decoder InstanceHealthSummary
instanceHealthSummaryDecoder =
    JDP.decode InstanceHealthSummary
        |> JDP.optional "noData" (JD.nullable JD.int) Nothing
        |> JDP.optional "unknown" (JD.nullable JD.int) Nothing
        |> JDP.optional "pending" (JD.nullable JD.int) Nothing
        |> JDP.optional "ok" (JD.nullable JD.int) Nothing
        |> JDP.optional "info" (JD.nullable JD.int) Nothing
        |> JDP.optional "warning" (JD.nullable JD.int) Nothing
        |> JDP.optional "degraded" (JD.nullable JD.int) Nothing
        |> JDP.optional "severe" (JD.nullable JD.int) Nothing




{-| One of

* `InstancesHealthAttribute_HealthStatus`
* `InstancesHealthAttribute_Color`
* `InstancesHealthAttribute_Causes`
* `InstancesHealthAttribute_ApplicationMetrics`
* `InstancesHealthAttribute_RefreshedAt`
* `InstancesHealthAttribute_LaunchedAt`
* `InstancesHealthAttribute_System`
* `InstancesHealthAttribute_Deployment`
* `InstancesHealthAttribute_AvailabilityZone`
* `InstancesHealthAttribute_InstanceType`
* `InstancesHealthAttribute_All`

-}
type InstancesHealthAttribute
    = InstancesHealthAttribute_HealthStatus
    | InstancesHealthAttribute_Color
    | InstancesHealthAttribute_Causes
    | InstancesHealthAttribute_ApplicationMetrics
    | InstancesHealthAttribute_RefreshedAt
    | InstancesHealthAttribute_LaunchedAt
    | InstancesHealthAttribute_System
    | InstancesHealthAttribute_Deployment
    | InstancesHealthAttribute_AvailabilityZone
    | InstancesHealthAttribute_InstanceType
    | InstancesHealthAttribute_All



instancesHealthAttributeDecoder : JD.Decoder InstancesHealthAttribute
instancesHealthAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HealthStatus" ->
                        JD.succeed InstancesHealthAttribute_HealthStatus

                    "Color" ->
                        JD.succeed InstancesHealthAttribute_Color

                    "Causes" ->
                        JD.succeed InstancesHealthAttribute_Causes

                    "ApplicationMetrics" ->
                        JD.succeed InstancesHealthAttribute_ApplicationMetrics

                    "RefreshedAt" ->
                        JD.succeed InstancesHealthAttribute_RefreshedAt

                    "LaunchedAt" ->
                        JD.succeed InstancesHealthAttribute_LaunchedAt

                    "System" ->
                        JD.succeed InstancesHealthAttribute_System

                    "Deployment" ->
                        JD.succeed InstancesHealthAttribute_Deployment

                    "AvailabilityZone" ->
                        JD.succeed InstancesHealthAttribute_AvailabilityZone

                    "InstanceType" ->
                        JD.succeed InstancesHealthAttribute_InstanceType

                    "All" ->
                        JD.succeed InstancesHealthAttribute_All


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified account does not have sufficient privileges for one of more AWS services.</p>
-}
type alias InsufficientPrivilegesException =
    { 
    }



insufficientPrivilegesExceptionDecoder : JD.Decoder InsufficientPrivilegesException
insufficientPrivilegesExceptionDecoder =
    JDP.decode InsufficientPrivilegesException



{-| <p>One or more input parameters is not valid. Please correct the input parameters and try the operation again.</p>
-}
type alias InvalidRequestException =
    { 
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JDP.decode InvalidRequestException



{-| <p>Represents the average latency for the slowest X percent of requests over the last 10 seconds.</p>
-}
type alias Latency =
    { p999 : Maybe Float
    , p99 : Maybe Float
    , p95 : Maybe Float
    , p90 : Maybe Float
    , p85 : Maybe Float
    , p75 : Maybe Float
    , p50 : Maybe Float
    , p10 : Maybe Float
    }



latencyDecoder : JD.Decoder Latency
latencyDecoder =
    JDP.decode Latency
        |> JDP.optional "p999" (JD.nullable JD.float) Nothing
        |> JDP.optional "p99" (JD.nullable JD.float) Nothing
        |> JDP.optional "p95" (JD.nullable JD.float) Nothing
        |> JDP.optional "p90" (JD.nullable JD.float) Nothing
        |> JDP.optional "p85" (JD.nullable JD.float) Nothing
        |> JDP.optional "p75" (JD.nullable JD.float) Nothing
        |> JDP.optional "p50" (JD.nullable JD.float) Nothing
        |> JDP.optional "p10" (JD.nullable JD.float) Nothing




{-| <p>Describes an Auto Scaling launch configuration.</p>
-}
type alias LaunchConfiguration =
    { name : Maybe String
    }



launchConfigurationDecoder : JD.Decoder LaunchConfiguration
launchConfigurationDecoder =
    JDP.decode LaunchConfiguration
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAvailableSolutionStacksResul
-}
type alias ListAvailableSolutionStacksResultMessage =
    { solutionStacks : Maybe (List String)
    , solutionStackDetails : Maybe (List SolutionStackDescription)
    }



listAvailableSolutionStacksResultMessageDecoder : JD.Decoder ListAvailableSolutionStacksResultMessage
listAvailableSolutionStacksResultMessageDecoder =
    JDP.decode ListAvailableSolutionStacksResultMessage
        |> JDP.optional "solutionStacks" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "solutionStackDetails" (JD.nullable (JD.list solutionStackDescriptionDecoder)) Nothing




{-| <p>Describes the properties of a Listener for the LoadBalancer.</p>
-}
type alias Listener =
    { protocol : Maybe String
    , port_ : Maybe Int
    }



listenerDecoder : JD.Decoder Listener
listenerDecoder =
    JDP.decode Listener
        |> JDP.optional "protocol" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing




{-| <p>Describes a LoadBalancer.</p>
-}
type alias LoadBalancer =
    { name : Maybe String
    }



loadBalancerDecoder : JD.Decoder LoadBalancer
loadBalancerDecoder =
    JDP.decode LoadBalancer
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Describes the details of a LoadBalancer.</p>
-}
type alias LoadBalancerDescription =
    { loadBalancerName : Maybe String
    , domain : Maybe String
    , listeners : Maybe (List Listener)
    }



loadBalancerDescriptionDecoder : JD.Decoder LoadBalancerDescription
loadBalancerDescriptionDecoder =
    JDP.decode LoadBalancerDescription
        |> JDP.optional "loadBalancerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "domain" (JD.nullable JD.string) Nothing
        |> JDP.optional "listeners" (JD.nullable (JD.list listenerDecoder)) Nothing




{-| <p>The record of an upcoming or in-progress managed action.</p>
-}
type alias ManagedAction =
    { actionId : Maybe String
    , actionDescription : Maybe String
    , actionType : Maybe ActionType
    , status : Maybe ActionStatus
    , windowStartTime : Maybe Date
    }



managedActionDecoder : JD.Decoder ManagedAction
managedActionDecoder =
    JDP.decode ManagedAction
        |> JDP.optional "actionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "actionDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "actionType" (JD.nullable actionTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable actionStatusDecoder) Nothing
        |> JDP.optional "windowStartTime" (JD.nullable JDX.date) Nothing




{-| <p>The record of a completed or failed managed action.</p>
-}
type alias ManagedActionHistoryItem =
    { actionId : Maybe String
    , actionType : Maybe ActionType
    , actionDescription : Maybe String
    , failureType : Maybe FailureType
    , status : Maybe ActionHistoryStatus
    , failureDescription : Maybe String
    , executedTime : Maybe Date
    , finishedTime : Maybe Date
    }



managedActionHistoryItemDecoder : JD.Decoder ManagedActionHistoryItem
managedActionHistoryItemDecoder =
    JDP.decode ManagedActionHistoryItem
        |> JDP.optional "actionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "actionType" (JD.nullable actionTypeDecoder) Nothing
        |> JDP.optional "actionDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "failureType" (JD.nullable failureTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable actionHistoryStatusDecoder) Nothing
        |> JDP.optional "failureDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "executedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "finishedTime" (JD.nullable JDX.date) Nothing




{-| <p>Cannot modify the managed action in its current state.</p>
-}
type alias ManagedActionInvalidStateException =
    { 
    }



managedActionInvalidStateExceptionDecoder : JD.Decoder ManagedActionInvalidStateException
managedActionInvalidStateExceptionDecoder =
    JDP.decode ManagedActionInvalidStateException



{-| <p>A lifecycle rule that deletes application versions after the specified number of days.</p>
-}
type alias MaxAgeRule =
    { enabled : Bool
    , maxAgeInDays : Maybe Int
    , deleteSourceFromS3 : Maybe Bool
    }



maxAgeRuleDecoder : JD.Decoder MaxAgeRule
maxAgeRuleDecoder =
    JDP.decode MaxAgeRule
        |> JDP.required "enabled" JD.bool
        |> JDP.optional "maxAgeInDays" (JD.nullable JD.int) Nothing
        |> JDP.optional "deleteSourceFromS3" (JD.nullable JD.bool) Nothing




{-| <p>A lifecycle rule that deletes the oldest application version when the maximum count is exceeded.</p>
-}
type alias MaxCountRule =
    { enabled : Bool
    , maxCount : Maybe Int
    , deleteSourceFromS3 : Maybe Bool
    }



maxCountRuleDecoder : JD.Decoder MaxCountRule
maxCountRuleDecoder =
    JDP.decode MaxCountRule
        |> JDP.required "enabled" JD.bool
        |> JDP.optional "maxCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "deleteSourceFromS3" (JD.nullable JD.bool) Nothing




{-| <p>Unable to perform the specified operation because another operation that effects an element in this activity is already in progress.</p>
-}
type alias OperationInProgressException =
    { 
    }



operationInProgressExceptionDecoder : JD.Decoder OperationInProgressException
operationInProgressExceptionDecoder =
    JDP.decode OperationInProgressException



{-| <p>A regular expression representing a restriction on a string configuration option value.</p>
-}
type alias OptionRestrictionRegex =
    { pattern : Maybe String
    , label : Maybe String
    }



optionRestrictionRegexDecoder : JD.Decoder OptionRestrictionRegex
optionRestrictionRegexDecoder =
    JDP.decode OptionRestrictionRegex
        |> JDP.optional "pattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "label" (JD.nullable JD.string) Nothing




{-| <p>A specification identifying an individual configuration option.</p>
-}
type alias OptionSpecification =
    { resourceName : Maybe String
    , namespace : Maybe String
    , optionName : Maybe String
    }



optionSpecificationDecoder : JD.Decoder OptionSpecification
optionSpecificationDecoder =
    JDP.decode OptionSpecification
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "namespace" (JD.nullable JD.string) Nothing
        |> JDP.optional "optionName" (JD.nullable JD.string) Nothing




{-| <p>Describes a queue.</p>
-}
type alias Queue =
    { name : Maybe String
    , uRL : Maybe String
    }



queueDecoder : JD.Decoder Queue
queueDecoder =
    JDP.decode Queue
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "uRL" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from retrieveEnvironmentInfoResul
-}
type alias RetrieveEnvironmentInfoResultMessage =
    { environmentInfo : Maybe (List EnvironmentInfoDescription)
    }



retrieveEnvironmentInfoResultMessageDecoder : JD.Decoder RetrieveEnvironmentInfoResultMessage
retrieveEnvironmentInfoResultMessageDecoder =
    JDP.decode RetrieveEnvironmentInfoResultMessage
        |> JDP.optional "environmentInfo" (JD.nullable (JD.list environmentInfoDescriptionDecoder)) Nothing




{-| <p>The bucket and key of an item stored in Amazon S3.</p>
-}
type alias S3Location =
    { s3Bucket : Maybe String
    , s3Key : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JDP.decode S3Location
        |> JDP.optional "s3Bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Key" (JD.nullable JD.string) Nothing




{-| <p>The specified S3 bucket does not belong to the S3 region in which the service is running. The following regions are supported:</p> <ul> <li> <p>IAD/us-east-1</p> </li> <li> <p>PDX/us-west-2</p> </li> <li> <p>DUB/eu-west-1</p> </li> </ul>
-}
type alias S3LocationNotInServiceRegionException =
    { 
    }



s3LocationNotInServiceRegionExceptionDecoder : JD.Decoder S3LocationNotInServiceRegionException
s3LocationNotInServiceRegionExceptionDecoder =
    JDP.decode S3LocationNotInServiceRegionException



{-| <p>The specified account does not have a subscription to Amazon S3.</p>
-}
type alias S3SubscriptionRequiredException =
    { 
    }



s3SubscriptionRequiredExceptionDecoder : JD.Decoder S3SubscriptionRequiredException
s3SubscriptionRequiredExceptionDecoder =
    JDP.decode S3SubscriptionRequiredException



{-| <p>Detailed health information about an Amazon EC2 instance in your Elastic Beanstalk environment.</p>
-}
type alias SingleInstanceHealth =
    { instanceId : Maybe String
    , healthStatus : Maybe String
    , color : Maybe String
    , causes : Maybe (List String)
    , launchedAt : Maybe Date
    , applicationMetrics : Maybe ApplicationMetrics
    , system : Maybe SystemStatus
    , deployment : Maybe Deployment
    , availabilityZone : Maybe String
    , instanceType : Maybe String
    }



singleInstanceHealthDecoder : JD.Decoder SingleInstanceHealth
singleInstanceHealthDecoder =
    JDP.decode SingleInstanceHealth
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "healthStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "color" (JD.nullable JD.string) Nothing
        |> JDP.optional "causes" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "launchedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "applicationMetrics" (JD.nullable applicationMetricsDecoder) Nothing
        |> JDP.optional "system" (JD.nullable systemStatusDecoder) Nothing
        |> JDP.optional "deployment" (JD.nullable deploymentDecoder) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing




{-| <p>Describes the solution stack.</p>
-}
type alias SolutionStackDescription =
    { solutionStackName : Maybe String
    , permittedFileTypes : Maybe (List String)
    }



solutionStackDescriptionDecoder : JD.Decoder SolutionStackDescription
solutionStackDescriptionDecoder =
    JDP.decode SolutionStackDescription
        |> JDP.optional "solutionStackName" (JD.nullable JD.string) Nothing
        |> JDP.optional "permittedFileTypes" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Location of the source code for an application version.</p>
-}
type alias SourceBuildInformation =
    { sourceType : SourceType
    , sourceRepository : SourceRepository
    , sourceLocation : String
    }



sourceBuildInformationDecoder : JD.Decoder SourceBuildInformation
sourceBuildInformationDecoder =
    JDP.decode SourceBuildInformation
        |> JDP.required "sourceType" sourceTypeDecoder
        |> JDP.required "sourceRepository" sourceRepositoryDecoder
        |> JDP.required "sourceLocation" JD.string




{-| <p>Unable to delete the Amazon S3 source bundle associated with the application version. The application version was deleted successfully.</p>
-}
type alias SourceBundleDeletionException =
    { 
    }



sourceBundleDeletionExceptionDecoder : JD.Decoder SourceBundleDeletionException
sourceBundleDeletionExceptionDecoder =
    JDP.decode SourceBundleDeletionException



{-| <p>A specification for an environment configuration</p>
-}
type alias SourceConfiguration =
    { applicationName : Maybe String
    , templateName : Maybe String
    }



sourceConfigurationDecoder : JD.Decoder SourceConfiguration
sourceConfigurationDecoder =
    JDP.decode SourceConfiguration
        |> JDP.optional "applicationName" (JD.nullable JD.string) Nothing
        |> JDP.optional "templateName" (JD.nullable JD.string) Nothing




{-| One of

* `SourceRepository_CodeCommit`
* `SourceRepository_S3`

-}
type SourceRepository
    = SourceRepository_CodeCommit
    | SourceRepository_S3



sourceRepositoryDecoder : JD.Decoder SourceRepository
sourceRepositoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CodeCommit" ->
                        JD.succeed SourceRepository_CodeCommit

                    "S3" ->
                        JD.succeed SourceRepository_S3


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `SourceType_Git`
* `SourceType_Zip`

-}
type SourceType
    = SourceType_Git
    | SourceType_Zip



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Git" ->
                        JD.succeed SourceType_Git

                    "Zip" ->
                        JD.succeed SourceType_Zip


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the percentage of requests over the last 10 seconds that resulted in each type of status code response. For more information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html">Status Code Definitions</a>.</p>
-}
type alias StatusCodes =
    { status2xx : Maybe Int
    , status3xx : Maybe Int
    , status4xx : Maybe Int
    , status5xx : Maybe Int
    }



statusCodesDecoder : JD.Decoder StatusCodes
statusCodesDecoder =
    JDP.decode StatusCodes
        |> JDP.optional "status2xx" (JD.nullable JD.int) Nothing
        |> JDP.optional "status3xx" (JD.nullable JD.int) Nothing
        |> JDP.optional "status4xx" (JD.nullable JD.int) Nothing
        |> JDP.optional "status5xx" (JD.nullable JD.int) Nothing




{-| <p>CPU utilization and load average metrics for an Amazon EC2 instance.</p>
-}
type alias SystemStatus =
    { cPUUtilization : Maybe CPUUtilization
    , loadAverage : Maybe (List Float)
    }



systemStatusDecoder : JD.Decoder SystemStatus
systemStatusDecoder =
    JDP.decode SystemStatus
        |> JDP.optional "cPUUtilization" (JD.nullable cPUUtilizationDecoder) Nothing
        |> JDP.optional "loadAverage" (JD.nullable (JD.list JD.float)) Nothing




{-| <p>Describes a tag applied to a resource in an environment.</p>
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




{-| <p>The specified account has reached its limit of application versions.</p>
-}
type alias TooManyApplicationVersionsException =
    { 
    }



tooManyApplicationVersionsExceptionDecoder : JD.Decoder TooManyApplicationVersionsException
tooManyApplicationVersionsExceptionDecoder =
    JDP.decode TooManyApplicationVersionsException



{-| <p>The specified account has reached its limit of applications.</p>
-}
type alias TooManyApplicationsException =
    { 
    }



tooManyApplicationsExceptionDecoder : JD.Decoder TooManyApplicationsException
tooManyApplicationsExceptionDecoder =
    JDP.decode TooManyApplicationsException



{-| <p>The specified account has reached its limit of Amazon S3 buckets.</p>
-}
type alias TooManyBucketsException =
    { 
    }



tooManyBucketsExceptionDecoder : JD.Decoder TooManyBucketsException
tooManyBucketsExceptionDecoder =
    JDP.decode TooManyBucketsException



{-| <p>The specified account has reached its limit of configuration templates.</p>
-}
type alias TooManyConfigurationTemplatesException =
    { 
    }



tooManyConfigurationTemplatesExceptionDecoder : JD.Decoder TooManyConfigurationTemplatesException
tooManyConfigurationTemplatesExceptionDecoder =
    JDP.decode TooManyConfigurationTemplatesException



{-| <p>The specified account has reached its limit of environments.</p>
-}
type alias TooManyEnvironmentsException =
    { 
    }



tooManyEnvironmentsExceptionDecoder : JD.Decoder TooManyEnvironmentsException
tooManyEnvironmentsExceptionDecoder =
    JDP.decode TooManyEnvironmentsException



{-| <p>Describes a trigger.</p>
-}
type alias Trigger =
    { name : Maybe String
    }



triggerDecoder : JD.Decoder Trigger
triggerDecoder =
    JDP.decode Trigger
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>An error or warning for a desired configuration option value.</p>
-}
type alias ValidationMessage =
    { message : Maybe String
    , severity : Maybe ValidationSeverity
    , namespace : Maybe String
    , optionName : Maybe String
    }



validationMessageDecoder : JD.Decoder ValidationMessage
validationMessageDecoder =
    JDP.decode ValidationMessage
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "severity" (JD.nullable validationSeverityDecoder) Nothing
        |> JDP.optional "namespace" (JD.nullable JD.string) Nothing
        |> JDP.optional "optionName" (JD.nullable JD.string) Nothing




{-| One of

* `ValidationSeverity_error`
* `ValidationSeverity_warning`

-}
type ValidationSeverity
    = ValidationSeverity_error
    | ValidationSeverity_warning



validationSeverityDecoder : JD.Decoder ValidationSeverity
validationSeverityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "error" ->
                        JD.succeed ValidationSeverity_error

                    "warning" ->
                        JD.succeed ValidationSeverity_warning


                    _ ->
                        JD.fail "bad thing"
            )



