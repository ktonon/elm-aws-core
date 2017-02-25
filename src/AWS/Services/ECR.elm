module AWS.Services.ECR
    exposing
        ( config
        , batchCheckLayerAvailability
        , BatchCheckLayerAvailabilityOptions
        , batchDeleteImage
        , BatchDeleteImageOptions
        , batchGetImage
        , BatchGetImageOptions
        , completeLayerUpload
        , CompleteLayerUploadOptions
        , createRepository
        , deleteRepository
        , DeleteRepositoryOptions
        , deleteRepositoryPolicy
        , DeleteRepositoryPolicyOptions
        , describeImages
        , DescribeImagesOptions
        , describeRepositories
        , DescribeRepositoriesOptions
        , getAuthorizationToken
        , GetAuthorizationTokenOptions
        , getDownloadUrlForLayer
        , GetDownloadUrlForLayerOptions
        , getRepositoryPolicy
        , GetRepositoryPolicyOptions
        , initiateLayerUpload
        , InitiateLayerUploadOptions
        , listImages
        , ListImagesOptions
        , putImage
        , PutImageOptions
        , setRepositoryPolicy
        , SetRepositoryPolicyOptions
        , uploadLayerPart
        , UploadLayerPartOptions
        , AuthorizationData
        , BatchCheckLayerAvailabilityResponse
        , BatchDeleteImageResponse
        , BatchGetImageResponse
        , CompleteLayerUploadResponse
        , CreateRepositoryResponse
        , DeleteRepositoryPolicyResponse
        , DeleteRepositoryResponse
        , DescribeImagesFilter
        , DescribeImagesResponse
        , DescribeRepositoriesResponse
        , EmptyUploadException
        , GetAuthorizationTokenResponse
        , GetDownloadUrlForLayerResponse
        , GetRepositoryPolicyResponse
        , Image
        , ImageAlreadyExistsException
        , ImageDetail
        , ImageFailure
        , ImageFailureCode(..)
        , ImageIdentifier
        , ImageNotFoundException
        , InitiateLayerUploadResponse
        , InvalidLayerException
        , InvalidLayerPartException
        , InvalidParameterException
        , Layer
        , LayerAlreadyExistsException
        , LayerAvailability(..)
        , LayerFailure
        , LayerFailureCode(..)
        , LayerInaccessibleException
        , LayerPartTooSmallException
        , LayersNotFoundException
        , LimitExceededException
        , ListImagesFilter
        , ListImagesResponse
        , PutImageResponse
        , Repository
        , RepositoryAlreadyExistsException
        , RepositoryNotEmptyException
        , RepositoryNotFoundException
        , RepositoryPolicyNotFoundException
        , ServerException
        , SetRepositoryPolicyResponse
        , TagStatus(..)
        , UploadLayerPartResponse
        , UploadNotFoundException
        )

