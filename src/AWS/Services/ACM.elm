module AWS.Services.ACM
    exposing
        ( config
        , addTagsToCertificate
        , deleteCertificate
        , describeCertificate
        , getCertificate
        , importCertificate
        , ImportCertificateOptions
        , listCertificates
        , ListCertificatesOptions
        , listTagsForCertificate
        , removeTagsFromCertificate
        , requestCertificate
        , RequestCertificateOptions
        , resendValidationEmail
        , CertificateDetail
        , CertificateStatus(..)
        , CertificateSummary
        , CertificateType(..)
        , DescribeCertificateResponse
        , DomainStatus(..)
        , DomainValidation
        , DomainValidationOption
        , FailureReason(..)
        , GetCertificateResponse
        , ImportCertificateResponse
        , InvalidArnException
        , InvalidDomainValidationOptionsException
        , InvalidStateException
        , InvalidTagException
        , KeyAlgorithm(..)
        , LimitExceededException
        , ListCertificatesResponse
        , ListTagsForCertificateResponse
        , RenewalStatus(..)
        , RenewalSummary
        , RequestCertificateResponse
        , RequestInProgressException
        , ResourceInUseException
        , ResourceNotFoundException
        , RevocationReason(..)
        , Tag
        , TooManyTagsException
        )

