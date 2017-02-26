module AWS.Services.ApplicationDiscoveryService
    exposing
        ( config
        , associateConfigurationItemsToApplication
        , createApplication
        , CreateApplicationOptions
        , createTags
        , deleteApplications
        , deleteTags
        , DeleteTagsOptions
        , describeAgents
        , DescribeAgentsOptions
        , describeConfigurations
        , describeExportConfigurations
        , DescribeExportConfigurationsOptions
        , describeTags
        , DescribeTagsOptions
        , disassociateConfigurationItemsFromApplication
        , exportConfigurations
        , getDiscoverySummary
        , listConfigurations
        , ListConfigurationsOptions
        , listServerNeighbors
        , ListServerNeighborsOptions
        , startDataCollectionByAgentIds
        , stopDataCollectionByAgentIds
        , updateApplication
        , UpdateApplicationOptions
        , AgentConfigurationStatus
        , AgentInfo
        , AgentNetworkInfo
        , AgentStatus(..)
        , AssociateConfigurationItemsToApplicationResponse
        , AuthorizationErrorException
        , ConfigurationItemType(..)
        , ConfigurationTag
        , CreateApplicationResponse
        , CreateTagsResponse
        , CustomerAgentInfo
        , CustomerConnectorInfo
        , DeleteApplicationsResponse
        , DeleteTagsResponse
        , DescribeAgentsResponse
        , DescribeConfigurationsResponse
        , DescribeExportConfigurationsResponse
        , DescribeTagsResponse
        , DisassociateConfigurationItemsFromApplicationResponse
        , ExportConfigurationsResponse
        , ExportInfo
        , ExportStatus(..)
        , Filter
        , GetDiscoverySummaryResponse
        , InvalidParameterException
        , InvalidParameterValueException
        , ListConfigurationsResponse
        , ListServerNeighborsResponse
        , NeighborConnectionDetail
        , OperationNotPermittedException
        , OrderByElement
        , ResourceNotFoundException
        , ServerInternalErrorException
        , StartDataCollectionByAgentIdsResponse
        , StopDataCollectionByAgentIdsResponse
        , Tag
        , TagFilter
        , UpdateApplicationResponse
        , OrderString(..)
        )

