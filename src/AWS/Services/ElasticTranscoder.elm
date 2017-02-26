module AWS.Services.ElasticTranscoder
    exposing
        ( config
        , cancelJob
        , createJob
        , CreateJobOptions
        , createPipeline
        , CreatePipelineOptions
        , createPreset
        , CreatePresetOptions
        , deletePipeline
        , deletePreset
        , listJobsByPipeline
        , ListJobsByPipelineOptions
        , listJobsByStatus
        , ListJobsByStatusOptions
        , listPipelines
        , ListPipelinesOptions
        , listPresets
        , ListPresetsOptions
        , readJob
        , readPipeline
        , readPreset
        , testRole
        , updatePipeline
        , UpdatePipelineOptions
        , updatePipelineNotifications
        , updatePipelineStatus
        , AccessDeniedException
        , Artwork
        , AudioCodecOptions
        , AudioParameters
        , CancelJobResponse
        , CaptionFormat
        , CaptionSource
        , Captions
        , Clip
        , CreateJobOutput
        , CreateJobPlaylist
        , CreateJobResponse
        , CreatePipelineResponse
        , CreatePresetResponse
        , DeletePipelineResponse
        , DeletePresetResponse
        , DetectedProperties
        , Encryption
        , HlsContentProtection
        , IncompatibleVersionException
        , InputCaptions
        , InternalServiceException
        , Job
        , JobAlbumArt
        , JobInput
        , JobOutput
        , JobWatermark
        , LimitExceededException
        , ListJobsByPipelineResponse
        , ListJobsByStatusResponse
        , ListPipelinesResponse
        , ListPresetsResponse
        , Notifications
        , Permission
        , Pipeline
        , PipelineOutputConfig
        , PlayReadyDrm
        , Playlist
        , Preset
        , PresetWatermark
        , ReadJobResponse
        , ReadPipelineResponse
        , ReadPresetResponse
        , ResourceInUseException
        , ResourceNotFoundException
        , TestRoleResponse
        , Thumbnails
        , TimeSpan
        , Timing
        , UpdatePipelineNotificationsResponse
        , UpdatePipelineResponse
        , UpdatePipelineStatusResponse
        , ValidationException
        , VideoParameters
        , Warning
        )

