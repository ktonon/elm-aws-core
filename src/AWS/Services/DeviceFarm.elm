module AWS.Services.DeviceFarm
    exposing
        ( config
        , createDevicePool
        , CreateDevicePoolOptions
        , createProject
        , createRemoteAccessSession
        , CreateRemoteAccessSessionOptions
        , createUpload
        , CreateUploadOptions
        , deleteDevicePool
        , deleteProject
        , deleteRemoteAccessSession
        , deleteRun
        , deleteUpload
        , getAccountSettings
        , getDevice
        , getDevicePool
        , getDevicePoolCompatibility
        , GetDevicePoolCompatibilityOptions
        , getJob
        , getOfferingStatus
        , GetOfferingStatusOptions
        , getProject
        , getRemoteAccessSession
        , getRun
        , getSuite
        , getTest
        , getUpload
        , installToRemoteAccessSession
        , listArtifacts
        , ListArtifactsOptions
        , listDevicePools
        , ListDevicePoolsOptions
        , listDevices
        , ListDevicesOptions
        , listJobs
        , ListJobsOptions
        , listOfferingTransactions
        , ListOfferingTransactionsOptions
        , listOfferings
        , ListOfferingsOptions
        , listProjects
        , ListProjectsOptions
        , listRemoteAccessSessions
        , ListRemoteAccessSessionsOptions
        , listRuns
        , ListRunsOptions
        , listSamples
        , ListSamplesOptions
        , listSuites
        , ListSuitesOptions
        , listTests
        , ListTestsOptions
        , listUniqueProblems
        , ListUniqueProblemsOptions
        , listUploads
        , ListUploadsOptions
        , purchaseOffering
        , PurchaseOfferingOptions
        , renewOffering
        , RenewOfferingOptions
        , scheduleRun
        , ScheduleRunOptions
        , stopRemoteAccessSession
        , stopRun
        , updateDevicePool
        , UpdateDevicePoolOptions
        , updateProject
        , UpdateProjectOptions
        , AccountSettings
        , ArgumentException
        , Artifact
        , ArtifactCategory(..)
        , ArtifactType(..)
        , BillingMethod(..)
        , CPU
        , Counters
        , CreateDevicePoolResult
        , CreateProjectResult
        , CreateRemoteAccessSessionConfiguration
        , CreateRemoteAccessSessionResult
        , CreateUploadResult
        , CurrencyCode(..)
        , DeleteDevicePoolResult
        , DeleteProjectResult
        , DeleteRemoteAccessSessionResult
        , DeleteRunResult
        , DeleteUploadResult
        , Device
        , DeviceAttribute(..)
        , DeviceFormFactor(..)
        , DeviceMinutes
        , DevicePlatform(..)
        , DevicePool
        , DevicePoolCompatibilityResult
        , DevicePoolType(..)
        , ExecutionResult(..)
        , ExecutionStatus(..)
        , GetAccountSettingsResult
        , GetDevicePoolCompatibilityResult
        , GetDevicePoolResult
        , GetDeviceResult
        , GetJobResult
        , GetOfferingStatusResult
        , GetProjectResult
        , GetRemoteAccessSessionResult
        , GetRunResult
        , GetSuiteResult
        , GetTestResult
        , GetUploadResult
        , IdempotencyException
        , IncompatibilityMessage
        , InstallToRemoteAccessSessionResult
        , Job
        , LimitExceededException
        , ListArtifactsResult
        , ListDevicePoolsResult
        , ListDevicesResult
        , ListJobsResult
        , ListOfferingTransactionsResult
        , ListOfferingsResult
        , ListProjectsResult
        , ListRemoteAccessSessionsResult
        , ListRunsResult
        , ListSamplesResult
        , ListSuitesResult
        , ListTestsResult
        , ListUniqueProblemsResult
        , ListUploadsResult
        , Location
        , MonetaryAmount
        , NotEligibleException
        , NotFoundException
        , Offering
        , OfferingStatus
        , OfferingTransaction
        , OfferingTransactionType(..)
        , OfferingType(..)
        , Problem
        , ProblemDetail
        , Project
        , PurchaseOfferingResult
        , Radios
        , RecurringCharge
        , RecurringChargeFrequency(..)
        , RemoteAccessSession
        , RenewOfferingResult
        , Resolution
        , Rule
        , RuleOperator(..)
        , Run
        , Sample
        , SampleType(..)
        , ScheduleRunConfiguration
        , ScheduleRunResult
        , ScheduleRunTest
        , ServiceAccountException
        , StopRemoteAccessSessionResult
        , StopRunResult
        , Suite
        , Test
        , TestType(..)
        , UniqueProblem
        , UpdateDevicePoolResult
        , UpdateProjectResult
        , Upload
        , UploadStatus(..)
        , UploadType(..)
        )

