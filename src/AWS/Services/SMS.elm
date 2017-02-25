module AWS.Services.SMS
    exposing
        ( config
        , createReplicationJob
        , CreateReplicationJobOptions
        , deleteReplicationJob
        , deleteServerCatalog
        , disassociateConnector
        , getConnectors
        , GetConnectorsOptions
        , getReplicationJobs
        , GetReplicationJobsOptions
        , getReplicationRuns
        , GetReplicationRunsOptions
        , getServers
        , GetServersOptions
        , importServerCatalog
        , startOnDemandReplicationRun
        , StartOnDemandReplicationRunOptions
        , updateReplicationJob
        , UpdateReplicationJobOptions
        , Connector
        , ConnectorCapability(..)
        , ConnectorStatus(..)
        , CreateReplicationJobResponse
        , DeleteReplicationJobResponse
        , DeleteServerCatalogResponse
        , DisassociateConnectorResponse
        , GetConnectorsResponse
        , GetReplicationJobsResponse
        , GetReplicationRunsResponse
        , GetServersResponse
        , ImportServerCatalogResponse
        , InternalError
        , InvalidParameterException
        , LicenseType(..)
        , MissingRequiredParameterException
        , NoConnectorsAvailableException
        , OperationNotPermittedException
        , ReplicationJob
        , ReplicationJobAlreadyExistsException
        , ReplicationJobNotFoundException
        , ReplicationJobState(..)
        , ReplicationRun
        , ReplicationRunLimitExceededException
        , ReplicationRunState(..)
        , ReplicationRunType(..)
        , Server
        , ServerCannotBeReplicatedException
        , ServerCatalogStatus(..)
        , ServerType(..)
        , StartOnDemandReplicationRunResponse
        , UnauthorizedOperationException
        , UpdateReplicationJobResponse
        , VmManagerType(..)
        , VmServer
        , VmServerAddress
        )