{-| <fullname>AWS Elastic Transcoder Service</fullname> <p>The AWS Elastic Transcoder Service.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Exceptions](#exceptions)

## Operations

* [cancelJob](#cancelJob)
* [createJob](#createJob)
* [CreateJobOptions](#CreateJobOptions)
* [createPipeline](#createPipeline)
* [CreatePipelineOptions](#CreatePipelineOptions)
* [createPreset](#createPreset)
* [CreatePresetOptions](#CreatePresetOptions)
* [deletePipeline](#deletePipeline)
* [deletePreset](#deletePreset)
* [listJobsByPipeline](#listJobsByPipeline)
* [ListJobsByPipelineOptions](#ListJobsByPipelineOptions)
* [listJobsByStatus](#listJobsByStatus)
* [ListJobsByStatusOptions](#ListJobsByStatusOptions)
* [listPipelines](#listPipelines)
* [ListPipelinesOptions](#ListPipelinesOptions)
* [listPresets](#listPresets)
* [ListPresetsOptions](#ListPresetsOptions)
* [readJob](#readJob)
* [readPipeline](#readPipeline)
* [readPreset](#readPreset)
* [testRole](#testRole)
* [updatePipeline](#updatePipeline)
* [UpdatePipelineOptions](#UpdatePipelineOptions)
* [updatePipelineNotifications](#updatePipelineNotifications)
* [updatePipelineStatus](#updatePipelineStatus)


@docs cancelJob,createJob,CreateJobOptions,createPipeline,CreatePipelineOptions,createPreset,CreatePresetOptions,deletePipeline,deletePreset,listJobsByPipeline,ListJobsByPipelineOptions,listJobsByStatus,ListJobsByStatusOptions,listPipelines,ListPipelinesOptions,listPresets,ListPresetsOptions,readJob,readPipeline,readPreset,testRole,updatePipeline,UpdatePipelineOptions,updatePipelineNotifications,updatePipelineStatus

## Responses

* [CancelJobResponse](#CancelJobResponse)
* [CreateJobResponse](#CreateJobResponse)
* [CreatePipelineResponse](#CreatePipelineResponse)
* [CreatePresetResponse](#CreatePresetResponse)
* [DeletePipelineResponse](#DeletePipelineResponse)
* [DeletePresetResponse](#DeletePresetResponse)
* [ListJobsByPipelineResponse](#ListJobsByPipelineResponse)
* [ListJobsByStatusResponse](#ListJobsByStatusResponse)
* [ListPipelinesResponse](#ListPipelinesResponse)
* [ListPresetsResponse](#ListPresetsResponse)
* [ReadJobResponse](#ReadJobResponse)
* [ReadPipelineResponse](#ReadPipelineResponse)
* [ReadPresetResponse](#ReadPresetResponse)
* [TestRoleResponse](#TestRoleResponse)
* [UpdatePipelineNotificationsResponse](#UpdatePipelineNotificationsResponse)
* [UpdatePipelineResponse](#UpdatePipelineResponse)
* [UpdatePipelineStatusResponse](#UpdatePipelineStatusResponse)


@docs CancelJobResponse,CreateJobResponse,CreatePipelineResponse,CreatePresetResponse,DeletePipelineResponse,DeletePresetResponse,ListJobsByPipelineResponse,ListJobsByStatusResponse,ListPipelinesResponse,ListPresetsResponse,ReadJobResponse,ReadPipelineResponse,ReadPresetResponse,TestRoleResponse,UpdatePipelineNotificationsResponse,UpdatePipelineResponse,UpdatePipelineStatusResponse

## Records

* [Artwork](#Artwork)
* [AudioCodecOptions](#AudioCodecOptions)
* [AudioParameters](#AudioParameters)
* [CaptionFormat](#CaptionFormat)
* [CaptionSource](#CaptionSource)
* [Captions](#Captions)
* [Clip](#Clip)
* [CreateJobOutput](#CreateJobOutput)
* [CreateJobPlaylist](#CreateJobPlaylist)
* [DetectedProperties](#DetectedProperties)
* [Encryption](#Encryption)
* [HlsContentProtection](#HlsContentProtection)
* [InputCaptions](#InputCaptions)
* [Job](#Job)
* [JobAlbumArt](#JobAlbumArt)
* [JobInput](#JobInput)
* [JobOutput](#JobOutput)
* [JobWatermark](#JobWatermark)
* [Notifications](#Notifications)
* [Permission](#Permission)
* [Pipeline](#Pipeline)
* [PipelineOutputConfig](#PipelineOutputConfig)
* [PlayReadyDrm](#PlayReadyDrm)
* [Playlist](#Playlist)
* [Preset](#Preset)
* [PresetWatermark](#PresetWatermark)
* [Thumbnails](#Thumbnails)
* [TimeSpan](#TimeSpan)
* [Timing](#Timing)
* [VideoParameters](#VideoParameters)
* [Warning](#Warning)


@docs Artwork,AudioCodecOptions,AudioParameters,CaptionFormat,CaptionSource,Captions,Clip,CreateJobOutput,CreateJobPlaylist,DetectedProperties,Encryption,HlsContentProtection,InputCaptions,Job,JobAlbumArt,JobInput,JobOutput,JobWatermark,Notifications,Permission,Pipeline,PipelineOutputConfig,PlayReadyDrm,Playlist,Preset,PresetWatermark,Thumbnails,TimeSpan,Timing,VideoParameters,Warning

## Exceptions

* [AccessDeniedException](#AccessDeniedException)
* [IncompatibleVersionException](#IncompatibleVersionException)
* [InternalServiceException](#InternalServiceException)
* [LimitExceededException](#LimitExceededException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ValidationException](#ValidationException)


@docs AccessDeniedException,IncompatibleVersionException,InternalServiceException,LimitExceededException,ResourceInUseException,ResourceNotFoundException,ValidationException

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
        "elastictranscoder"
        "2012-09-25"
        "undefined"
        "AWSELASTICTRANSCODER_20120925."
        "elastictranscoder.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>The CancelJob operation cancels an unfinished job.</p> <note> <p>You can only cancel a job that has a status of <code>Submitted</code>. To prevent a pipeline from starting to process a job while you're getting the job identifier, use <a>UpdatePipelineStatus</a> to temporarily pause the pipeline.</p> </note>

__Required Parameters__

* `id` __:__ `String`


-}
cancelJob :
    String
    -> AWS.Request CancelJobResponse
cancelJob id =
    AWS.Http.unsignedRequest
        "CancelJob"
        "DELETE"
        ("/2012-09-25/jobs/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        cancelJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>When you create a job, Elastic Transcoder returns JSON data that includes the values that you specified plus information about the job that is created.</p> <p>If you have specified more than one output for your jobs (for example, one output for the Kindle Fire and another output for the Apple iPhone 4s), you currently must use the Elastic Transcoder API to list the jobs (as opposed to the AWS Console).</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}
createJob :
    String
    -> (CreateJobOptions -> CreateJobOptions)
    -> AWS.Request CreateJobResponse
createJob pipelineId setOptions =
  let
    options = setOptions (CreateJobOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateJob"
        "POST"
        "/2012-09-25/jobs"
        (AWS.Http.JsonBody
            JE.null
        )
        createJobResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createJob request
-}
type alias CreateJobOptions =
    { input : Maybe JobInput
    , inputs : Maybe (List JobInput)
    , output : Maybe CreateJobOutput
    , outputs : Maybe (List CreateJobOutput)
    , outputKeyPrefix : Maybe String
    , playlists : Maybe (List CreateJobPlaylist)
    , userMetadata : Maybe (Dict String String)
    }



{-| <p>The CreatePipeline operation creates a pipeline with settings that you specify.</p>

__Required Parameters__

* `name` __:__ `String`
* `inputBucket` __:__ `String`
* `role` __:__ `String`


-}
createPipeline :
    String
    -> String
    -> String
    -> (CreatePipelineOptions -> CreatePipelineOptions)
    -> AWS.Request CreatePipelineResponse
createPipeline name inputBucket role setOptions =
  let
    options = setOptions (CreatePipelineOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePipeline"
        "POST"
        "/2012-09-25/pipelines"
        (AWS.Http.JsonBody
            JE.null
        )
        createPipelineResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createPipeline request
-}
type alias CreatePipelineOptions =
    { outputBucket : Maybe String
    , awsKmsKeyArn : Maybe String
    , notifications : Maybe Notifications
    , contentConfig : Maybe PipelineOutputConfig
    , thumbnailConfig : Maybe PipelineOutputConfig
    }



{-| <p>The CreatePreset operation creates a preset with settings that you specify.</p> <important> <p>Elastic Transcoder checks the CreatePreset settings to ensure that they meet Elastic Transcoder requirements and to determine whether they comply with H.264 standards. If your settings are not valid for Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response (<code>ValidationException</code>) and does not create the preset. If the settings are valid for Elastic Transcoder but aren't strictly compliant with the H.264 standard, Elastic Transcoder creates the preset and returns a warning message in the response. This helps you determine whether your settings comply with the H.264 standard while giving you greater flexibility with respect to the video that Elastic Transcoder produces.</p> </important> <p>Elastic Transcoder uses the H.264 video-compression format. For more information, see the International Telecommunication Union publication <i>Recommendation ITU-T H.264: Advanced video coding for generic audiovisual services</i>.</p>

__Required Parameters__

* `name` __:__ `String`
* `container` __:__ `String`


-}
createPreset :
    String
    -> String
    -> (CreatePresetOptions -> CreatePresetOptions)
    -> AWS.Request CreatePresetResponse
createPreset name container setOptions =
  let
    options = setOptions (CreatePresetOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePreset"
        "POST"
        "/2012-09-25/presets"
        (AWS.Http.JsonBody
            JE.null
        )
        createPresetResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createPreset request
-}
type alias CreatePresetOptions =
    { description : Maybe String
    , video : Maybe VideoParameters
    , audio : Maybe AudioParameters
    , thumbnails : Maybe Thumbnails
    }



{-| <p>The DeletePipeline operation removes a pipeline.</p> <p> You can only delete a pipeline that has never been used or that is not currently in use (doesn't contain any active jobs). If the pipeline is currently in use, <code>DeletePipeline</code> returns an error. </p>

__Required Parameters__

* `id` __:__ `String`


-}
deletePipeline :
    String
    -> AWS.Request DeletePipelineResponse
deletePipeline id =
    AWS.Http.unsignedRequest
        "DeletePipeline"
        "DELETE"
        ("/2012-09-25/pipelines/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deletePipelineResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>The DeletePreset operation removes a preset that you've added in an AWS region.</p> <note> <p>You can't delete the default presets that are included with Elastic Transcoder.</p> </note>

__Required Parameters__

* `id` __:__ `String`


-}
deletePreset :
    String
    -> AWS.Request DeletePresetResponse
deletePreset id =
    AWS.Http.unsignedRequest
        "DeletePreset"
        "DELETE"
        ("/2012-09-25/presets/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deletePresetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>The ListJobsByPipeline operation gets a list of the jobs currently in a pipeline.</p> <p>Elastic Transcoder returns all of the jobs currently in the specified pipeline. The response body contains one element for each job that satisfies the search criteria.</p>

__Required Parameters__

* `pipelineId` __:__ `String`


-}
listJobsByPipeline :
    String
    -> (ListJobsByPipelineOptions -> ListJobsByPipelineOptions)
    -> AWS.Request ListJobsByPipelineResponse
listJobsByPipeline pipelineId setOptions =
  let
    options = setOptions (ListJobsByPipelineOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListJobsByPipeline"
        "GET"
        ("/2012-09-25/jobsByPipeline/" ++ pipelineId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listJobsByPipelineResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listJobsByPipeline request
-}
type alias ListJobsByPipelineOptions =
    { ascending : Maybe String
    , pageToken : Maybe String
    }



{-| <p>The ListJobsByStatus operation gets a list of jobs that have a specified status. The response body contains one element for each job that satisfies the search criteria.</p>

__Required Parameters__

* `status` __:__ `String`


-}
listJobsByStatus :
    String
    -> (ListJobsByStatusOptions -> ListJobsByStatusOptions)
    -> AWS.Request ListJobsByStatusResponse
listJobsByStatus status setOptions =
  let
    options = setOptions (ListJobsByStatusOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListJobsByStatus"
        "GET"
        ("/2012-09-25/jobsByStatus/" ++ status ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listJobsByStatusResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listJobsByStatus request
-}
type alias ListJobsByStatusOptions =
    { ascending : Maybe String
    , pageToken : Maybe String
    }



{-| <p>The ListPipelines operation gets a list of the pipelines associated with the current AWS account.</p>

__Required Parameters__



-}
listPipelines :
    (ListPipelinesOptions -> ListPipelinesOptions)
    -> AWS.Request ListPipelinesResponse
listPipelines setOptions =
  let
    options = setOptions (ListPipelinesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPipelines"
        "GET"
        "/2012-09-25/pipelines"
        (AWS.Http.QueryParams
            [
            ]
        )
        listPipelinesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPipelines request
-}
type alias ListPipelinesOptions =
    { ascending : Maybe String
    , pageToken : Maybe String
    }



{-| <p>The ListPresets operation gets a list of the default presets included with Elastic Transcoder and the presets that you've added in an AWS region.</p>

__Required Parameters__



-}
listPresets :
    (ListPresetsOptions -> ListPresetsOptions)
    -> AWS.Request ListPresetsResponse
listPresets setOptions =
  let
    options = setOptions (ListPresetsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPresets"
        "GET"
        "/2012-09-25/presets"
        (AWS.Http.QueryParams
            [
            ]
        )
        listPresetsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPresets request
-}
type alias ListPresetsOptions =
    { ascending : Maybe String
    , pageToken : Maybe String
    }



{-| <p>The ReadJob operation returns detailed information about a job.</p>

__Required Parameters__

* `id` __:__ `String`


-}
readJob :
    String
    -> AWS.Request ReadJobResponse
readJob id =
    AWS.Http.unsignedRequest
        "ReadJob"
        "GET"
        ("/2012-09-25/jobs/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        readJobResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>The ReadPipeline operation gets detailed information about a pipeline.</p>

__Required Parameters__

* `id` __:__ `String`


-}
readPipeline :
    String
    -> AWS.Request ReadPipelineResponse
readPipeline id =
    AWS.Http.unsignedRequest
        "ReadPipeline"
        "GET"
        ("/2012-09-25/pipelines/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        readPipelineResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>The ReadPreset operation gets detailed information about a preset.</p>

__Required Parameters__

* `id` __:__ `String`


-}
readPreset :
    String
    -> AWS.Request ReadPresetResponse
readPreset id =
    AWS.Http.unsignedRequest
        "ReadPreset"
        "GET"
        ("/2012-09-25/presets/" ++ id ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        readPresetResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>The TestRole operation tests the IAM role used to create the pipeline.</p> <p>The <code>TestRole</code> action lets you determine whether the IAM role you are using has sufficient permissions to let Elastic Transcoder perform tasks associated with the transcoding process. The action attempts to assume the specified IAM role, checks read access to the input and output buckets, and tries to send a test notification to Amazon SNS topics that you specify.</p>

__Required Parameters__

* `role` __:__ `String`
* `inputBucket` __:__ `String`
* `outputBucket` __:__ `String`
* `topics` __:__ `(List String)`


-}
testRole :
    String
    -> String
    -> String
    -> (List String)
    -> AWS.Request TestRoleResponse
testRole role inputBucket outputBucket topics =
    AWS.Http.unsignedRequest
        "TestRole"
        "POST"
        "/2012-09-25/roleTests"
        (AWS.Http.JsonBody
            JE.null
        )
        testRoleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p> Use the <code>UpdatePipeline</code> operation to update settings for a pipeline.</p> <important> <p>When you change pipeline settings, your changes take effect immediately. Jobs that you have already submitted and that Elastic Transcoder has not started to process are affected in addition to jobs that you submit after you change settings. </p> </important>

__Required Parameters__

* `id` __:__ `String`


-}
updatePipeline :
    String
    -> (UpdatePipelineOptions -> UpdatePipelineOptions)
    -> AWS.Request UpdatePipelineResponse
updatePipeline id setOptions =
  let
    options = setOptions (UpdatePipelineOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdatePipeline"
        "PUT"
        ("/2012-09-25/pipelines/" ++ id ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        updatePipelineResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updatePipeline request
-}
type alias UpdatePipelineOptions =
    { name : Maybe String
    , inputBucket : Maybe String
    , role : Maybe String
    , awsKmsKeyArn : Maybe String
    , notifications : Maybe Notifications
    , contentConfig : Maybe PipelineOutputConfig
    , thumbnailConfig : Maybe PipelineOutputConfig
    }



{-| <p>With the UpdatePipelineNotifications operation, you can update Amazon Simple Notification Service (Amazon SNS) notifications for a pipeline.</p> <p>When you update notifications for a pipeline, Elastic Transcoder returns the values that you specified in the request.</p>

__Required Parameters__

* `id` __:__ `String`
* `notifications` __:__ `Notifications`


-}
updatePipelineNotifications :
    String
    -> Notifications
    -> AWS.Request UpdatePipelineNotificationsResponse
updatePipelineNotifications id notifications =
    AWS.Http.unsignedRequest
        "UpdatePipelineNotifications"
        "POST"
        ("/2012-09-25/pipelines/" ++ id ++ "/notifications")
        (AWS.Http.JsonBody
            JE.null
        )
        updatePipelineNotificationsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>The UpdatePipelineStatus operation pauses or reactivates a pipeline, so that the pipeline stops or restarts the processing of jobs.</p> <p>Changing the pipeline status is useful if you want to cancel one or more jobs. You can't cancel jobs after Elastic Transcoder has started processing them; if you pause the pipeline to which you submitted the jobs, you have more time to get the job IDs for the jobs that you want to cancel, and to send a <a>CancelJob</a> request. </p>

__Required Parameters__

* `id` __:__ `String`
* `status` __:__ `String`


-}
updatePipelineStatus :
    String
    -> String
    -> AWS.Request UpdatePipelineStatusResponse
updatePipelineStatus id status =
    AWS.Http.unsignedRequest
        "UpdatePipelineStatus"
        "POST"
        ("/2012-09-25/pipelines/" ++ id ++ "/status")
        (AWS.Http.JsonBody
            JE.null
        )
        updatePipelineStatusResponseDecoder
        |> AWS.UnsignedRequest




{-| <p>General authentication failure. The request was not signed correctly.</p>
-}
type alias AccessDeniedException =
    { 
    }



accessDeniedExceptionDecoder : JD.Decoder AccessDeniedException
accessDeniedExceptionDecoder =
    JDP.decode AccessDeniedException



{-| <p>The file to be used as album art. There can be multiple artworks associated with an audio file, to a maximum of 20.</p> <p>To remove artwork or leave the artwork empty, you can either set <code>Artwork</code> to null, or set the <code>Merge Policy</code> to "Replace" and use an empty <code>Artwork</code> array.</p> <p>To pass through existing artwork unchanged, set the <code>Merge Policy</code> to "Prepend", "Append", or "Fallback", and use an empty <code>Artwork</code> array.</p>
-}
type alias Artwork =
    { inputKey : Maybe String
    , maxWidth : Maybe String
    , maxHeight : Maybe String
    , sizingPolicy : Maybe String
    , paddingPolicy : Maybe String
    , albumArtFormat : Maybe String
    , encryption : Maybe Encryption
    }



artworkDecoder : JD.Decoder Artwork
artworkDecoder =
    JDP.decode Artwork
        |> JDP.optional "inputKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxWidth" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxHeight" (JD.nullable JD.string) Nothing
        |> JDP.optional "sizingPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "paddingPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "albumArtFormat" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryption" (JD.nullable encryptionDecoder) Nothing




{-| <p>Options associated with your audio codec.</p>
-}
type alias AudioCodecOptions =
    { profile : Maybe String
    , bitDepth : Maybe String
    , bitOrder : Maybe String
    , signed : Maybe String
    }



audioCodecOptionsDecoder : JD.Decoder AudioCodecOptions
audioCodecOptionsDecoder =
    JDP.decode AudioCodecOptions
        |> JDP.optional "profile" (JD.nullable JD.string) Nothing
        |> JDP.optional "bitDepth" (JD.nullable JD.string) Nothing
        |> JDP.optional "bitOrder" (JD.nullable JD.string) Nothing
        |> JDP.optional "signed" (JD.nullable JD.string) Nothing




{-| <p>Parameters required for transcoding audio.</p>
-}
type alias AudioParameters =
    { codec : Maybe String
    , sampleRate : Maybe String
    , bitRate : Maybe String
    , channels : Maybe String
    , audioPackingMode : Maybe String
    , codecOptions : Maybe AudioCodecOptions
    }



audioParametersDecoder : JD.Decoder AudioParameters
audioParametersDecoder =
    JDP.decode AudioParameters
        |> JDP.optional "codec" (JD.nullable JD.string) Nothing
        |> JDP.optional "sampleRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "bitRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "channels" (JD.nullable JD.string) Nothing
        |> JDP.optional "audioPackingMode" (JD.nullable JD.string) Nothing
        |> JDP.optional "codecOptions" (JD.nullable audioCodecOptionsDecoder) Nothing




{-| Type of HTTP response from cancelJob
-}
type alias CancelJobResponse =
    { 
    }



cancelJobResponseDecoder : JD.Decoder CancelJobResponse
cancelJobResponseDecoder =
    JDP.decode CancelJobResponse



{-| <p>The file format of the output captions. If you leave this value blank, Elastic Transcoder returns an error.</p>
-}
type alias CaptionFormat =
    { format : Maybe String
    , pattern : Maybe String
    , encryption : Maybe Encryption
    }



captionFormatDecoder : JD.Decoder CaptionFormat
captionFormatDecoder =
    JDP.decode CaptionFormat
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "pattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryption" (JD.nullable encryptionDecoder) Nothing




{-| <p>A source file for the input sidecar captions used during the transcoding process.</p>
-}
type alias CaptionSource =
    { key : Maybe String
    , language : Maybe String
    , timeOffset : Maybe String
    , label : Maybe String
    , encryption : Maybe Encryption
    }



captionSourceDecoder : JD.Decoder CaptionSource
captionSourceDecoder =
    JDP.decode CaptionSource
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "language" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeOffset" (JD.nullable JD.string) Nothing
        |> JDP.optional "label" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryption" (JD.nullable encryptionDecoder) Nothing




{-| <p>The captions to be created, if any.</p>
-}
type alias Captions =
    { mergePolicy : Maybe String
    , captionSources : Maybe (List CaptionSource)
    , captionFormats : Maybe (List CaptionFormat)
    }



captionsDecoder : JD.Decoder Captions
captionsDecoder =
    JDP.decode Captions
        |> JDP.optional "mergePolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "captionSources" (JD.nullable (JD.list captionSourceDecoder)) Nothing
        |> JDP.optional "captionFormats" (JD.nullable (JD.list captionFormatDecoder)) Nothing




{-| <p>Settings for one clip in a composition. All jobs in a playlist must have the same clip settings.</p>
-}
type alias Clip =
    { timeSpan : Maybe TimeSpan
    }



clipDecoder : JD.Decoder Clip
clipDecoder =
    JDP.decode Clip
        |> JDP.optional "timeSpan" (JD.nullable timeSpanDecoder) Nothing




{-| <p>The <code>CreateJobOutput</code> structure.</p>
-}
type alias CreateJobOutput =
    { key : Maybe String
    , thumbnailPattern : Maybe String
    , thumbnailEncryption : Maybe Encryption
    , rotate : Maybe String
    , presetId : Maybe String
    , segmentDuration : Maybe String
    , watermarks : Maybe (List JobWatermark)
    , albumArt : Maybe JobAlbumArt
    , composition : Maybe (List Clip)
    , captions : Maybe Captions
    , encryption : Maybe Encryption
    }



createJobOutputDecoder : JD.Decoder CreateJobOutput
createJobOutputDecoder =
    JDP.decode CreateJobOutput
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "thumbnailPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "thumbnailEncryption" (JD.nullable encryptionDecoder) Nothing
        |> JDP.optional "rotate" (JD.nullable JD.string) Nothing
        |> JDP.optional "presetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "segmentDuration" (JD.nullable JD.string) Nothing
        |> JDP.optional "watermarks" (JD.nullable (JD.list jobWatermarkDecoder)) Nothing
        |> JDP.optional "albumArt" (JD.nullable jobAlbumArtDecoder) Nothing
        |> JDP.optional "composition" (JD.nullable (JD.list clipDecoder)) Nothing
        |> JDP.optional "captions" (JD.nullable captionsDecoder) Nothing
        |> JDP.optional "encryption" (JD.nullable encryptionDecoder) Nothing




{-| <p>Information about the master playlist.</p>
-}
type alias CreateJobPlaylist =
    { name : Maybe String
    , format : Maybe String
    , outputKeys : Maybe (List String)
    , hlsContentProtection : Maybe HlsContentProtection
    , playReadyDrm : Maybe PlayReadyDrm
    }



createJobPlaylistDecoder : JD.Decoder CreateJobPlaylist
createJobPlaylistDecoder =
    JDP.decode CreateJobPlaylist
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputKeys" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "hlsContentProtection" (JD.nullable hlsContentProtectionDecoder) Nothing
        |> JDP.optional "playReadyDrm" (JD.nullable playReadyDrmDecoder) Nothing




{-| Type of HTTP response from createJob
-}
type alias CreateJobResponse =
    { job : Maybe Job
    }



createJobResponseDecoder : JD.Decoder CreateJobResponse
createJobResponseDecoder =
    JDP.decode CreateJobResponse
        |> JDP.optional "job" (JD.nullable jobDecoder) Nothing




{-| Type of HTTP response from createPipeline
-}
type alias CreatePipelineResponse =
    { pipeline : Maybe Pipeline
    , warnings : Maybe (List Warning)
    }



createPipelineResponseDecoder : JD.Decoder CreatePipelineResponse
createPipelineResponseDecoder =
    JDP.decode CreatePipelineResponse
        |> JDP.optional "pipeline" (JD.nullable pipelineDecoder) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list warningDecoder)) Nothing




{-| Type of HTTP response from createPreset
-}
type alias CreatePresetResponse =
    { preset : Maybe Preset
    , warning : Maybe String
    }



createPresetResponseDecoder : JD.Decoder CreatePresetResponse
createPresetResponseDecoder =
    JDP.decode CreatePresetResponse
        |> JDP.optional "preset" (JD.nullable presetDecoder) Nothing
        |> JDP.optional "warning" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deletePipeline
-}
type alias DeletePipelineResponse =
    { 
    }



deletePipelineResponseDecoder : JD.Decoder DeletePipelineResponse
deletePipelineResponseDecoder =
    JDP.decode DeletePipelineResponse



{-| Type of HTTP response from deletePreset
-}
type alias DeletePresetResponse =
    { 
    }



deletePresetResponseDecoder : JD.Decoder DeletePresetResponse
deletePresetResponseDecoder =
    JDP.decode DeletePresetResponse



{-| <p>The detected properties of the input file. Elastic Transcoder identifies these values from the input file.</p>
-}
type alias DetectedProperties =
    { width : Maybe Int
    , height : Maybe Int
    , frameRate : Maybe String
    , fileSize : Maybe Int
    , durationMillis : Maybe Int
    }



detectedPropertiesDecoder : JD.Decoder DetectedProperties
detectedPropertiesDecoder =
    JDP.decode DetectedProperties
        |> JDP.optional "width" (JD.nullable JD.int) Nothing
        |> JDP.optional "height" (JD.nullable JD.int) Nothing
        |> JDP.optional "frameRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "durationMillis" (JD.nullable JD.int) Nothing




{-| <p>The encryption settings, if any, that are used for decrypting your input files or encrypting your output files. If your input file is encrypted, you must specify the mode that Elastic Transcoder uses to decrypt your file, otherwise you must specify the mode you want Elastic Transcoder to use to encrypt your output files.</p>
-}
type alias Encryption =
    { mode : Maybe String
    , key : Maybe String
    , keyMd5 : Maybe String
    , initializationVector : Maybe String
    }



encryptionDecoder : JD.Decoder Encryption
encryptionDecoder =
    JDP.decode Encryption
        |> JDP.optional "mode" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyMd5" (JD.nullable JD.string) Nothing
        |> JDP.optional "initializationVector" (JD.nullable JD.string) Nothing




{-| <p>The HLS content protection settings, if any, that you want Elastic Transcoder to apply to your output files.</p>
-}
type alias HlsContentProtection =
    { method : Maybe String
    , key : Maybe String
    , keyMd5 : Maybe String
    , initializationVector : Maybe String
    , licenseAcquisitionUrl : Maybe String
    , keyStoragePolicy : Maybe String
    }



hlsContentProtectionDecoder : JD.Decoder HlsContentProtection
hlsContentProtectionDecoder =
    JDP.decode HlsContentProtection
        |> JDP.optional "method" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyMd5" (JD.nullable JD.string) Nothing
        |> JDP.optional "initializationVector" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseAcquisitionUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyStoragePolicy" (JD.nullable JD.string) Nothing




{-| undefined
-}
type alias IncompatibleVersionException =
    { 
    }



incompatibleVersionExceptionDecoder : JD.Decoder IncompatibleVersionException
incompatibleVersionExceptionDecoder =
    JDP.decode IncompatibleVersionException



{-| <p>The captions to be created, if any.</p>
-}
type alias InputCaptions =
    { mergePolicy : Maybe String
    , captionSources : Maybe (List CaptionSource)
    }



inputCaptionsDecoder : JD.Decoder InputCaptions
inputCaptionsDecoder =
    JDP.decode InputCaptions
        |> JDP.optional "mergePolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "captionSources" (JD.nullable (JD.list captionSourceDecoder)) Nothing




{-| <p>Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.</p>
-}
type alias InternalServiceException =
    { 
    }



internalServiceExceptionDecoder : JD.Decoder InternalServiceException
internalServiceExceptionDecoder =
    JDP.decode InternalServiceException



{-| <p>A section of the response body that provides information about the job that is created.</p>
-}
type alias Job =
    { id : Maybe String
    , arn : Maybe String
    , pipelineId : Maybe String
    , input : Maybe JobInput
    , inputs : Maybe (List JobInput)
    , output : Maybe JobOutput
    , outputs : Maybe (List JobOutput)
    , outputKeyPrefix : Maybe String
    , playlists : Maybe (List Playlist)
    , status : Maybe String
    , userMetadata : Maybe (Dict String String)
    , timing : Maybe Timing
    }



jobDecoder : JD.Decoder Job
jobDecoder =
    JDP.decode Job
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "pipelineId" (JD.nullable JD.string) Nothing
        |> JDP.optional "input" (JD.nullable jobInputDecoder) Nothing
        |> JDP.optional "inputs" (JD.nullable (JD.list jobInputDecoder)) Nothing
        |> JDP.optional "output" (JD.nullable jobOutputDecoder) Nothing
        |> JDP.optional "outputs" (JD.nullable (JD.list jobOutputDecoder)) Nothing
        |> JDP.optional "outputKeyPrefix" (JD.nullable JD.string) Nothing
        |> JDP.optional "playlists" (JD.nullable (JD.list playlistDecoder)) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "userMetadata" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "timing" (JD.nullable timingDecoder) Nothing




{-| <p>The .jpg or .png file associated with an audio file.</p>
-}
type alias JobAlbumArt =
    { mergePolicy : Maybe String
    , artwork : Maybe (List Artwork)
    }



jobAlbumArtDecoder : JD.Decoder JobAlbumArt
jobAlbumArtDecoder =
    JDP.decode JobAlbumArt
        |> JDP.optional "mergePolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "artwork" (JD.nullable (JD.list artworkDecoder)) Nothing




{-| <p>Information about the file that you're transcoding.</p>
-}
type alias JobInput =
    { key : Maybe String
    , frameRate : Maybe String
    , resolution : Maybe String
    , aspectRatio : Maybe String
    , interlaced : Maybe String
    , container : Maybe String
    , encryption : Maybe Encryption
    , timeSpan : Maybe TimeSpan
    , inputCaptions : Maybe InputCaptions
    , detectedProperties : Maybe DetectedProperties
    }



jobInputDecoder : JD.Decoder JobInput
jobInputDecoder =
    JDP.decode JobInput
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "frameRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "resolution" (JD.nullable JD.string) Nothing
        |> JDP.optional "aspectRatio" (JD.nullable JD.string) Nothing
        |> JDP.optional "interlaced" (JD.nullable JD.string) Nothing
        |> JDP.optional "container" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryption" (JD.nullable encryptionDecoder) Nothing
        |> JDP.optional "timeSpan" (JD.nullable timeSpanDecoder) Nothing
        |> JDP.optional "inputCaptions" (JD.nullable inputCaptionsDecoder) Nothing
        |> JDP.optional "detectedProperties" (JD.nullable detectedPropertiesDecoder) Nothing




{-| <important> <p>Outputs recommended instead.</p> </important> <p>If you specified one output for a job, information about that output. If you specified multiple outputs for a job, the <code>Output</code> object lists information about the first output. This duplicates the information that is listed for the first output in the <code>Outputs</code> object.</p>
-}
type alias JobOutput =
    { id : Maybe String
    , key : Maybe String
    , thumbnailPattern : Maybe String
    , thumbnailEncryption : Maybe Encryption
    , rotate : Maybe String
    , presetId : Maybe String
    , segmentDuration : Maybe String
    , status : Maybe String
    , statusDetail : Maybe String
    , duration : Maybe Int
    , width : Maybe Int
    , height : Maybe Int
    , frameRate : Maybe String
    , fileSize : Maybe Int
    , durationMillis : Maybe Int
    , watermarks : Maybe (List JobWatermark)
    , albumArt : Maybe JobAlbumArt
    , composition : Maybe (List Clip)
    , captions : Maybe Captions
    , encryption : Maybe Encryption
    , appliedColorSpaceConversion : Maybe String
    }



jobOutputDecoder : JD.Decoder JobOutput
jobOutputDecoder =
    JDP.decode JobOutput
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "thumbnailPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "thumbnailEncryption" (JD.nullable encryptionDecoder) Nothing
        |> JDP.optional "rotate" (JD.nullable JD.string) Nothing
        |> JDP.optional "presetId" (JD.nullable JD.string) Nothing
        |> JDP.optional "segmentDuration" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusDetail" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.int) Nothing
        |> JDP.optional "width" (JD.nullable JD.int) Nothing
        |> JDP.optional "height" (JD.nullable JD.int) Nothing
        |> JDP.optional "frameRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "fileSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "durationMillis" (JD.nullable JD.int) Nothing
        |> JDP.optional "watermarks" (JD.nullable (JD.list jobWatermarkDecoder)) Nothing
        |> JDP.optional "albumArt" (JD.nullable jobAlbumArtDecoder) Nothing
        |> JDP.optional "composition" (JD.nullable (JD.list clipDecoder)) Nothing
        |> JDP.optional "captions" (JD.nullable captionsDecoder) Nothing
        |> JDP.optional "encryption" (JD.nullable encryptionDecoder) Nothing
        |> JDP.optional "appliedColorSpaceConversion" (JD.nullable JD.string) Nothing




{-| <p>Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.</p>
-}
type alias JobWatermark =
    { presetWatermarkId : Maybe String
    , inputKey : Maybe String
    , encryption : Maybe Encryption
    }



jobWatermarkDecoder : JD.Decoder JobWatermark
jobWatermarkDecoder =
    JDP.decode JobWatermark
        |> JDP.optional "presetWatermarkId" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "encryption" (JD.nullable encryptionDecoder) Nothing




{-| <p>Too many operations for a given AWS account. For example, the number of pipelines exceeds the maximum allowed.</p>
-}
type alias LimitExceededException =
    { 
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException



{-| Type of HTTP response from listJobsByPipeline
-}
type alias ListJobsByPipelineResponse =
    { jobs : Maybe (List Job)
    , nextPageToken : Maybe String
    }



listJobsByPipelineResponseDecoder : JD.Decoder ListJobsByPipelineResponse
listJobsByPipelineResponseDecoder =
    JDP.decode ListJobsByPipelineResponse
        |> JDP.optional "jobs" (JD.nullable (JD.list jobDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listJobsByStatus
-}
type alias ListJobsByStatusResponse =
    { jobs : Maybe (List Job)
    , nextPageToken : Maybe String
    }



listJobsByStatusResponseDecoder : JD.Decoder ListJobsByStatusResponse
listJobsByStatusResponseDecoder =
    JDP.decode ListJobsByStatusResponse
        |> JDP.optional "jobs" (JD.nullable (JD.list jobDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPipelines
-}
type alias ListPipelinesResponse =
    { pipelines : Maybe (List Pipeline)
    , nextPageToken : Maybe String
    }



listPipelinesResponseDecoder : JD.Decoder ListPipelinesResponse
listPipelinesResponseDecoder =
    JDP.decode ListPipelinesResponse
        |> JDP.optional "pipelines" (JD.nullable (JD.list pipelineDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPresets
-}
type alias ListPresetsResponse =
    { presets : Maybe (List Preset)
    , nextPageToken : Maybe String
    }



listPresetsResponseDecoder : JD.Decoder ListPresetsResponse
listPresetsResponseDecoder =
    JDP.decode ListPresetsResponse
        |> JDP.optional "presets" (JD.nullable (JD.list presetDecoder)) Nothing
        |> JDP.optional "nextPageToken" (JD.nullable JD.string) Nothing




{-| <p>The Amazon Simple Notification Service (Amazon SNS) topic or topics to notify in order to report job status.</p> <important> <p>To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.</p> </important>
-}
type alias Notifications =
    { progressing : Maybe String
    , completed : Maybe String
    , warning : Maybe String
    , error : Maybe String
    }



notificationsDecoder : JD.Decoder Notifications
notificationsDecoder =
    JDP.decode Notifications
        |> JDP.optional "progressing" (JD.nullable JD.string) Nothing
        |> JDP.optional "completed" (JD.nullable JD.string) Nothing
        |> JDP.optional "warning" (JD.nullable JD.string) Nothing
        |> JDP.optional "error" (JD.nullable JD.string) Nothing




{-| <p>The <code>Permission</code> structure.</p>
-}
type alias Permission =
    { granteeType : Maybe String
    , grantee : Maybe String
    , access : Maybe (List String)
    }



permissionDecoder : JD.Decoder Permission
permissionDecoder =
    JDP.decode Permission
        |> JDP.optional "granteeType" (JD.nullable JD.string) Nothing
        |> JDP.optional "grantee" (JD.nullable JD.string) Nothing
        |> JDP.optional "access" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The pipeline (queue) that is used to manage jobs.</p>
-}
type alias Pipeline =
    { id : Maybe String
    , arn : Maybe String
    , name : Maybe String
    , status : Maybe String
    , inputBucket : Maybe String
    , outputBucket : Maybe String
    , role : Maybe String
    , awsKmsKeyArn : Maybe String
    , notifications : Maybe Notifications
    , contentConfig : Maybe PipelineOutputConfig
    , thumbnailConfig : Maybe PipelineOutputConfig
    }



pipelineDecoder : JD.Decoder Pipeline
pipelineDecoder =
    JDP.decode Pipeline
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "inputBucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputBucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "role" (JD.nullable JD.string) Nothing
        |> JDP.optional "awsKmsKeyArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "notifications" (JD.nullable notificationsDecoder) Nothing
        |> JDP.optional "contentConfig" (JD.nullable pipelineOutputConfigDecoder) Nothing
        |> JDP.optional "thumbnailConfig" (JD.nullable pipelineOutputConfigDecoder) Nothing




{-| <p>The <code>PipelineOutputConfig</code> structure.</p>
-}
type alias PipelineOutputConfig =
    { bucket : Maybe String
    , storageClass : Maybe String
    , permissions : Maybe (List Permission)
    }



pipelineOutputConfigDecoder : JD.Decoder PipelineOutputConfig
pipelineOutputConfigDecoder =
    JDP.decode PipelineOutputConfig
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "storageClass" (JD.nullable JD.string) Nothing
        |> JDP.optional "permissions" (JD.nullable (JD.list permissionDecoder)) Nothing




{-| <p>The PlayReady DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.</p> <p>PlayReady DRM encrypts your media files using <code>AES-CTR</code> encryption.</p> <p>If you use DRM for an <code>HLSv3</code> playlist, your outputs must have a master playlist.</p>
-}
type alias PlayReadyDrm =
    { format : Maybe String
    , key : Maybe String
    , keyMd5 : Maybe String
    , keyId : Maybe String
    , initializationVector : Maybe String
    , licenseAcquisitionUrl : Maybe String
    }



playReadyDrmDecoder : JD.Decoder PlayReadyDrm
playReadyDrmDecoder =
    JDP.decode PlayReadyDrm
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyMd5" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "initializationVector" (JD.nullable JD.string) Nothing
        |> JDP.optional "licenseAcquisitionUrl" (JD.nullable JD.string) Nothing




{-| <p> Use Only for Fragmented MP4 or MPEG-TS Outputs. If you specify a preset for which the value of Container is <code>fmp4</code> (Fragmented MP4) or <code>ts</code> (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create. We recommend that you create only one master playlist per output format. The maximum number of master playlists in a job is 30. </p>
-}
type alias Playlist =
    { name : Maybe String
    , format : Maybe String
    , outputKeys : Maybe (List String)
    , hlsContentProtection : Maybe HlsContentProtection
    , playReadyDrm : Maybe PlayReadyDrm
    , status : Maybe String
    , statusDetail : Maybe String
    }



playlistDecoder : JD.Decoder Playlist
playlistDecoder =
    JDP.decode Playlist
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "outputKeys" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "hlsContentProtection" (JD.nullable hlsContentProtectionDecoder) Nothing
        |> JDP.optional "playReadyDrm" (JD.nullable playReadyDrmDecoder) Nothing
        |> JDP.optional "status" (JD.nullable JD.string) Nothing
        |> JDP.optional "statusDetail" (JD.nullable JD.string) Nothing




{-| <p>Presets are templates that contain most of the settings for transcoding media files from one format to another. Elastic Transcoder includes some default presets for common formats, for example, several iPod and iPhone versions. You can also create your own presets for formats that aren't included among the default presets. You specify which preset you want to use when you create a job.</p>
-}
type alias Preset =
    { id : Maybe String
    , arn : Maybe String
    , name : Maybe String
    , description : Maybe String
    , container : Maybe String
    , audio : Maybe AudioParameters
    , video : Maybe VideoParameters
    , thumbnails : Maybe Thumbnails
    , type_ : Maybe String
    }



presetDecoder : JD.Decoder Preset
presetDecoder =
    JDP.decode Preset
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "container" (JD.nullable JD.string) Nothing
        |> JDP.optional "audio" (JD.nullable audioParametersDecoder) Nothing
        |> JDP.optional "video" (JD.nullable videoParametersDecoder) Nothing
        |> JDP.optional "thumbnails" (JD.nullable thumbnailsDecoder) Nothing
        |> JDP.optional "type_" (JD.nullable JD.string) Nothing




{-| <p>Settings for the size, location, and opacity of graphics that you want Elastic Transcoder to overlay over videos that are transcoded using this preset. You can specify settings for up to four watermarks. Watermarks appear in the specified size and location, and with the specified opacity for the duration of the transcoded video.</p> <p>Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.</p> <p>When you create a job that uses this preset, you specify the .png or .jpg graphics that you want Elastic Transcoder to include in the transcoded videos. You can specify fewer graphics in the job than you specify watermark settings in the preset, which allows you to use the same preset for up to four watermarks that have different dimensions.</p>
-}
type alias PresetWatermark =
    { id : Maybe String
    , maxWidth : Maybe String
    , maxHeight : Maybe String
    , sizingPolicy : Maybe String
    , horizontalAlign : Maybe String
    , horizontalOffset : Maybe String
    , verticalAlign : Maybe String
    , verticalOffset : Maybe String
    , opacity : Maybe String
    , target : Maybe String
    }



presetWatermarkDecoder : JD.Decoder PresetWatermark
presetWatermarkDecoder =
    JDP.decode PresetWatermark
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxWidth" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxHeight" (JD.nullable JD.string) Nothing
        |> JDP.optional "sizingPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "horizontalAlign" (JD.nullable JD.string) Nothing
        |> JDP.optional "horizontalOffset" (JD.nullable JD.string) Nothing
        |> JDP.optional "verticalAlign" (JD.nullable JD.string) Nothing
        |> JDP.optional "verticalOffset" (JD.nullable JD.string) Nothing
        |> JDP.optional "opacity" (JD.nullable JD.string) Nothing
        |> JDP.optional "target" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from readJob
-}
type alias ReadJobResponse =
    { job : Maybe Job
    }



readJobResponseDecoder : JD.Decoder ReadJobResponse
readJobResponseDecoder =
    JDP.decode ReadJobResponse
        |> JDP.optional "job" (JD.nullable jobDecoder) Nothing




{-| Type of HTTP response from readPipeline
-}
type alias ReadPipelineResponse =
    { pipeline : Maybe Pipeline
    , warnings : Maybe (List Warning)
    }



readPipelineResponseDecoder : JD.Decoder ReadPipelineResponse
readPipelineResponseDecoder =
    JDP.decode ReadPipelineResponse
        |> JDP.optional "pipeline" (JD.nullable pipelineDecoder) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list warningDecoder)) Nothing




{-| Type of HTTP response from readPreset
-}
type alias ReadPresetResponse =
    { preset : Maybe Preset
    }



readPresetResponseDecoder : JD.Decoder ReadPresetResponse
readPresetResponseDecoder =
    JDP.decode ReadPresetResponse
        |> JDP.optional "preset" (JD.nullable presetDecoder) Nothing




{-| <p>The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.</p>
-}
type alias ResourceInUseException =
    { 
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException



{-| <p>The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| Type of HTTP response from testRole
-}
type alias TestRoleResponse =
    { success : Maybe String
    , messages : Maybe (List String)
    }



testRoleResponseDecoder : JD.Decoder TestRoleResponse
testRoleResponseDecoder =
    JDP.decode TestRoleResponse
        |> JDP.optional "success" (JD.nullable JD.string) Nothing
        |> JDP.optional "messages" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Thumbnails for videos.</p>
-}
type alias Thumbnails =
    { format : Maybe String
    , interval : Maybe String
    , resolution : Maybe String
    , aspectRatio : Maybe String
    , maxWidth : Maybe String
    , maxHeight : Maybe String
    , sizingPolicy : Maybe String
    , paddingPolicy : Maybe String
    }



thumbnailsDecoder : JD.Decoder Thumbnails
thumbnailsDecoder =
    JDP.decode Thumbnails
        |> JDP.optional "format" (JD.nullable JD.string) Nothing
        |> JDP.optional "interval" (JD.nullable JD.string) Nothing
        |> JDP.optional "resolution" (JD.nullable JD.string) Nothing
        |> JDP.optional "aspectRatio" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxWidth" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxHeight" (JD.nullable JD.string) Nothing
        |> JDP.optional "sizingPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "paddingPolicy" (JD.nullable JD.string) Nothing




{-| <p>Settings that determine when a clip begins and how long it lasts.</p>
-}
type alias TimeSpan =
    { startTime : Maybe String
    , duration : Maybe String
    }



timeSpanDecoder : JD.Decoder TimeSpan
timeSpanDecoder =
    JDP.decode TimeSpan
        |> JDP.optional "startTime" (JD.nullable JD.string) Nothing
        |> JDP.optional "duration" (JD.nullable JD.string) Nothing




{-| <p>Details about the timing of a job.</p>
-}
type alias Timing =
    { submitTimeMillis : Maybe Int
    , startTimeMillis : Maybe Int
    , finishTimeMillis : Maybe Int
    }



timingDecoder : JD.Decoder Timing
timingDecoder =
    JDP.decode Timing
        |> JDP.optional "submitTimeMillis" (JD.nullable JD.int) Nothing
        |> JDP.optional "startTimeMillis" (JD.nullable JD.int) Nothing
        |> JDP.optional "finishTimeMillis" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from updatePipelineNotifications
-}
type alias UpdatePipelineNotificationsResponse =
    { pipeline : Maybe Pipeline
    }



updatePipelineNotificationsResponseDecoder : JD.Decoder UpdatePipelineNotificationsResponse
updatePipelineNotificationsResponseDecoder =
    JDP.decode UpdatePipelineNotificationsResponse
        |> JDP.optional "pipeline" (JD.nullable pipelineDecoder) Nothing




{-| Type of HTTP response from updatePipeline
-}
type alias UpdatePipelineResponse =
    { pipeline : Maybe Pipeline
    , warnings : Maybe (List Warning)
    }



updatePipelineResponseDecoder : JD.Decoder UpdatePipelineResponse
updatePipelineResponseDecoder =
    JDP.decode UpdatePipelineResponse
        |> JDP.optional "pipeline" (JD.nullable pipelineDecoder) Nothing
        |> JDP.optional "warnings" (JD.nullable (JD.list warningDecoder)) Nothing




{-| Type of HTTP response from updatePipelineStatus
-}
type alias UpdatePipelineStatusResponse =
    { pipeline : Maybe Pipeline
    }



updatePipelineStatusResponseDecoder : JD.Decoder UpdatePipelineStatusResponse
updatePipelineStatusResponseDecoder =
    JDP.decode UpdatePipelineStatusResponse
        |> JDP.optional "pipeline" (JD.nullable pipelineDecoder) Nothing




{-| <p>One or more required parameter values were not provided in the request.</p>
-}
type alias ValidationException =
    { 
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException



{-| <p>The <code>VideoParameters</code> structure.</p>
-}
type alias VideoParameters =
    { codec : Maybe String
    , codecOptions : Maybe (Dict String String)
    , keyframesMaxDist : Maybe String
    , fixedGOP : Maybe String
    , bitRate : Maybe String
    , frameRate : Maybe String
    , maxFrameRate : Maybe String
    , resolution : Maybe String
    , aspectRatio : Maybe String
    , maxWidth : Maybe String
    , maxHeight : Maybe String
    , displayAspectRatio : Maybe String
    , sizingPolicy : Maybe String
    , paddingPolicy : Maybe String
    , watermarks : Maybe (List PresetWatermark)
    }



videoParametersDecoder : JD.Decoder VideoParameters
videoParametersDecoder =
    JDP.decode VideoParameters
        |> JDP.optional "codec" (JD.nullable JD.string) Nothing
        |> JDP.optional "codecOptions" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "keyframesMaxDist" (JD.nullable JD.string) Nothing
        |> JDP.optional "fixedGOP" (JD.nullable JD.string) Nothing
        |> JDP.optional "bitRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "frameRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxFrameRate" (JD.nullable JD.string) Nothing
        |> JDP.optional "resolution" (JD.nullable JD.string) Nothing
        |> JDP.optional "aspectRatio" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxWidth" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxHeight" (JD.nullable JD.string) Nothing
        |> JDP.optional "displayAspectRatio" (JD.nullable JD.string) Nothing
        |> JDP.optional "sizingPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "paddingPolicy" (JD.nullable JD.string) Nothing
        |> JDP.optional "watermarks" (JD.nullable (JD.list presetWatermarkDecoder)) Nothing




{-| <p>Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.</p> <p>Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.</p>
-}
type alias Warning =
    { code : Maybe String
    , message : Maybe String
    }



warningDecoder : JD.Decoder Warning
warningDecoder =
    JDP.decode Warning
        |> JDP.optional "code" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