{-| <fullname>AWS Certificate Manager</fullname> <p>Welcome to the AWS Certificate Manager (ACM) API documentation.</p> <p>You can use ACM to manage SSL/TLS certificates for your AWS-based websites and applications. For general information about using ACM, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/"> <i>AWS Certificate Manager User Guide</i> </a>.</p>

@docs config

## Table of Contents

* [Operations](#operations)
* [Responses](#responses)
* [Records](#records)
* [Unions](#unions)
* [Exceptions](#exceptions)

## Operations

* [addTagsToCertificate](#addTagsToCertificate)
* [deleteCertificate](#deleteCertificate)
* [describeCertificate](#describeCertificate)
* [getCertificate](#getCertificate)
* [importCertificate](#importCertificate)
* [ImportCertificateOptions](#ImportCertificateOptions)
* [listCertificates](#listCertificates)
* [ListCertificatesOptions](#ListCertificatesOptions)
* [listTagsForCertificate](#listTagsForCertificate)
* [removeTagsFromCertificate](#removeTagsFromCertificate)
* [requestCertificate](#requestCertificate)
* [RequestCertificateOptions](#RequestCertificateOptions)
* [resendValidationEmail](#resendValidationEmail)


@docs addTagsToCertificate,deleteCertificate,describeCertificate,getCertificate,importCertificate,ImportCertificateOptions,listCertificates,ListCertificatesOptions,listTagsForCertificate,removeTagsFromCertificate,requestCertificate,RequestCertificateOptions,resendValidationEmail

## Responses

* [DescribeCertificateResponse](#DescribeCertificateResponse)
* [GetCertificateResponse](#GetCertificateResponse)
* [ImportCertificateResponse](#ImportCertificateResponse)
* [ListCertificatesResponse](#ListCertificatesResponse)
* [ListTagsForCertificateResponse](#ListTagsForCertificateResponse)
* [RequestCertificateResponse](#RequestCertificateResponse)


@docs DescribeCertificateResponse,GetCertificateResponse,ImportCertificateResponse,ListCertificatesResponse,ListTagsForCertificateResponse,RequestCertificateResponse

## Records

* [CertificateDetail](#CertificateDetail)
* [CertificateSummary](#CertificateSummary)
* [DomainValidation](#DomainValidation)
* [DomainValidationOption](#DomainValidationOption)
* [RenewalSummary](#RenewalSummary)
* [Tag](#Tag)


@docs CertificateDetail,CertificateSummary,DomainValidation,DomainValidationOption,RenewalSummary,Tag

## Unions

* [CertificateStatus](#CertificateStatus)
* [CertificateType](#CertificateType)
* [DomainStatus](#DomainStatus)
* [FailureReason](#FailureReason)
* [KeyAlgorithm](#KeyAlgorithm)
* [RenewalStatus](#RenewalStatus)
* [RevocationReason](#RevocationReason)


@docs CertificateStatus,CertificateType,DomainStatus,FailureReason,KeyAlgorithm,RenewalStatus,RevocationReason

## Exceptions

* [InvalidArnException](#InvalidArnException)
* [InvalidDomainValidationOptionsException](#InvalidDomainValidationOptionsException)
* [InvalidStateException](#InvalidStateException)
* [InvalidTagException](#InvalidTagException)
* [LimitExceededException](#LimitExceededException)
* [RequestInProgressException](#RequestInProgressException)
* [ResourceInUseException](#ResourceInUseException)
* [ResourceNotFoundException](#ResourceNotFoundException)
* [TooManyTagsException](#TooManyTagsException)


@docs InvalidArnException,InvalidDomainValidationOptionsException,InvalidStateException,InvalidTagException,LimitExceededException,RequestInProgressException,ResourceInUseException,ResourceNotFoundException,TooManyTagsException

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
        "acm"
        "2015-12-08"
        "1.1"
        "AWSACM_20151208."
        "acm.amazonaws.com"
        "us-east-1"
        creds



-- OPERATIONS

{-| <p>Adds one or more tags to an ACM Certificate. Tags are labels that you can use to identify and organize your AWS resources. Each tag consists of a <code>key</code> and an optional <code>value</code>. You specify the certificate on input by its Amazon Resource Name (ARN). You specify the tag by using a key-value pair.</p> <p>You can apply a tag to just one certificate if you want to identify a specific characteristic of that certificate, or you can apply the same tag to multiple certificates if you want to filter for a common relationship among those certificates. Similarly, you can apply the same tag to multiple resources if you want to specify a relationship among those resources. For example, you can add the same tag to an ACM Certificate and an Elastic Load Balancing load balancer to indicate that they are both used by the same website. For more information, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/tags.html">Tagging ACM Certificates</a>.</p> <p>To remove one or more tags, use the <a>RemoveTagsFromCertificate</a> action. To view all of the tags that have been applied to the certificate, use the <a>ListTagsForCertificate</a> action.</p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
addTagsToCertificate :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest ()
addTagsToCertificate certificateArn tags =
    AWS.Http.unsignedRequest
        "AddTagsToCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Deletes an ACM Certificate and its associated private key. If this action succeeds, the certificate no longer appears in the list of ACM Certificates that can be displayed by calling the <a>ListCertificates</a> action or be retrieved by calling the <a>GetCertificate</a> action. The certificate will not be available for use by other AWS services.</p> <note> <p>You cannot delete an ACM Certificate that is being used by another AWS service. To delete a certificate that is in use, the certificate association must first be removed.</p> </note>

__Required Parameters__

* `certificateArn` __:__ `String`


-}
deleteCertificate :
    String
    -> AWS.Http.UnsignedRequest ()
deleteCertificate certificateArn =
    AWS.Http.unsignedRequest
        "DeleteCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Returns detailed metadata about the specified ACM Certificate.</p>

__Required Parameters__

* `certificateArn` __:__ `String`


-}
describeCertificate :
    String
    -> AWS.Http.UnsignedRequest DescribeCertificateResponse
describeCertificate certificateArn =
    AWS.Http.unsignedRequest
        "DescribeCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        describeCertificateResponseDecoder



{-| <p>Retrieves an ACM Certificate and certificate chain for the certificate specified by an ARN. The chain is an ordered list of certificates that contains the root certificate, intermediate certificates of subordinate CAs, and the ACM Certificate. The certificate and certificate chain are base64 encoded. If you want to decode the certificate chain to see the individual certificate fields, you can use OpenSSL.</p> <note> <p>Currently, ACM Certificates can be used only with Elastic Load Balancing and Amazon CloudFront.</p> </note>

__Required Parameters__

* `certificateArn` __:__ `String`


-}
getCertificate :
    String
    -> AWS.Http.UnsignedRequest GetCertificateResponse
getCertificate certificateArn =
    AWS.Http.unsignedRequest
        "GetCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        getCertificateResponseDecoder



{-| <p>Imports an SSL/TLS certificate into AWS Certificate Manager (ACM) to use with <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-services.html">ACM's integrated AWS services</a>.</p> <note> <p>ACM does not provide <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for certificates that you import.</p> </note> <p>For more information about importing certificates into ACM, including the differences between certificates that you import and those that ACM provides, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the <i>AWS Certificate Manager User Guide</i>.</p> <p>To import a certificate, you must provide the certificate and the matching private key. When the certificate is not self-signed, you must also provide a certificate chain. You can omit the certificate chain when importing a self-signed certificate.</p> <p>The certificate, private key, and certificate chain must be PEM-encoded. For more information about converting these items to PEM format, see <a href="http://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html#import-certificate-troubleshooting">Importing Certificates Troubleshooting</a> in the <i>AWS Certificate Manager User Guide</i>.</p> <p>To import a new certificate, omit the <code>CertificateArn</code> field. Include this field only when you want to replace a previously imported certificate.</p> <p>This operation returns the <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name (ARN)</a> of the imported certificate.</p>

__Required Parameters__

* `certificate` __:__ `String`
* `privateKey` __:__ `String`


-}
importCertificate :
    String
    -> String
    -> (ImportCertificateOptions -> ImportCertificateOptions)
    -> AWS.Http.UnsignedRequest ImportCertificateResponse
importCertificate certificate privateKey setOptions =
  let
    options = setOptions (ImportCertificateOptions Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ImportCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        importCertificateResponseDecoder


{-| Options for a importCertificate request
-}
type alias ImportCertificateOptions =
    { certificateArn : Maybe String
    , certificateChain : Maybe String
    }



{-| <p>Retrieves a list of ACM Certificates and the domain name for each. You can optionally filter the list to return only the certificates that match the specified status.</p>

__Required Parameters__



-}
listCertificates :
    (ListCertificatesOptions -> ListCertificatesOptions)
    -> AWS.Http.UnsignedRequest ListCertificatesResponse
listCertificates setOptions =
  let
    options = setOptions (ListCertificatesOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "ListCertificates"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listCertificatesResponseDecoder


{-| Options for a listCertificates request
-}
type alias ListCertificatesOptions =
    { certificateStatuses : Maybe (List CertificateStatus)
    , nextToken : Maybe String
    , maxItems : Maybe Int
    }



{-| <p>Lists the tags that have been applied to the ACM Certificate. Use the certificate's Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM Certificate, use the <a>AddTagsToCertificate</a> action. To delete a tag, use the <a>RemoveTagsFromCertificate</a> action.</p>

__Required Parameters__

* `certificateArn` __:__ `String`


-}
listTagsForCertificate :
    String
    -> AWS.Http.UnsignedRequest ListTagsForCertificateResponse
listTagsForCertificate certificateArn =
    AWS.Http.unsignedRequest
        "ListTagsForCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        listTagsForCertificateResponseDecoder



{-| <p>Remove one or more tags from an ACM Certificate. A tag consists of a key-value pair. If you do not specify the value portion of the tag when calling this function, the tag will be removed regardless of value. If you specify a value, the tag is removed only if it is associated with the specified value.</p> <p>To add tags to a certificate, use the <a>AddTagsToCertificate</a> action. To view all of the tags that have been applied to a specific ACM Certificate, use the <a>ListTagsForCertificate</a> action.</p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `tags` __:__ `(List Tag)`


-}
removeTagsFromCertificate :
    String
    -> (List Tag)
    -> AWS.Http.UnsignedRequest ()
removeTagsFromCertificate certificateArn tags =
    AWS.Http.unsignedRequest
        "RemoveTagsFromCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())



{-| <p>Requests an ACM Certificate for use with other AWS services. To request an ACM Certificate, you must specify the fully qualified domain name (FQDN) for your site. You can also specify additional FQDNs if users can reach your site by using other names. For each domain name you specify, email is sent to the domain owner to request approval to issue the certificate. After receiving approval from the domain owner, the ACM Certificate is issued. For more information, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/">AWS Certificate Manager User Guide</a>.</p>

__Required Parameters__

* `domainName` __:__ `String`


-}
requestCertificate :
    String
    -> (RequestCertificateOptions -> RequestCertificateOptions)
    -> AWS.Http.UnsignedRequest RequestCertificateResponse
requestCertificate domainName setOptions =
  let
    options = setOptions (RequestCertificateOptions Nothing Nothing Nothing)
  in
    AWS.Http.unsignedRequest
        "RequestCertificate"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        requestCertificateResponseDecoder


{-| Options for a requestCertificate request
-}
type alias RequestCertificateOptions =
    { subjectAlternativeNames : Maybe (List String)
    , idempotencyToken : Maybe String
    , domainValidationOptions : Maybe (List DomainValidationOption)
    }



{-| <p>Resends the email that requests domain ownership validation. The domain owner or an authorized representative must approve the ACM Certificate before it can be issued. The certificate can be approved by clicking a link in the mail to navigate to the Amazon certificate approval website and then clicking <b>I Approve</b>. However, the validation email can be blocked by spam filters. Therefore, if you do not receive the original mail, you can request that the mail be resent within 72 hours of requesting the ACM Certificate. If more than 72 hours have elapsed since your original request or since your last attempt to resend validation mail, you must request a new certificate.</p>

__Required Parameters__

* `certificateArn` __:__ `String`
* `domain` __:__ `String`
* `validationDomain` __:__ `String`


-}
resendValidationEmail :
    String
    -> String
    -> String
    -> AWS.Http.UnsignedRequest ()
resendValidationEmail certificateArn domain validationDomain =
    AWS.Http.unsignedRequest
        "ResendValidationEmail"
        "POST"
        "/"
        (AWS.Http.JsonBody
            JE.null
        )
        (JD.succeed ())




{-| <p>Contains metadata about an ACM certificate. This structure is returned in the response to a <a>DescribeCertificate</a> request.</p>
-}
type alias CertificateDetail =
    { certificateArn : Maybe String
    , domainName : Maybe String
    , subjectAlternativeNames : Maybe (List String)
    , domainValidationOptions : Maybe (List DomainValidation)
    , serial : Maybe String
    , subject : Maybe String
    , issuer : Maybe String
    , createdAt : Maybe Date
    , issuedAt : Maybe Date
    , importedAt : Maybe Date
    , status : Maybe CertificateStatus
    , revokedAt : Maybe Date
    , revocationReason : Maybe RevocationReason
    , notBefore : Maybe Date
    , notAfter : Maybe Date
    , keyAlgorithm : Maybe KeyAlgorithm
    , signatureAlgorithm : Maybe String
    , inUseBy : Maybe (List String)
    , failureReason : Maybe FailureReason
    , type_ : Maybe CertificateType
    , renewalSummary : Maybe RenewalSummary
    }



certificateDetailDecoder : JD.Decoder CertificateDetail
certificateDetailDecoder =
    JDP.decode CertificateDetail
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing
        |> JDP.optional "subjectAlternativeNames" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "domainValidationOptions" (JD.nullable (JD.list domainValidationDecoder)) Nothing
        |> JDP.optional "serial" (JD.nullable JD.string) Nothing
        |> JDP.optional "subject" (JD.nullable JD.string) Nothing
        |> JDP.optional "issuer" (JD.nullable JD.string) Nothing
        |> JDP.optional "createdAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "issuedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "importedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "status" (JD.nullable certificateStatusDecoder) Nothing
        |> JDP.optional "revokedAt" (JD.nullable JDX.date) Nothing
        |> JDP.optional "revocationReason" (JD.nullable revocationReasonDecoder) Nothing
        |> JDP.optional "notBefore" (JD.nullable JDX.date) Nothing
        |> JDP.optional "notAfter" (JD.nullable JDX.date) Nothing
        |> JDP.optional "keyAlgorithm" (JD.nullable keyAlgorithmDecoder) Nothing
        |> JDP.optional "signatureAlgorithm" (JD.nullable JD.string) Nothing
        |> JDP.optional "inUseBy" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "failureReason" (JD.nullable failureReasonDecoder) Nothing
        |> JDP.optional "type_" (JD.nullable certificateTypeDecoder) Nothing
        |> JDP.optional "renewalSummary" (JD.nullable renewalSummaryDecoder) Nothing




{-| One of

* `CertificateStatus_PENDING_VALIDATION`
* `CertificateStatus_ISSUED`
* `CertificateStatus_INACTIVE`
* `CertificateStatus_EXPIRED`
* `CertificateStatus_VALIDATION_TIMED_OUT`
* `CertificateStatus_REVOKED`
* `CertificateStatus_FAILED`

-}
type CertificateStatus
    = CertificateStatus_PENDING_VALIDATION
    | CertificateStatus_ISSUED
    | CertificateStatus_INACTIVE
    | CertificateStatus_EXPIRED
    | CertificateStatus_VALIDATION_TIMED_OUT
    | CertificateStatus_REVOKED
    | CertificateStatus_FAILED



certificateStatusDecoder : JD.Decoder CertificateStatus
certificateStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_VALIDATION" ->
                        JD.succeed CertificateStatus_PENDING_VALIDATION

                    "ISSUED" ->
                        JD.succeed CertificateStatus_ISSUED

                    "INACTIVE" ->
                        JD.succeed CertificateStatus_INACTIVE

                    "EXPIRED" ->
                        JD.succeed CertificateStatus_EXPIRED

                    "VALIDATION_TIMED_OUT" ->
                        JD.succeed CertificateStatus_VALIDATION_TIMED_OUT

                    "REVOKED" ->
                        JD.succeed CertificateStatus_REVOKED

                    "FAILED" ->
                        JD.succeed CertificateStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>This structure is returned in the response object of <a>ListCertificates</a> action.</p>
-}
type alias CertificateSummary =
    { certificateArn : Maybe String
    , domainName : Maybe String
    }



certificateSummaryDecoder : JD.Decoder CertificateSummary
certificateSummaryDecoder =
    JDP.decode CertificateSummary
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing
        |> JDP.optional "domainName" (JD.nullable JD.string) Nothing




{-| One of

* `CertificateType_IMPORTED`
* `CertificateType_AMAZON_ISSUED`

-}
type CertificateType
    = CertificateType_IMPORTED
    | CertificateType_AMAZON_ISSUED



certificateTypeDecoder : JD.Decoder CertificateType
certificateTypeDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "IMPORTED" ->
                        JD.succeed CertificateType_IMPORTED

                    "AMAZON_ISSUED" ->
                        JD.succeed CertificateType_AMAZON_ISSUED


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from describeCertificate
-}
type alias DescribeCertificateResponse =
    { certificate : Maybe CertificateDetail
    }



describeCertificateResponseDecoder : JD.Decoder DescribeCertificateResponse
describeCertificateResponseDecoder =
    JDP.decode DescribeCertificateResponse
        |> JDP.optional "certificate" (JD.nullable certificateDetailDecoder) Nothing




{-| One of

* `DomainStatus_PENDING_VALIDATION`
* `DomainStatus_SUCCESS`
* `DomainStatus_FAILED`

-}
type DomainStatus
    = DomainStatus_PENDING_VALIDATION
    | DomainStatus_SUCCESS
    | DomainStatus_FAILED



domainStatusDecoder : JD.Decoder DomainStatus
domainStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_VALIDATION" ->
                        JD.succeed DomainStatus_PENDING_VALIDATION

                    "SUCCESS" ->
                        JD.succeed DomainStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed DomainStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about the validation of each domain name in the certificate.</p>
-}
type alias DomainValidation =
    { domainName : String
    , validationEmails : Maybe (List String)
    , validationDomain : Maybe String
    , validationStatus : Maybe DomainStatus
    }



domainValidationDecoder : JD.Decoder DomainValidation
domainValidationDecoder =
    JDP.decode DomainValidation
        |> JDP.required "domainName" JD.string
        |> JDP.optional "validationEmails" (JD.nullable (JD.list JD.string)) Nothing
        |> JDP.optional "validationDomain" (JD.nullable JD.string) Nothing
        |> JDP.optional "validationStatus" (JD.nullable domainStatusDecoder) Nothing




{-| <p>Contains information about the domain names that you want ACM to use to send you emails to validate your ownership of the domain.</p>
-}
type alias DomainValidationOption =
    { domainName : String
    , validationDomain : String
    }



domainValidationOptionDecoder : JD.Decoder DomainValidationOption
domainValidationOptionDecoder =
    JDP.decode DomainValidationOption
        |> JDP.required "domainName" JD.string
        |> JDP.required "validationDomain" JD.string




{-| One of

* `FailureReason_NO_AVAILABLE_CONTACTS`
* `FailureReason_ADDITIONAL_VERIFICATION_REQUIRED`
* `FailureReason_DOMAIN_NOT_ALLOWED`
* `FailureReason_INVALID_PUBLIC_DOMAIN`
* `FailureReason_OTHER`

-}
type FailureReason
    = FailureReason_NO_AVAILABLE_CONTACTS
    | FailureReason_ADDITIONAL_VERIFICATION_REQUIRED
    | FailureReason_DOMAIN_NOT_ALLOWED
    | FailureReason_INVALID_PUBLIC_DOMAIN
    | FailureReason_OTHER



failureReasonDecoder : JD.Decoder FailureReason
failureReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "NO_AVAILABLE_CONTACTS" ->
                        JD.succeed FailureReason_NO_AVAILABLE_CONTACTS

                    "ADDITIONAL_VERIFICATION_REQUIRED" ->
                        JD.succeed FailureReason_ADDITIONAL_VERIFICATION_REQUIRED

                    "DOMAIN_NOT_ALLOWED" ->
                        JD.succeed FailureReason_DOMAIN_NOT_ALLOWED

                    "INVALID_PUBLIC_DOMAIN" ->
                        JD.succeed FailureReason_INVALID_PUBLIC_DOMAIN

                    "OTHER" ->
                        JD.succeed FailureReason_OTHER


                    _ ->
                        JD.fail "bad thing"
            )



{-| Type of HTTP response from getCertificate
-}
type alias GetCertificateResponse =
    { certificate : Maybe String
    , certificateChain : Maybe String
    }



getCertificateResponseDecoder : JD.Decoder GetCertificateResponse
getCertificateResponseDecoder =
    JDP.decode GetCertificateResponse
        |> JDP.optional "certificate" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateChain" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from importCertificate
-}
type alias ImportCertificateResponse =
    { certificateArn : Maybe String
    }



importCertificateResponseDecoder : JD.Decoder ImportCertificateResponse
importCertificateResponseDecoder =
    JDP.decode ImportCertificateResponse
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing




{-| <p>The requested Amazon Resource Name (ARN) does not refer to an existing resource.</p>
-}
type alias InvalidArnException =
    { message : Maybe String
    }



invalidArnExceptionDecoder : JD.Decoder InvalidArnException
invalidArnExceptionDecoder =
    JDP.decode InvalidArnException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>One or more values in the <a>DomainValidationOption</a> structure is incorrect.</p>
-}
type alias InvalidDomainValidationOptionsException =
    { message : Maybe String
    }



invalidDomainValidationOptionsExceptionDecoder : JD.Decoder InvalidDomainValidationOptionsException
invalidDomainValidationOptionsExceptionDecoder =
    JDP.decode InvalidDomainValidationOptionsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>Processing has reached an invalid state. For example, this exception can occur if the specified domain is not using email validation, or the current certificate status does not permit the requested operation. See the exception message returned by ACM to determine which state is not valid.</p>
-}
type alias InvalidStateException =
    { message : Maybe String
    }



invalidStateExceptionDecoder : JD.Decoder InvalidStateException
invalidStateExceptionDecoder =
    JDP.decode InvalidStateException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>One or both of the values that make up the key-value pair is not valid. For example, you cannot specify a tag value that begins with <code>aws:</code>.</p>
-}
type alias InvalidTagException =
    { message : Maybe String
    }



invalidTagExceptionDecoder : JD.Decoder InvalidTagException
invalidTagExceptionDecoder =
    JDP.decode InvalidTagException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `KeyAlgorithm_RSA_2048`
* `KeyAlgorithm_RSA_1024`
* `KeyAlgorithm_EC_prime256v1`

-}
type KeyAlgorithm
    = KeyAlgorithm_RSA_2048
    | KeyAlgorithm_RSA_1024
    | KeyAlgorithm_EC_prime256v1



keyAlgorithmDecoder : JD.Decoder KeyAlgorithm
keyAlgorithmDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "RSA_2048" ->
                        JD.succeed KeyAlgorithm_RSA_2048

                    "RSA_1024" ->
                        JD.succeed KeyAlgorithm_RSA_1024

                    "EC_prime256v1" ->
                        JD.succeed KeyAlgorithm_EC_prime256v1


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>An ACM limit has been exceeded. For example, you may have input more domains than are allowed or you've requested too many certificates for your account. See the exception message returned by ACM to determine which limit you have violated. For more information about ACM limits, see the <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Limits</a> topic.</p>
-}
type alias LimitExceededException =
    { message : Maybe String
    }



limitExceededExceptionDecoder : JD.Decoder LimitExceededException
limitExceededExceptionDecoder =
    JDP.decode LimitExceededException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| Type of HTTP response from listCertificates
-}
type alias ListCertificatesResponse =
    { nextToken : Maybe String
    , certificateSummaryList : Maybe (List CertificateSummary)
    }



listCertificatesResponseDecoder : JD.Decoder ListCertificatesResponse
listCertificatesResponseDecoder =
    JDP.decode ListCertificatesResponse
        |> JDP.optional "nextToken" (JD.nullable JD.string) Nothing
        |> JDP.optional "certificateSummaryList" (JD.nullable (JD.list certificateSummaryDecoder)) Nothing




{-| Type of HTTP response from listTagsForCertificate
-}
type alias ListTagsForCertificateResponse =
    { tags : Maybe (List Tag)
    }



listTagsForCertificateResponseDecoder : JD.Decoder ListTagsForCertificateResponse
listTagsForCertificateResponseDecoder =
    JDP.decode ListTagsForCertificateResponse
        |> JDP.optional "tags" (JD.nullable (JD.list tagDecoder)) Nothing




{-| One of

* `RenewalStatus_PENDING_AUTO_RENEWAL`
* `RenewalStatus_PENDING_VALIDATION`
* `RenewalStatus_SUCCESS`
* `RenewalStatus_FAILED`

-}
type RenewalStatus
    = RenewalStatus_PENDING_AUTO_RENEWAL
    | RenewalStatus_PENDING_VALIDATION
    | RenewalStatus_SUCCESS
    | RenewalStatus_FAILED



renewalStatusDecoder : JD.Decoder RenewalStatus
renewalStatusDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "PENDING_AUTO_RENEWAL" ->
                        JD.succeed RenewalStatus_PENDING_AUTO_RENEWAL

                    "PENDING_VALIDATION" ->
                        JD.succeed RenewalStatus_PENDING_VALIDATION

                    "SUCCESS" ->
                        JD.succeed RenewalStatus_SUCCESS

                    "FAILED" ->
                        JD.succeed RenewalStatus_FAILED


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>Contains information about the status of ACM's <a href="http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
-}
type alias RenewalSummary =
    { renewalStatus : RenewalStatus
    , domainValidationOptions : (List DomainValidation)
    }



renewalSummaryDecoder : JD.Decoder RenewalSummary
renewalSummaryDecoder =
    JDP.decode RenewalSummary
        |> JDP.required "renewalStatus" renewalStatusDecoder
        |> JDP.required "domainValidationOptions" (JD.list domainValidationDecoder)




{-| Type of HTTP response from requestCertificate
-}
type alias RequestCertificateResponse =
    { certificateArn : Maybe String
    }



requestCertificateResponseDecoder : JD.Decoder RequestCertificateResponse
requestCertificateResponseDecoder =
    JDP.decode RequestCertificateResponse
        |> JDP.optional "certificateArn" (JD.nullable JD.string) Nothing




{-| <p>The certificate request is in process and the certificate in your account has not yet been issued.</p>
-}
type alias RequestInProgressException =
    { message : Maybe String
    }



requestInProgressExceptionDecoder : JD.Decoder RequestInProgressException
requestInProgressExceptionDecoder =
    JDP.decode RequestInProgressException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The certificate is in use by another AWS service in the caller's account. Remove the association and try again.</p>
-}
type alias ResourceInUseException =
    { message : Maybe String
    }



resourceInUseExceptionDecoder : JD.Decoder ResourceInUseException
resourceInUseExceptionDecoder =
    JDP.decode ResourceInUseException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| <p>The specified certificate cannot be found in the caller's account, or the caller's account cannot be found.</p>
-}
type alias ResourceNotFoundException =
    { message : Maybe String
    }



resourceNotFoundExceptionDecoder : JD.Decoder ResourceNotFoundException
resourceNotFoundExceptionDecoder =
    JDP.decode ResourceNotFoundException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




{-| One of

* `RevocationReason_UNSPECIFIED`
* `RevocationReason_KEY_COMPROMISE`
* `RevocationReason_CA_COMPROMISE`
* `RevocationReason_AFFILIATION_CHANGED`
* `RevocationReason_SUPERCEDED`
* `RevocationReason_CESSATION_OF_OPERATION`
* `RevocationReason_CERTIFICATE_HOLD`
* `RevocationReason_REMOVE_FROM_CRL`
* `RevocationReason_PRIVILEGE_WITHDRAWN`
* `RevocationReason_A_A_COMPROMISE`

-}
type RevocationReason
    = RevocationReason_UNSPECIFIED
    | RevocationReason_KEY_COMPROMISE
    | RevocationReason_CA_COMPROMISE
    | RevocationReason_AFFILIATION_CHANGED
    | RevocationReason_SUPERCEDED
    | RevocationReason_CESSATION_OF_OPERATION
    | RevocationReason_CERTIFICATE_HOLD
    | RevocationReason_REMOVE_FROM_CRL
    | RevocationReason_PRIVILEGE_WITHDRAWN
    | RevocationReason_A_A_COMPROMISE



revocationReasonDecoder : JD.Decoder RevocationReason
revocationReasonDecoder =
    JD.string
        |> JD.andThen
            (\w ->
                case w of
                    "UNSPECIFIED" ->
                        JD.succeed RevocationReason_UNSPECIFIED

                    "KEY_COMPROMISE" ->
                        JD.succeed RevocationReason_KEY_COMPROMISE

                    "CA_COMPROMISE" ->
                        JD.succeed RevocationReason_CA_COMPROMISE

                    "AFFILIATION_CHANGED" ->
                        JD.succeed RevocationReason_AFFILIATION_CHANGED

                    "SUPERCEDED" ->
                        JD.succeed RevocationReason_SUPERCEDED

                    "CESSATION_OF_OPERATION" ->
                        JD.succeed RevocationReason_CESSATION_OF_OPERATION

                    "CERTIFICATE_HOLD" ->
                        JD.succeed RevocationReason_CERTIFICATE_HOLD

                    "REMOVE_FROM_CRL" ->
                        JD.succeed RevocationReason_REMOVE_FROM_CRL

                    "PRIVILEGE_WITHDRAWN" ->
                        JD.succeed RevocationReason_PRIVILEGE_WITHDRAWN

                    "A_A_COMPROMISE" ->
                        JD.succeed RevocationReason_A_A_COMPROMISE


                    _ ->
                        JD.fail "bad thing"
            )



{-| <p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>
-}
type alias Tag =
    { key : String
    , value : Maybe String
    }



tagDecoder : JD.Decoder Tag
tagDecoder =
    JDP.decode Tag
        |> JDP.required "key" JD.string
        |> JDP.optional "value" (JD.nullable JD.string) Nothing




{-| <p>The request contains too many tags. Try the request again with fewer tags.</p>
-}
type alias TooManyTagsException =
    { message : Maybe String
    }



tooManyTagsExceptionDecoder : JD.Decoder TooManyTagsException
tooManyTagsExceptionDecoder =
    JDP.decode TooManyTagsException
        |> JDP.optional "message" (JD.nullable JD.string) Nothing




