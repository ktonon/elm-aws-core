module AWS.Services.OpsWorksCM
    exposing
        ( config
        , associateNode
        , AssociateNodeOptions
        , createBackup
        , CreateBackupOptions
        , createServer
        , CreateServerOptions
        , deleteBackup
        , deleteServer
        , describeAccountAttributes
        , describeBackups
        , DescribeBackupsOptions
        , describeEvents
        , DescribeEventsOptions
        , describeNodeAssociationStatus
        , describeServers
        , DescribeServersOptions
        , disassociateNode
        , DisassociateNodeOptions
        , restoreServer
        , RestoreServerOptions
        , startMaintenance
        , updateServer
        , UpdateServerOptions
        , updateServerEngineAttributes
        , UpdateServerEngineAttributesOptions
        , AccountAttribute
        , AssociateNodeResponse
        , Backup
        , BackupStatus(..)
        , BackupType(..)
        , CreateBackupResponse
        , CreateServerResponse
        , DeleteBackupResponse
        , DeleteServerResponse
        , DescribeAccountAttributesResponse
        , DescribeBackupsResponse
        , DescribeEventsResponse
        , DescribeNodeAssociationStatusResponse
        , DescribeServersResponse
        , DisassociateNodeResponse
        , EngineAttribute
        , InvalidNextTokenException
        , InvalidStateException
        , LimitExceededException
        , MaintenanceStatus(..)
        , NodeAssociationStatus(..)
        , ResourceAlreadyExistsException
        , ResourceNotFoundException
        , RestoreServerResponse
        , Server
        , ServerEvent
        , ServerStatus(..)
        , StartMaintenanceResponse
        , UpdateServerEngineAttributesResponse
        , UpdateServerResponse
        , ValidationException
        )

