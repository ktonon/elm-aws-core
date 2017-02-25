module AWS.Services.CodeCommit
    exposing
        ( config
        , batchGetRepositories
        , createBranch
        , createRepository
        , CreateRepositoryOptions
        , deleteRepository
        , getBlob
        , getBranch
        , GetBranchOptions
        , getCommit
        , getDifferences
        , GetDifferencesOptions
        , getRepository
        , getRepositoryTriggers
        , listBranches
        , ListBranchesOptions
        , listRepositories
        , ListRepositoriesOptions
        , putRepositoryTriggers
        , testRepositoryTriggers
        , updateDefaultBranch
        , updateRepositoryDescription
        , UpdateRepositoryDescriptionOptions
        , updateRepositoryName
        , BatchGetRepositoriesOutput
        , BlobIdDoesNotExistException
        , BlobIdRequiredException
        , BlobMetadata
        , BranchDoesNotExistException
        , BranchInfo
        , BranchNameExistsException
        , BranchNameRequiredException
        , ChangeTypeEnum(..)
        , Commit
        , CommitDoesNotExistException
        , CommitIdDoesNotExistException
        , CommitIdRequiredException
        , CommitRequiredException
        , CreateRepositoryOutput
        , DeleteRepositoryOutput
        , Difference
        , EncryptionIntegrityChecksFailedException
        , EncryptionKeyAccessDeniedException
        , EncryptionKeyDisabledException
        , EncryptionKeyNotFoundException
        , EncryptionKeyUnavailableException
        , FileTooLargeException
        , GetBlobOutput
        , GetBranchOutput
        , GetCommitOutput
        , GetDifferencesOutput
        , GetRepositoryOutput
        , GetRepositoryTriggersOutput
        , InvalidBlobIdException
        , InvalidBranchNameException
        , InvalidCommitException
        , InvalidCommitIdException
        , InvalidContinuationTokenException
        , InvalidMaxResultsException
        , InvalidOrderException
        , InvalidPathException
        , InvalidRepositoryDescriptionException
        , InvalidRepositoryNameException
        , InvalidRepositoryTriggerBranchNameException
        , InvalidRepositoryTriggerCustomDataException
        , InvalidRepositoryTriggerDestinationArnException
        , InvalidRepositoryTriggerEventsException
        , InvalidRepositoryTriggerNameException
        , InvalidRepositoryTriggerRegionException
        , InvalidSortByException
        , ListBranchesOutput
        , ListRepositoriesOutput
        , MaximumBranchesExceededException
        , MaximumRepositoryNamesExceededException
        , MaximumRepositoryTriggersExceededException
        , OrderEnum(..)
        , PathDoesNotExistException
        , PutRepositoryTriggersOutput
        , RepositoryDoesNotExistException
        , RepositoryLimitExceededException
        , RepositoryMetadata
        , RepositoryNameExistsException
        , RepositoryNameIdPair
        , RepositoryNameRequiredException
        , RepositoryNamesRequiredException
        , RepositoryTrigger
        , RepositoryTriggerBranchNameListRequiredException
        , RepositoryTriggerDestinationArnRequiredException
        , RepositoryTriggerEventEnum(..)
        , RepositoryTriggerEventsListRequiredException
        , RepositoryTriggerExecutionFailure
        , RepositoryTriggerNameRequiredException
        , RepositoryTriggersListRequiredException
        , SortByEnum(..)
        , TestRepositoryTriggersOutput
        , UserInfo
        )

