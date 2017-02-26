module AWS.Services.SQS
    exposing
        ( config
        , addPermission
        , changeMessageVisibility
        , changeMessageVisibilityBatch
        , createQueue
        , CreateQueueOptions
        , deleteMessage
        , deleteMessageBatch
        , deleteQueue
        , getQueueAttributes
        , GetQueueAttributesOptions
        , getQueueUrl
        , GetQueueUrlOptions
        , listDeadLetterSourceQueues
        , listQueues
        , ListQueuesOptions
        , purgeQueue
        , receiveMessage
        , ReceiveMessageOptions
        , removePermission
        , sendMessage
        , SendMessageOptions
        , sendMessageBatch
        , setQueueAttributes
        , BatchEntryIdsNotDistinct
        , BatchRequestTooLong
        , BatchResultErrorEntry
        , ChangeMessageVisibilityBatchRequestEntry
        , ChangeMessageVisibilityBatchResult
        , ChangeMessageVisibilityBatchResultEntry
        , CreateQueueResult
        , DeleteMessageBatchRequestEntry
        , DeleteMessageBatchResult
        , DeleteMessageBatchResultEntry
        , EmptyBatchRequest
        , GetQueueAttributesResult
        , GetQueueUrlResult
        , InvalidAttributeName
        , InvalidBatchEntryId
        , InvalidIdFormat
        , InvalidMessageContents
        , ListDeadLetterSourceQueuesResult
        , ListQueuesResult
        , Message
        , MessageAttributeValue
        , MessageNotInflight
        , MessageSystemAttributeName(..)
        , OverLimit
        , PurgeQueueInProgress
        , QueueAttributeName(..)
        , QueueDeletedRecently
        , QueueDoesNotExist
        , QueueNameExists
        , ReceiptHandleIsInvalid
        , ReceiveMessageResult
        , SendMessageBatchRequestEntry
        , SendMessageBatchResult
        , SendMessageBatchResultEntry
        , SendMessageResult
        , TooManyEntriesInBatchRequest
        , UnsupportedOperation
        )

