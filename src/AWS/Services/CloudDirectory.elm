module AWS.Services.CloudDirectory
    exposing
        ( config
        , addFacetToObject
        , AddFacetToObjectOptions
        , applySchema
        , attachObject
        , attachPolicy
        , AttachPolicyOptions
        , attachToIndex
        , batchRead
        , BatchReadOptions
        , batchWrite
        , createDirectory
        , createFacet
        , CreateFacetOptions
        , createIndex
        , CreateIndexOptions
        , createObject
        , CreateObjectOptions
        , createSchema
        , deleteDirectory
        , deleteFacet
        , deleteObject
        , deleteSchema
        , detachFromIndex
        , detachObject
        , detachPolicy
        , disableDirectory
        , enableDirectory
        , getDirectory
        , getFacet
        , getObjectInformation
        , GetObjectInformationOptions
        , getSchemaAsJson
        , listAppliedSchemaArns
        , ListAppliedSchemaArnsOptions
        , listAttachedIndices
        , ListAttachedIndicesOptions
        , listDevelopmentSchemaArns
        , ListDevelopmentSchemaArnsOptions
        , listDirectories
        , ListDirectoriesOptions
        , listFacetAttributes
        , ListFacetAttributesOptions
        , listFacetNames
        , ListFacetNamesOptions
        , listIndex
        , ListIndexOptions
        , listObjectAttributes
        , ListObjectAttributesOptions
        , listObjectChildren
        , ListObjectChildrenOptions
        , listObjectParents
        , ListObjectParentsOptions
        , listObjectPolicies
        , ListObjectPoliciesOptions
        , listPolicyAttachments
        , ListPolicyAttachmentsOptions
        , listPublishedSchemaArns
        , ListPublishedSchemaArnsOptions
        , listTagsForResource
        , ListTagsForResourceOptions
        , lookupPolicy
        , LookupPolicyOptions
        , publishSchema
        , PublishSchemaOptions
        , putSchemaFromJson
        , removeFacetFromObject
        , tagResource
        , untagResource
        , updateFacet
        , UpdateFacetOptions
        , updateObjectAttributes
        , updateSchema
        , AccessDeniedException
        , AddFacetToObjectResponse
        , ApplySchemaResponse
        , AttachObjectResponse
        , AttachPolicyResponse
        , AttachToIndexResponse
        , AttributeKey
        , AttributeKeyAndValue
        , BatchAddFacetToObject
        , BatchAddFacetToObjectResponse
        , BatchAttachObject
        , BatchAttachObjectResponse
        , BatchCreateObject
        , BatchCreateObjectResponse
        , BatchDeleteObject
        , BatchDeleteObjectResponse
        , BatchDetachObject
        , BatchDetachObjectResponse
        , BatchListObjectAttributes
        , BatchListObjectAttributesResponse
        , BatchListObjectChildren
        , BatchListObjectChildrenResponse
        , BatchReadException
        , BatchReadExceptionType(..)
        , BatchReadOperation
        , BatchReadOperationResponse
        , BatchReadResponse
        , BatchReadSuccessfulResponse
        , BatchRemoveFacetFromObject
        , BatchRemoveFacetFromObjectResponse
        , BatchUpdateObjectAttributes
        , BatchUpdateObjectAttributesResponse
        , BatchWriteException
        , BatchWriteExceptionType(..)
        , BatchWriteOperation
        , BatchWriteOperationResponse
        , BatchWriteResponse
        , CannotListParentOfRootException
        , ConsistencyLevel(..)
        , CreateDirectoryResponse
        , CreateFacetResponse
        , CreateIndexResponse
        , CreateObjectResponse
        , CreateSchemaResponse
        , DeleteDirectoryResponse
        , DeleteFacetResponse
        , DeleteObjectResponse
        , DeleteSchemaResponse
        , DetachFromIndexResponse
        , DetachObjectResponse
        , DetachPolicyResponse
        , Directory
        , DirectoryAlreadyExistsException
        , DirectoryDeletedException
        , DirectoryNotDisabledException
        , DirectoryNotEnabledException
        , DirectoryState(..)
        , DisableDirectoryResponse
        , EnableDirectoryResponse
        , Facet
        , FacetAlreadyExistsException
        , FacetAttribute
        , FacetAttributeDefinition
        , FacetAttributeReference
        , FacetAttributeType(..)
        , FacetAttributeUpdate
        , FacetInUseException
        , FacetNotFoundException
        , FacetValidationException
        , GetDirectoryResponse
        , GetFacetResponse
        , GetObjectInformationResponse
        , GetSchemaAsJsonResponse
        , IndexAttachment
        , IndexedAttributeMissingException
        , InternalServiceException
        , InvalidArnException
        , InvalidAttachmentException
        , InvalidFacetUpdateException
        , InvalidNextTokenException
        , InvalidRuleException
        , InvalidSchemaDocException
        , InvalidTaggingRequestException
        , LimitExceededException
        , LinkNameAlreadyInUseException
        , ListAppliedSchemaArnsResponse
        , ListAttachedIndicesResponse
        , ListDevelopmentSchemaArnsResponse
        , ListDirectoriesResponse
        , ListFacetAttributesResponse
        , ListFacetNamesResponse
        , ListIndexResponse
        , ListObjectAttributesResponse
        , ListObjectChildrenResponse
        , ListObjectParentsResponse
        , ListObjectPoliciesResponse
        , ListPolicyAttachmentsResponse
        , ListPublishedSchemaArnsResponse
        , ListTagsForResourceResponse
        , LookupPolicyResponse
        , NotIndexException
        , NotNodeException
        , NotPolicyException
        , ObjectAlreadyDetachedException
        , ObjectAttributeAction
        , ObjectAttributeRange
        , ObjectAttributeUpdate
        , ObjectNotDetachedException
        , ObjectReference
        , ObjectType(..)
        , PolicyAttachment
        , PolicyToPath
        , PublishSchemaResponse
        , PutSchemaFromJsonResponse
        , RangeMode(..)
        , RemoveFacetFromObjectResponse
        , RequiredAttributeBehavior(..)
        , ResourceNotFoundException
        , RetryableConflictException
        , Rule
        , RuleType(..)
        , SchemaAlreadyExistsException
        , SchemaAlreadyPublishedException
        , SchemaFacet
        , StillContainsLinksException
        , Tag
        , TagResourceResponse
        , TypedAttributeValue
        , TypedAttributeValueRange
        , UnsupportedIndexTypeException
        , UntagResourceResponse
        , UpdateActionType(..)
        , UpdateFacetResponse
        , UpdateObjectAttributesResponse
        , UpdateSchemaResponse
        , ValidationException
        )

