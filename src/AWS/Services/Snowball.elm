module AWS.Services.Snowball
    exposing
        ( config
        , cancelCluster
        , cancelJob
        , createAddress
        , createCluster
        , CreateClusterOptions
        , createJob
        , CreateJobOptions
        , describeAddress
        , describeAddresses
        , DescribeAddressesOptions
        , describeCluster
        , describeJob
        , getJobManifest
        , getJobUnlockCode
        , getSnowballUsage
        , listClusterJobs
        , ListClusterJobsOptions
        , listClusters
        , ListClustersOptions
        , listJobs
        , ListJobsOptions
        , updateCluster
        , UpdateClusterOptions
        , updateJob
        , UpdateJobOptions
        , Address
        , CancelClusterResult
        , CancelJobResult
        , ClusterLimitExceededException
        , ClusterListEntry
        , ClusterMetadata
        , ClusterState(..)
        , CreateAddressResult
        , CreateClusterResult
        , CreateJobResult
        , DataTransfer
        , DescribeAddressResult
        , DescribeAddressesResult
        , DescribeClusterResult
        , DescribeJobResult
        , EventTriggerDefinition
        , GetJobManifestResult
        , GetJobUnlockCodeResult
        , GetSnowballUsageResult
        , InvalidAddressException
        , InvalidInputCombinationException
        , InvalidJobStateException
        , InvalidResourceException
        , JobListEntry
        , JobLogs
        , JobMetadata
        , JobResource
        , JobState(..)
        , JobType(..)
        , KMSRequestFailedException
        , KeyRange
        , LambdaResource
        , ListClusterJobsResult
        , ListClustersResult
        , ListJobsResult
        , Notification
        , S3Resource
        , Shipment
        , ShippingDetails
        , ShippingOption(..)
        , SnowballCapacity(..)
        , SnowballType(..)
        , UnsupportedAddressException
        , UpdateClusterResult
        , UpdateJobResult
        )

