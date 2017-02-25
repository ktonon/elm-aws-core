module AWS.Services.CloudHSM
    exposing
        ( config
        , addTagsToResource
        , createHapg
        , createHsm
        , CreateHsmOptions
        , createLunaClient
        , CreateLunaClientOptions
        , deleteHapg
        , deleteHsm
        , deleteLunaClient
        , describeHapg
        , describeHsm
        , DescribeHsmOptions
        , describeLunaClient
        , DescribeLunaClientOptions
        , getConfig
        , listAvailableZones
        , listHapgs
        , ListHapgsOptions
        , listHsms
        , ListHsmsOptions
        , listLunaClients
        , ListLunaClientsOptions
        , listTagsForResource
        , modifyHapg
        , ModifyHapgOptions
        , modifyHsm
        , ModifyHsmOptions
        , modifyLunaClient
        , removeTagsFromResource
        , AddTagsToResourceResponse
        , ClientVersion(..)
        , CloudHsmInternalException
        , CloudHsmObjectState(..)
        , CloudHsmServiceException
        , CreateHapgResponse
        , CreateHsmResponse
        , CreateLunaClientResponse
        , DeleteHapgResponse
        , DeleteHsmResponse
        , DeleteLunaClientResponse
        , DescribeHapgResponse
        , DescribeHsmResponse
        , DescribeLunaClientResponse
        , GetConfigResponse
        , HsmStatus(..)
        , InvalidRequestException
        , ListAvailableZonesResponse
        , ListHapgsResponse
        , ListHsmsResponse
        , ListLunaClientsResponse
        , ListTagsForResourceResponse
        , ModifyHapgResponse
        , ModifyHsmResponse
        , ModifyLunaClientResponse
        , RemoveTagsFromResourceResponse
        , SubscriptionType(..)
        , Tag
        )

