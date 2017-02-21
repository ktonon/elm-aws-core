module AWS.Services.EFS
    exposing
        ( config
        , createFileSystem
        , CreateFileSystemOptions
        , createMountTarget
        , CreateMountTargetOptions
        , createTags
        , deleteFileSystem
        , deleteMountTarget
        , deleteTags
        , describeFileSystems
        , DescribeFileSystemsOptions
        , describeMountTargetSecurityGroups
        , describeMountTargets
        , DescribeMountTargetsOptions
        , describeTags
        , DescribeTagsOptions
        , modifyMountTargetSecurityGroups
        , ModifyMountTargetSecurityGroupsOptions
        , BadRequest
        , DependencyTimeout
        , DescribeFileSystemsResponse
        , DescribeMountTargetSecurityGroupsResponse
        , DescribeMountTargetsResponse
        , DescribeTagsResponse
        , FileSystemAlreadyExists
        , FileSystemDescription
        , FileSystemInUse
        , FileSystemLimitExceeded
        , FileSystemNotFound
        , FileSystemSize
        , IncorrectFileSystemLifeCycleState
        , IncorrectMountTargetState
        , InternalServerError
        , IpAddressInUse
        , LifeCycleState(..)
        , MountTargetConflict
        , MountTargetDescription
        , MountTargetNotFound
        , NetworkInterfaceLimitExceeded
        , NoFreeAddressesInSubnet
        , PerformanceMode(..)
        , SecurityGroupLimitExceeded
        , SecurityGroupNotFound
        , SubnetNotFound
        , Tag
        , UnsupportedAvailabilityZone
        )

