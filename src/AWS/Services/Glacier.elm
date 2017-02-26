module AWS.Services.Glacier
    exposing
        ( config
        , abortMultipartUpload
        , abortVaultLock
        , addTagsToVault
        , AddTagsToVaultOptions
        , completeMultipartUpload
        , CompleteMultipartUploadOptions
        , completeVaultLock
        , createVault
        , deleteArchive
        , deleteVault
        , deleteVaultAccessPolicy
        , deleteVaultNotifications
        , describeJob
        , describeVault
        , getDataRetrievalPolicy
        , getJobOutput
        , GetJobOutputOptions
        , getVaultAccessPolicy
        , getVaultLock
        , getVaultNotifications
        , initiateJob
        , InitiateJobOptions
        , initiateMultipartUpload
        , InitiateMultipartUploadOptions
        , initiateVaultLock
        , InitiateVaultLockOptions
        , listJobs
        , ListJobsOptions
        , listMultipartUploads
        , ListMultipartUploadsOptions
        , listParts
        , ListPartsOptions
        , listProvisionedCapacity
        , listTagsForVault
        , listVaults
        , ListVaultsOptions
        , purchaseProvisionedCapacity
        , removeTagsFromVault
        , RemoveTagsFromVaultOptions
        , setDataRetrievalPolicy
        , SetDataRetrievalPolicyOptions
        , setVaultAccessPolicy
        , SetVaultAccessPolicyOptions
        , setVaultNotifications
        , SetVaultNotificationsOptions
        , uploadArchive
        , UploadArchiveOptions
        , uploadMultipartPart
        , UploadMultipartPartOptions
        , ActionCode(..)
        , ArchiveCreationOutput
        , CreateVaultOutput
        , DataRetrievalPolicy
        , DataRetrievalRule
        , DescribeVaultOutput
        , GetDataRetrievalPolicyOutput
        , GetJobOutputOutput
        , GetVaultAccessPolicyOutput
        , GetVaultLockOutput
        , GetVaultNotificationsOutput
        , GlacierJobDescription
        , InitiateJobOutput
        , InitiateMultipartUploadOutput
        , InitiateVaultLockOutput
        , InsufficientCapacityException
        , InvalidParameterValueException
        , InventoryRetrievalJobDescription
        , InventoryRetrievalJobInput
        , JobParameters
        , LimitExceededException
        , ListJobsOutput
        , ListMultipartUploadsOutput
        , ListPartsOutput
        , ListProvisionedCapacityOutput
        , ListTagsForVaultOutput
        , ListVaultsOutput
        , MissingParameterValueException
        , PartListElement
        , PolicyEnforcedException
        , ProvisionedCapacityDescription
        , PurchaseProvisionedCapacityOutput
        , RequestTimeoutException
        , ResourceNotFoundException
        , ServiceUnavailableException
        , StatusCode(..)
        , UploadListElement
        , UploadMultipartPartOutput
        , VaultAccessPolicy
        , VaultLockPolicy
        , VaultNotificationConfig
        )

