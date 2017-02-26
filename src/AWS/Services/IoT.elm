module AWS.Services.IoT
    exposing
        ( config
        , acceptCertificateTransfer
        , AcceptCertificateTransferOptions
        , attachPrincipalPolicy
        , attachThingPrincipal
        , cancelCertificateTransfer
        , createCertificateFromCsr
        , CreateCertificateFromCsrOptions
        , createKeysAndCertificate
        , CreateKeysAndCertificateOptions
        , createPolicy
        , createPolicyVersion
        , CreatePolicyVersionOptions
        , createThing
        , CreateThingOptions
        , createThingType
        , CreateThingTypeOptions
        , createTopicRule
        , deleteCACertificate
        , deleteCertificate
        , deletePolicy
        , deletePolicyVersion
        , deleteRegistrationCode
        , deleteThing
        , DeleteThingOptions
        , deleteThingType
        , deleteTopicRule
        , deprecateThingType
        , DeprecateThingTypeOptions
        , describeCACertificate
        , describeCertificate
        , describeEndpoint
        , describeThing
        , describeThingType
        , detachPrincipalPolicy
        , detachThingPrincipal
        , disableTopicRule
        , enableTopicRule
        , getLoggingOptions
        , getPolicy
        , getPolicyVersion
        , getRegistrationCode
        , getTopicRule
        , listCACertificates
        , ListCACertificatesOptions
        , listCertificates
        , ListCertificatesOptions
        , listCertificatesByCA
        , ListCertificatesByCAOptions
        , listOutgoingCertificates
        , ListOutgoingCertificatesOptions
        , listPolicies
        , ListPoliciesOptions
        , listPolicyPrincipals
        , ListPolicyPrincipalsOptions
        , listPolicyVersions
        , listPrincipalPolicies
        , ListPrincipalPoliciesOptions
        , listPrincipalThings
        , ListPrincipalThingsOptions
        , listThingPrincipals
        , listThingTypes
        , ListThingTypesOptions
        , listThings
        , ListThingsOptions
        , listTopicRules
        , ListTopicRulesOptions
        , registerCACertificate
        , RegisterCACertificateOptions
        , registerCertificate
        , RegisterCertificateOptions
        , rejectCertificateTransfer
        , RejectCertificateTransferOptions
        , replaceTopicRule
        , setDefaultPolicyVersion
        , setLoggingOptions
        , transferCertificate
        , TransferCertificateOptions
        , updateCACertificate
        , UpdateCACertificateOptions
        , updateCertificate
        , updateThing
        , UpdateThingOptions
        , Action
        , AttachThingPrincipalResponse
        , AttributePayload
        , AutoRegistrationStatus(..)
        , CACertificate
        , CACertificateDescription
        , CACertificateStatus(..)
        , CannedAccessControlList(..)
        , Certificate
        , CertificateConflictException
        , CertificateDescription
        , CertificateStateException
        , CertificateStatus(..)
        , CertificateValidationException
        , CloudwatchAlarmAction
        , CloudwatchMetricAction
        , CreateCertificateFromCsrResponse
        , CreateKeysAndCertificateResponse
        , CreatePolicyResponse
        , CreatePolicyVersionResponse
        , CreateThingResponse
        , CreateThingTypeResponse
        , DeleteCACertificateResponse
        , DeleteConflictException
        , DeleteRegistrationCodeResponse
        , DeleteThingResponse
        , DeleteThingTypeResponse
        , DeprecateThingTypeResponse
        , DescribeCACertificateResponse
        , DescribeCertificateResponse
        , DescribeEndpointResponse
        , DescribeThingResponse
        , DescribeThingTypeResponse
        , DetachThingPrincipalResponse
        , DynamoDBAction
        , DynamoDBv2Action
        , DynamoKeyType(..)
        , ElasticsearchAction
        , FirehoseAction
        , GetLoggingOptionsResponse
        , GetPolicyResponse
        , GetPolicyVersionResponse
        , GetRegistrationCodeResponse
        , GetTopicRuleResponse
        , InternalException
        , InternalFailureException
        , InvalidRequestException
        , KeyPair
        , KinesisAction
        , LambdaAction
        , LimitExceededException
        , ListCACertificatesResponse
        , ListCertificatesByCAResponse
        , ListCertificatesResponse
        , ListOutgoingCertificatesResponse
        , ListPoliciesResponse
        , ListPolicyPrincipalsResponse
        , ListPolicyVersionsResponse
        , ListPrincipalPoliciesResponse
        , ListPrincipalThingsResponse
        , ListThingPrincipalsResponse
        , ListThingTypesResponse
        , ListThingsResponse
        , ListTopicRulesResponse
        , LogLevel(..)
        , LoggingOptionsPayload
        , MalformedPolicyException
        , MessageFormat(..)
        , OutgoingCertificate
        , Policy
        , PolicyVersion
        , PutItemInput
        , RegisterCACertificateResponse
        , RegisterCertificateResponse
        , RegistrationCodeValidationException
        , RepublishAction
        , ResourceAlreadyExistsException
        , ResourceNotFoundException
        , S3Action
        , ServiceUnavailableException
        , SnsAction
        , SqlParseException
        , SqsAction
        , ThingAttribute
        , ThingTypeDefinition
        , ThingTypeMetadata
        , ThingTypeProperties
        , ThrottlingException
        , TopicRule
        , TopicRuleListItem
        , TopicRulePayload
        , TransferAlreadyCompletedException
        , TransferCertificateResponse
        , TransferConflictException
        , TransferData
        , UnauthorizedException
        , UpdateThingResponse
        , VersionConflictException
        , VersionsLimitExceededException
        )

