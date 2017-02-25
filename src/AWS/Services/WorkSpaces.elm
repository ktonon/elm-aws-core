module AWS.Services.WorkSpaces
    exposing
        ( config
        , createTags
        , createWorkspaces
        , deleteTags
        , describeTags
        , describeWorkspaceBundles
        , DescribeWorkspaceBundlesOptions
        , describeWorkspaceDirectories
        , DescribeWorkspaceDirectoriesOptions
        , describeWorkspaces
        , DescribeWorkspacesOptions
        , describeWorkspacesConnectionStatus
        , DescribeWorkspacesConnectionStatusOptions
        , modifyWorkspaceProperties
        , rebootWorkspaces
        , rebuildWorkspaces
        , startWorkspaces
        , stopWorkspaces
        , terminateWorkspaces
        , AccessDeniedException
        , Compute(..)
        , ComputeType
        , ConnectionState(..)
        , CreateTagsResult
        , CreateWorkspacesResult
        , DefaultWorkspaceCreationProperties
        , DeleteTagsResult
        , DescribeTagsResult
        , DescribeWorkspaceBundlesResult
        , DescribeWorkspaceDirectoriesResult
        , DescribeWorkspacesConnectionStatusResult
        , DescribeWorkspacesResult
        , FailedCreateWorkspaceRequest
        , FailedWorkspaceChangeRequest
        , InvalidParameterValuesException
        , InvalidResourceStateException
        , ModifyWorkspacePropertiesResult
        , OperationInProgressException
        , RebootRequest
        , RebootWorkspacesResult
        , RebuildRequest
        , RebuildWorkspacesResult
        , ResourceLimitExceededException
        , ResourceNotFoundException
        , ResourceUnavailableException
        , RunningMode(..)
        , StartRequest
        , StartWorkspacesResult
        , StopRequest
        , StopWorkspacesResult
        , Tag
        , TerminateRequest
        , TerminateWorkspacesResult
        , UnsupportedWorkspaceConfigurationException
        , UserStorage
        , Workspace
        , WorkspaceBundle
        , WorkspaceConnectionStatus
        , WorkspaceDirectory
        , WorkspaceDirectoryState(..)
        , WorkspaceDirectoryType(..)
        , WorkspaceProperties
        , WorkspaceRequest
        , WorkspaceState(..)
        )