{-| <p>AWS Snowball is a petabyte-scale data transport solution that uses secure appliances to transfer large amounts of data between your on-premises data centers and Amazon Simple Storage Service (Amazon S3). The Snowball commands described here provide access to the same functionality that is available in the AWS Snowball Management Console, which enables you to create and manage jobs for Snowball. To transfer data locally with a Snowball appliance, you'll need to use the Snowball client or the Amazon S3 API adapter for Snowball. For more information, see the <a href="http://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html">User Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [cancelCluster](#cancelCluster)
* [cancelJob](#cancelJob)
* [createAddress](#createAddress)
* [createCluster](#createCluster)
* [CreateClusterOptions](#CreateClusterOptions)
* [createJob](#createJob)
* [CreateJobOptions](#CreateJobOptions)
* [describeAddress](#describeAddress)
* [describeAddresses](#describeAddresses)
* [DescribeAddressesOptions](#DescribeAddressesOptions)
* [describeCluster](#describeCluster)
* [describeJob](#describeJob)
* [getJobManifest](#getJobManifest)
* [getJobUnlockCode](#getJobUnlockCode)
* [getSnowballUsage](#getSnowballUsage)
* [listClusterJobs](#listClusterJobs)
* [ListClusterJobsOptions](#ListClusterJobsOptions)
* [listClusters](#listClusters)
* [ListClustersOptions](#ListClustersOptions)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [updateCluster](#updateCluster)
* [UpdateClusterOptions](#UpdateClusterOptions)
* [updateJob](#updateJob)
* [UpdateJobOptions](#UpdateJobOptions)


@docs cancelCluster,cancelJob,createAddress,createCluster,CreateClusterOptions,createJob,CreateJobOptions,describeAddress,describeAddresses,DescribeAddressesOptions,describeCluster,describeJob,getJobManifest,getJobUnlockCode,getSnowballUsage,listClusterJobs,ListClusterJobsOptions,listClusters,ListClustersOptions,listJobs,ListJobsOptions,updateCluster,UpdateClusterOptions,updateJob,UpdateJobOptions

## Responses

* [CancelClusterResult](#CancelClusterResult)
* [CancelJobResult](#CancelJobResult)
* [CreateAddressResult](#CreateAddressResult)
* [CreateClusterResult](#CreateClusterResult)
* [CreateJobResult](#CreateJobResult)
* [DescribeAddressResult](#DescribeAddressResult)
* [DescribeAddressesResult](#DescribeAddressesResult)
* [DescribeClusterResult](#DescribeClusterResult)
* [DescribeJobResult](#DescribeJobResult)
* [GetJobManifestResult](#GetJobManifestResult)
* [GetJobUnlockCodeResult](#GetJobUnlockCodeResult)
* [GetSnowballUsageResult](#GetSnowballUsageResult)
* [ListClusterJobsResult](#ListClusterJobsResult)
* [ListClustersResult](#ListClustersResult)
* [ListJobsResult](#ListJobsResult)
* [UpdateClusterResult](#UpdateClusterResult)
* [UpdateJobResult](#UpdateJobResult)


@docs CancelClusterResult,CancelJobResult,CreateAddressResult,CreateClusterResult,CreateJobResult,DescribeAddressResult,DescribeAddressesResult,DescribeClusterResult,DescribeJobResult,GetJobManifestResult,GetJobUnlockCodeResult,GetSnowballUsageResult,ListClusterJobsResult,ListClustersResult,ListJobsResult,UpdateClusterResult,UpdateJobResult

## Records

* [Address](#Address)
* [ClusterListEntry](#ClusterListEntry)
* [ClusterMetadata](#ClusterMetadata)
* [DataTransfer](#DataTransfer)
* [EventTriggerDefinition](#EventTriggerDefinition)
* [JobListEntry](#JobListEntry)
* [JobLogs](#JobLogs)
* [JobMetadata](#JobMetadata)
* [JobResource](#JobResource)
* [KeyRange](#KeyRange)
* [LambdaResource](#LambdaResource)
* [Notification](#Notification)
* [S3Resource](#S3Resource)
* [Shipment](#Shipment)
* [ShippingDetails](#ShippingDetails)


@docs Address,ClusterListEntry,ClusterMetadata,DataTransfer,EventTriggerDefinition,JobListEntry,JobLogs,JobMetadata,JobResource,KeyRange,LambdaResource,Notification,S3Resource,Shipment,ShippingDetails

## Unions

* [ClusterState](#ClusterState)
* [JobState](#JobState)
* [JobType](#JobType)
* [ShippingOption](#ShippingOption)
* [SnowballCapacity](#SnowballCapacity)
* [SnowballType](#SnowballType)


@docs ClusterState,JobState,JobType,ShippingOption,SnowballCapacity,SnowballType

## Exceptions

* [ClusterLimitExceededException](#ClusterLimitExceededException)
* [InvalidAddressException](#InvalidAddressException)
* [InvalidInputCombinationException](#InvalidInputCombinationException)
* [InvalidJobStateException](#InvalidJobStateException)
* [InvalidResourceException](#InvalidResourceException)
* [KMSRequestFailedException](#KMSRequestFailedException)
* [UnsupportedAddressException](#UnsupportedAddressException)


@docs ClusterLimitExceededException,InvalidAddressException,InvalidInputCombinationException,InvalidJobStateException,InvalidResourceException,KMSRequestFailedException,UnsupportedAddressException

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
        "snowball"
        "2016-06-30"
        "1.1"
        "AWSSNOWBALL_20160630."
        "snowball.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Cancels a cluster job. You can only cancel a cluster job while it's in the <code>AwaitingQuorum</code> status. You'll have at least an hour after creating a cluster job to cancel it.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}
cancelCluster :
    String
    -> AWS.Http.UnsignedRequest CancelClusterResult
cancelCluster clusterId =
    AWS.Http.unsignedRequest
        "CancelCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelClusterResultDecoder



{-| <p>Cancels the specified job. You can only cancel a job before its <code>JobState</code> value changes to <code>PreparingAppliance</code>. Requesting the <code>ListJobs</code> or <code>DescribeJob</code> action will return a job's <code>JobState</code> as part of the response element data returned.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}
cancelJob :
    String
    -> AWS.Http.UnsignedRequest CancelJobResult
cancelJob jobId =
    AWS.Http.unsignedRequest
        "CancelJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelJobResultDecoder



{-| <p>Creates an address for a Snowball to be shipped to. </p> <p>Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.</p>

__Required Parameters__

* `address` __:__ `Address`


-}
createAddress :
    Address
    -> AWS.Http.UnsignedRequest CreateAddressResult
createAddress address =
    AWS.Http.unsignedRequest
        "CreateAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createAddressResultDecoder



{-| <p>Creates an empty cluster. Each cluster supports five nodes. You use the <a>CreateJob</a> action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.</p>

__Required Parameters__

* `jobType` __:__ `JobType`
* `resources` __:__ `JobResource`
* `addressId` __:__ `String`
* `roleARN` __:__ `String`
* `shippingOption` __:__ `ShippingOption`


-}
createCluster :
    JobType
    -> JobResource
    -> String
    -> String
    -> ShippingOption
    -> (CreateClusterOptions -> CreateClusterOptions)
    -> AWS.Http.UnsignedRequest CreateClusterResult
createCluster jobType resources addressId roleARN shippingOption setOptions =
  let
    options = setOptions (CreateClusterOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createClusterResultDecoder


{-| Options for a createCluster request
-}
type alias CreateClusterOptions =
    { description : Maybe String
    , kmsKeyARN : Maybe String
    , snowballType : Maybe SnowballType
    , notification : Maybe Notification
    }



{-| <p>Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the <code>clusterId</code> value; the other job attributes are inherited from the cluster. .</p>

__Required Parameters__



-}
createJob :
    (CreateJobOptions -> CreateJobOptions)
    -> AWS.Http.UnsignedRequest CreateJobResult
createJob setOptions =
  let
    options = setOptions (CreateJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createJobResultDecoder


{-| Options for a createJob request
-}
type alias CreateJobOptions =
    { jobType : Maybe JobType
    , resources : Maybe JobResource
    , description : Maybe String
    , addressId : Maybe String
    , kmsKeyARN : Maybe String
    , roleARN : Maybe String
    , snowballCapacityPreference : Maybe SnowballCapacity
    , shippingOption : Maybe ShippingOption
    , notification : Maybe Notification
    , clusterId : Maybe String
    , snowballType : Maybe SnowballType
    }



{-| <p>Takes an <code>AddressId</code> and returns specific details about that address in the form of an <code>Address</code> object.</p>

__Required Parameters__

* `addressId` __:__ `String`


-}
describeAddress :
    String
    -> AWS.Http.UnsignedRequest DescribeAddressResult
describeAddress addressId =
    AWS.Http.unsignedRequest
        "DescribeAddress"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAddressResultDecoder



{-| <p>Returns a specified number of <code>ADDRESS</code> objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.</p>

__Required Parameters__



-}
describeAddresses :
    (DescribeAddressesOptions -> DescribeAddressesOptions)
    -> AWS.Http.UnsignedRequest DescribeAddressesResult
describeAddresses setOptions =
  let
    options = setOptions (DescribeAddressesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeAddresses"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeAddressesResultDecoder


{-| Options for a describeAddresses request
-}
type alias DescribeAddressesOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns information about a specific cluster including shipping information, cluster status, and other important metadata.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}
describeCluster :
    String
    -> AWS.Http.UnsignedRequest DescribeClusterResult
describeCluster clusterId =
    AWS.Http.unsignedRequest
        "DescribeCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeClusterResultDecoder



{-| <p>Returns information about a specific job including shipping information, job status, and other important metadata. .</p>

__Required Parameters__

* `jobId` __:__ `String`


-}
describeJob :
    String
    -> AWS.Http.UnsignedRequest DescribeJobResult
describeJob jobId =
    AWS.Http.unsignedRequest
        "DescribeJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeJobResultDecoder



{-| <p>Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified <code>JobId</code> value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the <code>GetJobManifest</code> action.</p> <p>The manifest is an encrypted file that you can download after your job enters the <code>WithCustomer</code> status. The manifest is decrypted by using the <code>UnlockCode</code> code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of an <code>UnlockCode</code> value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p> <p>The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}
getJobManifest :
    String
    -> AWS.Http.UnsignedRequest GetJobManifestResult
getJobManifest jobId =
    AWS.Http.unsignedRequest
        "GetJobManifest"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getJobManifestResultDecoder



{-| <p>Returns the <code>UnlockCode</code> code value for the specified job. A particular <code>UnlockCode</code> value can be accessed for up to 90 days after the associated job has been created.</p> <p>The <code>UnlockCode</code> value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of the <code>UnlockCode</code> in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}
getJobUnlockCode :
    String
    -> AWS.Http.UnsignedRequest GetJobUnlockCodeResult
getJobUnlockCode jobId =
    AWS.Http.unsignedRequest
        "GetJobUnlockCode"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getJobUnlockCodeResultDecoder



{-| <p>Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use.</p> <p>The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.</p>

__Required Parameters__



-}
getSnowballUsage :
    AWS.Http.UnsignedRequest GetSnowballUsageResult
getSnowballUsage =
    AWS.Http.unsignedRequest
        "GetSnowballUsage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSnowballUsageResultDecoder



{-| <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}
listClusterJobs :
    String
    -> (ListClusterJobsOptions -> ListClusterJobsOptions)
    -> AWS.Http.UnsignedRequest ListClusterJobsResult
listClusterJobs clusterId setOptions =
  let
    options = setOptions (ListClusterJobsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListClusterJobs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listClusterJobsResultDecoder


{-| Options for a listClusterJobs request
-}
type alias ListClusterJobsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns an array of <code>ClusterListEntry</code> objects of the specified length. Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other important status information.</p>

__Required Parameters__



-}
listClusters :
    (ListClustersOptions -> ListClustersOptions)
    -> AWS.Http.UnsignedRequest ListClustersResult
listClusters setOptions =
  let
    options = setOptions (ListClustersOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListClusters"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listClustersResultDecoder


{-| Options for a listClusters request
-}
type alias ListClustersOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.</p>

__Required Parameters__



-}
listJobs :
    (ListJobsOptions -> ListJobsOptions)
    -> AWS.Http.UnsignedRequest ListJobsResult
listJobs setOptions =
  let
    options = setOptions (ListJobsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListJobs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listJobsResultDecoder


{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    { maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>While a cluster's <code>ClusterState</code> value is in the <code>AwaitingQuorum</code> state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.</p>

__Required Parameters__

* `clusterId` __:__ `String`


-}
updateCluster :
    String
    -> (UpdateClusterOptions -> UpdateClusterOptions)
    -> AWS.Http.UnsignedRequest UpdateClusterResult
updateCluster clusterId setOptions =
  let
    options = setOptions (UpdateClusterOptions Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateCluster"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateClusterResultDecoder


{-| Options for a updateCluster request
-}
type alias UpdateClusterOptions =
    { roleARN : Maybe String
    , description : Maybe String
    , resources : Maybe JobResource
    , addressId : Maybe String
    , shippingOption : Maybe ShippingOption
    , notification : Maybe Notification
    }



{-| <p>While a job's <code>JobState</code> value is <code>New</code>, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.</p>

__Required Parameters__

* `jobId` __:__ `String`


-}
updateJob :
    String
    -> (UpdateJobOptions -> UpdateJobOptions)
    -> AWS.Http.UnsignedRequest UpdateJobResult
updateJob jobId setOptions =
  let
    options = setOptions (UpdateJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateJobResultDecoder


{-| Options for a updateJob request
-}
type alias UpdateJobOptions =
    { roleARN : Maybe String
    , notification : Maybe Notification
    , resources : Maybe JobResource
    , addressId : Maybe String
    , shippingOption : Maybe ShippingOption
    , description : Maybe String
    , snowballCapacityPreference : Maybe SnowballCapacity
    }




{-| <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>
-}
type alias Address =
    { addressId : Maybe String
    , name : Maybe String
    , company : Maybe String
    , street1 : Maybe String
    , street2 : Maybe String
    , street3 : Maybe String
    , city : Maybe String
    , stateOrProvince : Maybe String
    , prefectureOrDistrict : Maybe String
    , landmark : Maybe String
    , country : Maybe String
    , postalCode : Maybe String
    , phoneNumber : Maybe String
    }



addressDecoder : JD.Decoder Address
addressDecoder =
    JDP.decode Address
        |> JDP.optional "addressId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "company" (JD.nullable JD.string) Nothing
        |> JDP.optional "street1" (JD.nullable JD.string) Nothing
        |> JDP.optional "street2" (JD.nullable JD.string) Nothing
        |> JDP.optional "street3" (JD.nullable JD.string) Nothing
        |> JDP.optional "city" (JD.nullable JD.string) Nothing
        |> JDP.optional "stateOrProvince" (JD.nullable JD.string) Nothing
        |> JDP.optional "prefectureOrDistrict" (JD.nullable JD.string) Nothing
        |> JDP.optional "landmark" (JD.nullable JD.string) Nothing
        |> JDP.optional "country" (JD.nullable JD.string) Nothing
        |> JDP.optional "postalCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "phoneNumber" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cancelClust
-}
type alias CancelClusterResult =
    { 
    }



cancelClusterResultDecoder : JD.Decoder CancelClusterResult
cancelClusterResultDecoder =
    JDP.decode CancelClusterResult



{-| Type of HTTP response from cancelJ
-}
type alias CancelJobResult =
    { 
    }



cancelJobResultDecoder : JD.Decoder CancelJobResult
cancelJobResultDecoder =
    JDP.decode CancelJobResult



{-| <p>Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.</p>
-}
type alias ClusterLimitExceededException =
    { message : Maybe String
    }



clusterLimitExceededExceptionDecoder : JD.Decoder ClusterLimitExceededException
clusterLimitExceededExceptionDecoder =
    JDP.decode ClusterLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
-}
type alias ClusterListEntry =
    { clusterId : Maybe String
    , clusterState : Maybe ClusterState
    , creationDate : Maybe Date
    , description : Maybe String
    }



clusterListEntryDecoder : JD.Decoder ClusterListEntry
clusterListEntryDecoder =
    JDP.decode ClusterListEntry
        |> JDP.optional "clusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterState" (JD.nullable clusterStateDecoder) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Contains metadata about a specific cluster.</p>
-}
type alias ClusterMetadata =
    { clusterId : Maybe String
    , description : Maybe String
    , kmsKeyARN : Maybe String
    , roleARN : Maybe String
    , clusterState : Maybe ClusterState
    , jobType : Maybe JobType
    , snowballType : Maybe SnowballType
    , creationDate : Maybe Date
    , resources : Maybe JobResource
    , addressId : Maybe String
    , shippingOption : Maybe ShippingOption
    , notification : Maybe Notification
    }



clusterMetadataDecoder : JD.Decoder ClusterMetadata
clusterMetadataDecoder =
    JDP.decode ClusterMetadata
        |> JDP.optional "clusterId" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "clusterState" (JD.nullable clusterStateDecoder) Nothing
        |> JDP.optional "jobType" (JD.nullable jobTypeDecoder) Nothing
        |> JDP.optional "snowballType" (JD.nullable snowballTypeDecoder) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "resources" (JD.nullable jobResourceDecoder) Nothing
        |> JDP.optional "addressId" (JD.nullable JD.string) Nothing
        |> JDP.optional "shippingOption" (JD.nullable shippingOptionDecoder) Nothing
        |> JDP.optional "notification" (JD.nullable notificationDecoder) Nothing




{-| One of

* `ClusterState_AwaitingQuorum`
* `ClusterState_Pending`
* `ClusterState_InUse`
* `ClusterState_Complete`
* `ClusterState_Cancelled`

-}
type ClusterState
    = ClusterState_AwaitingQuorum
    | ClusterState_Pending
    | ClusterState_InUse
    | ClusterState_Complete
    | ClusterState_Cancelled



clusterStateDecoder : JD.Decoder ClusterState
clusterStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AwaitingQuorum" ->
                        JD.succeed ClusterState_AwaitingQuorum

                    "Pending" ->
                        JD.succeed ClusterState_Pending

                    "InUse" ->
                        JD.succeed ClusterState_InUse

                    "Complete" ->
                        JD.succeed ClusterState_Complete

                    "Cancelled" ->
                        JD.succeed ClusterState_Cancelled


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createAddre
-}
type alias CreateAddressResult =
    { addressId : Maybe String
    }



createAddressResultDecoder : JD.Decoder CreateAddressResult
createAddressResultDecoder =
    JDP.decode CreateAddressResult
        |> JDP.optional "addressId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createClust
-}
type alias CreateClusterResult =
    { clusterId : Maybe String
    }



createClusterResultDecoder : JD.Decoder CreateClusterResult
createClusterResultDecoder =
    JDP.decode CreateClusterResult
        |> JDP.optional "clusterId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createJ
-}
type alias CreateJobResult =
    { jobId : Maybe String
    }



createJobResultDecoder : JD.Decoder CreateJobResult
createJobResultDecoder =
    JDP.decode CreateJobResult
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing




{-| <p>Defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-}
type alias DataTransfer =
    { bytesTransferred : Maybe Int
    , objectsTransferred : Maybe Int
    , totalBytes : Maybe Int
    , totalObjects : Maybe Int
    }



dataTransferDecoder : JD.Decoder DataTransfer
dataTransferDecoder =
    JDP.decode DataTransfer
        |> JDP.optional "bytesTransferred" (JD.nullable JD.int) Nothing
        |> JDP.optional "objectsTransferred" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "totalObjects" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describeAddre
-}
type alias DescribeAddressResult =
    { address : Maybe Address
    }



describeAddressResultDecoder : JD.Decoder DescribeAddressResult
describeAddressResultDecoder =
    JDP.decode DescribeAddressResult
        |> JDP.optional "address" (JD.nullable addressDecoder) Nothing




{-| Type of HTTP response from describeAddress
-}
type alias DescribeAddressesResult =
    { addresses : Maybe (List Address)
    , nextToken : Maybe String
    }



describeAddressesResultDecoder : JD.Decoder DescribeAddressesResult
describeAddressesResultDecoder =
    JDP.decode DescribeAddressesResult
        |> JDP.optional "addresses" (JD.nullable (JD.list addressDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeClust
-}
type alias DescribeClusterResult =
    { clusterMetadata : Maybe ClusterMetadata
    }



describeClusterResultDecoder : JD.Decoder DescribeClusterResult
describeClusterResultDecoder =
    JDP.decode DescribeClusterResult
        |> JDP.optional "clusterMetadata" (JD.nullable clusterMetadataDecoder) Nothing




{-| Type of HTTP response from describeJ
-}
type alias DescribeJobResult =
    { jobMetadata : Maybe JobMetadata
    , subJobMetadata : Maybe (List JobMetadata)
    }



describeJobResultDecoder : JD.Decoder DescribeJobResult
describeJobResultDecoder =
    JDP.decode DescribeJobResult
        |> JDP.optional "jobMetadata" (JD.nullable jobMetadataDecoder) Nothing
        |> JDP.optional "subJobMetadata" (JD.nullable (JD.list jobMetadataDecoder)) Nothing




{-| <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
-}
type alias EventTriggerDefinition =
    { eventResourceARN : Maybe String
    }



eventTriggerDefinitionDecoder : JD.Decoder EventTriggerDefinition
eventTriggerDefinitionDecoder =
    JDP.decode EventTriggerDefinition
        |> JDP.optional "eventResourceARN" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getJobManife
-}
type alias GetJobManifestResult =
    { manifestURI : Maybe String
    }



getJobManifestResultDecoder : JD.Decoder GetJobManifestResult
getJobManifestResultDecoder =
    JDP.decode GetJobManifestResult
        |> JDP.optional "manifestURI" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getJobUnlockCo
-}
type alias GetJobUnlockCodeResult =
    { unlockCode : Maybe String
    }



getJobUnlockCodeResultDecoder : JD.Decoder GetJobUnlockCodeResult
getJobUnlockCodeResultDecoder =
    JDP.decode GetJobUnlockCodeResult
        |> JDP.optional "unlockCode" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getSnowballUsa
-}
type alias GetSnowballUsageResult =
    { snowballLimit : Maybe Int
    , snowballsInUse : Maybe Int
    }



getSnowballUsageResultDecoder : JD.Decoder GetSnowballUsageResult
getSnowballUsageResultDecoder =
    JDP.decode GetSnowballUsageResult
        |> JDP.optional "snowballLimit" (JD.nullable JD.int) Nothing
        |> JDP.optional "snowballsInUse" (JD.nullable JD.int) Nothing




{-| <p>The address provided was invalid. Check the address with your region's carrier, and try again.</p>
-}
type alias InvalidAddressException =
    { message : Maybe String
    }



invalidAddressExceptionDecoder : JD.Decoder InvalidAddressException
invalidAddressExceptionDecoder =
    JDP.decode InvalidAddressException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Job or cluster creation failed. One ore more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
-}
type alias InvalidInputCombinationException =
    { message : Maybe String
    }



invalidInputCombinationExceptionDecoder : JD.Decoder InvalidInputCombinationException
invalidInputCombinationExceptionDecoder =
    JDP.decode InvalidInputCombinationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The action can't be performed because the job's current state doesn't allow that action to be performed.</p>
-}
type alias InvalidJobStateException =
    { message : Maybe String
    }



invalidJobStateExceptionDecoder : JD.Decoder InvalidJobStateException
invalidJobStateExceptionDecoder =
    JDP.decode InvalidJobStateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified resource can't be found. Check the information you provided in your last request, and try again.</p>
-}
type alias InvalidResourceException =
    { message : Maybe String
    }



invalidResourceExceptionDecoder : JD.Decoder InvalidResourceException
invalidResourceExceptionDecoder =
    JDP.decode InvalidResourceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>
-}
type alias JobListEntry =
    { jobId : Maybe String
    , jobState : Maybe JobState
    , isMaster : Maybe Bool
    , jobType : Maybe JobType
    , snowballType : Maybe SnowballType
    , creationDate : Maybe Date
    , description : Maybe String
    }



jobListEntryDecoder : JD.Decoder JobListEntry
jobListEntryDecoder =
    JDP.decode JobListEntry
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobState" (JD.nullable jobStateDecoder) Nothing
        |> JDP.optional "isMaster" (JD.nullable JD.bool) Nothing
        |> JDP.optional "jobType" (JD.nullable jobTypeDecoder) Nothing
        |> JDP.optional "snowballType" (JD.nullable snowballTypeDecoder) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>
-}
type alias JobLogs =
    { jobCompletionReportURI : Maybe String
    , jobSuccessLogURI : Maybe String
    , jobFailureLogURI : Maybe String
    }



jobLogsDecoder : JD.Decoder JobLogs
jobLogsDecoder =
    JDP.decode JobLogs
        |> JDP.optional "jobCompletionReportURI" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobSuccessLogURI" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobFailureLogURI" (JD.nullable JD.string) Nothing




{-| <p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>
-}
type alias JobMetadata =
    { jobId : Maybe String
    , jobState : Maybe JobState
    , jobType : Maybe JobType
    , snowballType : Maybe SnowballType
    , creationDate : Maybe Date
    , resources : Maybe JobResource
    , description : Maybe String
    , kmsKeyARN : Maybe String
    , roleARN : Maybe String
    , addressId : Maybe String
    , shippingDetails : Maybe ShippingDetails
    , snowballCapacityPreference : Maybe SnowballCapacity
    , notification : Maybe Notification
    , dataTransferProgress : Maybe DataTransfer
    , jobLogInfo : Maybe JobLogs
    , clusterId : Maybe String
    }



jobMetadataDecoder : JD.Decoder JobMetadata
jobMetadataDecoder =
    JDP.decode JobMetadata
        |> JDP.optional "jobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobState" (JD.nullable jobStateDecoder) Nothing
        |> JDP.optional "jobType" (JD.nullable jobTypeDecoder) Nothing
        |> JDP.optional "snowballType" (JD.nullable snowballTypeDecoder) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "resources" (JD.nullable jobResourceDecoder) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "kmsKeyARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "roleARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "addressId" (JD.nullable JD.string) Nothing
        |> JDP.optional "shippingDetails" (JD.nullable shippingDetailsDecoder) Nothing
        |> JDP.optional "snowballCapacityPreference" (JD.nullable snowballCapacityDecoder) Nothing
        |> JDP.optional "notification" (JD.nullable notificationDecoder) Nothing
        |> JDP.optional "dataTransferProgress" (JD.nullable dataTransferDecoder) Nothing
        |> JDP.optional "jobLogInfo" (JD.nullable jobLogsDecoder) Nothing
        |> JDP.optional "clusterId" (JD.nullable JD.string) Nothing




{-| <p>Contains an array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
-}
type alias JobResource =
    { s3Resources : Maybe (List S3Resource)
    , lambdaResources : Maybe (List LambdaResource)
    }



jobResourceDecoder : JD.Decoder JobResource
jobResourceDecoder =
    JDP.decode JobResource
        |> JDP.optional "s3Resources" (JD.nullable (JD.list s3ResourceDecoder)) Nothing
        |> JDP.optional "lambdaResources" (JD.nullable (JD.list lambdaResourceDecoder)) Nothing




{-| One of

* `JobState_New`
* `JobState_PreparingAppliance`
* `JobState_PreparingShipment`
* `JobState_InTransitToCustomer`
* `JobState_WithCustomer`
* `JobState_InTransitToAWS`
* `JobState_WithAWS`
* `JobState_InProgress`
* `JobState_Complete`
* `JobState_Cancelled`
* `JobState_Listing`
* `JobState_Pending`

-}
type JobState
    = JobState_New
    | JobState_PreparingAppliance
    | JobState_PreparingShipment
    | JobState_InTransitToCustomer
    | JobState_WithCustomer
    | JobState_InTransitToAWS
    | JobState_WithAWS
    | JobState_InProgress
    | JobState_Complete
    | JobState_Cancelled
    | JobState_Listing
    | JobState_Pending



jobStateDecoder : JD.Decoder JobState
jobStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "New" ->
                        JD.succeed JobState_New

                    "PreparingAppliance" ->
                        JD.succeed JobState_PreparingAppliance

                    "PreparingShipment" ->
                        JD.succeed JobState_PreparingShipment

                    "InTransitToCustomer" ->
                        JD.succeed JobState_InTransitToCustomer

                    "WithCustomer" ->
                        JD.succeed JobState_WithCustomer

                    "InTransitToAWS" ->
                        JD.succeed JobState_InTransitToAWS

                    "WithAWS" ->
                        JD.succeed JobState_WithAWS

                    "InProgress" ->
                        JD.succeed JobState_InProgress

                    "Complete" ->
                        JD.succeed JobState_Complete

                    "Cancelled" ->
                        JD.succeed JobState_Cancelled

                    "Listing" ->
                        JD.succeed JobState_Listing

                    "Pending" ->
                        JD.succeed JobState_Pending


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `JobType_IMPORT`
* `JobType_EXPORT`
* `JobType_LOCAL_USE`

-}
type JobType
    = JobType_IMPORT
    | JobType_EXPORT
    | JobType_LOCAL_USE



jobTypeDecoder : JD.Decoder JobType
jobTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPORT" ->
                        JD.succeed JobType_IMPORT

                    "EXPORT" ->
                        JD.succeed JobType_EXPORT

                    "LOCAL_USE" ->
                        JD.succeed JobType_LOCAL_USE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The provided AWS Key Management Service key lacks the permissions to perform the specified <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
-}
type alias KMSRequestFailedException =
    { message : Maybe String
    }



kMSRequestFailedExceptionDecoder : JD.Decoder KMSRequestFailedException
kMSRequestFailedExceptionDecoder =
    JDP.decode KMSRequestFailedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-}
type alias KeyRange =
    { beginMarker : Maybe String
    , endMarker : Maybe String
    }



keyRangeDecoder : JD.Decoder KeyRange
keyRangeDecoder =
    JDP.decode KeyRange
        |> JDP.optional "beginMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "endMarker" (JD.nullable JD.string) Nothing




{-| <p>Identifies </p>
-}
type alias LambdaResource =
    { lambdaArn : Maybe String
    , eventTriggers : Maybe (List EventTriggerDefinition)
    }



lambdaResourceDecoder : JD.Decoder LambdaResource
lambdaResourceDecoder =
    JDP.decode LambdaResource
        |> JDP.optional "lambdaArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "eventTriggers" (JD.nullable (JD.list eventTriggerDefinitionDecoder)) Nothing




{-| Type of HTTP response from listClusterJo
-}
type alias ListClusterJobsResult =
    { jobListEntries : Maybe (List JobListEntry)
    , nextToken : Maybe String
    }



listClusterJobsResultDecoder : JD.Decoder ListClusterJobsResult
listClusterJobsResultDecoder =
    JDP.decode ListClusterJobsResult
        |> JDP.optional "jobListEntries" (JD.nullable (JD.list jobListEntryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listCluste
-}
type alias ListClustersResult =
    { clusterListEntries : Maybe (List ClusterListEntry)
    , nextToken : Maybe String
    }



listClustersResultDecoder : JD.Decoder ListClustersResult
listClustersResultDecoder =
    JDP.decode ListClustersResult
        |> JDP.optional "clusterListEntries" (JD.nullable (JD.list clusterListEntryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listJo
-}
type alias ListJobsResult =
    { jobListEntries : Maybe (List JobListEntry)
    , nextToken : Maybe String
    }



listJobsResultDecoder : JD.Decoder ListJobsResult
listJobsResultDecoder =
    JDP.decode ListJobsResult
        |> JDP.optional "jobListEntries" (JD.nullable (JD.list jobListEntryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>
-}
type alias Notification =
    { snsTopicARN : Maybe String
    , jobStatesToNotify : Maybe (List JobState)
    , notifyAll : Maybe Bool
    }



notificationDecoder : JD.Decoder Notification
notificationDecoder =
    JDP.decode Notification
        |> JDP.optional "snsTopicARN" (JD.nullable JD.string) Nothing
        |> JDP.optional "jobStatesToNotify" (JD.nullable (JD.list jobStateDecoder)) Nothing
        |> JDP.optional "notifyAll" (JD.nullable JD.bool) Nothing




{-| <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-}
type alias S3Resource =
    { bucketArn : Maybe String
    , keyRange : Maybe KeyRange
    }



s3ResourceDecoder : JD.Decoder S3Resource
s3ResourceDecoder =
    JDP.decode S3Resource
        |> JDP.optional "bucketArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyRange" (JD.nullable keyRangeDecoder) Nothing




{-| <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>
-}
type alias Shipment =
    { status : Maybe String
    , trackingNumber : Maybe String
    }



shipmentDecoder : JD.Decoder Shipment
shipmentDecoder =
    JDP.decode Shipment
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "trackingNumber" (JD.nullable JD.string) Nothing




{-| <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
-}
type alias ShippingDetails =
    { shippingOption : Maybe ShippingOption
    , inboundShipment : Maybe Shipment
    , outboundShipment : Maybe Shipment
    }



shippingDetailsDecoder : JD.Decoder ShippingDetails
shippingDetailsDecoder =
    JDP.decode ShippingDetails
        |> JDP.optional "shippingOption" (JD.nullable shippingOptionDecoder) Nothing
        |> JDP.optional "inboundShipment" (JD.nullable shipmentDecoder) Nothing
        |> JDP.optional "outboundShipment" (JD.nullable shipmentDecoder) Nothing




{-| One of

* `ShippingOption_SECOND_DAY`
* `ShippingOption_NEXT_DAY`
* `ShippingOption_EXPRESS`
* `ShippingOption_STANDARD`

-}
type ShippingOption
    = ShippingOption_SECOND_DAY
    | ShippingOption_NEXT_DAY
    | ShippingOption_EXPRESS
    | ShippingOption_STANDARD



shippingOptionDecoder : JD.Decoder ShippingOption
shippingOptionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SECOND_DAY" ->
                        JD.succeed ShippingOption_SECOND_DAY

                    "NEXT_DAY" ->
                        JD.succeed ShippingOption_NEXT_DAY

                    "EXPRESS" ->
                        JD.succeed ShippingOption_EXPRESS

                    "STANDARD" ->
                        JD.succeed ShippingOption_STANDARD


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `SnowballCapacity_T50`
* `SnowballCapacity_T80`
* `SnowballCapacity_T100`
* `SnowballCapacity_NoPreference`

-}
type SnowballCapacity
    = SnowballCapacity_T50
    | SnowballCapacity_T80
    | SnowballCapacity_T100
    | SnowballCapacity_NoPreference



snowballCapacityDecoder : JD.Decoder SnowballCapacity
snowballCapacityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "T50" ->
                        JD.succeed SnowballCapacity_T50

                    "T80" ->
                        JD.succeed SnowballCapacity_T80

                    "T100" ->
                        JD.succeed SnowballCapacity_T100

                    "NoPreference" ->
                        JD.succeed SnowballCapacity_NoPreference


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `SnowballType_STANDARD`
* `SnowballType_EDGE`

-}
type SnowballType
    = SnowballType_STANDARD
    | SnowballType_EDGE



snowballTypeDecoder : JD.Decoder SnowballType
snowballTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STANDARD" ->
                        JD.succeed SnowballType_STANDARD

                    "EDGE" ->
                        JD.succeed SnowballType_EDGE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.</p>
-}
type alias UnsupportedAddressException =
    { message : Maybe String
    }



unsupportedAddressExceptionDecoder : JD.Decoder UnsupportedAddressException
unsupportedAddressExceptionDecoder =
    JDP.decode UnsupportedAddressException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateClust
-}
type alias UpdateClusterResult =
    { 
    }



updateClusterResultDecoder : JD.Decoder UpdateClusterResult
updateClusterResultDecoder =
    JDP.decode UpdateClusterResult



{-| Type of HTTP response from updateJ
-}
type alias UpdateJobResult =
    { 
    }



updateJobResultDecoder : JD.Decoder UpdateJobResult
updateJobResultDecoder =
    JDP.decode UpdateJobResult



