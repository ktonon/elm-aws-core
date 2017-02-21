module AWS.Services.ImportExport
    exposing
        ( config
        , cancelJob
        , CancelJobOptions
        , createJob
        , CreateJobOptions
        , getShippingLabel
        , GetShippingLabelOptions
        , getStatus
        , GetStatusOptions
        , listJobs
        , ListJobsOptions
        , updateJob
        , UpdateJobOptions
        , Artifact
        , BucketPermissionException
        , CancelJobOutput
        , CanceledJobIdException
        , CreateJobOutput
        , CreateJobQuotaExceededException
        , ExpiredJobIdException
        , GetShippingLabelOutput
        , GetStatusOutput
        , InvalidAccessKeyIdException
        , InvalidAddressException
        , InvalidCustomsException
        , InvalidFileSystemException
        , InvalidJobIdException
        , InvalidManifestFieldException
        , InvalidParameterException
        , InvalidVersionException
        , Job
        , JobType(..)
        , ListJobsOutput
        , MalformedManifestException
        , MissingCustomsException
        , MissingManifestFieldException
        , MissingParameterException
        , MultipleRegionsException
        , NoSuchBucketException
        , UnableToCancelJobIdException
        , UnableToUpdateJobIdException
        , UpdateJobOutput
        )

{-| <fullname>AWS Import/Export Service</fullname> AWS Import/Export accelerates transferring large amounts of data between the AWS cloud and portable storage devices that you mail to us. AWS Import/Export transfers data directly onto and off of your storage devices using Amazon's high-speed internal network and bypassing the Internet. For large data sets, AWS Import/Export is often faster than Internet transfer and more cost effective than upgrading your connectivity.

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [cancelJob](#cancelJob)
* [CancelJobOptions](#CancelJobOptions)
* [createJob](#createJob)
* [CreateJobOptions](#CreateJobOptions)
* [getShippingLabel](#getShippingLabel)
* [GetShippingLabelOptions](#GetShippingLabelOptions)
* [getStatus](#getStatus)
* [GetStatusOptions](#GetStatusOptions)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [updateJob](#updateJob)
* [UpdateJobOptions](#UpdateJobOptions)


@docs cancelJob,CancelJobOptions,createJob,CreateJobOptions,getShippingLabel,GetShippingLabelOptions,getStatus,GetStatusOptions,listJobs,ListJobsOptions,updateJob,UpdateJobOptions

## Responses

* [CancelJobOutput](#CancelJobOutput)
* [CreateJobOutput](#CreateJobOutput)
* [GetShippingLabelOutput](#GetShippingLabelOutput)
* [GetStatusOutput](#GetStatusOutput)
* [ListJobsOutput](#ListJobsOutput)
* [UpdateJobOutput](#UpdateJobOutput)


@docs CancelJobOutput,CreateJobOutput,GetShippingLabelOutput,GetStatusOutput,ListJobsOutput,UpdateJobOutput

## Records

* [Artifact](#Artifact)
* [Job](#Job)


@docs Artifact,Job

## Unions

* [JobType](#JobType)


@docs JobType

## Exceptions

* [BucketPermissionException](#BucketPermissionException)
* [CanceledJobIdException](#CanceledJobIdException)
* [CreateJobQuotaExceededException](#CreateJobQuotaExceededException)
* [ExpiredJobIdException](#ExpiredJobIdException)
* [InvalidAccessKeyIdException](#InvalidAccessKeyIdException)
* [InvalidAddressException](#InvalidAddressException)
* [InvalidCustomsException](#InvalidCustomsException)
* [InvalidFileSystemException](#InvalidFileSystemException)
* [InvalidJobIdException](#InvalidJobIdException)
* [InvalidManifestFieldException](#InvalidManifestFieldException)
* [InvalidParameterException](#InvalidParameterException)
* [InvalidVersionException](#InvalidVersionException)
* [MalformedManifestException](#MalformedManifestException)
* [MissingCustomsException](#MissingCustomsException)
* [MissingManifestFieldException](#MissingManifestFieldException)
* [MissingParameterException](#MissingParameterException)
* [MultipleRegionsException](#MultipleRegionsException)
* [NoSuchBucketException](#NoSuchBucketException)
* [UnableToCancelJobIdException](#UnableToCancelJobIdException)
* [UnableToUpdateJobIdException](#UnableToUpdateJobIdException)


@docs BucketPermissionException,CanceledJobIdException,CreateJobQuotaExceededException,ExpiredJobIdException,InvalidAccessKeyIdException,InvalidAddressException,InvalidCustomsException,InvalidFileSystemException,InvalidJobIdException,InvalidManifestFieldException,InvalidParameterException,InvalidVersionException,MalformedManifestException,MissingCustomsException,MissingManifestFieldException,MissingParameterException,MultipleRegionsException,NoSuchBucketException,UnableToCancelJobIdException,UnableToUpdateJobIdException

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
        "importexport"
        "2010-06-01"
        "undefined"
        "AWSIMPORTEXPORT_20100601."
        "importexport.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| This operation cancels a specified job. Only the job owner can cancel it. The operation fails if the job has already started or is complete.

__Required Parameters__

* `jobId` __:__ `String`


-}
cancelJob :
    String
    -> (CancelJobOptions -> CancelJobOptions)
    -> AWS.Http.UnsignedRequest CancelJobOutput
cancelJob jobId setOptions =
  let
    options = setOptions (CancelJobOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CancelJob"
        "POST"
        "/?Operation=CancelJob"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelJobOutputDecoder


{-| Options for a cancelJob request
-}
type alias CancelJobOptions =
    { aPIVersion : Maybe String
    }



{-| This operation initiates the process of scheduling an upload or download of your data. You include in the request a manifest that describes the data transfer specifics. The response to the request includes a job ID, which you can use in other operations, a signature that you use to identify your storage device, and the address where you should ship your storage device.

__Required Parameters__

* `jobType` __:__ `JobType`
* `manifest` __:__ `String`
* `validateOnly` __:__ `Bool`


-}
createJob :
    JobType
    -> String
    -> Bool
    -> (CreateJobOptions -> CreateJobOptions)
    -> AWS.Http.UnsignedRequest CreateJobOutput
createJob jobType manifest validateOnly setOptions =
  let
    options = setOptions (CreateJobOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateJob"
        "POST"
        "/?Operation=CreateJob"
        (AWS.Http.JsonBody
            JE.null
        )
        createJobOutputDecoder


{-| Options for a createJob request
-}
type alias CreateJobOptions =
    { manifestAddendum : Maybe String
    , aPIVersion : Maybe String
    }



{-| This operation generates a pre-paid UPS shipping label that you will use to ship your device to AWS for processing.

__Required Parameters__

* `jobIds` __:__ `(List String)`


-}
getShippingLabel :
    (List String)
    -> (GetShippingLabelOptions -> GetShippingLabelOptions)
    -> AWS.Http.UnsignedRequest GetShippingLabelOutput
getShippingLabel jobIds setOptions =
  let
    options = setOptions (GetShippingLabelOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetShippingLabel"
        "POST"
        "/?Operation=GetShippingLabel"
        (AWS.Http.JsonBody
            JE.null
        )
        getShippingLabelOutputDecoder


{-| Options for a getShippingLabel request
-}
type alias GetShippingLabelOptions =
    { name : Maybe String
    , company : Maybe String
    , phoneNumber : Maybe String
    , country : Maybe String
    , stateOrProvince : Maybe String
    , city : Maybe String
    , postalCode : Maybe String
    , street1 : Maybe String
    , street2 : Maybe String
    , street3 : Maybe String
    , aPIVersion : Maybe String
    }



{-| This operation returns information about a job, including where the job is in the processing pipeline, the status of the results, and the signature value associated with the job. You can only return information about jobs you own.

__Required Parameters__

* `jobId` __:__ `String`


-}
getStatus :
    String
    -> (GetStatusOptions -> GetStatusOptions)
    -> AWS.Http.UnsignedRequest GetStatusOutput
getStatus jobId setOptions =
  let
    options = setOptions (GetStatusOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetStatus"
        "POST"
        "/?Operation=GetStatus"
        (AWS.Http.JsonBody
            JE.null
        )
        getStatusOutputDecoder


{-| Options for a getStatus request
-}
type alias GetStatusOptions =
    { aPIVersion : Maybe String
    }



{-| This operation returns the jobs associated with the requester. AWS Import/Export lists the jobs in reverse chronological order based on the date of creation. For example if Job Test1 was created 2009Dec30 and Test2 was created 2010Feb05, the ListJobs operation would return Test2 followed by Test1.

__Required Parameters__



-}
listJobs :
    (ListJobsOptions -> ListJobsOptions)
    -> AWS.Http.UnsignedRequest ListJobsOutput
listJobs setOptions =
  let
    options = setOptions (ListJobsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListJobs"
        "POST"
        "/?Operation=ListJobs"
        (AWS.Http.JsonBody
            JE.null
        )
        listJobsOutputDecoder


{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    { maxJobs : Maybe Int
    , marker : Maybe String
    , aPIVersion : Maybe String
    }



{-| You use this operation to change the parameters specified in the original manifest file by supplying a new manifest file. The manifest file attached to this request replaces the original manifest file. You can only use the operation after a CreateJob request but before the data transfer starts and you can only use it on jobs you own.

__Required Parameters__

* `jobId` __:__ `String`
* `manifest` __:__ `String`
* `jobType` __:__ `JobType`
* `validateOnly` __:__ `Bool`


-}
updateJob :
    String
    -> String
    -> JobType
    -> Bool
    -> (UpdateJobOptions -> UpdateJobOptions)
    -> AWS.Http.UnsignedRequest UpdateJobOutput
updateJob jobId manifest jobType validateOnly setOptions =
  let
    options = setOptions (UpdateJobOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateJob"
        "POST"
        "/?Operation=UpdateJob"
        (AWS.Http.JsonBody
            JE.null
        )
        updateJobOutputDecoder


{-| Options for a updateJob request
-}
type alias UpdateJobOptions =
    { aPIVersion : Maybe String
    }




{-| A discrete item that contains the description and URL of an artifact (such as a PDF).
-}
type alias Artifact =
    { description : Maybe String
    , uRL : Maybe String
    }



artifactDecoder : JD.Decoder Artifact
artifactDecoder =
    JDP.decode Artifact
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "uRL" (JD.nullable JD.string) Nothing




{-| The account specified does not have the appropriate bucket permissions.
-}
type alias BucketPermissionException =
    { message : Maybe String
    }



bucketPermissionExceptionDecoder : JD.Decoder BucketPermissionException
bucketPermissionExceptionDecoder =
    JDP.decode BucketPermissionException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cancelJ
-}
type alias CancelJobOutput =
    { success : Maybe Bool
    }



cancelJobOutputDecoder : JD.Decoder CancelJobOutput
cancelJobOutputDecoder =
    JDP.decode CancelJobOutput
        |> JDP.optional "success" (JD.nullable JD.bool) Nothing




{-| The specified job ID has been canceled and is no longer valid.
-}
type alias CanceledJobIdException =
    { message : Maybe String
    }



canceledJobIdExceptionDecoder : JD.Decoder CanceledJobIdException
canceledJobIdExceptionDecoder =
    JDP.decode CanceledJobIdException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createJ
-}
type alias CreateJobOutput =
    { jobId : Maybe String
    , jobType : Maybe JobType
    , signature : Maybe String
    , signatureFileContents : Maybe String
    , warningMessage : Maybe String
    , artifactList : Maybe (List Artifact)
    }



createJobOutputDecoder : JD.Decoder CreateJobOutput
createJobOutputDecoder =
    JDP.decode CreateJobOutput
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobType" (JD.nullable jobTypeDecoder) Nothing
        |> JDP.optional "signature" (JD.nullable JD.string) Nothing
        |> JDP.optional "signatureFileContents" (JD.nullable JD.string) Nothing
        |> JDP.optional "warningMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "artifactList" (JD.nullable (JD.list artifactDecoder)) Nothing




{-| Each account can create only a certain number of jobs per day. If you need to create more than this, please contact awsimportexport@amazon.com to explain your particular use case.
-}
type alias CreateJobQuotaExceededException =
    { message : Maybe String
    }



createJobQuotaExceededExceptionDecoder : JD.Decoder CreateJobQuotaExceededException
createJobQuotaExceededExceptionDecoder =
    JDP.decode CreateJobQuotaExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Indicates that the specified job has expired out of the system.
-}
type alias ExpiredJobIdException =
    { message : Maybe String
    }



expiredJobIdExceptionDecoder : JD.Decoder ExpiredJobIdException
expiredJobIdExceptionDecoder =
    JDP.decode ExpiredJobIdException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getShippingLab
-}
type alias GetShippingLabelOutput =
    { shippingLabelURL : Maybe String
    , warning : Maybe String
    }



getShippingLabelOutputDecoder : JD.Decoder GetShippingLabelOutput
getShippingLabelOutputDecoder =
    JDP.decode GetShippingLabelOutput
        |> JDP.optional "shippingLabelURL" (JD.nullable JD.string) Nothing
        |> JDP.optional "warning" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getStat
-}
type alias GetStatusOutput =
    { jobId : Maybe String
    , jobType : Maybe JobType
    , locationCode : Maybe String
    , locationMessage : Maybe String
    , progressCode : Maybe String
    , progressMessage : Maybe String
    , carrier : Maybe String
    , trackingNumber : Maybe String
    , logBucket : Maybe String
    , logKey : Maybe String
    , errorCount : Maybe Int
    , signature : Maybe String
    , signatureFileContents : Maybe String
    , currentManifest : Maybe String
    , creationDate : Maybe Date
    , artifactList : Maybe (List Artifact)
    }



getStatusOutputDecoder : JD.Decoder GetStatusOutput
getStatusOutputDecoder =
    JDP.decode GetStatusOutput
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobType" (JD.nullable jobTypeDecoder) Nothing
        |> JDP.optional "locationCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "locationMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "progressCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "progressMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "carrier" (JD.nullable JD.string) Nothing
        |> JDP.optional "trackingNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "logBucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "logKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "errorCount" (JD.nullable JD.int) Nothing
        |> JDP.optional "signature" (JD.nullable JD.string) Nothing
        |> JDP.optional "signatureFileContents" (JD.nullable JD.string) Nothing
        |> JDP.optional "currentManifest" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "artifactList" (JD.nullable (JD.list artifactDecoder)) Nothing




{-| The AWS Access Key ID specified in the request did not match the manifest's accessKeyId value. The manifest and the request authentication must use the same AWS Access Key ID.
-}
type alias InvalidAccessKeyIdException =
    { message : Maybe String
    }



invalidAccessKeyIdExceptionDecoder : JD.Decoder InvalidAccessKeyIdException
invalidAccessKeyIdExceptionDecoder =
    JDP.decode InvalidAccessKeyIdException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| The address specified in the manifest is invalid.
-}
type alias InvalidAddressException =
    { message : Maybe String
    }



invalidAddressExceptionDecoder : JD.Decoder InvalidAddressException
invalidAddressExceptionDecoder =
    JDP.decode InvalidAddressException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One or more customs parameters was invalid. Please correct and resubmit.
-}
type alias InvalidCustomsException =
    { message : Maybe String
    }



invalidCustomsExceptionDecoder : JD.Decoder InvalidCustomsException
invalidCustomsExceptionDecoder =
    JDP.decode InvalidCustomsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| File system specified in export manifest is invalid.
-}
type alias InvalidFileSystemException =
    { message : Maybe String
    }



invalidFileSystemExceptionDecoder : JD.Decoder InvalidFileSystemException
invalidFileSystemExceptionDecoder =
    JDP.decode InvalidFileSystemException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| The JOBID was missing, not found, or not associated with the AWS account.
-}
type alias InvalidJobIdException =
    { message : Maybe String
    }



invalidJobIdExceptionDecoder : JD.Decoder InvalidJobIdException
invalidJobIdExceptionDecoder =
    JDP.decode InvalidJobIdException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One or more manifest fields was invalid. Please correct and resubmit.
-}
type alias InvalidManifestFieldException =
    { message : Maybe String
    }



invalidManifestFieldExceptionDecoder : JD.Decoder InvalidManifestFieldException
invalidManifestFieldExceptionDecoder =
    JDP.decode InvalidManifestFieldException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One or more parameters had an invalid value.
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| The client tool version is invalid.
-}
type alias InvalidVersionException =
    { message : Maybe String
    }



invalidVersionExceptionDecoder : JD.Decoder InvalidVersionException
invalidVersionExceptionDecoder =
    JDP.decode InvalidVersionException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Representation of a job returned by the ListJobs operation.
-}
type alias Job =
    { jobId : Maybe String
    , creationDate : Maybe Date
    , isCanceled : Maybe Bool
    , jobType : Maybe JobType
    }



jobDecoder : JD.Decoder Job
jobDecoder =
    JDP.decode Job
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "isCanceled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "jobType" (JD.nullable jobTypeDecoder) Nothing




{-| One of

* `JobType_Import`
* `JobType_Export`

-}
type JobType
    = JobType_Import
    | JobType_Export



jobTypeDecoder : JD.Decoder JobType
jobTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Import" ->
                        JD.succeed JobType_Import

                    "Export" ->
                        JD.succeed JobType_Export


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from listJo
-}
type alias ListJobsOutput =
    { jobs : Maybe (List Job)
    , isTruncated : Maybe Bool
    }



listJobsOutputDecoder : JD.Decoder ListJobsOutput
listJobsOutputDecoder =
    JDP.decode ListJobsOutput
        |> JDP.optional "jobs" (JD.nullable (JD.list jobDecoder)) Nothing
        |> JDP.optional "isTruncated" (JD.nullable JD.bool) Nothing




{-| Your manifest is not well-formed.
-}
type alias MalformedManifestException =
    { message : Maybe String
    }



malformedManifestExceptionDecoder : JD.Decoder MalformedManifestException
malformedManifestExceptionDecoder =
    JDP.decode MalformedManifestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One or more required customs parameters was missing from the manifest.
-}
type alias MissingCustomsException =
    { message : Maybe String
    }



missingCustomsExceptionDecoder : JD.Decoder MissingCustomsException
missingCustomsExceptionDecoder =
    JDP.decode MissingCustomsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One or more required fields were missing from the manifest file. Please correct and resubmit.
-}
type alias MissingManifestFieldException =
    { message : Maybe String
    }



missingManifestFieldExceptionDecoder : JD.Decoder MissingManifestFieldException
missingManifestFieldExceptionDecoder =
    JDP.decode MissingManifestFieldException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One or more required parameters was missing from the request.
-}
type alias MissingParameterException =
    { message : Maybe String
    }



missingParameterExceptionDecoder : JD.Decoder MissingParameterException
missingParameterExceptionDecoder =
    JDP.decode MissingParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Your manifest file contained buckets from multiple regions. A job is restricted to buckets from one region. Please correct and resubmit.
-}
type alias MultipleRegionsException =
    { message : Maybe String
    }



multipleRegionsExceptionDecoder : JD.Decoder MultipleRegionsException
multipleRegionsExceptionDecoder =
    JDP.decode MultipleRegionsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| The specified bucket does not exist. Create the specified bucket or change the manifest's bucket, exportBucket, or logBucket field to a bucket that the account, as specified by the manifest's Access Key ID, has write permissions to.
-}
type alias NoSuchBucketException =
    { message : Maybe String
    }



noSuchBucketExceptionDecoder : JD.Decoder NoSuchBucketException
noSuchBucketExceptionDecoder =
    JDP.decode NoSuchBucketException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| AWS Import/Export cannot cancel the job
-}
type alias UnableToCancelJobIdException =
    { message : Maybe String
    }



unableToCancelJobIdExceptionDecoder : JD.Decoder UnableToCancelJobIdException
unableToCancelJobIdExceptionDecoder =
    JDP.decode UnableToCancelJobIdException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| AWS Import/Export cannot update the job
-}
type alias UnableToUpdateJobIdException =
    { message : Maybe String
    }



unableToUpdateJobIdExceptionDecoder : JD.Decoder UnableToUpdateJobIdException
unableToUpdateJobIdExceptionDecoder =
    JDP.decode UnableToUpdateJobIdException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateJ
-}
type alias UpdateJobOutput =
    { success : Maybe Bool
    , warningMessage : Maybe String
    , artifactList : Maybe (List Artifact)
    }



updateJobOutputDecoder : JD.Decoder UpdateJobOutput
updateJobOutputDecoder =
    JDP.decode UpdateJobOutput
        |> JDP.optional "success" (JD.nullable JD.bool) Nothing
        |> JDP.optional "warningMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "artifactList" (JD.nullable (JD.list artifactDecoder)) Nothing