{-| <fullname>AWS CodeCommit</fullname> <p>This is the <i>AWS CodeCommit API Reference</i>. This reference provides descriptions of the operations and data types for AWS CodeCommit API along with usage examples.</p> <p>You can use the AWS CodeCommit API to work with the following objects:</p> <p>Repositories, by calling the following:</p> <ul> <li> <p> <a>BatchGetRepositories</a>, which returns information about one or more repositories associated with your AWS account</p> </li> <li> <p> <a>CreateRepository</a>, which creates an AWS CodeCommit repository</p> </li> <li> <p> <a>DeleteRepository</a>, which deletes an AWS CodeCommit repository</p> </li> <li> <p> <a>GetRepository</a>, which returns information about a specified repository</p> </li> <li> <p> <a>ListRepositories</a>, which lists all AWS CodeCommit repositories associated with your AWS account</p> </li> <li> <p> <a>UpdateRepositoryDescription</a>, which sets or updates the description of the repository</p> </li> <li> <p> <a>UpdateRepositoryName</a>, which changes the name of the repository. If you change the name of a repository, no other users of that repository will be able to access it until you send them the new HTTPS or SSH URL to use.</p> </li> </ul> <p>Branches, by calling the following:</p> <ul> <li> <p> <a>CreateBranch</a>, which creates a new branch in a specified repository</p> </li> <li> <p> <a>GetBranch</a>, which returns information about a specified branch</p> </li> <li> <p> <a>ListBranches</a>, which lists all branches for a specified repository</p> </li> <li> <p> <a>UpdateDefaultBranch</a>, which changes the default branch for a repository</p> </li> </ul> <p>Information about committed code in a repository, by calling the following:</p> <ul> <li> <p> <a>GetBlob</a>, which returns the base-64 encoded content of an individual Git blob object within a repository</p> </li> <li> <p> <a>GetCommit</a>, which returns information about a commit, including commit messages and author and committer information</p> </li> <li> <p> <a>GetDifferences</a>, which returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference)</p> </li> </ul> <p>Triggers, by calling the following:</p> <ul> <li> <p> <a>GetRepositoryTriggers</a>, which returns information about triggers configured for a repository</p> </li> <li> <p> <a>PutRepositoryTriggers</a>, which replaces all triggers for a repository and can be used to create or delete triggers</p> </li> <li> <p> <a>TestRepositoryTriggers</a>, which tests the functionality of a repository trigger by sending data to the trigger target</p> </li> </ul> <p>For information about how to use AWS CodeCommit, see the <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">AWS CodeCommit User Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [batchGetRepositories](#batchGetRepositories)
* [createBranch](#createBranch)
* [createRepository](#createRepository)
* [CreateRepositoryOptions](#CreateRepositoryOptions)
* [deleteRepository](#deleteRepository)
* [getBlob](#getBlob)
* [getBranch](#getBranch)
* [GetBranchOptions](#GetBranchOptions)
* [getCommit](#getCommit)
* [getDifferences](#getDifferences)
* [GetDifferencesOptions](#GetDifferencesOptions)
* [getRepository](#getRepository)
* [getRepositoryTriggers](#getRepositoryTriggers)
* [listBranches](#listBranches)
* [ListBranchesOptions](#ListBranchesOptions)
* [listRepositories](#listRepositories)
* [ListRepositoriesOptions](#ListRepositoriesOptions)
* [putRepositoryTriggers](#putRepositoryTriggers)
* [testRepositoryTriggers](#testRepositoryTriggers)
* [updateDefaultBranch](#updateDefaultBranch)
* [updateRepositoryDescription](#updateRepositoryDescription)
* [UpdateRepositoryDescriptionOptions](#UpdateRepositoryDescriptionOptions)
* [updateRepositoryName](#updateRepositoryName)


@docs batchGetRepositories,createBranch,createRepository,CreateRepositoryOptions,deleteRepository,getBlob,getBranch,GetBranchOptions,getCommit,getDifferences,GetDifferencesOptions,getRepository,getRepositoryTriggers,listBranches,ListBranchesOptions,listRepositories,ListRepositoriesOptions,putRepositoryTriggers,testRepositoryTriggers,updateDefaultBranch,updateRepositoryDescription,UpdateRepositoryDescriptionOptions,updateRepositoryName

## Responses

* [BatchGetRepositoriesOutput](#BatchGetRepositoriesOutput)
* [CreateRepositoryOutput](#CreateRepositoryOutput)
* [DeleteRepositoryOutput](#DeleteRepositoryOutput)
* [GetBlobOutput](#GetBlobOutput)
* [GetBranchOutput](#GetBranchOutput)
* [GetCommitOutput](#GetCommitOutput)
* [GetDifferencesOutput](#GetDifferencesOutput)
* [GetRepositoryOutput](#GetRepositoryOutput)
* [GetRepositoryTriggersOutput](#GetRepositoryTriggersOutput)
* [ListBranchesOutput](#ListBranchesOutput)
* [ListRepositoriesOutput](#ListRepositoriesOutput)
* [PutRepositoryTriggersOutput](#PutRepositoryTriggersOutput)
* [TestRepositoryTriggersOutput](#TestRepositoryTriggersOutput)


@docs BatchGetRepositoriesOutput,CreateRepositoryOutput,DeleteRepositoryOutput,GetBlobOutput,GetBranchOutput,GetCommitOutput,GetDifferencesOutput,GetRepositoryOutput,GetRepositoryTriggersOutput,ListBranchesOutput,ListRepositoriesOutput,PutRepositoryTriggersOutput,TestRepositoryTriggersOutput

## Records

* [BlobMetadata](#BlobMetadata)
* [BranchInfo](#BranchInfo)
* [Commit](#Commit)
* [Difference](#Difference)
* [RepositoryMetadata](#RepositoryMetadata)
* [RepositoryNameIdPair](#RepositoryNameIdPair)
* [RepositoryTrigger](#RepositoryTrigger)
* [RepositoryTriggerExecutionFailure](#RepositoryTriggerExecutionFailure)
* [UserInfo](#UserInfo)


@docs BlobMetadata,BranchInfo,Commit,Difference,RepositoryMetadata,RepositoryNameIdPair,RepositoryTrigger,RepositoryTriggerExecutionFailure,UserInfo

## Unions

* [ChangeTypeEnum](#ChangeTypeEnum)
* [OrderEnum](#OrderEnum)
* [RepositoryTriggerEventEnum](#RepositoryTriggerEventEnum)
* [SortByEnum](#SortByEnum)


@docs ChangeTypeEnum,OrderEnum,RepositoryTriggerEventEnum,SortByEnum

## Exceptions

* [BlobIdDoesNotExistException](#BlobIdDoesNotExistException)
* [BlobIdRequiredException](#BlobIdRequiredException)
* [BranchDoesNotExistException](#BranchDoesNotExistException)
* [BranchNameExistsException](#BranchNameExistsException)
* [BranchNameRequiredException](#BranchNameRequiredException)
* [CommitDoesNotExistException](#CommitDoesNotExistException)
* [CommitIdDoesNotExistException](#CommitIdDoesNotExistException)
* [CommitIdRequiredException](#CommitIdRequiredException)
* [CommitRequiredException](#CommitRequiredException)
* [EncryptionIntegrityChecksFailedException](#EncryptionIntegrityChecksFailedException)
* [EncryptionKeyAccessDeniedException](#EncryptionKeyAccessDeniedException)
* [EncryptionKeyDisabledException](#EncryptionKeyDisabledException)
* [EncryptionKeyNotFoundException](#EncryptionKeyNotFoundException)
* [EncryptionKeyUnavailableException](#EncryptionKeyUnavailableException)
* [FileTooLargeException](#FileTooLargeException)
* [InvalidBlobIdException](#InvalidBlobIdException)
* [InvalidBranchNameException](#InvalidBranchNameException)
* [InvalidCommitException](#InvalidCommitException)
* [InvalidCommitIdException](#InvalidCommitIdException)
* [InvalidContinuationTokenException](#InvalidContinuationTokenException)
* [InvalidMaxResultsException](#InvalidMaxResultsException)
* [InvalidOrderException](#InvalidOrderException)
* [InvalidPathException](#InvalidPathException)
* [InvalidRepositoryDescriptionException](#InvalidRepositoryDescriptionException)
* [InvalidRepositoryNameException](#InvalidRepositoryNameException)
* [InvalidRepositoryTriggerBranchNameException](#InvalidRepositoryTriggerBranchNameException)
* [InvalidRepositoryTriggerCustomDataException](#InvalidRepositoryTriggerCustomDataException)
* [InvalidRepositoryTriggerDestinationArnException](#InvalidRepositoryTriggerDestinationArnException)
* [InvalidRepositoryTriggerEventsException](#InvalidRepositoryTriggerEventsException)
* [InvalidRepositoryTriggerNameException](#InvalidRepositoryTriggerNameException)
* [InvalidRepositoryTriggerRegionException](#InvalidRepositoryTriggerRegionException)
* [InvalidSortByException](#InvalidSortByException)
* [MaximumBranchesExceededException](#MaximumBranchesExceededException)
* [MaximumRepositoryNamesExceededException](#MaximumRepositoryNamesExceededException)
* [MaximumRepositoryTriggersExceededException](#MaximumRepositoryTriggersExceededException)
* [PathDoesNotExistException](#PathDoesNotExistException)
* [RepositoryDoesNotExistException](#RepositoryDoesNotExistException)
* [RepositoryLimitExceededException](#RepositoryLimitExceededException)
* [RepositoryNameExistsException](#RepositoryNameExistsException)
* [RepositoryNameRequiredException](#RepositoryNameRequiredException)
* [RepositoryNamesRequiredException](#RepositoryNamesRequiredException)
* [RepositoryTriggerBranchNameListRequiredException](#RepositoryTriggerBranchNameListRequiredException)
* [RepositoryTriggerDestinationArnRequiredException](#RepositoryTriggerDestinationArnRequiredException)
* [RepositoryTriggerEventsListRequiredException](#RepositoryTriggerEventsListRequiredException)
* [RepositoryTriggerNameRequiredException](#RepositoryTriggerNameRequiredException)
* [RepositoryTriggersListRequiredException](#RepositoryTriggersListRequiredException)


@docs BlobIdDoesNotExistException,BlobIdRequiredException,BranchDoesNotExistException,BranchNameExistsException,BranchNameRequiredException,CommitDoesNotExistException,CommitIdDoesNotExistException,CommitIdRequiredException,CommitRequiredException,EncryptionIntegrityChecksFailedException,EncryptionKeyAccessDeniedException,EncryptionKeyDisabledException,EncryptionKeyNotFoundException,EncryptionKeyUnavailableException,FileTooLargeException,InvalidBlobIdException,InvalidBranchNameException,InvalidCommitException,InvalidCommitIdException,InvalidContinuationTokenException,InvalidMaxResultsException,InvalidOrderException,InvalidPathException,InvalidRepositoryDescriptionException,InvalidRepositoryNameException,InvalidRepositoryTriggerBranchNameException,InvalidRepositoryTriggerCustomDataException,InvalidRepositoryTriggerDestinationArnException,InvalidRepositoryTriggerEventsException,InvalidRepositoryTriggerNameException,InvalidRepositoryTriggerRegionException,InvalidSortByException,MaximumBranchesExceededException,MaximumRepositoryNamesExceededException,MaximumRepositoryTriggersExceededException,PathDoesNotExistException,RepositoryDoesNotExistException,RepositoryLimitExceededException,RepositoryNameExistsException,RepositoryNameRequiredException,RepositoryNamesRequiredException,RepositoryTriggerBranchNameListRequiredException,RepositoryTriggerDestinationArnRequiredException,RepositoryTriggerEventsListRequiredException,RepositoryTriggerNameRequiredException,RepositoryTriggersListRequiredException

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
        "codecommit"
        "2015-04-13"
        "1.1"
        "AWSCODECOMMIT_20150413."
        "codecommit.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Returns information about one or more repositories.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>

__Required Parameters__

* `repositoryNames` __:__ `(List String)`


-}
batchGetRepositories :
    (List String)
    -> AWS.Request BatchGetRepositoriesOutput
batchGetRepositories repositoryNames =
    AWS.Http.unsignedRequest
        "BatchGetRepositories"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetRepositoriesOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new branch in a repository and points the branch to a commit.</p> <note> <p>Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `branchName` __:__ `String`
* `commitId` __:__ `String`


-}
createBranch :
    String
    -> String
    -> String
    -> AWS.Request ()
createBranch repositoryName branchName commitId =
    AWS.Http.unsignedRequest
        "CreateBranch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates a new, empty repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
createRepository :
    String
    -> (CreateRepositoryOptions -> CreateRepositoryOptions)
    -> AWS.Request CreateRepositoryOutput
createRepository repositoryName setOptions =
  let
    options = setOptions (CreateRepositoryOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateRepository"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRepositoryOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a createRepository request
-}
type alias CreateRepositoryOptions =
    { repositoryDescription : Maybe String
    }



{-| <p>Deletes a repository. If a specified repository was already deleted, a null repository ID will be returned.</p> <important><p>Deleting a repository also deletes all associated objects and metadata. After a repository is deleted, all future push calls to the deleted repository will fail.</p> </important>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
deleteRepository :
    String
    -> AWS.Request DeleteRepositoryOutput
deleteRepository repositoryName =
    AWS.Http.unsignedRequest
        "DeleteRepository"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRepositoryOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the base-64 encoded content of an individual blob within a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `blobId` __:__ `String`


-}
getBlob :
    String
    -> String
    -> AWS.Request GetBlobOutput
getBlob repositoryName blobId =
    AWS.Http.unsignedRequest
        "GetBlob"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getBlobOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about a repository branch, including its name and the last commit ID.</p>

__Required Parameters__



-}
getBranch :
    (GetBranchOptions -> GetBranchOptions)
    -> AWS.Request GetBranchOutput
getBranch setOptions =
  let
    options = setOptions (GetBranchOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetBranch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getBranchOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getBranch request
-}
type alias GetBranchOptions =
    { repositoryName : Maybe String
    , branchName : Maybe String
    }



{-| <p>Returns information about a commit, including commit message and committer information.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `commitId` __:__ `String`


-}
getCommit :
    String
    -> String
    -> AWS.Request GetCommitOutput
getCommit repositoryName commitId =
    AWS.Http.unsignedRequest
        "GetCommit"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getCommitOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns information about the differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID or other fully qualified reference). Results can be limited to a specified path.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `afterCommitSpecifier` __:__ `String`


-}
getDifferences :
    String
    -> String
    -> (GetDifferencesOptions -> GetDifferencesOptions)
    -> AWS.Request GetDifferencesOutput
getDifferences repositoryName afterCommitSpecifier setOptions =
  let
    options = setOptions (GetDifferencesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDifferences"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDifferencesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a getDifferences request
-}
type alias GetDifferencesOptions =
    { beforeCommitSpecifier : Maybe String
    , beforePath : Maybe String
    , afterPath : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    }



{-| <p>Returns information about a repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
getRepository :
    String
    -> AWS.Request GetRepositoryOutput
getRepository repositoryName =
    AWS.Http.unsignedRequest
        "GetRepository"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRepositoryOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about triggers configured for a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
getRepositoryTriggers :
    String
    -> AWS.Request GetRepositoryTriggersOutput
getRepositoryTriggers repositoryName =
    AWS.Http.unsignedRequest
        "GetRepositoryTriggers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRepositoryTriggersOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about one or more branches in a repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
listBranches :
    String
    -> (ListBranchesOptions -> ListBranchesOptions)
    -> AWS.Request ListBranchesOutput
listBranches repositoryName setOptions =
  let
    options = setOptions (ListBranchesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ListBranches"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listBranchesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listBranches request
-}
type alias ListBranchesOptions =
    { nextToken : Maybe String
    }



{-| <p>Gets information about one or more repositories.</p>

__Required Parameters__



-}
listRepositories :
    (ListRepositoriesOptions -> ListRepositoriesOptions)
    -> AWS.Request ListRepositoriesOutput
listRepositories setOptions =
  let
    options = setOptions (ListRepositoriesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRepositories"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listRepositoriesOutputDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRepositories request
-}
type alias ListRepositoriesOptions =
    { nextToken : Maybe String
    , sortBy : Maybe SortByEnum
    , order : Maybe OrderEnum
    }



{-| <p>Replaces all triggers for a repository. This can be used to create or delete triggers.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `triggers` __:__ `(List RepositoryTrigger)`


-}
putRepositoryTriggers :
    String
    -> (List RepositoryTrigger)
    -> AWS.Request PutRepositoryTriggersOutput
putRepositoryTriggers repositoryName triggers =
    AWS.Http.unsignedRequest
        "PutRepositoryTriggers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putRepositoryTriggersOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Tests the functionality of repository triggers by sending information to the trigger target. If real data is available in the repository, the test will send data from the last commit. If no data is available, sample data will be generated.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `triggers` __:__ `(List RepositoryTrigger)`


-}
testRepositoryTriggers :
    String
    -> (List RepositoryTrigger)
    -> AWS.Request TestRepositoryTriggersOutput
testRepositoryTriggers repositoryName triggers =
    AWS.Http.unsignedRequest
        "TestRepositoryTriggers"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        testRepositoryTriggersOutputDecoder
        |> AWS.UnsignedRequest



{-| <p>Sets or changes the default branch name for the specified repository.</p> <note> <p>If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `defaultBranchName` __:__ `String`


-}
updateDefaultBranch :
    String
    -> String
    -> AWS.Request ()
updateDefaultBranch repositoryName defaultBranchName =
    AWS.Http.unsignedRequest
        "UpdateDefaultBranch"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Sets or changes the comment or description for a repository.</p> <note> <p>The description field for a repository accepts all HTML characters and all valid Unicode characters. Applications that do not HTML-encode the description and display it in a web page could expose users to potentially malicious code. Make sure that you HTML-encode the description field in any application that uses this API to display the repository description on a web page.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
updateRepositoryDescription :
    String
    -> (UpdateRepositoryDescriptionOptions -> UpdateRepositoryDescriptionOptions)
    -> AWS.Request ()
updateRepositoryDescription repositoryName setOptions =
  let
    options = setOptions (UpdateRepositoryDescriptionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateRepositoryDescription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateRepositoryDescription request
-}
type alias UpdateRepositoryDescriptionOptions =
    { repositoryDescription : Maybe String
    }



{-| <p>Renames a repository. The repository name must be unique across the calling AWS account. In addition, repository names are limited to 100 alphanumeric, dash, and underscore characters, and cannot include certain characters. The suffix ".git" is prohibited. For a full description of the limits on repository names, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a> in the AWS CodeCommit User Guide.</p>

__Required Parameters__

* `oldName` __:__ `String`
* `newName` __:__ `String`


-}
updateRepositoryName :
    String
    -> String
    -> AWS.Request ()
updateRepositoryName oldName newName =
    AWS.Http.unsignedRequest
        "UpdateRepositoryName"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest




{-| Type of HTTP response from batchGetRepositori
-}
type alias BatchGetRepositoriesOutput =
    { repositories : Maybe (List RepositoryMetadata)
    , repositoriesNotFound : Maybe (List String)
    }



batchGetRepositoriesOutputDecoder : JD.Decoder BatchGetRepositoriesOutput
batchGetRepositoriesOutputDecoder =
    JDP.decode BatchGetRepositoriesOutput
        |> JDP.optional "repositories" (JD.nullable (JD.list repositoryMetadataDecoder)) Nothing
        |> JDP.optional "repositoriesNotFound" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The specified blob does not exist.</p>
-}
type alias BlobIdDoesNotExistException =
    { 
    }



blobIdDoesNotExistExceptionDecoder : JD.Decoder BlobIdDoesNotExistException
blobIdDoesNotExistExceptionDecoder =
    JDP.decode BlobIdDoesNotExistException



{-| <p>A blob ID is required but was not specified.</p>
-}
type alias BlobIdRequiredException =
    { 
    }



blobIdRequiredExceptionDecoder : JD.Decoder BlobIdRequiredException
blobIdRequiredExceptionDecoder =
    JDP.decode BlobIdRequiredException



{-| <p>Returns information about a specific Git blob object.</p>
-}
type alias BlobMetadata =
    { blobId : Maybe String
    , path : Maybe String
    , mode : Maybe String
    }



blobMetadataDecoder : JD.Decoder BlobMetadata
blobMetadataDecoder =
    JDP.decode BlobMetadata
        |> JDP.optional "blobId" (JD.nullable JD.string) Nothing
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "mode" (JD.nullable JD.string) Nothing




{-| <p>The specified branch does not exist.</p>
-}
type alias BranchDoesNotExistException =
    { 
    }



branchDoesNotExistExceptionDecoder : JD.Decoder BranchDoesNotExistException
branchDoesNotExistExceptionDecoder =
    JDP.decode BranchDoesNotExistException



{-| <p>Returns information about a branch.</p>
-}
type alias BranchInfo =
    { branchName : Maybe String
    , commitId : Maybe String
    }



branchInfoDecoder : JD.Decoder BranchInfo
branchInfoDecoder =
    JDP.decode BranchInfo
        |> JDP.optional "branchName" (JD.nullable JD.string) Nothing
        |> JDP.optional "commitId" (JD.nullable JD.string) Nothing




{-| <p>The specified branch name already exists.</p>
-}
type alias BranchNameExistsException =
    { 
    }



branchNameExistsExceptionDecoder : JD.Decoder BranchNameExistsException
branchNameExistsExceptionDecoder =
    JDP.decode BranchNameExistsException



{-| <p>A branch name is required but was not specified.</p>
-}
type alias BranchNameRequiredException =
    { 
    }



branchNameRequiredExceptionDecoder : JD.Decoder BranchNameRequiredException
branchNameRequiredExceptionDecoder =
    JDP.decode BranchNameRequiredException



{-| One of

* `ChangeTypeEnum_A`
* `ChangeTypeEnum_M`
* `ChangeTypeEnum_D`

-}
type ChangeTypeEnum
    = ChangeTypeEnum_A
    | ChangeTypeEnum_M
    | ChangeTypeEnum_D



changeTypeEnumDecoder : JD.Decoder ChangeTypeEnum
changeTypeEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "A" ->
                        JD.succeed ChangeTypeEnum_A

                    "M" ->
                        JD.succeed ChangeTypeEnum_M

                    "D" ->
                        JD.succeed ChangeTypeEnum_D


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Returns information about a specific commit.</p>
-}
type alias Commit =
    { treeId : Maybe String
    , parents : Maybe (List String)
    , message : Maybe String
    , author : Maybe UserInfo
    , committer : Maybe UserInfo
    , additionalData : Maybe String
    }



commitDecoder : JD.Decoder Commit
commitDecoder =
    JDP.decode Commit
        |> JDP.optional "treeId" (JD.nullable JD.string) Nothing
        |> JDP.optional "parents" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "author" (JD.nullable userInfoDecoder) Nothing
        |> JDP.optional "committer" (JD.nullable userInfoDecoder) Nothing
        |> JDP.optional "additionalData" (JD.nullable JD.string) Nothing




{-| <p>The specified commit does not exist or no commit was specified, and the specified repository has no default branch.</p>
-}
type alias CommitDoesNotExistException =
    { 
    }



commitDoesNotExistExceptionDecoder : JD.Decoder CommitDoesNotExistException
commitDoesNotExistExceptionDecoder =
    JDP.decode CommitDoesNotExistException



{-| <p>The specified commit ID does not exist.</p>
-}
type alias CommitIdDoesNotExistException =
    { 
    }



commitIdDoesNotExistExceptionDecoder : JD.Decoder CommitIdDoesNotExistException
commitIdDoesNotExistExceptionDecoder =
    JDP.decode CommitIdDoesNotExistException



{-| <p>A commit ID was not specified.</p>
-}
type alias CommitIdRequiredException =
    { 
    }



commitIdRequiredExceptionDecoder : JD.Decoder CommitIdRequiredException
commitIdRequiredExceptionDecoder =
    JDP.decode CommitIdRequiredException



{-| <p>A commit was not specified.</p>
-}
type alias CommitRequiredException =
    { 
    }



commitRequiredExceptionDecoder : JD.Decoder CommitRequiredException
commitRequiredExceptionDecoder =
    JDP.decode CommitRequiredException



{-| Type of HTTP response from createReposito
-}
type alias CreateRepositoryOutput =
    { repositoryMetadata : Maybe RepositoryMetadata
    }



createRepositoryOutputDecoder : JD.Decoder CreateRepositoryOutput
createRepositoryOutputDecoder =
    JDP.decode CreateRepositoryOutput
        |> JDP.optional "repositoryMetadata" (JD.nullable repositoryMetadataDecoder) Nothing




{-| Type of HTTP response from deleteReposito
-}
type alias DeleteRepositoryOutput =
    { repositoryId : Maybe String
    }



deleteRepositoryOutputDecoder : JD.Decoder DeleteRepositoryOutput
deleteRepositoryOutputDecoder =
    JDP.decode DeleteRepositoryOutput
        |> JDP.optional "repositoryId" (JD.nullable JD.string) Nothing




{-| <p>Returns information about a set of differences for a commit specifier.</p>
-}
type alias Difference =
    { beforeBlob : Maybe BlobMetadata
    , afterBlob : Maybe BlobMetadata
    , changeType : Maybe ChangeTypeEnum
    }



differenceDecoder : JD.Decoder Difference
differenceDecoder =
    JDP.decode Difference
        |> JDP.optional "beforeBlob" (JD.nullable blobMetadataDecoder) Nothing
        |> JDP.optional "afterBlob" (JD.nullable blobMetadataDecoder) Nothing
        |> JDP.optional "changeType" (JD.nullable changeTypeEnumDecoder) Nothing




{-| <p>An encryption integrity check failed.</p>
-}
type alias EncryptionIntegrityChecksFailedException =
    { 
    }



encryptionIntegrityChecksFailedExceptionDecoder : JD.Decoder EncryptionIntegrityChecksFailedException
encryptionIntegrityChecksFailedExceptionDecoder =
    JDP.decode EncryptionIntegrityChecksFailedException



{-| <p>An encryption key could not be accessed.</p>
-}
type alias EncryptionKeyAccessDeniedException =
    { 
    }



encryptionKeyAccessDeniedExceptionDecoder : JD.Decoder EncryptionKeyAccessDeniedException
encryptionKeyAccessDeniedExceptionDecoder =
    JDP.decode EncryptionKeyAccessDeniedException



{-| <p>The encryption key is disabled.</p>
-}
type alias EncryptionKeyDisabledException =
    { 
    }



encryptionKeyDisabledExceptionDecoder : JD.Decoder EncryptionKeyDisabledException
encryptionKeyDisabledExceptionDecoder =
    JDP.decode EncryptionKeyDisabledException



{-| <p>No encryption key was found.</p>
-}
type alias EncryptionKeyNotFoundException =
    { 
    }



encryptionKeyNotFoundExceptionDecoder : JD.Decoder EncryptionKeyNotFoundException
encryptionKeyNotFoundExceptionDecoder =
    JDP.decode EncryptionKeyNotFoundException



{-| <p>The encryption key is not available.</p>
-}
type alias EncryptionKeyUnavailableException =
    { 
    }



encryptionKeyUnavailableExceptionDecoder : JD.Decoder EncryptionKeyUnavailableException
encryptionKeyUnavailableExceptionDecoder =
    JDP.decode EncryptionKeyUnavailableException



{-| <p>The specified file exceeds the file size limit for AWS CodeCommit. For more information about limits in AWS CodeCommit, see <a href="http://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">AWS CodeCommit User Guide</a>.</p>
-}
type alias FileTooLargeException =
    { 
    }



fileTooLargeExceptionDecoder : JD.Decoder FileTooLargeException
fileTooLargeExceptionDecoder =
    JDP.decode FileTooLargeException



{-| Type of HTTP response from getBl
-}
type alias GetBlobOutput =
    { content : String
    }



getBlobOutputDecoder : JD.Decoder GetBlobOutput
getBlobOutputDecoder =
    JDP.decode GetBlobOutput
        |> JDP.required "content" JD.string




{-| Type of HTTP response from getBran
-}
type alias GetBranchOutput =
    { branch : Maybe BranchInfo
    }



getBranchOutputDecoder : JD.Decoder GetBranchOutput
getBranchOutputDecoder =
    JDP.decode GetBranchOutput
        |> JDP.optional "branch" (JD.nullable branchInfoDecoder) Nothing




{-| Type of HTTP response from getComm
-}
type alias GetCommitOutput =
    { commit : Commit
    }



getCommitOutputDecoder : JD.Decoder GetCommitOutput
getCommitOutputDecoder =
    JDP.decode GetCommitOutput
        |> JDP.required "commit" commitDecoder




{-| Type of HTTP response from getDifferenc
-}
type alias GetDifferencesOutput =
    { differences : Maybe (List Difference)
    , nextToken : Maybe String
    }



getDifferencesOutputDecoder : JD.Decoder GetDifferencesOutput
getDifferencesOutputDecoder =
    JDP.decode GetDifferencesOutput
        |> JDP.optional "differences" (JD.nullable (JD.list differenceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getReposito
-}
type alias GetRepositoryOutput =
    { repositoryMetadata : Maybe RepositoryMetadata
    }



getRepositoryOutputDecoder : JD.Decoder GetRepositoryOutput
getRepositoryOutputDecoder =
    JDP.decode GetRepositoryOutput
        |> JDP.optional "repositoryMetadata" (JD.nullable repositoryMetadataDecoder) Nothing




{-| Type of HTTP response from getRepositoryTrigge
-}
type alias GetRepositoryTriggersOutput =
    { configurationId : Maybe String
    , triggers : Maybe (List RepositoryTrigger)
    }



getRepositoryTriggersOutputDecoder : JD.Decoder GetRepositoryTriggersOutput
getRepositoryTriggersOutputDecoder =
    JDP.decode GetRepositoryTriggersOutput
        |> JDP.optional "configurationId" (JD.nullable JD.string) Nothing
        |> JDP.optional "triggers" (JD.nullable (JD.list repositoryTriggerDecoder)) Nothing




{-| <p>The specified blob is not valid.</p>
-}
type alias InvalidBlobIdException =
    { 
    }



invalidBlobIdExceptionDecoder : JD.Decoder InvalidBlobIdException
invalidBlobIdExceptionDecoder =
    JDP.decode InvalidBlobIdException



{-| <p>The specified branch name is not valid.</p>
-}
type alias InvalidBranchNameException =
    { 
    }



invalidBranchNameExceptionDecoder : JD.Decoder InvalidBranchNameException
invalidBranchNameExceptionDecoder =
    JDP.decode InvalidBranchNameException



{-| <p>The specified commit is not valid.</p>
-}
type alias InvalidCommitException =
    { 
    }



invalidCommitExceptionDecoder : JD.Decoder InvalidCommitException
invalidCommitExceptionDecoder =
    JDP.decode InvalidCommitException



{-| <p>The specified commit ID is not valid.</p>
-}
type alias InvalidCommitIdException =
    { 
    }



invalidCommitIdExceptionDecoder : JD.Decoder InvalidCommitIdException
invalidCommitIdExceptionDecoder =
    JDP.decode InvalidCommitIdException



{-| <p>The specified continuation token is not valid.</p>
-}
type alias InvalidContinuationTokenException =
    { 
    }



invalidContinuationTokenExceptionDecoder : JD.Decoder InvalidContinuationTokenException
invalidContinuationTokenExceptionDecoder =
    JDP.decode InvalidContinuationTokenException



{-| <p>The specified number of maximum results is not valid.</p>
-}
type alias InvalidMaxResultsException =
    { 
    }



invalidMaxResultsExceptionDecoder : JD.Decoder InvalidMaxResultsException
invalidMaxResultsExceptionDecoder =
    JDP.decode InvalidMaxResultsException



{-| <p>The specified sort order is not valid.</p>
-}
type alias InvalidOrderException =
    { 
    }



invalidOrderExceptionDecoder : JD.Decoder InvalidOrderException
invalidOrderExceptionDecoder =
    JDP.decode InvalidOrderException



{-| <p>The specified path is not valid.</p>
-}
type alias InvalidPathException =
    { 
    }



invalidPathExceptionDecoder : JD.Decoder InvalidPathException
invalidPathExceptionDecoder =
    JDP.decode InvalidPathException



{-| <p>The specified repository description is not valid.</p>
-}
type alias InvalidRepositoryDescriptionException =
    { 
    }



invalidRepositoryDescriptionExceptionDecoder : JD.Decoder InvalidRepositoryDescriptionException
invalidRepositoryDescriptionExceptionDecoder =
    JDP.decode InvalidRepositoryDescriptionException



{-| <p>At least one specified repository name is not valid.</p> <note> <p>This exception only occurs when a specified repository name is not valid. Other exceptions occur when a required repository parameter is missing, or when a specified repository does not exist.</p> </note>
-}
type alias InvalidRepositoryNameException =
    { 
    }



invalidRepositoryNameExceptionDecoder : JD.Decoder InvalidRepositoryNameException
invalidRepositoryNameExceptionDecoder =
    JDP.decode InvalidRepositoryNameException



{-| <p>One or more branch names specified for the trigger is not valid.</p>
-}
type alias InvalidRepositoryTriggerBranchNameException =
    { 
    }



invalidRepositoryTriggerBranchNameExceptionDecoder : JD.Decoder InvalidRepositoryTriggerBranchNameException
invalidRepositoryTriggerBranchNameExceptionDecoder =
    JDP.decode InvalidRepositoryTriggerBranchNameException



{-| <p>The custom data provided for the trigger is not valid.</p>
-}
type alias InvalidRepositoryTriggerCustomDataException =
    { 
    }



invalidRepositoryTriggerCustomDataExceptionDecoder : JD.Decoder InvalidRepositoryTriggerCustomDataException
invalidRepositoryTriggerCustomDataExceptionDecoder =
    JDP.decode InvalidRepositoryTriggerCustomDataException



{-| <p>The Amazon Resource Name (ARN) for the trigger is not valid for the specified destination. The most common reason for this error is that the ARN does not meet the requirements for the service type.</p>
-}
type alias InvalidRepositoryTriggerDestinationArnException =
    { 
    }



invalidRepositoryTriggerDestinationArnExceptionDecoder : JD.Decoder InvalidRepositoryTriggerDestinationArnException
invalidRepositoryTriggerDestinationArnExceptionDecoder =
    JDP.decode InvalidRepositoryTriggerDestinationArnException



{-| <p>One or more events specified for the trigger is not valid. Check to make sure that all events specified match the requirements for allowed events.</p>
-}
type alias InvalidRepositoryTriggerEventsException =
    { 
    }



invalidRepositoryTriggerEventsExceptionDecoder : JD.Decoder InvalidRepositoryTriggerEventsException
invalidRepositoryTriggerEventsExceptionDecoder =
    JDP.decode InvalidRepositoryTriggerEventsException



{-| <p>The name of the trigger is not valid.</p>
-}
type alias InvalidRepositoryTriggerNameException =
    { 
    }



invalidRepositoryTriggerNameExceptionDecoder : JD.Decoder InvalidRepositoryTriggerNameException
invalidRepositoryTriggerNameExceptionDecoder =
    JDP.decode InvalidRepositoryTriggerNameException



{-| <p>The region for the trigger target does not match the region for the repository. Triggers must be created in the same region as the target for the trigger.</p>
-}
type alias InvalidRepositoryTriggerRegionException =
    { 
    }



invalidRepositoryTriggerRegionExceptionDecoder : JD.Decoder InvalidRepositoryTriggerRegionException
invalidRepositoryTriggerRegionExceptionDecoder =
    JDP.decode InvalidRepositoryTriggerRegionException



{-| <p>The specified sort by value is not valid.</p>
-}
type alias InvalidSortByException =
    { 
    }



invalidSortByExceptionDecoder : JD.Decoder InvalidSortByException
invalidSortByExceptionDecoder =
    JDP.decode InvalidSortByException



{-| Type of HTTP response from listBranch
-}
type alias ListBranchesOutput =
    { branches : Maybe (List String)
    , nextToken : Maybe String
    }



listBranchesOutputDecoder : JD.Decoder ListBranchesOutput
listBranchesOutputDecoder =
    JDP.decode ListBranchesOutput
        |> JDP.optional "branches" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listRepositori
-}
type alias ListRepositoriesOutput =
    { repositories : Maybe (List RepositoryNameIdPair)
    , nextToken : Maybe String
    }



listRepositoriesOutputDecoder : JD.Decoder ListRepositoriesOutput
listRepositoriesOutputDecoder =
    JDP.decode ListRepositoriesOutput
        |> JDP.optional "repositories" (JD.nullable (JD.list repositoryNameIdPairDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The number of branches for the trigger was exceeded.</p>
-}
type alias MaximumBranchesExceededException =
    { 
    }



maximumBranchesExceededExceptionDecoder : JD.Decoder MaximumBranchesExceededException
maximumBranchesExceededExceptionDecoder =
    JDP.decode MaximumBranchesExceededException



{-| <p>The maximum number of allowed repository names was exceeded. Currently, this number is 25.</p>
-}
type alias MaximumRepositoryNamesExceededException =
    { 
    }



maximumRepositoryNamesExceededExceptionDecoder : JD.Decoder MaximumRepositoryNamesExceededException
maximumRepositoryNamesExceededExceptionDecoder =
    JDP.decode MaximumRepositoryNamesExceededException



{-| <p>The number of triggers allowed for the repository was exceeded.</p>
-}
type alias MaximumRepositoryTriggersExceededException =
    { 
    }



maximumRepositoryTriggersExceededExceptionDecoder : JD.Decoder MaximumRepositoryTriggersExceededException
maximumRepositoryTriggersExceededExceptionDecoder =
    JDP.decode MaximumRepositoryTriggersExceededException



{-| One of

* `OrderEnum_ascending`
* `OrderEnum_descending`

-}
type OrderEnum
    = OrderEnum_ascending
    | OrderEnum_descending



orderEnumDecoder : JD.Decoder OrderEnum
orderEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ascending" ->
                        JD.succeed OrderEnum_ascending

                    "descending" ->
                        JD.succeed OrderEnum_descending


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified path does not exist.</p>
-}
type alias PathDoesNotExistException =
    { 
    }



pathDoesNotExistExceptionDecoder : JD.Decoder PathDoesNotExistException
pathDoesNotExistExceptionDecoder =
    JDP.decode PathDoesNotExistException



{-| Type of HTTP response from putRepositoryTrigge
-}
type alias PutRepositoryTriggersOutput =
    { configurationId : Maybe String
    }



putRepositoryTriggersOutputDecoder : JD.Decoder PutRepositoryTriggersOutput
putRepositoryTriggersOutputDecoder =
    JDP.decode PutRepositoryTriggersOutput
        |> JDP.optional "configurationId" (JD.nullable JD.string) Nothing




{-| <p>The specified repository does not exist.</p>
-}
type alias RepositoryDoesNotExistException =
    { 
    }



repositoryDoesNotExistExceptionDecoder : JD.Decoder RepositoryDoesNotExistException
repositoryDoesNotExistExceptionDecoder =
    JDP.decode RepositoryDoesNotExistException



{-| <p>A repository resource limit was exceeded.</p>
-}
type alias RepositoryLimitExceededException =
    { 
    }



repositoryLimitExceededExceptionDecoder : JD.Decoder RepositoryLimitExceededException
repositoryLimitExceededExceptionDecoder =
    JDP.decode RepositoryLimitExceededException



{-| <p>Information about a repository.</p>
-}
type alias RepositoryMetadata =
    { accountId : Maybe String
    , repositoryId : Maybe String
    , repositoryName : Maybe String
    , repositoryDescription : Maybe String
    , defaultBranch : Maybe String
    , lastModifiedDate : Maybe Date
    , creationDate : Maybe Date
    , cloneUrlHttp : Maybe String
    , cloneUrlSsh : Maybe String
    , arn : Maybe String
    }



repositoryMetadataDecoder : JD.Decoder RepositoryMetadata
repositoryMetadataDecoder =
    JDP.decode RepositoryMetadata
        |> JDP.optional "accountId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultBranch" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "cloneUrlHttp" (JD.nullable JD.string) Nothing
        |> JDP.optional "cloneUrlSsh" (JD.nullable JD.string) Nothing
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing




{-| <p>The specified repository name already exists.</p>
-}
type alias RepositoryNameExistsException =
    { 
    }



repositoryNameExistsExceptionDecoder : JD.Decoder RepositoryNameExistsException
repositoryNameExistsExceptionDecoder =
    JDP.decode RepositoryNameExistsException



{-| <p>Information about a repository name and ID.</p>
-}
type alias RepositoryNameIdPair =
    { repositoryName : Maybe String
    , repositoryId : Maybe String
    }



repositoryNameIdPairDecoder : JD.Decoder RepositoryNameIdPair
repositoryNameIdPairDecoder =
    JDP.decode RepositoryNameIdPair
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryId" (JD.nullable JD.string) Nothing




{-| <p>A repository name is required but was not specified.</p>
-}
type alias RepositoryNameRequiredException =
    { 
    }



repositoryNameRequiredExceptionDecoder : JD.Decoder RepositoryNameRequiredException
repositoryNameRequiredExceptionDecoder =
    JDP.decode RepositoryNameRequiredException



{-| <p>A repository names object is required but was not specified.</p>
-}
type alias RepositoryNamesRequiredException =
    { 
    }



repositoryNamesRequiredExceptionDecoder : JD.Decoder RepositoryNamesRequiredException
repositoryNamesRequiredExceptionDecoder =
    JDP.decode RepositoryNamesRequiredException



{-| <p>Information about a trigger for a repository.</p>
-}
type alias RepositoryTrigger =
    { name : String
    , destinationArn : String
    , customData : Maybe String
    , branches : Maybe (List String)
    , events : (List RepositoryTriggerEventEnum)
    }



repositoryTriggerDecoder : JD.Decoder RepositoryTrigger
repositoryTriggerDecoder =
    JDP.decode RepositoryTrigger
        |> JDP.required "name" JD.string
        |> JDP.required "destinationArn" JD.string
        |> JDP.optional "customData" (JD.nullable JD.string) Nothing
        |> JDP.optional "branches" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.required "events" (JD.list repositoryTriggerEventEnumDecoder)




{-| <p>At least one branch name is required but was not specified in the trigger configuration.</p>
-}
type alias RepositoryTriggerBranchNameListRequiredException =
    { 
    }



repositoryTriggerBranchNameListRequiredExceptionDecoder : JD.Decoder RepositoryTriggerBranchNameListRequiredException
repositoryTriggerBranchNameListRequiredExceptionDecoder =
    JDP.decode RepositoryTriggerBranchNameListRequiredException



{-| <p>A destination ARN for the target service for the trigger is required but was not specified.</p>
-}
type alias RepositoryTriggerDestinationArnRequiredException =
    { 
    }



repositoryTriggerDestinationArnRequiredExceptionDecoder : JD.Decoder RepositoryTriggerDestinationArnRequiredException
repositoryTriggerDestinationArnRequiredExceptionDecoder =
    JDP.decode RepositoryTriggerDestinationArnRequiredException



{-| One of

* `RepositoryTriggerEventEnum_all`
* `RepositoryTriggerEventEnum_updateReference`
* `RepositoryTriggerEventEnum_createReference`
* `RepositoryTriggerEventEnum_deleteReference`

-}
type RepositoryTriggerEventEnum
    = RepositoryTriggerEventEnum_all
    | RepositoryTriggerEventEnum_updateReference
    | RepositoryTriggerEventEnum_createReference
    | RepositoryTriggerEventEnum_deleteReference



repositoryTriggerEventEnumDecoder : JD.Decoder RepositoryTriggerEventEnum
repositoryTriggerEventEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "all" ->
                        JD.succeed RepositoryTriggerEventEnum_all

                    "updateReference" ->
                        JD.succeed RepositoryTriggerEventEnum_updateReference

                    "createReference" ->
                        JD.succeed RepositoryTriggerEventEnum_createReference

                    "deleteReference" ->
                        JD.succeed RepositoryTriggerEventEnum_deleteReference


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>At least one event for the trigger is required but was not specified.</p>
-}
type alias RepositoryTriggerEventsListRequiredException =
    { 
    }



repositoryTriggerEventsListRequiredExceptionDecoder : JD.Decoder RepositoryTriggerEventsListRequiredException
repositoryTriggerEventsListRequiredExceptionDecoder =
    JDP.decode RepositoryTriggerEventsListRequiredException



{-| <p>A trigger failed to run.</p>
-}
type alias RepositoryTriggerExecutionFailure =
    { trigger : Maybe String
    , failureMessage : Maybe String
    }



repositoryTriggerExecutionFailureDecoder : JD.Decoder RepositoryTriggerExecutionFailure
repositoryTriggerExecutionFailureDecoder =
    JDP.decode RepositoryTriggerExecutionFailure
        |> JDP.optional "trigger" (JD.nullable JD.string) Nothing
        |> JDP.optional "failureMessage" (JD.nullable JD.string) Nothing




{-| <p>A name for the trigger is required but was not specified.</p>
-}
type alias RepositoryTriggerNameRequiredException =
    { 
    }



repositoryTriggerNameRequiredExceptionDecoder : JD.Decoder RepositoryTriggerNameRequiredException
repositoryTriggerNameRequiredExceptionDecoder =
    JDP.decode RepositoryTriggerNameRequiredException



{-| <p>The list of triggers for the repository is required but was not specified.</p>
-}
type alias RepositoryTriggersListRequiredException =
    { 
    }



repositoryTriggersListRequiredExceptionDecoder : JD.Decoder RepositoryTriggersListRequiredException
repositoryTriggersListRequiredExceptionDecoder =
    JDP.decode RepositoryTriggersListRequiredException



{-| One of

* `SortByEnum_repositoryName`
* `SortByEnum_lastModifiedDate`

-}
type SortByEnum
    = SortByEnum_repositoryName
    | SortByEnum_lastModifiedDate



sortByEnumDecoder : JD.Decoder SortByEnum
sortByEnumDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "repositoryName" ->
                        JD.succeed SortByEnum_repositoryName

                    "lastModifiedDate" ->
                        JD.succeed SortByEnum_lastModifiedDate


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from testRepositoryTrigge
-}
type alias TestRepositoryTriggersOutput =
    { successfulExecutions : Maybe (List String)
    , failedExecutions : Maybe (List RepositoryTriggerExecutionFailure)
    }



testRepositoryTriggersOutputDecoder : JD.Decoder TestRepositoryTriggersOutput
testRepositoryTriggersOutputDecoder =
    JDP.decode TestRepositoryTriggersOutput
        |> JDP.optional "successfulExecutions" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "failedExecutions" (JD.nullable (JD.list repositoryTriggerExecutionFailureDecoder)) Nothing




{-| <p>Information about the user who made a specified commit.</p>
-}
type alias UserInfo =
    { name : Maybe String
    , email : Maybe String
    , date : Maybe String
    }



userInfoDecoder : JD.Decoder UserInfo
userInfoDecoder =
    JDP.decode UserInfo
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "email" (JD.nullable JD.string) Nothing
        |> JDP.optional "date" (JD.nullable JD.string) Nothing