{-| <fullname>AWS Application Discovery Service</fullname> <p>AWS Application Discovery Service helps you plan application migration projects by automatically identifying servers, virtual machines (VMs), software, and software dependencies running in your on-premises data centers. Application Discovery Service also collects application performance data, which can help you assess the outcome of your migration. The data collected by Application Discovery Service is securely retained in an Amazon-hosted and managed database in the cloud. You can export the data as a CSV or XML file into your preferred visualization tool or cloud-migration solution to plan your migration. For more information, see the Application Discovery Service <a href="http://aws.amazon.com/application-discovery/faqs/">FAQ</a>.</p> <p>Application Discovery Service offers two modes of operation.</p> <ul> <li> <p> <b>Agentless discovery</b> mode is recommended for environments that use VMware vCenter Server. This mode doesn't require you to install an agent on each host. Agentless discovery gathers server information regardless of the operating systems, which minimizes the time required for initial on-premises infrastructure assessment. Agentless discovery doesn't collect information about software and software dependencies. It also doesn't work in non-VMware environments. We recommend that you use agent-based discovery for non-VMware environments and if you want to collect information about software and software dependencies. You can also run agent-based and agentless discovery simultaneously. Use agentless discovery to quickly complete the initial infrastructure assessment and then install agents on select hosts to gather information about software and software dependencies.</p> </li> <li> <p> <b>Agent-based discovery</b> mode collects a richer set of data than agentless discovery by using Amazon software, the AWS Application Discovery Agent, which you install on one or more hosts in your data center. The agent captures infrastructure and application information, including an inventory of installed software applications, system and process performance, resource utilization, and network dependencies between workloads. The information collected by agents is secured at rest and in transit to the Application Discovery Service database in the cloud. </p> </li> </ul> <p>Application Discovery Service integrates with application discovery solutions from AWS Partner Network (APN) partners. Third-party application discovery tools can query the Application Discovery Service and write to the Application Discovery Service database using a public API. You can then import the data into either a visualization tool or cloud-migration solution.</p> <important> <p>Application Discovery Service doesn't gather sensitive information. All data is handled according to the <a href="http://aws.amazon.com/privacy/">AWS Privacy Policy</a>. You can operate Application Discovery Service using offline mode to inspect collected data before it is shared with the service.</p> </important> <p>Your AWS account must be granted access to Application Discovery Service, a process called <i>whitelisting</i>. This is true for AWS partners and customers alike. To request access, sign up for the AWS Application Discovery Service <a href="http://aws.amazon.com/application-discovery/preview/">here</a>. We will send you information about how to get started.</p> <p>This API reference provides descriptions, syntax, and usage examples for each of the actions and data types for the Application Discovery Service. The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the AWS SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see <a href="http://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.</p> <p>This guide is intended for use with the <a href="http://docs.aws.amazon.com/application-discovery/latest/userguide/"> <i>AWS Application Discovery Service User Guide</i> </a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [associateConfigurationItemsToApplication](#associateConfigurationItemsToApplication)
* [createApplication](#createApplication)
* [CreateApplicationOptions](#CreateApplicationOptions)
* [createTags](#createTags)
* [deleteApplications](#deleteApplications)
* [deleteTags](#deleteTags)
* [DeleteTagsOptions](#DeleteTagsOptions)
* [describeAgents](#describeAgents)
* [DescribeAgentsOptions](#DescribeAgentsOptions)
* [describeConfigurations](#describeConfigurations)
* [describeExportConfigurations](#describeExportConfigurations)
* [DescribeExportConfigurationsOptions](#DescribeExportConfigurationsOptions)
* [describeTags](#describeTags)
* [DescribeTagsOptions](#DescribeTagsOptions)
* [disassociateConfigurationItemsFromApplication](#disassociateConfigurationItemsFromApplication)
* [exportConfigurations](#exportConfigurations)
* [getDiscoverySummary](#getDiscoverySummary)
* [listConfigurations](#listConfigurations)
* [ListConfigurationsOptions](#ListConfigurationsOptions)
* [listServerNeighbors](#listServerNeighbors)
* [ListServerNeighborsOptions](#ListServerNeighborsOptions)
* [startDataCollectionByAgentIds](#startDataCollectionByAgentIds)
* [stopDataCollectionByAgentIds](#stopDataCollectionByAgentIds)
* [updateApplication](#updateApplication)
* [UpdateApplicationOptions](#UpdateApplicationOptions)


@docs associateConfigurationItemsToApplication,createApplication,CreateApplicationOptions,createTags,deleteApplications,deleteTags,DeleteTagsOptions,describeAgents,DescribeAgentsOptions,describeConfigurations,describeExportConfigurations,DescribeExportConfigurationsOptions,describeTags,DescribeTagsOptions,disassociateConfigurationItemsFromApplication,exportConfigurations,getDiscoverySummary,listConfigurations,ListConfigurationsOptions,listServerNeighbors,ListServerNeighborsOptions,startDataCollectionByAgentIds,stopDataCollectionByAgentIds,updateApplication,UpdateApplicationOptions

## Responses

* [AssociateConfigurationItemsToApplicationResponse](#AssociateConfigurationItemsToApplicationResponse)
* [CreateApplicationResponse](#CreateApplicationResponse)
* [CreateTagsResponse](#CreateTagsResponse)
* [DeleteApplicationsResponse](#DeleteApplicationsResponse)
* [DeleteTagsResponse](#DeleteTagsResponse)
* [DescribeAgentsResponse](#DescribeAgentsResponse)
* [DescribeConfigurationsResponse](#DescribeConfigurationsResponse)
* [DescribeExportConfigurationsResponse](#DescribeExportConfigurationsResponse)
* [DescribeTagsResponse](#DescribeTagsResponse)
* [DisassociateConfigurationItemsFromApplicationResponse](#DisassociateConfigurationItemsFromApplicationResponse)
* [ExportConfigurationsResponse](#ExportConfigurationsResponse)
* [GetDiscoverySummaryResponse](#GetDiscoverySummaryResponse)
* [ListConfigurationsResponse](#ListConfigurationsResponse)
* [ListServerNeighborsResponse](#ListServerNeighborsResponse)
* [StartDataCollectionByAgentIdsResponse](#StartDataCollectionByAgentIdsResponse)
* [StopDataCollectionByAgentIdsResponse](#StopDataCollectionByAgentIdsResponse)
* [UpdateApplicationResponse](#UpdateApplicationResponse)


@docs AssociateConfigurationItemsToApplicationResponse,CreateApplicationResponse,CreateTagsResponse,DeleteApplicationsResponse,DeleteTagsResponse,DescribeAgentsResponse,DescribeConfigurationsResponse,DescribeExportConfigurationsResponse,DescribeTagsResponse,DisassociateConfigurationItemsFromApplicationResponse,ExportConfigurationsResponse,GetDiscoverySummaryResponse,ListConfigurationsResponse,ListServerNeighborsResponse,StartDataCollectionByAgentIdsResponse,StopDataCollectionByAgentIdsResponse,UpdateApplicationResponse

## Records

* [AgentConfigurationStatus](#AgentConfigurationStatus)
* [AgentInfo](#AgentInfo)
* [AgentNetworkInfo](#AgentNetworkInfo)
* [ConfigurationTag](#ConfigurationTag)
* [CustomerAgentInfo](#CustomerAgentInfo)
* [CustomerConnectorInfo](#CustomerConnectorInfo)
* [ExportInfo](#ExportInfo)
* [Filter](#Filter)
* [NeighborConnectionDetail](#NeighborConnectionDetail)
* [OrderByElement](#OrderByElement)
* [Tag](#Tag)
* [TagFilter](#TagFilter)


@docs AgentConfigurationStatus,AgentInfo,AgentNetworkInfo,ConfigurationTag,CustomerAgentInfo,CustomerConnectorInfo,ExportInfo,Filter,NeighborConnectionDetail,OrderByElement,Tag,TagFilter

## Unions

* [AgentStatus](#AgentStatus)
* [ConfigurationItemType](#ConfigurationItemType)
* [ExportStatus](#ExportStatus)
* [OrderString](#OrderString)


@docs AgentStatus,ConfigurationItemType,ExportStatus,OrderString

## Exceptions

* [AuthorizationErrorException](#AuthorizationErrorException)
* [InvalidParameterException](#InvalidParameterException)
* [InvalidParameterValueException](#InvalidParameterValueException)
* [OperationNotPermittedException](#OperationNotPermittedException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ServerInternalErrorException](#ServerInternalErrorException)


@docs AuthorizationErrorException,InvalidParameterException,InvalidParameterValueException,OperationNotPermittedException,ResourceNotFoundException,ServerInternalErrorException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "discovery"
        "2015-11-01"
        "1.1"
        "AWSDISCOVERY_20151101."
        "discovery.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Associates one or more configuration items with an application.</p>

__Required Parameters__

* `applicationConfigurationId` __:__ `String`
* `configurationIds` __:__ `(List String)`


-}
associateConfigurationItemsToApplication :
    String
    -> (List String)
    -> AWS.Request AssociateConfigurationItemsToApplicationResponse
associateConfigurationItemsToApplication applicationConfigurationId configurationIds =
    AWS.Http.unsignedRequest
        "AssociateConfigurationItemsToApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateConfigurationItemsToApplicationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates an application with the given name and description.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createApplication :
    String
    -> (CreateApplicationOptions -> CreateApplicationOptions)
    -> AWS.Request CreateApplicationResponse
createApplication name setOptions =
  let
    options = setOptions (CreateApplicationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createApplicationResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createApplication request
-}
type alias CreateApplicationOptions =
    { description : Maybe String
    }



{-| <p>Creates one or more tags for configuration items. Tags are metadata that help you categorize IT assets. This API accepts a list of multiple configuration items.</p>

__Required Parameters__

* `configurationIds` __:__ `(List String)`
* `tags` __:__ `(List Tag)`


-}
createTags :
    (List String)
    -> (List Tag)
    -> AWS.Request CreateTagsResponse
createTags configurationIds tags =
    AWS.Http.unsignedRequest
        "CreateTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTagsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a list of applications and their associations with configuration items.</p>

__Required Parameters__

* `configurationIds` __:__ `(List String)`


-}
deleteApplications :
    (List String)
    -> AWS.Request DeleteApplicationsResponse
deleteApplications configurationIds =
    AWS.Http.unsignedRequest
        "DeleteApplications"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteApplicationsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the association between configuration items and one or more tags. This API accepts a list of multiple configuration items.</p>

__Required Parameters__

* `configurationIds` __:__ `(List String)`


-}
deleteTags :
    (List String)
    -> (DeleteTagsOptions -> DeleteTagsOptions)
    -> AWS.Request DeleteTagsResponse
deleteTags configurationIds setOptions =
  let
    options = setOptions (DeleteTagsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTagsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteTags request
-}
type alias DeleteTagsOptions =
    { tags : Maybe (List Tag)
    }



{-| <p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your user account if you did not specify an ID.</p>

__Required Parameters__



-}
describeAgents :
    (DescribeAgentsOptions -> DescribeAgentsOptions)
    -> AWS.Request DescribeAgentsResponse
describeAgents setOptions =
  let
    options = setOptions (DescribeAgentsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAgents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAgentsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeAgents request
-}
type alias DescribeAgentsOptions =
    { agentIds : Maybe (List String)
    , filters : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves attributes for a list of configuration item IDs. All of the supplied IDs must be for the same asset type (server, application, process, or connection). Output fields are specific to the asset type selected. For example, the output for a <i>server</i> configuration item includes a list of attributes about the server, such as host name, operating system, and number of network cards.</p> <p>For a complete list of outputs for each asset type, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/querying-configuration-items.html#DescribeConfigurations">Querying Discovered Configuration Items</a>.</p>

__Required Parameters__

* `configurationIds` __:__ `(List String)`


-}
describeConfigurations :
    (List String)
    -> AWS.Request DescribeConfigurationsResponse
describeConfigurations configurationIds =
    AWS.Http.unsignedRequest
        "DescribeConfigurations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConfigurationsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves the status of a given export process. You can retrieve status from a maximum of 100 processes.</p>

__Required Parameters__



-}
describeExportConfigurations :
    (DescribeExportConfigurationsOptions -> DescribeExportConfigurationsOptions)
    -> AWS.Request DescribeExportConfigurationsResponse
describeExportConfigurations setOptions =
  let
    options = setOptions (DescribeExportConfigurationsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeExportConfigurations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeExportConfigurationsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeExportConfigurations request
-}
type alias DescribeExportConfigurationsOptions =
    { exportIds : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Retrieves a list of configuration items that are tagged with a specific tag. Or retrieves a list of all tags assigned to a specific configuration item.</p>

__Required Parameters__



-}
describeTags :
    (DescribeTagsOptions -> DescribeTagsOptions)
    -> AWS.Request DescribeTagsResponse
describeTags setOptions =
  let
    options = setOptions (DescribeTagsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTagsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    { filters : Maybe (List TagFilter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Disassociates one or more configuration items from an application.</p>

__Required Parameters__

* `applicationConfigurationId` __:__ `String`
* `configurationIds` __:__ `(List String)`


-}
disassociateConfigurationItemsFromApplication :
    String
    -> (List String)
    -> AWS.Request DisassociateConfigurationItemsFromApplicationResponse
disassociateConfigurationItemsFromApplication applicationConfigurationId configurationIds =
    AWS.Http.unsignedRequest
        "DisassociateConfigurationItemsFromApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateConfigurationItemsFromApplicationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that enables you to view and evaluate the data. Data includes tags and tag associations, processes, connections, servers, and system performance. This API returns an export ID which you can query using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of two configuration exports in six hours.</p>

__Required Parameters__



-}
exportConfigurations :
    AWS.Request ExportConfigurationsResponse
exportConfigurations =
    AWS.Http.unsignedRequest
        "ExportConfigurations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        exportConfigurationsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves a short summary of discovered assets.</p>

__Required Parameters__



-}
getDiscoverySummary :
    AWS.Request GetDiscoverySummaryResponse
getDiscoverySummary =
    AWS.Http.unsignedRequest
        "GetDiscoverySummary"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDiscoverySummaryResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves a list of configuration items according to criteria you specify in a filter. The filter criteria identify relationship requirements.</p>

__Required Parameters__

* `configurationType` __:__ `ConfigurationItemType`


-}
listConfigurations :
    ConfigurationItemType
    -> (ListConfigurationsOptions -> ListConfigurationsOptions)
    -> AWS.Request ListConfigurationsResponse
listConfigurations configurationType setOptions =
  let
    options = setOptions (ListConfigurationsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListConfigurations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listConfigurationsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listConfigurations request
-}
type alias ListConfigurationsOptions =
    { filters : Maybe (List Filter)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , orderBy : Maybe (List OrderByElement)
    }



{-| <p>Retrieves a list of servers which are one network hop away from a specified server.</p>

__Required Parameters__

* `configurationId` __:__ `String`


-}
listServerNeighbors :
    String
    -> (ListServerNeighborsOptions -> ListServerNeighborsOptions)
    -> AWS.Request ListServerNeighborsResponse
listServerNeighbors configurationId setOptions =
  let
    options = setOptions (ListServerNeighborsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListServerNeighbors"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listServerNeighborsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listServerNeighbors request
-}
type alias ListServerNeighborsOptions =
    { portInformationNeeded : Maybe Bool
    , neighborConfigurationIds : Maybe (List String)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Instructs the specified agents or Connectors to start collecting data.</p>

__Required Parameters__

* `agentIds` __:__ `(List String)`


-}
startDataCollectionByAgentIds :
    (List String)
    -> AWS.Request StartDataCollectionByAgentIdsResponse
startDataCollectionByAgentIds agentIds =
    AWS.Http.unsignedRequest
        "StartDataCollectionByAgentIds"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startDataCollectionByAgentIdsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Instructs the specified agents or Connectors to stop collecting data.</p>

__Required Parameters__

* `agentIds` __:__ `(List String)`


-}
stopDataCollectionByAgentIds :
    (List String)
    -> AWS.Request StopDataCollectionByAgentIdsResponse
stopDataCollectionByAgentIds agentIds =
    AWS.Http.unsignedRequest
        "StopDataCollectionByAgentIds"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopDataCollectionByAgentIdsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates metadata about an application.</p>

__Required Parameters__

* `configurationId` __:__ `String`


-}
updateApplication :
    String
    -> (UpdateApplicationOptions -> UpdateApplicationOptions)
    -> AWS.Request UpdateApplicationResponse
updateApplication configurationId setOptions =
  let
    options = setOptions (UpdateApplicationOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateApplication"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateApplicationResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateApplication request
-}
type alias UpdateApplicationOptions =
    { name : Maybe String
    , description : Maybe String
    }




{-| <p>Information about agents or Connectors that were instructed to start collecting data. Information includes the agent/Connector ID, a description of the operation, and whether or not the agent/Connector configuration was updated.</p>
-}
type alias AgentConfigurationStatus =
    { agentId : Maybe String
    , operationSucceeded : Maybe Bool
    , description : Maybe String
    }



agentConfigurationStatusDecoder : JD.Decoder AgentConfigurationStatus
agentConfigurationStatusDecoder =
    JDP.decode AgentConfigurationStatus
        |> JDP.optional "agentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "operationSucceeded" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Information about agents or connectors associated with the user’s AWS account. Information includes agent or connector IDs, IP addresses, media access control (MAC) addresses, agent or connector health, hostname where the agent or connector resides, and agent version for each agent.</p>
-}
type alias AgentInfo =
    { agentId : Maybe String
    , hostName : Maybe String
    , agentNetworkInfoList : Maybe (List AgentNetworkInfo)
    , connectorId : Maybe String
    , version : Maybe String
    , health : Maybe AgentStatus
    , lastHealthPingTime : Maybe String
    , collectionStatus : Maybe String
    , agentType : Maybe String
    , registeredTime : Maybe String
    }



agentInfoDecoder : JD.Decoder AgentInfo
agentInfoDecoder =
    JDP.decode AgentInfo
        |> JDP.optional "agentId" (JD.nullable JD.string) Nothing
        |> JDP.optional "hostName" (JD.nullable JD.string) Nothing
        |> JDP.optional "agentNetworkInfoList" (JD.nullable (JD.list agentNetworkInfoDecoder)) Nothing
        |> JDP.optional "connectorId" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "health" (JD.nullable agentStatusDecoder) Nothing
        |> JDP.optional "lastHealthPingTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "collectionStatus" (JD.nullable JD.string) Nothing
        |> JDP.optional "agentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "registeredTime" (JD.nullable JD.string) Nothing




{-| <p>Network details about the host where the agent/Connector resides.</p>
-}
type alias AgentNetworkInfo =
    { ipAddress : Maybe String
    , macAddress : Maybe String
    }



agentNetworkInfoDecoder : JD.Decoder AgentNetworkInfo
agentNetworkInfoDecoder =
    JDP.decode AgentNetworkInfo
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "macAddress" (JD.nullable JD.string) Nothing




{-| One of

* `AgentStatus_HEALTHY`
* `AgentStatus_UNHEALTHY`
* `AgentStatus_RUNNING`
* `AgentStatus_UNKNOWN`
* `AgentStatus_BLACKLISTED`
* `AgentStatus_SHUTDOWN`

-}
type AgentStatus
    = AgentStatus_HEALTHY
    | AgentStatus_UNHEALTHY
    | AgentStatus_RUNNING
    | AgentStatus_UNKNOWN
    | AgentStatus_BLACKLISTED
    | AgentStatus_SHUTDOWN



agentStatusDecoder : JD.Decoder AgentStatus
agentStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HEALTHY" ->
                        JD.succeed AgentStatus_HEALTHY

                    "UNHEALTHY" ->
                        JD.succeed AgentStatus_UNHEALTHY

                    "RUNNING" ->
                        JD.succeed AgentStatus_RUNNING

                    "UNKNOWN" ->
                        JD.succeed AgentStatus_UNKNOWN

                    "BLACKLISTED" ->
                        JD.succeed AgentStatus_BLACKLISTED

                    "SHUTDOWN" ->
                        JD.succeed AgentStatus_SHUTDOWN


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from associateConfigurationItemsToApplication
-}
type alias AssociateConfigurationItemsToApplicationResponse =
    { 
    }



associateConfigurationItemsToApplicationResponseDecoder : JD.Decoder AssociateConfigurationItemsToApplicationResponse
associateConfigurationItemsToApplicationResponseDecoder =
    JDP.decode AssociateConfigurationItemsToApplicationResponse



{-| <p>The AWS user account does not have permission to perform the action. Check the IAM policy associated with this account.</p>
-}
type alias AuthorizationErrorException =
    { message : Maybe String
    }



authorizationErrorExceptionDecoder : JD.Decoder AuthorizationErrorException
authorizationErrorExceptionDecoder =
    JDP.decode AuthorizationErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ConfigurationItemType_SERVER`
* `ConfigurationItemType_PROCESS`
* `ConfigurationItemType_CONNECTION`
* `ConfigurationItemType_APPLICATION`

-}
type ConfigurationItemType
    = ConfigurationItemType_SERVER
    | ConfigurationItemType_PROCESS
    | ConfigurationItemType_CONNECTION
    | ConfigurationItemType_APPLICATION



configurationItemTypeDecoder : JD.Decoder ConfigurationItemType
configurationItemTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SERVER" ->
                        JD.succeed ConfigurationItemType_SERVER

                    "PROCESS" ->
                        JD.succeed ConfigurationItemType_PROCESS

                    "CONNECTION" ->
                        JD.succeed ConfigurationItemType_CONNECTION

                    "APPLICATION" ->
                        JD.succeed ConfigurationItemType_APPLICATION


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Tags for a configuration item. Tags are metadata that help you categorize IT assets.</p>
-}
type alias ConfigurationTag =
    { configurationType : Maybe ConfigurationItemType
    , configurationId : Maybe String
    , key : Maybe String
    , value : Maybe String
    , timeOfCreation : Maybe Date
    }



configurationTagDecoder : JD.Decoder ConfigurationTag
configurationTagDecoder =
    JDP.decode ConfigurationTag
        |> JDP.optional "configurationType" (JD.nullable configurationItemTypeDecoder) Nothing
        |> JDP.optional "configurationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeOfCreation" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from createApplication
-}
type alias CreateApplicationResponse =
    { configurationId : Maybe String
    }



createApplicationResponseDecoder : JD.Decoder CreateApplicationResponse
createApplicationResponseDecoder =
    JDP.decode CreateApplicationResponse
        |> JDP.optional "configurationId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createTags
-}
type alias CreateTagsResponse =
    { 
    }



createTagsResponseDecoder : JD.Decoder CreateTagsResponse
createTagsResponseDecoder =
    JDP.decode CreateTagsResponse



{-| <p>Inventory data for installed discovery agents.</p>
-}
type alias CustomerAgentInfo =
    { activeAgents : Int
    , healthyAgents : Int
    , blackListedAgents : Int
    , shutdownAgents : Int
    , unhealthyAgents : Int
    , totalAgents : Int
    , unknownAgents : Int
    }



customerAgentInfoDecoder : JD.Decoder CustomerAgentInfo
customerAgentInfoDecoder =
    JDP.decode CustomerAgentInfo
        |> JDP.required "activeAgents" JD.int
        |> JDP.required "healthyAgents" JD.int
        |> JDP.required "blackListedAgents" JD.int
        |> JDP.required "shutdownAgents" JD.int
        |> JDP.required "unhealthyAgents" JD.int
        |> JDP.required "totalAgents" JD.int
        |> JDP.required "unknownAgents" JD.int




{-| <p>Inventory data for installed discovery connectors.</p>
-}
type alias CustomerConnectorInfo =
    { activeConnectors : Int
    , healthyConnectors : Int
    , blackListedConnectors : Int
    , shutdownConnectors : Int
    , unhealthyConnectors : Int
    , totalConnectors : Int
    , unknownConnectors : Int
    }



customerConnectorInfoDecoder : JD.Decoder CustomerConnectorInfo
customerConnectorInfoDecoder =
    JDP.decode CustomerConnectorInfo
        |> JDP.required "activeConnectors" JD.int
        |> JDP.required "healthyConnectors" JD.int
        |> JDP.required "blackListedConnectors" JD.int
        |> JDP.required "shutdownConnectors" JD.int
        |> JDP.required "unhealthyConnectors" JD.int
        |> JDP.required "totalConnectors" JD.int
        |> JDP.required "unknownConnectors" JD.int




{-| Type of HTTP response from deleteApplications
-}
type alias DeleteApplicationsResponse =
    { 
    }



deleteApplicationsResponseDecoder : JD.Decoder DeleteApplicationsResponse
deleteApplicationsResponseDecoder =
    JDP.decode DeleteApplicationsResponse



{-| Type of HTTP response from deleteTags
-}
type alias DeleteTagsResponse =
    { 
    }



deleteTagsResponseDecoder : JD.Decoder DeleteTagsResponse
deleteTagsResponseDecoder =
    JDP.decode DeleteTagsResponse



{-| Type of HTTP response from describeAgents
-}
type alias DescribeAgentsResponse =
    { agentsInfo : Maybe (List AgentInfo)
    , nextToken : Maybe String
    }



describeAgentsResponseDecoder : JD.Decoder DescribeAgentsResponse
describeAgentsResponseDecoder =
    JDP.decode DescribeAgentsResponse
        |> JDP.optional "agentsInfo" (JD.nullable (JD.list agentInfoDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeConfigurations
-}
type alias DescribeConfigurationsResponse =
    { configurations : Maybe (List (Dict String String))
    }



describeConfigurationsResponseDecoder : JD.Decoder DescribeConfigurationsResponse
describeConfigurationsResponseDecoder =
    JDP.decode DescribeConfigurationsResponse
        |> JDP.optional "configurations" (JD.nullable (JD.list (JD.dict JD.string))) Nothing




{-| Type of HTTP response from describeExportConfigurations
-}
type alias DescribeExportConfigurationsResponse =
    { exportsInfo : Maybe (List ExportInfo)
    , nextToken : Maybe String
    }



describeExportConfigurationsResponseDecoder : JD.Decoder DescribeExportConfigurationsResponse
describeExportConfigurationsResponseDecoder =
    JDP.decode DescribeExportConfigurationsResponse
        |> JDP.optional "exportsInfo" (JD.nullable (JD.list exportInfoDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTags
-}
type alias DescribeTagsResponse =
    { tags : Maybe (List ConfigurationTag)
    , nextToken : Maybe String
    }



describeTagsResponseDecoder : JD.Decoder DescribeTagsResponse
describeTagsResponseDecoder =
    JDP.decode DescribeTagsResponse
        |> JDP.optional "tags" (JD.nullable (JD.list configurationTagDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from disassociateConfigurationItemsFromApplication
-}
type alias DisassociateConfigurationItemsFromApplicationResponse =
    { 
    }



disassociateConfigurationItemsFromApplicationResponseDecoder : JD.Decoder DisassociateConfigurationItemsFromApplicationResponse
disassociateConfigurationItemsFromApplicationResponseDecoder =
    JDP.decode DisassociateConfigurationItemsFromApplicationResponse



{-| Type of HTTP response from exportConfigurations
-}
type alias ExportConfigurationsResponse =
    { exportId : Maybe String
    }



exportConfigurationsResponseDecoder : JD.Decoder ExportConfigurationsResponse
exportConfigurationsResponseDecoder =
    JDP.decode ExportConfigurationsResponse
        |> JDP.optional "exportId" (JD.nullable JD.string) Nothing




{-| <p>Information regarding the export status of the discovered data. The value is an array of objects.</p>
-}
type alias ExportInfo =
    { exportId : String
    , exportStatus : ExportStatus
    , statusMessage : String
    , configurationsDownloadUrl : Maybe String
    , exportRequestTime : Date
    }



exportInfoDecoder : JD.Decoder ExportInfo
exportInfoDecoder =
    JDP.decode ExportInfo
        |> JDP.required "exportId" JD.string
        |> JDP.required "exportStatus" exportStatusDecoder
        |> JDP.required "statusMessage" JD.string
        |> JDP.optional "configurationsDownloadUrl" (JD.nullable JD.string) Nothing
        |> JDP.required "exportRequestTime" JDX.date




{-| One of

* `ExportStatus_FAILED`
* `ExportStatus_SUCCEEDED`
* `ExportStatus_IN_PROGRESS`

-}
type ExportStatus
    = ExportStatus_FAILED
    | ExportStatus_SUCCEEDED
    | ExportStatus_IN_PROGRESS



exportStatusDecoder : JD.Decoder ExportStatus
exportStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FAILED" ->
                        JD.succeed ExportStatus_FAILED

                    "SUCCEEDED" ->
                        JD.succeed ExportStatus_SUCCEEDED

                    "IN_PROGRESS" ->
                        JD.succeed ExportStatus_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A filter that can use conditional operators.</p> <p>for a complete list of filters and guidance for using them with the Application Discovery Service, see <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/querying-configuration-items.html">Querying Discovered Configuration Items</a>.</p>
-}
type alias Filter =
    { name : String
    , values : (List String)
    , condition : String
    }



filterDecoder : JD.Decoder Filter
filterDecoder =
    JDP.decode Filter
        |> JDP.required "name" JD.string
        |> JDP.required "values" (JD.list JD.string)
        |> JDP.required "condition" JD.string




{-| Type of HTTP response from getDiscoverySummary
-}
type alias GetDiscoverySummaryResponse =
    { servers : Maybe Int
    , applications : Maybe Int
    , serversMappedToApplications : Maybe Int
    , serversMappedtoTags : Maybe Int
    , agentSummary : Maybe CustomerAgentInfo
    , connectorSummary : Maybe CustomerConnectorInfo
    }



getDiscoverySummaryResponseDecoder : JD.Decoder GetDiscoverySummaryResponse
getDiscoverySummaryResponseDecoder =
    JDP.decode GetDiscoverySummaryResponse
        |> JDP.optional "servers" (JD.nullable JD.int) Nothing
        |> JDP.optional "applications" (JD.nullable JD.int) Nothing
        |> JDP.optional "serversMappedToApplications" (JD.nullable JD.int) Nothing
        |> JDP.optional "serversMappedtoTags" (JD.nullable JD.int) Nothing
        |> JDP.optional "agentSummary" (JD.nullable customerAgentInfoDecoder) Nothing
        |> JDP.optional "connectorSummary" (JD.nullable customerConnectorInfoDecoder) Nothing




{-| <p>One or more parameters are not valid. Verify the parameters and try again.</p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The value of one or more parameters are either invalid or out of range. Verify the parameter values and try again.</p>
-}
type alias InvalidParameterValueException =
    { message : Maybe String
    }



invalidParameterValueExceptionDecoder : JD.Decoder InvalidParameterValueException
invalidParameterValueExceptionDecoder =
    JDP.decode InvalidParameterValueException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listConfigurations
-}
type alias ListConfigurationsResponse =
    { configurations : Maybe (List (Dict String String))
    , nextToken : Maybe String
    }



listConfigurationsResponseDecoder : JD.Decoder ListConfigurationsResponse
listConfigurationsResponseDecoder =
    JDP.decode ListConfigurationsResponse
        |> JDP.optional "configurations" (JD.nullable (JD.list (JD.dict JD.string))) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listServerNeighbors
-}
type alias ListServerNeighborsResponse =
    { neighbors : (List NeighborConnectionDetail)
    , nextToken : Maybe String
    , knownDependencyCount : Maybe Int
    }



listServerNeighborsResponseDecoder : JD.Decoder ListServerNeighborsResponse
listServerNeighborsResponseDecoder =
    JDP.decode ListServerNeighborsResponse
        |> JDP.required "neighbors" (JD.list neighborConnectionDetailDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "knownDependencyCount" (JD.nullable JD.int) Nothing




{-| <p>Details about neighboring servers.</p>
-}
type alias NeighborConnectionDetail =
    { sourceServerId : String
    , destinationServerId : String
    , destinationPort : Maybe Int
    , transportProtocol : Maybe String
    , connectionsCount : Int
    }



neighborConnectionDetailDecoder : JD.Decoder NeighborConnectionDetail
neighborConnectionDetailDecoder =
    JDP.decode NeighborConnectionDetail
        |> JDP.required "sourceServerId" JD.string
        |> JDP.required "destinationServerId" JD.string
        |> JDP.optional "destinationPort" (JD.nullable JD.int) Nothing
        |> JDP.optional "transportProtocol" (JD.nullable JD.string) Nothing
        |> JDP.required "connectionsCount" JD.int




{-| <p>This operation is not permitted.</p>
-}
type alias OperationNotPermittedException =
    { message : Maybe String
    }



operationNotPermittedExceptionDecoder : JD.Decoder OperationNotPermittedException
operationNotPermittedExceptionDecoder =
    JDP.decode OperationNotPermittedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Field and direction for ordered output.</p>
-}
type alias OrderByElement =
    { fieldName : String
    , sortOrder : Maybe OrderString
    }



orderByElementDecoder : JD.Decoder OrderByElement
orderByElementDecoder =
    JDP.decode OrderByElement
        |> JDP.required "fieldName" JD.string
        |> JDP.optional "sortOrder" (JD.nullable orderStringDecoder) Nothing




{-| <p>The specified configuration ID was not located. Verify the configuration ID and try again.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The server experienced an internal error. Try again.</p>
-}
type alias ServerInternalErrorException =
    { message : Maybe String
    }



serverInternalErrorExceptionDecoder : JD.Decoder ServerInternalErrorException
serverInternalErrorExceptionDecoder =
    JDP.decode ServerInternalErrorException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from startDataCollectionByAgentIds
-}
type alias StartDataCollectionByAgentIdsResponse =
    { agentsConfigurationStatus : Maybe (List AgentConfigurationStatus)
    }



startDataCollectionByAgentIdsResponseDecoder : JD.Decoder StartDataCollectionByAgentIdsResponse
startDataCollectionByAgentIdsResponseDecoder =
    JDP.decode StartDataCollectionByAgentIdsResponse
        |> JDP.optional "agentsConfigurationStatus" (JD.nullable (JD.list agentConfigurationStatusDecoder)) Nothing




{-| Type of HTTP response from stopDataCollectionByAgentIds
-}
type alias StopDataCollectionByAgentIdsResponse =
    { agentsConfigurationStatus : Maybe (List AgentConfigurationStatus)
    }



stopDataCollectionByAgentIdsResponseDecoder : JD.Decoder StopDataCollectionByAgentIdsResponse
stopDataCollectionByAgentIdsResponseDecoder =
    JDP.decode StopDataCollectionByAgentIdsResponse
        |> JDP.optional "agentsConfigurationStatus" (JD.nullable (JD.list agentConfigurationStatusDecoder)) Nothing




{-| <p>Metadata that help you categorize IT assets.</p>
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




{-| <p>The name of a tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>, <code>configurationId</code>.</p>
-}
type alias TagFilter =
    { name : String
    , values : (List String)
    }



tagFilterDecoder : JD.Decoder TagFilter
tagFilterDecoder =
    JDP.decode TagFilter
        |> JDP.required "name" JD.string
        |> JDP.required "values" (JD.list JD.string)




{-| Type of HTTP response from updateApplication
-}
type alias UpdateApplicationResponse =
    { 
    }



updateApplicationResponseDecoder : JD.Decoder UpdateApplicationResponse
updateApplicationResponseDecoder =
    JDP.decode UpdateApplicationResponse



{-| One of

* `OrderString_ASC`
* `OrderString_DESC`

-}
type OrderString
    = OrderString_ASC
    | OrderString_DESC



orderStringDecoder : JD.Decoder OrderString
orderStringDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASC" ->
                        JD.succeed OrderString_ASC

                    "DESC" ->
                        JD.succeed OrderString_DESC


                    _ ->
                        JD.fail "bad thing"
            )



