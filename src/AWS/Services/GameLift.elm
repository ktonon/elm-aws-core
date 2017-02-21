module AWS.Services.GameLift
    exposing
        ( config
        , createAlias
        , CreateAliasOptions
        , createBuild
        , CreateBuildOptions
        , createFleet
        , CreateFleetOptions
        , createGameSession
        , CreateGameSessionOptions
        , createPlayerSession
        , createPlayerSessions
        , deleteAlias
        , deleteBuild
        , deleteFleet
        , deleteScalingPolicy
        , describeAlias
        , describeBuild
        , describeEC2InstanceLimits
        , DescribeEC2InstanceLimitsOptions
        , describeFleetAttributes
        , DescribeFleetAttributesOptions
        , describeFleetCapacity
        , DescribeFleetCapacityOptions
        , describeFleetEvents
        , DescribeFleetEventsOptions
        , describeFleetPortSettings
        , describeFleetUtilization
        , DescribeFleetUtilizationOptions
        , describeGameSessionDetails
        , DescribeGameSessionDetailsOptions
        , describeGameSessions
        , DescribeGameSessionsOptions
        , describeInstances
        , DescribeInstancesOptions
        , describePlayerSessions
        , DescribePlayerSessionsOptions
        , describeRuntimeConfiguration
        , describeScalingPolicies
        , DescribeScalingPoliciesOptions
        , getGameSessionLogUrl
        , getInstanceAccess
        , listAliases
        , ListAliasesOptions
        , listBuilds
        , ListBuildsOptions
        , listFleets
        , ListFleetsOptions
        , putScalingPolicy
        , requestUploadCredentials
        , resolveAlias
        , searchGameSessions
        , SearchGameSessionsOptions
        , updateAlias
        , UpdateAliasOptions
        , updateBuild
        , UpdateBuildOptions
        , updateFleetAttributes
        , UpdateFleetAttributesOptions
        , updateFleetCapacity
        , UpdateFleetCapacityOptions
        , updateFleetPortSettings
        , UpdateFleetPortSettingsOptions
        , updateGameSession
        , UpdateGameSessionOptions
        , updateRuntimeConfiguration
        , Alias
        , AwsCredentials
        , Build
        , BuildStatus(..)
        , ComparisonOperatorType(..)
        , ConflictException
        , CreateAliasOutput
        , CreateBuildOutput
        , CreateFleetOutput
        , CreateGameSessionOutput
        , CreatePlayerSessionOutput
        , CreatePlayerSessionsOutput
        , DescribeAliasOutput
        , DescribeBuildOutput
        , DescribeEC2InstanceLimitsOutput
        , DescribeFleetAttributesOutput
        , DescribeFleetCapacityOutput
        , DescribeFleetEventsOutput
        , DescribeFleetPortSettingsOutput
        , DescribeFleetUtilizationOutput
        , DescribeGameSessionDetailsOutput
        , DescribeGameSessionsOutput
        , DescribeInstancesOutput
        , DescribePlayerSessionsOutput
        , DescribeRuntimeConfigurationOutput
        , DescribeScalingPoliciesOutput
        , EC2InstanceCounts
        , EC2InstanceLimit
        , EC2InstanceType(..)
        , Event
        , EventCode(..)
        , FleetAttributes
        , FleetCapacity
        , FleetCapacityExceededException
        , FleetStatus(..)
        , FleetUtilization
        , GameProperty
        , GameSession
        , GameSessionDetail
        , GameSessionFullException
        , GameSessionStatus(..)
        , GetGameSessionLogUrlOutput
        , GetInstanceAccessOutput
        , IdempotentParameterMismatchException
        , Instance
        , InstanceAccess
        , InstanceCredentials
        , InstanceStatus(..)
        , InternalServiceException
        , InvalidFleetStatusException
        , InvalidGameSessionStatusException
        , InvalidRequestException
        , IpPermission
        , IpProtocol(..)
        , LimitExceededException
        , ListAliasesOutput
        , ListBuildsOutput
        , ListFleetsOutput
        , MetricName(..)
        , NotFoundException
        , OperatingSystem(..)
        , PlayerSession
        , PlayerSessionCreationPolicy(..)
        , PlayerSessionStatus(..)
        , ProtectionPolicy(..)
        , PutScalingPolicyOutput
        , RequestUploadCredentialsOutput
        , ResolveAliasOutput
        , ResourceCreationLimitPolicy
        , RoutingStrategy
        , RoutingStrategyType(..)
        , RuntimeConfiguration
        , S3Location
        , ScalingAdjustmentType(..)
        , ScalingPolicy
        , ScalingStatusType(..)
        , SearchGameSessionsOutput
        , ServerProcess
        , TerminalRoutingStrategyException
        , UnauthorizedException
        , UpdateAliasOutput
        , UpdateBuildOutput
        , UpdateFleetAttributesOutput
        , UpdateFleetCapacityOutput
        , UpdateFleetPortSettingsOutput
        , UpdateGameSessionOutput
        , UpdateRuntimeConfigurationOutput
        )