{-| <p>AWS Device Farm is a service that enables mobile app developers to test Android, iOS, and Fire OS apps on physical phones, tablets, and other devices in the cloud.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [createDevicePool](#createDevicePool)
* [CreateDevicePoolOptions](#CreateDevicePoolOptions)
* [createProject](#createProject)
* [createRemoteAccessSession](#createRemoteAccessSession)
* [CreateRemoteAccessSessionOptions](#CreateRemoteAccessSessionOptions)
* [createUpload](#createUpload)
* [CreateUploadOptions](#CreateUploadOptions)
* [deleteDevicePool](#deleteDevicePool)
* [deleteProject](#deleteProject)
* [deleteRemoteAccessSession](#deleteRemoteAccessSession)
* [deleteRun](#deleteRun)
* [deleteUpload](#deleteUpload)
* [getAccountSettings](#getAccountSettings)
* [getDevice](#getDevice)
* [getDevicePool](#getDevicePool)
* [getDevicePoolCompatibility](#getDevicePoolCompatibility)
* [GetDevicePoolCompatibilityOptions](#GetDevicePoolCompatibilityOptions)
* [getJob](#getJob)
* [getOfferingStatus](#getOfferingStatus)
* [GetOfferingStatusOptions](#GetOfferingStatusOptions)
* [getProject](#getProject)
* [getRemoteAccessSession](#getRemoteAccessSession)
* [getRun](#getRun)
* [getSuite](#getSuite)
* [getTest](#getTest)
* [getUpload](#getUpload)
* [installToRemoteAccessSession](#installToRemoteAccessSession)
* [listArtifacts](#listArtifacts)
* [ListArtifactsOptions](#ListArtifactsOptions)
* [listDevicePools](#listDevicePools)
* [ListDevicePoolsOptions](#ListDevicePoolsOptions)
* [listDevices](#listDevices)
* [ListDevicesOptions](#ListDevicesOptions)
* [listJobs](#listJobs)
* [ListJobsOptions](#ListJobsOptions)
* [listOfferingTransactions](#listOfferingTransactions)
* [ListOfferingTransactionsOptions](#ListOfferingTransactionsOptions)
* [listOfferings](#listOfferings)
* [ListOfferingsOptions](#ListOfferingsOptions)
* [listProjects](#listProjects)
* [ListProjectsOptions](#ListProjectsOptions)
* [listRemoteAccessSessions](#listRemoteAccessSessions)
* [ListRemoteAccessSessionsOptions](#ListRemoteAccessSessionsOptions)
* [listRuns](#listRuns)
* [ListRunsOptions](#ListRunsOptions)
* [listSamples](#listSamples)
* [ListSamplesOptions](#ListSamplesOptions)
* [listSuites](#listSuites)
* [ListSuitesOptions](#ListSuitesOptions)
* [listTests](#listTests)
* [ListTestsOptions](#ListTestsOptions)
* [listUniqueProblems](#listUniqueProblems)
* [ListUniqueProblemsOptions](#ListUniqueProblemsOptions)
* [listUploads](#listUploads)
* [ListUploadsOptions](#ListUploadsOptions)
* [purchaseOffering](#purchaseOffering)
* [PurchaseOfferingOptions](#PurchaseOfferingOptions)
* [renewOffering](#renewOffering)
* [RenewOfferingOptions](#RenewOfferingOptions)
* [scheduleRun](#scheduleRun)
* [ScheduleRunOptions](#ScheduleRunOptions)
* [stopRemoteAccessSession](#stopRemoteAccessSession)
* [stopRun](#stopRun)
* [updateDevicePool](#updateDevicePool)
* [UpdateDevicePoolOptions](#UpdateDevicePoolOptions)
* [updateProject](#updateProject)
* [UpdateProjectOptions](#UpdateProjectOptions)


@docs createDevicePool,CreateDevicePoolOptions,createProject,createRemoteAccessSession,CreateRemoteAccessSessionOptions,createUpload,CreateUploadOptions,deleteDevicePool,deleteProject,deleteRemoteAccessSession,deleteRun,deleteUpload,getAccountSettings,getDevice,getDevicePool,getDevicePoolCompatibility,GetDevicePoolCompatibilityOptions,getJob,getOfferingStatus,GetOfferingStatusOptions,getProject,getRemoteAccessSession,getRun,getSuite,getTest,getUpload,installToRemoteAccessSession,listArtifacts,ListArtifactsOptions,listDevicePools,ListDevicePoolsOptions,listDevices,ListDevicesOptions,listJobs,ListJobsOptions,listOfferingTransactions,ListOfferingTransactionsOptions,listOfferings,ListOfferingsOptions,listProjects,ListProjectsOptions,listRemoteAccessSessions,ListRemoteAccessSessionsOptions,listRuns,ListRunsOptions,listSamples,ListSamplesOptions,listSuites,ListSuitesOptions,listTests,ListTestsOptions,listUniqueProblems,ListUniqueProblemsOptions,listUploads,ListUploadsOptions,purchaseOffering,PurchaseOfferingOptions,renewOffering,RenewOfferingOptions,scheduleRun,ScheduleRunOptions,stopRemoteAccessSession,stopRun,updateDevicePool,UpdateDevicePoolOptions,updateProject,UpdateProjectOptions

## Responses

* [CreateDevicePoolResult](#CreateDevicePoolResult)
* [CreateProjectResult](#CreateProjectResult)
* [CreateRemoteAccessSessionResult](#CreateRemoteAccessSessionResult)
* [CreateUploadResult](#CreateUploadResult)
* [DeleteDevicePoolResult](#DeleteDevicePoolResult)
* [DeleteProjectResult](#DeleteProjectResult)
* [DeleteRemoteAccessSessionResult](#DeleteRemoteAccessSessionResult)
* [DeleteRunResult](#DeleteRunResult)
* [DeleteUploadResult](#DeleteUploadResult)
* [GetAccountSettingsResult](#GetAccountSettingsResult)
* [GetDevicePoolCompatibilityResult](#GetDevicePoolCompatibilityResult)
* [GetDevicePoolResult](#GetDevicePoolResult)
* [GetDeviceResult](#GetDeviceResult)
* [GetJobResult](#GetJobResult)
* [GetOfferingStatusResult](#GetOfferingStatusResult)
* [GetProjectResult](#GetProjectResult)
* [GetRemoteAccessSessionResult](#GetRemoteAccessSessionResult)
* [GetRunResult](#GetRunResult)
* [GetSuiteResult](#GetSuiteResult)
* [GetTestResult](#GetTestResult)
* [GetUploadResult](#GetUploadResult)
* [InstallToRemoteAccessSessionResult](#InstallToRemoteAccessSessionResult)
* [ListArtifactsResult](#ListArtifactsResult)
* [ListDevicePoolsResult](#ListDevicePoolsResult)
* [ListDevicesResult](#ListDevicesResult)
* [ListJobsResult](#ListJobsResult)
* [ListOfferingTransactionsResult](#ListOfferingTransactionsResult)
* [ListOfferingsResult](#ListOfferingsResult)
* [ListProjectsResult](#ListProjectsResult)
* [ListRemoteAccessSessionsResult](#ListRemoteAccessSessionsResult)
* [ListRunsResult](#ListRunsResult)
* [ListSamplesResult](#ListSamplesResult)
* [ListSuitesResult](#ListSuitesResult)
* [ListTestsResult](#ListTestsResult)
* [ListUniqueProblemsResult](#ListUniqueProblemsResult)
* [ListUploadsResult](#ListUploadsResult)
* [PurchaseOfferingResult](#PurchaseOfferingResult)
* [RenewOfferingResult](#RenewOfferingResult)
* [ScheduleRunResult](#ScheduleRunResult)
* [StopRemoteAccessSessionResult](#StopRemoteAccessSessionResult)
* [StopRunResult](#StopRunResult)
* [UpdateDevicePoolResult](#UpdateDevicePoolResult)
* [UpdateProjectResult](#UpdateProjectResult)


@docs CreateDevicePoolResult,CreateProjectResult,CreateRemoteAccessSessionResult,CreateUploadResult,DeleteDevicePoolResult,DeleteProjectResult,DeleteRemoteAccessSessionResult,DeleteRunResult,DeleteUploadResult,GetAccountSettingsResult,GetDevicePoolCompatibilityResult,GetDevicePoolResult,GetDeviceResult,GetJobResult,GetOfferingStatusResult,GetProjectResult,GetRemoteAccessSessionResult,GetRunResult,GetSuiteResult,GetTestResult,GetUploadResult,InstallToRemoteAccessSessionResult,ListArtifactsResult,ListDevicePoolsResult,ListDevicesResult,ListJobsResult,ListOfferingTransactionsResult,ListOfferingsResult,ListProjectsResult,ListRemoteAccessSessionsResult,ListRunsResult,ListSamplesResult,ListSuitesResult,ListTestsResult,ListUniqueProblemsResult,ListUploadsResult,PurchaseOfferingResult,RenewOfferingResult,ScheduleRunResult,StopRemoteAccessSessionResult,StopRunResult,UpdateDevicePoolResult,UpdateProjectResult

## Records

* [AccountSettings](#AccountSettings)
* [Artifact](#Artifact)
* [CPU](#CPU)
* [Counters](#Counters)
* [CreateRemoteAccessSessionConfiguration](#CreateRemoteAccessSessionConfiguration)
* [Device](#Device)
* [DeviceMinutes](#DeviceMinutes)
* [DevicePool](#DevicePool)
* [DevicePoolCompatibilityResult](#DevicePoolCompatibilityResult)
* [IncompatibilityMessage](#IncompatibilityMessage)
* [Job](#Job)
* [Location](#Location)
* [MonetaryAmount](#MonetaryAmount)
* [Offering](#Offering)
* [OfferingStatus](#OfferingStatus)
* [OfferingTransaction](#OfferingTransaction)
* [Problem](#Problem)
* [ProblemDetail](#ProblemDetail)
* [Project](#Project)
* [Radios](#Radios)
* [RecurringCharge](#RecurringCharge)
* [RemoteAccessSession](#RemoteAccessSession)
* [Resolution](#Resolution)
* [Rule](#Rule)
* [Run](#Run)
* [Sample](#Sample)
* [ScheduleRunConfiguration](#ScheduleRunConfiguration)
* [ScheduleRunTest](#ScheduleRunTest)
* [Suite](#Suite)
* [Test](#Test)
* [UniqueProblem](#UniqueProblem)
* [Upload](#Upload)


@docs AccountSettings,Artifact,CPU,Counters,CreateRemoteAccessSessionConfiguration,Device,DeviceMinutes,DevicePool,DevicePoolCompatibilityResult,IncompatibilityMessage,Job,Location,MonetaryAmount,Offering,OfferingStatus,OfferingTransaction,Problem,ProblemDetail,Project,Radios,RecurringCharge,RemoteAccessSession,Resolution,Rule,Run,Sample,ScheduleRunConfiguration,ScheduleRunTest,Suite,Test,UniqueProblem,Upload

## Unions

* [ArtifactCategory](#ArtifactCategory)
* [ArtifactType](#ArtifactType)
* [BillingMethod](#BillingMethod)
* [CurrencyCode](#CurrencyCode)
* [DeviceAttribute](#DeviceAttribute)
* [DeviceFormFactor](#DeviceFormFactor)
* [DevicePlatform](#DevicePlatform)
* [DevicePoolType](#DevicePoolType)
* [ExecutionResult](#ExecutionResult)
* [ExecutionStatus](#ExecutionStatus)
* [OfferingTransactionType](#OfferingTransactionType)
* [OfferingType](#OfferingType)
* [RecurringChargeFrequency](#RecurringChargeFrequency)
* [RuleOperator](#RuleOperator)
* [SampleType](#SampleType)
* [TestType](#TestType)
* [UploadStatus](#UploadStatus)
* [UploadType](#UploadType)


@docs ArtifactCategory,ArtifactType,BillingMethod,CurrencyCode,DeviceAttribute,DeviceFormFactor,DevicePlatform,DevicePoolType,ExecutionResult,ExecutionStatus,OfferingTransactionType,OfferingType,RecurringChargeFrequency,RuleOperator,SampleType,TestType,UploadStatus,UploadType

## Exceptions

* [ArgumentException](#ArgumentException)
* [IdempotencyException](#IdempotencyException)
* [LimitExceededException](#LimitExceededException)
* [NotEligibleException](#NotEligibleException)
* [NotFoundException](#NotFoundException)
* [ServiceAccountException](#ServiceAccountException)


@docs ArgumentException,IdempotencyException,LimitExceededException,NotEligibleException,NotFoundException,ServiceAccountException

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
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config maybeCreds =
    AWS.Config.Service
        "devicefarm"
        "2015-06-23"
        "1.1"
        "AWSDEVICEFARM_20150623."
        "devicefarm.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Creates a device pool.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `name` __:__ `String`
* `rules` __:__ `(List Rule)`


-}
createDevicePool :
    String
    -> String
    -> (List Rule)
    -> (CreateDevicePoolOptions -> CreateDevicePoolOptions)
    -> AWS.Request CreateDevicePoolResult
createDevicePool projectArn name rules setOptions =
  let
    options = setOptions (CreateDevicePoolOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateDevicePool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createDevicePoolResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createDevicePool request
-}
type alias CreateDevicePoolOptions =
    { description : Maybe String
    }



{-| <p>Creates a new project.</p>

__Required Parameters__

* `name` __:__ `String`


-}
createProject :
    String
    -> AWS.Request CreateProjectResult
createProject name =
    AWS.Http.unsignedRequest
        "CreateProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createProjectResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Specifies and starts a remote access session.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `deviceArn` __:__ `String`


-}
createRemoteAccessSession :
    String
    -> String
    -> (CreateRemoteAccessSessionOptions -> CreateRemoteAccessSessionOptions)
    -> AWS.Request CreateRemoteAccessSessionResult
createRemoteAccessSession projectArn deviceArn setOptions =
  let
    options = setOptions (CreateRemoteAccessSessionOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateRemoteAccessSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRemoteAccessSessionResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createRemoteAccessSession request
-}
type alias CreateRemoteAccessSessionOptions =
    { name : Maybe String
    , configuration : Maybe CreateRemoteAccessSessionConfiguration
    }



{-| <p>Uploads an app or test scripts.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `name` __:__ `String`
* `type_` __:__ `UploadType`


-}
createUpload :
    String
    -> String
    -> UploadType
    -> (CreateUploadOptions -> CreateUploadOptions)
    -> AWS.Request CreateUploadResult
createUpload projectArn name type_ setOptions =
  let
    options = setOptions (CreateUploadOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateUpload"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createUploadResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a createUpload request
-}
type alias CreateUploadOptions =
    { contentType : Maybe String
    }



{-| <p>Deletes a device pool given the pool ARN. Does not allow deletion of curated pools owned by the system.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
deleteDevicePool :
    String
    -> AWS.Request DeleteDevicePoolResult
deleteDevicePool arn =
    AWS.Http.unsignedRequest
        "DeleteDevicePool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDevicePoolResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes an AWS Device Farm project, given the project ARN.</p> <p> <b>Note</b> Deleting this resource does not stop an in-progress run.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
deleteProject :
    String
    -> AWS.Request DeleteProjectResult
deleteProject arn =
    AWS.Http.unsignedRequest
        "DeleteProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteProjectResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes a completed remote access session and its results.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
deleteRemoteAccessSession :
    String
    -> AWS.Request DeleteRemoteAccessSessionResult
deleteRemoteAccessSession arn =
    AWS.Http.unsignedRequest
        "DeleteRemoteAccessSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRemoteAccessSessionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the run, given the run ARN.</p> <p> <b>Note</b> Deleting this resource does not stop an in-progress run.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
deleteRun :
    String
    -> AWS.Request DeleteRunResult
deleteRun arn =
    AWS.Http.unsignedRequest
        "DeleteRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRunResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes an upload given the upload ARN.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
deleteUpload :
    String
    -> AWS.Request DeleteUploadResult
deleteUpload arn =
    AWS.Http.unsignedRequest
        "DeleteUpload"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteUploadResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the number of unmetered iOS and/or unmetered Android devices that have been purchased by the account.</p>

__Required Parameters__



-}
getAccountSettings :
    AWS.Request GetAccountSettingsResult
getAccountSettings =
    AWS.Http.unsignedRequest
        "GetAccountSettings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getAccountSettingsResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about a unique device type.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getDevice :
    String
    -> AWS.Request GetDeviceResult
getDevice arn =
    AWS.Http.unsignedRequest
        "GetDevice"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDeviceResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about a device pool.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getDevicePool :
    String
    -> AWS.Request GetDevicePoolResult
getDevicePool arn =
    AWS.Http.unsignedRequest
        "GetDevicePool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDevicePoolResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about compatibility with a device pool.</p>

__Required Parameters__

* `devicePoolArn` __:__ `String`


-}
getDevicePoolCompatibility :
    String
    -> (GetDevicePoolCompatibilityOptions -> GetDevicePoolCompatibilityOptions)
    -> AWS.Request GetDevicePoolCompatibilityResult
getDevicePoolCompatibility devicePoolArn setOptions =
  let
    options = setOptions (GetDevicePoolCompatibilityOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDevicePoolCompatibility"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDevicePoolCompatibilityResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getDevicePoolCompatibility request
-}
type alias GetDevicePoolCompatibilityOptions =
    { appArn : Maybe String
    , testType : Maybe TestType
    }



{-| <p>Gets information about a job.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getJob :
    String
    -> AWS.Request GetJobResult
getJob arn =
    AWS.Http.unsignedRequest
        "GetJob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getJobResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets the current status and future status of all offerings purchased by an AWS account. The response indicates how many offerings are currently available and the offerings that will be available in the next period. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}
getOfferingStatus :
    (GetOfferingStatusOptions -> GetOfferingStatusOptions)
    -> AWS.Request GetOfferingStatusResult
getOfferingStatus setOptions =
  let
    options = setOptions (GetOfferingStatusOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetOfferingStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getOfferingStatusResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a getOfferingStatus request
-}
type alias GetOfferingStatusOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about a project.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getProject :
    String
    -> AWS.Request GetProjectResult
getProject arn =
    AWS.Http.unsignedRequest
        "GetProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getProjectResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a link to a currently running remote access session.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getRemoteAccessSession :
    String
    -> AWS.Request GetRemoteAccessSessionResult
getRemoteAccessSession arn =
    AWS.Http.unsignedRequest
        "GetRemoteAccessSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRemoteAccessSessionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about a run.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getRun :
    String
    -> AWS.Request GetRunResult
getRun arn =
    AWS.Http.unsignedRequest
        "GetRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRunResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about a suite.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getSuite :
    String
    -> AWS.Request GetSuiteResult
getSuite arn =
    AWS.Http.unsignedRequest
        "GetSuite"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getSuiteResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about a test.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getTest :
    String
    -> AWS.Request GetTestResult
getTest arn =
    AWS.Http.unsignedRequest
        "GetTest"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getTestResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about an upload.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
getUpload :
    String
    -> AWS.Request GetUploadResult
getUpload arn =
    AWS.Http.unsignedRequest
        "GetUpload"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getUploadResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Installs an application to the device in a remote access session. For Android applications, the file must be in .apk format. For iOS applications, the file must be in .ipa format.</p>

__Required Parameters__

* `remoteAccessSessionArn` __:__ `String`
* `appArn` __:__ `String`


-}
installToRemoteAccessSession :
    String
    -> String
    -> AWS.Request InstallToRemoteAccessSessionResult
installToRemoteAccessSession remoteAccessSessionArn appArn =
    AWS.Http.unsignedRequest
        "InstallToRemoteAccessSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        installToRemoteAccessSessionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about artifacts.</p>

__Required Parameters__

* `arn` __:__ `String`
* `type_` __:__ `ArtifactCategory`


-}
listArtifacts :
    String
    -> ArtifactCategory
    -> (ListArtifactsOptions -> ListArtifactsOptions)
    -> AWS.Request ListArtifactsResult
listArtifacts arn type_ setOptions =
  let
    options = setOptions (ListArtifactsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListArtifacts"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listArtifactsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listArtifacts request
-}
type alias ListArtifactsOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about device pools.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listDevicePools :
    String
    -> (ListDevicePoolsOptions -> ListDevicePoolsOptions)
    -> AWS.Request ListDevicePoolsResult
listDevicePools arn setOptions =
  let
    options = setOptions (ListDevicePoolsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDevicePools"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDevicePoolsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDevicePools request
-}
type alias ListDevicePoolsOptions =
    { type_ : Maybe DevicePoolType
    , nextToken : Maybe String
    }



{-| <p>Gets information about unique device types.</p>

__Required Parameters__



-}
listDevices :
    (ListDevicesOptions -> ListDevicesOptions)
    -> AWS.Request ListDevicesResult
listDevices setOptions =
  let
    options = setOptions (ListDevicesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDevices"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listDevicesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listDevices request
-}
type alias ListDevicesOptions =
    { arn : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Gets information about jobs.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listJobs :
    String
    -> (ListJobsOptions -> ListJobsOptions)
    -> AWS.Request ListJobsResult
listJobs arn setOptions =
  let
    options = setOptions (ListJobsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListJobs"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listJobsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listJobs request
-}
type alias ListJobsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS account. The list is paginated and ordered by a descending timestamp (most recent transactions are first). The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}
listOfferingTransactions :
    (ListOfferingTransactionsOptions -> ListOfferingTransactionsOptions)
    -> AWS.Request ListOfferingTransactionsResult
listOfferingTransactions setOptions =
  let
    options = setOptions (ListOfferingTransactionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListOfferingTransactions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listOfferingTransactionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listOfferingTransactions request
-}
type alias ListOfferingTransactionsOptions =
    { nextToken : Maybe String
    }



{-| <p>Returns a list of products or offerings that the user can manage through the API. Each offering record indicates the recurring price per unit and the frequency for that offering. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}
listOfferings :
    (ListOfferingsOptions -> ListOfferingsOptions)
    -> AWS.Request ListOfferingsResult
listOfferings setOptions =
  let
    options = setOptions (ListOfferingsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListOfferings"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listOfferingsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listOfferings request
-}
type alias ListOfferingsOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about projects.</p>

__Required Parameters__



-}
listProjects :
    (ListProjectsOptions -> ListProjectsOptions)
    -> AWS.Request ListProjectsResult
listProjects setOptions =
  let
    options = setOptions (ListProjectsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListProjects"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listProjectsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listProjects request
-}
type alias ListProjectsOptions =
    { arn : Maybe String
    , nextToken : Maybe String
    }



{-| <p>Returns a list of all currently running remote access sessions.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listRemoteAccessSessions :
    String
    -> (ListRemoteAccessSessionsOptions -> ListRemoteAccessSessionsOptions)
    -> AWS.Request ListRemoteAccessSessionsResult
listRemoteAccessSessions arn setOptions =
  let
    options = setOptions (ListRemoteAccessSessionsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRemoteAccessSessions"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRemoteAccessSessionsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRemoteAccessSessions request
-}
type alias ListRemoteAccessSessionsOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about runs, given an AWS Device Farm project ARN.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listRuns :
    String
    -> (ListRunsOptions -> ListRunsOptions)
    -> AWS.Request ListRunsResult
listRuns arn setOptions =
  let
    options = setOptions (ListRunsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRuns"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRunsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRuns request
-}
type alias ListRunsOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about samples, given an AWS Device Farm project ARN</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listSamples :
    String
    -> (ListSamplesOptions -> ListSamplesOptions)
    -> AWS.Request ListSamplesResult
listSamples arn setOptions =
  let
    options = setOptions (ListSamplesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSamples"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSamplesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listSamples request
-}
type alias ListSamplesOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about suites.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listSuites :
    String
    -> (ListSuitesOptions -> ListSuitesOptions)
    -> AWS.Request ListSuitesResult
listSuites arn setOptions =
  let
    options = setOptions (ListSuitesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListSuites"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listSuitesResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listSuites request
-}
type alias ListSuitesOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about tests.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listTests :
    String
    -> (ListTestsOptions -> ListTestsOptions)
    -> AWS.Request ListTestsResult
listTests arn setOptions =
  let
    options = setOptions (ListTestsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTests"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTestsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listTests request
-}
type alias ListTestsOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about unique problems.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listUniqueProblems :
    String
    -> (ListUniqueProblemsOptions -> ListUniqueProblemsOptions)
    -> AWS.Request ListUniqueProblemsResult
listUniqueProblems arn setOptions =
  let
    options = setOptions (ListUniqueProblemsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUniqueProblems"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUniqueProblemsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listUniqueProblems request
-}
type alias ListUniqueProblemsOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about uploads, given an AWS Device Farm project ARN.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
listUploads :
    String
    -> (ListUploadsOptions -> ListUploadsOptions)
    -> AWS.Request ListUploadsResult
listUploads arn setOptions =
  let
    options = setOptions (ListUploadsOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListUploads"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listUploadsResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a listUploads request
-}
type alias ListUploadsOptions =
    { nextToken : Maybe String
    }



{-| <p>Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased quantity for an offering, unless the renewal was overridden. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}
purchaseOffering :
    (PurchaseOfferingOptions -> PurchaseOfferingOptions)
    -> AWS.Request PurchaseOfferingResult
purchaseOffering setOptions =
  let
    options = setOptions (PurchaseOfferingOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PurchaseOffering"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        purchaseOfferingResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a purchaseOffering request
-}
type alias PurchaseOfferingOptions =
    { offeringId : Maybe String
    , quantity : Maybe Int
    }



{-| <p>Explicitly sets the quantity of devices to renew for an offering, starting from the <code>effectiveDate</code> of the next period. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. Please contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you believe that you should be able to invoke this operation.</p>

__Required Parameters__



-}
renewOffering :
    (RenewOfferingOptions -> RenewOfferingOptions)
    -> AWS.Request RenewOfferingResult
renewOffering setOptions =
  let
    options = setOptions (RenewOfferingOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RenewOffering"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        renewOfferingResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a renewOffering request
-}
type alias RenewOfferingOptions =
    { offeringId : Maybe String
    , quantity : Maybe Int
    }



{-| <p>Schedules a run.</p>

__Required Parameters__

* `projectArn` __:__ `String`
* `devicePoolArn` __:__ `String`
* `test` __:__ `ScheduleRunTest`


-}
scheduleRun :
    String
    -> String
    -> ScheduleRunTest
    -> (ScheduleRunOptions -> ScheduleRunOptions)
    -> AWS.Request ScheduleRunResult
scheduleRun projectArn devicePoolArn test setOptions =
  let
    options = setOptions (ScheduleRunOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ScheduleRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        scheduleRunResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a scheduleRun request
-}
type alias ScheduleRunOptions =
    { appArn : Maybe String
    , name : Maybe String
    , configuration : Maybe ScheduleRunConfiguration
    }



{-| <p>Ends a specified remote access session.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
stopRemoteAccessSession :
    String
    -> AWS.Request StopRemoteAccessSessionResult
stopRemoteAccessSession arn =
    AWS.Http.unsignedRequest
        "StopRemoteAccessSession"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopRemoteAccessSessionResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Initiates a stop request for the current test run. AWS Device Farm will immediately stop the run on devices where tests have not started executing, and you will not be billed for these devices. On devices where tests have started executing, Setup Suite and Teardown Suite tests will run to completion before stopping execution on those devices. You will be billed for Setup, Teardown, and any tests that were in progress or already completed.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
stopRun :
    String
    -> AWS.Request StopRunResult
stopRun arn =
    AWS.Http.unsignedRequest
        "StopRun"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopRunResultDecoder
        |> AWS.UnsignedRequest



{-| <p>Modifies the name, description, and rules in a device pool given the attributes and the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a whole (or not at all).</p>

__Required Parameters__

* `arn` __:__ `String`


-}
updateDevicePool :
    String
    -> (UpdateDevicePoolOptions -> UpdateDevicePoolOptions)
    -> AWS.Request UpdateDevicePoolResult
updateDevicePool arn setOptions =
  let
    options = setOptions (UpdateDevicePoolOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateDevicePool"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateDevicePoolResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateDevicePool request
-}
type alias UpdateDevicePoolOptions =
    { name : Maybe String
    , description : Maybe String
    , rules : Maybe (List Rule)
    }



{-| <p>Modifies the specified project name, given the project ARN and a new name.</p>

__Required Parameters__

* `arn` __:__ `String`


-}
updateProject :
    String
    -> (UpdateProjectOptions -> UpdateProjectOptions)
    -> AWS.Request UpdateProjectResult
updateProject arn setOptions =
  let
    options = setOptions (UpdateProjectOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateProjectResultDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateProject request
-}
type alias UpdateProjectOptions =
    { name : Maybe String
    }




{-| <p>A container for account-level settings within AWS Device Farm.</p>
-}
type alias AccountSettings =
    { awsAccountNumber : Maybe String
    , unmeteredDevices : Maybe (Dict String Int)
    , unmeteredRemoteAccessDevices : Maybe (Dict String Int)
    }



accountSettingsDecoder : JD.Decoder AccountSettings
accountSettingsDecoder =
    JDP.decode AccountSettings
        |> JDP.optional "awsAccountNumber" (JD.nullable JD.string) Nothing
        |> JDP.optional "unmeteredDevices" (JD.nullable (JD.dict JD.int)) Nothing
        |> JDP.optional "unmeteredRemoteAccessDevices" (JD.nullable (JD.dict JD.int)) Nothing




{-| <p>An invalid argument was specified.</p>
-}
type alias ArgumentException =
    { message : Maybe String
    }



argumentExceptionDecoder : JD.Decoder ArgumentException
argumentExceptionDecoder =
    JDP.decode ArgumentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Represents the output of a test. Examples of artifacts include logs and screenshots.</p>
-}
type alias Artifact =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe ArtifactType
    , extension : Maybe String
    , url : Maybe String
    }



artifactDecoder : JD.Decoder Artifact
artifactDecoder =
    JDP.decode Artifact
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable artifactTypeDecoder) Nothing
        |> JDP.optional "extension" (JD.nullable JD.string) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing




{-| One of

* `ArtifactCategory_SCREENSHOT`
* `ArtifactCategory_FILE`
* `ArtifactCategory_LOG`

-}
type ArtifactCategory
    = ArtifactCategory_SCREENSHOT
    | ArtifactCategory_FILE
    | ArtifactCategory_LOG



artifactCategoryDecoder : JD.Decoder ArtifactCategory
artifactCategoryDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SCREENSHOT" ->
                        JD.succeed ArtifactCategory_SCREENSHOT

                    "FILE" ->
                        JD.succeed ArtifactCategory_FILE

                    "LOG" ->
                        JD.succeed ArtifactCategory_LOG


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ArtifactType_UNKNOWN`
* `ArtifactType_SCREENSHOT`
* `ArtifactType_DEVICE_LOG`
* `ArtifactType_MESSAGE_LOG`
* `ArtifactType_VIDEO_LOG`
* `ArtifactType_RESULT_LOG`
* `ArtifactType_SERVICE_LOG`
* `ArtifactType_WEBKIT_LOG`
* `ArtifactType_INSTRUMENTATION_OUTPUT`
* `ArtifactType_EXERCISER_MONKEY_OUTPUT`
* `ArtifactType_CALABASH_JSON_OUTPUT`
* `ArtifactType_CALABASH_PRETTY_OUTPUT`
* `ArtifactType_CALABASH_STANDARD_OUTPUT`
* `ArtifactType_CALABASH_JAVA_XML_OUTPUT`
* `ArtifactType_AUTOMATION_OUTPUT`
* `ArtifactType_APPIUM_SERVER_OUTPUT`
* `ArtifactType_APPIUM_JAVA_OUTPUT`
* `ArtifactType_APPIUM_JAVA_XML_OUTPUT`
* `ArtifactType_APPIUM_PYTHON_OUTPUT`
* `ArtifactType_APPIUM_PYTHON_XML_OUTPUT`
* `ArtifactType_EXPLORER_EVENT_LOG`
* `ArtifactType_EXPLORER_SUMMARY_LOG`
* `ArtifactType_APPLICATION_CRASH_REPORT`
* `ArtifactType_XCTEST_LOG`
* `ArtifactType_VIDEO`

-}
type ArtifactType
    = ArtifactType_UNKNOWN
    | ArtifactType_SCREENSHOT
    | ArtifactType_DEVICE_LOG
    | ArtifactType_MESSAGE_LOG
    | ArtifactType_VIDEO_LOG
    | ArtifactType_RESULT_LOG
    | ArtifactType_SERVICE_LOG
    | ArtifactType_WEBKIT_LOG
    | ArtifactType_INSTRUMENTATION_OUTPUT
    | ArtifactType_EXERCISER_MONKEY_OUTPUT
    | ArtifactType_CALABASH_JSON_OUTPUT
    | ArtifactType_CALABASH_PRETTY_OUTPUT
    | ArtifactType_CALABASH_STANDARD_OUTPUT
    | ArtifactType_CALABASH_JAVA_XML_OUTPUT
    | ArtifactType_AUTOMATION_OUTPUT
    | ArtifactType_APPIUM_SERVER_OUTPUT
    | ArtifactType_APPIUM_JAVA_OUTPUT
    | ArtifactType_APPIUM_JAVA_XML_OUTPUT
    | ArtifactType_APPIUM_PYTHON_OUTPUT
    | ArtifactType_APPIUM_PYTHON_XML_OUTPUT
    | ArtifactType_EXPLORER_EVENT_LOG
    | ArtifactType_EXPLORER_SUMMARY_LOG
    | ArtifactType_APPLICATION_CRASH_REPORT
    | ArtifactType_XCTEST_LOG
    | ArtifactType_VIDEO



artifactTypeDecoder : JD.Decoder ArtifactType
artifactTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNKNOWN" ->
                        JD.succeed ArtifactType_UNKNOWN

                    "SCREENSHOT" ->
                        JD.succeed ArtifactType_SCREENSHOT

                    "DEVICE_LOG" ->
                        JD.succeed ArtifactType_DEVICE_LOG

                    "MESSAGE_LOG" ->
                        JD.succeed ArtifactType_MESSAGE_LOG

                    "VIDEO_LOG" ->
                        JD.succeed ArtifactType_VIDEO_LOG

                    "RESULT_LOG" ->
                        JD.succeed ArtifactType_RESULT_LOG

                    "SERVICE_LOG" ->
                        JD.succeed ArtifactType_SERVICE_LOG

                    "WEBKIT_LOG" ->
                        JD.succeed ArtifactType_WEBKIT_LOG

                    "INSTRUMENTATION_OUTPUT" ->
                        JD.succeed ArtifactType_INSTRUMENTATION_OUTPUT

                    "EXERCISER_MONKEY_OUTPUT" ->
                        JD.succeed ArtifactType_EXERCISER_MONKEY_OUTPUT

                    "CALABASH_JSON_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_JSON_OUTPUT

                    "CALABASH_PRETTY_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_PRETTY_OUTPUT

                    "CALABASH_STANDARD_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_STANDARD_OUTPUT

                    "CALABASH_JAVA_XML_OUTPUT" ->
                        JD.succeed ArtifactType_CALABASH_JAVA_XML_OUTPUT

                    "AUTOMATION_OUTPUT" ->
                        JD.succeed ArtifactType_AUTOMATION_OUTPUT

                    "APPIUM_SERVER_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_SERVER_OUTPUT

                    "APPIUM_JAVA_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_JAVA_OUTPUT

                    "APPIUM_JAVA_XML_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_JAVA_XML_OUTPUT

                    "APPIUM_PYTHON_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_PYTHON_OUTPUT

                    "APPIUM_PYTHON_XML_OUTPUT" ->
                        JD.succeed ArtifactType_APPIUM_PYTHON_XML_OUTPUT

                    "EXPLORER_EVENT_LOG" ->
                        JD.succeed ArtifactType_EXPLORER_EVENT_LOG

                    "EXPLORER_SUMMARY_LOG" ->
                        JD.succeed ArtifactType_EXPLORER_SUMMARY_LOG

                    "APPLICATION_CRASH_REPORT" ->
                        JD.succeed ArtifactType_APPLICATION_CRASH_REPORT

                    "XCTEST_LOG" ->
                        JD.succeed ArtifactType_XCTEST_LOG

                    "VIDEO" ->
                        JD.succeed ArtifactType_VIDEO


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `BillingMethod_METERED`
* `BillingMethod_UNMETERED`

-}
type BillingMethod
    = BillingMethod_METERED
    | BillingMethod_UNMETERED



billingMethodDecoder : JD.Decoder BillingMethod
billingMethodDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "METERED" ->
                        JD.succeed BillingMethod_METERED

                    "UNMETERED" ->
                        JD.succeed BillingMethod_UNMETERED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the amount of CPU that an app is using on a physical device.</p> <p>Note that this does not represent system-wide CPU usage.</p>
-}
type alias CPU =
    { frequency : Maybe String
    , architecture : Maybe String
    , clock : Maybe Float
    }



cPUDecoder : JD.Decoder CPU
cPUDecoder =
    JDP.decode CPU
        |> JDP.optional "frequency" (JD.nullable JD.string) Nothing
        |> JDP.optional "architecture" (JD.nullable JD.string) Nothing
        |> JDP.optional "clock" (JD.nullable JD.float) Nothing




{-| <p>Represents entity counters.</p>
-}
type alias Counters =
    { total : Maybe Int
    , passed : Maybe Int
    , failed : Maybe Int
    , warned : Maybe Int
    , errored : Maybe Int
    , stopped : Maybe Int
    , skipped : Maybe Int
    }



countersDecoder : JD.Decoder Counters
countersDecoder =
    JDP.decode Counters
        |> JDP.optional "total" (JD.nullable JD.int) Nothing
        |> JDP.optional "passed" (JD.nullable JD.int) Nothing
        |> JDP.optional "failed" (JD.nullable JD.int) Nothing
        |> JDP.optional "warned" (JD.nullable JD.int) Nothing
        |> JDP.optional "errored" (JD.nullable JD.int) Nothing
        |> JDP.optional "stopped" (JD.nullable JD.int) Nothing
        |> JDP.optional "skipped" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from createDevicePo
-}
type alias CreateDevicePoolResult =
    { devicePool : Maybe DevicePool
    }



createDevicePoolResultDecoder : JD.Decoder CreateDevicePoolResult
createDevicePoolResultDecoder =
    JDP.decode CreateDevicePoolResult
        |> JDP.optional "devicePool" (JD.nullable devicePoolDecoder) Nothing




{-| Type of HTTP response from createProje
-}
type alias CreateProjectResult =
    { project : Maybe Project
    }



createProjectResultDecoder : JD.Decoder CreateProjectResult
createProjectResultDecoder =
    JDP.decode CreateProjectResult
        |> JDP.optional "project" (JD.nullable projectDecoder) Nothing




{-| <p>Creates the configuration settings for a remote access session, including the device model and type.</p>
-}
type alias CreateRemoteAccessSessionConfiguration =
    { billingMethod : Maybe BillingMethod
    }



createRemoteAccessSessionConfigurationDecoder : JD.Decoder CreateRemoteAccessSessionConfiguration
createRemoteAccessSessionConfigurationDecoder =
    JDP.decode CreateRemoteAccessSessionConfiguration
        |> JDP.optional "billingMethod" (JD.nullable billingMethodDecoder) Nothing




{-| Type of HTTP response from createRemoteAccessSessi
-}
type alias CreateRemoteAccessSessionResult =
    { remoteAccessSession : Maybe RemoteAccessSession
    }



createRemoteAccessSessionResultDecoder : JD.Decoder CreateRemoteAccessSessionResult
createRemoteAccessSessionResultDecoder =
    JDP.decode CreateRemoteAccessSessionResult
        |> JDP.optional "remoteAccessSession" (JD.nullable remoteAccessSessionDecoder) Nothing




{-| Type of HTTP response from createUplo
-}
type alias CreateUploadResult =
    { upload : Maybe Upload
    }



createUploadResultDecoder : JD.Decoder CreateUploadResult
createUploadResultDecoder =
    JDP.decode CreateUploadResult
        |> JDP.optional "upload" (JD.nullable uploadDecoder) Nothing




{-| One of

* `CurrencyCode_USD`

-}
type CurrencyCode
    = CurrencyCode_USD



currencyCodeDecoder : JD.Decoder CurrencyCode
currencyCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "USD" ->
                        JD.succeed CurrencyCode_USD


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from deleteDevicePo
-}
type alias DeleteDevicePoolResult =
    { 
    }



deleteDevicePoolResultDecoder : JD.Decoder DeleteDevicePoolResult
deleteDevicePoolResultDecoder =
    JDP.decode DeleteDevicePoolResult



{-| Type of HTTP response from deleteProje
-}
type alias DeleteProjectResult =
    { 
    }



deleteProjectResultDecoder : JD.Decoder DeleteProjectResult
deleteProjectResultDecoder =
    JDP.decode DeleteProjectResult



{-| Type of HTTP response from deleteRemoteAccessSessi
-}
type alias DeleteRemoteAccessSessionResult =
    { 
    }



deleteRemoteAccessSessionResultDecoder : JD.Decoder DeleteRemoteAccessSessionResult
deleteRemoteAccessSessionResultDecoder =
    JDP.decode DeleteRemoteAccessSessionResult



{-| Type of HTTP response from deleteR
-}
type alias DeleteRunResult =
    { 
    }



deleteRunResultDecoder : JD.Decoder DeleteRunResult
deleteRunResultDecoder =
    JDP.decode DeleteRunResult



{-| Type of HTTP response from deleteUplo
-}
type alias DeleteUploadResult =
    { 
    }



deleteUploadResultDecoder : JD.Decoder DeleteUploadResult
deleteUploadResultDecoder =
    JDP.decode DeleteUploadResult



{-| <p>Represents a device type that an app is tested against.</p>
-}
type alias Device =
    { arn : Maybe String
    , name : Maybe String
    , manufacturer : Maybe String
    , model : Maybe String
    , formFactor : Maybe DeviceFormFactor
    , platform : Maybe DevicePlatform
    , os : Maybe String
    , cpu : Maybe CPU
    , resolution : Maybe Resolution
    , heapSize : Maybe Int
    , memory : Maybe Int
    , image : Maybe String
    , carrier : Maybe String
    , radio : Maybe String
    , remoteAccessEnabled : Maybe Bool
    , fleetType : Maybe String
    , fleetName : Maybe String
    }



deviceDecoder : JD.Decoder Device
deviceDecoder =
    JDP.decode Device
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "manufacturer" (JD.nullable JD.string) Nothing
        |> JDP.optional "model" (JD.nullable JD.string) Nothing
        |> JDP.optional "formFactor" (JD.nullable deviceFormFactorDecoder) Nothing
        |> JDP.optional "platform" (JD.nullable devicePlatformDecoder) Nothing
        |> JDP.optional "os" (JD.nullable JD.string) Nothing
        |> JDP.optional "cpu" (JD.nullable cPUDecoder) Nothing
        |> JDP.optional "resolution" (JD.nullable resolutionDecoder) Nothing
        |> JDP.optional "heapSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "memory" (JD.nullable JD.int) Nothing
        |> JDP.optional "image" (JD.nullable JD.string) Nothing
        |> JDP.optional "carrier" (JD.nullable JD.string) Nothing
        |> JDP.optional "radio" (JD.nullable JD.string) Nothing
        |> JDP.optional "remoteAccessEnabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "fleetType" (JD.nullable JD.string) Nothing
        |> JDP.optional "fleetName" (JD.nullable JD.string) Nothing




{-| One of

* `DeviceAttribute_ARN`
* `DeviceAttribute_PLATFORM`
* `DeviceAttribute_FORM_FACTOR`
* `DeviceAttribute_MANUFACTURER`
* `DeviceAttribute_REMOTE_ACCESS_ENABLED`

-}
type DeviceAttribute
    = DeviceAttribute_ARN
    | DeviceAttribute_PLATFORM
    | DeviceAttribute_FORM_FACTOR
    | DeviceAttribute_MANUFACTURER
    | DeviceAttribute_REMOTE_ACCESS_ENABLED



deviceAttributeDecoder : JD.Decoder DeviceAttribute
deviceAttributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ARN" ->
                        JD.succeed DeviceAttribute_ARN

                    "PLATFORM" ->
                        JD.succeed DeviceAttribute_PLATFORM

                    "FORM_FACTOR" ->
                        JD.succeed DeviceAttribute_FORM_FACTOR

                    "MANUFACTURER" ->
                        JD.succeed DeviceAttribute_MANUFACTURER

                    "REMOTE_ACCESS_ENABLED" ->
                        JD.succeed DeviceAttribute_REMOTE_ACCESS_ENABLED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `DeviceFormFactor_PHONE`
* `DeviceFormFactor_TABLET`

-}
type DeviceFormFactor
    = DeviceFormFactor_PHONE
    | DeviceFormFactor_TABLET



deviceFormFactorDecoder : JD.Decoder DeviceFormFactor
deviceFormFactorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PHONE" ->
                        JD.succeed DeviceFormFactor_PHONE

                    "TABLET" ->
                        JD.succeed DeviceFormFactor_TABLET


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the total (metered or unmetered) minutes used by the resource to run tests. Contains the sum of minutes consumed by all children.</p>
-}
type alias DeviceMinutes =
    { total : Maybe Float
    , metered : Maybe Float
    , unmetered : Maybe Float
    }



deviceMinutesDecoder : JD.Decoder DeviceMinutes
deviceMinutesDecoder =
    JDP.decode DeviceMinutes
        |> JDP.optional "total" (JD.nullable JD.float) Nothing
        |> JDP.optional "metered" (JD.nullable JD.float) Nothing
        |> JDP.optional "unmetered" (JD.nullable JD.float) Nothing




{-| One of

* `DevicePlatform_ANDROID`
* `DevicePlatform_IOS`

-}
type DevicePlatform
    = DevicePlatform_ANDROID
    | DevicePlatform_IOS



devicePlatformDecoder : JD.Decoder DevicePlatform
devicePlatformDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ANDROID" ->
                        JD.succeed DevicePlatform_ANDROID

                    "IOS" ->
                        JD.succeed DevicePlatform_IOS


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a collection of device types.</p>
-}
type alias DevicePool =
    { arn : Maybe String
    , name : Maybe String
    , description : Maybe String
    , type_ : Maybe DevicePoolType
    , rules : Maybe (List Rule)
    }



devicePoolDecoder : JD.Decoder DevicePool
devicePoolDecoder =
    JDP.decode DevicePool
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable devicePoolTypeDecoder) Nothing
        |> JDP.optional "rules" (JD.nullable (JD.list ruleDecoder)) Nothing




{-| <p>Represents a device pool compatibility result.</p>
-}
type alias DevicePoolCompatibilityResult =
    { device : Maybe Device
    , compatible : Maybe Bool
    , incompatibilityMessages : Maybe (List IncompatibilityMessage)
    }



devicePoolCompatibilityResultDecoder : JD.Decoder DevicePoolCompatibilityResult
devicePoolCompatibilityResultDecoder =
    JDP.decode DevicePoolCompatibilityResult
        |> JDP.optional "device" (JD.nullable deviceDecoder) Nothing
        |> JDP.optional "compatible" (JD.nullable JD.bool) Nothing
        |> JDP.optional "incompatibilityMessages" (JD.nullable (JD.list incompatibilityMessageDecoder)) Nothing




{-| One of

* `DevicePoolType_CURATED`
* `DevicePoolType_PRIVATE`

-}
type DevicePoolType
    = DevicePoolType_CURATED
    | DevicePoolType_PRIVATE



devicePoolTypeDecoder : JD.Decoder DevicePoolType
devicePoolTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CURATED" ->
                        JD.succeed DevicePoolType_CURATED

                    "PRIVATE" ->
                        JD.succeed DevicePoolType_PRIVATE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ExecutionResult_PENDING`
* `ExecutionResult_PASSED`
* `ExecutionResult_WARNED`
* `ExecutionResult_FAILED`
* `ExecutionResult_SKIPPED`
* `ExecutionResult_ERRORED`
* `ExecutionResult_STOPPED`

-}
type ExecutionResult
    = ExecutionResult_PENDING
    | ExecutionResult_PASSED
    | ExecutionResult_WARNED
    | ExecutionResult_FAILED
    | ExecutionResult_SKIPPED
    | ExecutionResult_ERRORED
    | ExecutionResult_STOPPED



executionResultDecoder : JD.Decoder ExecutionResult
executionResultDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ExecutionResult_PENDING

                    "PASSED" ->
                        JD.succeed ExecutionResult_PASSED

                    "WARNED" ->
                        JD.succeed ExecutionResult_WARNED

                    "FAILED" ->
                        JD.succeed ExecutionResult_FAILED

                    "SKIPPED" ->
                        JD.succeed ExecutionResult_SKIPPED

                    "ERRORED" ->
                        JD.succeed ExecutionResult_ERRORED

                    "STOPPED" ->
                        JD.succeed ExecutionResult_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ExecutionStatus_PENDING`
* `ExecutionStatus_PENDING_CONCURRENCY`
* `ExecutionStatus_PENDING_DEVICE`
* `ExecutionStatus_PROCESSING`
* `ExecutionStatus_SCHEDULING`
* `ExecutionStatus_PREPARING`
* `ExecutionStatus_RUNNING`
* `ExecutionStatus_COMPLETED`
* `ExecutionStatus_STOPPING`

-}
type ExecutionStatus
    = ExecutionStatus_PENDING
    | ExecutionStatus_PENDING_CONCURRENCY
    | ExecutionStatus_PENDING_DEVICE
    | ExecutionStatus_PROCESSING
    | ExecutionStatus_SCHEDULING
    | ExecutionStatus_PREPARING
    | ExecutionStatus_RUNNING
    | ExecutionStatus_COMPLETED
    | ExecutionStatus_STOPPING



executionStatusDecoder : JD.Decoder ExecutionStatus
executionStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING" ->
                        JD.succeed ExecutionStatus_PENDING

                    "PENDING_CONCURRENCY" ->
                        JD.succeed ExecutionStatus_PENDING_CONCURRENCY

                    "PENDING_DEVICE" ->
                        JD.succeed ExecutionStatus_PENDING_DEVICE

                    "PROCESSING" ->
                        JD.succeed ExecutionStatus_PROCESSING

                    "SCHEDULING" ->
                        JD.succeed ExecutionStatus_SCHEDULING

                    "PREPARING" ->
                        JD.succeed ExecutionStatus_PREPARING

                    "RUNNING" ->
                        JD.succeed ExecutionStatus_RUNNING

                    "COMPLETED" ->
                        JD.succeed ExecutionStatus_COMPLETED

                    "STOPPING" ->
                        JD.succeed ExecutionStatus_STOPPING


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getAccountSettin
-}
type alias GetAccountSettingsResult =
    { accountSettings : Maybe AccountSettings
    }



getAccountSettingsResultDecoder : JD.Decoder GetAccountSettingsResult
getAccountSettingsResultDecoder =
    JDP.decode GetAccountSettingsResult
        |> JDP.optional "accountSettings" (JD.nullable accountSettingsDecoder) Nothing




{-| Type of HTTP response from getDevicePoolCompatibili
-}
type alias GetDevicePoolCompatibilityResult =
    { compatibleDevices : Maybe (List DevicePoolCompatibilityResult)
    , incompatibleDevices : Maybe (List DevicePoolCompatibilityResult)
    }



getDevicePoolCompatibilityResultDecoder : JD.Decoder GetDevicePoolCompatibilityResult
getDevicePoolCompatibilityResultDecoder =
    JDP.decode GetDevicePoolCompatibilityResult
        |> JDP.optional "compatibleDevices" (JD.nullable (JD.list devicePoolCompatibilityResultDecoder)) Nothing
        |> JDP.optional "incompatibleDevices" (JD.nullable (JD.list devicePoolCompatibilityResultDecoder)) Nothing




{-| Type of HTTP response from getDevicePo
-}
type alias GetDevicePoolResult =
    { devicePool : Maybe DevicePool
    }



getDevicePoolResultDecoder : JD.Decoder GetDevicePoolResult
getDevicePoolResultDecoder =
    JDP.decode GetDevicePoolResult
        |> JDP.optional "devicePool" (JD.nullable devicePoolDecoder) Nothing




{-| Type of HTTP response from getDevi
-}
type alias GetDeviceResult =
    { device : Maybe Device
    }



getDeviceResultDecoder : JD.Decoder GetDeviceResult
getDeviceResultDecoder =
    JDP.decode GetDeviceResult
        |> JDP.optional "device" (JD.nullable deviceDecoder) Nothing




{-| Type of HTTP response from getJ
-}
type alias GetJobResult =
    { job : Maybe Job
    }



getJobResultDecoder : JD.Decoder GetJobResult
getJobResultDecoder =
    JDP.decode GetJobResult
        |> JDP.optional "job" (JD.nullable jobDecoder) Nothing




{-| Type of HTTP response from getOfferingStat
-}
type alias GetOfferingStatusResult =
    { current : Maybe (Dict String OfferingStatus)
    , nextPeriod : Maybe (Dict String OfferingStatus)
    , nextToken : Maybe String
    }



getOfferingStatusResultDecoder : JD.Decoder GetOfferingStatusResult
getOfferingStatusResultDecoder =
    JDP.decode GetOfferingStatusResult
        |> JDP.optional "current" (JD.nullable (JD.dict offeringStatusDecoder)) Nothing
        |> JDP.optional "nextPeriod" (JD.nullable (JD.dict offeringStatusDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getProje
-}
type alias GetProjectResult =
    { project : Maybe Project
    }



getProjectResultDecoder : JD.Decoder GetProjectResult
getProjectResultDecoder =
    JDP.decode GetProjectResult
        |> JDP.optional "project" (JD.nullable projectDecoder) Nothing




{-| Type of HTTP response from getRemoteAccessSessi
-}
type alias GetRemoteAccessSessionResult =
    { remoteAccessSession : Maybe RemoteAccessSession
    }



getRemoteAccessSessionResultDecoder : JD.Decoder GetRemoteAccessSessionResult
getRemoteAccessSessionResultDecoder =
    JDP.decode GetRemoteAccessSessionResult
        |> JDP.optional "remoteAccessSession" (JD.nullable remoteAccessSessionDecoder) Nothing




{-| Type of HTTP response from getR
-}
type alias GetRunResult =
    { run : Maybe Run
    }



getRunResultDecoder : JD.Decoder GetRunResult
getRunResultDecoder =
    JDP.decode GetRunResult
        |> JDP.optional "run" (JD.nullable runDecoder) Nothing




{-| Type of HTTP response from getSui
-}
type alias GetSuiteResult =
    { suite : Maybe Suite
    }



getSuiteResultDecoder : JD.Decoder GetSuiteResult
getSuiteResultDecoder =
    JDP.decode GetSuiteResult
        |> JDP.optional "suite" (JD.nullable suiteDecoder) Nothing




{-| Type of HTTP response from getTe
-}
type alias GetTestResult =
    { test : Maybe Test
    }



getTestResultDecoder : JD.Decoder GetTestResult
getTestResultDecoder =
    JDP.decode GetTestResult
        |> JDP.optional "test" (JD.nullable testDecoder) Nothing




{-| Type of HTTP response from getUplo
-}
type alias GetUploadResult =
    { upload : Maybe Upload
    }



getUploadResultDecoder : JD.Decoder GetUploadResult
getUploadResultDecoder =
    JDP.decode GetUploadResult
        |> JDP.optional "upload" (JD.nullable uploadDecoder) Nothing




{-| <p>An entity with the same name already exists.</p>
-}
type alias IdempotencyException =
    { message : Maybe String
    }



idempotencyExceptionDecoder : JD.Decoder IdempotencyException
idempotencyExceptionDecoder =
    JDP.decode IdempotencyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Represents information about incompatibility.</p>
-}
type alias IncompatibilityMessage =
    { message : Maybe String
    , type_ : Maybe DeviceAttribute
    }



incompatibilityMessageDecoder : JD.Decoder IncompatibilityMessage
incompatibilityMessageDecoder =
    JDP.decode IncompatibilityMessage
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable deviceAttributeDecoder) Nothing




{-| Type of HTTP response from installToRemoteAccessSessi
-}
type alias InstallToRemoteAccessSessionResult =
    { appUpload : Maybe Upload
    }



installToRemoteAccessSessionResultDecoder : JD.Decoder InstallToRemoteAccessSessionResult
installToRemoteAccessSessionResultDecoder =
    JDP.decode InstallToRemoteAccessSessionResult
        |> JDP.optional "appUpload" (JD.nullable uploadDecoder) Nothing




{-| <p>Represents a device.</p>
-}
type alias Job =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , created : Maybe Date
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Date
    , stopped : Maybe Date
    , counters : Maybe Counters
    , message : Maybe String
    , device : Maybe Device
    , deviceMinutes : Maybe DeviceMinutes
    }



jobDecoder : JD.Decoder Job
jobDecoder =
    JDP.decode Job
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable testTypeDecoder) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable executionStatusDecoder) Nothing
        |> JDP.optional "result" (JD.nullable executionResultDecoder) Nothing
        |> JDP.optional "started" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stopped" (JD.nullable JDX.date) Nothing
        |> JDP.optional "counters" (JD.nullable countersDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "device" (JD.nullable deviceDecoder) Nothing
        |> JDP.optional "deviceMinutes" (JD.nullable deviceMinutesDecoder) Nothing




{-| <p>A limit was exceeded.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listArtifac
-}
type alias ListArtifactsResult =
    { artifacts : Maybe (List Artifact)
    , nextToken : Maybe String
    }



listArtifactsResultDecoder : JD.Decoder ListArtifactsResult
listArtifactsResultDecoder =
    JDP.decode ListArtifactsResult
        |> JDP.optional "artifacts" (JD.nullable (JD.list artifactDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDevicePoo
-}
type alias ListDevicePoolsResult =
    { devicePools : Maybe (List DevicePool)
    , nextToken : Maybe String
    }



listDevicePoolsResultDecoder : JD.Decoder ListDevicePoolsResult
listDevicePoolsResultDecoder =
    JDP.decode ListDevicePoolsResult
        |> JDP.optional "devicePools" (JD.nullable (JD.list devicePoolDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDevic
-}
type alias ListDevicesResult =
    { devices : Maybe (List Device)
    , nextToken : Maybe String
    }



listDevicesResultDecoder : JD.Decoder ListDevicesResult
listDevicesResultDecoder =
    JDP.decode ListDevicesResult
        |> JDP.optional "devices" (JD.nullable (JD.list deviceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listJo
-}
type alias ListJobsResult =
    { jobs : Maybe (List Job)
    , nextToken : Maybe String
    }



listJobsResultDecoder : JD.Decoder ListJobsResult
listJobsResultDecoder =
    JDP.decode ListJobsResult
        |> JDP.optional "jobs" (JD.nullable (JD.list jobDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listOfferingTransactio
-}
type alias ListOfferingTransactionsResult =
    { offeringTransactions : Maybe (List OfferingTransaction)
    , nextToken : Maybe String
    }



listOfferingTransactionsResultDecoder : JD.Decoder ListOfferingTransactionsResult
listOfferingTransactionsResultDecoder =
    JDP.decode ListOfferingTransactionsResult
        |> JDP.optional "offeringTransactions" (JD.nullable (JD.list offeringTransactionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listOfferin
-}
type alias ListOfferingsResult =
    { offerings : Maybe (List Offering)
    , nextToken : Maybe String
    }



listOfferingsResultDecoder : JD.Decoder ListOfferingsResult
listOfferingsResultDecoder =
    JDP.decode ListOfferingsResult
        |> JDP.optional "offerings" (JD.nullable (JD.list offeringDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listProjec
-}
type alias ListProjectsResult =
    { projects : Maybe (List Project)
    , nextToken : Maybe String
    }



listProjectsResultDecoder : JD.Decoder ListProjectsResult
listProjectsResultDecoder =
    JDP.decode ListProjectsResult
        |> JDP.optional "projects" (JD.nullable (JD.list projectDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRemoteAccessSessio
-}
type alias ListRemoteAccessSessionsResult =
    { remoteAccessSessions : Maybe (List RemoteAccessSession)
    , nextToken : Maybe String
    }



listRemoteAccessSessionsResultDecoder : JD.Decoder ListRemoteAccessSessionsResult
listRemoteAccessSessionsResultDecoder =
    JDP.decode ListRemoteAccessSessionsResult
        |> JDP.optional "remoteAccessSessions" (JD.nullable (JD.list remoteAccessSessionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRu
-}
type alias ListRunsResult =
    { runs : Maybe (List Run)
    , nextToken : Maybe String
    }



listRunsResultDecoder : JD.Decoder ListRunsResult
listRunsResultDecoder =
    JDP.decode ListRunsResult
        |> JDP.optional "runs" (JD.nullable (JD.list runDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listSampl
-}
type alias ListSamplesResult =
    { samples : Maybe (List Sample)
    , nextToken : Maybe String
    }



listSamplesResultDecoder : JD.Decoder ListSamplesResult
listSamplesResultDecoder =
    JDP.decode ListSamplesResult
        |> JDP.optional "samples" (JD.nullable (JD.list sampleDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listSuit
-}
type alias ListSuitesResult =
    { suites : Maybe (List Suite)
    , nextToken : Maybe String
    }



listSuitesResultDecoder : JD.Decoder ListSuitesResult
listSuitesResultDecoder =
    JDP.decode ListSuitesResult
        |> JDP.optional "suites" (JD.nullable (JD.list suiteDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTes
-}
type alias ListTestsResult =
    { tests : Maybe (List Test)
    , nextToken : Maybe String
    }



listTestsResultDecoder : JD.Decoder ListTestsResult
listTestsResultDecoder =
    JDP.decode ListTestsResult
        |> JDP.optional "tests" (JD.nullable (JD.list testDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUniqueProble
-}
type alias ListUniqueProblemsResult =
    { uniqueProblems : Maybe (Dict String (List UniqueProblem))
    , nextToken : Maybe String
    }



listUniqueProblemsResultDecoder : JD.Decoder ListUniqueProblemsResult
listUniqueProblemsResultDecoder =
    JDP.decode ListUniqueProblemsResult
        |> JDP.optional "uniqueProblems" (JD.nullable (JD.dict (JD.list uniqueProblemDecoder))) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listUploa
-}
type alias ListUploadsResult =
    { uploads : Maybe (List Upload)
    , nextToken : Maybe String
    }



listUploadsResultDecoder : JD.Decoder ListUploadsResult
listUploadsResultDecoder =
    JDP.decode ListUploadsResult
        |> JDP.optional "uploads" (JD.nullable (JD.list uploadDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Represents a latitude and longitude pair, expressed in geographic coordinate system degrees (for example 47.6204, -122.3491).</p> <p>Elevation is currently not supported.</p>
-}
type alias Location =
    { latitude : Float
    , longitude : Float
    }



locationDecoder : JD.Decoder Location
locationDecoder =
    JDP.decode Location
        |> JDP.required "latitude" JD.float
        |> JDP.required "longitude" JD.float




{-| <p>A number representing the monetary amount for an offering or transaction.</p>
-}
type alias MonetaryAmount =
    { amount : Maybe Float
    , currencyCode : Maybe CurrencyCode
    }



monetaryAmountDecoder : JD.Decoder MonetaryAmount
monetaryAmountDecoder =
    JDP.decode MonetaryAmount
        |> JDP.optional "amount" (JD.nullable JD.float) Nothing
        |> JDP.optional "currencyCode" (JD.nullable currencyCodeDecoder) Nothing




{-| <p>Exception gets thrown when a user is not eligible to perform the specified transaction.</p>
-}
type alias NotEligibleException =
    { message : Maybe String
    }



notEligibleExceptionDecoder : JD.Decoder NotEligibleException
notEligibleExceptionDecoder =
    JDP.decode NotEligibleException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified entity was not found.</p>
-}
type alias NotFoundException =
    { message : Maybe String
    }



notFoundExceptionDecoder : JD.Decoder NotFoundException
notFoundExceptionDecoder =
    JDP.decode NotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Represents the metadata of a device offering.</p>
-}
type alias Offering =
    { id : Maybe String
    , description : Maybe String
    , type_ : Maybe OfferingType
    , platform : Maybe DevicePlatform
    , recurringCharges : Maybe (List RecurringCharge)
    }



offeringDecoder : JD.Decoder Offering
offeringDecoder =
    JDP.decode Offering
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable offeringTypeDecoder) Nothing
        |> JDP.optional "platform" (JD.nullable devicePlatformDecoder) Nothing
        |> JDP.optional "recurringCharges" (JD.nullable (JD.list recurringChargeDecoder)) Nothing




{-| <p>The status of the offering.</p>
-}
type alias OfferingStatus =
    { type_ : Maybe OfferingTransactionType
    , offering : Maybe Offering
    , quantity : Maybe Int
    , effectiveOn : Maybe Date
    }



offeringStatusDecoder : JD.Decoder OfferingStatus
offeringStatusDecoder =
    JDP.decode OfferingStatus
        |> JDP.optional "type_" (JD.nullable offeringTransactionTypeDecoder) Nothing
        |> JDP.optional "offering" (JD.nullable offeringDecoder) Nothing
        |> JDP.optional "quantity" (JD.nullable JD.int) Nothing
        |> JDP.optional "effectiveOn" (JD.nullable JDX.date) Nothing




{-| <p>Represents the metadata of an offering transaction.</p>
-}
type alias OfferingTransaction =
    { offeringStatus : Maybe OfferingStatus
    , transactionId : Maybe String
    , createdOn : Maybe Date
    , cost : Maybe MonetaryAmount
    }



offeringTransactionDecoder : JD.Decoder OfferingTransaction
offeringTransactionDecoder =
    JDP.decode OfferingTransaction
        |> JDP.optional "offeringStatus" (JD.nullable offeringStatusDecoder) Nothing
        |> JDP.optional "transactionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdOn" (JD.nullable JDX.date) Nothing
        |> JDP.optional "cost" (JD.nullable monetaryAmountDecoder) Nothing




{-| One of

* `OfferingTransactionType_PURCHASE`
* `OfferingTransactionType_RENEW`
* `OfferingTransactionType_SYSTEM`

-}
type OfferingTransactionType
    = OfferingTransactionType_PURCHASE
    | OfferingTransactionType_RENEW
    | OfferingTransactionType_SYSTEM



offeringTransactionTypeDecoder : JD.Decoder OfferingTransactionType
offeringTransactionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PURCHASE" ->
                        JD.succeed OfferingTransactionType_PURCHASE

                    "RENEW" ->
                        JD.succeed OfferingTransactionType_RENEW

                    "SYSTEM" ->
                        JD.succeed OfferingTransactionType_SYSTEM


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `OfferingType_RECURRING`

-}
type OfferingType
    = OfferingType_RECURRING



offeringTypeDecoder : JD.Decoder OfferingType
offeringTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RECURRING" ->
                        JD.succeed OfferingType_RECURRING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents a specific warning or failure.</p>
-}
type alias Problem =
    { run : Maybe ProblemDetail
    , job : Maybe ProblemDetail
    , suite : Maybe ProblemDetail
    , test : Maybe ProblemDetail
    , device : Maybe Device
    , result : Maybe ExecutionResult
    , message : Maybe String
    }



problemDecoder : JD.Decoder Problem
problemDecoder =
    JDP.decode Problem
        |> JDP.optional "run" (JD.nullable problemDetailDecoder) Nothing
        |> JDP.optional "job" (JD.nullable problemDetailDecoder) Nothing
        |> JDP.optional "suite" (JD.nullable problemDetailDecoder) Nothing
        |> JDP.optional "test" (JD.nullable problemDetailDecoder) Nothing
        |> JDP.optional "device" (JD.nullable deviceDecoder) Nothing
        |> JDP.optional "result" (JD.nullable executionResultDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Information about a problem detail.</p>
-}
type alias ProblemDetail =
    { arn : Maybe String
    , name : Maybe String
    }



problemDetailDecoder : JD.Decoder ProblemDetail
problemDetailDecoder =
    JDP.decode ProblemDetail
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing




{-| <p>Represents an operating-system neutral workspace for running and managing tests.</p>
-}
type alias Project =
    { arn : Maybe String
    , name : Maybe String
    , created : Maybe Date
    }



projectDecoder : JD.Decoder Project
projectDecoder =
    JDP.decode Project
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing




{-| Type of HTTP response from purchaseOfferi
-}
type alias PurchaseOfferingResult =
    { offeringTransaction : Maybe OfferingTransaction
    }



purchaseOfferingResultDecoder : JD.Decoder PurchaseOfferingResult
purchaseOfferingResultDecoder =
    JDP.decode PurchaseOfferingResult
        |> JDP.optional "offeringTransaction" (JD.nullable offeringTransactionDecoder) Nothing




{-| <p>Represents the set of radios and their states on a device. Examples of radios include Wi-Fi, GPS, Bluetooth, and NFC.</p>
-}
type alias Radios =
    { wifi : Maybe Bool
    , bluetooth : Maybe Bool
    , nfc : Maybe Bool
    , gps : Maybe Bool
    }



radiosDecoder : JD.Decoder Radios
radiosDecoder =
    JDP.decode Radios
        |> JDP.optional "wifi" (JD.nullable JD.bool) Nothing
        |> JDP.optional "bluetooth" (JD.nullable JD.bool) Nothing
        |> JDP.optional "nfc" (JD.nullable JD.bool) Nothing
        |> JDP.optional "gps" (JD.nullable JD.bool) Nothing




{-| <p>Specifies whether charges for devices will be recurring.</p>
-}
type alias RecurringCharge =
    { cost : Maybe MonetaryAmount
    , frequency : Maybe RecurringChargeFrequency
    }



recurringChargeDecoder : JD.Decoder RecurringCharge
recurringChargeDecoder =
    JDP.decode RecurringCharge
        |> JDP.optional "cost" (JD.nullable monetaryAmountDecoder) Nothing
        |> JDP.optional "frequency" (JD.nullable recurringChargeFrequencyDecoder) Nothing




{-| One of

* `RecurringChargeFrequency_MONTHLY`

-}
type RecurringChargeFrequency
    = RecurringChargeFrequency_MONTHLY



recurringChargeFrequencyDecoder : JD.Decoder RecurringChargeFrequency
recurringChargeFrequencyDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MONTHLY" ->
                        JD.succeed RecurringChargeFrequency_MONTHLY


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents information about the remote access session.</p>
-}
type alias RemoteAccessSession =
    { arn : Maybe String
    , name : Maybe String
    , created : Maybe Date
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , message : Maybe String
    , started : Maybe Date
    , stopped : Maybe Date
    , device : Maybe Device
    , billingMethod : Maybe BillingMethod
    , deviceMinutes : Maybe DeviceMinutes
    , endpoint : Maybe String
    }



remoteAccessSessionDecoder : JD.Decoder RemoteAccessSession
remoteAccessSessionDecoder =
    JDP.decode RemoteAccessSession
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable executionStatusDecoder) Nothing
        |> JDP.optional "result" (JD.nullable executionResultDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "started" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stopped" (JD.nullable JDX.date) Nothing
        |> JDP.optional "device" (JD.nullable deviceDecoder) Nothing
        |> JDP.optional "billingMethod" (JD.nullable billingMethodDecoder) Nothing
        |> JDP.optional "deviceMinutes" (JD.nullable deviceMinutesDecoder) Nothing
        |> JDP.optional "endpoint" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from renewOfferi
-}
type alias RenewOfferingResult =
    { offeringTransaction : Maybe OfferingTransaction
    }



renewOfferingResultDecoder : JD.Decoder RenewOfferingResult
renewOfferingResultDecoder =
    JDP.decode RenewOfferingResult
        |> JDP.optional "offeringTransaction" (JD.nullable offeringTransactionDecoder) Nothing




{-| <p>Represents the screen resolution of a device in height and width, expressed in pixels.</p>
-}
type alias Resolution =
    { width : Maybe Int
    , height : Maybe Int
    }



resolutionDecoder : JD.Decoder Resolution
resolutionDecoder =
    JDP.decode Resolution
        |> JDP.optional "width" (JD.nullable JD.int) Nothing
        |> JDP.optional "height" (JD.nullable JD.int) Nothing




{-| <p>Represents a condition for a device pool.</p>
-}
type alias Rule =
    { attribute : Maybe DeviceAttribute
    , operator : Maybe RuleOperator
    , value : Maybe String
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JDP.decode Rule
        |> JDP.optional "attribute" (JD.nullable deviceAttributeDecoder) Nothing
        |> JDP.optional "operator" (JD.nullable ruleOperatorDecoder) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| One of

* `RuleOperator_EQUALS`
* `RuleOperator_LESS_THAN`
* `RuleOperator_GREATER_THAN`
* `RuleOperator_IN`
* `RuleOperator_NOT_IN`

-}
type RuleOperator
    = RuleOperator_EQUALS
    | RuleOperator_LESS_THAN
    | RuleOperator_GREATER_THAN
    | RuleOperator_IN
    | RuleOperator_NOT_IN



ruleOperatorDecoder : JD.Decoder RuleOperator
ruleOperatorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EQUALS" ->
                        JD.succeed RuleOperator_EQUALS

                    "LESS_THAN" ->
                        JD.succeed RuleOperator_LESS_THAN

                    "GREATER_THAN" ->
                        JD.succeed RuleOperator_GREATER_THAN

                    "IN" ->
                        JD.succeed RuleOperator_IN

                    "NOT_IN" ->
                        JD.succeed RuleOperator_NOT_IN


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents an app on a set of devices with a specific test and configuration.</p>
-}
type alias Run =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , platform : Maybe DevicePlatform
    , created : Maybe Date
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Date
    , stopped : Maybe Date
    , counters : Maybe Counters
    , message : Maybe String
    , totalJobs : Maybe Int
    , completedJobs : Maybe Int
    , billingMethod : Maybe BillingMethod
    , deviceMinutes : Maybe DeviceMinutes
    }



runDecoder : JD.Decoder Run
runDecoder =
    JDP.decode Run
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable testTypeDecoder) Nothing
        |> JDP.optional "platform" (JD.nullable devicePlatformDecoder) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable executionStatusDecoder) Nothing
        |> JDP.optional "result" (JD.nullable executionResultDecoder) Nothing
        |> JDP.optional "started" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stopped" (JD.nullable JDX.date) Nothing
        |> JDP.optional "counters" (JD.nullable countersDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "totalJobs" (JD.nullable JD.int) Nothing
        |> JDP.optional "completedJobs" (JD.nullable JD.int) Nothing
        |> JDP.optional "billingMethod" (JD.nullable billingMethodDecoder) Nothing
        |> JDP.optional "deviceMinutes" (JD.nullable deviceMinutesDecoder) Nothing




{-| <p>Represents a sample of performance data.</p>
-}
type alias Sample =
    { arn : Maybe String
    , type_ : Maybe SampleType
    , url : Maybe String
    }



sampleDecoder : JD.Decoder Sample
sampleDecoder =
    JDP.decode Sample
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable sampleTypeDecoder) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing




{-| One of

* `SampleType_CPU`
* `SampleType_MEMORY`
* `SampleType_THREADS`
* `SampleType_RX_RATE`
* `SampleType_TX_RATE`
* `SampleType_RX`
* `SampleType_TX`
* `SampleType_NATIVE_FRAMES`
* `SampleType_NATIVE_FPS`
* `SampleType_NATIVE_MIN_DRAWTIME`
* `SampleType_NATIVE_AVG_DRAWTIME`
* `SampleType_NATIVE_MAX_DRAWTIME`
* `SampleType_OPENGL_FRAMES`
* `SampleType_OPENGL_FPS`
* `SampleType_OPENGL_MIN_DRAWTIME`
* `SampleType_OPENGL_AVG_DRAWTIME`
* `SampleType_OPENGL_MAX_DRAWTIME`

-}
type SampleType
    = SampleType_CPU
    | SampleType_MEMORY
    | SampleType_THREADS
    | SampleType_RX_RATE
    | SampleType_TX_RATE
    | SampleType_RX
    | SampleType_TX
    | SampleType_NATIVE_FRAMES
    | SampleType_NATIVE_FPS
    | SampleType_NATIVE_MIN_DRAWTIME
    | SampleType_NATIVE_AVG_DRAWTIME
    | SampleType_NATIVE_MAX_DRAWTIME
    | SampleType_OPENGL_FRAMES
    | SampleType_OPENGL_FPS
    | SampleType_OPENGL_MIN_DRAWTIME
    | SampleType_OPENGL_AVG_DRAWTIME
    | SampleType_OPENGL_MAX_DRAWTIME



sampleTypeDecoder : JD.Decoder SampleType
sampleTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CPU" ->
                        JD.succeed SampleType_CPU

                    "MEMORY" ->
                        JD.succeed SampleType_MEMORY

                    "THREADS" ->
                        JD.succeed SampleType_THREADS

                    "RX_RATE" ->
                        JD.succeed SampleType_RX_RATE

                    "TX_RATE" ->
                        JD.succeed SampleType_TX_RATE

                    "RX" ->
                        JD.succeed SampleType_RX

                    "TX" ->
                        JD.succeed SampleType_TX

                    "NATIVE_FRAMES" ->
                        JD.succeed SampleType_NATIVE_FRAMES

                    "NATIVE_FPS" ->
                        JD.succeed SampleType_NATIVE_FPS

                    "NATIVE_MIN_DRAWTIME" ->
                        JD.succeed SampleType_NATIVE_MIN_DRAWTIME

                    "NATIVE_AVG_DRAWTIME" ->
                        JD.succeed SampleType_NATIVE_AVG_DRAWTIME

                    "NATIVE_MAX_DRAWTIME" ->
                        JD.succeed SampleType_NATIVE_MAX_DRAWTIME

                    "OPENGL_FRAMES" ->
                        JD.succeed SampleType_OPENGL_FRAMES

                    "OPENGL_FPS" ->
                        JD.succeed SampleType_OPENGL_FPS

                    "OPENGL_MIN_DRAWTIME" ->
                        JD.succeed SampleType_OPENGL_MIN_DRAWTIME

                    "OPENGL_AVG_DRAWTIME" ->
                        JD.succeed SampleType_OPENGL_AVG_DRAWTIME

                    "OPENGL_MAX_DRAWTIME" ->
                        JD.succeed SampleType_OPENGL_MAX_DRAWTIME


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the settings for a run. Includes things like location, radio states, auxiliary apps, and network profiles.</p>
-}
type alias ScheduleRunConfiguration =
    { extraDataPackageArn : Maybe String
    , networkProfileArn : Maybe String
    , locale : Maybe String
    , location : Maybe Location
    , radios : Maybe Radios
    , auxiliaryApps : Maybe (List String)
    , billingMethod : Maybe BillingMethod
    }



scheduleRunConfigurationDecoder : JD.Decoder ScheduleRunConfiguration
scheduleRunConfigurationDecoder =
    JDP.decode ScheduleRunConfiguration
        |> JDP.optional "extraDataPackageArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "networkProfileArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "locale" (JD.nullable JD.string) Nothing
        |> JDP.optional "location" (JD.nullable locationDecoder) Nothing
        |> JDP.optional "radios" (JD.nullable radiosDecoder) Nothing
        |> JDP.optional "auxiliaryApps" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "billingMethod" (JD.nullable billingMethodDecoder) Nothing




{-| Type of HTTP response from scheduleR
-}
type alias ScheduleRunResult =
    { run : Maybe Run
    }



scheduleRunResultDecoder : JD.Decoder ScheduleRunResult
scheduleRunResultDecoder =
    JDP.decode ScheduleRunResult
        |> JDP.optional "run" (JD.nullable runDecoder) Nothing




{-| <p>Represents additional test settings.</p>
-}
type alias ScheduleRunTest =
    { type_ : TestType
    , testPackageArn : Maybe String
    , filter : Maybe String
    , parameters : Maybe (Dict String String)
    }



scheduleRunTestDecoder : JD.Decoder ScheduleRunTest
scheduleRunTestDecoder =
    JDP.decode ScheduleRunTest
        |> JDP.required "type_" testTypeDecoder
        |> JDP.optional "testPackageArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "filter" (JD.nullable JD.string) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>There was a problem with the service account.</p>
-}
type alias ServiceAccountException =
    { message : Maybe String
    }



serviceAccountExceptionDecoder : JD.Decoder ServiceAccountException
serviceAccountExceptionDecoder =
    JDP.decode ServiceAccountException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from stopRemoteAccessSessi
-}
type alias StopRemoteAccessSessionResult =
    { remoteAccessSession : Maybe RemoteAccessSession
    }



stopRemoteAccessSessionResultDecoder : JD.Decoder StopRemoteAccessSessionResult
stopRemoteAccessSessionResultDecoder =
    JDP.decode StopRemoteAccessSessionResult
        |> JDP.optional "remoteAccessSession" (JD.nullable remoteAccessSessionDecoder) Nothing




{-| Type of HTTP response from stopR
-}
type alias StopRunResult =
    { run : Maybe Run
    }



stopRunResultDecoder : JD.Decoder StopRunResult
stopRunResultDecoder =
    JDP.decode StopRunResult
        |> JDP.optional "run" (JD.nullable runDecoder) Nothing




{-| <p>Represents a collection of one or more tests.</p>
-}
type alias Suite =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , created : Maybe Date
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Date
    , stopped : Maybe Date
    , counters : Maybe Counters
    , message : Maybe String
    , deviceMinutes : Maybe DeviceMinutes
    }



suiteDecoder : JD.Decoder Suite
suiteDecoder =
    JDP.decode Suite
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable testTypeDecoder) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable executionStatusDecoder) Nothing
        |> JDP.optional "result" (JD.nullable executionResultDecoder) Nothing
        |> JDP.optional "started" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stopped" (JD.nullable JDX.date) Nothing
        |> JDP.optional "counters" (JD.nullable countersDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceMinutes" (JD.nullable deviceMinutesDecoder) Nothing




{-| <p>Represents a condition that is evaluated.</p>
-}
type alias Test =
    { arn : Maybe String
    , name : Maybe String
    , type_ : Maybe TestType
    , created : Maybe Date
    , status : Maybe ExecutionStatus
    , result : Maybe ExecutionResult
    , started : Maybe Date
    , stopped : Maybe Date
    , counters : Maybe Counters
    , message : Maybe String
    , deviceMinutes : Maybe DeviceMinutes
    }



testDecoder : JD.Decoder Test
testDecoder =
    JDP.decode Test
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "type_" (JD.nullable testTypeDecoder) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable executionStatusDecoder) Nothing
        |> JDP.optional "result" (JD.nullable executionResultDecoder) Nothing
        |> JDP.optional "started" (JD.nullable JDX.date) Nothing
        |> JDP.optional "stopped" (JD.nullable JDX.date) Nothing
        |> JDP.optional "counters" (JD.nullable countersDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "deviceMinutes" (JD.nullable deviceMinutesDecoder) Nothing




{-| One of

* `TestType_BUILTIN_FUZZ`
* `TestType_BUILTIN_EXPLORER`
* `TestType_APPIUM_JAVA_JUNIT`
* `TestType_APPIUM_JAVA_TESTNG`
* `TestType_APPIUM_PYTHON`
* `TestType_APPIUM_WEB_JAVA_JUNIT`
* `TestType_APPIUM_WEB_JAVA_TESTNG`
* `TestType_APPIUM_WEB_PYTHON`
* `TestType_CALABASH`
* `TestType_INSTRUMENTATION`
* `TestType_UIAUTOMATION`
* `TestType_UIAUTOMATOR`
* `TestType_XCTEST`
* `TestType_XCTEST_UI`

-}
type TestType
    = TestType_BUILTIN_FUZZ
    | TestType_BUILTIN_EXPLORER
    | TestType_APPIUM_JAVA_JUNIT
    | TestType_APPIUM_JAVA_TESTNG
    | TestType_APPIUM_PYTHON
    | TestType_APPIUM_WEB_JAVA_JUNIT
    | TestType_APPIUM_WEB_JAVA_TESTNG
    | TestType_APPIUM_WEB_PYTHON
    | TestType_CALABASH
    | TestType_INSTRUMENTATION
    | TestType_UIAUTOMATION
    | TestType_UIAUTOMATOR
    | TestType_XCTEST
    | TestType_XCTEST_UI



testTypeDecoder : JD.Decoder TestType
testTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BUILTIN_FUZZ" ->
                        JD.succeed TestType_BUILTIN_FUZZ

                    "BUILTIN_EXPLORER" ->
                        JD.succeed TestType_BUILTIN_EXPLORER

                    "APPIUM_JAVA_JUNIT" ->
                        JD.succeed TestType_APPIUM_JAVA_JUNIT

                    "APPIUM_JAVA_TESTNG" ->
                        JD.succeed TestType_APPIUM_JAVA_TESTNG

                    "APPIUM_PYTHON" ->
                        JD.succeed TestType_APPIUM_PYTHON

                    "APPIUM_WEB_JAVA_JUNIT" ->
                        JD.succeed TestType_APPIUM_WEB_JAVA_JUNIT

                    "APPIUM_WEB_JAVA_TESTNG" ->
                        JD.succeed TestType_APPIUM_WEB_JAVA_TESTNG

                    "APPIUM_WEB_PYTHON" ->
                        JD.succeed TestType_APPIUM_WEB_PYTHON

                    "CALABASH" ->
                        JD.succeed TestType_CALABASH

                    "INSTRUMENTATION" ->
                        JD.succeed TestType_INSTRUMENTATION

                    "UIAUTOMATION" ->
                        JD.succeed TestType_UIAUTOMATION

                    "UIAUTOMATOR" ->
                        JD.succeed TestType_UIAUTOMATOR

                    "XCTEST" ->
                        JD.succeed TestType_XCTEST

                    "XCTEST_UI" ->
                        JD.succeed TestType_XCTEST_UI


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A collection of one or more problems, grouped by their result.</p>
-}
type alias UniqueProblem =
    { message : Maybe String
    , problems : Maybe (List Problem)
    }



uniqueProblemDecoder : JD.Decoder UniqueProblem
uniqueProblemDecoder =
    JDP.decode UniqueProblem
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "problems" (JD.nullable (JD.list problemDecoder)) Nothing




{-| Type of HTTP response from updateDevicePo
-}
type alias UpdateDevicePoolResult =
    { devicePool : Maybe DevicePool
    }



updateDevicePoolResultDecoder : JD.Decoder UpdateDevicePoolResult
updateDevicePoolResultDecoder =
    JDP.decode UpdateDevicePoolResult
        |> JDP.optional "devicePool" (JD.nullable devicePoolDecoder) Nothing




{-| Type of HTTP response from updateProje
-}
type alias UpdateProjectResult =
    { project : Maybe Project
    }



updateProjectResultDecoder : JD.Decoder UpdateProjectResult
updateProjectResultDecoder =
    JDP.decode UpdateProjectResult
        |> JDP.optional "project" (JD.nullable projectDecoder) Nothing




{-| <p>An app or a set of one or more tests to upload or that have been uploaded.</p>
-}
type alias Upload =
    { arn : Maybe String
    , name : Maybe String
    , created : Maybe Date
    , type_ : Maybe UploadType
    , status : Maybe UploadStatus
    , url : Maybe String
    , metadata : Maybe String
    , contentType : Maybe String
    , message : Maybe String
    }



uploadDecoder : JD.Decoder Upload
uploadDecoder =
    JDP.decode Upload
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "type_" (JD.nullable uploadTypeDecoder) Nothing
        |> JDP.optional "status" (JD.nullable uploadStatusDecoder) Nothing
        |> JDP.optional "url" (JD.nullable JD.string) Nothing
        |> JDP.optional "metadata" (JD.nullable JD.string) Nothing
        |> JDP.optional "contentType" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `UploadStatus_INITIALIZED`
* `UploadStatus_PROCESSING`
* `UploadStatus_SUCCEEDED`
* `UploadStatus_FAILED`

-}
type UploadStatus
    = UploadStatus_INITIALIZED
    | UploadStatus_PROCESSING
    | UploadStatus_SUCCEEDED
    | UploadStatus_FAILED



uploadStatusDecoder : JD.Decoder UploadStatus
uploadStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "INITIALIZED" ->
                        JD.succeed UploadStatus_INITIALIZED

                    "PROCESSING" ->
                        JD.succeed UploadStatus_PROCESSING

                    "SUCCEEDED" ->
                        JD.succeed UploadStatus_SUCCEEDED

                    "FAILED" ->
                        JD.succeed UploadStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `UploadType_ANDROID_APP`
* `UploadType_IOS_APP`
* `UploadType_WEB_APP`
* `UploadType_EXTERNAL_DATA`
* `UploadType_APPIUM_JAVA_JUNIT_TEST_PACKAGE`
* `UploadType_APPIUM_JAVA_TESTNG_TEST_PACKAGE`
* `UploadType_APPIUM_PYTHON_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE`
* `UploadType_APPIUM_WEB_PYTHON_TEST_PACKAGE`
* `UploadType_CALABASH_TEST_PACKAGE`
* `UploadType_INSTRUMENTATION_TEST_PACKAGE`
* `UploadType_UIAUTOMATION_TEST_PACKAGE`
* `UploadType_UIAUTOMATOR_TEST_PACKAGE`
* `UploadType_XCTEST_TEST_PACKAGE`
* `UploadType_XCTEST_UI_TEST_PACKAGE`

-}
type UploadType
    = UploadType_ANDROID_APP
    | UploadType_IOS_APP
    | UploadType_WEB_APP
    | UploadType_EXTERNAL_DATA
    | UploadType_APPIUM_JAVA_JUNIT_TEST_PACKAGE
    | UploadType_APPIUM_JAVA_TESTNG_TEST_PACKAGE
    | UploadType_APPIUM_PYTHON_TEST_PACKAGE
    | UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE
    | UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE
    | UploadType_APPIUM_WEB_PYTHON_TEST_PACKAGE
    | UploadType_CALABASH_TEST_PACKAGE
    | UploadType_INSTRUMENTATION_TEST_PACKAGE
    | UploadType_UIAUTOMATION_TEST_PACKAGE
    | UploadType_UIAUTOMATOR_TEST_PACKAGE
    | UploadType_XCTEST_TEST_PACKAGE
    | UploadType_XCTEST_UI_TEST_PACKAGE



uploadTypeDecoder : JD.Decoder UploadType
uploadTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ANDROID_APP" ->
                        JD.succeed UploadType_ANDROID_APP

                    "IOS_APP" ->
                        JD.succeed UploadType_IOS_APP

                    "WEB_APP" ->
                        JD.succeed UploadType_WEB_APP

                    "EXTERNAL_DATA" ->
                        JD.succeed UploadType_EXTERNAL_DATA

                    "APPIUM_JAVA_JUNIT_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_JAVA_JUNIT_TEST_PACKAGE

                    "APPIUM_JAVA_TESTNG_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_JAVA_TESTNG_TEST_PACKAGE

                    "APPIUM_PYTHON_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_PYTHON_TEST_PACKAGE

                    "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE

                    "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE

                    "APPIUM_WEB_PYTHON_TEST_PACKAGE" ->
                        JD.succeed UploadType_APPIUM_WEB_PYTHON_TEST_PACKAGE

                    "CALABASH_TEST_PACKAGE" ->
                        JD.succeed UploadType_CALABASH_TEST_PACKAGE

                    "INSTRUMENTATION_TEST_PACKAGE" ->
                        JD.succeed UploadType_INSTRUMENTATION_TEST_PACKAGE

                    "UIAUTOMATION_TEST_PACKAGE" ->
                        JD.succeed UploadType_UIAUTOMATION_TEST_PACKAGE

                    "UIAUTOMATOR_TEST_PACKAGE" ->
                        JD.succeed UploadType_UIAUTOMATOR_TEST_PACKAGE

                    "XCTEST_TEST_PACKAGE" ->
                        JD.succeed UploadType_XCTEST_TEST_PACKAGE

                    "XCTEST_UI_TEST_PACKAGE" ->
                        JD.succeed UploadType_XCTEST_UI_TEST_PACKAGE


                    _ ->
                        JD.fail "bad thing"
            )



