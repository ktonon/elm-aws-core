module AWS.Services.Rekognition
    exposing
        ( config
        , compareFaces
        , CompareFacesOptions
        , createCollection
        , deleteCollection
        , deleteFaces
        , detectFaces
        , DetectFacesOptions
        , detectLabels
        , DetectLabelsOptions
        , indexFaces
        , IndexFacesOptions
        , listCollections
        , ListCollectionsOptions
        , listFaces
        , ListFacesOptions
        , searchFaces
        , SearchFacesOptions
        , searchFacesByImage
        , SearchFacesByImageOptions
        , AccessDeniedException
        , Attribute(..)
        , Beard
        , BoundingBox
        , CompareFacesMatch
        , CompareFacesResponse
        , ComparedFace
        , ComparedSourceImageFace
        , CreateCollectionResponse
        , DeleteCollectionResponse
        , DeleteFacesResponse
        , DetectFacesResponse
        , DetectLabelsResponse
        , Emotion
        , EmotionName(..)
        , EyeOpen
        , Eyeglasses
        , Face
        , FaceDetail
        , FaceMatch
        , FaceRecord
        , Gender
        , GenderType(..)
        , Image
        , ImageQuality
        , ImageTooLargeException
        , IndexFacesResponse
        , InternalServerError
        , InvalidImageFormatException
        , InvalidPaginationTokenException
        , InvalidParameterException
        , InvalidS3ObjectException
        , Label
        , Landmark
        , LandmarkType(..)
        , ListCollectionsResponse
        , ListFacesResponse
        , MouthOpen
        , Mustache
        , OrientationCorrection(..)
        , Pose
        , ProvisionedThroughputExceededException
        , ResourceAlreadyExistsException
        , ResourceNotFoundException
        , S3Object
        , SearchFacesByImageResponse
        , SearchFacesResponse
        , Smile
        , Sunglasses
        , ThrottlingException
        )