{-| <fullname>Amazon GameLift Service</fullname> <p>Welcome to the <i>Amazon GameLift API Reference</i>. Amazon GameLift is a managed Amazon Web Services (AWS) service for developers who need a scalable, server-based solution for multiplayer games. Amazon GameLift provides setup and deployment of game servers, and handles infrastructure scaling and session management.</p> <p>This reference describes the low-level service API for GameLift. You can call this API directly or use the <a href="http://aws.amazon.com/tools/#sdk">AWS SDK</a> for your preferred language. The AWS SDK includes a set of high-level GameLift actions multiplayer game sessions. Alternatively, you can use the <a href="http://aws.amazon.com/cli/">AWS command-line interface</a> (CLI) tool, which includes commands for GameLift. For administrative actions, you can also use the Amazon GameLift console. </p> <p> <b>More Resources</b> </p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon GameLift Developer Guide</a>: Learn more about GameLift features and how to use them </p> </li> <li> <p> <a href="https://gamedev.amazon.com/forums/tutorials">Lumberyard and GameLift Tutorials</a>: Get started fast with walkthroughs and sample projects</p> </li> <li> <p> <a href="http://aws.amazon.com/blogs/gamedev/">GameDev Blog</a>: Stay up to date with new features and techniques</p> </li> <li> <p> <a href="https://gamedev.amazon.com/forums/spaces/123/gamelift-discussion.html">GameDev Forums</a>: Connect with the GameDev community</p> </li> </ul> <p> <b>Manage Games and Players Through GameLift</b> </p> <p>Call these actions from your game clients and/or services to create and manage multiplayer game sessions and player sessions.</p> <ul> <li> <p> <b>Game sessions:</b> </p> <ul> <li> <p> <a>CreateGameSession</a> </p> </li> <li> <p> <a>DescribeGameSessions</a> </p> </li> <li> <p> <a>DescribeGameSessionDetails</a> </p> </li> <li> <p> <a>UpdateGameSession</a> </p> </li> <li> <p> <a>SearchGameSessions</a> </p> </li> </ul> </li> <li> <p> <b>Player sessions:</b> </p> <ul> <li> <p> <a>CreatePlayerSession</a> </p> </li> <li> <p> <a>CreatePlayerSessions</a> </p> </li> <li> <p> <a>DescribePlayerSessions</a> </p> </li> </ul> </li> <li> <p> <b>Other actions:</b> </p> <ul> <li> <p> <a>GetGameSessionLogUrl</a> </p> </li> </ul> </li> </ul> <p> <b>Set Up and Manage Game Servers</b> </p> <p>Use these administrative actions to configure GameLift to host your game servers. When setting up GameLift, you will need to (1) configure a build for your game and upload build files, and (2) set up one or more fleets to host game sessions. Once you've created and activated a fleet, you can assign aliases to it, scale capacity, track performance and utilization, etc.</p> <ul> <li> <p> <b>Game builds:</b> </p> <ul> <li> <p> <a>ListBuilds</a> </p> </li> <li> <p> <a>CreateBuild</a> </p> </li> <li> <p> <a>DescribeBuild</a> </p> </li> <li> <p> <a>UpdateBuild</a> </p> </li> <li> <p> <a>DeleteBuild</a> </p> </li> <li> <p> <a>RequestUploadCredentials</a> </p> </li> </ul> </li> <li> <p> <b>Fleets:</b> </p> <ul> <li> <p> <a>ListFleets</a> </p> </li> <li> <p> <a>CreateFleet</a> </p> </li> <li> <p>Describe fleets:</p> <ul> <li> <p> <a>DescribeFleetAttributes</a> </p> </li> <li> <p> <a>DescribeFleetCapacity</a> </p> </li> <li> <p> <a>DescribeFleetPortSettings</a> </p> </li> <li> <p> <a>DescribeFleetUtilization</a> </p> </li> <li> <p> <a>DescribeEC2InstanceLimits</a> </p> </li> <li> <p> <a>DescribeFleetEvents</a> </p> </li> <li> <p> <a>DescribeRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p>Update fleets:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> </p> </li> <li> <p> <a>UpdateFleetCapacity</a> </p> </li> <li> <p> <a>UpdateFleetPortSettings</a> </p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> </p> </li> </ul> </li> <li> <p> <a>DeleteFleet</a> </p> </li> </ul> </li> <li> <p> <b>Manage your instances:</b> </p> <ul> <li> <p> <a>DescribeInstances</a> </p> </li> <li> <p> <a>GetInstanceAccess</a> </p> </li> </ul> </li> <li> <p> <b>Manage fleet aliases:</b> </p> <ul> <li> <p> <a>ListAliases</a> </p> </li> <li> <p> <a>CreateAlias</a> </p> </li> <li> <p> <a>DescribeAlias</a> </p> </li> <li> <p> <a>UpdateAlias</a> </p> </li> <li> <p> <a>DeleteAlias</a> </p> </li> <li> <p> <a>ResolveAlias</a> </p> </li> </ul> </li> <li> <p> <b>Manage autoscaling:</b> </p> <ul> <li> <p> <a>PutScalingPolicy</a> </p> </li> <li> <p> <a>DescribeScalingPolicies</a> </p> </li> <li> <p> <a>DeleteScalingPolicy</a> </p> </li> </ul> </li> </ul> <p>To view changes to the API, see the GameLift <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/doc-history.html">Document History</a> page.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createAlias](#createAlias)
* [CreateAliasOptions](#CreateAliasOptions)
* [createBuild](#createBuild)
* [CreateBuildOptions](#CreateBuildOptions)
* [createFleet](#createFleet)
* [CreateFleetOptions](#CreateFleetOptions)
* [createGameSession](#createGameSession)
* [CreateGameSessionOptions](#CreateGameSessionOptions)
* [createPlayerSession](#createPlayerSession)
* [createPlayerSessions](#createPlayerSessions)
* [deleteAlias](#deleteAlias)
* [deleteBuild](#deleteBuild)
* [deleteFleet](#deleteFleet)
* [deleteScalingPolicy](#deleteScalingPolicy)
* [describeAlias](#describeAlias)
* [describeBuild](#describeBuild)
* [describeEC2InstanceLimits](#describeEC2InstanceLimits)
* [DescribeEC2InstanceLimitsOptions](#DescribeEC2InstanceLimitsOptions)
* [describeFleetAttributes](#describeFleetAttributes)
* [DescribeFleetAttributesOptions](#DescribeFleetAttributesOptions)
* [describeFleetCapacity](#describeFleetCapacity)
* [DescribeFleetCapacityOptions](#DescribeFleetCapacityOptions)
* [describeFleetEvents](#describeFleetEvents)
* [DescribeFleetEventsOptions](#DescribeFleetEventsOptions)
* [describeFleetPortSettings](#describeFleetPortSettings)
* [describeFleetUtilization](#describeFleetUtilization)
* [DescribeFleetUtilizationOptions](#DescribeFleetUtilizationOptions)
* [describeGameSessionDetails](#describeGameSessionDetails)
* [DescribeGameSessionDetailsOptions](#DescribeGameSessionDetailsOptions)
* [describeGameSessions](#describeGameSessions)
* [DescribeGameSessionsOptions](#DescribeGameSessionsOptions)
* [describeInstances](#describeInstances)
* [DescribeInstancesOptions](#DescribeInstancesOptions)
* [describePlayerSessions](#describePlayerSessions)
* [DescribePlayerSessionsOptions](#DescribePlayerSessionsOptions)
* [describeRuntimeConfiguration](#describeRuntimeConfiguration)
* [describeScalingPolicies](#describeScalingPolicies)
* [DescribeScalingPoliciesOptions](#DescribeScalingPoliciesOptions)
* [getGameSessionLogUrl](#getGameSessionLogUrl)
* [getInstanceAccess](#getInstanceAccess)
* [listAliases](#listAliases)
* [ListAliasesOptions](#ListAliasesOptions)
* [listBuilds](#listBuilds)
* [ListBuildsOptions](#ListBuildsOptions)
* [listFleets](#listFleets)
* [ListFleetsOptions](#ListFleetsOptions)
* [putScalingPolicy](#putScalingPolicy)
* [requestUploadCredentials](#requestUploadCredentials)
* [resolveAlias](#resolveAlias)
* [searchGameSessions](#searchGameSessions)
* [SearchGameSessionsOptions](#SearchGameSessionsOptions)
* [updateAlias](#updateAlias)
* [UpdateAliasOptions](#UpdateAliasOptions)
* [updateBuild](#updateBuild)
* [UpdateBuildOptions](#UpdateBuildOptions)
* [updateFleetAttributes](#updateFleetAttributes)
* [UpdateFleetAttributesOptions](#UpdateFleetAttributesOptions)
* [updateFleetCapacity](#updateFleetCapacity)
* [UpdateFleetCapacityOptions](#UpdateFleetCapacityOptions)
* [updateFleetPortSettings](#updateFleetPortSettings)
* [UpdateFleetPortSettingsOptions](#UpdateFleetPortSettingsOptions)
* [updateGameSession](#updateGameSession)
* [UpdateGameSessionOptions](#UpdateGameSessionOptions)
* [updateRuntimeConfiguration](#updateRuntimeConfiguration)


@docs createAlias,CreateAliasOptions,createBuild,CreateBuildOptions,createFleet,CreateFleetOptions,createGameSession,CreateGameSessionOptions,createPlayerSession,createPlayerSessions,deleteAlias,deleteBuild,deleteFleet,deleteScalingPolicy,describeAlias,describeBuild,describeEC2InstanceLimits,DescribeEC2InstanceLimitsOptions,describeFleetAttributes,DescribeFleetAttributesOptions,describeFleetCapacity,DescribeFleetCapacityOptions,describeFleetEvents,DescribeFleetEventsOptions,describeFleetPortSettings,describeFleetUtilization,DescribeFleetUtilizationOptions,describeGameSessionDetails,DescribeGameSessionDetailsOptions,describeGameSessions,DescribeGameSessionsOptions,describeInstances,DescribeInstancesOptions,describePlayerSessions,DescribePlayerSessionsOptions,describeRuntimeConfiguration,describeScalingPolicies,DescribeScalingPoliciesOptions,getGameSessionLogUrl,getInstanceAccess,listAliases,ListAliasesOptions,listBuilds,ListBuildsOptions,listFleets,ListFleetsOptions,putScalingPolicy,requestUploadCredentials,resolveAlias,searchGameSessions,SearchGameSessionsOptions,updateAlias,UpdateAliasOptions,updateBuild,UpdateBuildOptions,updateFleetAttributes,UpdateFleetAttributesOptions,updateFleetCapacity,UpdateFleetCapacityOptions,updateFleetPortSettings,UpdateFleetPortSettingsOptions,updateGameSession,UpdateGameSessionOptions,updateRuntimeConfiguration

## Responses

* [CreateAliasOutput](#CreateAliasOutput)
* [CreateBuildOutput](#CreateBuildOutput)
* [CreateFleetOutput](#CreateFleetOutput)
* [CreateGameSessionOutput](#CreateGameSessionOutput)
* [CreatePlayerSessionOutput](#CreatePlayerSessionOutput)
* [CreatePlayerSessionsOutput](#CreatePlayerSessionsOutput)
* [DescribeAliasOutput](#DescribeAliasOutput)
* [DescribeBuildOutput](#DescribeBuildOutput)
* [DescribeEC2InstanceLimitsOutput](#DescribeEC2InstanceLimitsOutput)
* [DescribeFleetAttributesOutput](#DescribeFleetAttributesOutput)
* [DescribeFleetCapacityOutput](#DescribeFleetCapacityOutput)
* [DescribeFleetEventsOutput](#DescribeFleetEventsOutput)
* [DescribeFleetPortSettingsOutput](#DescribeFleetPortSettingsOutput)
* [DescribeFleetUtilizationOutput](#DescribeFleetUtilizationOutput)
* [DescribeGameSessionDetailsOutput](#DescribeGameSessionDetailsOutput)
* [DescribeGameSessionsOutput](#DescribeGameSessionsOutput)
* [DescribeInstancesOutput](#DescribeInstancesOutput)
* [DescribePlayerSessionsOutput](#DescribePlayerSessionsOutput)
* [DescribeRuntimeConfigurationOutput](#DescribeRuntimeConfigurationOutput)
* [DescribeScalingPoliciesOutput](#DescribeScalingPoliciesOutput)
* [GetGameSessionLogUrlOutput](#GetGameSessionLogUrlOutput)
* [GetInstanceAccessOutput](#GetInstanceAccessOutput)
* [ListAliasesOutput](#ListAliasesOutput)
* [ListBuildsOutput](#ListBuildsOutput)
* [ListFleetsOutput](#ListFleetsOutput)
* [PutScalingPolicyOutput](#PutScalingPolicyOutput)
* [RequestUploadCredentialsOutput](#RequestUploadCredentialsOutput)
* [ResolveAliasOutput](#ResolveAliasOutput)
* [SearchGameSessionsOutput](#SearchGameSessionsOutput)
* [UpdateAliasOutput](#UpdateAliasOutput)
* [UpdateBuildOutput](#UpdateBuildOutput)
* [UpdateFleetAttributesOutput](#UpdateFleetAttributesOutput)
* [UpdateFleetCapacityOutput](#UpdateFleetCapacityOutput)
* [UpdateFleetPortSettingsOutput](#UpdateFleetPortSettingsOutput)
* [UpdateGameSessionOutput](#UpdateGameSessionOutput)
* [UpdateRuntimeConfigurationOutput](#UpdateRuntimeConfigurationOutput)


@docs CreateAliasOutput,CreateBuildOutput,CreateFleetOutput,CreateGameSessionOutput,CreatePlayerSessionOutput,CreatePlayerSessionsOutput,DescribeAliasOutput,DescribeBuildOutput,DescribeEC2InstanceLimitsOutput,DescribeFleetAttributesOutput,DescribeFleetCapacityOutput,DescribeFleetEventsOutput,DescribeFleetPortSettingsOutput,DescribeFleetUtilizationOutput,DescribeGameSessionDetailsOutput,DescribeGameSessionsOutput,DescribeInstancesOutput,DescribePlayerSessionsOutput,DescribeRuntimeConfigurationOutput,DescribeScalingPoliciesOutput,GetGameSessionLogUrlOutput,GetInstanceAccessOutput,ListAliasesOutput,ListBuildsOutput,ListFleetsOutput,PutScalingPolicyOutput,RequestUploadCredentialsOutput,ResolveAliasOutput,SearchGameSessionsOutput,UpdateAliasOutput,UpdateBuildOutput,UpdateFleetAttributesOutput,UpdateFleetCapacityOutput,UpdateFleetPortSettingsOutput,UpdateGameSessionOutput,UpdateRuntimeConfigurationOutput

## Records

* [Alias](#Alias)
* [AwsCredentials](#AwsCredentials)
* [Build](#Build)
* [EC2InstanceCounts](#EC2InstanceCounts)
* [EC2InstanceLimit](#EC2InstanceLimit)
* [Event](#Event)
* [FleetAttributes](#FleetAttributes)
* [FleetCapacity](#FleetCapacity)
* [FleetUtilization](#FleetUtilization)
* [GameProperty](#GameProperty)
* [GameSession](#GameSession)
* [GameSessionDetail](#GameSessionDetail)
* [Instance](#Instance)
* [InstanceAccess](#InstanceAccess)
* [InstanceCredentials](#InstanceCredentials)
* [IpPermission](#IpPermission)
* [PlayerSession](#PlayerSession)
* [ResourceCreationLimitPolicy](#ResourceCreationLimitPolicy)
* [RoutingStrategy](#RoutingStrategy)
* [RuntimeConfiguration](#RuntimeConfiguration)
* [S3Location](#S3Location)
* [ScalingPolicy](#ScalingPolicy)
* [ServerProcess](#ServerProcess)


@docs Alias,AwsCredentials,Build,EC2InstanceCounts,EC2InstanceLimit,Event,FleetAttributes,FleetCapacity,FleetUtilization,GameProperty,GameSession,GameSessionDetail,Instance,InstanceAccess,InstanceCredentials,IpPermission,PlayerSession,ResourceCreationLimitPolicy,RoutingStrategy,RuntimeConfiguration,S3Location,ScalingPolicy,ServerProcess

## Unions

* [BuildStatus](#BuildStatus)
* [ComparisonOperatorType](#ComparisonOperatorType)
* [EC2InstanceType](#EC2InstanceType)
* [EventCode](#EventCode)
* [FleetStatus](#FleetStatus)
* [GameSessionStatus](#GameSessionStatus)
* [InstanceStatus](#InstanceStatus)
* [IpProtocol](#IpProtocol)
* [MetricName](#MetricName)
* [OperatingSystem](#OperatingSystem)
* [PlayerSessionCreationPolicy](#PlayerSessionCreationPolicy)
* [PlayerSessionStatus](#PlayerSessionStatus)
* [ProtectionPolicy](#ProtectionPolicy)
* [RoutingStrategyType](#RoutingStrategyType)
* [ScalingAdjustmentType](#ScalingAdjustmentType)
* [ScalingStatusType](#ScalingStatusType)


@docs BuildStatus,ComparisonOperatorType,EC2InstanceType,EventCode,FleetStatus,GameSessionStatus,InstanceStatus,IpProtocol,MetricName,OperatingSystem,PlayerSessionCreationPolicy,PlayerSessionStatus,ProtectionPolicy,RoutingStrategyType,ScalingAdjustmentType,ScalingStatusType

## Exceptions

* [ConflictException](#ConflictException)
* [FleetCapacityExceededException](#FleetCapacityExceededException)
* [GameSessionFullException](#GameSessionFullException)
* [IdempotentParameterMismatchException](#IdempotentParameterMismatchException)
* [InternalServiceException](#InternalServiceException)
* [InvalidFleetStatusException](#InvalidFleetStatusException)
* [InvalidGameSessionStatusException](#InvalidGameSessionStatusException)
* [InvalidRequestException](#InvalidRequestException)
* [LimitExceededException](#LimitExceededException)
* [NotFoundException](#NotFoundException)
* [TerminalRoutingStrategyException](#TerminalRoutingStrategyException)
* [UnauthorizedException](#UnauthorizedException)


@docs ConflictException,FleetCapacityExceededException,GameSessionFullException,IdempotentParameterMismatchException,InternalServiceException,InvalidFleetStatusException,InvalidGameSessionStatusException,InvalidRequestException,LimitExceededException,NotFoundException,TerminalRoutingStrategyException,UnauthorizedException

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
        "gamelift"
        "2015-10-01"
        "1.1"
        "AWSGAMELIFT_20151001."
        "gamelift.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Creates an alias for a fleet. You can use an alias to anonymize your fleet by referencing an alias instead of a specific fleet when you create game sessions. Amazon GameLift supports two types of routing strategies for aliases: simple and terminal. Use a simple alias to point to an active fleet. Use a terminal alias to display a message to incoming traffic instead of routing players to an active fleet. This option is useful when a game server is no longer supported but you want to provide better messaging than a standard 404 error.</p> <p>To create a fleet alias, specify an alias name, routing strategy, and optional description. If successful, a new alias record is returned, including an alias ID, which you can reference when creating a game session. To reassign the alias to another fleet ID, call <a>UpdateAlias</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `routingStrategy` __:__ `RoutingStrategy`


-}
createAlias :
    String
    -> RoutingStrategy
    -> (CreateAliasOptions -> CreateAliasOptions)
    -> AWS.Http.UnsignedRequest CreateAliasOutput
createAlias name routingStrategy setOptions =
  let
    options = setOptions (CreateAliasOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAliasOutputDecoder


{-| Options for a createAlias request
-}
type alias CreateAliasOptions =
    { description : Maybe String
    }



{-| <p>Initializes a new build record and generates information required to upload a game build to Amazon GameLift. Once the build record has been created and its status is <code>INITIALIZED</code>, you can upload your game build.</p> <important> <p>Do not use this API action unless you are using your own Amazon Simple Storage Service (Amazon S3) client and need to manually upload your build files. Instead, to create a build, use the CLI command <code>upload-build</code>, which creates a new build record and uploads the build files in one step. (See the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">Amazon GameLift Developer Guide</a> help on packaging and uploading your build.) </p> </important> <p>To create a new build, identify the operating system of the game server binaries. All game servers in a build must use the same operating system. Optionally, specify a build name and version; this metadata is stored with other properties in the build record and is displayed in the GameLift console (it is not visible to players). If successful, this action returns the newly created build record along with the Amazon S3 storage location and AWS account credentials. Use the location and credentials to upload your game build.</p>

__Required Parameters__



-}
createBuild :
    (CreateBuildOptions -> CreateBuildOptions)
    -> AWS.Http.UnsignedRequest CreateBuildOutput
createBuild setOptions =
  let
    options = setOptions (CreateBuildOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateBuild"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createBuildOutputDecoder


{-| Options for a createBuild request
-}
type alias CreateBuildOptions =
    { name : Maybe String
    , version : Maybe String
    , storageLocation : Maybe S3Location
    , operatingSystem : Maybe OperatingSystem
    }



{-| <p>Creates a new fleet to run your game servers. A fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2) instances, each of which can run multiple server processes to host game sessions. You configure a fleet to create instances with certain hardware specifications (see <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a> for more information), and deploy a specified game build to each instance. A newly created fleet passes through several statuses; once it reaches the <code>ACTIVE</code> status, it can begin hosting game sessions.</p> <p>To create a new fleet, provide a fleet name, an EC2 instance type, and a build ID of the game build to deploy. You can also configure the new fleet with the following settings: (1) a runtime configuration describing what server processes to run on each instance in the fleet (required to create fleet), (2) access permissions for inbound traffic, (3) fleet-wide game session protection, and (4) the location of default log files for GameLift to upload and store.</p> <p>If the <code>CreateFleet</code> call is successful, Amazon GameLift performs the following tasks:</p> <ul> <li> <p>Creates a fleet record and sets the status to <code>NEW</code> (followed by other statuses as the fleet is activated).</p> </li> <li> <p>Sets the fleet's capacity to 1 "desired", which causes GameLift to start one new EC2 instance.</p> </li> <li> <p>Starts launching server processes on the instance. If the fleet is configured to run multiple server processes per instance, GameLift staggers each launch by a few seconds.</p> </li> <li> <p>Begins writing events to the fleet event log, which can be accessed in the GameLift console.</p> </li> <li> <p>Sets the fleet's status to <code>ACTIVE</code> once one server process in the fleet is ready to host a game session.</p> </li> </ul> <p>After a fleet is created, use the following actions to change fleet properties and configuration:</p> <ul> <li> <p> <a>UpdateFleetAttributes</a> -- Update fleet metadata, including name and description.</p> </li> <li> <p> <a>UpdateFleetCapacity</a> -- Increase or decrease the number of instances you want the fleet to maintain.</p> </li> <li> <p> <a>UpdateFleetPortSettings</a> -- Change the IP address and port ranges that allow access to incoming traffic.</p> </li> <li> <p> <a>UpdateRuntimeConfiguration</a> -- Change how server processes are launched in the fleet, including launch path, launch parameters, and the number of concurrent processes.</p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`
* `buildId` __:__ `String`
* `eC2InstanceType` __:__ `EC2InstanceType`


-}
createFleet :
    String
    -> String
    -> EC2InstanceType
    -> (CreateFleetOptions -> CreateFleetOptions)
    -> AWS.Http.UnsignedRequest CreateFleetOutput
createFleet name buildId eC2InstanceType setOptions =
  let
    options = setOptions (CreateFleetOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createFleetOutputDecoder


{-| Options for a createFleet request
-}
type alias CreateFleetOptions =
    { description : Maybe String
    , serverLaunchPath : Maybe String
    , serverLaunchParameters : Maybe String
    , logPaths : Maybe (List String)
    , eC2InboundPermissions : Maybe (List IpPermission)
    , newGameSessionProtectionPolicy : Maybe ProtectionPolicy
    , runtimeConfiguration : Maybe RuntimeConfiguration
    , resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy
    }



{-| <p>Creates a multiplayer game session for players. This action creates a game session record and assigns an available server process in the specified fleet to host the game session. A fleet must be in an <code>ACTIVE</code> status before a game session can be created in it.</p> <p>To create a game session, specify either fleet ID or alias ID, and indicate a maximum number of players to allow in the game session. You can also provide a name and game-specific properties for this game session. If successful, a <a>GameSession</a> object is returned containing session properties, including an IP address. By default, newly created game sessions allow new players to join. Use <a>UpdateGameSession</a> to change the game sessions player session creation policy.</p> <p>When creating a game session on a fleet with a resource limit creation policy, the request should include a creator ID. If none is provided, GameLift does not evaluate the fleet's resource limit creation policy.</p>

__Required Parameters__

* `maximumPlayerSessionCount` __:__ `Int`


-}
createGameSession :
    Int
    -> (CreateGameSessionOptions -> CreateGameSessionOptions)
    -> AWS.Http.UnsignedRequest CreateGameSessionOutput
createGameSession maximumPlayerSessionCount setOptions =
  let
    options = setOptions (CreateGameSessionOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateGameSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createGameSessionOutputDecoder


{-| Options for a createGameSession request
-}
type alias CreateGameSessionOptions =
    { fleetId : Maybe String
    , aliasId : Maybe String
    , name : Maybe String
    , gameProperties : Maybe (List GameProperty)
    , creatorId : Maybe String
    , gameSessionId : Maybe String
    }



{-| <p>Adds a player to a game session and creates a player session record. A game session must be in an <code>ACTIVE</code> status, have a creation policy of <code>ALLOW_ALL</code>, and have an open player slot before players can be added to the session.</p> <p>To create a player session, specify a game session ID and player ID. If successful, the player is added to the game session and a new <a>PlayerSession</a> object is returned. </p>

__Required Parameters__

* `gameSessionId` __:__ `String`
* `playerId` __:__ `String`


-}
createPlayerSession :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreatePlayerSessionOutput
createPlayerSession gameSessionId playerId =
    AWS.Http.unsignedRequest
        "CreatePlayerSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPlayerSessionOutputDecoder



{-| <p>Adds a group of players to a game session. Similar to <a>CreatePlayerSession</a>, this action allows you to add multiple players in a single call, which is useful for games that provide party and/or matchmaking features. A game session must be in an <code>ACTIVE</code> status, have a creation policy of <code>ALLOW_ALL</code>, and have an open player slot before players can be added to the session.</p> <p>To create player sessions, specify a game session ID and a list of player IDs. If successful, the players are added to the game session and a set of new <a>PlayerSession</a> objects is returned. </p>

__Required Parameters__

* `gameSessionId` __:__ `String`
* `playerIds` __:__ `(List String)`


-}
createPlayerSessions :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest CreatePlayerSessionsOutput
createPlayerSessions gameSessionId playerIds =
    AWS.Http.unsignedRequest
        "CreatePlayerSessions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createPlayerSessionsOutputDecoder



{-| <p>Deletes an alias. This action removes all record of the alias; game clients attempting to access a server process using the deleted alias receive an error. To delete an alias, specify the alias ID to be deleted.</p>

__Required Parameters__

* `aliasId` __:__ `String`


-}
deleteAlias :
    String
    -> AWS.Http.UnsignedRequest ()
deleteAlias aliasId =
    AWS.Http.unsignedRequest
        "DeleteAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a build. This action permanently deletes the build record and any uploaded build files.</p> <p>To delete a build, specify its ID. Deleting a build does not affect the status of any active fleets using the build, but you can no longer create new fleets with the deleted build.</p>

__Required Parameters__

* `buildId` __:__ `String`


-}
deleteBuild :
    String
    -> AWS.Http.UnsignedRequest ()
deleteBuild buildId =
    AWS.Http.unsignedRequest
        "DeleteBuild"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes everything related to a fleet. Before deleting a fleet, you must set the fleet's desired capacity to zero. See <a>UpdateFleetCapacity</a>.</p> <p>This action removes the fleet's resources and the fleet record. Once a fleet is deleted, you can no longer use that fleet.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
deleteFleet :
    String
    -> AWS.Http.UnsignedRequest ()
deleteFleet fleetId =
    AWS.Http.unsignedRequest
        "DeleteFleet"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a fleet scaling policy. This action means that the policy is no longer in force and removes all record of it. To delete a scaling policy, specify both the scaling policy name and the fleet ID it is associated with.</p>

__Required Parameters__

* `name` __:__ `String`
* `fleetId` __:__ `String`


-}
deleteScalingPolicy :
    String
    -> String
    -> AWS.Http.UnsignedRequest ()
deleteScalingPolicy name fleetId =
    AWS.Http.unsignedRequest
        "DeleteScalingPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Retrieves properties for a specified alias. To get the alias, specify an alias ID. If successful, an <a>Alias</a> object is returned.</p>

__Required Parameters__

* `aliasId` __:__ `String`


-}
describeAlias :
    String
    -> AWS.Http.UnsignedRequest DescribeAliasOutput
describeAlias aliasId =
    AWS.Http.unsignedRequest
        "DescribeAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAliasOutputDecoder



{-| <p>Retrieves properties for a build. To get a build record, specify a build ID. If successful, an object containing the build properties is returned.</p>

__Required Parameters__

* `buildId` __:__ `String`


-}
describeBuild :
    String
    -> AWS.Http.UnsignedRequest DescribeBuildOutput
describeBuild buildId =
    AWS.Http.unsignedRequest
        "DescribeBuild"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeBuildOutputDecoder



{-| <p>Retrieves the following information for the specified EC2 instance type:</p> <ul> <li> <p>maximum number of instances allowed per AWS account (service limit)</p> </li> <li> <p>current usage level for the AWS account</p> </li> </ul> <p>Service limits vary depending on region. Available regions for GameLift can be found in the AWS Management Console for GameLift (see the drop-down list in the upper right corner).</p>

__Required Parameters__



-}
describeEC2InstanceLimits :
    (DescribeEC2InstanceLimitsOptions -> DescribeEC2InstanceLimitsOptions)
    -> AWS.Http.UnsignedRequest DescribeEC2InstanceLimitsOutput
describeEC2InstanceLimits setOptions =
  let
    options = setOptions (DescribeEC2InstanceLimitsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEC2InstanceLimits"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEC2InstanceLimitsOutputDecoder


{-| Options for a describeEC2InstanceLimits request
-}
type alias DescribeEC2InstanceLimitsOptions =
    { eC2InstanceType : Maybe EC2InstanceType
    }



{-| <p>Retrieves fleet properties, including metadata, status, and configuration, for one or more fleets. You can request attributes for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetAttributes</a> object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist. </p> <note> <p>Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note>

__Required Parameters__



-}
describeFleetAttributes :
    (DescribeFleetAttributesOptions -> DescribeFleetAttributesOptions)
    -> AWS.Http.UnsignedRequest DescribeFleetAttributesOutput
describeFleetAttributes setOptions =
  let
    options = setOptions (DescribeFleetAttributesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFleetAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFleetAttributesOutputDecoder


{-| Options for a describeFleetAttributes request
-}
type alias DescribeFleetAttributesOptions =
    { fleetIds : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the current status of fleet capacity for one or more fleets. This information includes the number of instances that have been requested for the fleet and the number currently active. You can request capacity for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetCapacity</a> object is returned for each requested fleet ID. When specifying a list of fleet IDs, attribute objects are returned only for fleets that currently exist. </p> <note> <p>Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note>

__Required Parameters__



-}
describeFleetCapacity :
    (DescribeFleetCapacityOptions -> DescribeFleetCapacityOptions)
    -> AWS.Http.UnsignedRequest DescribeFleetCapacityOutput
describeFleetCapacity setOptions =
  let
    options = setOptions (DescribeFleetCapacityOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFleetCapacity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFleetCapacityOutputDecoder


{-| Options for a describeFleetCapacity request
-}
type alias DescribeFleetCapacityOptions =
    { fleetIds : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves entries from the specified fleet's event log. You can specify a time range to limit the result set. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of event log entries matching the request are returned.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
describeFleetEvents :
    String
    -> (DescribeFleetEventsOptions -> DescribeFleetEventsOptions)
    -> AWS.Http.UnsignedRequest DescribeFleetEventsOutput
describeFleetEvents fleetId setOptions =
  let
    options = setOptions (DescribeFleetEventsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFleetEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFleetEventsOutputDecoder


{-| Options for a describeFleetEvents request
-}
type alias DescribeFleetEventsOptions =
    { startTime : Maybe Date
    , endTime : Maybe Date
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the inbound connection permissions for a fleet. Connection permissions include a range of IP addresses and port settings that incoming traffic can use to access server processes in the fleet. To get a fleet's inbound connection permissions, specify a fleet ID. If successful, a collection of <a>IpPermission</a> objects is returned for the requested fleet ID. If the requested fleet has been deleted, the result set is empty.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
describeFleetPortSettings :
    String
    -> AWS.Http.UnsignedRequest DescribeFleetPortSettingsOutput
describeFleetPortSettings fleetId =
    AWS.Http.unsignedRequest
        "DescribeFleetPortSettings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFleetPortSettingsOutputDecoder



{-| <p>Retrieves utilization statistics for one or more fleets. You can request utilization data for all fleets, or specify a list of one or more fleet IDs. When requesting multiple fleets, use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>FleetUtilization</a> object is returned for each requested fleet ID. When specifying a list of fleet IDs, utilization objects are returned only for fleets that currently exist. </p> <note> <p>Some API actions may limit the number of fleet IDs allowed in one request. If a request exceeds this limit, the request fails and the error message includes the maximum allowed.</p> </note>

__Required Parameters__



-}
describeFleetUtilization :
    (DescribeFleetUtilizationOptions -> DescribeFleetUtilizationOptions)
    -> AWS.Http.UnsignedRequest DescribeFleetUtilizationOutput
describeFleetUtilization setOptions =
  let
    options = setOptions (DescribeFleetUtilizationOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFleetUtilization"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeFleetUtilizationOutputDecoder


{-| Options for a describeFleetUtilization request
-}
type alias DescribeFleetUtilizationOptions =
    { fleetIds : Maybe (List String)
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves properties, including the protection policy in force, for one or more game sessions. This action can be used in several ways: (1) provide a <code>GameSessionId</code> to request details for a specific game session; (2) provide either a <code>FleetId</code> or an <code>AliasId</code> to request properties for all game sessions running on a fleet. </p> <p>To get game session record(s), specify just one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSessionDetail</a> object is returned for each session matching the request.</p>

__Required Parameters__



-}
describeGameSessionDetails :
    (DescribeGameSessionDetailsOptions -> DescribeGameSessionDetailsOptions)
    -> AWS.Http.UnsignedRequest DescribeGameSessionDetailsOutput
describeGameSessionDetails setOptions =
  let
    options = setOptions (DescribeGameSessionDetailsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeGameSessionDetails"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeGameSessionDetailsOutputDecoder


{-| Options for a describeGameSessionDetails request
-}
type alias DescribeGameSessionDetailsOptions =
    { fleetId : Maybe String
    , gameSessionId : Maybe String
    , aliasId : Maybe String
    , statusFilter : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves a set of one or more game sessions and properties. This action can be used in several ways: (1) provide a <code>GameSessionId</code> to request properties for a specific game session; (2) provide a <code>FleetId</code> or an <code>AliasId</code> to request properties for all game sessions running on a fleet. You can also use <a>SearchGameSessions</a>, which allows you to retrieve all game sessions or filter on certain criteria, but only returns game sessions with a status of ACTIVE. If you need to retrieve the protection policy for each game session, use <a>DescribeGameSessionDetails</a>.</p> <p>To get game session record(s), specify just one of the following: game session ID, fleet ID, or alias ID. You can filter this request by game session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>GameSession</a> object is returned for each session matching the request.</p>

__Required Parameters__



-}
describeGameSessions :
    (DescribeGameSessionsOptions -> DescribeGameSessionsOptions)
    -> AWS.Http.UnsignedRequest DescribeGameSessionsOutput
describeGameSessions setOptions =
  let
    options = setOptions (DescribeGameSessionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeGameSessions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeGameSessionsOutputDecoder


{-| Options for a describeGameSessions request
-}
type alias DescribeGameSessionsOptions =
    { fleetId : Maybe String
    , gameSessionId : Maybe String
    , aliasId : Maybe String
    , statusFilter : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves information about a fleet's instances, including instance IDs. Use this action to get details on all instances in the fleet or get details on one specific instance.</p> <p>To get a specific instance, specify fleet ID and instance ID. To get all instances in a fleet, specify a fleet ID only. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, an <a>Instance</a> object is returned for each result.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
describeInstances :
    String
    -> (DescribeInstancesOptions -> DescribeInstancesOptions)
    -> AWS.Http.UnsignedRequest DescribeInstancesOutput
describeInstances fleetId setOptions =
  let
    options = setOptions (DescribeInstancesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInstances"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInstancesOutputDecoder


{-| Options for a describeInstances request
-}
type alias DescribeInstancesOptions =
    { instanceId : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves properties for one or more player sessions. This action can be used in several ways: (1) provide a <code>PlayerSessionId</code> parameter to request properties for a specific player session; (2) provide a <code>GameSessionId</code> parameter to request properties for all player sessions in the specified game session; (3) provide a <code>PlayerId</code> parameter to request properties for all player sessions of a specified player. </p> <p>To get game session record(s), specify only one of the following: a player session ID, a game session ID, or a player ID. You can filter this request by player session status. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a <a>PlayerSession</a> object is returned for each session matching the request.</p>

__Required Parameters__



-}
describePlayerSessions :
    (DescribePlayerSessionsOptions -> DescribePlayerSessionsOptions)
    -> AWS.Http.UnsignedRequest DescribePlayerSessionsOutput
describePlayerSessions setOptions =
  let
    options = setOptions (DescribePlayerSessionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribePlayerSessions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describePlayerSessionsOutputDecoder


{-| Options for a describePlayerSessions request
-}
type alias DescribePlayerSessionsOptions =
    { gameSessionId : Maybe String
    , playerId : Maybe String
    , playerSessionId : Maybe String
    , playerSessionStatusFilter : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the current runtime configuration for the specified fleet. The runtime configuration tells GameLift how to launch server processes on instances in the fleet.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
describeRuntimeConfiguration :
    String
    -> AWS.Http.UnsignedRequest DescribeRuntimeConfigurationOutput
describeRuntimeConfiguration fleetId =
    AWS.Http.unsignedRequest
        "DescribeRuntimeConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRuntimeConfigurationOutputDecoder



{-| <p>Retrieves all scaling policies applied to a fleet.</p> <p>To get a fleet's scaling policies, specify the fleet ID. You can filter this request by policy status, such as to retrieve only active scaling policies. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, set of <a>ScalingPolicy</a> objects is returned for the fleet.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
describeScalingPolicies :
    String
    -> (DescribeScalingPoliciesOptions -> DescribeScalingPoliciesOptions)
    -> AWS.Http.UnsignedRequest DescribeScalingPoliciesOutput
describeScalingPolicies fleetId setOptions =
  let
    options = setOptions (DescribeScalingPoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeScalingPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeScalingPoliciesOutputDecoder


{-| Options for a describeScalingPolicies request
-}
type alias DescribeScalingPoliciesOptions =
    { statusFilter : Maybe ScalingStatusType
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves the location of stored game session logs for a specified game session. When a game session is terminated, Amazon GameLift automatically stores the logs in Amazon S3. Use this URL to download the logs.</p> <note> <p>See the <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">AWS Service Limits</a> page for maximum log file sizes. Log files that exceed this limit are not saved.</p> </note>

__Required Parameters__

* `gameSessionId` __:__ `String`


-}
getGameSessionLogUrl :
    String
    -> AWS.Http.UnsignedRequest GetGameSessionLogUrlOutput
getGameSessionLogUrl gameSessionId =
    AWS.Http.unsignedRequest
        "GetGameSessionLogUrl"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getGameSessionLogUrlOutputDecoder



{-| <p>Requests remote access to a fleet instance. Remote access is useful for debugging, gathering benchmarking data, or watching activity in real time. </p> <p>Access requires credentials that match the operating system of the instance. For a Windows instance, GameLift returns a username and password as strings for use with a Windows Remote Desktop client. For a Linux instance, GameLift returns a username and RSA private key, also as strings, for use with an SSH client. The private key must be saved in the proper format to a .pem file before using. If you're making this request using the AWS CLI, saving the secret can be handled as part of the GetInstanceAccess request (see the example later in this topic). For more information on remote access, see <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-remote-access.html">Remotely Accessing an Instance</a>.</p> <p>To request access to a specific instance, specify the IDs of the instance and the fleet it belongs to. If successful, an <a>InstanceAccess</a> object is returned containing the instance's IP address and a set of credentials.</p>

__Required Parameters__

* `fleetId` __:__ `String`
* `instanceId` __:__ `String`


-}
getInstanceAccess :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetInstanceAccessOutput
getInstanceAccess fleetId instanceId =
    AWS.Http.unsignedRequest
        "GetInstanceAccess"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getInstanceAccessOutputDecoder



{-| <p>Retrieves a collection of alias records for this AWS account. You can filter the result set by alias name and/or routing strategy type. Use the pagination parameters to retrieve results in sequential pages.</p> <note> <p>Aliases are not listed in any particular order.</p> </note>

__Required Parameters__



-}
listAliases :
    (ListAliasesOptions -> ListAliasesOptions)
    -> AWS.Http.UnsignedRequest ListAliasesOutput
listAliases setOptions =
  let
    options = setOptions (ListAliasesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAliases"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAliasesOutputDecoder


{-| Options for a listAliases request
-}
type alias ListAliasesOptions =
    { routingStrategyType : Maybe RoutingStrategyType
    , name : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves build records for all builds associated with the AWS account in use. You can limit results to builds that are in a specific status by using the <code>Status</code> parameter. Use the pagination parameters to retrieve results in a set of sequential pages. </p> <note> <p>Build records are not listed in any particular order.</p> </note>

__Required Parameters__



-}
listBuilds :
    (ListBuildsOptions -> ListBuildsOptions)
    -> AWS.Http.UnsignedRequest ListBuildsOutput
listBuilds setOptions =
  let
    options = setOptions (ListBuildsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListBuilds"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listBuildsOutputDecoder


{-| Options for a listBuilds request
-}
type alias ListBuildsOptions =
    { status : Maybe BuildStatus
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves a collection of fleet records for this AWS account. You can filter the result set by build ID. Use the pagination parameters to retrieve results in sequential pages.</p> <note> <p>Fleet records are not listed in any particular order.</p> </note>

__Required Parameters__



-}
listFleets :
    (ListFleetsOptions -> ListFleetsOptions)
    -> AWS.Http.UnsignedRequest ListFleetsOutput
listFleets setOptions =
  let
    options = setOptions (ListFleetsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListFleets"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listFleetsOutputDecoder


{-| Options for a listFleets request
-}
type alias ListFleetsOptions =
    { buildId : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Creates or updates a scaling policy for a fleet. An active scaling policy prompts Amazon GameLift to track a certain metric for a fleet and automatically change the fleet's capacity in specific circumstances. Each scaling policy contains one rule statement. Fleets can have multiple scaling policies in force simultaneously.</p> <p>A scaling policy rule statement has the following structure:</p> <p>If <code>[MetricName]</code> is <code>[ComparisonOperator]</code> <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes, then <code>[ScalingAdjustmentType]</code> to/by <code>[ScalingAdjustment]</code>.</p> <p>For example, this policy: "If the number of idle instances exceeds 20 for more than 15 minutes, then reduce the fleet capacity by 10 instances" could be implemented as the following rule statement:</p> <p>If [IdleInstances] is [GreaterThanOrEqualToThreshold] [20] for [15] minutes, then [ChangeInCapacity] by [-10].</p> <p>To create or update a scaling policy, specify a unique combination of name and fleet ID, and set the rule values. All parameters for this action are required. If successful, the policy name is returned. Scaling policies cannot be suspended or made inactive. To stop enforcing a scaling policy, call <a>DeleteScalingPolicy</a>.</p>

__Required Parameters__

* `name` __:__ `String`
* `fleetId` __:__ `String`
* `scalingAdjustment` __:__ `Int`
* `scalingAdjustmentType` __:__ `ScalingAdjustmentType`
* `threshold` __:__ `Float`
* `comparisonOperator` __:__ `ComparisonOperatorType`
* `evaluationPeriods` __:__ `Int`
* `metricName` __:__ `MetricName`


-}
putScalingPolicy :
    String
    -> String
    -> Int
    -> ScalingAdjustmentType
    -> Float
    -> ComparisonOperatorType
    -> Int
    -> MetricName
    -> AWS.Http.UnsignedRequest PutScalingPolicyOutput
putScalingPolicy name fleetId scalingAdjustment scalingAdjustmentType threshold comparisonOperator evaluationPeriods metricName =
    AWS.Http.unsignedRequest
        "PutScalingPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putScalingPolicyOutputDecoder



{-| <p>Retrieves a fresh set of upload credentials and the assigned Amazon S3 storage location for a specific build. Valid credentials are required to upload your game build files to Amazon S3.</p> <important> <p>Call this action only if you need credentials for a build created with<code> <a>CreateBuild</a> </code>. This is a rare situation; in most cases, builds are created using the CLI command <code>upload-build</code>, which creates a build record and also uploads build files. </p> </important> <p>Upload credentials are returned when you create the build, but they have a limited lifespan. You can get fresh credentials and use them to re-upload game files until the status of that build changes to <code>READY</code>. Once this happens, you must create a brand new build.</p>

__Required Parameters__

* `buildId` __:__ `String`


-}
requestUploadCredentials :
    String
    -> AWS.Http.UnsignedRequest RequestUploadCredentialsOutput
requestUploadCredentials buildId =
    AWS.Http.unsignedRequest
        "RequestUploadCredentials"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        requestUploadCredentialsOutputDecoder



{-| <p>Retrieves the fleet ID that a specified alias is currently pointing to.</p>

__Required Parameters__

* `aliasId` __:__ `String`


-}
resolveAlias :
    String
    -> AWS.Http.UnsignedRequest ResolveAliasOutput
resolveAlias aliasId =
    AWS.Http.unsignedRequest
        "ResolveAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        resolveAliasOutputDecoder



{-| <p>Retrieves a set of game sessions that match a set of search criteria and sorts them in a specified order. Currently a game session search is limited to a single fleet. Search results include only game sessions that are in ACTIVE status. If you need to retrieve game sessions with a status other than active, use <a>DescribeGameSessions</a>. If you need to retrieve the protection policy for each game session, use <a>DescribeGameSessionDetails</a>.</p> <p>You can search or sort by the following game session attributes:</p> <ul> <li> <p> <b>gameSessionId</b> -- ID value assigned to a game session. This unique value is returned in a <a>GameSession</a> object when a new game session is created. </p> </li> <li> <p> <b>gameSessionName</b> -- Name assigned to a game session. This value is set when requesting a new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>. Game session names do not need to be unique to a game session.</p> </li> <li> <p> <b>creationTimeMillis</b> -- Value indicating when a game session was created. It is expressed in Unix time as milliseconds.</p> </li> <li> <p> <b>playerSessionCount</b> -- Number of players currently connected to a game session. This value changes rapidly as players join the session or drop out.</p> </li> <li> <p> <b>maximumSessions</b> -- Maximum number of player sessions allowed for a game session. This value is set when requesting a new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>.</p> </li> <li> <p> <b>hasAvailablePlayerSessions</b> -- Boolean value indicating whether or not a game session has reached its maximum number of players. When searching with this attribute, the search value must be <code>true</code> or <code>false</code>. It is highly recommended that all search requests include this filter attribute to optimize search performance and return only sessions that players can join. </p> </li> </ul> <p>To search or sort, specify either a fleet ID or an alias ID, and provide a search filter expression, a sort expression, or both. Use the pagination parameters to retrieve results as a set of sequential pages. If successful, a collection of <a>GameSession</a> objects matching the request is returned.</p> <note> <p>Returned values for <code>playerSessionCount</code> and <code>hasAvailablePlayerSessions</code> change quickly as players join sessions and others drop out. Results should be considered a snapshot in time. Be sure to refresh search results often, and handle sessions that fill up before a player can join. </p> </note>

__Required Parameters__



-}
searchGameSessions :
    (SearchGameSessionsOptions -> SearchGameSessionsOptions)
    -> AWS.Http.UnsignedRequest SearchGameSessionsOutput
searchGameSessions setOptions =
  let
    options = setOptions (SearchGameSessionsOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SearchGameSessions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        searchGameSessionsOutputDecoder


{-| Options for a searchGameSessions request
-}
type alias SearchGameSessionsOptions =
    { fleetId : Maybe String
    , aliasId : Maybe String
    , filterExpression : Maybe String
    , sortExpression : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Updates properties for an alias. To update properties, specify the alias ID to be updated and provide the information to be changed. To reassign an alias to another fleet, provide an updated routing strategy. If successful, the updated alias record is returned.</p>

__Required Parameters__

* `aliasId` __:__ `String`


-}
updateAlias :
    String
    -> (UpdateAliasOptions -> UpdateAliasOptions)
    -> AWS.Http.UnsignedRequest UpdateAliasOutput
updateAlias aliasId setOptions =
  let
    options = setOptions (UpdateAliasOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateAliasOutputDecoder


{-| Options for a updateAlias request
-}
type alias UpdateAliasOptions =
    { name : Maybe String
    , description : Maybe String
    , routingStrategy : Maybe RoutingStrategy
    }



{-| <p>Updates metadata in a build record, including the build name and version. To update the metadata, specify the build ID to update and provide the new values. If successful, a build object containing the updated metadata is returned.</p>

__Required Parameters__

* `buildId` __:__ `String`


-}
updateBuild :
    String
    -> (UpdateBuildOptions -> UpdateBuildOptions)
    -> AWS.Http.UnsignedRequest UpdateBuildOutput
updateBuild buildId setOptions =
  let
    options = setOptions (UpdateBuildOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateBuild"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateBuildOutputDecoder


{-| Options for a updateBuild request
-}
type alias UpdateBuildOptions =
    { name : Maybe String
    , version : Maybe String
    }



{-| <p>Updates fleet properties, including name and description, for a fleet. To update metadata, specify the fleet ID and the property values you want to change. If successful, the fleet ID for the updated fleet is returned.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
updateFleetAttributes :
    String
    -> (UpdateFleetAttributesOptions -> UpdateFleetAttributesOptions)
    -> AWS.Http.UnsignedRequest UpdateFleetAttributesOutput
updateFleetAttributes fleetId setOptions =
  let
    options = setOptions (UpdateFleetAttributesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateFleetAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateFleetAttributesOutputDecoder


{-| Options for a updateFleetAttributes request
-}
type alias UpdateFleetAttributesOptions =
    { name : Maybe String
    , description : Maybe String
    , newGameSessionProtectionPolicy : Maybe ProtectionPolicy
    , resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy
    }



{-| <p>Updates capacity settings for a fleet. Use this action to specify the number of EC2 instances (hosts) that you want this fleet to contain. Before calling this action, you may want to call <a>DescribeEC2InstanceLimits</a> to get the maximum capacity based on the fleet's EC2 instance type.</p> <p>If you're using autoscaling (see <a>PutScalingPolicy</a>), you may want to specify a minimum and/or maximum capacity. If you don't provide these, autoscaling can set capacity anywhere between zero and the <a href="http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">service limits</a>.</p> <p>To update fleet capacity, specify the fleet ID and the number of instances you want the fleet to host. If successful, Amazon GameLift starts or terminates instances so that the fleet's active instance count matches the desired instance count. You can view a fleet's current capacity information by calling <a>DescribeFleetCapacity</a>. If the desired instance count is higher than the instance type's limit, the "Limit Exceeded" exception occurs.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
updateFleetCapacity :
    String
    -> (UpdateFleetCapacityOptions -> UpdateFleetCapacityOptions)
    -> AWS.Http.UnsignedRequest UpdateFleetCapacityOutput
updateFleetCapacity fleetId setOptions =
  let
    options = setOptions (UpdateFleetCapacityOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateFleetCapacity"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateFleetCapacityOutputDecoder


{-| Options for a updateFleetCapacity request
-}
type alias UpdateFleetCapacityOptions =
    { desiredInstances : Maybe Int
    , minSize : Maybe Int
    , maxSize : Maybe Int
    }



{-| <p>Updates port settings for a fleet. To update settings, specify the fleet ID to be updated and list the permissions you want to update. List the permissions you want to add in <code>InboundPermissionAuthorizations</code>, and permissions you want to remove in <code>InboundPermissionRevocations</code>. Permissions to be removed must match existing fleet permissions. If successful, the fleet ID for the updated fleet is returned.</p>

__Required Parameters__

* `fleetId` __:__ `String`


-}
updateFleetPortSettings :
    String
    -> (UpdateFleetPortSettingsOptions -> UpdateFleetPortSettingsOptions)
    -> AWS.Http.UnsignedRequest UpdateFleetPortSettingsOutput
updateFleetPortSettings fleetId setOptions =
  let
    options = setOptions (UpdateFleetPortSettingsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateFleetPortSettings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateFleetPortSettingsOutputDecoder


{-| Options for a updateFleetPortSettings request
-}
type alias UpdateFleetPortSettingsOptions =
    { inboundPermissionAuthorizations : Maybe (List IpPermission)
    , inboundPermissionRevocations : Maybe (List IpPermission)
    }



{-| <p>Updates game session properties. This includes the session name, maximum player count, protection policy, which controls whether or not an active game session can be terminated during a scale-down event, and the player session creation policy, which controls whether or not new players can join the session. To update a game session, specify the game session ID and the values you want to change. If successful, an updated <a>GameSession</a> object is returned. </p>

__Required Parameters__

* `gameSessionId` __:__ `String`


-}
updateGameSession :
    String
    -> (UpdateGameSessionOptions -> UpdateGameSessionOptions)
    -> AWS.Http.UnsignedRequest UpdateGameSessionOutput
updateGameSession gameSessionId setOptions =
  let
    options = setOptions (UpdateGameSessionOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateGameSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateGameSessionOutputDecoder


{-| Options for a updateGameSession request
-}
type alias UpdateGameSessionOptions =
    { maximumPlayerSessionCount : Maybe Int
    , name : Maybe String
    , playerSessionCreationPolicy : Maybe PlayerSessionCreationPolicy
    , protectionPolicy : Maybe ProtectionPolicy
    }



{-| <p>Updates the current runtime configuration for the specified fleet, which tells GameLift how to launch server processes on instances in the fleet. You can update a fleet's runtime configuration at any time after the fleet is created; it does not need to be in an <code>ACTIVE</code> status.</p> <p>To update runtime configuration, specify the fleet ID and provide a <code>RuntimeConfiguration</code> object with the updated collection of server process configurations.</p> <p>Each instance in a GameLift fleet checks regularly for an updated runtime configuration and changes how it launches server processes to comply with the latest version. Existing server processes are not affected by the update; they continue to run until they end, while GameLift simply adds new server processes to fit the current runtime configuration. As a result, the runtime configuration changes are applied gradually as existing processes shut down and new processes are launched in GameLift's normal process recycling activity.</p>

__Required Parameters__

* `fleetId` __:__ `String`
* `runtimeConfiguration` __:__ `RuntimeConfiguration`


-}
updateRuntimeConfiguration :
    String
    -> RuntimeConfiguration
    -> AWS.Http.UnsignedRequest UpdateRuntimeConfigurationOutput
updateRuntimeConfiguration fleetId runtimeConfiguration =
    AWS.Http.unsignedRequest
        "UpdateRuntimeConfiguration"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateRuntimeConfigurationOutputDecoder




{-| <p>Properties describing a fleet alias.</p>
-}
type alias Alias =
    { aliasId : Maybe String
    , name : Maybe String
    , description : Maybe String
    , routingStrategy : Maybe RoutingStrategy
    , creationTime : Maybe Date
    , lastUpdatedTime : Maybe Date
    }



aliasDecoder : JD.Decoder Alias
aliasDecoder =
    JDP.decode Alias
        |> JDP.optional "aliasId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "routingStrategy" (JD.nullable routingStrategyDecoder) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastUpdatedTime" (JD.nullable JDX.date) Nothing




{-| <p>AWS access credentials required to upload game build files to Amazon GameLift. These credentials are generated with <a>CreateBuild</a>, and are valid for a limited time. If they expire before you upload your game build, get a new set by calling <a>RequestUploadCredentials</a>.</p>
-}
type alias AwsCredentials =
    { accessKeyId : Maybe String
    , secretAccessKey : Maybe String
    , sessionToken : Maybe String
    }



awsCredentialsDecoder : JD.Decoder AwsCredentials
awsCredentialsDecoder =
    JDP.decode AwsCredentials
        |> JDP.optional "accessKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "secretAccessKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "sessionToken" (JD.nullable JD.string) Nothing




{-| <p>Properties describing a game build.</p>
-}
type alias Build =
    { buildId : Maybe String
    , name : Maybe String
    , version : Maybe String
    , status : Maybe BuildStatus
    , sizeOnDisk : Maybe Int
    , operatingSystem : Maybe OperatingSystem
    , creationTime : Maybe Date
    }



buildDecoder : JD.Decoder Build
buildDecoder =
    JDP.decode Build
        |> JDP.optional "buildId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable buildStatusDecoder) Nothing
        |> JDP.optional "sizeOnDisk" (JD.nullable JD.int) Nothing
        |> JDP.optional "operatingSystem" (JD.nullable operatingSystemDecoder) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing




{-| One of

* `BuildStatus_INITIALIZED`
* `BuildStatus_READY`
* `BuildStatus_FAILED`

-}
type BuildStatus
    = BuildStatus_INITIALIZED
    | BuildStatus_READY
    | BuildStatus_FAILED



buildStatusDecoder : JD.Decoder BuildStatus
buildStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INITIALIZED" ->
                        JD.succeed BuildStatus_INITIALIZED

                    "READY" ->
                        JD.succeed BuildStatus_READY

                    "FAILED" ->
                        JD.succeed BuildStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ComparisonOperatorType_GreaterThanOrEqualToThreshold`
* `ComparisonOperatorType_GreaterThanThreshold`
* `ComparisonOperatorType_LessThanThreshold`
* `ComparisonOperatorType_LessThanOrEqualToThreshold`

-}
type ComparisonOperatorType
    = ComparisonOperatorType_GreaterThanOrEqualToThreshold
    | ComparisonOperatorType_GreaterThanThreshold
    | ComparisonOperatorType_LessThanThreshold
    | ComparisonOperatorType_LessThanOrEqualToThreshold



comparisonOperatorTypeDecoder : JD.Decoder ComparisonOperatorType
comparisonOperatorTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GreaterThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperatorType_GreaterThanOrEqualToThreshold

                    "GreaterThanThreshold" ->
                        JD.succeed ComparisonOperatorType_GreaterThanThreshold

                    "LessThanThreshold" ->
                        JD.succeed ComparisonOperatorType_LessThanThreshold

                    "LessThanOrEqualToThreshold" ->
                        JD.succeed ComparisonOperatorType_LessThanOrEqualToThreshold


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.</p>
-}
type alias ConflictException =
    { message : Maybe String
    }



conflictExceptionDecoder : JD.Decoder ConflictException
conflictExceptionDecoder =
    JDP.decode ConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createAli
-}
type alias CreateAliasOutput =
    { alias : Maybe Alias
    }



createAliasOutputDecoder : JD.Decoder CreateAliasOutput
createAliasOutputDecoder =
    JDP.decode CreateAliasOutput
        |> JDP.optional "alias" (JD.nullable aliasDecoder) Nothing




{-| Type of HTTP response from createBui
-}
type alias CreateBuildOutput =
    { build : Maybe Build
    , uploadCredentials : Maybe AwsCredentials
    , storageLocation : Maybe S3Location
    }



createBuildOutputDecoder : JD.Decoder CreateBuildOutput
createBuildOutputDecoder =
    JDP.decode CreateBuildOutput
        |> JDP.optional "build" (JD.nullable buildDecoder) Nothing
        |> JDP.optional "uploadCredentials" (JD.nullable awsCredentialsDecoder) Nothing
        |> JDP.optional "storageLocation" (JD.nullable s3LocationDecoder) Nothing




{-| Type of HTTP response from createFle
-}
type alias CreateFleetOutput =
    { fleetAttributes : Maybe FleetAttributes
    }



createFleetOutputDecoder : JD.Decoder CreateFleetOutput
createFleetOutputDecoder =
    JDP.decode CreateFleetOutput
        |> JDP.optional "fleetAttributes" (JD.nullable fleetAttributesDecoder) Nothing




{-| Type of HTTP response from createGameSessi
-}
type alias CreateGameSessionOutput =
    { gameSession : Maybe GameSession
    }



createGameSessionOutputDecoder : JD.Decoder CreateGameSessionOutput
createGameSessionOutputDecoder =
    JDP.decode CreateGameSessionOutput
        |> JDP.optional "gameSession" (JD.nullable gameSessionDecoder) Nothing




{-| Type of HTTP response from createPlayerSessi
-}
type alias CreatePlayerSessionOutput =
    { playerSession : Maybe PlayerSession
    }



createPlayerSessionOutputDecoder : JD.Decoder CreatePlayerSessionOutput
createPlayerSessionOutputDecoder =
    JDP.decode CreatePlayerSessionOutput
        |> JDP.optional "playerSession" (JD.nullable playerSessionDecoder) Nothing




{-| Type of HTTP response from createPlayerSessio
-}
type alias CreatePlayerSessionsOutput =
    { playerSessions : Maybe (List PlayerSession)
    }



createPlayerSessionsOutputDecoder : JD.Decoder CreatePlayerSessionsOutput
createPlayerSessionsOutputDecoder =
    JDP.decode CreatePlayerSessionsOutput
        |> JDP.optional "playerSessions" (JD.nullable (JD.list playerSessionDecoder)) Nothing




{-| Type of HTTP response from describeAli
-}
type alias DescribeAliasOutput =
    { alias : Maybe Alias
    }



describeAliasOutputDecoder : JD.Decoder DescribeAliasOutput
describeAliasOutputDecoder =
    JDP.decode DescribeAliasOutput
        |> JDP.optional "alias" (JD.nullable aliasDecoder) Nothing




{-| Type of HTTP response from describeBui
-}
type alias DescribeBuildOutput =
    { build : Maybe Build
    }



describeBuildOutputDecoder : JD.Decoder DescribeBuildOutput
describeBuildOutputDecoder =
    JDP.decode DescribeBuildOutput
        |> JDP.optional "build" (JD.nullable buildDecoder) Nothing




{-| Type of HTTP response from describeEC2InstanceLimi
-}
type alias DescribeEC2InstanceLimitsOutput =
    { eC2InstanceLimits : Maybe (List EC2InstanceLimit)
    }



describeEC2InstanceLimitsOutputDecoder : JD.Decoder DescribeEC2InstanceLimitsOutput
describeEC2InstanceLimitsOutputDecoder =
    JDP.decode DescribeEC2InstanceLimitsOutput
        |> JDP.optional "eC2InstanceLimits" (JD.nullable (JD.list eC2InstanceLimitDecoder)) Nothing




{-| Type of HTTP response from describeFleetAttribut
-}
type alias DescribeFleetAttributesOutput =
    { fleetAttributes : Maybe (List FleetAttributes)
    , nextToken : Maybe String
    }



describeFleetAttributesOutputDecoder : JD.Decoder DescribeFleetAttributesOutput
describeFleetAttributesOutputDecoder =
    JDP.decode DescribeFleetAttributesOutput
        |> JDP.optional "fleetAttributes" (JD.nullable (JD.list fleetAttributesDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeFleetCapaci
-}
type alias DescribeFleetCapacityOutput =
    { fleetCapacity : Maybe (List FleetCapacity)
    , nextToken : Maybe String
    }



describeFleetCapacityOutputDecoder : JD.Decoder DescribeFleetCapacityOutput
describeFleetCapacityOutputDecoder =
    JDP.decode DescribeFleetCapacityOutput
        |> JDP.optional "fleetCapacity" (JD.nullable (JD.list fleetCapacityDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeFleetEven
-}
type alias DescribeFleetEventsOutput =
    { events : Maybe (List Event)
    , nextToken : Maybe String
    }



describeFleetEventsOutputDecoder : JD.Decoder DescribeFleetEventsOutput
describeFleetEventsOutputDecoder =
    JDP.decode DescribeFleetEventsOutput
        |> JDP.optional "events" (JD.nullable (JD.list eventDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeFleetPortSettin
-}
type alias DescribeFleetPortSettingsOutput =
    { inboundPermissions : Maybe (List IpPermission)
    }



describeFleetPortSettingsOutputDecoder : JD.Decoder DescribeFleetPortSettingsOutput
describeFleetPortSettingsOutputDecoder =
    JDP.decode DescribeFleetPortSettingsOutput
        |> JDP.optional "inboundPermissions" (JD.nullable (JD.list ipPermissionDecoder)) Nothing




{-| Type of HTTP response from describeFleetUtilizati
-}
type alias DescribeFleetUtilizationOutput =
    { fleetUtilization : Maybe (List FleetUtilization)
    , nextToken : Maybe String
    }



describeFleetUtilizationOutputDecoder : JD.Decoder DescribeFleetUtilizationOutput
describeFleetUtilizationOutputDecoder =
    JDP.decode DescribeFleetUtilizationOutput
        |> JDP.optional "fleetUtilization" (JD.nullable (JD.list fleetUtilizationDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeGameSessionDetai
-}
type alias DescribeGameSessionDetailsOutput =
    { gameSessionDetails : Maybe (List GameSessionDetail)
    , nextToken : Maybe String
    }



describeGameSessionDetailsOutputDecoder : JD.Decoder DescribeGameSessionDetailsOutput
describeGameSessionDetailsOutputDecoder =
    JDP.decode DescribeGameSessionDetailsOutput
        |> JDP.optional "gameSessionDetails" (JD.nullable (JD.list gameSessionDetailDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeGameSessio
-}
type alias DescribeGameSessionsOutput =
    { gameSessions : Maybe (List GameSession)
    , nextToken : Maybe String
    }



describeGameSessionsOutputDecoder : JD.Decoder DescribeGameSessionsOutput
describeGameSessionsOutputDecoder =
    JDP.decode DescribeGameSessionsOutput
        |> JDP.optional "gameSessions" (JD.nullable (JD.list gameSessionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeInstanc
-}
type alias DescribeInstancesOutput =
    { instances : Maybe (List Instance)
    , nextToken : Maybe String
    }



describeInstancesOutputDecoder : JD.Decoder DescribeInstancesOutput
describeInstancesOutputDecoder =
    JDP.decode DescribeInstancesOutput
        |> JDP.optional "instances" (JD.nullable (JD.list instanceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describePlayerSessio
-}
type alias DescribePlayerSessionsOutput =
    { playerSessions : Maybe (List PlayerSession)
    , nextToken : Maybe String
    }



describePlayerSessionsOutputDecoder : JD.Decoder DescribePlayerSessionsOutput
describePlayerSessionsOutputDecoder =
    JDP.decode DescribePlayerSessionsOutput
        |> JDP.optional "playerSessions" (JD.nullable (JD.list playerSessionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeRuntimeConfigurati
-}
type alias DescribeRuntimeConfigurationOutput =
    { runtimeConfiguration : Maybe RuntimeConfiguration
    }



describeRuntimeConfigurationOutputDecoder : JD.Decoder DescribeRuntimeConfigurationOutput
describeRuntimeConfigurationOutputDecoder =
    JDP.decode DescribeRuntimeConfigurationOutput
        |> JDP.optional "runtimeConfiguration" (JD.nullable runtimeConfigurationDecoder) Nothing




{-| Type of HTTP response from describeScalingPolici
-}
type alias DescribeScalingPoliciesOutput =
    { scalingPolicies : Maybe (List ScalingPolicy)
    , nextToken : Maybe String
    }



describeScalingPoliciesOutputDecoder : JD.Decoder DescribeScalingPoliciesOutput
describeScalingPoliciesOutputDecoder =
    JDP.decode DescribeScalingPoliciesOutput
        |> JDP.optional "scalingPolicies" (JD.nullable (JD.list scalingPolicyDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Current status of fleet capacity. The number of active instances should match or be in the process of matching the number of desired instances. Pending and terminating counts are non-zero only if fleet capacity is adjusting to an <a>UpdateFleetCapacity</a> request, or if access to resources is temporarily affected.</p>
-}
type alias EC2InstanceCounts =
    { dESIRED : Maybe Int
    , mINIMUM : Maybe Int
    , mAXIMUM : Maybe Int
    , pENDING : Maybe Int
    , aCTIVE : Maybe Int
    , iDLE : Maybe Int
    , tERMINATING : Maybe Int
    }



eC2InstanceCountsDecoder : JD.Decoder EC2InstanceCounts
eC2InstanceCountsDecoder =
    JDP.decode EC2InstanceCounts
        |> JDP.optional "dESIRED" (JD.nullable JD.int) Nothing
        |> JDP.optional "mINIMUM" (JD.nullable JD.int) Nothing
        |> JDP.optional "mAXIMUM" (JD.nullable JD.int) Nothing
        |> JDP.optional "pENDING" (JD.nullable JD.int) Nothing
        |> JDP.optional "aCTIVE" (JD.nullable JD.int) Nothing
        |> JDP.optional "iDLE" (JD.nullable JD.int) Nothing
        |> JDP.optional "tERMINATING" (JD.nullable JD.int) Nothing




{-| <p>Maximum number of instances allowed based on the Amazon Elastic Compute Cloud (Amazon EC2) instance type. Instance limits can be retrieved by calling <a>DescribeEC2InstanceLimits</a>.</p>
-}
type alias EC2InstanceLimit =
    { eC2InstanceType : Maybe EC2InstanceType
    , currentInstances : Maybe Int
    , instanceLimit : Maybe Int
    }



eC2InstanceLimitDecoder : JD.Decoder EC2InstanceLimit
eC2InstanceLimitDecoder =
    JDP.decode EC2InstanceLimit
        |> JDP.optional "eC2InstanceType" (JD.nullable eC2InstanceTypeDecoder) Nothing
        |> JDP.optional "currentInstances" (JD.nullable JD.int) Nothing
        |> JDP.optional "instanceLimit" (JD.nullable JD.int) Nothing




{-| One of

* `EC2InstanceType_t2.micro`
* `EC2InstanceType_t2.small`
* `EC2InstanceType_t2.medium`
* `EC2InstanceType_t2.large`
* `EC2InstanceType_c3.large`
* `EC2InstanceType_c3.xlarge`
* `EC2InstanceType_c3.2xlarge`
* `EC2InstanceType_c3.4xlarge`
* `EC2InstanceType_c3.8xlarge`
* `EC2InstanceType_c4.large`
* `EC2InstanceType_c4.xlarge`
* `EC2InstanceType_c4.2xlarge`
* `EC2InstanceType_c4.4xlarge`
* `EC2InstanceType_c4.8xlarge`
* `EC2InstanceType_r3.large`
* `EC2InstanceType_r3.xlarge`
* `EC2InstanceType_r3.2xlarge`
* `EC2InstanceType_r3.4xlarge`
* `EC2InstanceType_r3.8xlarge`
* `EC2InstanceType_m3.medium`
* `EC2InstanceType_m3.large`
* `EC2InstanceType_m3.xlarge`
* `EC2InstanceType_m3.2xlarge`
* `EC2InstanceType_m4.large`
* `EC2InstanceType_m4.xlarge`
* `EC2InstanceType_m4.2xlarge`
* `EC2InstanceType_m4.4xlarge`
* `EC2InstanceType_m4.10xlarge`

-}
type EC2InstanceType
    = EC2InstanceType_t2_micro
    | EC2InstanceType_t2_small
    | EC2InstanceType_t2_medium
    | EC2InstanceType_t2_large
    | EC2InstanceType_c3_large
    | EC2InstanceType_c3_xlarge
    | EC2InstanceType_c3_2xlarge
    | EC2InstanceType_c3_4xlarge
    | EC2InstanceType_c3_8xlarge
    | EC2InstanceType_c4_large
    | EC2InstanceType_c4_xlarge
    | EC2InstanceType_c4_2xlarge
    | EC2InstanceType_c4_4xlarge
    | EC2InstanceType_c4_8xlarge
    | EC2InstanceType_r3_large
    | EC2InstanceType_r3_xlarge
    | EC2InstanceType_r3_2xlarge
    | EC2InstanceType_r3_4xlarge
    | EC2InstanceType_r3_8xlarge
    | EC2InstanceType_m3_medium
    | EC2InstanceType_m3_large
    | EC2InstanceType_m3_xlarge
    | EC2InstanceType_m3_2xlarge
    | EC2InstanceType_m4_large
    | EC2InstanceType_m4_xlarge
    | EC2InstanceType_m4_2xlarge
    | EC2InstanceType_m4_4xlarge
    | EC2InstanceType_m4_10xlarge



eC2InstanceTypeDecoder : JD.Decoder EC2InstanceType
eC2InstanceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "t2_micro" ->
                        JD.succeed EC2InstanceType_t2_micro

                    "t2_small" ->
                        JD.succeed EC2InstanceType_t2_small

                    "t2_medium" ->
                        JD.succeed EC2InstanceType_t2_medium

                    "t2_large" ->
                        JD.succeed EC2InstanceType_t2_large

                    "c3_large" ->
                        JD.succeed EC2InstanceType_c3_large

                    "c3_xlarge" ->
                        JD.succeed EC2InstanceType_c3_xlarge

                    "c3_2xlarge" ->
                        JD.succeed EC2InstanceType_c3_2xlarge

                    "c3_4xlarge" ->
                        JD.succeed EC2InstanceType_c3_4xlarge

                    "c3_8xlarge" ->
                        JD.succeed EC2InstanceType_c3_8xlarge

                    "c4_large" ->
                        JD.succeed EC2InstanceType_c4_large

                    "c4_xlarge" ->
                        JD.succeed EC2InstanceType_c4_xlarge

                    "c4_2xlarge" ->
                        JD.succeed EC2InstanceType_c4_2xlarge

                    "c4_4xlarge" ->
                        JD.succeed EC2InstanceType_c4_4xlarge

                    "c4_8xlarge" ->
                        JD.succeed EC2InstanceType_c4_8xlarge

                    "r3_large" ->
                        JD.succeed EC2InstanceType_r3_large

                    "r3_xlarge" ->
                        JD.succeed EC2InstanceType_r3_xlarge

                    "r3_2xlarge" ->
                        JD.succeed EC2InstanceType_r3_2xlarge

                    "r3_4xlarge" ->
                        JD.succeed EC2InstanceType_r3_4xlarge

                    "r3_8xlarge" ->
                        JD.succeed EC2InstanceType_r3_8xlarge

                    "m3_medium" ->
                        JD.succeed EC2InstanceType_m3_medium

                    "m3_large" ->
                        JD.succeed EC2InstanceType_m3_large

                    "m3_xlarge" ->
                        JD.succeed EC2InstanceType_m3_xlarge

                    "m3_2xlarge" ->
                        JD.succeed EC2InstanceType_m3_2xlarge

                    "m4_large" ->
                        JD.succeed EC2InstanceType_m4_large

                    "m4_xlarge" ->
                        JD.succeed EC2InstanceType_m4_xlarge

                    "m4_2xlarge" ->
                        JD.succeed EC2InstanceType_m4_2xlarge

                    "m4_4xlarge" ->
                        JD.succeed EC2InstanceType_m4_4xlarge

                    "m4_10xlarge" ->
                        JD.succeed EC2InstanceType_m4_10xlarge


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Log entry describing an event involving Amazon GameLift resources (such as a fleet). In addition to tracking activity, event codes and messages can provide additional information for troubleshooting and debugging problems.</p>
-}
type alias Event =
    { eventId : Maybe String
    , resourceId : Maybe String
    , eventCode : Maybe EventCode
    , message : Maybe String
    , eventTime : Maybe Date
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JDP.decode Event
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventCode" (JD.nullable eventCodeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventTime" (JD.nullable JDX.date) Nothing




{-| One of

* `EventCode_GENERIC_EVENT`
* `EventCode_FLEET_CREATED`
* `EventCode_FLEET_DELETED`
* `EventCode_FLEET_SCALING_EVENT`
* `EventCode_FLEET_STATE_DOWNLOADING`
* `EventCode_FLEET_STATE_VALIDATING`
* `EventCode_FLEET_STATE_BUILDING`
* `EventCode_FLEET_STATE_ACTIVATING`
* `EventCode_FLEET_STATE_ACTIVE`
* `EventCode_FLEET_STATE_ERROR`
* `EventCode_FLEET_INITIALIZATION_FAILED`
* `EventCode_FLEET_BINARY_DOWNLOAD_FAILED`
* `EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND`
* `EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE`
* `EventCode_FLEET_VALIDATION_TIMED_OUT`
* `EventCode_FLEET_ACTIVATION_FAILED`
* `EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES`
* `EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED`
* `EventCode_SERVER_PROCESS_INVALID_PATH`
* `EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT`
* `EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT`
* `EventCode_SERVER_PROCESS_CRASHED`
* `EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY`
* `EventCode_SERVER_PROCESS_FORCE_TERMINATED`
* `EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT`

-}
type EventCode
    = EventCode_GENERIC_EVENT
    | EventCode_FLEET_CREATED
    | EventCode_FLEET_DELETED
    | EventCode_FLEET_SCALING_EVENT
    | EventCode_FLEET_STATE_DOWNLOADING
    | EventCode_FLEET_STATE_VALIDATING
    | EventCode_FLEET_STATE_BUILDING
    | EventCode_FLEET_STATE_ACTIVATING
    | EventCode_FLEET_STATE_ACTIVE
    | EventCode_FLEET_STATE_ERROR
    | EventCode_FLEET_INITIALIZATION_FAILED
    | EventCode_FLEET_BINARY_DOWNLOAD_FAILED
    | EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND
    | EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE
    | EventCode_FLEET_VALIDATION_TIMED_OUT
    | EventCode_FLEET_ACTIVATION_FAILED
    | EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES
    | EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED
    | EventCode_SERVER_PROCESS_INVALID_PATH
    | EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT
    | EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT
    | EventCode_SERVER_PROCESS_CRASHED
    | EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY
    | EventCode_SERVER_PROCESS_FORCE_TERMINATED
    | EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT



eventCodeDecoder : JD.Decoder EventCode
eventCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "GENERIC_EVENT" ->
                        JD.succeed EventCode_GENERIC_EVENT

                    "FLEET_CREATED" ->
                        JD.succeed EventCode_FLEET_CREATED

                    "FLEET_DELETED" ->
                        JD.succeed EventCode_FLEET_DELETED

                    "FLEET_SCALING_EVENT" ->
                        JD.succeed EventCode_FLEET_SCALING_EVENT

                    "FLEET_STATE_DOWNLOADING" ->
                        JD.succeed EventCode_FLEET_STATE_DOWNLOADING

                    "FLEET_STATE_VALIDATING" ->
                        JD.succeed EventCode_FLEET_STATE_VALIDATING

                    "FLEET_STATE_BUILDING" ->
                        JD.succeed EventCode_FLEET_STATE_BUILDING

                    "FLEET_STATE_ACTIVATING" ->
                        JD.succeed EventCode_FLEET_STATE_ACTIVATING

                    "FLEET_STATE_ACTIVE" ->
                        JD.succeed EventCode_FLEET_STATE_ACTIVE

                    "FLEET_STATE_ERROR" ->
                        JD.succeed EventCode_FLEET_STATE_ERROR

                    "FLEET_INITIALIZATION_FAILED" ->
                        JD.succeed EventCode_FLEET_INITIALIZATION_FAILED

                    "FLEET_BINARY_DOWNLOAD_FAILED" ->
                        JD.succeed EventCode_FLEET_BINARY_DOWNLOAD_FAILED

                    "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND" ->
                        JD.succeed EventCode_FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND

                    "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE" ->
                        JD.succeed EventCode_FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE

                    "FLEET_VALIDATION_TIMED_OUT" ->
                        JD.succeed EventCode_FLEET_VALIDATION_TIMED_OUT

                    "FLEET_ACTIVATION_FAILED" ->
                        JD.succeed EventCode_FLEET_ACTIVATION_FAILED

                    "FLEET_ACTIVATION_FAILED_NO_INSTANCES" ->
                        JD.succeed EventCode_FLEET_ACTIVATION_FAILED_NO_INSTANCES

                    "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED" ->
                        JD.succeed EventCode_FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED

                    "SERVER_PROCESS_INVALID_PATH" ->
                        JD.succeed EventCode_SERVER_PROCESS_INVALID_PATH

                    "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT" ->
                        JD.succeed EventCode_SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT

                    "SERVER_PROCESS_PROCESS_READY_TIMEOUT" ->
                        JD.succeed EventCode_SERVER_PROCESS_PROCESS_READY_TIMEOUT

                    "SERVER_PROCESS_CRASHED" ->
                        JD.succeed EventCode_SERVER_PROCESS_CRASHED

                    "SERVER_PROCESS_TERMINATED_UNHEALTHY" ->
                        JD.succeed EventCode_SERVER_PROCESS_TERMINATED_UNHEALTHY

                    "SERVER_PROCESS_FORCE_TERMINATED" ->
                        JD.succeed EventCode_SERVER_PROCESS_FORCE_TERMINATED

                    "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT" ->
                        JD.succeed EventCode_SERVER_PROCESS_PROCESS_EXIT_TIMEOUT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>General properties describing a fleet.</p>
-}
type alias FleetAttributes =
    { fleetId : Maybe String
    , description : Maybe String
    , name : Maybe String
    , creationTime : Maybe Date
    , terminationTime : Maybe Date
    , status : Maybe FleetStatus
    , buildId : Maybe String
    , serverLaunchPath : Maybe String
    , serverLaunchParameters : Maybe String
    , logPaths : Maybe (List String)
    , newGameSessionProtectionPolicy : Maybe ProtectionPolicy
    , operatingSystem : Maybe OperatingSystem
    , resourceCreationLimitPolicy : Maybe ResourceCreationLimitPolicy
    }



fleetAttributesDecoder : JD.Decoder FleetAttributes
fleetAttributesDecoder =
    JDP.decode FleetAttributes
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "terminationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable fleetStatusDecoder) Nothing
        |> JDP.optional "buildId" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverLaunchPath" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverLaunchParameters" (JD.nullable JD.string) Nothing
        |> JDP.optional "logPaths" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "newGameSessionProtectionPolicy" (JD.nullable protectionPolicyDecoder) Nothing
        |> JDP.optional "operatingSystem" (JD.nullable operatingSystemDecoder) Nothing
        |> JDP.optional "resourceCreationLimitPolicy" (JD.nullable resourceCreationLimitPolicyDecoder) Nothing




{-| <p>Information about the fleet's capacity. Fleet capacity is measured in EC2 instances. By default, new fleets have a capacity of one instance, but can be updated as needed. The maximum number of instances for a fleet is determined by the fleet's instance type.</p>
-}
type alias FleetCapacity =
    { fleetId : Maybe String
    , instanceType : Maybe EC2InstanceType
    , instanceCounts : Maybe EC2InstanceCounts
    }



fleetCapacityDecoder : JD.Decoder FleetCapacity
fleetCapacityDecoder =
    JDP.decode FleetCapacity
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable eC2InstanceTypeDecoder) Nothing
        |> JDP.optional "instanceCounts" (JD.nullable eC2InstanceCountsDecoder) Nothing




{-| <p>The specified fleet has no available instances to fulfill a <code>CreateGameSession</code> request. Clients can retry such requests immediately or after a waiting period.</p>
-}
type alias FleetCapacityExceededException =
    { message : Maybe String
    }



fleetCapacityExceededExceptionDecoder : JD.Decoder FleetCapacityExceededException
fleetCapacityExceededExceptionDecoder =
    JDP.decode FleetCapacityExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `FleetStatus_NEW`
* `FleetStatus_DOWNLOADING`
* `FleetStatus_VALIDATING`
* `FleetStatus_BUILDING`
* `FleetStatus_ACTIVATING`
* `FleetStatus_ACTIVE`
* `FleetStatus_DELETING`
* `FleetStatus_ERROR`
* `FleetStatus_TERMINATED`

-}
type FleetStatus
    = FleetStatus_NEW
    | FleetStatus_DOWNLOADING
    | FleetStatus_VALIDATING
    | FleetStatus_BUILDING
    | FleetStatus_ACTIVATING
    | FleetStatus_ACTIVE
    | FleetStatus_DELETING
    | FleetStatus_ERROR
    | FleetStatus_TERMINATED



fleetStatusDecoder : JD.Decoder FleetStatus
fleetStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NEW" ->
                        JD.succeed FleetStatus_NEW

                    "DOWNLOADING" ->
                        JD.succeed FleetStatus_DOWNLOADING

                    "VALIDATING" ->
                        JD.succeed FleetStatus_VALIDATING

                    "BUILDING" ->
                        JD.succeed FleetStatus_BUILDING

                    "ACTIVATING" ->
                        JD.succeed FleetStatus_ACTIVATING

                    "ACTIVE" ->
                        JD.succeed FleetStatus_ACTIVE

                    "DELETING" ->
                        JD.succeed FleetStatus_DELETING

                    "ERROR" ->
                        JD.succeed FleetStatus_ERROR

                    "TERMINATED" ->
                        JD.succeed FleetStatus_TERMINATED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Current status of fleet utilization, including the number of game and player sessions being hosted.</p>
-}
type alias FleetUtilization =
    { fleetId : Maybe String
    , activeServerProcessCount : Maybe Int
    , activeGameSessionCount : Maybe Int
    , currentPlayerSessionCount : Maybe Int
    , maximumPlayerSessionCount : Maybe Int
    }



fleetUtilizationDecoder : JD.Decoder FleetUtilization
fleetUtilizationDecoder =
    JDP.decode FleetUtilization
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "activeServerProcessCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "activeGameSessionCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "currentPlayerSessionCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "maximumPlayerSessionCount" (JD.nullable JD.int) Nothing




{-| <p>Set of key-value pairs containing information a server process requires to set up a game session. This object allows you to pass in any set of data needed for your game. For more information, see the <a href="http://docs.aws.amazon.com/gamelift/latest/developerguide/">Amazon GameLift Developer Guide</a>.</p>
-}
type alias GameProperty =
    { key : String
    , value : String
    }



gamePropertyDecoder : JD.Decoder GameProperty
gamePropertyDecoder =
    JDP.decode GameProperty
        |> JDP.required "key" JD.string
        |> JDP.required "value" JD.string




{-| <p>Properties describing a game session.</p>
-}
type alias GameSession =
    { gameSessionId : Maybe String
    , name : Maybe String
    , fleetId : Maybe String
    , creationTime : Maybe Date
    , terminationTime : Maybe Date
    , currentPlayerSessionCount : Maybe Int
    , maximumPlayerSessionCount : Maybe Int
    , status : Maybe GameSessionStatus
    , gameProperties : Maybe (List GameProperty)
    , ipAddress : Maybe String
    , port_ : Maybe Int
    , playerSessionCreationPolicy : Maybe PlayerSessionCreationPolicy
    , creatorId : Maybe String
    }



gameSessionDecoder : JD.Decoder GameSession
gameSessionDecoder =
    JDP.decode GameSession
        |> JDP.optional "gameSessionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "terminationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "currentPlayerSessionCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "maximumPlayerSessionCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "status" (JD.nullable gameSessionStatusDecoder) Nothing
        |> JDP.optional "gameProperties" (JD.nullable (JD.list gamePropertyDecoder)) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing
        |> JDP.optional "playerSessionCreationPolicy" (JD.nullable playerSessionCreationPolicyDecoder) Nothing
        |> JDP.optional "creatorId" (JD.nullable JD.string) Nothing




{-| <p>A game session's properties and the protection policy currently in force.</p>
-}
type alias GameSessionDetail =
    { gameSession : Maybe GameSession
    , protectionPolicy : Maybe ProtectionPolicy
    }



gameSessionDetailDecoder : JD.Decoder GameSessionDetail
gameSessionDetailDecoder =
    JDP.decode GameSessionDetail
        |> JDP.optional "gameSession" (JD.nullable gameSessionDecoder) Nothing
        |> JDP.optional "protectionPolicy" (JD.nullable protectionPolicyDecoder) Nothing




{-| <p>The game instance is currently full and cannot allow the requested player(s) to join. Clients can retry such requests immediately or after a waiting period.</p>
-}
type alias GameSessionFullException =
    { message : Maybe String
    }



gameSessionFullExceptionDecoder : JD.Decoder GameSessionFullException
gameSessionFullExceptionDecoder =
    JDP.decode GameSessionFullException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `GameSessionStatus_ACTIVE`
* `GameSessionStatus_ACTIVATING`
* `GameSessionStatus_TERMINATED`
* `GameSessionStatus_TERMINATING`
* `GameSessionStatus_ERROR`

-}
type GameSessionStatus
    = GameSessionStatus_ACTIVE
    | GameSessionStatus_ACTIVATING
    | GameSessionStatus_TERMINATED
    | GameSessionStatus_TERMINATING
    | GameSessionStatus_ERROR



gameSessionStatusDecoder : JD.Decoder GameSessionStatus
gameSessionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed GameSessionStatus_ACTIVE

                    "ACTIVATING" ->
                        JD.succeed GameSessionStatus_ACTIVATING

                    "TERMINATED" ->
                        JD.succeed GameSessionStatus_TERMINATED

                    "TERMINATING" ->
                        JD.succeed GameSessionStatus_TERMINATING

                    "ERROR" ->
                        JD.succeed GameSessionStatus_ERROR


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getGameSessionLogU
-}
type alias GetGameSessionLogUrlOutput =
    { preSignedUrl : Maybe String
    }



getGameSessionLogUrlOutputDecoder : JD.Decoder GetGameSessionLogUrlOutput
getGameSessionLogUrlOutputDecoder =
    JDP.decode GetGameSessionLogUrlOutput
        |> JDP.optional "preSignedUrl" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getInstanceAcce
-}
type alias GetInstanceAccessOutput =
    { instanceAccess : Maybe InstanceAccess
    }



getInstanceAccessOutputDecoder : JD.Decoder GetInstanceAccessOutput
getInstanceAccessOutputDecoder =
    JDP.decode GetInstanceAccessOutput
        |> JDP.optional "instanceAccess" (JD.nullable instanceAccessDecoder) Nothing




{-| <p>A game session with this custom ID string already exists in this fleet. Resolve this conflict before retrying this request.</p>
-}
type alias IdempotentParameterMismatchException =
    { message : Maybe String
    }



idempotentParameterMismatchExceptionDecoder : JD.Decoder IdempotentParameterMismatchException
idempotentParameterMismatchExceptionDecoder =
    JDP.decode IdempotentParameterMismatchException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Properties that describe an instance of a virtual computing resource that hosts one or more game servers. A fleet contains zero or more instances.</p>
-}
type alias Instance =
    { fleetId : Maybe String
    , instanceId : Maybe String
    , ipAddress : Maybe String
    , operatingSystem : Maybe OperatingSystem
    , type_ : Maybe EC2InstanceType
    , status : Maybe InstanceStatus
    , creationTime : Maybe Date
    }



instanceDecoder : JD.Decoder Instance
instanceDecoder =
    JDP.decode Instance
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "operatingSystem" (JD.nullable operatingSystemDecoder) Nothing
        |> JDP.optional "type_" (JD.nullable eC2InstanceTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable instanceStatusDecoder) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing




{-| <p>Information required to remotely connect to a fleet instance. Access is requested by calling <a>GetInstanceAccess</a>. </p>
-}
type alias InstanceAccess =
    { fleetId : Maybe String
    , instanceId : Maybe String
    , ipAddress : Maybe String
    , operatingSystem : Maybe OperatingSystem
    , credentials : Maybe InstanceCredentials
    }



instanceAccessDecoder : JD.Decoder InstanceAccess
instanceAccessDecoder =
    JDP.decode InstanceAccess
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "operatingSystem" (JD.nullable operatingSystemDecoder) Nothing
        |> JDP.optional "credentials" (JD.nullable instanceCredentialsDecoder) Nothing




{-| <p>Set of credentials required to remotely access a fleet instance. Access credentials are requested by calling <a>GetInstanceAccess</a> and returned in an <a>InstanceAccess</a> object.</p>
-}
type alias InstanceCredentials =
    { userName : Maybe String
    , secret : Maybe String
    }



instanceCredentialsDecoder : JD.Decoder InstanceCredentials
instanceCredentialsDecoder =
    JDP.decode InstanceCredentials
        |> JDP.optional "userName" (JD.nullable JD.string) Nothing
        |> JDP.optional "secret" (JD.nullable JD.string) Nothing




{-| One of

* `InstanceStatus_PENDING`
* `InstanceStatus_ACTIVE`
* `InstanceStatus_TERMINATING`

-}
type InstanceStatus
    = InstanceStatus_PENDING
    | InstanceStatus_ACTIVE
    | InstanceStatus_TERMINATING



instanceStatusDecoder : JD.Decoder InstanceStatus
instanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed InstanceStatus_PENDING

                    "ACTIVE" ->
                        JD.succeed InstanceStatus_ACTIVE

                    "TERMINATING" ->
                        JD.succeed InstanceStatus_TERMINATING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The service encountered an unrecoverable internal failure while processing the request. Clients can retry such requests immediately or after a waiting period.</p>
-}
type alias InternalServiceException =
    { message : Maybe String
    }



internalServiceExceptionDecoder : JD.Decoder InternalServiceException
internalServiceExceptionDecoder =
    JDP.decode InternalServiceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the fleet. Resolve the conflict before retrying.</p>
-}
type alias InvalidFleetStatusException =
    { message : Maybe String
    }



invalidFleetStatusExceptionDecoder : JD.Decoder InvalidFleetStatusException
invalidFleetStatusExceptionDecoder =
    JDP.decode InvalidFleetStatusException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The requested operation would cause a conflict with the current state of a resource associated with the request and/or the game instance. Resolve the conflict before retrying.</p>
-}
type alias InvalidGameSessionStatusException =
    { message : Maybe String
    }



invalidGameSessionStatusExceptionDecoder : JD.Decoder InvalidGameSessionStatusException
invalidGameSessionStatusExceptionDecoder =
    JDP.decode InvalidGameSessionStatusException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>One or more parameter values in the request are invalid. Correct the invalid parameter values before retrying.</p>
-}
type alias InvalidRequestException =
    { message : Maybe String
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JDP.decode InvalidRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A range of IP addresses and port settings that allow inbound traffic to connect to server processes on GameLift. Each game session hosted on a fleet is assigned a unique combination of IP address and port number, which must fall into the fleet's allowed ranges. This combination is included in the <a>GameSession</a> object. </p>
-}
type alias IpPermission =
    { fromPort : Int
    , toPort : Int
    , ipRange : String
    , protocol : IpProtocol
    }



ipPermissionDecoder : JD.Decoder IpPermission
ipPermissionDecoder =
    JDP.decode IpPermission
        |> JDP.required "fromPort" JD.int
        |> JDP.required "toPort" JD.int
        |> JDP.required "ipRange" JD.string
        |> JDP.required "protocol" ipProtocolDecoder




{-| One of

* `IpProtocol_TCP`
* `IpProtocol_UDP`

-}
type IpProtocol
    = IpProtocol_TCP
    | IpProtocol_UDP



ipProtocolDecoder : JD.Decoder IpProtocol
ipProtocolDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TCP" ->
                        JD.succeed IpProtocol_TCP

                    "UDP" ->
                        JD.succeed IpProtocol_UDP


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The requested operation would cause the resource to exceed the allowed service limit. Resolve the issue before retrying.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAlias
-}
type alias ListAliasesOutput =
    { aliases : Maybe (List Alias)
    , nextToken : Maybe String
    }



listAliasesOutputDecoder : JD.Decoder ListAliasesOutput
listAliasesOutputDecoder =
    JDP.decode ListAliasesOutput
        |> JDP.optional "aliases" (JD.nullable (JD.list aliasDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listBuil
-}
type alias ListBuildsOutput =
    { builds : Maybe (List Build)
    , nextToken : Maybe String
    }



listBuildsOutputDecoder : JD.Decoder ListBuildsOutput
listBuildsOutputDecoder =
    JDP.decode ListBuildsOutput
        |> JDP.optional "builds" (JD.nullable (JD.list buildDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listFlee
-}
type alias ListFleetsOutput =
    { fleetIds : Maybe (List String)
    , nextToken : Maybe String
    }



listFleetsOutputDecoder : JD.Decoder ListFleetsOutput
listFleetsOutputDecoder =
    JDP.decode ListFleetsOutput
        |> JDP.optional "fleetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| One of

* `MetricName_ActivatingGameSessions`
* `MetricName_ActiveGameSessions`
* `MetricName_ActiveInstances`
* `MetricName_AvailablePlayerSessions`
* `MetricName_CurrentPlayerSessions`
* `MetricName_IdleInstances`

-}
type MetricName
    = MetricName_ActivatingGameSessions
    | MetricName_ActiveGameSessions
    | MetricName_ActiveInstances
    | MetricName_AvailablePlayerSessions
    | MetricName_CurrentPlayerSessions
    | MetricName_IdleInstances



metricNameDecoder : JD.Decoder MetricName
metricNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ActivatingGameSessions" ->
                        JD.succeed MetricName_ActivatingGameSessions

                    "ActiveGameSessions" ->
                        JD.succeed MetricName_ActiveGameSessions

                    "ActiveInstances" ->
                        JD.succeed MetricName_ActiveInstances

                    "AvailablePlayerSessions" ->
                        JD.succeed MetricName_AvailablePlayerSessions

                    "CurrentPlayerSessions" ->
                        JD.succeed MetricName_CurrentPlayerSessions

                    "IdleInstances" ->
                        JD.succeed MetricName_IdleInstances


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A service resource associated with the request could not be found. Clients should not retry such requests.</p>
-}
type alias NotFoundException =
    { message : Maybe String
    }



notFoundExceptionDecoder : JD.Decoder NotFoundException
notFoundExceptionDecoder =
    JDP.decode NotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `OperatingSystem_WINDOWS_2012`
* `OperatingSystem_AMAZON_LINUX`

-}
type OperatingSystem
    = OperatingSystem_WINDOWS_2012
    | OperatingSystem_AMAZON_LINUX



operatingSystemDecoder : JD.Decoder OperatingSystem
operatingSystemDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "WINDOWS_2012" ->
                        JD.succeed OperatingSystem_WINDOWS_2012

                    "AMAZON_LINUX" ->
                        JD.succeed OperatingSystem_AMAZON_LINUX


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Properties describing a player session.</p>
-}
type alias PlayerSession =
    { playerSessionId : Maybe String
    , playerId : Maybe String
    , gameSessionId : Maybe String
    , fleetId : Maybe String
    , creationTime : Maybe Date
    , terminationTime : Maybe Date
    , status : Maybe PlayerSessionStatus
    , ipAddress : Maybe String
    , port_ : Maybe Int
    }



playerSessionDecoder : JD.Decoder PlayerSession
playerSessionDecoder =
    JDP.decode PlayerSession
        |> JDP.optional "playerSessionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "playerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "gameSessionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "terminationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable playerSessionStatusDecoder) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "port_" (JD.nullable JD.int) Nothing




{-| One of

* `PlayerSessionCreationPolicy_ACCEPT_ALL`
* `PlayerSessionCreationPolicy_DENY_ALL`

-}
type PlayerSessionCreationPolicy
    = PlayerSessionCreationPolicy_ACCEPT_ALL
    | PlayerSessionCreationPolicy_DENY_ALL



playerSessionCreationPolicyDecoder : JD.Decoder PlayerSessionCreationPolicy
playerSessionCreationPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACCEPT_ALL" ->
                        JD.succeed PlayerSessionCreationPolicy_ACCEPT_ALL

                    "DENY_ALL" ->
                        JD.succeed PlayerSessionCreationPolicy_DENY_ALL


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `PlayerSessionStatus_RESERVED`
* `PlayerSessionStatus_ACTIVE`
* `PlayerSessionStatus_COMPLETED`
* `PlayerSessionStatus_TIMEDOUT`

-}
type PlayerSessionStatus
    = PlayerSessionStatus_RESERVED
    | PlayerSessionStatus_ACTIVE
    | PlayerSessionStatus_COMPLETED
    | PlayerSessionStatus_TIMEDOUT



playerSessionStatusDecoder : JD.Decoder PlayerSessionStatus
playerSessionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RESERVED" ->
                        JD.succeed PlayerSessionStatus_RESERVED

                    "ACTIVE" ->
                        JD.succeed PlayerSessionStatus_ACTIVE

                    "COMPLETED" ->
                        JD.succeed PlayerSessionStatus_COMPLETED

                    "TIMEDOUT" ->
                        JD.succeed PlayerSessionStatus_TIMEDOUT


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ProtectionPolicy_NoProtection`
* `ProtectionPolicy_FullProtection`

-}
type ProtectionPolicy
    = ProtectionPolicy_NoProtection
    | ProtectionPolicy_FullProtection



protectionPolicyDecoder : JD.Decoder ProtectionPolicy
protectionPolicyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NoProtection" ->
                        JD.succeed ProtectionPolicy_NoProtection

                    "FullProtection" ->
                        JD.succeed ProtectionPolicy_FullProtection


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from putScalingPoli
-}
type alias PutScalingPolicyOutput =
    { name : Maybe String
    }



putScalingPolicyOutputDecoder : JD.Decoder PutScalingPolicyOutput
putScalingPolicyOutputDecoder =
    JDP.decode PutScalingPolicyOutput
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from requestUploadCredentia
-}
type alias RequestUploadCredentialsOutput =
    { uploadCredentials : Maybe AwsCredentials
    , storageLocation : Maybe S3Location
    }



requestUploadCredentialsOutputDecoder : JD.Decoder RequestUploadCredentialsOutput
requestUploadCredentialsOutputDecoder =
    JDP.decode RequestUploadCredentialsOutput
        |> JDP.optional "uploadCredentials" (JD.nullable awsCredentialsDecoder) Nothing
        |> JDP.optional "storageLocation" (JD.nullable s3LocationDecoder) Nothing




{-| Type of HTTP response from resolveAli
-}
type alias ResolveAliasOutput =
    { fleetId : Maybe String
    }



resolveAliasOutputDecoder : JD.Decoder ResolveAliasOutput
resolveAliasOutputDecoder =
    JDP.decode ResolveAliasOutput
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing




{-| <p>Policy that limits the number of game sessions a player can create on the same fleet. This optional policy gives game owners control over how players can consume available game server resources. A resource creation policy makes the following statement: "An individual player can create a maximum number of new game sessions within a specified time period".</p> <p>The policy is evaluated when a player tries to create a new game session. For example, with a policy of 10 new game sessions and a time period of 60 minutes, on receiving a <code>CreateGameSession</code> request, GameLift checks that the player (identified by <code>CreatorId</code>) has created fewer than 10 game sessions in the past 60 minutes.</p>
-}
type alias ResourceCreationLimitPolicy =
    { newGameSessionsPerCreator : Maybe Int
    , policyPeriodInMinutes : Maybe Int
    }



resourceCreationLimitPolicyDecoder : JD.Decoder ResourceCreationLimitPolicy
resourceCreationLimitPolicyDecoder =
    JDP.decode ResourceCreationLimitPolicy
        |> JDP.optional "newGameSessionsPerCreator" (JD.nullable JD.int) Nothing
        |> JDP.optional "policyPeriodInMinutes" (JD.nullable JD.int) Nothing




{-| <p>Routing configuration for a fleet alias.</p>
-}
type alias RoutingStrategy =
    { type_ : Maybe RoutingStrategyType
    , fleetId : Maybe String
    , message : Maybe String
    }



routingStrategyDecoder : JD.Decoder RoutingStrategy
routingStrategyDecoder =
    JDP.decode RoutingStrategy
        |> JDP.optional "type_" (JD.nullable routingStrategyTypeDecoder) Nothing
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `RoutingStrategyType_SIMPLE`
* `RoutingStrategyType_TERMINAL`

-}
type RoutingStrategyType
    = RoutingStrategyType_SIMPLE
    | RoutingStrategyType_TERMINAL



routingStrategyTypeDecoder : JD.Decoder RoutingStrategyType
routingStrategyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SIMPLE" ->
                        JD.succeed RoutingStrategyType_SIMPLE

                    "TERMINAL" ->
                        JD.succeed RoutingStrategyType_TERMINAL


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Collection of server process configurations that describe what processes should be run on each instance in a fleet. An instance can launch and maintain multiple server processes based on the runtime configuration; it regularly checks for an updated runtime configuration and starts new server processes to match the latest version.</p> <p>The key purpose of a runtime configuration with multiple server process configurations is to be able to run more than one kind of game server in a single fleet. You can include configurations for more than one server executable in order to run two or more different programs to run on the same instance. This option might be useful, for example, to run more than one version of your game server on the same fleet. Another option is to specify configurations for the same server executable but with different launch parameters.</p> <p>A GameLift instance is limited to 50 processes running simultaneously. To calculate the total number of processes specified in a runtime configuration, add the values of the <code>ConcurrentExecutions</code> parameter for each <code> <a>ServerProcess</a> </code> object in the runtime configuration.</p>
-}
type alias RuntimeConfiguration =
    { serverProcesses : Maybe (List ServerProcess)
    }



runtimeConfigurationDecoder : JD.Decoder RuntimeConfiguration
runtimeConfigurationDecoder =
    JDP.decode RuntimeConfiguration
        |> JDP.optional "serverProcesses" (JD.nullable (JD.list serverProcessDecoder)) Nothing




{-| <p>Location in Amazon Simple Storage Service (Amazon S3) where a build's files are stored. This location is assigned in response to a <a>CreateBuild</a> call, and is always in the same region as the service used to create the build. For more details see the <a href="http://aws.amazon.com/documentation/s3/">Amazon S3 documentation</a>.</p>
-}
type alias S3Location =
    { bucket : Maybe String
    , key : Maybe String
    , roleArn : Maybe String
    }



s3LocationDecoder : JD.Decoder S3Location
s3LocationDecoder =
    JDP.decode S3Location
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing




{-| One of

* `ScalingAdjustmentType_ChangeInCapacity`
* `ScalingAdjustmentType_ExactCapacity`
* `ScalingAdjustmentType_PercentChangeInCapacity`

-}
type ScalingAdjustmentType
    = ScalingAdjustmentType_ChangeInCapacity
    | ScalingAdjustmentType_ExactCapacity
    | ScalingAdjustmentType_PercentChangeInCapacity



scalingAdjustmentTypeDecoder : JD.Decoder ScalingAdjustmentType
scalingAdjustmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ChangeInCapacity" ->
                        JD.succeed ScalingAdjustmentType_ChangeInCapacity

                    "ExactCapacity" ->
                        JD.succeed ScalingAdjustmentType_ExactCapacity

                    "PercentChangeInCapacity" ->
                        JD.succeed ScalingAdjustmentType_PercentChangeInCapacity


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Rule that controls how a fleet is scaled. Scaling policies are uniquely identified by the combination of name and fleet ID.</p>
-}
type alias ScalingPolicy =
    { fleetId : Maybe String
    , name : Maybe String
    , status : Maybe ScalingStatusType
    , scalingAdjustment : Maybe Int
    , scalingAdjustmentType : Maybe ScalingAdjustmentType
    , comparisonOperator : Maybe ComparisonOperatorType
    , threshold : Maybe Float
    , evaluationPeriods : Maybe Int
    , metricName : Maybe MetricName
    }



scalingPolicyDecoder : JD.Decoder ScalingPolicy
scalingPolicyDecoder =
    JDP.decode ScalingPolicy
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable scalingStatusTypeDecoder) Nothing
        |> JDP.optional "scalingAdjustment" (JD.nullable JD.int) Nothing
        |> JDP.optional "scalingAdjustmentType" (JD.nullable scalingAdjustmentTypeDecoder) Nothing
        |> JDP.optional "comparisonOperator" (JD.nullable comparisonOperatorTypeDecoder) Nothing
        |> JDP.optional "threshold" (JD.nullable JD.float) Nothing
        |> JDP.optional "evaluationPeriods" (JD.nullable JD.int) Nothing
        |> JDP.optional "metricName" (JD.nullable metricNameDecoder) Nothing




{-| One of

* `ScalingStatusType_ACTIVE`
* `ScalingStatusType_UPDATE_REQUESTED`
* `ScalingStatusType_UPDATING`
* `ScalingStatusType_DELETE_REQUESTED`
* `ScalingStatusType_DELETING`
* `ScalingStatusType_DELETED`
* `ScalingStatusType_ERROR`

-}
type ScalingStatusType
    = ScalingStatusType_ACTIVE
    | ScalingStatusType_UPDATE_REQUESTED
    | ScalingStatusType_UPDATING
    | ScalingStatusType_DELETE_REQUESTED
    | ScalingStatusType_DELETING
    | ScalingStatusType_DELETED
    | ScalingStatusType_ERROR



scalingStatusTypeDecoder : JD.Decoder ScalingStatusType
scalingStatusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed ScalingStatusType_ACTIVE

                    "UPDATE_REQUESTED" ->
                        JD.succeed ScalingStatusType_UPDATE_REQUESTED

                    "UPDATING" ->
                        JD.succeed ScalingStatusType_UPDATING

                    "DELETE_REQUESTED" ->
                        JD.succeed ScalingStatusType_DELETE_REQUESTED

                    "DELETING" ->
                        JD.succeed ScalingStatusType_DELETING

                    "DELETED" ->
                        JD.succeed ScalingStatusType_DELETED

                    "ERROR" ->
                        JD.succeed ScalingStatusType_ERROR


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from searchGameSessio
-}
type alias SearchGameSessionsOutput =
    { gameSessions : Maybe (List GameSession)
    , nextToken : Maybe String
    }



searchGameSessionsOutputDecoder : JD.Decoder SearchGameSessionsOutput
searchGameSessionsOutputDecoder =
    JDP.decode SearchGameSessionsOutput
        |> JDP.optional "gameSessions" (JD.nullable (JD.list gameSessionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>A set of instructions for launching server processes on each instance in a fleet. Each instruction set identifies the location of the server executable, optional launch parameters, and the number of server processes with this configuration to maintain concurrently on the instance. Server process configurations make up a fleet's <code> <a>RuntimeConfiguration</a> </code>.</p>
-}
type alias ServerProcess =
    { launchPath : String
    , parameters : Maybe String
    , concurrentExecutions : Int
    }



serverProcessDecoder : JD.Decoder ServerProcess
serverProcessDecoder =
    JDP.decode ServerProcess
        |> JDP.required "launchPath" JD.string
        |> JDP.optional "parameters" (JD.nullable JD.string) Nothing
        |> JDP.required "concurrentExecutions" JD.int




{-| <p>The service is unable to resolve the routing for a particular alias because it has a terminal <a>RoutingStrategy</a> associated with it. The message returned in this exception is the message defined in the routing strategy itself. Such requests should only be retried if the routing strategy for the specified alias is modified. </p>
-}
type alias TerminalRoutingStrategyException =
    { message : Maybe String
    }



terminalRoutingStrategyExceptionDecoder : JD.Decoder TerminalRoutingStrategyException
terminalRoutingStrategyExceptionDecoder =
    JDP.decode TerminalRoutingStrategyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The client failed authentication. Clients should not retry such requests.</p>
-}
type alias UnauthorizedException =
    { message : Maybe String
    }



unauthorizedExceptionDecoder : JD.Decoder UnauthorizedException
unauthorizedExceptionDecoder =
    JDP.decode UnauthorizedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateAli
-}
type alias UpdateAliasOutput =
    { alias : Maybe Alias
    }



updateAliasOutputDecoder : JD.Decoder UpdateAliasOutput
updateAliasOutputDecoder =
    JDP.decode UpdateAliasOutput
        |> JDP.optional "alias" (JD.nullable aliasDecoder) Nothing




{-| Type of HTTP response from updateBui
-}
type alias UpdateBuildOutput =
    { build : Maybe Build
    }



updateBuildOutputDecoder : JD.Decoder UpdateBuildOutput
updateBuildOutputDecoder =
    JDP.decode UpdateBuildOutput
        |> JDP.optional "build" (JD.nullable buildDecoder) Nothing




{-| Type of HTTP response from updateFleetAttribut
-}
type alias UpdateFleetAttributesOutput =
    { fleetId : Maybe String
    }



updateFleetAttributesOutputDecoder : JD.Decoder UpdateFleetAttributesOutput
updateFleetAttributesOutputDecoder =
    JDP.decode UpdateFleetAttributesOutput
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateFleetCapaci
-}
type alias UpdateFleetCapacityOutput =
    { fleetId : Maybe String
    }



updateFleetCapacityOutputDecoder : JD.Decoder UpdateFleetCapacityOutput
updateFleetCapacityOutputDecoder =
    JDP.decode UpdateFleetCapacityOutput
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateFleetPortSettin
-}
type alias UpdateFleetPortSettingsOutput =
    { fleetId : Maybe String
    }



updateFleetPortSettingsOutputDecoder : JD.Decoder UpdateFleetPortSettingsOutput
updateFleetPortSettingsOutputDecoder =
    JDP.decode UpdateFleetPortSettingsOutput
        |> JDP.optional "fleetId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateGameSessi
-}
type alias UpdateGameSessionOutput =
    { gameSession : Maybe GameSession
    }



updateGameSessionOutputDecoder : JD.Decoder UpdateGameSessionOutput
updateGameSessionOutputDecoder =
    JDP.decode UpdateGameSessionOutput
        |> JDP.optional "gameSession" (JD.nullable gameSessionDecoder) Nothing




{-| Type of HTTP response from updateRuntimeConfigurati
-}
type alias UpdateRuntimeConfigurationOutput =
    { runtimeConfiguration : Maybe RuntimeConfiguration
    }



updateRuntimeConfigurationOutputDecoder : JD.Decoder UpdateRuntimeConfigurationOutput
updateRuntimeConfigurationOutputDecoder =
    JDP.decode UpdateRuntimeConfigurationOutput
        |> JDP.optional "runtimeConfiguration" (JD.nullable runtimeConfigurationDecoder) Nothing