{-| <fullname>AWS OpsWorks for Chef Automate</fullname> <p> A service that runs and manages configuration management servers. </p> <p>Glossary of terms</p> <ul> <li> <p> <b>Server</b>: A server is a configuration management server, and can be highly-available. The configuration manager runs on your instances by using various AWS services, such as Amazon Elastic Compute Cloud (EC2), and potentially Amazon Relational Database Service (RDS). A server is a generic abstraction over the configuration manager that you want to use, much like Amazon RDS. In AWS OpsWorks for Chef Automate, you do not start or stop servers. After you create servers, they continue to run until they are deleted.</p> </li> <li> <p> <b>Engine</b>: The specific configuration manager that you want to use (such as <code>Chef</code>) is the engine.</p> </li> <li> <p> <b>Backup</b>: This is an application-level backup of the data that the configuration manager stores. A backup creates a .tar.gz file that is stored in an Amazon Simple Storage Service (S3) bucket in your account. AWS OpsWorks for Chef Automate creates the S3 bucket when you launch the first instance. A backup maintains a snapshot of all of a server's important attributes at the time of the backup.</p> </li> <li> <p> <b>Events</b>: Events are always related to a server. Events are written during server creation, when health checks run, when backups are created, etc. When you delete a server, the server's events are also deleted.</p> </li> <li> <p> <b>AccountAttributes</b>: Every account has attributes that are assigned in the AWS OpsWorks for Chef Automate database. These attributes store information about configuration limits (servers, backups, etc.) and your customer account. </p> </li> </ul> <p>Throttling limits</p> <p>All API operations allow for 5 requests per second with a burst of 10 requests per second.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [associateNode](#associateNode)
* [AssociateNodeOptions](#AssociateNodeOptions)
* [createBackup](#createBackup)
* [CreateBackupOptions](#CreateBackupOptions)
* [createServer](#createServer)
* [CreateServerOptions](#CreateServerOptions)
* [deleteBackup](#deleteBackup)
* [deleteServer](#deleteServer)
* [describeAccountAttributes](#describeAccountAttributes)
* [describeBackups](#describeBackups)
* [DescribeBackupsOptions](#DescribeBackupsOptions)
* [describeEvents](#describeEvents)
* [DescribeEventsOptions](#DescribeEventsOptions)
* [describeNodeAssociationStatus](#describeNodeAssociationStatus)
* [describeServers](#describeServers)
* [DescribeServersOptions](#DescribeServersOptions)
* [disassociateNode](#disassociateNode)
* [DisassociateNodeOptions](#DisassociateNodeOptions)
* [restoreServer](#restoreServer)
* [RestoreServerOptions](#RestoreServerOptions)
* [startMaintenance](#startMaintenance)
* [updateServer](#updateServer)
* [UpdateServerOptions](#UpdateServerOptions)
* [updateServerEngineAttributes](#updateServerEngineAttributes)
* [UpdateServerEngineAttributesOptions](#UpdateServerEngineAttributesOptions)


@docs associateNode,AssociateNodeOptions,createBackup,CreateBackupOptions,createServer,CreateServerOptions,deleteBackup,deleteServer,describeAccountAttributes,describeBackups,DescribeBackupsOptions,describeEvents,DescribeEventsOptions,describeNodeAssociationStatus,describeServers,DescribeServersOptions,disassociateNode,DisassociateNodeOptions,restoreServer,RestoreServerOptions,startMaintenance,updateServer,UpdateServerOptions,updateServerEngineAttributes,UpdateServerEngineAttributesOptions

## Responses

* [AssociateNodeResponse](#AssociateNodeResponse)
* [CreateBackupResponse](#CreateBackupResponse)
* [CreateServerResponse](#CreateServerResponse)
* [DeleteBackupResponse](#DeleteBackupResponse)
* [DeleteServerResponse](#DeleteServerResponse)
* [DescribeAccountAttributesResponse](#DescribeAccountAttributesResponse)
* [DescribeBackupsResponse](#DescribeBackupsResponse)
* [DescribeEventsResponse](#DescribeEventsResponse)
* [DescribeNodeAssociationStatusResponse](#DescribeNodeAssociationStatusResponse)
* [DescribeServersResponse](#DescribeServersResponse)
* [DisassociateNodeResponse](#DisassociateNodeResponse)
* [RestoreServerResponse](#RestoreServerResponse)
* [StartMaintenanceResponse](#StartMaintenanceResponse)
* [UpdateServerEngineAttributesResponse](#UpdateServerEngineAttributesResponse)
* [UpdateServerResponse](#UpdateServerResponse)


@docs AssociateNodeResponse,CreateBackupResponse,CreateServerResponse,DeleteBackupResponse,DeleteServerResponse,DescribeAccountAttributesResponse,DescribeBackupsResponse,DescribeEventsResponse,DescribeNodeAssociationStatusResponse,DescribeServersResponse,DisassociateNodeResponse,RestoreServerResponse,StartMaintenanceResponse,UpdateServerEngineAttributesResponse,UpdateServerResponse

## Records

* [AccountAttribute](#AccountAttribute)
* [Backup](#Backup)
* [EngineAttribute](#EngineAttribute)
* [Server](#Server)
* [ServerEvent](#ServerEvent)


@docs AccountAttribute,Backup,EngineAttribute,Server,ServerEvent

## Unions

* [BackupStatus](#BackupStatus)
* [BackupType](#BackupType)
* [MaintenanceStatus](#MaintenanceStatus)
* [NodeAssociationStatus](#NodeAssociationStatus)
* [ServerStatus](#ServerStatus)


@docs BackupStatus,BackupType,MaintenanceStatus,NodeAssociationStatus,ServerStatus

## Exceptions

* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidStateException](#InvalidStateException)
* [LimitExceededException](#LimitExceededException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ValidationException](#ValidationException)


@docs InvalidNextTokenException,InvalidStateException,LimitExceededException,ResourceAlreadyExistsException,ResourceNotFoundException,ValidationException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "opsworks-cm"
        "2016-11-01"
        "1.1"
        "AWSOPSWORKS-CM_20161101."
        "opsworks-cm.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| undefined

__Required Parameters__

* `serverName` __:__ `String`
* `nodeName` __:__ `String`


-}
associateNode :
    String
    -> String
    -> (AssociateNodeOptions -> AssociateNodeOptions)
    -> AWS.Request AssociateNodeResponse
associateNode serverName nodeName setOptions =
  let
    options = setOptions (AssociateNodeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AssociateNode"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        associateNodeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a associateNode request
-}
type alias AssociateNodeOptions =
    { engineAttributes : Maybe (List EngineAttribute)
    }



{-| <p> Creates an application-level backup of a server. While the server is <code>BACKING_UP</code>, the server can not be modified and no additional backup can be created. </p> <p> Backups can be created for <code>RUNNING</code>, <code>HEALTHY</code> and <code>UNHEALTHY</code> servers. </p> <p> This operation is asnychronous. </p> <p> By default 50 manual backups can be created. </p> <p> A <code>LimitExceededException</code> is thrown then the maximum number of manual backup is reached. A <code>InvalidStateException</code> is thrown when the server is not in any of RUNNING, HEALTHY, UNHEALTHY. A <code>ResourceNotFoundException</code> is thrown when the server is not found. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>

__Required Parameters__

* `serverName` __:__ `String`


-}
createBackup :
    String
    -> (CreateBackupOptions -> CreateBackupOptions)
    -> AWS.Request CreateBackupResponse
createBackup serverName setOptions =
  let
    options = setOptions (CreateBackupOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateBackup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createBackupResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createBackup request
-}
type alias CreateBackupOptions =
    { description : Maybe String
    }



{-| <p> Creates and immedately starts a new Server. The server can be used once it has reached the <code>HEALTHY</code> state. </p> <p> This operation is asnychronous. </p> <p> A <code>LimitExceededException</code> is thrown then the maximum number of server backup is reached. A <code>ResourceAlreadyExistsException</code> is raise when a server with the same name already exists in the account. A <code>ResourceNotFoundException</code> is thrown when a backupId is passed, but the backup does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p> <p> By default 10 servers can be created. A <code>LimitExceededException</code> is raised when the limit is exceeded. </p> <p> When no security groups are provided by using <code>SecurityGroupIds</code>, AWS OpsWorks creates a new security group. This security group opens the Chef server to the world on TCP port 443. If a KeyName is present, SSH access is enabled. SSH is also open to the world on TCP port 22. </p> <p>By default, the Chef Server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console. </p>

__Required Parameters__

* `serverName` __:__ `String`
* `instanceProfileArn` __:__ `String`
* `serviceRoleArn` __:__ `String`


-}
createServer :
    String
    -> String
    -> String
    -> (CreateServerOptions -> CreateServerOptions)
    -> AWS.Request CreateServerResponse
createServer serverName instanceProfileArn serviceRoleArn setOptions =
  let
    options = setOptions (CreateServerOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateServer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createServerResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createServer request
-}
type alias CreateServerOptions =
    { disableAutomatedBackup : Maybe Bool
    , engine : Maybe String
    , engineModel : Maybe String
    , engineVersion : Maybe String
    , engineAttributes : Maybe (List EngineAttribute)
    , backupRetentionCount : Maybe Int
    , instanceType : Maybe String
    , keyPair : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    , securityGroupIds : Maybe (List String)
    , subnetIds : Maybe (List String)
    , backupId : Maybe String
    }



{-| <p> Deletes a backup. You can delete both manual and automated backups. </p> <p> This operation is asynchronous. </p> <p> A <code>InvalidStateException</code> is thrown then a backup is already deleting. A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is thrown when parameters of the request are not valid. </p>

__Required Parameters__

* `backupId` __:__ `String`


-}
deleteBackup :
    String
    -> AWS.Request DeleteBackupResponse
deleteBackup backupId =
    AWS.Http.unsignedRequest
        "DeleteBackup"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteBackupResponseDecoder
        |> AWS.UnsignedRequest



{-| <p> Deletes the server and the underlying AWS CloudFormation stack (including the server's EC2 instance). The server status updated to <code>DELETING</code>. Once the server is successfully deleted, it will no longer be returned by <code>DescribeServer</code> requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted. </p> <p> This operation is asynchronous. </p> <p> A <code>InvalidStateException</code> is thrown then a server is already deleting. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are invalid. </p> <p> </p>

__Required Parameters__

* `serverName` __:__ `String`


-}
deleteServer :
    String
    -> AWS.Request DeleteServerResponse
deleteServer serverName =
    AWS.Http.unsignedRequest
        "DeleteServer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteServerResponseDecoder
        |> AWS.UnsignedRequest



{-| <p> Describes your account attributes, and creates requests to increase limits before they are reached or exceeded. </p> <p> This operation is synchronous. </p>

__Required Parameters__



-}
describeAccountAttributes :
    AWS.Request DescribeAccountAttributesResponse
describeAccountAttributes =
    AWS.Http.unsignedRequest
        "DescribeAccountAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAccountAttributesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p> Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the backup does not exist. A <code>ValidationException</code> is raised when parameters of the request are invalid. </p>

__Required Parameters__



-}
describeBackups :
    (DescribeBackupsOptions -> DescribeBackupsOptions)
    -> AWS.Request DescribeBackupsResponse
describeBackups setOptions =
  let
    options = setOptions (DescribeBackupsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeBackups"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeBackupsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeBackups request
-}
type alias DescribeBackupsOptions =
    { backupId : Maybe String
    , serverName : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p> Describes events for a specified server. Results are ordered by time, with newest events first. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are invalid. </p>

__Required Parameters__

* `serverName` __:__ `String`


-}
describeEvents :
    String
    -> (DescribeEventsOptions -> DescribeEventsOptions)
    -> AWS.Request DescribeEventsResponse
describeEvents serverName setOptions =
  let
    options = setOptions (DescribeEventsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeEventsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeEvents request
-}
type alias DescribeEventsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| undefined

__Required Parameters__

* `nodeAssociationStatusToken` __:__ `String`
* `serverName` __:__ `String`


-}
describeNodeAssociationStatus :
    String
    -> String
    -> AWS.Request DescribeNodeAssociationStatusResponse
describeNodeAssociationStatus nodeAssociationStatusToken serverName =
    AWS.Http.unsignedRequest
        "DescribeNodeAssociationStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeNodeAssociationStatusResponseDecoder
        |> AWS.UnsignedRequest



{-| <p> Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks for Chef Automate does not query other services. </p> <p> This operation is synchronous. </p> <p> A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are invalid. </p>

__Required Parameters__



-}
describeServers :
    (DescribeServersOptions -> DescribeServersOptions)
    -> AWS.Request DescribeServersResponse
describeServers setOptions =
  let
    options = setOptions (DescribeServersOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeServers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeServersResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeServers request
-}
type alias DescribeServersOptions =
    { serverName : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| undefined

__Required Parameters__

* `serverName` __:__ `String`
* `nodeName` __:__ `String`


-}
disassociateNode :
    String
    -> String
    -> (DisassociateNodeOptions -> DisassociateNodeOptions)
    -> AWS.Request DisassociateNodeResponse
disassociateNode serverName nodeName setOptions =
  let
    options = setOptions (DisassociateNodeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DisassociateNode"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        disassociateNodeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a disassociateNode request
-}
type alias DisassociateNodeOptions =
    { engineAttributes : Maybe (List EngineAttribute)
    }



{-| <p> Restores a backup to a server that is in a <code>RUNNING</code>, <code>FAILED</code>, or <code>HEALTHY</code> state. When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains the existing server endpoint, so configuration management of all of the server's client devices should continue to work. </p> <p> This operation is asynchronous. </p> <p> A <code>InvalidStateException</code> is thrown when the server is not in a valid state. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are invalid. </p>

__Required Parameters__

* `backupId` __:__ `String`
* `serverName` __:__ `String`


-}
restoreServer :
    String
    -> String
    -> (RestoreServerOptions -> RestoreServerOptions)
    -> AWS.Request RestoreServerResponse
restoreServer backupId serverName setOptions =
  let
    options = setOptions (RestoreServerOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RestoreServer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        restoreServerResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a restoreServer request
-}
type alias RestoreServerOptions =
    { instanceType : Maybe String
    , keyPair : Maybe String
    }



{-| <p> Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server will switch to <code>UNDER_MAINTENANCE</code> state, while maintenace is in progress. </p> <p> Maintenace can only be started for <code>HEALTHY</code> and <code>UNHEALTHY</code> servers. A <code>InvalidStateException</code> is thrown otherwise. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are invalid. </p>

__Required Parameters__

* `serverName` __:__ `String`


-}
startMaintenance :
    String
    -> AWS.Request StartMaintenanceResponse
startMaintenance serverName =
    AWS.Http.unsignedRequest
        "StartMaintenance"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startMaintenanceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p> Updates settings for a server. </p> <p> This operation is synchronous. </p>

__Required Parameters__

* `serverName` __:__ `String`


-}
updateServer :
    String
    -> (UpdateServerOptions -> UpdateServerOptions)
    -> AWS.Request UpdateServerResponse
updateServer serverName setOptions =
  let
    options = setOptions (UpdateServerOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateServer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateServerResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateServer request
-}
type alias UpdateServerOptions =
    { disableAutomatedBackup : Maybe Bool
    , backupRetentionCount : Maybe Int
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    }



{-| <p> Updates engine specific attributes on a specified server. Server will enter the <code>MODIFYING</code> state when this operation is in progress. Only one update can take place at a time. </p> <p> This operation can be use to reset Chef Server main API key (<code>CHEF_PIVOTAL_KEY</code>). </p> <p> This operation is asynchronous. </p> <p> </p> <p> This operation can only be called for <code>HEALTHY</code> and <code>UNHEALTHY</code> servers. Otherwise a <code>InvalidStateException</code> is raised. A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are invalid. </p>

__Required Parameters__

* `serverName` __:__ `String`
* `attributeName` __:__ `String`


-}
updateServerEngineAttributes :
    String
    -> String
    -> (UpdateServerEngineAttributesOptions -> UpdateServerEngineAttributesOptions)
    -> AWS.Request UpdateServerEngineAttributesResponse
updateServerEngineAttributes serverName attributeName setOptions =
  let
    options = setOptions (UpdateServerEngineAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateServerEngineAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateServerEngineAttributesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateServerEngineAttributes request
-}
type alias UpdateServerEngineAttributesOptions =
    { attributeValue : Maybe String
    }




{-| <p>Stores account attributes. </p>
-}
type alias AccountAttribute =
    { name : Maybe String
    , maximum : Maybe Int
    , used : Maybe Int
    }



accountAttributeDecoder : JD.Decoder AccountAttribute
accountAttributeDecoder =
    JDP.decode AccountAttribute
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "maximum" (JD.nullable JD.int) Nothing
        |> JDP.optional "used" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from associateNode
-}
type alias AssociateNodeResponse =
    { nodeAssociationStatusToken : Maybe String
    }



associateNodeResponseDecoder : JD.Decoder AssociateNodeResponse
associateNodeResponseDecoder =
    JDP.decode AssociateNodeResponse
        |> JDP.optional "nodeAssociationStatusToken" (JD.nullable JD.string) Nothing




{-| <p>Describes a single backup. </p>
-}
type alias Backup =
    { backupArn : Maybe String
    , backupId : Maybe String
    , backupType : Maybe BackupType
    , createdAt : Maybe Date
    , description : Maybe String
    , engine : Maybe String
    , engineModel : Maybe String
    , engineVersion : Maybe String
    , instanceProfileArn : Maybe String
    , instanceType : Maybe String
    , keyPair : Maybe String
    , preferredBackupWindow : Maybe String
    , preferredMaintenanceWindow : Maybe String
    , s3DataSize : Maybe Int
    , s3DataUrl : Maybe String
    , s3LogUrl : Maybe String
    , securityGroupIds : Maybe (List String)
    , serverName : Maybe String
    , serviceRoleArn : Maybe String
    , status : Maybe BackupStatus
    , statusDescription : Maybe String
    , subnetIds : Maybe (List String)
    , toolsVersion : Maybe String
    , userArn : Maybe String
    }



backupDecoder : JD.Decoder Backup
backupDecoder =
    JDP.decode Backup
        |> JDP.optional "backupArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "backupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "backupType" (JD.nullable backupTypeDecoder) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineModel" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceProfileArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyPair" (JD.nullable JD.string) Nothing
        |> JDP.optional "preferredBackupWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3DataSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "s3DataUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3LogUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "serverName" (JD.nullable JD.string) Nothing
        |> JDP.optional "serviceRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable backupStatusDecoder) Nothing
        |> JDP.optional "statusDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "toolsVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "userArn" (JD.nullable JD.string) Nothing




{-| One of

* `BackupStatus_IN_PROGRESS`
* `BackupStatus_OK`
* `BackupStatus_FAILED`
* `BackupStatus_DELETING`

-}
type BackupStatus
    = BackupStatus_IN_PROGRESS
    | BackupStatus_OK
    | BackupStatus_FAILED
    | BackupStatus_DELETING



backupStatusDecoder : JD.Decoder BackupStatus
backupStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IN_PROGRESS" ->
                        JD.succeed BackupStatus_IN_PROGRESS

                    "OK" ->
                        JD.succeed BackupStatus_OK

                    "FAILED" ->
                        JD.succeed BackupStatus_FAILED

                    "DELETING" ->
                        JD.succeed BackupStatus_DELETING


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `BackupType_AUTOMATED`
* `BackupType_MANUAL`

-}
type BackupType
    = BackupType_AUTOMATED
    | BackupType_MANUAL



backupTypeDecoder : JD.Decoder BackupType
backupTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AUTOMATED" ->
                        JD.succeed BackupType_AUTOMATED

                    "MANUAL" ->
                        JD.succeed BackupType_MANUAL


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createBackup
-}
type alias CreateBackupResponse =
    { backup : Maybe Backup
    }



createBackupResponseDecoder : JD.Decoder CreateBackupResponse
createBackupResponseDecoder =
    JDP.decode CreateBackupResponse
        |> JDP.optional "backup" (JD.nullable backupDecoder) Nothing




{-| Type of HTTP response from createServer
-}
type alias CreateServerResponse =
    { server : Maybe Server
    }



createServerResponseDecoder : JD.Decoder CreateServerResponse
createServerResponseDecoder =
    JDP.decode CreateServerResponse
        |> JDP.optional "server" (JD.nullable serverDecoder) Nothing




{-| Type of HTTP response from deleteBackup
-}
type alias DeleteBackupResponse =
    { 
    }



deleteBackupResponseDecoder : JD.Decoder DeleteBackupResponse
deleteBackupResponseDecoder =
    JDP.decode DeleteBackupResponse



{-| Type of HTTP response from deleteServer
-}
type alias DeleteServerResponse =
    { 
    }



deleteServerResponseDecoder : JD.Decoder DeleteServerResponse
deleteServerResponseDecoder =
    JDP.decode DeleteServerResponse



{-| Type of HTTP response from describeAccountAttributes
-}
type alias DescribeAccountAttributesResponse =
    { attributes : Maybe (List AccountAttribute)
    }



describeAccountAttributesResponseDecoder : JD.Decoder DescribeAccountAttributesResponse
describeAccountAttributesResponseDecoder =
    JDP.decode DescribeAccountAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.list accountAttributeDecoder)) Nothing




{-| Type of HTTP response from describeBackups
-}
type alias DescribeBackupsResponse =
    { backups : Maybe (List Backup)
    , nextToken : Maybe String
    }



describeBackupsResponseDecoder : JD.Decoder DescribeBackupsResponse
describeBackupsResponseDecoder =
    JDP.decode DescribeBackupsResponse
        |> JDP.optional "backups" (JD.nullable (JD.list backupDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeEvents
-}
type alias DescribeEventsResponse =
    { serverEvents : Maybe (List ServerEvent)
    , nextToken : Maybe String
    }



describeEventsResponseDecoder : JD.Decoder DescribeEventsResponse
describeEventsResponseDecoder =
    JDP.decode DescribeEventsResponse
        |> JDP.optional "serverEvents" (JD.nullable (JD.list serverEventDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeNodeAssociationStatus
-}
type alias DescribeNodeAssociationStatusResponse =
    { nodeAssociationStatus : Maybe NodeAssociationStatus
    }



describeNodeAssociationStatusResponseDecoder : JD.Decoder DescribeNodeAssociationStatusResponse
describeNodeAssociationStatusResponseDecoder =
    JDP.decode DescribeNodeAssociationStatusResponse
        |> JDP.optional "nodeAssociationStatus" (JD.nullable nodeAssociationStatusDecoder) Nothing




{-| Type of HTTP response from describeServers
-}
type alias DescribeServersResponse =
    { servers : Maybe (List Server)
    , nextToken : Maybe String
    }



describeServersResponseDecoder : JD.Decoder DescribeServersResponse
describeServersResponseDecoder =
    JDP.decode DescribeServersResponse
        |> JDP.optional "servers" (JD.nullable (JD.list serverDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from disassociateNode
-}
type alias DisassociateNodeResponse =
    { nodeAssociationStatusToken : Maybe String
    }



disassociateNodeResponseDecoder : JD.Decoder DisassociateNodeResponse
disassociateNodeResponseDecoder =
    JDP.decode DisassociateNodeResponse
        |> JDP.optional "nodeAssociationStatusToken" (JD.nullable JD.string) Nothing




{-| <p>A name/value pair that is specific to the engine of the server. </p>
-}
type alias EngineAttribute =
    { name : Maybe String
    , value : Maybe String
    }



engineAttributeDecoder : JD.Decoder EngineAttribute
engineAttributeDecoder =
    JDP.decode EngineAttribute
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>This occurs when the provided nextToken is not valid. </p>
-}
type alias InvalidNextTokenException =
    { message : Maybe String
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The resource is in a state that does not allow you to perform a specified action. </p>
-}
type alias InvalidStateException =
    { message : Maybe String
    }



invalidStateExceptionDecoder : JD.Decoder InvalidStateException
invalidStateExceptionDecoder =
    JDP.decode InvalidStateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The limit of servers or backups has been reached. </p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `MaintenanceStatus_SUCCESS`
* `MaintenanceStatus_FAILED`

-}
type MaintenanceStatus
    = MaintenanceStatus_SUCCESS
    | MaintenanceStatus_FAILED



maintenanceStatusDecoder : JD.Decoder MaintenanceStatus
maintenanceStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed MaintenanceStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed MaintenanceStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `NodeAssociationStatus_SUCCESS`
* `NodeAssociationStatus_FAILED`
* `NodeAssociationStatus_IN_PROGRESS`

-}
type NodeAssociationStatus
    = NodeAssociationStatus_SUCCESS
    | NodeAssociationStatus_FAILED
    | NodeAssociationStatus_IN_PROGRESS



nodeAssociationStatusDecoder : JD.Decoder NodeAssociationStatus
nodeAssociationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCESS" ->
                        JD.succeed NodeAssociationStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed NodeAssociationStatus_FAILED

                    "IN_PROGRESS" ->
                        JD.succeed NodeAssociationStatus_IN_PROGRESS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The requested resource cannot be created because it already exists. </p>
-}
type alias ResourceAlreadyExistsException =
    { message : Maybe String
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The requested resource does not exist, or access was denied. </p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from restoreServer
-}
type alias RestoreServerResponse =
    { 
    }



restoreServerResponseDecoder : JD.Decoder RestoreServerResponse
restoreServerResponseDecoder =
    JDP.decode RestoreServerResponse



{-| <p>Describes a configuration management server. </p>
-}
type alias Server =
    { backupRetentionCount : Maybe Int
    , serverName : Maybe String
    , createdAt : Maybe Date
    , disableAutomatedBackup : Maybe Bool
    , endpoint : Maybe String
    , engine : Maybe String
    , engineModel : Maybe String
    , engineAttributes : Maybe (List EngineAttribute)
    , engineVersion : Maybe String
    , instanceProfileArn : Maybe String
    , instanceType : Maybe String
    , keyPair : Maybe String
    , maintenanceStatus : Maybe MaintenanceStatus
    , preferredMaintenanceWindow : Maybe String
    , preferredBackupWindow : Maybe String
    , securityGroupIds : Maybe (List String)
    , serviceRoleArn : Maybe String
    , status : Maybe ServerStatus
    , statusReason : Maybe String
    , subnetIds : Maybe (List String)
    , serverArn : Maybe String
    }



serverDecoder : JD.Decoder Server
serverDecoder =
    JDP.decode Server
        |> JDP.optional "backupRetentionCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "serverName" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "disableAutomatedBackup" (JD.nullable JD.bool) Nothing
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing
        |> JDP.optional "engine" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineModel" (JD.nullable JD.string) Nothing
        |> JDP.optional "engineAttributes" (JD.nullable (JD.list engineAttributeDecoder)) Nothing
        |> JDP.optional "engineVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceProfileArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "instanceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyPair" (JD.nullable JD.string) Nothing
        |> JDP.optional "maintenanceStatus" (JD.nullable maintenanceStatusDecoder) Nothing
        |> JDP.optional "preferredMaintenanceWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "preferredBackupWindow" (JD.nullable JD.string) Nothing
        |> JDP.optional "securityGroupIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "serviceRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable serverStatusDecoder) Nothing
        |> JDP.optional "statusReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "serverArn" (JD.nullable JD.string) Nothing




{-| <p>An event that is related to the server, such as the start of maintenance or backup. </p>
-}
type alias ServerEvent =
    { createdAt : Maybe Date
    , serverName : Maybe String
    , message : Maybe String
    , logUrl : Maybe String
    }



serverEventDecoder : JD.Decoder ServerEvent
serverEventDecoder =
    JDP.decode ServerEvent
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "serverName" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "logUrl" (JD.nullable JD.string) Nothing




{-| One of

* `ServerStatus_BACKING_UP`
* `ServerStatus_CONNECTION_LOST`
* `ServerStatus_CREATING`
* `ServerStatus_DELETING`
* `ServerStatus_MODIFYING`
* `ServerStatus_FAILED`
* `ServerStatus_HEALTHY`
* `ServerStatus_RUNNING`
* `ServerStatus_SETUP`
* `ServerStatus_UNDER_MAINTENANCE`
* `ServerStatus_UNHEALTHY`

-}
type ServerStatus
    = ServerStatus_BACKING_UP
    | ServerStatus_CONNECTION_LOST
    | ServerStatus_CREATING
    | ServerStatus_DELETING
    | ServerStatus_MODIFYING
    | ServerStatus_FAILED
    | ServerStatus_HEALTHY
    | ServerStatus_RUNNING
    | ServerStatus_SETUP
    | ServerStatus_UNDER_MAINTENANCE
    | ServerStatus_UNHEALTHY



serverStatusDecoder : JD.Decoder ServerStatus
serverStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BACKING_UP" ->
                        JD.succeed ServerStatus_BACKING_UP

                    "CONNECTION_LOST" ->
                        JD.succeed ServerStatus_CONNECTION_LOST

                    "CREATING" ->
                        JD.succeed ServerStatus_CREATING

                    "DELETING" ->
                        JD.succeed ServerStatus_DELETING

                    "MODIFYING" ->
                        JD.succeed ServerStatus_MODIFYING

                    "FAILED" ->
                        JD.succeed ServerStatus_FAILED

                    "HEALTHY" ->
                        JD.succeed ServerStatus_HEALTHY

                    "RUNNING" ->
                        JD.succeed ServerStatus_RUNNING

                    "SETUP" ->
                        JD.succeed ServerStatus_SETUP

                    "UNDER_MAINTENANCE" ->
                        JD.succeed ServerStatus_UNDER_MAINTENANCE

                    "UNHEALTHY" ->
                        JD.succeed ServerStatus_UNHEALTHY


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from startMaintenance
-}
type alias StartMaintenanceResponse =
    { server : Maybe Server
    }



startMaintenanceResponseDecoder : JD.Decoder StartMaintenanceResponse
startMaintenanceResponseDecoder =
    JDP.decode StartMaintenanceResponse
        |> JDP.optional "server" (JD.nullable serverDecoder) Nothing




{-| Type of HTTP response from updateServerEngineAttributes
-}
type alias UpdateServerEngineAttributesResponse =
    { server : Maybe Server
    }



updateServerEngineAttributesResponseDecoder : JD.Decoder UpdateServerEngineAttributesResponse
updateServerEngineAttributesResponseDecoder =
    JDP.decode UpdateServerEngineAttributesResponse
        |> JDP.optional "server" (JD.nullable serverDecoder) Nothing




{-| Type of HTTP response from updateServer
-}
type alias UpdateServerResponse =
    { server : Maybe Server
    }



updateServerResponseDecoder : JD.Decoder UpdateServerResponse
updateServerResponseDecoder =
    JDP.decode UpdateServerResponse
        |> JDP.optional "server" (JD.nullable serverDecoder) Nothing




{-| <p>One or more of the provided request parameters are not valid. </p>
-}
type alias ValidationException =
    { message : Maybe String
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