{-| <fullname>Amazon Cloud Directory</fullname> <p>Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the development and management of cloud-scale web, mobile and IoT applications. This guide describes the Cloud Directory operations that you can call programatically and includes detailed information on data types and errors. For information about AWS Directory Services features, see <a href="https://aws.amazon.com/directoryservice/">AWS Directory Service</a> and the <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html">AWS Directory Service Administration Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addFacetToObject](#addFacetToObject)
* [AddFacetToObjectOptions](#AddFacetToObjectOptions)
* [applySchema](#applySchema)
* [attachObject](#attachObject)
* [attachPolicy](#attachPolicy)
* [AttachPolicyOptions](#AttachPolicyOptions)
* [attachToIndex](#attachToIndex)
* [batchRead](#batchRead)
* [BatchReadOptions](#BatchReadOptions)
* [batchWrite](#batchWrite)
* [createDirectory](#createDirectory)
* [createFacet](#createFacet)
* [CreateFacetOptions](#CreateFacetOptions)
* [createIndex](#createIndex)
* [CreateIndexOptions](#CreateIndexOptions)
* [createObject](#createObject)
* [CreateObjectOptions](#CreateObjectOptions)
* [createSchema](#createSchema)
* [deleteDirectory](#deleteDirectory)
* [deleteFacet](#deleteFacet)
* [deleteObject](#deleteObject)
* [deleteSchema](#deleteSchema)
* [detachFromIndex](#detachFromIndex)
* [detachObject](#detachObject)
* [detachPolicy](#detachPolicy)
* [disableDirectory](#disableDirectory)
* [enableDirectory](#enableDirectory)
* [getDirectory](#getDirectory)
* [getFacet](#getFacet)
* [getObjectInformation](#getObjectInformation)
* [GetObjectInformationOptions](#GetObjectInformationOptions)
* [getSchemaAsJson](#getSchemaAsJson)
* [listAppliedSchemaArns](#listAppliedSchemaArns)
* [ListAppliedSchemaArnsOptions](#ListAppliedSchemaArnsOptions)
* [listAttachedIndices](#listAttachedIndices)
* [ListAttachedIndicesOptions](#ListAttachedIndicesOptions)
* [listDevelopmentSchemaArns](#listDevelopmentSchemaArns)
* [ListDevelopmentSchemaArnsOptions](#ListDevelopmentSchemaArnsOptions)
* [listDirectories](#listDirectories)
* [ListDirectoriesOptions](#ListDirectoriesOptions)
* [listFacetAttributes](#listFacetAttributes)
* [ListFacetAttributesOptions](#ListFacetAttributesOptions)
* [listFacetNames](#listFacetNames)
* [ListFacetNamesOptions](#ListFacetNamesOptions)
* [listIndex](#listIndex)
* [ListIndexOptions](#ListIndexOptions)
* [listObjectAttributes](#listObjectAttributes)
* [ListObjectAttributesOptions](#ListObjectAttributesOptions)
* [listObjectChildren](#listObjectChildren)
* [ListObjectChildrenOptions](#ListObjectChildrenOptions)
* [listObjectParents](#listObjectParents)
* [ListObjectParentsOptions](#ListObjectParentsOptions)
* [listObjectPolicies](#listObjectPolicies)
* [ListObjectPoliciesOptions](#ListObjectPoliciesOptions)
* [listPolicyAttachments](#listPolicyAttachments)
* [ListPolicyAttachmentsOptions](#ListPolicyAttachmentsOptions)
* [listPublishedSchemaArns](#listPublishedSchemaArns)
* [ListPublishedSchemaArnsOptions](#ListPublishedSchemaArnsOptions)
* [listTagsForResource](#listTagsForResource)
* [ListTagsForResourceOptions](#ListTagsForResourceOptions)
* [lookupPolicy](#lookupPolicy)
* [LookupPolicyOptions](#LookupPolicyOptions)
* [publishSchema](#publishSchema)
* [PublishSchemaOptions](#PublishSchemaOptions)
* [putSchemaFromJson](#putSchemaFromJson)
* [removeFacetFromObject](#removeFacetFromObject)
* [tagResource](#tagResource)
* [untagResource](#untagResource)
* [updateFacet](#updateFacet)
* [UpdateFacetOptions](#UpdateFacetOptions)
* [updateObjectAttributes](#updateObjectAttributes)
* [updateSchema](#updateSchema)


@docs addFacetToObject,AddFacetToObjectOptions,applySchema,attachObject,attachPolicy,AttachPolicyOptions,attachToIndex,batchRead,BatchReadOptions,batchWrite,createDirectory,createFacet,CreateFacetOptions,createIndex,CreateIndexOptions,createObject,CreateObjectOptions,createSchema,deleteDirectory,deleteFacet,deleteObject,deleteSchema,detachFromIndex,detachObject,detachPolicy,disableDirectory,enableDirectory,getDirectory,getFacet,getObjectInformation,GetObjectInformationOptions,getSchemaAsJson,listAppliedSchemaArns,ListAppliedSchemaArnsOptions,listAttachedIndices,ListAttachedIndicesOptions,listDevelopmentSchemaArns,ListDevelopmentSchemaArnsOptions,listDirectories,ListDirectoriesOptions,listFacetAttributes,ListFacetAttributesOptions,listFacetNames,ListFacetNamesOptions,listIndex,ListIndexOptions,listObjectAttributes,ListObjectAttributesOptions,listObjectChildren,ListObjectChildrenOptions,listObjectParents,ListObjectParentsOptions,listObjectPolicies,ListObjectPoliciesOptions,listPolicyAttachments,ListPolicyAttachmentsOptions,listPublishedSchemaArns,ListPublishedSchemaArnsOptions,listTagsForResource,ListTagsForResourceOptions,lookupPolicy,LookupPolicyOptions,publishSchema,PublishSchemaOptions,putSchemaFromJson,removeFacetFromObject,tagResource,untagResource,updateFacet,UpdateFacetOptions,updateObjectAttributes,updateSchema

## Responses

* [AddFacetToObjectResponse](#AddFacetToObjectResponse)
* [ApplySchemaResponse](#ApplySchemaResponse)
* [AttachObjectResponse](#AttachObjectResponse)
* [AttachPolicyResponse](#AttachPolicyResponse)
* [AttachToIndexResponse](#AttachToIndexResponse)
* [BatchReadResponse](#BatchReadResponse)
* [BatchWriteResponse](#BatchWriteResponse)
* [CreateDirectoryResponse](#CreateDirectoryResponse)
* [CreateFacetResponse](#CreateFacetResponse)
* [CreateIndexResponse](#CreateIndexResponse)
* [CreateObjectResponse](#CreateObjectResponse)
* [CreateSchemaResponse](#CreateSchemaResponse)
* [DeleteDirectoryResponse](#DeleteDirectoryResponse)
* [DeleteFacetResponse](#DeleteFacetResponse)
* [DeleteObjectResponse](#DeleteObjectResponse)
* [DeleteSchemaResponse](#DeleteSchemaResponse)
* [DetachFromIndexResponse](#DetachFromIndexResponse)
* [DetachObjectResponse](#DetachObjectResponse)
* [DetachPolicyResponse](#DetachPolicyResponse)
* [DisableDirectoryResponse](#DisableDirectoryResponse)
* [EnableDirectoryResponse](#EnableDirectoryResponse)
* [GetDirectoryResponse](#GetDirectoryResponse)
* [GetFacetResponse](#GetFacetResponse)
* [GetObjectInformationResponse](#GetObjectInformationResponse)
* [GetSchemaAsJsonResponse](#GetSchemaAsJsonResponse)
* [ListAppliedSchemaArnsResponse](#ListAppliedSchemaArnsResponse)
* [ListAttachedIndicesResponse](#ListAttachedIndicesResponse)
* [ListDevelopmentSchemaArnsResponse](#ListDevelopmentSchemaArnsResponse)
* [ListDirectoriesResponse](#ListDirectoriesResponse)
* [ListFacetAttributesResponse](#ListFacetAttributesResponse)
* [ListFacetNamesResponse](#ListFacetNamesResponse)
* [ListIndexResponse](#ListIndexResponse)
* [ListObjectAttributesResponse](#ListObjectAttributesResponse)
* [ListObjectChildrenResponse](#ListObjectChildrenResponse)
* [ListObjectParentsResponse](#ListObjectParentsResponse)
* [ListObjectPoliciesResponse](#ListObjectPoliciesResponse)
* [ListPolicyAttachmentsResponse](#ListPolicyAttachmentsResponse)
* [ListPublishedSchemaArnsResponse](#ListPublishedSchemaArnsResponse)
* [ListTagsForResourceResponse](#ListTagsForResourceResponse)
* [LookupPolicyResponse](#LookupPolicyResponse)
* [PublishSchemaResponse](#PublishSchemaResponse)
* [PutSchemaFromJsonResponse](#PutSchemaFromJsonResponse)
* [RemoveFacetFromObjectResponse](#RemoveFacetFromObjectResponse)
* [TagResourceResponse](#TagResourceResponse)
* [UntagResourceResponse](#UntagResourceResponse)
* [UpdateFacetResponse](#UpdateFacetResponse)
* [UpdateObjectAttributesResponse](#UpdateObjectAttributesResponse)
* [UpdateSchemaResponse](#UpdateSchemaResponse)


@docs AddFacetToObjectResponse,ApplySchemaResponse,AttachObjectResponse,AttachPolicyResponse,AttachToIndexResponse,BatchReadResponse,BatchWriteResponse,CreateDirectoryResponse,CreateFacetResponse,CreateIndexResponse,CreateObjectResponse,CreateSchemaResponse,DeleteDirectoryResponse,DeleteFacetResponse,DeleteObjectResponse,DeleteSchemaResponse,DetachFromIndexResponse,DetachObjectResponse,DetachPolicyResponse,DisableDirectoryResponse,EnableDirectoryResponse,GetDirectoryResponse,GetFacetResponse,GetObjectInformationResponse,GetSchemaAsJsonResponse,ListAppliedSchemaArnsResponse,ListAttachedIndicesResponse,ListDevelopmentSchemaArnsResponse,ListDirectoriesResponse,ListFacetAttributesResponse,ListFacetNamesResponse,ListIndexResponse,ListObjectAttributesResponse,ListObjectChildrenResponse,ListObjectParentsResponse,ListObjectPoliciesResponse,ListPolicyAttachmentsResponse,ListPublishedSchemaArnsResponse,ListTagsForResourceResponse,LookupPolicyResponse,PublishSchemaResponse,PutSchemaFromJsonResponse,RemoveFacetFromObjectResponse,TagResourceResponse,UntagResourceResponse,UpdateFacetResponse,UpdateObjectAttributesResponse,UpdateSchemaResponse

## Records

* [AttributeKey](#AttributeKey)
* [AttributeKeyAndValue](#AttributeKeyAndValue)
* [BatchAddFacetToObject](#BatchAddFacetToObject)
* [BatchAddFacetToObjectResponse](#BatchAddFacetToObjectResponse)
* [BatchAttachObject](#BatchAttachObject)
* [BatchAttachObjectResponse](#BatchAttachObjectResponse)
* [BatchCreateObject](#BatchCreateObject)
* [BatchCreateObjectResponse](#BatchCreateObjectResponse)
* [BatchDeleteObject](#BatchDeleteObject)
* [BatchDeleteObjectResponse](#BatchDeleteObjectResponse)
* [BatchDetachObject](#BatchDetachObject)
* [BatchDetachObjectResponse](#BatchDetachObjectResponse)
* [BatchListObjectAttributes](#BatchListObjectAttributes)
* [BatchListObjectAttributesResponse](#BatchListObjectAttributesResponse)
* [BatchListObjectChildren](#BatchListObjectChildren)
* [BatchListObjectChildrenResponse](#BatchListObjectChildrenResponse)
* [BatchReadException](#BatchReadException)
* [BatchReadOperation](#BatchReadOperation)
* [BatchReadOperationResponse](#BatchReadOperationResponse)
* [BatchReadSuccessfulResponse](#BatchReadSuccessfulResponse)
* [BatchRemoveFacetFromObject](#BatchRemoveFacetFromObject)
* [BatchRemoveFacetFromObjectResponse](#BatchRemoveFacetFromObjectResponse)
* [BatchUpdateObjectAttributes](#BatchUpdateObjectAttributes)
* [BatchUpdateObjectAttributesResponse](#BatchUpdateObjectAttributesResponse)
* [BatchWriteOperation](#BatchWriteOperation)
* [BatchWriteOperationResponse](#BatchWriteOperationResponse)
* [Directory](#Directory)
* [Facet](#Facet)
* [FacetAttribute](#FacetAttribute)
* [FacetAttributeDefinition](#FacetAttributeDefinition)
* [FacetAttributeReference](#FacetAttributeReference)
* [FacetAttributeUpdate](#FacetAttributeUpdate)
* [IndexAttachment](#IndexAttachment)
* [ObjectAttributeAction](#ObjectAttributeAction)
* [ObjectAttributeRange](#ObjectAttributeRange)
* [ObjectAttributeUpdate](#ObjectAttributeUpdate)
* [ObjectReference](#ObjectReference)
* [PolicyAttachment](#PolicyAttachment)
* [PolicyToPath](#PolicyToPath)
* [Rule](#Rule)
* [SchemaFacet](#SchemaFacet)
* [Tag](#Tag)
* [TypedAttributeValue](#TypedAttributeValue)
* [TypedAttributeValueRange](#TypedAttributeValueRange)


@docs AttributeKey,AttributeKeyAndValue,BatchAddFacetToObject,BatchAddFacetToObjectResponse,BatchAttachObject,BatchAttachObjectResponse,BatchCreateObject,BatchCreateObjectResponse,BatchDeleteObject,BatchDeleteObjectResponse,BatchDetachObject,BatchDetachObjectResponse,BatchListObjectAttributes,BatchListObjectAttributesResponse,BatchListObjectChildren,BatchListObjectChildrenResponse,BatchReadException,BatchReadOperation,BatchReadOperationResponse,BatchReadSuccessfulResponse,BatchRemoveFacetFromObject,BatchRemoveFacetFromObjectResponse,BatchUpdateObjectAttributes,BatchUpdateObjectAttributesResponse,BatchWriteOperation,BatchWriteOperationResponse,Directory,Facet,FacetAttribute,FacetAttributeDefinition,FacetAttributeReference,FacetAttributeUpdate,IndexAttachment,ObjectAttributeAction,ObjectAttributeRange,ObjectAttributeUpdate,ObjectReference,PolicyAttachment,PolicyToPath,Rule,SchemaFacet,Tag,TypedAttributeValue,TypedAttributeValueRange

## Unions

* [BatchReadExceptionType](#BatchReadExceptionType)
* [BatchWriteExceptionType](#BatchWriteExceptionType)
* [ConsistencyLevel](#ConsistencyLevel)
* [DirectoryState](#DirectoryState)
* [FacetAttributeType](#FacetAttributeType)
* [ObjectType](#ObjectType)
* [RangeMode](#RangeMode)
* [RequiredAttributeBehavior](#RequiredAttributeBehavior)
* [RuleType](#RuleType)
* [UpdateActionType](#UpdateActionType)


@docs BatchReadExceptionType,BatchWriteExceptionType,ConsistencyLevel,DirectoryState,FacetAttributeType,ObjectType,RangeMode,RequiredAttributeBehavior,RuleType,UpdateActionType

## Exceptions

* [AccessDeniedException](#AccessDeniedException)
* [BatchWriteException](#BatchWriteException)
* [CannotListParentOfRootException](#CannotListParentOfRootException)
* [DirectoryAlreadyExistsException](#DirectoryAlreadyExistsException)
* [DirectoryDeletedException](#DirectoryDeletedException)
* [DirectoryNotDisabledException](#DirectoryNotDisabledException)
* [DirectoryNotEnabledException](#DirectoryNotEnabledException)
* [FacetAlreadyExistsException](#FacetAlreadyExistsException)
* [FacetInUseException](#FacetInUseException)
* [FacetNotFoundException](#FacetNotFoundException)
* [FacetValidationException](#FacetValidationException)
* [IndexedAttributeMissingException](#IndexedAttributeMissingException)
* [InternalServiceException](#InternalServiceException)
* [InvalidArnException](#InvalidArnException)
* [InvalidAttachmentException](#InvalidAttachmentException)
* [InvalidFacetUpdateException](#InvalidFacetUpdateException)
* [InvalidNextTokenException](#InvalidNextTokenException)
* [InvalidRuleException](#InvalidRuleException)
* [InvalidSchemaDocException](#InvalidSchemaDocException)
* [InvalidTaggingRequestException](#InvalidTaggingRequestException)
* [LimitExceededException](#LimitExceededException)
* [LinkNameAlreadyInUseException](#LinkNameAlreadyInUseException)
* [NotIndexException](#NotIndexException)
* [NotNodeException](#NotNodeException)
* [NotPolicyException](#NotPolicyException)
* [ObjectAlreadyDetachedException](#ObjectAlreadyDetachedException)
* [ObjectNotDetachedException](#ObjectNotDetachedException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [RetryableConflictException](#RetryableConflictException)
* [SchemaAlreadyExistsException](#SchemaAlreadyExistsException)
* [SchemaAlreadyPublishedException](#SchemaAlreadyPublishedException)
* [StillContainsLinksException](#StillContainsLinksException)
* [UnsupportedIndexTypeException](#UnsupportedIndexTypeException)
* [ValidationException](#ValidationException)


@docs AccessDeniedException,BatchWriteException,CannotListParentOfRootException,DirectoryAlreadyExistsException,DirectoryDeletedException,DirectoryNotDisabledException,DirectoryNotEnabledException,FacetAlreadyExistsException,FacetInUseException,FacetNotFoundException,FacetValidationException,IndexedAttributeMissingException,InternalServiceException,InvalidArnException,InvalidAttachmentException,InvalidFacetUpdateException,InvalidNextTokenException,InvalidRuleException,InvalidSchemaDocException,InvalidTaggingRequestException,LimitExceededException,LinkNameAlreadyInUseException,NotIndexException,NotNodeException,NotPolicyException,ObjectAlreadyDetachedException,ObjectNotDetachedException,ResourceNotFoundException,RetryableConflictException,SchemaAlreadyExistsException,SchemaAlreadyPublishedException,StillContainsLinksException,UnsupportedIndexTypeException,ValidationException

-}

import AWS
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Date exposing (Date)
import Json.Decode.Extra as JDX
import Dict exposing (Dict)


{-| Configuration for this service
-}
config : Maybe AWS.Credentials -> AWS.ServiceConfig
config creds =
    AWS.ServiceConfig
        "clouddirectory"
        "2016-05-10"
        "undefined"
        "AWSCLOUDDIRECTORY_20160510."
        "clouddirectory.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Adds a new <a>Facet</a> to an object.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `schemaFacet` __:__ `SchemaFacet`
* `objectReference` __:__ `ObjectReference`


-}
addFacetToObject :
    String
    -> SchemaFacet
    -> ObjectReference
    -> (AddFacetToObjectOptions -> AddFacetToObjectOptions)
    -> AWS.Http.UnsignedRequest AddFacetToObjectResponse
addFacetToObject directoryArn schemaFacet objectReference setOptions =
  let
    options = setOptions (AddFacetToObjectOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AddFacetToObject"
        "PUT"
        "/amazonclouddirectory/2017-01-11/object/facets"
        (AWS.Http.JsonBody
            JE.null
        )
        addFacetToObjectResponseDecoder


{-| Options for a addFacetToObject request
-}
type alias AddFacetToObjectOptions =
    { objectAttributeList : Maybe (List AttributeKeyAndValue)
    }



{-| <p>Copies input published schema into <a>Directory</a> with same name and version as that of published schema .</p>

__Required Parameters__

* `publishedSchemaArn` __:__ `String`
* `directoryArn` __:__ `String`


-}
applySchema :
    String
    -> String
    -> AWS.Http.UnsignedRequest ApplySchemaResponse
applySchema publishedSchemaArn directoryArn =
    AWS.Http.unsignedRequest
        "ApplySchema"
        "PUT"
        "/amazonclouddirectory/2017-01-11/schema/apply"
        (AWS.Http.JsonBody
            JE.null
        )
        applySchemaResponseDecoder



{-| <p>Attaches an existing object to another object. An object can be accessed in two ways:</p> <ol> <li> <p>Using the path</p> </li> <li> <p>Using ObjectIdentifier</p> </li> </ol>

__Required Parameters__

* `directoryArn` __:__ `String`
* `parentReference` __:__ `ObjectReference`
* `childReference` __:__ `ObjectReference`
* `linkName` __:__ `String`


-}
attachObject :
    String
    -> ObjectReference
    -> ObjectReference
    -> String
    -> AWS.Http.UnsignedRequest AttachObjectResponse
attachObject directoryArn parentReference childReference linkName =
    AWS.Http.unsignedRequest
        "AttachObject"
        "PUT"
        "/amazonclouddirectory/2017-01-11/object/attach"
        (AWS.Http.JsonBody
            JE.null
        )
        attachObjectResponseDecoder



{-| <p>Attaches a policy object to a regular object. An object can have a limited number of attached policies.</p>

__Required Parameters__

* `policyReference` __:__ `ObjectReference`
* `objectReference` __:__ `ObjectReference`


-}
attachPolicy :
    ObjectReference
    -> ObjectReference
    -> (AttachPolicyOptions -> AttachPolicyOptions)
    -> AWS.Http.UnsignedRequest AttachPolicyResponse
attachPolicy policyReference objectReference setOptions =
  let
    options = setOptions (AttachPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AttachPolicy"
        "PUT"
        "/amazonclouddirectory/2017-01-11/policy/attach"
        (AWS.Http.JsonBody
            JE.null
        )
        attachPolicyResponseDecoder


{-| Options for a attachPolicy request
-}
type alias AttachPolicyOptions =
    { directoryArn : Maybe String
    }



{-| <p>Attaches the specified object to the specified index.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `indexReference` __:__ `ObjectReference`
* `targetReference` __:__ `ObjectReference`


-}
attachToIndex :
    String
    -> ObjectReference
    -> ObjectReference
    -> AWS.Http.UnsignedRequest AttachToIndexResponse
attachToIndex directoryArn indexReference targetReference =
    AWS.Http.unsignedRequest
        "AttachToIndex"
        "PUT"
        "/amazonclouddirectory/2017-01-11/index/attach"
        (AWS.Http.JsonBody
            JE.null
        )
        attachToIndexResponseDecoder



{-| <p>Performs all the read operations in a batch. </p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `operations` __:__ `(List BatchReadOperation)`


-}
batchRead :
    String
    -> (List BatchReadOperation)
    -> (BatchReadOptions -> BatchReadOptions)
    -> AWS.Http.UnsignedRequest BatchReadResponse
batchRead directoryArn operations setOptions =
  let
    options = setOptions (BatchReadOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "BatchRead"
        "POST"
        "/amazonclouddirectory/2017-01-11/batchread"
        (AWS.Http.JsonBody
            JE.null
        )
        batchReadResponseDecoder


{-| Options for a batchRead request
-}
type alias BatchReadOptions =
    { consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Performs all the write operations in a batch. Either all the operations succeed or none. Batch writes supports only object-related operations.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `operations` __:__ `(List BatchWriteOperation)`


-}
batchWrite :
    String
    -> (List BatchWriteOperation)
    -> AWS.Http.UnsignedRequest BatchWriteResponse
batchWrite directoryArn operations =
    AWS.Http.unsignedRequest
        "BatchWrite"
        "PUT"
        "/amazonclouddirectory/2017-01-11/batchwrite"
        (AWS.Http.JsonBody
            JE.null
        )
        batchWriteResponseDecoder



{-| <p>Creates a <a>Directory</a> by copying the published schema into the directory. A directory cannot be created without a schema.</p>

__Required Parameters__

* `name` __:__ `String`
* `schemaArn` __:__ `String`


-}
createDirectory :
    String
    -> String
    -> AWS.Http.UnsignedRequest CreateDirectoryResponse
createDirectory name schemaArn =
    AWS.Http.unsignedRequest
        "CreateDirectory"
        "PUT"
        "/amazonclouddirectory/2017-01-11/directory/create"
        (AWS.Http.JsonBody
            JE.null
        )
        createDirectoryResponseDecoder



{-| <p>Creates a new <a>Facet</a> in a schema. Facet creation is allowed only in development or applied schemas.</p>

__Required Parameters__

* `schemaArn` __:__ `String`
* `name` __:__ `String`
* `objectType` __:__ `ObjectType`


-}
createFacet :
    String
    -> String
    -> ObjectType
    -> (CreateFacetOptions -> CreateFacetOptions)
    -> AWS.Http.UnsignedRequest CreateFacetResponse
createFacet schemaArn name objectType setOptions =
  let
    options = setOptions (CreateFacetOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateFacet"
        "PUT"
        "/amazonclouddirectory/2017-01-11/facet/create"
        (AWS.Http.JsonBody
            JE.null
        )
        createFacetResponseDecoder


{-| Options for a createFacet request
-}
type alias CreateFacetOptions =
    { attributes : Maybe (List FacetAttribute)
    }



{-| <p>Creates an index object. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html">Indexing</a> for more information.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `orderedIndexedAttributeList` __:__ `(List AttributeKey)`
* `isUnique` __:__ `Bool`


-}
createIndex :
    String
    -> (List AttributeKey)
    -> Bool
    -> (CreateIndexOptions -> CreateIndexOptions)
    -> AWS.Http.UnsignedRequest CreateIndexResponse
createIndex directoryArn orderedIndexedAttributeList isUnique setOptions =
  let
    options = setOptions (CreateIndexOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateIndex"
        "PUT"
        "/amazonclouddirectory/2017-01-11/index"
        (AWS.Http.JsonBody
            JE.null
        )
        createIndexResponseDecoder


{-| Options for a createIndex request
-}
type alias CreateIndexOptions =
    { parentReference : Maybe ObjectReference
    , linkName : Maybe String
    }



{-| <p>Creates an object in a <a>Directory</a>. Additionally attaches the object to a parent, if a parent reference and LinkName is specified. An object is simply a collection of <a>Facet</a> attributes. You can also use this API call to create a policy object, if the facet from which you create the object is a policy facet. </p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `schemaFacets` __:__ `(List SchemaFacet)`


-}
createObject :
    String
    -> (List SchemaFacet)
    -> (CreateObjectOptions -> CreateObjectOptions)
    -> AWS.Http.UnsignedRequest CreateObjectResponse
createObject directoryArn schemaFacets setOptions =
  let
    options = setOptions (CreateObjectOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateObject"
        "PUT"
        "/amazonclouddirectory/2017-01-11/object"
        (AWS.Http.JsonBody
            JE.null
        )
        createObjectResponseDecoder


{-| Options for a createObject request
-}
type alias CreateObjectOptions =
    { objectAttributeList : Maybe (List AttributeKeyAndValue)
    , parentReference : Maybe ObjectReference
    , linkName : Maybe String
    }



{-| <p>Creates a new schema in a development state. A schema can exist in three phases:</p> <ul> <li> <p> <i>Development:</i> This is a mutable phase of the schema. All new schemas are in the development phase. Once the schema is finalized, it can be published.</p> </li> <li> <p> <i>Published:</i> Published schemas are immutable and have a version associated with them.</p> </li> <li> <p> <i>Applied:</i> Applied schemas are mutable in a way that allows you to add new schema facets. You can also add new, nonrequired attributes to existing schema facets. You can apply only published schemas to directories. </p> </li> </ul>

__Required Parameters__

* `name` __:__ `String`


-}
createSchema :
    String
    -> AWS.Http.UnsignedRequest CreateSchemaResponse
createSchema name =
    AWS.Http.unsignedRequest
        "CreateSchema"
        "PUT"
        "/amazonclouddirectory/2017-01-11/schema/create"
        (AWS.Http.JsonBody
            JE.null
        )
        createSchemaResponseDecoder



{-| <p>Deletes a directory. Only disabled directories can be deleted. A deleted directory cannot be undone. Exercise extreme caution when deleting directories.</p>

__Required Parameters__

* `directoryArn` __:__ `String`


-}
deleteDirectory :
    String
    -> AWS.Http.UnsignedRequest DeleteDirectoryResponse
deleteDirectory directoryArn =
    AWS.Http.unsignedRequest
        "DeleteDirectory"
        "PUT"
        "/amazonclouddirectory/2017-01-11/directory"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteDirectoryResponseDecoder



{-| <p>Deletes a given <a>Facet</a>. All attributes and <a>Rule</a>s associated with the facet will be deleted. Only development schema facets are allowed deletion.</p>

__Required Parameters__

* `schemaArn` __:__ `String`
* `name` __:__ `String`


-}
deleteFacet :
    String
    -> String
    -> AWS.Http.UnsignedRequest DeleteFacetResponse
deleteFacet schemaArn name =
    AWS.Http.unsignedRequest
        "DeleteFacet"
        "PUT"
        "/amazonclouddirectory/2017-01-11/facet/delete"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteFacetResponseDecoder



{-| <p>Deletes an object and its associated attributes. Only objects with no children and no parents can be deleted.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`


-}
deleteObject :
    String
    -> ObjectReference
    -> AWS.Http.UnsignedRequest DeleteObjectResponse
deleteObject directoryArn objectReference =
    AWS.Http.unsignedRequest
        "DeleteObject"
        "PUT"
        "/amazonclouddirectory/2017-01-11/object/delete"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteObjectResponseDecoder



{-| <p>Deletes a given schema. Schemas in a development and published state can only be deleted. </p>

__Required Parameters__

* `schemaArn` __:__ `String`


-}
deleteSchema :
    String
    -> AWS.Http.UnsignedRequest DeleteSchemaResponse
deleteSchema schemaArn =
    AWS.Http.unsignedRequest
        "DeleteSchema"
        "PUT"
        "/amazonclouddirectory/2017-01-11/schema"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteSchemaResponseDecoder



{-| <p>Detaches the specified object from the specified index.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `indexReference` __:__ `ObjectReference`
* `targetReference` __:__ `ObjectReference`


-}
detachFromIndex :
    String
    -> ObjectReference
    -> ObjectReference
    -> AWS.Http.UnsignedRequest DetachFromIndexResponse
detachFromIndex directoryArn indexReference targetReference =
    AWS.Http.unsignedRequest
        "DetachFromIndex"
        "PUT"
        "/amazonclouddirectory/2017-01-11/index/detach"
        (AWS.Http.JsonBody
            JE.null
        )
        detachFromIndexResponseDecoder



{-| <p>Detaches a given object from the parent object. The object that is to be detached from the parent is specified by the link name.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `parentReference` __:__ `ObjectReference`
* `linkName` __:__ `String`


-}
detachObject :
    String
    -> ObjectReference
    -> String
    -> AWS.Http.UnsignedRequest DetachObjectResponse
detachObject directoryArn parentReference linkName =
    AWS.Http.unsignedRequest
        "DetachObject"
        "PUT"
        "/amazonclouddirectory/2017-01-11/object/detach"
        (AWS.Http.JsonBody
            JE.null
        )
        detachObjectResponseDecoder



{-| <p>Detaches a policy from an object.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `policyReference` __:__ `ObjectReference`
* `objectReference` __:__ `ObjectReference`


-}
detachPolicy :
    String
    -> ObjectReference
    -> ObjectReference
    -> AWS.Http.UnsignedRequest DetachPolicyResponse
detachPolicy directoryArn policyReference objectReference =
    AWS.Http.unsignedRequest
        "DetachPolicy"
        "PUT"
        "/amazonclouddirectory/2017-01-11/policy/detach"
        (AWS.Http.JsonBody
            JE.null
        )
        detachPolicyResponseDecoder



{-| <p>Disables the specified directory. Disabled directories cannot be read or written to. Only enabled directories can be disabled. Disabled directories may be reenabled.</p>

__Required Parameters__

* `directoryArn` __:__ `String`


-}
disableDirectory :
    String
    -> AWS.Http.UnsignedRequest DisableDirectoryResponse
disableDirectory directoryArn =
    AWS.Http.unsignedRequest
        "DisableDirectory"
        "PUT"
        "/amazonclouddirectory/2017-01-11/directory/disable"
        (AWS.Http.JsonBody
            JE.null
        )
        disableDirectoryResponseDecoder



{-| <p>Enables the specified directory. Only disabled directories can be enabled. Once enabled, the directory can then be read and written to.</p>

__Required Parameters__

* `directoryArn` __:__ `String`


-}
enableDirectory :
    String
    -> AWS.Http.UnsignedRequest EnableDirectoryResponse
enableDirectory directoryArn =
    AWS.Http.unsignedRequest
        "EnableDirectory"
        "PUT"
        "/amazonclouddirectory/2017-01-11/directory/enable"
        (AWS.Http.JsonBody
            JE.null
        )
        enableDirectoryResponseDecoder



{-| <p>Retrieves metadata about a directory.</p>

__Required Parameters__

* `directoryArn` __:__ `String`


-}
getDirectory :
    String
    -> AWS.Http.UnsignedRequest GetDirectoryResponse
getDirectory directoryArn =
    AWS.Http.unsignedRequest
        "GetDirectory"
        "POST"
        "/amazonclouddirectory/2017-01-11/directory/get"
        (AWS.Http.JsonBody
            JE.null
        )
        getDirectoryResponseDecoder



{-| <p>Gets details of the <a>Facet</a>, such as Facet Name, Attributes, <a>Rule</a>s, or ObjectType. You can call this on all kinds of schema facets -- published, development, or applied.</p>

__Required Parameters__

* `schemaArn` __:__ `String`
* `name` __:__ `String`


-}
getFacet :
    String
    -> String
    -> AWS.Http.UnsignedRequest GetFacetResponse
getFacet schemaArn name =
    AWS.Http.unsignedRequest
        "GetFacet"
        "POST"
        "/amazonclouddirectory/2017-01-11/facet"
        (AWS.Http.JsonBody
            JE.null
        )
        getFacetResponseDecoder



{-| <p>Retrieves metadata about an object.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`


-}
getObjectInformation :
    String
    -> ObjectReference
    -> (GetObjectInformationOptions -> GetObjectInformationOptions)
    -> AWS.Http.UnsignedRequest GetObjectInformationResponse
getObjectInformation directoryArn objectReference setOptions =
  let
    options = setOptions (GetObjectInformationOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GetObjectInformation"
        "POST"
        "/amazonclouddirectory/2017-01-11/object/information"
        (AWS.Http.JsonBody
            JE.null
        )
        getObjectInformationResponseDecoder


{-| Options for a getObjectInformation request
-}
type alias GetObjectInformationOptions =
    { consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Retrieves a JSON representation of the schema. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat">JSON Schema Format</a> for more information.</p>

__Required Parameters__

* `schemaArn` __:__ `String`


-}
getSchemaAsJson :
    String
    -> AWS.Http.UnsignedRequest GetSchemaAsJsonResponse
getSchemaAsJson schemaArn =
    AWS.Http.unsignedRequest
        "GetSchemaAsJson"
        "POST"
        "/amazonclouddirectory/2017-01-11/schema/json"
        (AWS.Http.JsonBody
            JE.null
        )
        getSchemaAsJsonResponseDecoder



{-| <p>Lists schemas applied to a directory.</p>

__Required Parameters__

* `directoryArn` __:__ `String`


-}
listAppliedSchemaArns :
    String
    -> (ListAppliedSchemaArnsOptions -> ListAppliedSchemaArnsOptions)
    -> AWS.Http.UnsignedRequest ListAppliedSchemaArnsResponse
listAppliedSchemaArns directoryArn setOptions =
  let
    options = setOptions (ListAppliedSchemaArnsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAppliedSchemaArns"
        "POST"
        "/amazonclouddirectory/2017-01-11/schema/applied"
        (AWS.Http.JsonBody
            JE.null
        )
        listAppliedSchemaArnsResponseDecoder


{-| Options for a listAppliedSchemaArns request
-}
type alias ListAppliedSchemaArnsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists indices attached to an object.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `targetReference` __:__ `ObjectReference`


-}
listAttachedIndices :
    String
    -> ObjectReference
    -> (ListAttachedIndicesOptions -> ListAttachedIndicesOptions)
    -> AWS.Http.UnsignedRequest ListAttachedIndicesResponse
listAttachedIndices directoryArn targetReference setOptions =
  let
    options = setOptions (ListAttachedIndicesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAttachedIndices"
        "POST"
        "/amazonclouddirectory/2017-01-11/object/indices"
        (AWS.Http.JsonBody
            JE.null
        )
        listAttachedIndicesResponseDecoder


{-| Options for a listAttachedIndices request
-}
type alias ListAttachedIndicesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Retrieves the ARNs of schemas in the development state.</p>

__Required Parameters__



-}
listDevelopmentSchemaArns :
    (ListDevelopmentSchemaArnsOptions -> ListDevelopmentSchemaArnsOptions)
    -> AWS.Http.UnsignedRequest ListDevelopmentSchemaArnsResponse
listDevelopmentSchemaArns setOptions =
  let
    options = setOptions (ListDevelopmentSchemaArnsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDevelopmentSchemaArns"
        "POST"
        "/amazonclouddirectory/2017-01-11/schema/development"
        (AWS.Http.JsonBody
            JE.null
        )
        listDevelopmentSchemaArnsResponseDecoder


{-| Options for a listDevelopmentSchemaArns request
-}
type alias ListDevelopmentSchemaArnsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists directories created within an account.</p>

__Required Parameters__



-}
listDirectories :
    (ListDirectoriesOptions -> ListDirectoriesOptions)
    -> AWS.Http.UnsignedRequest ListDirectoriesResponse
listDirectories setOptions =
  let
    options = setOptions (ListDirectoriesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListDirectories"
        "POST"
        "/amazonclouddirectory/2017-01-11/directory/list"
        (AWS.Http.JsonBody
            JE.null
        )
        listDirectoriesResponseDecoder


{-| Options for a listDirectories request
-}
type alias ListDirectoriesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , state : Maybe DirectoryState
    }



{-| <p>Retrieves attributes attached to the facet.</p>

__Required Parameters__

* `schemaArn` __:__ `String`
* `name` __:__ `String`


-}
listFacetAttributes :
    String
    -> String
    -> (ListFacetAttributesOptions -> ListFacetAttributesOptions)
    -> AWS.Http.UnsignedRequest ListFacetAttributesResponse
listFacetAttributes schemaArn name setOptions =
  let
    options = setOptions (ListFacetAttributesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListFacetAttributes"
        "POST"
        "/amazonclouddirectory/2017-01-11/facet/attributes"
        (AWS.Http.JsonBody
            JE.null
        )
        listFacetAttributesResponseDecoder


{-| Options for a listFacetAttributes request
-}
type alias ListFacetAttributesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Retrieves the names of facets that exist in a schema.</p>

__Required Parameters__

* `schemaArn` __:__ `String`


-}
listFacetNames :
    String
    -> (ListFacetNamesOptions -> ListFacetNamesOptions)
    -> AWS.Http.UnsignedRequest ListFacetNamesResponse
listFacetNames schemaArn setOptions =
  let
    options = setOptions (ListFacetNamesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListFacetNames"
        "POST"
        "/amazonclouddirectory/2017-01-11/facet/list"
        (AWS.Http.JsonBody
            JE.null
        )
        listFacetNamesResponseDecoder


{-| Options for a listFacetNames request
-}
type alias ListFacetNamesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists objects attached to the specified index.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `indexReference` __:__ `ObjectReference`


-}
listIndex :
    String
    -> ObjectReference
    -> (ListIndexOptions -> ListIndexOptions)
    -> AWS.Http.UnsignedRequest ListIndexResponse
listIndex directoryArn indexReference setOptions =
  let
    options = setOptions (ListIndexOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListIndex"
        "POST"
        "/amazonclouddirectory/2017-01-11/index/targets"
        (AWS.Http.JsonBody
            JE.null
        )
        listIndexResponseDecoder


{-| Options for a listIndex request
-}
type alias ListIndexOptions =
    { rangesOnIndexedValues : Maybe (List ObjectAttributeRange)
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Lists all attributes associated with an object. This also supports common namespace prefix (key) listing. For example, if you want to retrieve all attributes associated with facet1, key can be <code>facet1</code>. If key is empty, all attributes are returned in a paginated list.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`


-}
listObjectAttributes :
    String
    -> ObjectReference
    -> (ListObjectAttributesOptions -> ListObjectAttributesOptions)
    -> AWS.Http.UnsignedRequest ListObjectAttributesResponse
listObjectAttributes directoryArn objectReference setOptions =
  let
    options = setOptions (ListObjectAttributesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListObjectAttributes"
        "POST"
        "/amazonclouddirectory/2017-01-11/object/attributes"
        (AWS.Http.JsonBody
            JE.null
        )
        listObjectAttributesResponseDecoder


{-| Options for a listObjectAttributes request
-}
type alias ListObjectAttributesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Returns a paginated list of child objects associated with a given object.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`


-}
listObjectChildren :
    String
    -> ObjectReference
    -> (ListObjectChildrenOptions -> ListObjectChildrenOptions)
    -> AWS.Http.UnsignedRequest ListObjectChildrenResponse
listObjectChildren directoryArn objectReference setOptions =
  let
    options = setOptions (ListObjectChildrenOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListObjectChildren"
        "POST"
        "/amazonclouddirectory/2017-01-11/object/children"
        (AWS.Http.JsonBody
            JE.null
        )
        listObjectChildrenResponseDecoder


{-| Options for a listObjectChildren request
-}
type alias ListObjectChildrenOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Lists parent objects associated with a given object in pagination fashion.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`


-}
listObjectParents :
    String
    -> ObjectReference
    -> (ListObjectParentsOptions -> ListObjectParentsOptions)
    -> AWS.Http.UnsignedRequest ListObjectParentsResponse
listObjectParents directoryArn objectReference setOptions =
  let
    options = setOptions (ListObjectParentsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListObjectParents"
        "POST"
        "/amazonclouddirectory/2017-01-11/object/parent"
        (AWS.Http.JsonBody
            JE.null
        )
        listObjectParentsResponseDecoder


{-| Options for a listObjectParents request
-}
type alias ListObjectParentsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Returns policies attached to an object in pagination fashion.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`


-}
listObjectPolicies :
    String
    -> ObjectReference
    -> (ListObjectPoliciesOptions -> ListObjectPoliciesOptions)
    -> AWS.Http.UnsignedRequest ListObjectPoliciesResponse
listObjectPolicies directoryArn objectReference setOptions =
  let
    options = setOptions (ListObjectPoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListObjectPolicies"
        "POST"
        "/amazonclouddirectory/2017-01-11/object/policy"
        (AWS.Http.JsonBody
            JE.null
        )
        listObjectPoliciesResponseDecoder


{-| Options for a listObjectPolicies request
-}
type alias ListObjectPoliciesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Returns all of the ObjectIdentifiers to which a given policy is attached.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `policyReference` __:__ `ObjectReference`


-}
listPolicyAttachments :
    String
    -> ObjectReference
    -> (ListPolicyAttachmentsOptions -> ListPolicyAttachmentsOptions)
    -> AWS.Http.UnsignedRequest ListPolicyAttachmentsResponse
listPolicyAttachments directoryArn policyReference setOptions =
  let
    options = setOptions (ListPolicyAttachmentsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPolicyAttachments"
        "POST"
        "/amazonclouddirectory/2017-01-11/policy/attachment"
        (AWS.Http.JsonBody
            JE.null
        )
        listPolicyAttachmentsResponseDecoder


{-| Options for a listPolicyAttachments request
-}
type alias ListPolicyAttachmentsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , consistencyLevel : Maybe ConsistencyLevel
    }



{-| <p>Retrieves published schema ARNs.</p>

__Required Parameters__



-}
listPublishedSchemaArns :
    (ListPublishedSchemaArnsOptions -> ListPublishedSchemaArnsOptions)
    -> AWS.Http.UnsignedRequest ListPublishedSchemaArnsResponse
listPublishedSchemaArns setOptions =
  let
    options = setOptions (ListPublishedSchemaArnsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPublishedSchemaArns"
        "POST"
        "/amazonclouddirectory/2017-01-11/schema/published"
        (AWS.Http.JsonBody
            JE.null
        )
        listPublishedSchemaArnsResponseDecoder


{-| Options for a listPublishedSchemaArns request
-}
type alias ListPublishedSchemaArnsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Returns tags for a resource. Tagging is currently supported only for directories with a limit of 50 tags per directory. All 50 tags are returned for a given directory with this API call.</p>

__Required Parameters__

* `resourceArn` __:__ `String`


-}
listTagsForResource :
    String
    -> (ListTagsForResourceOptions -> ListTagsForResourceOptions)
    -> AWS.Http.UnsignedRequest ListTagsForResourceResponse
listTagsForResource resourceArn setOptions =
  let
    options = setOptions (ListTagsForResourceOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTagsForResource"
        "POST"
        "/amazonclouddirectory/2017-01-11/tags"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForResourceResponseDecoder


{-| Options for a listTagsForResource request
-}
type alias ListTagsForResourceOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists all policies from the root of the <a>Directory</a> to the object specified. If there are no policies present, an empty list is returned. If policies are present, and if some objects don't have the policies attached, it returns the objectIdentifier for such objects. If policies are present, it returns objectIdentifier, policyId, and policyType. Paths that don't lead to the root from the target object are ignored.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`


-}
lookupPolicy :
    String
    -> ObjectReference
    -> (LookupPolicyOptions -> LookupPolicyOptions)
    -> AWS.Http.UnsignedRequest LookupPolicyResponse
lookupPolicy directoryArn objectReference setOptions =
  let
    options = setOptions (LookupPolicyOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "LookupPolicy"
        "POST"
        "/amazonclouddirectory/2017-01-11/policy/lookup"
        (AWS.Http.JsonBody
            JE.null
        )
        lookupPolicyResponseDecoder


{-| Options for a lookupPolicy request
-}
type alias LookupPolicyOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Publishes a development schema with a version. If description and attributes are specified, PublishSchema overrides the development schema description and attributes. If not, the development schema description and attributes are used.</p>

__Required Parameters__

* `developmentSchemaArn` __:__ `String`
* `version` __:__ `String`


-}
publishSchema :
    String
    -> String
    -> (PublishSchemaOptions -> PublishSchemaOptions)
    -> AWS.Http.UnsignedRequest PublishSchemaResponse
publishSchema developmentSchemaArn version setOptions =
  let
    options = setOptions (PublishSchemaOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PublishSchema"
        "PUT"
        "/amazonclouddirectory/2017-01-11/schema/publish"
        (AWS.Http.JsonBody
            JE.null
        )
        publishSchemaResponseDecoder


{-| Options for a publishSchema request
-}
type alias PublishSchemaOptions =
    { name : Maybe String
    }



{-| <p>Allows a schema to be updated using JSON upload. Only available for development schemas. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat">JSON Schema Format</a> for more information.</p>

__Required Parameters__

* `schemaArn` __:__ `String`
* `document` __:__ `String`


-}
putSchemaFromJson :
    String
    -> String
    -> AWS.Http.UnsignedRequest PutSchemaFromJsonResponse
putSchemaFromJson schemaArn document =
    AWS.Http.unsignedRequest
        "PutSchemaFromJson"
        "PUT"
        "/amazonclouddirectory/2017-01-11/schema/json"
        (AWS.Http.JsonBody
            JE.null
        )
        putSchemaFromJsonResponseDecoder



{-| <p>Removes the specified facet from the specified object.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `schemaFacet` __:__ `SchemaFacet`
* `objectReference` __:__ `ObjectReference`


-}
removeFacetFromObject :
    String
    -> SchemaFacet
    -> ObjectReference
    -> AWS.Http.UnsignedRequest RemoveFacetFromObjectResponse
removeFacetFromObject directoryArn schemaFacet objectReference =
    AWS.Http.unsignedRequest
        "RemoveFacetFromObject"
        "PUT"
        "/amazonclouddirectory/2017-01-11/object/facets/delete"
        (AWS.Http.JsonBody
            JE.null
        )
        removeFacetFromObjectResponseDecoder



{-| <p>API for adding tags to a resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
tagResource :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest TagResourceResponse
tagResource resourceArn tags =
    AWS.Http.unsignedRequest
        "TagResource"
        "PUT"
        "/amazonclouddirectory/2017-01-11/tags/add"
        (AWS.Http.JsonBody
            JE.null
        )
        tagResourceResponseDecoder



{-| <p>API for removing tags from a resource.</p>

__Required Parameters__

* `resourceArn` __:__ `String`
* `tagKeys` __:__ `(List String)`


-}
untagResource :
    String
    -> (List String)
    -> AWS.Http.UnsignedRequest UntagResourceResponse
untagResource resourceArn tagKeys =
    AWS.Http.unsignedRequest
        "UntagResource"
        "PUT"
        "/amazonclouddirectory/2017-01-11/tags/remove"
        (AWS.Http.JsonBody
            JE.null
        )
        untagResourceResponseDecoder



{-| <p>Does the following:</p> <ol> <li> <p>Adds new Attributes, Rules, or ObjectTypes.</p> </li> <li> <p>Updates existing Attributes, Rules, or ObjectTypes.</p> </li> <li> <p>Deletes existing Attributes, Rules, or ObjectTypes.</p> </li> </ol>

__Required Parameters__

* `schemaArn` __:__ `String`
* `name` __:__ `String`


-}
updateFacet :
    String
    -> String
    -> (UpdateFacetOptions -> UpdateFacetOptions)
    -> AWS.Http.UnsignedRequest UpdateFacetResponse
updateFacet schemaArn name setOptions =
  let
    options = setOptions (UpdateFacetOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateFacet"
        "PUT"
        "/amazonclouddirectory/2017-01-11/facet"
        (AWS.Http.JsonBody
            JE.null
        )
        updateFacetResponseDecoder


{-| Options for a updateFacet request
-}
type alias UpdateFacetOptions =
    { attributeUpdates : Maybe (List FacetAttributeUpdate)
    , objectType : Maybe ObjectType
    }



{-| <p>Updates a given object's attributes.</p>

__Required Parameters__

* `directoryArn` __:__ `String`
* `objectReference` __:__ `ObjectReference`
* `attributeUpdates` __:__ `(List ObjectAttributeUpdate)`


-}
updateObjectAttributes :
    String
    -> ObjectReference
    -> (List ObjectAttributeUpdate)
    -> AWS.Http.UnsignedRequest UpdateObjectAttributesResponse
updateObjectAttributes directoryArn objectReference attributeUpdates =
    AWS.Http.unsignedRequest
        "UpdateObjectAttributes"
        "PUT"
        "/amazonclouddirectory/2017-01-11/object/update"
        (AWS.Http.JsonBody
            JE.null
        )
        updateObjectAttributesResponseDecoder



{-| <p>Updates the schema name with a new name. Only development schema names can be updated.</p>

__Required Parameters__

* `schemaArn` __:__ `String`
* `name` __:__ `String`


-}
updateSchema :
    String
    -> String
    -> AWS.Http.UnsignedRequest UpdateSchemaResponse
updateSchema schemaArn name =
    AWS.Http.unsignedRequest
        "UpdateSchema"
        "PUT"
        "/amazonclouddirectory/2017-01-11/schema/update"
        (AWS.Http.JsonBody
            JE.null
        )
        updateSchemaResponseDecoder




{-| <p>Access denied. Check your permissions.</p>
-}
type alias AccessDeniedException =
    { message : Maybe String
    }



accessDeniedExceptionDecoder : JD.Decoder AccessDeniedException
accessDeniedExceptionDecoder =
    JDP.decode AccessDeniedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from addFacetToObject
-}
type alias AddFacetToObjectResponse =
    { 
    }



addFacetToObjectResponseDecoder : JD.Decoder AddFacetToObjectResponse
addFacetToObjectResponseDecoder =
    JDP.decode AddFacetToObjectResponse



{-| Type of HTTP response from applySchema
-}
type alias ApplySchemaResponse =
    { appliedSchemaArn : Maybe String
    , directoryArn : Maybe String
    }



applySchemaResponseDecoder : JD.Decoder ApplySchemaResponse
applySchemaResponseDecoder =
    JDP.decode ApplySchemaResponse
        |> JDP.optional "appliedSchemaArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "directoryArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from attachObject
-}
type alias AttachObjectResponse =
    { attachedObjectIdentifier : Maybe String
    }



attachObjectResponseDecoder : JD.Decoder AttachObjectResponse
attachObjectResponseDecoder =
    JDP.decode AttachObjectResponse
        |> JDP.optional "attachedObjectIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from attachPolicy
-}
type alias AttachPolicyResponse =
    { 
    }



attachPolicyResponseDecoder : JD.Decoder AttachPolicyResponse
attachPolicyResponseDecoder =
    JDP.decode AttachPolicyResponse



{-| Type of HTTP response from attachToIndex
-}
type alias AttachToIndexResponse =
    { attachedObjectIdentifier : Maybe String
    }



attachToIndexResponseDecoder : JD.Decoder AttachToIndexResponse
attachToIndexResponseDecoder =
    JDP.decode AttachToIndexResponse
        |> JDP.optional "attachedObjectIdentifier" (JD.nullable JD.string) Nothing




{-| <p>A unique identifier for an attribute.</p>
-}
type alias AttributeKey =
    { schemaArn : String
    , facetName : String
    , name : String
    }



attributeKeyDecoder : JD.Decoder AttributeKey
attributeKeyDecoder =
    JDP.decode AttributeKey
        |> JDP.required "schemaArn" JD.string
        |> JDP.required "facetName" JD.string
        |> JDP.required "name" JD.string




{-| <p>The combination of an attribute key and an attribute value.</p>
-}
type alias AttributeKeyAndValue =
    { key : AttributeKey
    , value : TypedAttributeValue
    }



attributeKeyAndValueDecoder : JD.Decoder AttributeKeyAndValue
attributeKeyAndValueDecoder =
    JDP.decode AttributeKeyAndValue
        |> JDP.required "key" attributeKeyDecoder
        |> JDP.required "value" typedAttributeValueDecoder




{-| <p>Represents the output of a batch add facet to object operation.</p>
-}
type alias BatchAddFacetToObject =
    { schemaFacet : SchemaFacet
    , objectAttributeList : (List AttributeKeyAndValue)
    , objectReference : ObjectReference
    }



batchAddFacetToObjectDecoder : JD.Decoder BatchAddFacetToObject
batchAddFacetToObjectDecoder =
    JDP.decode BatchAddFacetToObject
        |> JDP.required "schemaFacet" schemaFacetDecoder
        |> JDP.required "objectAttributeList" (JD.list attributeKeyAndValueDecoder)
        |> JDP.required "objectReference" objectReferenceDecoder




{-| <p>The result of a batch add facet to object operation.</p>
-}
type alias BatchAddFacetToObjectResponse =
    { 
    }



batchAddFacetToObjectResponseDecoder : JD.Decoder BatchAddFacetToObjectResponse
batchAddFacetToObjectResponseDecoder =
    JDP.decode BatchAddFacetToObjectResponse



{-| <p>Represents the output of an AttachObject operation.</p>
-}
type alias BatchAttachObject =
    { parentReference : ObjectReference
    , childReference : ObjectReference
    , linkName : String
    }



batchAttachObjectDecoder : JD.Decoder BatchAttachObject
batchAttachObjectDecoder =
    JDP.decode BatchAttachObject
        |> JDP.required "parentReference" objectReferenceDecoder
        |> JDP.required "childReference" objectReferenceDecoder
        |> JDP.required "linkName" JD.string




{-| <p>Represents the output batch AttachObject response operation.</p>
-}
type alias BatchAttachObjectResponse =
    { attachedObjectIdentifier : Maybe String
    }



batchAttachObjectResponseDecoder : JD.Decoder BatchAttachObjectResponse
batchAttachObjectResponseDecoder =
    JDP.decode BatchAttachObjectResponse
        |> JDP.optional "attachedObjectIdentifier" (JD.nullable JD.string) Nothing




{-| <p>Represents the output of a CreateObject operation.</p>
-}
type alias BatchCreateObject =
    { schemaFacet : (List SchemaFacet)
    , objectAttributeList : (List AttributeKeyAndValue)
    , parentReference : ObjectReference
    , linkName : String
    , batchReferenceName : String
    }



batchCreateObjectDecoder : JD.Decoder BatchCreateObject
batchCreateObjectDecoder =
    JDP.decode BatchCreateObject
        |> JDP.required "schemaFacet" (JD.list schemaFacetDecoder)
        |> JDP.required "objectAttributeList" (JD.list attributeKeyAndValueDecoder)
        |> JDP.required "parentReference" objectReferenceDecoder
        |> JDP.required "linkName" JD.string
        |> JDP.required "batchReferenceName" JD.string




{-| <p>Represents the output of a CreateObject response operation.</p>
-}
type alias BatchCreateObjectResponse =
    { objectIdentifier : Maybe String
    }



batchCreateObjectResponseDecoder : JD.Decoder BatchCreateObjectResponse
batchCreateObjectResponseDecoder =
    JDP.decode BatchCreateObjectResponse
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing




{-| <p>Represents the output of a DeleteObject operation.</p>
-}
type alias BatchDeleteObject =
    { objectReference : ObjectReference
    }



batchDeleteObjectDecoder : JD.Decoder BatchDeleteObject
batchDeleteObjectDecoder =
    JDP.decode BatchDeleteObject
        |> JDP.required "objectReference" objectReferenceDecoder




{-| <p>Represents the output of a DeleteObject response operation.</p>
-}
type alias BatchDeleteObjectResponse =
    { 
    }



batchDeleteObjectResponseDecoder : JD.Decoder BatchDeleteObjectResponse
batchDeleteObjectResponseDecoder =
    JDP.decode BatchDeleteObjectResponse



{-| <p>Represents the output of a DetachObject operation.</p>
-}
type alias BatchDetachObject =
    { parentReference : ObjectReference
    , linkName : String
    , batchReferenceName : String
    }



batchDetachObjectDecoder : JD.Decoder BatchDetachObject
batchDetachObjectDecoder =
    JDP.decode BatchDetachObject
        |> JDP.required "parentReference" objectReferenceDecoder
        |> JDP.required "linkName" JD.string
        |> JDP.required "batchReferenceName" JD.string




{-| <p>Represents the output of a DetachObject response operation.</p>
-}
type alias BatchDetachObjectResponse =
    { detachedObjectIdentifier : Maybe String
    }



batchDetachObjectResponseDecoder : JD.Decoder BatchDetachObjectResponse
batchDetachObjectResponseDecoder =
    JDP.decode BatchDetachObjectResponse
        |> JDP.optional "detachedObjectIdentifier" (JD.nullable JD.string) Nothing




{-| <p>Represents the output of a ListObjectAttributes operation.</p>
-}
type alias BatchListObjectAttributes =
    { objectReference : ObjectReference
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



batchListObjectAttributesDecoder : JD.Decoder BatchListObjectAttributes
batchListObjectAttributesDecoder =
    JDP.decode BatchListObjectAttributes
        |> JDP.required "objectReference" objectReferenceDecoder
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxResults" (JD.nullable JD.int) Nothing




{-| <p>Represents the output of a ListObjectAttributes response operation.</p>
-}
type alias BatchListObjectAttributesResponse =
    { attributes : Maybe (List AttributeKeyAndValue)
    , nextToken : Maybe String
    }



batchListObjectAttributesResponseDecoder : JD.Decoder BatchListObjectAttributesResponse
batchListObjectAttributesResponseDecoder =
    JDP.decode BatchListObjectAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeKeyAndValueDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Represents the output of a ListObjectChildren operation.</p>
-}
type alias BatchListObjectChildren =
    { objectReference : ObjectReference
    , nextToken : Maybe String
    , maxResults : Maybe Int
    }



batchListObjectChildrenDecoder : JD.Decoder BatchListObjectChildren
batchListObjectChildrenDecoder =
    JDP.decode BatchListObjectChildren
        |> JDP.required "objectReference" objectReferenceDecoder
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "maxResults" (JD.nullable JD.int) Nothing




{-| <p>Represents the output of a ListObjectChildren response operation.</p>
-}
type alias BatchListObjectChildrenResponse =
    { children : Maybe (Dict String String)
    , nextToken : Maybe String
    }



batchListObjectChildrenResponseDecoder : JD.Decoder BatchListObjectChildrenResponse
batchListObjectChildrenResponseDecoder =
    JDP.decode BatchListObjectChildrenResponse
        |> JDP.optional "children" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Batch Read Exception structure, which contains exception type and message.</p>
-}
type alias BatchReadException =
    { type_ : Maybe BatchReadExceptionType
    , message : Maybe String
    }



batchReadExceptionDecoder : JD.Decoder BatchReadException
batchReadExceptionDecoder =
    JDP.decode BatchReadException
        |> JDP.optional "type_" (JD.nullable batchReadExceptionTypeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `BatchReadExceptionType_ValidationException`
* `BatchReadExceptionType_InvalidArnException`
* `BatchReadExceptionType_ResourceNotFoundException`
* `BatchReadExceptionType_InvalidNextTokenException`
* `BatchReadExceptionType_AccessDeniedException`
* `BatchReadExceptionType_NotNodeException`

-}
type BatchReadExceptionType
    = BatchReadExceptionType_ValidationException
    | BatchReadExceptionType_InvalidArnException
    | BatchReadExceptionType_ResourceNotFoundException
    | BatchReadExceptionType_InvalidNextTokenException
    | BatchReadExceptionType_AccessDeniedException
    | BatchReadExceptionType_NotNodeException



batchReadExceptionTypeDecoder : JD.Decoder BatchReadExceptionType
batchReadExceptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ValidationException" ->
                        JD.succeed BatchReadExceptionType_ValidationException

                    "InvalidArnException" ->
                        JD.succeed BatchReadExceptionType_InvalidArnException

                    "ResourceNotFoundException" ->
                        JD.succeed BatchReadExceptionType_ResourceNotFoundException

                    "InvalidNextTokenException" ->
                        JD.succeed BatchReadExceptionType_InvalidNextTokenException

                    "AccessDeniedException" ->
                        JD.succeed BatchReadExceptionType_AccessDeniedException

                    "NotNodeException" ->
                        JD.succeed BatchReadExceptionType_NotNodeException


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the output of a BatchRead operation.</p>
-}
type alias BatchReadOperation =
    { listObjectAttributes : Maybe BatchListObjectAttributes
    , listObjectChildren : Maybe BatchListObjectChildren
    }



batchReadOperationDecoder : JD.Decoder BatchReadOperation
batchReadOperationDecoder =
    JDP.decode BatchReadOperation
        |> JDP.optional "listObjectAttributes" (JD.nullable batchListObjectAttributesDecoder) Nothing
        |> JDP.optional "listObjectChildren" (JD.nullable batchListObjectChildrenDecoder) Nothing




{-| <p>Represents the output of a BatchRead response operation.</p>
-}
type alias BatchReadOperationResponse =
    { successfulResponse : Maybe BatchReadSuccessfulResponse
    , exceptionResponse : Maybe BatchReadException
    }



batchReadOperationResponseDecoder : JD.Decoder BatchReadOperationResponse
batchReadOperationResponseDecoder =
    JDP.decode BatchReadOperationResponse
        |> JDP.optional "successfulResponse" (JD.nullable batchReadSuccessfulResponseDecoder) Nothing
        |> JDP.optional "exceptionResponse" (JD.nullable batchReadExceptionDecoder) Nothing




{-| Type of HTTP response from batchRead
-}
type alias BatchReadResponse =
    { responses : Maybe (List BatchReadOperationResponse)
    }



batchReadResponseDecoder : JD.Decoder BatchReadResponse
batchReadResponseDecoder =
    JDP.decode BatchReadResponse
        |> JDP.optional "responses" (JD.nullable (JD.list batchReadOperationResponseDecoder)) Nothing




{-| <p>Represents the output of a BatchRead success response operation.</p>
-}
type alias BatchReadSuccessfulResponse =
    { listObjectAttributes : Maybe BatchListObjectAttributesResponse
    , listObjectChildren : Maybe BatchListObjectChildrenResponse
    }



batchReadSuccessfulResponseDecoder : JD.Decoder BatchReadSuccessfulResponse
batchReadSuccessfulResponseDecoder =
    JDP.decode BatchReadSuccessfulResponse
        |> JDP.optional "listObjectAttributes" (JD.nullable batchListObjectAttributesResponseDecoder) Nothing
        |> JDP.optional "listObjectChildren" (JD.nullable batchListObjectChildrenResponseDecoder) Nothing




{-| <p>Batch operation to remove a facet from an object.</p>
-}
type alias BatchRemoveFacetFromObject =
    { schemaFacet : SchemaFacet
    , objectReference : ObjectReference
    }



batchRemoveFacetFromObjectDecoder : JD.Decoder BatchRemoveFacetFromObject
batchRemoveFacetFromObjectDecoder =
    JDP.decode BatchRemoveFacetFromObject
        |> JDP.required "schemaFacet" schemaFacetDecoder
        |> JDP.required "objectReference" objectReferenceDecoder




{-| <p>Empty result representing success.</p>
-}
type alias BatchRemoveFacetFromObjectResponse =
    { 
    }



batchRemoveFacetFromObjectResponseDecoder : JD.Decoder BatchRemoveFacetFromObjectResponse
batchRemoveFacetFromObjectResponseDecoder =
    JDP.decode BatchRemoveFacetFromObjectResponse



{-| <p>Represents the output of a BatchUpdate operation. </p>
-}
type alias BatchUpdateObjectAttributes =
    { objectReference : ObjectReference
    , attributeUpdates : (List ObjectAttributeUpdate)
    }



batchUpdateObjectAttributesDecoder : JD.Decoder BatchUpdateObjectAttributes
batchUpdateObjectAttributesDecoder =
    JDP.decode BatchUpdateObjectAttributes
        |> JDP.required "objectReference" objectReferenceDecoder
        |> JDP.required "attributeUpdates" (JD.list objectAttributeUpdateDecoder)




{-| <p>Represents the output of a BatchUpdate response operation.</p>
-}
type alias BatchUpdateObjectAttributesResponse =
    { objectIdentifier : Maybe String
    }



batchUpdateObjectAttributesResponseDecoder : JD.Decoder BatchUpdateObjectAttributesResponse
batchUpdateObjectAttributesResponseDecoder =
    JDP.decode BatchUpdateObjectAttributesResponse
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing




{-| <p>A BatchWrite exception has occurred.</p>
-}
type alias BatchWriteException =
    { index : Maybe Int
    , type_ : Maybe BatchWriteExceptionType
    , message : Maybe String
    }



batchWriteExceptionDecoder : JD.Decoder BatchWriteException
batchWriteExceptionDecoder =
    JDP.decode BatchWriteException
        |> JDP.optional "index" (JD.nullable JD.int) Nothing
        |> JDP.optional "type_" (JD.nullable batchWriteExceptionTypeDecoder) Nothing
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `BatchWriteExceptionType_InternalServiceException`
* `BatchWriteExceptionType_ValidationException`
* `BatchWriteExceptionType_InvalidArnException`
* `BatchWriteExceptionType_LinkNameAlreadyInUseException`
* `BatchWriteExceptionType_StillContainsLinksException`
* `BatchWriteExceptionType_FacetValidationException`
* `BatchWriteExceptionType_ObjectNotDetachedException`
* `BatchWriteExceptionType_ResourceNotFoundException`
* `BatchWriteExceptionType_AccessDeniedException`

-}
type BatchWriteExceptionType
    = BatchWriteExceptionType_InternalServiceException
    | BatchWriteExceptionType_ValidationException
    | BatchWriteExceptionType_InvalidArnException
    | BatchWriteExceptionType_LinkNameAlreadyInUseException
    | BatchWriteExceptionType_StillContainsLinksException
    | BatchWriteExceptionType_FacetValidationException
    | BatchWriteExceptionType_ObjectNotDetachedException
    | BatchWriteExceptionType_ResourceNotFoundException
    | BatchWriteExceptionType_AccessDeniedException



batchWriteExceptionTypeDecoder : JD.Decoder BatchWriteExceptionType
batchWriteExceptionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "InternalServiceException" ->
                        JD.succeed BatchWriteExceptionType_InternalServiceException

                    "ValidationException" ->
                        JD.succeed BatchWriteExceptionType_ValidationException

                    "InvalidArnException" ->
                        JD.succeed BatchWriteExceptionType_InvalidArnException

                    "LinkNameAlreadyInUseException" ->
                        JD.succeed BatchWriteExceptionType_LinkNameAlreadyInUseException

                    "StillContainsLinksException" ->
                        JD.succeed BatchWriteExceptionType_StillContainsLinksException

                    "FacetValidationException" ->
                        JD.succeed BatchWriteExceptionType_FacetValidationException

                    "ObjectNotDetachedException" ->
                        JD.succeed BatchWriteExceptionType_ObjectNotDetachedException

                    "ResourceNotFoundException" ->
                        JD.succeed BatchWriteExceptionType_ResourceNotFoundException

                    "AccessDeniedException" ->
                        JD.succeed BatchWriteExceptionType_AccessDeniedException


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Represents the output of a BatchWrite operation. </p>
-}
type alias BatchWriteOperation =
    { createObject : Maybe BatchCreateObject
    , attachObject : Maybe BatchAttachObject
    , detachObject : Maybe BatchDetachObject
    , updateObjectAttributes : Maybe BatchUpdateObjectAttributes
    , deleteObject : Maybe BatchDeleteObject
    , addFacetToObject : Maybe BatchAddFacetToObject
    , removeFacetFromObject : Maybe BatchRemoveFacetFromObject
    }



batchWriteOperationDecoder : JD.Decoder BatchWriteOperation
batchWriteOperationDecoder =
    JDP.decode BatchWriteOperation
        |> JDP.optional "createObject" (JD.nullable batchCreateObjectDecoder) Nothing
        |> JDP.optional "attachObject" (JD.nullable batchAttachObjectDecoder) Nothing
        |> JDP.optional "detachObject" (JD.nullable batchDetachObjectDecoder) Nothing
        |> JDP.optional "updateObjectAttributes" (JD.nullable batchUpdateObjectAttributesDecoder) Nothing
        |> JDP.optional "deleteObject" (JD.nullable batchDeleteObjectDecoder) Nothing
        |> JDP.optional "addFacetToObject" (JD.nullable batchAddFacetToObjectDecoder) Nothing
        |> JDP.optional "removeFacetFromObject" (JD.nullable batchRemoveFacetFromObjectDecoder) Nothing




{-| <p>Represents the output of a BatchWrite response operation.</p>
-}
type alias BatchWriteOperationResponse =
    { createObject : Maybe BatchCreateObjectResponse
    , attachObject : Maybe BatchAttachObjectResponse
    , detachObject : Maybe BatchDetachObjectResponse
    , updateObjectAttributes : Maybe BatchUpdateObjectAttributesResponse
    , deleteObject : Maybe BatchDeleteObjectResponse
    , addFacetToObject : Maybe BatchAddFacetToObjectResponse
    , removeFacetFromObject : Maybe BatchRemoveFacetFromObjectResponse
    }



batchWriteOperationResponseDecoder : JD.Decoder BatchWriteOperationResponse
batchWriteOperationResponseDecoder =
    JDP.decode BatchWriteOperationResponse
        |> JDP.optional "createObject" (JD.nullable batchCreateObjectResponseDecoder) Nothing
        |> JDP.optional "attachObject" (JD.nullable batchAttachObjectResponseDecoder) Nothing
        |> JDP.optional "detachObject" (JD.nullable batchDetachObjectResponseDecoder) Nothing
        |> JDP.optional "updateObjectAttributes" (JD.nullable batchUpdateObjectAttributesResponseDecoder) Nothing
        |> JDP.optional "deleteObject" (JD.nullable batchDeleteObjectResponseDecoder) Nothing
        |> JDP.optional "addFacetToObject" (JD.nullable batchAddFacetToObjectResponseDecoder) Nothing
        |> JDP.optional "removeFacetFromObject" (JD.nullable batchRemoveFacetFromObjectResponseDecoder) Nothing




{-| Type of HTTP response from batchWrite
-}
type alias BatchWriteResponse =
    { responses : Maybe (List BatchWriteOperationResponse)
    }



batchWriteResponseDecoder : JD.Decoder BatchWriteResponse
batchWriteResponseDecoder =
    JDP.decode BatchWriteResponse
        |> JDP.optional "responses" (JD.nullable (JD.list batchWriteOperationResponseDecoder)) Nothing




{-| <p>Cannot list the parents of a <a>Directory</a> root.</p>
-}
type alias CannotListParentOfRootException =
    { message : Maybe String
    }



cannotListParentOfRootExceptionDecoder : JD.Decoder CannotListParentOfRootException
cannotListParentOfRootExceptionDecoder =
    JDP.decode CannotListParentOfRootException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `ConsistencyLevel_SERIALIZABLE`
* `ConsistencyLevel_EVENTUAL`

-}
type ConsistencyLevel
    = ConsistencyLevel_SERIALIZABLE
    | ConsistencyLevel_EVENTUAL



consistencyLevelDecoder : JD.Decoder ConsistencyLevel
consistencyLevelDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "SERIALIZABLE" ->
                        JD.succeed ConsistencyLevel_SERIALIZABLE

                    "EVENTUAL" ->
                        JD.succeed ConsistencyLevel_EVENTUAL


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from createDirectory
-}
type alias CreateDirectoryResponse =
    { directoryArn : String
    , name : String
    , objectIdentifier : String
    , appliedSchemaArn : String
    }



createDirectoryResponseDecoder : JD.Decoder CreateDirectoryResponse
createDirectoryResponseDecoder =
    JDP.decode CreateDirectoryResponse
        |> JDP.required "directoryArn" JD.string
        |> JDP.required "name" JD.string
        |> JDP.required "objectIdentifier" JD.string
        |> JDP.required "appliedSchemaArn" JD.string




{-| Type of HTTP response from createFacet
-}
type alias CreateFacetResponse =
    { 
    }



createFacetResponseDecoder : JD.Decoder CreateFacetResponse
createFacetResponseDecoder =
    JDP.decode CreateFacetResponse



{-| Type of HTTP response from createIndex
-}
type alias CreateIndexResponse =
    { objectIdentifier : Maybe String
    }



createIndexResponseDecoder : JD.Decoder CreateIndexResponse
createIndexResponseDecoder =
    JDP.decode CreateIndexResponse
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createObject
-}
type alias CreateObjectResponse =
    { objectIdentifier : Maybe String
    }



createObjectResponseDecoder : JD.Decoder CreateObjectResponse
createObjectResponseDecoder =
    JDP.decode CreateObjectResponse
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createSchema
-}
type alias CreateSchemaResponse =
    { schemaArn : Maybe String
    }



createSchemaResponseDecoder : JD.Decoder CreateSchemaResponse
createSchemaResponseDecoder =
    JDP.decode CreateSchemaResponse
        |> JDP.optional "schemaArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteDirectory
-}
type alias DeleteDirectoryResponse =
    { directoryArn : String
    }



deleteDirectoryResponseDecoder : JD.Decoder DeleteDirectoryResponse
deleteDirectoryResponseDecoder =
    JDP.decode DeleteDirectoryResponse
        |> JDP.required "directoryArn" JD.string




{-| Type of HTTP response from deleteFacet
-}
type alias DeleteFacetResponse =
    { 
    }



deleteFacetResponseDecoder : JD.Decoder DeleteFacetResponse
deleteFacetResponseDecoder =
    JDP.decode DeleteFacetResponse



{-| Type of HTTP response from deleteObject
-}
type alias DeleteObjectResponse =
    { 
    }



deleteObjectResponseDecoder : JD.Decoder DeleteObjectResponse
deleteObjectResponseDecoder =
    JDP.decode DeleteObjectResponse



{-| Type of HTTP response from deleteSchema
-}
type alias DeleteSchemaResponse =
    { schemaArn : Maybe String
    }



deleteSchemaResponseDecoder : JD.Decoder DeleteSchemaResponse
deleteSchemaResponseDecoder =
    JDP.decode DeleteSchemaResponse
        |> JDP.optional "schemaArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from detachFromIndex
-}
type alias DetachFromIndexResponse =
    { detachedObjectIdentifier : Maybe String
    }



detachFromIndexResponseDecoder : JD.Decoder DetachFromIndexResponse
detachFromIndexResponseDecoder =
    JDP.decode DetachFromIndexResponse
        |> JDP.optional "detachedObjectIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from detachObject
-}
type alias DetachObjectResponse =
    { detachedObjectIdentifier : Maybe String
    }



detachObjectResponseDecoder : JD.Decoder DetachObjectResponse
detachObjectResponseDecoder =
    JDP.decode DetachObjectResponse
        |> JDP.optional "detachedObjectIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from detachPolicy
-}
type alias DetachPolicyResponse =
    { 
    }



detachPolicyResponseDecoder : JD.Decoder DetachPolicyResponse
detachPolicyResponseDecoder =
    JDP.decode DetachPolicyResponse



{-| <p>Directory structure that includes the directory name and directory ARN.</p>
-}
type alias Directory =
    { name : Maybe String
    , directoryArn : Maybe String
    , state : Maybe DirectoryState
    , creationDateTime : Maybe Date
    }



directoryDecoder : JD.Decoder Directory
directoryDecoder =
    JDP.decode Directory
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "directoryArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "state" (JD.nullable directoryStateDecoder) Nothing
        |> JDP.optional "creationDateTime" (JD.nullable JDX.date) Nothing




{-| <p>Indicates that a <a>Directory</a> could not be created due to a naming conflict. Choose a different name and try again.</p>
-}
type alias DirectoryAlreadyExistsException =
    { message : Maybe String
    }



directoryAlreadyExistsExceptionDecoder : JD.Decoder DirectoryAlreadyExistsException
directoryAlreadyExistsExceptionDecoder =
    JDP.decode DirectoryAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A directory that has been deleted has been attempted to be accessed. Note: The requested resource will eventually cease to exist.</p>
-}
type alias DirectoryDeletedException =
    { message : Maybe String
    }



directoryDeletedExceptionDecoder : JD.Decoder DirectoryDeletedException
directoryDeletedExceptionDecoder =
    JDP.decode DirectoryDeletedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An operation can only operate on a disabled directory.</p>
-}
type alias DirectoryNotDisabledException =
    { message : Maybe String
    }



directoryNotDisabledExceptionDecoder : JD.Decoder DirectoryNotDisabledException
directoryNotDisabledExceptionDecoder =
    JDP.decode DirectoryNotDisabledException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An operation can only operate on a directory that is not enabled.</p>
-}
type alias DirectoryNotEnabledException =
    { message : Maybe String
    }



directoryNotEnabledExceptionDecoder : JD.Decoder DirectoryNotEnabledException
directoryNotEnabledExceptionDecoder =
    JDP.decode DirectoryNotEnabledException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `DirectoryState_ENABLED`
* `DirectoryState_DISABLED`
* `DirectoryState_DELETED`

-}
type DirectoryState
    = DirectoryState_ENABLED
    | DirectoryState_DISABLED
    | DirectoryState_DELETED



directoryStateDecoder : JD.Decoder DirectoryState
directoryStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLED" ->
                        JD.succeed DirectoryState_ENABLED

                    "DISABLED" ->
                        JD.succeed DirectoryState_DISABLED

                    "DELETED" ->
                        JD.succeed DirectoryState_DELETED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from disableDirectory
-}
type alias DisableDirectoryResponse =
    { directoryArn : String
    }



disableDirectoryResponseDecoder : JD.Decoder DisableDirectoryResponse
disableDirectoryResponseDecoder =
    JDP.decode DisableDirectoryResponse
        |> JDP.required "directoryArn" JD.string




{-| Type of HTTP response from enableDirectory
-}
type alias EnableDirectoryResponse =
    { directoryArn : String
    }



enableDirectoryResponseDecoder : JD.Decoder EnableDirectoryResponse
enableDirectoryResponseDecoder =
    JDP.decode EnableDirectoryResponse
        |> JDP.required "directoryArn" JD.string




{-| <p>A structure that contains Name, ARN, Attributes, <a>Rule</a>s, and ObjectTypes.</p>
-}
type alias Facet =
    { name : Maybe String
    , objectType : Maybe ObjectType
    }



facetDecoder : JD.Decoder Facet
facetDecoder =
    JDP.decode Facet
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "objectType" (JD.nullable objectTypeDecoder) Nothing




{-| <p>A facet with the same name already exists.</p>
-}
type alias FacetAlreadyExistsException =
    { message : Maybe String
    }



facetAlreadyExistsExceptionDecoder : JD.Decoder FacetAlreadyExistsException
facetAlreadyExistsExceptionDecoder =
    JDP.decode FacetAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Attribute associated with the <a>Facet</a>.</p>
-}
type alias FacetAttribute =
    { name : String
    , attributeDefinition : Maybe FacetAttributeDefinition
    , attributeReference : Maybe FacetAttributeReference
    , requiredBehavior : Maybe RequiredAttributeBehavior
    }



facetAttributeDecoder : JD.Decoder FacetAttribute
facetAttributeDecoder =
    JDP.decode FacetAttribute
        |> JDP.required "name" JD.string
        |> JDP.optional "attributeDefinition" (JD.nullable facetAttributeDefinitionDecoder) Nothing
        |> JDP.optional "attributeReference" (JD.nullable facetAttributeReferenceDecoder) Nothing
        |> JDP.optional "requiredBehavior" (JD.nullable requiredAttributeBehaviorDecoder) Nothing




{-| <p>A facet attribute definition. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_advanced.html#attributereferences">Attribute References</a> for more information.</p>
-}
type alias FacetAttributeDefinition =
    { type_ : FacetAttributeType
    , defaultValue : Maybe TypedAttributeValue
    , isImmutable : Maybe Bool
    , rules : Maybe (Dict String Rule)
    }



facetAttributeDefinitionDecoder : JD.Decoder FacetAttributeDefinition
facetAttributeDefinitionDecoder =
    JDP.decode FacetAttributeDefinition
        |> JDP.required "type_" facetAttributeTypeDecoder
        |> JDP.optional "defaultValue" (JD.nullable typedAttributeValueDecoder) Nothing
        |> JDP.optional "isImmutable" (JD.nullable JD.bool) Nothing
        |> JDP.optional "rules" (JD.nullable (JD.dict ruleDecoder)) Nothing




{-| <p>Facet attribute reference that specifies the attribute definition which contains attribute facet name and attribute name.</p>
-}
type alias FacetAttributeReference =
    { targetFacetName : String
    , targetAttributeName : String
    }



facetAttributeReferenceDecoder : JD.Decoder FacetAttributeReference
facetAttributeReferenceDecoder =
    JDP.decode FacetAttributeReference
        |> JDP.required "targetFacetName" JD.string
        |> JDP.required "targetAttributeName" JD.string




{-| One of

* `FacetAttributeType_STRING`
* `FacetAttributeType_BINARY`
* `FacetAttributeType_BOOLEAN`
* `FacetAttributeType_NUMBER`
* `FacetAttributeType_DATETIME`

-}
type FacetAttributeType
    = FacetAttributeType_STRING
    | FacetAttributeType_BINARY
    | FacetAttributeType_BOOLEAN
    | FacetAttributeType_NUMBER
    | FacetAttributeType_DATETIME



facetAttributeTypeDecoder : JD.Decoder FacetAttributeType
facetAttributeTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STRING" ->
                        JD.succeed FacetAttributeType_STRING

                    "BINARY" ->
                        JD.succeed FacetAttributeType_BINARY

                    "BOOLEAN" ->
                        JD.succeed FacetAttributeType_BOOLEAN

                    "NUMBER" ->
                        JD.succeed FacetAttributeType_NUMBER

                    "DATETIME" ->
                        JD.succeed FacetAttributeType_DATETIME


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A structure that contains information used to update an attribute.</p>
-}
type alias FacetAttributeUpdate =
    { attribute : Maybe FacetAttribute
    , action : Maybe UpdateActionType
    }



facetAttributeUpdateDecoder : JD.Decoder FacetAttributeUpdate
facetAttributeUpdateDecoder =
    JDP.decode FacetAttributeUpdate
        |> JDP.optional "attribute" (JD.nullable facetAttributeDecoder) Nothing
        |> JDP.optional "action" (JD.nullable updateActionTypeDecoder) Nothing




{-| <p>Occurs when deleting a facet that contains an attribute which is a target to an attribute reference in a different facet.</p>
-}
type alias FacetInUseException =
    { message : Maybe String
    }



facetInUseExceptionDecoder : JD.Decoder FacetInUseException
facetInUseExceptionDecoder =
    JDP.decode FacetInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified <a>Facet</a> could not be found.</p>
-}
type alias FacetNotFoundException =
    { message : Maybe String
    }



facetNotFoundExceptionDecoder : JD.Decoder FacetNotFoundException
facetNotFoundExceptionDecoder =
    JDP.decode FacetNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The <a>Facet</a> you provided was not well formed or could not be validated with the schema.</p>
-}
type alias FacetValidationException =
    { message : Maybe String
    }



facetValidationExceptionDecoder : JD.Decoder FacetValidationException
facetValidationExceptionDecoder =
    JDP.decode FacetValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getDirectory
-}
type alias GetDirectoryResponse =
    { directory : Directory
    }



getDirectoryResponseDecoder : JD.Decoder GetDirectoryResponse
getDirectoryResponseDecoder =
    JDP.decode GetDirectoryResponse
        |> JDP.required "directory" directoryDecoder




{-| Type of HTTP response from getFacet
-}
type alias GetFacetResponse =
    { facet : Maybe Facet
    }



getFacetResponseDecoder : JD.Decoder GetFacetResponse
getFacetResponseDecoder =
    JDP.decode GetFacetResponse
        |> JDP.optional "facet" (JD.nullable facetDecoder) Nothing




{-| Type of HTTP response from getObjectInformation
-}
type alias GetObjectInformationResponse =
    { schemaFacets : Maybe (List SchemaFacet)
    , objectIdentifier : Maybe String
    }



getObjectInformationResponseDecoder : JD.Decoder GetObjectInformationResponse
getObjectInformationResponseDecoder =
    JDP.decode GetObjectInformationResponse
        |> JDP.optional "schemaFacets" (JD.nullable (JD.list schemaFacetDecoder)) Nothing
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getSchemaAsJson
-}
type alias GetSchemaAsJsonResponse =
    { name : Maybe String
    , document : Maybe String
    }



getSchemaAsJsonResponseDecoder : JD.Decoder GetSchemaAsJsonResponse
getSchemaAsJsonResponseDecoder =
    JDP.decode GetSchemaAsJsonResponse
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "document" (JD.nullable JD.string) Nothing




{-| <p>Represents an index and an attached object.</p>
-}
type alias IndexAttachment =
    { indexedAttributes : Maybe (List AttributeKeyAndValue)
    , objectIdentifier : Maybe String
    }



indexAttachmentDecoder : JD.Decoder IndexAttachment
indexAttachmentDecoder =
    JDP.decode IndexAttachment
        |> JDP.optional "indexedAttributes" (JD.nullable (JD.list attributeKeyAndValueDecoder)) Nothing
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing




{-| <p>An object has been attempted to be attached to an object that does not have the appropriate attribute value.</p>
-}
type alias IndexedAttributeMissingException =
    { message : Maybe String
    }



indexedAttributeMissingExceptionDecoder : JD.Decoder IndexedAttributeMissingException
indexedAttributeMissingExceptionDecoder =
    JDP.decode IndexedAttributeMissingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates a problem that must be resolved by Amazon Web Services. This might be a transient error in which case you can retry your request until it succeeds. Otherwise, go to the <a href="http://status.aws.amazon.com/">AWS Service Health Dashboard</a> site to see if there are any operational issues with the service.</p>
-}
type alias InternalServiceException =
    { message : Maybe String
    }



internalServiceExceptionDecoder : JD.Decoder InternalServiceException
internalServiceExceptionDecoder =
    JDP.decode InternalServiceException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the provided ARN value is not valid.</p>
-}
type alias InvalidArnException =
    { message : Maybe String
    }



invalidArnExceptionDecoder : JD.Decoder InvalidArnException
invalidArnExceptionDecoder =
    JDP.decode InvalidArnException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that an attempt to attach an object with the same link name or to apply a schema with same name has occurred. Rename the link or the schema and then try again.</p>
-}
type alias InvalidAttachmentException =
    { message : Maybe String
    }



invalidAttachmentExceptionDecoder : JD.Decoder InvalidAttachmentException
invalidAttachmentExceptionDecoder =
    JDP.decode InvalidAttachmentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An attempt to modify a <a>Facet</a> resulted in an invalid schema exception.</p>
-}
type alias InvalidFacetUpdateException =
    { message : Maybe String
    }



invalidFacetUpdateExceptionDecoder : JD.Decoder InvalidFacetUpdateException
invalidFacetUpdateExceptionDecoder =
    JDP.decode InvalidFacetUpdateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the NextToken value is not valid.</p>
-}
type alias InvalidNextTokenException =
    { message : Maybe String
    }



invalidNextTokenExceptionDecoder : JD.Decoder InvalidNextTokenException
invalidNextTokenExceptionDecoder =
    JDP.decode InvalidNextTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Occurs when any of the rule parameter keys or values are invalid.</p>
-}
type alias InvalidRuleException =
    { message : Maybe String
    }



invalidRuleExceptionDecoder : JD.Decoder InvalidRuleException
invalidRuleExceptionDecoder =
    JDP.decode InvalidRuleException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that the provided SchemaDoc value is not valid.</p>
-}
type alias InvalidSchemaDocException =
    { message : Maybe String
    }



invalidSchemaDocExceptionDecoder : JD.Decoder InvalidSchemaDocException
invalidSchemaDocExceptionDecoder =
    JDP.decode InvalidSchemaDocException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Can occur for multiple reasons such as when you tag a resource that doesn’t exist or if you specify a higher number of tags for a resource than the allowed limit. Allowed limit is 50 tags per resource.</p>
-}
type alias InvalidTaggingRequestException =
    { message : Maybe String
    }



invalidTaggingRequestExceptionDecoder : JD.Decoder InvalidTaggingRequestException
invalidTaggingRequestExceptionDecoder =
    JDP.decode InvalidTaggingRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates limits are exceeded. See <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/limits.html">Limits</a> for more information.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates that a link could not be created due to a naming conflict. Choose a different name and then try again.</p>
-}
type alias LinkNameAlreadyInUseException =
    { message : Maybe String
    }



linkNameAlreadyInUseExceptionDecoder : JD.Decoder LinkNameAlreadyInUseException
linkNameAlreadyInUseExceptionDecoder =
    JDP.decode LinkNameAlreadyInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAppliedSchemaArns
-}
type alias ListAppliedSchemaArnsResponse =
    { schemaArns : Maybe (List String)
    , nextToken : Maybe String
    }



listAppliedSchemaArnsResponseDecoder : JD.Decoder ListAppliedSchemaArnsResponse
listAppliedSchemaArnsResponseDecoder =
    JDP.decode ListAppliedSchemaArnsResponse
        |> JDP.optional "schemaArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAttachedIndices
-}
type alias ListAttachedIndicesResponse =
    { indexAttachments : Maybe (List IndexAttachment)
    , nextToken : Maybe String
    }



listAttachedIndicesResponseDecoder : JD.Decoder ListAttachedIndicesResponse
listAttachedIndicesResponseDecoder =
    JDP.decode ListAttachedIndicesResponse
        |> JDP.optional "indexAttachments" (JD.nullable (JD.list indexAttachmentDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDevelopmentSchemaArns
-}
type alias ListDevelopmentSchemaArnsResponse =
    { schemaArns : Maybe (List String)
    , nextToken : Maybe String
    }



listDevelopmentSchemaArnsResponseDecoder : JD.Decoder ListDevelopmentSchemaArnsResponse
listDevelopmentSchemaArnsResponseDecoder =
    JDP.decode ListDevelopmentSchemaArnsResponse
        |> JDP.optional "schemaArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listDirectories
-}
type alias ListDirectoriesResponse =
    { directories : (List Directory)
    , nextToken : Maybe String
    }



listDirectoriesResponseDecoder : JD.Decoder ListDirectoriesResponse
listDirectoriesResponseDecoder =
    JDP.decode ListDirectoriesResponse
        |> JDP.required "directories" (JD.list directoryDecoder)
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listFacetAttributes
-}
type alias ListFacetAttributesResponse =
    { attributes : Maybe (List FacetAttribute)
    , nextToken : Maybe String
    }



listFacetAttributesResponseDecoder : JD.Decoder ListFacetAttributesResponse
listFacetAttributesResponseDecoder =
    JDP.decode ListFacetAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.list facetAttributeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listFacetNames
-}
type alias ListFacetNamesResponse =
    { facetNames : Maybe (List String)
    , nextToken : Maybe String
    }



listFacetNamesResponseDecoder : JD.Decoder ListFacetNamesResponse
listFacetNamesResponseDecoder =
    JDP.decode ListFacetNamesResponse
        |> JDP.optional "facetNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listIndex
-}
type alias ListIndexResponse =
    { indexAttachments : Maybe (List IndexAttachment)
    , nextToken : Maybe String
    }



listIndexResponseDecoder : JD.Decoder ListIndexResponse
listIndexResponseDecoder =
    JDP.decode ListIndexResponse
        |> JDP.optional "indexAttachments" (JD.nullable (JD.list indexAttachmentDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listObjectAttributes
-}
type alias ListObjectAttributesResponse =
    { attributes : Maybe (List AttributeKeyAndValue)
    , nextToken : Maybe String
    }



listObjectAttributesResponseDecoder : JD.Decoder ListObjectAttributesResponse
listObjectAttributesResponseDecoder =
    JDP.decode ListObjectAttributesResponse
        |> JDP.optional "attributes" (JD.nullable (JD.list attributeKeyAndValueDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listObjectChildren
-}
type alias ListObjectChildrenResponse =
    { children : Maybe (Dict String String)
    , nextToken : Maybe String
    }



listObjectChildrenResponseDecoder : JD.Decoder ListObjectChildrenResponse
listObjectChildrenResponseDecoder =
    JDP.decode ListObjectChildrenResponse
        |> JDP.optional "children" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listObjectParents
-}
type alias ListObjectParentsResponse =
    { parents : Maybe (Dict String String)
    , nextToken : Maybe String
    }



listObjectParentsResponseDecoder : JD.Decoder ListObjectParentsResponse
listObjectParentsResponseDecoder =
    JDP.decode ListObjectParentsResponse
        |> JDP.optional "parents" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listObjectPolicies
-}
type alias ListObjectPoliciesResponse =
    { attachedPolicyIds : Maybe (List String)
    , nextToken : Maybe String
    }



listObjectPoliciesResponseDecoder : JD.Decoder ListObjectPoliciesResponse
listObjectPoliciesResponseDecoder =
    JDP.decode ListObjectPoliciesResponse
        |> JDP.optional "attachedPolicyIds" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPolicyAttachments
-}
type alias ListPolicyAttachmentsResponse =
    { objectIdentifiers : Maybe (List String)
    , nextToken : Maybe String
    }



listPolicyAttachmentsResponseDecoder : JD.Decoder ListPolicyAttachmentsResponse
listPolicyAttachmentsResponseDecoder =
    JDP.decode ListPolicyAttachmentsResponse
        |> JDP.optional "objectIdentifiers" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPublishedSchemaArns
-}
type alias ListPublishedSchemaArnsResponse =
    { schemaArns : Maybe (List String)
    , nextToken : Maybe String
    }



listPublishedSchemaArnsResponseDecoder : JD.Decoder ListPublishedSchemaArnsResponse
listPublishedSchemaArnsResponseDecoder =
    JDP.decode ListPublishedSchemaArnsResponse
        |> JDP.optional "schemaArns" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTagsForResource
-}
type alias ListTagsForResourceResponse =
    { tags : Maybe (List Tag)
    , nextToken : Maybe String
    }



listTagsForResourceResponseDecoder : JD.Decoder ListTagsForResourceResponse
listTagsForResourceResponseDecoder =
    JDP.decode ListTagsForResourceResponse
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from lookupPolicy
-}
type alias LookupPolicyResponse =
    { policyToPathList : Maybe (List PolicyToPath)
    , nextToken : Maybe String
    }



lookupPolicyResponseDecoder : JD.Decoder LookupPolicyResponse
lookupPolicyResponseDecoder =
    JDP.decode LookupPolicyResponse
        |> JDP.optional "policyToPathList" (JD.nullable (JD.list policyToPathDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| <p>Indicates the requested operation can only operate on index objects.</p>
-}
type alias NotIndexException =
    { message : Maybe String
    }



notIndexExceptionDecoder : JD.Decoder NotIndexException
notIndexExceptionDecoder =
    JDP.decode NotIndexException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Occurs when any invalid operations are performed on an object which is not a node, such as calling ListObjectChildren for a leaf node object.</p>
-}
type alias NotNodeException =
    { message : Maybe String
    }



notNodeExceptionDecoder : JD.Decoder NotNodeException
notNodeExceptionDecoder =
    JDP.decode NotNodeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates the requested operation can only operate on policy objects.</p>
-}
type alias NotPolicyException =
    { message : Maybe String
    }



notPolicyExceptionDecoder : JD.Decoder NotPolicyException
notPolicyExceptionDecoder =
    JDP.decode NotPolicyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates the object is not attached to the index.</p>
-}
type alias ObjectAlreadyDetachedException =
    { message : Maybe String
    }



objectAlreadyDetachedExceptionDecoder : JD.Decoder ObjectAlreadyDetachedException
objectAlreadyDetachedExceptionDecoder =
    JDP.decode ObjectAlreadyDetachedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The action to take on the object attribute.</p>
-}
type alias ObjectAttributeAction =
    { objectAttributeActionType : Maybe UpdateActionType
    , objectAttributeUpdateValue : Maybe TypedAttributeValue
    }



objectAttributeActionDecoder : JD.Decoder ObjectAttributeAction
objectAttributeActionDecoder =
    JDP.decode ObjectAttributeAction
        |> JDP.optional "objectAttributeActionType" (JD.nullable updateActionTypeDecoder) Nothing
        |> JDP.optional "objectAttributeUpdateValue" (JD.nullable typedAttributeValueDecoder) Nothing




{-| <p>A range of attributes.</p>
-}
type alias ObjectAttributeRange =
    { attributeKey : Maybe AttributeKey
    , range : Maybe TypedAttributeValueRange
    }



objectAttributeRangeDecoder : JD.Decoder ObjectAttributeRange
objectAttributeRangeDecoder =
    JDP.decode ObjectAttributeRange
        |> JDP.optional "attributeKey" (JD.nullable attributeKeyDecoder) Nothing
        |> JDP.optional "range" (JD.nullable typedAttributeValueRangeDecoder) Nothing




{-| <p>Structure that contains attribute update information.</p>
-}
type alias ObjectAttributeUpdate =
    { objectAttributeKey : Maybe AttributeKey
    , objectAttributeAction : Maybe ObjectAttributeAction
    }



objectAttributeUpdateDecoder : JD.Decoder ObjectAttributeUpdate
objectAttributeUpdateDecoder =
    JDP.decode ObjectAttributeUpdate
        |> JDP.optional "objectAttributeKey" (JD.nullable attributeKeyDecoder) Nothing
        |> JDP.optional "objectAttributeAction" (JD.nullable objectAttributeActionDecoder) Nothing




{-| <p>Indicates the requested operation cannot be completed because the object has not been detached from the tree.</p>
-}
type alias ObjectNotDetachedException =
    { message : Maybe String
    }



objectNotDetachedExceptionDecoder : JD.Decoder ObjectNotDetachedException
objectNotDetachedExceptionDecoder =
    JDP.decode ObjectNotDetachedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Reference that identifies an object.</p>
-}
type alias ObjectReference =
    { selector : Maybe String
    }



objectReferenceDecoder : JD.Decoder ObjectReference
objectReferenceDecoder =
    JDP.decode ObjectReference
        |> JDP.optional "selector" (JD.nullable JD.string) Nothing




{-| One of

* `ObjectType_NODE`
* `ObjectType_LEAF_NODE`
* `ObjectType_POLICY`
* `ObjectType_INDEX`

-}
type ObjectType
    = ObjectType_NODE
    | ObjectType_LEAF_NODE
    | ObjectType_POLICY
    | ObjectType_INDEX



objectTypeDecoder : JD.Decoder ObjectType
objectTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NODE" ->
                        JD.succeed ObjectType_NODE

                    "LEAF_NODE" ->
                        JD.succeed ObjectType_LEAF_NODE

                    "POLICY" ->
                        JD.succeed ObjectType_POLICY

                    "INDEX" ->
                        JD.succeed ObjectType_INDEX


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains the PolicyType, PolicyId, and the ObjectIdentifier to which it is attached.</p>
-}
type alias PolicyAttachment =
    { policyId : Maybe String
    , objectIdentifier : Maybe String
    , policyType : Maybe String
    }



policyAttachmentDecoder : JD.Decoder PolicyAttachment
policyAttachmentDecoder =
    JDP.decode PolicyAttachment
        |> JDP.optional "policyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyType" (JD.nullable JD.string) Nothing




{-| <p>Used when a regular object exists in a <a>Directory</a> and you want to find all of the policies associated with that object and the parent to that object.</p>
-}
type alias PolicyToPath =
    { path : Maybe String
    , policies : Maybe (List PolicyAttachment)
    }



policyToPathDecoder : JD.Decoder PolicyToPath
policyToPathDecoder =
    JDP.decode PolicyToPath
        |> JDP.optional "path" (JD.nullable JD.string) Nothing
        |> JDP.optional "policies" (JD.nullable (JD.list policyAttachmentDecoder)) Nothing




{-| Type of HTTP response from publishSchema
-}
type alias PublishSchemaResponse =
    { publishedSchemaArn : Maybe String
    }



publishSchemaResponseDecoder : JD.Decoder PublishSchemaResponse
publishSchemaResponseDecoder =
    JDP.decode PublishSchemaResponse
        |> JDP.optional "publishedSchemaArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from putSchemaFromJson
-}
type alias PutSchemaFromJsonResponse =
    { arn : Maybe String
    }



putSchemaFromJsonResponseDecoder : JD.Decoder PutSchemaFromJsonResponse
putSchemaFromJsonResponseDecoder =
    JDP.decode PutSchemaFromJsonResponse
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing




{-| One of

* `RangeMode_FIRST`
* `RangeMode_LAST`
* `RangeMode_LAST_BEFORE_MISSING_VALUES`
* `RangeMode_INCLUSIVE`
* `RangeMode_EXCLUSIVE`

-}
type RangeMode
    = RangeMode_FIRST
    | RangeMode_LAST
    | RangeMode_LAST_BEFORE_MISSING_VALUES
    | RangeMode_INCLUSIVE
    | RangeMode_EXCLUSIVE



rangeModeDecoder : JD.Decoder RangeMode
rangeModeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "FIRST" ->
                        JD.succeed RangeMode_FIRST

                    "LAST" ->
                        JD.succeed RangeMode_LAST

                    "LAST_BEFORE_MISSING_VALUES" ->
                        JD.succeed RangeMode_LAST_BEFORE_MISSING_VALUES

                    "INCLUSIVE" ->
                        JD.succeed RangeMode_INCLUSIVE

                    "EXCLUSIVE" ->
                        JD.succeed RangeMode_EXCLUSIVE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from removeFacetFromObject
-}
type alias RemoveFacetFromObjectResponse =
    { 
    }



removeFacetFromObjectResponseDecoder : JD.Decoder RemoveFacetFromObjectResponse
removeFacetFromObjectResponseDecoder =
    JDP.decode RemoveFacetFromObjectResponse



{-| One of

* `RequiredAttributeBehavior_REQUIRED_ALWAYS`
* `RequiredAttributeBehavior_NOT_REQUIRED`

-}
type RequiredAttributeBehavior
    = RequiredAttributeBehavior_REQUIRED_ALWAYS
    | RequiredAttributeBehavior_NOT_REQUIRED



requiredAttributeBehaviorDecoder : JD.Decoder RequiredAttributeBehavior
requiredAttributeBehaviorDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "REQUIRED_ALWAYS" ->
                        JD.succeed RequiredAttributeBehavior_REQUIRED_ALWAYS

                    "NOT_REQUIRED" ->
                        JD.succeed RequiredAttributeBehavior_NOT_REQUIRED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The specified resource could not be found.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Occurs when a conflict with a previous successful write is detected. For example, if a write operation occurs on an object and then an attempt is made to read the object using “SERIALIZABLE” consistency, this exception may result. This generally occurs when the previous write did not have time to propagate to the host serving the current request. A retry (with appropriate backoff logic) is the recommended response to this exception.</p>
-}
type alias RetryableConflictException =
    { message : Maybe String
    }



retryableConflictExceptionDecoder : JD.Decoder RetryableConflictException
retryableConflictExceptionDecoder =
    JDP.decode RetryableConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains an ARN and parameters associated with the rule.</p>
-}
type alias Rule =
    { type_ : Maybe RuleType
    , parameters : Maybe (Dict String String)
    }



ruleDecoder : JD.Decoder Rule
ruleDecoder =
    JDP.decode Rule
        |> JDP.optional "type_" (JD.nullable ruleTypeDecoder) Nothing
        |> JDP.optional "parameters" (JD.nullable (JD.dict JD.string)) Nothing




{-| One of

* `RuleType_BINARY_LENGTH`
* `RuleType_NUMBER_COMPARISON`
* `RuleType_STRING_FROM_SET`
* `RuleType_STRING_LENGTH`

-}
type RuleType
    = RuleType_BINARY_LENGTH
    | RuleType_NUMBER_COMPARISON
    | RuleType_STRING_FROM_SET
    | RuleType_STRING_LENGTH



ruleTypeDecoder : JD.Decoder RuleType
ruleTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "BINARY_LENGTH" ->
                        JD.succeed RuleType_BINARY_LENGTH

                    "NUMBER_COMPARISON" ->
                        JD.succeed RuleType_NUMBER_COMPARISON

                    "STRING_FROM_SET" ->
                        JD.succeed RuleType_STRING_FROM_SET

                    "STRING_LENGTH" ->
                        JD.succeed RuleType_STRING_LENGTH


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Indicates that a schema could not be created due to a naming conflict. Please select a different name and then try again.</p>
-}
type alias SchemaAlreadyExistsException =
    { message : Maybe String
    }



schemaAlreadyExistsExceptionDecoder : JD.Decoder SchemaAlreadyExistsException
schemaAlreadyExistsExceptionDecoder =
    JDP.decode SchemaAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Indicates a schema is already published.</p>
-}
type alias SchemaAlreadyPublishedException =
    { message : Maybe String
    }



schemaAlreadyPublishedExceptionDecoder : JD.Decoder SchemaAlreadyPublishedException
schemaAlreadyPublishedExceptionDecoder =
    JDP.decode SchemaAlreadyPublishedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>A facet.</p>
-}
type alias SchemaFacet =
    { schemaArn : Maybe String
    , facetName : Maybe String
    }



schemaFacetDecoder : JD.Decoder SchemaFacet
schemaFacetDecoder =
    JDP.decode SchemaFacet
        |> JDP.optional "schemaArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "facetName" (JD.nullable JD.string) Nothing




{-| <p>The object could not be deleted because links still exist. Remove the links and then try the operation again.</p>
-}
type alias StillContainsLinksException =
    { message : Maybe String
    }



stillContainsLinksExceptionDecoder : JD.Decoder StillContainsLinksException
stillContainsLinksExceptionDecoder =
    JDP.decode StillContainsLinksException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Tag structure which contains tag key and value.</p>
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




{-| Type of HTTP response from tagResource
-}
type alias TagResourceResponse =
    { 
    }



tagResourceResponseDecoder : JD.Decoder TagResourceResponse
tagResourceResponseDecoder =
    JDP.decode TagResourceResponse



{-| <p>Represents the data for a typed attribute. You can set one, and only one, of the elements. Each attribute in an item is a name-value pair. Attributes have a single value.</p>
-}
type alias TypedAttributeValue =
    { stringValue : Maybe String
    , binaryValue : Maybe String
    , booleanValue : Maybe Bool
    , numberValue : Maybe String
    , datetimeValue : Maybe Date
    }



typedAttributeValueDecoder : JD.Decoder TypedAttributeValue
typedAttributeValueDecoder =
    JDP.decode TypedAttributeValue
        |> JDP.optional "stringValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "binaryValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "booleanValue" (JD.nullable JD.bool) Nothing
        |> JDP.optional "numberValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "datetimeValue" (JD.nullable JDX.date) Nothing




{-| <p>A range of attribute values.</p>
-}
type alias TypedAttributeValueRange =
    { startMode : RangeMode
    , startValue : Maybe TypedAttributeValue
    , endMode : RangeMode
    , endValue : Maybe TypedAttributeValue
    }



typedAttributeValueRangeDecoder : JD.Decoder TypedAttributeValueRange
typedAttributeValueRangeDecoder =
    JDP.decode TypedAttributeValueRange
        |> JDP.required "startMode" rangeModeDecoder
        |> JDP.optional "startValue" (JD.nullable typedAttributeValueDecoder) Nothing
        |> JDP.required "endMode" rangeModeDecoder
        |> JDP.optional "endValue" (JD.nullable typedAttributeValueDecoder) Nothing




{-| <p>Indicates the requested index type is not supported.</p>
-}
type alias UnsupportedIndexTypeException =
    { message : Maybe String
    }



unsupportedIndexTypeExceptionDecoder : JD.Decoder UnsupportedIndexTypeException
unsupportedIndexTypeExceptionDecoder =
    JDP.decode UnsupportedIndexTypeException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from untagResource
-}
type alias UntagResourceResponse =
    { 
    }



untagResourceResponseDecoder : JD.Decoder UntagResourceResponse
untagResourceResponseDecoder =
    JDP.decode UntagResourceResponse



{-| One of

* `UpdateActionType_CREATE_OR_UPDATE`
* `UpdateActionType_DELETE`

-}
type UpdateActionType
    = UpdateActionType_CREATE_OR_UPDATE
    | UpdateActionType_DELETE



updateActionTypeDecoder : JD.Decoder UpdateActionType
updateActionTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "CREATE_OR_UPDATE" ->
                        JD.succeed UpdateActionType_CREATE_OR_UPDATE

                    "DELETE" ->
                        JD.succeed UpdateActionType_DELETE


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from updateFacet
-}
type alias UpdateFacetResponse =
    { 
    }



updateFacetResponseDecoder : JD.Decoder UpdateFacetResponse
updateFacetResponseDecoder =
    JDP.decode UpdateFacetResponse



{-| Type of HTTP response from updateObjectAttributes
-}
type alias UpdateObjectAttributesResponse =
    { objectIdentifier : Maybe String
    }



updateObjectAttributesResponseDecoder : JD.Decoder UpdateObjectAttributesResponse
updateObjectAttributesResponseDecoder =
    JDP.decode UpdateObjectAttributesResponse
        |> JDP.optional "objectIdentifier" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateSchema
-}
type alias UpdateSchemaResponse =
    { schemaArn : Maybe String
    }



updateSchemaResponseDecoder : JD.Decoder UpdateSchemaResponse
updateSchemaResponseDecoder =
    JDP.decode UpdateSchemaResponse
        |> JDP.optional "schemaArn" (JD.nullable JD.string) Nothing




{-| <p>Indicates your request is malformed in some manner. See the exception message.</p>
-}
type alias ValidationException =
    { message : Maybe String
    }



validationExceptionDecoder : JD.Decoder ValidationException
validationExceptionDecoder =
    JDP.decode ValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