{-| <fullname>Amazon WorkSpaces Service</fullname> <p>This reference provides detailed information about the Amazon WorkSpaces operations.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createTags](#createTags)
* [createWorkspaces](#createWorkspaces)
* [deleteTags](#deleteTags)
* [describeTags](#describeTags)
* [describeWorkspaceBundles](#describeWorkspaceBundles)
* [DescribeWorkspaceBundlesOptions](#DescribeWorkspaceBundlesOptions)
* [describeWorkspaceDirectories](#describeWorkspaceDirectories)
* [DescribeWorkspaceDirectoriesOptions](#DescribeWorkspaceDirectoriesOptions)
* [describeWorkspaces](#describeWorkspaces)
* [DescribeWorkspacesOptions](#DescribeWorkspacesOptions)
* [describeWorkspacesConnectionStatus](#describeWorkspacesConnectionStatus)
* [DescribeWorkspacesConnectionStatusOptions](#DescribeWorkspacesConnectionStatusOptions)
* [modifyWorkspaceProperties](#modifyWorkspaceProperties)
* [rebootWorkspaces](#rebootWorkspaces)
* [rebuildWorkspaces](#rebuildWorkspaces)
* [startWorkspaces](#startWorkspaces)
* [stopWorkspaces](#stopWorkspaces)
* [terminateWorkspaces](#terminateWorkspaces)


@docs createTags,createWorkspaces,deleteTags,describeTags,describeWorkspaceBundles,DescribeWorkspaceBundlesOptions,describeWorkspaceDirectories,DescribeWorkspaceDirectoriesOptions,describeWorkspaces,DescribeWorkspacesOptions,describeWorkspacesConnectionStatus,DescribeWorkspacesConnectionStatusOptions,modifyWorkspaceProperties,rebootWorkspaces,rebuildWorkspaces,startWorkspaces,stopWorkspaces,terminateWorkspaces

## Responses

* [CreateTagsResult](#CreateTagsResult)
* [CreateWorkspacesResult](#CreateWorkspacesResult)
* [DeleteTagsResult](#DeleteTagsResult)
* [DescribeTagsResult](#DescribeTagsResult)
* [DescribeWorkspaceBundlesResult](#DescribeWorkspaceBundlesResult)
* [DescribeWorkspaceDirectoriesResult](#DescribeWorkspaceDirectoriesResult)
* [DescribeWorkspacesConnectionStatusResult](#DescribeWorkspacesConnectionStatusResult)
* [DescribeWorkspacesResult](#DescribeWorkspacesResult)
* [ModifyWorkspacePropertiesResult](#ModifyWorkspacePropertiesResult)
* [RebootWorkspacesResult](#RebootWorkspacesResult)
* [RebuildWorkspacesResult](#RebuildWorkspacesResult)
* [StartWorkspacesResult](#StartWorkspacesResult)
* [StopWorkspacesResult](#StopWorkspacesResult)
* [TerminateWorkspacesResult](#TerminateWorkspacesResult)


@docs CreateTagsResult,CreateWorkspacesResult,DeleteTagsResult,DescribeTagsResult,DescribeWorkspaceBundlesResult,DescribeWorkspaceDirectoriesResult,DescribeWorkspacesConnectionStatusResult,DescribeWorkspacesResult,ModifyWorkspacePropertiesResult,RebootWorkspacesResult,RebuildWorkspacesResult,StartWorkspacesResult,StopWorkspacesResult,TerminateWorkspacesResult

## Records

* [ComputeType](#ComputeType)
* [DefaultWorkspaceCreationProperties](#DefaultWorkspaceCreationProperties)
* [FailedCreateWorkspaceRequest](#FailedCreateWorkspaceRequest)
* [FailedWorkspaceChangeRequest](#FailedWorkspaceChangeRequest)
* [RebootRequest](#RebootRequest)
* [RebuildRequest](#RebuildRequest)
* [StartRequest](#StartRequest)
* [StopRequest](#StopRequest)
* [Tag](#Tag)
* [TerminateRequest](#TerminateRequest)
* [UserStorage](#UserStorage)
* [Workspace](#Workspace)
* [WorkspaceBundle](#WorkspaceBundle)
* [WorkspaceConnectionStatus](#WorkspaceConnectionStatus)
* [WorkspaceDirectory](#WorkspaceDirectory)
* [WorkspaceProperties](#WorkspaceProperties)
* [WorkspaceRequest](#WorkspaceRequest)


@docs ComputeType,DefaultWorkspaceCreationProperties,FailedCreateWorkspaceRequest,FailedWorkspaceChangeRequest,RebootRequest,RebuildRequest,StartRequest,StopRequest,Tag,TerminateRequest,UserStorage,Workspace,WorkspaceBundle,WorkspaceConnectionStatus,WorkspaceDirectory,WorkspaceProperties,WorkspaceRequest

## Unions

* [Compute](#Compute)
* [ConnectionState](#ConnectionState)
* [RunningMode](#RunningMode)
* [WorkspaceDirectoryState](#WorkspaceDirectoryState)
* [WorkspaceDirectoryType](#WorkspaceDirectoryType)
* [WorkspaceState](#WorkspaceState)


@docs Compute,ConnectionState,RunningMode,WorkspaceDirectoryState,WorkspaceDirectoryType,WorkspaceState

## Exceptions

* [AccessDeniedException](#AccessDeniedException)
* [InvalidParameterValuesException](#InvalidParameterValuesException)
* [InvalidResourceStateException](#InvalidResourceStateException)
* [OperationInProgressException](#OperationInProgressException)
* [ResourceLimitExceededException](#ResourceLimitExceededException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ResourceUnavailableException](#ResourceUnavailableException)
* [UnsupportedWorkspaceConfigurationException](#UnsupportedWorkspaceConfigurationException)


@docs AccessDeniedException,InvalidParameterValuesException,InvalidResourceStateException,OperationInProgressException,ResourceLimitExceededException,ResourceNotFoundException,ResourceUnavailableException,UnsupportedWorkspaceConfigurationException

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
        "workspaces"
        "2015-04-08"
        "1.1"
        "AWSWORKSPACES_20150408."
        "workspaces.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates tags for a WorkSpace.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
createTags :
    String
    -> (List Tag)
    -> AWS.Request CreateTagsResult
createTags resourceId tags =
    AWS.Http.unsignedRequest
        "CreateTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTagsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates one or more WorkSpaces.</p> <note> <p>This operation is asynchronous and returns before the WorkSpaces are created.</p> </note>

__Required Parameters__

* `workspaces` __:__ `(List WorkspaceRequest)`


-}
createWorkspaces :
    (List WorkspaceRequest)
    -> AWS.Request CreateWorkspacesResult
createWorkspaces workspaces =
    AWS.Http.unsignedRequest
        "CreateWorkspaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createWorkspacesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes tags from a WorkSpace.</p>

__Required Parameters__

* `resourceId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
deleteTags :
    String
    -> (List String)
    -> AWS.Request DeleteTagsResult
deleteTags resourceId tagKeys =
    AWS.Http.unsignedRequest
        "DeleteTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTagsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes tags for a WorkSpace.</p>

__Required Parameters__

* `resourceId` __:__ `String`


-}
describeTags :
    String
    -> AWS.Request DescribeTagsResult
describeTags resourceId =
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTagsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Obtains information about the WorkSpace bundles that are available to your account in the specified region.</p> <p>You can filter the results with either the <code>BundleIds</code> parameter, or the <code>Owner</code> parameter, but not both.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> request and response parameters. If more results are available, the <code>NextToken</code> response member contains a token that you pass in the next call to this operation to retrieve the next set of items.</p>

__Required Parameters__



-}
describeWorkspaceBundles :
    (DescribeWorkspaceBundlesOptions -> DescribeWorkspaceBundlesOptions)
    -> AWS.Request DescribeWorkspaceBundlesResult
describeWorkspaceBundles setOptions =
  let
    options = setOptions (DescribeWorkspaceBundlesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeWorkspaceBundles"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeWorkspaceBundlesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeWorkspaceBundles request
-}
type alias DescribeWorkspaceBundlesOptions =
    { bundleIds : Maybe (List String)
    , owner : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Retrieves information about the AWS Directory Service directories in the region that are registered with Amazon WorkSpaces and are available to your account.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> request and response parameters. If more results are available, the <code>NextToken</code> response member contains a token that you pass in the next call to this operation to retrieve the next set of items.</p>

__Required Parameters__



-}
describeWorkspaceDirectories :
    (DescribeWorkspaceDirectoriesOptions -> DescribeWorkspaceDirectoriesOptions)
    -> AWS.Request DescribeWorkspaceDirectoriesResult
describeWorkspaceDirectories setOptions =
  let
    options = setOptions (DescribeWorkspaceDirectoriesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeWorkspaceDirectories"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeWorkspaceDirectoriesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeWorkspaceDirectories request
-}
type alias DescribeWorkspaceDirectoriesOptions =
    { directoryIds : Maybe (List String)
    , nextToken : Maybe String
    }



{-| <p>Obtains information about the specified WorkSpaces.</p> <p>Only one of the filter parameters, such as <code>BundleId</code>, <code>DirectoryId</code>, or <code>WorkspaceIds</code>, can be specified at a time.</p> <p>This operation supports pagination with the use of the <code>NextToken</code> request and response parameters. If more results are available, the <code>NextToken</code> response member contains a token that you pass in the next call to this operation to retrieve the next set of items.</p>

__Required Parameters__



-}
describeWorkspaces :
    (DescribeWorkspacesOptions -> DescribeWorkspacesOptions)
    -> AWS.Request DescribeWorkspacesResult
describeWorkspaces setOptions =
  let
    options = setOptions (DescribeWorkspacesOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeWorkspaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeWorkspacesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeWorkspaces request
-}
type alias DescribeWorkspacesOptions =
    { workspaceIds : Maybe (List String)
    , directoryId : Maybe String
    , userName : Maybe String
    , bundleId : Maybe String
    , limit : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Describes the connection status of a specified WorkSpace.</p>

__Required Parameters__



-}
describeWorkspacesConnectionStatus :
    (DescribeWorkspacesConnectionStatusOptions -> DescribeWorkspacesConnectionStatusOptions)
    -> AWS.Request DescribeWorkspacesConnectionStatusResult
describeWorkspacesConnectionStatus setOptions =
  let
    options = setOptions (DescribeWorkspacesConnectionStatusOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeWorkspacesConnectionStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeWorkspacesConnectionStatusResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeWorkspacesConnectionStatus request
-}
type alias DescribeWorkspacesConnectionStatusOptions =
    { workspaceIds : Maybe (List String)
    , nextToken : Maybe String
    }



{-| <p>Modifies the WorkSpace properties, including the RunningMode and AutoStop time.</p>

__Required Parameters__

* `workspaceId` __:__ `String`
* `workspaceProperties` __:__ `WorkspaceProperties`


-}
modifyWorkspaceProperties :
    String
    -> WorkspaceProperties
    -> AWS.Request ModifyWorkspacePropertiesResult
modifyWorkspaceProperties workspaceId workspaceProperties =
    AWS.Http.unsignedRequest
        "ModifyWorkspaceProperties"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyWorkspacePropertiesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Reboots the specified WorkSpaces.</p> <p>To be able to reboot a WorkSpace, the WorkSpace must have a <b>State</b> of <code>AVAILABLE</code>, <code>IMPAIRED</code>, or <code>INOPERABLE</code>.</p> <note> <p>This operation is asynchronous and returns before the WorkSpaces have rebooted.</p> </note>

__Required Parameters__

* `rebootWorkspaceRequests` __:__ `(List RebootRequest)`


-}
rebootWorkspaces :
    (List RebootRequest)
    -> AWS.Request RebootWorkspacesResult
rebootWorkspaces rebootWorkspaceRequests =
    AWS.Http.unsignedRequest
        "RebootWorkspaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rebootWorkspacesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Rebuilds the specified WorkSpaces.</p> <p>Rebuilding a WorkSpace is a potentially destructive action that can result in the loss of data. Rebuilding a WorkSpace causes the following to occur:</p> <ul> <li> <p>The system is restored to the image of the bundle that the WorkSpace is created from. Any applications that have been installed, or system settings that have been made since the WorkSpace was created will be lost.</p> </li> <li> <p>The data drive (D drive) is re-created from the last automatic snapshot taken of the data drive. The current contents of the data drive are overwritten. Automatic snapshots of the data drive are taken every 12 hours, so the snapshot can be as much as 12 hours old.</p> </li> </ul> <p>To be able to rebuild a WorkSpace, the WorkSpace must have a <b>State</b> of <code>AVAILABLE</code> or <code>ERROR</code>.</p> <note> <p>This operation is asynchronous and returns before the WorkSpaces have been completely rebuilt.</p> </note>

__Required Parameters__

* `rebuildWorkspaceRequests` __:__ `(List RebuildRequest)`


-}
rebuildWorkspaces :
    (List RebuildRequest)
    -> AWS.Request RebuildWorkspacesResult
rebuildWorkspaces rebuildWorkspaceRequests =
    AWS.Http.unsignedRequest
        "RebuildWorkspaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        rebuildWorkspacesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Starts the specified WorkSpaces. The API only works with WorkSpaces that have RunningMode configured as AutoStop and the State set to “STOPPED.”</p>

__Required Parameters__

* `startWorkspaceRequests` __:__ `(List StartRequest)`


-}
startWorkspaces :
    (List StartRequest)
    -> AWS.Request StartWorkspacesResult
startWorkspaces startWorkspaceRequests =
    AWS.Http.unsignedRequest
        "StartWorkspaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startWorkspacesResultDecoder
        |> AWS.UnsignedRequest



{-| <p> Stops the specified WorkSpaces. The API only works with WorkSpaces that have RunningMode configured as AutoStop and the State set to AVAILABLE, IMPAIRED, UNHEALTHY, or ERROR.</p>

__Required Parameters__

* `stopWorkspaceRequests` __:__ `(List StopRequest)`


-}
stopWorkspaces :
    (List StopRequest)
    -> AWS.Request StopWorkspacesResult
stopWorkspaces stopWorkspaceRequests =
    AWS.Http.unsignedRequest
        "StopWorkspaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopWorkspacesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Terminates the specified WorkSpaces.</p> <p>Terminating a WorkSpace is a permanent action and cannot be undone. The user's data is not maintained and will be destroyed. If you need to archive any user data, contact Amazon Web Services before terminating the WorkSpace.</p> <p>You can terminate a WorkSpace that is in any state except <code>SUSPENDED</code>.</p> <note> <p>This operation is asynchronous and returns before the WorkSpaces have been completely terminated.</p> </note>

__Required Parameters__

* `terminateWorkspaceRequests` __:__ `(List TerminateRequest)`


-}
terminateWorkspaces :
    (List TerminateRequest)
    -> AWS.Request TerminateWorkspacesResult
terminateWorkspaces terminateWorkspaceRequests =
    AWS.Http.unsignedRequest
        "TerminateWorkspaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        terminateWorkspacesResultDecoder
        |> AWS.UnsignedRequest




{-| undefined
-}
type alias AccessDeniedException =
    { message : Maybe String
    }



accessDeniedExceptionDecoder : JD.Decoder AccessDeniedException
accessDeniedExceptionDecoder =
    JDP.decode AccessDeniedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `Compute_VALUE`
* `Compute_STANDARD`
* `Compute_PERFORMANCE`

-}
type Compute
    = Compute_VALUE
    | Compute_STANDARD
    | Compute_PERFORMANCE



computeDecoder : JD.Decoder Compute
computeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "VALUE" ->
                        JD.succeed Compute_VALUE

                    "STANDARD" ->
                        JD.succeed Compute_STANDARD

                    "PERFORMANCE" ->
                        JD.succeed Compute_PERFORMANCE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about the compute type of a WorkSpace bundle.</p>
-}
type alias ComputeType =
    { name : Maybe Compute
    }



computeTypeDecoder : JD.Decoder ComputeType
computeTypeDecoder =
    JDP.decode ComputeType
        |> JDP.optional "name" (JD.nullable computeDecoder) Nothing




{-| One of

* `ConnectionState_CONNECTED`
* `ConnectionState_DISCONNECTED`
* `ConnectionState_UNKNOWN`

-}
type ConnectionState
    = ConnectionState_CONNECTED
    | ConnectionState_DISCONNECTED
    | ConnectionState_UNKNOWN



connectionStateDecoder : JD.Decoder ConnectionState
connectionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CONNECTED" ->
                        JD.succeed ConnectionState_CONNECTED

                    "DISCONNECTED" ->
                        JD.succeed ConnectionState_DISCONNECTED

                    "UNKNOWN" ->
                        JD.succeed ConnectionState_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createTa
-}
type alias CreateTagsResult =
    { 
    }



createTagsResultDecoder : JD.Decoder CreateTagsResult
createTagsResultDecoder =
    JDP.decode CreateTagsResult



{-| Type of HTTP response from createWorkspac
-}
type alias CreateWorkspacesResult =
    { failedRequests : Maybe (List FailedCreateWorkspaceRequest)
    , pendingRequests : Maybe (List Workspace)
    }



createWorkspacesResultDecoder : JD.Decoder CreateWorkspacesResult
createWorkspacesResultDecoder =
    JDP.decode CreateWorkspacesResult
        |> JDP.optional "failedRequests" (JD.nullable (JD.list failedCreateWorkspaceRequestDecoder)) Nothing
        |> JDP.optional "pendingRequests" (JD.nullable (JD.list workspaceDecoder)) Nothing




{-| <p>Contains default WorkSpace creation information.</p>
-}
type alias DefaultWorkspaceCreationProperties =
    { enableWorkDocs : Maybe Bool
    , enableInternetAccess : Maybe Bool
    , defaultOu : Maybe String
    , customSecurityGroupId : Maybe String
    , userEnabledAsLocalAdministrator : Maybe Bool
    }



defaultWorkspaceCreationPropertiesDecoder : JD.Decoder DefaultWorkspaceCreationProperties
defaultWorkspaceCreationPropertiesDecoder =
    JDP.decode DefaultWorkspaceCreationProperties
        |> JDP.optional "enableWorkDocs" (JD.nullable JD.bool) Nothing
        |> JDP.optional "enableInternetAccess" (JD.nullable JD.bool) Nothing
        |> JDP.optional "defaultOu" (JD.nullable JD.string) Nothing
        |> JDP.optional "customSecurityGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "userEnabledAsLocalAdministrator" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from deleteTa
-}
type alias DeleteTagsResult =
    { 
    }



deleteTagsResultDecoder : JD.Decoder DeleteTagsResult
deleteTagsResultDecoder =
    JDP.decode DeleteTagsResult



{-| Type of HTTP response from describeTa
-}
type alias DescribeTagsResult =
    { tagList : Maybe (List Tag)
    }



describeTagsResultDecoder : JD.Decoder DescribeTagsResult
describeTagsResultDecoder =
    JDP.decode DescribeTagsResult
        |> JDP.optional "tagList" (JD.nullable (JD.list tagDecoder)) Nothing




{-| Type of HTTP response from describeWorkspaceBundl
-}
type alias DescribeWorkspaceBundlesResult =
    { bundles : Maybe (List WorkspaceBundle)
    , nextToken : Maybe String
    }



describeWorkspaceBundlesResultDecoder : JD.Decoder DescribeWorkspaceBundlesResult
describeWorkspaceBundlesResultDecoder =
    JDP.decode DescribeWorkspaceBundlesResult
        |> JDP.optional "bundles" (JD.nullable (JD.list workspaceBundleDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeWorkspaceDirectori
-}
type alias DescribeWorkspaceDirectoriesResult =
    { directories : Maybe (List WorkspaceDirectory)
    , nextToken : Maybe String
    }



describeWorkspaceDirectoriesResultDecoder : JD.Decoder DescribeWorkspaceDirectoriesResult
describeWorkspaceDirectoriesResultDecoder =
    JDP.decode DescribeWorkspaceDirectoriesResult
        |> JDP.optional "directories" (JD.nullable (JD.list workspaceDirectoryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeWorkspacesConnectionStat
-}
type alias DescribeWorkspacesConnectionStatusResult =
    { workspacesConnectionStatus : Maybe (List WorkspaceConnectionStatus)
    , nextToken : Maybe String
    }



describeWorkspacesConnectionStatusResultDecoder : JD.Decoder DescribeWorkspacesConnectionStatusResult
describeWorkspacesConnectionStatusResultDecoder =
    JDP.decode DescribeWorkspacesConnectionStatusResult
        |> JDP.optional "workspacesConnectionStatus" (JD.nullable (JD.list workspaceConnectionStatusDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeWorkspac
-}
type alias DescribeWorkspacesResult =
    { workspaces : Maybe (List Workspace)
    , nextToken : Maybe String
    }



describeWorkspacesResultDecoder : JD.Decoder DescribeWorkspacesResult
describeWorkspacesResultDecoder =
    JDP.decode DescribeWorkspacesResult
        |> JDP.optional "workspaces" (JD.nullable (JD.list workspaceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a WorkSpace that could not be created.</p>
-}
type alias FailedCreateWorkspaceRequest =
    { workspaceRequest : Maybe WorkspaceRequest
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



failedCreateWorkspaceRequestDecoder : JD.Decoder FailedCreateWorkspaceRequest
failedCreateWorkspaceRequestDecoder =
    JDP.decode FailedCreateWorkspaceRequest
        |> JDP.optional "workspaceRequest" (JD.nullable workspaceRequestDecoder) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a WorkSpace that could not be rebooted (<a>RebootWorkspaces</a>), rebuilt (<a>RebuildWorkspaces</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>
-}
type alias FailedWorkspaceChangeRequest =
    { workspaceId : Maybe String
    , errorCode : Maybe String
    , errorMessage : Maybe String
    }



failedWorkspaceChangeRequestDecoder : JD.Decoder FailedWorkspaceChangeRequest
failedWorkspaceChangeRequestDecoder =
    JDP.decode FailedWorkspaceChangeRequest
        |> JDP.optional "workspaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing




{-| <p>One or more parameter values are not valid.</p>
-}
type alias InvalidParameterValuesException =
    { message : Maybe String
    }



invalidParameterValuesExceptionDecoder : JD.Decoder InvalidParameterValuesException
invalidParameterValuesExceptionDecoder =
    JDP.decode InvalidParameterValuesException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified WorkSpace has an invalid state for this operation.</p>
-}
type alias InvalidResourceStateException =
    { message : Maybe String
    }



invalidResourceStateExceptionDecoder : JD.Decoder InvalidResourceStateException
invalidResourceStateExceptionDecoder =
    JDP.decode InvalidResourceStateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from modifyWorkspaceProperti
-}
type alias ModifyWorkspacePropertiesResult =
    { 
    }



modifyWorkspacePropertiesResultDecoder : JD.Decoder ModifyWorkspacePropertiesResult
modifyWorkspacePropertiesResultDecoder =
    JDP.decode ModifyWorkspacePropertiesResult



{-| <p>The properties of this WorkSpace are currently being modified. Try again in a moment.</p>
-}
type alias OperationInProgressException =
    { message : Maybe String
    }



operationInProgressExceptionDecoder : JD.Decoder OperationInProgressException
operationInProgressExceptionDecoder =
    JDP.decode OperationInProgressException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information used with the <a>RebootWorkspaces</a> operation to reboot a WorkSpace.</p>
-}
type alias RebootRequest =
    { workspaceId : String
    }



rebootRequestDecoder : JD.Decoder RebootRequest
rebootRequestDecoder =
    JDP.decode RebootRequest
        |> JDP.required "workspaceId" JD.string




{-| Type of HTTP response from rebootWorkspac
-}
type alias RebootWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



rebootWorkspacesResultDecoder : JD.Decoder RebootWorkspacesResult
rebootWorkspacesResultDecoder =
    JDP.decode RebootWorkspacesResult
        |> JDP.optional "failedRequests" (JD.nullable (JD.list failedWorkspaceChangeRequestDecoder)) Nothing




{-| <p>Contains information used with the <a>RebuildWorkspaces</a> operation to rebuild a WorkSpace.</p>
-}
type alias RebuildRequest =
    { workspaceId : String
    }



rebuildRequestDecoder : JD.Decoder RebuildRequest
rebuildRequestDecoder =
    JDP.decode RebuildRequest
        |> JDP.required "workspaceId" JD.string




{-| Type of HTTP response from rebuildWorkspac
-}
type alias RebuildWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



rebuildWorkspacesResultDecoder : JD.Decoder RebuildWorkspacesResult
rebuildWorkspacesResultDecoder =
    JDP.decode RebuildWorkspacesResult
        |> JDP.optional "failedRequests" (JD.nullable (JD.list failedWorkspaceChangeRequestDecoder)) Nothing




{-| <p>Your resource limits have been exceeded.</p>
-}
type alias ResourceLimitExceededException =
    { message : Maybe String
    }



resourceLimitExceededExceptionDecoder : JD.Decoder ResourceLimitExceededException
resourceLimitExceededExceptionDecoder =
    JDP.decode ResourceLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The resource could not be found.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    , resourceId : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing




{-| <p>The specified resource is not available.</p>
-}
type alias ResourceUnavailableException =
    { message : Maybe String
    , resourceId : Maybe String
    }



resourceUnavailableExceptionDecoder : JD.Decoder ResourceUnavailableException
resourceUnavailableExceptionDecoder =
    JDP.decode ResourceUnavailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing




{-| One of

* `RunningMode_AUTO_STOP`
* `RunningMode_ALWAYS_ON`

-}
type RunningMode
    = RunningMode_AUTO_STOP
    | RunningMode_ALWAYS_ON



runningModeDecoder : JD.Decoder RunningMode
runningModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AUTO_STOP" ->
                        JD.succeed RunningMode_AUTO_STOP

                    "ALWAYS_ON" ->
                        JD.succeed RunningMode_ALWAYS_ON


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the start request.</p>
-}
type alias StartRequest =
    { workspaceId : Maybe String
    }



startRequestDecoder : JD.Decoder StartRequest
startRequestDecoder =
    JDP.decode StartRequest
        |> JDP.optional "workspaceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from startWorkspac
-}
type alias StartWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



startWorkspacesResultDecoder : JD.Decoder StartWorkspacesResult
startWorkspacesResultDecoder =
    JDP.decode StartWorkspacesResult
        |> JDP.optional "failedRequests" (JD.nullable (JD.list failedWorkspaceChangeRequestDecoder)) Nothing




{-| <p>Describes the stop request.</p>
-}
type alias StopRequest =
    { workspaceId : Maybe String
    }



stopRequestDecoder : JD.Decoder StopRequest
stopRequestDecoder =
    JDP.decode StopRequest
        |> JDP.optional "workspaceId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from stopWorkspac
-}
type alias StopWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



stopWorkspacesResultDecoder : JD.Decoder StopWorkspacesResult
stopWorkspacesResultDecoder =
    JDP.decode StopWorkspacesResult
        |> JDP.optional "failedRequests" (JD.nullable (JD.list failedWorkspaceChangeRequestDecoder)) Nothing




{-| <p>Describes the tag of the WorkSpace.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>Contains information used with the <a>TerminateWorkspaces</a> operation to terminate a WorkSpace.</p>
-}
type alias TerminateRequest =
    { workspaceId : String
    }



terminateRequestDecoder : JD.Decoder TerminateRequest
terminateRequestDecoder =
    JDP.decode TerminateRequest
        |> JDP.required "workspaceId" JD.string




{-| Type of HTTP response from terminateWorkspac
-}
type alias TerminateWorkspacesResult =
    { failedRequests : Maybe (List FailedWorkspaceChangeRequest)
    }



terminateWorkspacesResultDecoder : JD.Decoder TerminateWorkspacesResult
terminateWorkspacesResultDecoder =
    JDP.decode TerminateWorkspacesResult
        |> JDP.optional "failedRequests" (JD.nullable (JD.list failedWorkspaceChangeRequestDecoder)) Nothing




{-| <p>The WorkSpace does not have the supported configuration for this operation. For more information, see the <a href="http://docs.aws.amazon.com/workspaces/latest/adminguide">Amazon WorkSpaces Administration Guide</a>. </p>
-}
type alias UnsupportedWorkspaceConfigurationException =
    { message : Maybe String
    }



unsupportedWorkspaceConfigurationExceptionDecoder : JD.Decoder UnsupportedWorkspaceConfigurationException
unsupportedWorkspaceConfigurationExceptionDecoder =
    JDP.decode UnsupportedWorkspaceConfigurationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information about the user storage for a WorkSpace bundle.</p>
-}
type alias UserStorage =
    { capacity : Maybe String
    }



userStorageDecoder : JD.Decoder UserStorage
userStorageDecoder =
    JDP.decode UserStorage
        |> JDP.optional "capacity" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a WorkSpace.</p>
-}
type alias Workspace =
    { workspaceId : Maybe String
    , directoryId : Maybe String
    , userName : Maybe String
    , ipAddress : Maybe String
    , state : Maybe WorkspaceState
    , bundleId : Maybe String
    , subnetId : Maybe String
    , errorMessage : Maybe String
    , errorCode : Maybe String
    , computerName : Maybe String
    , volumeEncryptionKey : Maybe String
    , userVolumeEncryptionEnabled : Maybe Bool
    , rootVolumeEncryptionEnabled : Maybe Bool
    , workspaceProperties : Maybe WorkspaceProperties
    }



workspaceDecoder : JD.Decoder Workspace
workspaceDecoder =
    JDP.decode Workspace
        |> JDP.optional "workspaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "userName" (JD.nullable JD.string) Nothing
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable workspaceStateDecoder) Nothing
        |> JDP.optional "bundleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "computerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "volumeEncryptionKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "userVolumeEncryptionEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "rootVolumeEncryptionEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "workspaceProperties" (JD.nullable workspacePropertiesDecoder) Nothing




{-| <p>Contains information about a WorkSpace bundle.</p>
-}
type alias WorkspaceBundle =
    { bundleId : Maybe String
    , name : Maybe String
    , owner : Maybe String
    , description : Maybe String
    , userStorage : Maybe UserStorage
    , computeType : Maybe ComputeType
    }



workspaceBundleDecoder : JD.Decoder WorkspaceBundle
workspaceBundleDecoder =
    JDP.decode WorkspaceBundle
        |> JDP.optional "bundleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "owner" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "userStorage" (JD.nullable userStorageDecoder) Nothing
        |> JDP.optional "computeType" (JD.nullable computeTypeDecoder) Nothing




{-| <p>Describes the connection status of a WorkSpace.</p>
-}
type alias WorkspaceConnectionStatus =
    { workspaceId : Maybe String
    , connectionState : Maybe ConnectionState
    , connectionStateCheckTimestamp : Maybe Date
    , lastKnownUserConnectionTimestamp : Maybe Date
    }



workspaceConnectionStatusDecoder : JD.Decoder WorkspaceConnectionStatus
workspaceConnectionStatusDecoder =
    JDP.decode WorkspaceConnectionStatus
        |> JDP.optional "workspaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "connectionState" (JD.nullable connectionStateDecoder) Nothing
        |> JDP.optional "connectionStateCheckTimestamp" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastKnownUserConnectionTimestamp" (JD.nullable JDX.date) Nothing




{-| <p>Contains information about an AWS Directory Service directory for use with Amazon WorkSpaces.</p>
-}
type alias WorkspaceDirectory =
    { directoryId : Maybe String
    , alias : Maybe String
    , directoryName : Maybe String
    , registrationCode : Maybe String
    , subnetIds : Maybe (List String)
    , dnsIpAddresses : Maybe (List String)
    , customerUserName : Maybe String
    , iamRoleId : Maybe String
    , directoryType : Maybe WorkspaceDirectoryType
    , workspaceSecurityGroupId : Maybe String
    , state : Maybe WorkspaceDirectoryState
    , workspaceCreationProperties : Maybe DefaultWorkspaceCreationProperties
    }



workspaceDirectoryDecoder : JD.Decoder WorkspaceDirectory
workspaceDirectoryDecoder =
    JDP.decode WorkspaceDirectory
        |> JDP.optional "directoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "alias" (JD.nullable JD.string) Nothing
        |> JDP.optional "directoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "registrationCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "dnsIpAddresses" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "customerUserName" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamRoleId" (JD.nullable JD.string) Nothing
        |> JDP.optional "directoryType" (JD.nullable workspaceDirectoryTypeDecoder) Nothing
        |> JDP.optional "workspaceSecurityGroupId" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable workspaceDirectoryStateDecoder) Nothing
        |> JDP.optional "workspaceCreationProperties" (JD.nullable defaultWorkspaceCreationPropertiesDecoder) Nothing




{-| One of

* `WorkspaceDirectoryState_REGISTERING`
* `WorkspaceDirectoryState_REGISTERED`
* `WorkspaceDirectoryState_DEREGISTERING`
* `WorkspaceDirectoryState_DEREGISTERED`
* `WorkspaceDirectoryState_ERROR`

-}
type WorkspaceDirectoryState
    = WorkspaceDirectoryState_REGISTERING
    | WorkspaceDirectoryState_REGISTERED
    | WorkspaceDirectoryState_DEREGISTERING
    | WorkspaceDirectoryState_DEREGISTERED
    | WorkspaceDirectoryState_ERROR



workspaceDirectoryStateDecoder : JD.Decoder WorkspaceDirectoryState
workspaceDirectoryStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REGISTERING" ->
                        JD.succeed WorkspaceDirectoryState_REGISTERING

                    "REGISTERED" ->
                        JD.succeed WorkspaceDirectoryState_REGISTERED

                    "DEREGISTERING" ->
                        JD.succeed WorkspaceDirectoryState_DEREGISTERING

                    "DEREGISTERED" ->
                        JD.succeed WorkspaceDirectoryState_DEREGISTERED

                    "ERROR" ->
                        JD.succeed WorkspaceDirectoryState_ERROR


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `WorkspaceDirectoryType_SIMPLE_AD`
* `WorkspaceDirectoryType_AD_CONNECTOR`

-}
type WorkspaceDirectoryType
    = WorkspaceDirectoryType_SIMPLE_AD
    | WorkspaceDirectoryType_AD_CONNECTOR



workspaceDirectoryTypeDecoder : JD.Decoder WorkspaceDirectoryType
workspaceDirectoryTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SIMPLE_AD" ->
                        JD.succeed WorkspaceDirectoryType_SIMPLE_AD

                    "AD_CONNECTOR" ->
                        JD.succeed WorkspaceDirectoryType_AD_CONNECTOR


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the properties of a WorkSpace.</p>
-}
type alias WorkspaceProperties =
    { runningMode : Maybe RunningMode
    , runningModeAutoStopTimeoutInMinutes : Maybe Int
    }



workspacePropertiesDecoder : JD.Decoder WorkspaceProperties
workspacePropertiesDecoder =
    JDP.decode WorkspaceProperties
        |> JDP.optional "runningMode" (JD.nullable runningModeDecoder) Nothing
        |> JDP.optional "runningModeAutoStopTimeoutInMinutes" (JD.nullable JD.int) Nothing




{-| <p>Contains information about a WorkSpace creation request.</p>
-}
type alias WorkspaceRequest =
    { directoryId : String
    , userName : String
    , bundleId : String
    , volumeEncryptionKey : Maybe String
    , userVolumeEncryptionEnabled : Maybe Bool
    , rootVolumeEncryptionEnabled : Maybe Bool
    , workspaceProperties : Maybe WorkspaceProperties
    , tags : Maybe (List Tag)
    }



workspaceRequestDecoder : JD.Decoder WorkspaceRequest
workspaceRequestDecoder =
    JDP.decode WorkspaceRequest
        |> JDP.required "directoryId" JD.string
        |> JDP.required "userName" JD.string
        |> JDP.required "bundleId" JD.string
        |> JDP.optional "volumeEncryptionKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "userVolumeEncryptionEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "rootVolumeEncryptionEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "workspaceProperties" (JD.nullable workspacePropertiesDecoder) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `WorkspaceState_PENDING`
* `WorkspaceState_AVAILABLE`
* `WorkspaceState_IMPAIRED`
* `WorkspaceState_UNHEALTHY`
* `WorkspaceState_REBOOTING`
* `WorkspaceState_STARTING`
* `WorkspaceState_REBUILDING`
* `WorkspaceState_MAINTENANCE`
* `WorkspaceState_TERMINATING`
* `WorkspaceState_TERMINATED`
* `WorkspaceState_SUSPENDED`
* `WorkspaceState_STOPPING`
* `WorkspaceState_STOPPED`
* `WorkspaceState_ERROR`

-}
type WorkspaceState
    = WorkspaceState_PENDING
    | WorkspaceState_AVAILABLE
    | WorkspaceState_IMPAIRED
    | WorkspaceState_UNHEALTHY
    | WorkspaceState_REBOOTING
    | WorkspaceState_STARTING
    | WorkspaceState_REBUILDING
    | WorkspaceState_MAINTENANCE
    | WorkspaceState_TERMINATING
    | WorkspaceState_TERMINATED
    | WorkspaceState_SUSPENDED
    | WorkspaceState_STOPPING
    | WorkspaceState_STOPPED
    | WorkspaceState_ERROR



workspaceStateDecoder : JD.Decoder WorkspaceState
workspaceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed WorkspaceState_PENDING

                    "AVAILABLE" ->
                        JD.succeed WorkspaceState_AVAILABLE

                    "IMPAIRED" ->
                        JD.succeed WorkspaceState_IMPAIRED

                    "UNHEALTHY" ->
                        JD.succeed WorkspaceState_UNHEALTHY

                    "REBOOTING" ->
                        JD.succeed WorkspaceState_REBOOTING

                    "STARTING" ->
                        JD.succeed WorkspaceState_STARTING

                    "REBUILDING" ->
                        JD.succeed WorkspaceState_REBUILDING

                    "MAINTENANCE" ->
                        JD.succeed WorkspaceState_MAINTENANCE

                    "TERMINATING" ->
                        JD.succeed WorkspaceState_TERMINATING

                    "TERMINATED" ->
                        JD.succeed WorkspaceState_TERMINATED

                    "SUSPENDED" ->
                        JD.succeed WorkspaceState_SUSPENDED

                    "STOPPING" ->
                        JD.succeed WorkspaceState_STOPPING

                    "STOPPED" ->
                        JD.succeed WorkspaceState_STOPPED

                    "ERROR" ->
                        JD.succeed WorkspaceState_ERROR


                    _ ->
                        JD.fail "bad thing"
            )



