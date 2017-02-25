module AWS.Services.KMS
    exposing
        ( config
        , cancelKeyDeletion
        , createAlias
        , createGrant
        , CreateGrantOptions
        , createKey
        , CreateKeyOptions
        , decrypt
        , DecryptOptions
        , deleteAlias
        , deleteImportedKeyMaterial
        , describeKey
        , DescribeKeyOptions
        , disableKey
        , disableKeyRotation
        , enableKey
        , enableKeyRotation
        , encrypt
        , EncryptOptions
        , generateDataKey
        , GenerateDataKeyOptions
        , generateDataKeyWithoutPlaintext
        , GenerateDataKeyWithoutPlaintextOptions
        , generateRandom
        , GenerateRandomOptions
        , getKeyPolicy
        , getKeyRotationStatus
        , getParametersForImport
        , importKeyMaterial
        , ImportKeyMaterialOptions
        , listAliases
        , ListAliasesOptions
        , listGrants
        , ListGrantsOptions
        , listKeyPolicies
        , ListKeyPoliciesOptions
        , listKeys
        , ListKeysOptions
        , listRetirableGrants
        , ListRetirableGrantsOptions
        , putKeyPolicy
        , PutKeyPolicyOptions
        , reEncrypt
        , ReEncryptOptions
        , retireGrant
        , RetireGrantOptions
        , revokeGrant
        , scheduleKeyDeletion
        , ScheduleKeyDeletionOptions
        , updateAlias
        , updateKeyDescription
        , AlgorithmSpec(..)
        , AliasListEntry
        , AlreadyExistsException
        , CancelKeyDeletionResponse
        , CreateGrantResponse
        , CreateKeyResponse
        , DataKeySpec(..)
        , DecryptResponse
        , DependencyTimeoutException
        , DescribeKeyResponse
        , DisabledException
        , EncryptResponse
        , ExpirationModelType(..)
        , ExpiredImportTokenException
        , GenerateDataKeyResponse
        , GenerateDataKeyWithoutPlaintextResponse
        , GenerateRandomResponse
        , GetKeyPolicyResponse
        , GetKeyRotationStatusResponse
        , GetParametersForImportResponse
        , GrantConstraints
        , GrantListEntry
        , GrantOperation(..)
        , ImportKeyMaterialResponse
        , IncorrectKeyMaterialException
        , InvalidAliasNameException
        , InvalidArnException
        , InvalidCiphertextException
        , InvalidGrantIdException
        , InvalidGrantTokenException
        , InvalidImportTokenException
        , InvalidKeyUsageException
        , InvalidMarkerException
        , KMSInternalException
        , KMSInvalidStateException
        , KeyListEntry
        , KeyMetadata
        , KeyState(..)
        , KeyUnavailableException
        , KeyUsageType(..)
        , LimitExceededException
        , ListAliasesResponse
        , ListGrantsResponse
        , ListKeyPoliciesResponse
        , ListKeysResponse
        , MalformedPolicyDocumentException
        , NotFoundException
        , OriginType(..)
        , ReEncryptResponse
        , ScheduleKeyDeletionResponse
        , UnsupportedOperationException
        , WrappingKeySpec(..)
        )

