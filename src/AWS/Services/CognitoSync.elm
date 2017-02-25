module AWS.Services.CognitoSync
    exposing
        ( config
        , bulkPublish
        , deleteDataset
        , describeDataset
        , describeIdentityPoolUsage
        , describeIdentityUsage
        , getBulkPublishDetails
        , getCognitoEvents
        , getIdentityPoolConfiguration
        , listDatasets
        , ListDatasetsOptions
        , listIdentityPoolUsage
        , ListIdentityPoolUsageOptions
        , listRecords
        , ListRecordsOptions
        , registerDevice
        , setCognitoEvents
        , setIdentityPoolConfiguration
        , SetIdentityPoolConfigurationOptions
        , subscribeToDataset
        , unsubscribeFromDataset
        , updateRecords
        , UpdateRecordsOptions
        , AlreadyStreamedException
        , BulkPublishResponse
        , BulkPublishStatus(..)
        , CognitoStreams
        , ConcurrentModificationException
        , Dataset
        , DeleteDatasetResponse
        , DescribeDatasetResponse
        , DescribeIdentityPoolUsageResponse
        , DescribeIdentityUsageResponse
        , DuplicateRequestException
        , GetBulkPublishDetailsResponse
        , GetCognitoEventsResponse
        , GetIdentityPoolConfigurationResponse
        , IdentityPoolUsage
        , IdentityUsage
        , InternalErrorException
        , InvalidConfigurationException
        , InvalidLambdaFunctionOutputException
        , InvalidParameterException
        , LambdaThrottledException
        , LimitExceededException
        , ListDatasetsResponse
        , ListIdentityPoolUsageResponse
        , ListRecordsResponse
        , NotAuthorizedException
        , Operation(..)
        , Platform(..)
        , PushSync
        , Record
        , RecordPatch
        , RegisterDeviceResponse
        , ResourceConflictException
        , ResourceNotFoundException
        , SetIdentityPoolConfigurationResponse
        , StreamingStatus(..)
        , SubscribeToDatasetResponse
        , TooManyRequestsException
        , UnsubscribeFromDatasetResponse
        , UpdateRecordsResponse
        )

