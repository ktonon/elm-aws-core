module AWS.Services.CloudTrail
    exposing
        ( config
        , addTags
        , AddTagsOptions
        , createTrail
        , CreateTrailOptions
        , deleteTrail
        , describeTrails
        , DescribeTrailsOptions
        , getEventSelectors
        , GetEventSelectorsOptions
        , getTrailStatus
        , listPublicKeys
        , ListPublicKeysOptions
        , listTags
        , ListTagsOptions
        , lookupEvents
        , LookupEventsOptions
        , putEventSelectors
        , PutEventSelectorsOptions
        , removeTags
        , RemoveTagsOptions
        , startLogging
        , stopLogging
        , updateTrail
        , UpdateTrailOptions
        , AddTagsResponse
        , CloudTrailARNInvalidException
        , CloudWatchLogsDeliveryUnavailableException
        , CreateTrailResponse
        , DataResource
        , DeleteTrailResponse
        , DescribeTrailsResponse
        , Event
        , EventSelector
        , GetEventSelectorsResponse
        , GetTrailStatusResponse
        , InsufficientEncryptionPolicyException
        , InsufficientS3BucketPolicyException
        , InsufficientSnsTopicPolicyException
        , InvalidCloudWatchLogsLogGroupArnException
        , InvalidCloudWatchLogsRoleArnException
        , InvalidEventSelectorsException
        , InvalidHomeRegionException
        , InvalidKmsKeyIdException
        , InvalidLookupAttributesException
        , InvalidMaxResultsException
        , InvalidNextTokenException
        , InvalidParameterCombinationException
        , InvalidS3BucketNameException
        , InvalidS3PrefixException
        , InvalidSnsTopicNameException
        , InvalidTagParameterException
        , InvalidTimeRangeException
        , InvalidTokenException
        , InvalidTrailNameException
        , KmsException
        , KmsKeyDisabledException
        , KmsKeyNotFoundException
        , ListPublicKeysResponse
        , ListTagsResponse
        , LookupAttribute
        , LookupAttributeKey(..)
        , LookupEventsResponse
        , MaximumNumberOfTrailsExceededException
        , OperationNotPermittedException
        , PublicKey
        , PutEventSelectorsResponse
        , ReadWriteType(..)
        , RemoveTagsResponse
        , Resource
        , ResourceNotFoundException
        , ResourceTag
        , ResourceTypeNotSupportedException
        , S3BucketDoesNotExistException
        , StartLoggingResponse
        , StopLoggingResponse
        , Tag
        , TagsLimitExceededException
        , Trail
        , TrailAlreadyExistsException
        , TrailNotFoundException
        , TrailNotProvidedException
        , UnsupportedOperationException
        , UpdateTrailResponse
        )