{-| <fullname>AWS CloudHSM Service</fullname>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToResource](#addTagsToResource)
* [createHapg](#createHapg)
* [createHsm](#createHsm)
* [CreateHsmOptions](#CreateHsmOptions)
* [createLunaClient](#createLunaClient)
* [CreateLunaClientOptions](#CreateLunaClientOptions)
* [deleteHapg](#deleteHapg)
* [deleteHsm](#deleteHsm)
* [deleteLunaClient](#deleteLunaClient)
* [describeHapg](#describeHapg)
* [describeHsm](#describeHsm)
* [DescribeHsmOptions](#DescribeHsmOptions)
* [describeLunaClient](#describeLunaClient)
* [DescribeLunaClientOptions](#DescribeLunaClientOptions)
* [getConfig](#getConfig)
* [listAvailableZones](#listAvailableZones)
* [listHapgs](#listHapgs)
* [ListHapgsOptions](#ListHapgsOptions)
* [listHsms](#listHsms)
* [ListHsmsOptions](#ListHsmsOptions)
* [listLunaClients](#listLunaClients)
* [ListLunaClientsOptions](#ListLunaClientsOptions)
* [listTagsForResource](#listTagsForResource)
* [modifyHapg](#modifyHapg)
* [ModifyHapgOptions](#ModifyHapgOptions)
* [modifyHsm](#modifyHsm)
* [ModifyHsmOptions](#ModifyHsmOptions)
* [modifyLunaClient](#modifyLunaClient)
* [removeTagsFromResource](#removeTagsFromResource)


@docs addTagsToResource,createHapg,createHsm,CreateHsmOptions,createLunaClient,CreateLunaClientOptions,deleteHapg,deleteHsm,deleteLunaClient,describeHapg,describeHsm,DescribeHsmOptions,describeLunaClient,DescribeLunaClientOptions,getConfig,listAvailableZones,listHapgs,ListHapgsOptions,listHsms,ListHsmsOptions,listLunaClients,ListLunaClientsOptions,listTagsForResource,modifyHapg,ModifyHapgOptions,modifyHsm,ModifyHsmOptions,modifyLunaClient,removeTagsFromResource

## Responses

* [AddTagsToResourceResponse](#AddTagsToResourceResponse)
* [CreateHapgResponse](#CreateHapgResponse)
* [CreateHsmResponse](#CreateHsmResponse)
* [CreateLunaClientResponse](#CreateLunaClientResponse)
* [DeleteHapgResponse](#DeleteHapgResponse)
* [DeleteHsmResponse](#DeleteHsmResponse)
* [DeleteLunaClientResponse](#DeleteLunaClientResponse)
* [DescribeHapgResponse](#DescribeHapgResponse)
* [DescribeHsmResponse](#DescribeHsmResponse)
* [DescribeLunaClientResponse](#DescribeLunaClientResponse)
* [GetConfigResponse](#GetConfigResponse)
* [ListAvailableZonesResponse](#ListAvailableZonesResponse)
* [ListHapgsResponse](#ListHapgsResponse)
* [ListHsmsResponse](#ListHsmsResponse)
* [ListLunaClientsResponse](#ListLunaClientsResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [ModifyHapgResponse](#ModifyHapgResponse)
* [ModifyHsmResponse](#ModifyHsmResponse)
* [ModifyLunaClientResponse](#ModifyLunaClientResponse)
* [RemoveTagsFromResourceResponse](#RemoveTagsFromResourceResponse)


@docs AddTagsToResourceResponse,CreateHapgResponse,CreateHsmResponse,CreateLunaClientResponse,DeleteHapgResponse,DeleteHsmResponse,DeleteLunaClientResponse,DescribeHapgResponse,DescribeHsmResponse,DescribeLunaClientResponse,GetConfigResponse,ListAvailableZonesResponse,ListHapgsResponse,ListHsmsResponse,ListLunaClientsResponse,ListTagsForResourceResponse,ModifyHapgResponse,ModifyHsmResponse,ModifyLunaClientResponse,RemoveTagsFromResourceResponse

## Records

* [Tag](#Tag)


@docs Tag

## Unions

* [ClientVersion](#ClientVersion)
* [CloudHsmObjectState](#CloudHsmObjectState)
* [HsmStatus](#HsmStatus)
* [SubscriptionType](#SubscriptionType)


@docs ClientVersion,CloudHsmObjectState,HsmStatus,SubscriptionType

## Exceptions

* [CloudHsmInternalException](#CloudHsmInternalException)
* [CloudHsmServiceException](#CloudHsmServiceException)
* [InvalidRequestException](#InvalidRequestException)


@docs CloudHsmInternalException,CloudHsmServiceException,InvalidRequestException

-}

import AWS
import AWS.Config
import AWS.Http
import AWS.Util
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "cloudhsm"
        "2014-05-30"
        "1.1"
        "AWSCLOUDHSM_20140530."
        "cloudhsm.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds or overwrites one or more tags for the specified AWS CloudHSM resource.</p> <p>Each tag consists of a key and a value. Tag keys must be unique to each resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagList` __:__ `(List Tag)`


-}
addTagsToResource :
    String
    -> (List Tag)
    -> AWS.Request AddTagsToResourceResponse
addTagsToResource resourceArn tagList =
    AWS.Http.unsignedRequest
        "AddTagsToResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsToResourceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a high-availability partition group. A high-availability partition group is a group of partitions that spans multiple physical HSMs.</p>

__Required Parameters__

* `label` __:__ `String`


-}
createHapg :
    String
    -> AWS.Request CreateHapgResponse
createHapg label =
    AWS.Http.unsignedRequest
        "CreateHapg"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createHapgResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates an uninitialized HSM instance.</p> <p>There is an upfront fee charged for each HSM instance that you create with the <a>CreateHsm</a> operation. If you accidentally provision an HSM and want to request a refund, delete the instance using the <a>DeleteHsm</a> operation, go to the <a href="https://console.aws.amazon.com/support/home#/">AWS Support Center</a>, create a new case, and select <b>Account and Billing Support</b>.</p> <important> <p>It can take up to 20 minutes to create and provision an HSM. You can monitor the status of the HSM with the <a>DescribeHsm</a> operation. The HSM is ready to be initialized when the status changes to <code>RUNNING</code>.</p> </important>

__Required Parameters__

* `subnetId` __:__ `String`
* `sshKey` __:__ `String`
* `iamRoleArn` __:__ `String`
* `subscriptionType` __:__ `SubscriptionType`


-}
createHsm :
    String
    -> String
    -> String
    -> SubscriptionType
    -> (CreateHsmOptions -> CreateHsmOptions)
    -> AWS.Request CreateHsmResponse
createHsm subnetId sshKey iamRoleArn subscriptionType setOptions =
  let
    options = setOptions (CreateHsmOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateHsm"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createHsmResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createHsm request
-}
type alias CreateHsmOptions =
    { eniIp : Maybe String
    , externalId : Maybe String
    , clientToken : Maybe String
    , syslogIp : Maybe String
    }



{-| <p>Creates an HSM client.</p>

__Required Parameters__

* `certificate` __:__ `String`


-}
createLunaClient :
    String
    -> (CreateLunaClientOptions -> CreateLunaClientOptions)
    -> AWS.Request CreateLunaClientResponse
createLunaClient certificate setOptions =
  let
    options = setOptions (CreateLunaClientOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateLunaClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createLunaClientResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createLunaClient request
-}
type alias CreateLunaClientOptions =
    { label : Maybe String
    }



{-| <p>Deletes a high-availability partition group.</p>

__Required Parameters__

* `hapgArn` __:__ `String`


-}
deleteHapg :
    String
    -> AWS.Request DeleteHapgResponse
deleteHapg hapgArn =
    AWS.Http.unsignedRequest
        "DeleteHapg"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteHapgResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes an HSM. After completion, this operation cannot be undone and your key material cannot be recovered.</p>

__Required Parameters__

* `hsmArn` __:__ `String`


-}
deleteHsm :
    String
    -> AWS.Request DeleteHsmResponse
deleteHsm hsmArn =
    AWS.Http.unsignedRequest
        "DeleteHsm"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteHsmResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a client.</p>

__Required Parameters__

* `clientArn` __:__ `String`


-}
deleteLunaClient :
    String
    -> AWS.Request DeleteLunaClientResponse
deleteLunaClient clientArn =
    AWS.Http.unsignedRequest
        "DeleteLunaClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteLunaClientResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves information about a high-availability partition group.</p>

__Required Parameters__

* `hapgArn` __:__ `String`


-}
describeHapg :
    String
    -> AWS.Request DescribeHapgResponse
describeHapg hapgArn =
    AWS.Http.unsignedRequest
        "DescribeHapg"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeHapgResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves information about an HSM. You can identify the HSM by its ARN or its serial number.</p>

__Required Parameters__



-}
describeHsm :
    (DescribeHsmOptions -> DescribeHsmOptions)
    -> AWS.Request DescribeHsmResponse
describeHsm setOptions =
  let
    options = setOptions (DescribeHsmOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeHsm"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeHsmResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeHsm request
-}
type alias DescribeHsmOptions =
    { hsmArn : Maybe String
    , hsmSerialNumber : Maybe String
    }



{-| <p>Retrieves information about an HSM client.</p>

__Required Parameters__



-}
describeLunaClient :
    (DescribeLunaClientOptions -> DescribeLunaClientOptions)
    -> AWS.Request DescribeLunaClientResponse
describeLunaClient setOptions =
  let
    options = setOptions (DescribeLunaClientOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeLunaClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeLunaClientResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeLunaClient request
-}
type alias DescribeLunaClientOptions =
    { clientArn : Maybe String
    , certificateFingerprint : Maybe String
    }



{-| <p>Gets the configuration files necessary to connect to all high availability partition groups the client is associated with.</p>

__Required Parameters__

* `clientArn` __:__ `String`
* `clientVersion` __:__ `ClientVersion`
* `hapgList` __:__ `(List String)`


-}
getConfig :
    String
    -> ClientVersion
    -> (List String)
    -> AWS.Request GetConfigResponse
getConfig clientArn clientVersion hapgList =
    AWS.Http.unsignedRequest
        "GetConfig"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getConfigResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the Availability Zones that have available AWS CloudHSM capacity.</p>

__Required Parameters__



-}
listAvailableZones :
    AWS.Request ListAvailableZonesResponse
listAvailableZones =
    AWS.Http.unsignedRequest
        "ListAvailableZones"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAvailableZonesResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the high-availability partition groups for the account.</p> <p>This operation supports pagination with the use of the <i>NextToken</i> member. If more results are available, the <i>NextToken</i> member of the response contains a token that you pass in the next call to <a>ListHapgs</a> to retrieve the next set of items.</p>

__Required Parameters__



-}
listHapgs :
    (ListHapgsOptions -> ListHapgsOptions)
    -> AWS.Request ListHapgsResponse
listHapgs setOptions =
  let
    options = setOptions (ListHapgsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListHapgs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listHapgsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listHapgs request
-}
type alias ListHapgsOptions =
    { nextToken : Maybe String
    }



{-| <p>Retrieves the identifiers of all of the HSMs provisioned for the current customer.</p> <p>This operation supports pagination with the use of the <i>NextToken</i> member. If more results are available, the <i>NextToken</i> member of the response contains a token that you pass in the next call to <a>ListHsms</a> to retrieve the next set of items.</p>

__Required Parameters__



-}
listHsms :
    (ListHsmsOptions -> ListHsmsOptions)
    -> AWS.Request ListHsmsResponse
listHsms setOptions =
  let
    options = setOptions (ListHsmsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListHsms"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listHsmsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listHsms request
-}
type alias ListHsmsOptions =
    { nextToken : Maybe String
    }



{-| <p>Lists all of the clients.</p> <p>This operation supports pagination with the use of the <i>NextToken</i> member. If more results are available, the <i>NextToken</i> member of the response contains a token that you pass in the next call to <a>ListLunaClients</a> to retrieve the next set of items.</p>

__Required Parameters__



-}
listLunaClients :
    (ListLunaClientsOptions -> ListLunaClientsOptions)
    -> AWS.Request ListLunaClientsResponse
listLunaClients setOptions =
  let
    options = setOptions (ListLunaClientsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListLunaClients"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listLunaClientsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listLunaClients request
-}
type alias ListLunaClientsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list of all tags for the specified AWS CloudHSM resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}
listTagsForResource :
    String
    -> AWS.Request ListTagsForResourceResponse
listTagsForResource resourceArn =
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForResourceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies an existing high-availability partition group.</p>

__Required Parameters__

* `hapgArn` __:__ `String`


-}
modifyHapg :
    String
    -> (ModifyHapgOptions -> ModifyHapgOptions)
    -> AWS.Request ModifyHapgResponse
modifyHapg hapgArn setOptions =
  let
    options = setOptions (ModifyHapgOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyHapg"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyHapgResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyHapg request
-}
type alias ModifyHapgOptions =
    { label : Maybe String
    , partitionSerialList : Maybe (List String)
    }



{-| <p>Modifies an HSM.</p> <important> <p>This operation can result in the HSM being offline for up to 15 minutes while the AWS CloudHSM service is reconfigured. If you are modifying a production HSM, you should ensure that your AWS CloudHSM service is configured for high availability, and consider executing this operation during a maintenance window.</p> </important>

__Required Parameters__

* `hsmArn` __:__ `String`


-}
modifyHsm :
    String
    -> (ModifyHsmOptions -> ModifyHsmOptions)
    -> AWS.Request ModifyHsmResponse
modifyHsm hsmArn setOptions =
  let
    options = setOptions (ModifyHsmOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ModifyHsm"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyHsmResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a modifyHsm request
-}
type alias ModifyHsmOptions =
    { subnetId : Maybe String
    , eniIp : Maybe String
    , iamRoleArn : Maybe String
    , externalId : Maybe String
    , syslogIp : Maybe String
    }



{-| <p>Modifies the certificate used by the client.</p> <p>This action can potentially start a workflow to install the new certificate on the client's HSMs.</p>

__Required Parameters__

* `clientArn` __:__ `String`
* `certificate` __:__ `String`


-}
modifyLunaClient :
    String
    -> String
    -> AWS.Request ModifyLunaClientResponse
modifyLunaClient clientArn certificate =
    AWS.Http.unsignedRequest
        "ModifyLunaClient"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        modifyLunaClientResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes one or more tags from the specified AWS CloudHSM resource.</p> <p>To remove a tag, specify only the tag key to remove (not the value). To overwrite the value for an existing tag, use <a>AddTagsToResource</a>.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeyList` __:__ `(List String)`


-}
removeTagsFromResource :
    String
    -> (List String)
    -> AWS.Request RemoveTagsFromResourceResponse
removeTagsFromResource resourceArn tagKeyList =
    AWS.Http.unsignedRequest
        "RemoveTagsFromResource"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsFromResourceResponseDecoder
        |> AWS.UnsignedRequest




{-| Type of HTTP response from addTagsToResource
-}
type alias AddTagsToResourceResponse =
    { status : String
    }



addTagsToResourceResponseDecoder : JD.Decoder AddTagsToResourceResponse
addTagsToResourceResponseDecoder =
    JDP.decode AddTagsToResourceResponse
        |> JDP.required "status" JD.string




{-| One of

* `ClientVersion_5.1`
* `ClientVersion_5.3`

-}
type ClientVersion
    = ClientVersion_5_1
    | ClientVersion_5_3



clientVersionDecoder : JD.Decoder ClientVersion
clientVersionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "5_1" ->
                        JD.succeed ClientVersion_5_1

                    "5_3" ->
                        JD.succeed ClientVersion_5_3


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates that an internal error occurred.</p>
-}
type alias CloudHsmInternalException =
    { 
    }



cloudHsmInternalExceptionDecoder : JD.Decoder CloudHsmInternalException
cloudHsmInternalExceptionDecoder =
    JDP.decode CloudHsmInternalException



{-| One of

* `CloudHsmObjectState_READY`
* `CloudHsmObjectState_UPDATING`
* `CloudHsmObjectState_DEGRADED`

-}
type CloudHsmObjectState
    = CloudHsmObjectState_READY
    | CloudHsmObjectState_UPDATING
    | CloudHsmObjectState_DEGRADED



cloudHsmObjectStateDecoder : JD.Decoder CloudHsmObjectState
cloudHsmObjectStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "READY" ->
                        JD.succeed CloudHsmObjectState_READY

                    "UPDATING" ->
                        JD.succeed CloudHsmObjectState_UPDATING

                    "DEGRADED" ->
                        JD.succeed CloudHsmObjectState_DEGRADED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates that an exception occurred in the AWS CloudHSM service.</p>
-}
type alias CloudHsmServiceException =
    { message : Maybe String
    , retryable : Maybe Bool
    }



cloudHsmServiceExceptionDecoder : JD.Decoder CloudHsmServiceException
cloudHsmServiceExceptionDecoder =
    JDP.decode CloudHsmServiceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "retryable" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from createHapg
-}
type alias CreateHapgResponse =
    { hapgArn : Maybe String
    }



createHapgResponseDecoder : JD.Decoder CreateHapgResponse
createHapgResponseDecoder =
    JDP.decode CreateHapgResponse
        |> JDP.optional "hapgArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createHsm
-}
type alias CreateHsmResponse =
    { hsmArn : Maybe String
    }



createHsmResponseDecoder : JD.Decoder CreateHsmResponse
createHsmResponseDecoder =
    JDP.decode CreateHsmResponse
        |> JDP.optional "hsmArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createLunaClient
-}
type alias CreateLunaClientResponse =
    { clientArn : Maybe String
    }



createLunaClientResponseDecoder : JD.Decoder CreateLunaClientResponse
createLunaClientResponseDecoder =
    JDP.decode CreateLunaClientResponse
        |> JDP.optional "clientArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteHapg
-}
type alias DeleteHapgResponse =
    { status : String
    }



deleteHapgResponseDecoder : JD.Decoder DeleteHapgResponse
deleteHapgResponseDecoder =
    JDP.decode DeleteHapgResponse
        |> JDP.required "status" JD.string




{-| Type of HTTP response from deleteHsm
-}
type alias DeleteHsmResponse =
    { status : String
    }



deleteHsmResponseDecoder : JD.Decoder DeleteHsmResponse
deleteHsmResponseDecoder =
    JDP.decode DeleteHsmResponse
        |> JDP.required "status" JD.string




{-| Type of HTTP response from deleteLunaClient
-}
type alias DeleteLunaClientResponse =
    { status : String
    }



deleteLunaClientResponseDecoder : JD.Decoder DeleteLunaClientResponse
deleteLunaClientResponseDecoder =
    JDP.decode DeleteLunaClientResponse
        |> JDP.required "status" JD.string




{-| Type of HTTP response from describeHapg
-}
type alias DescribeHapgResponse =
    { hapgArn : Maybe String
    , hapgSerial : Maybe String
    , hsmsLastActionFailed : Maybe (List String)
    , hsmsPendingDeletion : Maybe (List String)
    , hsmsPendingRegistration : Maybe (List String)
    , label : Maybe String
    , lastModifiedTimestamp : Maybe String
    , partitionSerialList : Maybe (List String)
    , state : Maybe CloudHsmObjectState
    }



describeHapgResponseDecoder : JD.Decoder DescribeHapgResponse
describeHapgResponseDecoder =
    JDP.decode DescribeHapgResponse
        |> JDP.optional "hapgArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "hapgSerial" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmsLastActionFailed" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "hsmsPendingDeletion" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "hsmsPendingRegistration" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "label" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModifiedTimestamp" (JD.nullable JD.string) Nothing
        |> JDP.optional "partitionSerialList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "state" (JD.nullable cloudHsmObjectStateDecoder) Nothing




{-| Type of HTTP response from describeHsm
-}
type alias DescribeHsmResponse =
    { hsmArn : Maybe String
    , status : Maybe HsmStatus
    , statusDetails : Maybe String
    , availabilityZone : Maybe String
    , eniId : Maybe String
    , eniIp : Maybe String
    , subscriptionType : Maybe SubscriptionType
    , subscriptionStartDate : Maybe String
    , subscriptionEndDate : Maybe String
    , vpcId : Maybe String
    , subnetId : Maybe String
    , iamRoleArn : Maybe String
    , serialNumber : Maybe String
    , vendorName : Maybe String
    , hsmType : Maybe String
    , softwareVersion : Maybe String
    , sshPublicKey : Maybe String
    , sshKeyLastUpdated : Maybe String
    , serverCertUri : Maybe String
    , serverCertLastUpdated : Maybe String
    , partitions : Maybe (List String)
    }



describeHsmResponseDecoder : JD.Decoder DescribeHsmResponse
describeHsmResponseDecoder =
    JDP.decode DescribeHsmResponse
        |> JDP.optional "hsmArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable hsmStatusDecoder) Nothing
        |> JDP.optional "statusDetails" (JD.nullable JD.string) Nothing
        |> JDP.optional "availabilityZone" (JD.nullable JD.string) Nothing
        |> JDP.optional "eniId" (JD.nullable JD.string) Nothing
        |> JDP.optional "eniIp" (JD.nullable JD.string) Nothing
        |> JDP.optional "subscriptionType" (JD.nullable subscriptionTypeDecoder) Nothing
        |> JDP.optional "subscriptionStartDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "subscriptionEndDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "vpcId" (JD.nullable JD.string) Nothing
        |> JDP.optional "subnetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "iamRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "serialNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "vendorName" (JD.nullable JD.string) Nothing
        |> JDP.optional "hsmType" (JD.nullable JD.string) Nothing
        |> JDP.optional "softwareVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshPublicKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "sshKeyLastUpdated" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverCertUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "serverCertLastUpdated" (JD.nullable JD.string) Nothing
        |> JDP.optional "partitions" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from describeLunaClient
-}
type alias DescribeLunaClientResponse =
    { clientArn : Maybe String
    , certificate : Maybe String
    , certificateFingerprint : Maybe String
    , lastModifiedTimestamp : Maybe String
    , label : Maybe String
    }



describeLunaClientResponseDecoder : JD.Decoder DescribeLunaClientResponse
describeLunaClientResponseDecoder =
    JDP.decode DescribeLunaClientResponse
        |> JDP.optional "clientArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificate" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateFingerprint" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModifiedTimestamp" (JD.nullable JD.string) Nothing
        |> JDP.optional "label" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getConfig
-}
type alias GetConfigResponse =
    { configType : Maybe String
    , configFile : Maybe String
    , configCred : Maybe String
    }



getConfigResponseDecoder : JD.Decoder GetConfigResponse
getConfigResponseDecoder =
    JDP.decode GetConfigResponse
        |> JDP.optional "configType" (JD.nullable JD.string) Nothing
        |> JDP.optional "configFile" (JD.nullable JD.string) Nothing
        |> JDP.optional "configCred" (JD.nullable JD.string) Nothing




{-| One of

* `HsmStatus_PENDING`
* `HsmStatus_RUNNING`
* `HsmStatus_UPDATING`
* `HsmStatus_SUSPENDED`
* `HsmStatus_TERMINATING`
* `HsmStatus_TERMINATED`
* `HsmStatus_DEGRADED`

-}
type HsmStatus
    = HsmStatus_PENDING
    | HsmStatus_RUNNING
    | HsmStatus_UPDATING
    | HsmStatus_SUSPENDED
    | HsmStatus_TERMINATING
    | HsmStatus_TERMINATED
    | HsmStatus_DEGRADED



hsmStatusDecoder : JD.Decoder HsmStatus
hsmStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed HsmStatus_PENDING

                    "RUNNING" ->
                        JD.succeed HsmStatus_RUNNING

                    "UPDATING" ->
                        JD.succeed HsmStatus_UPDATING

                    "SUSPENDED" ->
                        JD.succeed HsmStatus_SUSPENDED

                    "TERMINATING" ->
                        JD.succeed HsmStatus_TERMINATING

                    "TERMINATED" ->
                        JD.succeed HsmStatus_TERMINATED

                    "DEGRADED" ->
                        JD.succeed HsmStatus_DEGRADED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates that one or more of the request parameters are not valid.</p>
-}
type alias InvalidRequestException =
    { 
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JDP.decode InvalidRequestException



{-| Type of HTTP response from listAvailableZones
-}
type alias ListAvailableZonesResponse =
    { aZList : Maybe (List String)
    }



listAvailableZonesResponseDecoder : JD.Decoder ListAvailableZonesResponse
listAvailableZonesResponseDecoder =
    JDP.decode ListAvailableZonesResponse
        |> JDP.optional "aZList" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from listHapgs
-}
type alias ListHapgsResponse =
    { hapgList : (List String)
    , nextToken : Maybe String
    }



listHapgsResponseDecoder : JD.Decoder ListHapgsResponse
listHapgsResponseDecoder =
    JDP.decode ListHapgsResponse
        |> JDP.required "hapgList" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listHsms
-}
type alias ListHsmsResponse =
    { hsmList : Maybe (List String)
    , nextToken : Maybe String
    }



listHsmsResponseDecoder : JD.Decoder ListHsmsResponse
listHsmsResponseDecoder =
    JDP.decode ListHsmsResponse
        |> JDP.optional "hsmList" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listLunaClients
-}
type alias ListLunaClientsResponse =
    { clientList : (List String)
    , nextToken : Maybe String
    }



listLunaClientsResponseDecoder : JD.Decoder ListLunaClientsResponse
listLunaClientsResponseDecoder =
    JDP.decode ListLunaClientsResponse
        |> JDP.required "clientList" (JD.list JD.string)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tagList : (List Tag)
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JDP.decode ListTagsForResourceResponse
        |> JDP.required "tagList" (JD.list tagDecoder)




{-| Type of HTTP response from modifyHapg
-}
type alias ModifyHapgResponse =
    { hapgArn : Maybe String
    }



modifyHapgResponseDecoder : JD.Decoder ModifyHapgResponse
modifyHapgResponseDecoder =
    JDP.decode ModifyHapgResponse
        |> JDP.optional "hapgArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from modifyHsm
-}
type alias ModifyHsmResponse =
    { hsmArn : Maybe String
    }



modifyHsmResponseDecoder : JD.Decoder ModifyHsmResponse
modifyHsmResponseDecoder =
    JDP.decode ModifyHsmResponse
        |> JDP.optional "hsmArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from modifyLunaClient
-}
type alias ModifyLunaClientResponse =
    { clientArn : Maybe String
    }



modifyLunaClientResponseDecoder : JD.Decoder ModifyLunaClientResponse
modifyLunaClientResponseDecoder =
    JDP.decode ModifyLunaClientResponse
        |> JDP.optional "clientArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from removeTagsFromResource
-}
type alias RemoveTagsFromResourceResponse =
    { status : String
    }



removeTagsFromResourceResponseDecoder : JD.Decoder RemoveTagsFromResourceResponse
removeTagsFromResourceResponseDecoder =
    JDP.decode RemoveTagsFromResourceResponse
        |> JDP.required "status" JD.string




{-| One of

* `SubscriptionType_PRODUCTION`

-}
type SubscriptionType
    = SubscriptionType_PRODUCTION



subscriptionTypeDecoder : JD.Decoder SubscriptionType
subscriptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PRODUCTION" ->
                        JD.succeed SubscriptionType_PRODUCTION


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A key-value pair that identifies or specifies metadata about an AWS CloudHSM resource.</p>
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




