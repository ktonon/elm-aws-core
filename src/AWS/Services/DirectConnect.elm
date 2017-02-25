module AWS.Services.DirectConnect
    exposing
        ( config
        , allocateConnectionOnInterconnect
        , allocatePrivateVirtualInterface
        , allocatePublicVirtualInterface
        , confirmConnection
        , confirmPrivateVirtualInterface
        , confirmPublicVirtualInterface
        , createBGPPeer
        , CreateBGPPeerOptions
        , createConnection
        , createInterconnect
        , createPrivateVirtualInterface
        , createPublicVirtualInterface
        , deleteBGPPeer
        , DeleteBGPPeerOptions
        , deleteConnection
        , deleteInterconnect
        , deleteVirtualInterface
        , describeConnectionLoa
        , DescribeConnectionLoaOptions
        , describeConnections
        , DescribeConnectionsOptions
        , describeConnectionsOnInterconnect
        , describeInterconnectLoa
        , DescribeInterconnectLoaOptions
        , describeInterconnects
        , DescribeInterconnectsOptions
        , describeLocations
        , describeTags
        , describeVirtualGateways
        , describeVirtualInterfaces
        , DescribeVirtualInterfacesOptions
        , tagResource
        , untagResource
        , AddressFamily(..)
        , BGPPeer
        , BGPPeerState(..)
        , BGPStatus(..)
        , ConfirmConnectionResponse
        , ConfirmPrivateVirtualInterfaceResponse
        , ConfirmPublicVirtualInterfaceResponse
        , Connection
        , ConnectionState(..)
        , Connections
        , CreateBGPPeerResponse
        , DeleteBGPPeerResponse
        , DeleteInterconnectResponse
        , DeleteVirtualInterfaceResponse
        , DescribeConnectionLoaResponse
        , DescribeInterconnectLoaResponse
        , DescribeTagsResponse
        , DirectConnectClientException
        , DirectConnectServerException
        , DuplicateTagKeysException
        , Interconnect
        , InterconnectState(..)
        , Interconnects
        , Loa
        , LoaContentType(..)
        , Location
        , Locations
        , NewBGPPeer
        , NewPrivateVirtualInterface
        , NewPrivateVirtualInterfaceAllocation
        , NewPublicVirtualInterface
        , NewPublicVirtualInterfaceAllocation
        , ResourceTag
        , RouteFilterPrefix
        , Tag
        , TagResourceResponse
        , TooManyTagsException
        , UntagResourceResponse
        , VirtualGateway
        , VirtualGateways
        , VirtualInterface
        , VirtualInterfaceState(..)
        , VirtualInterfaces
        )