{-| <p>Amazon EC2 Container Registry (Amazon ECR) is a managed AWS Docker registry service. Customers can use the familiar Docker CLI to push, pull, and manage images. Amazon ECR provides a secure, scalable, and reliable registry. Amazon ECR supports private Docker repositories with resource-based permissions using AWS IAM so that specific users or Amazon EC2 instances can access repositories and images. Developers can use the Docker CLI to author and manage images.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [batchCheckLayerAvailability](#batchCheckLayerAvailability)
* [BatchCheckLayerAvailabilityOptions](#BatchCheckLayerAvailabilityOptions)
* [batchDeleteImage](#batchDeleteImage)
* [BatchDeleteImageOptions](#BatchDeleteImageOptions)
* [batchGetImage](#batchGetImage)
* [BatchGetImageOptions](#BatchGetImageOptions)
* [completeLayerUpload](#completeLayerUpload)
* [CompleteLayerUploadOptions](#CompleteLayerUploadOptions)
* [createRepository](#createRepository)
* [deleteRepository](#deleteRepository)
* [DeleteRepositoryOptions](#DeleteRepositoryOptions)
* [deleteRepositoryPolicy](#deleteRepositoryPolicy)
* [DeleteRepositoryPolicyOptions](#DeleteRepositoryPolicyOptions)
* [describeImages](#describeImages)
* [DescribeImagesOptions](#DescribeImagesOptions)
* [describeRepositories](#describeRepositories)
* [DescribeRepositoriesOptions](#DescribeRepositoriesOptions)
* [getAuthorizationToken](#getAuthorizationToken)
* [GetAuthorizationTokenOptions](#GetAuthorizationTokenOptions)
* [getDownloadUrlForLayer](#getDownloadUrlForLayer)
* [GetDownloadUrlForLayerOptions](#GetDownloadUrlForLayerOptions)
* [getRepositoryPolicy](#getRepositoryPolicy)
* [GetRepositoryPolicyOptions](#GetRepositoryPolicyOptions)
* [initiateLayerUpload](#initiateLayerUpload)
* [InitiateLayerUploadOptions](#InitiateLayerUploadOptions)
* [listImages](#listImages)
* [ListImagesOptions](#ListImagesOptions)
* [putImage](#putImage)
* [PutImageOptions](#PutImageOptions)
* [setRepositoryPolicy](#setRepositoryPolicy)
* [SetRepositoryPolicyOptions](#SetRepositoryPolicyOptions)
* [uploadLayerPart](#uploadLayerPart)
* [UploadLayerPartOptions](#UploadLayerPartOptions)


@docs batchCheckLayerAvailability,BatchCheckLayerAvailabilityOptions,batchDeleteImage,BatchDeleteImageOptions,batchGetImage,BatchGetImageOptions,completeLayerUpload,CompleteLayerUploadOptions,createRepository,deleteRepository,DeleteRepositoryOptions,deleteRepositoryPolicy,DeleteRepositoryPolicyOptions,describeImages,DescribeImagesOptions,describeRepositories,DescribeRepositoriesOptions,getAuthorizationToken,GetAuthorizationTokenOptions,getDownloadUrlForLayer,GetDownloadUrlForLayerOptions,getRepositoryPolicy,GetRepositoryPolicyOptions,initiateLayerUpload,InitiateLayerUploadOptions,listImages,ListImagesOptions,putImage,PutImageOptions,setRepositoryPolicy,SetRepositoryPolicyOptions,uploadLayerPart,UploadLayerPartOptions

## Responses

* [BatchCheckLayerAvailabilityResponse](#BatchCheckLayerAvailabilityResponse)
* [BatchDeleteImageResponse](#BatchDeleteImageResponse)
* [BatchGetImageResponse](#BatchGetImageResponse)
* [CompleteLayerUploadResponse](#CompleteLayerUploadResponse)
* [CreateRepositoryResponse](#CreateRepositoryResponse)
* [DeleteRepositoryPolicyResponse](#DeleteRepositoryPolicyResponse)
* [DeleteRepositoryResponse](#DeleteRepositoryResponse)
* [DescribeImagesResponse](#DescribeImagesResponse)
* [DescribeRepositoriesResponse](#DescribeRepositoriesResponse)
* [GetAuthorizationTokenResponse](#GetAuthorizationTokenResponse)
* [GetDownloadUrlForLayerResponse](#GetDownloadUrlForLayerResponse)
* [GetRepositoryPolicyResponse](#GetRepositoryPolicyResponse)
* [InitiateLayerUploadResponse](#InitiateLayerUploadResponse)
* [ListImagesResponse](#ListImagesResponse)
* [PutImageResponse](#PutImageResponse)
* [SetRepositoryPolicyResponse](#SetRepositoryPolicyResponse)
* [UploadLayerPartResponse](#UploadLayerPartResponse)


@docs BatchCheckLayerAvailabilityResponse,BatchDeleteImageResponse,BatchGetImageResponse,CompleteLayerUploadResponse,CreateRepositoryResponse,DeleteRepositoryPolicyResponse,DeleteRepositoryResponse,DescribeImagesResponse,DescribeRepositoriesResponse,GetAuthorizationTokenResponse,GetDownloadUrlForLayerResponse,GetRepositoryPolicyResponse,InitiateLayerUploadResponse,ListImagesResponse,PutImageResponse,SetRepositoryPolicyResponse,UploadLayerPartResponse

## Records

* [AuthorizationData](#AuthorizationData)
* [DescribeImagesFilter](#DescribeImagesFilter)
* [Image](#Image)
* [ImageDetail](#ImageDetail)
* [ImageFailure](#ImageFailure)
* [ImageIdentifier](#ImageIdentifier)
* [Layer](#Layer)
* [LayerFailure](#LayerFailure)
* [ListImagesFilter](#ListImagesFilter)
* [Repository](#Repository)


@docs AuthorizationData,DescribeImagesFilter,Image,ImageDetail,ImageFailure,ImageIdentifier,Layer,LayerFailure,ListImagesFilter,Repository

## Unions

* [ImageFailureCode](#ImageFailureCode)
* [LayerAvailability](#LayerAvailability)
* [LayerFailureCode](#LayerFailureCode)
* [TagStatus](#TagStatus)


@docs ImageFailureCode,LayerAvailability,LayerFailureCode,TagStatus

## Exceptions

* [EmptyUploadException](#EmptyUploadException)
* [ImageAlreadyExistsException](#ImageAlreadyExistsException)
* [ImageNotFoundException](#ImageNotFoundException)
* [InvalidLayerException](#InvalidLayerException)
* [InvalidLayerPartException](#InvalidLayerPartException)
* [InvalidParameterException](#InvalidParameterException)
* [LayerAlreadyExistsException](#LayerAlreadyExistsException)
* [LayerInaccessibleException](#LayerInaccessibleException)
* [LayerPartTooSmallException](#LayerPartTooSmallException)
* [LayersNotFoundException](#LayersNotFoundException)
* [LimitExceededException](#LimitExceededException)
* [RepositoryAlreadyExistsException](#RepositoryAlreadyExistsException)
* [RepositoryNotEmptyException](#RepositoryNotEmptyException)
* [RepositoryNotFoundException](#RepositoryNotFoundException)
* [RepositoryPolicyNotFoundException](#RepositoryPolicyNotFoundException)
* [ServerException](#ServerException)
* [UploadNotFoundException](#UploadNotFoundException)


@docs EmptyUploadException,ImageAlreadyExistsException,ImageNotFoundException,InvalidLayerException,InvalidLayerPartException,InvalidParameterException,LayerAlreadyExistsException,LayerInaccessibleException,LayerPartTooSmallException,LayersNotFoundException,LimitExceededException,RepositoryAlreadyExistsException,RepositoryNotEmptyException,RepositoryNotFoundException,RepositoryPolicyNotFoundException,ServerException,UploadNotFoundException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "ecr"
        "2015-09-21"
        "1.1"
        "AWSECR_20150921."
        "ecr.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Check the availability of multiple image layers in a specified registry and repository.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `layerDigests` __:__ `(List String)`


-}
batchCheckLayerAvailability :
    String
    -> (List String)
    -> (BatchCheckLayerAvailabilityOptions -> BatchCheckLayerAvailabilityOptions)
    -> AWS.Request BatchCheckLayerAvailabilityResponse
batchCheckLayerAvailability repositoryName layerDigests setOptions =
  let
    options = setOptions (BatchCheckLayerAvailabilityOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchCheckLayerAvailability"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchCheckLayerAvailabilityResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a batchCheckLayerAvailability request
-}
type alias BatchCheckLayerAvailabilityOptions =
    { registryId : Maybe String
    }



{-| <p>Deletes a list of specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p> <p>You can remove a tag from an image by specifying the image's tag in your request. When you remove the last tag from an image, the image is deleted from your repository.</p> <p>You can completely delete an image (and all of its tags) by specifying the image's digest in your request.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `imageIds` __:__ `(List ImageIdentifier)`


-}
batchDeleteImage :
    String
    -> (List ImageIdentifier)
    -> (BatchDeleteImageOptions -> BatchDeleteImageOptions)
    -> AWS.Request BatchDeleteImageResponse
batchDeleteImage repositoryName imageIds setOptions =
  let
    options = setOptions (BatchDeleteImageOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchDeleteImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchDeleteImageResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a batchDeleteImage request
-}
type alias BatchDeleteImageOptions =
    { registryId : Maybe String
    }



{-| <p>Gets detailed information for specified images within a specified repository. Images are specified with either <code>imageTag</code> or <code>imageDigest</code>.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `imageIds` __:__ `(List ImageIdentifier)`


-}
batchGetImage :
    String
    -> (List ImageIdentifier)
    -> (BatchGetImageOptions -> BatchGetImageOptions)
    -> AWS.Request BatchGetImageResponse
batchGetImage repositoryName imageIds setOptions =
  let
    options = setOptions (BatchGetImageOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchGetImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        batchGetImageResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a batchGetImage request
-}
type alias BatchGetImageOptions =
    { registryId : Maybe String
    , acceptedMediaTypes : Maybe (List String)
    }



{-| <p>Inform Amazon ECR that the image layer upload for a specified registry, repository name, and upload ID, has completed. You can optionally provide a <code>sha256</code> digest of the image layer for data validation purposes.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `uploadId` __:__ `String`
* `layerDigests` __:__ `(List String)`


-}
completeLayerUpload :
    String
    -> String
    -> (List String)
    -> (CompleteLayerUploadOptions -> CompleteLayerUploadOptions)
    -> AWS.Request CompleteLayerUploadResponse
completeLayerUpload repositoryName uploadId layerDigests setOptions =
  let
    options = setOptions (CompleteLayerUploadOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CompleteLayerUpload"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        completeLayerUploadResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a completeLayerUpload request
-}
type alias CompleteLayerUploadOptions =
    { registryId : Maybe String
    }



{-| <p>Creates an image repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
createRepository :
    String
    -> AWS.Request CreateRepositoryResponse
createRepository repositoryName =
    AWS.Http.unsignedRequest
        "CreateRepository"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createRepositoryResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes an existing image repository. If a repository contains images, you must use the <code>force</code> option to delete it.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
deleteRepository :
    String
    -> (DeleteRepositoryOptions -> DeleteRepositoryOptions)
    -> AWS.Request DeleteRepositoryResponse
deleteRepository repositoryName setOptions =
  let
    options = setOptions (DeleteRepositoryOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteRepository"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRepositoryResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteRepository request
-}
type alias DeleteRepositoryOptions =
    { registryId : Maybe String
    , force : Maybe Bool
    }



{-| <p>Deletes the repository policy from a specified repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
deleteRepositoryPolicy :
    String
    -> (DeleteRepositoryPolicyOptions -> DeleteRepositoryPolicyOptions)
    -> AWS.Request DeleteRepositoryPolicyResponse
deleteRepositoryPolicy repositoryName setOptions =
  let
    options = setOptions (DeleteRepositoryPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteRepositoryPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRepositoryPolicyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteRepositoryPolicy request
-}
type alias DeleteRepositoryPolicyOptions =
    { registryId : Maybe String
    }



{-| <p>Returns metadata about the images in a repository, including image size, image tags, and creation date.</p> <note> <p>Beginning with Docker version 1.9, the Docker client compresses image layers before pushing them to a V2 Docker registry. The output of the <code>docker images</code> command shows the uncompressed image size, so it may return a larger image size than the image sizes returned by <a>DescribeImages</a>.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
describeImages :
    String
    -> (DescribeImagesOptions -> DescribeImagesOptions)
    -> AWS.Request DescribeImagesResponse
describeImages repositoryName setOptions =
  let
    options = setOptions (DescribeImagesOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeImages"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeImagesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeImages request
-}
type alias DescribeImagesOptions =
    { registryId : Maybe String
    , imageIds : Maybe (List ImageIdentifier)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filter : Maybe DescribeImagesFilter
    }



{-| <p>Describes image repositories in a registry.</p>

__Required Parameters__



-}
describeRepositories :
    (DescribeRepositoriesOptions -> DescribeRepositoriesOptions)
    -> AWS.Request DescribeRepositoriesResponse
describeRepositories setOptions =
  let
    options = setOptions (DescribeRepositoriesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeRepositories"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeRepositoriesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeRepositories request
-}
type alias DescribeRepositoriesOptions =
    { registryId : Maybe String
    , repositoryNames : Maybe (List String)
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Retrieves a token that is valid for a specified registry for 12 hours. This command allows you to use the <code>docker</code> CLI to push and pull images with Amazon ECR. If you do not specify a registry, the default registry is assumed.</p> <p>The <code>authorizationToken</code> returned for each registry specified is a base64 encoded string that can be decoded and used in a <code>docker login</code> command to authenticate to a registry. The AWS CLI offers an <code>aws ecr get-login</code> command that simplifies the login process.</p>

__Required Parameters__



-}
getAuthorizationToken :
    (GetAuthorizationTokenOptions -> GetAuthorizationTokenOptions)
    -> AWS.Request GetAuthorizationTokenResponse
getAuthorizationToken setOptions =
  let
    options = setOptions (GetAuthorizationTokenOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetAuthorizationToken"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getAuthorizationTokenResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getAuthorizationToken request
-}
type alias GetAuthorizationTokenOptions =
    { registryIds : Maybe (List String)
    }



{-| <p>Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer. You can only get URLs for image layers that are referenced in an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `layerDigest` __:__ `String`


-}
getDownloadUrlForLayer :
    String
    -> String
    -> (GetDownloadUrlForLayerOptions -> GetDownloadUrlForLayerOptions)
    -> AWS.Request GetDownloadUrlForLayerResponse
getDownloadUrlForLayer repositoryName layerDigest setOptions =
  let
    options = setOptions (GetDownloadUrlForLayerOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetDownloadUrlForLayer"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getDownloadUrlForLayerResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getDownloadUrlForLayer request
-}
type alias GetDownloadUrlForLayerOptions =
    { registryId : Maybe String
    }



{-| <p>Retrieves the repository policy for a specified repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
getRepositoryPolicy :
    String
    -> (GetRepositoryPolicyOptions -> GetRepositoryPolicyOptions)
    -> AWS.Request GetRepositoryPolicyResponse
getRepositoryPolicy repositoryName setOptions =
  let
    options = setOptions (GetRepositoryPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetRepositoryPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getRepositoryPolicyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a getRepositoryPolicy request
-}
type alias GetRepositoryPolicyOptions =
    { registryId : Maybe String
    }



{-| <p>Notify Amazon ECR that you intend to upload an image layer.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
initiateLayerUpload :
    String
    -> (InitiateLayerUploadOptions -> InitiateLayerUploadOptions)
    -> AWS.Request InitiateLayerUploadResponse
initiateLayerUpload repositoryName setOptions =
  let
    options = setOptions (InitiateLayerUploadOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "InitiateLayerUpload"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        initiateLayerUploadResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a initiateLayerUpload request
-}
type alias InitiateLayerUploadOptions =
    { registryId : Maybe String
    }



{-| <p>Lists all the image IDs for a given repository.</p> <p>You can filter images based on whether or not they are tagged by setting the <code>tagStatus</code> parameter to <code>TAGGED</code> or <code>UNTAGGED</code>. For example, you can filter your results to return only <code>UNTAGGED</code> images and then pipe that result to a <a>BatchDeleteImage</a> operation to delete them. Or, you can filter your results to return only <code>TAGGED</code> images to list all of the tags in your repository.</p>

__Required Parameters__

* `repositoryName` __:__ `String`


-}
listImages :
    String
    -> (ListImagesOptions -> ListImagesOptions)
    -> AWS.Request ListImagesResponse
listImages repositoryName setOptions =
  let
    options = setOptions (ListImagesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListImages"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listImagesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listImages request
-}
type alias ListImagesOptions =
    { registryId : Maybe String
    , nextToken : Maybe String
    , maxResults : Maybe Int
    , filter : Maybe ListImagesFilter
    }



{-| <p>Creates or updates the image manifest and tags associated with an image.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `imageManifest` __:__ `String`


-}
putImage :
    String
    -> String
    -> (PutImageOptions -> PutImageOptions)
    -> AWS.Request PutImageResponse
putImage repositoryName imageManifest setOptions =
  let
    options = setOptions (PutImageOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "PutImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        putImageResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a putImage request
-}
type alias PutImageOptions =
    { registryId : Maybe String
    , imageTag : Maybe String
    }



{-| <p>Applies a repository policy on a specified repository to control access permissions.</p>

__Required Parameters__

* `repositoryName` __:__ `String`
* `policyText` __:__ `String`


-}
setRepositoryPolicy :
    String
    -> String
    -> (SetRepositoryPolicyOptions -> SetRepositoryPolicyOptions)
    -> AWS.Request SetRepositoryPolicyResponse
setRepositoryPolicy repositoryName policyText setOptions =
  let
    options = setOptions (SetRepositoryPolicyOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SetRepositoryPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        setRepositoryPolicyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a setRepositoryPolicy request
-}
type alias SetRepositoryPolicyOptions =
    { registryId : Maybe String
    , force : Maybe Bool
    }



{-| <p>Uploads an image layer part to Amazon ECR.</p> <note> <p>This operation is used by the Amazon ECR proxy, and it is not intended for general use by customers for pulling and pushing images. In most cases, you should use the <code>docker</code> CLI to pull, tag, and push images.</p> </note>

__Required Parameters__

* `repositoryName` __:__ `String`
* `uploadId` __:__ `String`
* `partFirstByte` __:__ `Int`
* `partLastByte` __:__ `Int`
* `layerPartBlob` __:__ `String`


-}
uploadLayerPart :
    String
    -> String
    -> Int
    -> Int
    -> String
    -> (UploadLayerPartOptions -> UploadLayerPartOptions)
    -> AWS.Request UploadLayerPartResponse
uploadLayerPart repositoryName uploadId partFirstByte partLastByte layerPartBlob setOptions =
  let
    options = setOptions (UploadLayerPartOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "UploadLayerPart"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        uploadLayerPartResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a uploadLayerPart request
-}
type alias UploadLayerPartOptions =
    { registryId : Maybe String
    }




{-| <p>An object representing authorization data for an Amazon ECR registry.</p>
-}
type alias AuthorizationData =
    { authorizationToken : Maybe String
    , expiresAt : Maybe Date
    , proxyEndpoint : Maybe String
    }



authorizationDataDecoder : JD.Decoder AuthorizationData
authorizationDataDecoder =
    JDP.decode AuthorizationData
        |> JDP.optional "authorizationToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "expiresAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "proxyEndpoint" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from batchCheckLayerAvailability
-}
type alias BatchCheckLayerAvailabilityResponse =
    { layers : Maybe (List Layer)
    , failures : Maybe (List LayerFailure)
    }



batchCheckLayerAvailabilityResponseDecoder : JD.Decoder BatchCheckLayerAvailabilityResponse
batchCheckLayerAvailabilityResponseDecoder =
    JDP.decode BatchCheckLayerAvailabilityResponse
        |> JDP.optional "layers" (JD.nullable (JD.list layerDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list layerFailureDecoder)) Nothing




{-| Type of HTTP response from batchDeleteImage
-}
type alias BatchDeleteImageResponse =
    { imageIds : Maybe (List ImageIdentifier)
    , failures : Maybe (List ImageFailure)
    }



batchDeleteImageResponseDecoder : JD.Decoder BatchDeleteImageResponse
batchDeleteImageResponseDecoder =
    JDP.decode BatchDeleteImageResponse
        |> JDP.optional "imageIds" (JD.nullable (JD.list imageIdentifierDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list imageFailureDecoder)) Nothing




{-| Type of HTTP response from batchGetImage
-}
type alias BatchGetImageResponse =
    { images : Maybe (List Image)
    , failures : Maybe (List ImageFailure)
    }



batchGetImageResponseDecoder : JD.Decoder BatchGetImageResponse
batchGetImageResponseDecoder =
    JDP.decode BatchGetImageResponse
        |> JDP.optional "images" (JD.nullable (JD.list imageDecoder)) Nothing
        |> JDP.optional "failures" (JD.nullable (JD.list imageFailureDecoder)) Nothing




{-| Type of HTTP response from completeLayerUpload
-}
type alias CompleteLayerUploadResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , uploadId : Maybe String
    , layerDigest : Maybe String
    }



completeLayerUploadResponseDecoder : JD.Decoder CompleteLayerUploadResponse
completeLayerUploadResponseDecoder =
    JDP.decode CompleteLayerUploadResponse
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "layerDigest" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createRepository
-}
type alias CreateRepositoryResponse =
    { repository : Maybe Repository
    }



createRepositoryResponseDecoder : JD.Decoder CreateRepositoryResponse
createRepositoryResponseDecoder =
    JDP.decode CreateRepositoryResponse
        |> JDP.optional "repository" (JD.nullable repositoryDecoder) Nothing




{-| Type of HTTP response from deleteRepositoryPolicy
-}
type alias DeleteRepositoryPolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , policyText : Maybe String
    }



deleteRepositoryPolicyResponseDecoder : JD.Decoder DeleteRepositoryPolicyResponse
deleteRepositoryPolicyResponseDecoder =
    JDP.decode DeleteRepositoryPolicyResponse
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyText" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteRepository
-}
type alias DeleteRepositoryResponse =
    { repository : Maybe Repository
    }



deleteRepositoryResponseDecoder : JD.Decoder DeleteRepositoryResponse
deleteRepositoryResponseDecoder =
    JDP.decode DeleteRepositoryResponse
        |> JDP.optional "repository" (JD.nullable repositoryDecoder) Nothing




{-| <p>An object representing a filter on a <a>DescribeImages</a> operation.</p>
-}
type alias DescribeImagesFilter =
    { tagStatus : Maybe TagStatus
    }



describeImagesFilterDecoder : JD.Decoder DescribeImagesFilter
describeImagesFilterDecoder =
    JDP.decode DescribeImagesFilter
        |> JDP.optional "tagStatus" (JD.nullable tagStatusDecoder) Nothing




{-| Type of HTTP response from describeImages
-}
type alias DescribeImagesResponse =
    { imageDetails : Maybe (List ImageDetail)
    , nextToken : Maybe String
    }



describeImagesResponseDecoder : JD.Decoder DescribeImagesResponse
describeImagesResponseDecoder =
    JDP.decode DescribeImagesResponse
        |> JDP.optional "imageDetails" (JD.nullable (JD.list imageDetailDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeRepositories
-}
type alias DescribeRepositoriesResponse =
    { repositories : Maybe (List Repository)
    , nextToken : Maybe String
    }



describeRepositoriesResponseDecoder : JD.Decoder DescribeRepositoriesResponse
describeRepositoriesResponseDecoder =
    JDP.decode DescribeRepositoriesResponse
        |> JDP.optional "repositories" (JD.nullable (JD.list repositoryDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>The specified layer upload does not contain any layer parts.</p>
-}
type alias EmptyUploadException =
    { message : Maybe String
    }



emptyUploadExceptionDecoder : JD.Decoder EmptyUploadException
emptyUploadExceptionDecoder =
    JDP.decode EmptyUploadException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getAuthorizationToken
-}
type alias GetAuthorizationTokenResponse =
    { authorizationData : Maybe (List AuthorizationData)
    }



getAuthorizationTokenResponseDecoder : JD.Decoder GetAuthorizationTokenResponse
getAuthorizationTokenResponseDecoder =
    JDP.decode GetAuthorizationTokenResponse
        |> JDP.optional "authorizationData" (JD.nullable (JD.list authorizationDataDecoder)) Nothing




{-| Type of HTTP response from getDownloadUrlForLayer
-}
type alias GetDownloadUrlForLayerResponse =
    { downloadUrl : Maybe String
    , layerDigest : Maybe String
    }



getDownloadUrlForLayerResponseDecoder : JD.Decoder GetDownloadUrlForLayerResponse
getDownloadUrlForLayerResponseDecoder =
    JDP.decode GetDownloadUrlForLayerResponse
        |> JDP.optional "downloadUrl" (JD.nullable JD.string) Nothing
        |> JDP.optional "layerDigest" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getRepositoryPolicy
-}
type alias GetRepositoryPolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , policyText : Maybe String
    }



getRepositoryPolicyResponseDecoder : JD.Decoder GetRepositoryPolicyResponse
getRepositoryPolicyResponseDecoder =
    JDP.decode GetRepositoryPolicyResponse
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyText" (JD.nullable JD.string) Nothing




{-| <p>An object representing an Amazon ECR image.</p>
-}
type alias Image =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , imageId : Maybe ImageIdentifier
    , imageManifest : Maybe String
    }



imageDecoder : JD.Decoder Image
imageDecoder =
    JDP.decode Image
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "imageId" (JD.nullable imageIdentifierDecoder) Nothing
        |> JDP.optional "imageManifest" (JD.nullable JD.string) Nothing




{-| <p>The specified image has already been pushed, and there are no changes to the manifest or image tag since the last push.</p>
-}
type alias ImageAlreadyExistsException =
    { message : Maybe String
    }



imageAlreadyExistsExceptionDecoder : JD.Decoder ImageAlreadyExistsException
imageAlreadyExistsExceptionDecoder =
    JDP.decode ImageAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An object that describes an image returned by a <a>DescribeImages</a> operation.</p>
-}
type alias ImageDetail =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , imageDigest : Maybe String
    , imageTags : Maybe (List String)
    , imageSizeInBytes : Maybe Int
    , imagePushedAt : Maybe Date
    }



imageDetailDecoder : JD.Decoder ImageDetail
imageDetailDecoder =
    JDP.decode ImageDetail
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "imageDigest" (JD.nullable JD.string) Nothing
        |> JDP.optional "imageTags" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "imageSizeInBytes" (JD.nullable JD.int) Nothing
        |> JDP.optional "imagePushedAt" (JD.nullable JDX.date) Nothing




{-| <p>An object representing an Amazon ECR image failure.</p>
-}
type alias ImageFailure =
    { imageId : Maybe ImageIdentifier
    , failureCode : Maybe ImageFailureCode
    , failureReason : Maybe String
    }



imageFailureDecoder : JD.Decoder ImageFailure
imageFailureDecoder =
    JDP.decode ImageFailure
        |> JDP.optional "imageId" (JD.nullable imageIdentifierDecoder) Nothing
        |> JDP.optional "failureCode" (JD.nullable imageFailureCodeDecoder) Nothing
        |> JDP.optional "failureReason" (JD.nullable JD.string) Nothing




{-| One of

* `ImageFailureCode_InvalidImageDigest`
* `ImageFailureCode_InvalidImageTag`
* `ImageFailureCode_ImageTagDoesNotMatchDigest`
* `ImageFailureCode_ImageNotFound`
* `ImageFailureCode_MissingDigestAndTag`

-}
type ImageFailureCode
    = ImageFailureCode_InvalidImageDigest
    | ImageFailureCode_InvalidImageTag
    | ImageFailureCode_ImageTagDoesNotMatchDigest
    | ImageFailureCode_ImageNotFound
    | ImageFailureCode_MissingDigestAndTag



imageFailureCodeDecoder : JD.Decoder ImageFailureCode
imageFailureCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InvalidImageDigest" ->
                        JD.succeed ImageFailureCode_InvalidImageDigest

                    "InvalidImageTag" ->
                        JD.succeed ImageFailureCode_InvalidImageTag

                    "ImageTagDoesNotMatchDigest" ->
                        JD.succeed ImageFailureCode_ImageTagDoesNotMatchDigest

                    "ImageNotFound" ->
                        JD.succeed ImageFailureCode_ImageNotFound

                    "MissingDigestAndTag" ->
                        JD.succeed ImageFailureCode_MissingDigestAndTag


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An object with identifying information for an Amazon ECR image.</p>
-}
type alias ImageIdentifier =
    { imageDigest : Maybe String
    , imageTag : Maybe String
    }



imageIdentifierDecoder : JD.Decoder ImageIdentifier
imageIdentifierDecoder =
    JDP.decode ImageIdentifier
        |> JDP.optional "imageDigest" (JD.nullable JD.string) Nothing
        |> JDP.optional "imageTag" (JD.nullable JD.string) Nothing




{-| <p>The image requested does not exist in the specified repository.</p>
-}
type alias ImageNotFoundException =
    { message : Maybe String
    }



imageNotFoundExceptionDecoder : JD.Decoder ImageNotFoundException
imageNotFoundExceptionDecoder =
    JDP.decode ImageNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from initiateLayerUpload
-}
type alias InitiateLayerUploadResponse =
    { uploadId : Maybe String
    , partSize : Maybe Int
    }



initiateLayerUploadResponseDecoder : JD.Decoder InitiateLayerUploadResponse
initiateLayerUploadResponseDecoder =
    JDP.decode InitiateLayerUploadResponse
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "partSize" (JD.nullable JD.int) Nothing




{-| <p>The layer digest calculation performed by Amazon ECR upon receipt of the image layer does not match the digest specified.</p>
-}
type alias InvalidLayerException =
    { message : Maybe String
    }



invalidLayerExceptionDecoder : JD.Decoder InvalidLayerException
invalidLayerExceptionDecoder =
    JDP.decode InvalidLayerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The layer part size is not valid, or the first byte specified is not consecutive to the last byte of a previous layer part upload.</p>
-}
type alias InvalidLayerPartException =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , uploadId : Maybe String
    , lastValidByteReceived : Maybe Int
    , message : Maybe String
    }



invalidLayerPartExceptionDecoder : JD.Decoder InvalidLayerPartException
invalidLayerPartExceptionDecoder =
    JDP.decode InvalidLayerPartException
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastValidByteReceived" (JD.nullable JD.int) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified parameter is invalid. Review the available parameters for the API request.</p>
-}
type alias InvalidParameterException =
    { message : Maybe String
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An object representing an Amazon ECR image layer.</p>
-}
type alias Layer =
    { layerDigest : Maybe String
    , layerAvailability : Maybe LayerAvailability
    , layerSize : Maybe Int
    , mediaType : Maybe String
    }



layerDecoder : JD.Decoder Layer
layerDecoder =
    JDP.decode Layer
        |> JDP.optional "layerDigest" (JD.nullable JD.string) Nothing
        |> JDP.optional "layerAvailability" (JD.nullable layerAvailabilityDecoder) Nothing
        |> JDP.optional "layerSize" (JD.nullable JD.int) Nothing
        |> JDP.optional "mediaType" (JD.nullable JD.string) Nothing




{-| <p>The image layer already exists in the associated repository.</p>
-}
type alias LayerAlreadyExistsException =
    { message : Maybe String
    }



layerAlreadyExistsExceptionDecoder : JD.Decoder LayerAlreadyExistsException
layerAlreadyExistsExceptionDecoder =
    JDP.decode LayerAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `LayerAvailability_AVAILABLE`
* `LayerAvailability_UNAVAILABLE`

-}
type LayerAvailability
    = LayerAvailability_AVAILABLE
    | LayerAvailability_UNAVAILABLE



layerAvailabilityDecoder : JD.Decoder LayerAvailability
layerAvailabilityDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AVAILABLE" ->
                        JD.succeed LayerAvailability_AVAILABLE

                    "UNAVAILABLE" ->
                        JD.succeed LayerAvailability_UNAVAILABLE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An object representing an Amazon ECR image layer failure.</p>
-}
type alias LayerFailure =
    { layerDigest : Maybe String
    , failureCode : Maybe LayerFailureCode
    , failureReason : Maybe String
    }



layerFailureDecoder : JD.Decoder LayerFailure
layerFailureDecoder =
    JDP.decode LayerFailure
        |> JDP.optional "layerDigest" (JD.nullable JD.string) Nothing
        |> JDP.optional "failureCode" (JD.nullable layerFailureCodeDecoder) Nothing
        |> JDP.optional "failureReason" (JD.nullable JD.string) Nothing




{-| One of

* `LayerFailureCode_InvalidLayerDigest`
* `LayerFailureCode_MissingLayerDigest`

-}
type LayerFailureCode
    = LayerFailureCode_InvalidLayerDigest
    | LayerFailureCode_MissingLayerDigest



layerFailureCodeDecoder : JD.Decoder LayerFailureCode
layerFailureCodeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InvalidLayerDigest" ->
                        JD.succeed LayerFailureCode_InvalidLayerDigest

                    "MissingLayerDigest" ->
                        JD.succeed LayerFailureCode_MissingLayerDigest


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified layer is not available because it is not associated with an image. Unassociated image layers may be cleaned up at any time.</p>
-}
type alias LayerInaccessibleException =
    { message : Maybe String
    }



layerInaccessibleExceptionDecoder : JD.Decoder LayerInaccessibleException
layerInaccessibleExceptionDecoder =
    JDP.decode LayerInaccessibleException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Layer parts must be at least 5 MiB in size.</p>
-}
type alias LayerPartTooSmallException =
    { message : Maybe String
    }



layerPartTooSmallExceptionDecoder : JD.Decoder LayerPartTooSmallException
layerPartTooSmallExceptionDecoder =
    JDP.decode LayerPartTooSmallException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified layers could not be found, or the specified layer is not valid for this repository.</p>
-}
type alias LayersNotFoundException =
    { message : Maybe String
    }



layersNotFoundExceptionDecoder : JD.Decoder LayersNotFoundException
layersNotFoundExceptionDecoder =
    JDP.decode LayersNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The operation did not succeed because it would have exceeded a service limit for your account. For more information, see <a href="http://docs.aws.amazon.com/AmazonECR/latest/userguide/service_limits.html">Amazon ECR Default Service Limits</a> in the Amazon EC2 Container Registry User Guide.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An object representing a filter on a <a>ListImages</a> operation.</p>
-}
type alias ListImagesFilter =
    { tagStatus : Maybe TagStatus
    }



listImagesFilterDecoder : JD.Decoder ListImagesFilter
listImagesFilterDecoder =
    JDP.decode ListImagesFilter
        |> JDP.optional "tagStatus" (JD.nullable tagStatusDecoder) Nothing




{-| Type of HTTP response from listImages
-}
type alias ListImagesResponse =
    { imageIds : Maybe (List ImageIdentifier)
    , nextToken : Maybe String
    }



listImagesResponseDecoder : JD.Decoder ListImagesResponse
listImagesResponseDecoder =
    JDP.decode ListImagesResponse
        |> JDP.optional "imageIds" (JD.nullable (JD.list imageIdentifierDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putImage
-}
type alias PutImageResponse =
    { image : Maybe Image
    }



putImageResponseDecoder : JD.Decoder PutImageResponse
putImageResponseDecoder =
    JDP.decode PutImageResponse
        |> JDP.optional "image" (JD.nullable imageDecoder) Nothing




{-| <p>An object representing a repository.</p>
-}
type alias Repository =
    { repositoryArn : Maybe String
    , registryId : Maybe String
    , repositoryName : Maybe String
    , repositoryUri : Maybe String
    , createdAt : Maybe Date
    }



repositoryDecoder : JD.Decoder Repository
repositoryDecoder =
    JDP.decode Repository
        |> JDP.optional "repositoryArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryUri" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing




{-| <p>The specified repository already exists in the specified registry.</p>
-}
type alias RepositoryAlreadyExistsException =
    { message : Maybe String
    }



repositoryAlreadyExistsExceptionDecoder : JD.Decoder RepositoryAlreadyExistsException
repositoryAlreadyExistsExceptionDecoder =
    JDP.decode RepositoryAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified repository contains images. To delete a repository that contains images, you must force the deletion with the <code>force</code> parameter.</p>
-}
type alias RepositoryNotEmptyException =
    { message : Maybe String
    }



repositoryNotEmptyExceptionDecoder : JD.Decoder RepositoryNotEmptyException
repositoryNotEmptyExceptionDecoder =
    JDP.decode RepositoryNotEmptyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified repository could not be found. Check the spelling of the specified repository and ensure that you are performing operations on the correct registry.</p>
-}
type alias RepositoryNotFoundException =
    { message : Maybe String
    }



repositoryNotFoundExceptionDecoder : JD.Decoder RepositoryNotFoundException
repositoryNotFoundExceptionDecoder =
    JDP.decode RepositoryNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified repository and registry combination does not have an associated repository policy.</p>
-}
type alias RepositoryPolicyNotFoundException =
    { message : Maybe String
    }



repositoryPolicyNotFoundExceptionDecoder : JD.Decoder RepositoryPolicyNotFoundException
repositoryPolicyNotFoundExceptionDecoder =
    JDP.decode RepositoryPolicyNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>These errors are usually caused by a server-side issue.</p>
-}
type alias ServerException =
    { message : Maybe String
    }



serverExceptionDecoder : JD.Decoder ServerException
serverExceptionDecoder =
    JDP.decode ServerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from setRepositoryPolicy
-}
type alias SetRepositoryPolicyResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , policyText : Maybe String
    }



setRepositoryPolicyResponseDecoder : JD.Decoder SetRepositoryPolicyResponse
setRepositoryPolicyResponseDecoder =
    JDP.decode SetRepositoryPolicyResponse
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyText" (JD.nullable JD.string) Nothing




{-| One of

* `TagStatus_TAGGED`
* `TagStatus_UNTAGGED`

-}
type TagStatus
    = TagStatus_TAGGED
    | TagStatus_UNTAGGED



tagStatusDecoder : JD.Decoder TagStatus
tagStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "TAGGED" ->
                        JD.succeed TagStatus_TAGGED

                    "UNTAGGED" ->
                        JD.succeed TagStatus_UNTAGGED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from uploadLayerPart
-}
type alias UploadLayerPartResponse =
    { registryId : Maybe String
    , repositoryName : Maybe String
    , uploadId : Maybe String
    , lastByteReceived : Maybe Int
    }



uploadLayerPartResponseDecoder : JD.Decoder UploadLayerPartResponse
uploadLayerPartResponseDecoder =
    JDP.decode UploadLayerPartResponse
        |> JDP.optional "registryId" (JD.nullable JD.string) Nothing
        |> JDP.optional "repositoryName" (JD.nullable JD.string) Nothing
        |> JDP.optional "uploadId" (JD.nullable JD.string) Nothing
        |> JDP.optional "lastByteReceived" (JD.nullable JD.int) Nothing




{-| <p>The upload could not be found, or the specified upload id is not valid for this repository.</p>
-}
type alias UploadNotFoundException =
    { message : Maybe String
    }



uploadNotFoundExceptionDecoder : JD.Decoder UploadNotFoundException
uploadNotFoundExceptionDecoder =
    JDP.decode UploadNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