{-| <fullname>AWS CloudTrail</fullname> <p>This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.</p> <p>CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.</p> <note> <p>As an alternative to the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWSCloudTrail. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services page</a>.</p> </note> <p>See the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html">AWS CloudTrail User Guide</a> for information about the data that is included with each AWS API call listed in the log files.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTags](#addTags)
* [AddTagsOptions](#AddTagsOptions)
* [createTrail](#createTrail)
* [CreateTrailOptions](#CreateTrailOptions)
* [deleteTrail](#deleteTrail)
* [describeTrails](#describeTrails)
* [DescribeTrailsOptions](#DescribeTrailsOptions)
* [getEventSelectors](#getEventSelectors)
* [GetEventSelectorsOptions](#GetEventSelectorsOptions)
* [getTrailStatus](#getTrailStatus)
* [listPublicKeys](#listPublicKeys)
* [ListPublicKeysOptions](#ListPublicKeysOptions)
* [listTags](#listTags)
* [ListTagsOptions](#ListTagsOptions)
* [lookupEvents](#lookupEvents)
* [LookupEventsOptions](#LookupEventsOptions)
* [putEventSelectors](#putEventSelectors)
* [PutEventSelectorsOptions](#PutEventSelectorsOptions)
* [removeTags](#removeTags)
* [RemoveTagsOptions](#RemoveTagsOptions)
* [startLogging](#startLogging)
* [stopLogging](#stopLogging)
* [updateTrail](#updateTrail)
* [UpdateTrailOptions](#UpdateTrailOptions)


@docs addTags,AddTagsOptions,createTrail,CreateTrailOptions,deleteTrail,describeTrails,DescribeTrailsOptions,getEventSelectors,GetEventSelectorsOptions,getTrailStatus,listPublicKeys,ListPublicKeysOptions,listTags,ListTagsOptions,lookupEvents,LookupEventsOptions,putEventSelectors,PutEventSelectorsOptions,removeTags,RemoveTagsOptions,startLogging,stopLogging,updateTrail,UpdateTrailOptions

## Responses

* [AddTagsResponse](#AddTagsResponse)
* [CreateTrailResponse](#CreateTrailResponse)
* [DeleteTrailResponse](#DeleteTrailResponse)
* [DescribeTrailsResponse](#DescribeTrailsResponse)
* [GetEventSelectorsResponse](#GetEventSelectorsResponse)
* [GetTrailStatusResponse](#GetTrailStatusResponse)
* [ListPublicKeysResponse](#ListPublicKeysResponse)
* [ListTagsResponse](#ListTagsResponse)
* [LookupEventsResponse](#LookupEventsResponse)
* [PutEventSelectorsResponse](#PutEventSelectorsResponse)
* [RemoveTagsResponse](#RemoveTagsResponse)
* [StartLoggingResponse](#StartLoggingResponse)
* [StopLoggingResponse](#StopLoggingResponse)
* [UpdateTrailResponse](#UpdateTrailResponse)


@docs AddTagsResponse,CreateTrailResponse,DeleteTrailResponse,DescribeTrailsResponse,GetEventSelectorsResponse,GetTrailStatusResponse,ListPublicKeysResponse,ListTagsResponse,LookupEventsResponse,PutEventSelectorsResponse,RemoveTagsResponse,StartLoggingResponse,StopLoggingResponse,UpdateTrailResponse

## Records

* [DataResource](#DataResource)
* [Event](#Event)
* [EventSelector](#EventSelector)
* [LookupAttribute](#LookupAttribute)
* [PublicKey](#PublicKey)
* [Resource](#Resource)
* [ResourceTag](#ResourceTag)
* [Tag](#Tag)
* [Trail](#Trail)


@docs DataResource,Event,EventSelector,LookupAttribute,PublicKey,Resource,ResourceTag,Tag,Trail

## Unions

* [LookupAttributeKey](#LookupAttributeKey)
* [ReadWriteType](#ReadWriteType)


@docs LookupAttributeKey,ReadWriteType

## Exceptions

* [CloudTrailARNInvalidException](#CloudTrailARNInvalidException)
* [CloudWatchLogsDeliveryUnavailableException](#CloudWatchLogsDeliveryUnavailableException)
* [InsufficientEncryptionPolicyException](#InsufficientEncryptionPolicyException)
* [InsufficientS3BucketPolicyException](#InsufficientS3BucketPolicyException)
* [InsufficientSnsTopicPolicyException](#InsufficientSnsTopicPolicyException)
* [InvalidCloudWatchLogsLogGroupArnException](#InvalidCloudWatchLogsLogGroupArnException)
* [InvalidCloudWatchLogsRoleArnException](#InvalidCloudWatchLogsRoleArnException)
* [InvalidEventSelectorsException](#InvalidEventSelectorsException)
* [InvalidHomeRegionException](#InvalidHomeRegionException)
* [InvalidKmsKeyIdException](#InvalidKmsKeyIdException)
* [InvalidLookupAttributesException](#InvalidLookupAttributesException)
* [InvalidMaxResultsException](#InvalidMaxResultsException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidParameterCombinationException](#InvalidParameterCombinationException)
* [InvalidS3BucketNameException](#InvalidS3BucketNameException)
* [InvalidS3PrefixException](#InvalidS3PrefixException)
* [InvalidSnsTopicNameException](#InvalidSnsTopicNameException)
* [InvalidTagParameterException](#InvalidTagParameterException)
* [InvalidTimeRangeException](#InvalidTimeRangeException)
* [InvalidTokenException](#InvalidTokenException)
* [InvalidTrailNameException](#InvalidTrailNameException)
* [KmsException](#KmsException)
* [KmsKeyDisabledException](#KmsKeyDisabledException)
* [KmsKeyNotFoundException](#KmsKeyNotFoundException)
* [MaximumNumberOfTrailsExceededException](#MaximumNumberOfTrailsExceededException)
* [OperationNotPermittedException](#OperationNotPermittedException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ResourceTypeNotSupportedException](#ResourceTypeNotSupportedException)
* [S3BucketDoesNotExistException](#S3BucketDoesNotExistException)
* [TagsLimitExceededException](#TagsLimitExceededException)
* [TrailAlreadyExistsException](#TrailAlreadyExistsException)
* [TrailNotFoundException](#TrailNotFoundException)
* [TrailNotProvidedException](#TrailNotProvidedException)
* [UnsupportedOperationException](#UnsupportedOperationException)


@docs CloudTrailARNInvalidException,CloudWatchLogsDeliveryUnavailableException,InsufficientEncryptionPolicyException,InsufficientS3BucketPolicyException,InsufficientSnsTopicPolicyException,InvalidCloudWatchLogsLogGroupArnException,InvalidCloudWatchLogsRoleArnException,InvalidEventSelectorsException,InvalidHomeRegionException,InvalidKmsKeyIdException,InvalidLookupAttributesException,InvalidMaxResultsException,InvalidNextTokenException,InvalidParameterCombinationException,InvalidS3BucketNameException,InvalidS3PrefixException,InvalidSnsTopicNameException,InvalidTagParameterException,InvalidTimeRangeException,InvalidTokenException,InvalidTrailNameException,KmsException,KmsKeyDisabledException,KmsKeyNotFoundException,MaximumNumberOfTrailsExceededException,OperationNotPermittedException,ResourceNotFoundException,ResourceTypeNotSupportedException,S3BucketDoesNotExistException,TagsLimitExceededException,TrailAlreadyExistsException,TrailNotFoundException,TrailNotProvidedException,UnsupportedOperationException

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
        "cloudtrail"
        "2013-11-01"
        "1.1"
        "AWSCLOUDTRAIL_20131101."
        "cloudtrail.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds one or more tags to a trail, up to a limit of 50. Tags must be unique per trail. Overwrites an existing tag's value when a new value is specified for an existing tag key. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all regions only from the region in which the trail was created (that is, from its home region).</p>

__Required Parameters__

* `resourceId` __:__ `String`


-}
addTags :
    String
    -> (AddTagsOptions -> AddTagsOptions)
    -> AWS.Request AddTagsResponse
addTags resourceId setOptions =
  let
    options = setOptions (AddTagsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AddTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        addTagsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a addTags request
-}
type alias AddTagsOptions =
    { tagsList : Maybe (List Tag)
    }



{-| <p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.</p>

__Required Parameters__

* `name` __:__ `String`
* `s3BucketName` __:__ `String`


-}
createTrail :
    String
    -> String
    -> (CreateTrailOptions -> CreateTrailOptions)
    -> AWS.Request CreateTrailResponse
createTrail name s3BucketName setOptions =
  let
    options = setOptions (CreateTrailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateTrail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createTrailResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createTrail request
-}
type alias CreateTrailOptions =
    { s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , enableLogFileValidation : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    }



{-| <p>Deletes a trail. This operation must be called from the region in which the trail was created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteTrail :
    String
    -> AWS.Request DeleteTrailResponse
deleteTrail name =
    AWS.Http.unsignedRequest
        "DeleteTrail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteTrailResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves settings for the trail associated with the current region for your account.</p>

__Required Parameters__



-}
describeTrails :
    (DescribeTrailsOptions -> DescribeTrailsOptions)
    -> AWS.Request DescribeTrailsResponse
describeTrails setOptions =
  let
    options = setOptions (DescribeTrailsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeTrails"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeTrailsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeTrails request
-}
type alias DescribeTrailsOptions =
    { trailNameList : Maybe (List String)
    , includeShadowTrails : Maybe Bool
    }



{-| <p>Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:</p> <ul> <li> <p>The S3 objects that you are logging for data events.</p> </li> <li> <p>If your event selector includes management events.</p> </li> <li> <p>If your event selector includes read-only events, write-only events, or all. </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-event-selectors-for-a-trail.html">Configuring Event Selectors for Trails</a> in the <i>AWS CloudTrail User Guide</i>.</p>

__Required Parameters__



-}
getEventSelectors :
    (GetEventSelectorsOptions -> GetEventSelectorsOptions)
    -> AWS.Request GetEventSelectorsResponse
getEventSelectors setOptions =
  let
    options = setOptions (GetEventSelectorsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetEventSelectors"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getEventSelectorsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getEventSelectors request
-}
type alias GetEventSelectorsOptions =
    { trailName : Maybe String
    }



{-| <p>Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.</p>

__Required Parameters__

* `name` __:__ `String`


-}
getTrailStatus :
    String
    -> AWS.Request GetTrailStatusResponse
getTrailStatus name =
    AWS.Http.unsignedRequest
        "GetTrailStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getTrailStatusResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.</p> <note> <p>CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key.</p> </note>

__Required Parameters__



-}
listPublicKeys :
    (ListPublicKeysOptions -> ListPublicKeysOptions)
    -> AWS.Request ListPublicKeysResponse
listPublicKeys setOptions =
  let
    options = setOptions (ListPublicKeysOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPublicKeys"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listPublicKeysResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPublicKeys request
-}
type alias ListPublicKeysOptions =
    { startTime : Maybe Date
    , endTime : Maybe Date
    , nextToken : Maybe String
    }



{-| <p>Lists the tags for the trail in the current region.</p>

__Required Parameters__

* `resourceIdList` __:__ `(List String)`


-}
listTags :
    (List String)
    -> (ListTagsOptions -> ListTagsOptions)
    -> AWS.Request ListTagsResponse
listTags resourceIdList setOptions =
  let
    options = setOptions (ListTagsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listTags request
-}
type alias ListTagsOptions =
    { nextToken : Maybe String
    }



{-| <p>Looks up API activity events captured by CloudTrail that create, update, or delete resources in your account. Events for a region can be looked up for the times in which you had CloudTrail turned on in that region during the last seven days. Lookup supports the following attributes:</p> <ul> <li> <p>Event ID</p> </li> <li> <p>Event name</p> </li> <li> <p>Resource name</p> </li> <li> <p>Resource type</p> </li> <li> <p>User name</p> </li> </ul> <p>All attributes are optional. The default number of results returned is 10, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.</p> <important> <p>The rate of lookup requests is limited to one per second per account. If this limit is exceeded, a throttling error occurs.</p> </important> <important> <p>Events that occurred during the selected time range will not be available for lookup if CloudTrail logging was not enabled when the events occurred.</p> </important>

__Required Parameters__



-}
lookupEvents :
    (LookupEventsOptions -> LookupEventsOptions)
    -> AWS.Request LookupEventsResponse
lookupEvents setOptions =
  let
    options = setOptions (LookupEventsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "LookupEvents"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        lookupEventsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a lookupEvents request
-}
type alias LookupEventsOptions =
    { lookupAttributes : Maybe (List LookupAttribute)
    , startTime : Maybe Date
    , endTime : Maybe Date
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Configures an event selector for your trail. Use event selectors to specify the type of events that you want your trail to log. When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify that you want write-only events.</p> </li> <li> <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API operations occur in your account.</p> </li> <li> <p>CloudTrail evaluates whether the events match your event selectors.</p> </li> <li> <p>The <code>RunInstances</code> is a write-only event and it matches your event selector. The trail logs the event.</p> </li> <li> <p>The <code>GetConsoleOutput</code> is a read-only event but it doesn't match your event selector. The trail doesn't log the event. </p> </li> </ol> <p>The <code>PutEventSelectors</code> operation must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p> <p>You can configure up to five event selectors for each trail. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create-event-selectors-for-a-trail.html">Configuring Event Selectors for Trails</a> in the <i>AWS CloudTrail User Guide</i>.</p>

__Required Parameters__



-}
putEventSelectors :
    (PutEventSelectorsOptions -> PutEventSelectorsOptions)
    -> AWS.Request PutEventSelectorsResponse
putEventSelectors setOptions =
  let
    options = setOptions (PutEventSelectorsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutEventSelectors"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putEventSelectorsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a putEventSelectors request
-}
type alias PutEventSelectorsOptions =
    { trailName : Maybe String
    , eventSelectors : Maybe (List EventSelector)
    }



{-| <p>Removes the specified tags from a trail.</p>

__Required Parameters__

* `resourceId` __:__ `String`


-}
removeTags :
    String
    -> (RemoveTagsOptions -> RemoveTagsOptions)
    -> AWS.Request RemoveTagsResponse
removeTags resourceId setOptions =
  let
    options = setOptions (RemoveTagsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RemoveTags"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        removeTagsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a removeTags request
-}
type alias RemoveTagsOptions =
    { tagsList : Maybe (List Tag)
    }



{-| <p>Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

__Required Parameters__

* `name` __:__ `String`


-}
startLogging :
    String
    -> AWS.Request StartLoggingResponse
startLogging name =
    AWS.Http.unsignedRequest
        "StartLogging"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startLoggingResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an <code>InvalidHomeRegionException</code> will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.</p>

__Required Parameters__

* `name` __:__ `String`


-}
stopLogging :
    String
    -> AWS.Request StopLoggingResponse
stopLogging name =
    AWS.Http.unsignedRequest
        "StopLogging"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopLoggingResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. <code>UpdateTrail</code> must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p>

__Required Parameters__

* `name` __:__ `String`


-}
updateTrail :
    String
    -> (UpdateTrailOptions -> UpdateTrailOptions)
    -> AWS.Request UpdateTrailResponse
updateTrail name setOptions =
  let
    options = setOptions (UpdateTrailOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateTrail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateTrailResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateTrail request
-}
type alias UpdateTrailOptions =
    { s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , enableLogFileValidation : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    }




{-| Type of HTTP response from addTags
-}
type alias AddTagsResponse =
    { 
    }



addTagsResponseDecoder : JD.Decoder AddTagsResponse
addTagsResponseDecoder =
    JDP.decode AddTagsResponse



{-| <p>This exception is thrown when an operation is called with an invalid trail ARN. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-}
type alias CloudTrailARNInvalidException =
    { 
    }



cloudTrailARNInvalidExceptionDecoder : JD.Decoder CloudTrailARNInvalidException
cloudTrailARNInvalidExceptionDecoder =
    JDP.decode CloudTrailARNInvalidException



{-| <p>Cannot set a CloudWatch Logs delivery for this region.</p>
-}
type alias CloudWatchLogsDeliveryUnavailableException =
    { 
    }



cloudWatchLogsDeliveryUnavailableExceptionDecoder : JD.Decoder CloudWatchLogsDeliveryUnavailableException
cloudWatchLogsDeliveryUnavailableExceptionDecoder =
    JDP.decode CloudWatchLogsDeliveryUnavailableException



{-| Type of HTTP response from createTrail
-}
type alias CreateTrailResponse =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , snsTopicARN : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , trailARN : Maybe String
    , logFileValidationEnabled : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    }



createTrailResponseDecoder : JD.Decoder CreateTrailResponse
createTrailResponseDecoder =
    JDP.decode CreateTrailResponse
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3KeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicName" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "includeGlobalServiceEvents" (JD.nullable JD.bool) Nothing
        |> JDP.optional "isMultiRegionTrail" (JD.nullable JD.bool) Nothing
        |> JDP.optional "trailARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "logFileValidationEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "cloudWatchLogsLogGroupArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "cloudWatchLogsRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing




{-| <p>The Amazon S3 objects that you specify in your event selectors for your trail to log data events. Data events are object level API operations that access S3 objects, such as <code>GetObject</code>, <code>DeleteObject</code>, and <code>PutObject</code>. You can specify up to 50 S3 buckets and object prefixes for an event selector. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify an S3 bucket and an empty prefix, such as <code>arn:aws:s3:::bucket-1/</code>.</p> </li> <li> <p>You upload an image file to <code>bucket-1</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation occurs on an object in the S3 bucket that you specified in the event selector. The trail processes and logs the event.</p> </li> <li> <p>You upload another image file to a different S3 bucket named <code>arn:aws:s3:::bucket-2</code>.</p> </li> <li> <p>The event occurs on an object in an S3 bucket that you didn't specify in the event selector. The trail doesn’t log the event.</p> </li> </ol>
-}
type alias DataResource =
    { type_ : Maybe String
    , values : Maybe (List String)
    }



dataResourceDecoder : JD.Decoder DataResource
dataResourceDecoder =
    JDP.decode DataResource
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "values" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from deleteTrail
-}
type alias DeleteTrailResponse =
    { 
    }



deleteTrailResponseDecoder : JD.Decoder DeleteTrailResponse
deleteTrailResponseDecoder =
    JDP.decode DeleteTrailResponse



{-| Type of HTTP response from describeTrails
-}
type alias DescribeTrailsResponse =
    { trailList : Maybe (List Trail)
    }



describeTrailsResponseDecoder : JD.Decoder DescribeTrailsResponse
describeTrailsResponseDecoder =
    JDP.decode DescribeTrailsResponse
        |> JDP.optional "trailList" (JD.nullable (JD.list trailDecoder)) Nothing




{-| <p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>
-}
type alias Event =
    { eventId : Maybe String
    , eventName : Maybe String
    , eventTime : Maybe Date
    , eventSource : Maybe String
    , username : Maybe String
    , resources : Maybe (List Resource)
    , cloudTrailEvent : Maybe String
    }



eventDecoder : JD.Decoder Event
eventDecoder =
    JDP.decode Event
        |> JDP.optional "eventId" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventName" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "eventSource" (JD.nullable JD.string) Nothing
        |> JDP.optional "username" (JD.nullable JD.string) Nothing
        |> JDP.optional "resources" (JD.nullable (JD.list resourceDecoder)) Nothing
        |> JDP.optional "cloudTrailEvent" (JD.nullable JD.string) Nothing




{-| <p>Use event selectors to specify the types of events that you want your trail to log. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.</p> <p>You can configure up to five event selectors for a trail.</p>
-}
type alias EventSelector =
    { readWriteType : Maybe ReadWriteType
    , includeManagementEvents : Maybe Bool
    , dataResources : Maybe (List DataResource)
    }



eventSelectorDecoder : JD.Decoder EventSelector
eventSelectorDecoder =
    JDP.decode EventSelector
        |> JDP.optional "readWriteType" (JD.nullable readWriteTypeDecoder) Nothing
        |> JDP.optional "includeManagementEvents" (JD.nullable JD.bool) Nothing
        |> JDP.optional "dataResources" (JD.nullable (JD.list dataResourceDecoder)) Nothing




{-| Type of HTTP response from getEventSelectors
-}
type alias GetEventSelectorsResponse =
    { trailARN : Maybe String
    , eventSelectors : Maybe (List EventSelector)
    }



getEventSelectorsResponseDecoder : JD.Decoder GetEventSelectorsResponse
getEventSelectorsResponseDecoder =
    JDP.decode GetEventSelectorsResponse
        |> JDP.optional "trailARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventSelectors" (JD.nullable (JD.list eventSelectorDecoder)) Nothing




{-| Type of HTTP response from getTrailStatus
-}
type alias GetTrailStatusResponse =
    { isLogging : Maybe Bool
    , latestDeliveryError : Maybe String
    , latestNotificationError : Maybe String
    , latestDeliveryTime : Maybe Date
    , latestNotificationTime : Maybe Date
    , startLoggingTime : Maybe Date
    , stopLoggingTime : Maybe Date
    , latestCloudWatchLogsDeliveryError : Maybe String
    , latestCloudWatchLogsDeliveryTime : Maybe Date
    , latestDigestDeliveryTime : Maybe Date
    , latestDigestDeliveryError : Maybe String
    , latestDeliveryAttemptTime : Maybe String
    , latestNotificationAttemptTime : Maybe String
    , latestNotificationAttemptSucceeded : Maybe String
    , latestDeliveryAttemptSucceeded : Maybe String
    , timeLoggingStarted : Maybe String
    , timeLoggingStopped : Maybe String
    }



getTrailStatusResponseDecoder : JD.Decoder GetTrailStatusResponse
getTrailStatusResponseDecoder =
    JDP.decode GetTrailStatusResponse
        |> JDP.optional "isLogging" (JD.nullable JD.bool) Nothing
        |> JDP.optional "latestDeliveryError" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestNotificationError" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestDeliveryTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "latestNotificationTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "startLoggingTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stopLoggingTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "latestCloudWatchLogsDeliveryError" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestCloudWatchLogsDeliveryTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "latestDigestDeliveryTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "latestDigestDeliveryError" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestDeliveryAttemptTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestNotificationAttemptTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestNotificationAttemptSucceeded" (JD.nullable JD.string) Nothing
        |> JDP.optional "latestDeliveryAttemptSucceeded" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeLoggingStarted" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeLoggingStopped" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the policy on the S3 bucket or KMS key is not sufficient.</p>
-}
type alias InsufficientEncryptionPolicyException =
    { 
    }



insufficientEncryptionPolicyExceptionDecoder : JD.Decoder InsufficientEncryptionPolicyException
insufficientEncryptionPolicyExceptionDecoder =
    JDP.decode InsufficientEncryptionPolicyException



{-| <p>This exception is thrown when the policy on the S3 bucket is not sufficient.</p>
-}
type alias InsufficientS3BucketPolicyException =
    { 
    }



insufficientS3BucketPolicyExceptionDecoder : JD.Decoder InsufficientS3BucketPolicyException
insufficientS3BucketPolicyExceptionDecoder =
    JDP.decode InsufficientS3BucketPolicyException



{-| <p>This exception is thrown when the policy on the SNS topic is not sufficient.</p>
-}
type alias InsufficientSnsTopicPolicyException =
    { 
    }



insufficientSnsTopicPolicyExceptionDecoder : JD.Decoder InsufficientSnsTopicPolicyException
insufficientSnsTopicPolicyExceptionDecoder =
    JDP.decode InsufficientSnsTopicPolicyException



{-| <p>This exception is thrown when the provided CloudWatch log group is not valid.</p>
-}
type alias InvalidCloudWatchLogsLogGroupArnException =
    { 
    }



invalidCloudWatchLogsLogGroupArnExceptionDecoder : JD.Decoder InvalidCloudWatchLogsLogGroupArnException
invalidCloudWatchLogsLogGroupArnExceptionDecoder =
    JDP.decode InvalidCloudWatchLogsLogGroupArnException



{-| <p>This exception is thrown when the provided role is not valid.</p>
-}
type alias InvalidCloudWatchLogsRoleArnException =
    { 
    }



invalidCloudWatchLogsRoleArnExceptionDecoder : JD.Decoder InvalidCloudWatchLogsRoleArnException
invalidCloudWatchLogsRoleArnExceptionDecoder =
    JDP.decode InvalidCloudWatchLogsRoleArnException



{-| <p>This exception is thrown when the <code>PutEventSelectors</code> operation is called with an invalid number of event selectors, data resources, or an invalid value for a parameter:</p> <ul> <li> <p>Specify a valid number of event selectors (1 to 5) for a trail.</p> </li> <li> <p>Specify a valid number of data resources (1 to 50) for an event selector.</p> </li> <li> <p>Specify a valid value for a parameter. For example, specifying the <code>ReadWriteType</code> parameter with a value of <code>read-only</code> is invalid.</p> </li> </ul>
-}
type alias InvalidEventSelectorsException =
    { 
    }



invalidEventSelectorsExceptionDecoder : JD.Decoder InvalidEventSelectorsException
invalidEventSelectorsExceptionDecoder =
    JDP.decode InvalidEventSelectorsException



{-| <p>This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.</p>
-}
type alias InvalidHomeRegionException =
    { 
    }



invalidHomeRegionExceptionDecoder : JD.Decoder InvalidHomeRegionException
invalidHomeRegionExceptionDecoder =
    JDP.decode InvalidHomeRegionException



{-| <p>This exception is thrown when the KMS key ARN is invalid.</p>
-}
type alias InvalidKmsKeyIdException =
    { 
    }



invalidKmsKeyIdExceptionDecoder : JD.Decoder InvalidKmsKeyIdException
invalidKmsKeyIdExceptionDecoder =
    JDP.decode InvalidKmsKeyIdException



{-| <p>Occurs when an invalid lookup attribute is specified.</p>
-}
type alias InvalidLookupAttributesException =
    { 
    }



invalidLookupAttributesExceptionDecoder : JD.Decoder InvalidLookupAttributesException
invalidLookupAttributesExceptionDecoder =
    JDP.decode InvalidLookupAttributesException



{-| <p>This exception is thrown if the limit specified is invalid.</p>
-}
type alias InvalidMaxResultsException =
    { 
    }



invalidMaxResultsExceptionDecoder : JD.Decoder InvalidMaxResultsException
invalidMaxResultsExceptionDecoder =
    JDP.decode InvalidMaxResultsException



{-| <p>Invalid token or token that was previously used in a request with different parameters. This exception is thrown if the token is invalid.</p>
-}
type alias InvalidNextTokenException =
    { 
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException



{-| <p>This exception is thrown when the combination of parameters provided is not valid.</p>
-}
type alias InvalidParameterCombinationException =
    { 
    }



invalidParameterCombinationExceptionDecoder : JD.Decoder InvalidParameterCombinationException
invalidParameterCombinationExceptionDecoder =
    JDP.decode InvalidParameterCombinationException



{-| <p>This exception is thrown when the provided S3 bucket name is not valid.</p>
-}
type alias InvalidS3BucketNameException =
    { 
    }



invalidS3BucketNameExceptionDecoder : JD.Decoder InvalidS3BucketNameException
invalidS3BucketNameExceptionDecoder =
    JDP.decode InvalidS3BucketNameException



{-| <p>This exception is thrown when the provided S3 prefix is not valid.</p>
-}
type alias InvalidS3PrefixException =
    { 
    }



invalidS3PrefixExceptionDecoder : JD.Decoder InvalidS3PrefixException
invalidS3PrefixExceptionDecoder =
    JDP.decode InvalidS3PrefixException



{-| <p>This exception is thrown when the provided SNS topic name is not valid.</p>
-}
type alias InvalidSnsTopicNameException =
    { 
    }



invalidSnsTopicNameExceptionDecoder : JD.Decoder InvalidSnsTopicNameException
invalidSnsTopicNameExceptionDecoder =
    JDP.decode InvalidSnsTopicNameException



{-| <p>This exception is thrown when the key or value specified for the tag does not match the regular expression <code>^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$</code>.</p>
-}
type alias InvalidTagParameterException =
    { 
    }



invalidTagParameterExceptionDecoder : JD.Decoder InvalidTagParameterException
invalidTagParameterExceptionDecoder =
    JDP.decode InvalidTagParameterException



{-| <p>Occurs if the timestamp values are invalid. Either the start time occurs after the end time or the time range is outside the range of possible values.</p>
-}
type alias InvalidTimeRangeException =
    { 
    }



invalidTimeRangeExceptionDecoder : JD.Decoder InvalidTimeRangeException
invalidTimeRangeExceptionDecoder =
    JDP.decode InvalidTimeRangeException



{-| <p>Reserved for future use.</p>
-}
type alias InvalidTokenException =
    { 
    }



invalidTokenExceptionDecoder : JD.Decoder InvalidTokenException
invalidTokenExceptionDecoder =
    JDP.decode InvalidTokenException



{-| <p>This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul>
-}
type alias InvalidTrailNameException =
    { 
    }



invalidTrailNameExceptionDecoder : JD.Decoder InvalidTrailNameException
invalidTrailNameExceptionDecoder =
    JDP.decode InvalidTrailNameException



{-| <p>This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.</p>
-}
type alias KmsException =
    { 
    }



kmsExceptionDecoder : JD.Decoder KmsException
kmsExceptionDecoder =
    JDP.decode KmsException



{-| <p>This exception is deprecated.</p>
-}
type alias KmsKeyDisabledException =
    { 
    }



kmsKeyDisabledExceptionDecoder : JD.Decoder KmsKeyDisabledException
kmsKeyDisabledExceptionDecoder =
    JDP.decode KmsKeyDisabledException



{-| <p>This exception is thrown when the KMS key does not exist, or when the S3 bucket and the KMS key are not in the same region.</p>
-}
type alias KmsKeyNotFoundException =
    { 
    }



kmsKeyNotFoundExceptionDecoder : JD.Decoder KmsKeyNotFoundException
kmsKeyNotFoundExceptionDecoder =
    JDP.decode KmsKeyNotFoundException



{-| Type of HTTP response from listPublicKeys
-}
type alias ListPublicKeysResponse =
    { publicKeyList : Maybe (List PublicKey)
    , nextToken : Maybe String
    }



listPublicKeysResponseDecoder : JD.Decoder ListPublicKeysResponse
listPublicKeysResponseDecoder =
    JDP.decode ListPublicKeysResponse
        |> JDP.optional "publicKeyList" (JD.nullable (JD.list publicKeyDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTags
-}
type alias ListTagsResponse =
    { resourceTagList : Maybe (List ResourceTag)
    , nextToken : Maybe String
    }



listTagsResponseDecoder : JD.Decoder ListTagsResponse
listTagsResponseDecoder =
    JDP.decode ListTagsResponse
        |> JDP.optional "resourceTagList" (JD.nullable (JD.list resourceTagDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Specifies an attribute and value that filter the events returned.</p>
-}
type alias LookupAttribute =
    { attributeKey : LookupAttributeKey
    , attributeValue : String
    }



lookupAttributeDecoder : JD.Decoder LookupAttribute
lookupAttributeDecoder =
    JDP.decode LookupAttribute
        |> JDP.required "attributeKey" lookupAttributeKeyDecoder
        |> JDP.required "attributeValue" JD.string




{-| One of

* `LookupAttributeKey_EventId`
* `LookupAttributeKey_EventName`
* `LookupAttributeKey_Username`
* `LookupAttributeKey_ResourceType`
* `LookupAttributeKey_ResourceName`
* `LookupAttributeKey_EventSource`

-}
type LookupAttributeKey
    = LookupAttributeKey_EventId
    | LookupAttributeKey_EventName
    | LookupAttributeKey_Username
    | LookupAttributeKey_ResourceType
    | LookupAttributeKey_ResourceName
    | LookupAttributeKey_EventSource



lookupAttributeKeyDecoder : JD.Decoder LookupAttributeKey
lookupAttributeKeyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EventId" ->
                        JD.succeed LookupAttributeKey_EventId

                    "EventName" ->
                        JD.succeed LookupAttributeKey_EventName

                    "Username" ->
                        JD.succeed LookupAttributeKey_Username

                    "ResourceType" ->
                        JD.succeed LookupAttributeKey_ResourceType

                    "ResourceName" ->
                        JD.succeed LookupAttributeKey_ResourceName

                    "EventSource" ->
                        JD.succeed LookupAttributeKey_EventSource


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from lookupEvents
-}
type alias LookupEventsResponse =
    { events : Maybe (List Event)
    , nextToken : Maybe String
    }



lookupEventsResponseDecoder : JD.Decoder LookupEventsResponse
lookupEventsResponseDecoder =
    JDP.decode LookupEventsResponse
        |> JDP.optional "events" (JD.nullable (JD.list eventDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the maximum number of trails is reached.</p>
-}
type alias MaximumNumberOfTrailsExceededException =
    { 
    }



maximumNumberOfTrailsExceededExceptionDecoder : JD.Decoder MaximumNumberOfTrailsExceededException
maximumNumberOfTrailsExceededExceptionDecoder =
    JDP.decode MaximumNumberOfTrailsExceededException



{-| <p>This exception is thrown when the requested operation is not permitted.</p>
-}
type alias OperationNotPermittedException =
    { 
    }



operationNotPermittedExceptionDecoder : JD.Decoder OperationNotPermittedException
operationNotPermittedExceptionDecoder =
    JDP.decode OperationNotPermittedException



{-| <p>Contains information about a returned public key.</p>
-}
type alias PublicKey =
    { value : Maybe String
    , validityStartTime : Maybe Date
    , validityEndTime : Maybe Date
    , fingerprint : Maybe String
    }



publicKeyDecoder : JD.Decoder PublicKey
publicKeyDecoder =
    JDP.decode PublicKey
        |> JDP.optional "value" (JD.nullable JD.string) Nothing
        |> JDP.optional "validityStartTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "validityEndTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "fingerprint" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putEventSelectors
-}
type alias PutEventSelectorsResponse =
    { trailARN : Maybe String
    , eventSelectors : Maybe (List EventSelector)
    }



putEventSelectorsResponseDecoder : JD.Decoder PutEventSelectorsResponse
putEventSelectorsResponseDecoder =
    JDP.decode PutEventSelectorsResponse
        |> JDP.optional "trailARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventSelectors" (JD.nullable (JD.list eventSelectorDecoder)) Nothing




{-| One of

* `ReadWriteType_ReadOnly`
* `ReadWriteType_WriteOnly`
* `ReadWriteType_All`

-}
type ReadWriteType
    = ReadWriteType_ReadOnly
    | ReadWriteType_WriteOnly
    | ReadWriteType_All



readWriteTypeDecoder : JD.Decoder ReadWriteType
readWriteTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ReadOnly" ->
                        JD.succeed ReadWriteType_ReadOnly

                    "WriteOnly" ->
                        JD.succeed ReadWriteType_WriteOnly

                    "All" ->
                        JD.succeed ReadWriteType_All


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from removeTags
-}
type alias RemoveTagsResponse =
    { 
    }



removeTagsResponseDecoder : JD.Decoder RemoveTagsResponse
removeTagsResponseDecoder =
    JDP.decode RemoveTagsResponse



{-| <p>Specifies the type and name of a resource referenced by an event.</p>
-}
type alias Resource =
    { resourceType : Maybe String
    , resourceName : Maybe String
    }



resourceDecoder : JD.Decoder Resource
resourceDecoder =
    JDP.decode Resource
        |> JDP.optional "resourceType" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceName" (JD.nullable JD.string) Nothing




{-| <p>This exception is thrown when the specified resource is not found.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| <p>A resource tag.</p>
-}
type alias ResourceTag =
    { resourceId : Maybe String
    , tagsList : Maybe (List Tag)
    }



resourceTagDecoder : JD.Decoder ResourceTag
resourceTagDecoder =
    JDP.decode ResourceTag
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "tagsList" (JD.nullable (JD.list tagDecoder)) Nothing




{-| <p>This exception is thrown when the specified resource type is not supported by CloudTrail.</p>
-}
type alias ResourceTypeNotSupportedException =
    { 
    }



resourceTypeNotSupportedExceptionDecoder : JD.Decoder ResourceTypeNotSupportedException
resourceTypeNotSupportedExceptionDecoder =
    JDP.decode ResourceTypeNotSupportedException



{-| <p>This exception is thrown when the specified S3 bucket does not exist.</p>
-}
type alias S3BucketDoesNotExistException =
    { 
    }



s3BucketDoesNotExistExceptionDecoder : JD.Decoder S3BucketDoesNotExistException
s3BucketDoesNotExistExceptionDecoder =
    JDP.decode S3BucketDoesNotExistException



{-| Type of HTTP response from startLogging
-}
type alias StartLoggingResponse =
    { 
    }



startLoggingResponseDecoder : JD.Decoder StartLoggingResponse
startLoggingResponseDecoder =
    JDP.decode StartLoggingResponse



{-| Type of HTTP response from stopLogging
-}
type alias StopLoggingResponse =
    { 
    }



stopLoggingResponseDecoder : JD.Decoder StopLoggingResponse
stopLoggingResponseDecoder =
    JDP.decode StopLoggingResponse



{-| <p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>
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




{-| <p>The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.</p>
-}
type alias TagsLimitExceededException =
    { 
    }



tagsLimitExceededExceptionDecoder : JD.Decoder TagsLimitExceededException
tagsLimitExceededExceptionDecoder =
    JDP.decode TagsLimitExceededException



{-| <p>The settings for a trail.</p>
-}
type alias Trail =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , snsTopicARN : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , homeRegion : Maybe String
    , trailARN : Maybe String
    , logFileValidationEnabled : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    , hasCustomEventSelectors : Maybe Bool
    }



trailDecoder : JD.Decoder Trail
trailDecoder =
    JDP.decode Trail
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3KeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicName" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "includeGlobalServiceEvents" (JD.nullable JD.bool) Nothing
        |> JDP.optional "isMultiRegionTrail" (JD.nullable JD.bool) Nothing
        |> JDP.optional "homeRegion" (JD.nullable JD.string) Nothing
        |> JDP.optional "trailARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "logFileValidationEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "cloudWatchLogsLogGroupArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "cloudWatchLogsRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "hasCustomEventSelectors" (JD.nullable JD.bool) Nothing




{-| <p>This exception is thrown when the specified trail already exists.</p>
-}
type alias TrailAlreadyExistsException =
    { 
    }



trailAlreadyExistsExceptionDecoder : JD.Decoder TrailAlreadyExistsException
trailAlreadyExistsExceptionDecoder =
    JDP.decode TrailAlreadyExistsException



{-| <p>This exception is thrown when the trail with the given name is not found.</p>
-}
type alias TrailNotFoundException =
    { 
    }



trailNotFoundExceptionDecoder : JD.Decoder TrailNotFoundException
trailNotFoundExceptionDecoder =
    JDP.decode TrailNotFoundException



{-| <p>This exception is deprecated.</p>
-}
type alias TrailNotProvidedException =
    { 
    }



trailNotProvidedExceptionDecoder : JD.Decoder TrailNotProvidedException
trailNotProvidedExceptionDecoder =
    JDP.decode TrailNotProvidedException



{-| <p>This exception is thrown when the requested operation is not supported.</p>
-}
type alias UnsupportedOperationException =
    { 
    }



unsupportedOperationExceptionDecoder : JD.Decoder UnsupportedOperationException
unsupportedOperationExceptionDecoder =
    JDP.decode UnsupportedOperationException



{-| Type of HTTP response from updateTrail
-}
type alias UpdateTrailResponse =
    { name : Maybe String
    , s3BucketName : Maybe String
    , s3KeyPrefix : Maybe String
    , snsTopicName : Maybe String
    , snsTopicARN : Maybe String
    , includeGlobalServiceEvents : Maybe Bool
    , isMultiRegionTrail : Maybe Bool
    , trailARN : Maybe String
    , logFileValidationEnabled : Maybe Bool
    , cloudWatchLogsLogGroupArn : Maybe String
    , cloudWatchLogsRoleArn : Maybe String
    , kmsKeyId : Maybe String
    }



updateTrailResponseDecoder : JD.Decoder UpdateTrailResponse
updateTrailResponseDecoder =
    JDP.decode UpdateTrailResponse
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3BucketName" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3KeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicName" (JD.nullable JD.string) Nothing
        |> JDP.optional "snsTopicARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "includeGlobalServiceEvents" (JD.nullable JD.bool) Nothing
        |> JDP.optional "isMultiRegionTrail" (JD.nullable JD.bool) Nothing
        |> JDP.optional "trailARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "logFileValidationEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "cloudWatchLogsLogGroupArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "cloudWatchLogsRoleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyId" (JD.nullable JD.string) Nothing