{-| <fullname>Amazon Cognito Sync</fullname> <p>Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of application-related user data. High-level client libraries are available for both iOS and Android. You can use these libraries to persist data locally so that it's available even if the device is offline. Developer credentials don't need to be stored on the mobile device to access the service. You can use Amazon Cognito to obtain a normalized user ID and credentials. User data is persisted in a dataset that can store up to 1 MB of key-value pairs, and you can have up to 20 datasets per user identity.</p> <p>With Amazon Cognito Sync, the data stored for each identity is accessible only to credentials assigned to that identity. In order to use the Cognito Sync service, you need to make API calls using credentials retrieved with <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html">Amazon Cognito Identity service</a>.</p> <p>If you want to use Cognito Sync in an Android or iOS application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the <a href="http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html">Developer Guide for Android</a> and the <a href="http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html">Developer Guide for iOS</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [bulkPublish](#bulkPublish)
* [deleteDataset](#deleteDataset)
* [describeDataset](#describeDataset)
* [describeIdentityPoolUsage](#describeIdentityPoolUsage)
* [describeIdentityUsage](#describeIdentityUsage)
* [getBulkPublishDetails](#getBulkPublishDetails)
* [getCognitoEvents](#getCognitoEvents)
* [getIdentityPoolConfiguration](#getIdentityPoolConfiguration)
* [listDatasets](#listDatasets)
* [ListDatasetsOptions](#ListDatasetsOptions)
* [listIdentityPoolUsage](#listIdentityPoolUsage)
* [ListIdentityPoolUsageOptions](#ListIdentityPoolUsageOptions)
* [listRecords](#listRecords)
* [ListRecordsOptions](#ListRecordsOptions)
* [registerDevice](#registerDevice)
* [setCognitoEvents](#setCognitoEvents)
* [setIdentityPoolConfiguration](#setIdentityPoolConfiguration)
* [SetIdentityPoolConfigurationOptions](#SetIdentityPoolConfigurationOptions)
* [subscribeToDataset](#subscribeToDataset)
* [unsubscribeFromDataset](#unsubscribeFromDataset)
* [updateRecords](#updateRecords)
* [UpdateRecordsOptions](#UpdateRecordsOptions)


@docs bulkPublish,deleteDataset,describeDataset,describeIdentityPoolUsage,describeIdentityUsage,getBulkPublishDetails,getCognitoEvents,getIdentityPoolConfiguration,listDatasets,ListDatasetsOptions,listIdentityPoolUsage,ListIdentityPoolUsageOptions,listRecords,ListRecordsOptions,registerDevice,setCognitoEvents,setIdentityPoolConfiguration,SetIdentityPoolConfigurationOptions,subscribeToDataset,unsubscribeFromDataset,updateRecords,UpdateRecordsOptions

## Responses

* [BulkPublishResponse](#BulkPublishResponse)
* [DeleteDatasetResponse](#DeleteDatasetResponse)
* [DescribeDatasetResponse](#DescribeDatasetResponse)
* [DescribeIdentityPoolUsageResponse](#DescribeIdentityPoolUsageResponse)
* [DescribeIdentityUsageResponse](#DescribeIdentityUsageResponse)
* [GetBulkPublishDetailsResponse](#GetBulkPublishDetailsResponse)
* [GetCognitoEventsResponse](#GetCognitoEventsResponse)
* [GetIdentityPoolConfigurationResponse](#GetIdentityPoolConfigurationResponse)
* [ListDatasetsResponse](#ListDatasetsResponse)
* [ListIdentityPoolUsageResponse](#ListIdentityPoolUsageResponse)
* [ListRecordsResponse](#ListRecordsResponse)
* [RegisterDeviceResponse](#RegisterDeviceResponse)
* [SetIdentityPoolConfigurationResponse](#SetIdentityPoolConfigurationResponse)
* [SubscribeToDatasetResponse](#SubscribeToDatasetResponse)
* [UnsubscribeFromDatasetResponse](#UnsubscribeFromDatasetResponse)
* [UpdateRecordsResponse](#UpdateRecordsResponse)


@docs BulkPublishResponse,DeleteDatasetResponse,DescribeDatasetResponse,DescribeIdentityPoolUsageResponse,DescribeIdentityUsageResponse,GetBulkPublishDetailsResponse,GetCognitoEventsResponse,GetIdentityPoolConfigurationResponse,ListDatasetsResponse,ListIdentityPoolUsageResponse,ListRecordsResponse,RegisterDeviceResponse,SetIdentityPoolConfigurationResponse,SubscribeToDatasetResponse,UnsubscribeFromDatasetResponse,UpdateRecordsResponse

## Records

* [CognitoStreams](#CognitoStreams)
* [Dataset](#Dataset)
* [IdentityPoolUsage](#IdentityPoolUsage)
* [IdentityUsage](#IdentityUsage)
* [PushSync](#PushSync)
* [Record](#Record)
* [RecordPatch](#RecordPatch)


@docs CognitoStreams,Dataset,IdentityPoolUsage,IdentityUsage,PushSync,Record,RecordPatch

## Unions

* [BulkPublishStatus](#BulkPublishStatus)
* [Operation](#Operation)
* [Platform](#Platform)
* [StreamingStatus](#StreamingStatus)


@docs BulkPublishStatus,Operation,Platform,StreamingStatus

## Exceptions

* [AlreadyStreamedException](#AlreadyStreamedException)
* [ConcurrentModificationException](#ConcurrentModificationException)
* [DuplicateRequestException](#DuplicateRequestException)
* [InternalErrorException](#InternalErrorException)
* [InvalidConfigurationException](#InvalidConfigurationException)
* [InvalidLambdaFunctionOutputException](#InvalidLambdaFunctionOutputException)
* [InvalidParameterException](#InvalidParameterException)
* [LambdaThrottledException](#LambdaThrottledException)
* [LimitExceededException](#LimitExceededException)
* [NotAuthorizedException](#NotAuthorizedException)
* [ResourceConflictException](#ResourceConflictException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [TooManyRequestsException](#TooManyRequestsException)


@docs AlreadyStreamedException,ConcurrentModificationException,DuplicateRequestException,InternalErrorException,InvalidConfigurationException,InvalidLambdaFunctionOutputException,InvalidParameterException,LambdaThrottledException,LimitExceededException,NotAuthorizedException,ResourceConflictException,ResourceNotFoundException,TooManyRequestsException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "cognito-sync"
        "2014-06-30"
        "1.1"
        "AWSCOGNITO-SYNC_20140630."
        "cognito-sync.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
bulkPublish :
    String
    -> AWS.Request BulkPublishResponse
bulkPublish identityPoolId =
    AWS.Http.unsignedRequest
        "BulkPublish"
        "POST"
        ("/identitypools/" ++ identityPoolId ++ "/bulkpublish")
        (AWS.Http.JsonBody
            JE.null
        )
        bulkPublishResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`
* `datasetName` __:__ `String`


-}
deleteDataset :
    String
    -> String
    -> String
    -> AWS.Request DeleteDatasetResponse
deleteDataset identityPoolId identityId datasetName =
    AWS.Http.unsignedRequest
        "DeleteDataset"
        "DELETE"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "/datasets/" ++ datasetName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDatasetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`
* `datasetName` __:__ `String`


-}
describeDataset :
    String
    -> String
    -> String
    -> AWS.Request DescribeDatasetResponse
describeDataset identityPoolId identityId datasetName =
    AWS.Http.unsignedRequest
        "DescribeDataset"
        "GET"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "/datasets/" ++ datasetName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeDatasetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets usage details (for example, data storage) about a particular identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
describeIdentityPoolUsage :
    String
    -> AWS.Request DescribeIdentityPoolUsageResponse
describeIdentityPoolUsage identityPoolId =
    AWS.Http.unsignedRequest
        "DescribeIdentityPoolUsage"
        "GET"
        ("/identitypools/" ++ identityPoolId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeIdentityPoolUsageResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets usage information for an identity, including number of datasets and data usage.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`


-}
describeIdentityUsage :
    String
    -> String
    -> AWS.Request DescribeIdentityUsageResponse
describeIdentityUsage identityPoolId identityId =
    AWS.Http.unsignedRequest
        "DescribeIdentityUsage"
        "GET"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeIdentityUsageResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Get the status of the last BulkPublish operation for an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
getBulkPublishDetails :
    String
    -> AWS.Request GetBulkPublishDetailsResponse
getBulkPublishDetails identityPoolId =
    AWS.Http.unsignedRequest
        "GetBulkPublishDetails"
        "POST"
        ("/identitypools/" ++ identityPoolId ++ "/getBulkPublishDetails")
        (AWS.Http.JsonBody
            JE.null
        )
        getBulkPublishDetailsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the events and the corresponding Lambda functions associated with an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
getCognitoEvents :
    String
    -> AWS.Request GetCognitoEventsResponse
getCognitoEvents identityPoolId =
    AWS.Http.unsignedRequest
        "GetCognitoEvents"
        "GET"
        ("/identitypools/" ++ identityPoolId ++ "/events")
        (AWS.Http.QueryParams
            [
            ]
        )
        getCognitoEventsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the configuration settings of an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
getIdentityPoolConfiguration :
    String
    -> AWS.Request GetIdentityPoolConfigurationResponse
getIdentityPoolConfiguration identityPoolId =
    AWS.Http.unsignedRequest
        "GetIdentityPoolConfiguration"
        "GET"
        ("/identitypools/" ++ identityPoolId ++ "/configuration")
        (AWS.Http.QueryParams
            [
            ]
        )
        getIdentityPoolConfigurationResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`


-}
listDatasets :
    String
    -> String
    -> (ListDatasetsOptions -> ListDatasetsOptions)
    -> AWS.Request ListDatasetsResponse
listDatasets identityPoolId identityId setOptions =
  let
    options = setOptions (ListDatasetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDatasets"
        "GET"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "/datasets")
        (AWS.Http.QueryParams
            [
            ]
        )
        listDatasetsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDatasets request
-}
type alias ListDatasetsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Gets a list of identity pools registered with Cognito.</p> <p>ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__



-}
listIdentityPoolUsage :
    (ListIdentityPoolUsageOptions -> ListIdentityPoolUsageOptions)
    -> AWS.Request ListIdentityPoolUsageResponse
listIdentityPoolUsage setOptions =
  let
    options = setOptions (ListIdentityPoolUsageOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListIdentityPoolUsage"
        "GET"
        "/identitypools"
        (AWS.Http.QueryParams
            [
            ]
        )
        listIdentityPoolUsageResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listIdentityPoolUsage request
-}
type alias ListIdentityPoolUsageOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`
* `datasetName` __:__ `String`


-}
listRecords :
    String
    -> String
    -> String
    -> (ListRecordsOptions -> ListRecordsOptions)
    -> AWS.Request ListRecordsResponse
listRecords identityPoolId identityId datasetName setOptions =
  let
    options = setOptions (ListRecordsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRecords"
        "GET"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "/datasets/" ++ datasetName ++ "/records")
        (AWS.Http.QueryParams
            [
            ]
        )
        listRecordsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRecords request
-}
type alias ListRecordsOptions =
    { lastSyncCount : Maybe Int
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , syncSessionToken : Maybe String
    }



{-| <p>Registers a device to receive push sync notifications.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`
* `platform` __:__ `Platform`
* `token` __:__ `String`


-}
registerDevice :
    String
    -> String
    -> Platform
    -> String
    -> AWS.Request RegisterDeviceResponse
registerDevice identityPoolId identityId platform token =
    AWS.Http.unsignedRequest
        "RegisterDevice"
        "POST"
        ("/identitypools/" ++ identityPoolId ++ "/identity/" ++ identityId ++ "/device")
        (AWS.Http.JsonBody
            JE.null
        )
        registerDeviceResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `events` __:__ `(Dict String String)`


-}
setCognitoEvents :
    String
    -> (Dict String String)
    -> AWS.Request ()
setCognitoEvents identityPoolId events =
    AWS.Http.unsignedRequest
        "SetCognitoEvents"
        "POST"
        ("/identitypools/" ++ identityPoolId ++ "/events")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Sets the necessary configuration for push sync.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`


-}
setIdentityPoolConfiguration :
    String
    -> (SetIdentityPoolConfigurationOptions -> SetIdentityPoolConfigurationOptions)
    -> AWS.Request SetIdentityPoolConfigurationResponse
setIdentityPoolConfiguration identityPoolId setOptions =
  let
    options = setOptions (SetIdentityPoolConfigurationOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SetIdentityPoolConfiguration"
        "POST"
        ("/identitypools/" ++ identityPoolId ++ "/configuration")
        (AWS.Http.JsonBody
            JE.null
        )
        setIdentityPoolConfigurationResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a setIdentityPoolConfiguration request
-}
type alias SetIdentityPoolConfigurationOptions =
    { pushSync : Maybe PushSync
    , cognitoStreams : Maybe CognitoStreams
    }



{-| <p>Subscribes to receive notifications when a dataset is modified by another device.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`
* `datasetName` __:__ `String`
* `deviceId` __:__ `String`


-}
subscribeToDataset :
    String
    -> String
    -> String
    -> String
    -> AWS.Request SubscribeToDatasetResponse
subscribeToDataset identityPoolId identityId datasetName deviceId =
    AWS.Http.unsignedRequest
        "SubscribeToDataset"
        "POST"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "/datasets/" ++ datasetName ++ "/subscriptions/" ++ deviceId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        subscribeToDatasetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Unsubscribes from receiving notifications when a dataset is modified by another device.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`
* `datasetName` __:__ `String`
* `deviceId` __:__ `String`


-}
unsubscribeFromDataset :
    String
    -> String
    -> String
    -> String
    -> AWS.Request UnsubscribeFromDatasetResponse
unsubscribeFromDataset identityPoolId identityId datasetName deviceId =
    AWS.Http.unsignedRequest
        "UnsubscribeFromDataset"
        "DELETE"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "/datasets/" ++ datasetName ++ "/subscriptions/" ++ deviceId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        unsubscribeFromDatasetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Posts updates to records and adds and deletes records for a dataset and user.</p> <p>The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.</p> <p>For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>

__Required Parameters__

* `identityPoolId` __:__ `String`
* `identityId` __:__ `String`
* `datasetName` __:__ `String`
* `syncSessionToken` __:__ `String`


-}
updateRecords :
    String
    -> String
    -> String
    -> String
    -> (UpdateRecordsOptions -> UpdateRecordsOptions)
    -> AWS.Request UpdateRecordsResponse
updateRecords identityPoolId identityId datasetName syncSessionToken setOptions =
  let
    options = setOptions (UpdateRecordsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateRecords"
        "POST"
        ("/identitypools/" ++ identityPoolId ++ "/identities/" ++ identityId ++ "/datasets/" ++ datasetName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        updateRecordsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateRecords request
-}
type alias UpdateRecordsOptions =
    { deviceId : Maybe String
    , recordPatches : Maybe (List RecordPatch)
    , clientContext : Maybe String
    }




{-| An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
-}
type alias AlreadyStreamedException =
    { message : String
    }



alreadyStreamedExceptionDecoder : JD.Decoder AlreadyStreamedException
alreadyStreamedExceptionDecoder =
    JDP.decode AlreadyStreamedException
        |> JDP.required "message" JD.string




{-| Type of HTTP response from bulkPublish
-}
type alias BulkPublishResponse =
    { identityPoolId : Maybe String
    }



bulkPublishResponseDecoder : JD.Decoder BulkPublishResponse
bulkPublishResponseDecoder =
    JDP.decode BulkPublishResponse
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing




{-| One of

* `BulkPublishStatus_NOT_STARTED`
* `BulkPublishStatus_IN_PROGRESS`
* `BulkPublishStatus_FAILED`
* `BulkPublishStatus_SUCCEEDED`

-}
type BulkPublishStatus
    = BulkPublishStatus_NOT_STARTED
    | BulkPublishStatus_IN_PROGRESS
    | BulkPublishStatus_FAILED
    | BulkPublishStatus_SUCCEEDED



bulkPublishStatusDecoder : JD.Decoder BulkPublishStatus
bulkPublishStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NOT_STARTED" ->
                        JD.succeed BulkPublishStatus_NOT_STARTED

                    "IN_PROGRESS" ->
                        JD.succeed BulkPublishStatus_IN_PROGRESS

                    "FAILED" ->
                        JD.succeed BulkPublishStatus_FAILED

                    "SUCCEEDED" ->
                        JD.succeed BulkPublishStatus_SUCCEEDED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Configuration options for configure Cognito streams.
-}
type alias CognitoStreams =
    { streamName : Maybe String
    , roleArn : Maybe String
    , streamingStatus : Maybe StreamingStatus
    }



cognitoStreamsDecoder : JD.Decoder CognitoStreams
cognitoStreamsDecoder =
    JDP.decode CognitoStreams
        |> JDP.optional "streamName" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "streamingStatus" (JD.nullable streamingStatusDecoder) Nothing




{-| <p>Thrown if there are parallel requests to modify a resource.</p>
-}
type alias ConcurrentModificationException =
    { message : String
    }



concurrentModificationExceptionDecoder : JD.Decoder ConcurrentModificationException
concurrentModificationExceptionDecoder =
    JDP.decode ConcurrentModificationException
        |> JDP.required "message" JD.string




{-| A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.
-}
type alias Dataset =
    { identityId : Maybe String
    , datasetName : Maybe String
    , creationDate : Maybe Date
    , lastModifiedDate : Maybe Date
    , lastModifiedBy : Maybe String
    , dataStorage : Maybe Int
    , numRecords : Maybe Int
    }



datasetDecoder : JD.Decoder Dataset
datasetDecoder =
    JDP.decode Dataset
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "datasetName" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModifiedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "dataStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "numRecords" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from deleteDataset
-}
type alias DeleteDatasetResponse =
    { dataset : Maybe Dataset
    }



deleteDatasetResponseDecoder : JD.Decoder DeleteDatasetResponse
deleteDatasetResponseDecoder =
    JDP.decode DeleteDatasetResponse
        |> JDP.optional "dataset" (JD.nullable datasetDecoder) Nothing




{-| Type of HTTP response from describeDataset
-}
type alias DescribeDatasetResponse =
    { dataset : Maybe Dataset
    }



describeDatasetResponseDecoder : JD.Decoder DescribeDatasetResponse
describeDatasetResponseDecoder =
    JDP.decode DescribeDatasetResponse
        |> JDP.optional "dataset" (JD.nullable datasetDecoder) Nothing




{-| Type of HTTP response from describeIdentityPoolUsage
-}
type alias DescribeIdentityPoolUsageResponse =
    { identityPoolUsage : Maybe IdentityPoolUsage
    }



describeIdentityPoolUsageResponseDecoder : JD.Decoder DescribeIdentityPoolUsageResponse
describeIdentityPoolUsageResponseDecoder =
    JDP.decode DescribeIdentityPoolUsageResponse
        |> JDP.optional "identityPoolUsage" (JD.nullable identityPoolUsageDecoder) Nothing




{-| Type of HTTP response from describeIdentityUsage
-}
type alias DescribeIdentityUsageResponse =
    { identityUsage : Maybe IdentityUsage
    }



describeIdentityUsageResponseDecoder : JD.Decoder DescribeIdentityUsageResponse
describeIdentityUsageResponseDecoder =
    JDP.decode DescribeIdentityUsageResponse
        |> JDP.optional "identityUsage" (JD.nullable identityUsageDecoder) Nothing




{-| An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
-}
type alias DuplicateRequestException =
    { message : String
    }



duplicateRequestExceptionDecoder : JD.Decoder DuplicateRequestException
duplicateRequestExceptionDecoder =
    JDP.decode DuplicateRequestException
        |> JDP.required "message" JD.string




{-| Type of HTTP response from getBulkPublishDetails
-}
type alias GetBulkPublishDetailsResponse =
    { identityPoolId : Maybe String
    , bulkPublishStartTime : Maybe Date
    , bulkPublishCompleteTime : Maybe Date
    , bulkPublishStatus : Maybe BulkPublishStatus
    , failureMessage : Maybe String
    }



getBulkPublishDetailsResponseDecoder : JD.Decoder GetBulkPublishDetailsResponse
getBulkPublishDetailsResponseDecoder =
    JDP.decode GetBulkPublishDetailsResponse
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "bulkPublishStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "bulkPublishCompleteTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "bulkPublishStatus" (JD.nullable bulkPublishStatusDecoder) Nothing
        |> JDP.optional "failureMessage" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getCognitoEvents
-}
type alias GetCognitoEventsResponse =
    { events : Maybe (Dict String String)
    }



getCognitoEventsResponseDecoder : JD.Decoder GetCognitoEventsResponse
getCognitoEventsResponseDecoder =
    JDP.decode GetCognitoEventsResponse
        |> JDP.optional "events" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from getIdentityPoolConfiguration
-}
type alias GetIdentityPoolConfigurationResponse =
    { identityPoolId : Maybe String
    , pushSync : Maybe PushSync
    , cognitoStreams : Maybe CognitoStreams
    }



getIdentityPoolConfigurationResponseDecoder : JD.Decoder GetIdentityPoolConfigurationResponse
getIdentityPoolConfigurationResponseDecoder =
    JDP.decode GetIdentityPoolConfigurationResponse
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "pushSync" (JD.nullable pushSyncDecoder) Nothing
        |> JDP.optional "cognitoStreams" (JD.nullable cognitoStreamsDecoder) Nothing




{-| Usage information for the identity pool.
-}
type alias IdentityPoolUsage =
    { identityPoolId : Maybe String
    , syncSessionsCount : Maybe Int
    , dataStorage : Maybe Int
    , lastModifiedDate : Maybe Date
    }



identityPoolUsageDecoder : JD.Decoder IdentityPoolUsage
identityPoolUsageDecoder =
    JDP.decode IdentityPoolUsage
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "syncSessionsCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "dataStorage" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing




{-| Usage information for the identity.
-}
type alias IdentityUsage =
    { identityId : Maybe String
    , identityPoolId : Maybe String
    , lastModifiedDate : Maybe Date
    , datasetCount : Maybe Int
    , dataStorage : Maybe Int
    }



identityUsageDecoder : JD.Decoder IdentityUsage
identityUsageDecoder =
    JDP.decode IdentityUsage
        |> JDP.optional "identityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "datasetCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "dataStorage" (JD.nullable JD.int) Nothing




{-| Indicates an internal service error.
-}
type alias InternalErrorException =
    { message : String
    }



internalErrorExceptionDecoder : JD.Decoder InternalErrorException
internalErrorExceptionDecoder =
    JDP.decode InternalErrorException
        |> JDP.required "message" JD.string




{-| undefined
-}
type alias InvalidConfigurationException =
    { message : String
    }



invalidConfigurationExceptionDecoder : JD.Decoder InvalidConfigurationException
invalidConfigurationExceptionDecoder =
    JDP.decode InvalidConfigurationException
        |> JDP.required "message" JD.string




{-| <p>The AWS Lambda function returned invalid output or an exception.</p>
-}
type alias InvalidLambdaFunctionOutputException =
    { message : String
    }



invalidLambdaFunctionOutputExceptionDecoder : JD.Decoder InvalidLambdaFunctionOutputException
invalidLambdaFunctionOutputExceptionDecoder =
    JDP.decode InvalidLambdaFunctionOutputException
        |> JDP.required "message" JD.string




{-| Thrown when a request parameter does not comply with the associated constraints.
-}
type alias InvalidParameterException =
    { message : String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.required "message" JD.string




{-| <p>AWS Lambda throttled your account, please contact AWS Support</p>
-}
type alias LambdaThrottledException =
    { message : String
    }



lambdaThrottledExceptionDecoder : JD.Decoder LambdaThrottledException
lambdaThrottledExceptionDecoder =
    JDP.decode LambdaThrottledException
        |> JDP.required "message" JD.string




{-| Thrown when the limit on the number of objects or operations has been exceeded.
-}
type alias LimitExceededException =
    { message : String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.required "message" JD.string




{-| Type of HTTP response from listDatasets
-}
type alias ListDatasetsResponse =
    { datasets : Maybe (List Dataset)
    , count : Maybe Int
    , nextToken : Maybe String
    }



listDatasetsResponseDecoder : JD.Decoder ListDatasetsResponse
listDatasetsResponseDecoder =
    JDP.decode ListDatasetsResponse
        |> JDP.optional "datasets" (JD.nullable (JD.list datasetDecoder)) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listIdentityPoolUsage
-}
type alias ListIdentityPoolUsageResponse =
    { identityPoolUsages : Maybe (List IdentityPoolUsage)
    , maxResults : Maybe Int
    , count : Maybe Int
    , nextToken : Maybe String
    }



listIdentityPoolUsageResponseDecoder : JD.Decoder ListIdentityPoolUsageResponse
listIdentityPoolUsageResponseDecoder =
    JDP.decode ListIdentityPoolUsageResponse
        |> JDP.optional "identityPoolUsages" (JD.nullable (JD.list identityPoolUsageDecoder)) Nothing
        |> JDP.optional "maxResults" (JD.nullable JD.int) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRecords
-}
type alias ListRecordsResponse =
    { records : Maybe (List Record)
    , nextToken : Maybe String
    , count : Maybe Int
    , datasetSyncCount : Maybe Int
    , lastModifiedBy : Maybe String
    , mergedDatasetNames : Maybe (List String)
    , datasetExists : Maybe Bool
    , datasetDeletedAfterRequestedSyncCount : Maybe Bool
    , syncSessionToken : Maybe String
    }



listRecordsResponseDecoder : JD.Decoder ListRecordsResponse
listRecordsResponseDecoder =
    JDP.decode ListRecordsResponse
        |> JDP.optional "records" (JD.nullable (JD.list recordDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "count" (JD.nullable JD.int) Nothing
        |> JDP.optional "datasetSyncCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastModifiedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "mergedDatasetNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "datasetExists" (JD.nullable JD.bool) Nothing
        |> JDP.optional "datasetDeletedAfterRequestedSyncCount" (JD.nullable JD.bool) Nothing
        |> JDP.optional "syncSessionToken" (JD.nullable JD.string) Nothing




{-| Thrown when a user is not authorized to access the requested resource.
-}
type alias NotAuthorizedException =
    { message : String
    }



notAuthorizedExceptionDecoder : JD.Decoder NotAuthorizedException
notAuthorizedExceptionDecoder =
    JDP.decode NotAuthorizedException
        |> JDP.required "message" JD.string




{-| One of

* `Operation_replace`
* `Operation_remove`

-}
type Operation
    = Operation_replace
    | Operation_remove



operationDecoder : JD.Decoder Operation
operationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "replace" ->
                        JD.succeed Operation_replace

                    "remove" ->
                        JD.succeed Operation_remove


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `Platform_APNS`
* `Platform_APNS_SANDBOX`
* `Platform_GCM`
* `Platform_ADM`

-}
type Platform
    = Platform_APNS
    | Platform_APNS_SANDBOX
    | Platform_GCM
    | Platform_ADM



platformDecoder : JD.Decoder Platform
platformDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "APNS" ->
                        JD.succeed Platform_APNS

                    "APNS_SANDBOX" ->
                        JD.succeed Platform_APNS_SANDBOX

                    "GCM" ->
                        JD.succeed Platform_GCM

                    "ADM" ->
                        JD.succeed Platform_ADM


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Configuration options to be applied to the identity pool.</p>
-}
type alias PushSync =
    { applicationArns : Maybe (List String)
    , roleArn : Maybe String
    }



pushSyncDecoder : JD.Decoder PushSync
pushSyncDecoder =
    JDP.decode PushSync
        |> JDP.optional "applicationArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing




{-| The basic data structure of a dataset.
-}
type alias Record =
    { key : Maybe String
    , value : Maybe String
    , syncCount : Maybe Int
    , lastModifiedDate : Maybe Date
    , lastModifiedBy : Maybe String
    , deviceLastModifiedDate : Maybe Date
    }



recordDecoder : JD.Decoder Record
recordDecoder =
    JDP.decode Record
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "syncCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModifiedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceLastModifiedDate" (JD.nullable JDX.date) Nothing




{-| An update operation for a record.
-}
type alias RecordPatch =
    { op : Operation
    , key : String
    , value : Maybe String
    , syncCount : Int
    , deviceLastModifiedDate : Maybe Date
    }



recordPatchDecoder : JD.Decoder RecordPatch
recordPatchDecoder =
    JDP.decode RecordPatch
        |> JDP.required "op" operationDecoder
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.required "syncCount" JD.int
        |> JDP.optional "deviceLastModifiedDate" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from registerDevice
-}
type alias RegisterDeviceResponse =
    { deviceId : Maybe String
    }



registerDeviceResponseDecoder : JD.Decoder RegisterDeviceResponse
registerDeviceResponseDecoder =
    JDP.decode RegisterDeviceResponse
        |> JDP.optional "deviceId" (JD.nullable JD.string) Nothing




{-| Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.
-}
type alias ResourceConflictException =
    { message : String
    }



resourceConflictExceptionDecoder : JD.Decoder ResourceConflictException
resourceConflictExceptionDecoder =
    JDP.decode ResourceConflictException
        |> JDP.required "message" JD.string




{-| Thrown if the resource doesn't exist.
-}
type alias ResourceNotFoundException =
    { message : String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.required "message" JD.string




{-| Type of HTTP response from setIdentityPoolConfiguration
-}
type alias SetIdentityPoolConfigurationResponse =
    { identityPoolId : Maybe String
    , pushSync : Maybe PushSync
    , cognitoStreams : Maybe CognitoStreams
    }



setIdentityPoolConfigurationResponseDecoder : JD.Decoder SetIdentityPoolConfigurationResponse
setIdentityPoolConfigurationResponseDecoder =
    JDP.decode SetIdentityPoolConfigurationResponse
        |> JDP.optional "identityPoolId" (JD.nullable JD.string) Nothing
        |> JDP.optional "pushSync" (JD.nullable pushSyncDecoder) Nothing
        |> JDP.optional "cognitoStreams" (JD.nullable cognitoStreamsDecoder) Nothing




{-| One of

* `StreamingStatus_ENABLED`
* `StreamingStatus_DISABLED`

-}
type StreamingStatus
    = StreamingStatus_ENABLED
    | StreamingStatus_DISABLED



streamingStatusDecoder : JD.Decoder StreamingStatus
streamingStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed StreamingStatus_ENABLED

                    "DISABLED" ->
                        JD.succeed StreamingStatus_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from subscribeToDataset
-}
type alias SubscribeToDatasetResponse =
    { 
    }



subscribeToDatasetResponseDecoder : JD.Decoder SubscribeToDatasetResponse
subscribeToDatasetResponseDecoder =
    JDP.decode SubscribeToDatasetResponse



{-| Thrown if the request is throttled.
-}
type alias TooManyRequestsException =
    { message : String
    }



tooManyRequestsExceptionDecoder : JD.Decoder TooManyRequestsException
tooManyRequestsExceptionDecoder =
    JDP.decode TooManyRequestsException
        |> JDP.required "message" JD.string




{-| Type of HTTP response from unsubscribeFromDataset
-}
type alias UnsubscribeFromDatasetResponse =
    { 
    }



unsubscribeFromDatasetResponseDecoder : JD.Decoder UnsubscribeFromDatasetResponse
unsubscribeFromDatasetResponseDecoder =
    JDP.decode UnsubscribeFromDatasetResponse



{-| Type of HTTP response from updateRecords
-}
type alias UpdateRecordsResponse =
    { records : Maybe (List Record)
    }



updateRecordsResponseDecoder : JD.Decoder UpdateRecordsResponse
updateRecordsResponseDecoder =
    JDP.decode UpdateRecordsResponse
        |> JDP.optional "records" (JD.nullable (JD.list recordDecoder)) Nothing




