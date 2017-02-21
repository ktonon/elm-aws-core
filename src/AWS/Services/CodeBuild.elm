module AWS.Services.CodeBuild
    exposing
        ( config
        , batchGetBuilds
        , batchGetProjects
        , createProject
        , CreateProjectOptions
        , deleteProject
        , listBuilds
        , ListBuildsOptions
        , listBuildsForProject
        , ListBuildsForProjectOptions
        , listCuratedEnvironmentImages
        , listProjects
        , ListProjectsOptions
        , startBuild
        , StartBuildOptions
        , stopBuild
        , updateProject
        , UpdateProjectOptions
        , AccountLimitExceededException
        , ArtifactNamespace(..)
        , ArtifactPackaging(..)
        , ArtifactsType(..)
        , BatchGetBuildsOutput
        , BatchGetProjectsOutput
        , Build
        , BuildArtifacts
        , BuildPhase
        , BuildPhaseType(..)
        , ComputeType(..)
        , CreateProjectOutput
        , DeleteProjectOutput
        , EnvironmentImage
        , EnvironmentLanguage
        , EnvironmentPlatform
        , EnvironmentType(..)
        , EnvironmentVariable
        , InvalidInputException
        , LanguageType(..)
        , ListBuildsForProjectOutput
        , ListBuildsOutput
        , ListCuratedEnvironmentImagesOutput
        , ListProjectsOutput
        , LogsLocation
        , PhaseContext
        , PlatformType(..)
        , Project
        , ProjectArtifacts
        , ProjectEnvironment
        , ProjectSortByType(..)
        , ProjectSource
        , ResourceAlreadyExistsException
        , ResourceNotFoundException
        , SortOrderType(..)
        , SourceAuth
        , SourceAuthType(..)
        , SourceType(..)
        , StartBuildOutput
        , StatusType(..)
        , StopBuildOutput
        , Tag
        , UpdateProjectOutput
        )