{-| <p>AWS Direct Connect links your internal network to an AWS Direct Connect location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. With this connection in place, you can create virtual interfaces directly to the AWS cloud (for example, to Amazon Elastic Compute Cloud (Amazon EC2) and Amazon Simple Storage Service (Amazon S3)) and to Amazon Virtual Private Cloud (Amazon VPC), bypassing Internet service providers in your network path. An AWS Direct Connect location provides access to AWS in the region it is associated with, as well as access to other US regions. For example, you can provision a single connection to any AWS Direct Connect location in the US and use it to access public AWS services in all US Regions and AWS GovCloud (US).</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [allocateConnectionOnInterconnect](#allocateConnectionOnInterconnect)
* [allocatePrivateVirtualInterface](#allocatePrivateVirtualInterface)
* [allocatePublicVirtualInterface](#allocatePublicVirtualInterface)
* [confirmConnection](#confirmConnection)
* [confirmPrivateVirtualInterface](#confirmPrivateVirtualInterface)
* [confirmPublicVirtualInterface](#confirmPublicVirtualInterface)
* [createBGPPeer](#createBGPPeer)
* [CreateBGPPeerOptions](#CreateBGPPeerOptions)
* [createConnection](#createConnection)
* [createInterconnect](#createInterconnect)
* [createPrivateVirtualInterface](#createPrivateVirtualInterface)
* [createPublicVirtualInterface](#createPublicVirtualInterface)
* [deleteBGPPeer](#deleteBGPPeer)
* [DeleteBGPPeerOptions](#DeleteBGPPeerOptions)
* [deleteConnection](#deleteConnection)
* [deleteInterconnect](#deleteInterconnect)
* [deleteVirtualInterface](#deleteVirtualInterface)
* [describeConnectionLoa](#describeConnectionLoa)
* [DescribeConnectionLoaOptions](#DescribeConnectionLoaOptions)
* [describeConnections](#describeConnections)
* [DescribeConnectionsOptions](#DescribeConnectionsOptions)
* [describeConnectionsOnInterconnect](#describeConnectionsOnInterconnect)
* [describeInterconnectLoa](#describeInterconnectLoa)
* [DescribeInterconnectLoaOptions](#DescribeInterconnectLoaOptions)
* [describeInterconnects](#describeInterconnects)
* [DescribeInterconnectsOptions](#DescribeInterconnectsOptions)
* [describeLocations](#describeLocations)
* [describeTags](#describeTags)
* [describeVirtualGateways](#describeVirtualGateways)
* [describeVirtualInterfaces](#describeVirtualInterfaces)
* [DescribeVirtualInterfacesOptions](#DescribeVirtualInterfacesOptions)
* [tagResource](#tagResource)
* [untagResource](#untagResource)


@docs allocateConnectionOnInterconnect,allocatePrivateVirtualInterface,allocatePublicVirtualInterface,confirmConnection,confirmPrivateVirtualInterface,confirmPublicVirtualInterface,createBGPPeer,CreateBGPPeerOptions,createConnection,createInterconnect,createPrivateVirtualInterface,createPublicVirtualInterface,deleteBGPPeer,DeleteBGPPeerOptions,deleteConnection,deleteInterconnect,deleteVirtualInterface,describeConnectionLoa,DescribeConnectionLoaOptions,describeConnections,DescribeConnectionsOptions,describeConnectionsOnInterconnect,describeInterconnectLoa,DescribeInterconnectLoaOptions,describeInterconnects,DescribeInterconnectsOptions,describeLocations,describeTags,describeVirtualGateways,describeVirtualInterfaces,DescribeVirtualInterfacesOptions,tagResource,untagResource

## Responses

* [ConfirmConnectionResponse](#ConfirmConnectionResponse)
* [ConfirmPrivateVirtualInterfaceResponse](#ConfirmPrivateVirtualInterfaceResponse)
* [ConfirmPublicVirtualInterfaceResponse](#ConfirmPublicVirtualInterfaceResponse)
* [Connection](#Connection)
* [Connections](#Connections)
* [CreateBGPPeerResponse](#CreateBGPPeerResponse)
* [DeleteBGPPeerResponse](#DeleteBGPPeerResponse)
* [DeleteInterconnectResponse](#DeleteInterconnectResponse)
* [DeleteVirtualInterfaceResponse](#DeleteVirtualInterfaceResponse)
* [DescribeConnectionLoaResponse](#DescribeConnectionLoaResponse)
* [DescribeInterconnectLoaResponse](#DescribeInterconnectLoaResponse)
* [DescribeTagsResponse](#DescribeTagsResponse)
* [Interconnect](#Interconnect)
* [Interconnects](#Interconnects)
* [Locations](#Locations)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [VirtualGateways](#VirtualGateways)
* [VirtualInterface](#VirtualInterface)
* [VirtualInterfaces](#VirtualInterfaces)


@docs ConfirmConnectionResponse,ConfirmPrivateVirtualInterfaceResponse,ConfirmPublicVirtualInterfaceResponse,Connection,Connections,CreateBGPPeerResponse,DeleteBGPPeerResponse,DeleteInterconnectResponse,DeleteVirtualInterfaceResponse,DescribeConnectionLoaResponse,DescribeInterconnectLoaResponse,DescribeTagsResponse,Interconnect,Interconnects,Locations,TagResourceResponse,UntagResourceResponse,VirtualGateways,VirtualInterface,VirtualInterfaces

## Records

* [BGPPeer](#BGPPeer)
* [Loa](#Loa)
* [Location](#Location)
* [NewBGPPeer](#NewBGPPeer)
* [NewPrivateVirtualInterface](#NewPrivateVirtualInterface)
* [NewPrivateVirtualInterfaceAllocation](#NewPrivateVirtualInterfaceAllocation)
* [NewPublicVirtualInterface](#NewPublicVirtualInterface)
* [NewPublicVirtualInterfaceAllocation](#NewPublicVirtualInterfaceAllocation)
* [ResourceTag](#ResourceTag)
* [RouteFilterPrefix](#RouteFilterPrefix)
* [Tag](#Tag)
* [VirtualGateway](#VirtualGateway)


@docs BGPPeer,Loa,Location,NewBGPPeer,NewPrivateVirtualInterface,NewPrivateVirtualInterfaceAllocation,NewPublicVirtualInterface,NewPublicVirtualInterfaceAllocation,ResourceTag,RouteFilterPrefix,Tag,VirtualGateway

## Unions

* [AddressFamily](#AddressFamily)
* [BGPPeerState](#BGPPeerState)
* [BGPStatus](#BGPStatus)
* [ConnectionState](#ConnectionState)
* [InterconnectState](#InterconnectState)
* [LoaContentType](#LoaContentType)
* [VirtualInterfaceState](#VirtualInterfaceState)


@docs AddressFamily,BGPPeerState,BGPStatus,ConnectionState,InterconnectState,LoaContentType,VirtualInterfaceState

## Exceptions

* [DirectConnectClientException](#DirectConnectClientException)
* [DirectConnectServerException](#DirectConnectServerException)
* [DuplicateTagKeysException](#DuplicateTagKeysException)
* [TooManyTagsException](#TooManyTagsException)


@docs DirectConnectClientException,DirectConnectServerException,DuplicateTagKeysException,TooManyTagsException

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
        "directconnect"
        "2012-10-25"
        "1.1"
        "AWSDIRECTCONNECT_20121025."
        "directconnect.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates a hosted connection on an interconnect.</p> <p>Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the given interconnect.</p> <note> <p>This is intended for use by AWS Direct Connect partners only.</p> </note>

__Required Parameters__

* `bandwidth` __:__ `String`
* `connectionName` __:__ `String`
* `ownerAccount` __:__ `String`
* `interconnectId` __:__ `String`
* `vlan` __:__ `Int`


-}
allocateConnectionOnInterconnect :
    String
    -> String
    -> String
    -> String
    -> Int
    -> AWS.Request Connection
allocateConnectionOnInterconnect bandwidth connectionName ownerAccount interconnectId vlan =
    AWS.Http.unsignedRequest
        "AllocateConnectionOnInterconnect"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        connectionDecoder
        |> AWS.UnsignedRequest



{-| <p>Provisions a private virtual interface to be owned by a different customer.</p> <p>The owner of a connection calls this function to provision a private virtual interface which will be owned by another AWS customer.</p> <p>Virtual interfaces created using this function must be confirmed by the virtual interface owner by calling ConfirmPrivateVirtualInterface. Until this step has been completed, the virtual interface will be in 'Confirming' state, and will not be available for handling traffic.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `ownerAccount` __:__ `String`
* `newPrivateVirtualInterfaceAllocation` __:__ `NewPrivateVirtualInterfaceAllocation`


-}
allocatePrivateVirtualInterface :
    String
    -> String
    -> NewPrivateVirtualInterfaceAllocation
    -> AWS.Request VirtualInterface
allocatePrivateVirtualInterface connectionId ownerAccount newPrivateVirtualInterfaceAllocation =
    AWS.Http.unsignedRequest
        "AllocatePrivateVirtualInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        virtualInterfaceDecoder
        |> AWS.UnsignedRequest



{-| <p>Provisions a public virtual interface to be owned by a different customer.</p> <p>The owner of a connection calls this function to provision a public virtual interface which will be owned by another AWS customer.</p> <p>Virtual interfaces created using this function must be confirmed by the virtual interface owner by calling ConfirmPublicVirtualInterface. Until this step has been completed, the virtual interface will be in 'Confirming' state, and will not be available for handling traffic.</p> <p>When creating an IPv6 public virtual interface (addressFamily is 'ipv6'), the customer and amazon address fields should be left blank to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not supported.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `ownerAccount` __:__ `String`
* `newPublicVirtualInterfaceAllocation` __:__ `NewPublicVirtualInterfaceAllocation`


-}
allocatePublicVirtualInterface :
    String
    -> String
    -> NewPublicVirtualInterfaceAllocation
    -> AWS.Request VirtualInterface
allocatePublicVirtualInterface connectionId ownerAccount newPublicVirtualInterfaceAllocation =
    AWS.Http.unsignedRequest
        "AllocatePublicVirtualInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        virtualInterfaceDecoder
        |> AWS.UnsignedRequest



{-| <p>Confirm the creation of a hosted connection on an interconnect.</p> <p>Upon creation, the hosted connection is initially in the 'Ordering' state, and will remain in this state until the owner calls ConfirmConnection to confirm creation of the hosted connection.</p>

__Required Parameters__

* `connectionId` __:__ `String`


-}
confirmConnection :
    String
    -> AWS.Request ConfirmConnectionResponse
confirmConnection connectionId =
    AWS.Http.unsignedRequest
        "ConfirmConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmConnectionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Accept ownership of a private virtual interface created by another customer.</p> <p>After the virtual interface owner calls this function, the virtual interface will be created and attached to the given virtual private gateway, and will be available for handling traffic.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`
* `virtualGatewayId` __:__ `String`


-}
confirmPrivateVirtualInterface :
    String
    -> String
    -> AWS.Request ConfirmPrivateVirtualInterfaceResponse
confirmPrivateVirtualInterface virtualInterfaceId virtualGatewayId =
    AWS.Http.unsignedRequest
        "ConfirmPrivateVirtualInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmPrivateVirtualInterfaceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Accept ownership of a public virtual interface created by another customer.</p> <p>After the virtual interface owner calls this function, the specified virtual interface will be created and made available for handling traffic.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`


-}
confirmPublicVirtualInterface :
    String
    -> AWS.Request ConfirmPublicVirtualInterfaceResponse
confirmPublicVirtualInterface virtualInterfaceId =
    AWS.Http.unsignedRequest
        "ConfirmPublicVirtualInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        confirmPublicVirtualInterfaceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new BGP peer on a specified virtual interface. The BGP peer cannot be in the same address family (IPv4/IPv6) of an existing BGP peer on the virtual interface.</p> <p>You must create a BGP peer for the corresponding address family in order to access AWS resources that also use that address family.</p> <p>When creating a IPv6 BGP peer, the Amazon address and customer address fields must be left blank. IPv6 addresses are automatically assigned from Amazon's pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p> <p>For a public virtual interface, the Autonomous System Number (ASN) must be private or already whitelisted for the virtual interface.</p>

__Required Parameters__



-}
createBGPPeer :
    (CreateBGPPeerOptions -> CreateBGPPeerOptions)
    -> AWS.Request CreateBGPPeerResponse
createBGPPeer setOptions =
  let
    options = setOptions (CreateBGPPeerOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateBGPPeer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createBGPPeerResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createBGPPeer request
-}
type alias CreateBGPPeerOptions =
    { virtualInterfaceId : Maybe String
    , newBGPPeer : Maybe NewBGPPeer
    }



{-| <p>Creates a new connection between the customer network and a specific AWS Direct Connect location.</p> <p>A connection links your internal network to an AWS Direct Connect location over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end of the cable is connected to your router, the other to an AWS Direct Connect router. An AWS Direct Connect location provides access to Amazon Web Services in the region it is associated with. You can establish connections with AWS Direct Connect locations in multiple regions, but a connection in one region does not provide connectivity to other regions.</p>

__Required Parameters__

* `location` __:__ `String`
* `bandwidth` __:__ `String`
* `connectionName` __:__ `String`


-}
createConnection :
    String
    -> String
    -> String
    -> AWS.Request Connection
createConnection location bandwidth connectionName =
    AWS.Http.unsignedRequest
        "CreateConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        connectionDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new interconnect between a AWS Direct Connect partner's network and a specific AWS Direct Connect location.</p> <p>An interconnect is a connection which is capable of hosting other connections. The AWS Direct Connect partner can use an interconnect to provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do not have their own connections. Like a standard connection, an interconnect links the AWS Direct Connect partner's network to an AWS Direct Connect location over a standard 1 Gbps or 10 Gbps Ethernet fiber-optic cable. One end is connected to the partner's router, the other to an AWS Direct Connect router.</p> <p>For each end customer, the AWS Direct Connect partner provisions a connection on their interconnect by calling AllocateConnectionOnInterconnect. The end customer can then connect to AWS resources by creating a virtual interface on their connection, using the VLAN assigned to them by the AWS Direct Connect partner.</p> <note> <p>This is intended for use by AWS Direct Connect partners only.</p> </note>

__Required Parameters__

* `interconnectName` __:__ `String`
* `bandwidth` __:__ `String`
* `location` __:__ `String`


-}
createInterconnect :
    String
    -> String
    -> String
    -> AWS.Request Interconnect
createInterconnect interconnectName bandwidth location =
    AWS.Http.unsignedRequest
        "CreateInterconnect"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        interconnectDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new private virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A private virtual interface supports sending traffic to a single virtual private cloud (VPC).</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `newPrivateVirtualInterface` __:__ `NewPrivateVirtualInterface`


-}
createPrivateVirtualInterface :
    String
    -> NewPrivateVirtualInterface
    -> AWS.Request VirtualInterface
createPrivateVirtualInterface connectionId newPrivateVirtualInterface =
    AWS.Http.unsignedRequest
        "CreatePrivateVirtualInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        virtualInterfaceDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new public virtual interface. A virtual interface is the VLAN that transports AWS Direct Connect traffic. A public virtual interface supports sending traffic to public services of AWS such as Amazon Simple Storage Service (Amazon S3).</p> <p>When creating an IPv6 public virtual interface (addressFamily is 'ipv6'), the customer and amazon address fields should be left blank to use auto-assigned IPv6 space. Custom IPv6 Addresses are currently not supported.</p>

__Required Parameters__

* `connectionId` __:__ `String`
* `newPublicVirtualInterface` __:__ `NewPublicVirtualInterface`


-}
createPublicVirtualInterface :
    String
    -> NewPublicVirtualInterface
    -> AWS.Request VirtualInterface
createPublicVirtualInterface connectionId newPublicVirtualInterface =
    AWS.Http.unsignedRequest
        "CreatePublicVirtualInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        virtualInterfaceDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a BGP peer on the specified virtual interface that matches the specified customer address and ASN. You cannot delete the last BGP peer from a virtual interface.</p>

__Required Parameters__



-}
deleteBGPPeer :
    (DeleteBGPPeerOptions -> DeleteBGPPeerOptions)
    -> AWS.Request DeleteBGPPeerResponse
deleteBGPPeer setOptions =
  let
    options = setOptions (DeleteBGPPeerOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteBGPPeer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteBGPPeerResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteBGPPeer request
-}
type alias DeleteBGPPeerOptions =
    { virtualInterfaceId : Maybe String
    , asn : Maybe Int
    , customerAddress : Maybe String
    }



{-| <p>Deletes the connection.</p> <p>Deleting a connection only stops the AWS Direct Connect port hour and data transfer charges. You need to cancel separately with the providers any services or charges for cross-connects or network circuits that connect you to the AWS Direct Connect location.</p>

__Required Parameters__

* `connectionId` __:__ `String`


-}
deleteConnection :
    String
    -> AWS.Request Connection
deleteConnection connectionId =
    AWS.Http.unsignedRequest
        "DeleteConnection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        connectionDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified interconnect.</p> <note> <p>This is intended for use by AWS Direct Connect partners only.</p> </note>

__Required Parameters__

* `interconnectId` __:__ `String`


-}
deleteInterconnect :
    String
    -> AWS.Request DeleteInterconnectResponse
deleteInterconnect interconnectId =
    AWS.Http.unsignedRequest
        "DeleteInterconnect"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteInterconnectResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a virtual interface.</p>

__Required Parameters__

* `virtualInterfaceId` __:__ `String`


-}
deleteVirtualInterface :
    String
    -> AWS.Request DeleteVirtualInterfaceResponse
deleteVirtualInterface virtualInterfaceId =
    AWS.Http.unsignedRequest
        "DeleteVirtualInterface"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteVirtualInterfaceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the LOA-CFA for a Connection.</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or service provider uses when establishing your cross connect to AWS at the colocation facility. For more information, see <a href="http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at AWS Direct Connect Locations</a> in the AWS Direct Connect user guide.</p>

__Required Parameters__

* `connectionId` __:__ `String`


-}
describeConnectionLoa :
    String
    -> (DescribeConnectionLoaOptions -> DescribeConnectionLoaOptions)
    -> AWS.Request DescribeConnectionLoaResponse
describeConnectionLoa connectionId setOptions =
  let
    options = setOptions (DescribeConnectionLoaOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConnectionLoa"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeConnectionLoaResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConnectionLoa request
-}
type alias DescribeConnectionLoaOptions =
    { providerName : Maybe String
    , loaContentType : Maybe LoaContentType
    }



{-| <p>Displays all connections in this region.</p> <p>If a connection ID is provided, the call returns only that particular connection.</p>

__Required Parameters__



-}
describeConnections :
    (DescribeConnectionsOptions -> DescribeConnectionsOptions)
    -> AWS.Request Connections
describeConnections setOptions =
  let
    options = setOptions (DescribeConnectionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeConnections"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        connectionsDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeConnections request
-}
type alias DescribeConnectionsOptions =
    { connectionId : Maybe String
    }



{-| <p>Return a list of connections that have been provisioned on the given interconnect.</p> <note> <p>This is intended for use by AWS Direct Connect partners only.</p> </note>

__Required Parameters__

* `interconnectId` __:__ `String`


-}
describeConnectionsOnInterconnect :
    String
    -> AWS.Request Connections
describeConnectionsOnInterconnect interconnectId =
    AWS.Http.unsignedRequest
        "DescribeConnectionsOnInterconnect"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        connectionsDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the LOA-CFA for an Interconnect.</p> <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to AWS at the colocation facility. For more information, see <a href="http://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at AWS Direct Connect Locations</a> in the AWS Direct Connect user guide.</p>

__Required Parameters__

* `interconnectId` __:__ `String`


-}
describeInterconnectLoa :
    String
    -> (DescribeInterconnectLoaOptions -> DescribeInterconnectLoaOptions)
    -> AWS.Request DescribeInterconnectLoaResponse
describeInterconnectLoa interconnectId setOptions =
  let
    options = setOptions (DescribeInterconnectLoaOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInterconnectLoa"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeInterconnectLoaResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInterconnectLoa request
-}
type alias DescribeInterconnectLoaOptions =
    { providerName : Maybe String
    , loaContentType : Maybe LoaContentType
    }



{-| <p>Returns a list of interconnects owned by the AWS account.</p> <p>If an interconnect ID is provided, it will only return this particular interconnect.</p>

__Required Parameters__



-}
describeInterconnects :
    (DescribeInterconnectsOptions -> DescribeInterconnectsOptions)
    -> AWS.Request Interconnects
describeInterconnects setOptions =
  let
    options = setOptions (DescribeInterconnectsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeInterconnects"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        interconnectsDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeInterconnects request
-}
type alias DescribeInterconnectsOptions =
    { interconnectId : Maybe String
    }



{-| <p>Returns the list of AWS Direct Connect locations in the current AWS region. These are the locations that may be selected when calling CreateConnection or CreateInterconnect.</p>

__Required Parameters__



-}
describeLocations :
    AWS.Request Locations
describeLocations =
    AWS.Http.unsignedRequest
        "DescribeLocations"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        locationsDecoder
        |> AWS.UnsignedRequest



{-| <p>Describes the tags associated with the specified Direct Connect resources.</p>

__Required Parameters__

* `resourceArns` __:__ `(List String)`


-}
describeTags :
    (List String)
    -> AWS.Request DescribeTagsResponse
describeTags resourceArns =
    AWS.Http.unsignedRequest
        "DescribeTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTagsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of virtual private gateways owned by the AWS account.</p> <p>You can create one or more AWS Direct Connect private virtual interfaces linking to a virtual private gateway. A virtual private gateway can be managed via Amazon Virtual Private Cloud (VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">EC2 CreateVpnGateway</a> action.</p>

__Required Parameters__



-}
describeVirtualGateways :
    AWS.Request VirtualGateways
describeVirtualGateways =
    AWS.Http.unsignedRequest
        "DescribeVirtualGateways"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        virtualGatewaysDecoder
        |> AWS.UnsignedRequest



{-| <p>Displays all virtual interfaces for an AWS account. Virtual interfaces deleted fewer than 15 minutes before DescribeVirtualInterfaces is called are also returned. If a connection ID is included then only virtual interfaces associated with this connection will be returned. If a virtual interface ID is included then only a single virtual interface will be returned.</p> <p>A virtual interface (VLAN) transmits the traffic between the AWS Direct Connect location and the customer.</p> <p>If a connection ID is provided, only virtual interfaces provisioned on the specified connection will be returned. If a virtual interface ID is provided, only this particular virtual interface will be returned.</p>

__Required Parameters__



-}
describeVirtualInterfaces :
    (DescribeVirtualInterfacesOptions -> DescribeVirtualInterfacesOptions)
    -> AWS.Request VirtualInterfaces
describeVirtualInterfaces setOptions =
  let
    options = setOptions (DescribeVirtualInterfacesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeVirtualInterfaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        virtualInterfacesDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeVirtualInterfaces request
-}
type alias DescribeVirtualInterfacesOptions =
    { connectionId : Maybe String
    , virtualInterfaceId : Maybe String
    }



{-| <p>Adds the specified tags to the specified Direct Connect resource. Each Direct Connect resource can have a maximum of 50 tags.</p> <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the Direct Connect resource, this action updates its value.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
tagResource :
    String
    -> (List Tag)
    -> AWS.Request TagResourceResponse
tagResource resourceArn tags =
    AWS.Http.unsignedRequest
        "TagResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        tagResourceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes one or more tags from the specified Direct Connect resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
untagResource :
    String
    -> (List String)
    -> AWS.Request UntagResourceResponse
untagResource resourceArn tagKeys =
    AWS.Http.unsignedRequest
        "UntagResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        untagResourceResponseDecoder
        |> AWS.UnsignedRequest




{-| One of

* `AddressFamily_ipv4`
* `AddressFamily_ipv6`

-}
type AddressFamily
    = AddressFamily_ipv4
    | AddressFamily_ipv6



addressFamilyDecoder : JD.Decoder AddressFamily
addressFamilyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ipv4" ->
                        JD.succeed AddressFamily_ipv4

                    "ipv6" ->
                        JD.succeed AddressFamily_ipv6


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A structure containing information about a BGP peer.</p>
-}
type alias BGPPeer =
    { asn : Maybe Int
    , authKey : Maybe String
    , addressFamily : Maybe AddressFamily
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , bgpPeerState : Maybe BGPPeerState
    , bgpStatus : Maybe BGPStatus
    }



bGPPeerDecoder : JD.Decoder BGPPeer
bGPPeerDecoder =
    JDP.decode BGPPeer
        |> JDP.optional "asn" (JD.nullable JD.int) Nothing
        |> JDP.optional "authKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressFamily" (JD.nullable addressFamilyDecoder) Nothing
        |> JDP.optional "amazonAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "bgpPeerState" (JD.nullable bGPPeerStateDecoder) Nothing
        |> JDP.optional "bgpStatus" (JD.nullable bGPStatusDecoder) Nothing




{-| One of

* `BGPPeerState_verifying`
* `BGPPeerState_pending`
* `BGPPeerState_available`
* `BGPPeerState_deleting`
* `BGPPeerState_deleted`

-}
type BGPPeerState
    = BGPPeerState_verifying
    | BGPPeerState_pending
    | BGPPeerState_available
    | BGPPeerState_deleting
    | BGPPeerState_deleted



bGPPeerStateDecoder : JD.Decoder BGPPeerState
bGPPeerStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "verifying" ->
                        JD.succeed BGPPeerState_verifying

                    "pending" ->
                        JD.succeed BGPPeerState_pending

                    "available" ->
                        JD.succeed BGPPeerState_available

                    "deleting" ->
                        JD.succeed BGPPeerState_deleting

                    "deleted" ->
                        JD.succeed BGPPeerState_deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `BGPStatus_up`
* `BGPStatus_down`

-}
type BGPStatus
    = BGPStatus_up
    | BGPStatus_down



bGPStatusDecoder : JD.Decoder BGPStatus
bGPStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "up" ->
                        JD.succeed BGPStatus_up

                    "down" ->
                        JD.succeed BGPStatus_down


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from confirmConnection
-}
type alias ConfirmConnectionResponse =
    { connectionState : Maybe ConnectionState
    }



confirmConnectionResponseDecoder : JD.Decoder ConfirmConnectionResponse
confirmConnectionResponseDecoder =
    JDP.decode ConfirmConnectionResponse
        |> JDP.optional "connectionState" (JD.nullable connectionStateDecoder) Nothing




{-| Type of HTTP response from confirmPrivateVirtualInterface
-}
type alias ConfirmPrivateVirtualInterfaceResponse =
    { virtualInterfaceState : Maybe VirtualInterfaceState
    }



confirmPrivateVirtualInterfaceResponseDecoder : JD.Decoder ConfirmPrivateVirtualInterfaceResponse
confirmPrivateVirtualInterfaceResponseDecoder =
    JDP.decode ConfirmPrivateVirtualInterfaceResponse
        |> JDP.optional "virtualInterfaceState" (JD.nullable virtualInterfaceStateDecoder) Nothing




{-| Type of HTTP response from confirmPublicVirtualInterface
-}
type alias ConfirmPublicVirtualInterfaceResponse =
    { virtualInterfaceState : Maybe VirtualInterfaceState
    }



confirmPublicVirtualInterfaceResponseDecoder : JD.Decoder ConfirmPublicVirtualInterfaceResponse
confirmPublicVirtualInterfaceResponseDecoder =
    JDP.decode ConfirmPublicVirtualInterfaceResponse
        |> JDP.optional "virtualInterfaceState" (JD.nullable virtualInterfaceStateDecoder) Nothing




{-| Type of HTTP response from co
-}
type alias Connection =
    { ownerAccount : Maybe String
    , connectionId : Maybe String
    , connectionName : Maybe String
    , connectionState : Maybe ConnectionState
    , region : Maybe String
    , location : Maybe String
    , bandwidth : Maybe String
    , vlan : Maybe Int
    , partnerName : Maybe String
    , loaIssueTime : Maybe Date
    }



connectionDecoder : JD.Decoder Connection
connectionDecoder =
    JDP.decode Connection
        |> JDP.optional "ownerAccount" (JD.nullable JD.string) Nothing
        |> JDP.optional "connectionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "connectionName" (JD.nullable JD.string) Nothing
        |> JDP.optional "connectionState" (JD.nullable connectionStateDecoder) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "bandwidth" (JD.nullable JD.string) Nothing
        |> JDP.optional "vlan" (JD.nullable JD.int) Nothing
        |> JDP.optional "partnerName" (JD.nullable JD.string) Nothing
        |> JDP.optional "loaIssueTime" (JD.nullable JDX.date) Nothing




{-| One of

* `ConnectionState_ordering`
* `ConnectionState_requested`
* `ConnectionState_pending`
* `ConnectionState_available`
* `ConnectionState_down`
* `ConnectionState_deleting`
* `ConnectionState_deleted`
* `ConnectionState_rejected`

-}
type ConnectionState
    = ConnectionState_ordering
    | ConnectionState_requested
    | ConnectionState_pending
    | ConnectionState_available
    | ConnectionState_down
    | ConnectionState_deleting
    | ConnectionState_deleted
    | ConnectionState_rejected



connectionStateDecoder : JD.Decoder ConnectionState
connectionStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ordering" ->
                        JD.succeed ConnectionState_ordering

                    "requested" ->
                        JD.succeed ConnectionState_requested

                    "pending" ->
                        JD.succeed ConnectionState_pending

                    "available" ->
                        JD.succeed ConnectionState_available

                    "down" ->
                        JD.succeed ConnectionState_down

                    "deleting" ->
                        JD.succeed ConnectionState_deleting

                    "deleted" ->
                        JD.succeed ConnectionState_deleted

                    "rejected" ->
                        JD.succeed ConnectionState_rejected


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from con
-}
type alias Connections =
    { connections : Maybe (List Connection)
    }



connectionsDecoder : JD.Decoder Connections
connectionsDecoder =
    JDP.decode Connections
        |> JDP.optional "connections" (JD.nullable (JD.list connectionDecoder)) Nothing




{-| Type of HTTP response from createBGPPeer
-}
type alias CreateBGPPeerResponse =
    { virtualInterface : Maybe VirtualInterface
    }



createBGPPeerResponseDecoder : JD.Decoder CreateBGPPeerResponse
createBGPPeerResponseDecoder =
    JDP.decode CreateBGPPeerResponse
        |> JDP.optional "virtualInterface" (JD.nullable virtualInterfaceDecoder) Nothing




{-| Type of HTTP response from deleteBGPPeer
-}
type alias DeleteBGPPeerResponse =
    { virtualInterface : Maybe VirtualInterface
    }



deleteBGPPeerResponseDecoder : JD.Decoder DeleteBGPPeerResponse
deleteBGPPeerResponseDecoder =
    JDP.decode DeleteBGPPeerResponse
        |> JDP.optional "virtualInterface" (JD.nullable virtualInterfaceDecoder) Nothing




{-| Type of HTTP response from deleteInterconnect
-}
type alias DeleteInterconnectResponse =
    { interconnectState : Maybe InterconnectState
    }



deleteInterconnectResponseDecoder : JD.Decoder DeleteInterconnectResponse
deleteInterconnectResponseDecoder =
    JDP.decode DeleteInterconnectResponse
        |> JDP.optional "interconnectState" (JD.nullable interconnectStateDecoder) Nothing




{-| Type of HTTP response from deleteVirtualInterface
-}
type alias DeleteVirtualInterfaceResponse =
    { virtualInterfaceState : Maybe VirtualInterfaceState
    }



deleteVirtualInterfaceResponseDecoder : JD.Decoder DeleteVirtualInterfaceResponse
deleteVirtualInterfaceResponseDecoder =
    JDP.decode DeleteVirtualInterfaceResponse
        |> JDP.optional "virtualInterfaceState" (JD.nullable virtualInterfaceStateDecoder) Nothing




{-| Type of HTTP response from describeConnectionLoa
-}
type alias DescribeConnectionLoaResponse =
    { loa : Maybe Loa
    }



describeConnectionLoaResponseDecoder : JD.Decoder DescribeConnectionLoaResponse
describeConnectionLoaResponseDecoder =
    JDP.decode DescribeConnectionLoaResponse
        |> JDP.optional "loa" (JD.nullable loaDecoder) Nothing




{-| Type of HTTP response from describeInterconnectLoa
-}
type alias DescribeInterconnectLoaResponse =
    { loa : Maybe Loa
    }



describeInterconnectLoaResponseDecoder : JD.Decoder DescribeInterconnectLoaResponse
describeInterconnectLoaResponseDecoder =
    JDP.decode DescribeInterconnectLoaResponse
        |> JDP.optional "loa" (JD.nullable loaDecoder) Nothing




{-| Type of HTTP response from describeTags
-}
type alias DescribeTagsResponse =
    { resourceTags : Maybe (List ResourceTag)
    }



describeTagsResponseDecoder : JD.Decoder DescribeTagsResponse
describeTagsResponseDecoder =
    JDP.decode DescribeTagsResponse
        |> JDP.optional "resourceTags" (JD.nullable (JD.list resourceTagDecoder)) Nothing




{-| <p>The API was called with invalid parameters. The error message will contain additional details about the cause.</p>
-}
type alias DirectConnectClientException =
    { message : Maybe String
    }



directConnectClientExceptionDecoder : JD.Decoder DirectConnectClientException
directConnectClientExceptionDecoder =
    JDP.decode DirectConnectClientException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A server-side error occurred during the API call. The error message will contain additional details about the cause.</p>
-}
type alias DirectConnectServerException =
    { message : Maybe String
    }



directConnectServerExceptionDecoder : JD.Decoder DirectConnectServerException
directConnectServerExceptionDecoder =
    JDP.decode DirectConnectServerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A tag key was specified more than once.</p>
-}
type alias DuplicateTagKeysException =
    { 
    }



duplicateTagKeysExceptionDecoder : JD.Decoder DuplicateTagKeysException
duplicateTagKeysExceptionDecoder =
    JDP.decode DuplicateTagKeysException



{-| Type of HTTP response from inte
-}
type alias Interconnect =
    { interconnectId : Maybe String
    , interconnectName : Maybe String
    , interconnectState : Maybe InterconnectState
    , region : Maybe String
    , location : Maybe String
    , bandwidth : Maybe String
    , loaIssueTime : Maybe Date
    }



interconnectDecoder : JD.Decoder Interconnect
interconnectDecoder =
    JDP.decode Interconnect
        |> JDP.optional "interconnectId" (JD.nullable JD.string) Nothing
        |> JDP.optional "interconnectName" (JD.nullable JD.string) Nothing
        |> JDP.optional "interconnectState" (JD.nullable interconnectStateDecoder) Nothing
        |> JDP.optional "region" (JD.nullable JD.string) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "bandwidth" (JD.nullable JD.string) Nothing
        |> JDP.optional "loaIssueTime" (JD.nullable JDX.date) Nothing




{-| One of

* `InterconnectState_requested`
* `InterconnectState_pending`
* `InterconnectState_available`
* `InterconnectState_down`
* `InterconnectState_deleting`
* `InterconnectState_deleted`

-}
type InterconnectState
    = InterconnectState_requested
    | InterconnectState_pending
    | InterconnectState_available
    | InterconnectState_down
    | InterconnectState_deleting
    | InterconnectState_deleted



interconnectStateDecoder : JD.Decoder InterconnectState
interconnectStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "requested" ->
                        JD.succeed InterconnectState_requested

                    "pending" ->
                        JD.succeed InterconnectState_pending

                    "available" ->
                        JD.succeed InterconnectState_available

                    "down" ->
                        JD.succeed InterconnectState_down

                    "deleting" ->
                        JD.succeed InterconnectState_deleting

                    "deleted" ->
                        JD.succeed InterconnectState_deleted


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from inter
-}
type alias Interconnects =
    { interconnects : Maybe (List Interconnect)
    }



interconnectsDecoder : JD.Decoder Interconnects
interconnectsDecoder =
    JDP.decode Interconnects
        |> JDP.optional "interconnects" (JD.nullable (JD.list interconnectDecoder)) Nothing




{-| <p>A structure containing the Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>
-}
type alias Loa =
    { loaContent : Maybe String
    , loaContentType : Maybe LoaContentType
    }



loaDecoder : JD.Decoder Loa
loaDecoder =
    JDP.decode Loa
        |> JDP.optional "loaContent" (JD.nullable JD.string) Nothing
        |> JDP.optional "loaContentType" (JD.nullable loaContentTypeDecoder) Nothing




{-| One of

* `LoaContentType_application/pdf`

-}
type LoaContentType
    = LoaContentType_application_pdf



loaContentTypeDecoder : JD.Decoder LoaContentType
loaContentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "application_pdf" ->
                        JD.succeed LoaContentType_application_pdf


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An AWS Direct Connect location where connections and interconnects can be requested.</p>
-}
type alias Location =
    { locationCode : Maybe String
    , locationName : Maybe String
    }



locationDecoder : JD.Decoder Location
locationDecoder =
    JDP.decode Location
        |> JDP.optional "locationCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "locationName" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from l
-}
type alias Locations =
    { locations : Maybe (List Location)
    }



locationsDecoder : JD.Decoder Locations
locationsDecoder =
    JDP.decode Locations
        |> JDP.optional "locations" (JD.nullable (JD.list locationDecoder)) Nothing




{-| <p>A structure containing information about a new BGP peer.</p>
-}
type alias NewBGPPeer =
    { asn : Maybe Int
    , authKey : Maybe String
    , addressFamily : Maybe AddressFamily
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    }



newBGPPeerDecoder : JD.Decoder NewBGPPeer
newBGPPeerDecoder =
    JDP.decode NewBGPPeer
        |> JDP.optional "asn" (JD.nullable JD.int) Nothing
        |> JDP.optional "authKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressFamily" (JD.nullable addressFamilyDecoder) Nothing
        |> JDP.optional "amazonAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerAddress" (JD.nullable JD.string) Nothing




{-| <p>A structure containing information about a new private virtual interface.</p>
-}
type alias NewPrivateVirtualInterface =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , virtualGatewayId : String
    }



newPrivateVirtualInterfaceDecoder : JD.Decoder NewPrivateVirtualInterface
newPrivateVirtualInterfaceDecoder =
    JDP.decode NewPrivateVirtualInterface
        |> JDP.required "virtualInterfaceName" JD.string
        |> JDP.required "vlan" JD.int
        |> JDP.required "asn" JD.int
        |> JDP.optional "authKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "amazonAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressFamily" (JD.nullable addressFamilyDecoder) Nothing
        |> JDP.required "virtualGatewayId" JD.string




{-| <p>A structure containing information about a private virtual interface that will be provisioned on a connection.</p>
-}
type alias NewPrivateVirtualInterfaceAllocation =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , customerAddress : Maybe String
    }



newPrivateVirtualInterfaceAllocationDecoder : JD.Decoder NewPrivateVirtualInterfaceAllocation
newPrivateVirtualInterfaceAllocationDecoder =
    JDP.decode NewPrivateVirtualInterfaceAllocation
        |> JDP.required "virtualInterfaceName" JD.string
        |> JDP.required "vlan" JD.int
        |> JDP.required "asn" JD.int
        |> JDP.optional "authKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "amazonAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressFamily" (JD.nullable addressFamilyDecoder) Nothing
        |> JDP.optional "customerAddress" (JD.nullable JD.string) Nothing




{-| <p>A structure containing information about a new public virtual interface.</p>
-}
type alias NewPublicVirtualInterface =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , routeFilterPrefixes : Maybe (List RouteFilterPrefix)
    }



newPublicVirtualInterfaceDecoder : JD.Decoder NewPublicVirtualInterface
newPublicVirtualInterfaceDecoder =
    JDP.decode NewPublicVirtualInterface
        |> JDP.required "virtualInterfaceName" JD.string
        |> JDP.required "vlan" JD.int
        |> JDP.required "asn" JD.int
        |> JDP.optional "authKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "amazonAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressFamily" (JD.nullable addressFamilyDecoder) Nothing
        |> JDP.optional "routeFilterPrefixes" (JD.nullable (JD.list routeFilterPrefixDecoder)) Nothing




{-| <p>A structure containing information about a public virtual interface that will be provisioned on a connection.</p>
-}
type alias NewPublicVirtualInterfaceAllocation =
    { virtualInterfaceName : String
    , vlan : Int
    , asn : Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , routeFilterPrefixes : Maybe (List RouteFilterPrefix)
    }



newPublicVirtualInterfaceAllocationDecoder : JD.Decoder NewPublicVirtualInterfaceAllocation
newPublicVirtualInterfaceAllocationDecoder =
    JDP.decode NewPublicVirtualInterfaceAllocation
        |> JDP.required "virtualInterfaceName" JD.string
        |> JDP.required "vlan" JD.int
        |> JDP.required "asn" JD.int
        |> JDP.optional "authKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "amazonAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressFamily" (JD.nullable addressFamilyDecoder) Nothing
        |> JDP.optional "routeFilterPrefixes" (JD.nullable (JD.list routeFilterPrefixDecoder)) Nothing




{-| <p>The tags associated with a Direct Connect resource.</p>
-}
type alias ResourceTag =
    { resourceArn : Maybe String
    , tags : Maybe (List Tag)
    }



resourceTagDecoder : JD.Decoder ResourceTag
resourceTagDecoder =
    JDP.decode ResourceTag
        |> JDP.optional "resourceArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>A route filter prefix that the customer can advertise through Border Gateway Protocol (BGP) over a public virtual interface.</p>
-}
type alias RouteFilterPrefix =
    { cidr : Maybe String
    }



routeFilterPrefixDecoder : JD.Decoder RouteFilterPrefix
routeFilterPrefixDecoder =
    JDP.decode RouteFilterPrefix
        |> JDP.optional "cidr" (JD.nullable JD.string) Nothing




{-| <p>Information about a tag.</p>
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




{-| Type of HTTP response from tagResource
-}
type alias TagResourceResponse =
    { 
    }



tagResourceResponseDecoder : JD.Decoder TagResourceResponse
tagResourceResponseDecoder =
    JDP.decode TagResourceResponse



{-| <p>You have reached the limit on the number of tags that can be assigned to a Direct Connect resource.</p>
-}
type alias TooManyTagsException =
    { 
    }



tooManyTagsExceptionDecoder : JD.Decoder TooManyTagsException
tooManyTagsExceptionDecoder =
    JDP.decode TooManyTagsException



{-| Type of HTTP response from untagResource
-}
type alias UntagResourceResponse =
    { 
    }



untagResourceResponseDecoder : JD.Decoder UntagResourceResponse
untagResourceResponseDecoder =
    JDP.decode UntagResourceResponse



{-| <p>You can create one or more AWS Direct Connect private virtual interfaces linking to your virtual private gateway.</p> <p>Virtual private gateways can be managed using the Amazon Virtual Private Cloud (Amazon VPC) console or the <a href="http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html">Amazon EC2 CreateVpnGateway action</a>.</p>
-}
type alias VirtualGateway =
    { virtualGatewayId : Maybe String
    , virtualGatewayState : Maybe String
    }



virtualGatewayDecoder : JD.Decoder VirtualGateway
virtualGatewayDecoder =
    JDP.decode VirtualGateway
        |> JDP.optional "virtualGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualGatewayState" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from virtual
-}
type alias VirtualGateways =
    { virtualGateways : Maybe (List VirtualGateway)
    }



virtualGatewaysDecoder : JD.Decoder VirtualGateways
virtualGatewaysDecoder =
    JDP.decode VirtualGateways
        |> JDP.optional "virtualGateways" (JD.nullable (JD.list virtualGatewayDecoder)) Nothing




{-| Type of HTTP response from virtualI
-}
type alias VirtualInterface =
    { ownerAccount : Maybe String
    , virtualInterfaceId : Maybe String
    , location : Maybe String
    , connectionId : Maybe String
    , virtualInterfaceType : Maybe String
    , virtualInterfaceName : Maybe String
    , vlan : Maybe Int
    , asn : Maybe Int
    , authKey : Maybe String
    , amazonAddress : Maybe String
    , customerAddress : Maybe String
    , addressFamily : Maybe AddressFamily
    , virtualInterfaceState : Maybe VirtualInterfaceState
    , customerRouterConfig : Maybe String
    , virtualGatewayId : Maybe String
    , routeFilterPrefixes : Maybe (List RouteFilterPrefix)
    , bgpPeers : Maybe (List BGPPeer)
    }



virtualInterfaceDecoder : JD.Decoder VirtualInterface
virtualInterfaceDecoder =
    JDP.decode VirtualInterface
        |> JDP.optional "ownerAccount" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualInterfaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "connectionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualInterfaceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualInterfaceName" (JD.nullable JD.string) Nothing
        |> JDP.optional "vlan" (JD.nullable JD.int) Nothing
        |> JDP.optional "asn" (JD.nullable JD.int) Nothing
        |> JDP.optional "authKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "amazonAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "customerAddress" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressFamily" (JD.nullable addressFamilyDecoder) Nothing
        |> JDP.optional "virtualInterfaceState" (JD.nullable virtualInterfaceStateDecoder) Nothing
        |> JDP.optional "customerRouterConfig" (JD.nullable JD.string) Nothing
        |> JDP.optional "virtualGatewayId" (JD.nullable JD.string) Nothing
        |> JDP.optional "routeFilterPrefixes" (JD.nullable (JD.list routeFilterPrefixDecoder)) Nothing
        |> JDP.optional "bgpPeers" (JD.nullable (JD.list bGPPeerDecoder)) Nothing




{-| One of

* `VirtualInterfaceState_confirming`
* `VirtualInterfaceState_verifying`
* `VirtualInterfaceState_pending`
* `VirtualInterfaceState_available`
* `VirtualInterfaceState_down`
* `VirtualInterfaceState_deleting`
* `VirtualInterfaceState_deleted`
* `VirtualInterfaceState_rejected`

-}
type VirtualInterfaceState
    = VirtualInterfaceState_confirming
    | VirtualInterfaceState_verifying
    | VirtualInterfaceState_pending
    | VirtualInterfaceState_available
    | VirtualInterfaceState_down
    | VirtualInterfaceState_deleting
    | VirtualInterfaceState_deleted
    | VirtualInterfaceState_rejected



virtualInterfaceStateDecoder : JD.Decoder VirtualInterfaceState
virtualInterfaceStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "confirming" ->
                        JD.succeed VirtualInterfaceState_confirming

                    "verifying" ->
                        JD.succeed VirtualInterfaceState_verifying

                    "pending" ->
                        JD.succeed VirtualInterfaceState_pending

                    "available" ->
                        JD.succeed VirtualInterfaceState_available

                    "down" ->
                        JD.succeed VirtualInterfaceState_down

                    "deleting" ->
                        JD.succeed VirtualInterfaceState_deleting

                    "deleted" ->
                        JD.succeed VirtualInterfaceState_deleted

                    "rejected" ->
                        JD.succeed VirtualInterfaceState_rejected


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from virtualIn
-}
type alias VirtualInterfaces =
    { virtualInterfaces : Maybe (List VirtualInterface)
    }



virtualInterfacesDecoder : JD.Decoder VirtualInterfaces
virtualInterfacesDecoder =
    JDP.decode VirtualInterfaces
        |> JDP.optional "virtualInterfaces" (JD.nullable (JD.list virtualInterfaceDecoder)) Nothing