{-| <p>Amazon Glacier is a storage solution for "cold data."</p> <p>Amazon Glacier is an extremely low-cost storage service that provides secure, durable, and easy-to-use storage for data backup and archival. With Amazon Glacier, customers can store their data cost effectively for months, years, or decades. Amazon Glacier also enables customers to offload the administrative burdens of operating and scaling storage to AWS, so they don't have to worry about capacity planning, hardware provisioning, data replication, hardware failure and recovery, or time-consuming hardware migrations.</p> <p>Amazon Glacier is a great storage choice when low storage cost is paramount, your data is rarely retrieved, and retrieval latency of several hours is acceptable. If your application requires fast or frequent access to your data, consider using Amazon S3. For more information, see <a href="http://aws.amazon.com/s3/">Amazon Simple Storage Service (Amazon S3)</a>.</p> <p>You can store any kind of data in any format. There is no maximum limit on the total amount of data you can store in Amazon Glacier.</p> <p>If you are a first-time user of Amazon Glacier, we recommend that you begin by reading the following sections in the <i>Amazon Glacier Developer Guide</i>:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html">What is Amazon Glacier</a> - This section of the Developer Guide describes the underlying data model, the operations it supports, and the AWS SDKs that you can use to interact with the service.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html">Getting Started with Amazon Glacier</a> - The Getting Started section walks you through the process of creating a vault, uploading archives, creating jobs to download archives, retrieving the job output, and deleting archives.</p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [abortMultipartUpload](#abortMultipartUpload)
* [abortVaultLock](#abortVaultLock)
* [addTagsToVault](#addTagsToVault)
* [AddTagsToVaultOptions](#AddTagsToVaultOptions)
* [completeMultipartUpload](#completeMultipartUpload)
* [CompleteMultipartUploadOptions](#CompleteMultipartUploadOptions)
* [completeVaultLock](#completeVaultLock)
* [createVault](#createVault)
* [deleteArchive](#deleteArchive)
* [deleteVault](#deleteVault)
* [deleteVaultAccessPolicy](#deleteVaultAccessPolicy)
* [deleteVaultNotifications](#deleteVaultNotifications)
* [describeJob](#describeJob)
* [describeVault](#describeVault)
* [getDataRetrievalPolicy](#getDataRetrievalPolicy)
* [getJobOutput](#getJobOutput)
* [GetJobOutputOptions](#GetJobOutputOptions)
* [getVaultAccessPolicy](#getVaultAccessPolicy)
* [getVaultLock](#getVaultLock)
* [getVaultNotifications](#getVaultNotifications)
* [initiateJob](#initiateJob)
* [InitiateJobOptions](#InitiateJobOptions)
* [initiateMultipartUpload](#initiateMultipartUpload)
* [InitiateMultipartUploadOptions](#InitiateMultipartUploadOptions)
* [initiateVaultLock](#initiateVaultLock)
* [InitiateVaultLockOptions](#InitiateVaultLockOptions)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [listMultipartUploads](#listMultipartUploads)
* [ListMultipartUploadsOptions](#ListMultipartUploadsOptions)
* [listParts](#listParts)
* [ListPartsOptions](#ListPartsOptions)
* [listProvisionedCapacity](#listProvisionedCapacity)
* [listTagsForVault](#listTagsForVault)
* [listVaults](#listVaults)
* [ListVaultsOptions](#ListVaultsOptions)
* [purchaseProvisionedCapacity](#purchaseProvisionedCapacity)
* [removeTagsFromVault](#removeTagsFromVault)
* [RemoveTagsFromVaultOptions](#RemoveTagsFromVaultOptions)
* [setDataRetrievalPolicy](#setDataRetrievalPolicy)
* [SetDataRetrievalPolicyOptions](#SetDataRetrievalPolicyOptions)
* [setVaultAccessPolicy](#setVaultAccessPolicy)
* [SetVaultAccessPolicyOptions](#SetVaultAccessPolicyOptions)
* [setVaultNotifications](#setVaultNotifications)
* [SetVaultNotificationsOptions](#SetVaultNotificationsOptions)
* [uploadArchive](#uploadArchive)
* [UploadArchiveOptions](#UploadArchiveOptions)
* [uploadMultipartPart](#uploadMultipartPart)
* [UploadMultipartPartOptions](#UploadMultipartPartOptions)


@docs abortMultipartUpload,abortVaultLock,addTagsToVault,AddTagsToVaultOptions,completeMultipartUpload,CompleteMultipartUploadOptions,completeVaultLock,createVault,deleteArchive,deleteVault,deleteVaultAccessPolicy,deleteVaultNotifications,describeJob,describeVault,getDataRetrievalPolicy,getJobOutput,GetJobOutputOptions,getVaultAccessPolicy,getVaultLock,getVaultNotifications,initiateJob,InitiateJobOptions,initiateMultipartUpload,InitiateMultipartUploadOptions,initiateVaultLock,InitiateVaultLockOptions,listJobs,ListJobsOptions,listMultipartUploads,ListMultipartUploadsOptions,listParts,ListPartsOptions,listProvisionedCapacity,listTagsForVault,listVaults,ListVaultsOptions,purchaseProvisionedCapacity,removeTagsFromVault,RemoveTagsFromVaultOptions,setDataRetrievalPolicy,SetDataRetrievalPolicyOptions,setVaultAccessPolicy,SetVaultAccessPolicyOptions,setVaultNotifications,SetVaultNotificationsOptions,uploadArchive,UploadArchiveOptions,uploadMultipartPart,UploadMultipartPartOptions

## Responses

* [ArchiveCreationOutput](#ArchiveCreationOutput)
* [CreateVaultOutput](#CreateVaultOutput)
* [DescribeVaultOutput](#DescribeVaultOutput)
* [GetDataRetrievalPolicyOutput](#GetDataRetrievalPolicyOutput)
* [GetJobOutputOutput](#GetJobOutputOutput)
* [GetVaultAccessPolicyOutput](#GetVaultAccessPolicyOutput)
* [GetVaultLockOutput](#GetVaultLockOutput)
* [GetVaultNotificationsOutput](#GetVaultNotificationsOutput)
* [GlacierJobDescription](#GlacierJobDescription)
* [InitiateJobOutput](#InitiateJobOutput)
* [InitiateMultipartUploadOutput](#InitiateMultipartUploadOutput)
* [InitiateVaultLockOutput](#InitiateVaultLockOutput)
* [ListJobsOutput](#ListJobsOutput)
* [ListMultipartUploadsOutput](#ListMultipartUploadsOutput)
* [ListPartsOutput](#ListPartsOutput)
* [ListProvisionedCapacityOutput](#ListProvisionedCapacityOutput)
* [ListTagsForVaultOutput](#ListTagsForVaultOutput)
* [ListVaultsOutput](#ListVaultsOutput)
* [PurchaseProvisionedCapacityOutput](#PurchaseProvisionedCapacityOutput)
* [UploadMultipartPartOutput](#UploadMultipartPartOutput)


@docs ArchiveCreationOutput,CreateVaultOutput,DescribeVaultOutput,GetDataRetrievalPolicyOutput,GetJobOutputOutput,GetVaultAccessPolicyOutput,GetVaultLockOutput,GetVaultNotificationsOutput,GlacierJobDescription,InitiateJobOutput,InitiateMultipartUploadOutput,InitiateVaultLockOutput,ListJobsOutput,ListMultipartUploadsOutput,ListPartsOutput,ListProvisionedCapacityOutput,ListTagsForVaultOutput,ListVaultsOutput,PurchaseProvisionedCapacityOutput,UploadMultipartPartOutput

## Records

* [DataRetrievalPolicy](#DataRetrievalPolicy)
* [DataRetrievalRule](#DataRetrievalRule)
* [InventoryRetrievalJobDescription](#InventoryRetrievalJobDescription)
* [InventoryRetrievalJobInput](#InventoryRetrievalJobInput)
* [JobParameters](#JobParameters)
* [PartListElement](#PartListElement)
* [ProvisionedCapacityDescription](#ProvisionedCapacityDescription)
* [UploadListElement](#UploadListElement)
* [VaultAccessPolicy](#VaultAccessPolicy)
* [VaultLockPolicy](#VaultLockPolicy)
* [VaultNotificationConfig](#VaultNotificationConfig)


@docs DataRetrievalPolicy,DataRetrievalRule,InventoryRetrievalJobDescription,InventoryRetrievalJobInput,JobParameters,PartListElement,ProvisionedCapacityDescription,UploadListElement,VaultAccessPolicy,VaultLockPolicy,VaultNotificationConfig

## Unions

* [ActionCode](#ActionCode)
* [StatusCode](#StatusCode)


@docs ActionCode,StatusCode

## Exceptions

* [InsufficientCapacityException](#InsufficientCapacityException)
* [InvalidParameterValueException](#InvalidParameterValueException)
* [LimitExceededException](#LimitExceededException)
* [MissingParameterValueException](#MissingParameterValueException)
* [PolicyEnforcedException](#PolicyEnforcedException)
* [RequestTimeoutException](#RequestTimeoutException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ServiceUnavailableException](#ServiceUnavailableException)


@docs InsufficientCapacityException,InvalidParameterValueException,LimitExceededException,MissingParameterValueException,PolicyEnforcedException,RequestTimeoutException,ResourceNotFoundException,ServiceUnavailableException

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
        "glacier"
        "2012-06-01"
        "undefined"
        "AWSGLACIER_20120601."
        "glacier.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>This operation aborts a multipart upload identified by the upload ID.</p> <p>After the Abort Multipart Upload request succeeds, you cannot upload any more parts to the multipart upload or complete the multipart upload. Aborting a completed upload fails. However, aborting an already-aborted upload will succeed, for a short time. For more information about uploading a part and completing a multipart upload, see <a>UploadMultipartPart</a> and <a>CompleteMultipartUpload</a>.</p> <p>This operation is idempotent.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html">Abort Multipart Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `uploadId` __:__ `String`


-}
abortMultipartUpload :
    String
    -> String
    -> String
    -> AWS.Request ()
abortMultipartUpload accountId vaultName uploadId =
    AWS.Http.unsignedRequest
        "AbortMultipartUpload"
        "DELETE"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/multipart-uploads/" ++ uploadId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>This operation aborts the vault locking process if the vault lock is not in the <code>Locked</code> state. If the vault lock is in the <code>Locked</code> state when this operation is requested, the operation returns an <code>AccessDeniedException</code> error. Aborting the vault locking process removes the vault lock policy from the specified vault. </p> <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by calling <a>CompleteVaultLock</a>. You can get the state of a vault lock by calling <a>GetVaultLock</a>. For more information about the vault locking process, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>. For more information about vault lock policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon Glacier Access Control with Vault Lock Policies</a>. </p> <p>This operation is idempotent. You can successfully invoke this operation multiple times, if the vault lock is in the <code>InProgress</code> state or if there is no policy associated with the vault.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
abortVaultLock :
    String
    -> String
    -> AWS.Request ()
abortVaultLock accountId vaultName =
    AWS.Http.unsignedRequest
        "AbortVaultLock"
        "DELETE"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/lock-policy")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>This operation adds the specified tags to a vault. Each tag is composed of a key and a value. Each vault can have up to 10 tags. If your request would cause the tag limit for the vault to be exceeded, the operation throws the <code>LimitExceededException</code> error. If a tag already exists on the vault under a specified key, the existing key value will be overwritten. For more information about tags, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon Glacier Resources</a>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
addTagsToVault :
    String
    -> String
    -> (AddTagsToVaultOptions -> AddTagsToVaultOptions)
    -> AWS.Request ()
addTagsToVault accountId vaultName setOptions =
  let
    options = setOptions (AddTagsToVaultOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AddTagsToVault"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/tags?operation=add")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a addTagsToVault request
-}
type alias AddTagsToVaultOptions =
    { tags : Maybe (Dict String String)
    }



{-| <p>You call this operation to inform Amazon Glacier that all the archive parts have been uploaded and that Amazon Glacier can now assemble the archive from the uploaded parts. After assembling and saving the archive to the vault, Amazon Glacier returns the URI path of the newly created archive resource. Using the URI path, you can then access the archive. After you upload an archive, you should save the archive ID returned to retrieve the archive at a later point. You can also get the vault inventory to obtain a list of archive IDs in a vault. For more information, see <a>InitiateJob</a>.</p> <p>In the request, you must include the computed SHA256 tree hash of the entire archive you have uploaded. For information about computing a SHA256 tree hash, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing Checksums</a>. On the server side, Amazon Glacier also constructs the SHA256 tree hash of the assembled archive. If the values match, Amazon Glacier saves the archive to the vault; otherwise, it returns an error, and the operation fails. The <a>ListParts</a> operation returns a list of parts uploaded for a specific multipart upload. It includes checksum information for each uploaded part that can be used to debug a bad checksum issue.</p> <p>Additionally, Amazon Glacier also checks for any missing content ranges when assembling the archive, if missing content ranges are found, Amazon Glacier returns an error and the operation fails.</p> <p>Complete Multipart Upload is an idempotent operation. After your first successful complete multipart upload, if you call the operation again within a short period, the operation will succeed and return the same archive ID. This is useful in the event you experience a network issue that causes an aborted connection or receive a 500 server error, in which case you can repeat your Complete Multipart Upload request and get the same archive ID without creating duplicate archives. Note, however, that after the multipart upload completes, you cannot call the List Parts operation and the multipart upload will not appear in List Multipart Uploads response, even if idempotent complete is possible.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in Parts (Multipart Upload)</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html">Complete Multipart Upload</a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `uploadId` __:__ `String`


-}
completeMultipartUpload :
    String
    -> String
    -> String
    -> (CompleteMultipartUploadOptions -> CompleteMultipartUploadOptions)
    -> AWS.Request ArchiveCreationOutput
completeMultipartUpload accountId vaultName uploadId setOptions =
  let
    options = setOptions (CompleteMultipartUploadOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CompleteMultipartUpload"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/multipart-uploads/" ++ uploadId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        archiveCreationOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a completeMultipartUpload request
-}
type alias CompleteMultipartUploadOptions =
    { archiveSize : Maybe String
    , checksum : Maybe String
    }



{-| <p>This operation completes the vault locking process by transitioning the vault lock from the <code>InProgress</code> state to the <code>Locked</code> state, which causes the vault lock policy to become unchangeable. A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. You can obtain the state of the vault lock by calling <a>GetVaultLock</a>. For more information about the vault locking process, <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>. </p> <p>This operation is idempotent. This request is always successful if the vault lock is in the <code>Locked</code> state and the provided lock ID matches the lock ID originally used to lock the vault.</p> <p>If an invalid lock ID is passed in the request when the vault lock is in the <code>Locked</code> state, the operation returns an <code>AccessDeniedException</code> error. If an invalid lock ID is passed in the request when the vault lock is in the <code>InProgress</code> state, the operation throws an <code>InvalidParameter</code> error.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `lockId` __:__ `String`


-}
completeVaultLock :
    String
    -> String
    -> String
    -> AWS.Request ()
completeVaultLock accountId vaultName lockId =
    AWS.Http.unsignedRequest
        "CompleteVaultLock"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/lock-policy/" ++ lockId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>This operation creates a new vault with the specified name. The name of the vault must be unique within a region for an AWS account. You can create up to 1,000 vaults per account. If you need to create more vaults, contact Amazon Glacier.</p> <p>You must use the following guidelines when naming a vault.</p> <ul> <li> <p>Names can be between 1 and 255 characters long.</p> </li> <li> <p>Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (hyphen), and '.' (period).</p> </li> </ul> <p>This operation is idempotent.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html">Creating a Vault in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html">Create Vault </a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
createVault :
    String
    -> String
    -> AWS.Request CreateVaultOutput
createVault accountId vaultName =
    AWS.Http.unsignedRequest
        "CreateVault"
        "PUT"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        createVaultOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation deletes an archive from a vault. Subsequent requests to initiate a retrieval of this archive will fail. Archive retrievals that are in progress for this archive ID may or may not succeed according to the following scenarios:</p> <ul> <li> <p>If the archive retrieval job is actively preparing the data for download when Amazon Glacier receives the delete archive request, the archival retrieval operation might fail.</p> </li> <li> <p>If the archive retrieval job has successfully prepared the archive for download when Amazon Glacier receives the delete archive request, you will be able to download the output.</p> </li> </ul> <p>This operation is idempotent. Attempting to delete an already-deleted archive does not result in an error.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html">Deleting an Archive in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html">Delete Archive</a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `archiveId` __:__ `String`


-}
deleteArchive :
    String
    -> String
    -> String
    -> AWS.Request ()
deleteArchive accountId vaultName archiveId =
    AWS.Http.unsignedRequest
        "DeleteArchive"
        "DELETE"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/archives/" ++ archiveId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>This operation deletes a vault. Amazon Glacier will delete a vault only if there are no archives in the vault as of the last inventory and there have been no writes to the vault since the last inventory. If either of these conditions is not satisfied, the vault deletion fails (that is, the vault is not removed) and Amazon Glacier returns an error. You can use <a>DescribeVault</a> to return the number of archives in a vault, and you can use <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html">Initiate a Job (POST jobs)</a> to initiate a new inventory retrieval for a vault. The inventory contains the archive IDs you use to delete archives using <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html">Delete Archive (DELETE archive)</a>.</p> <p>This operation is idempotent.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html">Deleting a Vault in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html">Delete Vault </a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
deleteVault :
    String
    -> String
    -> AWS.Request ()
deleteVault accountId vaultName =
    AWS.Http.unsignedRequest
        "DeleteVault"
        "DELETE"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>This operation deletes the access policy associated with the specified vault. The operation is eventually consistent; that is, it might take some time for Amazon Glacier to completely remove the access policy, and you might still see the effect of the policy for a short time after you send the delete request.</p> <p>This operation is idempotent. You can invoke delete multiple times, even if there is no policy associated with the vault. For more information about vault access policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control with Vault Access Policies</a>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
deleteVaultAccessPolicy :
    String
    -> String
    -> AWS.Request ()
deleteVaultAccessPolicy accountId vaultName =
    AWS.Http.unsignedRequest
        "DeleteVaultAccessPolicy"
        "DELETE"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/access-policy")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>This operation deletes the notification configuration set for a vault. The operation is eventually consistent; that is, it might take some time for Amazon Glacier to completely disable the notifications and you might still receive some notifications for a short time after you send the delete request.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault Notifications in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html">Delete Vault Notification Configuration </a> in the Amazon Glacier Developer Guide. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
deleteVaultNotifications :
    String
    -> String
    -> AWS.Request ()
deleteVaultNotifications accountId vaultName =
    AWS.Http.unsignedRequest
        "DeleteVaultNotifications"
        "DELETE"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/notification-configuration")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>This operation returns information about a job you previously initiated, including the job initiation date, the user who initiated the job, the job status code/message and the Amazon SNS topic to notify after Amazon Glacier completes the job. For more information about initiating a job, see <a>InitiateJob</a>. </p> <note> <p>This operation enables you to check the status of your job. However, it is strongly recommended that you set up an Amazon SNS topic and specify it in your initiate job request so that Amazon Glacier can notify the topic after it completes the job.</p> </note> <p>A job ID will not expire for at least 24 hours after Amazon Glacier completes the job.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For information about the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html">Working with Archives in Amazon Glacier</a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `jobId` __:__ `String`


-}
describeJob :
    String
    -> String
    -> String
    -> AWS.Request GlacierJobDescription
describeJob accountId vaultName jobId =
    AWS.Http.unsignedRequest
        "DescribeJob"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/jobs/" ++ jobId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        glacierJobDescriptionDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation returns information about a vault, including the vault's Amazon Resource Name (ARN), the date the vault was created, the number of archives it contains, and the total size of all the archives in the vault. The number of archives and their total size are as of the last inventory generation. This means that if you add or remove an archive from a vault, and then immediately use Describe Vault, the change in contents will not be immediately reflected. If you want to retrieve the latest inventory of the vault, use <a>InitiateJob</a>. Amazon Glacier generates vault inventories approximately daily. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html">Downloading a Vault Inventory in Amazon Glacier</a>. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html">Retrieving Vault Metadata in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html">Describe Vault </a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
describeVault :
    String
    -> String
    -> AWS.Request DescribeVaultOutput
describeVault accountId vaultName =
    AWS.Http.unsignedRequest
        "DescribeVault"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeVaultOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation returns the current data retrieval policy for the account and region specified in the GET request. For more information about data retrieval policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html">Amazon Glacier Data Retrieval Policies</a>.</p>

__Required Parameters__

* `accountId` __:__ `String`


-}
getDataRetrievalPolicy :
    String
    -> AWS.Request GetDataRetrievalPolicyOutput
getDataRetrievalPolicy accountId =
    AWS.Http.unsignedRequest
        "GetDataRetrievalPolicy"
        "GET"
        ("/" ++ accountId ++ "/policies/data-retrieval")
        (AWS.Http.QueryParams
            [
            ]
        )
        getDataRetrievalPolicyOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation downloads the output of the job you initiated using <a>InitiateJob</a>. Depending on the job type you specified when you initiated the job, the output will be either the content of an archive or a vault inventory.</p> <p>You can download all the job output or download a portion of the output by specifying a byte range. In the case of an archive retrieval job, depending on the byte range you specify, Amazon Glacier returns the checksum for the portion of the data. You can compute the checksum on the client and verify that the values match to ensure the portion you downloaded is the correct data.</p> <p>A job ID will not expire for at least 24 hours after Amazon Glacier completes the job. That a byte range. For both archive and inventory retrieval jobs, you should verify the downloaded size against the size returned in the headers from the <b>Get Job Output</b> response.</p> <p>For archive retrieval jobs, you should also verify that the size is what you expected. If you download a portion of the output, the expected size is based on the range of bytes you specified. For example, if you specify a range of <code>bytes=0-1048575</code>, you should verify your download size is 1,048,576 bytes. If you download an entire archive, the expected size is the size of the archive when you uploaded it to Amazon Glacier The expected size is also returned in the headers from the <b>Get Job Output</b> response.</p> <p>In the case of an archive retrieval job, depending on the byte range you specify, Amazon Glacier returns the checksum for the portion of the data. To ensure the portion you downloaded is the correct data, compute the checksum on the client, verify that the values match, and verify that the size is what you expected.</p> <p>A job ID does not expire for at least 24 hours after Amazon Glacier completes the job. That is, you can download the job output within the 24 hours period after Amazon Glacier completes the job.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html">Downloading a Vault Inventory</a>, <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html">Downloading an Archive</a>, and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html">Get Job Output </a> </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `jobId` __:__ `String`


-}
getJobOutput :
    String
    -> String
    -> String
    -> (GetJobOutputOptions -> GetJobOutputOptions)
    -> AWS.Request GetJobOutputOutput
getJobOutput accountId vaultName jobId setOptions =
  let
    options = setOptions (GetJobOutputOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetJobOutput"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/jobs/" ++ jobId ++ "/output")
        (AWS.Http.QueryParams
            [
            ]
        )
        getJobOutputOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getJobOutput request
-}
type alias GetJobOutputOptions =
    { range : Maybe String
    }



{-| <p>This operation retrieves the <code>access-policy</code> subresource set on the vault; for more information on setting this subresource, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html">Set Vault Access Policy (PUT access-policy)</a>. If there is no access policy set on the vault, the operation returns a <code>404 Not found</code> error. For more information about vault access policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control with Vault Access Policies</a>.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
getVaultAccessPolicy :
    String
    -> String
    -> AWS.Request GetVaultAccessPolicyOutput
getVaultAccessPolicy accountId vaultName =
    AWS.Http.unsignedRequest
        "GetVaultAccessPolicy"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/access-policy")
        (AWS.Http.QueryParams
            [
            ]
        )
        getVaultAccessPolicyOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation retrieves the following attributes from the <code>lock-policy</code> subresource set on the specified vault: </p> <ul> <li> <p>The vault lock policy set on the vault.</p> </li> <li> <p>The state of the vault lock, which is either <code>InProgess</code> or <code>Locked</code>.</p> </li> <li> <p>When the lock ID expires. The lock ID is used to complete the vault locking process.</p> </li> <li> <p>When the vault lock was initiated and put into the <code>InProgress</code> state.</p> </li> </ul> <p>A vault lock is put into the <code>InProgress</code> state by calling <a>InitiateVaultLock</a>. A vault lock is put into the <code>Locked</code> state by calling <a>CompleteVaultLock</a>. You can abort the vault locking process by calling <a>AbortVaultLock</a>. For more information about the vault locking process, <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>. </p> <p>If there is no vault lock policy set on the vault, the operation returns a <code>404 Not found</code> error. For more information about vault lock policies, <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon Glacier Access Control with Vault Lock Policies</a>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
getVaultLock :
    String
    -> String
    -> AWS.Request GetVaultLockOutput
getVaultLock accountId vaultName =
    AWS.Http.unsignedRequest
        "GetVaultLock"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/lock-policy")
        (AWS.Http.QueryParams
            [
            ]
        )
        getVaultLockOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation retrieves the <code>notification-configuration</code> subresource of the specified vault.</p> <p>For information about setting a notification configuration on a vault, see <a>SetVaultNotifications</a>. If a notification configuration for a vault is not set, the operation returns a <code>404 Not Found</code> error. For more information about vault notifications, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault Notifications in Amazon Glacier</a>. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault Notifications in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html">Get Vault Notification Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
getVaultNotifications :
    String
    -> String
    -> AWS.Request GetVaultNotificationsOutput
getVaultNotifications accountId vaultName =
    AWS.Http.unsignedRequest
        "GetVaultNotifications"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/notification-configuration")
        (AWS.Http.QueryParams
            [
            ]
        )
        getVaultNotificationsOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation initiates a job of the specified type. In this release, you can initiate a job to retrieve either an archive or a vault inventory (a list of archives in a vault).</p> <p>Retrieving data from Amazon Glacier is a two-step process:</p> <ol> <li> <p>Initiate a retrieval job.</p> <note> <p>A data retrieval policy can cause your initiate retrieval job request to fail with a PolicyEnforcedException exception. For more information about data retrieval policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html">Amazon Glacier Data Retrieval Policies</a>. For more information about the PolicyEnforcedException exception, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-error-responses.html">Error Responses</a>.</p> </note> </li> <li> <p>After the job completes, download the bytes.</p> </li> </ol> <p>The retrieval request is executed asynchronously. When you initiate a retrieval job, Amazon Glacier creates a job and returns a job ID in the response. When Amazon Glacier completes the job, you can get the job output (archive or inventory data). For information about getting job output, see <a>GetJobOutput</a> operation. </p> <p>The job must complete before you can get its output. To determine when a job is complete, you have the following options:</p> <ul> <li> <p> <b>Use Amazon SNS Notification</b> You can specify an Amazon Simple Notification Service (Amazon SNS) topic to which Amazon Glacier can post a notification after the job is completed. You can specify an SNS topic per job request. The notification is sent only after Amazon Glacier completes the job. In addition to specifying an SNS topic per job request, you can configure vault notifications for a vault so that job notifications are always sent. For more information, see <a>SetVaultNotifications</a>.</p> </li> <li> <p> <b>Get job details</b> You can make a <a>DescribeJob</a> request to obtain job status information while a job is in progress. However, it is more efficient to use an Amazon SNS notification to determine when a job is complete.</p> </li> </ul> <note> <p>The information you get via notification is same that you get by calling <a>DescribeJob</a>.</p> </note> <p>If for a specific event, you add both the notification configuration on the vault and also specify an SNS topic in your initiate job request, Amazon Glacier sends both notifications. For more information, see <a>SetVaultNotifications</a>.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> <b>About the Vault Inventory</b> </p> <p>Amazon Glacier prepares an inventory for each vault periodically, every 24 hours. When you initiate a job for a vault inventory, Amazon Glacier returns the last inventory for the vault. The inventory data you get might be up to a day or two days old. Also, the initiate inventory job might take some time to complete before you can download the vault inventory. So you do not want to retrieve a vault inventory for each vault operation. However, in some scenarios, you might find the vault inventory useful. For example, when you upload an archive, you can provide an archive description but not an archive name. Amazon Glacier provides you a unique archive ID, an opaque string of characters. So, you might maintain your own database that maps archive names to their corresponding Amazon Glacier assigned archive IDs. You might find the vault inventory useful in the event you need to reconcile information in your database with the actual vault inventory.</p> <p> <b>Range Inventory Retrieval</b> </p> <p>You can limit the number of inventory items retrieved by filtering on the archive creation date or by setting a limit.</p> <p> <i>Filtering by Archive Creation Date</i> </p> <p>You can retrieve inventory items for archives created between <code>StartDate</code> and <code>EndDate</code> by specifying values for these parameters in the <b>InitiateJob</b> request. Archives created on or after the <code>StartDate</code> and before the <code>EndDate</code> will be returned. If you only provide the <code>StartDate</code> without the <code>EndDate</code>, you will retrieve the inventory for all archives created on or after the <code>StartDate</code>. If you only provide the <code>EndDate</code> without the <code>StartDate</code>, you will get back the inventory for all archives created before the <code>EndDate</code>.</p> <p> <i>Limiting Inventory Items per Retrieval</i> </p> <p>You can limit the number of inventory items returned by setting the <code>Limit</code> parameter in the <b>InitiateJob</b> request. The inventory job output will contain inventory items up to the specified <code>Limit</code>. If there are more inventory items available, the result is paginated. After a job is complete you can use the <a>DescribeJob</a> operation to get a marker that you use in a subsequent <b>InitiateJob</b> request. The marker will indicate the starting point to retrieve the next set of inventory items. You can page through your entire inventory by repeatedly making <b>InitiateJob</b> requests with the marker from the previous <b>DescribeJob</b> output, until you get a marker from <b>DescribeJob</b> that returns null, indicating that there are no more inventory items available.</p> <p>You can use the <code>Limit</code> parameter together with the date range parameters.</p> <p> <b>About Ranged Archive Retrieval</b> </p> <p>You can initiate an archive retrieval for the whole archive or a range of the archive. In the case of ranged archive retrieval, you specify a byte range to return or the whole archive. The range specified must be megabyte (MB) aligned, that is the range start value must be divisible by 1 MB and range end value plus 1 must be divisible by 1 MB or equal the end of the archive. If the ranged archive retrieval is not megabyte aligned, this operation returns a 400 response. Furthermore, to ensure you get checksum values for data you download using Get Job Output API, the range must be tree hash aligned.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html">Initiate a Job</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html">Downloading a Vault Inventory</a> </p> <p> <b>Expedited and Bulk Archive Retrievals</b> </p> <p>When retrieving an archive, you can specify one of the following options in the <code>Tier</code> field of the request body: </p> <ul> <li> <p> <b>Standard</b> The default type of retrieval, which allows access to any of your archives within several hours. Standard retrievals typically complete within 3–5 hours.</p> </li> <li> <p> <b>Bulk</b> Amazon Glacier’s lowest-cost retrieval option, which enables you to retrieve large amounts of data inexpensively in a day. Bulk retrieval requests typically complete within 5–12 hours. </p> </li> <li> <p> <b>Expedited</b> Amazon Glacier’s option for the fastest retrievals. Archives requested using the expedited retrievals typically become accessible within 1–5 minutes. </p> </li> </ul> <p>For more information about expedited and bulk retrievals, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive-two-steps.html">Retrieving Amazon Glacier Archives</a>.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
initiateJob :
    String
    -> String
    -> (InitiateJobOptions -> InitiateJobOptions)
    -> AWS.Request InitiateJobOutput
initiateJob accountId vaultName setOptions =
  let
    options = setOptions (InitiateJobOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "InitiateJob"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/jobs")
        (AWS.Http.JsonBody
            JE.null
        )
        initiateJobOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a initiateJob request
-}
type alias InitiateJobOptions =
    { jobParameters : Maybe JobParameters
    }



{-| <p>This operation initiates a multipart upload. Amazon Glacier creates a multipart upload resource and returns its ID in the response. The multipart upload ID is used in subsequent requests to upload parts of an archive (see <a>UploadMultipartPart</a>).</p> <p>When you initiate a multipart upload, you specify the part size in number of bytes. The part size must be a megabyte (1024 KB) multiplied by a power of 2-for example, 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB.</p> <p>Every part you upload to this resource (see <a>UploadMultipartPart</a>), except the last one, must have the same size. The last one can be the same size or smaller. For example, suppose you want to upload a 16.2 MB file. If you initiate the multipart upload with a part size of 4 MB, you will upload four parts of 4 MB each and one part of 0.2 MB. </p> <note> <p>You don't need to know the size of the archive when you start a multipart upload because Amazon Glacier does not require you to specify the overall archive size.</p> </note> <p>After you complete the multipart upload, Amazon Glacier removes the multipart upload resource referenced by the ID. Amazon Glacier also removes the multipart upload resource if you cancel the multipart upload or it may be removed if there is no activity for a period of 24 hours.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in Parts (Multipart Upload)</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html">Initiate Multipart Upload</a> in the <i>Amazon Glacier Developer Guide</i>.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
initiateMultipartUpload :
    String
    -> String
    -> (InitiateMultipartUploadOptions -> InitiateMultipartUploadOptions)
    -> AWS.Request InitiateMultipartUploadOutput
initiateMultipartUpload accountId vaultName setOptions =
  let
    options = setOptions (InitiateMultipartUploadOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "InitiateMultipartUpload"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/multipart-uploads")
        (AWS.Http.JsonBody
            JE.null
        )
        initiateMultipartUploadOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a initiateMultipartUpload request
-}
type alias InitiateMultipartUploadOptions =
    { archiveDescription : Maybe String
    , partSize : Maybe String
    }



{-| <p>This operation initiates the vault locking process by doing the following:</p> <ul> <li> <p>Installing a vault lock policy on the specified vault.</p> </li> <li> <p>Setting the lock state of vault lock to <code>InProgress</code>.</p> </li> <li> <p>Returning a lock ID, which is used to complete the vault locking process.</p> </li> </ul> <p>You can set one vault lock policy for each vault and this policy can be up to 20 KB in size. For more information about vault lock policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html">Amazon Glacier Access Control with Vault Lock Policies</a>. </p> <p>You must complete the vault locking process within 24 hours after the vault lock enters the <code>InProgress</code> state. After the 24 hour window ends, the lock ID expires, the vault automatically exits the <code>InProgress</code> state, and the vault lock policy is removed from the vault. You call <a>CompleteVaultLock</a> to complete the vault locking process by setting the state of the vault lock to <code>Locked</code>. </p> <p>After a vault lock is in the <code>Locked</code> state, you cannot initiate a new vault lock for the vault.</p> <p>You can abort the vault locking process by calling <a>AbortVaultLock</a>. You can get the state of the vault lock by calling <a>GetVaultLock</a>. For more information about the vault locking process, <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html">Amazon Glacier Vault Lock</a>.</p> <p>If this operation is called when the vault lock is in the <code>InProgress</code> state, the operation returns an <code>AccessDeniedException</code> error. When the vault lock is in the <code>InProgress</code> state you must call <a>AbortVaultLock</a> before you can initiate a new vault lock policy. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
initiateVaultLock :
    String
    -> String
    -> (InitiateVaultLockOptions -> InitiateVaultLockOptions)
    -> AWS.Request InitiateVaultLockOutput
initiateVaultLock accountId vaultName setOptions =
  let
    options = setOptions (InitiateVaultLockOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "InitiateVaultLock"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/lock-policy")
        (AWS.Http.JsonBody
            JE.null
        )
        initiateVaultLockOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a initiateVaultLock request
-}
type alias InitiateVaultLockOptions =
    { policy : Maybe VaultLockPolicy
    }



{-| <p>This operation lists jobs for a vault, including jobs that are in-progress and jobs that have recently finished.</p> <note> <p>Amazon Glacier retains recently completed jobs for a period before deleting them; however, it eventually removes completed jobs. The output of completed jobs can be retrieved. Retaining completed jobs for a period of time after they have completed enables you to get a job output in the event you miss the job completion notification or your first attempt to download it fails. For example, suppose you start an archive retrieval job to download an archive. After the job completes, you start to download the archive but encounter a network error. In this scenario, you can retry and download the archive while the job exists.</p> </note> <p>To retrieve an archive or retrieve a vault inventory from Amazon Glacier, you first initiate a job, and after the job completes, you download the data. For an archive retrieval, the output is the archive data. For an inventory retrieval, it is the inventory list. The List Job operation returns a list of these jobs sorted by job initiation time.</p> <p>The List Jobs operation supports pagination. You should always check the response <code>Marker</code> field. If there are no more jobs to list, the <code>Marker</code> field is set to <code>null</code>. If there are more jobs to list, the <code>Marker</code> field is set to a non-null value, which you can use to continue the pagination of the list. To return a list of jobs that begins at a specific job, set the marker request parameter to the <code>Marker</code> value for that job that you obtained from a previous List Jobs request.</p> <p>You can set a maximum limit for the number of jobs returned in the response by specifying the <code>limit</code> parameter in the request. The default limit is 1000. The number of jobs returned might be fewer than the limit, but the number of returned jobs never exceeds the limit.</p> <p>Additionally, you can filter the jobs list returned by specifying the optional <code>statuscode</code> parameter or <code>completed</code> parameter, or both. Using the <code>statuscode</code> parameter, you can specify to return only jobs that match either the <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code> status. Using the <code>completed</code> parameter, you can specify to return only jobs that were completed (<code>true</code>) or jobs that were not completed (<code>false</code>).</p> <p>For the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html">List Jobs</a>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
listJobs :
    String
    -> String
    -> (ListJobsOptions -> ListJobsOptions)
    -> AWS.Request ListJobsOutput
listJobs accountId vaultName setOptions =
  let
    options = setOptions (ListJobsOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListJobs"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/jobs")
        (AWS.Http.QueryParams
            [
            ]
        )
        listJobsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    { limit : Maybe String
    , marker : Maybe String
    , statuscode : Maybe String
    , completed : Maybe String
    }



{-| <p>This operation lists in-progress multipart uploads for the specified vault. An in-progress multipart upload is a multipart upload that has been initiated by an <a>InitiateMultipartUpload</a> request, but has not yet been completed or aborted. The list returned in the List Multipart Upload response has no guaranteed order. </p> <p>The List Multipart Uploads operation supports pagination. By default, this operation returns up to 1,000 multipart uploads in the response. You should always check the response for a <code>marker</code> at which to continue the list; if there are no more items the <code>marker</code> is <code>null</code>. To return a list of multipart uploads that begins at a specific upload, set the <code>marker</code> request parameter to the value you obtained from a previous List Multipart Upload request. You can also limit the number of uploads returned in the response by specifying the <code>limit</code> parameter in the request.</p> <p>Note the difference between this operation and listing parts (<a>ListParts</a>). The List Multipart Uploads operation lists all multipart uploads for a vault and does not require a multipart upload ID. The List Parts operation requires a multipart upload ID since parts are associated with a single upload.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html">List Multipart Uploads </a> in the <i>Amazon Glacier Developer Guide</i>.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
listMultipartUploads :
    String
    -> String
    -> (ListMultipartUploadsOptions -> ListMultipartUploadsOptions)
    -> AWS.Request ListMultipartUploadsOutput
listMultipartUploads accountId vaultName setOptions =
  let
    options = setOptions (ListMultipartUploadsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListMultipartUploads"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/multipart-uploads")
        (AWS.Http.QueryParams
            [
            ]
        )
        listMultipartUploadsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listMultipartUploads request
-}
type alias ListMultipartUploadsOptions =
    { marker : Maybe String
    , limit : Maybe String
    }



{-| <p>This operation lists the parts of an archive that have been uploaded in a specific multipart upload. You can make this request at any time during an in-progress multipart upload before you complete the upload (see <a>CompleteMultipartUpload</a>. List Parts returns an error for completed uploads. The list returned in the List Parts response is sorted by part range. </p> <p>The List Parts operation supports pagination. By default, this operation returns up to 1,000 uploaded parts in the response. You should always check the response for a <code>marker</code> at which to continue the list; if there are no more items the <code>marker</code> is <code>null</code>. To return a list of parts that begins at a specific part, set the <code>marker</code> request parameter to the value you obtained from a previous List Parts request. You can also limit the number of parts returned in the response by specifying the <code>limit</code> parameter in the request. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and the underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html">Working with Archives in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html">List Parts</a> in the <i>Amazon Glacier Developer Guide</i>.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `uploadId` __:__ `String`


-}
listParts :
    String
    -> String
    -> String
    -> (ListPartsOptions -> ListPartsOptions)
    -> AWS.Request ListPartsOutput
listParts accountId vaultName uploadId setOptions =
  let
    options = setOptions (ListPartsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListParts"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/multipart-uploads/" ++ uploadId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listPartsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listParts request
-}
type alias ListPartsOptions =
    { marker : Maybe String
    , limit : Maybe String
    }



{-| <p>This operation lists the provisioned capacity for the specified AWS account.</p>

__Required Parameters__

* `accountId` __:__ `String`


-}
listProvisionedCapacity :
    String
    -> AWS.Request ListProvisionedCapacityOutput
listProvisionedCapacity accountId =
    AWS.Http.unsignedRequest
        "ListProvisionedCapacity"
        "GET"
        ("/" ++ accountId ++ "/provisioned-capacity")
        (AWS.Http.QueryParams
            [
            ]
        )
        listProvisionedCapacityOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation lists all the tags attached to a vault. The operation returns an empty map if there are no tags. For more information about tags, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon Glacier Resources</a>.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
listTagsForVault :
    String
    -> String
    -> AWS.Request ListTagsForVaultOutput
listTagsForVault accountId vaultName =
    AWS.Http.unsignedRequest
        "ListTagsForVault"
        "GET"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/tags")
        (AWS.Http.QueryParams
            [
            ]
        )
        listTagsForVaultOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation lists all vaults owned by the calling user's account. The list returned in the response is ASCII-sorted by vault name.</p> <p>By default, this operation returns up to 1,000 items. If there are more vaults to list, the response <code>marker</code> field contains the vault Amazon Resource Name (ARN) at which to continue the list with a new List Vaults request; otherwise, the <code>marker</code> field is <code>null</code>. To return a list of vaults that begins at a specific vault, set the <code>marker</code> request parameter to the vault ARN you obtained from a previous List Vaults request. You can also limit the number of vaults returned in the response by specifying the <code>limit</code> parameter in the request. </p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html">Retrieving Vault Metadata in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html">List Vaults </a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`


-}
listVaults :
    String
    -> (ListVaultsOptions -> ListVaultsOptions)
    -> AWS.Request ListVaultsOutput
listVaults accountId setOptions =
  let
    options = setOptions (ListVaultsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListVaults"
        "GET"
        ("/" ++ accountId ++ "/vaults")
        (AWS.Http.QueryParams
            [
            ]
        )
        listVaultsOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listVaults request
-}
type alias ListVaultsOptions =
    { marker : Maybe String
    , limit : Maybe String
    }



{-| <p>This operation purchases a provisioned capacity unit for an AWS account.</p>

__Required Parameters__

* `accountId` __:__ `String`


-}
purchaseProvisionedCapacity :
    String
    -> AWS.Request PurchaseProvisionedCapacityOutput
purchaseProvisionedCapacity accountId =
    AWS.Http.unsignedRequest
        "PurchaseProvisionedCapacity"
        "POST"
        ("/" ++ accountId ++ "/provisioned-capacity")
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseProvisionedCapacityOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>This operation removes one or more tags from the set of tags attached to a vault. For more information about tags, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html">Tagging Amazon Glacier Resources</a>. This operation is idempotent. The operation will be successful, even if there are no tags attached to the vault. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
removeTagsFromVault :
    String
    -> String
    -> (RemoveTagsFromVaultOptions -> RemoveTagsFromVaultOptions)
    -> AWS.Request ()
removeTagsFromVault accountId vaultName setOptions =
  let
    options = setOptions (RemoveTagsFromVaultOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RemoveTagsFromVault"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/tags?operation=remove")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a removeTagsFromVault request
-}
type alias RemoveTagsFromVaultOptions =
    { tagKeys : Maybe (List String)
    }



{-| <p>This operation sets and then enacts a data retrieval policy in the region specified in the PUT request. You can set one policy per region for an AWS account. The policy is enacted within a few minutes of a successful PUT operation.</p> <p>The set policy operation does not affect retrieval jobs that were in progress before the policy was enacted. For more information about data retrieval policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html">Amazon Glacier Data Retrieval Policies</a>. </p>

__Required Parameters__

* `accountId` __:__ `String`


-}
setDataRetrievalPolicy :
    String
    -> (SetDataRetrievalPolicyOptions -> SetDataRetrievalPolicyOptions)
    -> AWS.Request ()
setDataRetrievalPolicy accountId setOptions =
  let
    options = setOptions (SetDataRetrievalPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetDataRetrievalPolicy"
        "PUT"
        ("/" ++ accountId ++ "/policies/data-retrieval")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setDataRetrievalPolicy request
-}
type alias SetDataRetrievalPolicyOptions =
    { policy : Maybe DataRetrievalPolicy
    }



{-| <p>This operation configures an access policy for a vault and will overwrite an existing policy. To configure a vault access policy, send a PUT request to the <code>access-policy</code> subresource of the vault. An access policy is specific to a vault and is also called a vault subresource. You can set one access policy per vault and the policy can be up to 20 KB in size. For more information about vault access policies, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html">Amazon Glacier Access Control with Vault Access Policies</a>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
setVaultAccessPolicy :
    String
    -> String
    -> (SetVaultAccessPolicyOptions -> SetVaultAccessPolicyOptions)
    -> AWS.Request ()
setVaultAccessPolicy accountId vaultName setOptions =
  let
    options = setOptions (SetVaultAccessPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetVaultAccessPolicy"
        "PUT"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/access-policy")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setVaultAccessPolicy request
-}
type alias SetVaultAccessPolicyOptions =
    { policy : Maybe VaultAccessPolicy
    }



{-| <p>This operation configures notifications that will be sent when specific events happen to a vault. By default, you don't get any notifications.</p> <p>To configure vault notifications, send a PUT request to the <code>notification-configuration</code> subresource of the vault. The request should include a JSON document that provides an Amazon SNS topic and specific events for which you want Amazon Glacier to send notifications to the topic.</p> <p>Amazon SNS topics must grant permission to the vault to be allowed to publish notifications to the topic. You can configure a vault to publish a notification for the following vault events:</p> <ul> <li> <p> <b>ArchiveRetrievalCompleted</b> This event occurs when a job that was initiated for an archive retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be "Succeeded" or "Failed". The notification sent to the SNS topic is the same output as returned from <a>DescribeJob</a>. </p> </li> <li> <p> <b>InventoryRetrievalCompleted</b> This event occurs when a job that was initiated for an inventory retrieval is completed (<a>InitiateJob</a>). The status of the completed job can be "Succeeded" or "Failed". The notification sent to the SNS topic is the same output as returned from <a>DescribeJob</a>. </p> </li> </ul> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p>For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html">Configuring Vault Notifications in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html">Set Vault Notification Configuration </a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`


-}
setVaultNotifications :
    String
    -> String
    -> (SetVaultNotificationsOptions -> SetVaultNotificationsOptions)
    -> AWS.Request ()
setVaultNotifications accountId vaultName setOptions =
  let
    options = setOptions (SetVaultNotificationsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "SetVaultNotifications"
        "PUT"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/notification-configuration")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a setVaultNotifications request
-}
type alias SetVaultNotificationsOptions =
    { vaultNotificationConfig : Maybe VaultNotificationConfig
    }



{-| <p>This operation adds an archive to a vault. This is a synchronous operation, and for a successful upload, your data is durably persisted. Amazon Glacier returns the archive ID in the <code>x-amz-archive-id</code> header of the response. </p> <p>You must use the archive ID to access your data in Amazon Glacier. After you upload an archive, you should save the archive ID returned so that you can retrieve or delete the archive later. Besides saving the archive ID, you can also index it and give it a friendly name to allow for better searching. You can also use the optional archive description field to specify how the archive is referred to in an external index of archives, such as you might create in Amazon DynamoDB. You can also get the vault inventory to obtain a list of archive IDs in a vault. For more information, see <a>InitiateJob</a>. </p> <p>You must provide a SHA256 tree hash of the data you are uploading. For information about computing a SHA256 tree hash, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing Checksums</a>. </p> <p>You can optionally specify an archive description of up to 1,024 printable ASCII characters. You can get the archive description when you either retrieve the archive or get the vault inventory. For more information, see <a>InitiateJob</a>. Amazon Glacier does not interpret the description in any way. An archive description does not need to be unique. You cannot use the description to retrieve or sort the archive list. </p> <p>Archives are immutable. After you upload an archive, you cannot edit the archive or its description.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html">Uploading an Archive in Amazon Glacier</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html">Upload Archive</a> in the <i>Amazon Glacier Developer Guide</i>. </p>

__Required Parameters__

* `vaultName` __:__ `String`
* `accountId` __:__ `String`


-}
uploadArchive :
    String
    -> String
    -> (UploadArchiveOptions -> UploadArchiveOptions)
    -> AWS.Request ArchiveCreationOutput
uploadArchive vaultName accountId setOptions =
  let
    options = setOptions (UploadArchiveOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UploadArchive"
        "POST"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/archives")
        (AWS.Http.JsonBody
            JE.null
        )
        archiveCreationOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a uploadArchive request
-}
type alias UploadArchiveOptions =
    { archiveDescription : Maybe String
    , checksum : Maybe String
    , body : Maybe String
    }



{-| <p>This operation uploads a part of an archive. You can upload archive parts in any order. You can also upload them in parallel. You can upload up to 10,000 parts for a multipart upload.</p> <p>Amazon Glacier rejects your upload part request if any of the following conditions is true:</p> <ul> <li> <p> <b>SHA256 tree hash does not match</b>To ensure that part data is not corrupted in transmission, you compute a SHA256 tree hash of the part and include it in your request. Upon receiving the part data, Amazon Glacier also computes a SHA256 tree hash. If these hash values don't match, the operation fails. For information about computing a SHA256 tree hash, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html">Computing Checksums</a>.</p> </li> <li> <p> <b>Part size does not match</b>The size of each part except the last must match the size specified in the corresponding <a>InitiateMultipartUpload</a> request. The size of the last part must be the same size as, or smaller than, the specified size.</p> <note> <p>If you upload a part whose size is smaller than the part size you specified in your initiate multipart upload request and that part is not the last part, then the upload part request will succeed. However, the subsequent Complete Multipart Upload request will fail.</p> </note> </li> <li> <p> <b>Range does not align</b>The byte range value in the request does not align with the part size specified in the corresponding initiate request. For example, if you specify a part size of 4194304 bytes (4 MB), then 0 to 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to 8388607 (8 MB - 1) are valid part ranges. However, if you set a range value of 2 MB to 6 MB, the range does not align with the part size and the upload will fail. </p> </li> </ul> <p>This operation is idempotent. If you upload the same part multiple times, the data included in the most recent request overwrites the previously uploaded data.</p> <p>An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html">Access Control Using AWS Identity and Access Management (IAM)</a>.</p> <p> For conceptual information and underlying REST API, see <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html">Uploading Large Archives in Parts (Multipart Upload)</a> and <a href="http://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html">Upload Part </a> in the <i>Amazon Glacier Developer Guide</i>.</p>

__Required Parameters__

* `accountId` __:__ `String`
* `vaultName` __:__ `String`
* `uploadId` __:__ `String`


-}
uploadMultipartPart :
    String
    -> String
    -> String
    -> (UploadMultipartPartOptions -> UploadMultipartPartOptions)
    -> AWS.Request UploadMultipartPartOutput
uploadMultipartPart accountId vaultName uploadId setOptions =
  let
    options = setOptions (UploadMultipartPartOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UploadMultipartPart"
        "PUT"
        ("/" ++ accountId ++ "/vaults/" ++ vaultName ++ "/multipart-uploads/" ++ uploadId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        uploadMultipartPartOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a uploadMultipartPart request
-}
type alias UploadMultipartPartOptions =
    { checksum : Maybe String
    , range : Maybe String
    , body : Maybe String
    }




{-| One of

* `ActionCode_ArchiveRetrieval`
* `ActionCode_InventoryRetrieval`

-}
type ActionCode
    = ActionCode_ArchiveRetrieval
    | ActionCode_InventoryRetrieval



actionCodeDecoder : JD.Decoder ActionCode
actionCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ArchiveRetrieval" ->
                        JD.succeed ActionCode_ArchiveRetrieval

                    "InventoryRetrieval" ->
                        JD.succeed ActionCode_InventoryRetrieval


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from archiveCreati
-}
type alias ArchiveCreationOutput =
    { location : Maybe String
    , checksum : Maybe String
    , archiveId : Maybe String
    }



archiveCreationOutputDecoder : JD.Decoder ArchiveCreationOutput
archiveCreationOutputDecoder =
    JDP.decode ArchiveCreationOutput
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "checksum" (JD.nullable JD.string) Nothing
        |> JDP.optional "archiveId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createVau
-}
type alias CreateVaultOutput =
    { location : Maybe String
    }



createVaultOutputDecoder : JD.Decoder CreateVaultOutput
createVaultOutputDecoder =
    JDP.decode CreateVaultOutput
        |> JDP.optional "location" (JD.nullable JD.string) Nothing




{-| <p>Data retrieval policy.</p>
-}
type alias DataRetrievalPolicy =
    { rules : Maybe (List DataRetrievalRule)
    }



dataRetrievalPolicyDecoder : JD.Decoder DataRetrievalPolicy
dataRetrievalPolicyDecoder =
    JDP.decode DataRetrievalPolicy
        |> JDP.optional "rules" (JD.nullable (JD.list dataRetrievalRuleDecoder)) Nothing




{-| <p>Data retrieval policy rule.</p>
-}
type alias DataRetrievalRule =
    { strategy : Maybe String
    , bytesPerHour : Maybe Int
    }



dataRetrievalRuleDecoder : JD.Decoder DataRetrievalRule
dataRetrievalRuleDecoder =
    JDP.decode DataRetrievalRule
        |> JDP.optional "strategy" (JD.nullable JD.string) Nothing
        |> JDP.optional "bytesPerHour" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describeVau
-}
type alias DescribeVaultOutput =
    { vaultARN : Maybe String
    , vaultName : Maybe String
    , creationDate : Maybe String
    , lastInventoryDate : Maybe String
    , numberOfArchives : Maybe Int
    , sizeInBytes : Maybe Int
    }



describeVaultOutputDecoder : JD.Decoder DescribeVaultOutput
describeVaultOutputDecoder =
    JDP.decode DescribeVaultOutput
        |> JDP.optional "vaultARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "vaultName" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastInventoryDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "numberOfArchives" (JD.nullable JD.int) Nothing
        |> JDP.optional "sizeInBytes" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from getDataRetrievalPoli
-}
type alias GetDataRetrievalPolicyOutput =
    { policy : Maybe DataRetrievalPolicy
    }



getDataRetrievalPolicyOutputDecoder : JD.Decoder GetDataRetrievalPolicyOutput
getDataRetrievalPolicyOutputDecoder =
    JDP.decode GetDataRetrievalPolicyOutput
        |> JDP.optional "policy" (JD.nullable dataRetrievalPolicyDecoder) Nothing




{-| Type of HTTP response from getJobOutp
-}
type alias GetJobOutputOutput =
    { body : Maybe String
    , checksum : Maybe String
    , status : Maybe Int
    , contentRange : Maybe String
    , acceptRanges : Maybe String
    , contentType : Maybe String
    , archiveDescription : Maybe String
    }



getJobOutputOutputDecoder : JD.Decoder GetJobOutputOutput
getJobOutputOutputDecoder =
    JDP.decode GetJobOutputOutput
        |> JDP.optional "body" (JD.nullable JD.string) Nothing
        |> JDP.optional "checksum" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.int) Nothing
        |> JDP.optional "contentRange" (JD.nullable JD.string) Nothing
        |> JDP.optional "acceptRanges" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "archiveDescription" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getVaultAccessPoli
-}
type alias GetVaultAccessPolicyOutput =
    { policy : Maybe VaultAccessPolicy
    }



getVaultAccessPolicyOutputDecoder : JD.Decoder GetVaultAccessPolicyOutput
getVaultAccessPolicyOutputDecoder =
    JDP.decode GetVaultAccessPolicyOutput
        |> JDP.optional "policy" (JD.nullable vaultAccessPolicyDecoder) Nothing




{-| Type of HTTP response from getVaultLo
-}
type alias GetVaultLockOutput =
    { policy : Maybe String
    , state : Maybe String
    , expirationDate : Maybe String
    , creationDate : Maybe String
    }



getVaultLockOutputDecoder : JD.Decoder GetVaultLockOutput
getVaultLockOutputDecoder =
    JDP.decode GetVaultLockOutput
        |> JDP.optional "policy" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable JD.string) Nothing
        |> JDP.optional "expirationDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getVaultNotificatio
-}
type alias GetVaultNotificationsOutput =
    { vaultNotificationConfig : Maybe VaultNotificationConfig
    }



getVaultNotificationsOutputDecoder : JD.Decoder GetVaultNotificationsOutput
getVaultNotificationsOutputDecoder =
    JDP.decode GetVaultNotificationsOutput
        |> JDP.optional "vaultNotificationConfig" (JD.nullable vaultNotificationConfigDecoder) Nothing




{-| Type of HTTP response from glacierJobDes
-}
type alias GlacierJobDescription =
    { jobId : Maybe String
    , jobDescription : Maybe String
    , action : Maybe ActionCode
    , archiveId : Maybe String
    , vaultARN : Maybe String
    , creationDate : Maybe String
    , completed : Maybe Bool
    , statusCode : Maybe StatusCode
    , statusMessage : Maybe String
    , archiveSizeInBytes : Maybe Int
    , inventorySizeInBytes : Maybe Int
    , sNSTopic : Maybe String
    , completionDate : Maybe String
    , sHA256TreeHash : Maybe String
    , archiveSHA256TreeHash : Maybe String
    , retrievalByteRange : Maybe String
    , tier : Maybe String
    , inventoryRetrievalParameters : Maybe InventoryRetrievalJobDescription
    }



glacierJobDescriptionDecoder : JD.Decoder GlacierJobDescription
glacierJobDescriptionDecoder =
    JDP.decode GlacierJobDescription
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "action" (JD.nullable actionCodeDecoder) Nothing
        |> JDP.optional "archiveId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vaultARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "completed" (JD.nullable JD.bool) Nothing
        |> JDP.optional "statusCode" (JD.nullable statusCodeDecoder) Nothing
        |> JDP.optional "statusMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "archiveSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "inventorySizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "sNSTopic" (JD.nullable JD.string) Nothing
        |> JDP.optional "completionDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "sHA256TreeHash" (JD.nullable JD.string) Nothing
        |> JDP.optional "archiveSHA256TreeHash" (JD.nullable JD.string) Nothing
        |> JDP.optional "retrievalByteRange" (JD.nullable JD.string) Nothing
        |> JDP.optional "tier" (JD.nullable JD.string) Nothing
        |> JDP.optional "inventoryRetrievalParameters" (JD.nullable inventoryRetrievalJobDescriptionDecoder) Nothing




{-| Type of HTTP response from initiateJ
-}
type alias InitiateJobOutput =
    { location : Maybe String
    , jobId : Maybe String
    }



initiateJobOutputDecoder : JD.Decoder InitiateJobOutput
initiateJobOutputDecoder =
    JDP.decode InitiateJobOutput
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from initiateMultipartUplo
-}
type alias InitiateMultipartUploadOutput =
    { location : Maybe String
    , uploadId : Maybe String
    }



initiateMultipartUploadOutputDecoder : JD.Decoder InitiateMultipartUploadOutput
initiateMultipartUploadOutputDecoder =
    JDP.decode InitiateMultipartUploadOutput
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from initiateVaultLo
-}
type alias InitiateVaultLockOutput =
    { lockId : Maybe String
    }



initiateVaultLockOutputDecoder : JD.Decoder InitiateVaultLockOutput
initiateVaultLockOutputDecoder =
    JDP.decode InitiateVaultLockOutput
        |> JDP.optional "lockId" (JD.nullable JD.string) Nothing




{-| <p>Returned if there is insufficient capacity to process this expedited request. This error only applies to expedited retrievals and not to standard or bulk retrievals.</p>
-}
type alias InsufficientCapacityException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



insufficientCapacityExceptionDecoder : JD.Decoder InsufficientCapacityException
insufficientCapacityExceptionDecoder =
    JDP.decode InsufficientCapacityException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if a parameter of the request is incorrectly specified.</p>
-}
type alias InvalidParameterValueException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



invalidParameterValueExceptionDecoder : JD.Decoder InvalidParameterValueException
invalidParameterValueExceptionDecoder =
    JDP.decode InvalidParameterValueException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes the options for a range inventory retrieval job.</p>
-}
type alias InventoryRetrievalJobDescription =
    { format : Maybe String
    , startDate : Maybe String
    , endDate : Maybe String
    , limit : Maybe String
    , marker : Maybe String
    }



inventoryRetrievalJobDescriptionDecoder : JD.Decoder InventoryRetrievalJobDescription
inventoryRetrievalJobDescriptionDecoder =
    JDP.decode InventoryRetrievalJobDescription
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "startDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "endDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "limit" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Provides options for specifying a range inventory retrieval job.</p>
-}
type alias InventoryRetrievalJobInput =
    { startDate : Maybe String
    , endDate : Maybe String
    , limit : Maybe String
    , marker : Maybe String
    }



inventoryRetrievalJobInputDecoder : JD.Decoder InventoryRetrievalJobInput
inventoryRetrievalJobInputDecoder =
    JDP.decode InventoryRetrievalJobInput
        |> JDP.optional "startDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "endDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "limit" (JD.nullable JD.string) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Provides options for defining a job.</p>
-}
type alias JobParameters =
    { format : Maybe String
    , type_ : Maybe String
    , archiveId : Maybe String
    , description : Maybe String
    , sNSTopic : Maybe String
    , retrievalByteRange : Maybe String
    , tier : Maybe String
    , inventoryRetrievalParameters : Maybe InventoryRetrievalJobInput
    }



jobParametersDecoder : JD.Decoder JobParameters
jobParametersDecoder =
    JDP.decode JobParameters
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "archiveId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "sNSTopic" (JD.nullable JD.string) Nothing
        |> JDP.optional "retrievalByteRange" (JD.nullable JD.string) Nothing
        |> JDP.optional "tier" (JD.nullable JD.string) Nothing
        |> JDP.optional "inventoryRetrievalParameters" (JD.nullable inventoryRetrievalJobInputDecoder) Nothing




{-| <p>Returned if the request results in a vault or account limit being exceeded.</p>
-}
type alias LimitExceededException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listJo
-}
type alias ListJobsOutput =
    { jobList : Maybe (List GlacierJobDescription)
    , marker : Maybe String
    }



listJobsOutputDecoder : JD.Decoder ListJobsOutput
listJobsOutputDecoder =
    JDP.decode ListJobsOutput
        |> JDP.optional "jobList" (JD.nullable (JD.list glacierJobDescriptionDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listMultipartUploa
-}
type alias ListMultipartUploadsOutput =
    { uploadsList : Maybe (List UploadListElement)
    , marker : Maybe String
    }



listMultipartUploadsOutputDecoder : JD.Decoder ListMultipartUploadsOutput
listMultipartUploadsOutputDecoder =
    JDP.decode ListMultipartUploadsOutput
        |> JDP.optional "uploadsList" (JD.nullable (JD.list uploadListElementDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPar
-}
type alias ListPartsOutput =
    { multipartUploadId : Maybe String
    , vaultARN : Maybe String
    , archiveDescription : Maybe String
    , partSizeInBytes : Maybe Int
    , creationDate : Maybe String
    , parts : Maybe (List PartListElement)
    , marker : Maybe String
    }



listPartsOutputDecoder : JD.Decoder ListPartsOutput
listPartsOutputDecoder =
    JDP.decode ListPartsOutput
        |> JDP.optional "multipartUploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vaultARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "archiveDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "partSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "creationDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "parts" (JD.nullable (JD.list partListElementDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listProvisionedCapaci
-}
type alias ListProvisionedCapacityOutput =
    { provisionedCapacityList : Maybe (List ProvisionedCapacityDescription)
    }



listProvisionedCapacityOutputDecoder : JD.Decoder ListProvisionedCapacityOutput
listProvisionedCapacityOutputDecoder =
    JDP.decode ListProvisionedCapacityOutput
        |> JDP.optional "provisionedCapacityList" (JD.nullable (JD.list provisionedCapacityDescriptionDecoder)) Nothing




{-| Type of HTTP response from listTagsForVau
-}
type alias ListTagsForVaultOutput =
    { tags : Maybe (Dict String String)
    }



listTagsForVaultOutputDecoder : JD.Decoder ListTagsForVaultOutput
listTagsForVaultOutputDecoder =
    JDP.decode ListTagsForVaultOutput
        |> JDP.optional "tags" (JD.nullable (JD.dict JD.string)) Nothing




{-| Type of HTTP response from listVaul
-}
type alias ListVaultsOutput =
    { vaultList : Maybe (List DescribeVaultOutput)
    , marker : Maybe String
    }



listVaultsOutputDecoder : JD.Decoder ListVaultsOutput
listVaultsOutputDecoder =
    JDP.decode ListVaultsOutput
        |> JDP.optional "vaultList" (JD.nullable (JD.list describeVaultOutputDecoder)) Nothing
        |> JDP.optional "marker" (JD.nullable JD.string) Nothing




{-| <p>Returned if a required header or parameter is missing from the request.</p>
-}
type alias MissingParameterValueException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



missingParameterValueExceptionDecoder : JD.Decoder MissingParameterValueException
missingParameterValueExceptionDecoder =
    JDP.decode MissingParameterValueException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A list of the part sizes of the multipart upload.</p>
-}
type alias PartListElement =
    { rangeInBytes : Maybe String
    , sHA256TreeHash : Maybe String
    }



partListElementDecoder : JD.Decoder PartListElement
partListElementDecoder =
    JDP.decode PartListElement
        |> JDP.optional "rangeInBytes" (JD.nullable JD.string) Nothing
        |> JDP.optional "sHA256TreeHash" (JD.nullable JD.string) Nothing




{-| <p>Returned if a retrieval job would exceed the current data policy's retrieval rate limit. For more information about data retrieval policies,</p>
-}
type alias PolicyEnforcedException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



policyEnforcedExceptionDecoder : JD.Decoder PolicyEnforcedException
policyEnforcedExceptionDecoder =
    JDP.decode PolicyEnforcedException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The definition for a provisioned capacity unit.</p>
-}
type alias ProvisionedCapacityDescription =
    { capacityId : Maybe String
    , startDate : Maybe String
    , expirationDate : Maybe String
    }



provisionedCapacityDescriptionDecoder : JD.Decoder ProvisionedCapacityDescription
provisionedCapacityDescriptionDecoder =
    JDP.decode ProvisionedCapacityDescription
        |> JDP.optional "capacityId" (JD.nullable JD.string) Nothing
        |> JDP.optional "startDate" (JD.nullable JD.string) Nothing
        |> JDP.optional "expirationDate" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from purchaseProvisionedCapaci
-}
type alias PurchaseProvisionedCapacityOutput =
    { capacityId : Maybe String
    }



purchaseProvisionedCapacityOutputDecoder : JD.Decoder PurchaseProvisionedCapacityOutput
purchaseProvisionedCapacityOutputDecoder =
    JDP.decode PurchaseProvisionedCapacityOutput
        |> JDP.optional "capacityId" (JD.nullable JD.string) Nothing




{-| <p>Returned if, when uploading an archive, Amazon Glacier times out while receiving the upload.</p>
-}
type alias RequestTimeoutException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



requestTimeoutExceptionDecoder : JD.Decoder RequestTimeoutException
requestTimeoutExceptionDecoder =
    JDP.decode RequestTimeoutException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't exist.</p>
-}
type alias ResourceNotFoundException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Returned if the service cannot complete the request.</p>
-}
type alias ServiceUnavailableException =
    { type_ : Maybe String
    , code : Maybe String
    , message : Maybe String
    }



serviceUnavailableExceptionDecoder : JD.Decoder ServiceUnavailableException
serviceUnavailableExceptionDecoder =
    JDP.decode ServiceUnavailableException
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `StatusCode_InProgress`
* `StatusCode_Succeeded`
* `StatusCode_Failed`

-}
type StatusCode
    = StatusCode_InProgress
    | StatusCode_Succeeded
    | StatusCode_Failed



statusCodeDecoder : JD.Decoder StatusCode
statusCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InProgress" ->
                        JD.succeed StatusCode_InProgress

                    "Succeeded" ->
                        JD.succeed StatusCode_Succeeded

                    "Failed" ->
                        JD.succeed StatusCode_Failed


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A list of in-progress multipart uploads for a vault.</p>
-}
type alias UploadListElement =
    { multipartUploadId : Maybe String
    , vaultARN : Maybe String
    , archiveDescription : Maybe String
    , partSizeInBytes : Maybe Int
    , creationDate : Maybe String
    }



uploadListElementDecoder : JD.Decoder UploadListElement
uploadListElementDecoder =
    JDP.decode UploadListElement
        |> JDP.optional "multipartUploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "vaultARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "archiveDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "partSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "creationDate" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from uploadMultipartPa
-}
type alias UploadMultipartPartOutput =
    { checksum : Maybe String
    }



uploadMultipartPartOutputDecoder : JD.Decoder UploadMultipartPartOutput
uploadMultipartPartOutputDecoder =
    JDP.decode UploadMultipartPartOutput
        |> JDP.optional "checksum" (JD.nullable JD.string) Nothing




{-| <p>Contains the vault access policy.</p>
-}
type alias VaultAccessPolicy =
    { policy : Maybe String
    }



vaultAccessPolicyDecoder : JD.Decoder VaultAccessPolicy
vaultAccessPolicyDecoder =
    JDP.decode VaultAccessPolicy
        |> JDP.optional "policy" (JD.nullable JD.string) Nothing




{-| <p>Contains the vault lock policy.</p>
-}
type alias VaultLockPolicy =
    { policy : Maybe String
    }



vaultLockPolicyDecoder : JD.Decoder VaultLockPolicy
vaultLockPolicyDecoder =
    JDP.decode VaultLockPolicy
        |> JDP.optional "policy" (JD.nullable JD.string) Nothing




{-| <p>Represents a vault's notification configuration.</p>
-}
type alias VaultNotificationConfig =
    { sNSTopic : Maybe String
    , events : Maybe (List String)
    }



vaultNotificationConfigDecoder : JD.Decoder VaultNotificationConfig
vaultNotificationConfigDecoder =
    JDP.decode VaultNotificationConfig
        |> JDP.optional "sNSTopic" (JD.nullable JD.string) Nothing
        |> JDP.optional "events" (JD.nullable (JD.list JD.string)) Nothing