{-| <p>This is the Amazon Rekognition API reference.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [compareFaces](#compareFaces)
* [CompareFacesOptions](#CompareFacesOptions)
* [createCollection](#createCollection)
* [deleteCollection](#deleteCollection)
* [deleteFaces](#deleteFaces)
* [detectFaces](#detectFaces)
* [DetectFacesOptions](#DetectFacesOptions)
* [detectLabels](#detectLabels)
* [DetectLabelsOptions](#DetectLabelsOptions)
* [indexFaces](#indexFaces)
* [IndexFacesOptions](#IndexFacesOptions)
* [listCollections](#listCollections)
* [ListCollectionsOptions](#ListCollectionsOptions)
* [listFaces](#listFaces)
* [ListFacesOptions](#ListFacesOptions)
* [searchFaces](#searchFaces)
* [SearchFacesOptions](#SearchFacesOptions)
* [searchFacesByImage](#searchFacesByImage)
* [SearchFacesByImageOptions](#SearchFacesByImageOptions)


@docs compareFaces,CompareFacesOptions,createCollection,deleteCollection,deleteFaces,detectFaces,DetectFacesOptions,detectLabels,DetectLabelsOptions,indexFaces,IndexFacesOptions,listCollections,ListCollectionsOptions,listFaces,ListFacesOptions,searchFaces,SearchFacesOptions,searchFacesByImage,SearchFacesByImageOptions

## Responses

* [CompareFacesResponse](#CompareFacesResponse)
* [CreateCollectionResponse](#CreateCollectionResponse)
* [DeleteCollectionResponse](#DeleteCollectionResponse)
* [DeleteFacesResponse](#DeleteFacesResponse)
* [DetectFacesResponse](#DetectFacesResponse)
* [DetectLabelsResponse](#DetectLabelsResponse)
* [IndexFacesResponse](#IndexFacesResponse)
* [ListCollectionsResponse](#ListCollectionsResponse)
* [ListFacesResponse](#ListFacesResponse)
* [SearchFacesByImageResponse](#SearchFacesByImageResponse)
* [SearchFacesResponse](#SearchFacesResponse)


@docs CompareFacesResponse,CreateCollectionResponse,DeleteCollectionResponse,DeleteFacesResponse,DetectFacesResponse,DetectLabelsResponse,IndexFacesResponse,ListCollectionsResponse,ListFacesResponse,SearchFacesByImageResponse,SearchFacesResponse

## Records

* [Beard](#Beard)
* [BoundingBox](#BoundingBox)
* [CompareFacesMatch](#CompareFacesMatch)
* [ComparedFace](#ComparedFace)
* [ComparedSourceImageFace](#ComparedSourceImageFace)
* [Emotion](#Emotion)
* [EyeOpen](#EyeOpen)
* [Eyeglasses](#Eyeglasses)
* [Face](#Face)
* [FaceDetail](#FaceDetail)
* [FaceMatch](#FaceMatch)
* [FaceRecord](#FaceRecord)
* [Gender](#Gender)
* [Image](#Image)
* [ImageQuality](#ImageQuality)
* [Label](#Label)
* [Landmark](#Landmark)
* [MouthOpen](#MouthOpen)
* [Mustache](#Mustache)
* [Pose](#Pose)
* [S3Object](#S3Object)
* [Smile](#Smile)
* [Sunglasses](#Sunglasses)


@docs Beard,BoundingBox,CompareFacesMatch,ComparedFace,ComparedSourceImageFace,Emotion,EyeOpen,Eyeglasses,Face,FaceDetail,FaceMatch,FaceRecord,Gender,Image,ImageQuality,Label,Landmark,MouthOpen,Mustache,Pose,S3Object,Smile,Sunglasses

## Unions

* [Attribute](#Attribute)
* [EmotionName](#EmotionName)
* [GenderType](#GenderType)
* [LandmarkType](#LandmarkType)
* [OrientationCorrection](#OrientationCorrection)


@docs Attribute,EmotionName,GenderType,LandmarkType,OrientationCorrection

## Exceptions

* [AccessDeniedException](#AccessDeniedException)
* [ImageTooLargeException](#ImageTooLargeException)
* [InternalServerError](#InternalServerError)
* [InvalidImageFormatException](#InvalidImageFormatException)
* [InvalidPaginationTokenException](#InvalidPaginationTokenException)
* [InvalidParameterException](#InvalidParameterException)
* [InvalidS3ObjectException](#InvalidS3ObjectException)
* [ProvisionedThroughputExceededException](#ProvisionedThroughputExceededException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ThrottlingException](#ThrottlingException)


@docs AccessDeniedException,ImageTooLargeException,InternalServerError,InvalidImageFormatException,InvalidPaginationTokenException,InvalidParameterException,InvalidS3ObjectException,ProvisionedThroughputExceededException,ResourceAlreadyExistsException,ResourceNotFoundException,ThrottlingException

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "rekognition"
        "2016-06-27"
        "1.1"
        "AWSREKOGNITION_20160627."
        "rekognition.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Compares a face in the <i>source</i> input image with each face detected in the <i>target</i> input image. </p> <note> <p> If the source image contains multiple faces, the service detects the largest face and uses it to compare with each face detected in the target image. </p> </note> <p>In response, the operation returns an array of face matches ordered by similarity score with the highest similarity scores first. For each face match, the response provides a bounding box of the face and <code>confidence</code> value (indicating the level of confidence that the bounding box contains a face). The response also provides a <code>similarity</code> score, which indicates how closely the faces match. </p> <note> <p>By default, only faces with the similarity score of greater than or equal to 80% are returned in the response. You can change this value.</p> </note> <p>In addition to the face matches, the response returns information about the face in the source image, including the bounding box of the face and confidence value.</p> <note> <p> This is a stateless API operation. That is, the operation does not persist any data.</p> </note> <p>For an example, see <a>get-started-exercise-compare-faces</a> </p> <p>This operation requires permissions to perform the <code>rekognition:CompareFaces</code> action.</p>

__Required Parameters__

* `sourceImage` __:__ `Image`
* `targetImage` __:__ `Image`


-}
compareFaces :
    Image
    -> Image
    -> (CompareFacesOptions -> CompareFacesOptions)
    -> AWS.Http.UnsignedRequest CompareFacesResponse
compareFaces sourceImage targetImage setOptions =
  let
    options = setOptions (CompareFacesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CompareFaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        compareFacesResponseDecoder


{-| Options for a compareFaces request
-}
type alias CompareFacesOptions =
    { similarityThreshold : Maybe Float
    }



{-| <p>Creates a collection in an AWS Region. You can add faces to the collection using the operation. </p> <p>For example, you might create collections, one for each of your application users. A user can then index faces using the <code>IndexFaces</code> operation and persist results in a specific collection. Then, a user can search the collection for faces in the user-specific container. </p> <p>For an example, see <a>example1</a>. </p> <p>This operation requires permissions to perform the <code>rekognition:CreateCollection</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`


-}
createCollection :
    String
    -> AWS.Http.UnsignedRequest CreateCollectionResponse
createCollection collectionId =
    AWS.Http.unsignedRequest
        "CreateCollection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createCollectionResponseDecoder



{-| <p>Deletes the specified collection. Note that this operation removes all faces in the collection. For an example, see <a>example1</a>.</p> <p>This operation requires permissions to perform the <code>rekognition:DeleteCollection</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`


-}
deleteCollection :
    String
    -> AWS.Http.UnsignedRequest DeleteCollectionResponse
deleteCollection collectionId =
    AWS.Http.unsignedRequest
        "DeleteCollection"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteCollectionResponseDecoder



{-| <p>Deletes faces from a collection. You specify a collection ID and an array of face IDs to remove from the collection.</p> <p>This operation requires permissions to perform the <code>rekognition:DeleteFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `faceIds` __:__ `(List String)`


-}
deleteFaces :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest DeleteFacesResponse
deleteFaces collectionId faceIds =
    AWS.Http.unsignedRequest
        "DeleteFaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteFacesResponseDecoder



{-| <p>Detects faces within an image (JPEG or PNG) that is provided as input.</p> <p> For each face detected, the operation returns face details including a bounding box of the face, a confidence value (that the bounding box contains a face), and a fixed set of attributes such as facial landmarks (for example, coordinates of eye and mouth), gender, presence of beard, sunglasses, etc. </p> <p>The face-detection algorithm is most effective on frontal faces. For non-frontal or obscured faces, the algorithm may not detect the faces or might detect faces with lower confidence. </p> <note> <p>This is a stateless API operation. That is, the operation does not persist any data.</p> </note> <p>For an example, see <a>get-started-exercise-detect-faces</a>.</p> <p>This operation requires permissions to perform the <code>rekognition:DetectFaces</code> action. </p>

__Required Parameters__

* `image` __:__ `Image`


-}
detectFaces :
    Image
    -> (DetectFacesOptions -> DetectFacesOptions)
    -> AWS.Http.UnsignedRequest DetectFacesResponse
detectFaces image setOptions =
  let
    options = setOptions (DetectFacesOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DetectFaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detectFacesResponseDecoder


{-| Options for a detectFaces request
-}
type alias DetectFacesOptions =
    { attributes : Maybe (List Attribute)
    }



{-| <p>Detects instances of real-world labels within an image (JPEG or PNG) provided as input. This includes objects like flower, tree, and table; events like wedding, graduation, and birthday party; and concepts like landscape, evening, and nature. For an example, see <a>get-started-exercise-detect-labels</a>.</p> <p> For each object, scene, and concept the API returns one or more labels. Each label provides the object name, and the level of confidence that the image contains the object. For example, suppose the input image has a lighthouse, the sea, and a rock. The response will include all three labels, one for each object. </p> <p> <code>{Name: lighthouse, Confidence: 98.4629}</code> </p> <p> <code>{Name: rock,Confidence: 79.2097}</code> </p> <p> <code> {Name: sea,Confidence: 75.061}</code> </p> <p> In the preceding example, the operation returns one label for each of the three objects. The operation can also return multiple labels for the same object in the image. For example, if the input image shows a flower (for example, a tulip), the operation might return the following three labels. </p> <p> <code>{Name: flower,Confidence: 99.0562}</code> </p> <p> <code>{Name: plant,Confidence: 99.0562}</code> </p> <p> <code>{Name: tulip,Confidence: 99.0562}</code> </p> <p>In this example, the detection algorithm more precisely identifies the flower as a tulip.</p> <p>You can provide the input image as an S3 object or as base64-encoded bytes. In response, the API returns an array of labels. In addition, the response also includes the orientation correction. Optionally, you can specify <code>MinConfidence</code> to control the confidence threshold for the labels returned. The default is 50%. You can also add the <code>MaxLabels</code> parameter to limit the number of labels returned. </p> <note> <p>If the object detected is a person, the operation doesn't provide the same facial details that the <a>DetectFaces</a> operation provides.</p> </note> <p>This is a stateless API operation. That is, the operation does not persist any data.</p> <p>This operation requires permissions to perform the <code>rekognition:DetectLabels</code> action. </p>

__Required Parameters__

* `image` __:__ `Image`


-}
detectLabels :
    Image
    -> (DetectLabelsOptions -> DetectLabelsOptions)
    -> AWS.Http.UnsignedRequest DetectLabelsResponse
detectLabels image setOptions =
  let
    options = setOptions (DetectLabelsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "DetectLabels"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        detectLabelsResponseDecoder


{-| Options for a detectLabels request
-}
type alias DetectLabelsOptions =
    { maxLabels : Maybe Int
    , minConfidence : Maybe Float
    }



{-| <p>Detects faces in the input image and adds them to the specified collection. </p> <p> Amazon Rekognition does not save the actual faces detected. Instead, the underlying detection algorithm first detects the faces in the input image, and for each face extracts facial features into a feature vector, and stores it in the back-end database. Amazon Rekognition uses feature vectors when performing face match and search operations using the and operations. </p> <p>If you provide the optional <code>externalImageID</code> for the input image you provided, Amazon Rekognition associates this ID with all faces that it detects. When you call the operation, the response returns the external ID. You can use this external image ID to create a client-side index to associate the faces with each image. You can then use the index to find all faces in an image. </p> <p>In response, the operation returns an array of metadata for all detected faces. This includes, the bounding box of the detected face, confidence value (indicating the bounding box contains a face), a face ID assigned by the service for each face that is detected and stored, and an image ID assigned by the service for the input image If you request all facial attributes (using the <code>detectionAttributes</code> parameter, Amazon Rekognition returns detailed facial attributes such as facial landmarks (for example, location of eye and mount) and other facial attributes such gender. If you provide the same image, specify the same collection, and use the same external ID in the <code>IndexFaces</code> operation, Amazon Rekognition doesn't save duplicate face metadata. </p> <p>For an example, see <a>example2</a>.</p> <p>This operation requires permissions to perform the <code>rekognition:IndexFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `image` __:__ `Image`


-}
indexFaces :
    String
    -> Image
    -> (IndexFacesOptions -> IndexFacesOptions)
    -> AWS.Http.UnsignedRequest IndexFacesResponse
indexFaces collectionId image setOptions =
  let
    options = setOptions (IndexFacesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "IndexFaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        indexFacesResponseDecoder


{-| Options for a indexFaces request
-}
type alias IndexFacesOptions =
    { externalImageId : Maybe String
    , detectionAttributes : Maybe (List Attribute)
    }



{-| <p>Returns list of collection IDs in your account. If the result is truncated, the response also provides a <code>NextToken</code> that you can use in the subsequent request to fetch the next set of collection IDs.</p> <p>For an example, see <a>example1</a>.</p> <p>This operation requires permissions to perform the <code>rekognition:ListCollections</code> action.</p>

__Required Parameters__



-}
listCollections :
    (ListCollectionsOptions -> ListCollectionsOptions)
    -> AWS.Http.UnsignedRequest ListCollectionsResponse
listCollections setOptions =
  let
    options = setOptions (ListCollectionsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCollections"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listCollectionsResponseDecoder


{-| Options for a listCollections request
-}
type alias ListCollectionsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns metadata for faces in the specified collection. This metadata includes information such as the bounding box coordinates, the confidence (that the bounding box contains a face), and face ID. For an example, see <a>example3</a>. </p> <p>This operation requires permissions to perform the <code>rekognition:ListFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`


-}
listFaces :
    String
    -> (ListFacesOptions -> ListFacesOptions)
    -> AWS.Http.UnsignedRequest ListFacesResponse
listFaces collectionId setOptions =
  let
    options = setOptions (ListFacesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListFaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listFacesResponseDecoder


{-| Options for a listFaces request
-}
type alias ListFacesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>For a given input face ID, searches for matching faces in the collection the face belongs to. You get a face ID when you add a face to the collection using the <a>IndexFaces</a> operation. The operation compares the features of the input face with faces in the specified collection. </p> <note> <p>You can also search faces without indexing faces by using the <code>SearchFacesByImage</code> operation.</p> </note> <p> The operation response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match that is found. Along with the metadata, the response also includes a <code>confidence</code> value for each face match, indicating the confidence that the specific face matches the input face. </p> <p>For an example, see <a>example3</a>.</p> <p>This operation requires permissions to perform the <code>rekognition:SearchFaces</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `faceId` __:__ `String`


-}
searchFaces :
    String
    -> String
    -> (SearchFacesOptions -> SearchFacesOptions)
    -> AWS.Http.UnsignedRequest SearchFacesResponse
searchFaces collectionId faceId setOptions =
  let
    options = setOptions (SearchFacesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SearchFaces"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        searchFacesResponseDecoder


{-| Options for a searchFaces request
-}
type alias SearchFacesOptions =
    { maxFaces : Maybe Int
    , faceMatchThreshold : Maybe Float
    }



{-| <p>For a given input image, first detects the largest face in the image, and then searches the specified collection for matching faces. The operation compares the features of the input face with faces in the specified collection. </p> <note> <p> To search for all faces in an input image, you might first call the operation, and then use the face IDs returned in subsequent calls to the operation. </p> <p> You can also call the <code>DetectFaces</code> operation and use the bounding boxes in the response to make face crops, which then you can pass in to the <code>SearchFacesByImage</code> operation. </p> </note> <p> The response returns an array of faces that match, ordered by similarity score with the highest similarity first. More specifically, it is an array of metadata for each face match found. Along with the metadata, the response also includes a <code>similarity</code> indicating how similar the face is to the input face. In the response, the operation also returns the bounding box (and a confidence level that the bounding box contains a face) of the face that Amazon Rekognition used for the input image. </p> <p>For an example, see <a>example3</a>.</p> <p>This operation requires permissions to perform the <code>rekognition:SearchFacesByImage</code> action.</p>

__Required Parameters__

* `collectionId` __:__ `String`
* `image` __:__ `Image`


-}
searchFacesByImage :
    String
    -> Image
    -> (SearchFacesByImageOptions -> SearchFacesByImageOptions)
    -> AWS.Http.UnsignedRequest SearchFacesByImageResponse
searchFacesByImage collectionId image setOptions =
  let
    options = setOptions (SearchFacesByImageOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "SearchFacesByImage"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        searchFacesByImageResponseDecoder


{-| Options for a searchFacesByImage request
-}
type alias SearchFacesByImageOptions =
    { maxFaces : Maybe Int
    , faceMatchThreshold : Maybe Float
    }




{-| <p>You are not authorized to perform the action.</p>
-}
type alias AccessDeniedException =
    { 
    }



accessDeniedExceptionDecoder : JD.Decoder AccessDeniedException
accessDeniedExceptionDecoder =
    JDP.decode AccessDeniedException



{-| One of

* `Attribute_DEFAULT`
* `Attribute_ALL`

-}
type Attribute
    = Attribute_DEFAULT
    | Attribute_ALL



attributeDecoder : JD.Decoder Attribute
attributeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEFAULT" ->
                        JD.succeed Attribute_DEFAULT

                    "ALL" ->
                        JD.succeed Attribute_ALL


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates whether or not the face has a beard, and the confidence level in the determination.</p>
-}
type alias Beard =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



beardDecoder : JD.Decoder Beard
beardDecoder =
    JDP.decode Beard
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Identifies the bounding box around the object or face. The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p> <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p> <p> The <code>width</code> and <code>height</code> values represent the dimensions of the bounding box as a ratio of the overall image dimension. For example, if the input image is 700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p> <note> <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is able to detect a face that is at the image edge and is only partially visible, the service can return coordinates that are outside the image bounds and, depending on the image edge, you might get negative values or values greater than 1 for the <code>left</code> or <code>top</code> values. </p> </note>
-}
type alias BoundingBox =
    { width : Maybe Float
    , height : Maybe Float
    , left : Maybe Float
    , top : Maybe Float
    }



boundingBoxDecoder : JD.Decoder BoundingBox
boundingBoxDecoder =
    JDP.decode BoundingBox
        |> JDP.optional "width" (JD.nullable JD.float) Nothing
        |> JDP.optional "height" (JD.nullable JD.float) Nothing
        |> JDP.optional "left" (JD.nullable JD.float) Nothing
        |> JDP.optional "top" (JD.nullable JD.float) Nothing




{-| <p>For the provided the bounding box, confidence level that the bounding box actually contains a face, and the similarity between the face in the bounding box and the face in the source image.</p>
-}
type alias CompareFacesMatch =
    { similarity : Maybe Float
    , face : Maybe ComparedFace
    }



compareFacesMatchDecoder : JD.Decoder CompareFacesMatch
compareFacesMatchDecoder =
    JDP.decode CompareFacesMatch
        |> JDP.optional "similarity" (JD.nullable JD.float) Nothing
        |> JDP.optional "face" (JD.nullable comparedFaceDecoder) Nothing




{-| Type of HTTP response from compareFaces
-}
type alias CompareFacesResponse =
    { sourceImageFace : Maybe ComparedSourceImageFace
    , faceMatches : Maybe (List CompareFacesMatch)
    }



compareFacesResponseDecoder : JD.Decoder CompareFacesResponse
compareFacesResponseDecoder =
    JDP.decode CompareFacesResponse
        |> JDP.optional "sourceImageFace" (JD.nullable comparedSourceImageFaceDecoder) Nothing
        |> JDP.optional "faceMatches" (JD.nullable (JD.list compareFacesMatchDecoder)) Nothing




{-| <p>Provides face metadata (bounding box and confidence that the bounding box actually contains a face).</p>
-}
type alias ComparedFace =
    { boundingBox : Maybe BoundingBox
    , confidence : Maybe Float
    }



comparedFaceDecoder : JD.Decoder ComparedFace
comparedFaceDecoder =
    JDP.decode ComparedFace
        |> JDP.optional "boundingBox" (JD.nullable boundingBoxDecoder) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Type that describes the face Amazon Rekognition chose to compare with the faces in the target. This contains a bounding box for the selected face and confidence level that the bounding box contains a face. Note that Amazon Rekognition selects the largest face in the source image for this comparison. </p>
-}
type alias ComparedSourceImageFace =
    { boundingBox : Maybe BoundingBox
    , confidence : Maybe Float
    }



comparedSourceImageFaceDecoder : JD.Decoder ComparedSourceImageFace
comparedSourceImageFaceDecoder =
    JDP.decode ComparedSourceImageFace
        |> JDP.optional "boundingBox" (JD.nullable boundingBoxDecoder) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| Type of HTTP response from createCollection
-}
type alias CreateCollectionResponse =
    { statusCode : Maybe Int
    , collectionArn : Maybe String
    }



createCollectionResponseDecoder : JD.Decoder CreateCollectionResponse
createCollectionResponseDecoder =
    JDP.decode CreateCollectionResponse
        |> JDP.optional "statusCode" (JD.nullable JD.int) Nothing
        |> JDP.optional "collectionArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteCollection
-}
type alias DeleteCollectionResponse =
    { statusCode : Maybe Int
    }



deleteCollectionResponseDecoder : JD.Decoder DeleteCollectionResponse
deleteCollectionResponseDecoder =
    JDP.decode DeleteCollectionResponse
        |> JDP.optional "statusCode" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from deleteFaces
-}
type alias DeleteFacesResponse =
    { deletedFaces : Maybe (List String)
    }



deleteFacesResponseDecoder : JD.Decoder DeleteFacesResponse
deleteFacesResponseDecoder =
    JDP.decode DeleteFacesResponse
        |> JDP.optional "deletedFaces" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from detectFaces
-}
type alias DetectFacesResponse =
    { faceDetails : Maybe (List FaceDetail)
    , orientationCorrection : Maybe OrientationCorrection
    }



detectFacesResponseDecoder : JD.Decoder DetectFacesResponse
detectFacesResponseDecoder =
    JDP.decode DetectFacesResponse
        |> JDP.optional "faceDetails" (JD.nullable (JD.list faceDetailDecoder)) Nothing
        |> JDP.optional "orientationCorrection" (JD.nullable orientationCorrectionDecoder) Nothing




{-| Type of HTTP response from detectLabels
-}
type alias DetectLabelsResponse =
    { labels : Maybe (List Label)
    , orientationCorrection : Maybe OrientationCorrection
    }



detectLabelsResponseDecoder : JD.Decoder DetectLabelsResponse
detectLabelsResponseDecoder =
    JDP.decode DetectLabelsResponse
        |> JDP.optional "labels" (JD.nullable (JD.list labelDecoder)) Nothing
        |> JDP.optional "orientationCorrection" (JD.nullable orientationCorrectionDecoder) Nothing




{-| <p>The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY.</p>
-}
type alias Emotion =
    { type_ : Maybe EmotionName
    , confidence : Maybe Float
    }



emotionDecoder : JD.Decoder Emotion
emotionDecoder =
    JDP.decode Emotion
        |> JDP.optional "type_" (JD.nullable emotionNameDecoder) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| One of

* `EmotionName_HAPPY`
* `EmotionName_SAD`
* `EmotionName_ANGRY`
* `EmotionName_CONFUSED`
* `EmotionName_DISGUSTED`
* `EmotionName_SURPRISED`
* `EmotionName_CALM`
* `EmotionName_UNKNOWN`

-}
type EmotionName
    = EmotionName_HAPPY
    | EmotionName_SAD
    | EmotionName_ANGRY
    | EmotionName_CONFUSED
    | EmotionName_DISGUSTED
    | EmotionName_SURPRISED
    | EmotionName_CALM
    | EmotionName_UNKNOWN



emotionNameDecoder : JD.Decoder EmotionName
emotionNameDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "HAPPY" ->
                        JD.succeed EmotionName_HAPPY

                    "SAD" ->
                        JD.succeed EmotionName_SAD

                    "ANGRY" ->
                        JD.succeed EmotionName_ANGRY

                    "CONFUSED" ->
                        JD.succeed EmotionName_CONFUSED

                    "DISGUSTED" ->
                        JD.succeed EmotionName_DISGUSTED

                    "SURPRISED" ->
                        JD.succeed EmotionName_SURPRISED

                    "CALM" ->
                        JD.succeed EmotionName_CALM

                    "UNKNOWN" ->
                        JD.succeed EmotionName_UNKNOWN


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates whether or not the eyes on the face are open, and the confidence level in the determination.</p>
-}
type alias EyeOpen =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



eyeOpenDecoder : JD.Decoder EyeOpen
eyeOpenDecoder =
    JDP.decode EyeOpen
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.</p>
-}
type alias Eyeglasses =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



eyeglassesDecoder : JD.Decoder Eyeglasses
eyeglassesDecoder =
    JDP.decode Eyeglasses
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Describes the face properties such as the bounding box, face ID, image ID of the source image, and external image ID that you assigned. </p>
-}
type alias Face =
    { faceId : Maybe String
    , boundingBox : Maybe BoundingBox
    , imageId : Maybe String
    , externalImageId : Maybe String
    , confidence : Maybe Float
    }



faceDecoder : JD.Decoder Face
faceDecoder =
    JDP.decode Face
        |> JDP.optional "faceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "boundingBox" (JD.nullable boundingBoxDecoder) Nothing
        |> JDP.optional "imageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "externalImageId" (JD.nullable JD.string) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Structure containing attributes of the face that the algorithm detected.</p>
-}
type alias FaceDetail =
    { boundingBox : Maybe BoundingBox
    , smile : Maybe Smile
    , eyeglasses : Maybe Eyeglasses
    , sunglasses : Maybe Sunglasses
    , gender : Maybe Gender
    , beard : Maybe Beard
    , mustache : Maybe Mustache
    , eyesOpen : Maybe EyeOpen
    , mouthOpen : Maybe MouthOpen
    , emotions : Maybe (List Emotion)
    , landmarks : Maybe (List Landmark)
    , pose : Maybe Pose
    , quality : Maybe ImageQuality
    , confidence : Maybe Float
    }



faceDetailDecoder : JD.Decoder FaceDetail
faceDetailDecoder =
    JDP.decode FaceDetail
        |> JDP.optional "boundingBox" (JD.nullable boundingBoxDecoder) Nothing
        |> JDP.optional "smile" (JD.nullable smileDecoder) Nothing
        |> JDP.optional "eyeglasses" (JD.nullable eyeglassesDecoder) Nothing
        |> JDP.optional "sunglasses" (JD.nullable sunglassesDecoder) Nothing
        |> JDP.optional "gender" (JD.nullable genderDecoder) Nothing
        |> JDP.optional "beard" (JD.nullable beardDecoder) Nothing
        |> JDP.optional "mustache" (JD.nullable mustacheDecoder) Nothing
        |> JDP.optional "eyesOpen" (JD.nullable eyeOpenDecoder) Nothing
        |> JDP.optional "mouthOpen" (JD.nullable mouthOpenDecoder) Nothing
        |> JDP.optional "emotions" (JD.nullable (JD.list emotionDecoder)) Nothing
        |> JDP.optional "landmarks" (JD.nullable (JD.list landmarkDecoder)) Nothing
        |> JDP.optional "pose" (JD.nullable poseDecoder) Nothing
        |> JDP.optional "quality" (JD.nullable imageQualityDecoder) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Provides face metadata. In addition, it also provides the confidence in the match of this face with the input face.</p>
-}
type alias FaceMatch =
    { similarity : Maybe Float
    , face : Maybe Face
    }



faceMatchDecoder : JD.Decoder FaceMatch
faceMatchDecoder =
    JDP.decode FaceMatch
        |> JDP.optional "similarity" (JD.nullable JD.float) Nothing
        |> JDP.optional "face" (JD.nullable faceDecoder) Nothing




{-| <p>Object containing both the face metadata (stored in the back-end database) and facial attributes that are detected but aren't stored in the database.</p>
-}
type alias FaceRecord =
    { face : Maybe Face
    , faceDetail : Maybe FaceDetail
    }



faceRecordDecoder : JD.Decoder FaceRecord
faceRecordDecoder =
    JDP.decode FaceRecord
        |> JDP.optional "face" (JD.nullable faceDecoder) Nothing
        |> JDP.optional "faceDetail" (JD.nullable faceDetailDecoder) Nothing




{-| <p>Gender of the face and the confidence level in the determination.</p>
-}
type alias Gender =
    { value : Maybe GenderType
    , confidence : Maybe Float
    }



genderDecoder : JD.Decoder Gender
genderDecoder =
    JDP.decode Gender
        |> JDP.optional "value" (JD.nullable genderTypeDecoder) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| One of

* `GenderType_MALE`
* `GenderType_FEMALE`

-}
type GenderType
    = GenderType_MALE
    | GenderType_FEMALE



genderTypeDecoder : JD.Decoder GenderType
genderTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "MALE" ->
                        JD.succeed GenderType_MALE

                    "FEMALE" ->
                        JD.succeed GenderType_FEMALE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Provides the source image either as bytes or an S3 object.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>You may need to Base64-encode the image bytes depending on the language you are using and whether or not you are using the AWS SDK. For more information, see <a>example4</a>.</p> <p>If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes using the Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and then call the operation using the S3Object property.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>
-}
type alias Image =
    { bytes : Maybe String
    , s3Object : Maybe S3Object
    }



imageDecoder : JD.Decoder Image
imageDecoder =
    JDP.decode Image
        |> JDP.optional "bytes" (JD.nullable JD.string) Nothing
        |> JDP.optional "s3Object" (JD.nullable s3ObjectDecoder) Nothing




{-| <p>Identifies image brightness and sharpness. </p>
-}
type alias ImageQuality =
    { brightness : Maybe Float
    , sharpness : Maybe Float
    }



imageQualityDecoder : JD.Decoder ImageQuality
imageQualityDecoder =
    JDP.decode ImageQuality
        |> JDP.optional "brightness" (JD.nullable JD.float) Nothing
        |> JDP.optional "sharpness" (JD.nullable JD.float) Nothing




{-| <p>The input image size exceeds the allowed limit. For more information, see <a>limits</a>. </p>
-}
type alias ImageTooLargeException =
    { 
    }



imageTooLargeExceptionDecoder : JD.Decoder ImageTooLargeException
imageTooLargeExceptionDecoder =
    JDP.decode ImageTooLargeException



{-| Type of HTTP response from indexFaces
-}
type alias IndexFacesResponse =
    { faceRecords : Maybe (List FaceRecord)
    , orientationCorrection : Maybe OrientationCorrection
    }



indexFacesResponseDecoder : JD.Decoder IndexFacesResponse
indexFacesResponseDecoder =
    JDP.decode IndexFacesResponse
        |> JDP.optional "faceRecords" (JD.nullable (JD.list faceRecordDecoder)) Nothing
        |> JDP.optional "orientationCorrection" (JD.nullable orientationCorrectionDecoder) Nothing




{-| <p>Amazon Rekognition experienced a service issue. Try your call again.</p>
-}
type alias InternalServerError =
    { 
    }



internalServerErrorDecoder : JD.Decoder InternalServerError
internalServerErrorDecoder =
    JDP.decode InternalServerError



{-| <p>The provided image format is not supported. </p>
-}
type alias InvalidImageFormatException =
    { 
    }



invalidImageFormatExceptionDecoder : JD.Decoder InvalidImageFormatException
invalidImageFormatExceptionDecoder =
    JDP.decode InvalidImageFormatException



{-| <p>Pagination token in the request is not valid.</p>
-}
type alias InvalidPaginationTokenException =
    { 
    }



invalidPaginationTokenExceptionDecoder : JD.Decoder InvalidPaginationTokenException
invalidPaginationTokenExceptionDecoder =
    JDP.decode InvalidPaginationTokenException



{-| <p>Input parameter violated a constraint. Validate your parameter before calling the API operation again.</p>
-}
type alias InvalidParameterException =
    { 
    }



invalidParameterExceptionDecoder : JD.Decoder InvalidParameterException
invalidParameterExceptionDecoder =
    JDP.decode InvalidParameterException



{-| <p>Amazon Rekognition is unable to access the S3 object specified in the request.</p>
-}
type alias InvalidS3ObjectException =
    { 
    }



invalidS3ObjectExceptionDecoder : JD.Decoder InvalidS3ObjectException
invalidS3ObjectExceptionDecoder =
    JDP.decode InvalidS3ObjectException



{-| <p>Structure containing details about the detected label, including name, and level of confidence.</p>
-}
type alias Label =
    { name : Maybe String
    , confidence : Maybe Float
    }



labelDecoder : JD.Decoder Label
labelDecoder =
    JDP.decode Label
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Indicates the location of the landmark on the face.</p>
-}
type alias Landmark =
    { type_ : Maybe LandmarkType
    , x : Maybe Float
    , y : Maybe Float
    }



landmarkDecoder : JD.Decoder Landmark
landmarkDecoder =
    JDP.decode Landmark
        |> JDP.optional "type_" (JD.nullable landmarkTypeDecoder) Nothing
        |> JDP.optional "x" (JD.nullable JD.float) Nothing
        |> JDP.optional "y" (JD.nullable JD.float) Nothing




{-| One of

* `LandmarkType_EYE_LEFT`
* `LandmarkType_EYE_RIGHT`
* `LandmarkType_NOSE`
* `LandmarkType_MOUTH_LEFT`
* `LandmarkType_MOUTH_RIGHT`
* `LandmarkType_LEFT_EYEBROW_LEFT`
* `LandmarkType_LEFT_EYEBROW_RIGHT`
* `LandmarkType_LEFT_EYEBROW_UP`
* `LandmarkType_RIGHT_EYEBROW_LEFT`
* `LandmarkType_RIGHT_EYEBROW_RIGHT`
* `LandmarkType_RIGHT_EYEBROW_UP`
* `LandmarkType_LEFT_EYE_LEFT`
* `LandmarkType_LEFT_EYE_RIGHT`
* `LandmarkType_LEFT_EYE_UP`
* `LandmarkType_LEFT_EYE_DOWN`
* `LandmarkType_RIGHT_EYE_LEFT`
* `LandmarkType_RIGHT_EYE_RIGHT`
* `LandmarkType_RIGHT_EYE_UP`
* `LandmarkType_RIGHT_EYE_DOWN`
* `LandmarkType_NOSE_LEFT`
* `LandmarkType_NOSE_RIGHT`
* `LandmarkType_MOUTH_UP`
* `LandmarkType_MOUTH_DOWN`
* `LandmarkType_LEFT_PUPIL`
* `LandmarkType_RIGHT_PUPIL`

-}
type LandmarkType
    = LandmarkType_EYE_LEFT
    | LandmarkType_EYE_RIGHT
    | LandmarkType_NOSE
    | LandmarkType_MOUTH_LEFT
    | LandmarkType_MOUTH_RIGHT
    | LandmarkType_LEFT_EYEBROW_LEFT
    | LandmarkType_LEFT_EYEBROW_RIGHT
    | LandmarkType_LEFT_EYEBROW_UP
    | LandmarkType_RIGHT_EYEBROW_LEFT
    | LandmarkType_RIGHT_EYEBROW_RIGHT
    | LandmarkType_RIGHT_EYEBROW_UP
    | LandmarkType_LEFT_EYE_LEFT
    | LandmarkType_LEFT_EYE_RIGHT
    | LandmarkType_LEFT_EYE_UP
    | LandmarkType_LEFT_EYE_DOWN
    | LandmarkType_RIGHT_EYE_LEFT
    | LandmarkType_RIGHT_EYE_RIGHT
    | LandmarkType_RIGHT_EYE_UP
    | LandmarkType_RIGHT_EYE_DOWN
    | LandmarkType_NOSE_LEFT
    | LandmarkType_NOSE_RIGHT
    | LandmarkType_MOUTH_UP
    | LandmarkType_MOUTH_DOWN
    | LandmarkType_LEFT_PUPIL
    | LandmarkType_RIGHT_PUPIL



landmarkTypeDecoder : JD.Decoder LandmarkType
landmarkTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "EYE_LEFT" ->
                        JD.succeed LandmarkType_EYE_LEFT

                    "EYE_RIGHT" ->
                        JD.succeed LandmarkType_EYE_RIGHT

                    "NOSE" ->
                        JD.succeed LandmarkType_NOSE

                    "MOUTH_LEFT" ->
                        JD.succeed LandmarkType_MOUTH_LEFT

                    "MOUTH_RIGHT" ->
                        JD.succeed LandmarkType_MOUTH_RIGHT

                    "LEFT_EYEBROW_LEFT" ->
                        JD.succeed LandmarkType_LEFT_EYEBROW_LEFT

                    "LEFT_EYEBROW_RIGHT" ->
                        JD.succeed LandmarkType_LEFT_EYEBROW_RIGHT

                    "LEFT_EYEBROW_UP" ->
                        JD.succeed LandmarkType_LEFT_EYEBROW_UP

                    "RIGHT_EYEBROW_LEFT" ->
                        JD.succeed LandmarkType_RIGHT_EYEBROW_LEFT

                    "RIGHT_EYEBROW_RIGHT" ->
                        JD.succeed LandmarkType_RIGHT_EYEBROW_RIGHT

                    "RIGHT_EYEBROW_UP" ->
                        JD.succeed LandmarkType_RIGHT_EYEBROW_UP

                    "LEFT_EYE_LEFT" ->
                        JD.succeed LandmarkType_LEFT_EYE_LEFT

                    "LEFT_EYE_RIGHT" ->
                        JD.succeed LandmarkType_LEFT_EYE_RIGHT

                    "LEFT_EYE_UP" ->
                        JD.succeed LandmarkType_LEFT_EYE_UP

                    "LEFT_EYE_DOWN" ->
                        JD.succeed LandmarkType_LEFT_EYE_DOWN

                    "RIGHT_EYE_LEFT" ->
                        JD.succeed LandmarkType_RIGHT_EYE_LEFT

                    "RIGHT_EYE_RIGHT" ->
                        JD.succeed LandmarkType_RIGHT_EYE_RIGHT

                    "RIGHT_EYE_UP" ->
                        JD.succeed LandmarkType_RIGHT_EYE_UP

                    "RIGHT_EYE_DOWN" ->
                        JD.succeed LandmarkType_RIGHT_EYE_DOWN

                    "NOSE_LEFT" ->
                        JD.succeed LandmarkType_NOSE_LEFT

                    "NOSE_RIGHT" ->
                        JD.succeed LandmarkType_NOSE_RIGHT

                    "MOUTH_UP" ->
                        JD.succeed LandmarkType_MOUTH_UP

                    "MOUTH_DOWN" ->
                        JD.succeed LandmarkType_MOUTH_DOWN

                    "LEFT_PUPIL" ->
                        JD.succeed LandmarkType_LEFT_PUPIL

                    "RIGHT_PUPIL" ->
                        JD.succeed LandmarkType_RIGHT_PUPIL


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from listCollections
-}
type alias ListCollectionsResponse =
    { collectionIds : Maybe (List String)
    , nextToken : Maybe String
    }



listCollectionsResponseDecoder : JD.Decoder ListCollectionsResponse
listCollectionsResponseDecoder =
    JDP.decode ListCollectionsResponse
        |> JDP.optional "collectionIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listFaces
-}
type alias ListFacesResponse =
    { faces : Maybe (List Face)
    , nextToken : Maybe String
    }



listFacesResponseDecoder : JD.Decoder ListFacesResponse
listFacesResponseDecoder =
    JDP.decode ListFacesResponse
        |> JDP.optional "faces" (JD.nullable (JD.list faceDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Indicates whether or not the mouth on the face is open, and the confidence level in the determination.</p>
-}
type alias MouthOpen =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



mouthOpenDecoder : JD.Decoder MouthOpen
mouthOpenDecoder =
    JDP.decode MouthOpen
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Indicates whether or not the face has a mustache, and the confidence level in the determination.</p>
-}
type alias Mustache =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



mustacheDecoder : JD.Decoder Mustache
mustacheDecoder =
    JDP.decode Mustache
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| One of

* `OrientationCorrection_ROTATE_0`
* `OrientationCorrection_ROTATE_90`
* `OrientationCorrection_ROTATE_180`
* `OrientationCorrection_ROTATE_270`

-}
type OrientationCorrection
    = OrientationCorrection_ROTATE_0
    | OrientationCorrection_ROTATE_90
    | OrientationCorrection_ROTATE_180
    | OrientationCorrection_ROTATE_270



orientationCorrectionDecoder : JD.Decoder OrientationCorrection
orientationCorrectionDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ROTATE_0" ->
                        JD.succeed OrientationCorrection_ROTATE_0

                    "ROTATE_90" ->
                        JD.succeed OrientationCorrection_ROTATE_90

                    "ROTATE_180" ->
                        JD.succeed OrientationCorrection_ROTATE_180

                    "ROTATE_270" ->
                        JD.succeed OrientationCorrection_ROTATE_270


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates the pose of the face as determined by pitch, roll, and the yaw.</p>
-}
type alias Pose =
    { roll : Maybe Float
    , yaw : Maybe Float
    , pitch : Maybe Float
    }



poseDecoder : JD.Decoder Pose
poseDecoder =
    JDP.decode Pose
        |> JDP.optional "roll" (JD.nullable JD.float) Nothing
        |> JDP.optional "yaw" (JD.nullable JD.float) Nothing
        |> JDP.optional "pitch" (JD.nullable JD.float) Nothing




{-| <p>The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Rekognition.</p>
-}
type alias ProvisionedThroughputExceededException =
    { 
    }



provisionedThroughputExceededExceptionDecoder : JD.Decoder ProvisionedThroughputExceededException
provisionedThroughputExceededExceptionDecoder =
    JDP.decode ProvisionedThroughputExceededException



{-| <p>A collection with the specified ID already exists.</p>
-}
type alias ResourceAlreadyExistsException =
    { 
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException



{-| <p>Collection specified in the request is not found.</p>
-}
type alias ResourceNotFoundException =
    { 
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException



{-| <p>Provides the S3 bucket name and object name.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>
-}
type alias S3Object =
    { bucket : Maybe String
    , name : Maybe String
    , version : Maybe String
    }



s3ObjectDecoder : JD.Decoder S3Object
s3ObjectDecoder =
    JDP.decode S3Object
        |> JDP.optional "bucket" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "version" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from searchFacesByImage
-}
type alias SearchFacesByImageResponse =
    { searchedFaceBoundingBox : Maybe BoundingBox
    , searchedFaceConfidence : Maybe Float
    , faceMatches : Maybe (List FaceMatch)
    }



searchFacesByImageResponseDecoder : JD.Decoder SearchFacesByImageResponse
searchFacesByImageResponseDecoder =
    JDP.decode SearchFacesByImageResponse
        |> JDP.optional "searchedFaceBoundingBox" (JD.nullable boundingBoxDecoder) Nothing
        |> JDP.optional "searchedFaceConfidence" (JD.nullable JD.float) Nothing
        |> JDP.optional "faceMatches" (JD.nullable (JD.list faceMatchDecoder)) Nothing




{-| Type of HTTP response from searchFaces
-}
type alias SearchFacesResponse =
    { searchedFaceId : Maybe String
    , faceMatches : Maybe (List FaceMatch)
    }



searchFacesResponseDecoder : JD.Decoder SearchFacesResponse
searchFacesResponseDecoder =
    JDP.decode SearchFacesResponse
        |> JDP.optional "searchedFaceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "faceMatches" (JD.nullable (JD.list faceMatchDecoder)) Nothing




{-| <p>Indicates whether or not the face is smiling, and the confidence level in the determination.</p>
-}
type alias Smile =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



smileDecoder : JD.Decoder Smile
smileDecoder =
    JDP.decode Smile
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.</p>
-}
type alias Sunglasses =
    { value : Maybe Bool
    , confidence : Maybe Float
    }



sunglassesDecoder : JD.Decoder Sunglasses
sunglassesDecoder =
    JDP.decode Sunglasses
        |> JDP.optional "value" (JD.nullable JD.bool) Nothing
        |> JDP.optional "confidence" (JD.nullable JD.float) Nothing




{-| <p>Amazon Rekognition is temporarily unable to process the request. Try your call again.</p>
-}
type alias ThrottlingException =
    { 
    }



throttlingExceptionDecoder : JD.Decoder ThrottlingException
throttlingExceptionDecoder =
    JDP.decode ThrottlingException