{-| <fullname>Amazon Elastic File System</fullname> <p>Amazon Elastic File System (Amazon EFS) provides simple, scalable file storage for use with Amazon EC2 instances in the AWS Cloud. With Amazon EFS, storage capacity is elastic, growing and shrinking automatically as you add and remove files, so your applications have the storage they need, when they need it. For more information, see the <a href="http://docs.aws.amazon.com/efs/latest/ug/api-reference.html">User Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createFileSystem](#createFileSystem)
* [CreateFileSystemOptions](#CreateFileSystemOptions)
* [createMountTarget](#createMountTarget)
* [CreateMountTargetOptions](#CreateMountTargetOptions)
* [createTags](#createTags)
* [deleteFileSystem](#deleteFileSystem)
* [deleteMountTarget](#deleteMountTarget)
* [deleteTags](#deleteTags)
* [describeFileSystems](#describeFileSystems)
* [DescribeFileSystemsOptions](#DescribeFileSystemsOptions)
* [describeMountTargetSecurityGroups](#describeMountTargetSecurityGroups)
* [describeMountTargets](#describeMountTargets)
* [DescribeMountTargetsOptions](#DescribeMountTargetsOptions)
* [describeTags](#describeTags)
* [DescribeTagsOptions](#DescribeTagsOptions)
* [modifyMountTargetSecurityGroups](#modifyMountTargetSecurityGroups)
* [ModifyMountTargetSecurityGroupsOptions](#ModifyMountTargetSecurityGroupsOptions)


@docs createFileSystem,CreateFileSystemOptions,createMountTarget,CreateMountTargetOptions,createTags,deleteFileSystem,deleteMountTarget,deleteTags,describeFileSystems,DescribeFileSystemsOptions,describeMountTargetSecurityGroups,describeMountTargets,DescribeMountTargetsOptions,describeTags,DescribeTagsOptions,modifyMountTargetSecurityGroups,ModifyMountTargetSecurityGroupsOptions

## Responses

* [DescribeFileSystemsResponse](#DescribeFileSystemsResponse)
* [DescribeMountTargetSecurityGroupsResponse](#DescribeMountTargetSecurityGroupsResponse)
* [DescribeMountTargetsResponse](#DescribeMountTargetsResponse)
* [DescribeTagsResponse](#DescribeTagsResponse)
* [FileSystemDescription](#FileSystemDescription)
* [MountTargetDescription](#MountTargetDescription)


@docs DescribeFileSystemsResponse,DescribeMountTargetSecurityGroupsResponse,DescribeMountTargetsResponse,DescribeTagsResponse,FileSystemDescription,MountTargetDescription

## Records

* [FileSystemSize](#FileSystemSize)
* [Tag](#Tag)


@docs FileSystemSize,Tag

## Unions

* [LifeCycleState](#LifeCycleState)
* [PerformanceMode](#PerformanceMode)


@docs LifeCycleState,PerformanceMode

## Exceptions

* [BadRequest](#BadRequest)
* [DependencyTimeout](#DependencyTimeout)
* [FileSystemAlreadyExists](#FileSystemAlreadyExists)
* [FileSystemInUse](#FileSystemInUse)
* [FileSystemLimitExceeded](#FileSystemLimitExceeded)
* [FileSystemNotFound](#FileSystemNotFound)
* [IncorrectFileSystemLifeCycleState](#IncorrectFileSystemLifeCycleState)
* [IncorrectMountTargetState](#IncorrectMountTargetState)
* [InternalServerError](#InternalServerError)
* [IpAddressInUse](#IpAddressInUse)
* [MountTargetConflict](#MountTargetConflict)
* [MountTargetNotFound](#MountTargetNotFound)
* [NetworkInterfaceLimitExceeded](#NetworkInterfaceLimitExceeded)
* [NoFreeAddressesInSubnet](#NoFreeAddressesInSubnet)
* [SecurityGroupLimitExceeded](#SecurityGroupLimitExceeded)
* [SecurityGroupNotFound](#SecurityGroupNotFound)
* [SubnetNotFound](#SubnetNotFound)
* [UnsupportedAvailabilityZone](#UnsupportedAvailabilityZone)


@docs BadRequest,DependencyTimeout,FileSystemAlreadyExists,FileSystemInUse,FileSystemLimitExceeded,FileSystemNotFound,IncorrectFileSystemLifeCycleState,IncorrectMountTargetState,InternalServerError,IpAddressInUse,MountTargetConflict,MountTargetNotFound,NetworkInterfaceLimitExceeded,NoFreeAddressesInSubnet,SecurityGroupLimitExceeded,SecurityGroupNotFound,SubnetNotFound,UnsupportedAvailabilityZone

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
        "elasticfilesystem"
        "2015-02-01"
        "undefined"
        "AWSELASTICFILESYSTEM_20150201."
        "elasticfilesystem.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Creates a new, empty file system. The operation requires a creation token in the request that Amazon EFS uses to ensure idempotent creation (calling the operation with same creation token has no effect). If a file system does not currently exist that is owned by the caller's AWS account with the specified creation token, this operation does the following:</p> <ul> <li> <p>Creates a new, empty file system. The file system will have an Amazon EFS assigned ID, and an initial lifecycle state <code>creating</code>.</p> </li> <li> <p>Returns with the description of the created file system.</p> </li> </ul> <p>Otherwise, this operation returns a <code>FileSystemAlreadyExists</code> error with the ID of the existing file system.</p> <note> <p>For basic use cases, you can use a randomly generated UUID for the creation token.</p> </note> <p> The idempotent operation allows you to retry a <code>CreateFileSystem</code> call without risk of creating an extra file system. This can happen when an initial call fails in a way that leaves it uncertain whether or not a file system was actually created. An example might be that a transport level timeout occurred or your connection was reset. As long as you use the same creation token, if the initial call had succeeded in creating a file system, the client can learn of its existence from the <code>FileSystemAlreadyExists</code> error.</p> <note> <p>The <code>CreateFileSystem</code> call returns while the file system's lifecycle state is still <code>creating</code>. You can check the file system creation status by calling the <a>DescribeFileSystems</a> operation, which among other things returns the file system state.</p> </note> <p>This operation also takes an optional <code>PerformanceMode</code> parameter that you choose for your file system. We recommend <code>generalPurpose</code> performance mode for most file systems. File systems using the <code>maxIO</code> performance mode can scale to higher levels of aggregate throughput and operations per second with a tradeoff of slightly higher latencies for most file operations. The performance mode can't be changed after the file system has been created. For more information, see <a href="http://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html">Amazon EFS: Performance Modes</a>.</p> <p>After the file system is fully created, Amazon EFS sets its lifecycle state to <code>available</code>, at which point you can create one or more mount targets for the file system in your VPC. For more information, see <a>CreateMountTarget</a>. You mount your Amazon EFS file system on an EC2 instances in your VPC via the mount target. For more information, see <a href="http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon EFS: How it Works</a>. </p> <p> This operation requires permissions for the <code>elasticfilesystem:CreateFileSystem</code> action. </p>

__Required Parameters__

* `creationToken` __:__ `String`


-}
createFileSystem :
    String
    -> (CreateFileSystemOptions -> CreateFileSystemOptions)
    -> AWS.Http.UnsignedRequest FileSystemDescription
createFileSystem creationToken setOptions =
  let
    options = setOptions (CreateFileSystemOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateFileSystem"
        "POST"
        "/2015-02-01/file-systems"
        (AWS.Http.JsonBody
            JE.null
        )
        fileSystemDescriptionDecoder


{-| Options for a createFileSystem request
-}
type alias CreateFileSystemOptions =
    { performanceMode : Maybe PerformanceMode
    }



{-| <p>Creates a mount target for a file system. You can then mount the file system on EC2 instances via the mount target.</p> <p>You can create one mount target in each Availability Zone in your VPC. All EC2 instances in a VPC within a given Availability Zone share a single mount target for a given file system. If you have multiple subnets in an Availability Zone, you create a mount target in one of the subnets. EC2 instances do not need to be in the same subnet as the mount target in order to access their file system. For more information, see <a href="http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon EFS: How it Works</a>. </p> <p>In the request, you also specify a file system ID for which you are creating the mount target and the file system's lifecycle state must be <code>available</code>. For more information, see <a>DescribeFileSystems</a>.</p> <p>In the request, you also provide a subnet ID, which determines the following:</p> <ul> <li> <p>VPC in which Amazon EFS creates the mount target</p> </li> <li> <p>Availability Zone in which Amazon EFS creates the mount target</p> </li> <li> <p>IP address range from which Amazon EFS selects the IP address of the mount target (if you don't specify an IP address in the request)</p> </li> </ul> <p>After creating the mount target, Amazon EFS returns a response that includes, a <code>MountTargetId</code> and an <code>IpAddress</code>. You use this IP address when mounting the file system in an EC2 instance. You can also use the mount target's DNS name when mounting the file system. The EC2 instance on which you mount the file system via the mount target can resolve the mount target's DNS name to its IP address. For more information, see <a href="http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation">How it Works: Implementation Overview</a>. </p> <p>Note that you can create mount targets for a file system in only one VPC, and there can be only one mount target per Availability Zone. That is, if the file system already has one or more mount targets created for it, the subnet specified in the request to add another mount target must meet the following requirements:</p> <ul> <li> <p>Must belong to the same VPC as the subnets of the existing mount targets</p> </li> <li> <p>Must not be in the same Availability Zone as any of the subnets of the existing mount targets</p> </li> </ul> <p>If the request satisfies the requirements, Amazon EFS does the following:</p> <ul> <li> <p>Creates a new mount target in the specified subnet.</p> </li> <li> <p>Also creates a new network interface in the subnet as follows:</p> <ul> <li> <p>If the request provides an <code>IpAddress</code>, Amazon EFS assigns that IP address to the network interface. Otherwise, Amazon EFS assigns a free address in the subnet (in the same way that the Amazon EC2 <code>CreateNetworkInterface</code> call does when a request does not specify a primary private IP address).</p> </li> <li> <p>If the request provides <code>SecurityGroups</code>, this network interface is associated with those security groups. Otherwise, it belongs to the default security group for the subnet's VPC.</p> </li> <li> <p>Assigns the description <code>Mount target <i>fsmt-id</i> for file system <i>fs-id</i> </code> where <code> <i>fsmt-id</i> </code> is the mount target ID, and <code> <i>fs-id</i> </code> is the <code>FileSystemId</code>.</p> </li> <li> <p>Sets the <code>requesterManaged</code> property of the network interface to <code>true</code>, and the <code>requesterId</code> value to <code>EFS</code>.</p> </li> </ul> <p>Each Amazon EFS mount target has one corresponding requester-managed EC2 network interface. After the network interface is created, Amazon EFS sets the <code>NetworkInterfaceId</code> field in the mount target's description to the network interface ID, and the <code>IpAddress</code> field to its address. If network interface creation fails, the entire <code>CreateMountTarget</code> operation fails.</p> </li> </ul> <note> <p>The <code>CreateMountTarget</code> call returns only after creating the network interface, but while the mount target state is still <code>creating</code>, you can check the mount target creation status by calling the <a>DescribeMountTargets</a> operation, which among other things returns the mount target state.</p> </note> <p>We recommend you create a mount target in each of the Availability Zones. There are cost considerations for using a file system in an Availability Zone through a mount target created in another Availability Zone. For more information, see <a href="http://aws.amazon.com/efs/">Amazon EFS</a>. In addition, by always using a mount target local to the instance's Availability Zone, you eliminate a partial failure scenario. If the Availability Zone in which your mount target is created goes down, then you won't be able to access your file system through that mount target. </p> <p>This operation requires permissions for the following action on the file system:</p> <ul> <li> <p> <code>elasticfilesystem:CreateMountTarget</code> </p> </li> </ul> <p>This operation also requires permissions for the following Amazon EC2 actions:</p> <ul> <li> <p> <code>ec2:DescribeSubnets</code> </p> </li> <li> <p> <code>ec2:DescribeNetworkInterfaces</code> </p> </li> <li> <p> <code>ec2:CreateNetworkInterface</code> </p> </li> </ul>

__Required Parameters__

* `fileSystemId` __:__ `String`
* `subnetId` __:__ `String`


-}
createMountTarget :
    String
    -> String
    -> (CreateMountTargetOptions -> CreateMountTargetOptions)
    -> AWS.Http.UnsignedRequest MountTargetDescription
createMountTarget fileSystemId subnetId setOptions =
  let
    options = setOptions (CreateMountTargetOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateMountTarget"
        "POST"
        "/2015-02-01/mount-targets"
        (AWS.Http.JsonBody
            JE.null
        )
        mountTargetDescriptionDecoder


{-| Options for a createMountTarget request
-}
type alias CreateMountTargetOptions =
    { ipAddress : Maybe String
    , securityGroups : Maybe (List String)
    }



{-| <p>Creates or overwrites tags associated with a file system. Each tag is a key-value pair. If a tag key specified in the request already exists on the file system, this operation overwrites its value with the value provided in the request. If you add the <code>Name</code> tag to your file system, Amazon EFS returns it in the response to the <a>DescribeFileSystems</a> operation. </p> <p>This operation requires permission for the <code>elasticfilesystem:CreateTags</code> action.</p>

__Required Parameters__

* `fileSystemId` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
createTags :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest ()
createTags fileSystemId tags =
    AWS.Http.unsignedRequest
        "CreateTags"
        "POST"
        "/2015-02-01/create-tags/{FileSystemId}"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes a file system, permanently severing access to its contents. Upon return, the file system no longer exists and you can't access any contents of the deleted file system.</p> <p> You can't delete a file system that is in use. That is, if the file system has any mount targets, you must first delete them. For more information, see <a>DescribeMountTargets</a> and <a>DeleteMountTarget</a>. </p> <note> <p>The <code>DeleteFileSystem</code> call returns while the file system state is still <code>deleting</code>. You can check the file system deletion status by calling the <a>DescribeFileSystems</a> operation, which returns a list of file systems in your account. If you pass file system ID or creation token for the deleted file system, the <a>DescribeFileSystems</a> returns a <code>404 FileSystemNotFound</code> error.</p> </note> <p>This operation requires permissions for the <code>elasticfilesystem:DeleteFileSystem</code> action.</p>

__Required Parameters__

* `fileSystemId` __:__ `String`


-}
deleteFileSystem :
    String
    -> AWS.Http.UnsignedRequest ()
deleteFileSystem fileSystemId =
    AWS.Http.unsignedRequest
        "DeleteFileSystem"
        "DELETE"
        "/2015-02-01/file-systems/{FileSystemId}"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified mount target.</p> <p>This operation forcibly breaks any mounts of the file system via the mount target that is being deleted, which might disrupt instances or applications using those mounts. To avoid applications getting cut off abruptly, you might consider unmounting any mounts of the mount target, if feasible. The operation also deletes the associated network interface. Uncommitted writes may be lost, but breaking a mount target using this operation does not corrupt the file system itself. The file system you created remains. You can mount an EC2 instance in your VPC via another mount target.</p> <p>This operation requires permissions for the following action on the file system:</p> <ul> <li> <p> <code>elasticfilesystem:DeleteMountTarget</code> </p> </li> </ul> <note> <p>The <code>DeleteMountTarget</code> call returns while the mount target state is still <code>deleting</code>. You can check the mount target deletion by calling the <a>DescribeMountTargets</a> operation, which returns a list of mount target descriptions for the given file system. </p> </note> <p>The operation also requires permissions for the following Amazon EC2 action on the mount target's network interface:</p> <ul> <li> <p> <code>ec2:DeleteNetworkInterface</code> </p> </li> </ul>

__Required Parameters__

* `mountTargetId` __:__ `String`


-}
deleteMountTarget :
    String
    -> AWS.Http.UnsignedRequest ()
deleteMountTarget mountTargetId =
    AWS.Http.unsignedRequest
        "DeleteMountTarget"
        "DELETE"
        "/2015-02-01/mount-targets/{MountTargetId}"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes the specified tags from a file system. If the <code>DeleteTags</code> request includes a tag key that does not exist, Amazon EFS ignores it and doesn't cause an error. For more information about tags and related restrictions, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Tag Restrictions</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DeleteTags</code> action.</p>

__Required Parameters__

* `fileSystemId` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
deleteTags :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest ()
deleteTags fileSystemId tagKeys =
    AWS.Http.unsignedRequest
        "DeleteTags"
        "POST"
        "/2015-02-01/delete-tags/{FileSystemId}"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Returns the description of a specific Amazon EFS file system if either the file system <code>CreationToken</code> or the <code>FileSystemId</code> is provided. Otherwise, it returns descriptions of all file systems owned by the caller's AWS account in the AWS Region of the endpoint that you're calling.</p> <p> When retrieving all file system descriptions, you can optionally specify the <code>MaxItems</code> parameter to limit the number of descriptions in a response. If more file system descriptions remain, Amazon EFS returns a <code>NextMarker</code>, an opaque token, in the response. In this case, you should send a subsequent request with the <code>Marker</code> request parameter set to the value of <code>NextMarker</code>. </p> <p>To retrieve a list of your file system descriptions, this operation is used in an iterative process, where <code>DescribeFileSystems</code> is called first without the <code>Marker</code> and then the operation continues to call it with the <code>Marker</code> parameter set to the value of the <code>NextMarker</code> from the previous response until the response has no <code>NextMarker</code>. </p> <p>The implementation may return fewer than <code>MaxItems</code> file system descriptions while still including a <code>NextMarker</code> value. </p> <p> The order of file systems returned in the response of one <code>DescribeFileSystems</code> call and the order of file systems returned across the responses of a multi-call iteration is unspecified. </p> <p> This operation requires permissions for the <code>elasticfilesystem:DescribeFileSystems</code> action. </p>

__Required Parameters__



-}
describeFileSystems :
    (DescribeFileSystemsOptions -> DescribeFileSystemsOptions)
    -> AWS.Http.UnsignedRequest DescribeFileSystemsResponse
describeFileSystems setOptions =
  let
    options = setOptions (DescribeFileSystemsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeFileSystems"
        "GET"
        "/2015-02-01/file-systems"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeFileSystemsResponseDecoder


{-| Options for a describeFileSystems request
-}
type alias DescribeFileSystemsOptions =
    { maxItems : Maybe Int
    , marker : Maybe String
    , creationToken : Maybe String
    , fileSystemId : Maybe String
    }



{-| <p>Returns the security groups currently in effect for a mount target. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not <code>deleted</code>.</p> <p>This operation requires permissions for the following actions:</p> <ul> <li> <p> <code>elasticfilesystem:DescribeMountTargetSecurityGroups</code> action on the mount target's file system. </p> </li> <li> <p> <code>ec2:DescribeNetworkInterfaceAttribute</code> action on the mount target's network interface. </p> </li> </ul>

__Required Parameters__

* `mountTargetId` __:__ `String`


-}
describeMountTargetSecurityGroups :
    String
    -> AWS.Http.UnsignedRequest DescribeMountTargetSecurityGroupsResponse
describeMountTargetSecurityGroups mountTargetId =
    AWS.Http.unsignedRequest
        "DescribeMountTargetSecurityGroups"
        "GET"
        "/2015-02-01/mount-targets/{MountTargetId}/security-groups"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeMountTargetSecurityGroupsResponseDecoder



{-| <p>Returns the descriptions of all the current mount targets, or a specific mount target, for a file system. When requesting all of the current mount targets, the order of mount targets returned in the response is unspecified.</p> <p>This operation requires permissions for the <code>elasticfilesystem:DescribeMountTargets</code> action, on either the file system ID that you specify in <code>FileSystemId</code>, or on the file system of the mount target that you specify in <code>MountTargetId</code>.</p>

__Required Parameters__



-}
describeMountTargets :
    (DescribeMountTargetsOptions -> DescribeMountTargetsOptions)
    -> AWS.Http.UnsignedRequest DescribeMountTargetsResponse
describeMountTargets setOptions =
  let
    options = setOptions (DescribeMountTargetsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeMountTargets"
        "GET"
        "/2015-02-01/mount-targets"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeMountTargetsResponseDecoder


{-| Options for a describeMountTargets request
-}
type alias DescribeMountTargetsOptions =
    { maxItems : Maybe Int
    , marker : Maybe String
    , fileSystemId : Maybe String
    , mountTargetId : Maybe String
    }



{-| <p>Returns the tags associated with a file system. The order of tags returned in the response of one <code>DescribeTags</code> call and the order of tags returned across the responses of a multi-call iteration (when using pagination) is unspecified. </p> <p> This operation requires permissions for the <code>elasticfilesystem:DescribeTags</code> action. </p>

__Required Parameters__

* `fileSystemId` __:__ `String`


-}
describeTags :
    String
    -> (DescribeTagsOptions -> DescribeTagsOptions)
    -> AWS.Http.UnsignedRequest DescribeTagsResponse
describeTags fileSystemId setOptions =
  let
    options = setOptions (DescribeTagsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTags"
        "GET"
        "/2015-02-01/tags/{FileSystemId}/"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeTagsResponseDecoder


{-| Options for a describeTags request
-}
type alias DescribeTagsOptions =
    { maxItems : Maybe Int
    , marker : Maybe String
    }



{-| <p>Modifies the set of security groups in effect for a mount target.</p> <p>When you create a mount target, Amazon EFS also creates a new network interface. For more information, see <a>CreateMountTarget</a>. This operation replaces the security groups in effect for the network interface associated with a mount target, with the <code>SecurityGroups</code> provided in the request. This operation requires that the network interface of the mount target has been created and the lifecycle state of the mount target is not <code>deleted</code>. </p> <p>The operation requires permissions for the following actions:</p> <ul> <li> <p> <code>elasticfilesystem:ModifyMountTargetSecurityGroups</code> action on the mount target's file system. </p> </li> <li> <p> <code>ec2:ModifyNetworkInterfaceAttribute</code> action on the mount target's network interface. </p> </li> </ul>

__Required Parameters__

* `mountTargetId` __:__ `String`


-}
modifyMountTargetSecurityGroups :
    String
    -> (ModifyMountTargetSecurityGroupsOptions -> ModifyMountTargetSecurityGroupsOptions)
    -> AWS.Http.UnsignedRequest ()
modifyMountTargetSecurityGroups mountTargetId setOptions =
  let
    options = setOptions (ModifyMountTargetSecurityGroupsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyMountTargetSecurityGroups"
        "PUT"
        "/2015-02-01/mount-targets/{MountTargetId}/security-groups"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())


{-| Options for a modifyMountTargetSecurityGroups request
-}
type alias ModifyMountTargetSecurityGroupsOptions =
    { securityGroups : Maybe (List String)
    }




{-| <p>Returned if the request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
-}
type alias BadRequest =
    { errorCode : String
    , message : Maybe String
    }



badRequestDecoder : JD.Decoder BadRequest
badRequestDecoder =
    JDP.decode BadRequest
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The service timed out trying to fulfill the request, and the client should try the call again.</p>
-}
type alias DependencyTimeout =
    { errorCode : String
    , message : Maybe String
    }



dependencyTimeoutDecoder : JD.Decoder DependencyTimeout
dependencyTimeoutDecoder =
    JDP.decode DependencyTimeout
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeFileSystems
-}
type alias DescribeFileSystemsResponse =
    { marker : Maybe String
    , fileSystems : Maybe (List FileSystemDescription)
    , nextMarker : Maybe String
    }



describeFileSystemsResponseDecoder : JD.Decoder DescribeFileSystemsResponse
describeFileSystemsResponseDecoder =
    JDP.decode DescribeFileSystemsResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileSystems" (JD.nullable (JD.list fileSystemDescriptionDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeMountTargetSecurityGroups
-}
type alias DescribeMountTargetSecurityGroupsResponse =
    { securityGroups : (List String)
    }



describeMountTargetSecurityGroupsResponseDecoder : JD.Decoder DescribeMountTargetSecurityGroupsResponse
describeMountTargetSecurityGroupsResponseDecoder =
    JDP.decode DescribeMountTargetSecurityGroupsResponse
        |> JDP.required "securityGroups" (JD.list JD.string)




{-| Type of HTTP response from describeMountTargets
-}
type alias DescribeMountTargetsResponse =
    { marker : Maybe String
    , mountTargets : Maybe (List MountTargetDescription)
    , nextMarker : Maybe String
    }



describeMountTargetsResponseDecoder : JD.Decoder DescribeMountTargetsResponse
describeMountTargetsResponseDecoder =
    JDP.decode DescribeMountTargetsResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.optional "mountTargets" (JD.nullable (JD.list mountTargetDescriptionDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeTags
-}
type alias DescribeTagsResponse =
    { marker : Maybe String
    , tags : (List Tag)
    , nextMarker : Maybe String
    }



describeTagsResponseDecoder : JD.Decoder DescribeTagsResponse
describeTagsResponseDecoder =
    JDP.decode DescribeTagsResponse
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing
        |> JDP.required "tags" (JD.list tagDecoder)
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| <p>Returned if the file system you are trying to create already exists, with the creation token you provided.</p>
-}
type alias FileSystemAlreadyExists =
    { errorCode : String
    , message : Maybe String
    , fileSystemId : String
    }



fileSystemAlreadyExistsDecoder : JD.Decoder FileSystemAlreadyExists
fileSystemAlreadyExistsDecoder =
    JDP.decode FileSystemAlreadyExists
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.required "fileSystemId" JD.string




{-| Type of HTTP response from fileSystemDes
-}
type alias FileSystemDescription =
    { ownerId : String
    , creationToken : String
    , fileSystemId : String
    , creationTime : Date
    , lifeCycleState : LifeCycleState
    , name : Maybe String
    , numberOfMountTargets : Int
    , sizeInBytes : FileSystemSize
    , performanceMode : PerformanceMode
    }



fileSystemDescriptionDecoder : JD.Decoder FileSystemDescription
fileSystemDescriptionDecoder =
    JDP.decode FileSystemDescription
        |> JDP.required "ownerId" JD.string
        |> JDP.required "creationToken" JD.string
        |> JDP.required "fileSystemId" JD.string
        |> JDP.required "creationTime" JDX.date
        |> JDP.required "lifeCycleState" lifeCycleStateDecoder
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.required "numberOfMountTargets" JD.int
        |> JDP.required "sizeInBytes" fileSystemSizeDecoder
        |> JDP.required "performanceMode" performanceModeDecoder




{-| <p>Returned if a file system has mount targets.</p>
-}
type alias FileSystemInUse =
    { errorCode : String
    , message : Maybe String
    }



fileSystemInUseDecoder : JD.Decoder FileSystemInUse
fileSystemInUseDecoder =
    JDP.decode FileSystemInUse
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if the AWS account has already created maximum number of file systems allowed per account.</p>
-}
type alias FileSystemLimitExceeded =
    { errorCode : String
    , message : Maybe String
    }



fileSystemLimitExceededDecoder : JD.Decoder FileSystemLimitExceeded
fileSystemLimitExceededDecoder =
    JDP.decode FileSystemLimitExceeded
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if the specified <code>FileSystemId</code> does not exist in the requester's AWS account.</p>
-}
type alias FileSystemNotFound =
    { errorCode : String
    , message : Maybe String
    }



fileSystemNotFoundDecoder : JD.Decoder FileSystemNotFound
fileSystemNotFoundDecoder =
    JDP.decode FileSystemNotFound
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Latest known metered size (in bytes) of data stored in the file system, in its <code>Value</code> field, and the time at which that size was determined in its <code>Timestamp</code> field. Note that the value does not represent the size of a consistent snapshot of the file system, but it is eventually consistent when there are no writes to the file system. That is, the value will represent the actual size only if the file system is not modified for a period longer than a couple of hours. Otherwise, the value is not necessarily the exact size the file system was at any instant in time.</p>
-}
type alias FileSystemSize =
    { value : Int
    , timestamp : Maybe Date
    }



fileSystemSizeDecoder : JD.Decoder FileSystemSize
fileSystemSizeDecoder =
    JDP.decode FileSystemSize
        |> JDP.required "value" JD.int
        |> JDP.optional "timestamp" (JD.nullable JDX.date) Nothing




{-| <p>Returned if the file system's life cycle state is not "created".</p>
-}
type alias IncorrectFileSystemLifeCycleState =
    { errorCode : String
    , message : Maybe String
    }



incorrectFileSystemLifeCycleStateDecoder : JD.Decoder IncorrectFileSystemLifeCycleState
incorrectFileSystemLifeCycleStateDecoder =
    JDP.decode IncorrectFileSystemLifeCycleState
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if the mount target is not in the correct state for the operation.</p>
-}
type alias IncorrectMountTargetState =
    { errorCode : String
    , message : Maybe String
    }



incorrectMountTargetStateDecoder : JD.Decoder IncorrectMountTargetState
incorrectMountTargetStateDecoder =
    JDP.decode IncorrectMountTargetState
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if an error occurred on the server side.</p>
-}
type alias InternalServerError =
    { errorCode : String
    , message : Maybe String
    }



internalServerErrorDecoder : JD.Decoder InternalServerError
internalServerErrorDecoder =
    JDP.decode InternalServerError
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if the request specified an <code>IpAddress</code> that is already in use in the subnet.</p>
-}
type alias IpAddressInUse =
    { errorCode : String
    , message : Maybe String
    }



ipAddressInUseDecoder : JD.Decoder IpAddressInUse
ipAddressInUseDecoder =
    JDP.decode IpAddressInUse
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `LifeCycleState_creating`
* `LifeCycleState_available`
* `LifeCycleState_deleting`
* `LifeCycleState_deleted`

-}
type LifeCycleState
    = LifeCycleState_creating
    | LifeCycleState_available
    | LifeCycleState_deleting
    | LifeCycleState_deleted



lifeCycleStateDecoder : JD.Decoder LifeCycleState
lifeCycleStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "creating" ->
                        JD.succeed LifeCycleState_creating

                    "available" ->
                        JD.succeed LifeCycleState_available

                    "deleting" ->
                        JD.succeed LifeCycleState_deleting

                    "deleted" ->
                        JD.succeed LifeCycleState_deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Returned if the mount target would violate one of the specified restrictions based on the file system's existing mount targets.</p>
-}
type alias MountTargetConflict =
    { errorCode : String
    , message : Maybe String
    }



mountTargetConflictDecoder : JD.Decoder MountTargetConflict
mountTargetConflictDecoder =
    JDP.decode MountTargetConflict
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from mountTargetDes
-}
type alias MountTargetDescription =
    { ownerId : Maybe String
    , mountTargetId : String
    , fileSystemId : String
    , subnetId : String
    , lifeCycleState : LifeCycleState
    , ipAddress : Maybe String
    , networkInterfaceId : Maybe String
    }



mountTargetDescriptionDecoder : JD.Decoder MountTargetDescription
mountTargetDescriptionDecoder =
    JDP.decode MountTargetDescription
        |> JDP.optional "ownerId" (JD.nullable JD.string) Nothing
        |> JDP.required "mountTargetId" JD.string
        |> JDP.required "fileSystemId" JD.string
        |> JDP.required "subnetId" JD.string
        |> JDP.required "lifeCycleState" lifeCycleStateDecoder
        |> JDP.optional "ipAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkInterfaceId" (JD.nullable JD.string) Nothing




{-| <p>Returned if there is no mount target with the specified ID found in the caller's account.</p>
-}
type alias MountTargetNotFound =
    { errorCode : String
    , message : Maybe String
    }



mountTargetNotFoundDecoder : JD.Decoder MountTargetNotFound
mountTargetNotFoundDecoder =
    JDP.decode MountTargetNotFound
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p> The calling account has reached the ENI limit for the specific AWS region. Client should try to delete some ENIs or get its account limit raised. For more information, see <a href="http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html">Amazon VPC Limits</a> in the Amazon Virtual Private Cloud User Guide (see the Network interfaces per VPC entry in the table). </p>
-}
type alias NetworkInterfaceLimitExceeded =
    { errorCode : String
    , message : Maybe String
    }



networkInterfaceLimitExceededDecoder : JD.Decoder NetworkInterfaceLimitExceeded
networkInterfaceLimitExceededDecoder =
    JDP.decode NetworkInterfaceLimitExceeded
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if <code>IpAddress</code> was not specified in the request and there are no free IP addresses in the subnet.</p>
-}
type alias NoFreeAddressesInSubnet =
    { errorCode : String
    , message : Maybe String
    }



noFreeAddressesInSubnetDecoder : JD.Decoder NoFreeAddressesInSubnet
noFreeAddressesInSubnetDecoder =
    JDP.decode NoFreeAddressesInSubnet
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `PerformanceMode_generalPurpose`
* `PerformanceMode_maxIO`

-}
type PerformanceMode
    = PerformanceMode_generalPurpose
    | PerformanceMode_maxIO



performanceModeDecoder : JD.Decoder PerformanceMode
performanceModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "generalPurpose" ->
                        JD.succeed PerformanceMode_generalPurpose

                    "maxIO" ->
                        JD.succeed PerformanceMode_maxIO


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Returned if the size of <code>SecurityGroups</code> specified in the request is greater than five.</p>
-}
type alias SecurityGroupLimitExceeded =
    { errorCode : String
    , message : Maybe String
    }



securityGroupLimitExceededDecoder : JD.Decoder SecurityGroupLimitExceeded
securityGroupLimitExceededDecoder =
    JDP.decode SecurityGroupLimitExceeded
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if one of the specified security groups does not exist in the subnet's VPC.</p>
-}
type alias SecurityGroupNotFound =
    { errorCode : String
    , message : Maybe String
    }



securityGroupNotFoundDecoder : JD.Decoder SecurityGroupNotFound
securityGroupNotFoundDecoder =
    JDP.decode SecurityGroupNotFound
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if there is no subnet with ID <code>SubnetId</code> provided in the request.</p>
-}
type alias SubnetNotFound =
    { errorCode : String
    , message : Maybe String
    }



subnetNotFoundDecoder : JD.Decoder SubnetNotFound
subnetNotFoundDecoder =
    JDP.decode SubnetNotFound
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A tag is a key-value pair. Allowed characters: letters, whitespace, and numbers, representable in UTF-8, and the following characters:<code> + - = . _ : /</code> </p>
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




{-| <p></p>
-}
type alias UnsupportedAvailabilityZone =
    { errorCode : String
    , message : Maybe String
    }



unsupportedAvailabilityZoneDecoder : JD.Decoder UnsupportedAvailabilityZone
unsupportedAvailabilityZoneDecoder =
    JDP.decode UnsupportedAvailabilityZone
        |> JDP.required "errorCode" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