{-| <fullname>AWS Key Management Service</fullname> <p>AWS Key Management Service (AWS KMS) is an encryption and key management web service. This guide describes the AWS KMS operations that you can call programmatically. For general information about AWS KMS, see the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/">AWS Key Management Service Developer Guide</a>.</p> <note> <p>AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS KMS and other AWS services. For example, the SDKs take care of tasks such as signing requests (see below), managing errors, and retrying requests automatically. For more information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to AWS KMS.</p> <p>Clients must support TLS (Transport Layer Security) 1.0. We recommend TLS 1.2. Clients must also support cipher suites with Perfect Forward Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and later support these modes.</p> <p> <b>Signing Requests</b> </p> <p>Requests must be signed by using an access key ID and a secret access key. We strongly recommend that you <i>do not</i> use your AWS account (root) access key ID and secret key for everyday work with AWS KMS. Instead, use the access key ID and secret access key for an IAM user, or you can use the AWS Security Token Service to generate temporary security credentials that you can use to sign requests.</p> <p>All AWS KMS operations require <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p> <p> <b>Logging API Requests</b> </p> <p>AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and related events for your AWS account and delivers them to an Amazon S3 bucket that you specify. By using the information collected by CloudTrail, you can determine what requests were made to AWS KMS, who made the request, when it was made, and so on. To learn more about CloudTrail, including how to turn it on and find your log files, see the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/">AWS CloudTrail User Guide</a>.</p> <p> <b>Additional Resources</b> </p> <p>For more information about credentials and request signing, see the following:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html">AWS Security Credentials</a> - This topic provides general information about the types of credentials used for accessing AWS.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary Security Credentials</a> - This section of the <i>IAM User Guide</i> describes how to create and use temporary security credentials.</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 Signing Process</a> - This set of topics walks you through the process of signing a request using an access key ID and a secret access key.</p> </li> </ul> <p> <b>Commonly Used APIs</b> </p> <p>Of the APIs discussed in this guide, the following will prove the most useful for most applications. You will likely perform actions other than these, such as creating keys and assigning policies, by using the console.</p> <ul> <li> <p> <a>Encrypt</a> </p> </li> <li> <p> <a>Decrypt</a> </p> </li> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> </ul>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [cancelKeyDeletion](#cancelKeyDeletion)
* [createAlias](#createAlias)
* [createGrant](#createGrant)
* [CreateGrantOptions](#CreateGrantOptions)
* [createKey](#createKey)
* [CreateKeyOptions](#CreateKeyOptions)
* [decrypt](#decrypt)
* [DecryptOptions](#DecryptOptions)
* [deleteAlias](#deleteAlias)
* [deleteImportedKeyMaterial](#deleteImportedKeyMaterial)
* [describeKey](#describeKey)
* [DescribeKeyOptions](#DescribeKeyOptions)
* [disableKey](#disableKey)
* [disableKeyRotation](#disableKeyRotation)
* [enableKey](#enableKey)
* [enableKeyRotation](#enableKeyRotation)
* [encrypt](#encrypt)
* [EncryptOptions](#EncryptOptions)
* [generateDataKey](#generateDataKey)
* [GenerateDataKeyOptions](#GenerateDataKeyOptions)
* [generateDataKeyWithoutPlaintext](#generateDataKeyWithoutPlaintext)
* [GenerateDataKeyWithoutPlaintextOptions](#GenerateDataKeyWithoutPlaintextOptions)
* [generateRandom](#generateRandom)
* [GenerateRandomOptions](#GenerateRandomOptions)
* [getKeyPolicy](#getKeyPolicy)
* [getKeyRotationStatus](#getKeyRotationStatus)
* [getParametersForImport](#getParametersForImport)
* [importKeyMaterial](#importKeyMaterial)
* [ImportKeyMaterialOptions](#ImportKeyMaterialOptions)
* [listAliases](#listAliases)
* [ListAliasesOptions](#ListAliasesOptions)
* [listGrants](#listGrants)
* [ListGrantsOptions](#ListGrantsOptions)
* [listKeyPolicies](#listKeyPolicies)
* [ListKeyPoliciesOptions](#ListKeyPoliciesOptions)
* [listKeys](#listKeys)
* [ListKeysOptions](#ListKeysOptions)
* [listRetirableGrants](#listRetirableGrants)
* [ListRetirableGrantsOptions](#ListRetirableGrantsOptions)
* [putKeyPolicy](#putKeyPolicy)
* [PutKeyPolicyOptions](#PutKeyPolicyOptions)
* [reEncrypt](#reEncrypt)
* [ReEncryptOptions](#ReEncryptOptions)
* [retireGrant](#retireGrant)
* [RetireGrantOptions](#RetireGrantOptions)
* [revokeGrant](#revokeGrant)
* [scheduleKeyDeletion](#scheduleKeyDeletion)
* [ScheduleKeyDeletionOptions](#ScheduleKeyDeletionOptions)
* [updateAlias](#updateAlias)
* [updateKeyDescription](#updateKeyDescription)


@docs cancelKeyDeletion,createAlias,createGrant,CreateGrantOptions,createKey,CreateKeyOptions,decrypt,DecryptOptions,deleteAlias,deleteImportedKeyMaterial,describeKey,DescribeKeyOptions,disableKey,disableKeyRotation,enableKey,enableKeyRotation,encrypt,EncryptOptions,generateDataKey,GenerateDataKeyOptions,generateDataKeyWithoutPlaintext,GenerateDataKeyWithoutPlaintextOptions,generateRandom,GenerateRandomOptions,getKeyPolicy,getKeyRotationStatus,getParametersForImport,importKeyMaterial,ImportKeyMaterialOptions,listAliases,ListAliasesOptions,listGrants,ListGrantsOptions,listKeyPolicies,ListKeyPoliciesOptions,listKeys,ListKeysOptions,listRetirableGrants,ListRetirableGrantsOptions,putKeyPolicy,PutKeyPolicyOptions,reEncrypt,ReEncryptOptions,retireGrant,RetireGrantOptions,revokeGrant,scheduleKeyDeletion,ScheduleKeyDeletionOptions,updateAlias,updateKeyDescription

## Responses

* [CancelKeyDeletionResponse](#CancelKeyDeletionResponse)
* [CreateGrantResponse](#CreateGrantResponse)
* [CreateKeyResponse](#CreateKeyResponse)
* [DecryptResponse](#DecryptResponse)
* [DescribeKeyResponse](#DescribeKeyResponse)
* [EncryptResponse](#EncryptResponse)
* [GenerateDataKeyResponse](#GenerateDataKeyResponse)
* [GenerateDataKeyWithoutPlaintextResponse](#GenerateDataKeyWithoutPlaintextResponse)
* [GenerateRandomResponse](#GenerateRandomResponse)
* [GetKeyPolicyResponse](#GetKeyPolicyResponse)
* [GetKeyRotationStatusResponse](#GetKeyRotationStatusResponse)
* [GetParametersForImportResponse](#GetParametersForImportResponse)
* [ImportKeyMaterialResponse](#ImportKeyMaterialResponse)
* [ListAliasesResponse](#ListAliasesResponse)
* [ListGrantsResponse](#ListGrantsResponse)
* [ListKeyPoliciesResponse](#ListKeyPoliciesResponse)
* [ListKeysResponse](#ListKeysResponse)
* [ReEncryptResponse](#ReEncryptResponse)
* [ScheduleKeyDeletionResponse](#ScheduleKeyDeletionResponse)


@docs CancelKeyDeletionResponse,CreateGrantResponse,CreateKeyResponse,DecryptResponse,DescribeKeyResponse,EncryptResponse,GenerateDataKeyResponse,GenerateDataKeyWithoutPlaintextResponse,GenerateRandomResponse,GetKeyPolicyResponse,GetKeyRotationStatusResponse,GetParametersForImportResponse,ImportKeyMaterialResponse,ListAliasesResponse,ListGrantsResponse,ListKeyPoliciesResponse,ListKeysResponse,ReEncryptResponse,ScheduleKeyDeletionResponse

## Records

* [AliasListEntry](#AliasListEntry)
* [GrantConstraints](#GrantConstraints)
* [GrantListEntry](#GrantListEntry)
* [KeyListEntry](#KeyListEntry)
* [KeyMetadata](#KeyMetadata)


@docs AliasListEntry,GrantConstraints,GrantListEntry,KeyListEntry,KeyMetadata

## Unions

* [AlgorithmSpec](#AlgorithmSpec)
* [DataKeySpec](#DataKeySpec)
* [ExpirationModelType](#ExpirationModelType)
* [GrantOperation](#GrantOperation)
* [KeyState](#KeyState)
* [KeyUsageType](#KeyUsageType)
* [OriginType](#OriginType)
* [WrappingKeySpec](#WrappingKeySpec)


@docs AlgorithmSpec,DataKeySpec,ExpirationModelType,GrantOperation,KeyState,KeyUsageType,OriginType,WrappingKeySpec

## Exceptions

* [AlreadyExistsException](#AlreadyExistsException)
* [DependencyTimeoutException](#DependencyTimeoutException)
* [DisabledException](#DisabledException)
* [ExpiredImportTokenException](#ExpiredImportTokenException)
* [IncorrectKeyMaterialException](#IncorrectKeyMaterialException)
* [InvalidAliasNameException](#InvalidAliasNameException)
* [InvalidArnException](#InvalidArnException)
* [InvalidCiphertextException](#InvalidCiphertextException)
* [InvalidGrantIdException](#InvalidGrantIdException)
* [InvalidGrantTokenException](#InvalidGrantTokenException)
* [InvalidImportTokenException](#InvalidImportTokenException)
* [InvalidKeyUsageException](#InvalidKeyUsageException)
* [InvalidMarkerException](#InvalidMarkerException)
* [KMSInternalException](#KMSInternalException)
* [KMSInvalidStateException](#KMSInvalidStateException)
* [KeyUnavailableException](#KeyUnavailableException)
* [LimitExceededException](#LimitExceededException)
* [MalformedPolicyDocumentException](#MalformedPolicyDocumentException)
* [NotFoundException](#NotFoundException)
* [UnsupportedOperationException](#UnsupportedOperationException)


@docs AlreadyExistsException,DependencyTimeoutException,DisabledException,ExpiredImportTokenException,IncorrectKeyMaterialException,InvalidAliasNameException,InvalidArnException,InvalidCiphertextException,InvalidGrantIdException,InvalidGrantTokenException,InvalidImportTokenException,InvalidKeyUsageException,InvalidMarkerException,KMSInternalException,KMSInvalidStateException,KeyUnavailableException,LimitExceededException,MalformedPolicyDocumentException,NotFoundException,UnsupportedOperationException

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
        "kms"
        "2014-11-01"
        "1.1"
        "AWSKMS_20141101."
        "kms.amazonaws.com"
        "us-east-1"
        (maybeCreds |> Maybe.map AWS.Util.toConfigCreds)
        |> AWS.ServiceConfig



-- OPERATIONS

{-| <p>Cancels the deletion of a customer master key (CMK). When this operation is successful, the CMK is set to the <code>Disabled</code> state. To enable a CMK, use <a>EnableKey</a>.</p> <p>For more information about scheduling and canceling deletion of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
cancelKeyDeletion :
    String
    -> AWS.Request CancelKeyDeletionResponse
cancelKeyDeletion keyId =
    AWS.Http.unsignedRequest
        "CancelKeyDeletion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        cancelKeyDeletionResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Creates a display name for a customer master key. An alias can be used to identify a key and should be unique. The console enforces a one-to-one mapping between the alias and a key. An alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). An alias must start with the word "alias" followed by a forward slash (alias/). An alias that begins with "aws" after the forward slash (alias/aws...) is reserved by Amazon Web Services (AWS).</p> <p>The alias and the key it is mapped to must be in the same AWS account and the same region.</p> <p>To map an alias to a different key, call <a>UpdateAlias</a>.</p>

__Required Parameters__

* `aliasName` __:__ `String`
* `targetKeyId` __:__ `String`


-}
createAlias :
    String
    -> String
    -> AWS.Request ()
createAlias aliasName targetKeyId =
    AWS.Http.unsignedRequest
        "CreateAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Adds a grant to a key to specify who can use the key and under what conditions. Grants are alternate permission mechanisms to key policies.</p> <p>For more information about grants, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/grants.html">Grants</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `granteePrincipal` __:__ `String`


-}
createGrant :
    String
    -> String
    -> (CreateGrantOptions -> CreateGrantOptions)
    -> AWS.Request CreateGrantResponse
createGrant keyId granteePrincipal setOptions =
  let
    options = setOptions (CreateGrantOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateGrant"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createGrantResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createGrant request
-}
type alias CreateGrantOptions =
    { retiringPrincipal : Maybe String
    , operations : Maybe (List GrantOperation)
    , constraints : Maybe GrantConstraints
    , grantTokens : Maybe (List String)
    , name : Maybe String
    }



{-| <p>Creates a customer master key (CMK).</p> <p>You can use a CMK to encrypt small amounts of data (4 KiB or less) directly, but CMKs are more commonly used to encrypt data encryption keys (DEKs), which are used to encrypt raw data. For more information about DEKs and the difference between CMKs and DEKs, see the following:</p> <ul> <li> <p>The <a>GenerateDataKey</a> operation</p> </li> <li> <p> <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">AWS Key Management Service Concepts</a> in the <i>AWS Key Management Service Developer Guide</i> </p> </li> </ul>

__Required Parameters__



-}
createKey :
    (CreateKeyOptions -> CreateKeyOptions)
    -> AWS.Request CreateKeyResponse
createKey setOptions =
  let
    options = setOptions (CreateKeyOptions Nothing Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "CreateKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        createKeyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a createKey request
-}
type alias CreateKeyOptions =
    { policy : Maybe String
    , description : Maybe String
    , keyUsage : Maybe KeyUsageType
    , origin : Maybe OriginType
    , bypassPolicyLockoutSafetyCheck : Maybe Bool
    }



{-| <p>Decrypts ciphertext. Ciphertext is plaintext that has been previously encrypted by using any of the following functions:</p> <ul> <li> <p> <a>GenerateDataKey</a> </p> </li> <li> <p> <a>GenerateDataKeyWithoutPlaintext</a> </p> </li> <li> <p> <a>Encrypt</a> </p> </li> </ul> <p>Note that if a caller has been granted access permissions to all keys (through, for example, IAM user policies that grant <code>Decrypt</code> permission on all resources), then ciphertext encrypted by using keys in other accounts where the key grants access to the caller can be decrypted. To remedy this, we recommend that you do not grant <code>Decrypt</code> access in an IAM user policy. Instead grant <code>Decrypt</code> access only in key policies. If you must grant <code>Decrypt</code> access in an IAM user policy, you should scope the resource to specific keys or to specific trusted accounts.</p>

__Required Parameters__

* `ciphertextBlob` __:__ `String`


-}
decrypt :
    String
    -> (DecryptOptions -> DecryptOptions)
    -> AWS.Request DecryptResponse
decrypt ciphertextBlob setOptions =
  let
    options = setOptions (DecryptOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "Decrypt"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        decryptResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a decrypt request
-}
type alias DecryptOptions =
    { encryptionContext : Maybe (Dict String String)
    , grantTokens : Maybe (List String)
    }



{-| <p>Deletes the specified alias. To map an alias to a different key, call <a>UpdateAlias</a>.</p>

__Required Parameters__

* `aliasName` __:__ `String`


-}
deleteAlias :
    String
    -> AWS.Request ()
deleteAlias aliasName =
    AWS.Http.unsignedRequest
        "DeleteAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Deletes key material that you previously imported and makes the specified customer master key (CMK) unusable. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>When the specified CMK is in the <code>PendingDeletion</code> state, this operation does not change the CMK's state. Otherwise, it changes the CMK's state to <code>PendingImport</code>.</p> <p>After you delete key material, you can use <a>ImportKeyMaterial</a> to reimport the same key material into the CMK.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
deleteImportedKeyMaterial :
    String
    -> AWS.Request ()
deleteImportedKeyMaterial keyId =
    AWS.Http.unsignedRequest
        "DeleteImportedKeyMaterial"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Provides detailed information about the specified customer master key.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
describeKey :
    String
    -> (DescribeKeyOptions -> DescribeKeyOptions)
    -> AWS.Request DescribeKeyResponse
describeKey keyId setOptions =
  let
    options = setOptions (DescribeKeyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "DescribeKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeKeyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a describeKey request
-}
type alias DescribeKeyOptions =
    { grantTokens : Maybe (List String)
    }



{-| <p>Sets the state of a customer master key (CMK) to disabled, thereby preventing its use for cryptographic operations. For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects the Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
disableKey :
    String
    -> AWS.Request ()
disableKey keyId =
    AWS.Http.unsignedRequest
        "DisableKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Disables rotation of the specified key.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
disableKeyRotation :
    String
    -> AWS.Request ()
disableKeyRotation keyId =
    AWS.Http.unsignedRequest
        "DisableKeyRotation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Marks a key as enabled, thereby permitting its use.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
enableKey :
    String
    -> AWS.Request ()
enableKey keyId =
    AWS.Http.unsignedRequest
        "EnableKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Enables rotation of the specified customer master key.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
enableKeyRotation :
    String
    -> AWS.Request ()
enableKeyRotation keyId =
    AWS.Http.unsignedRequest
        "EnableKeyRotation"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Encrypts plaintext into ciphertext by using a customer master key. The <code>Encrypt</code> function has two primary use cases:</p> <ul> <li> <p>You can encrypt up to 4 KB of arbitrary data such as an RSA key, a database password, or other sensitive customer information.</p> </li> <li> <p>If you are moving encrypted data from one region to another, you can use this API to encrypt in the new region the plaintext data key that was used to encrypt the data in the original region. This provides you with an encrypted copy of the data key that can be decrypted in the new region and used there to decrypt the encrypted data.</p> </li> </ul> <p>Unless you are moving encrypted data from one region to another, you don't use this function to encrypt a generated data key within a region. You retrieve data keys already encrypted by calling the <a>GenerateDataKey</a> or <a>GenerateDataKeyWithoutPlaintext</a> function. Data keys don't need to be encrypted again by calling <code>Encrypt</code>.</p> <p>If you want to encrypt data locally in your application, you can use the <code>GenerateDataKey</code> function to return a plaintext data encryption key and a copy of the key encrypted under the customer master key (CMK) of your choosing.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `plaintext` __:__ `String`


-}
encrypt :
    String
    -> String
    -> (EncryptOptions -> EncryptOptions)
    -> AWS.Request EncryptResponse
encrypt keyId plaintext setOptions =
  let
    options = setOptions (EncryptOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "Encrypt"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        encryptResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a encrypt request
-}
type alias EncryptOptions =
    { encryptionContext : Maybe (Dict String String)
    , grantTokens : Maybe (List String)
    }



{-| <p>Returns a data encryption key that you can use in your application to encrypt data locally.</p> <p>You must specify the customer master key (CMK) under which to generate the data key. You must also specify the length of the data key using either the <code>KeySpec</code> or <code>NumberOfBytes</code> field. You must specify one field or the other, but not both. For common key lengths (128-bit and 256-bit symmetric keys), we recommend that you use <code>KeySpec</code>.</p> <p>This operation returns a plaintext copy of the data key in the <code>Plaintext</code> field of the response, and an encrypted copy of the data key in the <code>CiphertextBlob</code> field. The data key is encrypted under the CMK specified in the <code>KeyId</code> field of the request.</p> <p>We recommend that you use the following pattern to encrypt data locally in your application:</p> <ol> <li> <p>Use this operation (<code>GenerateDataKey</code>) to retrieve a data encryption key.</p> </li> <li> <p>Use the plaintext data encryption key (returned in the <code>Plaintext</code> field of the response) to encrypt data locally, then erase the plaintext data key from memory.</p> </li> <li> <p>Store the encrypted data key (returned in the <code>CiphertextBlob</code> field of the response) alongside the locally encrypted data.</p> </li> </ol> <p>To decrypt data locally:</p> <ol> <li> <p>Use the <a>Decrypt</a> operation to decrypt the encrypted data key into a plaintext copy of the data key.</p> </li> <li> <p>Use the plaintext data key to decrypt data locally, then erase the plaintext data key from memory.</p> </li> </ol> <p>To return only an encrypted copy of the data key, use <a>GenerateDataKeyWithoutPlaintext</a>. To return an arbitrary unpredictable byte string, use <a>GenerateRandom</a>.</p> <p>If you use the optional <code>EncryptionContext</code> field, you must store at least enough information to be able to reconstruct the full encryption context when you later send the ciphertext to the <a>Decrypt</a> operation. It is a good practice to choose an encryption context that you can reconstruct on the fly to better secure the ciphertext. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
generateDataKey :
    String
    -> (GenerateDataKeyOptions -> GenerateDataKeyOptions)
    -> AWS.Request GenerateDataKeyResponse
generateDataKey keyId setOptions =
  let
    options = setOptions (GenerateDataKeyOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GenerateDataKey"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        generateDataKeyResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a generateDataKey request
-}
type alias GenerateDataKeyOptions =
    { encryptionContext : Maybe (Dict String String)
    , numberOfBytes : Maybe Int
    , keySpec : Maybe DataKeySpec
    , grantTokens : Maybe (List String)
    }



{-| <p>Returns a data encryption key encrypted under a customer master key (CMK). This operation is identical to <a>GenerateDataKey</a> but returns only the encrypted copy of the data key.</p> <p>This operation is useful in a system that has multiple components with different degrees of trust. For example, consider a system that stores encrypted data in containers. Each container stores the encrypted data and an encrypted copy of the data key. One component of the system, called the <i>control plane</i>, creates new containers. When it creates a new container, it uses this operation (<code>GenerateDataKeyWithoutPlaintext</code>) to get an encrypted data key and then stores it in the container. Later, a different component of the system, called the <i>data plane</i>, puts encrypted data into the containers. To do this, it passes the encrypted data key to the <a>Decrypt</a> operation, then uses the returned plaintext data key to encrypt data, and finally stores the encrypted data in the container. In this system, the control plane never sees the plaintext data key.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
generateDataKeyWithoutPlaintext :
    String
    -> (GenerateDataKeyWithoutPlaintextOptions -> GenerateDataKeyWithoutPlaintextOptions)
    -> AWS.Request GenerateDataKeyWithoutPlaintextResponse
generateDataKeyWithoutPlaintext keyId setOptions =
  let
    options = setOptions (GenerateDataKeyWithoutPlaintextOptions Nothing Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "GenerateDataKeyWithoutPlaintext"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        generateDataKeyWithoutPlaintextResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a generateDataKeyWithoutPlaintext request
-}
type alias GenerateDataKeyWithoutPlaintextOptions =
    { encryptionContext : Maybe (Dict String String)
    , keySpec : Maybe DataKeySpec
    , numberOfBytes : Maybe Int
    , grantTokens : Maybe (List String)
    }



{-| <p>Generates an unpredictable byte string.</p>

__Required Parameters__



-}
generateRandom :
    (GenerateRandomOptions -> GenerateRandomOptions)
    -> AWS.Request GenerateRandomResponse
generateRandom setOptions =
  let
    options = setOptions (GenerateRandomOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "GenerateRandom"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        generateRandomResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a generateRandom request
-}
type alias GenerateRandomOptions =
    { numberOfBytes : Maybe Int
    }



{-| <p>Retrieves a policy attached to the specified key.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `policyName` __:__ `String`


-}
getKeyPolicy :
    String
    -> String
    -> AWS.Request GetKeyPolicyResponse
getKeyPolicy keyId policyName =
    AWS.Http.unsignedRequest
        "GetKeyPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getKeyPolicyResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Retrieves a Boolean value that indicates whether key rotation is enabled for the specified key.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
getKeyRotationStatus :
    String
    -> AWS.Request GetKeyRotationStatusResponse
getKeyRotationStatus keyId =
    AWS.Http.unsignedRequest
        "GetKeyRotationStatus"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getKeyRotationStatusResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>You must specify the key ID of the customer master key (CMK) into which you will import key material. This CMK's <code>Origin</code> must be <code>EXTERNAL</code>. You must also specify the wrapping algorithm and type of wrapping key (public key) that you will use to encrypt the key material.</p> <p>This operation returns a public key and an import token. Use the public key to encrypt the key material. Store the import token to send with a subsequent <a>ImportKeyMaterial</a> request. The public key and import token from the same response must be used together. These items are valid for 24 hours, after which they cannot be used for a subsequent <a>ImportKeyMaterial</a> request. To retrieve new ones, send another <code>GetParametersForImport</code> request.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `wrappingAlgorithm` __:__ `AlgorithmSpec`
* `wrappingKeySpec` __:__ `WrappingKeySpec`


-}
getParametersForImport :
    String
    -> AlgorithmSpec
    -> WrappingKeySpec
    -> AWS.Request GetParametersForImportResponse
getParametersForImport keyId wrappingAlgorithm wrappingKeySpec =
    AWS.Http.unsignedRequest
        "GetParametersForImport"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getParametersForImportResponseDecoder
        |> AWS.UnsignedRequest



{-| <p>Imports key material into an AWS KMS customer master key (CMK) from your existing key management infrastructure. For more information about importing key material into AWS KMS, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html">Importing Key Material</a> in the <i>AWS Key Management Service Developer Guide</i>.</p> <p>You must specify the key ID of the CMK to import the key material into. This CMK's <code>Origin</code> must be <code>EXTERNAL</code>. You must also send an import token and the encrypted key material. Send the import token that you received in the same <a>GetParametersForImport</a> response that contained the public key that you used to encrypt the key material. You must also specify whether the key material expires and if so, when. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. To use the CMK again, you can reimport the same key material. If you set an expiration date, you can change it only by reimporting the same key material and specifying a new expiration date.</p> <p>When this operation is successful, the specified CMK's key state changes to <code>Enabled</code>, and you can use the CMK.</p> <p>After you successfully import key material into a CMK, you can reimport the same key material into that CMK, but you cannot import different key material.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `importToken` __:__ `String`
* `encryptedKeyMaterial` __:__ `String`


-}
importKeyMaterial :
    String
    -> String
    -> String
    -> (ImportKeyMaterialOptions -> ImportKeyMaterialOptions)
    -> AWS.Request ImportKeyMaterialResponse
importKeyMaterial keyId importToken encryptedKeyMaterial setOptions =
  let
    options = setOptions (ImportKeyMaterialOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportKeyMaterial"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importKeyMaterialResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a importKeyMaterial request
-}
type alias ImportKeyMaterialOptions =
    { validTo : Maybe Date
    , expirationModel : Maybe ExpirationModelType
    }



{-| <p>Lists all of the key aliases in the account.</p>

__Required Parameters__



-}
listAliases :
    (ListAliasesOptions -> ListAliasesOptions)
    -> AWS.Request ListAliasesResponse
listAliases setOptions =
  let
    options = setOptions (ListAliasesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListAliases"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listAliasesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listAliases request
-}
type alias ListAliasesOptions =
    { limit : Maybe Int
    , marker : Maybe String
    }



{-| <p>List the grants for a specified key.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
listGrants :
    String
    -> (ListGrantsOptions -> ListGrantsOptions)
    -> AWS.Request ListGrantsResponse
listGrants keyId setOptions =
  let
    options = setOptions (ListGrantsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListGrants"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listGrantsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listGrants request
-}
type alias ListGrantsOptions =
    { limit : Maybe Int
    , marker : Maybe String
    }



{-| <p>Retrieves a list of policies attached to a key.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
listKeyPolicies :
    String
    -> (ListKeyPoliciesOptions -> ListKeyPoliciesOptions)
    -> AWS.Request ListKeyPoliciesResponse
listKeyPolicies keyId setOptions =
  let
    options = setOptions (ListKeyPoliciesOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListKeyPolicies"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listKeyPoliciesResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listKeyPolicies request
-}
type alias ListKeyPoliciesOptions =
    { limit : Maybe Int
    , marker : Maybe String
    }



{-| <p>Lists the customer master keys.</p>

__Required Parameters__



-}
listKeys :
    (ListKeysOptions -> ListKeysOptions)
    -> AWS.Request ListKeysResponse
listKeys setOptions =
  let
    options = setOptions (ListKeysOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListKeys"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listKeysResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listKeys request
-}
type alias ListKeysOptions =
    { limit : Maybe Int
    , marker : Maybe String
    }



{-| <p>Returns a list of all grants for which the grant's <code>RetiringPrincipal</code> matches the one specified.</p> <p>A typical use is to list all grants that you are able to retire. To retire a grant, use <a>RetireGrant</a>.</p>

__Required Parameters__

* `retiringPrincipal` __:__ `String`


-}
listRetirableGrants :
    String
    -> (ListRetirableGrantsOptions -> ListRetirableGrantsOptions)
    -> AWS.Request ListGrantsResponse
listRetirableGrants retiringPrincipal setOptions =
  let
    options = setOptions (ListRetirableGrantsOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListRetirableGrants"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listGrantsResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a listRetirableGrants request
-}
type alias ListRetirableGrantsOptions =
    { limit : Maybe Int
    , marker : Maybe String
    }



{-| <p>Attaches a key policy to the specified customer master key (CMK).</p> <p>For more information about key policies, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Key Policies</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `policyName` __:__ `String`
* `policy` __:__ `String`


-}
putKeyPolicy :
    String
    -> String
    -> String
    -> (PutKeyPolicyOptions -> PutKeyPolicyOptions)
    -> AWS.Request ()
putKeyPolicy keyId policyName policy setOptions =
  let
    options = setOptions (PutKeyPolicyOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "PutKeyPolicy"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a putKeyPolicy request
-}
type alias PutKeyPolicyOptions =
    { bypassPolicyLockoutSafetyCheck : Maybe Bool
    }



{-| <p>Encrypts data on the server side with a new customer master key (CMK) without exposing the plaintext of the data on the client side. The data is first decrypted and then reencrypted. You can also use this operation to change the encryption context of a ciphertext.</p> <p>Unlike other operations, <code>ReEncrypt</code> is authorized twice, once as <code>ReEncryptFrom</code> on the source CMK and once as <code>ReEncryptTo</code> on the destination CMK. We recommend that you include the <code>"kms:ReEncrypt*"</code> permission in your <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">key policies</a> to permit reencryption from or to the CMK. This permission is automatically included in the key policy when you create a CMK through the console, but you must include it manually when you create a CMK programmatically or when you set a key policy with the <a>PutKeyPolicy</a> operation.</p>

__Required Parameters__

* `ciphertextBlob` __:__ `String`
* `destinationKeyId` __:__ `String`


-}
reEncrypt :
    String
    -> String
    -> (ReEncryptOptions -> ReEncryptOptions)
    -> AWS.Request ReEncryptResponse
reEncrypt ciphertextBlob destinationKeyId setOptions =
  let
    options = setOptions (ReEncryptOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ReEncrypt"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        reEncryptResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a reEncrypt request
-}
type alias ReEncryptOptions =
    { sourceEncryptionContext : Maybe (Dict String String)
    , destinationEncryptionContext : Maybe (Dict String String)
    , grantTokens : Maybe (List String)
    }



{-| <p>Retires a grant. To clean up, you can retire a grant when you're done using it. You should revoke a grant when you intend to actively deny operations that depend on it. The following are permitted to call this API:</p> <ul> <li> <p>The AWS account (root user) under which the grant was created</p> </li> <li> <p>The <code>RetiringPrincipal</code>, if present in the grant</p> </li> <li> <p>The <code>GranteePrincipal</code>, if <code>RetireGrant</code> is an operation specified in the grant</p> </li> </ul> <p>You must identify the grant to retire by its grant token or by a combination of the grant ID and the Amazon Resource Name (ARN) of the customer master key (CMK). A grant token is a unique variable-length base64-encoded string. A grant ID is a 64 character unique identifier of a grant. The <a>CreateGrant</a> operation returns both.</p>

__Required Parameters__



-}
retireGrant :
    (RetireGrantOptions -> RetireGrantOptions)
    -> AWS.Request ()
retireGrant setOptions =
  let
    options = setOptions (RetireGrantOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RetireGrant"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest


{-| Options for a retireGrant request
-}
type alias RetireGrantOptions =
    { grantToken : Maybe String
    , keyId : Maybe String
    , grantId : Maybe String
    }



{-| <p>Revokes a grant. You can revoke a grant to actively deny operations that depend on it.</p>

__Required Parameters__

* `keyId` __:__ `String`
* `grantId` __:__ `String`


-}
revokeGrant :
    String
    -> String
    -> AWS.Request ()
revokeGrant keyId grantId =
    AWS.Http.unsignedRequest
        "RevokeGrant"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Schedules the deletion of a customer master key (CMK). You may provide a waiting period, specified in days, before deletion occurs. If you do not provide a waiting period, the default period of 30 days is used. When this operation is successful, the state of the CMK changes to <code>PendingDeletion</code>. Before the waiting period ends, you can use <a>CancelKeyDeletion</a> to cancel the deletion of the CMK. After the waiting period ends, AWS KMS deletes the CMK and all AWS KMS data associated with it, including all aliases that refer to it.</p> <important> <p>Deleting a CMK is a destructive and potentially dangerous operation. When a CMK is deleted, all data that was encrypted under the CMK is rendered unrecoverable. To restrict the use of a CMK without deleting it, use <a>DisableKey</a>.</p> </important> <p>For more information about scheduling a CMK for deletion, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html">Deleting Customer Master Keys</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>

__Required Parameters__

* `keyId` __:__ `String`


-}
scheduleKeyDeletion :
    String
    -> (ScheduleKeyDeletionOptions -> ScheduleKeyDeletionOptions)
    -> AWS.Request ScheduleKeyDeletionResponse
scheduleKeyDeletion keyId setOptions =
  let
    options = setOptions (ScheduleKeyDeletionOptions Nothing)
  in
    AWS.Http.unsignedRequest
        "ScheduleKeyDeletion"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        scheduleKeyDeletionResponseDecoder
        |> AWS.UnsignedRequest


{-| Options for a scheduleKeyDeletion request
-}
type alias ScheduleKeyDeletionOptions =
    { pendingWindowInDays : Maybe Int
    }



{-| <p>Updates an alias to map it to a different key.</p> <p>An alias is not a property of a key. Therefore, an alias can be mapped to and unmapped from an existing key without changing the properties of the key.</p> <p>An alias name can contain only alphanumeric characters, forward slashes (/), underscores (_), and dashes (-). An alias must start with the word "alias" followed by a forward slash (alias/). An alias that begins with "aws" after the forward slash (alias/aws...) is reserved by Amazon Web Services (AWS).</p> <p>The alias and the key it is mapped to must be in the same AWS account and the same region.</p>

__Required Parameters__

* `aliasName` __:__ `String`
* `targetKeyId` __:__ `String`


-}
updateAlias :
    String
    -> String
    -> AWS.Request ()
updateAlias aliasName targetKeyId =
    AWS.Http.unsignedRequest
        "UpdateAlias"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest



{-| <p>Updates the description of a customer master key (CMK).</p>

__Required Parameters__

* `keyId` __:__ `String`
* `description` __:__ `String`


-}
updateKeyDescription :
    String
    -> String
    -> AWS.Request ()
updateKeyDescription keyId description =
    AWS.Http.unsignedRequest
        "UpdateKeyDescription"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())
        |> AWS.UnsignedRequest




{-| One of

* `AlgorithmSpec_RSAES_PKCS1_V1_5`
* `AlgorithmSpec_RSAES_OAEP_SHA_1`
* `AlgorithmSpec_RSAES_OAEP_SHA_256`

-}
type AlgorithmSpec
    = AlgorithmSpec_RSAES_PKCS1_V1_5
    | AlgorithmSpec_RSAES_OAEP_SHA_1
    | AlgorithmSpec_RSAES_OAEP_SHA_256



algorithmSpecDecoder : JD.Decoder AlgorithmSpec
algorithmSpecDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RSAES_PKCS1_V1_5" ->
                        JD.succeed AlgorithmSpec_RSAES_PKCS1_V1_5

                    "RSAES_OAEP_SHA_1" ->
                        JD.succeed AlgorithmSpec_RSAES_OAEP_SHA_1

                    "RSAES_OAEP_SHA_256" ->
                        JD.succeed AlgorithmSpec_RSAES_OAEP_SHA_256


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about an alias.</p>
-}
type alias AliasListEntry =
    { aliasName : Maybe String
    , aliasArn : Maybe String
    , targetKeyId : Maybe String
    }



aliasListEntryDecoder : JD.Decoder AliasListEntry
aliasListEntryDecoder =
    JDP.decode AliasListEntry
        |> JDP.optional "aliasName" (JD.nullable JD.string) Nothing
        |> JDP.optional "aliasArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "targetKeyId" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because it attempted to create a resource that already exists.</p>
-}
type alias AlreadyExistsException =
    { message : Maybe String
    }



alreadyExistsExceptionDecoder : JD.Decoder AlreadyExistsException
alreadyExistsExceptionDecoder =
    JDP.decode AlreadyExistsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from cancelKeyDeletion
-}
type alias CancelKeyDeletionResponse =
    { keyId : Maybe String
    }



cancelKeyDeletionResponseDecoder : JD.Decoder CancelKeyDeletionResponse
cancelKeyDeletionResponseDecoder =
    JDP.decode CancelKeyDeletionResponse
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createGrant
-}
type alias CreateGrantResponse =
    { grantToken : Maybe String
    , grantId : Maybe String
    }



createGrantResponseDecoder : JD.Decoder CreateGrantResponse
createGrantResponseDecoder =
    JDP.decode CreateGrantResponse
        |> JDP.optional "grantToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "grantId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from createKey
-}
type alias CreateKeyResponse =
    { keyMetadata : Maybe KeyMetadata
    }



createKeyResponseDecoder : JD.Decoder CreateKeyResponse
createKeyResponseDecoder =
    JDP.decode CreateKeyResponse
        |> JDP.optional "keyMetadata" (JD.nullable keyMetadataDecoder) Nothing




{-| One of

* `DataKeySpec_AES_256`
* `DataKeySpec_AES_128`

-}
type DataKeySpec
    = DataKeySpec_AES_256
    | DataKeySpec_AES_128



dataKeySpecDecoder : JD.Decoder DataKeySpec
dataKeySpecDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AES_256" ->
                        JD.succeed DataKeySpec_AES_256

                    "AES_128" ->
                        JD.succeed DataKeySpec_AES_128


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from decrypt
-}
type alias DecryptResponse =
    { keyId : Maybe String
    , plaintext : Maybe String
    }



decryptResponseDecoder : JD.Decoder DecryptResponse
decryptResponseDecoder =
    JDP.decode DecryptResponse
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "plaintext" (JD.nullable JD.string) Nothing




{-| <p>The system timed out while trying to fulfill the request. The request can be retried.</p>
-}
type alias DependencyTimeoutException =
    { message : Maybe String
    }



dependencyTimeoutExceptionDecoder : JD.Decoder DependencyTimeoutException
dependencyTimeoutExceptionDecoder =
    JDP.decode DependencyTimeoutException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from describeKey
-}
type alias DescribeKeyResponse =
    { keyMetadata : Maybe KeyMetadata
    }



describeKeyResponseDecoder : JD.Decoder DescribeKeyResponse
describeKeyResponseDecoder =
    JDP.decode DescribeKeyResponse
        |> JDP.optional "keyMetadata" (JD.nullable keyMetadataDecoder) Nothing




{-| <p>The request was rejected because the specified CMK is not enabled.</p>
-}
type alias DisabledException =
    { message : Maybe String
    }



disabledExceptionDecoder : JD.Decoder DisabledException
disabledExceptionDecoder =
    JDP.decode DisabledException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from encrypt
-}
type alias EncryptResponse =
    { ciphertextBlob : Maybe String
    , keyId : Maybe String
    }



encryptResponseDecoder : JD.Decoder EncryptResponse
encryptResponseDecoder =
    JDP.decode EncryptResponse
        |> JDP.optional "ciphertextBlob" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing




{-| One of

* `ExpirationModelType_KEY_MATERIAL_EXPIRES`
* `ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE`

-}
type ExpirationModelType
    = ExpirationModelType_KEY_MATERIAL_EXPIRES
    | ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE



expirationModelTypeDecoder : JD.Decoder ExpirationModelType
expirationModelTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "KEY_MATERIAL_EXPIRES" ->
                        JD.succeed ExpirationModelType_KEY_MATERIAL_EXPIRES

                    "KEY_MATERIAL_DOES_NOT_EXPIRE" ->
                        JD.succeed ExpirationModelType_KEY_MATERIAL_DOES_NOT_EXPIRE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request was rejected because the provided import token is expired. Use <a>GetParametersForImport</a> to retrieve a new import token and public key, use the new public key to encrypt the key material, and then try the request again.</p>
-}
type alias ExpiredImportTokenException =
    { message : Maybe String
    }



expiredImportTokenExceptionDecoder : JD.Decoder ExpiredImportTokenException
expiredImportTokenExceptionDecoder =
    JDP.decode ExpiredImportTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from generateDataKey
-}
type alias GenerateDataKeyResponse =
    { ciphertextBlob : Maybe String
    , plaintext : Maybe String
    , keyId : Maybe String
    }



generateDataKeyResponseDecoder : JD.Decoder GenerateDataKeyResponse
generateDataKeyResponseDecoder =
    JDP.decode GenerateDataKeyResponse
        |> JDP.optional "ciphertextBlob" (JD.nullable JD.string) Nothing
        |> JDP.optional "plaintext" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from generateDataKeyWithoutPlaintext
-}
type alias GenerateDataKeyWithoutPlaintextResponse =
    { ciphertextBlob : Maybe String
    , keyId : Maybe String
    }



generateDataKeyWithoutPlaintextResponseDecoder : JD.Decoder GenerateDataKeyWithoutPlaintextResponse
generateDataKeyWithoutPlaintextResponseDecoder =
    JDP.decode GenerateDataKeyWithoutPlaintextResponse
        |> JDP.optional "ciphertextBlob" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from generateRandom
-}
type alias GenerateRandomResponse =
    { plaintext : Maybe String
    }



generateRandomResponseDecoder : JD.Decoder GenerateRandomResponse
generateRandomResponseDecoder =
    JDP.decode GenerateRandomResponse
        |> JDP.optional "plaintext" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getKeyPolicy
-}
type alias GetKeyPolicyResponse =
    { policy : Maybe String
    }



getKeyPolicyResponseDecoder : JD.Decoder GetKeyPolicyResponse
getKeyPolicyResponseDecoder =
    JDP.decode GetKeyPolicyResponse
        |> JDP.optional "policy" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from getKeyRotationStatus
-}
type alias GetKeyRotationStatusResponse =
    { keyRotationEnabled : Maybe Bool
    }



getKeyRotationStatusResponseDecoder : JD.Decoder GetKeyRotationStatusResponse
getKeyRotationStatusResponseDecoder =
    JDP.decode GetKeyRotationStatusResponse
        |> JDP.optional "keyRotationEnabled" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from getParametersForImport
-}
type alias GetParametersForImportResponse =
    { keyId : Maybe String
    , importToken : Maybe String
    , publicKey : Maybe String
    , parametersValidTo : Maybe Date
    }



getParametersForImportResponseDecoder : JD.Decoder GetParametersForImportResponse
getParametersForImportResponseDecoder =
    JDP.decode GetParametersForImportResponse
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "importToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "publicKey" (JD.nullable JD.string) Nothing
        |> JDP.optional "parametersValidTo" (JD.nullable JDX.date) Nothing




{-| <p>A structure for specifying the conditions under which the operations permitted by the grant are allowed.</p> <p>You can use this structure to allow the operations permitted by the grant only when a specified encryption context is present. For more information about encryption context, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html">Encryption Context</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-}
type alias GrantConstraints =
    { encryptionContextSubset : Maybe (Dict String String)
    , encryptionContextEquals : Maybe (Dict String String)
    }



grantConstraintsDecoder : JD.Decoder GrantConstraints
grantConstraintsDecoder =
    JDP.decode GrantConstraints
        |> JDP.optional "encryptionContextSubset" (JD.nullable (JD.dict JD.string)) Nothing
        |> JDP.optional "encryptionContextEquals" (JD.nullable (JD.dict JD.string)) Nothing




{-| <p>Contains information about an entry in a list of grants.</p>
-}
type alias GrantListEntry =
    { keyId : Maybe String
    , grantId : Maybe String
    , name : Maybe String
    , creationDate : Maybe Date
    , granteePrincipal : Maybe String
    , retiringPrincipal : Maybe String
    , issuingAccount : Maybe String
    , operations : Maybe (List GrantOperation)
    , constraints : Maybe GrantConstraints
    }



grantListEntryDecoder : JD.Decoder GrantListEntry
grantListEntryDecoder =
    JDP.decode GrantListEntry
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "grantId" (JD.nullable JD.string) Nothing
        |> JDP.optional "name" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "granteePrincipal" (JD.nullable JD.string) Nothing
        |> JDP.optional "retiringPrincipal" (JD.nullable JD.string) Nothing
        |> JDP.optional "issuingAccount" (JD.nullable JD.string) Nothing
        |> JDP.optional "operations" (JD.nullable (JD.list grantOperationDecoder)) Nothing
        |> JDP.optional "constraints" (JD.nullable grantConstraintsDecoder) Nothing




{-| One of

* `GrantOperation_Decrypt`
* `GrantOperation_Encrypt`
* `GrantOperation_GenerateDataKey`
* `GrantOperation_GenerateDataKeyWithoutPlaintext`
* `GrantOperation_ReEncryptFrom`
* `GrantOperation_ReEncryptTo`
* `GrantOperation_CreateGrant`
* `GrantOperation_RetireGrant`
* `GrantOperation_DescribeKey`

-}
type GrantOperation
    = GrantOperation_Decrypt
    | GrantOperation_Encrypt
    | GrantOperation_GenerateDataKey
    | GrantOperation_GenerateDataKeyWithoutPlaintext
    | GrantOperation_ReEncryptFrom
    | GrantOperation_ReEncryptTo
    | GrantOperation_CreateGrant
    | GrantOperation_RetireGrant
    | GrantOperation_DescribeKey



grantOperationDecoder : JD.Decoder GrantOperation
grantOperationDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Decrypt" ->
                        JD.succeed GrantOperation_Decrypt

                    "Encrypt" ->
                        JD.succeed GrantOperation_Encrypt

                    "GenerateDataKey" ->
                        JD.succeed GrantOperation_GenerateDataKey

                    "GenerateDataKeyWithoutPlaintext" ->
                        JD.succeed GrantOperation_GenerateDataKeyWithoutPlaintext

                    "ReEncryptFrom" ->
                        JD.succeed GrantOperation_ReEncryptFrom

                    "ReEncryptTo" ->
                        JD.succeed GrantOperation_ReEncryptTo

                    "CreateGrant" ->
                        JD.succeed GrantOperation_CreateGrant

                    "RetireGrant" ->
                        JD.succeed GrantOperation_RetireGrant

                    "DescribeKey" ->
                        JD.succeed GrantOperation_DescribeKey


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from importKeyMaterial
-}
type alias ImportKeyMaterialResponse =
    { 
    }



importKeyMaterialResponseDecoder : JD.Decoder ImportKeyMaterialResponse
importKeyMaterialResponseDecoder =
    JDP.decode ImportKeyMaterialResponse



{-| <p>The request was rejected because the provided key material is invalid or is not the same key material that was previously imported into this customer master key (CMK).</p>
-}
type alias IncorrectKeyMaterialException =
    { message : Maybe String
    }



incorrectKeyMaterialExceptionDecoder : JD.Decoder IncorrectKeyMaterialException
incorrectKeyMaterialExceptionDecoder =
    JDP.decode IncorrectKeyMaterialException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the specified alias name is not valid.</p>
-}
type alias InvalidAliasNameException =
    { message : Maybe String
    }



invalidAliasNameExceptionDecoder : JD.Decoder InvalidAliasNameException
invalidAliasNameExceptionDecoder =
    JDP.decode InvalidAliasNameException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because a specified ARN was not valid.</p>
-}
type alias InvalidArnException =
    { message : Maybe String
    }



invalidArnExceptionDecoder : JD.Decoder InvalidArnException
invalidArnExceptionDecoder =
    JDP.decode InvalidArnException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the specified ciphertext has been corrupted or is otherwise invalid.</p>
-}
type alias InvalidCiphertextException =
    { message : Maybe String
    }



invalidCiphertextExceptionDecoder : JD.Decoder InvalidCiphertextException
invalidCiphertextExceptionDecoder =
    JDP.decode InvalidCiphertextException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the specified <code>GrantId</code> is not valid.</p>
-}
type alias InvalidGrantIdException =
    { message : Maybe String
    }



invalidGrantIdExceptionDecoder : JD.Decoder InvalidGrantIdException
invalidGrantIdExceptionDecoder =
    JDP.decode InvalidGrantIdException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the specified grant token is not valid.</p>
-}
type alias InvalidGrantTokenException =
    { message : Maybe String
    }



invalidGrantTokenExceptionDecoder : JD.Decoder InvalidGrantTokenException
invalidGrantTokenExceptionDecoder =
    JDP.decode InvalidGrantTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the provided import token is invalid or is associated with a different customer master key (CMK).</p>
-}
type alias InvalidImportTokenException =
    { message : Maybe String
    }



invalidImportTokenExceptionDecoder : JD.Decoder InvalidImportTokenException
invalidImportTokenExceptionDecoder =
    JDP.decode InvalidImportTokenException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the specified <code>KeySpec</code> value is not valid.</p>
-}
type alias InvalidKeyUsageException =
    { message : Maybe String
    }



invalidKeyUsageExceptionDecoder : JD.Decoder InvalidKeyUsageException
invalidKeyUsageExceptionDecoder =
    JDP.decode InvalidKeyUsageException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the marker that specifies where pagination should next begin is not valid.</p>
-}
type alias InvalidMarkerException =
    { message : Maybe String
    }



invalidMarkerExceptionDecoder : JD.Decoder InvalidMarkerException
invalidMarkerExceptionDecoder =
    JDP.decode InvalidMarkerException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because an internal exception occurred. The request can be retried.</p>
-}
type alias KMSInternalException =
    { message : Maybe String
    }



kMSInternalExceptionDecoder : JD.Decoder KMSInternalException
kMSInternalExceptionDecoder =
    JDP.decode KMSInternalException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the state of the specified resource is not valid for this request.</p> <p>For more information about how key state affects the use of a CMK, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html">How Key State Affects Use of a Customer Master Key</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-}
type alias KMSInvalidStateException =
    { message : Maybe String
    }



kMSInvalidStateExceptionDecoder : JD.Decoder KMSInvalidStateException
kMSInvalidStateExceptionDecoder =
    JDP.decode KMSInvalidStateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Contains information about each entry in the key list.</p>
-}
type alias KeyListEntry =
    { keyId : Maybe String
    , keyArn : Maybe String
    }



keyListEntryDecoder : JD.Decoder KeyListEntry
keyListEntryDecoder =
    JDP.decode KeyListEntry
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyArn" (JD.nullable JD.string) Nothing




{-| <p>Contains metadata about a customer master key (CMK).</p> <p>This data type is used as a response element for the <a>CreateKey</a> and <a>DescribeKey</a> operations.</p>
-}
type alias KeyMetadata =
    { aWSAccountId : Maybe String
    , keyId : String
    , arn : Maybe String
    , creationDate : Maybe Date
    , enabled : Maybe Bool
    , description : Maybe String
    , keyUsage : Maybe KeyUsageType
    , keyState : Maybe KeyState
    , deletionDate : Maybe Date
    , validTo : Maybe Date
    , origin : Maybe OriginType
    , expirationModel : Maybe ExpirationModelType
    }



keyMetadataDecoder : JD.Decoder KeyMetadata
keyMetadataDecoder =
    JDP.decode KeyMetadata
        |> JDP.optional "aWSAccountId" (JD.nullable JD.string) Nothing
        |> JDP.required "keyId" JD.string
        |> JDP.optional "arn" (JD.nullable JD.string) Nothing
        |> JDP.optional "creationDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "enabled" (JD.nullable JD.bool) Nothing
        |> JDP.optional "description" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyUsage" (JD.nullable keyUsageTypeDecoder) Nothing
        |> JDP.optional "keyState" (JD.nullable keyStateDecoder) Nothing
        |> JDP.optional "deletionDate" (JD.nullable JDX.date) Nothing
        |> JDP.optional "validTo" (JD.nullable JDX.date) Nothing
        |> JDP.optional "origin" (JD.nullable originTypeDecoder) Nothing
        |> JDP.optional "expirationModel" (JD.nullable expirationModelTypeDecoder) Nothing




{-| One of

* `KeyState_Enabled`
* `KeyState_Disabled`
* `KeyState_PendingDeletion`
* `KeyState_PendingImport`

-}
type KeyState
    = KeyState_Enabled
    | KeyState_Disabled
    | KeyState_PendingDeletion
    | KeyState_PendingImport



keyStateDecoder : JD.Decoder KeyState
keyStateDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "Enabled" ->
                        JD.succeed KeyState_Enabled

                    "Disabled" ->
                        JD.succeed KeyState_Disabled

                    "PendingDeletion" ->
                        JD.succeed KeyState_PendingDeletion

                    "PendingImport" ->
                        JD.succeed KeyState_PendingImport


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request was rejected because the specified CMK was not available. The request can be retried.</p>
-}
type alias KeyUnavailableException =
    { message : Maybe String
    }



keyUnavailableExceptionDecoder : JD.Decoder KeyUnavailableException
keyUnavailableExceptionDecoder =
    JDP.decode KeyUnavailableException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `KeyUsageType_ENCRYPT_DECRYPT`

-}
type KeyUsageType
    = KeyUsageType_ENCRYPT_DECRYPT



keyUsageTypeDecoder : JD.Decoder KeyUsageType
keyUsageTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "ENCRYPT_DECRYPT" ->
                        JD.succeed KeyUsageType_ENCRYPT_DECRYPT


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>The request was rejected because a limit was exceeded. For more information, see <a href="http://docs.aws.amazon.com/kms/latest/developerguide/limits.html">Limits</a> in the <i>AWS Key Management Service Developer Guide</i>.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listAliases
-}
type alias ListAliasesResponse =
    { aliases : Maybe (List AliasListEntry)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listAliasesResponseDecoder : JD.Decoder ListAliasesResponse
listAliasesResponseDecoder =
    JDP.decode ListAliasesResponse
        |> JDP.optional "aliases" (JD.nullable (JD.list aliasListEntryDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "truncated" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from listGrants
-}
type alias ListGrantsResponse =
    { grants : Maybe (List GrantListEntry)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listGrantsResponseDecoder : JD.Decoder ListGrantsResponse
listGrantsResponseDecoder =
    JDP.decode ListGrantsResponse
        |> JDP.optional "grants" (JD.nullable (JD.list grantListEntryDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "truncated" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from listKeyPolicies
-}
type alias ListKeyPoliciesResponse =
    { policyNames : Maybe (List String)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listKeyPoliciesResponseDecoder : JD.Decoder ListKeyPoliciesResponse
listKeyPoliciesResponseDecoder =
    JDP.decode ListKeyPoliciesResponse
        |> JDP.optional "policyNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "truncated" (JD.nullable JD.bool) Nothing




{-| Type of HTTP response from listKeys
-}
type alias ListKeysResponse =
    { keys : Maybe (List KeyListEntry)
    , nextMarker : Maybe String
    , truncated : Maybe Bool
    }



listKeysResponseDecoder : JD.Decoder ListKeysResponse
listKeysResponseDecoder =
    JDP.decode ListKeysResponse
        |> JDP.optional "keys" (JD.nullable (JD.list keyListEntryDecoder)) Nothing
        |> JDP.optional "nextMarker" (JD.nullable JD.string) Nothing
        |> JDP.optional "truncated" (JD.nullable JD.bool) Nothing




{-| <p>The request was rejected because the specified policy is not syntactically or semantically correct.</p>
-}
type alias MalformedPolicyDocumentException =
    { message : Maybe String
    }



malformedPolicyDocumentExceptionDecoder : JD.Decoder MalformedPolicyDocumentException
malformedPolicyDocumentExceptionDecoder =
    JDP.decode MalformedPolicyDocumentException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The request was rejected because the specified entity or resource could not be found.</p>
-}
type alias NotFoundException =
    { message : Maybe String
    }



notFoundExceptionDecoder : JD.Decoder NotFoundException
notFoundExceptionDecoder =
    JDP.decode NotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `OriginType_AWS_KMS`
* `OriginType_EXTERNAL`

-}
type OriginType
    = OriginType_AWS_KMS
    | OriginType_EXTERNAL



originTypeDecoder : JD.Decoder OriginType
originTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "AWS_KMS" ->
                        JD.succeed OriginType_AWS_KMS

                    "EXTERNAL" ->
                        JD.succeed OriginType_EXTERNAL


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from reEncrypt
-}
type alias ReEncryptResponse =
    { ciphertextBlob : Maybe String
    , sourceKeyId : Maybe String
    , keyId : Maybe String
    }



reEncryptResponseDecoder : JD.Decoder ReEncryptResponse
reEncryptResponseDecoder =
    JDP.decode ReEncryptResponse
        |> JDP.optional "ciphertextBlob" (JD.nullable JD.string) Nothing
        |> JDP.optional "sourceKeyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from scheduleKeyDeletion
-}
type alias ScheduleKeyDeletionResponse =
    { keyId : Maybe String
    , deletionDate : Maybe Date
    }



scheduleKeyDeletionResponseDecoder : JD.Decoder ScheduleKeyDeletionResponse
scheduleKeyDeletionResponseDecoder =
    JDP.decode ScheduleKeyDeletionResponse
        |> JDP.optional "keyId" (JD.nullable JD.string) Nothing
        |> JDP.optional "deletionDate" (JD.nullable JDX.date) Nothing




{-| <p>The request was rejected because a specified parameter is not supported or a specified resource is not valid for this operation.</p>
-}
type alias UnsupportedOperationException =
    { message : Maybe String
    }



unsupportedOperationExceptionDecoder : JD.Decoder UnsupportedOperationException
unsupportedOperationExceptionDecoder =
    JDP.decode UnsupportedOperationException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `WrappingKeySpec_RSA_2048`

-}
type WrappingKeySpec
    = WrappingKeySpec_RSA_2048



wrappingKeySpecDecoder : JD.Decoder WrappingKeySpec
wrappingKeySpecDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RSA_2048" ->
                        JD.succeed WrappingKeySpec_RSA_2048


                    _ ->
                        JD.fail "bad thing"
            )