{-| Amazon Server Migration Service automates the process of migrating servers to EC2.

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createReplicationJob](#createReplicationJob)
* [CreateReplicationJobOptions](#CreateReplicationJobOptions)
* [deleteReplicationJob](#deleteReplicationJob)
* [deleteServerCatalog](#deleteServerCatalog)
* [disassociateConnector](#disassociateConnector)
* [getConnectors](#getConnectors)
* [GetConnectorsOptions](#GetConnectorsOptions)
* [getReplicationJobs](#getReplicationJobs)
* [GetReplicationJobsOptions](#GetReplicationJobsOptions)
* [getReplicationRuns](#getReplicationRuns)
* [GetReplicationRunsOptions](#GetReplicationRunsOptions)
* [getServers](#getServers)
* [GetServersOptions](#GetServersOptions)
* [importServerCatalog](#importServerCatalog)
* [startOnDemandReplicationRun](#startOnDemandReplicationRun)
* [StartOnDemandReplicationRunOptions](#StartOnDemandReplicationRunOptions)
* [updateReplicationJob](#updateReplicationJob)
* [UpdateReplicationJobOptions](#UpdateReplicationJobOptions)


@docs createReplicationJob,CreateReplicationJobOptions,deleteReplicationJob,deleteServerCatalog,disassociateConnector,getConnectors,GetConnectorsOptions,getReplicationJobs,GetReplicationJobsOptions,getReplicationRuns,GetReplicationRunsOptions,getServers,GetServersOptions,importServerCatalog,startOnDemandReplicationRun,StartOnDemandReplicationRunOptions,updateReplicationJob,UpdateReplicationJobOptions

## Responses

* [CreateReplicationJobResponse](#CreateReplicationJobResponse)
* [DeleteReplicationJobResponse](#DeleteReplicationJobResponse)
* [DeleteServerCatalogResponse](#DeleteServerCatalogResponse)
* [DisassociateConnectorResponse](#DisassociateConnectorResponse)
* [GetConnectorsResponse](#GetConnectorsResponse)
* [GetReplicationJobsResponse](#GetReplicationJobsResponse)
* [GetReplicationRunsResponse](#GetReplicationRunsResponse)
* [GetServersResponse](#GetServersResponse)
* [ImportServerCatalogResponse](#ImportServerCatalogResponse)
* [StartOnDemandReplicationRunResponse](#StartOnDemandReplicationRunResponse)
* [UpdateReplicationJobResponse](#UpdateReplicationJobResponse)


@docs CreateReplicationJobResponse,DeleteReplicationJobResponse,DeleteServerCatalogResponse,DisassociateConnectorResponse,GetConnectorsResponse,GetReplicationJobsResponse,GetReplicationRunsResponse,GetServersResponse,ImportServerCatalogResponse,StartOnDemandReplicationRunResponse,UpdateReplicationJobResponse

## Records

* [Connector](#Connector)
* [ReplicationJob](#ReplicationJob)
* [ReplicationRun](#ReplicationRun)
* [Server](#Server)
* [VmServer](#VmServer)
* [VmServerAddress](#VmServerAddress)


@docs Connector,ReplicationJob,ReplicationRun,Server,VmServer,VmServerAddress

## Unions

* [ConnectorCapability](#ConnectorCapability)
* [ConnectorStatus](#ConnectorStatus)
* [LicenseType](#LicenseType)
* [ReplicationJobState](#ReplicationJobState)
* [ReplicationRunState](#ReplicationRunState)
* [ReplicationRunType](#ReplicationRunType)
* [ServerCatalogStatus](#ServerCatalogStatus)
* [ServerType](#ServerType)
* [VmManagerType](#VmManagerType)


@docs ConnectorCapability,ConnectorStatus,LicenseType,ReplicationJobState,ReplicationRunState,ReplicationRunType,ServerCatalogStatus,ServerType,VmManagerType

## Exceptions

* [InternalError](#InternalError)
* [InvalidParameterException](#InvalidParameterException)
* [MissingRequiredParameterException](#MissingRequiredParameterException)
* [NoConnectorsAvailableException](#NoConnectorsAvailableException)
* [OperationNotPermittedException](#OperationNotPermittedException)
* [ReplicationJobAlreadyExistsException](#ReplicationJobAlreadyExistsException)
* [ReplicationJobNotFoundException](#ReplicationJobNotFoundException)
* [ReplicationRunLimitExceededException](#ReplicationRunLimitExceededException)
* [ServerCannotBeReplicatedException](#ServerCannotBeReplicatedException)
* [UnauthorizedOperationException](#UnauthorizedOperationException)


@docs InternalError,InvalidParameterException,MissingRequiredParameterException,NoConnectorsAvailableException,OperationNotPermittedException,ReplicationJobAlreadyExistsException,ReplicationJobNotFoundException,ReplicationRunLimitExceededException,ServerCannotBeReplicatedException,UnauthorizedOperationException

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
        "sms"
        "2016-10-24"
        "1.1"
        "AWSSMS_20161024."
        "sms.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| The CreateReplicationJob API is used to create a ReplicationJob to replicate a server on AWS. Call this API to first create a ReplicationJob, which will then schedule periodic ReplicationRuns to replicate your server to AWS. Each ReplicationRun will result in the creation of an AWS AMI.

__Required Parameters__

* `serverId` __:__ `String`
* `seedReplicationTime` __:__ `Date`
* `frequency` __:__ `Int`


-}
createReplicationJob :
    String
    -> Date
    -> Int
    -> (CreateReplicationJobOptions -> CreateReplicationJobOptions)
    -> AWS.Request CreateReplicationJobResponse
createReplicationJob serverId seedReplicationTime frequency setOptions =
  let
    options = setOptions (CreateReplicationJobOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateReplicationJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createReplicationJobResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createReplicationJob request
-}
type alias CreateReplicationJobOptions =
    { licenseType : Maybe LicenseType
    , roleName : Maybe String
    , description : Maybe String
    }



{-| The DeleteReplicationJob API is used to delete a ReplicationJob, resulting in no further ReplicationRuns. This will delete the contents of the S3 bucket used to store SMS artifacts, but will not delete any AMIs created by the SMS service.

__Required Parameters__

* `replicationJobId` __:__ `String`


-}
deleteReplicationJob :
    String
    -> AWS.Request DeleteReplicationJobResponse
deleteReplicationJob replicationJobId =
    AWS.Http.unsignedRequest
        "DeleteReplicationJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteReplicationJobResponseDecoder
        |> AWS.UnsignedRequest



{-| The DeleteServerCatalog API clears all servers from your server catalog. This means that these servers will no longer be accessible to the Server Migration Service.

__Required Parameters__



-}
deleteServerCatalog :
    AWS.Request DeleteServerCatalogResponse
deleteServerCatalog =
    AWS.Http.unsignedRequest
        "DeleteServerCatalog"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteServerCatalogResponseDecoder
        |> AWS.UnsignedRequest



{-| The DisassociateConnector API will disassociate a connector from the Server Migration Service, rendering it unavailable to support replication jobs.

__Required Parameters__

* `connectorId` __:__ `String`


-}
disassociateConnector :
    String
    -> AWS.Request DisassociateConnectorResponse
disassociateConnector connectorId =
    AWS.Http.unsignedRequest
        "DisassociateConnector"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateConnectorResponseDecoder
        |> AWS.UnsignedRequest



{-| The GetConnectors API returns a list of connectors that are registered with the Server Migration Service.

__Required Parameters__



-}
getConnectors :
    (GetConnectorsOptions -> GetConnectorsOptions)
    -> AWS.Request GetConnectorsResponse
getConnectors setOptions =
  let
    options = setOptions (GetConnectorsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetConnectors"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getConnectorsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getConnectors request
-}
type alias GetConnectorsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| The GetReplicationJobs API will return all of your ReplicationJobs and their details. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationJobs.

__Required Parameters__



-}
getReplicationJobs :
    (GetReplicationJobsOptions -> GetReplicationJobsOptions)
    -> AWS.Request GetReplicationJobsResponse
getReplicationJobs setOptions =
  let
    options = setOptions (GetReplicationJobsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetReplicationJobs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getReplicationJobsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getReplicationJobs request
-}
type alias GetReplicationJobsOptions =
    { replicationJobId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| The GetReplicationRuns API will return all ReplicationRuns for a given ReplicationJob. This API returns a paginated list, that may be consecutively called with nextToken to retrieve all ReplicationRuns for a ReplicationJob.

__Required Parameters__

* `replicationJobId` __:__ `String`


-}
getReplicationRuns :
    String
    -> (GetReplicationRunsOptions -> GetReplicationRunsOptions)
    -> AWS.Request GetReplicationRunsResponse
getReplicationRuns replicationJobId setOptions =
  let
    options = setOptions (GetReplicationRunsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetReplicationRuns"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getReplicationRunsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getReplicationRuns request
-}
type alias GetReplicationRunsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| The GetServers API returns a list of all servers in your server catalog. For this call to succeed, you must previously have called ImportServerCatalog.

__Required Parameters__



-}
getServers :
    (GetServersOptions -> GetServersOptions)
    -> AWS.Request GetServersResponse
getServers setOptions =
  let
    options = setOptions (GetServersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetServers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getServersResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getServers request
-}
type alias GetServersOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| The ImportServerCatalog API is used to gather the complete list of on-premises servers on your premises. This API call requires connectors to be installed and monitoring all servers you would like imported. This API call returns immediately, but may take some time to retrieve all of the servers.

__Required Parameters__



-}
importServerCatalog :
    AWS.Request ImportServerCatalogResponse
importServerCatalog =
    AWS.Http.unsignedRequest
        "ImportServerCatalog"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importServerCatalogResponseDecoder
        |> AWS.UnsignedRequest



{-| The StartOnDemandReplicationRun API is used to start a ReplicationRun on demand (in addition to those that are scheduled based on your frequency). This ReplicationRun will start immediately. StartOnDemandReplicationRun is subject to limits on how many on demand ReplicationRuns you may call per 24-hour period.

__Required Parameters__

* `replicationJobId` __:__ `String`


-}
startOnDemandReplicationRun :
    String
    -> (StartOnDemandReplicationRunOptions -> StartOnDemandReplicationRunOptions)
    -> AWS.Request StartOnDemandReplicationRunResponse
startOnDemandReplicationRun replicationJobId setOptions =
  let
    options = setOptions (StartOnDemandReplicationRunOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "StartOnDemandReplicationRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startOnDemandReplicationRunResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a startOnDemandReplicationRun request
-}
type alias StartOnDemandReplicationRunOptions =
    { description : Maybe String
    }



{-| The UpdateReplicationJob API is used to change the settings of your existing ReplicationJob created using CreateReplicationJob. Calling this API will affect the next scheduled ReplicationRun.

__Required Parameters__

* `replicationJobId` __:__ `String`


-}
updateReplicationJob :
    String
    -> (UpdateReplicationJobOptions -> UpdateReplicationJobOptions)
    -> AWS.Request UpdateReplicationJobResponse
updateReplicationJob replicationJobId setOptions =
  let
    options = setOptions (UpdateReplicationJobOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateReplicationJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateReplicationJobResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateReplicationJob request
-}
type alias UpdateReplicationJobOptions =
    { frequency : Maybe Int
    , nextReplicationRunStartTime : Maybe Date
    , licenseType : Maybe LicenseType
    , roleName : Maybe String
    , description : Maybe String
    }




{-| Object representing a Connector
-}
type alias Connector =
    { connectorId : Maybe String
    , version : Maybe String
    , status : Maybe ConnectorStatus
    , capabilityList : Maybe (List ConnectorCapability)
    , vmManagerName : Maybe String
    , vmManagerType : Maybe VmManagerType
    , vmManagerId : Maybe String
    , ipAddress : Maybe String
    , macAddress : Maybe String
    , associatedOn : Maybe Date
    }



connectorDecoder : JD.Decoder Connector
connectorDecoder =
    JDP.decode Connector
        |> JDP.optional "connectorId" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable connectorStatusDecoder) Nothing
        |> JDP.optional "capabilityList" (JD.nullable (JD.list connectorCapabilityDecoder)) Nothing
        |> JDP.optional "vmManagerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "vmManagerType" (JD.nullable vmManagerTypeDecoder) Nothing
        |> JDP.optional "vmManagerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "macAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "associatedOn" (JD.nullable JDX.date) Nothing




{-| One of

* `ConnectorCapability_VSPHERE`

-}
type ConnectorCapability
    = ConnectorCapability_VSPHERE



connectorCapabilityDecoder : JD.Decoder ConnectorCapability
connectorCapabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VSPHERE" ->
                        JD.succeed ConnectorCapability_VSPHERE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ConnectorStatus_HEALTHY`
* `ConnectorStatus_UNHEALTHY`

-}
type ConnectorStatus
    = ConnectorStatus_HEALTHY
    | ConnectorStatus_UNHEALTHY



connectorStatusDecoder : JD.Decoder ConnectorStatus
connectorStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HEALTHY" ->
                        JD.succeed ConnectorStatus_HEALTHY

                    "UNHEALTHY" ->
                        JD.succeed ConnectorStatus_UNHEALTHY


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createReplicationJob
-}
type alias CreateReplicationJobResponse =
    { replicationJobId : Maybe String
    }



createReplicationJobResponseDecoder : JD.Decoder CreateReplicationJobResponse
createReplicationJobResponseDecoder =
    JDP.decode CreateReplicationJobResponse
        |> JDP.optional "replicationJobId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteReplicationJob
-}
type alias DeleteReplicationJobResponse =
    { 
    }



deleteReplicationJobResponseDecoder : JD.Decoder DeleteReplicationJobResponse
deleteReplicationJobResponseDecoder =
    JDP.decode DeleteReplicationJobResponse



{-| Type of HTTP response from deleteServerCatalog
-}
type alias DeleteServerCatalogResponse =
    { 
    }



deleteServerCatalogResponseDecoder : JD.Decoder DeleteServerCatalogResponse
deleteServerCatalogResponseDecoder =
    JDP.decode DeleteServerCatalogResponse



{-| Type of HTTP response from disassociateConnector
-}
type alias DisassociateConnectorResponse =
    { 
    }



disassociateConnectorResponseDecoder : JD.Decoder DisassociateConnectorResponse
disassociateConnectorResponseDecoder =
    JDP.decode DisassociateConnectorResponse



{-| Type of HTTP response from getConnectors
-}
type alias GetConnectorsResponse =
    { connectorList : Maybe (List Connector)
    , nextToken : Maybe String
    }



getConnectorsResponseDecoder : JD.Decoder GetConnectorsResponse
getConnectorsResponseDecoder =
    JDP.decode GetConnectorsResponse
        |> JDP.optional "connectorList" (JD.nullable (JD.list connectorDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getReplicationJobs
-}
type alias GetReplicationJobsResponse =
    { replicationJobList : Maybe (List ReplicationJob)
    , nextToken : Maybe String
    }



getReplicationJobsResponseDecoder : JD.Decoder GetReplicationJobsResponse
getReplicationJobsResponseDecoder =
    JDP.decode GetReplicationJobsResponse
        |> JDP.optional "replicationJobList" (JD.nullable (JD.list replicationJobDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getReplicationRuns
-}
type alias GetReplicationRunsResponse =
    { replicationJob : Maybe ReplicationJob
    , replicationRunList : Maybe (List ReplicationRun)
    , nextToken : Maybe String
    }



getReplicationRunsResponseDecoder : JD.Decoder GetReplicationRunsResponse
getReplicationRunsResponseDecoder =
    JDP.decode GetReplicationRunsResponse
        |> JDP.optional "replicationJob" (JD.nullable replicationJobDecoder) Nothing
        |> JDP.optional "replicationRunList" (JD.nullable (JD.list replicationRunDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getServers
-}
type alias GetServersResponse =
    { lastModifiedOn : Maybe Date
    , serverCatalogStatus : Maybe ServerCatalogStatus
    , serverList : Maybe (List Server)
    , nextToken : Maybe String
    }



getServersResponseDecoder : JD.Decoder GetServersResponse
getServersResponseDecoder =
    JDP.decode GetServersResponse
        |> JDP.optional "lastModifiedOn" (JD.nullable JDX.date) Nothing
        |> JDP.optional "serverCatalogStatus" (JD.nullable serverCatalogStatusDecoder) Nothing
        |> JDP.optional "serverList" (JD.nullable (JD.list serverDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from importServerCatalog
-}
type alias ImportServerCatalogResponse =
    { 
    }



importServerCatalogResponseDecoder : JD.Decoder ImportServerCatalogResponse
importServerCatalogResponseDecoder =
    JDP.decode ImportServerCatalogResponse



{-| An internal error has occured.
-}
type alias InternalError =
    { message : Maybe String
    }



internalErrorDecoder : JD.Decoder InternalError
internalErrorDecoder =
    JDP.decode InternalError
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| A parameter specified in the request is not valid, is unsupported, or cannot be used.
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `LicenseType_AWS`
* `LicenseType_BYOL`

-}
type LicenseType
    = LicenseType_AWS
    | LicenseType_BYOL



licenseTypeDecoder : JD.Decoder LicenseType
licenseTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS" ->
                        JD.succeed LicenseType_AWS

                    "BYOL" ->
                        JD.succeed LicenseType_BYOL


                    _ ->
                        JD.fail "bad thing"
            )



{-| The request is missing a required parameter. Ensure that you have supplied all the required parameters for the request.
-}
type alias MissingRequiredParameterException =
    { message : Maybe String
    }



missingRequiredParameterExceptionDecoder : JD.Decoder MissingRequiredParameterException
missingRequiredParameterExceptionDecoder =
    JDP.decode MissingRequiredParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| No connectors are available to handle this request. Please associate connector(s) and verify any existing connectors are healthy and can respond to requests.
-}
type alias NoConnectorsAvailableException =
    { message : Maybe String
    }



noConnectorsAvailableExceptionDecoder : JD.Decoder NoConnectorsAvailableException
noConnectorsAvailableExceptionDecoder =
    JDP.decode NoConnectorsAvailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| The specified operation is not allowed. This error can occur for a number of reasons; for example, you might be trying to start a Replication Run before seed Replication Run.
-}
type alias OperationNotPermittedException =
    { message : Maybe String
    }



operationNotPermittedExceptionDecoder : JD.Decoder OperationNotPermittedException
operationNotPermittedExceptionDecoder =
    JDP.decode OperationNotPermittedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Object representing a Replication Job
-}
type alias ReplicationJob =
    { replicationJobId : Maybe String
    , serverId : Maybe String
    , serverType : Maybe ServerType
    , vmServer : Maybe VmServer
    , seedReplicationTime : Maybe Date
    , frequency : Maybe Int
    , nextReplicationRunStartTime : Maybe Date
    , licenseType : Maybe LicenseType
    , roleName : Maybe String
    , latestAmiId : Maybe String
    , state : Maybe ReplicationJobState
    , statusMessage : Maybe String
    , description : Maybe String
    , replicationRunList : Maybe (List ReplicationRun)
    }



replicationJobDecoder : JD.Decoder ReplicationJob
replicationJobDecoder =
    JDP.decode ReplicationJob
        |> JDP.optional "replicationJobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverId" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverType" (JD.nullable serverTypeDecoder) Nothing
        |> JDP.optional "vmServer" (JD.nullable vmServerDecoder) Nothing
        |> JDP.optional "seedReplicationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "frequency" (JD.nullable JD.int) Nothing
        |> JDP.optional "nextReplicationRunStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "licenseType" (JD.nullable licenseTypeDecoder) Nothing
        |> JDP.optional "roleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestAmiId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable replicationJobStateDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationRunList" (JD.nullable (JD.list replicationRunDecoder)) Nothing




{-| An active Replication Job already exists for the specified server.
-}
type alias ReplicationJobAlreadyExistsException =
    { message : Maybe String
    }



replicationJobAlreadyExistsExceptionDecoder : JD.Decoder ReplicationJobAlreadyExistsException
replicationJobAlreadyExistsExceptionDecoder =
    JDP.decode ReplicationJobAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| The specified Replication Job cannot be found.
-}
type alias ReplicationJobNotFoundException =
    { message : Maybe String
    }



replicationJobNotFoundExceptionDecoder : JD.Decoder ReplicationJobNotFoundException
replicationJobNotFoundExceptionDecoder =
    JDP.decode ReplicationJobNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ReplicationJobState_PENDING`
* `ReplicationJobState_ACTIVE`
* `ReplicationJobState_FAILED`
* `ReplicationJobState_DELETING`
* `ReplicationJobState_DELETED`

-}
type ReplicationJobState
    = ReplicationJobState_PENDING
    | ReplicationJobState_ACTIVE
    | ReplicationJobState_FAILED
    | ReplicationJobState_DELETING
    | ReplicationJobState_DELETED



replicationJobStateDecoder : JD.Decoder ReplicationJobState
replicationJobStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ReplicationJobState_PENDING

                    "ACTIVE" ->
                        JD.succeed ReplicationJobState_ACTIVE

                    "FAILED" ->
                        JD.succeed ReplicationJobState_FAILED

                    "DELETING" ->
                        JD.succeed ReplicationJobState_DELETING

                    "DELETED" ->
                        JD.succeed ReplicationJobState_DELETED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Object representing a Replication Run
-}
type alias ReplicationRun =
    { replicationRunId : Maybe String
    , state : Maybe ReplicationRunState
    , type_ : Maybe ReplicationRunType
    , statusMessage : Maybe String
    , amiId : Maybe String
    , scheduledStartTime : Maybe Date
    , completedTime : Maybe Date
    , description : Maybe String
    }



replicationRunDecoder : JD.Decoder ReplicationRun
replicationRunDecoder =
    JDP.decode ReplicationRun
        |> JDP.optional "replicationRunId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable replicationRunStateDecoder) Nothing
        |> JDP.optional "type_" (JD.nullable replicationRunTypeDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "amiId" (JD.nullable JD.string) Nothing
        |> JDP.optional "scheduledStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "completedTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| This user has exceeded the maximum allowed Replication Run limit.
-}
type alias ReplicationRunLimitExceededException =
    { message : Maybe String
    }



replicationRunLimitExceededExceptionDecoder : JD.Decoder ReplicationRunLimitExceededException
replicationRunLimitExceededExceptionDecoder =
    JDP.decode ReplicationRunLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ReplicationRunState_PENDING`
* `ReplicationRunState_MISSED`
* `ReplicationRunState_ACTIVE`
* `ReplicationRunState_FAILED`
* `ReplicationRunState_COMPLETED`
* `ReplicationRunState_DELETING`
* `ReplicationRunState_DELETED`

-}
type ReplicationRunState
    = ReplicationRunState_PENDING
    | ReplicationRunState_MISSED
    | ReplicationRunState_ACTIVE
    | ReplicationRunState_FAILED
    | ReplicationRunState_COMPLETED
    | ReplicationRunState_DELETING
    | ReplicationRunState_DELETED



replicationRunStateDecoder : JD.Decoder ReplicationRunState
replicationRunStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ReplicationRunState_PENDING

                    "MISSED" ->
                        JD.succeed ReplicationRunState_MISSED

                    "ACTIVE" ->
                        JD.succeed ReplicationRunState_ACTIVE

                    "FAILED" ->
                        JD.succeed ReplicationRunState_FAILED

                    "COMPLETED" ->
                        JD.succeed ReplicationRunState_COMPLETED

                    "DELETING" ->
                        JD.succeed ReplicationRunState_DELETING

                    "DELETED" ->
                        JD.succeed ReplicationRunState_DELETED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ReplicationRunType_ON_DEMAND`
* `ReplicationRunType_AUTOMATIC`

-}
type ReplicationRunType
    = ReplicationRunType_ON_DEMAND
    | ReplicationRunType_AUTOMATIC



replicationRunTypeDecoder : JD.Decoder ReplicationRunType
replicationRunTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ON_DEMAND" ->
                        JD.succeed ReplicationRunType_ON_DEMAND

                    "AUTOMATIC" ->
                        JD.succeed ReplicationRunType_AUTOMATIC


                    _ ->
                        JD.fail "bad thing"
            )



{-| Object representing a server
-}
type alias Server =
    { serverId : Maybe String
    , serverType : Maybe ServerType
    , vmServer : Maybe VmServer
    , replicationJobId : Maybe String
    , replicationJobTerminated : Maybe Bool
    }



serverDecoder : JD.Decoder Server
serverDecoder =
    JDP.decode Server
        |> JDP.optional "serverId" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverType" (JD.nullable serverTypeDecoder) Nothing
        |> JDP.optional "vmServer" (JD.nullable vmServerDecoder) Nothing
        |> JDP.optional "replicationJobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "replicationJobTerminated" (JD.nullable JD.bool) Nothing




{-| The provided server cannot be replicated.
-}
type alias ServerCannotBeReplicatedException =
    { message : Maybe String
    }



serverCannotBeReplicatedExceptionDecoder : JD.Decoder ServerCannotBeReplicatedException
serverCannotBeReplicatedExceptionDecoder =
    JDP.decode ServerCannotBeReplicatedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ServerCatalogStatus_NOT_IMPORTED`
* `ServerCatalogStatus_IMPORTING`
* `ServerCatalogStatus_AVAILABLE`
* `ServerCatalogStatus_DELETED`
* `ServerCatalogStatus_EXPIRED`

-}
type ServerCatalogStatus
    = ServerCatalogStatus_NOT_IMPORTED
    | ServerCatalogStatus_IMPORTING
    | ServerCatalogStatus_AVAILABLE
    | ServerCatalogStatus_DELETED
    | ServerCatalogStatus_EXPIRED



serverCatalogStatusDecoder : JD.Decoder ServerCatalogStatus
serverCatalogStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_IMPORTED" ->
                        JD.succeed ServerCatalogStatus_NOT_IMPORTED

                    "IMPORTING" ->
                        JD.succeed ServerCatalogStatus_IMPORTING

                    "AVAILABLE" ->
                        JD.succeed ServerCatalogStatus_AVAILABLE

                    "DELETED" ->
                        JD.succeed ServerCatalogStatus_DELETED

                    "EXPIRED" ->
                        JD.succeed ServerCatalogStatus_EXPIRED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ServerType_VIRTUAL_MACHINE`

-}
type ServerType
    = ServerType_VIRTUAL_MACHINE



serverTypeDecoder : JD.Decoder ServerType
serverTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VIRTUAL_MACHINE" ->
                        JD.succeed ServerType_VIRTUAL_MACHINE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from startOnDemandReplicationRun
-}
type alias StartOnDemandReplicationRunResponse =
    { replicationRunId : Maybe String
    }



startOnDemandReplicationRunResponseDecoder : JD.Decoder StartOnDemandReplicationRunResponse
startOnDemandReplicationRunResponseDecoder =
    JDP.decode StartOnDemandReplicationRunResponse
        |> JDP.optional "replicationRunId" (JD.nullable JD.string) Nothing




{-| This user does not have permissions to perform this operation.
-}
type alias UnauthorizedOperationException =
    { message : Maybe String
    }



unauthorizedOperationExceptionDecoder : JD.Decoder UnauthorizedOperationException
unauthorizedOperationExceptionDecoder =
    JDP.decode UnauthorizedOperationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateReplicationJob
-}
type alias UpdateReplicationJobResponse =
    { 
    }



updateReplicationJobResponseDecoder : JD.Decoder UpdateReplicationJobResponse
updateReplicationJobResponseDecoder =
    JDP.decode UpdateReplicationJobResponse



{-| One of

* `VmManagerType_VSPHERE`

-}
type VmManagerType
    = VmManagerType_VSPHERE



vmManagerTypeDecoder : JD.Decoder VmManagerType
vmManagerTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VSPHERE" ->
                        JD.succeed VmManagerType_VSPHERE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Object representing a VM server
-}
type alias VmServer =
    { vmServerAddress : Maybe VmServerAddress
    , vmName : Maybe String
    , vmManagerName : Maybe String
    , vmManagerType : Maybe VmManagerType
    , vmPath : Maybe String
    }



vmServerDecoder : JD.Decoder VmServer
vmServerDecoder =
    JDP.decode VmServer
        |> JDP.optional "vmServerAddress" (JD.nullable vmServerAddressDecoder) Nothing
        |> JDP.optional "vmName" (JD.nullable JD.string) Nothing
        |> JDP.optional "vmManagerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "vmManagerType" (JD.nullable vmManagerTypeDecoder) Nothing
        |> JDP.optional "vmPath" (JD.nullable JD.string) Nothing




{-| Object representing a server's location
-}
type alias VmServerAddress =
    { vmManagerId : Maybe String
    , vmId : Maybe String
    }



vmServerAddressDecoder : JD.Decoder VmServerAddress
vmServerAddressDecoder =
    JDP.decode VmServerAddress
        |> JDP.optional "vmManagerId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vmId" (JD.nullable JD.string) Nothing