{-| <p>Welcome to the <i>Amazon Simple Queue Service API Reference</i>.</p> <p>Amazon Simple Queue Service (Amazon SQS) is a reliable, highly-scalable hosted queue for storing messages as they travel between applications or microservices. Amazon SQS moves data between distributed application components and helps you decouple these components.</p> <note> <p> <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/standard-queues.html">Standard queues</a> are available in all regions. <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO queues</a> are available in US West (Oregon) and US East (Ohio).</p> </note> <p>You can use <a href="http://aws.amazon.com/tools/#sdk">AWS SDKs</a> to access Amazon SQS using your favorite programming language. The SDKs perform tasks such as the following automatically:</p> <ul> <li> <p>Cryptographically sign your service requests</p> </li> <li> <p>Retry requests</p> </li> <li> <p>Handle error responses</p> </li> </ul> <p> <b>Additional Information</b> </p> <ul> <li> <p> <a href="http://aws.amazon.com/sqs/">Amazon SQS Product Page</a> </p> </li> <li> <p> <i>Amazon SQS Developer Guide</i> </p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/MakingRequestsArticle.html">Making API Requests</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html">Using Amazon SQS Message Attributes</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> </p> </li> </ul> </li> <li> <p> <i>Amazon Web Services General Reference</i> </p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region">Regions and Endpoints</a> </p> </li> </ul> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addPermission](#addPermission)
* [changeMessageVisibility](#changeMessageVisibility)
* [changeMessageVisibilityBatch](#changeMessageVisibilityBatch)
* [createQueue](#createQueue)
* [CreateQueueOptions](#CreateQueueOptions)
* [deleteMessage](#deleteMessage)
* [deleteMessageBatch](#deleteMessageBatch)
* [deleteQueue](#deleteQueue)
* [getQueueAttributes](#getQueueAttributes)
* [GetQueueAttributesOptions](#GetQueueAttributesOptions)
* [getQueueUrl](#getQueueUrl)
* [GetQueueUrlOptions](#GetQueueUrlOptions)
* [listDeadLetterSourceQueues](#listDeadLetterSourceQueues)
* [listQueues](#listQueues)
* [ListQueuesOptions](#ListQueuesOptions)
* [purgeQueue](#purgeQueue)
* [receiveMessage](#receiveMessage)
* [ReceiveMessageOptions](#ReceiveMessageOptions)
* [removePermission](#removePermission)
* [sendMessage](#sendMessage)
* [SendMessageOptions](#SendMessageOptions)
* [sendMessageBatch](#sendMessageBatch)
* [setQueueAttributes](#setQueueAttributes)


@docs addPermission,changeMessageVisibility,changeMessageVisibilityBatch,createQueue,CreateQueueOptions,deleteMessage,deleteMessageBatch,deleteQueue,getQueueAttributes,GetQueueAttributesOptions,getQueueUrl,GetQueueUrlOptions,listDeadLetterSourceQueues,listQueues,ListQueuesOptions,purgeQueue,receiveMessage,ReceiveMessageOptions,removePermission,sendMessage,SendMessageOptions,sendMessageBatch,setQueueAttributes

## Responses

* [ChangeMessageVisibilityBatchResult](#ChangeMessageVisibilityBatchResult)
* [CreateQueueResult](#CreateQueueResult)
* [DeleteMessageBatchResult](#DeleteMessageBatchResult)
* [GetQueueAttributesResult](#GetQueueAttributesResult)
* [GetQueueUrlResult](#GetQueueUrlResult)
* [ListDeadLetterSourceQueuesResult](#ListDeadLetterSourceQueuesResult)
* [ListQueuesResult](#ListQueuesResult)
* [ReceiveMessageResult](#ReceiveMessageResult)
* [SendMessageBatchResult](#SendMessageBatchResult)
* [SendMessageResult](#SendMessageResult)


@docs ChangeMessageVisibilityBatchResult,CreateQueueResult,DeleteMessageBatchResult,GetQueueAttributesResult,GetQueueUrlResult,ListDeadLetterSourceQueuesResult,ListQueuesResult,ReceiveMessageResult,SendMessageBatchResult,SendMessageResult

## Records

* [BatchResultErrorEntry](#BatchResultErrorEntry)
* [ChangeMessageVisibilityBatchRequestEntry](#ChangeMessageVisibilityBatchRequestEntry)
* [ChangeMessageVisibilityBatchResultEntry](#ChangeMessageVisibilityBatchResultEntry)
* [DeleteMessageBatchRequestEntry](#DeleteMessageBatchRequestEntry)
* [DeleteMessageBatchResultEntry](#DeleteMessageBatchResultEntry)
* [Message](#Message)
* [MessageAttributeValue](#MessageAttributeValue)
* [SendMessageBatchRequestEntry](#SendMessageBatchRequestEntry)
* [SendMessageBatchResultEntry](#SendMessageBatchResultEntry)


@docs BatchResultErrorEntry,ChangeMessageVisibilityBatchRequestEntry,ChangeMessageVisibilityBatchResultEntry,DeleteMessageBatchRequestEntry,DeleteMessageBatchResultEntry,Message,MessageAttributeValue,SendMessageBatchRequestEntry,SendMessageBatchResultEntry

## Unions

* [MessageSystemAttributeName](#MessageSystemAttributeName)
* [QueueAttributeName](#QueueAttributeName)


@docs MessageSystemAttributeName,QueueAttributeName

## Exceptions

* [BatchEntryIdsNotDistinct](#BatchEntryIdsNotDistinct)
* [BatchRequestTooLong](#BatchRequestTooLong)
* [EmptyBatchRequest](#EmptyBatchRequest)
* [InvalidAttributeName](#InvalidAttributeName)
* [InvalidBatchEntryId](#InvalidBatchEntryId)
* [InvalidIdFormat](#InvalidIdFormat)
* [InvalidMessageContents](#InvalidMessageContents)
* [MessageNotInflight](#MessageNotInflight)
* [OverLimit](#OverLimit)
* [PurgeQueueInProgress](#PurgeQueueInProgress)
* [QueueDeletedRecently](#QueueDeletedRecently)
* [QueueDoesNotExist](#QueueDoesNotExist)
* [QueueNameExists](#QueueNameExists)
* [ReceiptHandleIsInvalid](#ReceiptHandleIsInvalid)
* [TooManyEntriesInBatchRequest](#TooManyEntriesInBatchRequest)
* [UnsupportedOperation](#UnsupportedOperation)


@docs BatchEntryIdsNotDistinct,BatchRequestTooLong,EmptyBatchRequest,InvalidAttributeName,InvalidBatchEntryId,InvalidIdFormat,InvalidMessageContents,MessageNotInflight,OverLimit,PurgeQueueInProgress,QueueDeletedRecently,QueueDoesNotExist,QueueNameExists,ReceiptHandleIsInvalid,TooManyEntriesInBatchRequest,UnsupportedOperation

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "sqs"
        "2012-11-05"
        "undefined"
        "AWSSQS_20121105."
        "sqs.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Adds a permission to a queue for a specific <a href="http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a>. This allows sharing access to the queue.</p> <p>When you create a queue, you have full control access rights for the queue. Only you, the owner of the queue, can grant or deny permissions to the queue. For more information about these permissions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html">Shared Queues</a> in the <i>Amazon SQS Developer Guide</i>.</p> <note> <p> <code>AddPermission</code> writes an Amazon-SQS-generated policy. If you want to write your own policy, use <code> <a>SetQueueAttributes</a> </code> to upload your policy. For more information about writing your own policy, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AccessPolicyLanguage.html">Using The Access Policy Language</a> in the <i>Amazon SQS Developer Guide</i>.</p> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `label` __:__ `String`
* `aWSAccountIds` __:__ `(List String)`
* `actions` __:__ `(List String)`


-}
addPermission :
    String
    -> String
    -> (List String)
    -> (List String)
    -> AWS.Request ()
addPermission queueUrl label aWSAccountIds actions =
    AWS.Http.unsignedRequest
        "AddPermission"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Changes the visibility timeout of a specified message in a queue to a new value. The maximum allowed timeout value is 12 hours. Thus, you can't extend the timeout of a message in an existing queue to more than a total visibility timeout of 12 hours. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> <p>For example, you have a message and with the default visibility timeout of 5 minutes. After 3 minutes, you call <code>ChangeMessageVisiblity</code> with a timeout of 10 minutes. At that time, the timeout for the message is extended by 10 minutes beyond the time of the <code>ChangeMessageVisibility</code> action. This results in a total visibility timeout of 13 minutes. You can continue to call the <code>ChangeMessageVisibility</code> to extend the visibility timeout to a maximum of 12 hours. If you try to extend the visibility timeout beyond 12 hours, your request is rejected.</p> <p>A message is considered to be <i>in flight</i> after it's received from a queue by a consumer, but not yet deleted from the queue.</p> <p>For standard queues, there can be a maximum of 120,000 inflight messages per queue. If you reach this limit, Amazon SQS returns the <code>OverLimit</code> error message. To avoid reaching the limit, you should delete messages from the queue after they're processed. You can also increase the number of queues you use to process your messages.</p> <p>For FIFO queues, there can be a maximum of 20,000 inflight messages per queue. If you reach this limit, Amazon SQS returns no error messages.</p> <important> <p>If you attempt to set the <code>VisibilityTimeout</code> to a value greater than the maximum time left, Amazon SQS returns an error. Amazon SQS doesn't automatically recalculate and increase the timeout to the maximum remaining time.</p> <p>Unlike with a queue, when you change the visibility timeout for a specific message the timeout value is applied immediately but isn't saved in memory for that message. If you don't delete a message after it is received, the visibility timeout for the message reverts to the original timeout value (not to the value you set using the <code>ChangeMessageVisibility</code> action) the next time the message is received.</p> </important>

__Required Parameters__

* `queueUrl` __:__ `String`
* `receiptHandle` __:__ `String`
* `visibilityTimeout` __:__ `Int`


-}
changeMessageVisibility :
    String
    -> String
    -> Int
    -> AWS.Request ()
changeMessageVisibility queueUrl receiptHandle visibilityTimeout =
    AWS.Http.unsignedRequest
        "ChangeMessageVisibility"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Changes the visibility timeout of multiple messages. This is a batch version of <code> <a>ChangeMessageVisibility</a> </code>. The result of the action on each message is reported individually in the response. You can send up to 10 <code> <a>ChangeMessageVisibility</a> </code> requests with each <code>ChangeMessageVisibilityBatch</code> action.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `entries` __:__ `(List ChangeMessageVisibilityBatchRequestEntry)`


-}
changeMessageVisibilityBatch :
    String
    -> (List ChangeMessageVisibilityBatchRequestEntry)
    -> AWS.Request ChangeMessageVisibilityBatchResult
changeMessageVisibilityBatch queueUrl entries =
    AWS.Http.unsignedRequest
        "ChangeMessageVisibilityBatch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        changeMessageVisibilityBatchResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new standard or FIFO queue or returns the URL of an existing queue. You can pass one or more attributes in the request. Keep the following caveats in mind:</p> <ul> <li> <p>If you don't specify the <code>FifoQueue</code> attribute, Amazon SQS creates a standard queue.</p> <note> <p> You can't change the queue type after you create it and you can't convert an existing standard queue into a FIFO queue. You must either create a new FIFO queue for your application or delete your existing standard queue and recreate it as a FIFO queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-moving"> Moving From a Standard Queue to a FIFO Queue</a> in the <i>Amazon SQS Developer Guide</i>. </p> </note> </li> <li> <p>If you don't provide a value for an attribute, the queue is created with the default value for the attribute.</p> </li> <li> <p>If you delete a queue, you must wait at least 60 seconds before creating a queue with the same name.</p> </li> </ul> <p>To successfully create a new queue, you must provide a queue name that adheres to the <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/limits-queues.html">limits related to queues</a> and is unique within the scope of your queues.</p> <p>To get the queue URL, use the <code> <a>GetQueueUrl</a> </code> action. <code> <a>GetQueueUrl</a> </code> requires only the <code>QueueName</code> parameter. be aware of existing queue names:</p> <ul> <li> <p>If you provide the name of an existing queue along with the exact names and values of all the queue's attributes, <code>CreateQueue</code> returns the queue URL for the existing queue.</p> </li> <li> <p>If the queue name, attribute names, or attribute values don't match an existing queue, <code>CreateQueue</code> returns an error.</p> </li> </ul> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>

__Required Parameters__

* `queueName` __:__ `String`


-}
createQueue :
    String
    -> (CreateQueueOptions -> CreateQueueOptions)
    -> AWS.Request CreateQueueResult
createQueue queueName setOptions =
  let
    options = setOptions (CreateQueueOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateQueue"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createQueueResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createQueue request
-}
type alias CreateQueueOptions =
    { attributes : Maybe (Dict String String)
    }



{-| <p>Deletes the specified message from the specified queue. You specify the message by using the message's <i>receipt handle</i> and not the <i>MessageId</i> you receive when you send the message. Even if the message is locked by another reader due to the visibility timeout setting, it is still deleted from the queue. If you leave a message in the queue for longer than the queue's configured retention period, Amazon SQS automatically deletes the message. </p> <note> <p> The receipt handle is associated with a specific instance of receiving the message. If you receive a message more than once, the receipt handle you get each time you receive the message is different. If you don't provide the most recently received receipt handle for the message when you use the <code>DeleteMessage</code> action, the request succeeds, but the message might not be deleted.</p> <p>For standard queues, it is possible to receive a message even after you deleting it. This might happen on rare occasions if one of the servers storing a copy of the message is unavailable when you send the request to delete the message. The copy remains on the server and might be returned to you on a subsequent receive request. You should ensure that your application is idempotent, so that receiving a message more than once does not cause issues.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `receiptHandle` __:__ `String`


-}
deleteMessage :
    String
    -> String
    -> AWS.Request ()
deleteMessage queueUrl receiptHandle =
    AWS.Http.unsignedRequest
        "DeleteMessage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes up to ten messages from the specified queue. This is a batch version of <code> <a>DeleteMessage</a> </code>. The result of the action on each message is reported individually in the response.</p> <important> <p>Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> </important> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `entries` __:__ `(List DeleteMessageBatchRequestEntry)`


-}
deleteMessageBatch :
    String
    -> (List DeleteMessageBatchRequestEntry)
    -> AWS.Request DeleteMessageBatchResult
deleteMessageBatch queueUrl entries =
    AWS.Http.unsignedRequest
        "DeleteMessageBatch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteMessageBatchResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the queue specified by the <code>QueueUrl</code>, even if the queue is empty. If the specified queue doesn't exist, Amazon SQS returns a successful response.</p> <important> <p>Be careful with the <code>DeleteQueue</code> action: When you delete a queue, any messages in the queue are no longer available. </p> </important> <p>When you delete a queue, the deletion process takes up to 60 seconds. Requests you send involving that queue during the 60 seconds might succeed. For example, a <code> <a>SendMessage</a> </code> request might succeed, but after 60 seconds the queue and the message you sent no longer exist.</p> <p>When you delete a queue, you must wait at least 60 seconds before creating a queue with the same name. </p>

__Required Parameters__

* `queueUrl` __:__ `String`


-}
deleteQueue :
    String
    -> AWS.Request ()
deleteQueue queueUrl =
    AWS.Http.unsignedRequest
        "DeleteQueue"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Gets attributes for the specified queue.</p> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`


-}
getQueueAttributes :
    String
    -> (GetQueueAttributesOptions -> GetQueueAttributesOptions)
    -> AWS.Request GetQueueAttributesResult
getQueueAttributes queueUrl setOptions =
  let
    options = setOptions (GetQueueAttributesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetQueueAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getQueueAttributesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getQueueAttributes request
-}
type alias GetQueueAttributesOptions =
    { attributeNames : Maybe (List QueueAttributeName)
    }



{-| <p>Returns the URL of an existing queue. This action provides a simple way to retrieve the URL of an Amazon SQS queue.</p> <p>To access a queue that belongs to another AWS account, use the <code>QueueOwnerAWSAccountId</code> parameter to specify the account ID of the queue's owner. The queue's owner must grant you permission to access the queue. For more information about shared queue access, see <code> <a>AddPermission</a> </code> or see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html">Shared Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p>

__Required Parameters__

* `queueName` __:__ `String`


-}
getQueueUrl :
    String
    -> (GetQueueUrlOptions -> GetQueueUrlOptions)
    -> AWS.Request GetQueueUrlResult
getQueueUrl queueName setOptions =
  let
    options = setOptions (GetQueueUrlOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetQueueUrl"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getQueueUrlResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getQueueUrl request
-}
type alias GetQueueUrlOptions =
    { queueOwnerAWSAccountId : Maybe String
    }



{-| <p>Returns a list of your queues that have the <code>RedrivePolicy</code> queue attribute configured with a dead letter queue.</p> <p>For more information about using dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>.</p>

__Required Parameters__

* `queueUrl` __:__ `String`


-}
listDeadLetterSourceQueues :
    String
    -> AWS.Request ListDeadLetterSourceQueuesResult
listDeadLetterSourceQueues queueUrl =
    AWS.Http.unsignedRequest
        "ListDeadLetterSourceQueues"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDeadLetterSourceQueuesResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a list of your queues. The maximum number of queues that can be returned is 1,000. If you specify a value for the optional <code>QueueNamePrefix</code> parameter, only queues with a name that begins with the specified value are returned.</p>

__Required Parameters__



-}
listQueues :
    (ListQueuesOptions -> ListQueuesOptions)
    -> AWS.Request ListQueuesResult
listQueues setOptions =
  let
    options = setOptions (ListQueuesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListQueues"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listQueuesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listQueues request
-}
type alias ListQueuesOptions =
    { queueNamePrefix : Maybe String
    }



{-| <p>Deletes the messages in a queue specified by the <code>QueueURL</code> parameter.</p> <important> <p>When you use the <code>PurgeQueue</code> action, you can't retrieve a message deleted from a queue.</p> </important> <p>When you purge a queue, the message deletion process takes up to 60 seconds. All messages sent to the queue before calling the <code>PurgeQueue</code> action are deleted. Messages sent to the queue while it is being purged might be deleted. While the queue is being purged, messages sent to the queue before <code>PurgeQueue</code> is called might be received, but are deleted within the next minute.</p>

__Required Parameters__

* `queueUrl` __:__ `String`


-}
purgeQueue :
    String
    -> AWS.Request ()
purgeQueue queueUrl =
    AWS.Http.unsignedRequest
        "PurgeQueue"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Retrieves one or more messages (up to 10), from the specified queue. Using the <code>WaitTimeSeconds</code> parameter enables long-poll support. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-long-polling.html">Amazon SQS Long Polling</a> in the <i>Amazon SQS Developer Guide</i>. </p> <p>Short poll is the default behavior where a weighted random set of machines is sampled on a <code>ReceiveMessage</code> call. Thus, only the messages on the sampled machines are returned. If the number of messages in the queue is small (fewer than 1,000), you most likely get fewer messages than you requested per <code>ReceiveMessage</code> call. If the number of messages in the queue is extremely small, you might not receive any messages in a particular <code>ReceiveMessage</code> response. If this happens, repeat the request. </p> <p>For each message returned, the response includes the following:</p> <ul> <li> <p>The message body.</p> </li> <li> <p>An MD5 digest of the message body. For information on MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p> </li> <li> <p>The <code>MessageId</code> you received when you sent the message to the queue.</p> </li> <li> <p>The receipt handle.</p> </li> <li> <p>The message attributes.</p> </li> <li> <p>An MD5 digest of the message attributes.</p> </li> </ul> <p>The receipt handle is the identifier you must provide when deleting the message. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue and Message Identifiers</a> in the <i>Amazon SQS Developer Guide</i>.</p> <p>You can provide the <code>VisibilityTimeout</code> parameter in your request. The parameter is applied to the messages that Amazon SQS returns in the response. If you don't include the parameter, the overall visibility timeout for the queue is used for the returned messages. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> <p>A message that isn't deleted or a message whose visibility isn't extended before the visibility timeout expires counts as a failed receive. Depending on the configuration of the queue, the message might be sent to the dead letter queue.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`


-}
receiveMessage :
    String
    -> (ReceiveMessageOptions -> ReceiveMessageOptions)
    -> AWS.Request ReceiveMessageResult
receiveMessage queueUrl setOptions =
  let
    options = setOptions (ReceiveMessageOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ReceiveMessage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        receiveMessageResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a receiveMessage request
-}
type alias ReceiveMessageOptions =
    { attributeNames : Maybe (List QueueAttributeName)
    , messageAttributeNames : Maybe (List String)
    , maxNumberOfMessages : Maybe Int
    , visibilityTimeout : Maybe Int
    , waitTimeSeconds : Maybe Int
    , receiveRequestAttemptId : Maybe String
    }



{-| <p>Revokes any permissions in the queue policy that matches the specified <code>Label</code> parameter. Only the owner of the queue can remove permissions.</p>

__Required Parameters__

* `queueUrl` __:__ `String`
* `label` __:__ `String`


-}
removePermission :
    String
    -> String
    -> AWS.Request ()
removePermission queueUrl label =
    AWS.Http.unsignedRequest
        "RemovePermission"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Delivers a message to the specified queue.</p> <important> <p>The following list shows the characters (in Unicode) that are allowed in your message, according to the W3C XML specification:</p> <ul> <li> <p> <code>#x9</code> </p> </li> <li> <p> <code>#xA</code> </p> </li> <li> <p> <code>#xD</code> </p> </li> <li> <p> <code>#x20</code> to <code>#xD7FF</code> </p> </li> <li> <p> <code>#xE000</code> to <code>#xFFFD</code> </p> </li> <li> <p> <code>#x10000</code> to <code>#x10FFFF</code> </p> </li> </ul> <p>For more information, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>. If you send any characters that aren't included in this list, your request is rejected.</p> </important>

__Required Parameters__

* `queueUrl` __:__ `String`
* `messageBody` __:__ `String`


-}
sendMessage :
    String
    -> String
    -> (SendMessageOptions -> SendMessageOptions)
    -> AWS.Request SendMessageResult
sendMessage queueUrl messageBody setOptions =
  let
    options = setOptions (SendMessageOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SendMessage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendMessageResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a sendMessage request
-}
type alias SendMessageOptions =
    { delaySeconds : Maybe Int
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    , messageDeduplicationId : Maybe String
    , messageGroupId : Maybe String
    }



{-| <p>Delivers up to ten messages to the specified queue. This is a batch version of <code> <a>SendMessage</a> </code>. For a FIFO queue, multiple messages within a single batch are enqueued in the order they are sent.</p> <p>The result of sending each message is reported individually in the response. Because the batch request can result in a combination of successful and unsuccessful actions, you should check for batch errors even when the call returns an HTTP status code of <code>200</code>.</p> <p>The maximum allowed individual message size and the maximum total payload size (the sum of the individual lengths of all of the batched messages) are both 256 KB (262,144 bytes).</p> <important> <p>The following list shows the characters (in Unicode) that are allowed in your message, according to the W3C XML specification:</p> <ul> <li> <p> <code>#x9</code> </p> </li> <li> <p> <code>#xA</code> </p> </li> <li> <p> <code>#xD</code> </p> </li> <li> <p> <code>#x20</code> to <code>#xD7FF</code> </p> </li> <li> <p> <code>#xE000</code> to <code>#xFFFD</code> </p> </li> <li> <p> <code>#x10000</code> to <code>#x10FFFF</code> </p> </li> </ul> <p>For more information, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>. If you send any characters that aren't included in this list, your request is rejected.</p> </important> <p>If you don't specify the <code>DelaySeconds</code> parameter for an entry, Amazon SQS uses the default value for the queue.</p> <note> <p>Some actions take lists of parameters. These lists are specified using the <code>param.n</code> notation. Values of <code>n</code> are integers starting from 1. For example, a parameter list with two elements looks like this:</p> <p> <code>&amp;Attribute.1=this</code> </p> <p> <code>&amp;Attribute.2=that</code> </p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `entries` __:__ `(List SendMessageBatchRequestEntry)`


-}
sendMessageBatch :
    String
    -> (List SendMessageBatchRequestEntry)
    -> AWS.Request SendMessageBatchResult
sendMessageBatch queueUrl entries =
    AWS.Http.unsignedRequest
        "SendMessageBatch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        sendMessageBatchResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets the value of one or more queue attributes. When you change a queue's attributes, the change can take up to 60 seconds for most of the attributes to propagate throughout the Amazon SQS system. Changes made to the <code>MessageRetentionPeriod</code> attribute can take up to 15 minutes.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note>

__Required Parameters__

* `queueUrl` __:__ `String`
* `attributes` __:__ `(Dict String String)`


-}
setQueueAttributes :
    String
    -> (Dict String String)
    -> AWS.Request ()
setQueueAttributes queueUrl attributes =
    AWS.Http.unsignedRequest
        "SetQueueAttributes"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest




{-| <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
-}
type alias BatchEntryIdsNotDistinct =
    { 
    }



batchEntryIdsNotDistinctDecoder : JD.Decoder BatchEntryIdsNotDistinct
batchEntryIdsNotDistinctDecoder =
    JDP.decode BatchEntryIdsNotDistinct



{-| <p>The length of all the messages put together is more than the limit.</p>
-}
type alias BatchRequestTooLong =
    { 
    }



batchRequestTooLongDecoder : JD.Decoder BatchRequestTooLong
batchRequestTooLongDecoder =
    JDP.decode BatchRequestTooLong



{-| <p>This is used in the responses of batch API to give a detailed description of the result of an action on each entry in the request.</p>
-}
type alias BatchResultErrorEntry =
    { id : String
    , senderFault : Bool
    , code : String
    , message : Maybe String
    }



batchResultErrorEntryDecoder : JD.Decoder BatchResultErrorEntry
batchResultErrorEntryDecoder =
    JDP.decode BatchResultErrorEntry
        |> JDP.required "id" JD.string
        |> JDP.required "senderFault" JD.bool
        |> JDP.required "code" JD.string
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a> </code>.</p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=&lt;replaceable&gt;Your_Receipt_Handle&lt;/replaceable&gt;</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>
-}
type alias ChangeMessageVisibilityBatchRequestEntry =
    { id : String
    , receiptHandle : String
    , visibilityTimeout : Maybe Int
    }



changeMessageVisibilityBatchRequestEntryDecoder : JD.Decoder ChangeMessageVisibilityBatchRequestEntry
changeMessageVisibilityBatchRequestEntryDecoder =
    JDP.decode ChangeMessageVisibilityBatchRequestEntry
        |> JDP.required "id" JD.string
        |> JDP.required "receiptHandle" JD.string
        |> JDP.optional "visibilityTimeout" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from changeMessageVisibilityBat
-}
type alias ChangeMessageVisibilityBatchResult =
    { successful : (List ChangeMessageVisibilityBatchResultEntry)
    , failed : (List BatchResultErrorEntry)
    }



changeMessageVisibilityBatchResultDecoder : JD.Decoder ChangeMessageVisibilityBatchResult
changeMessageVisibilityBatchResultDecoder =
    JDP.decode ChangeMessageVisibilityBatchResult
        |> JDP.required "successful" (JD.list changeMessageVisibilityBatchResultEntryDecoder)
        |> JDP.required "failed" (JD.list batchResultErrorEntryDecoder)




{-| <p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a> </code>.</p>
-}
type alias ChangeMessageVisibilityBatchResultEntry =
    { id : String
    }



changeMessageVisibilityBatchResultEntryDecoder : JD.Decoder ChangeMessageVisibilityBatchResultEntry
changeMessageVisibilityBatchResultEntryDecoder =
    JDP.decode ChangeMessageVisibilityBatchResultEntry
        |> JDP.required "id" JD.string




{-| Type of HTTP response from createQue
-}
type alias CreateQueueResult =
    { queueUrl : Maybe String
    }



createQueueResultDecoder : JD.Decoder CreateQueueResult
createQueueResultDecoder =
    JDP.decode CreateQueueResult
        |> JDP.optional "queueUrl" (JD.nullable JD.string) Nothing




{-| <p>Encloses a receipt handle and an identifier for it.</p>
-}
type alias DeleteMessageBatchRequestEntry =
    { id : String
    , receiptHandle : String
    }



deleteMessageBatchRequestEntryDecoder : JD.Decoder DeleteMessageBatchRequestEntry
deleteMessageBatchRequestEntryDecoder =
    JDP.decode DeleteMessageBatchRequestEntry
        |> JDP.required "id" JD.string
        |> JDP.required "receiptHandle" JD.string




{-| Type of HTTP response from deleteMessageBat
-}
type alias DeleteMessageBatchResult =
    { successful : (List DeleteMessageBatchResultEntry)
    , failed : (List BatchResultErrorEntry)
    }



deleteMessageBatchResultDecoder : JD.Decoder DeleteMessageBatchResult
deleteMessageBatchResultDecoder =
    JDP.decode DeleteMessageBatchResult
        |> JDP.required "successful" (JD.list deleteMessageBatchResultEntryDecoder)
        |> JDP.required "failed" (JD.list batchResultErrorEntryDecoder)




{-| <p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a> </code>.</p>
-}
type alias DeleteMessageBatchResultEntry =
    { id : String
    }



deleteMessageBatchResultEntryDecoder : JD.Decoder DeleteMessageBatchResultEntry
deleteMessageBatchResultEntryDecoder =
    JDP.decode DeleteMessageBatchResultEntry
        |> JDP.required "id" JD.string




{-| <p>The batch request doesn't contain any entries.</p>
-}
type alias EmptyBatchRequest =
    { 
    }



emptyBatchRequestDecoder : JD.Decoder EmptyBatchRequest
emptyBatchRequestDecoder =
    JDP.decode EmptyBatchRequest



{-| Type of HTTP response from getQueueAttribut
-}
type alias GetQueueAttributesResult =
    { attributes : Maybe (Dict String String)
    }



getQueueAttributesResultDecoder : JD.Decoder GetQueueAttributesResult
getQueueAttributesResultDecoder =
    JDP.decode GetQueueAttributesResult
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from getQueueU
-}
type alias GetQueueUrlResult =
    { queueUrl : Maybe String
    }



getQueueUrlResultDecoder : JD.Decoder GetQueueUrlResult
getQueueUrlResultDecoder =
    JDP.decode GetQueueUrlResult
        |> JDP.optional "queueUrl" (JD.nullable JD.string) Nothing




{-| <p>The attribute referred to doesn't exist.</p>
-}
type alias InvalidAttributeName =
    { 
    }



invalidAttributeNameDecoder : JD.Decoder InvalidAttributeName
invalidAttributeNameDecoder =
    JDP.decode InvalidAttributeName



{-| <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification.</p>
-}
type alias InvalidBatchEntryId =
    { 
    }



invalidBatchEntryIdDecoder : JD.Decoder InvalidBatchEntryId
invalidBatchEntryIdDecoder =
    JDP.decode InvalidBatchEntryId



{-| <p>The receipt handle isn't valid for the current version.</p>
-}
type alias InvalidIdFormat =
    { 
    }



invalidIdFormatDecoder : JD.Decoder InvalidIdFormat
invalidIdFormatDecoder =
    JDP.decode InvalidIdFormat



{-| <p>The message contains characters outside the allowed set.</p>
-}
type alias InvalidMessageContents =
    { 
    }



invalidMessageContentsDecoder : JD.Decoder InvalidMessageContents
invalidMessageContentsDecoder =
    JDP.decode InvalidMessageContents



{-| Type of HTTP response from listDeadLetterSourceQueu
-}
type alias ListDeadLetterSourceQueuesResult =
    { queueUrls : (List String)
    }



listDeadLetterSourceQueuesResultDecoder : JD.Decoder ListDeadLetterSourceQueuesResult
listDeadLetterSourceQueuesResultDecoder =
    JDP.decode ListDeadLetterSourceQueuesResult
        |> JDP.required "queueUrls" (JD.list JD.string)




{-| Type of HTTP response from listQueu
-}
type alias ListQueuesResult =
    { queueUrls : Maybe (List String)
    }



listQueuesResultDecoder : JD.Decoder ListQueuesResult
listQueuesResultDecoder =
    JDP.decode ListQueuesResult
        |> JDP.optional "queueUrls" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>An Amazon SQS message.</p>
-}
type alias Message =
    { messageId : Maybe String
    , receiptHandle : Maybe String
    , mD5OfBody : Maybe String
    , body : Maybe String
    , attributes : Maybe (Dict String String)
    , mD5OfMessageAttributes : Maybe String
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    }



messageDecoder : JD.Decoder Message
messageDecoder =
    JDP.decode Message
        |> JDP.optional "messageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "receiptHandle" (JD.nullable JD.string) Nothing
        |> JDP.optional "mD5OfBody" (JD.nullable JD.string) Nothing
        |> JDP.optional "body" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "mD5OfMessageAttributes" (JD.nullable JD.string) Nothing
        |> JDP.optional "messageAttributes" (JD.nullable (JD.dict messageAttributeValueDecoder)) Nothing




{-| <p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a> </code>.</p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>
-}
type alias MessageAttributeValue =
    { stringValue : Maybe String
    , binaryValue : Maybe String
    , stringListValues : Maybe (List String)
    , binaryListValues : Maybe (List String)
    , dataType : String
    }



messageAttributeValueDecoder : JD.Decoder MessageAttributeValue
messageAttributeValueDecoder =
    JDP.decode MessageAttributeValue
        |> JDP.optional "stringValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "binaryValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "stringListValues" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "binaryListValues" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.required "dataType" JD.string




{-| <p>The message referred to isn't in flight.</p>
-}
type alias MessageNotInflight =
    { 
    }



messageNotInflightDecoder : JD.Decoder MessageNotInflight
messageNotInflightDecoder =
    JDP.decode MessageNotInflight



{-| One of

* `MessageSystemAttributeName_SenderId`
* `MessageSystemAttributeName_SentTimestamp`
* `MessageSystemAttributeName_ApproximateReceiveCount`
* `MessageSystemAttributeName_ApproximateFirstReceiveTimestamp`
* `MessageSystemAttributeName_SequenceNumber`
* `MessageSystemAttributeName_MessageDeduplicationId`
* `MessageSystemAttributeName_MessageGroupId`

-}
type MessageSystemAttributeName
    = MessageSystemAttributeName_SenderId
    | MessageSystemAttributeName_SentTimestamp
    | MessageSystemAttributeName_ApproximateReceiveCount
    | MessageSystemAttributeName_ApproximateFirstReceiveTimestamp
    | MessageSystemAttributeName_SequenceNumber
    | MessageSystemAttributeName_MessageDeduplicationId
    | MessageSystemAttributeName_MessageGroupId



messageSystemAttributeNameDecoder : JD.Decoder MessageSystemAttributeName
messageSystemAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SenderId" ->
                        JD.succeed MessageSystemAttributeName_SenderId

                    "SentTimestamp" ->
                        JD.succeed MessageSystemAttributeName_SentTimestamp

                    "ApproximateReceiveCount" ->
                        JD.succeed MessageSystemAttributeName_ApproximateReceiveCount

                    "ApproximateFirstReceiveTimestamp" ->
                        JD.succeed MessageSystemAttributeName_ApproximateFirstReceiveTimestamp

                    "SequenceNumber" ->
                        JD.succeed MessageSystemAttributeName_SequenceNumber

                    "MessageDeduplicationId" ->
                        JD.succeed MessageSystemAttributeName_MessageDeduplicationId

                    "MessageGroupId" ->
                        JD.succeed MessageSystemAttributeName_MessageGroupId


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The action that you requested would violate a limit. For example, <code>ReceiveMessage</code> returns this error if the maximum number of inflight messages is reached. <code> <a>AddPermission</a> </code> returns this error if the maximum number of permissions for the queue is reached.</p>
-}
type alias OverLimit =
    { 
    }



overLimitDecoder : JD.Decoder OverLimit
overLimitDecoder =
    JDP.decode OverLimit



{-| <p>Indicates that the specified queue previously received a <code>PurgeQueue</code> request within the last 60 seconds (the time it can take to delete the messages in the queue).</p>
-}
type alias PurgeQueueInProgress =
    { 
    }



purgeQueueInProgressDecoder : JD.Decoder PurgeQueueInProgress
purgeQueueInProgressDecoder =
    JDP.decode PurgeQueueInProgress



{-| One of

* `QueueAttributeName_All`
* `QueueAttributeName_Policy`
* `QueueAttributeName_VisibilityTimeout`
* `QueueAttributeName_MaximumMessageSize`
* `QueueAttributeName_MessageRetentionPeriod`
* `QueueAttributeName_ApproximateNumberOfMessages`
* `QueueAttributeName_ApproximateNumberOfMessagesNotVisible`
* `QueueAttributeName_CreatedTimestamp`
* `QueueAttributeName_LastModifiedTimestamp`
* `QueueAttributeName_QueueArn`
* `QueueAttributeName_ApproximateNumberOfMessagesDelayed`
* `QueueAttributeName_DelaySeconds`
* `QueueAttributeName_ReceiveMessageWaitTimeSeconds`
* `QueueAttributeName_RedrivePolicy`
* `QueueAttributeName_FifoQueue`
* `QueueAttributeName_ContentBasedDeduplication`

-}
type QueueAttributeName
    = QueueAttributeName_All
    | QueueAttributeName_Policy
    | QueueAttributeName_VisibilityTimeout
    | QueueAttributeName_MaximumMessageSize
    | QueueAttributeName_MessageRetentionPeriod
    | QueueAttributeName_ApproximateNumberOfMessages
    | QueueAttributeName_ApproximateNumberOfMessagesNotVisible
    | QueueAttributeName_CreatedTimestamp
    | QueueAttributeName_LastModifiedTimestamp
    | QueueAttributeName_QueueArn
    | QueueAttributeName_ApproximateNumberOfMessagesDelayed
    | QueueAttributeName_DelaySeconds
    | QueueAttributeName_ReceiveMessageWaitTimeSeconds
    | QueueAttributeName_RedrivePolicy
    | QueueAttributeName_FifoQueue
    | QueueAttributeName_ContentBasedDeduplication



queueAttributeNameDecoder : JD.Decoder QueueAttributeName
queueAttributeNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "All" ->
                        JD.succeed QueueAttributeName_All

                    "Policy" ->
                        JD.succeed QueueAttributeName_Policy

                    "VisibilityTimeout" ->
                        JD.succeed QueueAttributeName_VisibilityTimeout

                    "MaximumMessageSize" ->
                        JD.succeed QueueAttributeName_MaximumMessageSize

                    "MessageRetentionPeriod" ->
                        JD.succeed QueueAttributeName_MessageRetentionPeriod

                    "ApproximateNumberOfMessages" ->
                        JD.succeed QueueAttributeName_ApproximateNumberOfMessages

                    "ApproximateNumberOfMessagesNotVisible" ->
                        JD.succeed QueueAttributeName_ApproximateNumberOfMessagesNotVisible

                    "CreatedTimestamp" ->
                        JD.succeed QueueAttributeName_CreatedTimestamp

                    "LastModifiedTimestamp" ->
                        JD.succeed QueueAttributeName_LastModifiedTimestamp

                    "QueueArn" ->
                        JD.succeed QueueAttributeName_QueueArn

                    "ApproximateNumberOfMessagesDelayed" ->
                        JD.succeed QueueAttributeName_ApproximateNumberOfMessagesDelayed

                    "DelaySeconds" ->
                        JD.succeed QueueAttributeName_DelaySeconds

                    "ReceiveMessageWaitTimeSeconds" ->
                        JD.succeed QueueAttributeName_ReceiveMessageWaitTimeSeconds

                    "RedrivePolicy" ->
                        JD.succeed QueueAttributeName_RedrivePolicy

                    "FifoQueue" ->
                        JD.succeed QueueAttributeName_FifoQueue

                    "ContentBasedDeduplication" ->
                        JD.succeed QueueAttributeName_ContentBasedDeduplication


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>You must wait 60 seconds after deleting a queue before you can create another one with the same name.</p>
-}
type alias QueueDeletedRecently =
    { 
    }



queueDeletedRecentlyDecoder : JD.Decoder QueueDeletedRecently
queueDeletedRecentlyDecoder =
    JDP.decode QueueDeletedRecently



{-| <p>The queue referred to doesn't exist.</p>
-}
type alias QueueDoesNotExist =
    { 
    }



queueDoesNotExistDecoder : JD.Decoder QueueDoesNotExist
queueDoesNotExistDecoder =
    JDP.decode QueueDoesNotExist



{-| <p>A queue already exists with this name. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.</p>
-}
type alias QueueNameExists =
    { 
    }



queueNameExistsDecoder : JD.Decoder QueueNameExists
queueNameExistsDecoder =
    JDP.decode QueueNameExists



{-| <p>The receipt handle provided isn't valid.</p>
-}
type alias ReceiptHandleIsInvalid =
    { 
    }



receiptHandleIsInvalidDecoder : JD.Decoder ReceiptHandleIsInvalid
receiptHandleIsInvalidDecoder =
    JDP.decode ReceiptHandleIsInvalid



{-| Type of HTTP response from receiveMessa
-}
type alias ReceiveMessageResult =
    { messages : Maybe (List Message)
    }



receiveMessageResultDecoder : JD.Decoder ReceiveMessageResult
receiveMessageResultDecoder =
    JDP.decode ReceiveMessageResult
        |> JDP.optional "messages" (JD.nullable (JD.list messageDecoder)) Nothing




{-| <p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>
-}
type alias SendMessageBatchRequestEntry =
    { id : String
    , messageBody : String
    , delaySeconds : Maybe Int
    , messageAttributes : Maybe (Dict String MessageAttributeValue)
    , messageDeduplicationId : Maybe String
    , messageGroupId : Maybe String
    }



sendMessageBatchRequestEntryDecoder : JD.Decoder SendMessageBatchRequestEntry
sendMessageBatchRequestEntryDecoder =
    JDP.decode SendMessageBatchRequestEntry
        |> JDP.required "id" JD.string
        |> JDP.required "messageBody" JD.string
        |> JDP.optional "delaySeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "messageAttributes" (JD.nullable (JD.dict messageAttributeValueDecoder)) Nothing
        |> JDP.optional "messageDeduplicationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "messageGroupId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from sendMessageBat
-}
type alias SendMessageBatchResult =
    { successful : (List SendMessageBatchResultEntry)
    , failed : (List BatchResultErrorEntry)
    }



sendMessageBatchResultDecoder : JD.Decoder SendMessageBatchResult
sendMessageBatchResultDecoder =
    JDP.decode SendMessageBatchResult
        |> JDP.required "successful" (JD.list sendMessageBatchResultEntryDecoder)
        |> JDP.required "failed" (JD.list batchResultErrorEntryDecoder)




{-| <p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a> </code>.</p>
-}
type alias SendMessageBatchResultEntry =
    { id : String
    , messageId : String
    , mD5OfMessageBody : String
    , mD5OfMessageAttributes : Maybe String
    , sequenceNumber : Maybe String
    }



sendMessageBatchResultEntryDecoder : JD.Decoder SendMessageBatchResultEntry
sendMessageBatchResultEntryDecoder =
    JDP.decode SendMessageBatchResultEntry
        |> JDP.required "id" JD.string
        |> JDP.required "messageId" JD.string
        |> JDP.required "mD5OfMessageBody" JD.string
        |> JDP.optional "mD5OfMessageAttributes" (JD.nullable JD.string) Nothing
        |> JDP.optional "sequenceNumber" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from sendMessa
-}
type alias SendMessageResult =
    { mD5OfMessageBody : Maybe String
    , mD5OfMessageAttributes : Maybe String
    , messageId : Maybe String
    , sequenceNumber : Maybe String
    }



sendMessageResultDecoder : JD.Decoder SendMessageResult
sendMessageResultDecoder =
    JDP.decode SendMessageResult
        |> JDP.optional "mD5OfMessageBody" (JD.nullable JD.string) Nothing
        |> JDP.optional "mD5OfMessageAttributes" (JD.nullable JD.string) Nothing
        |> JDP.optional "messageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "sequenceNumber" (JD.nullable JD.string) Nothing




{-| <p>The batch request contains more entries than permissible.</p>
-}
type alias TooManyEntriesInBatchRequest =
    { 
    }



tooManyEntriesInBatchRequestDecoder : JD.Decoder TooManyEntriesInBatchRequest
tooManyEntriesInBatchRequestDecoder =
    JDP.decode TooManyEntriesInBatchRequest



{-| <p>Error code 400. Unsupported operation.</p>
-}
type alias UnsupportedOperation =
    { 
    }



unsupportedOperationDecoder : JD.Decoder UnsupportedOperation
unsupportedOperationDecoder =
    JDP.decode UnsupportedOperation