{-| <fullname>AWS CodeBuild</fullname> <p>AWS CodeBuild is a fully managed build service in the cloud. AWS CodeBuild compiles your source code, runs unit tests, and produces artifacts that are ready to deploy. AWS CodeBuild eliminates the need to provision, manage, and scale your own build servers. It provides prepackaged build environments for the most popular programming languages and build tools, such as Apach Maven, Gradle, and more. You can also fully customize build environments in AWS CodeBuild to use your own build tools. AWS CodeBuild scales automatically to meet peak build requests, and you pay only for the build time you consume. For more information about AWS CodeBuild, see the <i>AWS CodeBuild User Guide</i>.</p> <p>AWS CodeBuild supports these operations:</p> <ul> <li> <p> <code>BatchGetProjects</code>: Gets information about one or more build projects. A <i>build project</i> defines how AWS CodeBuild will run a build. This includes information such as where to get the source code to build, the build environment to use, the build commands to run, and where to store the build output. A <i>build environment</i> represents a combination of operating system, programming language runtime, and tools that AWS CodeBuild will use to run a build. Also, you can add tags to build projects to help manage your resources and costs.</p> </li> <li> <p> <code>CreateProject</code>: Creates a build project.</p> </li> <li> <p> <code>DeleteProject</code>: Deletes a build project.</p> </li> <li> <p> <code>ListProjects</code>: Gets a list of build project names, with each build project name representing a single build project.</p> </li> <li> <p> <code>UpdateProject</code>: Changes the settings of an existing build project.</p> </li> <li> <p> <code>BatchGetBuilds</code>: Gets information about one or more builds.</p> </li> <li> <p> <code>ListBuilds</code>: Gets a list of build IDs, with each build ID representing a single build.</p> </li> <li> <p> <code>ListBuildsForProject</code>: Gets a list of build IDs for the specified build project, with each build ID representing a single build.</p> </li> <li> <p> <code>StartBuild</code>: Starts running a build.</p> </li> <li> <p> <code>StopBuild</code>: Attempts to stop running a build.</p> </li> <li> <p> <code>ListCuratedEnvironmentImages</code>: Gets information about Docker images that are managed by AWS CodeBuild.</p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [batchGetBuilds](#batchGetBuilds)
* [batchGetProjects](#batchGetProjects)
* [createProject](#createProject)
* [CreateProjectOptions](#CreateProjectOptions)
* [deleteProject](#deleteProject)
* [listBuilds](#listBuilds)
* [ListBuildsOptions](#ListBuildsOptions)
* [listBuildsForProject](#listBuildsForProject)
* [ListBuildsForProjectOptions](#ListBuildsForProjectOptions)
* [listCuratedEnvironmentImages](#listCuratedEnvironmentImages)
* [listProjects](#listProjects)
* [ListProjectsOptions](#ListProjectsOptions)
* [startBuild](#startBuild)
* [StartBuildOptions](#StartBuildOptions)
* [stopBuild](#stopBuild)
* [updateProject](#updateProject)
* [UpdateProjectOptions](#UpdateProjectOptions)


@docs batchGetBuilds,batchGetProjects,createProject,CreateProjectOptions,deleteProject,listBuilds,ListBuildsOptions,listBuildsForProject,ListBuildsForProjectOptions,listCuratedEnvironmentImages,listProjects,ListProjectsOptions,startBuild,StartBuildOptions,stopBuild,updateProject,UpdateProjectOptions

## Responses

* [BatchGetBuildsOutput](#BatchGetBuildsOutput)
* [BatchGetProjectsOutput](#BatchGetProjectsOutput)
* [CreateProjectOutput](#CreateProjectOutput)
* [DeleteProjectOutput](#DeleteProjectOutput)
* [ListBuildsForProjectOutput](#ListBuildsForProjectOutput)
* [ListBuildsOutput](#ListBuildsOutput)
* [ListCuratedEnvironmentImagesOutput](#ListCuratedEnvironmentImagesOutput)
* [ListProjectsOutput](#ListProjectsOutput)
* [StartBuildOutput](#StartBuildOutput)
* [StopBuildOutput](#StopBuildOutput)
* [UpdateProjectOutput](#UpdateProjectOutput)


@docs BatchGetBuildsOutput,BatchGetProjectsOutput,CreateProjectOutput,DeleteProjectOutput,ListBuildsForProjectOutput,ListBuildsOutput,ListCuratedEnvironmentImagesOutput,ListProjectsOutput,StartBuildOutput,StopBuildOutput,UpdateProjectOutput

## Records

* [Build](#Build)
* [BuildArtifacts](#BuildArtifacts)
* [BuildPhase](#BuildPhase)
* [EnvironmentImage](#EnvironmentImage)
* [EnvironmentLanguage](#EnvironmentLanguage)
* [EnvironmentPlatform](#EnvironmentPlatform)
* [EnvironmentVariable](#EnvironmentVariable)
* [LogsLocation](#LogsLocation)
* [PhaseContext](#PhaseContext)
* [Project](#Project)
* [ProjectArtifacts](#ProjectArtifacts)
* [ProjectEnvironment](#ProjectEnvironment)
* [ProjectSource](#ProjectSource)
* [SourceAuth](#SourceAuth)
* [Tag](#Tag)


@docs Build,BuildArtifacts,BuildPhase,EnvironmentImage,EnvironmentLanguage,EnvironmentPlatform,EnvironmentVariable,LogsLocation,PhaseContext,Project,ProjectArtifacts,ProjectEnvironment,ProjectSource,SourceAuth,Tag

## Unions

* [ArtifactNamespace](#ArtifactNamespace)
* [ArtifactPackaging](#ArtifactPackaging)
* [ArtifactsType](#ArtifactsType)
* [BuildPhaseType](#BuildPhaseType)
* [ComputeType](#ComputeType)
* [EnvironmentType](#EnvironmentType)
* [LanguageType](#LanguageType)
* [PlatformType](#PlatformType)
* [ProjectSortByType](#ProjectSortByType)
* [SortOrderType](#SortOrderType)
* [SourceAuthType](#SourceAuthType)
* [SourceType](#SourceType)
* [StatusType](#StatusType)


@docs ArtifactNamespace,ArtifactPackaging,ArtifactsType,BuildPhaseType,ComputeType,EnvironmentType,LanguageType,PlatformType,ProjectSortByType,SortOrderType,SourceAuthType,SourceType,StatusType

## Exceptions

* [AccountLimitExceededException](#AccountLimitExceededException)
* [InvalidInputException](#InvalidInputException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceNotFoundException](#ResourceNotFoundException)


@docs AccountLimitExceededException,InvalidInputException,ResourceAlreadyExistsException,ResourceNotFoundException

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
        "codebuild"
        "2016-10-06"
        "1.1"
        "AWSCODEBUILD_20161006."
        "codebuild.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Gets information about builds.</p>

__Required Parameters__

* `ids` __:__ `(List String)`


-}
batchGetBuilds :
    (List String)
    -> AWS.Http.UnsignedRequest BatchGetBuildsOutput
batchGetBuilds ids =
    AWS.Http.unsignedRequest
        "BatchGetBuilds"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetBuildsOutputDecoder



{-| <p>Gets information about build projects.</p>

__Required Parameters__

* `names` __:__ `(List String)`


-}
batchGetProjects :
    (List String)
    -> AWS.Http.UnsignedRequest BatchGetProjectsOutput
batchGetProjects names =
    AWS.Http.unsignedRequest
        "BatchGetProjects"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetProjectsOutputDecoder



{-| <p>Creates a build project.</p>

__Required Parameters__

* `name` __:__ `String`
* `source` __:__ `ProjectSource`
* `artifacts` __:__ `ProjectArtifacts`
* `environment` __:__ `ProjectEnvironment`


-}
createProject :
    String
    -> ProjectSource
    -> ProjectArtifacts
    -> ProjectEnvironment
    -> (CreateProjectOptions -> CreateProjectOptions)
    -> AWS.Http.UnsignedRequest CreateProjectOutput
createProject name source artifacts environment setOptions =
  let
    options = setOptions (CreateProjectOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createProjectOutputDecoder


{-| Options for a createProject request
-}
type alias CreateProjectOptions =
    { description : Maybe String
    , serviceRole : Maybe String
    , timeoutInMinutes : Maybe Int
    , encryptionKey : Maybe String
    , tags : Maybe (List Tag)
    }



{-| <p>Deletes a build project.</p>

__Required Parameters__

* `name` __:__ `String`


-}
deleteProject :
    String
    -> AWS.Http.UnsignedRequest DeleteProjectOutput
deleteProject name =
    AWS.Http.unsignedRequest
        "DeleteProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteProjectOutputDecoder



{-| <p>Gets a list of build IDs, with each build ID representing a single build.</p>

__Required Parameters__



-}
listBuilds :
    (ListBuildsOptions -> ListBuildsOptions)
    -> AWS.Http.UnsignedRequest ListBuildsOutput
listBuilds setOptions =
  let
    options = setOptions (ListBuildsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListBuilds"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listBuildsOutputDecoder


{-| Options for a listBuilds request
-}
type alias ListBuildsOptions =
    { sortOrder : Maybe SortOrderType
    , nextToken : Maybe String
    }



{-| <p>Gets a list of build IDs for the specified build project, with each build ID representing a single build.</p>

__Required Parameters__

* `projectName` __:__ `String`


-}
listBuildsForProject :
    String
    -> (ListBuildsForProjectOptions -> ListBuildsForProjectOptions)
    -> AWS.Http.UnsignedRequest ListBuildsForProjectOutput
listBuildsForProject projectName setOptions =
  let
    options = setOptions (ListBuildsForProjectOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListBuildsForProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listBuildsForProjectOutputDecoder


{-| Options for a listBuildsForProject request
-}
type alias ListBuildsForProjectOptions =
    { sortOrder : Maybe SortOrderType
    , nextToken : Maybe String
    }



{-| <p>Gets information about Docker images that are managed by AWS CodeBuild.</p>

__Required Parameters__



-}
listCuratedEnvironmentImages :
    AWS.Http.UnsignedRequest ListCuratedEnvironmentImagesOutput
listCuratedEnvironmentImages =
    AWS.Http.unsignedRequest
        "ListCuratedEnvironmentImages"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listCuratedEnvironmentImagesOutputDecoder



{-| <p>Gets a list of build project names, with each build project name representing a single build project.</p>

__Required Parameters__



-}
listProjects :
    (ListProjectsOptions -> ListProjectsOptions)
    -> AWS.Http.UnsignedRequest ListProjectsOutput
listProjects setOptions =
  let
    options = setOptions (ListProjectsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListProjects"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listProjectsOutputDecoder


{-| Options for a listProjects request
-}
type alias ListProjectsOptions =
    { sortBy : Maybe ProjectSortByType
    , sortOrder : Maybe SortOrderType
    , nextToken : Maybe String
    }



{-| <p>Starts running a build.</p>

__Required Parameters__

* `projectName` __:__ `String`


-}
startBuild :
    String
    -> (StartBuildOptions -> StartBuildOptions)
    -> AWS.Http.UnsignedRequest StartBuildOutput
startBuild projectName setOptions =
  let
    options = setOptions (StartBuildOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "StartBuild"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        startBuildOutputDecoder


{-| Options for a startBuild request
-}
type alias StartBuildOptions =
    { sourceVersion : Maybe String
    , artifactsOverride : Maybe ProjectArtifacts
    , environmentVariablesOverride : Maybe (List EnvironmentVariable)
    , buildspecOverride : Maybe String
    , timeoutInMinutesOverride : Maybe Int
    }



{-| <p>Attempts to stop running a build.</p>

__Required Parameters__

* `id` __:__ `String`


-}
stopBuild :
    String
    -> AWS.Http.UnsignedRequest StopBuildOutput
stopBuild id =
    AWS.Http.unsignedRequest
        "StopBuild"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        stopBuildOutputDecoder



{-| <p>Changes the settings of a build project.</p>

__Required Parameters__

* `name` __:__ `String`


-}
updateProject :
    String
    -> (UpdateProjectOptions -> UpdateProjectOptions)
    -> AWS.Http.UnsignedRequest UpdateProjectOutput
updateProject name setOptions =
  let
    options = setOptions (UpdateProjectOptions Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateProject"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        updateProjectOutputDecoder


{-| Options for a updateProject request
-}
type alias UpdateProjectOptions =
    { description : Maybe String
    , source : Maybe ProjectSource
    , artifacts : Maybe ProjectArtifacts
    , environment : Maybe ProjectEnvironment
    , serviceRole : Maybe String
    , timeoutInMinutes : Maybe Int
    , encryptionKey : Maybe String
    , tags : Maybe (List Tag)
    }




{-| <p>An AWS service limit was exceeded for the calling AWS account.</p>
-}
type alias AccountLimitExceededException =
    { 
    }



accountLimitExceededExceptionDecoder : JD.Decoder AccountLimitExceededException
accountLimitExceededExceptionDecoder =
    JDP.decode AccountLimitExceededException



{-| One of

* `ArtifactNamespace_NONE`
* `ArtifactNamespace_BUILD_ID`

-}
type ArtifactNamespace
    = ArtifactNamespace_NONE
    | ArtifactNamespace_BUILD_ID



artifactNamespaceDecoder : JD.Decoder ArtifactNamespace
artifactNamespaceDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed ArtifactNamespace_NONE

                    "BUILD_ID" ->
                        JD.succeed ArtifactNamespace_BUILD_ID


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ArtifactPackaging_NONE`
* `ArtifactPackaging_ZIP`

-}
type ArtifactPackaging
    = ArtifactPackaging_NONE
    | ArtifactPackaging_ZIP



artifactPackagingDecoder : JD.Decoder ArtifactPackaging
artifactPackagingDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NONE" ->
                        JD.succeed ArtifactPackaging_NONE

                    "ZIP" ->
                        JD.succeed ArtifactPackaging_ZIP


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ArtifactsType_CODEPIPELINE`
* `ArtifactsType_S3`
* `ArtifactsType_NO_ARTIFACTS`

-}
type ArtifactsType
    = ArtifactsType_CODEPIPELINE
    | ArtifactsType_S3
    | ArtifactsType_NO_ARTIFACTS



artifactsTypeDecoder : JD.Decoder ArtifactsType
artifactsTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CODEPIPELINE" ->
                        JD.succeed ArtifactsType_CODEPIPELINE

                    "S3" ->
                        JD.succeed ArtifactsType_S3

                    "NO_ARTIFACTS" ->
                        JD.succeed ArtifactsType_NO_ARTIFACTS


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from batchGetBuil
-}
type alias BatchGetBuildsOutput =
    { builds : Maybe (List Build)
    , buildsNotFound : Maybe (List String)
    }



batchGetBuildsOutputDecoder : JD.Decoder BatchGetBuildsOutput
batchGetBuildsOutputDecoder =
    JDP.decode BatchGetBuildsOutput
        |> JDP.optional "builds" (JD.nullable (JD.list buildDecoder)) Nothing
        |> JDP.optional "buildsNotFound" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from batchGetProjec
-}
type alias BatchGetProjectsOutput =
    { projects : Maybe (List Project)
    , projectsNotFound : Maybe (List String)
    }



batchGetProjectsOutputDecoder : JD.Decoder BatchGetProjectsOutput
batchGetProjectsOutputDecoder =
    JDP.decode BatchGetProjectsOutput
        |> JDP.optional "projects" (JD.nullable (JD.list projectDecoder)) Nothing
        |> JDP.optional "projectsNotFound" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Information about a build.</p>
-}
type alias Build =
    { id : Maybe String
    , arn : Maybe String
    , startTime : Maybe Date
    , endTime : Maybe Date
    , currentPhase : Maybe String
    , buildStatus : Maybe StatusType
    , sourceVersion : Maybe String
    , projectName : Maybe String
    , phases : Maybe (List BuildPhase)
    , source : Maybe ProjectSource
    , artifacts : Maybe BuildArtifacts
    , environment : Maybe ProjectEnvironment
    , logs : Maybe LogsLocation
    , timeoutInMinutes : Maybe Int
    , buildComplete : Maybe Bool
    , initiator : Maybe String
    }



buildDecoder : JD.Decoder Build
buildDecoder =
    JDP.decode Build
        |> JDP.optional "id" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "currentPhase" (JD.nullable JD.string) Nothing
        |> JDP.optional "buildStatus" (JD.nullable statusTypeDecoder) Nothing
        |> JDP.optional "sourceVersion" (JD.nullable JD.string) Nothing
        |> JDP.optional "projectName" (JD.nullable JD.string) Nothing
        |> JDP.optional "phases" (JD.nullable (JD.list buildPhaseDecoder)) Nothing
        |> JDP.optional "source" (JD.nullable projectSourceDecoder) Nothing
        |> JDP.optional "artifacts" (JD.nullable buildArtifactsDecoder) Nothing
        |> JDP.optional "environment" (JD.nullable projectEnvironmentDecoder) Nothing
        |> JDP.optional "logs" (JD.nullable logsLocationDecoder) Nothing
        |> JDP.optional "timeoutInMinutes" (JD.nullable JD.int) Nothing
        |> JDP.optional "buildComplete" (JD.nullable JD.bool) Nothing
        |> JDP.optional "initiator" (JD.nullable JD.string) Nothing




{-| <p>Information about build output artifacts.</p>
-}
type alias BuildArtifacts =
    { location : Maybe String
    , sha256sum : Maybe String
    , md5sum : Maybe String
    }



buildArtifactsDecoder : JD.Decoder BuildArtifacts
buildArtifactsDecoder =
    JDP.decode BuildArtifacts
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "sha256sum" (JD.nullable JD.string) Nothing
        |> JDP.optional "md5sum" (JD.nullable JD.string) Nothing




{-| <p>Information about a stage for a build.</p>
-}
type alias BuildPhase =
    { phaseType : Maybe BuildPhaseType
    , phaseStatus : Maybe StatusType
    , startTime : Maybe Date
    , endTime : Maybe Date
    , durationInSeconds : Maybe Int
    , contexts : Maybe (List PhaseContext)
    }



buildPhaseDecoder : JD.Decoder BuildPhase
buildPhaseDecoder =
    JDP.decode BuildPhase
        |> JDP.optional "phaseType" (JD.nullable buildPhaseTypeDecoder) Nothing
        |> JDP.optional "phaseStatus" (JD.nullable statusTypeDecoder) Nothing
        |> JDP.optional "startTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "endTime" (JD.nullable JDX.date) Nothing
        |> JDP.optional "durationInSeconds" (JD.nullable JD.int) Nothing
        |> JDP.optional "contexts" (JD.nullable (JD.list phaseContextDecoder)) Nothing




{-| One of

* `BuildPhaseType_SUBMITTED`
* `BuildPhaseType_PROVISIONING`
* `BuildPhaseType_DOWNLOAD_SOURCE`
* `BuildPhaseType_INSTALL`
* `BuildPhaseType_PRE_BUILD`
* `BuildPhaseType_BUILD`
* `BuildPhaseType_POST_BUILD`
* `BuildPhaseType_UPLOAD_ARTIFACTS`
* `BuildPhaseType_FINALIZING`
* `BuildPhaseType_COMPLETED`

-}
type BuildPhaseType
    = BuildPhaseType_SUBMITTED
    | BuildPhaseType_PROVISIONING
    | BuildPhaseType_DOWNLOAD_SOURCE
    | BuildPhaseType_INSTALL
    | BuildPhaseType_PRE_BUILD
    | BuildPhaseType_BUILD
    | BuildPhaseType_POST_BUILD
    | BuildPhaseType_UPLOAD_ARTIFACTS
    | BuildPhaseType_FINALIZING
    | BuildPhaseType_COMPLETED



buildPhaseTypeDecoder : JD.Decoder BuildPhaseType
buildPhaseTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUBMITTED" ->
                        JD.succeed BuildPhaseType_SUBMITTED

                    "PROVISIONING" ->
                        JD.succeed BuildPhaseType_PROVISIONING

                    "DOWNLOAD_SOURCE" ->
                        JD.succeed BuildPhaseType_DOWNLOAD_SOURCE

                    "INSTALL" ->
                        JD.succeed BuildPhaseType_INSTALL

                    "PRE_BUILD" ->
                        JD.succeed BuildPhaseType_PRE_BUILD

                    "BUILD" ->
                        JD.succeed BuildPhaseType_BUILD

                    "POST_BUILD" ->
                        JD.succeed BuildPhaseType_POST_BUILD

                    "UPLOAD_ARTIFACTS" ->
                        JD.succeed BuildPhaseType_UPLOAD_ARTIFACTS

                    "FINALIZING" ->
                        JD.succeed BuildPhaseType_FINALIZING

                    "COMPLETED" ->
                        JD.succeed BuildPhaseType_COMPLETED


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `ComputeType_BUILD_GENERAL1_SMALL`
* `ComputeType_BUILD_GENERAL1_MEDIUM`
* `ComputeType_BUILD_GENERAL1_LARGE`

-}
type ComputeType
    = ComputeType_BUILD_GENERAL1_SMALL
    | ComputeType_BUILD_GENERAL1_MEDIUM
    | ComputeType_BUILD_GENERAL1_LARGE



computeTypeDecoder : JD.Decoder ComputeType
computeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BUILD_GENERAL1_SMALL" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_SMALL

                    "BUILD_GENERAL1_MEDIUM" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_MEDIUM

                    "BUILD_GENERAL1_LARGE" ->
                        JD.succeed ComputeType_BUILD_GENERAL1_LARGE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createProje
-}
type alias CreateProjectOutput =
    { project : Maybe Project
    }



createProjectOutputDecoder : JD.Decoder CreateProjectOutput
createProjectOutputDecoder =
    JDP.decode CreateProjectOutput
        |> JDP.optional "project" (JD.nullable projectDecoder) Nothing




{-| Type of HTTP response from deleteProje
-}
type alias DeleteProjectOutput =
    { 
    }



deleteProjectOutputDecoder : JD.Decoder DeleteProjectOutput
deleteProjectOutputDecoder =
    JDP.decode DeleteProjectOutput



{-| <p>Information about a Docker image that is managed by AWS CodeBuild.</p>
-}
type alias EnvironmentImage =
    { name : Maybe String
    , description : Maybe String
    }



environmentImageDecoder : JD.Decoder EnvironmentImage
environmentImageDecoder =
    JDP.decode EnvironmentImage
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing




{-| <p>A set of Docker images that are related by programming language and are managed by AWS CodeBuild.</p>
-}
type alias EnvironmentLanguage =
    { language : Maybe LanguageType
    , images : Maybe (List EnvironmentImage)
    }



environmentLanguageDecoder : JD.Decoder EnvironmentLanguage
environmentLanguageDecoder =
    JDP.decode EnvironmentLanguage
        |> JDP.optional "language" (JD.nullable languageTypeDecoder) Nothing
        |> JDP.optional "images" (JD.nullable (JD.list environmentImageDecoder)) Nothing




{-| <p>A set of Docker images that are related by platform and are managed by AWS CodeBuild.</p>
-}
type alias EnvironmentPlatform =
    { platform : Maybe PlatformType
    , languages : Maybe (List EnvironmentLanguage)
    }



environmentPlatformDecoder : JD.Decoder EnvironmentPlatform
environmentPlatformDecoder =
    JDP.decode EnvironmentPlatform
        |> JDP.optional "platform" (JD.nullable platformTypeDecoder) Nothing
        |> JDP.optional "languages" (JD.nullable (JD.list environmentLanguageDecoder)) Nothing




{-| One of

* `EnvironmentType_LINUX_CONTAINER`

-}
type EnvironmentType
    = EnvironmentType_LINUX_CONTAINER



environmentTypeDecoder : JD.Decoder EnvironmentType
environmentTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "LINUX_CONTAINER" ->
                        JD.succeed EnvironmentType_LINUX_CONTAINER


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about an environment variable for a build project or a build.</p>
-}
type alias EnvironmentVariable =
    { name : String
    , value : String
    }



environmentVariableDecoder : JD.Decoder EnvironmentVariable
environmentVariableDecoder =
    JDP.decode EnvironmentVariable
        |> JDP.required "name" JD.string
        |> JDP.required "value" JD.string




{-| <p>The input value that was provided is not valid.</p>
-}
type alias InvalidInputException =
    { 
    }



invalidInputExceptionDecoder : JD.Decoder InvalidInputException
invalidInputExceptionDecoder =
    JDP.decode InvalidInputException



{-| One of

* `LanguageType_JAVA`
* `LanguageType_PYTHON`
* `LanguageType_NODE_JS`
* `LanguageType_RUBY`
* `LanguageType_GOLANG`
* `LanguageType_DOCKER`
* `LanguageType_ANDROID`
* `LanguageType_BASE`

-}
type LanguageType
    = LanguageType_JAVA
    | LanguageType_PYTHON
    | LanguageType_NODE_JS
    | LanguageType_RUBY
    | LanguageType_GOLANG
    | LanguageType_DOCKER
    | LanguageType_ANDROID
    | LanguageType_BASE



languageTypeDecoder : JD.Decoder LanguageType
languageTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "JAVA" ->
                        JD.succeed LanguageType_JAVA

                    "PYTHON" ->
                        JD.succeed LanguageType_PYTHON

                    "NODE_JS" ->
                        JD.succeed LanguageType_NODE_JS

                    "RUBY" ->
                        JD.succeed LanguageType_RUBY

                    "GOLANG" ->
                        JD.succeed LanguageType_GOLANG

                    "DOCKER" ->
                        JD.succeed LanguageType_DOCKER

                    "ANDROID" ->
                        JD.succeed LanguageType_ANDROID

                    "BASE" ->
                        JD.succeed LanguageType_BASE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from listBuildsForProje
-}
type alias ListBuildsForProjectOutput =
    { ids : Maybe (List String)
    , nextToken : Maybe String
    }



listBuildsForProjectOutputDecoder : JD.Decoder ListBuildsForProjectOutput
listBuildsForProjectOutputDecoder =
    JDP.decode ListBuildsForProjectOutput
        |> JDP.optional "ids" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listBuil
-}
type alias ListBuildsOutput =
    { ids : Maybe (List String)
    , nextToken : Maybe String
    }



listBuildsOutputDecoder : JD.Decoder ListBuildsOutput
listBuildsOutputDecoder =
    JDP.decode ListBuildsOutput
        |> JDP.optional "ids" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listCuratedEnvironmentImag
-}
type alias ListCuratedEnvironmentImagesOutput =
    { platforms : Maybe (List EnvironmentPlatform)
    }



listCuratedEnvironmentImagesOutputDecoder : JD.Decoder ListCuratedEnvironmentImagesOutput
listCuratedEnvironmentImagesOutputDecoder =
    JDP.decode ListCuratedEnvironmentImagesOutput
        |> JDP.optional "platforms" (JD.nullable (JD.list environmentPlatformDecoder)) Nothing




{-| Type of HTTP response from listProjec
-}
type alias ListProjectsOutput =
    { nextToken : Maybe String
    , projects : Maybe (List String)
    }



listProjectsOutputDecoder : JD.Decoder ListProjectsOutput
listProjectsOutputDecoder =
    JDP.decode ListProjectsOutput
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "projects" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>Information about build logs in Amazon CloudWatch Logs.</p>
-}
type alias LogsLocation =
    { groupName : Maybe String
    , streamName : Maybe String
    , deepLink : Maybe String
    }



logsLocationDecoder : JD.Decoder LogsLocation
logsLocationDecoder =
    JDP.decode LogsLocation
        |> JDP.optional "groupName" (JD.nullable JD.string) Nothing
        |> JDP.optional "streamName" (JD.nullable JD.string) Nothing
        |> JDP.optional "deepLink" (JD.nullable JD.string) Nothing




{-| <p>Additional information about a build phase that has an error. You can use this information to help troubleshoot a failed build.</p>
-}
type alias PhaseContext =
    { statusCode : Maybe String
    , message : Maybe String
    }



phaseContextDecoder : JD.Decoder PhaseContext
phaseContextDecoder =
    JDP.decode PhaseContext
        |> JDP.optional "statusCode" (JD.nullable JD.string) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `PlatformType_DEBIAN`
* `PlatformType_AMAZON_LINUX`
* `PlatformType_UBUNTU`

-}
type PlatformType
    = PlatformType_DEBIAN
    | PlatformType_AMAZON_LINUX
    | PlatformType_UBUNTU



platformTypeDecoder : JD.Decoder PlatformType
platformTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEBIAN" ->
                        JD.succeed PlatformType_DEBIAN

                    "AMAZON_LINUX" ->
                        JD.succeed PlatformType_AMAZON_LINUX

                    "UBUNTU" ->
                        JD.succeed PlatformType_UBUNTU


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a build project.</p>
-}
type alias Project =
    { name : Maybe String
    , arn : Maybe String
    , description : Maybe String
    , source : Maybe ProjectSource
    , artifacts : Maybe ProjectArtifacts
    , environment : Maybe ProjectEnvironment
    , serviceRole : Maybe String
    , timeoutInMinutes : Maybe Int
    , encryptionKey : Maybe String
    , tags : Maybe (List Tag)
    , created : Maybe Date
    , lastModified : Maybe Date
    }



projectDecoder : JD.Decoder Project
projectDecoder =
    JDP.decode Project
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "source" (JD.nullable projectSourceDecoder) Nothing
        |> JDP.optional "artifacts" (JD.nullable projectArtifactsDecoder) Nothing
        |> JDP.optional "environment" (JD.nullable projectEnvironmentDecoder) Nothing
        |> JDP.optional "serviceRole" (JD.nullable JD.string) Nothing
        |> JDP.optional "timeoutInMinutes" (JD.nullable JD.int) Nothing
        |> JDP.optional "encryptionKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "created" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModified" (JD.nullable JDX.date) Nothing




{-| <p>Information about the build output artifacts for the build project.</p>
-}
type alias ProjectArtifacts =
    { type_ : ArtifactsType
    , location : Maybe String
    , path : Maybe String
    , namespaceType : Maybe ArtifactNamespace
    , name : Maybe String
    , packaging : Maybe ArtifactPackaging
    }



projectArtifactsDecoder : JD.Decoder ProjectArtifacts
projectArtifactsDecoder =
    JDP.decode ProjectArtifacts
        |> JDP.required "type_" artifactsTypeDecoder
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "namespaceType" (JD.nullable artifactNamespaceDecoder) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "packaging" (JD.nullable artifactPackagingDecoder) Nothing




{-| <p>Information about the build environment of the build project.</p>
-}
type alias ProjectEnvironment =
    { type_ : EnvironmentType
    , image : String
    , computeType : ComputeType
    , environmentVariables : Maybe (List EnvironmentVariable)
    }



projectEnvironmentDecoder : JD.Decoder ProjectEnvironment
projectEnvironmentDecoder =
    JDP.decode ProjectEnvironment
        |> JDP.required "type_" environmentTypeDecoder
        |> JDP.required "image" JD.string
        |> JDP.required "computeType" computeTypeDecoder
        |> JDP.optional "environmentVariables" (JD.nullable (JD.list environmentVariableDecoder)) Nothing




{-| One of

* `ProjectSortByType_NAME`
* `ProjectSortByType_CREATED_TIME`
* `ProjectSortByType_LAST_MODIFIED_TIME`

-}
type ProjectSortByType
    = ProjectSortByType_NAME
    | ProjectSortByType_CREATED_TIME
    | ProjectSortByType_LAST_MODIFIED_TIME



projectSortByTypeDecoder : JD.Decoder ProjectSortByType
projectSortByTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NAME" ->
                        JD.succeed ProjectSortByType_NAME

                    "CREATED_TIME" ->
                        JD.succeed ProjectSortByType_CREATED_TIME

                    "LAST_MODIFIED_TIME" ->
                        JD.succeed ProjectSortByType_LAST_MODIFIED_TIME


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the build input source code for the build project.</p>
-}
type alias ProjectSource =
    { type_ : SourceType
    , location : Maybe String
    , buildspec : Maybe String
    , auth : Maybe SourceAuth
    }



projectSourceDecoder : JD.Decoder ProjectSource
projectSourceDecoder =
    JDP.decode ProjectSource
        |> JDP.required "type_" sourceTypeDecoder
        |> JDP.optional "location" (JD.nullable JD.string) Nothing
        |> JDP.optional "buildspec" (JD.nullable JD.string) Nothing
        |> JDP.optional "auth" (JD.nullable sourceAuthDecoder) Nothing




{-| <p>The specified AWS resource cannot be created, because an AWS resource with the same settings already exists.</p>
-}
type alias ResourceAlreadyExistsException =
    { 
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException



{-| <p>The specified AWS resource cannot be found.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| One of

* `SortOrderType_ASCENDING`
* `SortOrderType_DESCENDING`

-}
type SortOrderType
    = SortOrderType_ASCENDING
    | SortOrderType_DESCENDING



sortOrderTypeDecoder : JD.Decoder SortOrderType
sortOrderTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ASCENDING" ->
                        JD.succeed SortOrderType_ASCENDING

                    "DESCENDING" ->
                        JD.succeed SortOrderType_DESCENDING


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about the authorization settings for AWS CodeBuild to access the source code to be built.</p> <p>This information is for the AWS CodeBuild console's use only. Your code should not get or set this information directly (unless the build project's source <code>type</code> value is <code>GITHUB</code>).</p>
-}
type alias SourceAuth =
    { type_ : SourceAuthType
    , resource : Maybe String
    }



sourceAuthDecoder : JD.Decoder SourceAuth
sourceAuthDecoder =
    JDP.decode SourceAuth
        |> JDP.required "type_" sourceAuthTypeDecoder
        |> JDP.optional "resource" (JD.nullable JD.string) Nothing




{-| One of

* `SourceAuthType_OAUTH`

-}
type SourceAuthType
    = SourceAuthType_OAUTH



sourceAuthTypeDecoder : JD.Decoder SourceAuthType
sourceAuthTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "OAUTH" ->
                        JD.succeed SourceAuthType_OAUTH


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `SourceType_CODECOMMIT`
* `SourceType_CODEPIPELINE`
* `SourceType_GITHUB`
* `SourceType_S3`

-}
type SourceType
    = SourceType_CODECOMMIT
    | SourceType_CODEPIPELINE
    | SourceType_GITHUB
    | SourceType_S3



sourceTypeDecoder : JD.Decoder SourceType
sourceTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CODECOMMIT" ->
                        JD.succeed SourceType_CODECOMMIT

                    "CODEPIPELINE" ->
                        JD.succeed SourceType_CODEPIPELINE

                    "GITHUB" ->
                        JD.succeed SourceType_GITHUB

                    "S3" ->
                        JD.succeed SourceType_S3


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from startBui
-}
type alias StartBuildOutput =
    { build : Maybe Build
    }



startBuildOutputDecoder : JD.Decoder StartBuildOutput
startBuildOutputDecoder =
    JDP.decode StartBuildOutput
        |> JDP.optional "build" (JD.nullable buildDecoder) Nothing




{-| One of

* `StatusType_SUCCEEDED`
* `StatusType_FAILED`
* `StatusType_FAULT`
* `StatusType_TIMED_OUT`
* `StatusType_IN_PROGRESS`
* `StatusType_STOPPED`

-}
type StatusType
    = StatusType_SUCCEEDED
    | StatusType_FAILED
    | StatusType_FAULT
    | StatusType_TIMED_OUT
    | StatusType_IN_PROGRESS
    | StatusType_STOPPED



statusTypeDecoder : JD.Decoder StatusType
statusTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SUCCEEDED" ->
                        JD.succeed StatusType_SUCCEEDED

                    "FAILED" ->
                        JD.succeed StatusType_FAILED

                    "FAULT" ->
                        JD.succeed StatusType_FAULT

                    "TIMED_OUT" ->
                        JD.succeed StatusType_TIMED_OUT

                    "IN_PROGRESS" ->
                        JD.succeed StatusType_IN_PROGRESS

                    "STOPPED" ->
                        JD.succeed StatusType_STOPPED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from stopBui
-}
type alias StopBuildOutput =
    { build : Maybe Build
    }



stopBuildOutputDecoder : JD.Decoder StopBuildOutput
stopBuildOutputDecoder =
    JDP.decode StopBuildOutput
        |> JDP.optional "build" (JD.nullable buildDecoder) Nothing




{-| <p>A tag, consisting of a key and a value.</p> <p>This tag is available for use by AWS services that support tags in AWS CodeBuild.</p>
-}
type alias Tag =
    { key : Maybe String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.optional "key" (JD.nullable JD.string) Nothing
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateProje
-}
type alias UpdateProjectOutput =
    { project : Maybe Project
    }



updateProjectOutputDecoder : JD.Decoder UpdateProjectOutput
updateProjectOutputDecoder =
    JDP.decode UpdateProjectOutput
        |> JDP.optional "project" (JD.nullable projectDecoder) Nothing