{-| <fullname>AWS IoT</fullname> <p>AWS IoT provides secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. You can discover your custom IoT-Data endpoint to communicate with, configure rules for data processing and integration with other services, organize resources associated with each thing (Thing Registry), configure logging, and create and manage policies and credentials to authenticate things.</p> <p>For more information about how AWS IoT works, see the <a href="http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html">Developer Guide</a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [acceptCertificateTransfer](#acceptCertificateTransfer)
* [AcceptCertificateTransferOptions](#AcceptCertificateTransferOptions)
* [attachPrincipalPolicy](#attachPrincipalPolicy)
* [attachThingPrincipal](#attachThingPrincipal)
* [cancelCertificateTransfer](#cancelCertificateTransfer)
* [createCertificateFromCsr](#createCertificateFromCsr)
* [CreateCertificateFromCsrOptions](#CreateCertificateFromCsrOptions)
* [createKeysAndCertificate](#createKeysAndCertificate)
* [CreateKeysAndCertificateOptions](#CreateKeysAndCertificateOptions)
* [createPolicy](#createPolicy)
* [createPolicyVersion](#createPolicyVersion)
* [CreatePolicyVersionOptions](#CreatePolicyVersionOptions)
* [createThing](#createThing)
* [CreateThingOptions](#CreateThingOptions)
* [createThingType](#createThingType)
* [CreateThingTypeOptions](#CreateThingTypeOptions)
* [createTopicRule](#createTopicRule)
* [deleteCACertificate](#deleteCACertificate)
* [deleteCertificate](#deleteCertificate)
* [deletePolicy](#deletePolicy)
* [deletePolicyVersion](#deletePolicyVersion)
* [deleteRegistrationCode](#deleteRegistrationCode)
* [deleteThing](#deleteThing)
* [DeleteThingOptions](#DeleteThingOptions)
* [deleteThingType](#deleteThingType)
* [deleteTopicRule](#deleteTopicRule)
* [deprecateThingType](#deprecateThingType)
* [DeprecateThingTypeOptions](#DeprecateThingTypeOptions)
* [describeCACertificate](#describeCACertificate)
* [describeCertificate](#describeCertificate)
* [describeEndpoint](#describeEndpoint)
* [describeThing](#describeThing)
* [describeThingType](#describeThingType)
* [detachPrincipalPolicy](#detachPrincipalPolicy)
* [detachThingPrincipal](#detachThingPrincipal)
* [disableTopicRule](#disableTopicRule)
* [enableTopicRule](#enableTopicRule)
* [getLoggingOptions](#getLoggingOptions)
* [getPolicy](#getPolicy)
* [getPolicyVersion](#getPolicyVersion)
* [getRegistrationCode](#getRegistrationCode)
* [getTopicRule](#getTopicRule)
* [listCACertificates](#listCACertificates)
* [ListCACertificatesOptions](#ListCACertificatesOptions)
* [listCertificates](#listCertificates)
* [ListCertificatesOptions](#ListCertificatesOptions)
* [listCertificatesByCA](#listCertificatesByCA)
* [ListCertificatesByCAOptions](#ListCertificatesByCAOptions)
* [listOutgoingCertificates](#listOutgoingCertificates)
* [ListOutgoingCertificatesOptions](#ListOutgoingCertificatesOptions)
* [listPolicies](#listPolicies)
* [ListPoliciesOptions](#ListPoliciesOptions)
* [listPolicyPrincipals](#listPolicyPrincipals)
* [ListPolicyPrincipalsOptions](#ListPolicyPrincipalsOptions)
* [listPolicyVersions](#listPolicyVersions)
* [listPrincipalPolicies](#listPrincipalPolicies)
* [ListPrincipalPoliciesOptions](#ListPrincipalPoliciesOptions)
* [listPrincipalThings](#listPrincipalThings)
* [ListPrincipalThingsOptions](#ListPrincipalThingsOptions)
* [listThingPrincipals](#listThingPrincipals)
* [listThingTypes](#listThingTypes)
* [ListThingTypesOptions](#ListThingTypesOptions)
* [listThings](#listThings)
* [ListThingsOptions](#ListThingsOptions)
* [listTopicRules](#listTopicRules)
* [ListTopicRulesOptions](#ListTopicRulesOptions)
* [registerCACertificate](#registerCACertificate)
* [RegisterCACertificateOptions](#RegisterCACertificateOptions)
* [registerCertificate](#registerCertificate)
* [RegisterCertificateOptions](#RegisterCertificateOptions)
* [rejectCertificateTransfer](#rejectCertificateTransfer)
* [RejectCertificateTransferOptions](#RejectCertificateTransferOptions)
* [replaceTopicRule](#replaceTopicRule)
* [setDefaultPolicyVersion](#setDefaultPolicyVersion)
* [setLoggingOptions](#setLoggingOptions)
* [transferCertificate](#transferCertificate)
* [TransferCertificateOptions](#TransferCertificateOptions)
* [updateCACertificate](#updateCACertificate)
* [UpdateCACertificateOptions](#UpdateCACertificateOptions)
* [updateCertificate](#updateCertificate)
* [updateThing](#updateThing)
* [UpdateThingOptions](#UpdateThingOptions)


@docs acceptCertificateTransfer,AcceptCertificateTransferOptions,attachPrincipalPolicy,attachThingPrincipal,cancelCertificateTransfer,createCertificateFromCsr,CreateCertificateFromCsrOptions,createKeysAndCertificate,CreateKeysAndCertificateOptions,createPolicy,createPolicyVersion,CreatePolicyVersionOptions,createThing,CreateThingOptions,createThingType,CreateThingTypeOptions,createTopicRule,deleteCACertificate,deleteCertificate,deletePolicy,deletePolicyVersion,deleteRegistrationCode,deleteThing,DeleteThingOptions,deleteThingType,deleteTopicRule,deprecateThingType,DeprecateThingTypeOptions,describeCACertificate,describeCertificate,describeEndpoint,describeThing,describeThingType,detachPrincipalPolicy,detachThingPrincipal,disableTopicRule,enableTopicRule,getLoggingOptions,getPolicy,getPolicyVersion,getRegistrationCode,getTopicRule,listCACertificates,ListCACertificatesOptions,listCertificates,ListCertificatesOptions,listCertificatesByCA,ListCertificatesByCAOptions,listOutgoingCertificates,ListOutgoingCertificatesOptions,listPolicies,ListPoliciesOptions,listPolicyPrincipals,ListPolicyPrincipalsOptions,listPolicyVersions,listPrincipalPolicies,ListPrincipalPoliciesOptions,listPrincipalThings,ListPrincipalThingsOptions,listThingPrincipals,listThingTypes,ListThingTypesOptions,listThings,ListThingsOptions,listTopicRules,ListTopicRulesOptions,registerCACertificate,RegisterCACertificateOptions,registerCertificate,RegisterCertificateOptions,rejectCertificateTransfer,RejectCertificateTransferOptions,replaceTopicRule,setDefaultPolicyVersion,setLoggingOptions,transferCertificate,TransferCertificateOptions,updateCACertificate,UpdateCACertificateOptions,updateCertificate,updateThing,UpdateThingOptions

## Responses

* [AttachThingPrincipalResponse](#AttachThingPrincipalResponse)
* [CreateCertificateFromCsrResponse](#CreateCertificateFromCsrResponse)
* [CreateKeysAndCertificateResponse](#CreateKeysAndCertificateResponse)
* [CreatePolicyResponse](#CreatePolicyResponse)
* [CreatePolicyVersionResponse](#CreatePolicyVersionResponse)
* [CreateThingResponse](#CreateThingResponse)
* [CreateThingTypeResponse](#CreateThingTypeResponse)
* [DeleteCACertificateResponse](#DeleteCACertificateResponse)
* [DeleteRegistrationCodeResponse](#DeleteRegistrationCodeResponse)
* [DeleteThingResponse](#DeleteThingResponse)
* [DeleteThingTypeResponse](#DeleteThingTypeResponse)
* [DeprecateThingTypeResponse](#DeprecateThingTypeResponse)
* [DescribeCACertificateResponse](#DescribeCACertificateResponse)
* [DescribeCertificateResponse](#DescribeCertificateResponse)
* [DescribeEndpointResponse](#DescribeEndpointResponse)
* [DescribeThingResponse](#DescribeThingResponse)
* [DescribeThingTypeResponse](#DescribeThingTypeResponse)
* [DetachThingPrincipalResponse](#DetachThingPrincipalResponse)
* [GetLoggingOptionsResponse](#GetLoggingOptionsResponse)
* [GetPolicyResponse](#GetPolicyResponse)
* [GetPolicyVersionResponse](#GetPolicyVersionResponse)
* [GetRegistrationCodeResponse](#GetRegistrationCodeResponse)
* [GetTopicRuleResponse](#GetTopicRuleResponse)
* [ListCACertificatesResponse](#ListCACertificatesResponse)
* [ListCertificatesByCAResponse](#ListCertificatesByCAResponse)
* [ListCertificatesResponse](#ListCertificatesResponse)
* [ListOutgoingCertificatesResponse](#ListOutgoingCertificatesResponse)
* [ListPoliciesResponse](#ListPoliciesResponse)
* [ListPolicyPrincipalsResponse](#ListPolicyPrincipalsResponse)
* [ListPolicyVersionsResponse](#ListPolicyVersionsResponse)
* [ListPrincipalPoliciesResponse](#ListPrincipalPoliciesResponse)
* [ListPrincipalThingsResponse](#ListPrincipalThingsResponse)
* [ListThingPrincipalsResponse](#ListThingPrincipalsResponse)
* [ListThingTypesResponse](#ListThingTypesResponse)
* [ListThingsResponse](#ListThingsResponse)
* [ListTopicRulesResponse](#ListTopicRulesResponse)
* [RegisterCACertificateResponse](#RegisterCACertificateResponse)
* [RegisterCertificateResponse](#RegisterCertificateResponse)
* [TransferCertificateResponse](#TransferCertificateResponse)
* [UpdateThingResponse](#UpdateThingResponse)


@docs AttachThingPrincipalResponse,CreateCertificateFromCsrResponse,CreateKeysAndCertificateResponse,CreatePolicyResponse,CreatePolicyVersionResponse,CreateThingResponse,CreateThingTypeResponse,DeleteCACertificateResponse,DeleteRegistrationCodeResponse,DeleteThingResponse,DeleteThingTypeResponse,DeprecateThingTypeResponse,DescribeCACertificateResponse,DescribeCertificateResponse,DescribeEndpointResponse,DescribeThingResponse,DescribeThingTypeResponse,DetachThingPrincipalResponse,GetLoggingOptionsResponse,GetPolicyResponse,GetPolicyVersionResponse,GetRegistrationCodeResponse,GetTopicRuleResponse,ListCACertificatesResponse,ListCertificatesByCAResponse,ListCertificatesResponse,ListOutgoingCertificatesResponse,ListPoliciesResponse,ListPolicyPrincipalsResponse,ListPolicyVersionsResponse,ListPrincipalPoliciesResponse,ListPrincipalThingsResponse,ListThingPrincipalsResponse,ListThingTypesResponse,ListThingsResponse,ListTopicRulesResponse,RegisterCACertificateResponse,RegisterCertificateResponse,TransferCertificateResponse,UpdateThingResponse

## Records

* [Action](#Action)
* [AttributePayload](#AttributePayload)
* [CACertificate](#CACertificate)
* [CACertificateDescription](#CACertificateDescription)
* [Certificate](#Certificate)
* [CertificateDescription](#CertificateDescription)
* [CloudwatchAlarmAction](#CloudwatchAlarmAction)
* [CloudwatchMetricAction](#CloudwatchMetricAction)
* [DynamoDBAction](#DynamoDBAction)
* [DynamoDBv2Action](#DynamoDBv2Action)
* [ElasticsearchAction](#ElasticsearchAction)
* [FirehoseAction](#FirehoseAction)
* [KeyPair](#KeyPair)
* [KinesisAction](#KinesisAction)
* [LambdaAction](#LambdaAction)
* [LoggingOptionsPayload](#LoggingOptionsPayload)
* [OutgoingCertificate](#OutgoingCertificate)
* [Policy](#Policy)
* [PolicyVersion](#PolicyVersion)
* [PutItemInput](#PutItemInput)
* [RepublishAction](#RepublishAction)
* [S3Action](#S3Action)
* [SnsAction](#SnsAction)
* [SqsAction](#SqsAction)
* [ThingAttribute](#ThingAttribute)
* [ThingTypeDefinition](#ThingTypeDefinition)
* [ThingTypeMetadata](#ThingTypeMetadata)
* [ThingTypeProperties](#ThingTypeProperties)
* [TopicRule](#TopicRule)
* [TopicRuleListItem](#TopicRuleListItem)
* [TopicRulePayload](#TopicRulePayload)
* [TransferData](#TransferData)


@docs Action,AttributePayload,CACertificate,CACertificateDescription,Certificate,CertificateDescription,CloudwatchAlarmAction,CloudwatchMetricAction,DynamoDBAction,DynamoDBv2Action,ElasticsearchAction,FirehoseAction,KeyPair,KinesisAction,LambdaAction,LoggingOptionsPayload,OutgoingCertificate,Policy,PolicyVersion,PutItemInput,RepublishAction,S3Action,SnsAction,SqsAction,ThingAttribute,ThingTypeDefinition,ThingTypeMetadata,ThingTypeProperties,TopicRule,TopicRuleListItem,TopicRulePayload,TransferData

## Unions

* [AutoRegistrationStatus](#AutoRegistrationStatus)
* [CACertificateStatus](#CACertificateStatus)
* [CannedAccessControlList](#CannedAccessControlList)
* [CertificateStatus](#CertificateStatus)
* [DynamoKeyType](#DynamoKeyType)
* [LogLevel](#LogLevel)
* [MessageFormat](#MessageFormat)


@docs AutoRegistrationStatus,CACertificateStatus,CannedAccessControlList,CertificateStatus,DynamoKeyType,LogLevel,MessageFormat

## Exceptions

* [CertificateConflictException](#CertificateConflictException)
* [CertificateStateException](#CertificateStateException)
* [CertificateValidationException](#CertificateValidationException)
* [DeleteConflictException](#DeleteConflictException)
* [InternalException](#InternalException)
* [InternalFailureException](#InternalFailureException)
* [InvalidRequestException](#InvalidRequestException)
* [LimitExceededException](#LimitExceededException)
* [MalformedPolicyException](#MalformedPolicyException)
* [RegistrationCodeValidationException](#RegistrationCodeValidationException)
* [ResourceAlreadyExistsException](#ResourceAlreadyExistsException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [ServiceUnavailableException](#ServiceUnavailableException)
* [SqlParseException](#SqlParseException)
* [ThrottlingException](#ThrottlingException)
* [TransferAlreadyCompletedException](#TransferAlreadyCompletedException)
* [TransferConflictException](#TransferConflictException)
* [UnauthorizedException](#UnauthorizedException)
* [VersionConflictException](#VersionConflictException)
* [VersionsLimitExceededException](#VersionsLimitExceededException)


@docs CertificateConflictException,CertificateStateException,CertificateValidationException,DeleteConflictException,InternalException,InternalFailureException,InvalidRequestException,LimitExceededException,MalformedPolicyException,RegistrationCodeValidationException,ResourceAlreadyExistsException,ResourceNotFoundException,ServiceUnavailableException,SqlParseException,ThrottlingException,TransferAlreadyCompletedException,TransferConflictException,UnauthorizedException,VersionConflictException,VersionsLimitExceededException

-}

import AWS
import AWS.Config
import AWS.Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Json.Encode as JE
import Dict exposing (Dict)
import Date exposing (Date)
import Json.Decode.Extra as JDX


{-| Configuration for this service
-}
config : AWS.ServiceConfig
config =
    AWS.Config.Service
        "iot"
        "2015-05-28"
        "undefined"
        "AWSIOT_20150528."
        "iot.amazonaws.com"
        "us-east-1"
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Accepts a pending certificate transfer. The default state of the certificate is INACTIVE.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
acceptCertificateTransfer :
    String
    -> (AcceptCertificateTransferOptions -> AcceptCertificateTransferOptions)
    -> AWS.Request ()
acceptCertificateTransfer certificateId setOptions =
  let
    options = setOptions (AcceptCertificateTransferOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "AcceptCertificateTransfer"
        "PATCH"
        ("/accept-certificate-transfer/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a acceptCertificateTransfer request
-}
type alias AcceptCertificateTransferOptions =
    { setAsActive : Maybe Bool
    }



{-| <p>Attaches the specified policy to the specified principal (certificate or other credential).</p>

__Required Parameters__

* `policyName` __:__ `String`
* `principal` __:__ `String`


-}
attachPrincipalPolicy :
    String
    -> String
    -> AWS.Request ()
attachPrincipalPolicy policyName principal =
    AWS.Http.unsignedRequest
        "AttachPrincipalPolicy"
        "PUT"
        ("/principal-policies/" ++ policyName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Attaches the specified principal to the specified thing.</p>

__Required Parameters__

* `thingName` __:__ `String`
* `principal` __:__ `String`


-}
attachThingPrincipal :
    String
    -> String
    -> AWS.Request AttachThingPrincipalResponse
attachThingPrincipal thingName principal =
    AWS.Http.unsignedRequest
        "AttachThingPrincipal"
        "PUT"
        ("/things/" ++ thingName ++ "/principals")
        (AWS.Http.JsonBody
            JE.null
        )
        attachThingPrincipalResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Cancels a pending transfer for the specified certificate.</p> <p><b>Note</b> Only the transfer source account can use this operation to cancel a transfer. (Transfer destinations can use <a>RejectCertificateTransfer</a> instead.) After transfer, AWS IoT returns the certificate to the source account in the INACTIVE state. After the destination account has accepted the transfer, the transfer cannot be cancelled.</p> <p>After a certificate transfer is cancelled, the status of the certificate changes from PENDING_TRANSFER to INACTIVE.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
cancelCertificateTransfer :
    String
    -> AWS.Request ()
cancelCertificateTransfer certificateId =
    AWS.Http.unsignedRequest
        "CancelCertificateTransfer"
        "PATCH"
        ("/cancel-certificate-transfer/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Creates an X.509 certificate using the specified certificate signing request.</p> <p><b>Note</b> Reusing the same certificate signing request (CSR) results in a distinct certificate.</p> <p>You can create multiple certificates in a batch by creating a directory, copying multiple .csr files into that directory, and then specifying that directory on the command line. The following commands show how to create a batch of certificates given a batch of CSRs. </p> <p>Assuming a set of CSRs are located inside of the directory my-csr-directory:</p> <p>On Linux and OS X, the command is:</p> <p>$ ls my-csr-directory/ | xargs -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{}</p> <p> This command lists all of the CSRs in my-csr-directory and pipes each CSR file name to the aws iot create-certificate-from-csr AWS CLI command to create a certificate for the corresponding CSR. </p> <p> The aws iot create-certificate-from-csr part of the command can also be run in parallel to speed up the certificate creation process: </p> <p> $ ls my-csr-directory/ | xargs -P 10 -I {} aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/{} </p> <p> On Windows PowerShell, the command to create certificates for all CSRs in my-csr-directory is: </p> <p> &gt; ls -Name my-csr-directory | %{aws iot create-certificate-from-csr --certificate-signing-request file://my-csr-directory/$_} </p> <p> On a Windows command prompt, the command to create certificates for all CSRs in my-csr-directory is: </p> <p> &gt; forfiles /p my-csr-directory /c "cmd /c aws iot create-certificate-from-csr --certificate-signing-request file://@path"</p>

__Required Parameters__

* `certificateSigningRequest` __:__ `String`


-}
createCertificateFromCsr :
    String
    -> (CreateCertificateFromCsrOptions -> CreateCertificateFromCsrOptions)
    -> AWS.Request CreateCertificateFromCsrResponse
createCertificateFromCsr certificateSigningRequest setOptions =
  let
    options = setOptions (CreateCertificateFromCsrOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateCertificateFromCsr"
        "POST"
        "/certificates"
        (AWS.Http.JsonBody
            JE.null
        )
        createCertificateFromCsrResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createCertificateFromCsr request
-}
type alias CreateCertificateFromCsrOptions =
    { setAsActive : Maybe Bool
    }



{-| <p>Creates a 2048-bit RSA key pair and issues an X.509 certificate using the issued public key.</p> <p><b>Note</b> This is the only time AWS IoT issues the private key for this certificate, so it is important to keep it in a secure location.</p>

__Required Parameters__



-}
createKeysAndCertificate :
    (CreateKeysAndCertificateOptions -> CreateKeysAndCertificateOptions)
    -> AWS.Request CreateKeysAndCertificateResponse
createKeysAndCertificate setOptions =
  let
    options = setOptions (CreateKeysAndCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateKeysAndCertificate"
        "POST"
        "/keys-and-certificate"
        (AWS.Http.JsonBody
            JE.null
        )
        createKeysAndCertificateResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createKeysAndCertificate request
-}
type alias CreateKeysAndCertificateOptions =
    { setAsActive : Maybe Bool
    }



{-| <p>Creates an AWS IoT policy.</p> <p>The created policy is the default version for the policy. This operation creates a policy version with a version identifier of <b>1</b> and sets <b>1</b> as the policy's default version.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `policyDocument` __:__ `String`


-}
createPolicy :
    String
    -> String
    -> AWS.Request CreatePolicyResponse
createPolicy policyName policyDocument =
    AWS.Http.unsignedRequest
        "CreatePolicy"
        "POST"
        ("/policies/" ++ policyName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        createPolicyResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a new version of the specified AWS IoT policy. To update a policy, create a new policy version. A managed policy can have up to five versions. If the policy has five versions, you must use <a>DeletePolicyVersion</a> to delete an existing version before you create a new one.</p> <p>Optionally, you can set the new version as the policy's default version. The default version is the operative version (that is, the version that is in effect for the certificates to which the policy is attached).</p>

__Required Parameters__

* `policyName` __:__ `String`
* `policyDocument` __:__ `String`


-}
createPolicyVersion :
    String
    -> String
    -> (CreatePolicyVersionOptions -> CreatePolicyVersionOptions)
    -> AWS.Request CreatePolicyVersionResponse
createPolicyVersion policyName policyDocument setOptions =
  let
    options = setOptions (CreatePolicyVersionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreatePolicyVersion"
        "POST"
        ("/policies/" ++ policyName ++ "/version")
        (AWS.Http.JsonBody
            JE.null
        )
        createPolicyVersionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createPolicyVersion request
-}
type alias CreatePolicyVersionOptions =
    { setAsDefault : Maybe Bool
    }



{-| <p>Creates a thing record in the thing registry.</p>

__Required Parameters__

* `thingName` __:__ `String`


-}
createThing :
    String
    -> (CreateThingOptions -> CreateThingOptions)
    -> AWS.Request CreateThingResponse
createThing thingName setOptions =
  let
    options = setOptions (CreateThingOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateThing"
        "POST"
        ("/things/" ++ thingName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        createThingResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createThing request
-}
type alias CreateThingOptions =
    { thingTypeName : Maybe String
    , attributePayload : Maybe AttributePayload
    }



{-| <p>Creates a new thing type.</p>

__Required Parameters__

* `thingTypeName` __:__ `String`


-}
createThingType :
    String
    -> (CreateThingTypeOptions -> CreateThingTypeOptions)
    -> AWS.Request CreateThingTypeResponse
createThingType thingTypeName setOptions =
  let
    options = setOptions (CreateThingTypeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateThingType"
        "POST"
        ("/thing-types/" ++ thingTypeName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        createThingTypeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createThingType request
-}
type alias CreateThingTypeOptions =
    { thingTypeProperties : Maybe ThingTypeProperties
    }



{-| <p>Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

__Required Parameters__

* `ruleName` __:__ `String`
* `topicRulePayload` __:__ `TopicRulePayload`


-}
createTopicRule :
    String
    -> TopicRulePayload
    -> AWS.Request ()
createTopicRule ruleName topicRulePayload =
    AWS.Http.unsignedRequest
        "CreateTopicRule"
        "POST"
        ("/rules/" ++ ruleName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a registered CA certificate.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
deleteCACertificate :
    String
    -> AWS.Request DeleteCACertificateResponse
deleteCACertificate certificateId =
    AWS.Http.unsignedRequest
        "DeleteCACertificate"
        "DELETE"
        ("/cacertificate/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteCACertificateResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified certificate.</p> <p>A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPrincipalPolicy</a> API to detach all policies. Next, use the <a>UpdateCertificate</a> API to set the certificate to the INACTIVE status.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
deleteCertificate :
    String
    -> AWS.Request ()
deleteCertificate certificateId =
    AWS.Http.unsignedRequest
        "DeleteCertificate"
        "DELETE"
        ("/certificates/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified policy.</p> <p>A policy cannot be deleted if it has non-default versions or it is attached to any certificate.</p> <p>To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.</p> <p>When a policy is deleted using DeletePolicy, its default version is deleted with it.</p>

__Required Parameters__

* `policyName` __:__ `String`


-}
deletePolicy :
    String
    -> AWS.Request ()
deletePolicy policyName =
    AWS.Http.unsignedRequest
        "DeletePolicy"
        "DELETE"
        ("/policies/" ++ policyName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use ListPolicyVersions.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `policyVersionId` __:__ `String`


-}
deletePolicyVersion :
    String
    -> String
    -> AWS.Request ()
deletePolicyVersion policyName policyVersionId =
    AWS.Http.unsignedRequest
        "DeletePolicyVersion"
        "DELETE"
        ("/policies/" ++ policyName ++ "/version/" ++ policyVersionId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes a CA certificate registration code.</p>

__Required Parameters__



-}
deleteRegistrationCode :
    AWS.Request DeleteRegistrationCodeResponse
deleteRegistrationCode =
    AWS.Http.unsignedRequest
        "DeleteRegistrationCode"
        "DELETE"
        "/registrationcode"
        (AWS.Http.JsonBody
            JE.null
        )
        deleteRegistrationCodeResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified thing.</p>

__Required Parameters__

* `thingName` __:__ `String`


-}
deleteThing :
    String
    -> (DeleteThingOptions -> DeleteThingOptions)
    -> AWS.Request DeleteThingResponse
deleteThing thingName setOptions =
  let
    options = setOptions (DeleteThingOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeleteThing"
        "DELETE"
        ("/things/" ++ thingName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteThingResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a deleteThing request
-}
type alias DeleteThingOptions =
    { expectedVersion : Maybe Int
    }



{-| <p>Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and finally use <a>DeleteThingType</a> to delete the thing type.</p>

__Required Parameters__

* `thingTypeName` __:__ `String`


-}
deleteThingType :
    String
    -> AWS.Request DeleteThingTypeResponse
deleteThingType thingTypeName =
    AWS.Http.unsignedRequest
        "DeleteThingType"
        "DELETE"
        ("/thing-types/" ++ thingTypeName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        deleteThingTypeResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Deletes the specified rule.</p>

__Required Parameters__

* `ruleName` __:__ `String`


-}
deleteTopicRule :
    String
    -> AWS.Request ()
deleteTopicRule ruleName =
    AWS.Http.unsignedRequest
        "DeleteTopicRule"
        "DELETE"
        ("/rules/" ++ ruleName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deprecates a thing type. You can not associate new things with deprecated thing type.</p>

__Required Parameters__

* `thingTypeName` __:__ `String`


-}
deprecateThingType :
    String
    -> (DeprecateThingTypeOptions -> DeprecateThingTypeOptions)
    -> AWS.Request DeprecateThingTypeResponse
deprecateThingType thingTypeName setOptions =
  let
    options = setOptions (DeprecateThingTypeOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DeprecateThingType"
        "POST"
        ("/thing-types/" ++ thingTypeName ++ "/deprecate")
        (AWS.Http.JsonBody
            JE.null
        )
        deprecateThingTypeResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a deprecateThingType request
-}
type alias DeprecateThingTypeOptions =
    { undoDeprecate : Maybe Bool
    }



{-| <p>Describes a registered CA certificate.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
describeCACertificate :
    String
    -> AWS.Request DescribeCACertificateResponse
describeCACertificate certificateId =
    AWS.Http.unsignedRequest
        "DescribeCACertificate"
        "GET"
        ("/cacertificate/" ++ certificateId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeCACertificateResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about the specified certificate.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
describeCertificate :
    String
    -> AWS.Request DescribeCertificateResponse
describeCertificate certificateId =
    AWS.Http.unsignedRequest
        "DescribeCertificate"
        "GET"
        ("/certificates/" ++ certificateId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeCertificateResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns a unique endpoint specific to the AWS account making the call.</p>

__Required Parameters__



-}
describeEndpoint :
    AWS.Request DescribeEndpointResponse
describeEndpoint =
    AWS.Http.unsignedRequest
        "DescribeEndpoint"
        "GET"
        "/endpoint"
        (AWS.Http.QueryParams
            [
            ]
        )
        describeEndpointResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about the specified thing.</p>

__Required Parameters__

* `thingName` __:__ `String`


-}
describeThing :
    String
    -> AWS.Request DescribeThingResponse
describeThing thingName =
    AWS.Http.unsignedRequest
        "DescribeThing"
        "GET"
        ("/things/" ++ thingName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeThingResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about the specified thing type.</p>

__Required Parameters__

* `thingTypeName` __:__ `String`


-}
describeThingType :
    String
    -> AWS.Request DescribeThingTypeResponse
describeThingType thingTypeName =
    AWS.Http.unsignedRequest
        "DescribeThingType"
        "GET"
        ("/thing-types/" ++ thingTypeName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        describeThingTypeResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Removes the specified policy from the specified certificate.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `principal` __:__ `String`


-}
detachPrincipalPolicy :
    String
    -> String
    -> AWS.Request ()
detachPrincipalPolicy policyName principal =
    AWS.Http.unsignedRequest
        "DetachPrincipalPolicy"
        "DELETE"
        ("/principal-policies/" ++ policyName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Detaches the specified principal from the specified thing.</p>

__Required Parameters__

* `thingName` __:__ `String`
* `principal` __:__ `String`


-}
detachThingPrincipal :
    String
    -> String
    -> AWS.Request DetachThingPrincipalResponse
detachThingPrincipal thingName principal =
    AWS.Http.unsignedRequest
        "DetachThingPrincipal"
        "DELETE"
        ("/things/" ++ thingName ++ "/principals")
        (AWS.Http.JsonBody
            JE.null
        )
        detachThingPrincipalResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Disables the specified rule.</p>

__Required Parameters__

* `ruleName` __:__ `String`


-}
disableTopicRule :
    String
    -> AWS.Request ()
disableTopicRule ruleName =
    AWS.Http.unsignedRequest
        "DisableTopicRule"
        "POST"
        ("/rules/" ++ ruleName ++ "/disable")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Enables the specified rule.</p>

__Required Parameters__

* `ruleName` __:__ `String`


-}
enableTopicRule :
    String
    -> AWS.Request ()
enableTopicRule ruleName =
    AWS.Http.unsignedRequest
        "EnableTopicRule"
        "POST"
        ("/rules/" ++ ruleName ++ "/enable")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Gets the logging options.</p>

__Required Parameters__



-}
getLoggingOptions :
    AWS.Request GetLoggingOptionsResponse
getLoggingOptions =
    AWS.Http.unsignedRequest
        "GetLoggingOptions"
        "GET"
        "/loggingOptions"
        (AWS.Http.QueryParams
            [
            ]
        )
        getLoggingOptionsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about the specified policy with the policy document of the default version.</p>

__Required Parameters__

* `policyName` __:__ `String`


-}
getPolicy :
    String
    -> AWS.Request GetPolicyResponse
getPolicy policyName =
    AWS.Http.unsignedRequest
        "GetPolicy"
        "GET"
        ("/policies/" ++ policyName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getPolicyResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about the specified policy version.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `policyVersionId` __:__ `String`


-}
getPolicyVersion :
    String
    -> String
    -> AWS.Request GetPolicyVersionResponse
getPolicyVersion policyName policyVersionId =
    AWS.Http.unsignedRequest
        "GetPolicyVersion"
        "GET"
        ("/policies/" ++ policyName ++ "/version/" ++ policyVersionId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getPolicyVersionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets a registration code used to register a CA certificate with AWS IoT.</p>

__Required Parameters__



-}
getRegistrationCode :
    AWS.Request GetRegistrationCodeResponse
getRegistrationCode =
    AWS.Http.unsignedRequest
        "GetRegistrationCode"
        "GET"
        "/registrationcode"
        (AWS.Http.QueryParams
            [
            ]
        )
        getRegistrationCodeResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Gets information about the specified rule.</p>

__Required Parameters__

* `ruleName` __:__ `String`


-}
getTopicRule :
    String
    -> AWS.Request GetTopicRuleResponse
getTopicRule ruleName =
    AWS.Http.unsignedRequest
        "GetTopicRule"
        "GET"
        ("/rules/" ++ ruleName ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        getTopicRuleResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the CA certificates registered for your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

__Required Parameters__



-}
listCACertificates :
    (ListCACertificatesOptions -> ListCACertificatesOptions)
    -> AWS.Request ListCACertificatesResponse
listCACertificates setOptions =
  let
    options = setOptions (ListCACertificatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCACertificates"
        "GET"
        "/cacertificates"
        (AWS.Http.QueryParams
            [
            ]
        )
        listCACertificatesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listCACertificates request
-}
type alias ListCACertificatesOptions =
    { pageSize : Maybe Int
    , marker : Maybe String
    , ascendingOrder : Maybe Bool
    }



{-| <p>Lists the certificates registered in your AWS account.</p> <p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

__Required Parameters__



-}
listCertificates :
    (ListCertificatesOptions -> ListCertificatesOptions)
    -> AWS.Request ListCertificatesResponse
listCertificates setOptions =
  let
    options = setOptions (ListCertificatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCertificates"
        "GET"
        "/certificates"
        (AWS.Http.QueryParams
            [
            ]
        )
        listCertificatesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listCertificates request
-}
type alias ListCertificatesOptions =
    { pageSize : Maybe Int
    , marker : Maybe String
    , ascendingOrder : Maybe Bool
    }



{-| <p>List the device certificates signed by the specified CA certificate.</p>

__Required Parameters__

* `caCertificateId` __:__ `String`


-}
listCertificatesByCA :
    String
    -> (ListCertificatesByCAOptions -> ListCertificatesByCAOptions)
    -> AWS.Request ListCertificatesByCAResponse
listCertificatesByCA caCertificateId setOptions =
  let
    options = setOptions (ListCertificatesByCAOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCertificatesByCA"
        "GET"
        ("/certificates-by-ca/" ++ caCertificateId ++ "")
        (AWS.Http.QueryParams
            [
            ]
        )
        listCertificatesByCAResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listCertificatesByCA request
-}
type alias ListCertificatesByCAOptions =
    { pageSize : Maybe Int
    , marker : Maybe String
    , ascendingOrder : Maybe Bool
    }



{-| <p>Lists certificates that are being transfered but not yet accepted.</p>

__Required Parameters__



-}
listOutgoingCertificates :
    (ListOutgoingCertificatesOptions -> ListOutgoingCertificatesOptions)
    -> AWS.Request ListOutgoingCertificatesResponse
listOutgoingCertificates setOptions =
  let
    options = setOptions (ListOutgoingCertificatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListOutgoingCertificates"
        "GET"
        "/certificates-out-going"
        (AWS.Http.QueryParams
            [
            ]
        )
        listOutgoingCertificatesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listOutgoingCertificates request
-}
type alias ListOutgoingCertificatesOptions =
    { pageSize : Maybe Int
    , marker : Maybe String
    , ascendingOrder : Maybe Bool
    }



{-| <p>Lists your policies.</p>

__Required Parameters__



-}
listPolicies :
    (ListPoliciesOptions -> ListPoliciesOptions)
    -> AWS.Request ListPoliciesResponse
listPolicies setOptions =
  let
    options = setOptions (ListPoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPolicies"
        "GET"
        "/policies"
        (AWS.Http.QueryParams
            [
            ]
        )
        listPoliciesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPolicies request
-}
type alias ListPoliciesOptions =
    { marker : Maybe String
    , pageSize : Maybe Int
    , ascendingOrder : Maybe Bool
    }



{-| <p>Lists the principals associated with the specified policy.</p>

__Required Parameters__

* `policyName` __:__ `String`


-}
listPolicyPrincipals :
    String
    -> (ListPolicyPrincipalsOptions -> ListPolicyPrincipalsOptions)
    -> AWS.Request ListPolicyPrincipalsResponse
listPolicyPrincipals policyName setOptions =
  let
    options = setOptions (ListPolicyPrincipalsOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPolicyPrincipals"
        "GET"
        "/policy-principals"
        (AWS.Http.QueryParams
            [
            ]
        )
        listPolicyPrincipalsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPolicyPrincipals request
-}
type alias ListPolicyPrincipalsOptions =
    { marker : Maybe String
    , pageSize : Maybe Int
    , ascendingOrder : Maybe Bool
    }



{-| <p>Lists the versions of the specified policy and identifies the default version.</p>

__Required Parameters__

* `policyName` __:__ `String`


-}
listPolicyVersions :
    String
    -> AWS.Request ListPolicyVersionsResponse
listPolicyVersions policyName =
    AWS.Http.unsignedRequest
        "ListPolicyVersions"
        "GET"
        ("/policies/" ++ policyName ++ "/version")
        (AWS.Http.QueryParams
            [
            ]
        )
        listPolicyVersionsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p>

__Required Parameters__

* `principal` __:__ `String`


-}
listPrincipalPolicies :
    String
    -> (ListPrincipalPoliciesOptions -> ListPrincipalPoliciesOptions)
    -> AWS.Request ListPrincipalPoliciesResponse
listPrincipalPolicies principal setOptions =
  let
    options = setOptions (ListPrincipalPoliciesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPrincipalPolicies"
        "GET"
        "/principal-policies"
        (AWS.Http.QueryParams
            [
            ]
        )
        listPrincipalPoliciesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPrincipalPolicies request
-}
type alias ListPrincipalPoliciesOptions =
    { marker : Maybe String
    , pageSize : Maybe Int
    , ascendingOrder : Maybe Bool
    }



{-| <p>Lists the things associated with the specified principal.</p>

__Required Parameters__

* `principal` __:__ `String`


-}
listPrincipalThings :
    String
    -> (ListPrincipalThingsOptions -> ListPrincipalThingsOptions)
    -> AWS.Request ListPrincipalThingsResponse
listPrincipalThings principal setOptions =
  let
    options = setOptions (ListPrincipalThingsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListPrincipalThings"
        "GET"
        "/principals/things"
        (AWS.Http.QueryParams
            [
            ]
        )
        listPrincipalThingsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listPrincipalThings request
-}
type alias ListPrincipalThingsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    }



{-| <p>Lists the principals associated with the specified thing.</p>

__Required Parameters__

* `thingName` __:__ `String`


-}
listThingPrincipals :
    String
    -> AWS.Request ListThingPrincipalsResponse
listThingPrincipals thingName =
    AWS.Http.unsignedRequest
        "ListThingPrincipals"
        "GET"
        ("/things/" ++ thingName ++ "/principals")
        (AWS.Http.QueryParams
            [
            ]
        )
        listThingPrincipalsResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Lists the existing thing types.</p>

__Required Parameters__



-}
listThingTypes :
    (ListThingTypesOptions -> ListThingTypesOptions)
    -> AWS.Request ListThingTypesResponse
listThingTypes setOptions =
  let
    options = setOptions (ListThingTypesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListThingTypes"
        "GET"
        "/thing-types"
        (AWS.Http.QueryParams
            [
            ]
        )
        listThingTypesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listThingTypes request
-}
type alias ListThingTypesOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , thingTypeName : Maybe String
    }



{-| <p>Lists your things. Use the <b>attributeName</b> and <b>attributeValue</b> parameters to filter your things. For example, calling <code>ListThings</code> with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute <b>Color</b> with the value <b>Red</b>. </p>

__Required Parameters__



-}
listThings :
    (ListThingsOptions -> ListThingsOptions)
    -> AWS.Request ListThingsResponse
listThings setOptions =
  let
    options = setOptions (ListThingsOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListThings"
        "GET"
        "/things"
        (AWS.Http.QueryParams
            [
            ]
        )
        listThingsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listThings request
-}
type alias ListThingsOptions =
    { nextToken : Maybe String
    , maxResults : Maybe Int
    , attributeName : Maybe String
    , attributeValue : Maybe String
    , thingTypeName : Maybe String
    }



{-| <p>Lists the rules for the specific topic.</p>

__Required Parameters__



-}
listTopicRules :
    (ListTopicRulesOptions -> ListTopicRulesOptions)
    -> AWS.Request ListTopicRulesResponse
listTopicRules setOptions =
  let
    options = setOptions (ListTopicRulesOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListTopicRules"
        "GET"
        "/rules"
        (AWS.Http.QueryParams
            [
            ]
        )
        listTopicRulesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listTopicRules request
-}
type alias ListTopicRulesOptions =
    { topic : Maybe String
    , maxResults : Maybe Int
    , nextToken : Maybe String
    , ruleDisabled : Maybe Bool
    }



{-| <p>Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field and public key. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.</p>

__Required Parameters__

* `caCertificate` __:__ `String`
* `verificationCertificate` __:__ `String`


-}
registerCACertificate :
    String
    -> String
    -> (RegisterCACertificateOptions -> RegisterCACertificateOptions)
    -> AWS.Request RegisterCACertificateResponse
registerCACertificate caCertificate verificationCertificate setOptions =
  let
    options = setOptions (RegisterCACertificateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterCACertificate"
        "POST"
        "/cacertificate"
        (AWS.Http.JsonBody
            JE.null
        )
        registerCACertificateResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a registerCACertificate request
-}
type alias RegisterCACertificateOptions =
    { setAsActive : Maybe Bool
    , allowAutoRegistration : Maybe Bool
    }



{-| <p>Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.</p>

__Required Parameters__

* `certificatePem` __:__ `String`


-}
registerCertificate :
    String
    -> (RegisterCertificateOptions -> RegisterCertificateOptions)
    -> AWS.Request RegisterCertificateResponse
registerCertificate certificatePem setOptions =
  let
    options = setOptions (RegisterCertificateOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RegisterCertificate"
        "POST"
        "/certificate/register"
        (AWS.Http.JsonBody
            JE.null
        )
        registerCertificateResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a registerCertificate request
-}
type alias RegisterCertificateOptions =
    { caCertificatePem : Maybe String
    , setAsActive : Maybe Bool
    , status : Maybe CertificateStatus
    }



{-| <p>Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from <b>PENDING_TRANSFER</b> to <b>INACTIVE</b>.</p> <p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p> <p>This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
rejectCertificateTransfer :
    String
    -> (RejectCertificateTransferOptions -> RejectCertificateTransferOptions)
    -> AWS.Request ()
rejectCertificateTransfer certificateId setOptions =
  let
    options = setOptions (RejectCertificateTransferOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "RejectCertificateTransfer"
        "PATCH"
        ("/reject-certificate-transfer/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a rejectCertificateTransfer request
-}
type alias RejectCertificateTransferOptions =
    { rejectReason : Maybe String
    }



{-| <p>Replaces the specified rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

__Required Parameters__

* `ruleName` __:__ `String`
* `topicRulePayload` __:__ `TopicRulePayload`


-}
replaceTopicRule :
    String
    -> TopicRulePayload
    -> AWS.Request ()
replaceTopicRule ruleName topicRulePayload =
    AWS.Http.unsignedRequest
        "ReplaceTopicRule"
        "PATCH"
        ("/rules/" ++ ruleName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.</p>

__Required Parameters__

* `policyName` __:__ `String`
* `policyVersionId` __:__ `String`


-}
setDefaultPolicyVersion :
    String
    -> String
    -> AWS.Request ()
setDefaultPolicyVersion policyName policyVersionId =
    AWS.Http.unsignedRequest
        "SetDefaultPolicyVersion"
        "PATCH"
        ("/policies/" ++ policyName ++ "/version/" ++ policyVersionId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Sets the logging options.</p>

__Required Parameters__

* `loggingOptionsPayload` __:__ `LoggingOptionsPayload`


-}
setLoggingOptions :
    LoggingOptionsPayload
    -> AWS.Request ()
setLoggingOptions loggingOptionsPayload =
    AWS.Http.unsignedRequest
        "SetLoggingOptions"
        "POST"
        "/loggingOptions"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Transfers the specified certificate to the specified AWS account.</p> <p>You can cancel the transfer until it is acknowledged by the recipient.</p> <p>No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target.</p> <p>The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.</p> <p>The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.</p>

__Required Parameters__

* `certificateId` __:__ `String`
* `targetAwsAccount` __:__ `String`


-}
transferCertificate :
    String
    -> String
    -> (TransferCertificateOptions -> TransferCertificateOptions)
    -> AWS.Request TransferCertificateResponse
transferCertificate certificateId targetAwsAccount setOptions =
  let
    options = setOptions (TransferCertificateOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "TransferCertificate"
        "PATCH"
        ("/transfer-certificate/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        transferCertificateResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a transferCertificate request
-}
type alias TransferCertificateOptions =
    { transferMessage : Maybe String
    }



{-| <p>Updates a registered CA certificate.</p>

__Required Parameters__

* `certificateId` __:__ `String`


-}
updateCACertificate :
    String
    -> (UpdateCACertificateOptions -> UpdateCACertificateOptions)
    -> AWS.Request ()
updateCACertificate certificateId setOptions =
  let
    options = setOptions (UpdateCACertificateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateCACertificate"
        "PUT"
        ("/cacertificate/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a updateCACertificate request
-}
type alias UpdateCACertificateOptions =
    { newStatus : Maybe CACertificateStatus
    , newAutoRegistrationStatus : Maybe AutoRegistrationStatus
    }



{-| <p>Updates the status of the specified certificate. This operation is idempotent.</p> <p>Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.</p> <p>The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.</p>

__Required Parameters__

* `certificateId` __:__ `String`
* `newStatus` __:__ `CertificateStatus`


-}
updateCertificate :
    String
    -> CertificateStatus
    -> AWS.Request ()
updateCertificate certificateId newStatus =
    AWS.Http.unsignedRequest
        "UpdateCertificate"
        "PUT"
        ("/certificates/" ++ certificateId ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Updates the data for a thing.</p>

__Required Parameters__

* `thingName` __:__ `String`


-}
updateThing :
    String
    -> (UpdateThingOptions -> UpdateThingOptions)
    -> AWS.Request UpdateThingResponse
updateThing thingName setOptions =
  let
    options = setOptions (UpdateThingOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "UpdateThing"
        "PATCH"
        ("/things/" ++ thingName ++ "")
        (AWS.Http.JsonBody
            JE.null
        )
        updateThingResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a updateThing request
-}
type alias UpdateThingOptions =
    { thingTypeName : Maybe String
    , attributePayload : Maybe AttributePayload
    , expectedVersion : Maybe Int
    , removeThingType : Maybe Bool
    }




{-| <p>Describes the actions associated with a rule.</p>
-}
type alias Action =
    { dynamoDB : Maybe DynamoDBAction
    , dynamoDBv2 : Maybe DynamoDBv2Action
    , lambda : Maybe LambdaAction
    , sns : Maybe SnsAction
    , sqs : Maybe SqsAction
    , kinesis : Maybe KinesisAction
    , republish : Maybe RepublishAction
    , s3 : Maybe S3Action
    , firehose : Maybe FirehoseAction
    , cloudwatchMetric : Maybe CloudwatchMetricAction
    , cloudwatchAlarm : Maybe CloudwatchAlarmAction
    , elasticsearch : Maybe ElasticsearchAction
    }



actionDecoder : JD.Decoder Action
actionDecoder =
    JDP.decode Action
        |> JDP.optional "dynamoDB" (JD.nullable dynamoDBActionDecoder) Nothing
        |> JDP.optional "dynamoDBv2" (JD.nullable dynamoDBv2ActionDecoder) Nothing
        |> JDP.optional "lambda" (JD.nullable lambdaActionDecoder) Nothing
        |> JDP.optional "sns" (JD.nullable snsActionDecoder) Nothing
        |> JDP.optional "sqs" (JD.nullable sqsActionDecoder) Nothing
        |> JDP.optional "kinesis" (JD.nullable kinesisActionDecoder) Nothing
        |> JDP.optional "republish" (JD.nullable republishActionDecoder) Nothing
        |> JDP.optional "s3" (JD.nullable s3ActionDecoder) Nothing
        |> JDP.optional "firehose" (JD.nullable firehoseActionDecoder) Nothing
        |> JDP.optional "cloudwatchMetric" (JD.nullable cloudwatchMetricActionDecoder) Nothing
        |> JDP.optional "cloudwatchAlarm" (JD.nullable cloudwatchAlarmActionDecoder) Nothing
        |> JDP.optional "elasticsearch" (JD.nullable elasticsearchActionDecoder) Nothing




{-| Type of HTTP response from attachThingPrincipal
-}
type alias AttachThingPrincipalResponse =
    { 
    }



attachThingPrincipalResponseDecoder : JD.Decoder AttachThingPrincipalResponse
attachThingPrincipalResponseDecoder =
    JDP.decode AttachThingPrincipalResponse



{-| <p>The attribute payload.</p>
-}
type alias AttributePayload =
    { attributes : Maybe (Dict String String)
    , merge : Maybe Bool
    }



attributePayloadDecoder : JD.Decoder AttributePayload
attributePayloadDecoder =
    JDP.decode AttributePayload
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "merge" (JD.nullable JD.bool) Nothing




{-| One of

* `AutoRegistrationStatus_ENABLE`
* `AutoRegistrationStatus_DISABLE`

-}
type AutoRegistrationStatus
    = AutoRegistrationStatus_ENABLE
    | AutoRegistrationStatus_DISABLE



autoRegistrationStatusDecoder : JD.Decoder AutoRegistrationStatus
autoRegistrationStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENABLE" ->
                        JD.succeed AutoRegistrationStatus_ENABLE

                    "DISABLE" ->
                        JD.succeed AutoRegistrationStatus_DISABLE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A CA certificate.</p>
-}
type alias CACertificate =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    , status : Maybe CACertificateStatus
    , creationDate : Maybe Date
    }



cACertificateDecoder : JD.Decoder CACertificate
cACertificateDecoder =
    JDP.decode CACertificate
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable cACertificateStatusDecoder) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing




{-| <p>Describes a CA certificate.</p>
-}
type alias CACertificateDescription =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    , status : Maybe CACertificateStatus
    , certificatePem : Maybe String
    , ownedBy : Maybe String
    , creationDate : Maybe Date
    , autoRegistrationStatus : Maybe AutoRegistrationStatus
    }



cACertificateDescriptionDecoder : JD.Decoder CACertificateDescription
cACertificateDescriptionDecoder =
    JDP.decode CACertificateDescription
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable cACertificateStatusDecoder) Nothing
        |> JDP.optional "certificatePem" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "autoRegistrationStatus" (JD.nullable autoRegistrationStatusDecoder) Nothing




{-| One of

* `CACertificateStatus_ACTIVE`
* `CACertificateStatus_INACTIVE`

-}
type CACertificateStatus
    = CACertificateStatus_ACTIVE
    | CACertificateStatus_INACTIVE



cACertificateStatusDecoder : JD.Decoder CACertificateStatus
cACertificateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed CACertificateStatus_ACTIVE

                    "INACTIVE" ->
                        JD.succeed CACertificateStatus_INACTIVE


                    _ ->
                        JD.fail "bad thing"
            )



{-| One of

* `CannedAccessControlList_private`
* `CannedAccessControlList_public-read`
* `CannedAccessControlList_public-read-write`
* `CannedAccessControlList_aws-exec-read`
* `CannedAccessControlList_authenticated-read`
* `CannedAccessControlList_bucket-owner-read`
* `CannedAccessControlList_bucket-owner-full-control`
* `CannedAccessControlList_log-delivery-write`

-}
type CannedAccessControlList
    = CannedAccessControlList_private
    | CannedAccessControlList_public_read
    | CannedAccessControlList_public_read_write
    | CannedAccessControlList_aws_exec_read
    | CannedAccessControlList_authenticated_read
    | CannedAccessControlList_bucket_owner_read
    | CannedAccessControlList_bucket_owner_full_control
    | CannedAccessControlList_log_delivery_write



cannedAccessControlListDecoder : JD.Decoder CannedAccessControlList
cannedAccessControlListDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "private" ->
                        JD.succeed CannedAccessControlList_private

                    "public_read" ->
                        JD.succeed CannedAccessControlList_public_read

                    "public_read_write" ->
                        JD.succeed CannedAccessControlList_public_read_write

                    "aws_exec_read" ->
                        JD.succeed CannedAccessControlList_aws_exec_read

                    "authenticated_read" ->
                        JD.succeed CannedAccessControlList_authenticated_read

                    "bucket_owner_read" ->
                        JD.succeed CannedAccessControlList_bucket_owner_read

                    "bucket_owner_full_control" ->
                        JD.succeed CannedAccessControlList_bucket_owner_full_control

                    "log_delivery_write" ->
                        JD.succeed CannedAccessControlList_log_delivery_write


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Information about a certificate.</p>
-}
type alias Certificate =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    , status : Maybe CertificateStatus
    , creationDate : Maybe Date
    }



certificateDecoder : JD.Decoder Certificate
certificateDecoder =
    JDP.decode Certificate
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable certificateStatusDecoder) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing




{-| <p>Unable to verify the CA certificate used to sign the device certificate you are attempting to register. This is happens when you have registered more than one CA certificate that has the same subject field and public key.</p>
-}
type alias CertificateConflictException =
    { message : Maybe String
    }



certificateConflictExceptionDecoder : JD.Decoder CertificateConflictException
certificateConflictExceptionDecoder =
    JDP.decode CertificateConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes a certificate.</p>
-}
type alias CertificateDescription =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    , caCertificateId : Maybe String
    , status : Maybe CertificateStatus
    , certificatePem : Maybe String
    , ownedBy : Maybe String
    , previousOwnedBy : Maybe String
    , creationDate : Maybe Date
    , lastModifiedDate : Maybe Date
    , transferData : Maybe TransferData
    }



certificateDescriptionDecoder : JD.Decoder CertificateDescription
certificateDescriptionDecoder =
    JDP.decode CertificateDescription
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "caCertificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "status" (JD.nullable certificateStatusDecoder) Nothing
        |> JDP.optional "certificatePem" (JD.nullable JD.string) Nothing
        |> JDP.optional "ownedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "previousOwnedBy" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "lastModifiedDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "transferData" (JD.nullable transferDataDecoder) Nothing




{-| <p>The certificate operation is not allowed.</p>
-}
type alias CertificateStateException =
    { message : Maybe String
    }



certificateStateExceptionDecoder : JD.Decoder CertificateStateException
certificateStateExceptionDecoder =
    JDP.decode CertificateStateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `CertificateStatus_ACTIVE`
* `CertificateStatus_INACTIVE`
* `CertificateStatus_REVOKED`
* `CertificateStatus_PENDING_TRANSFER`
* `CertificateStatus_REGISTER_INACTIVE`
* `CertificateStatus_PENDING_ACTIVATION`

-}
type CertificateStatus
    = CertificateStatus_ACTIVE
    | CertificateStatus_INACTIVE
    | CertificateStatus_REVOKED
    | CertificateStatus_PENDING_TRANSFER
    | CertificateStatus_REGISTER_INACTIVE
    | CertificateStatus_PENDING_ACTIVATION



certificateStatusDecoder : JD.Decoder CertificateStatus
certificateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ACTIVE" ->
                        JD.succeed CertificateStatus_ACTIVE

                    "INACTIVE" ->
                        JD.succeed CertificateStatus_INACTIVE

                    "REVOKED" ->
                        JD.succeed CertificateStatus_REVOKED

                    "PENDING_TRANSFER" ->
                        JD.succeed CertificateStatus_PENDING_TRANSFER

                    "REGISTER_INACTIVE" ->
                        JD.succeed CertificateStatus_REGISTER_INACTIVE

                    "PENDING_ACTIVATION" ->
                        JD.succeed CertificateStatus_PENDING_ACTIVATION


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The certificate is invalid.</p>
-}
type alias CertificateValidationException =
    { message : Maybe String
    }



certificateValidationExceptionDecoder : JD.Decoder CertificateValidationException
certificateValidationExceptionDecoder =
    JDP.decode CertificateValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes an action that updates a CloudWatch alarm.</p>
-}
type alias CloudwatchAlarmAction =
    { roleArn : String
    , alarmName : String
    , stateReason : String
    , stateValue : String
    }



cloudwatchAlarmActionDecoder : JD.Decoder CloudwatchAlarmAction
cloudwatchAlarmActionDecoder =
    JDP.decode CloudwatchAlarmAction
        |> JDP.required "roleArn" JD.string
        |> JDP.required "alarmName" JD.string
        |> JDP.required "stateReason" JD.string
        |> JDP.required "stateValue" JD.string




{-| <p>Describes an action that captures a CloudWatch metric.</p>
-}
type alias CloudwatchMetricAction =
    { roleArn : String
    , metricNamespace : String
    , metricName : String
    , metricValue : String
    , metricUnit : String
    , metricTimestamp : Maybe String
    }



cloudwatchMetricActionDecoder : JD.Decoder CloudwatchMetricAction
cloudwatchMetricActionDecoder =
    JDP.decode CloudwatchMetricAction
        |> JDP.required "roleArn" JD.string
        |> JDP.required "metricNamespace" JD.string
        |> JDP.required "metricName" JD.string
        |> JDP.required "metricValue" JD.string
        |> JDP.required "metricUnit" JD.string
        |> JDP.optional "metricTimestamp" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createCertificateFromCsr
-}
type alias CreateCertificateFromCsrResponse =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    , certificatePem : Maybe String
    }



createCertificateFromCsrResponseDecoder : JD.Decoder CreateCertificateFromCsrResponse
createCertificateFromCsrResponseDecoder =
    JDP.decode CreateCertificateFromCsrResponse
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificatePem" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createKeysAndCertificate
-}
type alias CreateKeysAndCertificateResponse =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    , certificatePem : Maybe String
    , keyPair : Maybe KeyPair
    }



createKeysAndCertificateResponseDecoder : JD.Decoder CreateKeysAndCertificateResponse
createKeysAndCertificateResponseDecoder =
    JDP.decode CreateKeysAndCertificateResponse
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificatePem" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyPair" (JD.nullable keyPairDecoder) Nothing




{-| Type of HTTP response from createPolicy
-}
type alias CreatePolicyResponse =
    { policyName : Maybe String
    , policyArn : Maybe String
    , policyDocument : Maybe String
    , policyVersionId : Maybe String
    }



createPolicyResponseDecoder : JD.Decoder CreatePolicyResponse
createPolicyResponseDecoder =
    JDP.decode CreatePolicyResponse
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyDocument" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyVersionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createPolicyVersion
-}
type alias CreatePolicyVersionResponse =
    { policyArn : Maybe String
    , policyDocument : Maybe String
    , policyVersionId : Maybe String
    , isDefaultVersion : Maybe Bool
    }



createPolicyVersionResponseDecoder : JD.Decoder CreatePolicyVersionResponse
createPolicyVersionResponseDecoder =
    JDP.decode CreatePolicyVersionResponse
        |> JDP.optional "policyArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyDocument" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyVersionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isDefaultVersion" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from createThing
-}
type alias CreateThingResponse =
    { thingName : Maybe String
    , thingArn : Maybe String
    }



createThingResponseDecoder : JD.Decoder CreateThingResponse
createThingResponseDecoder =
    JDP.decode CreateThingResponse
        |> JDP.optional "thingName" (JD.nullable JD.string) Nothing
        |> JDP.optional "thingArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createThingType
-}
type alias CreateThingTypeResponse =
    { thingTypeName : Maybe String
    , thingTypeArn : Maybe String
    }



createThingTypeResponseDecoder : JD.Decoder CreateThingTypeResponse
createThingTypeResponseDecoder =
    JDP.decode CreateThingTypeResponse
        |> JDP.optional "thingTypeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "thingTypeArn" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteCACertificate
-}
type alias DeleteCACertificateResponse =
    { 
    }



deleteCACertificateResponseDecoder : JD.Decoder DeleteCACertificateResponse
deleteCACertificateResponseDecoder =
    JDP.decode DeleteCACertificateResponse



{-| <p>You can't delete the resource because it is attached to one or more resources.</p>
-}
type alias DeleteConflictException =
    { message : Maybe String
    }



deleteConflictExceptionDecoder : JD.Decoder DeleteConflictException
deleteConflictExceptionDecoder =
    JDP.decode DeleteConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from deleteRegistrationCode
-}
type alias DeleteRegistrationCodeResponse =
    { 
    }



deleteRegistrationCodeResponseDecoder : JD.Decoder DeleteRegistrationCodeResponse
deleteRegistrationCodeResponseDecoder =
    JDP.decode DeleteRegistrationCodeResponse



{-| Type of HTTP response from deleteThing
-}
type alias DeleteThingResponse =
    { 
    }



deleteThingResponseDecoder : JD.Decoder DeleteThingResponse
deleteThingResponseDecoder =
    JDP.decode DeleteThingResponse



{-| Type of HTTP response from deleteThingType
-}
type alias DeleteThingTypeResponse =
    { 
    }



deleteThingTypeResponseDecoder : JD.Decoder DeleteThingTypeResponse
deleteThingTypeResponseDecoder =
    JDP.decode DeleteThingTypeResponse



{-| Type of HTTP response from deprecateThingType
-}
type alias DeprecateThingTypeResponse =
    { 
    }



deprecateThingTypeResponseDecoder : JD.Decoder DeprecateThingTypeResponse
deprecateThingTypeResponseDecoder =
    JDP.decode DeprecateThingTypeResponse



{-| Type of HTTP response from describeCACertificate
-}
type alias DescribeCACertificateResponse =
    { certificateDescription : Maybe CACertificateDescription
    }



describeCACertificateResponseDecoder : JD.Decoder DescribeCACertificateResponse
describeCACertificateResponseDecoder =
    JDP.decode DescribeCACertificateResponse
        |> JDP.optional "certificateDescription" (JD.nullable cACertificateDescriptionDecoder) Nothing




{-| Type of HTTP response from describeCertificate
-}
type alias DescribeCertificateResponse =
    { certificateDescription : Maybe CertificateDescription
    }



describeCertificateResponseDecoder : JD.Decoder DescribeCertificateResponse
describeCertificateResponseDecoder =
    JDP.decode DescribeCertificateResponse
        |> JDP.optional "certificateDescription" (JD.nullable certificateDescriptionDecoder) Nothing




{-| Type of HTTP response from describeEndpoint
-}
type alias DescribeEndpointResponse =
    { endpointAddress : Maybe String
    }



describeEndpointResponseDecoder : JD.Decoder DescribeEndpointResponse
describeEndpointResponseDecoder =
    JDP.decode DescribeEndpointResponse
        |> JDP.optional "endpointAddress" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeThing
-}
type alias DescribeThingResponse =
    { defaultClientId : Maybe String
    , thingName : Maybe String
    , thingTypeName : Maybe String
    , attributes : Maybe (Dict String String)
    , version : Maybe Int
    }



describeThingResponseDecoder : JD.Decoder DescribeThingResponse
describeThingResponseDecoder =
    JDP.decode DescribeThingResponse
        |> JDP.optional "defaultClientId" (JD.nullable JD.string) Nothing
        |> JDP.optional "thingName" (JD.nullable JD.string) Nothing
        |> JDP.optional "thingTypeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "version" (JD.nullable JD.int) Nothing




{-| Type of HTTP response from describeThingType
-}
type alias DescribeThingTypeResponse =
    { thingTypeName : Maybe String
    , thingTypeProperties : Maybe ThingTypeProperties
    , thingTypeMetadata : Maybe ThingTypeMetadata
    }



describeThingTypeResponseDecoder : JD.Decoder DescribeThingTypeResponse
describeThingTypeResponseDecoder =
    JDP.decode DescribeThingTypeResponse
        |> JDP.optional "thingTypeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "thingTypeProperties" (JD.nullable thingTypePropertiesDecoder) Nothing
        |> JDP.optional "thingTypeMetadata" (JD.nullable thingTypeMetadataDecoder) Nothing




{-| Type of HTTP response from detachThingPrincipal
-}
type alias DetachThingPrincipalResponse =
    { 
    }



detachThingPrincipalResponseDecoder : JD.Decoder DetachThingPrincipalResponse
detachThingPrincipalResponseDecoder =
    JDP.decode DetachThingPrincipalResponse



{-| <p>Describes an action to write to a DynamoDB table.</p> <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code> values must match the values used when you created the table.</p> <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a substitution template syntax. These templates provide data at runtime. The syntax is as follows: ${<i>sql-expression</i>}.</p> <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON properties, comparisons, calculations, and functions. For example, the following field uses the third level of the topic:</p> <p><code>"hashKeyValue": "${topic(3)}"</code></p> <p>The following field uses the timestamp:</p> <p><code>"rangeKeyValue": "${timestamp()}"</code></p>
-}
type alias DynamoDBAction =
    { tableName : String
    , roleArn : String
    , operation : Maybe String
    , hashKeyField : String
    , hashKeyValue : String
    , hashKeyType : Maybe DynamoKeyType
    , rangeKeyField : Maybe String
    , rangeKeyValue : Maybe String
    , rangeKeyType : Maybe DynamoKeyType
    , payloadField : Maybe String
    }



dynamoDBActionDecoder : JD.Decoder DynamoDBAction
dynamoDBActionDecoder =
    JDP.decode DynamoDBAction
        |> JDP.required "tableName" JD.string
        |> JDP.required "roleArn" JD.string
        |> JDP.optional "operation" (JD.nullable JD.string) Nothing
        |> JDP.required "hashKeyField" JD.string
        |> JDP.required "hashKeyValue" JD.string
        |> JDP.optional "hashKeyType" (JD.nullable dynamoKeyTypeDecoder) Nothing
        |> JDP.optional "rangeKeyField" (JD.nullable JD.string) Nothing
        |> JDP.optional "rangeKeyValue" (JD.nullable JD.string) Nothing
        |> JDP.optional "rangeKeyType" (JD.nullable dynamoKeyTypeDecoder) Nothing
        |> JDP.optional "payloadField" (JD.nullable JD.string) Nothing




{-| <p>Describes an action to write to a DynamoDB table.</p> <p>This DynamoDB action writes each attribute in the message payload into it's own column in the DynamoDB table.</p>
-}
type alias DynamoDBv2Action =
    { roleArn : Maybe String
    , putItem : Maybe PutItemInput
    }



dynamoDBv2ActionDecoder : JD.Decoder DynamoDBv2Action
dynamoDBv2ActionDecoder =
    JDP.decode DynamoDBv2Action
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "putItem" (JD.nullable putItemInputDecoder) Nothing




{-| One of

* `DynamoKeyType_STRING`
* `DynamoKeyType_NUMBER`

-}
type DynamoKeyType
    = DynamoKeyType_STRING
    | DynamoKeyType_NUMBER



dynamoKeyTypeDecoder : JD.Decoder DynamoKeyType
dynamoKeyTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "STRING" ->
                        JD.succeed DynamoKeyType_STRING

                    "NUMBER" ->
                        JD.succeed DynamoKeyType_NUMBER


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes an action that writes data to an Amazon Elasticsearch Service domain.</p>
-}
type alias ElasticsearchAction =
    { roleArn : String
    , endpoint : String
    , index : String
    , type_ : String
    , id : String
    }



elasticsearchActionDecoder : JD.Decoder ElasticsearchAction
elasticsearchActionDecoder =
    JDP.decode ElasticsearchAction
        |> JDP.required "roleArn" JD.string
        |> JDP.required "endpoint" JD.string
        |> JDP.required "index" JD.string
        |> JDP.required "type_" JD.string
        |> JDP.required "id" JD.string




{-| <p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>
-}
type alias FirehoseAction =
    { roleArn : String
    , deliveryStreamName : String
    , separator : Maybe String
    }



firehoseActionDecoder : JD.Decoder FirehoseAction
firehoseActionDecoder =
    JDP.decode FirehoseAction
        |> JDP.required "roleArn" JD.string
        |> JDP.required "deliveryStreamName" JD.string
        |> JDP.optional "separator" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getLoggingOptions
-}
type alias GetLoggingOptionsResponse =
    { roleArn : Maybe String
    , logLevel : Maybe LogLevel
    }



getLoggingOptionsResponseDecoder : JD.Decoder GetLoggingOptionsResponse
getLoggingOptionsResponseDecoder =
    JDP.decode GetLoggingOptionsResponse
        |> JDP.optional "roleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "logLevel" (JD.nullable logLevelDecoder) Nothing




{-| Type of HTTP response from getPolicy
-}
type alias GetPolicyResponse =
    { policyName : Maybe String
    , policyArn : Maybe String
    , policyDocument : Maybe String
    , defaultVersionId : Maybe String
    }



getPolicyResponseDecoder : JD.Decoder GetPolicyResponse
getPolicyResponseDecoder =
    JDP.decode GetPolicyResponse
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyDocument" (JD.nullable JD.string) Nothing
        |> JDP.optional "defaultVersionId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getPolicyVersion
-}
type alias GetPolicyVersionResponse =
    { policyArn : Maybe String
    , policyName : Maybe String
    , policyDocument : Maybe String
    , policyVersionId : Maybe String
    , isDefaultVersion : Maybe Bool
    }



getPolicyVersionResponseDecoder : JD.Decoder GetPolicyVersionResponse
getPolicyVersionResponseDecoder =
    JDP.decode GetPolicyVersionResponse
        |> JDP.optional "policyArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyDocument" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyVersionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isDefaultVersion" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from getRegistrationCode
-}
type alias GetRegistrationCodeResponse =
    { registrationCode : Maybe String
    }



getRegistrationCodeResponseDecoder : JD.Decoder GetRegistrationCodeResponse
getRegistrationCodeResponseDecoder =
    JDP.decode GetRegistrationCodeResponse
        |> JDP.optional "registrationCode" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getTopicRule
-}
type alias GetTopicRuleResponse =
    { ruleArn : Maybe String
    , rule : Maybe TopicRule
    }



getTopicRuleResponseDecoder : JD.Decoder GetTopicRuleResponse
getTopicRuleResponseDecoder =
    JDP.decode GetTopicRuleResponse
        |> JDP.optional "ruleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "rule" (JD.nullable topicRuleDecoder) Nothing




{-| <p>An unexpected error has occurred.</p>
-}
type alias InternalException =
    { message : Maybe String
    }



internalExceptionDecoder : JD.Decoder InternalException
internalExceptionDecoder =
    JDP.decode InternalException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>An unexpected error has occurred.</p>
-}
type alias InternalFailureException =
    { message : Maybe String
    }



internalFailureExceptionDecoder : JD.Decoder InternalFailureException
internalFailureExceptionDecoder =
    JDP.decode InternalFailureException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request is not valid.</p>
-}
type alias InvalidRequestException =
    { message : Maybe String
    }



invalidRequestExceptionDecoder : JD.Decoder InvalidRequestException
invalidRequestExceptionDecoder =
    JDP.decode InvalidRequestException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes a key pair.</p>
-}
type alias KeyPair =
    { publicKey : Maybe String
    , privateKey : Maybe String
    }



keyPairDecoder : JD.Decoder KeyPair
keyPairDecoder =
    JDP.decode KeyPair
        |> JDP.optional "publicKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "privateKey" (JD.nullable JD.string) Nothing




{-| <p>Describes an action to write data to an Amazon Kinesis stream.</p>
-}
type alias KinesisAction =
    { roleArn : String
    , streamName : String
    , partitionKey : Maybe String
    }



kinesisActionDecoder : JD.Decoder KinesisAction
kinesisActionDecoder =
    JDP.decode KinesisAction
        |> JDP.required "roleArn" JD.string
        |> JDP.required "streamName" JD.string
        |> JDP.optional "partitionKey" (JD.nullable JD.string) Nothing




{-| <p>Describes an action to invoke a Lambda function.</p>
-}
type alias LambdaAction =
    { functionArn : String
    }



lambdaActionDecoder : JD.Decoder LambdaAction
lambdaActionDecoder =
    JDP.decode LambdaAction
        |> JDP.required "functionArn" JD.string




{-| <p>The number of attached entities exceeds the limit.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listCACertificates
-}
type alias ListCACertificatesResponse =
    { certificates : Maybe (List CACertificate)
    , nextMarker : Maybe String
    }



listCACertificatesResponseDecoder : JD.Decoder ListCACertificatesResponse
listCACertificatesResponseDecoder =
    JDP.decode ListCACertificatesResponse
        |> JDP.optional "certificates" (JD.nullable (JD.list cACertificateDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listCertificatesByCA
-}
type alias ListCertificatesByCAResponse =
    { certificates : Maybe (List Certificate)
    , nextMarker : Maybe String
    }



listCertificatesByCAResponseDecoder : JD.Decoder ListCertificatesByCAResponse
listCertificatesByCAResponseDecoder =
    JDP.decode ListCertificatesByCAResponse
        |> JDP.optional "certificates" (JD.nullable (JD.list certificateDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listCertificates
-}
type alias ListCertificatesResponse =
    { certificates : Maybe (List Certificate)
    , nextMarker : Maybe String
    }



listCertificatesResponseDecoder : JD.Decoder ListCertificatesResponse
listCertificatesResponseDecoder =
    JDP.decode ListCertificatesResponse
        |> JDP.optional "certificates" (JD.nullable (JD.list certificateDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listOutgoingCertificates
-}
type alias ListOutgoingCertificatesResponse =
    { outgoingCertificates : Maybe (List OutgoingCertificate)
    , nextMarker : Maybe String
    }



listOutgoingCertificatesResponseDecoder : JD.Decoder ListOutgoingCertificatesResponse
listOutgoingCertificatesResponseDecoder =
    JDP.decode ListOutgoingCertificatesResponse
        |> JDP.optional "outgoingCertificates" (JD.nullable (JD.list outgoingCertificateDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPolicies
-}
type alias ListPoliciesResponse =
    { policies : Maybe (List Policy)
    , nextMarker : Maybe String
    }



listPoliciesResponseDecoder : JD.Decoder ListPoliciesResponse
listPoliciesResponseDecoder =
    JDP.decode ListPoliciesResponse
        |> JDP.optional "policies" (JD.nullable (JD.list policyDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPolicyPrincipals
-}
type alias ListPolicyPrincipalsResponse =
    { principals : Maybe (List String)
    , nextMarker : Maybe String
    }



listPolicyPrincipalsResponseDecoder : JD.Decoder ListPolicyPrincipalsResponse
listPolicyPrincipalsResponseDecoder =
    JDP.decode ListPolicyPrincipalsResponse
        |> JDP.optional "principals" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPolicyVersions
-}
type alias ListPolicyVersionsResponse =
    { policyVersions : Maybe (List PolicyVersion)
    }



listPolicyVersionsResponseDecoder : JD.Decoder ListPolicyVersionsResponse
listPolicyVersionsResponseDecoder =
    JDP.decode ListPolicyVersionsResponse
        |> JDP.optional "policyVersions" (JD.nullable (JD.list policyVersionDecoder)) Nothing




{-| Type of HTTP response from listPrincipalPolicies
-}
type alias ListPrincipalPoliciesResponse =
    { policies : Maybe (List Policy)
    , nextMarker : Maybe String
    }



listPrincipalPoliciesResponseDecoder : JD.Decoder ListPrincipalPoliciesResponse
listPrincipalPoliciesResponseDecoder =
    JDP.decode ListPrincipalPoliciesResponse
        |> JDP.optional "policies" (JD.nullable (JD.list policyDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listPrincipalThings
-}
type alias ListPrincipalThingsResponse =
    { things : Maybe (List String)
    , nextToken : Maybe String
    }



listPrincipalThingsResponseDecoder : JD.Decoder ListPrincipalThingsResponse
listPrincipalThingsResponseDecoder =
    JDP.decode ListPrincipalThingsResponse
        |> JDP.optional "things" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listThingPrincipals
-}
type alias ListThingPrincipalsResponse =
    { principals : Maybe (List String)
    }



listThingPrincipalsResponseDecoder : JD.Decoder ListThingPrincipalsResponse
listThingPrincipalsResponseDecoder =
    JDP.decode ListThingPrincipalsResponse
        |> JDP.optional "principals" (JD.nullable (JD.list JD.string)) Nothing




{-| Type of HTTP response from listThingTypes
-}
type alias ListThingTypesResponse =
    { thingTypes : Maybe (List ThingTypeDefinition)
    , nextToken : Maybe String
    }



listThingTypesResponseDecoder : JD.Decoder ListThingTypesResponse
listThingTypesResponseDecoder =
    JDP.decode ListThingTypesResponse
        |> JDP.optional "thingTypes" (JD.nullable (JD.list thingTypeDefinitionDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listThings
-}
type alias ListThingsResponse =
    { things : Maybe (List ThingAttribute)
    , nextToken : Maybe String
    }



listThingsResponseDecoder : JD.Decoder ListThingsResponse
listThingsResponseDecoder =
    JDP.decode ListThingsResponse
        |> JDP.optional "things" (JD.nullable (JD.list thingAttributeDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listTopicRules
-}
type alias ListTopicRulesResponse =
    { rules : Maybe (List TopicRuleListItem)
    , nextToken : Maybe String
    }



listTopicRulesResponseDecoder : JD.Decoder ListTopicRulesResponse
listTopicRulesResponseDecoder =
    JDP.decode ListTopicRulesResponse
        |> JDP.optional "rules" (JD.nullable (JD.list topicRuleListItemDecoder)) Nothing
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing




{-| One of

* `LogLevel_DEBUG`
* `LogLevel_INFO`
* `LogLevel_ERROR`
* `LogLevel_WARN`
* `LogLevel_DISABLED`

-}
type LogLevel
    = LogLevel_DEBUG
    | LogLevel_INFO
    | LogLevel_ERROR
    | LogLevel_WARN
    | LogLevel_DISABLED



logLevelDecoder : JD.Decoder LogLevel
logLevelDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "DEBUG" ->
                        JD.succeed LogLevel_DEBUG

                    "INFO" ->
                        JD.succeed LogLevel_INFO

                    "ERROR" ->
                        JD.succeed LogLevel_ERROR

                    "WARN" ->
                        JD.succeed LogLevel_WARN

                    "DISABLED" ->
                        JD.succeed LogLevel_DISABLED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Describes the logging options payload.</p>
-}
type alias LoggingOptionsPayload =
    { roleArn : String
    , logLevel : Maybe LogLevel
    }



loggingOptionsPayloadDecoder : JD.Decoder LoggingOptionsPayload
loggingOptionsPayloadDecoder =
    JDP.decode LoggingOptionsPayload
        |> JDP.required "roleArn" JD.string
        |> JDP.optional "logLevel" (JD.nullable logLevelDecoder) Nothing




{-| <p>The policy documentation is not valid.</p>
-}
type alias MalformedPolicyException =
    { message : Maybe String
    }



malformedPolicyExceptionDecoder : JD.Decoder MalformedPolicyException
malformedPolicyExceptionDecoder =
    JDP.decode MalformedPolicyException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `MessageFormat_RAW`
* `MessageFormat_JSON`

-}
type MessageFormat
    = MessageFormat_RAW
    | MessageFormat_JSON



messageFormatDecoder : JD.Decoder MessageFormat
messageFormatDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RAW" ->
                        JD.succeed MessageFormat_RAW

                    "JSON" ->
                        JD.succeed MessageFormat_JSON


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A certificate that has been transfered but not yet accepted.</p>
-}
type alias OutgoingCertificate =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    , transferredTo : Maybe String
    , transferDate : Maybe Date
    , transferMessage : Maybe String
    , creationDate : Maybe Date
    }



outgoingCertificateDecoder : JD.Decoder OutgoingCertificate
outgoingCertificateDecoder =
    JDP.decode OutgoingCertificate
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing
        |> JDP.optional "transferredTo" (JD.nullable JD.string) Nothing
        |> JDP.optional "transferDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "transferMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing




{-| <p>Describes an AWS IoT policy.</p>
-}
type alias Policy =
    { policyName : Maybe String
    , policyArn : Maybe String
    }



policyDecoder : JD.Decoder Policy
policyDecoder =
    JDP.decode Policy
        |> JDP.optional "policyName" (JD.nullable JD.string) Nothing
        |> JDP.optional "policyArn" (JD.nullable JD.string) Nothing




{-| <p>Describes a policy version.</p>
-}
type alias PolicyVersion =
    { versionId : Maybe String
    , isDefaultVersion : Maybe Bool
    , createDate : Maybe Date
    }



policyVersionDecoder : JD.Decoder PolicyVersion
policyVersionDecoder =
    JDP.decode PolicyVersion
        |> JDP.optional "versionId" (JD.nullable JD.string) Nothing
        |> JDP.optional "isDefaultVersion" (JD.nullable JD.bool) Nothing
        |> JDP.optional "createDate" (JD.nullable JDX.date) Nothing




{-| <p>The input for the DynamoActionVS action that specifies the DynamoDB table to which the message data will be written.</p>
-}
type alias PutItemInput =
    { tableName : String
    }



putItemInputDecoder : JD.Decoder PutItemInput
putItemInputDecoder =
    JDP.decode PutItemInput
        |> JDP.required "tableName" JD.string




{-| Type of HTTP response from registerCACertificate
-}
type alias RegisterCACertificateResponse =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    }



registerCACertificateResponseDecoder : JD.Decoder RegisterCACertificateResponse
registerCACertificateResponseDecoder =
    JDP.decode RegisterCACertificateResponse
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from registerCertificate
-}
type alias RegisterCertificateResponse =
    { certificateArn : Maybe String
    , certificateId : Maybe String
    }



registerCertificateResponseDecoder : JD.Decoder RegisterCertificateResponse
registerCertificateResponseDecoder =
    JDP.decode RegisterCertificateResponse
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateId" (JD.nullable JD.string) Nothing




{-| <p>The registration code is invalid.</p>
-}
type alias RegistrationCodeValidationException =
    { message : Maybe String
    }



registrationCodeValidationExceptionDecoder : JD.Decoder RegistrationCodeValidationException
registrationCodeValidationExceptionDecoder =
    JDP.decode RegistrationCodeValidationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes an action to republish to another topic.</p>
-}
type alias RepublishAction =
    { roleArn : String
    , topic : String
    }



republishActionDecoder : JD.Decoder RepublishAction
republishActionDecoder =
    JDP.decode RepublishAction
        |> JDP.required "roleArn" JD.string
        |> JDP.required "topic" JD.string




{-| <p>The resource already exists.</p>
-}
type alias ResourceAlreadyExistsException =
    { message : Maybe String
    , resourceId : Maybe String
    , resourceArn : Maybe String
    }



resourceAlreadyExistsExceptionDecoder : JD.Decoder ResourceAlreadyExistsException
resourceAlreadyExistsExceptionDecoder =
    JDP.decode ResourceAlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceId" (JD.nullable JD.string) Nothing
        |> JDP.optional "resourceArn" (JD.nullable JD.string) Nothing




{-| <p>The specified resource does not exist.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes an action to write data to an Amazon S3 bucket.</p>
-}
type alias S3Action =
    { roleArn : String
    , bucketName : String
    , key : String
    , cannedAcl : Maybe CannedAccessControlList
    }



s3ActionDecoder : JD.Decoder S3Action
s3ActionDecoder =
    JDP.decode S3Action
        |> JDP.required "roleArn" JD.string
        |> JDP.required "bucketName" JD.string
        |> JDP.required "key" JD.string
        |> JDP.optional "cannedAcl" (JD.nullable cannedAccessControlListDecoder) Nothing




{-| <p>The service is temporarily unavailable.</p>
-}
type alias ServiceUnavailableException =
    { message : Maybe String
    }



serviceUnavailableExceptionDecoder : JD.Decoder ServiceUnavailableException
serviceUnavailableExceptionDecoder =
    JDP.decode ServiceUnavailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes an action to publish to an Amazon SNS topic.</p>
-}
type alias SnsAction =
    { targetArn : String
    , roleArn : String
    , messageFormat : Maybe MessageFormat
    }



snsActionDecoder : JD.Decoder SnsAction
snsActionDecoder =
    JDP.decode SnsAction
        |> JDP.required "targetArn" JD.string
        |> JDP.required "roleArn" JD.string
        |> JDP.optional "messageFormat" (JD.nullable messageFormatDecoder) Nothing




{-| <p>The Rule-SQL expression can't be parsed correctly.</p>
-}
type alias SqlParseException =
    { message : Maybe String
    }



sqlParseExceptionDecoder : JD.Decoder SqlParseException
sqlParseExceptionDecoder =
    JDP.decode SqlParseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes an action to publish data to an Amazon SQS queue.</p>
-}
type alias SqsAction =
    { roleArn : String
    , queueUrl : String
    , useBase64 : Maybe Bool
    }



sqsActionDecoder : JD.Decoder SqsAction
sqsActionDecoder =
    JDP.decode SqsAction
        |> JDP.required "roleArn" JD.string
        |> JDP.required "queueUrl" JD.string
        |> JDP.optional "useBase64" (JD.nullable JD.bool) Nothing




{-| <p>The properties of the thing, including thing name, thing type name, and a list of thing attributes.</p>
-}
type alias ThingAttribute =
    { thingName : Maybe String
    , thingTypeName : Maybe String
    , attributes : Maybe (Dict String String)
    , version : Maybe Int
    }



thingAttributeDecoder : JD.Decoder ThingAttribute
thingAttributeDecoder =
    JDP.decode ThingAttribute
        |> JDP.optional "thingName" (JD.nullable JD.string) Nothing
        |> JDP.optional "thingTypeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "attributes" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "version" (JD.nullable JD.int) Nothing




{-| <p>The definition of the thing type, including thing type name and description.</p>
-}
type alias ThingTypeDefinition =
    { thingTypeName : Maybe String
    , thingTypeProperties : Maybe ThingTypeProperties
    , thingTypeMetadata : Maybe ThingTypeMetadata
    }



thingTypeDefinitionDecoder : JD.Decoder ThingTypeDefinition
thingTypeDefinitionDecoder =
    JDP.decode ThingTypeDefinition
        |> JDP.optional "thingTypeName" (JD.nullable JD.string) Nothing
        |> JDP.optional "thingTypeProperties" (JD.nullable thingTypePropertiesDecoder) Nothing
        |> JDP.optional "thingTypeMetadata" (JD.nullable thingTypeMetadataDecoder) Nothing




{-| <p>The ThingTypeMetadata contains additional information about the thing type including: creation date and time, a value indicating whether the thing type is deprecated, and a date and time when time was deprecated.</p>
-}
type alias ThingTypeMetadata =
    { deprecated : Maybe Bool
    , deprecationDate : Maybe Date
    , creationDate : Maybe Date
    }



thingTypeMetadataDecoder : JD.Decoder ThingTypeMetadata
thingTypeMetadataDecoder =
    JDP.decode ThingTypeMetadata
        |> JDP.optional "deprecated" (JD.nullable JD.bool) Nothing
        |> JDP.optional "deprecationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing




{-| <p>The ThingTypeProperties contains information about the thing type including: a thing type description, and a list of searchable thing attribute names.</p>
-}
type alias ThingTypeProperties =
    { thingTypeDescription : Maybe String
    , searchableAttributes : Maybe (List String)
    }



thingTypePropertiesDecoder : JD.Decoder ThingTypeProperties
thingTypePropertiesDecoder =
    JDP.decode ThingTypeProperties
        |> JDP.optional "thingTypeDescription" (JD.nullable JD.string) Nothing
        |> JDP.optional "searchableAttributes" (JD.nullable (JD.list JD.string)) Nothing




{-| <p>The rate exceeds the limit.</p>
-}
type alias ThrottlingException =
    { message : Maybe String
    }



throttlingExceptionDecoder : JD.Decoder ThrottlingException
throttlingExceptionDecoder =
    JDP.decode ThrottlingException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Describes a rule.</p>
-}
type alias TopicRule =
    { ruleName : Maybe String
    , sql : Maybe String
    , description : Maybe String
    , createdAt : Maybe Date
    , actions : Maybe (List Action)
    , ruleDisabled : Maybe Bool
    , awsIotSqlVersion : Maybe String
    }



topicRuleDecoder : JD.Decoder TopicRule
topicRuleDecoder =
    JDP.decode TopicRule
        |> JDP.optional "ruleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "sql" (JD.nullable JD.string) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "actions" (JD.nullable (JD.list actionDecoder)) Nothing
        |> JDP.optional "ruleDisabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "awsIotSqlVersion" (JD.nullable JD.string) Nothing




{-| <p>Describes a rule.</p>
-}
type alias TopicRuleListItem =
    { ruleArn : Maybe String
    , ruleName : Maybe String
    , topicPattern : Maybe String
    , createdAt : Maybe Date
    , ruleDisabled : Maybe Bool
    }



topicRuleListItemDecoder : JD.Decoder TopicRuleListItem
topicRuleListItemDecoder =
    JDP.decode TopicRuleListItem
        |> JDP.optional "ruleArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "ruleName" (JD.nullable JD.string) Nothing
        |> JDP.optional "topicPattern" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "ruleDisabled" (JD.nullable JD.bool) Nothing




{-| <p>Describes a rule.</p>
-}
type alias TopicRulePayload =
    { sql : String
    , description : Maybe String
    , actions : (List Action)
    , ruleDisabled : Maybe Bool
    , awsIotSqlVersion : Maybe String
    }



topicRulePayloadDecoder : JD.Decoder TopicRulePayload
topicRulePayloadDecoder =
    JDP.decode TopicRulePayload
        |> JDP.required "sql" JD.string
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.required "actions" (JD.list actionDecoder)
        |> JDP.optional "ruleDisabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "awsIotSqlVersion" (JD.nullable JD.string) Nothing




{-| <p>You can't revert the certificate transfer because the transfer is already complete.</p>
-}
type alias TransferAlreadyCompletedException =
    { message : Maybe String
    }



transferAlreadyCompletedExceptionDecoder : JD.Decoder TransferAlreadyCompletedException
transferAlreadyCompletedExceptionDecoder =
    JDP.decode TransferAlreadyCompletedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from transferCertificate
-}
type alias TransferCertificateResponse =
    { transferredCertificateArn : Maybe String
    }



transferCertificateResponseDecoder : JD.Decoder TransferCertificateResponse
transferCertificateResponseDecoder =
    JDP.decode TransferCertificateResponse
        |> JDP.optional "transferredCertificateArn" (JD.nullable JD.string) Nothing




{-| <p>You can't transfer the certificate because authorization policies are still attached.</p>
-}
type alias TransferConflictException =
    { message : Maybe String
    }



transferConflictExceptionDecoder : JD.Decoder TransferConflictException
transferConflictExceptionDecoder =
    JDP.decode TransferConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Data used to transfer a certificate to an AWS account.</p>
-}
type alias TransferData =
    { transferMessage : Maybe String
    , rejectReason : Maybe String
    , transferDate : Maybe Date
    , acceptDate : Maybe Date
    , rejectDate : Maybe Date
    }



transferDataDecoder : JD.Decoder TransferData
transferDataDecoder =
    JDP.decode TransferData
        |> JDP.optional "transferMessage" (JD.nullable JD.string) Nothing
        |> JDP.optional "rejectReason" (JD.nullable JD.string) Nothing
        |> JDP.optional "transferDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "acceptDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "rejectDate" (JD.nullable JDX.date) Nothing




{-| <p>You are not authorized to perform this operation.</p>
-}
type alias UnauthorizedException =
    { message : Maybe String
    }



unauthorizedExceptionDecoder : JD.Decoder UnauthorizedException
unauthorizedExceptionDecoder =
    JDP.decode UnauthorizedException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from updateThing
-}
type alias UpdateThingResponse =
    { 
    }



updateThingResponseDecoder : JD.Decoder UpdateThingResponse
updateThingResponseDecoder =
    JDP.decode UpdateThingResponse



{-| <p>An exception thrown when the version of a thing passed to a command is different than the version specified with the --version parameter. </p>
-}
type alias VersionConflictException =
    { message : Maybe String
    }



versionConflictExceptionDecoder : JD.Decoder VersionConflictException
versionConflictExceptionDecoder =
    JDP.decode VersionConflictException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The number of policy versions exceeds the limit.</p>
-}
type alias VersionsLimitExceededException =
    { message : Maybe String
    }



versionsLimitExceededExceptionDecoder : JD.Decoder VersionsLimitExceededException
versionsLimitExceededExceptionDecoder =
    JDP.decode VersionsLimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




